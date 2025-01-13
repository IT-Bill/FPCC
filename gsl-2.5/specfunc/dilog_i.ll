; ModuleID = 'dilog.ll'
source_filename = "dilog.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsl_sf_result_struct = type { double, double }

@.str = private unnamed_addr constant [27 x i8] c"gsl_sf_dilog_e(x, &result)\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"dilog.c\00", align 1
@dilog_series_2.c3 = internal constant double 0x3FD5555555555555, align 8
@dilog_series_2.c4 = internal constant double 2.500000e-01, align 8
@dilog_series_2.c5 = internal constant double 2.000000e-01, align 8
@dilog_series_2.c6 = internal constant double 0x3FC5555555555555, align 8
@dilog_series_2.c7 = internal constant double 0x3FC2492492492492, align 8
@dilog_series_2.c8 = internal constant double 1.250000e-01, align 8
@series_2.kmax = internal constant i32 100, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@dilogc_unitdisk.MAGIC_SPLIT_VALUE = internal constant double 7.320000e-01, align 8
@dilogc_unitdisk.zeta2 = internal constant double 0x3FFA51A6625307D3, align 8
@0 = private unnamed_addr constant [15 x i8] c"gsl_sf_dilog_e\00"
@1 = private unnamed_addr constant [9 x i8] c"dilog.ll\00"
@2 = private unnamed_addr constant [11 x i8] c"dilog_xge0\00"
@3 = private unnamed_addr constant [9 x i8] c"dilog.ll\00"
@4 = private unnamed_addr constant [26 x i8] c"gsl_sf_complex_dilog_xy_e\00"
@5 = private unnamed_addr constant [9 x i8] c"dilog.ll\00"
@6 = private unnamed_addr constant [16 x i8] c"dilogc_unitdisk\00"
@7 = private unnamed_addr constant [9 x i8] c"dilog.ll\00"
@8 = private unnamed_addr constant [23 x i8] c"gsl_sf_complex_dilog_e\00"
@9 = private unnamed_addr constant [9 x i8] c"dilog.ll\00"
@10 = private unnamed_addr constant [27 x i8] c"gsl_sf_complex_spence_xy_e\00"
@11 = private unnamed_addr constant [9 x i8] c"dilog.ll\00"
@12 = private unnamed_addr constant [13 x i8] c"gsl_sf_dilog\00"
@13 = private unnamed_addr constant [9 x i8] c"dilog.ll\00"
@14 = private unnamed_addr constant [15 x i8] c"dilog_series_2\00"
@15 = private unnamed_addr constant [9 x i8] c"dilog.ll\00"
@16 = private unnamed_addr constant [15 x i8] c"dilog_series_1\00"
@17 = private unnamed_addr constant [9 x i8] c"dilog.ll\00"
@18 = private unnamed_addr constant [9 x i8] c"series_2\00"
@19 = private unnamed_addr constant [9 x i8] c"dilog.ll\00"
@20 = private unnamed_addr constant [19 x i8] c"dilogc_fundamental\00"
@21 = private unnamed_addr constant [9 x i8] c"dilog.ll\00"
@22 = private unnamed_addr constant [16 x i8] c"dilogc_series_3\00"
@23 = private unnamed_addr constant [9 x i8] c"dilog.ll\00"
@24 = private unnamed_addr constant [16 x i8] c"dilogc_series_2\00"
@25 = private unnamed_addr constant [9 x i8] c"dilog.ll\00"
@26 = private unnamed_addr constant [16 x i8] c"dilogc_series_1\00"
@27 = private unnamed_addr constant [9 x i8] c"dilog.ll\00"
@28 = private unnamed_addr constant [11 x i8] c"series_2_c\00"
@29 = private unnamed_addr constant [9 x i8] c"dilog.ll\00"

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_dilog_e(double, %struct.gsl_sf_result_struct*) #0 !dbg !75 {
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca %struct.gsl_sf_result_struct*, align 8
  %6 = alloca %struct.gsl_sf_result_struct, align 8
  %7 = alloca %struct.gsl_sf_result_struct, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !78, metadata !79), !dbg !80
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %5, metadata !81, metadata !79), !dbg !82
  %10 = load double, double* %4, align 8, !dbg !83
  %11 = fcmp oge double %10, 0.000000e+00, !dbg !85
  %12 = call i1 @fCmpInstHandler(double %10, double 0.000000e+00, i1 %11, i32 3, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @1, i32 0, i32 0), i64 94284524613632, i32 537, i32 8), !dbg !86
  br i1 %12, label %13, label %17, !dbg !86

; <label>:13:                                     ; preds = %2
  %14 = load double, double* %4, align 8, !dbg !87
  %15 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !89
  %16 = call i32 @dilog_xge0(double %14, %struct.gsl_sf_result_struct* %15), !dbg !90
  store i32 %16, i32* %3, align 4, !dbg !91
  br label %69, !dbg !91

; <label>:17:                                     ; preds = %2
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %6, metadata !92, metadata !79), !dbg !94
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %7, metadata !95, metadata !79), !dbg !96
  call void @llvm.dbg.declare(metadata i32* %8, metadata !97, metadata !79), !dbg !98
  %18 = load double, double* %4, align 8, !dbg !99
  %19 = fsub double -0.000000e+00, %18, !dbg !100
  call void @fSubHandler(double -0.000000e+00, double %18, double %19, i64 0, i64 94284524621640, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @1, i32 0, i32 0), i64 94284524622080, i32 542, i32 31), !dbg !101
  %20 = call i32 @dilog_xge0(double %19, %struct.gsl_sf_result_struct* %6), !dbg !101
  store i32 %20, i32* %8, align 4, !dbg !98
  call void @llvm.dbg.declare(metadata i32* %9, metadata !102, metadata !79), !dbg !103
  %21 = load double, double* %4, align 8, !dbg !104
  %22 = load double, double* %4, align 8, !dbg !105
  %23 = fmul double %21, %22, !dbg !106
  call void @fMulHandler(double %21, double %22, double %23, i64 94284524625800, i64 94284524626152, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @1, i32 0, i32 0), i64 94284524626560, i32 543, i32 31), !dbg !107
  %24 = call i32 @dilog_xge0(double %23, %struct.gsl_sf_result_struct* %7), !dbg !107
  store i32 %24, i32* %9, align 4, !dbg !103
  %25 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !108
  %26 = load double, double* %25, align 8, !dbg !108
  %27 = fsub double -0.000000e+00, %26, !dbg !109
  call void @fSubHandler(double -0.000000e+00, double %26, double %27, i64 0, i64 94284524629672, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @1, i32 0, i32 0), i64 94284524631344, i32 544, i32 20), !dbg !110
  %28 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %7, i32 0, i32 0, !dbg !110
  %29 = load double, double* %28, align 8, !dbg !110
  %30 = fmul double 5.000000e-01, %29, !dbg !111
  call void @fMulHandler(double 5.000000e-01, double %29, double %30, i64 0, i64 94284524632184, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @1, i32 0, i32 0), i64 94284524633952, i32 544, i32 34), !dbg !112
  %31 = fadd double %27, %30, !dbg !112
  call void @fAddHandler(double %27, double %30, double %31, i64 94284524631344, i64 94284524633952, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @1, i32 0, i32 0), i64 94284524634336, i32 544, i32 28), !dbg !113
  %32 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !113
  %33 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %32, i32 0, i32 0, !dbg !114
  store double %31, double* %33, align 8, !dbg !115
  %34 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 1, !dbg !116
  %35 = load double, double* %34, align 8, !dbg !116
  %36 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %7, i32 0, i32 1, !dbg !117
  %37 = load double, double* %36, align 8, !dbg !117
  %38 = fmul double 5.000000e-01, %37, !dbg !118
  call void @fMulHandler(double 5.000000e-01, double %37, double %38, i64 0, i64 94284524639048, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @1, i32 0, i32 0), i64 94284524640752, i32 545, i32 34), !dbg !119
  %39 = fadd double %35, %38, !dbg !119
  call void @fAddHandler(double %35, double %38, double %39, i64 94284524636952, i64 94284524640752, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @1, i32 0, i32 0), i64 94284524641136, i32 545, i32 28), !dbg !120
  %40 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !120
  %41 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %40, i32 0, i32 1, !dbg !121
  store double %39, double* %41, align 8, !dbg !122
  %42 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !123
  %43 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %42, i32 0, i32 0, !dbg !124
  %44 = load double, double* %43, align 8, !dbg !124
  %45 = call double @fabs(double %44) #1, !dbg !125
  %46 = fmul double 0x3CC0000000000000, %45, !dbg !126
  call void @fMulHandler(double 0x3CC0000000000000, double %45, double %46, i64 0, i64 94284524645616, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @1, i32 0, i32 0), i64 94284524646192, i32 546, i32 42), !dbg !127
  %47 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !127
  %48 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %47, i32 0, i32 1, !dbg !128
  %49 = load double, double* %48, align 8, !dbg !129
  %50 = fadd double %49, %46, !dbg !129
  call void @fAddHandler(double %49, double %46, double %50, i64 94284524647416, i64 94284524646192, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @1, i32 0, i32 0), i64 94284524647824, i32 546, i32 17), !dbg !129
  store double %50, double* %48, align 8, !dbg !129
  %51 = load i32, i32* %8, align 4, !dbg !130
  %52 = icmp ne i32 %51, 0, !dbg !130
  %53 = sext i32 %51 to i64, !dbg !130
  %54 = call i1 @iCmpInstHandler(i64 %53, i64 0, i1 %52, i32 33, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @1, i32 0, i32 0), i64 94284524650016, i32 547, i32 12), !dbg !130
  br i1 %54, label %55, label %57, !dbg !130

; <label>:55:                                     ; preds = %17
  %56 = load i32, i32* %8, align 4, !dbg !131
  br label %67, !dbg !131

; <label>:57:                                     ; preds = %17
  %58 = load i32, i32* %9, align 4, !dbg !133
  %59 = icmp ne i32 %58, 0, !dbg !133
  %60 = sext i32 %58 to i64, !dbg !133
  %61 = call i1 @iCmpInstHandler(i64 %60, i64 0, i1 %59, i32 33, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @1, i32 0, i32 0), i64 94284524654560, i32 547, i32 12), !dbg !133
  br i1 %61, label %62, label %64, !dbg !133

; <label>:62:                                     ; preds = %57
  %63 = load i32, i32* %9, align 4, !dbg !135
  br label %65, !dbg !135

; <label>:64:                                     ; preds = %57
  br label %65, !dbg !137

; <label>:65:                                     ; preds = %64, %62
  %66 = phi i32 [ %63, %62 ], [ 0, %64 ], !dbg !139
  br label %67, !dbg !139

; <label>:67:                                     ; preds = %65, %55
  %68 = phi i32 [ %56, %55 ], [ %66, %65 ], !dbg !141
  store i32 %68, i32* %3, align 4, !dbg !143
  br label %69, !dbg !143

; <label>:69:                                     ; preds = %67, %13
  %70 = load i32, i32* %3, align 4, !dbg !144
  ret i32 %70, !dbg !144
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define internal i32 @dilog_xge0(double, %struct.gsl_sf_result_struct*) #0 !dbg !145 {
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca %struct.gsl_sf_result_struct*, align 8
  %6 = alloca %struct.gsl_sf_result_struct, align 8
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca %struct.gsl_sf_result_struct, align 8
  %13 = alloca i32, align 4
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
  %28 = alloca double, align 8
  %29 = alloca double, align 8
  %30 = alloca %struct.gsl_sf_result_struct, align 8
  %31 = alloca i32, align 4
  %32 = alloca double, align 8
  %33 = alloca double, align 8
  %34 = alloca double, align 8
  %35 = alloca double, align 8
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !146, metadata !79), !dbg !147
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %5, metadata !148, metadata !79), !dbg !149
  %36 = load double, double* %4, align 8, !dbg !150
  %37 = fcmp ogt double %36, 2.000000e+00, !dbg !152
  %38 = call i1 @fCmpInstHandler(double %36, double 2.000000e+00, i1 %37, i32 2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 94284524674064, i32 138, i32 8), !dbg !153
  br i1 %38, label %39, label %87, !dbg !153

; <label>:39:                                     ; preds = %2
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %6, metadata !154, metadata !79), !dbg !156
  call void @llvm.dbg.declare(metadata i32* %7, metadata !157, metadata !79), !dbg !158
  %40 = load double, double* %4, align 8, !dbg !159
  %41 = fdiv double 1.000000e+00, %40, !dbg !160
  call void @fDivHandler(double 1.000000e+00, double %40, double %41, i64 0, i64 94284524611288, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 94284524677664, i32 140, i32 44), !dbg !161
  %42 = call i32 @dilog_series_2(double %41, %struct.gsl_sf_result_struct* %6), !dbg !161
  store i32 %42, i32* %7, align 4, !dbg !158
  call void @llvm.dbg.declare(metadata double* %8, metadata !162, metadata !79), !dbg !163
  %43 = load double, double* %4, align 8, !dbg !164
  %44 = call double @log(double %43) #5, !dbg !165
  call void @callOneArgHandler(i32 12, double %43, double %44, i64 94284524681720, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 94284524682432, i32 141, i32 26), !dbg !163
  store double %44, double* %8, align 8, !dbg !163
  call void @llvm.dbg.declare(metadata double* %9, metadata !166, metadata !79), !dbg !167
  store double 0x400A51A6625307D3, double* %9, align 8, !dbg !167
  call void @llvm.dbg.declare(metadata double* %10, metadata !168, metadata !79), !dbg !169
  %45 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !170
  %46 = load double, double* %45, align 8, !dbg !170
  store double %46, double* %10, align 8, !dbg !169
  call void @llvm.dbg.declare(metadata double* %11, metadata !171, metadata !79), !dbg !172
  %47 = load double, double* %8, align 8, !dbg !173
  %48 = fmul double 5.000000e-01, %47, !dbg !174
  call void @fMulHandler(double 5.000000e-01, double %47, double %48, i64 0, i64 94284524693464, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 94284524693872, i32 144, i32 26), !dbg !175
  %49 = load double, double* %8, align 8, !dbg !175
  %50 = fmul double %48, %49, !dbg !176
  call void @fMulHandler(double %48, double %49, double %50, i64 94284524693872, i64 94284524694232, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 94284524694640, i32 144, i32 32), !dbg !172
  store double %50, double* %11, align 8, !dbg !172
  %51 = load double, double* %10, align 8, !dbg !177
  %52 = fsub double 0x400A51A6625307D3, %51, !dbg !178
  call void @fSubHandler(double 0x400A51A6625307D3, double %51, double %52, i64 0, i64 94284524696712, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 94284524697120, i32 145, i32 23), !dbg !179
  %53 = load double, double* %11, align 8, !dbg !179
  %54 = fsub double %52, %53, !dbg !180
  call void @fSubHandler(double %52, double %53, double %54, i64 94284524697120, i64 94284524697512, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 94284524697920, i32 145, i32 28), !dbg !181
  %55 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !181
  %56 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %55, i32 0, i32 0, !dbg !182
  store double %54, double* %56, align 8, !dbg !183
  %57 = load double, double* %8, align 8, !dbg !184
  %58 = call double @fabs(double %57) #1, !dbg !185
  %59 = fmul double 0x3CB0000000000000, %58, !dbg !186
  call void @fMulHandler(double 0x3CB0000000000000, double %58, double %59, i64 0, i64 94284524700032, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 94284524700576, i32 146, i32 36), !dbg !187
  %60 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 1, !dbg !187
  %61 = load double, double* %60, align 8, !dbg !187
  %62 = fadd double %59, %61, !dbg !188
  call void @fAddHandler(double %59, double %61, double %62, i64 94284524700576, i64 94284524701416, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 94284524703088, i32 146, i32 50), !dbg !189
  %63 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !189
  %64 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %63, i32 0, i32 1, !dbg !190
  store double %62, double* %64, align 8, !dbg !191
  %65 = call double @fabs(double 0x400A51A6625307D3) #1, !dbg !192
  %66 = load double, double* %10, align 8, !dbg !193
  %67 = call double @fabs(double %66) #1, !dbg !194
  %68 = fadd double %65, %67, !dbg !196
  call void @fAddHandler(double %65, double %67, double %68, i64 94284524704816, i64 94284524705744, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 94284524706224, i32 147, i32 48), !dbg !197
  %69 = load double, double* %11, align 8, !dbg !197
  %70 = call double @fabs(double %69) #1, !dbg !198
  %71 = fadd double %68, %70, !dbg !200
  call void @fAddHandler(double %68, double %70, double %71, i64 94284524706224, i64 94284524707088, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 94284524707568, i32 147, i32 59), !dbg !201
  %72 = fmul double 0x3CB0000000000000, %71, !dbg !201
  call void @fMulHandler(double 0x3CB0000000000000, double %71, double %72, i64 0, i64 94284524707568, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 94284524707984, i32 147, i32 36), !dbg !202
  %73 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !202
  %74 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %73, i32 0, i32 1, !dbg !203
  %75 = load double, double* %74, align 8, !dbg !204
  %76 = fadd double %75, %72, !dbg !204
  call void @fAddHandler(double %75, double %72, double %76, i64 94284524709208, i64 94284524707984, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 94284524709616, i32 147, i32 17), !dbg !204
  store double %76, double* %74, align 8, !dbg !204
  %77 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !205
  %78 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %77, i32 0, i32 0, !dbg !206
  %79 = load double, double* %78, align 8, !dbg !206
  %80 = call double @fabs(double %79) #1, !dbg !207
  %81 = fmul double 0x3CC0000000000000, %80, !dbg !208
  call void @fMulHandler(double 0x3CC0000000000000, double %80, double %81, i64 0, i64 94284524713968, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 94284524714448, i32 148, i32 42), !dbg !209
  %82 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !209
  %83 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %82, i32 0, i32 1, !dbg !210
  %84 = load double, double* %83, align 8, !dbg !211
  %85 = fadd double %84, %81, !dbg !211
  call void @fAddHandler(double %84, double %81, double %85, i64 94284524715672, i64 94284524714448, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 94284524716080, i32 148, i32 17), !dbg !211
  store double %85, double* %83, align 8, !dbg !211
  %86 = load i32, i32* %7, align 4, !dbg !212
  store i32 %86, i32* %3, align 4, !dbg !213
  br label %313, !dbg !213

; <label>:87:                                     ; preds = %2
  %88 = load double, double* %4, align 8, !dbg !214
  %89 = fcmp ogt double %88, 1.010000e+00, !dbg !216
  %90 = call i1 @fCmpInstHandler(double %88, double 1.010000e+00, i1 %89, i32 2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 94284524720896, i32 151, i32 13), !dbg !217
  br i1 %90, label %91, label %146, !dbg !217

; <label>:91:                                     ; preds = %87
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %12, metadata !218, metadata !79), !dbg !220
  call void @llvm.dbg.declare(metadata i32* %13, metadata !221, metadata !79), !dbg !222
  %92 = load double, double* %4, align 8, !dbg !223
  %93 = fdiv double 1.000000e+00, %92, !dbg !224
  call void @fDivHandler(double 1.000000e+00, double %92, double %93, i64 0, i64 94284524724120, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 94284524724528, i32 153, i32 50), !dbg !225
  %94 = fsub double 1.000000e+00, %93, !dbg !225
  call void @fSubHandler(double 1.000000e+00, double %93, double %94, i64 0, i64 94284524724528, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 94284524724944, i32 153, i32 45), !dbg !226
  %95 = call i32 @dilog_series_2(double %94, %struct.gsl_sf_result_struct* %12), !dbg !226
  store i32 %95, i32* %13, align 4, !dbg !222
  call void @llvm.dbg.declare(metadata double* %14, metadata !227, metadata !79), !dbg !228
  %96 = load double, double* %4, align 8, !dbg !229
  %97 = call double @log(double %96) #5, !dbg !230
  call void @callOneArgHandler(i32 12, double %96, double %97, i64 94284524728632, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 94284524729072, i32 154, i32 29), !dbg !228
  store double %97, double* %14, align 8, !dbg !228
  call void @llvm.dbg.declare(metadata double* %15, metadata !231, metadata !79), !dbg !232
  %98 = load double, double* %14, align 8, !dbg !233
  %99 = load double, double* %4, align 8, !dbg !234
  %100 = fdiv double 1.000000e+00, %99, !dbg !235
  call void @fDivHandler(double 1.000000e+00, double %99, double %100, i64 0, i64 94284524732680, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 94284524733120, i32 155, i32 49), !dbg !236
  %101 = fsub double 1.000000e+00, %100, !dbg !236
  call void @fSubHandler(double 1.000000e+00, double %100, double %101, i64 0, i64 94284524733120, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 94284524733536, i32 155, i32 45), !dbg !237
  %102 = call double @log(double %101) #5, !dbg !237
  call void @callOneArgHandler(i32 12, double %101, double %102, i64 94284524733536, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 94284524733984, i32 155, i32 38), !dbg !238
  %103 = load double, double* %14, align 8, !dbg !238
  %104 = fmul double 5.000000e-01, %103, !dbg !239
  call void @fMulHandler(double 5.000000e-01, double %103, double %104, i64 0, i64 94284524734440, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 94284524734880, i32 155, i32 58), !dbg !240
  %105 = fadd double %102, %104, !dbg !240
  call void @fAddHandler(double %102, double %104, double %105, i64 94284524733984, i64 94284524734880, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 94284524735264, i32 155, i32 53), !dbg !241
  %106 = fmul double %98, %105, !dbg !241
  call void @fMulHandler(double %98, double %105, double %106, i64 94284524732328, i64 94284524735264, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 94284524735680, i32 155, i32 35), !dbg !232
  store double %106, double* %15, align 8, !dbg !232
  call void @llvm.dbg.declare(metadata double* %16, metadata !242, metadata !79), !dbg !243
  store double 0x3FFA51A6625307D3, double* %16, align 8, !dbg !243
  call void @llvm.dbg.declare(metadata double* %17, metadata !244, metadata !79), !dbg !245
  %107 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %12, i32 0, i32 0, !dbg !246
  %108 = load double, double* %107, align 8, !dbg !246
  store double %108, double* %17, align 8, !dbg !245
  call void @llvm.dbg.declare(metadata double* %18, metadata !247, metadata !79), !dbg !248
  %109 = load double, double* %15, align 8, !dbg !249
  store double %109, double* %18, align 8, !dbg !248
  %110 = load double, double* %17, align 8, !dbg !250
  %111 = fadd double 0x3FFA51A6625307D3, %110, !dbg !251
  call void @fAddHandler(double 0x3FFA51A6625307D3, double %110, double %111, i64 0, i64 94284524748536, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 94284524748944, i32 159, i32 23), !dbg !252
  %112 = load double, double* %18, align 8, !dbg !252
  %113 = fsub double %111, %112, !dbg !253
  call void @fSubHandler(double %111, double %112, double %113, i64 94284524748944, i64 94284524749336, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 94284524749744, i32 159, i32 28), !dbg !254
  %114 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !254
  %115 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %114, i32 0, i32 0, !dbg !255
  store double %113, double* %115, align 8, !dbg !256
  %116 = load double, double* %14, align 8, !dbg !257
  %117 = call double @fabs(double %116) #1, !dbg !258
  %118 = fmul double 0x3CB0000000000000, %117, !dbg !259
  call void @fMulHandler(double 0x3CB0000000000000, double %117, double %118, i64 0, i64 94284524751856, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 94284524752336, i32 160, i32 36), !dbg !260
  %119 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %12, i32 0, i32 1, !dbg !260
  %120 = load double, double* %119, align 8, !dbg !260
  %121 = fadd double %118, %120, !dbg !261
  call void @fAddHandler(double %118, double %120, double %121, i64 94284524752336, i64 94284524753176, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 94284524754848, i32 160, i32 50), !dbg !262
  %122 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !262
  %123 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %122, i32 0, i32 1, !dbg !263
  store double %121, double* %123, align 8, !dbg !264
  %124 = call double @fabs(double 0x3FFA51A6625307D3) #1, !dbg !265
  %125 = load double, double* %17, align 8, !dbg !266
  %126 = call double @fabs(double %125) #1, !dbg !267
  %127 = fadd double %124, %126, !dbg !269
  call void @fAddHandler(double %124, double %126, double %127, i64 94284524756576, i64 94284524757504, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 94284524757984, i32 161, i32 48), !dbg !270
  %128 = load double, double* %18, align 8, !dbg !270
  %129 = call double @fabs(double %128) #1, !dbg !271
  %130 = fadd double %127, %129, !dbg !273
  call void @fAddHandler(double %127, double %129, double %130, i64 94284524757984, i64 94284524758848, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 94284524759328, i32 161, i32 59), !dbg !274
  %131 = fmul double 0x3CB0000000000000, %130, !dbg !274
  call void @fMulHandler(double 0x3CB0000000000000, double %130, double %131, i64 0, i64 94284524759328, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 94284524761808, i32 161, i32 36), !dbg !275
  %132 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !275
  %133 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %132, i32 0, i32 1, !dbg !276
  %134 = load double, double* %133, align 8, !dbg !277
  %135 = fadd double %134, %131, !dbg !277
  call void @fAddHandler(double %134, double %131, double %135, i64 94284524763032, i64 94284524761808, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 94284524763440, i32 161, i32 17), !dbg !277
  store double %135, double* %133, align 8, !dbg !277
  %136 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !278
  %137 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %136, i32 0, i32 0, !dbg !279
  %138 = load double, double* %137, align 8, !dbg !279
  %139 = call double @fabs(double %138) #1, !dbg !280
  %140 = fmul double 0x3CC0000000000000, %139, !dbg !281
  call void @fMulHandler(double 0x3CC0000000000000, double %139, double %140, i64 0, i64 94284524767792, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 94284524768272, i32 162, i32 42), !dbg !282
  %141 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !282
  %142 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %141, i32 0, i32 1, !dbg !283
  %143 = load double, double* %142, align 8, !dbg !284
  %144 = fadd double %143, %140, !dbg !284
  call void @fAddHandler(double %143, double %140, double %144, i64 94284524769496, i64 94284524768272, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 94284524769904, i32 162, i32 17), !dbg !284
  store double %144, double* %142, align 8, !dbg !284
  %145 = load i32, i32* %13, align 4, !dbg !285
  store i32 %145, i32* %3, align 4, !dbg !286
  br label %313, !dbg !286

; <label>:146:                                    ; preds = %87
  %147 = load double, double* %4, align 8, !dbg !287
  %148 = fcmp ogt double %147, 1.000000e+00, !dbg !289
  %149 = call i1 @fCmpInstHandler(double %147, double 1.000000e+00, i1 %148, i32 2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 94284524774512, i32 165, i32 13), !dbg !290
  br i1 %149, label %150, label %230, !dbg !290

; <label>:150:                                    ; preds = %146
  call void @llvm.dbg.declare(metadata double* %19, metadata !291, metadata !79), !dbg !293
  %151 = load double, double* %4, align 8, !dbg !294
  %152 = fsub double %151, 1.000000e+00, !dbg !295
  call void @fSubHandler(double %151, double 1.000000e+00, double %152, i64 94284524776648, i64 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 94284524777056, i32 167, i32 26), !dbg !293
  store double %152, double* %19, align 8, !dbg !293
  call void @llvm.dbg.declare(metadata double* %20, metadata !296, metadata !79), !dbg !297
  %153 = load double, double* %19, align 8, !dbg !298
  %154 = call double @log(double %153) #5, !dbg !299
  call void @callOneArgHandler(i32 12, double %153, double %154, i64 94284524780216, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 94284524780656, i32 168, i32 24), !dbg !297
  store double %154, double* %20, align 8, !dbg !297
  call void @llvm.dbg.declare(metadata double* %21, metadata !300, metadata !79), !dbg !301
  store double 0x3FFA51A6625307D3, double* %21, align 8, !dbg !301
  call void @llvm.dbg.declare(metadata double* %22, metadata !302, metadata !79), !dbg !303
  %155 = load double, double* %20, align 8, !dbg !304
  %156 = fsub double 1.000000e+00, %155, !dbg !305
  call void @fSubHandler(double 1.000000e+00, double %155, double %156, i64 0, i64 94284524788744, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 94284524789152, i32 170, i32 29), !dbg !303
  store double %156, double* %22, align 8, !dbg !303
  call void @llvm.dbg.declare(metadata double* %23, metadata !306, metadata !79), !dbg !307
  %157 = load double, double* %20, align 8, !dbg !308
  %158 = fmul double 2.000000e+00, %157, !dbg !309
  call void @fMulHandler(double 2.000000e+00, double %157, double %158, i64 0, i64 94284524792312, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 94284524792720, i32 171, i32 34), !dbg !310
  %159 = fsub double 1.000000e+00, %158, !dbg !310
  call void @fSubHandler(double 1.000000e+00, double %158, double %159, i64 0, i64 94284524792720, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 94284524793136, i32 171, i32 29), !dbg !311
  %160 = fsub double -0.000000e+00, %159, !dbg !311
  call void @fSubHandler(double -0.000000e+00, double %159, double %160, i64 0, i64 94284524793136, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 94284524793520, i32 171, i32 23), !dbg !312
  %161 = fdiv double %160, 4.000000e+00, !dbg !312
  call void @fDivHandler(double %160, double 4.000000e+00, double %161, i64 94284524793520, i64 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 94284524794032, i32 171, i32 39), !dbg !307
  store double %161, double* %23, align 8, !dbg !307
  call void @llvm.dbg.declare(metadata double* %24, metadata !313, metadata !79), !dbg !314
  %162 = load double, double* %20, align 8, !dbg !315
  %163 = fmul double 3.000000e+00, %162, !dbg !316
  call void @fMulHandler(double 3.000000e+00, double %162, double %163, i64 0, i64 94284524797192, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 94284524797664, i32 172, i32 34), !dbg !317
  %164 = fsub double 1.000000e+00, %163, !dbg !317
  call void @fSubHandler(double 1.000000e+00, double %163, double %164, i64 0, i64 94284524797664, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 94284524798080, i32 172, i32 29), !dbg !318
  %165 = fdiv double %164, 9.000000e+00, !dbg !318
  call void @fDivHandler(double %164, double 9.000000e+00, double %165, i64 94284524798080, i64 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 94284524798560, i32 172, i32 39), !dbg !314
  store double %165, double* %24, align 8, !dbg !314
  call void @llvm.dbg.declare(metadata double* %25, metadata !319, metadata !79), !dbg !320
  %166 = load double, double* %20, align 8, !dbg !321
  %167 = fmul double 4.000000e+00, %166, !dbg !322
  call void @fMulHandler(double 4.000000e+00, double %166, double %167, i64 0, i64 94284524801720, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 94284524802128, i32 173, i32 34), !dbg !323
  %168 = fsub double 1.000000e+00, %167, !dbg !323
  call void @fSubHandler(double 1.000000e+00, double %167, double %168, i64 0, i64 94284524802128, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 94284524802544, i32 173, i32 29), !dbg !324
  %169 = fsub double -0.000000e+00, %168, !dbg !324
  call void @fSubHandler(double -0.000000e+00, double %168, double %169, i64 0, i64 94284524802544, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 94284524802928, i32 173, i32 23), !dbg !325
  %170 = fdiv double %169, 1.600000e+01, !dbg !325
  call void @fDivHandler(double %169, double 1.600000e+01, double %170, i64 94284524802928, i64 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 94284524803440, i32 173, i32 39), !dbg !320
  store double %170, double* %25, align 8, !dbg !320
  call void @llvm.dbg.declare(metadata double* %26, metadata !326, metadata !79), !dbg !327
  %171 = load double, double* %20, align 8, !dbg !328
  %172 = fmul double 5.000000e+00, %171, !dbg !329
  call void @fMulHandler(double 5.000000e+00, double %171, double %172, i64 0, i64 94284524806600, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 94284524807072, i32 174, i32 34), !dbg !330
  %173 = fsub double 1.000000e+00, %172, !dbg !330
  call void @fSubHandler(double 1.000000e+00, double %172, double %173, i64 0, i64 94284524807072, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 94284524807488, i32 174, i32 29), !dbg !331
  %174 = fdiv double %173, 2.500000e+01, !dbg !331
  call void @fDivHandler(double %173, double 2.500000e+01, double %174, i64 94284524807488, i64 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 94284524807968, i32 174, i32 39), !dbg !327
  store double %174, double* %26, align 8, !dbg !327
  call void @llvm.dbg.declare(metadata double* %27, metadata !332, metadata !79), !dbg !333
  %175 = load double, double* %20, align 8, !dbg !334
  %176 = fmul double 6.000000e+00, %175, !dbg !335
  call void @fMulHandler(double 6.000000e+00, double %175, double %176, i64 0, i64 94284524811128, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 94284524811600, i32 175, i32 34), !dbg !336
  %177 = fsub double 1.000000e+00, %176, !dbg !336
  call void @fSubHandler(double 1.000000e+00, double %176, double %177, i64 0, i64 94284524811600, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 94284524812016, i32 175, i32 29), !dbg !337
  %178 = fsub double -0.000000e+00, %177, !dbg !337
  call void @fSubHandler(double -0.000000e+00, double %177, double %178, i64 0, i64 94284524812016, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 94284524812400, i32 175, i32 23), !dbg !338
  %179 = fdiv double %178, 3.600000e+01, !dbg !338
  call void @fDivHandler(double %178, double 3.600000e+01, double %179, i64 94284524812400, i64 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 94284524812912, i32 175, i32 39), !dbg !333
  store double %179, double* %27, align 8, !dbg !333
  call void @llvm.dbg.declare(metadata double* %28, metadata !339, metadata !79), !dbg !340
  %180 = load double, double* %20, align 8, !dbg !341
  %181 = fmul double 7.000000e+00, %180, !dbg !342
  call void @fMulHandler(double 7.000000e+00, double %180, double %181, i64 0, i64 94284524816072, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 94284524816544, i32 176, i32 34), !dbg !343
  %182 = fsub double 1.000000e+00, %181, !dbg !343
  call void @fSubHandler(double 1.000000e+00, double %181, double %182, i64 0, i64 94284524816544, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 94284524816960, i32 176, i32 29), !dbg !344
  %183 = fdiv double %182, 4.900000e+01, !dbg !344
  call void @fDivHandler(double %182, double 4.900000e+01, double %183, i64 94284524816960, i64 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 94284524817440, i32 176, i32 39), !dbg !340
  store double %183, double* %28, align 8, !dbg !340
  call void @llvm.dbg.declare(metadata double* %29, metadata !345, metadata !79), !dbg !346
  %184 = load double, double* %20, align 8, !dbg !347
  %185 = fmul double 8.000000e+00, %184, !dbg !348
  call void @fMulHandler(double 8.000000e+00, double %184, double %185, i64 0, i64 94284524820600, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 94284524821072, i32 177, i32 34), !dbg !349
  %186 = fsub double 1.000000e+00, %185, !dbg !349
  call void @fSubHandler(double 1.000000e+00, double %185, double %186, i64 0, i64 94284524821072, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 94284524821488, i32 177, i32 29), !dbg !350
  %187 = fsub double -0.000000e+00, %186, !dbg !350
  call void @fSubHandler(double -0.000000e+00, double %186, double %187, i64 0, i64 94284524821488, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 94284524821872, i32 177, i32 23), !dbg !351
  %188 = fdiv double %187, 6.400000e+01, !dbg !351
  call void @fDivHandler(double %187, double 6.400000e+01, double %188, i64 94284524821872, i64 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 94284524822384, i32 177, i32 39), !dbg !346
  store double %188, double* %29, align 8, !dbg !346
  %189 = load double, double* %19, align 8, !dbg !352
  %190 = load double, double* %22, align 8, !dbg !353
  %191 = load double, double* %19, align 8, !dbg !354
  %192 = load double, double* %23, align 8, !dbg !355
  %193 = load double, double* %19, align 8, !dbg !356
  %194 = load double, double* %24, align 8, !dbg !357
  %195 = load double, double* %19, align 8, !dbg !358
  %196 = load double, double* %25, align 8, !dbg !359
  %197 = load double, double* %19, align 8, !dbg !360
  %198 = load double, double* %26, align 8, !dbg !361
  %199 = load double, double* %19, align 8, !dbg !362
  %200 = load double, double* %27, align 8, !dbg !363
  %201 = load double, double* %19, align 8, !dbg !364
  %202 = load double, double* %28, align 8, !dbg !365
  %203 = load double, double* %19, align 8, !dbg !366
  %204 = load double, double* %29, align 8, !dbg !367
  %205 = fmul double %203, %204, !dbg !368
  call void @fMulHandler(double %203, double %204, double %205, i64 94284524829800, i64 94284524830184, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 94284524830592, i32 178, i32 81), !dbg !369
  %206 = fadd double %202, %205, !dbg !369
  call void @fAddHandler(double %202, double %205, double %206, i64 94284524829416, i64 94284524830592, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 94284524831008, i32 178, i32 77), !dbg !370
  %207 = fmul double %201, %206, !dbg !370
  call void @fMulHandler(double %201, double %206, double %207, i64 94284524829032, i64 94284524831008, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 94284524831424, i32 178, i32 73), !dbg !371
  %208 = fadd double %200, %207, !dbg !371
  call void @fAddHandler(double %200, double %207, double %208, i64 94284524828648, i64 94284524831424, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 94284524831840, i32 178, i32 69), !dbg !372
  %209 = fmul double %199, %208, !dbg !372
  call void @fMulHandler(double %199, double %208, double %209, i64 94284524828264, i64 94284524831840, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 94284524832256, i32 178, i32 65), !dbg !373
  %210 = fadd double %198, %209, !dbg !373
  call void @fAddHandler(double %198, double %209, double %210, i64 94284524827880, i64 94284524832256, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 94284524832672, i32 178, i32 61), !dbg !374
  %211 = fmul double %197, %210, !dbg !374
  call void @fMulHandler(double %197, double %210, double %211, i64 94284524827496, i64 94284524832672, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 94284524833088, i32 178, i32 57), !dbg !375
  %212 = fadd double %196, %211, !dbg !375
  call void @fAddHandler(double %196, double %211, double %212, i64 94284524827112, i64 94284524833088, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 94284524833504, i32 178, i32 53), !dbg !376
  %213 = fmul double %195, %212, !dbg !376
  call void @fMulHandler(double %195, double %212, double %213, i64 94284524826728, i64 94284524833504, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 94284524833920, i32 178, i32 49), !dbg !377
  %214 = fadd double %194, %213, !dbg !377
  call void @fAddHandler(double %194, double %213, double %214, i64 94284524826344, i64 94284524833920, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 94284524834336, i32 178, i32 45), !dbg !378
  %215 = fmul double %193, %214, !dbg !378
  call void @fMulHandler(double %193, double %214, double %215, i64 94284524825960, i64 94284524834336, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 94284524834752, i32 178, i32 41), !dbg !379
  %216 = fadd double %192, %215, !dbg !379
  call void @fAddHandler(double %192, double %215, double %216, i64 94284524825576, i64 94284524834752, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 94284524835168, i32 178, i32 37), !dbg !380
  %217 = fmul double %191, %216, !dbg !380
  call void @fMulHandler(double %191, double %216, double %217, i64 94284524825192, i64 94284524835168, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 94284524835584, i32 178, i32 33), !dbg !381
  %218 = fadd double %190, %217, !dbg !381
  call void @fAddHandler(double %190, double %217, double %218, i64 94284524824808, i64 94284524835584, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 94284524836000, i32 178, i32 29), !dbg !382
  %219 = fmul double %189, %218, !dbg !382
  call void @fMulHandler(double %189, double %218, double %219, i64 94284524824424, i64 94284524836000, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 94284524836416, i32 178, i32 25), !dbg !383
  %220 = fadd double 0x3FFA51A6625307D3, %219, !dbg !383
  call void @fAddHandler(double 0x3FFA51A6625307D3, double %219, double %220, i64 0, i64 94284524836416, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 94284524836832, i32 178, i32 21), !dbg !384
  %221 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !384
  %222 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %221, i32 0, i32 0, !dbg !385
  store double %220, double* %222, align 8, !dbg !386
  %223 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !387
  %224 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %223, i32 0, i32 0, !dbg !388
  %225 = load double, double* %224, align 8, !dbg !388
  %226 = call double @fabs(double %225) #1, !dbg !389
  %227 = fmul double 0x3CC0000000000000, %226, !dbg !390
  call void @fMulHandler(double 0x3CC0000000000000, double %226, double %227, i64 0, i64 94284524841040, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 94284524841520, i32 179, i32 41), !dbg !391
  %228 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !391
  %229 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %228, i32 0, i32 1, !dbg !392
  store double %227, double* %229, align 8, !dbg !393
  store i32 0, i32* %3, align 4, !dbg !394
  br label %313, !dbg !394

; <label>:230:                                    ; preds = %146
  %231 = load double, double* %4, align 8, !dbg !395
  %232 = fcmp oeq double %231, 1.000000e+00, !dbg !397
  %233 = call i1 @fCmpInstHandler(double %231, double 1.000000e+00, i1 %232, i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 94284524845600, i32 182, i32 13), !dbg !398
  br i1 %233, label %234, label %239, !dbg !398

; <label>:234:                                    ; preds = %230
  %235 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !399
  %236 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %235, i32 0, i32 0, !dbg !401
  store double 0x3FFA51A6625307D3, double* %236, align 8, !dbg !402
  %237 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !403
  %238 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %237, i32 0, i32 1, !dbg !404
  store double 0x3CCA51A6625307D3, double* %238, align 8, !dbg !405
  store i32 0, i32* %3, align 4, !dbg !406
  br label %313, !dbg !406

; <label>:239:                                    ; preds = %230
  %240 = load double, double* %4, align 8, !dbg !407
  %241 = fcmp ogt double %240, 5.000000e-01, !dbg !409
  %242 = call i1 @fCmpInstHandler(double %240, double 5.000000e-01, i1 %241, i32 2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 94284524851616, i32 187, i32 13), !dbg !410
  br i1 %242, label %243, label %292, !dbg !410

; <label>:243:                                    ; preds = %239
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %30, metadata !411, metadata !79), !dbg !413
  call void @llvm.dbg.declare(metadata i32* %31, metadata !414, metadata !79), !dbg !415
  %244 = load double, double* %4, align 8, !dbg !416
  %245 = fsub double 1.000000e+00, %244, !dbg !417
  call void @fSubHandler(double 1.000000e+00, double %244, double %245, i64 0, i64 94284524854840, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 94284524855248, i32 189, i32 44), !dbg !418
  %246 = call i32 @dilog_series_2(double %245, %struct.gsl_sf_result_struct* %30), !dbg !418
  store i32 %246, i32* %31, align 4, !dbg !415
  call void @llvm.dbg.declare(metadata double* %32, metadata !419, metadata !79), !dbg !420
  %247 = load double, double* %4, align 8, !dbg !421
  %248 = call double @log(double %247) #5, !dbg !422
  call void @callOneArgHandler(i32 12, double %247, double %248, i64 94284524858936, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 94284524859376, i32 190, i32 26), !dbg !420
  store double %248, double* %32, align 8, !dbg !420
  call void @llvm.dbg.declare(metadata double* %33, metadata !423, metadata !79), !dbg !424
  store double 0x3FFA51A6625307D3, double* %33, align 8, !dbg !424
  call void @llvm.dbg.declare(metadata double* %34, metadata !425, metadata !79), !dbg !426
  %249 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %30, i32 0, i32 0, !dbg !427
  %250 = load double, double* %249, align 8, !dbg !427
  store double %250, double* %34, align 8, !dbg !426
  call void @llvm.dbg.declare(metadata double* %35, metadata !428, metadata !79), !dbg !429
  %251 = load double, double* %32, align 8, !dbg !430
  %252 = load double, double* %4, align 8, !dbg !431
  %253 = fsub double 1.000000e+00, %252, !dbg !432
  call void @fSubHandler(double 1.000000e+00, double %252, double %253, i64 0, i64 94284524870616, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 94284524871056, i32 193, i32 36), !dbg !433
  %254 = call double @log(double %253) #5, !dbg !433
  call void @callOneArgHandler(i32 12, double %253, double %254, i64 94284524871056, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 94284524871504, i32 193, i32 29), !dbg !434
  %255 = fmul double %251, %254, !dbg !434
  call void @fMulHandler(double %251, double %254, double %255, i64 94284524870264, i64 94284524871504, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 94284524871984, i32 193, i32 28), !dbg !429
  store double %255, double* %35, align 8, !dbg !429
  %256 = load double, double* %34, align 8, !dbg !435
  %257 = fsub double 0x3FFA51A6625307D3, %256, !dbg !436
  call void @fSubHandler(double 0x3FFA51A6625307D3, double %256, double %257, i64 0, i64 94284524874056, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 94284524874464, i32 194, i32 23), !dbg !437
  %258 = load double, double* %35, align 8, !dbg !437
  %259 = fsub double %257, %258, !dbg !438
  call void @fSubHandler(double %257, double %258, double %259, i64 94284524874464, i64 94284524874856, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 94284524875264, i32 194, i32 28), !dbg !439
  %260 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !439
  %261 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %260, i32 0, i32 0, !dbg !440
  store double %259, double* %261, align 8, !dbg !441
  %262 = load double, double* %32, align 8, !dbg !442
  %263 = call double @fabs(double %262) #1, !dbg !443
  %264 = fmul double 0x3CB0000000000000, %263, !dbg !444
  call void @fMulHandler(double 0x3CB0000000000000, double %263, double %264, i64 0, i64 94284524760608, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 94284524761088, i32 195, i32 36), !dbg !445
  %265 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %30, i32 0, i32 1, !dbg !445
  %266 = load double, double* %265, align 8, !dbg !445
  %267 = fadd double %264, %266, !dbg !446
  call void @fAddHandler(double %264, double %266, double %267, i64 94284524761088, i64 94284524880792, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 94284524882464, i32 195, i32 50), !dbg !447
  %268 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !447
  %269 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %268, i32 0, i32 1, !dbg !448
  store double %267, double* %269, align 8, !dbg !449
  %270 = call double @fabs(double 0x3FFA51A6625307D3) #1, !dbg !450
  %271 = load double, double* %34, align 8, !dbg !451
  %272 = call double @fabs(double %271) #1, !dbg !452
  %273 = fadd double %270, %272, !dbg !454
  call void @fAddHandler(double %270, double %272, double %273, i64 94284524884160, i64 94284524885088, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 94284524885568, i32 196, i32 48), !dbg !455
  %274 = load double, double* %35, align 8, !dbg !455
  %275 = call double @fabs(double %274) #1, !dbg !456
  %276 = fadd double %273, %275, !dbg !458
  call void @fAddHandler(double %273, double %275, double %276, i64 94284524885568, i64 94284524886432, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 94284524886912, i32 196, i32 59), !dbg !459
  %277 = fmul double 0x3CB0000000000000, %276, !dbg !459
  call void @fMulHandler(double 0x3CB0000000000000, double %276, double %277, i64 0, i64 94284524886912, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 94284524887328, i32 196, i32 36), !dbg !460
  %278 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !460
  %279 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %278, i32 0, i32 1, !dbg !461
  %280 = load double, double* %279, align 8, !dbg !462
  %281 = fadd double %280, %277, !dbg !462
  call void @fAddHandler(double %280, double %277, double %281, i64 94284524888552, i64 94284524887328, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 94284524888960, i32 196, i32 17), !dbg !462
  store double %281, double* %279, align 8, !dbg !462
  %282 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !463
  %283 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %282, i32 0, i32 0, !dbg !464
  %284 = load double, double* %283, align 8, !dbg !464
  %285 = call double @fabs(double %284) #1, !dbg !465
  %286 = fmul double 0x3CC0000000000000, %285, !dbg !466
  call void @fMulHandler(double 0x3CC0000000000000, double %285, double %286, i64 0, i64 94284524893312, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 94284524893792, i32 197, i32 42), !dbg !467
  %287 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !467
  %288 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %287, i32 0, i32 1, !dbg !468
  %289 = load double, double* %288, align 8, !dbg !469
  %290 = fadd double %289, %286, !dbg !469
  call void @fAddHandler(double %289, double %286, double %290, i64 94284524895016, i64 94284524893792, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 94284524895424, i32 197, i32 17), !dbg !469
  store double %290, double* %288, align 8, !dbg !469
  %291 = load i32, i32* %31, align 4, !dbg !470
  store i32 %291, i32* %3, align 4, !dbg !471
  br label %313, !dbg !471

; <label>:292:                                    ; preds = %239
  %293 = load double, double* %4, align 8, !dbg !472
  %294 = fcmp ogt double %293, 2.500000e-01, !dbg !474
  %295 = call i1 @fCmpInstHandler(double %293, double 2.500000e-01, i1 %294, i32 2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 94284524900032, i32 200, i32 13), !dbg !475
  br i1 %295, label %296, label %300, !dbg !475

; <label>:296:                                    ; preds = %292
  %297 = load double, double* %4, align 8, !dbg !476
  %298 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !478
  %299 = call i32 @dilog_series_2(double %297, %struct.gsl_sf_result_struct* %298), !dbg !479
  store i32 %299, i32* %3, align 4, !dbg !480
  br label %313, !dbg !480

; <label>:300:                                    ; preds = %292
  %301 = load double, double* %4, align 8, !dbg !481
  %302 = fcmp ogt double %301, 0.000000e+00, !dbg !483
  %303 = call i1 @fCmpInstHandler(double %301, double 0.000000e+00, i1 %302, i32 2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 94284524904752, i32 203, i32 13), !dbg !484
  br i1 %303, label %304, label %308, !dbg !484

; <label>:304:                                    ; preds = %300
  %305 = load double, double* %4, align 8, !dbg !485
  %306 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !487
  %307 = call i32 @dilog_series_1(double %305, %struct.gsl_sf_result_struct* %306), !dbg !488
  store i32 %307, i32* %3, align 4, !dbg !489
  br label %313, !dbg !489

; <label>:308:                                    ; preds = %300
  %309 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !490
  %310 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %309, i32 0, i32 0, !dbg !492
  store double 0.000000e+00, double* %310, align 8, !dbg !493
  %311 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !494
  %312 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %311, i32 0, i32 1, !dbg !495
  store double 0.000000e+00, double* %312, align 8, !dbg !496
  store i32 0, i32* %3, align 4, !dbg !497
  br label %313, !dbg !497

; <label>:313:                                    ; preds = %308, %304, %296, %243, %234, %150, %91, %39
  %314 = load i32, i32* %3, align 4, !dbg !498
  ret i32 %314, !dbg !498
}

; Function Attrs: nounwind readnone
declare double @fabs(double) #2

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_complex_dilog_xy_e(double, double, %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct*) #0 !dbg !499 {
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca %struct.gsl_sf_result_struct*, align 8
  %9 = alloca %struct.gsl_sf_result_struct*, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca %struct.gsl_sf_result_struct, align 8
  %19 = alloca %struct.gsl_sf_result_struct, align 8
  %20 = alloca i32, align 4
  %21 = alloca double, align 8
  %22 = alloca double, align 8
  %23 = alloca double, align 8
  %24 = alloca double, align 8
  %25 = alloca double, align 8
  %26 = alloca double, align 8
  %27 = alloca double, align 8
  store double %0, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !502, metadata !79), !dbg !503
  store double %1, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !504, metadata !79), !dbg !505
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %8, metadata !506, metadata !79), !dbg !507
  store %struct.gsl_sf_result_struct* %3, %struct.gsl_sf_result_struct** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %9, metadata !508, metadata !79), !dbg !509
  call void @llvm.dbg.declare(metadata double* %10, metadata !510, metadata !79), !dbg !511
  store double 0x3FFA51A6625307D3, double* %10, align 8, !dbg !511
  call void @llvm.dbg.declare(metadata double* %11, metadata !512, metadata !79), !dbg !513
  %28 = load double, double* %6, align 8, !dbg !514
  %29 = load double, double* %6, align 8, !dbg !515
  %30 = fmul double %28, %29, !dbg !516
  call void @fMulHandler(double %28, double %29, double %30, i64 94284524645496, i64 94284524924664, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @5, i32 0, i32 0), i64 94284524925072, i32 561, i32 22), !dbg !517
  %31 = load double, double* %7, align 8, !dbg !517
  %32 = load double, double* %7, align 8, !dbg !518
  %33 = fmul double %31, %32, !dbg !519
  call void @fMulHandler(double %31, double %32, double %33, i64 94284524925464, i64 94284524925848, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @5, i32 0, i32 0), i64 94284524926256, i32 561, i32 28), !dbg !520
  %34 = fadd double %30, %33, !dbg !520
  call void @fAddHandler(double %30, double %33, double %34, i64 94284524925072, i64 94284524926256, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @5, i32 0, i32 0), i64 94284524926672, i32 561, i32 25), !dbg !513
  store double %34, double* %11, align 8, !dbg !513
  %35 = load double, double* %7, align 8, !dbg !521
  %36 = fcmp oeq double %35, 0.000000e+00, !dbg !523
  %37 = call i1 @fCmpInstHandler(double %35, double 0.000000e+00, i1 %36, i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @5, i32 0, i32 0), i64 94284524929152, i32 563, i32 8), !dbg !524
  br i1 %37, label %38, label %64, !dbg !524

; <label>:38:                                     ; preds = %4
  %39 = load double, double* %6, align 8, !dbg !525
  %40 = fcmp oge double %39, 1.000000e+00, !dbg !528
  %41 = call i1 @fCmpInstHandler(double %39, double 1.000000e+00, i1 %40, i32 3, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @5, i32 0, i32 0), i64 94284524930640, i32 565, i32 10), !dbg !529
  br i1 %41, label %42, label %55, !dbg !529

; <label>:42:                                     ; preds = %38
  %43 = load double, double* %6, align 8, !dbg !530
  %44 = call double @log(double %43) #5, !dbg !532
  call void @callOneArgHandler(i32 12, double %43, double %44, i64 94284524931720, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @5, i32 0, i32 0), i64 94284524932128, i32 567, i32 30), !dbg !533
  %45 = fmul double 0xC00921FB54442D18, %44, !dbg !533
  call void @fMulHandler(double 0xC00921FB54442D18, double %44, double %45, i64 0, i64 94284524932128, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @5, i32 0, i32 0), i64 94284524932672, i32 567, i32 28), !dbg !534
  %46 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !534
  %47 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %46, i32 0, i32 0, !dbg !535
  store double %45, double* %47, align 8, !dbg !536
  %48 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !537
  %49 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %48, i32 0, i32 0, !dbg !538
  %50 = load double, double* %49, align 8, !dbg !538
  %51 = call double @fabs(double %50) #1, !dbg !539
  %52 = fmul double 0x3CC0000000000000, %51, !dbg !540
  call void @fMulHandler(double 0x3CC0000000000000, double %51, double %52, i64 0, i64 94284524936880, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @5, i32 0, i32 0), i64 94284524937360, i32 568, i32 44), !dbg !541
  %53 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !541
  %54 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %53, i32 0, i32 1, !dbg !542
  store double %52, double* %54, align 8, !dbg !543
  br label %60, !dbg !544

; <label>:55:                                     ; preds = %38
  %56 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !545
  %57 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %56, i32 0, i32 0, !dbg !547
  store double 0.000000e+00, double* %57, align 8, !dbg !548
  %58 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !549
  %59 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %58, i32 0, i32 1, !dbg !550
  store double 0.000000e+00, double* %59, align 8, !dbg !551
  br label %60

; <label>:60:                                     ; preds = %55, %42
  %61 = load double, double* %6, align 8, !dbg !552
  %62 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !553
  %63 = call i32 @gsl_sf_dilog_e(double %61, %struct.gsl_sf_result_struct* %62), !dbg !554
  store i32 %63, i32* %5, align 4, !dbg !555
  br label %183, !dbg !555

; <label>:64:                                     ; preds = %4
  %65 = load double, double* %11, align 8, !dbg !556
  %66 = fsub double %65, 1.000000e+00, !dbg !558
  call void @fSubHandler(double %65, double 1.000000e+00, double %66, i64 94284524945496, i64 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @5, i32 0, i32 0), i64 94284524945872, i32 577, i32 19), !dbg !559
  %67 = call double @fabs(double %66) #1, !dbg !559
  %68 = fcmp olt double %67, 0x3CB0000000000000, !dbg !560
  %69 = call i1 @fCmpInstHandler(double %67, double 0x3CB0000000000000, i1 %68, i32 4, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @5, i32 0, i32 0), i64 94284524946800, i32 577, i32 26), !dbg !561
  br i1 %69, label %70, label %98, !dbg !561

; <label>:70:                                     ; preds = %64
  call void @llvm.dbg.declare(metadata double* %12, metadata !562, metadata !79), !dbg !564
  %71 = load double, double* %7, align 8, !dbg !565
  %72 = load double, double* %6, align 8, !dbg !566
  %73 = call double @atan2(double %71, double %72) #5, !dbg !567
  call void @callTwoArgsHandler(i32 7, double %71, double %72, double %73, i64 94284524948968, i64 94284524949320, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @5, i32 0, i32 0), i64 94284524950120, i32 581, i32 26), !dbg !564
  store double %73, double* %12, align 8, !dbg !564
  call void @llvm.dbg.declare(metadata double* %13, metadata !568, metadata !79), !dbg !569
  %74 = load double, double* %12, align 8, !dbg !570
  %75 = load double, double* %12, align 8, !dbg !571
  %76 = fmul double %74, %75, !dbg !572
  call void @fMulHandler(double %74, double %75, double %76, i64 94284524953416, i64 94284524953768, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @5, i32 0, i32 0), i64 94284524954176, i32 582, i32 31), !dbg !573
  %77 = fdiv double %76, 4.000000e+00, !dbg !573
  call void @fDivHandler(double %76, double 4.000000e+00, double %77, i64 94284524954176, i64 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @5, i32 0, i32 0), i64 94284524954624, i32 582, i32 37), !dbg !569
  store double %77, double* %13, align 8, !dbg !569
  call void @llvm.dbg.declare(metadata double* %14, metadata !574, metadata !79), !dbg !575
  %78 = load double, double* %12, align 8, !dbg !576
  %79 = call double @fabs(double %78) #1, !dbg !577
  %80 = fmul double 0x400921FB54442D18, %79, !dbg !578
  call void @fMulHandler(double 0x400921FB54442D18, double %79, double %80, i64 0, i64 94284524958224, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @5, i32 0, i32 0), i64 94284524958768, i32 583, i32 30), !dbg !579
  %81 = fdiv double %80, 2.000000e+00, !dbg !579
  call void @fDivHandler(double %80, double 2.000000e+00, double %81, i64 94284524958768, i64 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @5, i32 0, i32 0), i64 94284524959216, i32 583, i32 42), !dbg !575
  store double %81, double* %14, align 8, !dbg !575
  %82 = load double, double* %13, align 8, !dbg !580
  %83 = fadd double 0x3FFA51A6625307D3, %82, !dbg !581
  call void @fAddHandler(double 0x3FFA51A6625307D3, double %82, double %83, i64 0, i64 94284524961256, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @5, i32 0, i32 0), i64 94284524961664, i32 584, i32 26), !dbg !582
  %84 = load double, double* %14, align 8, !dbg !582
  %85 = fsub double %83, %84, !dbg !583
  call void @fSubHandler(double %83, double %84, double %85, i64 94284524961664, i64 94284524962056, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @5, i32 0, i32 0), i64 94284524962464, i32 584, i32 34), !dbg !584
  %86 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !584
  %87 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %86, i32 0, i32 0, !dbg !585
  store double %85, double* %87, align 8, !dbg !586
  %88 = load double, double* %13, align 8, !dbg !587
  %89 = fadd double 0x3FFA51A6625307D3, %88, !dbg !588
  call void @fAddHandler(double 0x3FFA51A6625307D3, double %88, double %89, i64 0, i64 94284524964104, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @5, i32 0, i32 0), i64 94284524964512, i32 585, i32 51), !dbg !589
  %90 = load double, double* %14, align 8, !dbg !589
  %91 = fadd double %89, %90, !dbg !590
  call void @fAddHandler(double %89, double %90, double %91, i64 94284524964512, i64 94284524964904, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @5, i32 0, i32 0), i64 94284524965312, i32 585, i32 59), !dbg !591
  %92 = fmul double 0x3CC0000000000000, %91, !dbg !591
  call void @fMulHandler(double 0x3CC0000000000000, double %91, double %92, i64 0, i64 94284524965312, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @5, i32 0, i32 0), i64 94284524965728, i32 585, i32 42), !dbg !592
  %93 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !592
  %94 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %93, i32 0, i32 1, !dbg !593
  store double %92, double* %94, align 8, !dbg !594
  %95 = load double, double* %12, align 8, !dbg !595
  %96 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !596
  %97 = call i32 @gsl_sf_clausen_e(double %95, %struct.gsl_sf_result_struct* %96), !dbg !597
  store i32 %97, i32* %5, align 4, !dbg !598
  br label %183, !dbg !598

; <label>:98:                                     ; preds = %64
  %99 = load double, double* %11, align 8, !dbg !599
  %100 = fcmp olt double %99, 1.000000e+00, !dbg !601
  %101 = call i1 @fCmpInstHandler(double %99, double 1.000000e+00, i1 %100, i32 4, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @5, i32 0, i32 0), i64 94284524971456, i32 588, i32 14), !dbg !602
  br i1 %101, label %102, label %108, !dbg !602

; <label>:102:                                    ; preds = %98
  %103 = load double, double* %6, align 8, !dbg !603
  %104 = load double, double* %7, align 8, !dbg !605
  %105 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !606
  %106 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !607
  %107 = call i32 @dilogc_unitdisk(double %103, double %104, %struct.gsl_sf_result_struct* %105, %struct.gsl_sf_result_struct* %106), !dbg !608
  store i32 %107, i32* %5, align 4, !dbg !609
  br label %183, !dbg !609

; <label>:108:                                    ; preds = %98
  call void @llvm.dbg.declare(metadata double* %15, metadata !610, metadata !79), !dbg !612
  %109 = load double, double* %11, align 8, !dbg !613
  %110 = call double @sqrt(double %109) #5, !dbg !614
  call void @callOneArgHandler(i32 14, double %109, double %110, i64 94284524783896, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @5, i32 0, i32 0), i64 94284524784608, i32 595, i32 22), !dbg !612
  store double %110, double* %15, align 8, !dbg !612
  call void @llvm.dbg.declare(metadata double* %16, metadata !615, metadata !79), !dbg !616
  %111 = load double, double* %6, align 8, !dbg !617
  %112 = load double, double* %11, align 8, !dbg !618
  %113 = fdiv double %111, %112, !dbg !619
  call void @fDivHandler(double %111, double %112, double %113, i64 94284524986280, i64 94284524986632, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @5, i32 0, i32 0), i64 94284524987040, i32 596, i32 28), !dbg !616
  store double %113, double* %16, align 8, !dbg !616
  call void @llvm.dbg.declare(metadata double* %17, metadata !620, metadata !79), !dbg !621
  %114 = load double, double* %7, align 8, !dbg !622
  %115 = fsub double -0.000000e+00, %114, !dbg !623
  call void @fSubHandler(double -0.000000e+00, double %114, double %115, i64 0, i64 94284524990232, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @5, i32 0, i32 0), i64 94284524990608, i32 597, i32 26), !dbg !624
  %116 = load double, double* %11, align 8, !dbg !624
  %117 = fdiv double %115, %116, !dbg !625
  call void @fDivHandler(double %115, double %116, double %117, i64 94284524990608, i64 94284524991000, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @5, i32 0, i32 0), i64 94284524991408, i32 597, i32 28), !dbg !621
  store double %117, double* %17, align 8, !dbg !621
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %18, metadata !626, metadata !79), !dbg !627
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %19, metadata !628, metadata !79), !dbg !629
  call void @llvm.dbg.declare(metadata i32* %20, metadata !630, metadata !79), !dbg !631
  %118 = load double, double* %16, align 8, !dbg !632
  %119 = load double, double* %17, align 8, !dbg !633
  %120 = call i32 @dilogc_unitdisk(double %118, double %119, %struct.gsl_sf_result_struct* %18, %struct.gsl_sf_result_struct* %19), !dbg !634
  store i32 %120, i32* %20, align 4, !dbg !631
  call void @llvm.dbg.declare(metadata double* %21, metadata !635, metadata !79), !dbg !636
  %121 = load double, double* %7, align 8, !dbg !637
  %122 = load double, double* %6, align 8, !dbg !638
  %123 = call double @atan2(double %121, double %122) #5, !dbg !639
  call void @callTwoArgsHandler(i32 7, double %121, double %122, double %123, i64 94284525000888, i64 94284525001240, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @5, i32 0, i32 0), i64 94284525001768, i32 608, i32 26), !dbg !636
  store double %123, double* %21, align 8, !dbg !636
  call void @llvm.dbg.declare(metadata double* %22, metadata !640, metadata !79), !dbg !641
  %124 = load double, double* %21, align 8, !dbg !642
  %125 = call double @fabs(double %124) #1, !dbg !643
  store double %125, double* %22, align 8, !dbg !641
  call void @llvm.dbg.declare(metadata double* %23, metadata !644, metadata !79), !dbg !645
  %126 = load double, double* %21, align 8, !dbg !646
  %127 = fcmp olt double %126, 0.000000e+00, !dbg !647
  %128 = call i1 @fCmpInstHandler(double %126, double 0.000000e+00, i1 %127, i32 4, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @5, i32 0, i32 0), i64 94284525009056, i32 610, i32 38), !dbg !646
  %129 = select i1 %128, double -1.000000e+00, double 1.000000e+00, !dbg !646
  store double %129, double* %23, align 8, !dbg !645
  call void @llvm.dbg.declare(metadata double* %24, metadata !648, metadata !79), !dbg !649
  %130 = load double, double* %15, align 8, !dbg !650
  %131 = call double @log(double %130) #5, !dbg !651
  call void @callOneArgHandler(i32 12, double %130, double %131, i64 94284525014008, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @5, i32 0, i32 0), i64 94284525014448, i32 611, i32 33), !dbg !649
  store double %131, double* %24, align 8, !dbg !649
  call void @llvm.dbg.declare(metadata double* %25, metadata !652, metadata !79), !dbg !653
  %132 = load double, double* %23, align 8, !dbg !654
  %133 = load double, double* %22, align 8, !dbg !655
  %134 = fsub double %133, 0x400921FB54442D18, !dbg !656
  call void @fSubHandler(double %133, double 0x400921FB54442D18, double %134, i64 94284525018056, i64 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @5, i32 0, i32 0), i64 94284525020528, i32 612, i32 56), !dbg !657
  %135 = fmul double %132, %134, !dbg !657
  call void @fMulHandler(double %132, double %134, double %135, i64 94284525017704, i64 94284525020528, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @5, i32 0, i32 0), i64 94284525020944, i32 612, i32 43), !dbg !653
  store double %135, double* %25, align 8, !dbg !653
  call void @llvm.dbg.declare(metadata double* %26, metadata !658, metadata !79), !dbg !659
  %136 = load double, double* %24, align 8, !dbg !660
  %137 = load double, double* %24, align 8, !dbg !661
  %138 = fmul double %136, %137, !dbg !662
  call void @fMulHandler(double %136, double %137, double %138, i64 94284525024136, i64 94284525024488, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @5, i32 0, i32 0), i64 94284525024896, i32 613, i32 40), !dbg !663
  %139 = load double, double* %25, align 8, !dbg !663
  %140 = load double, double* %25, align 8, !dbg !664
  %141 = fmul double %139, %140, !dbg !665
  call void @fMulHandler(double %139, double %140, double %141, i64 94284525025288, i64 94284525025672, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @5, i32 0, i32 0), i64 94284525026080, i32 613, i32 68), !dbg !666
  %142 = fsub double %138, %141, !dbg !666
  call void @fSubHandler(double %138, double %141, double %142, i64 94284525024896, i64 94284525026080, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @5, i32 0, i32 0), i64 94284525026496, i32 613, i32 54), !dbg !659
  store double %142, double* %26, align 8, !dbg !659
  call void @llvm.dbg.declare(metadata double* %27, metadata !667, metadata !79), !dbg !668
  %143 = load double, double* %24, align 8, !dbg !669
  %144 = fmul double 2.000000e+00, %143, !dbg !670
  call void @fMulHandler(double 2.000000e+00, double %143, double %144, i64 0, i64 94284525029688, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @5, i32 0, i32 0), i64 94284525030096, i32 614, i32 31), !dbg !671
  %145 = load double, double* %25, align 8, !dbg !671
  %146 = fmul double %144, %145, !dbg !672
  call void @fMulHandler(double %144, double %145, double %146, i64 94284525030096, i64 94284525030456, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @5, i32 0, i32 0), i64 94284525030864, i32 614, i32 44), !dbg !668
  store double %146, double* %27, align 8, !dbg !668
  %147 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %18, i32 0, i32 0, !dbg !673
  %148 = load double, double* %147, align 8, !dbg !673
  %149 = fsub double -0.000000e+00, %148, !dbg !674
  call void @fSubHandler(double -0.000000e+00, double %148, double %149, i64 0, i64 94284525033384, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @5, i32 0, i32 0), i64 94284525035056, i32 615, i32 20), !dbg !675
  %150 = load double, double* %26, align 8, !dbg !675
  %151 = fmul double 5.000000e-01, %150, !dbg !676
  call void @fMulHandler(double 5.000000e-01, double %150, double %151, i64 0, i64 94284525035448, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @5, i32 0, i32 0), i64 94284525035888, i32 615, i32 45), !dbg !677
  %152 = fsub double %149, %151, !dbg !677
  call void @fSubHandler(double %149, double %151, double %152, i64 94284525035056, i64 94284525035888, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @5, i32 0, i32 0), i64 94284525036272, i32 615, i32 39), !dbg !678
  %153 = fsub double %152, 0x3FFA51A6625307D3, !dbg !678
  call void @fSubHandler(double %152, double 0x3FFA51A6625307D3, double %153, i64 94284525036272, i64 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @5, i32 0, i32 0), i64 94284525036688, i32 615, i32 55), !dbg !679
  %154 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !679
  %155 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %154, i32 0, i32 0, !dbg !680
  store double %153, double* %155, align 8, !dbg !681
  %156 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %18, i32 0, i32 1, !dbg !682
  %157 = load double, double* %156, align 8, !dbg !682
  %158 = load double, double* %26, align 8, !dbg !683
  %159 = call double @fabs(double %158) #1, !dbg !684
  %160 = fmul double 5.000000e-01, %159, !dbg !685
  call void @fMulHandler(double 5.000000e-01, double %159, double %160, i64 0, i64 94284525040896, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @5, i32 0, i32 0), i64 94284525041408, i32 616, i32 66), !dbg !686
  %161 = fadd double %160, 0x3FFA51A6625307D3, !dbg !686
  call void @fAddHandler(double %160, double 0x3FFA51A6625307D3, double %161, i64 94284525041408, i64 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @5, i32 0, i32 0), i64 94284525041792, i32 616, i32 82), !dbg !687
  %162 = fmul double 0x3CC0000000000000, %161, !dbg !687
  call void @fMulHandler(double 0x3CC0000000000000, double %161, double %162, i64 0, i64 94284525041792, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @5, i32 0, i32 0), i64 94284525042208, i32 616, i32 60), !dbg !688
  %163 = fadd double %157, %162, !dbg !688
  call void @fAddHandler(double %157, double %162, double %163, i64 94284525038776, i64 94284525042208, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @5, i32 0, i32 0), i64 94284525042624, i32 616, i32 39), !dbg !689
  %164 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !689
  %165 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %164, i32 0, i32 1, !dbg !690
  store double %163, double* %165, align 8, !dbg !691
  %166 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %19, i32 0, i32 0, !dbg !692
  %167 = load double, double* %166, align 8, !dbg !692
  %168 = fsub double -0.000000e+00, %167, !dbg !693
  call void @fSubHandler(double -0.000000e+00, double %167, double %168, i64 0, i64 94284525044712, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @5, i32 0, i32 0), i64 94284525046384, i32 617, i32 20), !dbg !694
  %169 = load double, double* %27, align 8, !dbg !694
  %170 = fmul double 5.000000e-01, %169, !dbg !695
  call void @fMulHandler(double 5.000000e-01, double %169, double %170, i64 0, i64 94284525046776, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @5, i32 0, i32 0), i64 94284525047216, i32 617, i32 45), !dbg !696
  %171 = fsub double %168, %170, !dbg !696
  call void @fSubHandler(double %168, double %170, double %171, i64 94284525046384, i64 94284525047216, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @5, i32 0, i32 0), i64 94284525047600, i32 617, i32 39), !dbg !697
  %172 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !697
  %173 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %172, i32 0, i32 0, !dbg !698
  store double %171, double* %173, align 8, !dbg !699
  %174 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %19, i32 0, i32 1, !dbg !700
  %175 = load double, double* %174, align 8, !dbg !700
  %176 = load double, double* %27, align 8, !dbg !701
  %177 = call double @fabs(double %176) #1, !dbg !702
  %178 = fmul double 0x3CC0000000000000, %177, !dbg !703
  call void @fMulHandler(double 0x3CC0000000000000, double %177, double %178, i64 0, i64 94284525051808, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @5, i32 0, i32 0), i64 94284525052288, i32 618, i32 60), !dbg !704
  %179 = fadd double %175, %178, !dbg !704
  call void @fAddHandler(double %175, double %178, double %179, i64 94284525049688, i64 94284525052288, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @5, i32 0, i32 0), i64 94284525052704, i32 618, i32 39), !dbg !705
  %180 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !705
  %181 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %180, i32 0, i32 1, !dbg !706
  store double %179, double* %181, align 8, !dbg !707
  %182 = load i32, i32* %20, align 4, !dbg !708
  store i32 %182, i32* %5, align 4, !dbg !709
  br label %183, !dbg !709

; <label>:183:                                    ; preds = %108, %102, %70, %60
  %184 = load i32, i32* %5, align 4, !dbg !710
  ret i32 %184, !dbg !710
}

; Function Attrs: nounwind
declare double @log(double) #3

; Function Attrs: nounwind
declare double @atan2(double, double) #3

declare i32 @gsl_sf_clausen_e(double, %struct.gsl_sf_result_struct*) #4

; Function Attrs: nounwind uwtable
define internal i32 @dilogc_unitdisk(double, double, %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct*) #0 !dbg !67 {
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca %struct.gsl_sf_result_struct*, align 8
  %9 = alloca %struct.gsl_sf_result_struct*, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca %struct.gsl_sf_result_struct, align 8
  %15 = alloca %struct.gsl_sf_result_struct, align 8
  %16 = alloca i32, align 4
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  store double %0, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !711, metadata !79), !dbg !712
  store double %1, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !713, metadata !79), !dbg !714
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %8, metadata !715, metadata !79), !dbg !716
  store %struct.gsl_sf_result_struct* %3, %struct.gsl_sf_result_struct** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %9, metadata !717, metadata !79), !dbg !718
  call void @llvm.dbg.declare(metadata double* %10, metadata !719, metadata !79), !dbg !720
  %21 = load double, double* %6, align 8, !dbg !721
  %22 = load double, double* %7, align 8, !dbg !722
  %23 = call double @hypot(double %21, double %22) #5, !dbg !723
  store double %23, double* %10, align 8, !dbg !720
  %24 = load double, double* %6, align 8, !dbg !724
  %25 = fcmp ogt double %24, 7.320000e-01, !dbg !726
  %26 = call i1 @fCmpInstHandler(double %24, double 7.320000e-01, i1 %25, i32 2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @7, i32 0, i32 0), i64 94284525069968, i32 493, i32 8), !dbg !727
  br i1 %26, label %27, label %114, !dbg !727

; <label>:27:                                     ; preds = %4
  call void @llvm.dbg.declare(metadata double* %11, metadata !728, metadata !79), !dbg !730
  %28 = load double, double* %6, align 8, !dbg !731
  %29 = fsub double 1.000000e+00, %28, !dbg !732
  call void @fSubHandler(double 1.000000e+00, double %28, double %29, i64 0, i64 94284525072152, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @7, i32 0, i32 0), i64 94284525072560, i32 499, i32 30), !dbg !730
  store double %29, double* %11, align 8, !dbg !730
  call void @llvm.dbg.declare(metadata double* %12, metadata !733, metadata !79), !dbg !734
  %30 = load double, double* %7, align 8, !dbg !735
  %31 = fsub double -0.000000e+00, %30, !dbg !736
  call void @fSubHandler(double -0.000000e+00, double %30, double %31, i64 0, i64 94284525075720, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @7, i32 0, i32 0), i64 94284525076096, i32 500, i32 30), !dbg !734
  store double %31, double* %12, align 8, !dbg !734
  call void @llvm.dbg.declare(metadata double* %13, metadata !737, metadata !79), !dbg !738
  %32 = load double, double* %11, align 8, !dbg !739
  %33 = load double, double* %12, align 8, !dbg !740
  %34 = call double @hypot(double %32, double %33) #5, !dbg !741
  store double %34, double* %13, align 8, !dbg !738
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %14, metadata !742, metadata !79), !dbg !743
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %15, metadata !744, metadata !79), !dbg !745
  call void @llvm.dbg.declare(metadata i32* %16, metadata !746, metadata !79), !dbg !747
  %35 = load double, double* %13, align 8, !dbg !748
  %36 = load double, double* %11, align 8, !dbg !749
  %37 = load double, double* %12, align 8, !dbg !750
  %38 = call i32 @dilogc_fundamental(double %35, double %36, double %37, %struct.gsl_sf_result_struct* %14, %struct.gsl_sf_result_struct* %15), !dbg !751
  store i32 %38, i32* %16, align 4, !dbg !747
  call void @llvm.dbg.declare(metadata double* %17, metadata !752, metadata !79), !dbg !753
  %39 = load double, double* %10, align 8, !dbg !754
  %40 = call double @log(double %39) #5, !dbg !755
  call void @callOneArgHandler(i32 12, double %39, double %40, i64 94284525090488, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @7, i32 0, i32 0), i64 94284525090928, i32 510, i32 28), !dbg !753
  store double %40, double* %17, align 8, !dbg !753
  call void @llvm.dbg.declare(metadata double* %18, metadata !756, metadata !79), !dbg !757
  %41 = load double, double* %13, align 8, !dbg !758
  %42 = call double @log(double %41) #5, !dbg !759
  call void @callOneArgHandler(i32 12, double %41, double %42, i64 94284525094184, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @7, i32 0, i32 0), i64 94284525094624, i32 511, i32 28), !dbg !757
  store double %42, double* %18, align 8, !dbg !757
  call void @llvm.dbg.declare(metadata double* %19, metadata !760, metadata !79), !dbg !761
  %43 = load double, double* %7, align 8, !dbg !762
  %44 = load double, double* %6, align 8, !dbg !763
  %45 = call double @atan2(double %43, double %44) #5, !dbg !764
  call void @callTwoArgsHandler(i32 7, double %43, double %44, double %45, i64 94284525097880, i64 94284525098232, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @7, i32 0, i32 0), i64 94284525098760, i32 512, i32 28), !dbg !761
  store double %45, double* %19, align 8, !dbg !761
  call void @llvm.dbg.declare(metadata double* %20, metadata !765, metadata !79), !dbg !766
  %46 = load double, double* %12, align 8, !dbg !767
  %47 = load double, double* %11, align 8, !dbg !768
  %48 = call double @atan2(double %46, double %47) #5, !dbg !769
  call void @callTwoArgsHandler(i32 7, double %46, double %47, double %48, i64 94284525101976, i64 94284525102328, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @7, i32 0, i32 0), i64 94284525102856, i32 513, i32 28), !dbg !766
  store double %48, double* %20, align 8, !dbg !766
  %49 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 0, !dbg !770
  %50 = load double, double* %49, align 8, !dbg !770
  %51 = fsub double -0.000000e+00, %50, !dbg !771
  call void @fSubHandler(double -0.000000e+00, double %50, double %51, i64 0, i64 94284525105400, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @7, i32 0, i32 0), i64 94284525107072, i32 514, i32 21), !dbg !772
  %52 = fadd double %51, 0x3FFA51A6625307D3, !dbg !772
  call void @fAddHandler(double %51, double 0x3FFA51A6625307D3, double %52, i64 94284525107072, i64 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @7, i32 0, i32 0), i64 94284525107488, i32 514, i32 40), !dbg !773
  %53 = load double, double* %17, align 8, !dbg !773
  %54 = load double, double* %18, align 8, !dbg !774
  %55 = fmul double %53, %54, !dbg !775
  call void @fMulHandler(double %53, double %54, double %55, i64 94284525107880, i64 94284525108264, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @7, i32 0, i32 0), i64 94284525108672, i32 514, i32 53), !dbg !776
  %56 = fsub double %52, %55, !dbg !776
  call void @fSubHandler(double %52, double %55, double %56, i64 94284525107488, i64 94284525108672, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @7, i32 0, i32 0), i64 94284525109088, i32 514, i32 48), !dbg !777
  %57 = load double, double* %19, align 8, !dbg !777
  %58 = load double, double* %20, align 8, !dbg !778
  %59 = fmul double %57, %58, !dbg !779
  call void @fMulHandler(double %57, double %58, double %59, i64 94284525109480, i64 94284525109864, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @7, i32 0, i32 0), i64 94284525110272, i32 514, i32 66), !dbg !780
  %60 = fadd double %56, %59, !dbg !780
  call void @fAddHandler(double %56, double %59, double %60, i64 94284525109088, i64 94284525110272, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @7, i32 0, i32 0), i64 94284525110688, i32 514, i32 60), !dbg !781
  %61 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !781
  %62 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %61, i32 0, i32 0, !dbg !782
  store double %60, double* %62, align 8, !dbg !783
  %63 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 1, !dbg !784
  %64 = load double, double* %63, align 8, !dbg !784
  %65 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !785
  %66 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %65, i32 0, i32 1, !dbg !786
  store double %64, double* %66, align 8, !dbg !787
  %67 = load double, double* %17, align 8, !dbg !788
  %68 = load double, double* %18, align 8, !dbg !789
  %69 = fmul double %67, %68, !dbg !790
  call void @fMulHandler(double %67, double %68, double %69, i64 94284525115672, i64 94284525116056, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @7, i32 0, i32 0), i64 94284525116464, i32 516, i32 63), !dbg !791
  %70 = call double @fabs(double %69) #1, !dbg !791
  %71 = fadd double 0x3FFA51A6625307D3, %70, !dbg !792
  call void @fAddHandler(double 0x3FFA51A6625307D3, double %70, double %71, i64 0, i64 94284525116944, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @7, i32 0, i32 0), i64 94284525117424, i32 516, i32 53), !dbg !793
  %72 = load double, double* %19, align 8, !dbg !793
  %73 = load double, double* %20, align 8, !dbg !794
  %74 = fmul double %72, %73, !dbg !795
  call void @fMulHandler(double %72, double %73, double %74, i64 94284525117816, i64 94284525118200, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @7, i32 0, i32 0), i64 94284525118608, i32 516, i32 82), !dbg !796
  %75 = call double @fabs(double %74) #1, !dbg !796
  %76 = fadd double %71, %75, !dbg !798
  call void @fAddHandler(double %71, double %75, double %76, i64 94284525117424, i64 94284525119088, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @7, i32 0, i32 0), i64 94284525119568, i32 516, i32 71), !dbg !799
  %77 = fmul double 0x3CC0000000000000, %76, !dbg !799
  call void @fMulHandler(double 0x3CC0000000000000, double %76, double %77, i64 0, i64 94284525119568, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @7, i32 0, i32 0), i64 94284525119984, i32 516, i32 44), !dbg !800
  %78 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !800
  %79 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %78, i32 0, i32 1, !dbg !801
  %80 = load double, double* %79, align 8, !dbg !802
  %81 = fadd double %80, %77, !dbg !802
  call void @fAddHandler(double %80, double %77, double %81, i64 94284525121208, i64 94284525119984, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @7, i32 0, i32 0), i64 94284525121616, i32 516, i32 18), !dbg !802
  store double %81, double* %79, align 8, !dbg !802
  %82 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %15, i32 0, i32 0, !dbg !803
  %83 = load double, double* %82, align 8, !dbg !803
  %84 = fsub double -0.000000e+00, %83, !dbg !804
  call void @fSubHandler(double -0.000000e+00, double %83, double %84, i64 0, i64 94284525123848, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @7, i32 0, i32 0), i64 94284525125520, i32 517, i32 21), !dbg !805
  %85 = load double, double* %19, align 8, !dbg !805
  %86 = load double, double* %18, align 8, !dbg !806
  %87 = fmul double %85, %86, !dbg !807
  call void @fMulHandler(double %85, double %86, double %87, i64 94284525125912, i64 94284525126296, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @7, i32 0, i32 0), i64 94284525126704, i32 517, i32 46), !dbg !808
  %88 = fsub double %84, %87, !dbg !808
  call void @fSubHandler(double %84, double %87, double %88, i64 94284525125520, i64 94284525126704, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @7, i32 0, i32 0), i64 94284525127120, i32 517, i32 40), !dbg !809
  %89 = load double, double* %20, align 8, !dbg !809
  %90 = load double, double* %17, align 8, !dbg !810
  %91 = fmul double %89, %90, !dbg !811
  call void @fMulHandler(double %89, double %90, double %91, i64 94284525127512, i64 94284525127896, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @7, i32 0, i32 0), i64 94284525128304, i32 517, i32 61), !dbg !812
  %92 = fsub double %88, %91, !dbg !812
  call void @fSubHandler(double %88, double %91, double %92, i64 94284525127120, i64 94284525128304, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @7, i32 0, i32 0), i64 94284525128720, i32 517, i32 53), !dbg !813
  %93 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !813
  %94 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %93, i32 0, i32 0, !dbg !814
  store double %92, double* %94, align 8, !dbg !815
  %95 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %15, i32 0, i32 1, !dbg !816
  %96 = load double, double* %95, align 8, !dbg !816
  %97 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !817
  %98 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %97, i32 0, i32 1, !dbg !818
  store double %96, double* %98, align 8, !dbg !819
  %99 = load double, double* %19, align 8, !dbg !820
  %100 = load double, double* %18, align 8, !dbg !821
  %101 = fmul double %99, %100, !dbg !822
  call void @fMulHandler(double %99, double %100, double %101, i64 94284525133704, i64 94284525134088, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @7, i32 0, i32 0), i64 94284525134496, i32 519, i32 56), !dbg !823
  %102 = call double @fabs(double %101) #1, !dbg !823
  %103 = load double, double* %20, align 8, !dbg !824
  %104 = load double, double* %17, align 8, !dbg !825
  %105 = fmul double %103, %104, !dbg !826
  call void @fMulHandler(double %103, double %104, double %105, i64 94284525135432, i64 94284525135816, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @7, i32 0, i32 0), i64 94284525136224, i32 519, i32 77), !dbg !827
  %106 = call double @fabs(double %105) #1, !dbg !827
  %107 = fadd double %102, %106, !dbg !828
  call void @fAddHandler(double %102, double %106, double %107, i64 94284525134976, i64 94284525136704, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @7, i32 0, i32 0), i64 94284525137184, i32 519, i32 64), !dbg !829
  %108 = fmul double 0x3CC0000000000000, %107, !dbg !829
  call void @fMulHandler(double 0x3CC0000000000000, double %107, double %108, i64 0, i64 94284525137184, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @7, i32 0, i32 0), i64 94284525137600, i32 519, i32 44), !dbg !830
  %109 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !830
  %110 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %109, i32 0, i32 1, !dbg !831
  %111 = load double, double* %110, align 8, !dbg !832
  %112 = fadd double %111, %108, !dbg !832
  call void @fAddHandler(double %111, double %108, double %112, i64 94284525138824, i64 94284525137600, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @7, i32 0, i32 0), i64 94284525139232, i32 519, i32 18), !dbg !832
  store double %112, double* %110, align 8, !dbg !832
  %113 = load i32, i32* %16, align 4, !dbg !833
  store i32 %113, i32* %5, align 4, !dbg !834
  br label %121, !dbg !834

; <label>:114:                                    ; preds = %4
  %115 = load double, double* %10, align 8, !dbg !835
  %116 = load double, double* %6, align 8, !dbg !837
  %117 = load double, double* %7, align 8, !dbg !838
  %118 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !839
  %119 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !840
  %120 = call i32 @dilogc_fundamental(double %115, double %116, double %117, %struct.gsl_sf_result_struct* %118, %struct.gsl_sf_result_struct* %119), !dbg !841
  store i32 %120, i32* %5, align 4, !dbg !842
  br label %121, !dbg !842

; <label>:121:                                    ; preds = %114, %27
  %122 = load i32, i32* %5, align 4, !dbg !843
  ret i32 %122, !dbg !843
}

; Function Attrs: nounwind
declare double @sqrt(double) #3

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_complex_dilog_e(double, double, %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct*) #0 !dbg !844 {
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca %struct.gsl_sf_result_struct*, align 8
  %8 = alloca %struct.gsl_sf_result_struct*, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  store double %0, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !845, metadata !79), !dbg !846
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !847, metadata !79), !dbg !848
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %7, metadata !849, metadata !79), !dbg !850
  store %struct.gsl_sf_result_struct* %3, %struct.gsl_sf_result_struct** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %8, metadata !851, metadata !79), !dbg !852
  call void @llvm.dbg.declare(metadata double* %9, metadata !853, metadata !79), !dbg !854
  %13 = load double, double* %6, align 8, !dbg !855
  %14 = call double @cos(double %13) #5, !dbg !856
  call void @callOneArgHandler(i32 2, double %13, double %14, i64 94284524784488, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @9, i32 0, i32 0), i64 94284525158928, i32 632, i32 28), !dbg !854
  store double %14, double* %9, align 8, !dbg !854
  call void @llvm.dbg.declare(metadata double* %10, metadata !857, metadata !79), !dbg !858
  %15 = load double, double* %6, align 8, !dbg !859
  %16 = call double @sin(double %15) #5, !dbg !860
  call void @callOneArgHandler(i32 1, double %15, double %16, i64 94284525162264, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @9, i32 0, i32 0), i64 94284525162976, i32 633, i32 28), !dbg !858
  store double %16, double* %10, align 8, !dbg !858
  call void @llvm.dbg.declare(metadata double* %11, metadata !861, metadata !79), !dbg !862
  %17 = load double, double* %5, align 8, !dbg !863
  %18 = load double, double* %9, align 8, !dbg !864
  %19 = fmul double %17, %18, !dbg !865
  call void @fMulHandler(double %17, double %18, double %19, i64 94284525166168, i64 94284525166520, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @9, i32 0, i32 0), i64 94284525166928, i32 634, i32 22), !dbg !862
  store double %19, double* %11, align 8, !dbg !862
  call void @llvm.dbg.declare(metadata double* %12, metadata !866, metadata !79), !dbg !867
  %20 = load double, double* %5, align 8, !dbg !868
  %21 = load double, double* %10, align 8, !dbg !869
  %22 = fmul double %20, %21, !dbg !870
  call void @fMulHandler(double %20, double %21, double %22, i64 94284525170120, i64 94284525170472, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @9, i32 0, i32 0), i64 94284525170880, i32 635, i32 22), !dbg !867
  store double %22, double* %12, align 8, !dbg !867
  %23 = load double, double* %11, align 8, !dbg !871
  %24 = load double, double* %12, align 8, !dbg !872
  %25 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !873
  %26 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !874
  %27 = call i32 @gsl_sf_complex_dilog_xy_e(double %23, double %24, %struct.gsl_sf_result_struct* %25, %struct.gsl_sf_result_struct* %26), !dbg !875
  ret i32 %27, !dbg !876
}

; Function Attrs: nounwind
declare double @cos(double) #3

; Function Attrs: nounwind
declare double @sin(double) #3

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_complex_spence_xy_e(double, double, %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct*) #0 !dbg !877 {
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca %struct.gsl_sf_result_struct*, align 8
  %8 = alloca %struct.gsl_sf_result_struct*, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  store double %0, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !878, metadata !79), !dbg !879
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !880, metadata !79), !dbg !881
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %7, metadata !882, metadata !79), !dbg !883
  store %struct.gsl_sf_result_struct* %3, %struct.gsl_sf_result_struct** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %8, metadata !884, metadata !79), !dbg !885
  call void @llvm.dbg.declare(metadata double* %9, metadata !886, metadata !79), !dbg !887
  %11 = load double, double* %5, align 8, !dbg !888
  %12 = fsub double 1.000000e+00, %11, !dbg !889
  call void @fSubHandler(double 1.000000e+00, double %11, double %12, i64 0, i64 94284525162856, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 94284525183936, i32 648, i32 28), !dbg !887
  store double %12, double* %9, align 8, !dbg !887
  call void @llvm.dbg.declare(metadata double* %10, metadata !890, metadata !79), !dbg !891
  %13 = load double, double* %6, align 8, !dbg !892
  %14 = fsub double -0.000000e+00, %13, !dbg !893
  call void @fSubHandler(double -0.000000e+00, double %13, double %14, i64 0, i64 94284525158808, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 94284525187376, i32 649, i32 28), !dbg !891
  store double %14, double* %10, align 8, !dbg !891
  %15 = load double, double* %9, align 8, !dbg !894
  %16 = load double, double* %10, align 8, !dbg !895
  %17 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !896
  %18 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !897
  %19 = call i32 @gsl_sf_complex_dilog_xy_e(double %15, double %16, %struct.gsl_sf_result_struct* %17, %struct.gsl_sf_result_struct* %18), !dbg !898
  ret i32 %19, !dbg !899
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_dilog(double) #0 !dbg !900 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct, align 8
  %5 = alloca i32, align 4
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !903, metadata !79), !dbg !904
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %4, metadata !905, metadata !79), !dbg !906
  call void @llvm.dbg.declare(metadata i32* %5, metadata !907, metadata !79), !dbg !906
  %6 = load double, double* %3, align 8, !dbg !906
  %7 = call i32 @gsl_sf_dilog_e(double %6, %struct.gsl_sf_result_struct* %4), !dbg !906
  store i32 %7, i32* %5, align 4, !dbg !906
  %8 = load i32, i32* %5, align 4, !dbg !908
  %9 = icmp ne i32 %8, 0, !dbg !908
  %10 = sext i32 %8 to i64, !dbg !906
  %11 = call i1 @iCmpInstHandler(i64 %10, i64 0, i1 %9, i32 33, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @13, i32 0, i32 0), i64 94284525198848, i32 661, i32 3), !dbg !906
  br i1 %11, label %12, label %18, !dbg !906

; <label>:12:                                     ; preds = %1
  br label %13, !dbg !910, !llvm.loop !913

; <label>:13:                                     ; preds = %12
  %14 = load i32, i32* %5, align 4, !dbg !915
  call void @gsl_error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i32 661, i32 %14), !dbg !915
  %15 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !915
  %16 = load double, double* %15, align 8, !dbg !915
  store double %16, double* %2, align 8, !dbg !915
  br label %21, !dbg !915
                                                  ; No predecessors!
  br label %18, !dbg !918

; <label>:18:                                     ; preds = %17, %1
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !920
  %20 = load double, double* %19, align 8, !dbg !920
  store double %20, double* %2, align 8, !dbg !920
  br label %21, !dbg !920

; <label>:21:                                     ; preds = %18, %13
  %22 = load double, double* %2, align 8, !dbg !922
  ret double %22, !dbg !922
}

declare void @gsl_error(i8*, i8*, i32, i32) #4

; Function Attrs: nounwind uwtable
define internal i32 @dilog_series_2(double, %struct.gsl_sf_result_struct*) #0 !dbg !46 {
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !923, metadata !79), !dbg !924
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %4, metadata !925, metadata !79), !dbg !926
  call void @llvm.dbg.declare(metadata i32* %5, metadata !927, metadata !79), !dbg !928
  %9 = load double, double* %3, align 8, !dbg !929
  %10 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %4, align 8, !dbg !930
  %11 = call i32 @series_2(double %9, %struct.gsl_sf_result_struct* %10), !dbg !931
  store i32 %11, i32* %5, align 4, !dbg !928
  call void @llvm.dbg.declare(metadata double* %6, metadata !932, metadata !79), !dbg !933
  %12 = load double, double* %3, align 8, !dbg !934
  %13 = fcmp ogt double %12, 1.000000e-02, !dbg !936
  %14 = call i1 @fCmpInstHandler(double %12, double 1.000000e-02, i1 %13, i32 2, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @15, i32 0, i32 0), i64 94284524978624, i32 112, i32 8), !dbg !937
  br i1 %14, label %15, label %24, !dbg !937

; <label>:15:                                     ; preds = %2
  %16 = load double, double* %3, align 8, !dbg !938
  %17 = fsub double 1.000000e+00, %16, !dbg !939
  call void @fSubHandler(double 1.000000e+00, double %16, double %17, i64 0, i64 94284524979864, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @15, i32 0, i32 0), i64 94284524980240, i32 113, i32 14), !dbg !940
  %18 = load double, double* %3, align 8, !dbg !940
  %19 = fsub double 1.000000e+00, %18, !dbg !941
  call void @fSubHandler(double 1.000000e+00, double %18, double %19, i64 0, i64 94284524980600, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @15, i32 0, i32 0), i64 94284524981040, i32 113, i32 28), !dbg !942
  %20 = call double @log(double %19) #5, !dbg !942
  call void @callOneArgHandler(i32 12, double %19, double %20, i64 94284524981040, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @15, i32 0, i32 0), i64 94284525198704, i32 113, i32 21), !dbg !943
  %21 = fmul double %17, %20, !dbg !943
  call void @fMulHandler(double %17, double %20, double %21, i64 94284524980240, i64 94284525198704, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @15, i32 0, i32 0), i64 94284524981824, i32 113, i32 19), !dbg !944
  %22 = load double, double* %3, align 8, !dbg !944
  %23 = fdiv double %21, %22, !dbg !945
  call void @fDivHandler(double %21, double %22, double %23, i64 94284524981824, i64 94284524982216, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @15, i32 0, i32 0), i64 94284524982624, i32 113, i32 32), !dbg !946
  store double %23, double* %6, align 8, !dbg !946
  br label %51, !dbg !947

; <label>:24:                                     ; preds = %2
  call void @llvm.dbg.declare(metadata double* %7, metadata !948, metadata !79), !dbg !950
  %25 = load double, double* %3, align 8, !dbg !951
  %26 = load double, double* %3, align 8, !dbg !952
  %27 = fmul double %26, 1.250000e-01, !dbg !953
  call void @fMulHandler(double %26, double 1.250000e-01, double %27, i64 94284525236504, i64 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @15, i32 0, i32 0), i64 94284525236944, i32 122, i32 38), !dbg !954
  %28 = fadd double 0x3FC2492492492492, %27, !dbg !954
  call void @fAddHandler(double 0x3FC2492492492492, double %27, double %28, i64 0, i64 94284525236944, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @15, i32 0, i32 0), i64 94284525237328, i32 122, i32 35), !dbg !955
  %29 = fmul double %25, %28, !dbg !955
  call void @fMulHandler(double %25, double %28, double %29, i64 94284525236152, i64 94284525237328, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @15, i32 0, i32 0), i64 94284525237744, i32 122, i32 30), !dbg !956
  %30 = fadd double 0x3FC5555555555555, %29, !dbg !956
  call void @fAddHandler(double 0x3FC5555555555555, double %29, double %30, i64 0, i64 94284525237744, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @15, i32 0, i32 0), i64 94284525238160, i32 122, i32 27), !dbg !950
  store double %30, double* %7, align 8, !dbg !950
  call void @llvm.dbg.declare(metadata double* %8, metadata !957, metadata !79), !dbg !958
  %31 = load double, double* %3, align 8, !dbg !959
  %32 = load double, double* %3, align 8, !dbg !960
  %33 = load double, double* %3, align 8, !dbg !961
  %34 = load double, double* %7, align 8, !dbg !962
  %35 = fmul double %33, %34, !dbg !963
  call void @fMulHandler(double %33, double %34, double %35, i64 94284525242088, i64 94284525243000, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @15, i32 0, i32 0), i64 94284525243408, i32 123, i32 49), !dbg !964
  %36 = fadd double 2.000000e-01, %35, !dbg !964
  call void @fAddHandler(double 2.000000e-01, double %35, double %36, i64 0, i64 94284525243408, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @15, i32 0, i32 0), i64 94284525243856, i32 123, i32 45), !dbg !965
  %37 = fmul double %32, %36, !dbg !965
  call void @fMulHandler(double %32, double %36, double %37, i64 94284525241704, i64 94284525243856, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @15, i32 0, i32 0), i64 94284525244240, i32 123, i32 40), !dbg !966
  %38 = fadd double 2.500000e-01, %37, !dbg !966
  call void @fAddHandler(double 2.500000e-01, double %37, double %38, i64 0, i64 94284525244240, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @15, i32 0, i32 0), i64 94284525244688, i32 123, i32 36), !dbg !967
  %39 = fmul double %31, %38, !dbg !967
  call void @fMulHandler(double %31, double %38, double %39, i64 94284525241352, i64 94284525244688, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @15, i32 0, i32 0), i64 94284525245072, i32 123, i32 31), !dbg !968
  %40 = fadd double 0x3FD5555555555555, %39, !dbg !968
  call void @fAddHandler(double 0x3FD5555555555555, double %39, double %40, i64 0, i64 94284525245072, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @15, i32 0, i32 0), i64 94284525245488, i32 123, i32 27), !dbg !958
  store double %40, double* %8, align 8, !dbg !958
  %41 = load double, double* %3, align 8, !dbg !969
  %42 = fsub double %41, 1.000000e+00, !dbg !970
  call void @fSubHandler(double %41, double 1.000000e+00, double %42, i64 94284525247560, i64 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @15, i32 0, i32 0), i64 94284525248000, i32 124, i32 12), !dbg !971
  %43 = load double, double* %3, align 8, !dbg !971
  %44 = load double, double* %3, align 8, !dbg !972
  %45 = load double, double* %8, align 8, !dbg !973
  %46 = fmul double %44, %45, !dbg !974
  call void @fMulHandler(double %44, double %45, double %46, i64 94284525248744, i64 94284525249128, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @15, i32 0, i32 0), i64 94284525249536, i32 124, i32 38), !dbg !975
  %47 = fadd double 5.000000e-01, %46, !dbg !975
  call void @fAddHandler(double 5.000000e-01, double %46, double %47, i64 0, i64 94284525249536, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @15, i32 0, i32 0), i64 94284525249984, i32 124, i32 35), !dbg !976
  %48 = fmul double %43, %47, !dbg !976
  call void @fMulHandler(double %43, double %47, double %48, i64 94284525248360, i64 94284525249984, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @15, i32 0, i32 0), i64 94284525250368, i32 124, i32 29), !dbg !977
  %49 = fadd double 1.000000e+00, %48, !dbg !977
  call void @fAddHandler(double 1.000000e+00, double %48, double %49, i64 0, i64 94284525250368, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @15, i32 0, i32 0), i64 94284525250816, i32 124, i32 26), !dbg !978
  %50 = fmul double %42, %49, !dbg !978
  call void @fMulHandler(double %42, double %49, double %50, i64 94284525248000, i64 94284525250816, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @15, i32 0, i32 0), i64 94284525251200, i32 124, i32 19), !dbg !979
  store double %50, double* %6, align 8, !dbg !979
  br label %51

; <label>:51:                                     ; preds = %24, %15
  %52 = load double, double* %6, align 8, !dbg !980
  %53 = fadd double 1.000000e+00, %52, !dbg !981
  call void @fAddHandler(double 1.000000e+00, double %52, double %53, i64 0, i64 94284525252104, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @15, i32 0, i32 0), i64 94284525252480, i32 126, i32 22), !dbg !982
  %54 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %4, align 8, !dbg !982
  %55 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %54, i32 0, i32 0, !dbg !983
  %56 = load double, double* %55, align 8, !dbg !984
  %57 = fadd double %56, %53, !dbg !984
  call void @fAddHandler(double %56, double %53, double %57, i64 94284525253672, i64 94284525252480, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @15, i32 0, i32 0), i64 94284525254080, i32 126, i32 15), !dbg !984
  store double %57, double* %55, align 8, !dbg !984
  %58 = load double, double* %6, align 8, !dbg !985
  %59 = call double @fabs(double %58) #1, !dbg !986
  %60 = fmul double 0x3CC0000000000000, %59, !dbg !987
  call void @fMulHandler(double 0x3CC0000000000000, double %59, double %60, i64 0, i64 94284525256336, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @15, i32 0, i32 0), i64 94284525256816, i32 127, i32 40), !dbg !988
  %61 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %4, align 8, !dbg !988
  %62 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %61, i32 0, i32 1, !dbg !989
  %63 = load double, double* %62, align 8, !dbg !990
  %64 = fadd double %63, %60, !dbg !990
  call void @fAddHandler(double %63, double %60, double %64, i64 94284525258040, i64 94284525256816, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @15, i32 0, i32 0), i64 94284525258448, i32 127, i32 15), !dbg !990
  store double %64, double* %62, align 8, !dbg !990
  %65 = load i32, i32* %5, align 4, !dbg !991
  ret i32 %65, !dbg !992
}

; Function Attrs: nounwind uwtable
define internal i32 @dilog_series_1(double, %struct.gsl_sf_result_struct*) #0 !dbg !993 {
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca %struct.gsl_sf_result_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca i32, align 4
  %10 = alloca double, align 8
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !994, metadata !79), !dbg !995
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %5, metadata !996, metadata !79), !dbg !997
  call void @llvm.dbg.declare(metadata i32* %6, metadata !998, metadata !79), !dbg !999
  store i32 1000, i32* %6, align 4, !dbg !999
  call void @llvm.dbg.declare(metadata double* %7, metadata !1000, metadata !79), !dbg !1001
  %11 = load double, double* %4, align 8, !dbg !1002
  store double %11, double* %7, align 8, !dbg !1001
  call void @llvm.dbg.declare(metadata double* %8, metadata !1003, metadata !79), !dbg !1004
  %12 = load double, double* %4, align 8, !dbg !1005
  store double %12, double* %8, align 8, !dbg !1004
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1006, metadata !79), !dbg !1007
  store i32 2, i32* %9, align 4, !dbg !1008
  br label %13, !dbg !1010

; <label>:13:                                     ; preds = %44, %2
  %14 = load i32, i32* %9, align 4, !dbg !1011
  %15 = icmp slt i32 %14, 1000, !dbg !1014
  %16 = sext i32 %14 to i64, !dbg !1015
  %17 = call i1 @iCmpInstHandler(i64 %16, i64 1000, i1 %15, i32 40, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @17, i32 0, i32 0), i64 94284525276560, i32 44, i32 13), !dbg !1015
  br i1 %17, label %18, label %47, !dbg !1015

; <label>:18:                                     ; preds = %13
  call void @llvm.dbg.declare(metadata double* %10, metadata !1016, metadata !79), !dbg !1018
  %19 = load i32, i32* %9, align 4, !dbg !1019
  %20 = sitofp i32 %19 to double, !dbg !1019
  %21 = fsub double %20, 1.000000e+00, !dbg !1020
  call void @fSubHandler(double %20, double 1.000000e+00, double %21, i64 94284525278936, i64 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @17, i32 0, i32 0), i64 94284525280640, i32 45, i32 25), !dbg !1021
  %22 = load i32, i32* %9, align 4, !dbg !1021
  %23 = sitofp i32 %22 to double, !dbg !1021
  %24 = fdiv double %21, %23, !dbg !1022
  call void @fDivHandler(double %21, double %23, double %24, i64 94284525280640, i64 94284525281384, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @17, i32 0, i32 0), i64 94284525283056, i32 45, i32 30), !dbg !1018
  store double %24, double* %10, align 8, !dbg !1018
  %25 = load double, double* %4, align 8, !dbg !1023
  %26 = load double, double* %8, align 8, !dbg !1024
  %27 = fmul double %26, %25, !dbg !1024
  call void @fMulHandler(double %26, double %25, double %27, i64 94284525285512, i64 94284525285128, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @17, i32 0, i32 0), i64 94284525285920, i32 46, i32 10), !dbg !1024
  store double %27, double* %8, align 8, !dbg !1024
  %28 = load double, double* %10, align 8, !dbg !1025
  %29 = load double, double* %10, align 8, !dbg !1026
  %30 = fmul double %28, %29, !dbg !1027
  call void @fMulHandler(double %28, double %29, double %30, i64 94284525287704, i64 94284525288088, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @17, i32 0, i32 0), i64 94284525288496, i32 47, i32 15), !dbg !1028
  %31 = load double, double* %8, align 8, !dbg !1028
  %32 = fmul double %31, %30, !dbg !1028
  call void @fMulHandler(double %31, double %30, double %32, i64 94284525288888, i64 94284525288496, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @17, i32 0, i32 0), i64 94284525289296, i32 47, i32 10), !dbg !1028
  store double %32, double* %8, align 8, !dbg !1028
  %33 = load double, double* %8, align 8, !dbg !1029
  %34 = load double, double* %7, align 8, !dbg !1030
  %35 = fadd double %34, %33, !dbg !1030
  call void @fAddHandler(double %34, double %33, double %35, i64 94284525291464, i64 94284525291080, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @17, i32 0, i32 0), i64 94284525291872, i32 48, i32 9), !dbg !1030
  store double %35, double* %7, align 8, !dbg !1030
  %36 = load double, double* %8, align 8, !dbg !1031
  %37 = load double, double* %7, align 8, !dbg !1033
  %38 = fdiv double %36, %37, !dbg !1034
  call void @fDivHandler(double %36, double %37, double %38, i64 94284525293656, i64 94284525294040, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @17, i32 0, i32 0), i64 94284525294448, i32 49, i32 17), !dbg !1035
  %39 = call double @fabs(double %38) #1, !dbg !1035
  %40 = fcmp olt double %39, 0x3CB0000000000000, !dbg !1036
  %41 = call i1 @fCmpInstHandler(double %39, double 0x3CB0000000000000, i1 %40, i32 4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @17, i32 0, i32 0), i64 94284525295408, i32 49, i32 23), !dbg !1037
  br i1 %41, label %42, label %43, !dbg !1037

; <label>:42:                                     ; preds = %18
  br label %47, !dbg !1038

; <label>:43:                                     ; preds = %18
  br label %44, !dbg !1040

; <label>:44:                                     ; preds = %43
  %45 = load i32, i32* %9, align 4, !dbg !1041
  %46 = add nsw i32 %45, 1, !dbg !1041
  store i32 %46, i32* %9, align 4, !dbg !1041
  br label %13, !dbg !1043, !llvm.loop !1044

; <label>:47:                                     ; preds = %42, %13
  %48 = load double, double* %7, align 8, !dbg !1046
  %49 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1047
  %50 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %49, i32 0, i32 0, !dbg !1048
  store double %48, double* %50, align 8, !dbg !1049
  %51 = load double, double* %8, align 8, !dbg !1050
  %52 = call double @fabs(double %51) #1, !dbg !1051
  %53 = fmul double 2.000000e+00, %52, !dbg !1052
  call void @fMulHandler(double 2.000000e+00, double %52, double %53, i64 0, i64 94284525302144, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @17, i32 0, i32 0), i64 94284525302656, i32 53, i32 22), !dbg !1053
  %54 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1053
  %55 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %54, i32 0, i32 1, !dbg !1054
  store double %53, double* %55, align 8, !dbg !1055
  %56 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1056
  %57 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %56, i32 0, i32 0, !dbg !1057
  %58 = load double, double* %57, align 8, !dbg !1057
  %59 = call double @fabs(double %58) #1, !dbg !1058
  %60 = fmul double 0x3CC0000000000000, %59, !dbg !1059
  call void @fMulHandler(double 0x3CC0000000000000, double %59, double %60, i64 0, i64 94284525306832, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @17, i32 0, i32 0), i64 94284525307312, i32 54, i32 40), !dbg !1060
  %61 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1060
  %62 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %61, i32 0, i32 1, !dbg !1061
  %63 = load double, double* %62, align 8, !dbg !1062
  %64 = fadd double %63, %60, !dbg !1062
  call void @fAddHandler(double %63, double %60, double %64, i64 94284525308536, i64 94284525307312, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @17, i32 0, i32 0), i64 94284525308944, i32 54, i32 15), !dbg !1062
  store double %64, double* %62, align 8, !dbg !1062
  %65 = load i32, i32* %9, align 4, !dbg !1063
  %66 = icmp eq i32 %65, 1000, !dbg !1065
  %67 = sext i32 %65 to i64, !dbg !1066
  %68 = call i1 @iCmpInstHandler(i64 %67, i64 1000, i1 %66, i32 32, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @17, i32 0, i32 0), i64 94284525311136, i32 56, i32 8), !dbg !1066
  br i1 %68, label %69, label %72, !dbg !1066

; <label>:69:                                     ; preds = %47
  br label %70, !dbg !1067, !llvm.loop !1068

; <label>:70:                                     ; preds = %69
  call void @gsl_error(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i32 57, i32 11), !dbg !1069
  store i32 11, i32* %3, align 4, !dbg !1069
  br label %73, !dbg !1069
                                                  ; No predecessors!
  br label %73, !dbg !1072

; <label>:72:                                     ; preds = %47
  store i32 0, i32* %3, align 4, !dbg !1074
  br label %73, !dbg !1074

; <label>:73:                                     ; preds = %72, %71, %70
  %74 = load i32, i32* %3, align 4, !dbg !1075
  ret i32 %74, !dbg !1075
}

; Function Attrs: nounwind uwtable
define internal i32 @series_2(double, %struct.gsl_sf_result_struct*) #0 !dbg !64 {
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct*, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !1076, metadata !79), !dbg !1077
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %4, metadata !1078, metadata !79), !dbg !1079
  call void @llvm.dbg.declare(metadata double* %5, metadata !1080, metadata !79), !dbg !1081
  %10 = load double, double* %3, align 8, !dbg !1082
  store double %10, double* %5, align 8, !dbg !1081
  call void @llvm.dbg.declare(metadata double* %6, metadata !1083, metadata !79), !dbg !1084
  %11 = load double, double* %3, align 8, !dbg !1085
  %12 = fmul double 5.000000e-01, %11, !dbg !1086
  call void @fMulHandler(double 5.000000e-01, double %11, double %12, i64 0, i64 94284525328264, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @19, i32 0, i32 0), i64 94284525328672, i32 76, i32 20), !dbg !1084
  store double %12, double* %6, align 8, !dbg !1084
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1087, metadata !79), !dbg !1088
  store i32 2, i32* %7, align 4, !dbg !1089
  br label %13, !dbg !1091

; <label>:13:                                     ; preds = %35, %2
  %14 = load i32, i32* %7, align 4, !dbg !1092
  %15 = icmp slt i32 %14, 10, !dbg !1095
  %16 = sext i32 %14 to i64, !dbg !1096
  %17 = call i1 @iCmpInstHandler(i64 %16, i64 10, i1 %15, i32 40, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @19, i32 0, i32 0), i64 94284525333152, i32 78, i32 13), !dbg !1096
  br i1 %17, label %18, label %38, !dbg !1096

; <label>:18:                                     ; preds = %13
  call void @llvm.dbg.declare(metadata double* %8, metadata !1097, metadata !79), !dbg !1099
  %19 = load double, double* %3, align 8, !dbg !1100
  %20 = load double, double* %5, align 8, !dbg !1101
  %21 = fmul double %20, %19, !dbg !1101
  call void @fMulHandler(double %20, double %19, double %21, i64 94284525335528, i64 94284525335176, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @19, i32 0, i32 0), i64 94284525335936, i32 81, i32 8), !dbg !1101
  store double %21, double* %5, align 8, !dbg !1101
  %22 = load double, double* %5, align 8, !dbg !1102
  %23 = load i32, i32* %7, align 4, !dbg !1103
  %24 = load i32, i32* %7, align 4, !dbg !1104
  %25 = mul nsw i32 %23, %24, !dbg !1105
  %26 = sitofp i32 %25 to double, !dbg !1103
  %27 = load i32, i32* %7, align 4, !dbg !1106
  %28 = sitofp i32 %27 to double, !dbg !1106
  %29 = fadd double %28, 1.000000e+00, !dbg !1107
  call void @fAddHandler(double %28, double 1.000000e+00, double %29, i64 94284525341320, i64 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @19, i32 0, i32 0), i64 94284525343024, i32 82, i32 20), !dbg !1108
  %30 = fmul double %26, %29, !dbg !1108
  call void @fMulHandler(double %26, double %29, double %30, i64 94284525339288, i64 94284525343024, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @19, i32 0, i32 0), i64 94284525343408, i32 82, i32 17), !dbg !1109
  %31 = fdiv double %22, %30, !dbg !1109
  call void @fDivHandler(double %22, double %30, double %31, i64 94284525337720, i64 94284525343408, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @19, i32 0, i32 0), i64 94284525343824, i32 82, i32 12), !dbg !1110
  store double %31, double* %8, align 8, !dbg !1110
  %32 = load double, double* %8, align 8, !dbg !1111
  %33 = load double, double* %6, align 8, !dbg !1112
  %34 = fadd double %33, %32, !dbg !1112
  call void @fAddHandler(double %33, double %32, double %34, i64 94284525345016, i64 94284525344632, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @19, i32 0, i32 0), i64 94284525345424, i32 83, i32 9), !dbg !1112
  store double %34, double* %6, align 8, !dbg !1112
  br label %35, !dbg !1113

; <label>:35:                                     ; preds = %18
  %36 = load i32, i32* %7, align 4, !dbg !1114
  %37 = add nsw i32 %36, 1, !dbg !1114
  store i32 %37, i32* %7, align 4, !dbg !1114
  br label %13, !dbg !1116, !llvm.loop !1117

; <label>:38:                                     ; preds = %13
  br label %39, !dbg !1119

; <label>:39:                                     ; preds = %69, %38
  %40 = load i32, i32* %7, align 4, !dbg !1120
  %41 = icmp slt i32 %40, 100, !dbg !1124
  %42 = sext i32 %40 to i64, !dbg !1125
  %43 = call i1 @iCmpInstHandler(i64 %42, i64 100, i1 %41, i32 40, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @19, i32 0, i32 0), i64 94284525351344, i32 85, i32 10), !dbg !1125
  br i1 %43, label %44, label %72, !dbg !1125

; <label>:44:                                     ; preds = %39
  call void @llvm.dbg.declare(metadata double* %9, metadata !1126, metadata !79), !dbg !1128
  %45 = load double, double* %3, align 8, !dbg !1129
  %46 = load double, double* %5, align 8, !dbg !1130
  %47 = fmul double %46, %45, !dbg !1130
  call void @fMulHandler(double %46, double %45, double %47, i64 94284525353864, i64 94284525353512, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @19, i32 0, i32 0), i64 94284525354272, i32 88, i32 8), !dbg !1130
  store double %47, double* %5, align 8, !dbg !1130
  %48 = load double, double* %5, align 8, !dbg !1131
  %49 = load i32, i32* %7, align 4, !dbg !1132
  %50 = load i32, i32* %7, align 4, !dbg !1133
  %51 = mul nsw i32 %49, %50, !dbg !1134
  %52 = sitofp i32 %51 to double, !dbg !1132
  %53 = load i32, i32* %7, align 4, !dbg !1135
  %54 = sitofp i32 %53 to double, !dbg !1135
  %55 = fadd double %54, 1.000000e+00, !dbg !1136
  call void @fAddHandler(double %54, double 1.000000e+00, double %55, i64 94284525359656, i64 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @19, i32 0, i32 0), i64 94284525361360, i32 89, i32 20), !dbg !1137
  %56 = fmul double %52, %55, !dbg !1137
  call void @fMulHandler(double %52, double %55, double %56, i64 94284525357624, i64 94284525361360, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @19, i32 0, i32 0), i64 94284525361744, i32 89, i32 17), !dbg !1138
  %57 = fdiv double %48, %56, !dbg !1138
  call void @fDivHandler(double %48, double %56, double %57, i64 94284525356056, i64 94284525361744, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @19, i32 0, i32 0), i64 94284525362160, i32 89, i32 12), !dbg !1139
  store double %57, double* %9, align 8, !dbg !1139
  %58 = load double, double* %9, align 8, !dbg !1140
  %59 = load double, double* %6, align 8, !dbg !1141
  %60 = fadd double %59, %58, !dbg !1141
  call void @fAddHandler(double %59, double %58, double %60, i64 94284525363352, i64 94284525362968, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @19, i32 0, i32 0), i64 94284525363760, i32 90, i32 9), !dbg !1141
  store double %60, double* %6, align 8, !dbg !1141
  %61 = load double, double* %9, align 8, !dbg !1142
  %62 = load double, double* %6, align 8, !dbg !1144
  %63 = fdiv double %61, %62, !dbg !1145
  call void @fDivHandler(double %61, double %62, double %63, i64 94284525365544, i64 94284525365928, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @19, i32 0, i32 0), i64 94284525366336, i32 91, i32 15), !dbg !1146
  %64 = call double @fabs(double %63) #1, !dbg !1146
  %65 = fcmp olt double %64, 0x3CA0000000000000, !dbg !1147
  %66 = call i1 @fCmpInstHandler(double %64, double 0x3CA0000000000000, i1 %65, i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @19, i32 0, i32 0), i64 94284525367360, i32 91, i32 21), !dbg !1148
  br i1 %66, label %67, label %68, !dbg !1148

; <label>:67:                                     ; preds = %44
  br label %72, !dbg !1149

; <label>:68:                                     ; preds = %44
  br label %69, !dbg !1151

; <label>:69:                                     ; preds = %68
  %70 = load i32, i32* %7, align 4, !dbg !1152
  %71 = add nsw i32 %70, 1, !dbg !1152
  store i32 %71, i32* %7, align 4, !dbg !1152
  br label %39, !dbg !1154, !llvm.loop !1155

; <label>:72:                                     ; preds = %67, %39
  %73 = load double, double* %6, align 8, !dbg !1156
  %74 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %4, align 8, !dbg !1157
  %75 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %74, i32 0, i32 0, !dbg !1158
  store double %73, double* %75, align 8, !dbg !1159
  %76 = load double, double* %6, align 8, !dbg !1160
  %77 = call double @fabs(double %76) #1, !dbg !1161
  %78 = fmul double 0x3D29000000000000, %77, !dbg !1162
  call void @fMulHandler(double 0x3D29000000000000, double %77, double %78, i64 0, i64 94284525374096, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @19, i32 0, i32 0), i64 94284525374640, i32 95, i32 46), !dbg !1163
  %79 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %4, align 8, !dbg !1163
  %80 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %79, i32 0, i32 1, !dbg !1164
  store double %78, double* %80, align 8, !dbg !1165
  ret i32 0, !dbg !1166
}

; Function Attrs: nounwind
declare double @hypot(double, double) #3

; Function Attrs: nounwind uwtable
define internal i32 @dilogc_fundamental(double, double, double, %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct*) #0 !dbg !1167 {
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca %struct.gsl_sf_result_struct*, align 8
  %11 = alloca %struct.gsl_sf_result_struct*, align 8
  store double %0, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !1170, metadata !79), !dbg !1171
  store double %1, double* %8, align 8
  call void @llvm.dbg.declare(metadata double* %8, metadata !1172, metadata !79), !dbg !1173
  store double %2, double* %9, align 8
  call void @llvm.dbg.declare(metadata double* %9, metadata !1174, metadata !79), !dbg !1175
  store %struct.gsl_sf_result_struct* %3, %struct.gsl_sf_result_struct** %10, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %10, metadata !1176, metadata !79), !dbg !1177
  store %struct.gsl_sf_result_struct* %4, %struct.gsl_sf_result_struct** %11, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %11, metadata !1178, metadata !79), !dbg !1179
  %12 = load double, double* %7, align 8, !dbg !1180
  %13 = fcmp ogt double %12, 9.800000e-01, !dbg !1182
  %14 = call i1 @fCmpInstHandler(double %12, double 9.800000e-01, i1 %13, i32 2, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @21, i32 0, i32 0), i64 94284525384976, i32 470, i32 8), !dbg !1183
  br i1 %14, label %15, label %22, !dbg !1183

; <label>:15:                                     ; preds = %5
  %16 = load double, double* %7, align 8, !dbg !1184
  %17 = load double, double* %8, align 8, !dbg !1185
  %18 = load double, double* %9, align 8, !dbg !1186
  %19 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %10, align 8, !dbg !1187
  %20 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !1188
  %21 = call i32 @dilogc_series_3(double %16, double %17, double %18, %struct.gsl_sf_result_struct* %19, %struct.gsl_sf_result_struct* %20), !dbg !1189
  store i32 %21, i32* %6, align 4, !dbg !1190
  br label %40, !dbg !1190

; <label>:22:                                     ; preds = %5
  %23 = load double, double* %7, align 8, !dbg !1191
  %24 = fcmp ogt double %23, 2.500000e-01, !dbg !1193
  %25 = call i1 @fCmpInstHandler(double %23, double 2.500000e-01, i1 %24, i32 2, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @21, i32 0, i32 0), i64 94284525391280, i32 472, i32 13), !dbg !1194
  br i1 %25, label %26, label %33, !dbg !1194

; <label>:26:                                     ; preds = %22
  %27 = load double, double* %7, align 8, !dbg !1195
  %28 = load double, double* %8, align 8, !dbg !1196
  %29 = load double, double* %9, align 8, !dbg !1197
  %30 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %10, align 8, !dbg !1198
  %31 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !1199
  %32 = call i32 @dilogc_series_2(double %27, double %28, double %29, %struct.gsl_sf_result_struct* %30, %struct.gsl_sf_result_struct* %31), !dbg !1200
  store i32 %32, i32* %6, align 4, !dbg !1201
  br label %40, !dbg !1201

; <label>:33:                                     ; preds = %22
  %34 = load double, double* %7, align 8, !dbg !1202
  %35 = load double, double* %8, align 8, !dbg !1203
  %36 = load double, double* %9, align 8, !dbg !1204
  %37 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %10, align 8, !dbg !1205
  %38 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !1206
  %39 = call i32 @dilogc_series_1(double %34, double %35, double %36, %struct.gsl_sf_result_struct* %37, %struct.gsl_sf_result_struct* %38), !dbg !1207
  store i32 %39, i32* %6, align 4, !dbg !1208
  br label %40, !dbg !1208

; <label>:40:                                     ; preds = %33, %26, %15
  %41 = load i32, i32* %6, align 4, !dbg !1209
  ret i32 %41, !dbg !1209
}

; Function Attrs: nounwind uwtable
define internal i32 @dilogc_series_3(double, double, double, %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct*) #0 !dbg !1210 {
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca %struct.gsl_sf_result_struct*, align 8
  %10 = alloca %struct.gsl_sf_result_struct*, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca [7 x double], align 16
  %18 = alloca [7 x double], align 16
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  %22 = alloca double, align 8
  %23 = alloca %struct.gsl_sf_result_struct, align 8
  %24 = alloca i32, align 4
  %25 = alloca double, align 8
  store double %0, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !1213, metadata !79), !dbg !1214
  store double %1, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !1215, metadata !79), !dbg !1216
  store double %2, double* %8, align 8
  call void @llvm.dbg.declare(metadata double* %8, metadata !1217, metadata !79), !dbg !1218
  store %struct.gsl_sf_result_struct* %3, %struct.gsl_sf_result_struct** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %9, metadata !1219, metadata !79), !dbg !1220
  store %struct.gsl_sf_result_struct* %4, %struct.gsl_sf_result_struct** %10, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %10, metadata !1221, metadata !79), !dbg !1222
  call void @llvm.dbg.declare(metadata double* %11, metadata !1223, metadata !79), !dbg !1224
  %26 = load double, double* %8, align 8, !dbg !1225
  %27 = load double, double* %7, align 8, !dbg !1226
  %28 = call double @atan2(double %26, double %27) #5, !dbg !1227
  call void @callTwoArgsHandler(i32 7, double %26, double %27, double %28, i64 94284525388136, i64 94284525414568, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @23, i32 0, i32 0), i64 94284525415096, i32 397, i32 24), !dbg !1224
  store double %28, double* %11, align 8, !dbg !1224
  call void @llvm.dbg.declare(metadata double* %12, metadata !1228, metadata !79), !dbg !1229
  %29 = load double, double* %7, align 8, !dbg !1230
  %30 = load double, double* %6, align 8, !dbg !1231
  %31 = fdiv double %29, %30, !dbg !1232
  call void @fDivHandler(double %29, double %30, double %31, i64 94284525418312, i64 94284525418664, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @23, i32 0, i32 0), i64 94284525419072, i32 398, i32 29), !dbg !1229
  store double %31, double* %12, align 8, !dbg !1229
  call void @llvm.dbg.declare(metadata double* %13, metadata !1233, metadata !79), !dbg !1234
  %32 = load double, double* %8, align 8, !dbg !1235
  %33 = load double, double* %6, align 8, !dbg !1236
  %34 = fdiv double %32, %33, !dbg !1237
  call void @fDivHandler(double %32, double %33, double %34, i64 94284525422264, i64 94284525422616, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @23, i32 0, i32 0), i64 94284525423024, i32 399, i32 29), !dbg !1234
  store double %34, double* %13, align 8, !dbg !1234
  call void @llvm.dbg.declare(metadata double* %14, metadata !1238, metadata !79), !dbg !1239
  %35 = load double, double* %6, align 8, !dbg !1240
  %36 = call double @log(double %35) #5, !dbg !1241
  call void @callOneArgHandler(i32 12, double %35, double %36, i64 94284525426216, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @23, i32 0, i32 0), i64 94284525426656, i32 400, i32 20), !dbg !1239
  store double %36, double* %14, align 8, !dbg !1239
  call void @llvm.dbg.declare(metadata double* %15, metadata !1242, metadata !79), !dbg !1243
  %37 = load double, double* %12, align 8, !dbg !1244
  %38 = fsub double 1.000000e+00, %37, !dbg !1245
  call void @fSubHandler(double 1.000000e+00, double %37, double %38, i64 0, i64 94284525429912, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @23, i32 0, i32 0), i64 94284525430320, i32 401, i32 26), !dbg !1243
  store double %38, double* %15, align 8, !dbg !1243
  call void @llvm.dbg.declare(metadata double* %16, metadata !1246, metadata !79), !dbg !1247
  %39 = load double, double* %15, align 8, !dbg !1248
  %40 = load double, double* %15, align 8, !dbg !1249
  %41 = fmul double %39, %40, !dbg !1250
  call void @fMulHandler(double %39, double %40, double %41, i64 94284525433480, i64 94284525433832, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @23, i32 0, i32 0), i64 94284525434240, i32 402, i32 26), !dbg !1247
  store double %41, double* %16, align 8, !dbg !1247
  call void @llvm.dbg.declare(metadata [7 x double]* %17, metadata !1251, metadata !79), !dbg !1255
  call void @llvm.dbg.declare(metadata [7 x double]* %18, metadata !1256, metadata !79), !dbg !1257
  call void @llvm.dbg.declare(metadata double* %19, metadata !1258, metadata !79), !dbg !1259
  call void @llvm.dbg.declare(metadata double* %20, metadata !1260, metadata !79), !dbg !1261
  call void @llvm.dbg.declare(metadata double* %21, metadata !1262, metadata !79), !dbg !1263
  call void @llvm.dbg.declare(metadata double* %22, metadata !1264, metadata !79), !dbg !1265
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %23, metadata !1266, metadata !79), !dbg !1267
  call void @llvm.dbg.declare(metadata i32* %24, metadata !1268, metadata !79), !dbg !1269
  %42 = load double, double* %11, align 8, !dbg !1270
  %43 = load double, double* %11, align 8, !dbg !1271
  %44 = fmul double %42, %43, !dbg !1272
  call void @fMulHandler(double %42, double %43, double %44, i64 94284525445048, i64 94284525445400, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @23, i32 0, i32 0), i64 94284525445808, i32 410, i32 40), !dbg !1273
  %45 = load double, double* %11, align 8, !dbg !1273
  %46 = call double @fabs(double %45) #1, !dbg !1274
  %47 = fmul double 0x401921FB54442D18, %46, !dbg !1275
  call void @fMulHandler(double 0x401921FB54442D18, double %46, double %47, i64 0, i64 94284525446672, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @23, i32 0, i32 0), i64 94284525447216, i32 410, i32 57), !dbg !1276
  %48 = fsub double %44, %47, !dbg !1276
  call void @fSubHandler(double %44, double %47, double %48, i64 94284525445808, i64 94284525447216, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @23, i32 0, i32 0), i64 94284525447632, i32 410, i32 47), !dbg !1277
  %49 = fmul double 2.500000e-01, %48, !dbg !1277
  call void @fMulHandler(double 2.500000e-01, double %48, double %49, i64 0, i64 94284525447632, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @23, i32 0, i32 0), i64 94284525448080, i32 410, i32 33), !dbg !1278
  %50 = fadd double 0x3FFA51A6625307D3, %49, !dbg !1278
  call void @fAddHandler(double 0x3FFA51A6625307D3, double %49, double %50, i64 0, i64 94284525448080, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @23, i32 0, i32 0), i64 94284525448464, i32 410, i32 27), !dbg !1279
  %51 = getelementptr inbounds [7 x double], [7 x double]* %17, i64 0, i64 0, !dbg !1279
  store double %50, double* %51, align 16, !dbg !1280
  %52 = load double, double* %11, align 8, !dbg !1281
  %53 = call i32 @gsl_sf_clausen_e(double %52, %struct.gsl_sf_result_struct* %23), !dbg !1282
  %54 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %23, i32 0, i32 0, !dbg !1283
  %55 = load double, double* %54, align 8, !dbg !1283
  %56 = getelementptr inbounds [7 x double], [7 x double]* %18, i64 0, i64 0, !dbg !1284
  store double %55, double* %56, align 16, !dbg !1285
  %57 = load double, double* %15, align 8, !dbg !1286
  %58 = fmul double 2.000000e+00, %57, !dbg !1287
  call void @fMulHandler(double 2.000000e+00, double %57, double %58, i64 0, i64 94284525453656, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @23, i32 0, i32 0), i64 94284525454096, i32 414, i32 25), !dbg !1288
  %59 = call double @log(double %58) #5, !dbg !1288
  call void @callOneArgHandler(i32 12, double %58, double %59, i64 94284525454096, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @23, i32 0, i32 0), i64 94284525454544, i32 414, i32 18), !dbg !1289
  %60 = fmul double -5.000000e-01, %59, !dbg !1289
  call void @fMulHandler(double -5.000000e-01, double %59, double %60, i64 0, i64 94284525454544, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @23, i32 0, i32 0), i64 94284525455120, i32 414, i32 17), !dbg !1290
  %61 = getelementptr inbounds [7 x double], [7 x double]* %17, i64 0, i64 1, !dbg !1290
  store double %60, double* %61, align 8, !dbg !1291
  %62 = load double, double* %13, align 8, !dbg !1292
  %63 = fsub double -0.000000e+00, %62, !dbg !1293
  call void @fSubHandler(double -0.000000e+00, double %62, double %63, i64 0, i64 94284525456408, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @23, i32 0, i32 0), i64 94284525456816, i32 415, i32 20), !dbg !1294
  %64 = load double, double* %15, align 8, !dbg !1294
  %65 = call double @atan2(double %63, double %64) #5, !dbg !1295
  call void @callTwoArgsHandler(i32 7, double %63, double %64, double %65, i64 94284525456816, i64 94284525457208, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @23, i32 0, i32 0), i64 94284525457736, i32 415, i32 14), !dbg !1296
  %66 = fsub double -0.000000e+00, %65, !dbg !1296
  call void @fSubHandler(double -0.000000e+00, double %65, double %66, i64 0, i64 94284525457736, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @23, i32 0, i32 0), i64 94284525458208, i32 415, i32 13), !dbg !1297
  %67 = getelementptr inbounds [7 x double], [7 x double]* %18, i64 0, i64 1, !dbg !1297
  store double %66, double* %67, align 8, !dbg !1298
  %68 = getelementptr inbounds [7 x double], [7 x double]* %17, i64 0, i64 2, !dbg !1299
  store double -5.000000e-01, double* %68, align 16, !dbg !1300
  %69 = load double, double* %13, align 8, !dbg !1301
  %70 = fmul double 5.000000e-01, %69, !dbg !1302
  call void @fMulHandler(double 5.000000e-01, double %69, double %70, i64 0, i64 94284525460360, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @23, i32 0, i32 0), i64 94284525460800, i32 418, i32 17), !dbg !1303
  %71 = load double, double* %15, align 8, !dbg !1303
  %72 = fdiv double %70, %71, !dbg !1304
  call void @fDivHandler(double %70, double %71, double %72, i64 94284525460800, i64 94284525461160, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @23, i32 0, i32 0), i64 94284525461568, i32 418, i32 28), !dbg !1305
  %73 = getelementptr inbounds [7 x double], [7 x double]* %18, i64 0, i64 2, !dbg !1305
  store double %72, double* %73, align 16, !dbg !1306
  %74 = load double, double* %15, align 8, !dbg !1307
  %75 = fdiv double -5.000000e-01, %74, !dbg !1308
  call void @fDivHandler(double -5.000000e-01, double %74, double %75, i64 0, i64 94284525462824, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @23, i32 0, i32 0), i64 94284525463264, i32 420, i32 17), !dbg !1309
  %76 = getelementptr inbounds [7 x double], [7 x double]* %17, i64 0, i64 3, !dbg !1309
  store double %75, double* %76, align 8, !dbg !1310
  %77 = getelementptr inbounds [7 x double], [7 x double]* %18, i64 0, i64 3, !dbg !1311
  store double 0.000000e+00, double* %77, align 8, !dbg !1312
  %78 = getelementptr inbounds [7 x double], [7 x double]* %17, i64 0, i64 4, !dbg !1313
  store double 0.000000e+00, double* %78, align 16, !dbg !1314
  %79 = load double, double* %13, align 8, !dbg !1315
  %80 = fmul double -5.000000e-01, %79, !dbg !1316
  call void @fMulHandler(double -5.000000e-01, double %79, double %80, i64 0, i64 94284525466344, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @23, i32 0, i32 0), i64 94284525466784, i32 424, i32 17), !dbg !1317
  %81 = load double, double* %16, align 8, !dbg !1317
  %82 = fdiv double %80, %81, !dbg !1318
  call void @fDivHandler(double %80, double %81, double %82, i64 94284525466784, i64 94284525467144, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @23, i32 0, i32 0), i64 94284525467552, i32 424, i32 27), !dbg !1319
  %83 = getelementptr inbounds [7 x double], [7 x double]* %18, i64 0, i64 4, !dbg !1319
  store double %82, double* %83, align 16, !dbg !1320
  %84 = load double, double* %12, align 8, !dbg !1321
  %85 = fadd double 2.000000e+00, %84, !dbg !1322
  call void @fAddHandler(double 2.000000e+00, double %84, double %85, i64 0, i64 94284525468808, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @23, i32 0, i32 0), i64 94284525469248, i32 426, i32 24), !dbg !1323
  %86 = fmul double 5.000000e-01, %85, !dbg !1323
  call void @fMulHandler(double 5.000000e-01, double %85, double %86, i64 0, i64 94284525469248, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @23, i32 0, i32 0), i64 94284525469664, i32 426, i32 17), !dbg !1324
  %87 = load double, double* %16, align 8, !dbg !1324
  %88 = fdiv double %86, %87, !dbg !1325
  call void @fDivHandler(double %86, double %87, double %88, i64 94284525469664, i64 94284525470024, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @23, i32 0, i32 0), i64 94284525470432, i32 426, i32 36), !dbg !1326
  %89 = getelementptr inbounds [7 x double], [7 x double]* %17, i64 0, i64 5, !dbg !1326
  store double %88, double* %89, align 8, !dbg !1327
  %90 = getelementptr inbounds [7 x double], [7 x double]* %18, i64 0, i64 5, !dbg !1328
  store double 0.000000e+00, double* %90, align 8, !dbg !1329
  %91 = getelementptr inbounds [7 x double], [7 x double]* %17, i64 0, i64 6, !dbg !1330
  store double 0.000000e+00, double* %91, align 16, !dbg !1331
  %92 = load double, double* %13, align 8, !dbg !1332
  %93 = fmul double 5.000000e-01, %92, !dbg !1333
  call void @fMulHandler(double 5.000000e-01, double %92, double %93, i64 0, i64 94284525473544, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @23, i32 0, i32 0), i64 94284525473984, i32 430, i32 17), !dbg !1334
  %94 = load double, double* %16, align 8, !dbg !1334
  %95 = load double, double* %16, align 8, !dbg !1335
  %96 = fmul double %94, %95, !dbg !1336
  call void @fMulHandler(double %94, double %95, double %96, i64 94284525474344, i64 94284525474728, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @23, i32 0, i32 0), i64 94284525475136, i32 430, i32 34), !dbg !1337
  %97 = load double, double* %15, align 8, !dbg !1337
  %98 = fmul double %96, %97, !dbg !1338
  call void @fMulHandler(double %96, double %97, double %98, i64 94284525475136, i64 94284525475528, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @23, i32 0, i32 0), i64 94284525475936, i32 430, i32 39), !dbg !1339
  %99 = fdiv double %93, %98, !dbg !1339
  call void @fDivHandler(double %93, double %98, double %99, i64 94284525473984, i64 94284525475936, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @23, i32 0, i32 0), i64 94284525476352, i32 430, i32 28), !dbg !1340
  %100 = load double, double* %15, align 8, !dbg !1340
  %101 = fmul double 8.000000e+00, %100, !dbg !1341
  call void @fMulHandler(double 8.000000e+00, double %100, double %101, i64 0, i64 94284525476744, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @23, i32 0, i32 0), i64 94284525477184, i32 430, i32 51), !dbg !1342
  %102 = load double, double* %13, align 8, !dbg !1342
  %103 = load double, double* %13, align 8, !dbg !1343
  %104 = fmul double %102, %103, !dbg !1344
  call void @fMulHandler(double %102, double %103, double %104, i64 94284525477544, i64 94284525477928, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @23, i32 0, i32 0), i64 94284525478336, i32 430, i32 67), !dbg !1345
  %105 = load double, double* %12, align 8, !dbg !1345
  %106 = fadd double 3.000000e+00, %105, !dbg !1346
  call void @fAddHandler(double 3.000000e+00, double %105, double %106, i64 0, i64 94284525478728, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @23, i32 0, i32 0), i64 94284525479168, i32 430, i32 83), !dbg !1347
  %107 = fmul double %104, %106, !dbg !1347
  call void @fMulHandler(double %104, double %106, double %107, i64 94284525478336, i64 94284525479168, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @23, i32 0, i32 0), i64 94284525479552, i32 430, i32 77), !dbg !1348
  %108 = fsub double %101, %107, !dbg !1348
  call void @fSubHandler(double %101, double %107, double %108, i64 94284525477184, i64 94284525479552, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @23, i32 0, i32 0), i64 94284525479968, i32 430, i32 56), !dbg !1349
  %109 = fmul double %99, %108, !dbg !1349
  call void @fMulHandler(double %99, double %108, double %109, i64 94284525476352, i64 94284525479968, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @23, i32 0, i32 0), i64 94284525480384, i32 430, i32 45), !dbg !1350
  %110 = getelementptr inbounds [7 x double], [7 x double]* %18, i64 0, i64 6, !dbg !1350
  store double %109, double* %110, align 16, !dbg !1351
  %111 = getelementptr inbounds [7 x double], [7 x double]* %17, i64 0, i64 0, !dbg !1352
  %112 = load double, double* %111, align 16, !dbg !1352
  store double %112, double* %21, align 8, !dbg !1353
  %113 = getelementptr inbounds [7 x double], [7 x double]* %18, i64 0, i64 0, !dbg !1354
  %114 = load double, double* %113, align 16, !dbg !1354
  store double %114, double* %22, align 8, !dbg !1355
  store double 1.000000e+00, double* %19, align 8, !dbg !1356
  store double 1.000000e+00, double* %20, align 8, !dbg !1357
  store i32 1, i32* %24, align 4, !dbg !1358
  br label %115, !dbg !1360

; <label>:115:                                    ; preds = %147, %5
  %116 = load i32, i32* %24, align 4, !dbg !1361
  %117 = icmp sle i32 %116, 6, !dbg !1364
  %118 = sext i32 %116 to i64, !dbg !1365
  %119 = call i1 @iCmpInstHandler(i64 %118, i64 6, i1 %117, i32 41, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @23, i32 0, i32 0), i64 94284525488848, i32 436, i32 13), !dbg !1365
  br i1 %119, label %120, label %150, !dbg !1365

; <label>:120:                                    ; preds = %115
  call void @llvm.dbg.declare(metadata double* %25, metadata !1366, metadata !79), !dbg !1368
  %121 = load double, double* %14, align 8, !dbg !1369
  %122 = load double, double* %19, align 8, !dbg !1370
  %123 = fmul double %122, %121, !dbg !1370
  call void @fMulHandler(double %122, double %121, double %123, i64 94284525491368, i64 94284525491016, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @23, i32 0, i32 0), i64 94284525491776, i32 438, i32 8), !dbg !1370
  store double %123, double* %19, align 8, !dbg !1370
  %124 = load i32, i32* %24, align 4, !dbg !1371
  %125 = sitofp i32 %124 to double, !dbg !1371
  %126 = load double, double* %20, align 8, !dbg !1372
  %127 = fmul double %126, %125, !dbg !1372
  call void @fMulHandler(double %126, double %125, double %127, i64 94284525495592, i64 94284525493944, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @23, i32 0, i32 0), i64 94284525496000, i32 439, i32 11), !dbg !1372
  store double %127, double* %20, align 8, !dbg !1372
  %128 = load double, double* %19, align 8, !dbg !1373
  %129 = load double, double* %20, align 8, !dbg !1374
  %130 = fdiv double %128, %129, !dbg !1375
  call void @fDivHandler(double %128, double %129, double %130, i64 94284525497784, i64 94284525498168, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @23, i32 0, i32 0), i64 94284525498576, i32 440, i32 11), !dbg !1376
  store double %130, double* %25, align 8, !dbg !1376
  %131 = load double, double* %25, align 8, !dbg !1377
  %132 = load i32, i32* %24, align 4, !dbg !1378
  %133 = sext i32 %132 to i64, !dbg !1379
  %134 = getelementptr inbounds [7 x double], [7 x double]* %17, i64 0, i64 %133, !dbg !1379
  %135 = load double, double* %134, align 8, !dbg !1379
  %136 = fmul double %131, %135, !dbg !1380
  call void @fMulHandler(double %131, double %135, double %136, i64 94284525501448, i64 94284525504312, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @23, i32 0, i32 0), i64 94284525504432, i32 441, i32 17), !dbg !1381
  %137 = load double, double* %21, align 8, !dbg !1381
  %138 = fadd double %137, %136, !dbg !1381
  call void @fAddHandler(double %137, double %136, double %138, i64 94284525504824, i64 94284525504432, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @23, i32 0, i32 0), i64 94284525505232, i32 441, i32 12), !dbg !1381
  store double %138, double* %21, align 8, !dbg !1381
  %139 = load double, double* %25, align 8, !dbg !1382
  %140 = load i32, i32* %24, align 4, !dbg !1383
  %141 = sext i32 %140 to i64, !dbg !1384
  %142 = getelementptr inbounds [7 x double], [7 x double]* %18, i64 0, i64 %141, !dbg !1384
  %143 = load double, double* %142, align 8, !dbg !1384
  %144 = fmul double %139, %143, !dbg !1385
  call void @fMulHandler(double %139, double %143, double %144, i64 94284525507016, i64 94284525509880, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @23, i32 0, i32 0), i64 94284525510000, i32 442, i32 17), !dbg !1386
  %145 = load double, double* %22, align 8, !dbg !1386
  %146 = fadd double %145, %144, !dbg !1386
  call void @fAddHandler(double %145, double %144, double %146, i64 94284525510392, i64 94284525510000, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @23, i32 0, i32 0), i64 94284525510800, i32 442, i32 12), !dbg !1386
  store double %146, double* %22, align 8, !dbg !1386
  br label %147, !dbg !1387

; <label>:147:                                    ; preds = %120
  %148 = load i32, i32* %24, align 4, !dbg !1388
  %149 = add nsw i32 %148, 1, !dbg !1388
  store i32 %149, i32* %24, align 4, !dbg !1388
  br label %115, !dbg !1390, !llvm.loop !1391

; <label>:150:                                    ; preds = %115
  %151 = load double, double* %21, align 8, !dbg !1393
  %152 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1394
  %153 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %152, i32 0, i32 0, !dbg !1395
  store double %151, double* %153, align 8, !dbg !1396
  %154 = load double, double* %21, align 8, !dbg !1397
  %155 = call double @fabs(double %154) #1, !dbg !1398
  %156 = fmul double 0x3CE8000000000000, %155, !dbg !1399
  call void @fMulHandler(double 0x3CE8000000000000, double %155, double %156, i64 0, i64 94284525517952, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @23, i32 0, i32 0), i64 94284525518496, i32 446, i32 50), !dbg !1400
  %157 = load double, double* %19, align 8, !dbg !1400
  %158 = load double, double* %20, align 8, !dbg !1401
  %159 = fdiv double %157, %158, !dbg !1402
  call void @fDivHandler(double %157, double %158, double %159, i64 94284525518888, i64 94284525519272, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @23, i32 0, i32 0), i64 94284525519680, i32 446, i32 74), !dbg !1403
  %160 = call double @fabs(double %159) #1, !dbg !1403
  %161 = fadd double %156, %160, !dbg !1405
  call void @fAddHandler(double %156, double %160, double %161, i64 94284525518496, i64 94284525520160, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @23, i32 0, i32 0), i64 94284525520640, i32 446, i32 65), !dbg !1406
  %162 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1406
  %163 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %162, i32 0, i32 1, !dbg !1407
  store double %161, double* %163, align 8, !dbg !1408
  %164 = load double, double* %22, align 8, !dbg !1409
  %165 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %10, align 8, !dbg !1410
  %166 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %165, i32 0, i32 0, !dbg !1411
  store double %164, double* %166, align 8, !dbg !1412
  %167 = load double, double* %22, align 8, !dbg !1413
  %168 = call double @fabs(double %167) #1, !dbg !1414
  %169 = fmul double 0x3CE8000000000000, %168, !dbg !1415
  call void @fMulHandler(double 0x3CE8000000000000, double %168, double %169, i64 0, i64 94284525524384, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @23, i32 0, i32 0), i64 94284525524864, i32 448, i32 50), !dbg !1416
  %170 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %23, i32 0, i32 1, !dbg !1416
  %171 = load double, double* %170, align 8, !dbg !1416
  %172 = fadd double %169, %171, !dbg !1417
  call void @fAddHandler(double %169, double %171, double %172, i64 94284525524864, i64 94284525525704, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @23, i32 0, i32 0), i64 94284525527376, i32 448, i32 65), !dbg !1418
  %173 = load double, double* %19, align 8, !dbg !1418
  %174 = load double, double* %20, align 8, !dbg !1419
  %175 = fdiv double %173, %174, !dbg !1420
  call void @fDivHandler(double %173, double %174, double %175, i64 94284525527768, i64 94284525528152, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @23, i32 0, i32 0), i64 94284525528560, i32 448, i32 85), !dbg !1421
  %176 = call double @fabs(double %175) #1, !dbg !1421
  %177 = fadd double %172, %176, !dbg !1422
  call void @fAddHandler(double %172, double %176, double %177, i64 94284525527376, i64 94284525529040, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @23, i32 0, i32 0), i64 94284525529520, i32 448, i32 76), !dbg !1423
  %178 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %10, align 8, !dbg !1423
  %179 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %178, i32 0, i32 1, !dbg !1424
  store double %177, double* %179, align 8, !dbg !1425
  ret i32 0, !dbg !1426
}

; Function Attrs: nounwind uwtable
define internal i32 @dilogc_series_2(double, double, double, %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct*) #0 !dbg !1427 {
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca %struct.gsl_sf_result_struct*, align 8
  %11 = alloca %struct.gsl_sf_result_struct*, align 8
  %12 = alloca %struct.gsl_sf_result_struct, align 8
  %13 = alloca %struct.gsl_sf_result_struct, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.gsl_sf_result_struct, align 8
  %16 = alloca %struct.gsl_sf_result_struct, align 8
  %17 = alloca i32, align 4
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  store double %0, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !1428, metadata !79), !dbg !1429
  store double %1, double* %8, align 8
  call void @llvm.dbg.declare(metadata double* %8, metadata !1430, metadata !79), !dbg !1431
  store double %2, double* %9, align 8
  call void @llvm.dbg.declare(metadata double* %9, metadata !1432, metadata !79), !dbg !1433
  store %struct.gsl_sf_result_struct* %3, %struct.gsl_sf_result_struct** %10, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %10, metadata !1434, metadata !79), !dbg !1435
  store %struct.gsl_sf_result_struct* %4, %struct.gsl_sf_result_struct** %11, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %11, metadata !1436, metadata !79), !dbg !1437
  %22 = load double, double* %7, align 8, !dbg !1438
  %23 = fcmp oeq double %22, 0.000000e+00, !dbg !1440
  %24 = call i1 @fCmpInstHandler(double %22, double 0.000000e+00, i1 %23, i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @25, i32 0, i32 0), i64 94284525538480, i32 336, i32 8), !dbg !1441
  br i1 %24, label %25, label %34, !dbg !1441

; <label>:25:                                     ; preds = %5
  %26 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %10, align 8, !dbg !1442
  %27 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %26, i32 0, i32 0, !dbg !1444
  store double 0.000000e+00, double* %27, align 8, !dbg !1445
  %28 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !1446
  %29 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %28, i32 0, i32 0, !dbg !1447
  store double 0.000000e+00, double* %29, align 8, !dbg !1448
  %30 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %10, align 8, !dbg !1449
  %31 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %30, i32 0, i32 1, !dbg !1450
  store double 0.000000e+00, double* %31, align 8, !dbg !1451
  %32 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !1452
  %33 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %32, i32 0, i32 1, !dbg !1453
  store double 0.000000e+00, double* %33, align 8, !dbg !1454
  store i32 0, i32* %6, align 4, !dbg !1455
  br label %144, !dbg !1455

; <label>:34:                                     ; preds = %5
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %12, metadata !1456, metadata !79), !dbg !1458
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %13, metadata !1459, metadata !79), !dbg !1460
  call void @llvm.dbg.declare(metadata i32* %14, metadata !1461, metadata !79), !dbg !1462
  %35 = load double, double* %7, align 8, !dbg !1463
  %36 = load double, double* %8, align 8, !dbg !1464
  %37 = load double, double* %9, align 8, !dbg !1465
  %38 = call i32 @series_2_c(double %35, double %36, double %37, %struct.gsl_sf_result_struct* %12, %struct.gsl_sf_result_struct* %13), !dbg !1466
  store i32 %38, i32* %14, align 4, !dbg !1462
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %15, metadata !1467, metadata !79), !dbg !1468
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %16, metadata !1469, metadata !79), !dbg !1470
  call void @llvm.dbg.declare(metadata i32* %17, metadata !1471, metadata !79), !dbg !1472
  %39 = load double, double* %8, align 8, !dbg !1473
  %40 = fsub double 1.000000e+00, %39, !dbg !1474
  call void @fSubHandler(double 1.000000e+00, double %39, double %40, i64 0, i64 94284525557032, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @25, i32 0, i32 0), i64 94284525557440, i32 353, i32 50), !dbg !1475
  %41 = load double, double* %9, align 8, !dbg !1475
  %42 = fsub double -0.000000e+00, %41, !dbg !1476
  call void @fSubHandler(double -0.000000e+00, double %41, double %42, i64 0, i64 94284525557800, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @25, i32 0, i32 0), i64 94284525558208, i32 353, i32 54), !dbg !1477
  %43 = call i32 @gsl_sf_complex_log_e(double %40, double %42, %struct.gsl_sf_result_struct* %15, %struct.gsl_sf_result_struct* %16), !dbg !1477
  store i32 %43, i32* %17, align 4, !dbg !1472
  call void @llvm.dbg.declare(metadata double* %18, metadata !1478, metadata !79), !dbg !1479
  %44 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %15, i32 0, i32 0, !dbg !1480
  %45 = load double, double* %44, align 8, !dbg !1480
  %46 = load double, double* %8, align 8, !dbg !1481
  %47 = fmul double %45, %46, !dbg !1482
  call void @fMulHandler(double %45, double %46, double %47, i64 94284525562792, i64 94284525564440, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @25, i32 0, i32 0), i64 94284525564848, i32 354, i32 39), !dbg !1483
  %48 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %16, i32 0, i32 0, !dbg !1483
  %49 = load double, double* %48, align 8, !dbg !1483
  %50 = load double, double* %9, align 8, !dbg !1484
  %51 = fmul double %49, %50, !dbg !1485
  call void @fMulHandler(double %49, double %50, double %51, i64 94284525565688, i64 94284525567336, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @25, i32 0, i32 0), i64 94284525567744, i32 354, i32 62), !dbg !1486
  %52 = fadd double %47, %51, !dbg !1486
  call void @fAddHandler(double %47, double %51, double %52, i64 94284525564848, i64 94284525567744, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @25, i32 0, i32 0), i64 94284525568160, i32 354, i32 43), !dbg !1487
  %53 = load double, double* %7, align 8, !dbg !1487
  %54 = load double, double* %7, align 8, !dbg !1488
  %55 = fmul double %53, %54, !dbg !1489
  call void @fMulHandler(double %53, double %54, double %55, i64 94284525568552, i64 94284525568936, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @25, i32 0, i32 0), i64 94284525569344, i32 354, i32 69), !dbg !1490
  %56 = fdiv double %52, %55, !dbg !1490
  call void @fDivHandler(double %52, double %55, double %56, i64 94284525568160, i64 94284525569344, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @25, i32 0, i32 0), i64 94284525569760, i32 354, i32 66), !dbg !1479
  store double %56, double* %18, align 8, !dbg !1479
  call void @llvm.dbg.declare(metadata double* %19, metadata !1491, metadata !79), !dbg !1492
  %57 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %15, i32 0, i32 0, !dbg !1493
  %58 = load double, double* %57, align 8, !dbg !1493
  %59 = fsub double -0.000000e+00, %58, !dbg !1494
  call void @fSubHandler(double -0.000000e+00, double %58, double %59, i64 0, i64 94284525573368, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @25, i32 0, i32 0), i64 94284525575040, i32 355, i32 25), !dbg !1495
  %60 = load double, double* %9, align 8, !dbg !1495
  %61 = fmul double %59, %60, !dbg !1496
  call void @fMulHandler(double %59, double %60, double %61, i64 94284525575040, i64 94284525575432, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @25, i32 0, i32 0), i64 94284525575840, i32 355, i32 39), !dbg !1497
  %62 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %16, i32 0, i32 0, !dbg !1497
  %63 = load double, double* %62, align 8, !dbg !1497
  %64 = load double, double* %8, align 8, !dbg !1498
  %65 = fmul double %63, %64, !dbg !1499
  call void @fMulHandler(double %63, double %64, double %65, i64 94284525576680, i64 94284525578328, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @25, i32 0, i32 0), i64 94284525578736, i32 355, i32 62), !dbg !1500
  %66 = fadd double %61, %65, !dbg !1500
  call void @fAddHandler(double %61, double %65, double %66, i64 94284525575840, i64 94284525578736, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @25, i32 0, i32 0), i64 94284525579152, i32 355, i32 43), !dbg !1501
  %67 = load double, double* %7, align 8, !dbg !1501
  %68 = load double, double* %7, align 8, !dbg !1502
  %69 = fmul double %67, %68, !dbg !1503
  call void @fMulHandler(double %67, double %68, double %69, i64 94284525579544, i64 94284525579928, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @25, i32 0, i32 0), i64 94284525580336, i32 355, i32 69), !dbg !1504
  %70 = fdiv double %66, %69, !dbg !1504
  call void @fDivHandler(double %66, double %69, double %70, i64 94284525579152, i64 94284525580336, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @25, i32 0, i32 0), i64 94284525580752, i32 355, i32 66), !dbg !1492
  store double %70, double* %19, align 8, !dbg !1492
  call void @llvm.dbg.declare(metadata double* %20, metadata !1505, metadata !79), !dbg !1506
  %71 = load double, double* %8, align 8, !dbg !1507
  %72 = fsub double 1.000000e+00, %71, !dbg !1508
  call void @fSubHandler(double 1.000000e+00, double %71, double %72, i64 0, i64 94284525583944, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @25, i32 0, i32 0), i64 94284525584352, i32 358, i32 29), !dbg !1509
  %73 = load double, double* %18, align 8, !dbg !1509
  %74 = fmul double %72, %73, !dbg !1510
  call void @fMulHandler(double %72, double %73, double %74, i64 94284525584352, i64 94284525584712, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @25, i32 0, i32 0), i64 94284525585120, i32 358, i32 34), !dbg !1511
  %75 = load double, double* %9, align 8, !dbg !1511
  %76 = load double, double* %19, align 8, !dbg !1512
  %77 = fmul double %75, %76, !dbg !1513
  call void @fMulHandler(double %75, double %76, double %77, i64 94284525585512, i64 94284525585896, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @25, i32 0, i32 0), i64 94284525586304, i32 358, i32 44), !dbg !1514
  %78 = fadd double %74, %77, !dbg !1514
  call void @fAddHandler(double %74, double %77, double %78, i64 94284525585120, i64 94284525586304, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @25, i32 0, i32 0), i64 94284525586720, i32 358, i32 40), !dbg !1506
  store double %78, double* %20, align 8, !dbg !1506
  call void @llvm.dbg.declare(metadata double* %21, metadata !1515, metadata !79), !dbg !1516
  %79 = load double, double* %8, align 8, !dbg !1517
  %80 = fsub double 1.000000e+00, %79, !dbg !1518
  call void @fSubHandler(double 1.000000e+00, double %79, double %80, i64 0, i64 94284525589912, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @25, i32 0, i32 0), i64 94284525590320, i32 359, i32 29), !dbg !1519
  %81 = load double, double* %19, align 8, !dbg !1519
  %82 = fmul double %80, %81, !dbg !1520
  call void @fMulHandler(double %80, double %81, double %82, i64 94284525590320, i64 94284525590680, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @25, i32 0, i32 0), i64 94284525591088, i32 359, i32 34), !dbg !1521
  %83 = load double, double* %9, align 8, !dbg !1521
  %84 = load double, double* %18, align 8, !dbg !1522
  %85 = fmul double %83, %84, !dbg !1523
  call void @fMulHandler(double %83, double %84, double %85, i64 94284525591480, i64 94284525591864, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @25, i32 0, i32 0), i64 94284525592272, i32 359, i32 44), !dbg !1524
  %86 = fsub double %82, %85, !dbg !1524
  call void @fSubHandler(double %82, double %85, double %86, i64 94284525591088, i64 94284525592272, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @25, i32 0, i32 0), i64 94284525592688, i32 359, i32 40), !dbg !1516
  store double %86, double* %21, align 8, !dbg !1516
  %87 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %12, i32 0, i32 0, !dbg !1525
  %88 = load double, double* %87, align 8, !dbg !1525
  %89 = load double, double* %20, align 8, !dbg !1526
  %90 = fadd double %88, %89, !dbg !1527
  call void @fAddHandler(double %88, double %89, double %90, i64 94284525595208, i64 94284525596856, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @25, i32 0, i32 0), i64 94284525597264, i32 361, i32 31), !dbg !1528
  %91 = fadd double %90, 1.000000e+00, !dbg !1528
  call void @fAddHandler(double %90, double 1.000000e+00, double %91, i64 94284525597264, i64 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @25, i32 0, i32 0), i64 94284525597712, i32 361, i32 37), !dbg !1529
  %92 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %10, align 8, !dbg !1529
  %93 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %92, i32 0, i32 0, !dbg !1530
  store double %91, double* %93, align 8, !dbg !1531
  %94 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %13, i32 0, i32 0, !dbg !1532
  %95 = load double, double* %94, align 8, !dbg !1532
  %96 = load double, double* %21, align 8, !dbg !1533
  %97 = fadd double %95, %96, !dbg !1534
  call void @fAddHandler(double %95, double %96, double %97, i64 94284525599768, i64 94284525601416, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @25, i32 0, i32 0), i64 94284525601824, i32 362, i32 31), !dbg !1535
  %98 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !1535
  %99 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %98, i32 0, i32 0, !dbg !1536
  store double %97, double* %99, align 8, !dbg !1537
  %100 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %12, i32 0, i32 1, !dbg !1538
  %101 = load double, double* %100, align 8, !dbg !1538
  %102 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %10, align 8, !dbg !1539
  %103 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %102, i32 0, i32 0, !dbg !1540
  %104 = load double, double* %103, align 8, !dbg !1540
  %105 = call double @fabs(double %104) #1, !dbg !1541
  %106 = load double, double* %20, align 8, !dbg !1542
  %107 = call double @fabs(double %106) #1, !dbg !1543
  %108 = fadd double %105, %107, !dbg !1545
  call void @fAddHandler(double %105, double %107, double %108, i64 94284525608128, i64 94284525609056, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @25, i32 0, i32 0), i64 94284525609536, i32 363, i32 73), !dbg !1546
  %109 = fmul double 0x3CC0000000000000, %108, !dbg !1546
  call void @fMulHandler(double 0x3CC0000000000000, double %108, double %109, i64 0, i64 94284525609536, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @25, i32 0, i32 0), i64 94284525609952, i32 363, i32 52), !dbg !1547
  %110 = fadd double %101, %109, !dbg !1547
  call void @fAddHandler(double %101, double %109, double %110, i64 94284525603912, i64 94284525609952, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @25, i32 0, i32 0), i64 94284525610368, i32 363, i32 31), !dbg !1548
  %111 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %10, align 8, !dbg !1548
  %112 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %111, i32 0, i32 1, !dbg !1549
  store double %110, double* %112, align 8, !dbg !1550
  %113 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %13, i32 0, i32 1, !dbg !1551
  %114 = load double, double* %113, align 8, !dbg !1551
  %115 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !1552
  %116 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %115, i32 0, i32 0, !dbg !1553
  %117 = load double, double* %116, align 8, !dbg !1553
  %118 = call double @fabs(double %117) #1, !dbg !1554
  %119 = load double, double* %21, align 8, !dbg !1555
  %120 = call double @fabs(double %119) #1, !dbg !1556
  %121 = fadd double %118, %120, !dbg !1557
  call void @fAddHandler(double %118, double %120, double %121, i64 94284525616672, i64 94284525617600, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @25, i32 0, i32 0), i64 94284525618080, i32 364, i32 73), !dbg !1558
  %122 = fmul double 0x3CC0000000000000, %121, !dbg !1558
  call void @fMulHandler(double 0x3CC0000000000000, double %121, double %122, i64 0, i64 94284525618080, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @25, i32 0, i32 0), i64 94284525618496, i32 364, i32 52), !dbg !1559
  %123 = fadd double %114, %122, !dbg !1559
  call void @fAddHandler(double %114, double %122, double %123, i64 94284525612456, i64 94284525618496, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @25, i32 0, i32 0), i64 94284525618912, i32 364, i32 31), !dbg !1560
  %124 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !1560
  %125 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %124, i32 0, i32 1, !dbg !1561
  store double %123, double* %125, align 8, !dbg !1562
  %126 = load i32, i32* %14, align 4, !dbg !1563
  %127 = icmp ne i32 %126, 0, !dbg !1563
  %128 = sext i32 %126 to i64, !dbg !1563
  %129 = call i1 @iCmpInstHandler(i64 %128, i64 0, i1 %127, i32 33, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @25, i32 0, i32 0), i64 94284525620960, i32 365, i32 12), !dbg !1563
  br i1 %129, label %130, label %132, !dbg !1563

; <label>:130:                                    ; preds = %34
  %131 = load i32, i32* %14, align 4, !dbg !1564
  br label %142, !dbg !1564

; <label>:132:                                    ; preds = %34
  %133 = load i32, i32* %17, align 4, !dbg !1565
  %134 = icmp ne i32 %133, 0, !dbg !1565
  %135 = sext i32 %133 to i64, !dbg !1565
  %136 = call i1 @iCmpInstHandler(i64 %135, i64 0, i1 %134, i32 33, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @25, i32 0, i32 0), i64 94284525627568, i32 365, i32 12), !dbg !1565
  br i1 %136, label %137, label %139, !dbg !1565

; <label>:137:                                    ; preds = %132
  %138 = load i32, i32* %17, align 4, !dbg !1567
  br label %140, !dbg !1567

; <label>:139:                                    ; preds = %132
  br label %140, !dbg !1569

; <label>:140:                                    ; preds = %139, %137
  %141 = phi i32 [ %138, %137 ], [ 0, %139 ], !dbg !1571
  br label %142, !dbg !1571

; <label>:142:                                    ; preds = %140, %130
  %143 = phi i32 [ %131, %130 ], [ %141, %140 ], !dbg !1573
  store i32 %143, i32* %6, align 4, !dbg !1575
  br label %144, !dbg !1575

; <label>:144:                                    ; preds = %142, %25
  %145 = load i32, i32* %6, align 4, !dbg !1576
  ret i32 %145, !dbg !1576
}

; Function Attrs: nounwind uwtable
define internal i32 @dilogc_series_1(double, double, double, %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct*) #0 !dbg !1577 {
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca %struct.gsl_sf_result_struct*, align 8
  %10 = alloca %struct.gsl_sf_result_struct*, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca double, align 8
  %23 = alloca double, align 8
  %24 = alloca double, align 8
  store double %0, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !1578, metadata !79), !dbg !1579
  store double %1, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !1580, metadata !79), !dbg !1581
  store double %2, double* %8, align 8
  call void @llvm.dbg.declare(metadata double* %8, metadata !1582, metadata !79), !dbg !1583
  store %struct.gsl_sf_result_struct* %3, %struct.gsl_sf_result_struct** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %9, metadata !1584, metadata !79), !dbg !1585
  store %struct.gsl_sf_result_struct* %4, %struct.gsl_sf_result_struct** %10, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %10, metadata !1586, metadata !79), !dbg !1587
  call void @llvm.dbg.declare(metadata double* %11, metadata !1588, metadata !79), !dbg !1589
  %25 = load double, double* %7, align 8, !dbg !1590
  %26 = load double, double* %6, align 8, !dbg !1591
  %27 = fdiv double %25, %26, !dbg !1592
  call void @fDivHandler(double %25, double %26, double %27, i64 94284525399384, i64 94284525646904, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @27, i32 0, i32 0), i64 94284525647312, i32 234, i32 29), !dbg !1589
  store double %27, double* %11, align 8, !dbg !1589
  call void @llvm.dbg.declare(metadata double* %12, metadata !1593, metadata !79), !dbg !1594
  %28 = load double, double* %8, align 8, !dbg !1595
  %29 = load double, double* %6, align 8, !dbg !1596
  %30 = fdiv double %28, %29, !dbg !1597
  call void @fDivHandler(double %28, double %29, double %30, i64 94284525650504, i64 94284525650856, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @27, i32 0, i32 0), i64 94284525651264, i32 235, i32 29), !dbg !1594
  store double %30, double* %12, align 8, !dbg !1594
  call void @llvm.dbg.declare(metadata double* %13, metadata !1598, metadata !79), !dbg !1599
  %31 = load double, double* %11, align 8, !dbg !1600
  %32 = fsub double 1.000000e+00, %31, !dbg !1601
  call void @fSubHandler(double 1.000000e+00, double %31, double %32, i64 0, i64 94284525654456, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @27, i32 0, i32 0), i64 94284525654864, i32 236, i32 28), !dbg !1599
  store double %32, double* %13, align 8, !dbg !1599
  call void @llvm.dbg.declare(metadata double* %14, metadata !1602, metadata !79), !dbg !1603
  %33 = load double, double* %12, align 8, !dbg !1604
  store double %33, double* %14, align 8, !dbg !1603
  call void @llvm.dbg.declare(metadata double* %15, metadata !1605, metadata !79), !dbg !1606
  %34 = load double, double* %11, align 8, !dbg !1607
  store double %34, double* %15, align 8, !dbg !1606
  call void @llvm.dbg.declare(metadata double* %16, metadata !1608, metadata !79), !dbg !1609
  %35 = load double, double* %12, align 8, !dbg !1610
  store double %35, double* %16, align 8, !dbg !1609
  call void @llvm.dbg.declare(metadata double* %17, metadata !1611, metadata !79), !dbg !1612
  %36 = load double, double* %6, align 8, !dbg !1613
  store double %36, double* %17, align 8, !dbg !1612
  call void @llvm.dbg.declare(metadata double* %18, metadata !1614, metadata !79), !dbg !1615
  %37 = load double, double* %6, align 8, !dbg !1616
  %38 = load double, double* %15, align 8, !dbg !1617
  %39 = fmul double %37, %38, !dbg !1618
  call void @fMulHandler(double %37, double %38, double %39, i64 94284525670632, i64 94284525670984, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @27, i32 0, i32 0), i64 94284525671392, i32 241, i32 22), !dbg !1615
  store double %39, double* %18, align 8, !dbg !1615
  call void @llvm.dbg.declare(metadata double* %19, metadata !1619, metadata !79), !dbg !1620
  %40 = load double, double* %6, align 8, !dbg !1621
  %41 = load double, double* %16, align 8, !dbg !1622
  %42 = fmul double %40, %41, !dbg !1623
  call void @fMulHandler(double %40, double %41, double %42, i64 94284525674584, i64 94284525674936, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @27, i32 0, i32 0), i64 94284525675344, i32 242, i32 22), !dbg !1620
  store double %42, double* %19, align 8, !dbg !1620
  call void @llvm.dbg.declare(metadata i32* %20, metadata !1624, metadata !79), !dbg !1625
  %43 = load double, double* %6, align 8, !dbg !1626
  %44 = call double @log(double %43) #5, !dbg !1627
  call void @callOneArgHandler(i32 12, double %43, double %44, i64 94284525678536, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @27, i32 0, i32 0), i64 94284525678976, i32 243, i32 38), !dbg !1628
  %45 = fsub double -0.000000e+00, %44, !dbg !1628
  call void @fSubHandler(double -0.000000e+00, double %44, double %45, i64 0, i64 94284525678976, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @27, i32 0, i32 0), i64 94284525679456, i32 243, i32 37), !dbg !1629
  %46 = fdiv double 2.200000e+01, %45, !dbg !1629
  call void @fDivHandler(double 2.200000e+01, double %45, double %46, i64 0, i64 94284525679456, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @27, i32 0, i32 0), i64 94284525679968, i32 243, i32 35), !dbg !1630
  %47 = fptosi double %46 to i32, !dbg !1630
  %48 = add nsw i32 50, %47, !dbg !1631
  store i32 %48, i32* %20, align 4, !dbg !1625
  call void @llvm.dbg.declare(metadata i32* %21, metadata !1632, metadata !79), !dbg !1633
  store i32 2, i32* %21, align 4, !dbg !1634
  br label %49, !dbg !1636

; <label>:49:                                     ; preds = %123, %5
  %50 = load i32, i32* %21, align 4, !dbg !1637
  %51 = load i32, i32* %20, align 4, !dbg !1640
  %52 = icmp slt i32 %50, %51, !dbg !1641
  %53 = sext i32 %50 to i64, !dbg !1642
  %54 = sext i32 %51 to i64, !dbg !1642
  %55 = call i1 @iCmpInstHandler(i64 %53, i64 %54, i1 %52, i32 40, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @27, i32 0, i32 0), i64 94284525685632, i32 245, i32 13), !dbg !1642
  br i1 %55, label %56, label %126, !dbg !1642

; <label>:56:                                     ; preds = %49
  call void @llvm.dbg.declare(metadata double* %22, metadata !1643, metadata !79), !dbg !1645
  call void @llvm.dbg.declare(metadata double* %23, metadata !1646, metadata !79), !dbg !1647
  call void @llvm.dbg.declare(metadata double* %24, metadata !1648, metadata !79), !dbg !1649
  %57 = load double, double* %15, align 8, !dbg !1650
  store double %57, double* %24, align 8, !dbg !1649
  %58 = load double, double* %15, align 8, !dbg !1651
  %59 = load double, double* %13, align 8, !dbg !1652
  %60 = load double, double* %15, align 8, !dbg !1653
  %61 = fmul double %59, %60, !dbg !1654
  call void @fMulHandler(double %59, double %60, double %61, i64 94284525692392, i64 94284525692776, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @27, i32 0, i32 0), i64 94284525693184, i32 248, i32 21), !dbg !1655
  %62 = load double, double* %14, align 8, !dbg !1655
  %63 = load double, double* %16, align 8, !dbg !1656
  %64 = fmul double %62, %63, !dbg !1657
  call void @fMulHandler(double %62, double %63, double %64, i64 94284525693576, i64 94284525693960, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @27, i32 0, i32 0), i64 94284525694368, i32 248, i32 31), !dbg !1658
  %65 = fadd double %61, %64, !dbg !1658
  call void @fAddHandler(double %61, double %64, double %65, i64 94284525693184, i64 94284525694368, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @27, i32 0, i32 0), i64 94284525694784, i32 248, i32 25), !dbg !1659
  %66 = fsub double %58, %65, !dbg !1659
  call void @fSubHandler(double %58, double %65, double %66, i64 94284525692008, i64 94284525694784, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @27, i32 0, i32 0), i64 94284525695200, i32 248, i32 13), !dbg !1660
  store double %66, double* %15, align 8, !dbg !1660
  %67 = load double, double* %16, align 8, !dbg !1661
  %68 = load double, double* %13, align 8, !dbg !1662
  %69 = load double, double* %16, align 8, !dbg !1663
  %70 = fmul double %68, %69, !dbg !1664
  call void @fMulHandler(double %68, double %69, double %70, i64 94284525696392, i64 94284525696776, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @27, i32 0, i32 0), i64 94284525697184, i32 249, i32 21), !dbg !1665
  %71 = load double, double* %14, align 8, !dbg !1665
  %72 = load double, double* %24, align 8, !dbg !1666
  %73 = fmul double %71, %72, !dbg !1667
  call void @fMulHandler(double %71, double %72, double %73, i64 94284525697576, i64 94284525697960, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @27, i32 0, i32 0), i64 94284525698368, i32 249, i32 31), !dbg !1668
  %74 = fsub double %70, %73, !dbg !1668
  call void @fSubHandler(double %70, double %73, double %74, i64 94284525697184, i64 94284525698368, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @27, i32 0, i32 0), i64 94284525698784, i32 249, i32 25), !dbg !1669
  %75 = fsub double %67, %74, !dbg !1669
  call void @fSubHandler(double %67, double %74, double %75, i64 94284525696008, i64 94284525698784, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @27, i32 0, i32 0), i64 94284525699200, i32 249, i32 13), !dbg !1670
  store double %75, double* %16, align 8, !dbg !1670
  %76 = load double, double* %6, align 8, !dbg !1671
  %77 = load double, double* %17, align 8, !dbg !1672
  %78 = fmul double %77, %76, !dbg !1672
  call void @fMulHandler(double %77, double %76, double %78, i64 94284525700392, i64 94284525700008, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @27, i32 0, i32 0), i64 94284525700800, i32 250, i32 8), !dbg !1672
  store double %78, double* %17, align 8, !dbg !1672
  %79 = load double, double* %17, align 8, !dbg !1673
  %80 = load i32, i32* %21, align 4, !dbg !1674
  %81 = sitofp i32 %80 to double, !dbg !1675
  %82 = load i32, i32* %21, align 4, !dbg !1676
  %83 = sitofp i32 %82 to double, !dbg !1676
  %84 = fmul double %81, %83, !dbg !1677
  call void @fMulHandler(double %81, double %83, double %84, i64 94284525703352, i64 94284525704120, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @27, i32 0, i32 0), i64 94284525705792, i32 251, i32 23), !dbg !1678
  %85 = fdiv double %79, %84, !dbg !1678
  call void @fDivHandler(double %79, double %84, double %85, i64 94284525702584, i64 94284525705792, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @27, i32 0, i32 0), i64 94284525706208, i32 251, i32 12), !dbg !1679
  %86 = load double, double* %15, align 8, !dbg !1679
  %87 = fmul double %85, %86, !dbg !1680
  call void @fMulHandler(double %85, double %86, double %87, i64 94284525706208, i64 94284525706600, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @27, i32 0, i32 0), i64 94284525707008, i32 251, i32 27), !dbg !1681
  store double %87, double* %22, align 8, !dbg !1681
  %88 = load double, double* %17, align 8, !dbg !1682
  %89 = load i32, i32* %21, align 4, !dbg !1683
  %90 = sitofp i32 %89 to double, !dbg !1684
  %91 = load i32, i32* %21, align 4, !dbg !1685
  %92 = sitofp i32 %91 to double, !dbg !1685
  %93 = fmul double %90, %92, !dbg !1686
  call void @fMulHandler(double %90, double %92, double %93, i64 94284525708584, i64 94284525709352, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @27, i32 0, i32 0), i64 94284525711024, i32 252, i32 23), !dbg !1687
  %94 = fdiv double %88, %93, !dbg !1687
  call void @fDivHandler(double %88, double %93, double %94, i64 94284525707816, i64 94284525711024, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @27, i32 0, i32 0), i64 94284525711440, i32 252, i32 12), !dbg !1688
  %95 = load double, double* %16, align 8, !dbg !1688
  %96 = fmul double %94, %95, !dbg !1689
  call void @fMulHandler(double %94, double %95, double %96, i64 94284525711440, i64 94284525711832, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @27, i32 0, i32 0), i64 94284525712240, i32 252, i32 27), !dbg !1690
  store double %96, double* %23, align 8, !dbg !1690
  %97 = load double, double* %22, align 8, !dbg !1691
  %98 = load double, double* %18, align 8, !dbg !1692
  %99 = fadd double %98, %97, !dbg !1692
  call void @fAddHandler(double %98, double %97, double %99, i64 94284525713432, i64 94284525713048, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @27, i32 0, i32 0), i64 94284525713840, i32 253, i32 14), !dbg !1692
  store double %99, double* %18, align 8, !dbg !1692
  %100 = load double, double* %23, align 8, !dbg !1693
  %101 = load double, double* %19, align 8, !dbg !1694
  %102 = fadd double %101, %100, !dbg !1694
  call void @fAddHandler(double %101, double %100, double %102, i64 94284525716008, i64 94284525715624, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @27, i32 0, i32 0), i64 94284525716416, i32 254, i32 14), !dbg !1694
  store double %102, double* %19, align 8, !dbg !1694
  %103 = load double, double* %22, align 8, !dbg !1695
  %104 = load double, double* %22, align 8, !dbg !1697
  %105 = fmul double %103, %104, !dbg !1698
  call void @fMulHandler(double %103, double %104, double %105, i64 94284525718200, i64 94284525718584, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @27, i32 0, i32 0), i64 94284525718992, i32 255, i32 16), !dbg !1699
  %106 = load double, double* %23, align 8, !dbg !1699
  %107 = load double, double* %23, align 8, !dbg !1700
  %108 = fmul double %106, %107, !dbg !1701
  call void @fMulHandler(double %106, double %107, double %108, i64 94284525719384, i64 94284525719768, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @27, i32 0, i32 0), i64 94284525720176, i32 255, i32 24), !dbg !1702
  %109 = fadd double %105, %108, !dbg !1702
  call void @fAddHandler(double %105, double %108, double %109, i64 94284525718992, i64 94284525720176, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @27, i32 0, i32 0), i64 94284525720592, i32 255, i32 20), !dbg !1703
  %110 = load double, double* %18, align 8, !dbg !1703
  %111 = load double, double* %18, align 8, !dbg !1704
  %112 = fmul double %110, %111, !dbg !1705
  call void @fMulHandler(double %110, double %111, double %112, i64 94284525720984, i64 94284525721368, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @27, i32 0, i32 0), i64 94284525721776, i32 255, i32 38), !dbg !1706
  %113 = load double, double* %19, align 8, !dbg !1706
  %114 = load double, double* %19, align 8, !dbg !1707
  %115 = fmul double %113, %114, !dbg !1708
  call void @fMulHandler(double %113, double %114, double %115, i64 94284525722168, i64 94284525722552, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @27, i32 0, i32 0), i64 94284525722960, i32 255, i32 58), !dbg !1709
  %116 = fadd double %112, %115, !dbg !1709
  call void @fAddHandler(double %112, double %115, double %116, i64 94284525721776, i64 94284525722960, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @27, i32 0, i32 0), i64 94284525723376, i32 255, i32 48), !dbg !1710
  %117 = fdiv double %109, %116, !dbg !1710
  call void @fDivHandler(double %109, double %116, double %117, i64 94284525720592, i64 94284525723376, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @27, i32 0, i32 0), i64 94284525723792, i32 255, i32 28), !dbg !1711
  %118 = call double @fabs(double %117) #1, !dbg !1711
  %119 = fcmp olt double %118, 0x3970000000000000, !dbg !1712
  %120 = call i1 @fCmpInstHandler(double %118, double 0x3970000000000000, i1 %119, i32 4, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @27, i32 0, i32 0), i64 94284525724816, i32 255, i32 70), !dbg !1713
  br i1 %120, label %121, label %122, !dbg !1713

; <label>:121:                                    ; preds = %56
  br label %126, !dbg !1714

; <label>:122:                                    ; preds = %56
  br label %123, !dbg !1716

; <label>:123:                                    ; preds = %122
  %124 = load i32, i32* %21, align 4, !dbg !1717
  %125 = add nsw i32 %124, 1, !dbg !1717
  store i32 %125, i32* %21, align 4, !dbg !1717
  br label %49, !dbg !1719, !llvm.loop !1720

; <label>:126:                                    ; preds = %121, %49
  %127 = load double, double* %18, align 8, !dbg !1722
  %128 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1723
  %129 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %128, i32 0, i32 0, !dbg !1724
  store double %127, double* %129, align 8, !dbg !1725
  %130 = load i32, i32* %20, align 4, !dbg !1726
  %131 = sitofp i32 %130 to double, !dbg !1726
  %132 = fmul double 2.000000e+00, %131, !dbg !1727
  call void @fMulHandler(double 2.000000e+00, double %131, double %132, i64 0, i64 94284525731464, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @27, i32 0, i32 0), i64 94284525733168, i32 259, i32 26), !dbg !1728
  %133 = fmul double %132, 0x3CB0000000000000, !dbg !1728
  call void @fMulHandler(double %132, double 0x3CB0000000000000, double %133, i64 94284525733168, i64 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @27, i32 0, i32 0), i64 94284525735616, i32 259, i32 33), !dbg !1729
  %134 = load double, double* %18, align 8, !dbg !1729
  %135 = call double @fabs(double %134) #1, !dbg !1730
  %136 = fmul double %133, %135, !dbg !1731
  call void @fMulHandler(double %133, double %135, double %136, i64 94284525735616, i64 94284525736480, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @27, i32 0, i32 0), i64 94284525736960, i32 259, i32 51), !dbg !1732
  %137 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1732
  %138 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %137, i32 0, i32 1, !dbg !1733
  store double %136, double* %138, align 8, !dbg !1734
  %139 = load double, double* %19, align 8, !dbg !1735
  %140 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %10, align 8, !dbg !1736
  %141 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %140, i32 0, i32 0, !dbg !1737
  store double %139, double* %141, align 8, !dbg !1738
  %142 = load i32, i32* %20, align 4, !dbg !1739
  %143 = sitofp i32 %142 to double, !dbg !1739
  %144 = fmul double 2.000000e+00, %143, !dbg !1740
  call void @fMulHandler(double 2.000000e+00, double %143, double %144, i64 0, i64 94284525740616, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @27, i32 0, i32 0), i64 94284525742320, i32 261, i32 26), !dbg !1741
  %145 = fmul double %144, 0x3CB0000000000000, !dbg !1741
  call void @fMulHandler(double %144, double 0x3CB0000000000000, double %145, i64 94284525742320, i64 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @27, i32 0, i32 0), i64 94284525742704, i32 261, i32 33), !dbg !1742
  %146 = load double, double* %19, align 8, !dbg !1742
  %147 = call double @fabs(double %146) #1, !dbg !1743
  %148 = fmul double %145, %147, !dbg !1744
  call void @fMulHandler(double %145, double %147, double %148, i64 94284525742704, i64 94284525743568, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @27, i32 0, i32 0), i64 94284525744048, i32 261, i32 51), !dbg !1745
  %149 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %10, align 8, !dbg !1745
  %150 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %149, i32 0, i32 1, !dbg !1746
  store double %148, double* %150, align 8, !dbg !1747
  ret i32 0, !dbg !1748
}

; Function Attrs: nounwind uwtable
define internal i32 @series_2_c(double, double, double, %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct*) #0 !dbg !1749 {
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca %struct.gsl_sf_result_struct*, align 8
  %10 = alloca %struct.gsl_sf_result_struct*, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca double, align 8
  %23 = alloca double, align 8
  %24 = alloca double, align 8
  store double %0, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !1750, metadata !79), !dbg !1751
  store double %1, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !1752, metadata !79), !dbg !1753
  store double %2, double* %8, align 8
  call void @llvm.dbg.declare(metadata double* %8, metadata !1754, metadata !79), !dbg !1755
  store %struct.gsl_sf_result_struct* %3, %struct.gsl_sf_result_struct** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %9, metadata !1756, metadata !79), !dbg !1757
  store %struct.gsl_sf_result_struct* %4, %struct.gsl_sf_result_struct** %10, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %10, metadata !1758, metadata !79), !dbg !1759
  call void @llvm.dbg.declare(metadata double* %11, metadata !1760, metadata !79), !dbg !1761
  %25 = load double, double* %7, align 8, !dbg !1762
  %26 = load double, double* %6, align 8, !dbg !1763
  %27 = fdiv double %25, %26, !dbg !1764
  call void @fDivHandler(double %25, double %26, double %27, i64 94284525551400, i64 94284525754408, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @29, i32 0, i32 0), i64 94284525754816, i32 284, i32 29), !dbg !1761
  store double %27, double* %11, align 8, !dbg !1761
  call void @llvm.dbg.declare(metadata double* %12, metadata !1765, metadata !79), !dbg !1766
  %28 = load double, double* %8, align 8, !dbg !1767
  %29 = load double, double* %6, align 8, !dbg !1768
  %30 = fdiv double %28, %29, !dbg !1769
  call void @fDivHandler(double %28, double %29, double %30, i64 94284525758008, i64 94284525758360, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @29, i32 0, i32 0), i64 94284525758768, i32 285, i32 29), !dbg !1766
  store double %30, double* %12, align 8, !dbg !1766
  call void @llvm.dbg.declare(metadata double* %13, metadata !1770, metadata !79), !dbg !1771
  %31 = load double, double* %11, align 8, !dbg !1772
  %32 = fsub double 1.000000e+00, %31, !dbg !1773
  call void @fSubHandler(double 1.000000e+00, double %31, double %32, i64 0, i64 94284525761960, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @29, i32 0, i32 0), i64 94284525762368, i32 286, i32 28), !dbg !1771
  store double %32, double* %13, align 8, !dbg !1771
  call void @llvm.dbg.declare(metadata double* %14, metadata !1774, metadata !79), !dbg !1775
  %33 = load double, double* %12, align 8, !dbg !1776
  store double %33, double* %14, align 8, !dbg !1775
  call void @llvm.dbg.declare(metadata double* %15, metadata !1777, metadata !79), !dbg !1778
  %34 = load double, double* %11, align 8, !dbg !1779
  store double %34, double* %15, align 8, !dbg !1778
  call void @llvm.dbg.declare(metadata double* %16, metadata !1780, metadata !79), !dbg !1781
  %35 = load double, double* %12, align 8, !dbg !1782
  store double %35, double* %16, align 8, !dbg !1781
  call void @llvm.dbg.declare(metadata double* %17, metadata !1783, metadata !79), !dbg !1784
  %36 = load double, double* %6, align 8, !dbg !1785
  store double %36, double* %17, align 8, !dbg !1784
  call void @llvm.dbg.declare(metadata double* %18, metadata !1786, metadata !79), !dbg !1787
  %37 = load double, double* %6, align 8, !dbg !1788
  %38 = fmul double 5.000000e-01, %37, !dbg !1789
  call void @fMulHandler(double 5.000000e-01, double %37, double %38, i64 0, i64 94284525778136, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @29, i32 0, i32 0), i64 94284525778544, i32 291, i32 25), !dbg !1790
  %39 = load double, double* %15, align 8, !dbg !1790
  %40 = fmul double %38, %39, !dbg !1791
  call void @fMulHandler(double %38, double %39, double %40, i64 94284525778544, i64 94284525778904, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @29, i32 0, i32 0), i64 94284525779312, i32 291, i32 28), !dbg !1787
  store double %40, double* %18, align 8, !dbg !1787
  call void @llvm.dbg.declare(metadata double* %19, metadata !1792, metadata !79), !dbg !1793
  %41 = load double, double* %6, align 8, !dbg !1794
  %42 = fmul double 5.000000e-01, %41, !dbg !1795
  call void @fMulHandler(double 5.000000e-01, double %41, double %42, i64 0, i64 94284525782504, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @29, i32 0, i32 0), i64 94284525782912, i32 292, i32 25), !dbg !1796
  %43 = load double, double* %16, align 8, !dbg !1796
  %44 = fmul double %42, %43, !dbg !1797
  call void @fMulHandler(double %42, double %43, double %44, i64 94284525782912, i64 94284525783272, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @29, i32 0, i32 0), i64 94284525783680, i32 292, i32 28), !dbg !1793
  store double %44, double* %19, align 8, !dbg !1793
  call void @llvm.dbg.declare(metadata i32* %20, metadata !1798, metadata !79), !dbg !1799
  %45 = load double, double* %6, align 8, !dbg !1800
  %46 = call double @log(double %45) #5, !dbg !1801
  call void @callOneArgHandler(i32 12, double %45, double %46, i64 94284525786872, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @29, i32 0, i32 0), i64 94284525787312, i32 293, i32 38), !dbg !1802
  %47 = fsub double -0.000000e+00, %46, !dbg !1802
  call void @fSubHandler(double -0.000000e+00, double %46, double %47, i64 0, i64 94284525787312, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @29, i32 0, i32 0), i64 94284525787792, i32 293, i32 37), !dbg !1803
  %48 = fdiv double 1.800000e+01, %47, !dbg !1803
  call void @fDivHandler(double 1.800000e+01, double %47, double %48, i64 0, i64 94284525787792, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @29, i32 0, i32 0), i64 94284525788304, i32 293, i32 35), !dbg !1804
  %49 = fptosi double %48 to i32, !dbg !1804
  %50 = add nsw i32 30, %49, !dbg !1805
  store i32 %50, i32* %20, align 4, !dbg !1799
  call void @llvm.dbg.declare(metadata i32* %21, metadata !1806, metadata !79), !dbg !1807
  store i32 2, i32* %21, align 4, !dbg !1808
  br label %51, !dbg !1810

; <label>:51:                                     ; preds = %133, %5
  %52 = load i32, i32* %21, align 4, !dbg !1811
  %53 = load i32, i32* %20, align 4, !dbg !1814
  %54 = icmp slt i32 %52, %53, !dbg !1815
  %55 = sext i32 %52 to i64, !dbg !1816
  %56 = sext i32 %53 to i64, !dbg !1816
  %57 = call i1 @iCmpInstHandler(i64 %55, i64 %56, i1 %54, i32 40, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @29, i32 0, i32 0), i64 94284525793968, i32 295, i32 13), !dbg !1816
  br i1 %57, label %58, label %136, !dbg !1816

; <label>:58:                                     ; preds = %51
  call void @llvm.dbg.declare(metadata double* %22, metadata !1817, metadata !79), !dbg !1819
  call void @llvm.dbg.declare(metadata double* %23, metadata !1820, metadata !79), !dbg !1821
  call void @llvm.dbg.declare(metadata double* %24, metadata !1822, metadata !79), !dbg !1823
  %59 = load double, double* %15, align 8, !dbg !1824
  store double %59, double* %24, align 8, !dbg !1823
  %60 = load double, double* %15, align 8, !dbg !1825
  %61 = load double, double* %13, align 8, !dbg !1826
  %62 = load double, double* %15, align 8, !dbg !1827
  %63 = fmul double %61, %62, !dbg !1828
  call void @fMulHandler(double %61, double %62, double %63, i64 94284525800728, i64 94284525801112, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @29, i32 0, i32 0), i64 94284525801520, i32 299, i32 21), !dbg !1829
  %64 = load double, double* %14, align 8, !dbg !1829
  %65 = load double, double* %16, align 8, !dbg !1830
  %66 = fmul double %64, %65, !dbg !1831
  call void @fMulHandler(double %64, double %65, double %66, i64 94284525801912, i64 94284525802296, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @29, i32 0, i32 0), i64 94284525802704, i32 299, i32 31), !dbg !1832
  %67 = fadd double %63, %66, !dbg !1832
  call void @fAddHandler(double %63, double %66, double %67, i64 94284525801520, i64 94284525802704, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @29, i32 0, i32 0), i64 94284525803120, i32 299, i32 25), !dbg !1833
  %68 = fsub double %60, %67, !dbg !1833
  call void @fSubHandler(double %60, double %67, double %68, i64 94284525800344, i64 94284525803120, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @29, i32 0, i32 0), i64 94284525803536, i32 299, i32 13), !dbg !1834
  store double %68, double* %15, align 8, !dbg !1834
  %69 = load double, double* %16, align 8, !dbg !1835
  %70 = load double, double* %13, align 8, !dbg !1836
  %71 = load double, double* %16, align 8, !dbg !1837
  %72 = fmul double %70, %71, !dbg !1838
  call void @fMulHandler(double %70, double %71, double %72, i64 94284525804728, i64 94284525805112, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @29, i32 0, i32 0), i64 94284525805520, i32 300, i32 21), !dbg !1839
  %73 = load double, double* %14, align 8, !dbg !1839
  %74 = load double, double* %24, align 8, !dbg !1840
  %75 = fmul double %73, %74, !dbg !1841
  call void @fMulHandler(double %73, double %74, double %75, i64 94284525805912, i64 94284525806296, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @29, i32 0, i32 0), i64 94284525806704, i32 300, i32 31), !dbg !1842
  %76 = fsub double %72, %75, !dbg !1842
  call void @fSubHandler(double %72, double %75, double %76, i64 94284525805520, i64 94284525806704, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @29, i32 0, i32 0), i64 94284525807120, i32 300, i32 25), !dbg !1843
  %77 = fsub double %69, %76, !dbg !1843
  call void @fSubHandler(double %69, double %76, double %77, i64 94284525804344, i64 94284525807120, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @29, i32 0, i32 0), i64 94284525807536, i32 300, i32 13), !dbg !1844
  store double %77, double* %16, align 8, !dbg !1844
  %78 = load double, double* %6, align 8, !dbg !1845
  %79 = load double, double* %17, align 8, !dbg !1846
  %80 = fmul double %79, %78, !dbg !1846
  call void @fMulHandler(double %79, double %78, double %80, i64 94284525808728, i64 94284525808344, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @29, i32 0, i32 0), i64 94284525809136, i32 301, i32 8), !dbg !1846
  store double %80, double* %17, align 8, !dbg !1846
  %81 = load double, double* %17, align 8, !dbg !1847
  %82 = load i32, i32* %21, align 4, !dbg !1848
  %83 = sitofp i32 %82 to double, !dbg !1849
  %84 = load i32, i32* %21, align 4, !dbg !1850
  %85 = sitofp i32 %84 to double, !dbg !1850
  %86 = fmul double %83, %85, !dbg !1851
  call void @fMulHandler(double %83, double %85, double %86, i64 94284525811688, i64 94284525812456, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @29, i32 0, i32 0), i64 94284525814128, i32 302, i32 23), !dbg !1852
  %87 = load i32, i32* %21, align 4, !dbg !1852
  %88 = sitofp i32 %87 to double, !dbg !1852
  %89 = fadd double %88, 1.000000e+00, !dbg !1853
  call void @fAddHandler(double %88, double 1.000000e+00, double %89, i64 94284525814904, i64 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @29, i32 0, i32 0), i64 94284525816608, i32 302, i32 28), !dbg !1854
  %90 = fmul double %86, %89, !dbg !1854
  call void @fMulHandler(double %86, double %89, double %90, i64 94284525814128, i64 94284525816608, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @29, i32 0, i32 0), i64 94284525816992, i32 302, i32 25), !dbg !1855
  %91 = fdiv double %81, %90, !dbg !1855
  call void @fDivHandler(double %81, double %90, double %91, i64 94284525810920, i64 94284525816992, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @29, i32 0, i32 0), i64 94284525817408, i32 302, i32 12), !dbg !1856
  %92 = load double, double* %15, align 8, !dbg !1856
  %93 = fmul double %91, %92, !dbg !1857
  call void @fMulHandler(double %91, double %92, double %93, i64 94284525817408, i64 94284525817800, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @29, i32 0, i32 0), i64 94284525818208, i32 302, i32 35), !dbg !1858
  store double %93, double* %22, align 8, !dbg !1858
  %94 = load double, double* %17, align 8, !dbg !1859
  %95 = load i32, i32* %21, align 4, !dbg !1860
  %96 = sitofp i32 %95 to double, !dbg !1861
  %97 = load i32, i32* %21, align 4, !dbg !1862
  %98 = sitofp i32 %97 to double, !dbg !1862
  %99 = fmul double %96, %98, !dbg !1863
  call void @fMulHandler(double %96, double %98, double %99, i64 94284525819784, i64 94284525820552, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @29, i32 0, i32 0), i64 94284525822224, i32 303, i32 23), !dbg !1864
  %100 = load i32, i32* %21, align 4, !dbg !1864
  %101 = sitofp i32 %100 to double, !dbg !1864
  %102 = fadd double %101, 1.000000e+00, !dbg !1865
  call void @fAddHandler(double %101, double 1.000000e+00, double %102, i64 94284525823000, i64 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @29, i32 0, i32 0), i64 94284525824704, i32 303, i32 28), !dbg !1866
  %103 = fmul double %99, %102, !dbg !1866
  call void @fMulHandler(double %99, double %102, double %103, i64 94284525822224, i64 94284525824704, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @29, i32 0, i32 0), i64 94284525825088, i32 303, i32 25), !dbg !1867
  %104 = fdiv double %94, %103, !dbg !1867
  call void @fDivHandler(double %94, double %103, double %104, i64 94284525819016, i64 94284525825088, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @29, i32 0, i32 0), i64 94284525825504, i32 303, i32 12), !dbg !1868
  %105 = load double, double* %16, align 8, !dbg !1868
  %106 = fmul double %104, %105, !dbg !1869
  call void @fMulHandler(double %104, double %105, double %106, i64 94284525825504, i64 94284525825896, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @29, i32 0, i32 0), i64 94284525826304, i32 303, i32 35), !dbg !1870
  store double %106, double* %23, align 8, !dbg !1870
  %107 = load double, double* %22, align 8, !dbg !1871
  %108 = load double, double* %18, align 8, !dbg !1872
  %109 = fadd double %108, %107, !dbg !1872
  call void @fAddHandler(double %108, double %107, double %109, i64 94284525827496, i64 94284525827112, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @29, i32 0, i32 0), i64 94284525827904, i32 304, i32 14), !dbg !1872
  store double %109, double* %18, align 8, !dbg !1872
  %110 = load double, double* %23, align 8, !dbg !1873
  %111 = load double, double* %19, align 8, !dbg !1874
  %112 = fadd double %111, %110, !dbg !1874
  call void @fAddHandler(double %111, double %110, double %112, i64 94284525830072, i64 94284525829688, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @29, i32 0, i32 0), i64 94284525830480, i32 305, i32 14), !dbg !1874
  store double %112, double* %19, align 8, !dbg !1874
  %113 = load double, double* %22, align 8, !dbg !1875
  %114 = load double, double* %22, align 8, !dbg !1877
  %115 = fmul double %113, %114, !dbg !1878
  call void @fMulHandler(double %113, double %114, double %115, i64 94284525832264, i64 94284525832648, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @29, i32 0, i32 0), i64 94284525833056, i32 306, i32 16), !dbg !1879
  %116 = load double, double* %23, align 8, !dbg !1879
  %117 = load double, double* %23, align 8, !dbg !1880
  %118 = fmul double %116, %117, !dbg !1881
  call void @fMulHandler(double %116, double %117, double %118, i64 94284525833448, i64 94284525833832, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @29, i32 0, i32 0), i64 94284525834240, i32 306, i32 24), !dbg !1882
  %119 = fadd double %115, %118, !dbg !1882
  call void @fAddHandler(double %115, double %118, double %119, i64 94284525833056, i64 94284525834240, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @29, i32 0, i32 0), i64 94284525834656, i32 306, i32 20), !dbg !1883
  %120 = load double, double* %18, align 8, !dbg !1883
  %121 = load double, double* %18, align 8, !dbg !1884
  %122 = fmul double %120, %121, !dbg !1885
  call void @fMulHandler(double %120, double %121, double %122, i64 94284525835048, i64 94284525835432, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @29, i32 0, i32 0), i64 94284525835840, i32 306, i32 38), !dbg !1886
  %123 = load double, double* %19, align 8, !dbg !1886
  %124 = load double, double* %19, align 8, !dbg !1887
  %125 = fmul double %123, %124, !dbg !1888
  call void @fMulHandler(double %123, double %124, double %125, i64 94284525836232, i64 94284525836616, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @29, i32 0, i32 0), i64 94284525837024, i32 306, i32 58), !dbg !1889
  %126 = fadd double %122, %125, !dbg !1889
  call void @fAddHandler(double %122, double %125, double %126, i64 94284525835840, i64 94284525837024, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @29, i32 0, i32 0), i64 94284525837440, i32 306, i32 48), !dbg !1890
  %127 = fdiv double %119, %126, !dbg !1890
  call void @fDivHandler(double %119, double %126, double %127, i64 94284525834656, i64 94284525837440, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @29, i32 0, i32 0), i64 94284525837856, i32 306, i32 28), !dbg !1891
  %128 = call double @fabs(double %127) #1, !dbg !1891
  %129 = fcmp olt double %128, 0x3970000000000000, !dbg !1892
  %130 = call i1 @fCmpInstHandler(double %128, double 0x3970000000000000, i1 %129, i32 4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @29, i32 0, i32 0), i64 94284525838816, i32 306, i32 70), !dbg !1893
  br i1 %130, label %131, label %132, !dbg !1893

; <label>:131:                                    ; preds = %58
  br label %136, !dbg !1894

; <label>:132:                                    ; preds = %58
  br label %133, !dbg !1896

; <label>:133:                                    ; preds = %132
  %134 = load i32, i32* %21, align 4, !dbg !1897
  %135 = add nsw i32 %134, 1, !dbg !1897
  store i32 %135, i32* %21, align 4, !dbg !1897
  br label %51, !dbg !1899, !llvm.loop !1900

; <label>:136:                                    ; preds = %131, %51
  %137 = load double, double* %18, align 8, !dbg !1902
  %138 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1903
  %139 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %138, i32 0, i32 0, !dbg !1904
  store double %137, double* %139, align 8, !dbg !1905
  %140 = load i32, i32* %20, align 4, !dbg !1906
  %141 = sitofp i32 %140 to double, !dbg !1906
  %142 = fmul double 2.000000e+00, %141, !dbg !1907
  call void @fMulHandler(double 2.000000e+00, double %141, double %142, i64 0, i64 94284525847528, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @29, i32 0, i32 0), i64 94284525849232, i32 310, i32 21), !dbg !1908
  %143 = fmul double %142, 0x3CB0000000000000, !dbg !1908
  call void @fMulHandler(double %142, double 0x3CB0000000000000, double %143, i64 94284525849232, i64 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @29, i32 0, i32 0), i64 94284525849616, i32 310, i32 28), !dbg !1909
  %144 = load double, double* %18, align 8, !dbg !1909
  %145 = call double @fabs(double %144) #1, !dbg !1910
  %146 = fmul double %143, %145, !dbg !1911
  call void @fMulHandler(double %143, double %145, double %146, i64 94284525849616, i64 94284525850480, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @29, i32 0, i32 0), i64 94284525850960, i32 310, i32 46), !dbg !1912
  %147 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1912
  %148 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %147, i32 0, i32 1, !dbg !1913
  store double %146, double* %148, align 8, !dbg !1914
  %149 = load double, double* %19, align 8, !dbg !1915
  %150 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %10, align 8, !dbg !1916
  %151 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %150, i32 0, i32 0, !dbg !1917
  store double %149, double* %151, align 8, !dbg !1918
  %152 = load i32, i32* %20, align 4, !dbg !1919
  %153 = sitofp i32 %152 to double, !dbg !1919
  %154 = fmul double 2.000000e+00, %153, !dbg !1920
  call void @fMulHandler(double 2.000000e+00, double %153, double %154, i64 0, i64 94284525854616, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @29, i32 0, i32 0), i64 94284525856320, i32 312, i32 21), !dbg !1921
  %155 = fmul double %154, 0x3CB0000000000000, !dbg !1921
  call void @fMulHandler(double %154, double 0x3CB0000000000000, double %155, i64 94284525856320, i64 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @29, i32 0, i32 0), i64 94284525856704, i32 312, i32 28), !dbg !1922
  %156 = load double, double* %19, align 8, !dbg !1922
  %157 = call double @fabs(double %156) #1, !dbg !1923
  %158 = fmul double %155, %157, !dbg !1924
  call void @fMulHandler(double %155, double %157, double %158, i64 94284525856704, i64 94284525857568, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @29, i32 0, i32 0), i64 94284525858048, i32 312, i32 46), !dbg !1925
  %159 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %10, align 8, !dbg !1925
  %160 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %159, i32 0, i32 1, !dbg !1926
  store double %158, double* %160, align 8, !dbg !1927
  ret i32 0, !dbg !1928
}

declare i32 @gsl_sf_complex_log_e(double, double, %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct*) #4

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
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!71, !72, !73}
!llvm.ident = !{!74}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !41, globals: !44)
!1 = !DIFile(filename: "dilog.c", directory: "/fpcc/gsl-2.5/specfunc")
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
!42 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!43 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!44 = !{!45, !58, !59, !60, !61, !62, !63, !66, !70}
!45 = distinct !DIGlobalVariable(name: "c3", scope: !46, file: !1, line: 116, type: !57, isLocal: true, isDefinition: true, variable: double* @dilog_series_2.c3)
!46 = distinct !DISubprogram(name: "dilog_series_2", scope: !1, file: !1, line: 108, type: !47, isLocal: true, isDefinition: true, scopeLine: 109, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !56)
!47 = !DISubroutineType(types: !48)
!48 = !{!42, !43, !49}
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64, align: 64)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !51, line: 41, baseType: !52)
!51 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/fpcc/gsl-2.5/specfunc")
!52 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !51, line: 37, size: 128, align: 64, elements: !53)
!53 = !{!54, !55}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !52, file: !51, line: 38, baseType: !43, size: 64, align: 64)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !52, file: !51, line: 39, baseType: !43, size: 64, align: 64, offset: 64)
!56 = !{}
!57 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!58 = distinct !DIGlobalVariable(name: "c4", scope: !46, file: !1, line: 117, type: !57, isLocal: true, isDefinition: true, variable: double* @dilog_series_2.c4)
!59 = distinct !DIGlobalVariable(name: "c5", scope: !46, file: !1, line: 118, type: !57, isLocal: true, isDefinition: true, variable: double* @dilog_series_2.c5)
!60 = distinct !DIGlobalVariable(name: "c6", scope: !46, file: !1, line: 119, type: !57, isLocal: true, isDefinition: true, variable: double* @dilog_series_2.c6)
!61 = distinct !DIGlobalVariable(name: "c7", scope: !46, file: !1, line: 120, type: !57, isLocal: true, isDefinition: true, variable: double* @dilog_series_2.c7)
!62 = distinct !DIGlobalVariable(name: "c8", scope: !46, file: !1, line: 121, type: !57, isLocal: true, isDefinition: true, variable: double* @dilog_series_2.c8)
!63 = distinct !DIGlobalVariable(name: "kmax", scope: !64, file: !1, line: 74, type: !65, isLocal: true, isDefinition: true, variable: i32* @series_2.kmax)
!64 = distinct !DISubprogram(name: "series_2", scope: !1, file: !1, line: 72, type: !47, isLocal: true, isDefinition: true, scopeLine: 73, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !56)
!65 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!66 = distinct !DIGlobalVariable(name: "MAGIC_SPLIT_VALUE", scope: !67, file: !1, line: 489, type: !57, isLocal: true, isDefinition: true, variable: double* @dilogc_unitdisk.MAGIC_SPLIT_VALUE)
!67 = distinct !DISubprogram(name: "dilogc_unitdisk", scope: !1, file: !1, line: 487, type: !68, isLocal: true, isDefinition: true, scopeLine: 488, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !56)
!68 = !DISubroutineType(types: !69)
!69 = !{!42, !43, !43, !49, !49}
!70 = distinct !DIGlobalVariable(name: "zeta2", scope: !67, file: !1, line: 490, type: !57, isLocal: true, isDefinition: true, variable: double* @dilogc_unitdisk.zeta2)
!71 = !{i32 2, !"Dwarf Version", i32 4}
!72 = !{i32 2, !"Debug Info Version", i32 3}
!73 = !{i32 1, !"PIC Level", i32 2}
!74 = !{!"clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)"}
!75 = distinct !DISubprogram(name: "gsl_sf_dilog_e", scope: !1, file: !1, line: 535, type: !76, isLocal: false, isDefinition: true, scopeLine: 536, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !56)
!76 = !DISubroutineType(types: !77)
!77 = !{!42, !57, !49}
!78 = !DILocalVariable(name: "x", arg: 1, scope: !75, file: !1, line: 535, type: !57)
!79 = !DIExpression()
!80 = !DILocation(line: 535, column: 29, scope: !75)
!81 = !DILocalVariable(name: "result", arg: 2, scope: !75, file: !1, line: 535, type: !49)
!82 = !DILocation(line: 535, column: 48, scope: !75)
!83 = !DILocation(line: 537, column: 6, scope: !84)
!84 = distinct !DILexicalBlock(scope: !75, file: !1, line: 537, column: 6)
!85 = !DILocation(line: 537, column: 8, scope: !84)
!86 = !DILocation(line: 537, column: 6, scope: !75)
!87 = !DILocation(line: 538, column: 23, scope: !88)
!88 = distinct !DILexicalBlock(scope: !84, file: !1, line: 537, column: 16)
!89 = !DILocation(line: 538, column: 26, scope: !88)
!90 = !DILocation(line: 538, column: 12, scope: !88)
!91 = !DILocation(line: 538, column: 5, scope: !88)
!92 = !DILocalVariable(name: "d1", scope: !93, file: !1, line: 541, type: !50)
!93 = distinct !DILexicalBlock(scope: !84, file: !1, line: 540, column: 8)
!94 = !DILocation(line: 541, column: 19, scope: !93)
!95 = !DILocalVariable(name: "d2", scope: !93, file: !1, line: 541, type: !50)
!96 = !DILocation(line: 541, column: 23, scope: !93)
!97 = !DILocalVariable(name: "stat_d1", scope: !93, file: !1, line: 542, type: !42)
!98 = !DILocation(line: 542, column: 9, scope: !93)
!99 = !DILocation(line: 542, column: 32, scope: !93)
!100 = !DILocation(line: 542, column: 31, scope: !93)
!101 = !DILocation(line: 542, column: 19, scope: !93)
!102 = !DILocalVariable(name: "stat_d2", scope: !93, file: !1, line: 543, type: !42)
!103 = !DILocation(line: 543, column: 9, scope: !93)
!104 = !DILocation(line: 543, column: 30, scope: !93)
!105 = !DILocation(line: 543, column: 32, scope: !93)
!106 = !DILocation(line: 543, column: 31, scope: !93)
!107 = !DILocation(line: 543, column: 19, scope: !93)
!108 = !DILocation(line: 544, column: 24, scope: !93)
!109 = !DILocation(line: 544, column: 20, scope: !93)
!110 = !DILocation(line: 544, column: 39, scope: !93)
!111 = !DILocation(line: 544, column: 34, scope: !93)
!112 = !DILocation(line: 544, column: 28, scope: !93)
!113 = !DILocation(line: 544, column: 5, scope: !93)
!114 = !DILocation(line: 544, column: 13, scope: !93)
!115 = !DILocation(line: 544, column: 18, scope: !93)
!116 = !DILocation(line: 545, column: 24, scope: !93)
!117 = !DILocation(line: 545, column: 39, scope: !93)
!118 = !DILocation(line: 545, column: 34, scope: !93)
!119 = !DILocation(line: 545, column: 28, scope: !93)
!120 = !DILocation(line: 545, column: 5, scope: !93)
!121 = !DILocation(line: 545, column: 13, scope: !93)
!122 = !DILocation(line: 545, column: 18, scope: !93)
!123 = !DILocation(line: 546, column: 49, scope: !93)
!124 = !DILocation(line: 546, column: 57, scope: !93)
!125 = !DILocation(line: 546, column: 44, scope: !93)
!126 = !DILocation(line: 546, column: 42, scope: !93)
!127 = !DILocation(line: 546, column: 5, scope: !93)
!128 = !DILocation(line: 546, column: 13, scope: !93)
!129 = !DILocation(line: 546, column: 17, scope: !93)
!130 = !DILocation(line: 547, column: 12, scope: !93)
!131 = !DILocation(line: 547, column: 12, scope: !132)
!132 = !DILexicalBlockFile(scope: !93, file: !1, discriminator: 1)
!133 = !DILocation(line: 547, column: 12, scope: !134)
!134 = !DILexicalBlockFile(scope: !93, file: !1, discriminator: 2)
!135 = !DILocation(line: 547, column: 12, scope: !136)
!136 = !DILexicalBlockFile(scope: !93, file: !1, discriminator: 3)
!137 = !DILocation(line: 547, column: 12, scope: !138)
!138 = !DILexicalBlockFile(scope: !93, file: !1, discriminator: 4)
!139 = !DILocation(line: 547, column: 12, scope: !140)
!140 = !DILexicalBlockFile(scope: !93, file: !1, discriminator: 5)
!141 = !DILocation(line: 547, column: 12, scope: !142)
!142 = !DILexicalBlockFile(scope: !93, file: !1, discriminator: 6)
!143 = !DILocation(line: 547, column: 5, scope: !142)
!144 = !DILocation(line: 549, column: 1, scope: !75)
!145 = distinct !DISubprogram(name: "dilog_xge0", scope: !1, file: !1, line: 136, type: !76, isLocal: true, isDefinition: true, scopeLine: 137, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !56)
!146 = !DILocalVariable(name: "x", arg: 1, scope: !145, file: !1, line: 136, type: !57)
!147 = !DILocation(line: 136, column: 25, scope: !145)
!148 = !DILocalVariable(name: "result", arg: 2, scope: !145, file: !1, line: 136, type: !49)
!149 = !DILocation(line: 136, column: 44, scope: !145)
!150 = !DILocation(line: 138, column: 6, scope: !151)
!151 = distinct !DILexicalBlock(scope: !145, file: !1, line: 138, column: 6)
!152 = !DILocation(line: 138, column: 8, scope: !151)
!153 = !DILocation(line: 138, column: 6, scope: !145)
!154 = !DILocalVariable(name: "ser", scope: !155, file: !1, line: 139, type: !50)
!155 = distinct !DILexicalBlock(scope: !151, file: !1, line: 138, column: 15)
!156 = !DILocation(line: 139, column: 19, scope: !155)
!157 = !DILocalVariable(name: "stat_ser", scope: !155, file: !1, line: 140, type: !65)
!158 = !DILocation(line: 140, column: 15, scope: !155)
!159 = !DILocation(line: 140, column: 45, scope: !155)
!160 = !DILocation(line: 140, column: 44, scope: !155)
!161 = !DILocation(line: 140, column: 26, scope: !155)
!162 = !DILocalVariable(name: "log_x", scope: !155, file: !1, line: 141, type: !57)
!163 = !DILocation(line: 141, column: 18, scope: !155)
!164 = !DILocation(line: 141, column: 30, scope: !155)
!165 = !DILocation(line: 141, column: 26, scope: !155)
!166 = !DILocalVariable(name: "t1", scope: !155, file: !1, line: 142, type: !57)
!167 = !DILocation(line: 142, column: 18, scope: !155)
!168 = !DILocalVariable(name: "t2", scope: !155, file: !1, line: 143, type: !57)
!169 = !DILocation(line: 143, column: 18, scope: !155)
!170 = !DILocation(line: 143, column: 27, scope: !155)
!171 = !DILocalVariable(name: "t3", scope: !155, file: !1, line: 144, type: !57)
!172 = !DILocation(line: 144, column: 18, scope: !155)
!173 = !DILocation(line: 144, column: 27, scope: !155)
!174 = !DILocation(line: 144, column: 26, scope: !155)
!175 = !DILocation(line: 144, column: 33, scope: !155)
!176 = !DILocation(line: 144, column: 32, scope: !155)
!177 = !DILocation(line: 145, column: 25, scope: !155)
!178 = !DILocation(line: 145, column: 23, scope: !155)
!179 = !DILocation(line: 145, column: 30, scope: !155)
!180 = !DILocation(line: 145, column: 28, scope: !155)
!181 = !DILocation(line: 145, column: 5, scope: !155)
!182 = !DILocation(line: 145, column: 13, scope: !155)
!183 = !DILocation(line: 145, column: 18, scope: !155)
!184 = !DILocation(line: 146, column: 43, scope: !155)
!185 = !DILocation(line: 146, column: 38, scope: !155)
!186 = !DILocation(line: 146, column: 36, scope: !155)
!187 = !DILocation(line: 146, column: 56, scope: !155)
!188 = !DILocation(line: 146, column: 50, scope: !155)
!189 = !DILocation(line: 146, column: 5, scope: !155)
!190 = !DILocation(line: 146, column: 13, scope: !155)
!191 = !DILocation(line: 146, column: 18, scope: !155)
!192 = !DILocation(line: 147, column: 39, scope: !155)
!193 = !DILocation(line: 147, column: 55, scope: !155)
!194 = !DILocation(line: 147, column: 50, scope: !195)
!195 = !DILexicalBlockFile(scope: !155, file: !1, discriminator: 1)
!196 = !DILocation(line: 147, column: 48, scope: !155)
!197 = !DILocation(line: 147, column: 66, scope: !155)
!198 = !DILocation(line: 147, column: 61, scope: !199)
!199 = !DILexicalBlockFile(scope: !155, file: !1, discriminator: 2)
!200 = !DILocation(line: 147, column: 59, scope: !155)
!201 = !DILocation(line: 147, column: 36, scope: !155)
!202 = !DILocation(line: 147, column: 5, scope: !155)
!203 = !DILocation(line: 147, column: 13, scope: !155)
!204 = !DILocation(line: 147, column: 17, scope: !155)
!205 = !DILocation(line: 148, column: 49, scope: !155)
!206 = !DILocation(line: 148, column: 57, scope: !155)
!207 = !DILocation(line: 148, column: 44, scope: !155)
!208 = !DILocation(line: 148, column: 42, scope: !155)
!209 = !DILocation(line: 148, column: 5, scope: !155)
!210 = !DILocation(line: 148, column: 13, scope: !155)
!211 = !DILocation(line: 148, column: 17, scope: !155)
!212 = !DILocation(line: 149, column: 12, scope: !155)
!213 = !DILocation(line: 149, column: 5, scope: !155)
!214 = !DILocation(line: 151, column: 11, scope: !215)
!215 = distinct !DILexicalBlock(scope: !151, file: !1, line: 151, column: 11)
!216 = !DILocation(line: 151, column: 13, scope: !215)
!217 = !DILocation(line: 151, column: 11, scope: !151)
!218 = !DILocalVariable(name: "ser", scope: !219, file: !1, line: 152, type: !50)
!219 = distinct !DILexicalBlock(scope: !215, file: !1, line: 151, column: 21)
!220 = !DILocation(line: 152, column: 19, scope: !219)
!221 = !DILocalVariable(name: "stat_ser", scope: !219, file: !1, line: 153, type: !65)
!222 = !DILocation(line: 153, column: 15, scope: !219)
!223 = !DILocation(line: 153, column: 51, scope: !219)
!224 = !DILocation(line: 153, column: 50, scope: !219)
!225 = !DILocation(line: 153, column: 45, scope: !219)
!226 = !DILocation(line: 153, column: 26, scope: !219)
!227 = !DILocalVariable(name: "log_x", scope: !219, file: !1, line: 154, type: !57)
!228 = !DILocation(line: 154, column: 18, scope: !219)
!229 = !DILocation(line: 154, column: 33, scope: !219)
!230 = !DILocation(line: 154, column: 29, scope: !219)
!231 = !DILocalVariable(name: "log_term", scope: !219, file: !1, line: 155, type: !57)
!232 = !DILocation(line: 155, column: 18, scope: !219)
!233 = !DILocation(line: 155, column: 29, scope: !219)
!234 = !DILocation(line: 155, column: 50, scope: !219)
!235 = !DILocation(line: 155, column: 49, scope: !219)
!236 = !DILocation(line: 155, column: 45, scope: !219)
!237 = !DILocation(line: 155, column: 38, scope: !219)
!238 = !DILocation(line: 155, column: 59, scope: !219)
!239 = !DILocation(line: 155, column: 58, scope: !219)
!240 = !DILocation(line: 155, column: 53, scope: !219)
!241 = !DILocation(line: 155, column: 35, scope: !219)
!242 = !DILocalVariable(name: "t1", scope: !219, file: !1, line: 156, type: !57)
!243 = !DILocation(line: 156, column: 18, scope: !219)
!244 = !DILocalVariable(name: "t2", scope: !219, file: !1, line: 157, type: !57)
!245 = !DILocation(line: 157, column: 18, scope: !219)
!246 = !DILocation(line: 157, column: 27, scope: !219)
!247 = !DILocalVariable(name: "t3", scope: !219, file: !1, line: 158, type: !57)
!248 = !DILocation(line: 158, column: 18, scope: !219)
!249 = !DILocation(line: 158, column: 23, scope: !219)
!250 = !DILocation(line: 159, column: 25, scope: !219)
!251 = !DILocation(line: 159, column: 23, scope: !219)
!252 = !DILocation(line: 159, column: 30, scope: !219)
!253 = !DILocation(line: 159, column: 28, scope: !219)
!254 = !DILocation(line: 159, column: 5, scope: !219)
!255 = !DILocation(line: 159, column: 13, scope: !219)
!256 = !DILocation(line: 159, column: 18, scope: !219)
!257 = !DILocation(line: 160, column: 43, scope: !219)
!258 = !DILocation(line: 160, column: 38, scope: !219)
!259 = !DILocation(line: 160, column: 36, scope: !219)
!260 = !DILocation(line: 160, column: 56, scope: !219)
!261 = !DILocation(line: 160, column: 50, scope: !219)
!262 = !DILocation(line: 160, column: 5, scope: !219)
!263 = !DILocation(line: 160, column: 13, scope: !219)
!264 = !DILocation(line: 160, column: 18, scope: !219)
!265 = !DILocation(line: 161, column: 39, scope: !219)
!266 = !DILocation(line: 161, column: 55, scope: !219)
!267 = !DILocation(line: 161, column: 50, scope: !268)
!268 = !DILexicalBlockFile(scope: !219, file: !1, discriminator: 1)
!269 = !DILocation(line: 161, column: 48, scope: !219)
!270 = !DILocation(line: 161, column: 66, scope: !219)
!271 = !DILocation(line: 161, column: 61, scope: !272)
!272 = !DILexicalBlockFile(scope: !219, file: !1, discriminator: 2)
!273 = !DILocation(line: 161, column: 59, scope: !219)
!274 = !DILocation(line: 161, column: 36, scope: !219)
!275 = !DILocation(line: 161, column: 5, scope: !219)
!276 = !DILocation(line: 161, column: 13, scope: !219)
!277 = !DILocation(line: 161, column: 17, scope: !219)
!278 = !DILocation(line: 162, column: 49, scope: !219)
!279 = !DILocation(line: 162, column: 57, scope: !219)
!280 = !DILocation(line: 162, column: 44, scope: !219)
!281 = !DILocation(line: 162, column: 42, scope: !219)
!282 = !DILocation(line: 162, column: 5, scope: !219)
!283 = !DILocation(line: 162, column: 13, scope: !219)
!284 = !DILocation(line: 162, column: 17, scope: !219)
!285 = !DILocation(line: 163, column: 12, scope: !219)
!286 = !DILocation(line: 163, column: 5, scope: !219)
!287 = !DILocation(line: 165, column: 11, scope: !288)
!288 = distinct !DILexicalBlock(scope: !215, file: !1, line: 165, column: 11)
!289 = !DILocation(line: 165, column: 13, scope: !288)
!290 = !DILocation(line: 165, column: 11, scope: !215)
!291 = !DILocalVariable(name: "eps", scope: !292, file: !1, line: 167, type: !57)
!292 = distinct !DILexicalBlock(scope: !288, file: !1, line: 165, column: 20)
!293 = !DILocation(line: 167, column: 18, scope: !292)
!294 = !DILocation(line: 167, column: 24, scope: !292)
!295 = !DILocation(line: 167, column: 26, scope: !292)
!296 = !DILocalVariable(name: "lne", scope: !292, file: !1, line: 168, type: !57)
!297 = !DILocation(line: 168, column: 18, scope: !292)
!298 = !DILocation(line: 168, column: 28, scope: !292)
!299 = !DILocation(line: 168, column: 24, scope: !292)
!300 = !DILocalVariable(name: "c0", scope: !292, file: !1, line: 169, type: !57)
!301 = !DILocation(line: 169, column: 18, scope: !292)
!302 = !DILocalVariable(name: "c1", scope: !292, file: !1, line: 170, type: !57)
!303 = !DILocation(line: 170, column: 18, scope: !292)
!304 = !DILocation(line: 170, column: 31, scope: !292)
!305 = !DILocation(line: 170, column: 29, scope: !292)
!306 = !DILocalVariable(name: "c2", scope: !292, file: !1, line: 171, type: !57)
!307 = !DILocation(line: 171, column: 18, scope: !292)
!308 = !DILocation(line: 171, column: 35, scope: !292)
!309 = !DILocation(line: 171, column: 34, scope: !292)
!310 = !DILocation(line: 171, column: 29, scope: !292)
!311 = !DILocation(line: 171, column: 23, scope: !292)
!312 = !DILocation(line: 171, column: 39, scope: !292)
!313 = !DILocalVariable(name: "c3", scope: !292, file: !1, line: 172, type: !57)
!314 = !DILocation(line: 172, column: 18, scope: !292)
!315 = !DILocation(line: 172, column: 35, scope: !292)
!316 = !DILocation(line: 172, column: 34, scope: !292)
!317 = !DILocation(line: 172, column: 29, scope: !292)
!318 = !DILocation(line: 172, column: 39, scope: !292)
!319 = !DILocalVariable(name: "c4", scope: !292, file: !1, line: 173, type: !57)
!320 = !DILocation(line: 173, column: 18, scope: !292)
!321 = !DILocation(line: 173, column: 35, scope: !292)
!322 = !DILocation(line: 173, column: 34, scope: !292)
!323 = !DILocation(line: 173, column: 29, scope: !292)
!324 = !DILocation(line: 173, column: 23, scope: !292)
!325 = !DILocation(line: 173, column: 39, scope: !292)
!326 = !DILocalVariable(name: "c5", scope: !292, file: !1, line: 174, type: !57)
!327 = !DILocation(line: 174, column: 18, scope: !292)
!328 = !DILocation(line: 174, column: 35, scope: !292)
!329 = !DILocation(line: 174, column: 34, scope: !292)
!330 = !DILocation(line: 174, column: 29, scope: !292)
!331 = !DILocation(line: 174, column: 39, scope: !292)
!332 = !DILocalVariable(name: "c6", scope: !292, file: !1, line: 175, type: !57)
!333 = !DILocation(line: 175, column: 18, scope: !292)
!334 = !DILocation(line: 175, column: 35, scope: !292)
!335 = !DILocation(line: 175, column: 34, scope: !292)
!336 = !DILocation(line: 175, column: 29, scope: !292)
!337 = !DILocation(line: 175, column: 23, scope: !292)
!338 = !DILocation(line: 175, column: 39, scope: !292)
!339 = !DILocalVariable(name: "c7", scope: !292, file: !1, line: 176, type: !57)
!340 = !DILocation(line: 176, column: 18, scope: !292)
!341 = !DILocation(line: 176, column: 35, scope: !292)
!342 = !DILocation(line: 176, column: 34, scope: !292)
!343 = !DILocation(line: 176, column: 29, scope: !292)
!344 = !DILocation(line: 176, column: 39, scope: !292)
!345 = !DILocalVariable(name: "c8", scope: !292, file: !1, line: 177, type: !57)
!346 = !DILocation(line: 177, column: 18, scope: !292)
!347 = !DILocation(line: 177, column: 35, scope: !292)
!348 = !DILocation(line: 177, column: 34, scope: !292)
!349 = !DILocation(line: 177, column: 29, scope: !292)
!350 = !DILocation(line: 177, column: 23, scope: !292)
!351 = !DILocation(line: 177, column: 39, scope: !292)
!352 = !DILocation(line: 178, column: 22, scope: !292)
!353 = !DILocation(line: 178, column: 27, scope: !292)
!354 = !DILocation(line: 178, column: 30, scope: !292)
!355 = !DILocation(line: 178, column: 35, scope: !292)
!356 = !DILocation(line: 178, column: 38, scope: !292)
!357 = !DILocation(line: 178, column: 43, scope: !292)
!358 = !DILocation(line: 178, column: 46, scope: !292)
!359 = !DILocation(line: 178, column: 51, scope: !292)
!360 = !DILocation(line: 178, column: 54, scope: !292)
!361 = !DILocation(line: 178, column: 59, scope: !292)
!362 = !DILocation(line: 178, column: 62, scope: !292)
!363 = !DILocation(line: 178, column: 67, scope: !292)
!364 = !DILocation(line: 178, column: 70, scope: !292)
!365 = !DILocation(line: 178, column: 75, scope: !292)
!366 = !DILocation(line: 178, column: 78, scope: !292)
!367 = !DILocation(line: 178, column: 82, scope: !292)
!368 = !DILocation(line: 178, column: 81, scope: !292)
!369 = !DILocation(line: 178, column: 77, scope: !292)
!370 = !DILocation(line: 178, column: 73, scope: !292)
!371 = !DILocation(line: 178, column: 69, scope: !292)
!372 = !DILocation(line: 178, column: 65, scope: !292)
!373 = !DILocation(line: 178, column: 61, scope: !292)
!374 = !DILocation(line: 178, column: 57, scope: !292)
!375 = !DILocation(line: 178, column: 53, scope: !292)
!376 = !DILocation(line: 178, column: 49, scope: !292)
!377 = !DILocation(line: 178, column: 45, scope: !292)
!378 = !DILocation(line: 178, column: 41, scope: !292)
!379 = !DILocation(line: 178, column: 37, scope: !292)
!380 = !DILocation(line: 178, column: 33, scope: !292)
!381 = !DILocation(line: 178, column: 29, scope: !292)
!382 = !DILocation(line: 178, column: 25, scope: !292)
!383 = !DILocation(line: 178, column: 21, scope: !292)
!384 = !DILocation(line: 178, column: 5, scope: !292)
!385 = !DILocation(line: 178, column: 13, scope: !292)
!386 = !DILocation(line: 178, column: 17, scope: !292)
!387 = !DILocation(line: 179, column: 48, scope: !292)
!388 = !DILocation(line: 179, column: 56, scope: !292)
!389 = !DILocation(line: 179, column: 43, scope: !292)
!390 = !DILocation(line: 179, column: 41, scope: !292)
!391 = !DILocation(line: 179, column: 5, scope: !292)
!392 = !DILocation(line: 179, column: 13, scope: !292)
!393 = !DILocation(line: 179, column: 17, scope: !292)
!394 = !DILocation(line: 180, column: 5, scope: !292)
!395 = !DILocation(line: 182, column: 11, scope: !396)
!396 = distinct !DILexicalBlock(scope: !288, file: !1, line: 182, column: 11)
!397 = !DILocation(line: 182, column: 13, scope: !396)
!398 = !DILocation(line: 182, column: 11, scope: !288)
!399 = !DILocation(line: 183, column: 5, scope: !400)
!400 = distinct !DILexicalBlock(scope: !396, file: !1, line: 182, column: 21)
!401 = !DILocation(line: 183, column: 13, scope: !400)
!402 = !DILocation(line: 183, column: 17, scope: !400)
!403 = !DILocation(line: 184, column: 5, scope: !400)
!404 = !DILocation(line: 184, column: 13, scope: !400)
!405 = !DILocation(line: 184, column: 17, scope: !400)
!406 = !DILocation(line: 185, column: 5, scope: !400)
!407 = !DILocation(line: 187, column: 11, scope: !408)
!408 = distinct !DILexicalBlock(scope: !396, file: !1, line: 187, column: 11)
!409 = !DILocation(line: 187, column: 13, scope: !408)
!410 = !DILocation(line: 187, column: 11, scope: !396)
!411 = !DILocalVariable(name: "ser", scope: !412, file: !1, line: 188, type: !50)
!412 = distinct !DILexicalBlock(scope: !408, file: !1, line: 187, column: 20)
!413 = !DILocation(line: 188, column: 19, scope: !412)
!414 = !DILocalVariable(name: "stat_ser", scope: !412, file: !1, line: 189, type: !65)
!415 = !DILocation(line: 189, column: 15, scope: !412)
!416 = !DILocation(line: 189, column: 45, scope: !412)
!417 = !DILocation(line: 189, column: 44, scope: !412)
!418 = !DILocation(line: 189, column: 26, scope: !412)
!419 = !DILocalVariable(name: "log_x", scope: !412, file: !1, line: 190, type: !57)
!420 = !DILocation(line: 190, column: 18, scope: !412)
!421 = !DILocation(line: 190, column: 30, scope: !412)
!422 = !DILocation(line: 190, column: 26, scope: !412)
!423 = !DILocalVariable(name: "t1", scope: !412, file: !1, line: 191, type: !57)
!424 = !DILocation(line: 191, column: 18, scope: !412)
!425 = !DILocalVariable(name: "t2", scope: !412, file: !1, line: 192, type: !57)
!426 = !DILocation(line: 192, column: 18, scope: !412)
!427 = !DILocation(line: 192, column: 27, scope: !412)
!428 = !DILocalVariable(name: "t3", scope: !412, file: !1, line: 193, type: !57)
!429 = !DILocation(line: 193, column: 18, scope: !412)
!430 = !DILocation(line: 193, column: 23, scope: !412)
!431 = !DILocation(line: 193, column: 37, scope: !412)
!432 = !DILocation(line: 193, column: 36, scope: !412)
!433 = !DILocation(line: 193, column: 29, scope: !412)
!434 = !DILocation(line: 193, column: 28, scope: !412)
!435 = !DILocation(line: 194, column: 25, scope: !412)
!436 = !DILocation(line: 194, column: 23, scope: !412)
!437 = !DILocation(line: 194, column: 30, scope: !412)
!438 = !DILocation(line: 194, column: 28, scope: !412)
!439 = !DILocation(line: 194, column: 5, scope: !412)
!440 = !DILocation(line: 194, column: 13, scope: !412)
!441 = !DILocation(line: 194, column: 18, scope: !412)
!442 = !DILocation(line: 195, column: 43, scope: !412)
!443 = !DILocation(line: 195, column: 38, scope: !412)
!444 = !DILocation(line: 195, column: 36, scope: !412)
!445 = !DILocation(line: 195, column: 56, scope: !412)
!446 = !DILocation(line: 195, column: 50, scope: !412)
!447 = !DILocation(line: 195, column: 5, scope: !412)
!448 = !DILocation(line: 195, column: 13, scope: !412)
!449 = !DILocation(line: 195, column: 18, scope: !412)
!450 = !DILocation(line: 196, column: 39, scope: !412)
!451 = !DILocation(line: 196, column: 55, scope: !412)
!452 = !DILocation(line: 196, column: 50, scope: !453)
!453 = !DILexicalBlockFile(scope: !412, file: !1, discriminator: 1)
!454 = !DILocation(line: 196, column: 48, scope: !412)
!455 = !DILocation(line: 196, column: 66, scope: !412)
!456 = !DILocation(line: 196, column: 61, scope: !457)
!457 = !DILexicalBlockFile(scope: !412, file: !1, discriminator: 2)
!458 = !DILocation(line: 196, column: 59, scope: !412)
!459 = !DILocation(line: 196, column: 36, scope: !412)
!460 = !DILocation(line: 196, column: 5, scope: !412)
!461 = !DILocation(line: 196, column: 13, scope: !412)
!462 = !DILocation(line: 196, column: 17, scope: !412)
!463 = !DILocation(line: 197, column: 49, scope: !412)
!464 = !DILocation(line: 197, column: 57, scope: !412)
!465 = !DILocation(line: 197, column: 44, scope: !412)
!466 = !DILocation(line: 197, column: 42, scope: !412)
!467 = !DILocation(line: 197, column: 5, scope: !412)
!468 = !DILocation(line: 197, column: 13, scope: !412)
!469 = !DILocation(line: 197, column: 17, scope: !412)
!470 = !DILocation(line: 198, column: 12, scope: !412)
!471 = !DILocation(line: 198, column: 5, scope: !412)
!472 = !DILocation(line: 200, column: 11, scope: !473)
!473 = distinct !DILexicalBlock(scope: !408, file: !1, line: 200, column: 11)
!474 = !DILocation(line: 200, column: 13, scope: !473)
!475 = !DILocation(line: 200, column: 11, scope: !408)
!476 = !DILocation(line: 201, column: 27, scope: !477)
!477 = distinct !DILexicalBlock(scope: !473, file: !1, line: 200, column: 21)
!478 = !DILocation(line: 201, column: 30, scope: !477)
!479 = !DILocation(line: 201, column: 12, scope: !477)
!480 = !DILocation(line: 201, column: 5, scope: !477)
!481 = !DILocation(line: 203, column: 11, scope: !482)
!482 = distinct !DILexicalBlock(scope: !473, file: !1, line: 203, column: 11)
!483 = !DILocation(line: 203, column: 13, scope: !482)
!484 = !DILocation(line: 203, column: 11, scope: !473)
!485 = !DILocation(line: 204, column: 27, scope: !486)
!486 = distinct !DILexicalBlock(scope: !482, file: !1, line: 203, column: 20)
!487 = !DILocation(line: 204, column: 30, scope: !486)
!488 = !DILocation(line: 204, column: 12, scope: !486)
!489 = !DILocation(line: 204, column: 5, scope: !486)
!490 = !DILocation(line: 208, column: 5, scope: !491)
!491 = distinct !DILexicalBlock(scope: !482, file: !1, line: 206, column: 8)
!492 = !DILocation(line: 208, column: 13, scope: !491)
!493 = !DILocation(line: 208, column: 17, scope: !491)
!494 = !DILocation(line: 209, column: 5, scope: !491)
!495 = !DILocation(line: 209, column: 13, scope: !491)
!496 = !DILocation(line: 209, column: 17, scope: !491)
!497 = !DILocation(line: 210, column: 5, scope: !491)
!498 = !DILocation(line: 212, column: 1, scope: !145)
!499 = distinct !DISubprogram(name: "gsl_sf_complex_dilog_xy_e", scope: !1, file: !1, line: 553, type: !500, isLocal: false, isDefinition: true, scopeLine: 559, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !56)
!500 = !DISubroutineType(types: !501)
!501 = !{!42, !57, !57, !49, !49}
!502 = !DILocalVariable(name: "x", arg: 1, scope: !499, file: !1, line: 554, type: !57)
!503 = !DILocation(line: 554, column: 16, scope: !499)
!504 = !DILocalVariable(name: "y", arg: 2, scope: !499, file: !1, line: 555, type: !57)
!505 = !DILocation(line: 555, column: 16, scope: !499)
!506 = !DILocalVariable(name: "real_dl", arg: 3, scope: !499, file: !1, line: 556, type: !49)
!507 = !DILocation(line: 556, column: 19, scope: !499)
!508 = !DILocalVariable(name: "imag_dl", arg: 4, scope: !499, file: !1, line: 557, type: !49)
!509 = !DILocation(line: 557, column: 19, scope: !499)
!510 = !DILocalVariable(name: "zeta2", scope: !499, file: !1, line: 560, type: !57)
!511 = !DILocation(line: 560, column: 16, scope: !499)
!512 = !DILocalVariable(name: "r2", scope: !499, file: !1, line: 561, type: !57)
!513 = !DILocation(line: 561, column: 16, scope: !499)
!514 = !DILocation(line: 561, column: 21, scope: !499)
!515 = !DILocation(line: 561, column: 23, scope: !499)
!516 = !DILocation(line: 561, column: 22, scope: !499)
!517 = !DILocation(line: 561, column: 27, scope: !499)
!518 = !DILocation(line: 561, column: 29, scope: !499)
!519 = !DILocation(line: 561, column: 28, scope: !499)
!520 = !DILocation(line: 561, column: 25, scope: !499)
!521 = !DILocation(line: 563, column: 6, scope: !522)
!522 = distinct !DILexicalBlock(scope: !499, file: !1, line: 563, column: 6)
!523 = !DILocation(line: 563, column: 8, scope: !522)
!524 = !DILocation(line: 563, column: 6, scope: !499)
!525 = !DILocation(line: 565, column: 8, scope: !526)
!526 = distinct !DILexicalBlock(scope: !527, file: !1, line: 565, column: 8)
!527 = distinct !DILexicalBlock(scope: !522, file: !1, line: 564, column: 3)
!528 = !DILocation(line: 565, column: 10, scope: !526)
!529 = !DILocation(line: 565, column: 8, scope: !527)
!530 = !DILocation(line: 567, column: 34, scope: !531)
!531 = distinct !DILexicalBlock(scope: !526, file: !1, line: 566, column: 5)
!532 = !DILocation(line: 567, column: 30, scope: !531)
!533 = !DILocation(line: 567, column: 28, scope: !531)
!534 = !DILocation(line: 567, column: 7, scope: !531)
!535 = !DILocation(line: 567, column: 16, scope: !531)
!536 = !DILocation(line: 567, column: 20, scope: !531)
!537 = !DILocation(line: 568, column: 51, scope: !531)
!538 = !DILocation(line: 568, column: 60, scope: !531)
!539 = !DILocation(line: 568, column: 46, scope: !531)
!540 = !DILocation(line: 568, column: 44, scope: !531)
!541 = !DILocation(line: 568, column: 7, scope: !531)
!542 = !DILocation(line: 568, column: 16, scope: !531)
!543 = !DILocation(line: 568, column: 20, scope: !531)
!544 = !DILocation(line: 569, column: 5, scope: !531)
!545 = !DILocation(line: 572, column: 7, scope: !546)
!546 = distinct !DILexicalBlock(scope: !526, file: !1, line: 571, column: 5)
!547 = !DILocation(line: 572, column: 16, scope: !546)
!548 = !DILocation(line: 572, column: 20, scope: !546)
!549 = !DILocation(line: 573, column: 7, scope: !546)
!550 = !DILocation(line: 573, column: 16, scope: !546)
!551 = !DILocation(line: 573, column: 20, scope: !546)
!552 = !DILocation(line: 575, column: 27, scope: !527)
!553 = !DILocation(line: 575, column: 30, scope: !527)
!554 = !DILocation(line: 575, column: 12, scope: !527)
!555 = !DILocation(line: 575, column: 5, scope: !527)
!556 = !DILocation(line: 577, column: 16, scope: !557)
!557 = distinct !DILexicalBlock(scope: !522, file: !1, line: 577, column: 11)
!558 = !DILocation(line: 577, column: 19, scope: !557)
!559 = !DILocation(line: 577, column: 11, scope: !557)
!560 = !DILocation(line: 577, column: 26, scope: !557)
!561 = !DILocation(line: 577, column: 11, scope: !522)
!562 = !DILocalVariable(name: "theta", scope: !563, file: !1, line: 581, type: !57)
!563 = distinct !DILexicalBlock(scope: !557, file: !1, line: 578, column: 3)
!564 = !DILocation(line: 581, column: 18, scope: !563)
!565 = !DILocation(line: 581, column: 32, scope: !563)
!566 = !DILocation(line: 581, column: 35, scope: !563)
!567 = !DILocation(line: 581, column: 26, scope: !563)
!568 = !DILocalVariable(name: "term1", scope: !563, file: !1, line: 582, type: !57)
!569 = !DILocation(line: 582, column: 18, scope: !563)
!570 = !DILocation(line: 582, column: 26, scope: !563)
!571 = !DILocation(line: 582, column: 32, scope: !563)
!572 = !DILocation(line: 582, column: 31, scope: !563)
!573 = !DILocation(line: 582, column: 37, scope: !563)
!574 = !DILocalVariable(name: "term2", scope: !563, file: !1, line: 583, type: !57)
!575 = !DILocation(line: 583, column: 18, scope: !563)
!576 = !DILocation(line: 583, column: 36, scope: !563)
!577 = !DILocation(line: 583, column: 31, scope: !563)
!578 = !DILocation(line: 583, column: 30, scope: !563)
!579 = !DILocation(line: 583, column: 42, scope: !563)
!580 = !DILocation(line: 584, column: 28, scope: !563)
!581 = !DILocation(line: 584, column: 26, scope: !563)
!582 = !DILocation(line: 584, column: 36, scope: !563)
!583 = !DILocation(line: 584, column: 34, scope: !563)
!584 = !DILocation(line: 584, column: 5, scope: !563)
!585 = !DILocation(line: 584, column: 14, scope: !563)
!586 = !DILocation(line: 584, column: 18, scope: !563)
!587 = !DILocation(line: 585, column: 53, scope: !563)
!588 = !DILocation(line: 585, column: 51, scope: !563)
!589 = !DILocation(line: 585, column: 61, scope: !563)
!590 = !DILocation(line: 585, column: 59, scope: !563)
!591 = !DILocation(line: 585, column: 42, scope: !563)
!592 = !DILocation(line: 585, column: 5, scope: !563)
!593 = !DILocation(line: 585, column: 14, scope: !563)
!594 = !DILocation(line: 585, column: 18, scope: !563)
!595 = !DILocation(line: 586, column: 29, scope: !563)
!596 = !DILocation(line: 586, column: 36, scope: !563)
!597 = !DILocation(line: 586, column: 12, scope: !563)
!598 = !DILocation(line: 586, column: 5, scope: !563)
!599 = !DILocation(line: 588, column: 11, scope: !600)
!600 = distinct !DILexicalBlock(scope: !557, file: !1, line: 588, column: 11)
!601 = !DILocation(line: 588, column: 14, scope: !600)
!602 = !DILocation(line: 588, column: 11, scope: !557)
!603 = !DILocation(line: 590, column: 28, scope: !604)
!604 = distinct !DILexicalBlock(scope: !600, file: !1, line: 589, column: 3)
!605 = !DILocation(line: 590, column: 31, scope: !604)
!606 = !DILocation(line: 590, column: 34, scope: !604)
!607 = !DILocation(line: 590, column: 43, scope: !604)
!608 = !DILocation(line: 590, column: 12, scope: !604)
!609 = !DILocation(line: 590, column: 5, scope: !604)
!610 = !DILocalVariable(name: "r", scope: !611, file: !1, line: 595, type: !57)
!611 = distinct !DILexicalBlock(scope: !600, file: !1, line: 593, column: 3)
!612 = !DILocation(line: 595, column: 18, scope: !611)
!613 = !DILocation(line: 595, column: 27, scope: !611)
!614 = !DILocation(line: 595, column: 22, scope: !611)
!615 = !DILocalVariable(name: "x_tmp", scope: !611, file: !1, line: 596, type: !57)
!616 = !DILocation(line: 596, column: 18, scope: !611)
!617 = !DILocation(line: 596, column: 27, scope: !611)
!618 = !DILocation(line: 596, column: 29, scope: !611)
!619 = !DILocation(line: 596, column: 28, scope: !611)
!620 = !DILocalVariable(name: "y_tmp", scope: !611, file: !1, line: 597, type: !57)
!621 = !DILocation(line: 597, column: 18, scope: !611)
!622 = !DILocation(line: 597, column: 27, scope: !611)
!623 = !DILocation(line: 597, column: 26, scope: !611)
!624 = !DILocation(line: 597, column: 29, scope: !611)
!625 = !DILocation(line: 597, column: 28, scope: !611)
!626 = !DILocalVariable(name: "result_re_tmp", scope: !611, file: !1, line: 599, type: !50)
!627 = !DILocation(line: 599, column: 19, scope: !611)
!628 = !DILocalVariable(name: "result_im_tmp", scope: !611, file: !1, line: 599, type: !50)
!629 = !DILocation(line: 599, column: 34, scope: !611)
!630 = !DILocalVariable(name: "stat_dilog", scope: !611, file: !1, line: 601, type: !65)
!631 = !DILocation(line: 601, column: 15, scope: !611)
!632 = !DILocation(line: 602, column: 23, scope: !611)
!633 = !DILocation(line: 602, column: 30, scope: !611)
!634 = !DILocation(line: 602, column: 7, scope: !611)
!635 = !DILocalVariable(name: "theta", scope: !611, file: !1, line: 608, type: !57)
!636 = !DILocation(line: 608, column: 18, scope: !611)
!637 = !DILocation(line: 608, column: 32, scope: !611)
!638 = !DILocation(line: 608, column: 35, scope: !611)
!639 = !DILocation(line: 608, column: 26, scope: !611)
!640 = !DILocalVariable(name: "theta_abs", scope: !611, file: !1, line: 609, type: !57)
!641 = !DILocation(line: 609, column: 18, scope: !611)
!642 = !DILocation(line: 609, column: 35, scope: !611)
!643 = !DILocation(line: 609, column: 30, scope: !611)
!644 = !DILocalVariable(name: "theta_sgn", scope: !611, file: !1, line: 610, type: !57)
!645 = !DILocation(line: 610, column: 18, scope: !611)
!646 = !DILocation(line: 610, column: 32, scope: !611)
!647 = !DILocation(line: 610, column: 38, scope: !611)
!648 = !DILocalVariable(name: "ln_minusz_re", scope: !611, file: !1, line: 611, type: !57)
!649 = !DILocation(line: 611, column: 18, scope: !611)
!650 = !DILocation(line: 611, column: 37, scope: !611)
!651 = !DILocation(line: 611, column: 33, scope: !611)
!652 = !DILocalVariable(name: "ln_minusz_im", scope: !611, file: !1, line: 612, type: !57)
!653 = !DILocation(line: 612, column: 18, scope: !611)
!654 = !DILocation(line: 612, column: 33, scope: !611)
!655 = !DILocation(line: 612, column: 46, scope: !611)
!656 = !DILocation(line: 612, column: 56, scope: !611)
!657 = !DILocation(line: 612, column: 43, scope: !611)
!658 = !DILocalVariable(name: "lmz2_re", scope: !611, file: !1, line: 613, type: !57)
!659 = !DILocation(line: 613, column: 18, scope: !611)
!660 = !DILocation(line: 613, column: 28, scope: !611)
!661 = !DILocation(line: 613, column: 41, scope: !611)
!662 = !DILocation(line: 613, column: 40, scope: !611)
!663 = !DILocation(line: 613, column: 56, scope: !611)
!664 = !DILocation(line: 613, column: 69, scope: !611)
!665 = !DILocation(line: 613, column: 68, scope: !611)
!666 = !DILocation(line: 613, column: 54, scope: !611)
!667 = !DILocalVariable(name: "lmz2_im", scope: !611, file: !1, line: 614, type: !57)
!668 = !DILocation(line: 614, column: 18, scope: !611)
!669 = !DILocation(line: 614, column: 32, scope: !611)
!670 = !DILocation(line: 614, column: 31, scope: !611)
!671 = !DILocation(line: 614, column: 45, scope: !611)
!672 = !DILocation(line: 614, column: 44, scope: !611)
!673 = !DILocation(line: 615, column: 35, scope: !611)
!674 = !DILocation(line: 615, column: 20, scope: !611)
!675 = !DILocation(line: 615, column: 47, scope: !611)
!676 = !DILocation(line: 615, column: 45, scope: !611)
!677 = !DILocation(line: 615, column: 39, scope: !611)
!678 = !DILocation(line: 615, column: 55, scope: !611)
!679 = !DILocation(line: 615, column: 5, scope: !611)
!680 = !DILocation(line: 615, column: 14, scope: !611)
!681 = !DILocation(line: 615, column: 18, scope: !611)
!682 = !DILocation(line: 616, column: 35, scope: !611)
!683 = !DILocation(line: 616, column: 73, scope: !611)
!684 = !DILocation(line: 616, column: 68, scope: !611)
!685 = !DILocation(line: 616, column: 66, scope: !611)
!686 = !DILocation(line: 616, column: 82, scope: !611)
!687 = !DILocation(line: 616, column: 60, scope: !611)
!688 = !DILocation(line: 616, column: 39, scope: !611)
!689 = !DILocation(line: 616, column: 5, scope: !611)
!690 = !DILocation(line: 616, column: 14, scope: !611)
!691 = !DILocation(line: 616, column: 18, scope: !611)
!692 = !DILocation(line: 617, column: 35, scope: !611)
!693 = !DILocation(line: 617, column: 20, scope: !611)
!694 = !DILocation(line: 617, column: 47, scope: !611)
!695 = !DILocation(line: 617, column: 45, scope: !611)
!696 = !DILocation(line: 617, column: 39, scope: !611)
!697 = !DILocation(line: 617, column: 5, scope: !611)
!698 = !DILocation(line: 617, column: 14, scope: !611)
!699 = !DILocation(line: 617, column: 18, scope: !611)
!700 = !DILocation(line: 618, column: 35, scope: !611)
!701 = !DILocation(line: 618, column: 66, scope: !611)
!702 = !DILocation(line: 618, column: 61, scope: !611)
!703 = !DILocation(line: 618, column: 60, scope: !611)
!704 = !DILocation(line: 618, column: 39, scope: !611)
!705 = !DILocation(line: 618, column: 5, scope: !611)
!706 = !DILocation(line: 618, column: 14, scope: !611)
!707 = !DILocation(line: 618, column: 18, scope: !611)
!708 = !DILocation(line: 619, column: 12, scope: !611)
!709 = !DILocation(line: 619, column: 5, scope: !611)
!710 = !DILocation(line: 621, column: 1, scope: !499)
!711 = !DILocalVariable(name: "x", arg: 1, scope: !67, file: !1, line: 487, type: !43)
!712 = !DILocation(line: 487, column: 24, scope: !67)
!713 = !DILocalVariable(name: "y", arg: 2, scope: !67, file: !1, line: 487, type: !43)
!714 = !DILocation(line: 487, column: 34, scope: !67)
!715 = !DILocalVariable(name: "real_dl", arg: 3, scope: !67, file: !1, line: 487, type: !49)
!716 = !DILocation(line: 487, column: 53, scope: !67)
!717 = !DILocalVariable(name: "imag_dl", arg: 4, scope: !67, file: !1, line: 487, type: !49)
!718 = !DILocation(line: 487, column: 78, scope: !67)
!719 = !DILocalVariable(name: "r", scope: !67, file: !1, line: 491, type: !57)
!720 = !DILocation(line: 491, column: 16, scope: !67)
!721 = !DILocation(line: 491, column: 26, scope: !67)
!722 = !DILocation(line: 491, column: 29, scope: !67)
!723 = !DILocation(line: 491, column: 20, scope: !67)
!724 = !DILocation(line: 493, column: 6, scope: !725)
!725 = distinct !DILexicalBlock(scope: !67, file: !1, line: 493, column: 6)
!726 = !DILocation(line: 493, column: 8, scope: !725)
!727 = !DILocation(line: 493, column: 6, scope: !67)
!728 = !DILocalVariable(name: "x_tmp", scope: !729, file: !1, line: 499, type: !57)
!729 = distinct !DILexicalBlock(scope: !725, file: !1, line: 494, column: 3)
!730 = !DILocation(line: 499, column: 18, scope: !729)
!731 = !DILocation(line: 499, column: 32, scope: !729)
!732 = !DILocation(line: 499, column: 30, scope: !729)
!733 = !DILocalVariable(name: "y_tmp", scope: !729, file: !1, line: 500, type: !57)
!734 = !DILocation(line: 500, column: 18, scope: !729)
!735 = !DILocation(line: 500, column: 32, scope: !729)
!736 = !DILocation(line: 500, column: 30, scope: !729)
!737 = !DILocalVariable(name: "r_tmp", scope: !729, file: !1, line: 501, type: !57)
!738 = !DILocation(line: 501, column: 18, scope: !729)
!739 = !DILocation(line: 501, column: 32, scope: !729)
!740 = !DILocation(line: 501, column: 39, scope: !729)
!741 = !DILocation(line: 501, column: 26, scope: !729)
!742 = !DILocalVariable(name: "result_re_tmp", scope: !729, file: !1, line: 505, type: !50)
!743 = !DILocation(line: 505, column: 19, scope: !729)
!744 = !DILocalVariable(name: "result_im_tmp", scope: !729, file: !1, line: 506, type: !50)
!745 = !DILocation(line: 506, column: 19, scope: !729)
!746 = !DILocalVariable(name: "stat_dilog", scope: !729, file: !1, line: 508, type: !65)
!747 = !DILocation(line: 508, column: 15, scope: !729)
!748 = !DILocation(line: 508, column: 47, scope: !729)
!749 = !DILocation(line: 508, column: 54, scope: !729)
!750 = !DILocation(line: 508, column: 61, scope: !729)
!751 = !DILocation(line: 508, column: 28, scope: !729)
!752 = !DILocalVariable(name: "lnz", scope: !729, file: !1, line: 510, type: !57)
!753 = !DILocation(line: 510, column: 18, scope: !729)
!754 = !DILocation(line: 510, column: 32, scope: !729)
!755 = !DILocation(line: 510, column: 28, scope: !729)
!756 = !DILocalVariable(name: "lnomz", scope: !729, file: !1, line: 511, type: !57)
!757 = !DILocation(line: 511, column: 18, scope: !729)
!758 = !DILocation(line: 511, column: 32, scope: !729)
!759 = !DILocation(line: 511, column: 28, scope: !729)
!760 = !DILocalVariable(name: "argz", scope: !729, file: !1, line: 512, type: !57)
!761 = !DILocation(line: 512, column: 18, scope: !729)
!762 = !DILocation(line: 512, column: 34, scope: !729)
!763 = !DILocation(line: 512, column: 37, scope: !729)
!764 = !DILocation(line: 512, column: 28, scope: !729)
!765 = !DILocalVariable(name: "argomz", scope: !729, file: !1, line: 513, type: !57)
!766 = !DILocation(line: 513, column: 18, scope: !729)
!767 = !DILocation(line: 513, column: 34, scope: !729)
!768 = !DILocation(line: 513, column: 41, scope: !729)
!769 = !DILocation(line: 513, column: 28, scope: !729)
!770 = !DILocation(line: 514, column: 36, scope: !729)
!771 = !DILocation(line: 514, column: 21, scope: !729)
!772 = !DILocation(line: 514, column: 40, scope: !729)
!773 = !DILocation(line: 514, column: 50, scope: !729)
!774 = !DILocation(line: 514, column: 54, scope: !729)
!775 = !DILocation(line: 514, column: 53, scope: !729)
!776 = !DILocation(line: 514, column: 48, scope: !729)
!777 = !DILocation(line: 514, column: 62, scope: !729)
!778 = !DILocation(line: 514, column: 67, scope: !729)
!779 = !DILocation(line: 514, column: 66, scope: !729)
!780 = !DILocation(line: 514, column: 60, scope: !729)
!781 = !DILocation(line: 514, column: 5, scope: !729)
!782 = !DILocation(line: 514, column: 14, scope: !729)
!783 = !DILocation(line: 514, column: 19, scope: !729)
!784 = !DILocation(line: 515, column: 36, scope: !729)
!785 = !DILocation(line: 515, column: 5, scope: !729)
!786 = !DILocation(line: 515, column: 14, scope: !729)
!787 = !DILocation(line: 515, column: 19, scope: !729)
!788 = !DILocation(line: 516, column: 60, scope: !729)
!789 = !DILocation(line: 516, column: 64, scope: !729)
!790 = !DILocation(line: 516, column: 63, scope: !729)
!791 = !DILocation(line: 516, column: 55, scope: !729)
!792 = !DILocation(line: 516, column: 53, scope: !729)
!793 = !DILocation(line: 516, column: 78, scope: !729)
!794 = !DILocation(line: 516, column: 83, scope: !729)
!795 = !DILocation(line: 516, column: 82, scope: !729)
!796 = !DILocation(line: 516, column: 73, scope: !797)
!797 = !DILexicalBlockFile(scope: !729, file: !1, discriminator: 1)
!798 = !DILocation(line: 516, column: 71, scope: !729)
!799 = !DILocation(line: 516, column: 44, scope: !729)
!800 = !DILocation(line: 516, column: 5, scope: !729)
!801 = !DILocation(line: 516, column: 14, scope: !729)
!802 = !DILocation(line: 516, column: 18, scope: !729)
!803 = !DILocation(line: 517, column: 36, scope: !729)
!804 = !DILocation(line: 517, column: 21, scope: !729)
!805 = !DILocation(line: 517, column: 42, scope: !729)
!806 = !DILocation(line: 517, column: 47, scope: !729)
!807 = !DILocation(line: 517, column: 46, scope: !729)
!808 = !DILocation(line: 517, column: 40, scope: !729)
!809 = !DILocation(line: 517, column: 55, scope: !729)
!810 = !DILocation(line: 517, column: 62, scope: !729)
!811 = !DILocation(line: 517, column: 61, scope: !729)
!812 = !DILocation(line: 517, column: 53, scope: !729)
!813 = !DILocation(line: 517, column: 5, scope: !729)
!814 = !DILocation(line: 517, column: 14, scope: !729)
!815 = !DILocation(line: 517, column: 19, scope: !729)
!816 = !DILocation(line: 518, column: 36, scope: !729)
!817 = !DILocation(line: 518, column: 5, scope: !729)
!818 = !DILocation(line: 518, column: 14, scope: !729)
!819 = !DILocation(line: 518, column: 19, scope: !729)
!820 = !DILocation(line: 519, column: 52, scope: !729)
!821 = !DILocation(line: 519, column: 57, scope: !729)
!822 = !DILocation(line: 519, column: 56, scope: !729)
!823 = !DILocation(line: 519, column: 47, scope: !729)
!824 = !DILocation(line: 519, column: 71, scope: !729)
!825 = !DILocation(line: 519, column: 78, scope: !729)
!826 = !DILocation(line: 519, column: 77, scope: !729)
!827 = !DILocation(line: 519, column: 66, scope: !797)
!828 = !DILocation(line: 519, column: 64, scope: !729)
!829 = !DILocation(line: 519, column: 44, scope: !729)
!830 = !DILocation(line: 519, column: 5, scope: !729)
!831 = !DILocation(line: 519, column: 14, scope: !729)
!832 = !DILocation(line: 519, column: 18, scope: !729)
!833 = !DILocation(line: 521, column: 12, scope: !729)
!834 = !DILocation(line: 521, column: 5, scope: !729)
!835 = !DILocation(line: 525, column: 31, scope: !836)
!836 = distinct !DILexicalBlock(scope: !725, file: !1, line: 524, column: 3)
!837 = !DILocation(line: 525, column: 34, scope: !836)
!838 = !DILocation(line: 525, column: 37, scope: !836)
!839 = !DILocation(line: 525, column: 40, scope: !836)
!840 = !DILocation(line: 525, column: 49, scope: !836)
!841 = !DILocation(line: 525, column: 12, scope: !836)
!842 = !DILocation(line: 525, column: 5, scope: !836)
!843 = !DILocation(line: 527, column: 1, scope: !67)
!844 = distinct !DISubprogram(name: "gsl_sf_complex_dilog_e", scope: !1, file: !1, line: 625, type: !500, isLocal: false, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !56)
!845 = !DILocalVariable(name: "r", arg: 1, scope: !844, file: !1, line: 626, type: !57)
!846 = !DILocation(line: 626, column: 16, scope: !844)
!847 = !DILocalVariable(name: "theta", arg: 2, scope: !844, file: !1, line: 627, type: !57)
!848 = !DILocation(line: 627, column: 16, scope: !844)
!849 = !DILocalVariable(name: "real_dl", arg: 3, scope: !844, file: !1, line: 628, type: !49)
!850 = !DILocation(line: 628, column: 19, scope: !844)
!851 = !DILocalVariable(name: "imag_dl", arg: 4, scope: !844, file: !1, line: 629, type: !49)
!852 = !DILocation(line: 629, column: 19, scope: !844)
!853 = !DILocalVariable(name: "cos_theta", scope: !844, file: !1, line: 632, type: !57)
!854 = !DILocation(line: 632, column: 16, scope: !844)
!855 = !DILocation(line: 632, column: 32, scope: !844)
!856 = !DILocation(line: 632, column: 28, scope: !844)
!857 = !DILocalVariable(name: "sin_theta", scope: !844, file: !1, line: 633, type: !57)
!858 = !DILocation(line: 633, column: 16, scope: !844)
!859 = !DILocation(line: 633, column: 32, scope: !844)
!860 = !DILocation(line: 633, column: 28, scope: !844)
!861 = !DILocalVariable(name: "x", scope: !844, file: !1, line: 634, type: !57)
!862 = !DILocation(line: 634, column: 16, scope: !844)
!863 = !DILocation(line: 634, column: 20, scope: !844)
!864 = !DILocation(line: 634, column: 24, scope: !844)
!865 = !DILocation(line: 634, column: 22, scope: !844)
!866 = !DILocalVariable(name: "y", scope: !844, file: !1, line: 635, type: !57)
!867 = !DILocation(line: 635, column: 16, scope: !844)
!868 = !DILocation(line: 635, column: 20, scope: !844)
!869 = !DILocation(line: 635, column: 24, scope: !844)
!870 = !DILocation(line: 635, column: 22, scope: !844)
!871 = !DILocation(line: 636, column: 36, scope: !844)
!872 = !DILocation(line: 636, column: 39, scope: !844)
!873 = !DILocation(line: 636, column: 42, scope: !844)
!874 = !DILocation(line: 636, column: 51, scope: !844)
!875 = !DILocation(line: 636, column: 10, scope: !844)
!876 = !DILocation(line: 636, column: 3, scope: !844)
!877 = distinct !DISubprogram(name: "gsl_sf_complex_spence_xy_e", scope: !1, file: !1, line: 641, type: !500, isLocal: false, isDefinition: true, scopeLine: 647, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !56)
!878 = !DILocalVariable(name: "x", arg: 1, scope: !877, file: !1, line: 642, type: !57)
!879 = !DILocation(line: 642, column: 16, scope: !877)
!880 = !DILocalVariable(name: "y", arg: 2, scope: !877, file: !1, line: 643, type: !57)
!881 = !DILocation(line: 643, column: 16, scope: !877)
!882 = !DILocalVariable(name: "real_sp", arg: 3, scope: !877, file: !1, line: 644, type: !49)
!883 = !DILocation(line: 644, column: 19, scope: !877)
!884 = !DILocalVariable(name: "imag_sp", arg: 4, scope: !877, file: !1, line: 645, type: !49)
!885 = !DILocation(line: 645, column: 19, scope: !877)
!886 = !DILocalVariable(name: "oms_x", scope: !877, file: !1, line: 648, type: !57)
!887 = !DILocation(line: 648, column: 16, scope: !877)
!888 = !DILocation(line: 648, column: 30, scope: !877)
!889 = !DILocation(line: 648, column: 28, scope: !877)
!890 = !DILocalVariable(name: "oms_y", scope: !877, file: !1, line: 649, type: !57)
!891 = !DILocation(line: 649, column: 16, scope: !877)
!892 = !DILocation(line: 649, column: 30, scope: !877)
!893 = !DILocation(line: 649, column: 28, scope: !877)
!894 = !DILocation(line: 650, column: 36, scope: !877)
!895 = !DILocation(line: 650, column: 43, scope: !877)
!896 = !DILocation(line: 650, column: 50, scope: !877)
!897 = !DILocation(line: 650, column: 59, scope: !877)
!898 = !DILocation(line: 650, column: 10, scope: !877)
!899 = !DILocation(line: 650, column: 3, scope: !877)
!900 = distinct !DISubprogram(name: "gsl_sf_dilog", scope: !1, file: !1, line: 659, type: !901, isLocal: false, isDefinition: true, scopeLine: 660, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !56)
!901 = !DISubroutineType(types: !902)
!902 = !{!43, !57}
!903 = !DILocalVariable(name: "x", arg: 1, scope: !900, file: !1, line: 659, type: !57)
!904 = !DILocation(line: 659, column: 34, scope: !900)
!905 = !DILocalVariable(name: "result", scope: !900, file: !1, line: 661, type: !50)
!906 = !DILocation(line: 661, column: 3, scope: !900)
!907 = !DILocalVariable(name: "status", scope: !900, file: !1, line: 661, type: !42)
!908 = !DILocation(line: 661, column: 3, scope: !909)
!909 = distinct !DILexicalBlock(scope: !900, file: !1, line: 661, column: 3)
!910 = !DILocation(line: 661, column: 3, scope: !911)
!911 = !DILexicalBlockFile(scope: !912, file: !1, discriminator: 1)
!912 = distinct !DILexicalBlock(scope: !909, file: !1, line: 661, column: 3)
!913 = distinct !{!913, !914}
!914 = !DILocation(line: 661, column: 3, scope: !912)
!915 = !DILocation(line: 661, column: 3, scope: !916)
!916 = !DILexicalBlockFile(scope: !917, file: !1, discriminator: 2)
!917 = distinct !DILexicalBlock(scope: !912, file: !1, line: 661, column: 3)
!918 = !DILocation(line: 661, column: 3, scope: !919)
!919 = !DILexicalBlockFile(scope: !912, file: !1, discriminator: 3)
!920 = !DILocation(line: 661, column: 3, scope: !921)
!921 = !DILexicalBlockFile(scope: !900, file: !1, discriminator: 4)
!922 = !DILocation(line: 662, column: 1, scope: !900)
!923 = !DILocalVariable(name: "x", arg: 1, scope: !46, file: !1, line: 108, type: !43)
!924 = !DILocation(line: 108, column: 23, scope: !46)
!925 = !DILocalVariable(name: "result", arg: 2, scope: !46, file: !1, line: 108, type: !49)
!926 = !DILocation(line: 108, column: 42, scope: !46)
!927 = !DILocalVariable(name: "stat_s3", scope: !46, file: !1, line: 110, type: !65)
!928 = !DILocation(line: 110, column: 13, scope: !46)
!929 = !DILocation(line: 110, column: 32, scope: !46)
!930 = !DILocation(line: 110, column: 35, scope: !46)
!931 = !DILocation(line: 110, column: 23, scope: !46)
!932 = !DILocalVariable(name: "t", scope: !46, file: !1, line: 111, type: !43)
!933 = !DILocation(line: 111, column: 10, scope: !46)
!934 = !DILocation(line: 112, column: 6, scope: !935)
!935 = distinct !DILexicalBlock(scope: !46, file: !1, line: 112, column: 6)
!936 = !DILocation(line: 112, column: 8, scope: !935)
!937 = !DILocation(line: 112, column: 6, scope: !46)
!938 = !DILocation(line: 113, column: 16, scope: !935)
!939 = !DILocation(line: 113, column: 14, scope: !935)
!940 = !DILocation(line: 113, column: 29, scope: !935)
!941 = !DILocation(line: 113, column: 28, scope: !935)
!942 = !DILocation(line: 113, column: 21, scope: !935)
!943 = !DILocation(line: 113, column: 19, scope: !935)
!944 = !DILocation(line: 113, column: 34, scope: !935)
!945 = !DILocation(line: 113, column: 32, scope: !935)
!946 = !DILocation(line: 113, column: 7, scope: !935)
!947 = !DILocation(line: 113, column: 5, scope: !935)
!948 = !DILocalVariable(name: "t68", scope: !949, file: !1, line: 122, type: !57)
!949 = distinct !DILexicalBlock(scope: !935, file: !1, line: 115, column: 3)
!950 = !DILocation(line: 122, column: 18, scope: !949)
!951 = !DILocation(line: 122, column: 29, scope: !949)
!952 = !DILocation(line: 122, column: 37, scope: !949)
!953 = !DILocation(line: 122, column: 38, scope: !949)
!954 = !DILocation(line: 122, column: 35, scope: !949)
!955 = !DILocation(line: 122, column: 30, scope: !949)
!956 = !DILocation(line: 122, column: 27, scope: !949)
!957 = !DILocalVariable(name: "t38", scope: !949, file: !1, line: 123, type: !57)
!958 = !DILocation(line: 123, column: 18, scope: !949)
!959 = !DILocation(line: 123, column: 29, scope: !949)
!960 = !DILocation(line: 123, column: 38, scope: !949)
!961 = !DILocation(line: 123, column: 47, scope: !949)
!962 = !DILocation(line: 123, column: 51, scope: !949)
!963 = !DILocation(line: 123, column: 49, scope: !949)
!964 = !DILocation(line: 123, column: 45, scope: !949)
!965 = !DILocation(line: 123, column: 40, scope: !949)
!966 = !DILocation(line: 123, column: 36, scope: !949)
!967 = !DILocation(line: 123, column: 31, scope: !949)
!968 = !DILocation(line: 123, column: 27, scope: !949)
!969 = !DILocation(line: 124, column: 10, scope: !949)
!970 = !DILocation(line: 124, column: 12, scope: !949)
!971 = !DILocation(line: 124, column: 28, scope: !949)
!972 = !DILocation(line: 124, column: 37, scope: !949)
!973 = !DILocation(line: 124, column: 39, scope: !949)
!974 = !DILocation(line: 124, column: 38, scope: !949)
!975 = !DILocation(line: 124, column: 35, scope: !949)
!976 = !DILocation(line: 124, column: 29, scope: !949)
!977 = !DILocation(line: 124, column: 26, scope: !949)
!978 = !DILocation(line: 124, column: 19, scope: !949)
!979 = !DILocation(line: 124, column: 7, scope: !949)
!980 = !DILocation(line: 126, column: 24, scope: !46)
!981 = !DILocation(line: 126, column: 22, scope: !46)
!982 = !DILocation(line: 126, column: 3, scope: !46)
!983 = !DILocation(line: 126, column: 11, scope: !46)
!984 = !DILocation(line: 126, column: 15, scope: !46)
!985 = !DILocation(line: 127, column: 47, scope: !46)
!986 = !DILocation(line: 127, column: 42, scope: !46)
!987 = !DILocation(line: 127, column: 40, scope: !46)
!988 = !DILocation(line: 127, column: 3, scope: !46)
!989 = !DILocation(line: 127, column: 11, scope: !46)
!990 = !DILocation(line: 127, column: 15, scope: !46)
!991 = !DILocation(line: 128, column: 10, scope: !46)
!992 = !DILocation(line: 128, column: 3, scope: !46)
!993 = distinct !DISubprogram(name: "dilog_series_1", scope: !1, file: !1, line: 38, type: !76, isLocal: true, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !56)
!994 = !DILocalVariable(name: "x", arg: 1, scope: !993, file: !1, line: 38, type: !57)
!995 = !DILocation(line: 38, column: 29, scope: !993)
!996 = !DILocalVariable(name: "result", arg: 2, scope: !993, file: !1, line: 38, type: !49)
!997 = !DILocation(line: 38, column: 48, scope: !993)
!998 = !DILocalVariable(name: "kmax", scope: !993, file: !1, line: 40, type: !65)
!999 = !DILocation(line: 40, column: 13, scope: !993)
!1000 = !DILocalVariable(name: "sum", scope: !993, file: !1, line: 41, type: !43)
!1001 = !DILocation(line: 41, column: 10, scope: !993)
!1002 = !DILocation(line: 41, column: 17, scope: !993)
!1003 = !DILocalVariable(name: "term", scope: !993, file: !1, line: 42, type: !43)
!1004 = !DILocation(line: 42, column: 10, scope: !993)
!1005 = !DILocation(line: 42, column: 17, scope: !993)
!1006 = !DILocalVariable(name: "k", scope: !993, file: !1, line: 43, type: !42)
!1007 = !DILocation(line: 43, column: 7, scope: !993)
!1008 = !DILocation(line: 44, column: 8, scope: !1009)
!1009 = distinct !DILexicalBlock(scope: !993, file: !1, line: 44, column: 3)
!1010 = !DILocation(line: 44, column: 7, scope: !1009)
!1011 = !DILocation(line: 44, column: 12, scope: !1012)
!1012 = !DILexicalBlockFile(scope: !1013, file: !1, discriminator: 1)
!1013 = distinct !DILexicalBlock(scope: !1009, file: !1, line: 44, column: 3)
!1014 = !DILocation(line: 44, column: 13, scope: !1012)
!1015 = !DILocation(line: 44, column: 3, scope: !1012)
!1016 = !DILocalVariable(name: "rk", scope: !1017, file: !1, line: 45, type: !57)
!1017 = distinct !DILexicalBlock(scope: !1013, file: !1, line: 44, column: 25)
!1018 = !DILocation(line: 45, column: 18, scope: !1017)
!1019 = !DILocation(line: 45, column: 24, scope: !1017)
!1020 = !DILocation(line: 45, column: 25, scope: !1017)
!1021 = !DILocation(line: 45, column: 31, scope: !1017)
!1022 = !DILocation(line: 45, column: 30, scope: !1017)
!1023 = !DILocation(line: 46, column: 13, scope: !1017)
!1024 = !DILocation(line: 46, column: 10, scope: !1017)
!1025 = !DILocation(line: 47, column: 13, scope: !1017)
!1026 = !DILocation(line: 47, column: 16, scope: !1017)
!1027 = !DILocation(line: 47, column: 15, scope: !1017)
!1028 = !DILocation(line: 47, column: 10, scope: !1017)
!1029 = !DILocation(line: 48, column: 12, scope: !1017)
!1030 = !DILocation(line: 48, column: 9, scope: !1017)
!1031 = !DILocation(line: 49, column: 13, scope: !1032)
!1032 = distinct !DILexicalBlock(scope: !1017, file: !1, line: 49, column: 8)
!1033 = !DILocation(line: 49, column: 18, scope: !1032)
!1034 = !DILocation(line: 49, column: 17, scope: !1032)
!1035 = !DILocation(line: 49, column: 8, scope: !1032)
!1036 = !DILocation(line: 49, column: 23, scope: !1032)
!1037 = !DILocation(line: 49, column: 8, scope: !1017)
!1038 = !DILocation(line: 49, column: 42, scope: !1039)
!1039 = !DILexicalBlockFile(scope: !1032, file: !1, discriminator: 1)
!1040 = !DILocation(line: 50, column: 3, scope: !1017)
!1041 = !DILocation(line: 44, column: 21, scope: !1042)
!1042 = !DILexicalBlockFile(scope: !1013, file: !1, discriminator: 2)
!1043 = !DILocation(line: 44, column: 3, scope: !1042)
!1044 = distinct !{!1044, !1045}
!1045 = !DILocation(line: 44, column: 3, scope: !993)
!1046 = !DILocation(line: 52, column: 18, scope: !993)
!1047 = !DILocation(line: 52, column: 3, scope: !993)
!1048 = !DILocation(line: 52, column: 11, scope: !993)
!1049 = !DILocation(line: 52, column: 16, scope: !993)
!1050 = !DILocation(line: 53, column: 29, scope: !993)
!1051 = !DILocation(line: 53, column: 24, scope: !993)
!1052 = !DILocation(line: 53, column: 22, scope: !993)
!1053 = !DILocation(line: 53, column: 3, scope: !993)
!1054 = !DILocation(line: 53, column: 11, scope: !993)
!1055 = !DILocation(line: 53, column: 16, scope: !993)
!1056 = !DILocation(line: 54, column: 47, scope: !993)
!1057 = !DILocation(line: 54, column: 55, scope: !993)
!1058 = !DILocation(line: 54, column: 42, scope: !993)
!1059 = !DILocation(line: 54, column: 40, scope: !993)
!1060 = !DILocation(line: 54, column: 3, scope: !993)
!1061 = !DILocation(line: 54, column: 11, scope: !993)
!1062 = !DILocation(line: 54, column: 15, scope: !993)
!1063 = !DILocation(line: 56, column: 6, scope: !1064)
!1064 = distinct !DILexicalBlock(scope: !993, file: !1, line: 56, column: 6)
!1065 = !DILocation(line: 56, column: 8, scope: !1064)
!1066 = !DILocation(line: 56, column: 6, scope: !993)
!1067 = !DILocation(line: 57, column: 5, scope: !1064)
!1068 = distinct !{!1068, !1067}
!1069 = !DILocation(line: 57, column: 5, scope: !1070)
!1070 = !DILexicalBlockFile(scope: !1071, file: !1, discriminator: 1)
!1071 = distinct !DILexicalBlock(scope: !1064, file: !1, line: 57, column: 5)
!1072 = !DILocation(line: 57, column: 5, scope: !1073)
!1073 = !DILexicalBlockFile(scope: !1071, file: !1, discriminator: 2)
!1074 = !DILocation(line: 59, column: 5, scope: !1064)
!1075 = !DILocation(line: 60, column: 1, scope: !993)
!1076 = !DILocalVariable(name: "r", arg: 1, scope: !64, file: !1, line: 72, type: !43)
!1077 = !DILocation(line: 72, column: 17, scope: !64)
!1078 = !DILocalVariable(name: "result", arg: 2, scope: !64, file: !1, line: 72, type: !49)
!1079 = !DILocation(line: 72, column: 36, scope: !64)
!1080 = !DILocalVariable(name: "rk", scope: !64, file: !1, line: 75, type: !43)
!1081 = !DILocation(line: 75, column: 10, scope: !64)
!1082 = !DILocation(line: 75, column: 15, scope: !64)
!1083 = !DILocalVariable(name: "sum", scope: !64, file: !1, line: 76, type: !43)
!1084 = !DILocation(line: 76, column: 10, scope: !64)
!1085 = !DILocation(line: 76, column: 22, scope: !64)
!1086 = !DILocation(line: 76, column: 20, scope: !64)
!1087 = !DILocalVariable(name: "k", scope: !64, file: !1, line: 77, type: !42)
!1088 = !DILocation(line: 77, column: 7, scope: !64)
!1089 = !DILocation(line: 78, column: 8, scope: !1090)
!1090 = distinct !DILexicalBlock(scope: !64, file: !1, line: 78, column: 3)
!1091 = !DILocation(line: 78, column: 7, scope: !1090)
!1092 = !DILocation(line: 78, column: 12, scope: !1093)
!1093 = !DILexicalBlockFile(scope: !1094, file: !1, discriminator: 1)
!1094 = distinct !DILexicalBlock(scope: !1090, file: !1, line: 78, column: 3)
!1095 = !DILocation(line: 78, column: 13, scope: !1093)
!1096 = !DILocation(line: 78, column: 3, scope: !1093)
!1097 = !DILocalVariable(name: "ds", scope: !1098, file: !1, line: 80, type: !43)
!1098 = distinct !DILexicalBlock(scope: !1094, file: !1, line: 79, column: 3)
!1099 = !DILocation(line: 80, column: 12, scope: !1098)
!1100 = !DILocation(line: 81, column: 11, scope: !1098)
!1101 = !DILocation(line: 81, column: 8, scope: !1098)
!1102 = !DILocation(line: 82, column: 10, scope: !1098)
!1103 = !DILocation(line: 82, column: 14, scope: !1098)
!1104 = !DILocation(line: 82, column: 16, scope: !1098)
!1105 = !DILocation(line: 82, column: 15, scope: !1098)
!1106 = !DILocation(line: 82, column: 19, scope: !1098)
!1107 = !DILocation(line: 82, column: 20, scope: !1098)
!1108 = !DILocation(line: 82, column: 17, scope: !1098)
!1109 = !DILocation(line: 82, column: 12, scope: !1098)
!1110 = !DILocation(line: 82, column: 8, scope: !1098)
!1111 = !DILocation(line: 83, column: 12, scope: !1098)
!1112 = !DILocation(line: 83, column: 9, scope: !1098)
!1113 = !DILocation(line: 84, column: 3, scope: !1098)
!1114 = !DILocation(line: 78, column: 19, scope: !1115)
!1115 = !DILexicalBlockFile(scope: !1094, file: !1, discriminator: 2)
!1116 = !DILocation(line: 78, column: 3, scope: !1115)
!1117 = distinct !{!1117, !1118}
!1118 = !DILocation(line: 78, column: 3, scope: !64)
!1119 = !DILocation(line: 85, column: 3, scope: !64)
!1120 = !DILocation(line: 85, column: 9, scope: !1121)
!1121 = !DILexicalBlockFile(scope: !1122, file: !1, discriminator: 1)
!1122 = distinct !DILexicalBlock(scope: !1123, file: !1, line: 85, column: 3)
!1123 = distinct !DILexicalBlock(scope: !64, file: !1, line: 85, column: 3)
!1124 = !DILocation(line: 85, column: 10, scope: !1121)
!1125 = !DILocation(line: 85, column: 3, scope: !1121)
!1126 = !DILocalVariable(name: "ds", scope: !1127, file: !1, line: 87, type: !43)
!1127 = distinct !DILexicalBlock(scope: !1122, file: !1, line: 86, column: 3)
!1128 = !DILocation(line: 87, column: 12, scope: !1127)
!1129 = !DILocation(line: 88, column: 11, scope: !1127)
!1130 = !DILocation(line: 88, column: 8, scope: !1127)
!1131 = !DILocation(line: 89, column: 10, scope: !1127)
!1132 = !DILocation(line: 89, column: 14, scope: !1127)
!1133 = !DILocation(line: 89, column: 16, scope: !1127)
!1134 = !DILocation(line: 89, column: 15, scope: !1127)
!1135 = !DILocation(line: 89, column: 19, scope: !1127)
!1136 = !DILocation(line: 89, column: 20, scope: !1127)
!1137 = !DILocation(line: 89, column: 17, scope: !1127)
!1138 = !DILocation(line: 89, column: 12, scope: !1127)
!1139 = !DILocation(line: 89, column: 8, scope: !1127)
!1140 = !DILocation(line: 90, column: 12, scope: !1127)
!1141 = !DILocation(line: 90, column: 9, scope: !1127)
!1142 = !DILocation(line: 91, column: 13, scope: !1143)
!1143 = distinct !DILexicalBlock(scope: !1127, file: !1, line: 91, column: 8)
!1144 = !DILocation(line: 91, column: 16, scope: !1143)
!1145 = !DILocation(line: 91, column: 15, scope: !1143)
!1146 = !DILocation(line: 91, column: 8, scope: !1143)
!1147 = !DILocation(line: 91, column: 21, scope: !1143)
!1148 = !DILocation(line: 91, column: 8, scope: !1127)
!1149 = !DILocation(line: 91, column: 44, scope: !1150)
!1150 = !DILexicalBlockFile(scope: !1143, file: !1, discriminator: 1)
!1151 = !DILocation(line: 92, column: 3, scope: !1127)
!1152 = !DILocation(line: 85, column: 18, scope: !1153)
!1153 = !DILexicalBlockFile(scope: !1122, file: !1, discriminator: 2)
!1154 = !DILocation(line: 85, column: 3, scope: !1153)
!1155 = distinct !{!1155, !1119}
!1156 = !DILocation(line: 94, column: 17, scope: !64)
!1157 = !DILocation(line: 94, column: 3, scope: !64)
!1158 = !DILocation(line: 94, column: 11, scope: !64)
!1159 = !DILocation(line: 94, column: 15, scope: !64)
!1160 = !DILocation(line: 95, column: 53, scope: !64)
!1161 = !DILocation(line: 95, column: 48, scope: !64)
!1162 = !DILocation(line: 95, column: 46, scope: !64)
!1163 = !DILocation(line: 95, column: 3, scope: !64)
!1164 = !DILocation(line: 95, column: 11, scope: !64)
!1165 = !DILocation(line: 95, column: 15, scope: !64)
!1166 = !DILocation(line: 97, column: 3, scope: !64)
!1167 = distinct !DISubprogram(name: "dilogc_fundamental", scope: !1, file: !1, line: 468, type: !1168, isLocal: true, isDefinition: true, scopeLine: 469, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !56)
!1168 = !DISubroutineType(types: !1169)
!1169 = !{!42, !43, !43, !43, !49, !49}
!1170 = !DILocalVariable(name: "r", arg: 1, scope: !1167, file: !1, line: 468, type: !43)
!1171 = !DILocation(line: 468, column: 27, scope: !1167)
!1172 = !DILocalVariable(name: "x", arg: 2, scope: !1167, file: !1, line: 468, type: !43)
!1173 = !DILocation(line: 468, column: 37, scope: !1167)
!1174 = !DILocalVariable(name: "y", arg: 3, scope: !1167, file: !1, line: 468, type: !43)
!1175 = !DILocation(line: 468, column: 47, scope: !1167)
!1176 = !DILocalVariable(name: "real_dl", arg: 4, scope: !1167, file: !1, line: 468, type: !49)
!1177 = !DILocation(line: 468, column: 66, scope: !1167)
!1178 = !DILocalVariable(name: "imag_dl", arg: 5, scope: !1167, file: !1, line: 468, type: !49)
!1179 = !DILocation(line: 468, column: 91, scope: !1167)
!1180 = !DILocation(line: 470, column: 6, scope: !1181)
!1181 = distinct !DILexicalBlock(scope: !1167, file: !1, line: 470, column: 6)
!1182 = !DILocation(line: 470, column: 8, scope: !1181)
!1183 = !DILocation(line: 470, column: 6, scope: !1167)
!1184 = !DILocation(line: 471, column: 28, scope: !1181)
!1185 = !DILocation(line: 471, column: 31, scope: !1181)
!1186 = !DILocation(line: 471, column: 34, scope: !1181)
!1187 = !DILocation(line: 471, column: 37, scope: !1181)
!1188 = !DILocation(line: 471, column: 46, scope: !1181)
!1189 = !DILocation(line: 471, column: 12, scope: !1181)
!1190 = !DILocation(line: 471, column: 5, scope: !1181)
!1191 = !DILocation(line: 472, column: 11, scope: !1192)
!1192 = distinct !DILexicalBlock(scope: !1181, file: !1, line: 472, column: 11)
!1193 = !DILocation(line: 472, column: 13, scope: !1192)
!1194 = !DILocation(line: 472, column: 11, scope: !1181)
!1195 = !DILocation(line: 473, column: 28, scope: !1192)
!1196 = !DILocation(line: 473, column: 31, scope: !1192)
!1197 = !DILocation(line: 473, column: 34, scope: !1192)
!1198 = !DILocation(line: 473, column: 37, scope: !1192)
!1199 = !DILocation(line: 473, column: 46, scope: !1192)
!1200 = !DILocation(line: 473, column: 12, scope: !1192)
!1201 = !DILocation(line: 473, column: 5, scope: !1192)
!1202 = !DILocation(line: 475, column: 28, scope: !1192)
!1203 = !DILocation(line: 475, column: 31, scope: !1192)
!1204 = !DILocation(line: 475, column: 34, scope: !1192)
!1205 = !DILocation(line: 475, column: 37, scope: !1192)
!1206 = !DILocation(line: 475, column: 46, scope: !1192)
!1207 = !DILocation(line: 475, column: 12, scope: !1192)
!1208 = !DILocation(line: 475, column: 5, scope: !1192)
!1209 = !DILocation(line: 476, column: 1, scope: !1167)
!1210 = distinct !DISubprogram(name: "dilogc_series_3", scope: !1, file: !1, line: 389, type: !1211, isLocal: true, isDefinition: true, scopeLine: 396, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !56)
!1211 = !DISubroutineType(types: !1212)
!1212 = !{!42, !57, !57, !57, !49, !49}
!1213 = !DILocalVariable(name: "r", arg: 1, scope: !1210, file: !1, line: 390, type: !57)
!1214 = !DILocation(line: 390, column: 16, scope: !1210)
!1215 = !DILocalVariable(name: "x", arg: 2, scope: !1210, file: !1, line: 391, type: !57)
!1216 = !DILocation(line: 391, column: 16, scope: !1210)
!1217 = !DILocalVariable(name: "y", arg: 3, scope: !1210, file: !1, line: 392, type: !57)
!1218 = !DILocation(line: 392, column: 16, scope: !1210)
!1219 = !DILocalVariable(name: "real_result", arg: 4, scope: !1210, file: !1, line: 393, type: !49)
!1220 = !DILocation(line: 393, column: 19, scope: !1210)
!1221 = !DILocalVariable(name: "imag_result", arg: 5, scope: !1210, file: !1, line: 394, type: !49)
!1222 = !DILocation(line: 394, column: 19, scope: !1210)
!1223 = !DILocalVariable(name: "theta", scope: !1210, file: !1, line: 397, type: !57)
!1224 = !DILocation(line: 397, column: 16, scope: !1210)
!1225 = !DILocation(line: 397, column: 30, scope: !1210)
!1226 = !DILocation(line: 397, column: 33, scope: !1210)
!1227 = !DILocation(line: 397, column: 24, scope: !1210)
!1228 = !DILocalVariable(name: "cos_theta", scope: !1210, file: !1, line: 398, type: !57)
!1229 = !DILocation(line: 398, column: 16, scope: !1210)
!1230 = !DILocation(line: 398, column: 28, scope: !1210)
!1231 = !DILocation(line: 398, column: 30, scope: !1210)
!1232 = !DILocation(line: 398, column: 29, scope: !1210)
!1233 = !DILocalVariable(name: "sin_theta", scope: !1210, file: !1, line: 399, type: !57)
!1234 = !DILocation(line: 399, column: 16, scope: !1210)
!1235 = !DILocation(line: 399, column: 28, scope: !1210)
!1236 = !DILocation(line: 399, column: 30, scope: !1210)
!1237 = !DILocation(line: 399, column: 29, scope: !1210)
!1238 = !DILocalVariable(name: "a", scope: !1210, file: !1, line: 400, type: !57)
!1239 = !DILocation(line: 400, column: 16, scope: !1210)
!1240 = !DILocation(line: 400, column: 24, scope: !1210)
!1241 = !DILocation(line: 400, column: 20, scope: !1210)
!1242 = !DILocalVariable(name: "omc", scope: !1210, file: !1, line: 401, type: !57)
!1243 = !DILocation(line: 401, column: 16, scope: !1210)
!1244 = !DILocation(line: 401, column: 28, scope: !1210)
!1245 = !DILocation(line: 401, column: 26, scope: !1210)
!1246 = !DILocalVariable(name: "omc2", scope: !1210, file: !1, line: 402, type: !57)
!1247 = !DILocation(line: 402, column: 16, scope: !1210)
!1248 = !DILocation(line: 402, column: 23, scope: !1210)
!1249 = !DILocation(line: 402, column: 27, scope: !1210)
!1250 = !DILocation(line: 402, column: 26, scope: !1210)
!1251 = !DILocalVariable(name: "H_re", scope: !1210, file: !1, line: 403, type: !1252)
!1252 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 448, align: 64, elements: !1253)
!1253 = !{!1254}
!1254 = !DISubrange(count: 7)
!1255 = !DILocation(line: 403, column: 10, scope: !1210)
!1256 = !DILocalVariable(name: "H_im", scope: !1210, file: !1, line: 404, type: !1252)
!1257 = !DILocation(line: 404, column: 10, scope: !1210)
!1258 = !DILocalVariable(name: "an", scope: !1210, file: !1, line: 405, type: !43)
!1259 = !DILocation(line: 405, column: 10, scope: !1210)
!1260 = !DILocalVariable(name: "nfact", scope: !1210, file: !1, line: 405, type: !43)
!1261 = !DILocation(line: 405, column: 14, scope: !1210)
!1262 = !DILocalVariable(name: "sum_re", scope: !1210, file: !1, line: 406, type: !43)
!1263 = !DILocation(line: 406, column: 10, scope: !1210)
!1264 = !DILocalVariable(name: "sum_im", scope: !1210, file: !1, line: 406, type: !43)
!1265 = !DILocation(line: 406, column: 18, scope: !1210)
!1266 = !DILocalVariable(name: "Him0", scope: !1210, file: !1, line: 407, type: !50)
!1267 = !DILocation(line: 407, column: 17, scope: !1210)
!1268 = !DILocalVariable(name: "n", scope: !1210, file: !1, line: 408, type: !42)
!1269 = !DILocation(line: 408, column: 7, scope: !1210)
!1270 = !DILocation(line: 410, column: 35, scope: !1210)
!1271 = !DILocation(line: 410, column: 41, scope: !1210)
!1272 = !DILocation(line: 410, column: 40, scope: !1210)
!1273 = !DILocation(line: 410, column: 63, scope: !1210)
!1274 = !DILocation(line: 410, column: 58, scope: !1210)
!1275 = !DILocation(line: 410, column: 57, scope: !1210)
!1276 = !DILocation(line: 410, column: 47, scope: !1210)
!1277 = !DILocation(line: 410, column: 33, scope: !1210)
!1278 = !DILocation(line: 410, column: 27, scope: !1210)
!1279 = !DILocation(line: 410, column: 3, scope: !1210)
!1280 = !DILocation(line: 410, column: 11, scope: !1210)
!1281 = !DILocation(line: 411, column: 20, scope: !1210)
!1282 = !DILocation(line: 411, column: 3, scope: !1210)
!1283 = !DILocation(line: 412, column: 18, scope: !1210)
!1284 = !DILocation(line: 412, column: 3, scope: !1210)
!1285 = !DILocation(line: 412, column: 11, scope: !1210)
!1286 = !DILocation(line: 414, column: 26, scope: !1210)
!1287 = !DILocation(line: 414, column: 25, scope: !1210)
!1288 = !DILocation(line: 414, column: 18, scope: !1210)
!1289 = !DILocation(line: 414, column: 17, scope: !1210)
!1290 = !DILocation(line: 414, column: 3, scope: !1210)
!1291 = !DILocation(line: 414, column: 11, scope: !1210)
!1292 = !DILocation(line: 415, column: 21, scope: !1210)
!1293 = !DILocation(line: 415, column: 20, scope: !1210)
!1294 = !DILocation(line: 415, column: 32, scope: !1210)
!1295 = !DILocation(line: 415, column: 14, scope: !1210)
!1296 = !DILocation(line: 415, column: 13, scope: !1210)
!1297 = !DILocation(line: 415, column: 3, scope: !1210)
!1298 = !DILocation(line: 415, column: 11, scope: !1210)
!1299 = !DILocation(line: 417, column: 3, scope: !1210)
!1300 = !DILocation(line: 417, column: 11, scope: !1210)
!1301 = !DILocation(line: 418, column: 19, scope: !1210)
!1302 = !DILocation(line: 418, column: 17, scope: !1210)
!1303 = !DILocation(line: 418, column: 29, scope: !1210)
!1304 = !DILocation(line: 418, column: 28, scope: !1210)
!1305 = !DILocation(line: 418, column: 3, scope: !1210)
!1306 = !DILocation(line: 418, column: 11, scope: !1210)
!1307 = !DILocation(line: 420, column: 18, scope: !1210)
!1308 = !DILocation(line: 420, column: 17, scope: !1210)
!1309 = !DILocation(line: 420, column: 3, scope: !1210)
!1310 = !DILocation(line: 420, column: 11, scope: !1210)
!1311 = !DILocation(line: 421, column: 3, scope: !1210)
!1312 = !DILocation(line: 421, column: 11, scope: !1210)
!1313 = !DILocation(line: 423, column: 3, scope: !1210)
!1314 = !DILocation(line: 423, column: 11, scope: !1210)
!1315 = !DILocation(line: 424, column: 18, scope: !1210)
!1316 = !DILocation(line: 424, column: 17, scope: !1210)
!1317 = !DILocation(line: 424, column: 28, scope: !1210)
!1318 = !DILocation(line: 424, column: 27, scope: !1210)
!1319 = !DILocation(line: 424, column: 3, scope: !1210)
!1320 = !DILocation(line: 424, column: 11, scope: !1210)
!1321 = !DILocation(line: 426, column: 26, scope: !1210)
!1322 = !DILocation(line: 426, column: 24, scope: !1210)
!1323 = !DILocation(line: 426, column: 17, scope: !1210)
!1324 = !DILocation(line: 426, column: 37, scope: !1210)
!1325 = !DILocation(line: 426, column: 36, scope: !1210)
!1326 = !DILocation(line: 426, column: 3, scope: !1210)
!1327 = !DILocation(line: 426, column: 11, scope: !1210)
!1328 = !DILocation(line: 427, column: 3, scope: !1210)
!1329 = !DILocation(line: 427, column: 11, scope: !1210)
!1330 = !DILocation(line: 429, column: 3, scope: !1210)
!1331 = !DILocation(line: 429, column: 11, scope: !1210)
!1332 = !DILocation(line: 430, column: 19, scope: !1210)
!1333 = !DILocation(line: 430, column: 17, scope: !1210)
!1334 = !DILocation(line: 430, column: 30, scope: !1210)
!1335 = !DILocation(line: 430, column: 35, scope: !1210)
!1336 = !DILocation(line: 430, column: 34, scope: !1210)
!1337 = !DILocation(line: 430, column: 40, scope: !1210)
!1338 = !DILocation(line: 430, column: 39, scope: !1210)
!1339 = !DILocation(line: 430, column: 28, scope: !1210)
!1340 = !DILocation(line: 430, column: 52, scope: !1210)
!1341 = !DILocation(line: 430, column: 51, scope: !1210)
!1342 = !DILocation(line: 430, column: 58, scope: !1210)
!1343 = !DILocation(line: 430, column: 68, scope: !1210)
!1344 = !DILocation(line: 430, column: 67, scope: !1210)
!1345 = !DILocation(line: 430, column: 85, scope: !1210)
!1346 = !DILocation(line: 430, column: 83, scope: !1210)
!1347 = !DILocation(line: 430, column: 77, scope: !1210)
!1348 = !DILocation(line: 430, column: 56, scope: !1210)
!1349 = !DILocation(line: 430, column: 45, scope: !1210)
!1350 = !DILocation(line: 430, column: 3, scope: !1210)
!1351 = !DILocation(line: 430, column: 11, scope: !1210)
!1352 = !DILocation(line: 432, column: 12, scope: !1210)
!1353 = !DILocation(line: 432, column: 10, scope: !1210)
!1354 = !DILocation(line: 433, column: 12, scope: !1210)
!1355 = !DILocation(line: 433, column: 10, scope: !1210)
!1356 = !DILocation(line: 434, column: 6, scope: !1210)
!1357 = !DILocation(line: 435, column: 9, scope: !1210)
!1358 = !DILocation(line: 436, column: 8, scope: !1359)
!1359 = distinct !DILexicalBlock(scope: !1210, file: !1, line: 436, column: 3)
!1360 = !DILocation(line: 436, column: 7, scope: !1359)
!1361 = !DILocation(line: 436, column: 12, scope: !1362)
!1362 = !DILexicalBlockFile(scope: !1363, file: !1, discriminator: 1)
!1363 = distinct !DILexicalBlock(scope: !1359, file: !1, line: 436, column: 3)
!1364 = !DILocation(line: 436, column: 13, scope: !1362)
!1365 = !DILocation(line: 436, column: 3, scope: !1362)
!1366 = !DILocalVariable(name: "t", scope: !1367, file: !1, line: 437, type: !43)
!1367 = distinct !DILexicalBlock(scope: !1363, file: !1, line: 436, column: 23)
!1368 = !DILocation(line: 437, column: 12, scope: !1367)
!1369 = !DILocation(line: 438, column: 11, scope: !1367)
!1370 = !DILocation(line: 438, column: 8, scope: !1367)
!1371 = !DILocation(line: 439, column: 14, scope: !1367)
!1372 = !DILocation(line: 439, column: 11, scope: !1367)
!1373 = !DILocation(line: 440, column: 9, scope: !1367)
!1374 = !DILocation(line: 440, column: 12, scope: !1367)
!1375 = !DILocation(line: 440, column: 11, scope: !1367)
!1376 = !DILocation(line: 440, column: 7, scope: !1367)
!1377 = !DILocation(line: 441, column: 15, scope: !1367)
!1378 = !DILocation(line: 441, column: 24, scope: !1367)
!1379 = !DILocation(line: 441, column: 19, scope: !1367)
!1380 = !DILocation(line: 441, column: 17, scope: !1367)
!1381 = !DILocation(line: 441, column: 12, scope: !1367)
!1382 = !DILocation(line: 442, column: 15, scope: !1367)
!1383 = !DILocation(line: 442, column: 24, scope: !1367)
!1384 = !DILocation(line: 442, column: 19, scope: !1367)
!1385 = !DILocation(line: 442, column: 17, scope: !1367)
!1386 = !DILocation(line: 442, column: 12, scope: !1367)
!1387 = !DILocation(line: 443, column: 3, scope: !1367)
!1388 = !DILocation(line: 436, column: 19, scope: !1389)
!1389 = !DILexicalBlockFile(scope: !1363, file: !1, discriminator: 2)
!1390 = !DILocation(line: 436, column: 3, scope: !1389)
!1391 = distinct !{!1391, !1392}
!1392 = !DILocation(line: 436, column: 3, scope: !1210)
!1393 = !DILocation(line: 445, column: 22, scope: !1210)
!1394 = !DILocation(line: 445, column: 3, scope: !1210)
!1395 = !DILocation(line: 445, column: 16, scope: !1210)
!1396 = !DILocation(line: 445, column: 20, scope: !1210)
!1397 = !DILocation(line: 446, column: 57, scope: !1210)
!1398 = !DILocation(line: 446, column: 52, scope: !1210)
!1399 = !DILocation(line: 446, column: 50, scope: !1210)
!1400 = !DILocation(line: 446, column: 72, scope: !1210)
!1401 = !DILocation(line: 446, column: 75, scope: !1210)
!1402 = !DILocation(line: 446, column: 74, scope: !1210)
!1403 = !DILocation(line: 446, column: 67, scope: !1404)
!1404 = !DILexicalBlockFile(scope: !1210, file: !1, discriminator: 1)
!1405 = !DILocation(line: 446, column: 65, scope: !1210)
!1406 = !DILocation(line: 446, column: 3, scope: !1210)
!1407 = !DILocation(line: 446, column: 16, scope: !1210)
!1408 = !DILocation(line: 446, column: 20, scope: !1210)
!1409 = !DILocation(line: 447, column: 22, scope: !1210)
!1410 = !DILocation(line: 447, column: 3, scope: !1210)
!1411 = !DILocation(line: 447, column: 16, scope: !1210)
!1412 = !DILocation(line: 447, column: 20, scope: !1210)
!1413 = !DILocation(line: 448, column: 57, scope: !1210)
!1414 = !DILocation(line: 448, column: 52, scope: !1210)
!1415 = !DILocation(line: 448, column: 50, scope: !1210)
!1416 = !DILocation(line: 448, column: 72, scope: !1210)
!1417 = !DILocation(line: 448, column: 65, scope: !1210)
!1418 = !DILocation(line: 448, column: 83, scope: !1210)
!1419 = !DILocation(line: 448, column: 86, scope: !1210)
!1420 = !DILocation(line: 448, column: 85, scope: !1210)
!1421 = !DILocation(line: 448, column: 78, scope: !1404)
!1422 = !DILocation(line: 448, column: 76, scope: !1210)
!1423 = !DILocation(line: 448, column: 3, scope: !1210)
!1424 = !DILocation(line: 448, column: 16, scope: !1210)
!1425 = !DILocation(line: 448, column: 20, scope: !1210)
!1426 = !DILocation(line: 450, column: 3, scope: !1210)
!1427 = distinct !DISubprogram(name: "dilogc_series_2", scope: !1, file: !1, line: 328, type: !1211, isLocal: true, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !56)
!1428 = !DILocalVariable(name: "r", arg: 1, scope: !1427, file: !1, line: 329, type: !57)
!1429 = !DILocation(line: 329, column: 16, scope: !1427)
!1430 = !DILocalVariable(name: "x", arg: 2, scope: !1427, file: !1, line: 330, type: !57)
!1431 = !DILocation(line: 330, column: 16, scope: !1427)
!1432 = !DILocalVariable(name: "y", arg: 3, scope: !1427, file: !1, line: 331, type: !57)
!1433 = !DILocation(line: 331, column: 16, scope: !1427)
!1434 = !DILocalVariable(name: "real_dl", arg: 4, scope: !1427, file: !1, line: 332, type: !49)
!1435 = !DILocation(line: 332, column: 19, scope: !1427)
!1436 = !DILocalVariable(name: "imag_dl", arg: 5, scope: !1427, file: !1, line: 333, type: !49)
!1437 = !DILocation(line: 333, column: 19, scope: !1427)
!1438 = !DILocation(line: 336, column: 6, scope: !1439)
!1439 = distinct !DILexicalBlock(scope: !1427, file: !1, line: 336, column: 6)
!1440 = !DILocation(line: 336, column: 8, scope: !1439)
!1441 = !DILocation(line: 336, column: 6, scope: !1427)
!1442 = !DILocation(line: 338, column: 5, scope: !1443)
!1443 = distinct !DILexicalBlock(scope: !1439, file: !1, line: 337, column: 3)
!1444 = !DILocation(line: 338, column: 14, scope: !1443)
!1445 = !DILocation(line: 338, column: 18, scope: !1443)
!1446 = !DILocation(line: 339, column: 5, scope: !1443)
!1447 = !DILocation(line: 339, column: 14, scope: !1443)
!1448 = !DILocation(line: 339, column: 18, scope: !1443)
!1449 = !DILocation(line: 340, column: 5, scope: !1443)
!1450 = !DILocation(line: 340, column: 14, scope: !1443)
!1451 = !DILocation(line: 340, column: 18, scope: !1443)
!1452 = !DILocation(line: 341, column: 5, scope: !1443)
!1453 = !DILocation(line: 341, column: 14, scope: !1443)
!1454 = !DILocation(line: 341, column: 18, scope: !1443)
!1455 = !DILocation(line: 342, column: 5, scope: !1443)
!1456 = !DILocalVariable(name: "sum_re", scope: !1457, file: !1, line: 346, type: !50)
!1457 = distinct !DILexicalBlock(scope: !1439, file: !1, line: 345, column: 3)
!1458 = !DILocation(line: 346, column: 19, scope: !1457)
!1459 = !DILocalVariable(name: "sum_im", scope: !1457, file: !1, line: 347, type: !50)
!1460 = !DILocation(line: 347, column: 19, scope: !1457)
!1461 = !DILocalVariable(name: "stat_s3", scope: !1457, file: !1, line: 348, type: !65)
!1462 = !DILocation(line: 348, column: 15, scope: !1457)
!1463 = !DILocation(line: 348, column: 36, scope: !1457)
!1464 = !DILocation(line: 348, column: 39, scope: !1457)
!1465 = !DILocation(line: 348, column: 42, scope: !1457)
!1466 = !DILocation(line: 348, column: 25, scope: !1457)
!1467 = !DILocalVariable(name: "ln_omz_r", scope: !1457, file: !1, line: 351, type: !50)
!1468 = !DILocation(line: 351, column: 19, scope: !1457)
!1469 = !DILocalVariable(name: "ln_omz_theta", scope: !1457, file: !1, line: 352, type: !50)
!1470 = !DILocation(line: 352, column: 19, scope: !1457)
!1471 = !DILocalVariable(name: "stat_log", scope: !1457, file: !1, line: 353, type: !65)
!1472 = !DILocation(line: 353, column: 15, scope: !1457)
!1473 = !DILocation(line: 353, column: 51, scope: !1457)
!1474 = !DILocation(line: 353, column: 50, scope: !1457)
!1475 = !DILocation(line: 353, column: 55, scope: !1457)
!1476 = !DILocation(line: 353, column: 54, scope: !1457)
!1477 = !DILocation(line: 353, column: 26, scope: !1457)
!1478 = !DILocalVariable(name: "t_x", scope: !1457, file: !1, line: 354, type: !57)
!1479 = !DILocation(line: 354, column: 18, scope: !1457)
!1480 = !DILocation(line: 354, column: 35, scope: !1457)
!1481 = !DILocation(line: 354, column: 41, scope: !1457)
!1482 = !DILocation(line: 354, column: 39, scope: !1457)
!1483 = !DILocation(line: 354, column: 58, scope: !1457)
!1484 = !DILocation(line: 354, column: 64, scope: !1457)
!1485 = !DILocation(line: 354, column: 62, scope: !1457)
!1486 = !DILocation(line: 354, column: 43, scope: !1457)
!1487 = !DILocation(line: 354, column: 68, scope: !1457)
!1488 = !DILocation(line: 354, column: 70, scope: !1457)
!1489 = !DILocation(line: 354, column: 69, scope: !1457)
!1490 = !DILocation(line: 354, column: 66, scope: !1457)
!1491 = !DILocalVariable(name: "t_y", scope: !1457, file: !1, line: 355, type: !57)
!1492 = !DILocation(line: 355, column: 18, scope: !1457)
!1493 = !DILocation(line: 355, column: 35, scope: !1457)
!1494 = !DILocation(line: 355, column: 25, scope: !1457)
!1495 = !DILocation(line: 355, column: 41, scope: !1457)
!1496 = !DILocation(line: 355, column: 39, scope: !1457)
!1497 = !DILocation(line: 355, column: 58, scope: !1457)
!1498 = !DILocation(line: 355, column: 64, scope: !1457)
!1499 = !DILocation(line: 355, column: 62, scope: !1457)
!1500 = !DILocation(line: 355, column: 43, scope: !1457)
!1501 = !DILocation(line: 355, column: 68, scope: !1457)
!1502 = !DILocation(line: 355, column: 70, scope: !1457)
!1503 = !DILocation(line: 355, column: 69, scope: !1457)
!1504 = !DILocation(line: 355, column: 66, scope: !1457)
!1505 = !DILocalVariable(name: "r_x", scope: !1457, file: !1, line: 358, type: !57)
!1506 = !DILocation(line: 358, column: 18, scope: !1457)
!1507 = !DILocation(line: 358, column: 31, scope: !1457)
!1508 = !DILocation(line: 358, column: 29, scope: !1457)
!1509 = !DILocation(line: 358, column: 36, scope: !1457)
!1510 = !DILocation(line: 358, column: 34, scope: !1457)
!1511 = !DILocation(line: 358, column: 42, scope: !1457)
!1512 = !DILocation(line: 358, column: 46, scope: !1457)
!1513 = !DILocation(line: 358, column: 44, scope: !1457)
!1514 = !DILocation(line: 358, column: 40, scope: !1457)
!1515 = !DILocalVariable(name: "r_y", scope: !1457, file: !1, line: 359, type: !57)
!1516 = !DILocation(line: 359, column: 18, scope: !1457)
!1517 = !DILocation(line: 359, column: 31, scope: !1457)
!1518 = !DILocation(line: 359, column: 29, scope: !1457)
!1519 = !DILocation(line: 359, column: 36, scope: !1457)
!1520 = !DILocation(line: 359, column: 34, scope: !1457)
!1521 = !DILocation(line: 359, column: 42, scope: !1457)
!1522 = !DILocation(line: 359, column: 46, scope: !1457)
!1523 = !DILocation(line: 359, column: 44, scope: !1457)
!1524 = !DILocation(line: 359, column: 40, scope: !1457)
!1525 = !DILocation(line: 361, column: 27, scope: !1457)
!1526 = !DILocation(line: 361, column: 33, scope: !1457)
!1527 = !DILocation(line: 361, column: 31, scope: !1457)
!1528 = !DILocation(line: 361, column: 37, scope: !1457)
!1529 = !DILocation(line: 361, column: 5, scope: !1457)
!1530 = !DILocation(line: 361, column: 14, scope: !1457)
!1531 = !DILocation(line: 361, column: 18, scope: !1457)
!1532 = !DILocation(line: 362, column: 27, scope: !1457)
!1533 = !DILocation(line: 362, column: 33, scope: !1457)
!1534 = !DILocation(line: 362, column: 31, scope: !1457)
!1535 = !DILocation(line: 362, column: 5, scope: !1457)
!1536 = !DILocation(line: 362, column: 14, scope: !1457)
!1537 = !DILocation(line: 362, column: 18, scope: !1457)
!1538 = !DILocation(line: 363, column: 27, scope: !1457)
!1539 = !DILocation(line: 363, column: 59, scope: !1457)
!1540 = !DILocation(line: 363, column: 68, scope: !1457)
!1541 = !DILocation(line: 363, column: 54, scope: !1457)
!1542 = !DILocation(line: 363, column: 80, scope: !1457)
!1543 = !DILocation(line: 363, column: 75, scope: !1544)
!1544 = !DILexicalBlockFile(scope: !1457, file: !1, discriminator: 1)
!1545 = !DILocation(line: 363, column: 73, scope: !1457)
!1546 = !DILocation(line: 363, column: 52, scope: !1457)
!1547 = !DILocation(line: 363, column: 31, scope: !1457)
!1548 = !DILocation(line: 363, column: 5, scope: !1457)
!1549 = !DILocation(line: 363, column: 14, scope: !1457)
!1550 = !DILocation(line: 363, column: 18, scope: !1457)
!1551 = !DILocation(line: 364, column: 27, scope: !1457)
!1552 = !DILocation(line: 364, column: 59, scope: !1457)
!1553 = !DILocation(line: 364, column: 68, scope: !1457)
!1554 = !DILocation(line: 364, column: 54, scope: !1457)
!1555 = !DILocation(line: 364, column: 80, scope: !1457)
!1556 = !DILocation(line: 364, column: 75, scope: !1544)
!1557 = !DILocation(line: 364, column: 73, scope: !1457)
!1558 = !DILocation(line: 364, column: 52, scope: !1457)
!1559 = !DILocation(line: 364, column: 31, scope: !1457)
!1560 = !DILocation(line: 364, column: 5, scope: !1457)
!1561 = !DILocation(line: 364, column: 14, scope: !1457)
!1562 = !DILocation(line: 364, column: 18, scope: !1457)
!1563 = !DILocation(line: 365, column: 12, scope: !1457)
!1564 = !DILocation(line: 365, column: 12, scope: !1544)
!1565 = !DILocation(line: 365, column: 12, scope: !1566)
!1566 = !DILexicalBlockFile(scope: !1457, file: !1, discriminator: 2)
!1567 = !DILocation(line: 365, column: 12, scope: !1568)
!1568 = !DILexicalBlockFile(scope: !1457, file: !1, discriminator: 3)
!1569 = !DILocation(line: 365, column: 12, scope: !1570)
!1570 = !DILexicalBlockFile(scope: !1457, file: !1, discriminator: 4)
!1571 = !DILocation(line: 365, column: 12, scope: !1572)
!1572 = !DILexicalBlockFile(scope: !1457, file: !1, discriminator: 5)
!1573 = !DILocation(line: 365, column: 12, scope: !1574)
!1574 = !DILexicalBlockFile(scope: !1457, file: !1, discriminator: 6)
!1575 = !DILocation(line: 365, column: 5, scope: !1574)
!1576 = !DILocation(line: 367, column: 1, scope: !1427)
!1577 = distinct !DISubprogram(name: "dilogc_series_1", scope: !1, file: !1, line: 226, type: !1211, isLocal: true, isDefinition: true, scopeLine: 233, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !56)
!1578 = !DILocalVariable(name: "r", arg: 1, scope: !1577, file: !1, line: 227, type: !57)
!1579 = !DILocation(line: 227, column: 16, scope: !1577)
!1580 = !DILocalVariable(name: "x", arg: 2, scope: !1577, file: !1, line: 228, type: !57)
!1581 = !DILocation(line: 228, column: 16, scope: !1577)
!1582 = !DILocalVariable(name: "y", arg: 3, scope: !1577, file: !1, line: 229, type: !57)
!1583 = !DILocation(line: 229, column: 16, scope: !1577)
!1584 = !DILocalVariable(name: "real_result", arg: 4, scope: !1577, file: !1, line: 230, type: !49)
!1585 = !DILocation(line: 230, column: 19, scope: !1577)
!1586 = !DILocalVariable(name: "imag_result", arg: 5, scope: !1577, file: !1, line: 231, type: !49)
!1587 = !DILocation(line: 231, column: 19, scope: !1577)
!1588 = !DILocalVariable(name: "cos_theta", scope: !1577, file: !1, line: 234, type: !57)
!1589 = !DILocation(line: 234, column: 16, scope: !1577)
!1590 = !DILocation(line: 234, column: 28, scope: !1577)
!1591 = !DILocation(line: 234, column: 30, scope: !1577)
!1592 = !DILocation(line: 234, column: 29, scope: !1577)
!1593 = !DILocalVariable(name: "sin_theta", scope: !1577, file: !1, line: 235, type: !57)
!1594 = !DILocation(line: 235, column: 16, scope: !1577)
!1595 = !DILocation(line: 235, column: 28, scope: !1577)
!1596 = !DILocation(line: 235, column: 30, scope: !1577)
!1597 = !DILocation(line: 235, column: 29, scope: !1577)
!1598 = !DILocalVariable(name: "alpha", scope: !1577, file: !1, line: 236, type: !57)
!1599 = !DILocation(line: 236, column: 16, scope: !1577)
!1600 = !DILocation(line: 236, column: 30, scope: !1577)
!1601 = !DILocation(line: 236, column: 28, scope: !1577)
!1602 = !DILocalVariable(name: "beta", scope: !1577, file: !1, line: 237, type: !57)
!1603 = !DILocation(line: 237, column: 16, scope: !1577)
!1604 = !DILocation(line: 237, column: 24, scope: !1577)
!1605 = !DILocalVariable(name: "ck", scope: !1577, file: !1, line: 238, type: !43)
!1606 = !DILocation(line: 238, column: 10, scope: !1577)
!1607 = !DILocation(line: 238, column: 15, scope: !1577)
!1608 = !DILocalVariable(name: "sk", scope: !1577, file: !1, line: 239, type: !43)
!1609 = !DILocation(line: 239, column: 10, scope: !1577)
!1610 = !DILocation(line: 239, column: 15, scope: !1577)
!1611 = !DILocalVariable(name: "rk", scope: !1577, file: !1, line: 240, type: !43)
!1612 = !DILocation(line: 240, column: 10, scope: !1577)
!1613 = !DILocation(line: 240, column: 15, scope: !1577)
!1614 = !DILocalVariable(name: "real_sum", scope: !1577, file: !1, line: 241, type: !43)
!1615 = !DILocation(line: 241, column: 10, scope: !1577)
!1616 = !DILocation(line: 241, column: 21, scope: !1577)
!1617 = !DILocation(line: 241, column: 23, scope: !1577)
!1618 = !DILocation(line: 241, column: 22, scope: !1577)
!1619 = !DILocalVariable(name: "imag_sum", scope: !1577, file: !1, line: 242, type: !43)
!1620 = !DILocation(line: 242, column: 10, scope: !1577)
!1621 = !DILocation(line: 242, column: 21, scope: !1577)
!1622 = !DILocation(line: 242, column: 23, scope: !1577)
!1623 = !DILocation(line: 242, column: 22, scope: !1577)
!1624 = !DILocalVariable(name: "kmax", scope: !1577, file: !1, line: 243, type: !65)
!1625 = !DILocation(line: 243, column: 13, scope: !1577)
!1626 = !DILocation(line: 243, column: 42, scope: !1577)
!1627 = !DILocation(line: 243, column: 38, scope: !1577)
!1628 = !DILocation(line: 243, column: 37, scope: !1577)
!1629 = !DILocation(line: 243, column: 35, scope: !1577)
!1630 = !DILocation(line: 243, column: 25, scope: !1577)
!1631 = !DILocation(line: 243, column: 23, scope: !1577)
!1632 = !DILocalVariable(name: "k", scope: !1577, file: !1, line: 244, type: !42)
!1633 = !DILocation(line: 244, column: 7, scope: !1577)
!1634 = !DILocation(line: 245, column: 8, scope: !1635)
!1635 = distinct !DILexicalBlock(scope: !1577, file: !1, line: 245, column: 3)
!1636 = !DILocation(line: 245, column: 7, scope: !1635)
!1637 = !DILocation(line: 245, column: 12, scope: !1638)
!1638 = !DILexicalBlockFile(scope: !1639, file: !1, discriminator: 1)
!1639 = distinct !DILexicalBlock(scope: !1635, file: !1, line: 245, column: 3)
!1640 = !DILocation(line: 245, column: 14, scope: !1638)
!1641 = !DILocation(line: 245, column: 13, scope: !1638)
!1642 = !DILocation(line: 245, column: 3, scope: !1638)
!1643 = !DILocalVariable(name: "dr", scope: !1644, file: !1, line: 246, type: !43)
!1644 = distinct !DILexicalBlock(scope: !1639, file: !1, line: 245, column: 25)
!1645 = !DILocation(line: 246, column: 12, scope: !1644)
!1646 = !DILocalVariable(name: "di", scope: !1644, file: !1, line: 246, type: !43)
!1647 = !DILocation(line: 246, column: 16, scope: !1644)
!1648 = !DILocalVariable(name: "ck_tmp", scope: !1644, file: !1, line: 247, type: !43)
!1649 = !DILocation(line: 247, column: 12, scope: !1644)
!1650 = !DILocation(line: 247, column: 21, scope: !1644)
!1651 = !DILocation(line: 248, column: 10, scope: !1644)
!1652 = !DILocation(line: 248, column: 16, scope: !1644)
!1653 = !DILocation(line: 248, column: 22, scope: !1644)
!1654 = !DILocation(line: 248, column: 21, scope: !1644)
!1655 = !DILocation(line: 248, column: 27, scope: !1644)
!1656 = !DILocation(line: 248, column: 32, scope: !1644)
!1657 = !DILocation(line: 248, column: 31, scope: !1644)
!1658 = !DILocation(line: 248, column: 25, scope: !1644)
!1659 = !DILocation(line: 248, column: 13, scope: !1644)
!1660 = !DILocation(line: 248, column: 8, scope: !1644)
!1661 = !DILocation(line: 249, column: 10, scope: !1644)
!1662 = !DILocation(line: 249, column: 16, scope: !1644)
!1663 = !DILocation(line: 249, column: 22, scope: !1644)
!1664 = !DILocation(line: 249, column: 21, scope: !1644)
!1665 = !DILocation(line: 249, column: 27, scope: !1644)
!1666 = !DILocation(line: 249, column: 32, scope: !1644)
!1667 = !DILocation(line: 249, column: 31, scope: !1644)
!1668 = !DILocation(line: 249, column: 25, scope: !1644)
!1669 = !DILocation(line: 249, column: 13, scope: !1644)
!1670 = !DILocation(line: 249, column: 8, scope: !1644)
!1671 = !DILocation(line: 250, column: 11, scope: !1644)
!1672 = !DILocation(line: 250, column: 8, scope: !1644)
!1673 = !DILocation(line: 251, column: 10, scope: !1644)
!1674 = !DILocation(line: 251, column: 22, scope: !1644)
!1675 = !DILocation(line: 251, column: 14, scope: !1644)
!1676 = !DILocation(line: 251, column: 24, scope: !1644)
!1677 = !DILocation(line: 251, column: 23, scope: !1644)
!1678 = !DILocation(line: 251, column: 12, scope: !1644)
!1679 = !DILocation(line: 251, column: 29, scope: !1644)
!1680 = !DILocation(line: 251, column: 27, scope: !1644)
!1681 = !DILocation(line: 251, column: 8, scope: !1644)
!1682 = !DILocation(line: 252, column: 10, scope: !1644)
!1683 = !DILocation(line: 252, column: 22, scope: !1644)
!1684 = !DILocation(line: 252, column: 14, scope: !1644)
!1685 = !DILocation(line: 252, column: 24, scope: !1644)
!1686 = !DILocation(line: 252, column: 23, scope: !1644)
!1687 = !DILocation(line: 252, column: 12, scope: !1644)
!1688 = !DILocation(line: 252, column: 29, scope: !1644)
!1689 = !DILocation(line: 252, column: 27, scope: !1644)
!1690 = !DILocation(line: 252, column: 8, scope: !1644)
!1691 = !DILocation(line: 253, column: 17, scope: !1644)
!1692 = !DILocation(line: 253, column: 14, scope: !1644)
!1693 = !DILocation(line: 254, column: 17, scope: !1644)
!1694 = !DILocation(line: 254, column: 14, scope: !1644)
!1695 = !DILocation(line: 255, column: 14, scope: !1696)
!1696 = distinct !DILexicalBlock(scope: !1644, file: !1, line: 255, column: 8)
!1697 = !DILocation(line: 255, column: 17, scope: !1696)
!1698 = !DILocation(line: 255, column: 16, scope: !1696)
!1699 = !DILocation(line: 255, column: 22, scope: !1696)
!1700 = !DILocation(line: 255, column: 25, scope: !1696)
!1701 = !DILocation(line: 255, column: 24, scope: !1696)
!1702 = !DILocation(line: 255, column: 20, scope: !1696)
!1703 = !DILocation(line: 255, column: 30, scope: !1696)
!1704 = !DILocation(line: 255, column: 39, scope: !1696)
!1705 = !DILocation(line: 255, column: 38, scope: !1696)
!1706 = !DILocation(line: 255, column: 50, scope: !1696)
!1707 = !DILocation(line: 255, column: 59, scope: !1696)
!1708 = !DILocation(line: 255, column: 58, scope: !1696)
!1709 = !DILocation(line: 255, column: 48, scope: !1696)
!1710 = !DILocation(line: 255, column: 28, scope: !1696)
!1711 = !DILocation(line: 255, column: 8, scope: !1696)
!1712 = !DILocation(line: 255, column: 70, scope: !1696)
!1713 = !DILocation(line: 255, column: 8, scope: !1644)
!1714 = !DILocation(line: 255, column: 105, scope: !1715)
!1715 = !DILexicalBlockFile(scope: !1696, file: !1, discriminator: 1)
!1716 = !DILocation(line: 256, column: 3, scope: !1644)
!1717 = !DILocation(line: 245, column: 21, scope: !1718)
!1718 = !DILexicalBlockFile(scope: !1639, file: !1, discriminator: 2)
!1719 = !DILocation(line: 245, column: 3, scope: !1718)
!1720 = distinct !{!1720, !1721}
!1721 = !DILocation(line: 245, column: 3, scope: !1577)
!1722 = !DILocation(line: 258, column: 22, scope: !1577)
!1723 = !DILocation(line: 258, column: 3, scope: !1577)
!1724 = !DILocation(line: 258, column: 16, scope: !1577)
!1725 = !DILocation(line: 258, column: 20, scope: !1577)
!1726 = !DILocation(line: 259, column: 28, scope: !1577)
!1727 = !DILocation(line: 259, column: 26, scope: !1577)
!1728 = !DILocation(line: 259, column: 33, scope: !1577)
!1729 = !DILocation(line: 259, column: 58, scope: !1577)
!1730 = !DILocation(line: 259, column: 53, scope: !1577)
!1731 = !DILocation(line: 259, column: 51, scope: !1577)
!1732 = !DILocation(line: 259, column: 3, scope: !1577)
!1733 = !DILocation(line: 259, column: 16, scope: !1577)
!1734 = !DILocation(line: 259, column: 20, scope: !1577)
!1735 = !DILocation(line: 260, column: 22, scope: !1577)
!1736 = !DILocation(line: 260, column: 3, scope: !1577)
!1737 = !DILocation(line: 260, column: 16, scope: !1577)
!1738 = !DILocation(line: 260, column: 20, scope: !1577)
!1739 = !DILocation(line: 261, column: 28, scope: !1577)
!1740 = !DILocation(line: 261, column: 26, scope: !1577)
!1741 = !DILocation(line: 261, column: 33, scope: !1577)
!1742 = !DILocation(line: 261, column: 58, scope: !1577)
!1743 = !DILocation(line: 261, column: 53, scope: !1577)
!1744 = !DILocation(line: 261, column: 51, scope: !1577)
!1745 = !DILocation(line: 261, column: 3, scope: !1577)
!1746 = !DILocation(line: 261, column: 16, scope: !1577)
!1747 = !DILocation(line: 261, column: 20, scope: !1577)
!1748 = !DILocation(line: 263, column: 3, scope: !1577)
!1749 = distinct !DISubprogram(name: "series_2_c", scope: !1, file: !1, line: 276, type: !1168, isLocal: true, isDefinition: true, scopeLine: 283, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !56)
!1750 = !DILocalVariable(name: "r", arg: 1, scope: !1749, file: !1, line: 277, type: !43)
!1751 = !DILocation(line: 277, column: 10, scope: !1749)
!1752 = !DILocalVariable(name: "x", arg: 2, scope: !1749, file: !1, line: 278, type: !43)
!1753 = !DILocation(line: 278, column: 10, scope: !1749)
!1754 = !DILocalVariable(name: "y", arg: 3, scope: !1749, file: !1, line: 279, type: !43)
!1755 = !DILocation(line: 279, column: 10, scope: !1749)
!1756 = !DILocalVariable(name: "sum_re", arg: 4, scope: !1749, file: !1, line: 280, type: !49)
!1757 = !DILocation(line: 280, column: 19, scope: !1749)
!1758 = !DILocalVariable(name: "sum_im", arg: 5, scope: !1749, file: !1, line: 281, type: !49)
!1759 = !DILocation(line: 281, column: 19, scope: !1749)
!1760 = !DILocalVariable(name: "cos_theta", scope: !1749, file: !1, line: 284, type: !57)
!1761 = !DILocation(line: 284, column: 16, scope: !1749)
!1762 = !DILocation(line: 284, column: 28, scope: !1749)
!1763 = !DILocation(line: 284, column: 30, scope: !1749)
!1764 = !DILocation(line: 284, column: 29, scope: !1749)
!1765 = !DILocalVariable(name: "sin_theta", scope: !1749, file: !1, line: 285, type: !57)
!1766 = !DILocation(line: 285, column: 16, scope: !1749)
!1767 = !DILocation(line: 285, column: 28, scope: !1749)
!1768 = !DILocation(line: 285, column: 30, scope: !1749)
!1769 = !DILocation(line: 285, column: 29, scope: !1749)
!1770 = !DILocalVariable(name: "alpha", scope: !1749, file: !1, line: 286, type: !57)
!1771 = !DILocation(line: 286, column: 16, scope: !1749)
!1772 = !DILocation(line: 286, column: 30, scope: !1749)
!1773 = !DILocation(line: 286, column: 28, scope: !1749)
!1774 = !DILocalVariable(name: "beta", scope: !1749, file: !1, line: 287, type: !57)
!1775 = !DILocation(line: 287, column: 16, scope: !1749)
!1776 = !DILocation(line: 287, column: 24, scope: !1749)
!1777 = !DILocalVariable(name: "ck", scope: !1749, file: !1, line: 288, type: !43)
!1778 = !DILocation(line: 288, column: 10, scope: !1749)
!1779 = !DILocation(line: 288, column: 15, scope: !1749)
!1780 = !DILocalVariable(name: "sk", scope: !1749, file: !1, line: 289, type: !43)
!1781 = !DILocation(line: 289, column: 10, scope: !1749)
!1782 = !DILocation(line: 289, column: 15, scope: !1749)
!1783 = !DILocalVariable(name: "rk", scope: !1749, file: !1, line: 290, type: !43)
!1784 = !DILocation(line: 290, column: 10, scope: !1749)
!1785 = !DILocation(line: 290, column: 15, scope: !1749)
!1786 = !DILocalVariable(name: "real_sum", scope: !1749, file: !1, line: 291, type: !43)
!1787 = !DILocation(line: 291, column: 10, scope: !1749)
!1788 = !DILocation(line: 291, column: 27, scope: !1749)
!1789 = !DILocation(line: 291, column: 25, scope: !1749)
!1790 = !DILocation(line: 291, column: 29, scope: !1749)
!1791 = !DILocation(line: 291, column: 28, scope: !1749)
!1792 = !DILocalVariable(name: "imag_sum", scope: !1749, file: !1, line: 292, type: !43)
!1793 = !DILocation(line: 292, column: 10, scope: !1749)
!1794 = !DILocation(line: 292, column: 27, scope: !1749)
!1795 = !DILocation(line: 292, column: 25, scope: !1749)
!1796 = !DILocation(line: 292, column: 29, scope: !1749)
!1797 = !DILocation(line: 292, column: 28, scope: !1749)
!1798 = !DILocalVariable(name: "kmax", scope: !1749, file: !1, line: 293, type: !65)
!1799 = !DILocation(line: 293, column: 13, scope: !1749)
!1800 = !DILocation(line: 293, column: 42, scope: !1749)
!1801 = !DILocation(line: 293, column: 38, scope: !1749)
!1802 = !DILocation(line: 293, column: 37, scope: !1749)
!1803 = !DILocation(line: 293, column: 35, scope: !1749)
!1804 = !DILocation(line: 293, column: 25, scope: !1749)
!1805 = !DILocation(line: 293, column: 23, scope: !1749)
!1806 = !DILocalVariable(name: "k", scope: !1749, file: !1, line: 294, type: !42)
!1807 = !DILocation(line: 294, column: 7, scope: !1749)
!1808 = !DILocation(line: 295, column: 8, scope: !1809)
!1809 = distinct !DILexicalBlock(scope: !1749, file: !1, line: 295, column: 3)
!1810 = !DILocation(line: 295, column: 7, scope: !1809)
!1811 = !DILocation(line: 295, column: 12, scope: !1812)
!1812 = !DILexicalBlockFile(scope: !1813, file: !1, discriminator: 1)
!1813 = distinct !DILexicalBlock(scope: !1809, file: !1, line: 295, column: 3)
!1814 = !DILocation(line: 295, column: 14, scope: !1812)
!1815 = !DILocation(line: 295, column: 13, scope: !1812)
!1816 = !DILocation(line: 295, column: 3, scope: !1812)
!1817 = !DILocalVariable(name: "dr", scope: !1818, file: !1, line: 297, type: !43)
!1818 = distinct !DILexicalBlock(scope: !1813, file: !1, line: 296, column: 3)
!1819 = !DILocation(line: 297, column: 12, scope: !1818)
!1820 = !DILocalVariable(name: "di", scope: !1818, file: !1, line: 297, type: !43)
!1821 = !DILocation(line: 297, column: 16, scope: !1818)
!1822 = !DILocalVariable(name: "ck_tmp", scope: !1818, file: !1, line: 298, type: !57)
!1823 = !DILocation(line: 298, column: 18, scope: !1818)
!1824 = !DILocation(line: 298, column: 27, scope: !1818)
!1825 = !DILocation(line: 299, column: 10, scope: !1818)
!1826 = !DILocation(line: 299, column: 16, scope: !1818)
!1827 = !DILocation(line: 299, column: 22, scope: !1818)
!1828 = !DILocation(line: 299, column: 21, scope: !1818)
!1829 = !DILocation(line: 299, column: 27, scope: !1818)
!1830 = !DILocation(line: 299, column: 32, scope: !1818)
!1831 = !DILocation(line: 299, column: 31, scope: !1818)
!1832 = !DILocation(line: 299, column: 25, scope: !1818)
!1833 = !DILocation(line: 299, column: 13, scope: !1818)
!1834 = !DILocation(line: 299, column: 8, scope: !1818)
!1835 = !DILocation(line: 300, column: 10, scope: !1818)
!1836 = !DILocation(line: 300, column: 16, scope: !1818)
!1837 = !DILocation(line: 300, column: 22, scope: !1818)
!1838 = !DILocation(line: 300, column: 21, scope: !1818)
!1839 = !DILocation(line: 300, column: 27, scope: !1818)
!1840 = !DILocation(line: 300, column: 32, scope: !1818)
!1841 = !DILocation(line: 300, column: 31, scope: !1818)
!1842 = !DILocation(line: 300, column: 25, scope: !1818)
!1843 = !DILocation(line: 300, column: 13, scope: !1818)
!1844 = !DILocation(line: 300, column: 8, scope: !1818)
!1845 = !DILocation(line: 301, column: 11, scope: !1818)
!1846 = !DILocation(line: 301, column: 8, scope: !1818)
!1847 = !DILocation(line: 302, column: 10, scope: !1818)
!1848 = !DILocation(line: 302, column: 22, scope: !1818)
!1849 = !DILocation(line: 302, column: 14, scope: !1818)
!1850 = !DILocation(line: 302, column: 24, scope: !1818)
!1851 = !DILocation(line: 302, column: 23, scope: !1818)
!1852 = !DILocation(line: 302, column: 27, scope: !1818)
!1853 = !DILocation(line: 302, column: 28, scope: !1818)
!1854 = !DILocation(line: 302, column: 25, scope: !1818)
!1855 = !DILocation(line: 302, column: 12, scope: !1818)
!1856 = !DILocation(line: 302, column: 37, scope: !1818)
!1857 = !DILocation(line: 302, column: 35, scope: !1818)
!1858 = !DILocation(line: 302, column: 8, scope: !1818)
!1859 = !DILocation(line: 303, column: 10, scope: !1818)
!1860 = !DILocation(line: 303, column: 22, scope: !1818)
!1861 = !DILocation(line: 303, column: 14, scope: !1818)
!1862 = !DILocation(line: 303, column: 24, scope: !1818)
!1863 = !DILocation(line: 303, column: 23, scope: !1818)
!1864 = !DILocation(line: 303, column: 27, scope: !1818)
!1865 = !DILocation(line: 303, column: 28, scope: !1818)
!1866 = !DILocation(line: 303, column: 25, scope: !1818)
!1867 = !DILocation(line: 303, column: 12, scope: !1818)
!1868 = !DILocation(line: 303, column: 37, scope: !1818)
!1869 = !DILocation(line: 303, column: 35, scope: !1818)
!1870 = !DILocation(line: 303, column: 8, scope: !1818)
!1871 = !DILocation(line: 304, column: 17, scope: !1818)
!1872 = !DILocation(line: 304, column: 14, scope: !1818)
!1873 = !DILocation(line: 305, column: 17, scope: !1818)
!1874 = !DILocation(line: 305, column: 14, scope: !1818)
!1875 = !DILocation(line: 306, column: 14, scope: !1876)
!1876 = distinct !DILexicalBlock(scope: !1818, file: !1, line: 306, column: 8)
!1877 = !DILocation(line: 306, column: 17, scope: !1876)
!1878 = !DILocation(line: 306, column: 16, scope: !1876)
!1879 = !DILocation(line: 306, column: 22, scope: !1876)
!1880 = !DILocation(line: 306, column: 25, scope: !1876)
!1881 = !DILocation(line: 306, column: 24, scope: !1876)
!1882 = !DILocation(line: 306, column: 20, scope: !1876)
!1883 = !DILocation(line: 306, column: 30, scope: !1876)
!1884 = !DILocation(line: 306, column: 39, scope: !1876)
!1885 = !DILocation(line: 306, column: 38, scope: !1876)
!1886 = !DILocation(line: 306, column: 50, scope: !1876)
!1887 = !DILocation(line: 306, column: 59, scope: !1876)
!1888 = !DILocation(line: 306, column: 58, scope: !1876)
!1889 = !DILocation(line: 306, column: 48, scope: !1876)
!1890 = !DILocation(line: 306, column: 28, scope: !1876)
!1891 = !DILocation(line: 306, column: 8, scope: !1876)
!1892 = !DILocation(line: 306, column: 70, scope: !1876)
!1893 = !DILocation(line: 306, column: 8, scope: !1818)
!1894 = !DILocation(line: 306, column: 105, scope: !1895)
!1895 = !DILexicalBlockFile(scope: !1876, file: !1, discriminator: 1)
!1896 = !DILocation(line: 307, column: 3, scope: !1818)
!1897 = !DILocation(line: 295, column: 21, scope: !1898)
!1898 = !DILexicalBlockFile(scope: !1813, file: !1, discriminator: 2)
!1899 = !DILocation(line: 295, column: 3, scope: !1898)
!1900 = distinct !{!1900, !1901}
!1901 = !DILocation(line: 295, column: 3, scope: !1749)
!1902 = !DILocation(line: 309, column: 17, scope: !1749)
!1903 = !DILocation(line: 309, column: 3, scope: !1749)
!1904 = !DILocation(line: 309, column: 11, scope: !1749)
!1905 = !DILocation(line: 309, column: 15, scope: !1749)
!1906 = !DILocation(line: 310, column: 23, scope: !1749)
!1907 = !DILocation(line: 310, column: 21, scope: !1749)
!1908 = !DILocation(line: 310, column: 28, scope: !1749)
!1909 = !DILocation(line: 310, column: 53, scope: !1749)
!1910 = !DILocation(line: 310, column: 48, scope: !1749)
!1911 = !DILocation(line: 310, column: 46, scope: !1749)
!1912 = !DILocation(line: 310, column: 3, scope: !1749)
!1913 = !DILocation(line: 310, column: 11, scope: !1749)
!1914 = !DILocation(line: 310, column: 15, scope: !1749)
!1915 = !DILocation(line: 311, column: 17, scope: !1749)
!1916 = !DILocation(line: 311, column: 3, scope: !1749)
!1917 = !DILocation(line: 311, column: 11, scope: !1749)
!1918 = !DILocation(line: 311, column: 15, scope: !1749)
!1919 = !DILocation(line: 312, column: 23, scope: !1749)
!1920 = !DILocation(line: 312, column: 21, scope: !1749)
!1921 = !DILocation(line: 312, column: 28, scope: !1749)
!1922 = !DILocation(line: 312, column: 53, scope: !1749)
!1923 = !DILocation(line: 312, column: 48, scope: !1749)
!1924 = !DILocation(line: 312, column: 46, scope: !1749)
!1925 = !DILocation(line: 312, column: 3, scope: !1749)
!1926 = !DILocation(line: 312, column: 11, scope: !1749)
!1927 = !DILocation(line: 312, column: 15, scope: !1749)
!1928 = !DILocation(line: 314, column: 3, scope: !1749)
