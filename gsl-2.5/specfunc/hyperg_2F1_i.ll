; ModuleID = 'hyperg_2F1.ll'
source_filename = "hyperg_2F1.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsl_sf_result_struct = type { double, double }

@.str = private unnamed_addr constant [13 x i8] c"domain error\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"hyperg_2F1.c\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"gsl_sf_hyperg_2F1_e(a, b, c, x, &result)\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"gsl_sf_hyperg_2F1_conj_e(aR, aI, c, x, &result)\00", align 1
@.str.5 = private unnamed_addr constant [48 x i8] c"gsl_sf_hyperg_2F1_renorm_e(a, b, c, x, &result)\00", align 1
@.str.6 = private unnamed_addr constant [55 x i8] c"gsl_sf_hyperg_2F1_conj_renorm_e(aR, aI, c, x, &result)\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"overflow\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"underflow\00", align 1
@0 = private unnamed_addr constant [20 x i8] c"gsl_sf_hyperg_2F1_e\00"
@1 = private unnamed_addr constant [14 x i8] c"hyperg_2F1.ll\00"
@2 = private unnamed_addr constant [8 x i8] c"pow_omx\00"
@3 = private unnamed_addr constant [14 x i8] c"hyperg_2F1.ll\00"
@4 = private unnamed_addr constant [18 x i8] c"hyperg_2F1_series\00"
@5 = private unnamed_addr constant [14 x i8] c"hyperg_2F1.ll\00"
@6 = private unnamed_addr constant [16 x i8] c"hyperg_2F1_luke\00"
@7 = private unnamed_addr constant [14 x i8] c"hyperg_2F1.ll\00"
@8 = private unnamed_addr constant [19 x i8] c"hyperg_2F1_reflect\00"
@9 = private unnamed_addr constant [14 x i8] c"hyperg_2F1.ll\00"
@10 = private unnamed_addr constant [25 x i8] c"gsl_sf_hyperg_2F1_conj_e\00"
@11 = private unnamed_addr constant [14 x i8] c"hyperg_2F1.ll\00"
@12 = private unnamed_addr constant [23 x i8] c"hyperg_2F1_conj_series\00"
@13 = private unnamed_addr constant [14 x i8] c"hyperg_2F1.ll\00"
@14 = private unnamed_addr constant [21 x i8] c"hyperg_2F1_conj_luke\00"
@15 = private unnamed_addr constant [14 x i8] c"hyperg_2F1.ll\00"
@16 = private unnamed_addr constant [27 x i8] c"gsl_sf_hyperg_2F1_renorm_e\00"
@17 = private unnamed_addr constant [14 x i8] c"hyperg_2F1.ll\00"
@18 = private unnamed_addr constant [32 x i8] c"gsl_sf_hyperg_2F1_conj_renorm_e\00"
@19 = private unnamed_addr constant [14 x i8] c"hyperg_2F1.ll\00"
@20 = private unnamed_addr constant [18 x i8] c"gsl_sf_hyperg_2F1\00"
@21 = private unnamed_addr constant [14 x i8] c"hyperg_2F1.ll\00"
@22 = private unnamed_addr constant [23 x i8] c"gsl_sf_hyperg_2F1_conj\00"
@23 = private unnamed_addr constant [14 x i8] c"hyperg_2F1.ll\00"
@24 = private unnamed_addr constant [25 x i8] c"gsl_sf_hyperg_2F1_renorm\00"
@25 = private unnamed_addr constant [14 x i8] c"hyperg_2F1.ll\00"
@26 = private unnamed_addr constant [30 x i8] c"gsl_sf_hyperg_2F1_conj_renorm\00"
@27 = private unnamed_addr constant [14 x i8] c"hyperg_2F1.ll\00"

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_hyperg_2F1_e(double, double, double, double, %struct.gsl_sf_result_struct*) #0 !dbg !47 {
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca %struct.gsl_sf_result_struct*, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.gsl_sf_result_struct, align 8
  %20 = alloca %struct.gsl_sf_result_struct, align 8
  %21 = alloca %struct.gsl_sf_result_struct, align 8
  %22 = alloca %struct.gsl_sf_result_struct, align 8
  %23 = alloca double, align 8
  %24 = alloca double, align 8
  %25 = alloca double, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca double, align 8
  %32 = alloca double, align 8
  %33 = alloca i32, align 4
  store double %0, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !60, metadata !61), !dbg !62
  store double %1, double* %8, align 8
  call void @llvm.dbg.declare(metadata double* %8, metadata !63, metadata !61), !dbg !64
  store double %2, double* %9, align 8
  call void @llvm.dbg.declare(metadata double* %9, metadata !65, metadata !61), !dbg !66
  store double %3, double* %10, align 8
  call void @llvm.dbg.declare(metadata double* %10, metadata !67, metadata !61), !dbg !68
  store %struct.gsl_sf_result_struct* %4, %struct.gsl_sf_result_struct** %11, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %11, metadata !69, metadata !61), !dbg !70
  call void @llvm.dbg.declare(metadata double* %12, metadata !71, metadata !61), !dbg !72
  %34 = load double, double* %9, align 8, !dbg !73
  %35 = load double, double* %7, align 8, !dbg !74
  %36 = fsub double %34, %35, !dbg !75
  call void @fSubHandler(double %34, double %35, double %36, i64 94334763622584, i64 94334763622936, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 94334763623344, i32 647, i32 22), !dbg !76
  %37 = load double, double* %8, align 8, !dbg !76
  %38 = fsub double %36, %37, !dbg !77
  call void @fSubHandler(double %36, double %37, double %38, i64 94334763623344, i64 94334763623736, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 94334763624144, i32 647, i32 26), !dbg !72
  store double %38, double* %12, align 8, !dbg !72
  call void @llvm.dbg.declare(metadata double* %13, metadata !78, metadata !61), !dbg !79
  %39 = load double, double* %7, align 8, !dbg !80
  %40 = fadd double %39, 5.000000e-01, !dbg !81
  call void @fAddHandler(double %39, double 5.000000e-01, double %40, i64 94334763627336, i64 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 94334763629872, i32 648, i32 32), !dbg !82
  %41 = call double @floor(double %40) #1, !dbg !82
  store double %41, double* %13, align 8, !dbg !79
  call void @llvm.dbg.declare(metadata double* %14, metadata !83, metadata !61), !dbg !84
  %42 = load double, double* %8, align 8, !dbg !85
  %43 = fadd double %42, 5.000000e-01, !dbg !86
  call void @fAddHandler(double %42, double 5.000000e-01, double %43, i64 94334763633928, i64 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 94334763634336, i32 649, i32 32), !dbg !87
  %44 = call double @floor(double %43) #1, !dbg !87
  store double %44, double* %14, align 8, !dbg !84
  call void @llvm.dbg.declare(metadata double* %15, metadata !88, metadata !61), !dbg !89
  %45 = load double, double* %9, align 8, !dbg !90
  %46 = fadd double %45, 5.000000e-01, !dbg !91
  call void @fAddHandler(double %45, double 5.000000e-01, double %46, i64 94334763638040, i64 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 94334763638448, i32 650, i32 32), !dbg !92
  %47 = call double @floor(double %46) #1, !dbg !92
  store double %47, double* %15, align 8, !dbg !89
  call void @llvm.dbg.declare(metadata i32* %16, metadata !93, metadata !61), !dbg !95
  %48 = load double, double* %7, align 8, !dbg !96
  %49 = fcmp olt double %48, 0.000000e+00, !dbg !97
  %50 = call i1 @fCmpInstHandler(double %48, double 0.000000e+00, i1 %49, i32 4, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 94334763642592, i32 651, i32 33), !dbg !98
  br i1 %50, label %51, label %57, !dbg !98

; <label>:51:                                     ; preds = %5
  %52 = load double, double* %7, align 8, !dbg !99
  %53 = load double, double* %13, align 8, !dbg !101
  %54 = fsub double %52, %53, !dbg !102
  call void @fSubHandler(double %52, double %53, double %54, i64 94334763643704, i64 94334763644024, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 94334763644432, i32 651, i32 51), !dbg !103
  %55 = call double @fabs(double %54) #1, !dbg !103
  %56 = fcmp olt double %55, 0x3D4F400000000000, !dbg !104
  br label %57

; <label>:57:                                     ; preds = %51, %5
  %58 = phi i1 [ false, %5 ], [ %56, %51 ]
  %59 = zext i1 %58 to i32, !dbg !105
  store i32 %59, i32* %16, align 4, !dbg !107
  call void @llvm.dbg.declare(metadata i32* %17, metadata !108, metadata !61), !dbg !109
  %60 = load double, double* %8, align 8, !dbg !110
  %61 = fcmp olt double %60, 0.000000e+00, !dbg !111
  %62 = call i1 @fCmpInstHandler(double %60, double 0.000000e+00, i1 %61, i32 4, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 94334763649184, i32 652, i32 33), !dbg !112
  br i1 %62, label %63, label %69, !dbg !112

; <label>:63:                                     ; preds = %57
  %64 = load double, double* %8, align 8, !dbg !113
  %65 = load double, double* %14, align 8, !dbg !114
  %66 = fsub double %64, %65, !dbg !115
  call void @fSubHandler(double %64, double %65, double %66, i64 94334763650296, i64 94334763650616, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 94334763651024, i32 652, i32 51), !dbg !116
  %67 = call double @fabs(double %66) #1, !dbg !116
  %68 = fcmp olt double %67, 0x3D4F400000000000, !dbg !117
  br label %69

; <label>:69:                                     ; preds = %63, %57
  %70 = phi i1 [ false, %57 ], [ %68, %63 ]
  %71 = zext i1 %70 to i32, !dbg !118
  store i32 %71, i32* %17, align 4, !dbg !119
  call void @llvm.dbg.declare(metadata i32* %18, metadata !120, metadata !61), !dbg !121
  %72 = load double, double* %9, align 8, !dbg !122
  %73 = fcmp olt double %72, 0.000000e+00, !dbg !123
  %74 = call i1 @fCmpInstHandler(double %72, double 0.000000e+00, i1 %73, i32 4, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 94334763655920, i32 653, i32 33), !dbg !124
  br i1 %74, label %75, label %81, !dbg !124

; <label>:75:                                     ; preds = %69
  %76 = load double, double* %9, align 8, !dbg !125
  %77 = load double, double* %15, align 8, !dbg !126
  %78 = fsub double %76, %77, !dbg !127
  call void @fSubHandler(double %76, double %77, double %78, i64 94334763657032, i64 94334763657352, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 94334763657760, i32 653, i32 51), !dbg !128
  %79 = call double @fabs(double %78) #1, !dbg !128
  %80 = fcmp olt double %79, 0x3D4F400000000000, !dbg !129
  br label %81

; <label>:81:                                     ; preds = %75, %69
  %82 = phi i1 [ false, %69 ], [ %80, %75 ]
  %83 = zext i1 %82 to i32, !dbg !130
  store i32 %83, i32* %18, align 4, !dbg !131
  %84 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !132
  %85 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %84, i32 0, i32 0, !dbg !133
  store double 0.000000e+00, double* %85, align 8, !dbg !134
  %86 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !135
  %87 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %86, i32 0, i32 1, !dbg !136
  store double 0.000000e+00, double* %87, align 8, !dbg !137
  %88 = load double, double* %10, align 8, !dbg !138
  %89 = fsub double %88, 1.000000e+00, !dbg !140
  call void @fSubHandler(double %88, double 1.000000e+00, double %89, i64 94334763662680, i64 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 94334763663184, i32 660, i32 15), !dbg !141
  %90 = call double @fabs(double %89) #1, !dbg !141
  %91 = fcmp olt double %90, 0x3D4F400000000000, !dbg !142
  %92 = call i1 @fCmpInstHandler(double %90, double 0x3D4F400000000000, i1 %91, i32 4, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 94334763664112, i32 660, i32 22), !dbg !143
  br i1 %92, label %93, label %190, !dbg !143

; <label>:93:                                     ; preds = %81
  %94 = load double, double* %9, align 8, !dbg !144
  %95 = load double, double* %7, align 8, !dbg !146
  %96 = fsub double %94, %95, !dbg !147
  call void @fSubHandler(double %94, double %95, double %96, i64 94334763665224, i64 94334763665544, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 94334763665952, i32 660, i32 37), !dbg !148
  %97 = load double, double* %8, align 8, !dbg !148
  %98 = fsub double %96, %97, !dbg !149
  call void @fSubHandler(double %96, double %97, double %98, i64 94334763665952, i64 94334763666344, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 94334763666752, i32 660, i32 41), !dbg !150
  %99 = fcmp ogt double %98, 0.000000e+00, !dbg !150
  %100 = call i1 @fCmpInstHandler(double %98, double 0.000000e+00, i1 %99, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 94334763667168, i32 660, i32 46), !dbg !151
  br i1 %100, label %101, label %190, !dbg !151

; <label>:101:                                    ; preds = %93
  %102 = load double, double* %9, align 8, !dbg !152
  %103 = fcmp une double %102, 0.000000e+00, !dbg !154
  %104 = call i1 @fCmpInstHandler(double %102, double 0.000000e+00, i1 %103, i32 14, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 94334763668480, i32 660, i32 55), !dbg !155
  br i1 %104, label %105, label %190, !dbg !155

; <label>:105:                                    ; preds = %101
  %106 = load i32, i32* %18, align 4, !dbg !156
  %107 = icmp ne i32 %106, 0, !dbg !156
  %108 = sext i32 %106 to i64, !dbg !158
  %109 = call i1 @iCmpInstHandler(i64 %108, i64 0, i1 %107, i32 33, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 94334763669792, i32 660, i32 64), !dbg !158
  br i1 %109, label %190, label %110, !dbg !158

; <label>:110:                                    ; preds = %105
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %19, metadata !159, metadata !61), !dbg !161
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %20, metadata !162, metadata !61), !dbg !163
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %21, metadata !164, metadata !61), !dbg !165
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %22, metadata !166, metadata !61), !dbg !167
  call void @llvm.dbg.declare(metadata double* %23, metadata !168, metadata !61), !dbg !169
  call void @llvm.dbg.declare(metadata double* %24, metadata !170, metadata !61), !dbg !171
  call void @llvm.dbg.declare(metadata double* %25, metadata !172, metadata !61), !dbg !173
  call void @llvm.dbg.declare(metadata i32* %26, metadata !174, metadata !61), !dbg !175
  call void @llvm.dbg.declare(metadata i32* %27, metadata !176, metadata !61), !dbg !177
  %111 = load double, double* %9, align 8, !dbg !178
  %112 = call i32 @gsl_sf_lngamma_sgn_e(double %111, %struct.gsl_sf_result_struct* %19, double* %23), !dbg !179
  store i32 %112, i32* %27, align 4, !dbg !177
  call void @llvm.dbg.declare(metadata i32* %28, metadata !180, metadata !61), !dbg !181
  %113 = load double, double* %9, align 8, !dbg !182
  %114 = load double, double* %7, align 8, !dbg !183
  %115 = fsub double %113, %114, !dbg !184
  call void @fSubHandler(double %113, double %114, double %115, i64 94334763685896, i64 94334763686248, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 94334763686656, i32 665, i32 37), !dbg !185
  %116 = load double, double* %8, align 8, !dbg !185
  %117 = fsub double %115, %116, !dbg !186
  call void @fSubHandler(double %115, double %116, double %117, i64 94334763686656, i64 94334763687048, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 94334763687456, i32 665, i32 41), !dbg !187
  %118 = call i32 @gsl_sf_lngamma_e(double %117, %struct.gsl_sf_result_struct* %20), !dbg !187
  store i32 %118, i32* %28, align 4, !dbg !181
  call void @llvm.dbg.declare(metadata i32* %29, metadata !188, metadata !61), !dbg !189
  %119 = load double, double* %9, align 8, !dbg !190
  %120 = load double, double* %7, align 8, !dbg !191
  %121 = fsub double %119, %120, !dbg !192
  call void @fSubHandler(double %119, double %120, double %121, i64 94334763691576, i64 94334763691928, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 94334763692336, i32 666, i32 41), !dbg !193
  %122 = call i32 @gsl_sf_lngamma_sgn_e(double %121, %struct.gsl_sf_result_struct* %21, double* %24), !dbg !193
  store i32 %122, i32* %29, align 4, !dbg !189
  call void @llvm.dbg.declare(metadata i32* %30, metadata !194, metadata !61), !dbg !195
  %123 = load double, double* %9, align 8, !dbg !196
  %124 = load double, double* %8, align 8, !dbg !197
  %125 = fsub double %123, %124, !dbg !198
  call void @fSubHandler(double %123, double %124, double %125, i64 94334763698152, i64 94334763698504, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 94334763698912, i32 667, i32 41), !dbg !199
  %126 = call i32 @gsl_sf_lngamma_sgn_e(double %125, %struct.gsl_sf_result_struct* %22, double* %25), !dbg !199
  store i32 %126, i32* %30, align 4, !dbg !195
  %127 = load i32, i32* %27, align 4, !dbg !200
  %128 = icmp ne i32 %127, 0, !dbg !202
  %129 = sext i32 %127 to i64, !dbg !203
  %130 = call i1 @iCmpInstHandler(i64 %129, i64 0, i1 %128, i32 33, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 94334763701952, i32 669, i32 15), !dbg !203
  br i1 %130, label %146, label %131, !dbg !203

; <label>:131:                                    ; preds = %110
  %132 = load i32, i32* %28, align 4, !dbg !204
  %133 = icmp ne i32 %132, 0, !dbg !206
  %134 = sext i32 %132 to i64, !dbg !207
  %135 = call i1 @iCmpInstHandler(i64 %134, i64 0, i1 %133, i32 33, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 94334763703408, i32 669, i32 39), !dbg !207
  br i1 %135, label %146, label %136, !dbg !207

; <label>:136:                                    ; preds = %131
  %137 = load i32, i32* %29, align 4, !dbg !208
  %138 = icmp ne i32 %137, 0, !dbg !209
  %139 = sext i32 %137 to i64, !dbg !210
  %140 = call i1 @iCmpInstHandler(i64 %139, i64 0, i1 %138, i32 33, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 94334763704720, i32 670, i32 18), !dbg !210
  br i1 %140, label %146, label %141, !dbg !210

; <label>:141:                                    ; preds = %136
  %142 = load i32, i32* %30, align 4, !dbg !211
  %143 = icmp ne i32 %142, 0, !dbg !213
  %144 = sext i32 %142 to i64, !dbg !214
  %145 = call i1 @iCmpInstHandler(i64 %144, i64 0, i1 %143, i32 33, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 94334763708096, i32 670, i32 42), !dbg !214
  br i1 %145, label %146, label %155, !dbg !214

; <label>:146:                                    ; preds = %141, %136, %131, %110
  br label %147, !dbg !216, !llvm.loop !218

; <label>:147:                                    ; preds = %146
  %148 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !219
  %149 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %148, i32 0, i32 0, !dbg !219
  store double 0x7FF8000000000000, double* %149, align 8, !dbg !219
  %150 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !219
  %151 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %150, i32 0, i32 1, !dbg !219
  store double 0x7FF8000000000000, double* %151, align 8, !dbg !219
  br label %152, !dbg !219, !llvm.loop !222

; <label>:152:                                    ; preds = %147
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 672, i32 1), !dbg !224
  store i32 1, i32* %6, align 4, !dbg !224
  br label %453, !dbg !224
                                                  ; No predecessors!
  br label %154, !dbg !227

; <label>:154:                                    ; preds = %153
  br label %155, !dbg !229

; <label>:155:                                    ; preds = %154, %141
  %156 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %19, i32 0, i32 0, !dbg !230
  %157 = load double, double* %156, align 8, !dbg !230
  %158 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %20, i32 0, i32 0, !dbg !231
  %159 = load double, double* %158, align 8, !dbg !231
  %160 = fadd double %157, %159, !dbg !232
  call void @fAddHandler(double %157, double %159, double %160, i64 94334763721400, i64 94334763723496, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 94334763725168, i32 676, i32 36), !dbg !233
  %161 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %21, i32 0, i32 0, !dbg !233
  %162 = load double, double* %161, align 8, !dbg !233
  %163 = fsub double %160, %162, !dbg !234
  call void @fSubHandler(double %160, double %162, double %163, i64 94334763725168, i64 94334763726008, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 94334763727680, i32 676, i32 51), !dbg !235
  %164 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %22, i32 0, i32 0, !dbg !235
  %165 = load double, double* %164, align 8, !dbg !235
  %166 = fsub double %163, %165, !dbg !236
  call void @fSubHandler(double %163, double %165, double %166, i64 94334763727680, i64 94334763728520, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 94334763730192, i32 676, i32 65), !dbg !237
  %167 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %19, i32 0, i32 1, !dbg !237
  %168 = load double, double* %167, align 8, !dbg !237
  %169 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %20, i32 0, i32 1, !dbg !238
  %170 = load double, double* %169, align 8, !dbg !238
  %171 = fadd double %168, %170, !dbg !239
  call void @fAddHandler(double %168, double %170, double %171, i64 94334763731032, i64 94334763733128, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 94334763734800, i32 677, i32 36), !dbg !240
  %172 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %21, i32 0, i32 1, !dbg !240
  %173 = load double, double* %172, align 8, !dbg !240
  %174 = fadd double %171, %173, !dbg !241
  call void @fAddHandler(double %171, double %173, double %174, i64 94334763734800, i64 94334763735640, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 94334763737312, i32 677, i32 51), !dbg !242
  %175 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %22, i32 0, i32 1, !dbg !242
  %176 = load double, double* %175, align 8, !dbg !242
  %177 = fadd double %174, %176, !dbg !243
  call void @fAddHandler(double %174, double %176, double %177, i64 94334763737312, i64 94334763738152, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 94334763739824, i32 677, i32 65), !dbg !244
  %178 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !244
  %179 = call i32 @gsl_sf_exp_err_e(double %166, double %177, %struct.gsl_sf_result_struct* %178), !dbg !245
  store i32 %179, i32* %26, align 4, !dbg !246
  %180 = load double, double* %23, align 8, !dbg !247
  %181 = load double, double* %24, align 8, !dbg !248
  %182 = load double, double* %25, align 8, !dbg !249
  %183 = fmul double %181, %182, !dbg !250
  call void @fMulHandler(double %181, double %182, double %183, i64 94334763742408, i64 94334763742792, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 94334763743200, i32 680, i32 46), !dbg !251
  %184 = fdiv double %180, %183, !dbg !251
  call void @fDivHandler(double %180, double %183, double %184, i64 94334763742024, i64 94334763743200, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 94334763743616, i32 680, i32 31), !dbg !252
  %185 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !252
  %186 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %185, i32 0, i32 0, !dbg !253
  %187 = load double, double* %186, align 8, !dbg !254
  %188 = fmul double %187, %184, !dbg !254
  call void @fMulHandler(double %187, double %184, double %188, i64 94334763744840, i64 94334763743616, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 94334763745248, i32 680, i32 17), !dbg !254
  store double %188, double* %186, align 8, !dbg !254
  %189 = load i32, i32* %26, align 4, !dbg !255
  store i32 %189, i32* %6, align 4, !dbg !256
  br label %453, !dbg !256

; <label>:190:                                    ; preds = %105, %101, %93, %81
  %191 = load double, double* %10, align 8, !dbg !257
  %192 = fcmp olt double %191, -1.000000e+00, !dbg !259
  %193 = call i1 @fCmpInstHandler(double %191, double -1.000000e+00, i1 %192, i32 4, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 94334763749920, i32 684, i32 8), !dbg !260
  br i1 %193, label %198, label %194, !dbg !260

; <label>:194:                                    ; preds = %190
  %195 = load double, double* %10, align 8, !dbg !261
  %196 = fcmp ole double 1.000000e+00, %195, !dbg !263
  %197 = call i1 @fCmpInstHandler(double 1.000000e+00, double %195, i1 %196, i32 5, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 94334763751376, i32 684, i32 22), !dbg !264
  br i1 %197, label %198, label %207, !dbg !264

; <label>:198:                                    ; preds = %194, %190
  br label %199, !dbg !265, !llvm.loop !267

; <label>:199:                                    ; preds = %198
  %200 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !268
  %201 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %200, i32 0, i32 0, !dbg !268
  store double 0x7FF8000000000000, double* %201, align 8, !dbg !268
  %202 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !268
  %203 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %202, i32 0, i32 1, !dbg !268
  store double 0x7FF8000000000000, double* %203, align 8, !dbg !268
  br label %204, !dbg !268, !llvm.loop !271

; <label>:204:                                    ; preds = %199
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 685, i32 1), !dbg !273
  store i32 1, i32* %6, align 4, !dbg !273
  br label %453, !dbg !273
                                                  ; No predecessors!
  br label %206, !dbg !276

; <label>:206:                                    ; preds = %205
  br label %207, !dbg !278

; <label>:207:                                    ; preds = %206, %194
  %208 = load i32, i32* %18, align 4, !dbg !279
  %209 = icmp ne i32 %208, 0, !dbg !279
  %210 = sext i32 %208 to i64, !dbg !281
  %211 = call i1 @iCmpInstHandler(i64 %210, i64 0, i1 %209, i32 33, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 94334763759760, i32 688, i32 6), !dbg !281
  br i1 %211, label %212, label %244, !dbg !281

; <label>:212:                                    ; preds = %207
  %213 = load i32, i32* %16, align 4, !dbg !282
  %214 = icmp ne i32 %213, 0, !dbg !282
  %215 = sext i32 %213 to i64, !dbg !285
  %216 = call i1 @iCmpInstHandler(i64 %215, i64 0, i1 %214, i32 33, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 94334763762480, i32 692, i32 11), !dbg !285
  br i1 %216, label %217, label %223, !dbg !285

; <label>:217:                                    ; preds = %212
  %218 = load double, double* %7, align 8, !dbg !286
  %219 = load double, double* %9, align 8, !dbg !288
  %220 = fadd double %219, 1.000000e-01, !dbg !289
  call void @fAddHandler(double %219, double 1.000000e-01, double %220, i64 94334763765176, i64 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 94334763765680, i32 692, i32 34), !dbg !290
  %221 = fcmp ogt double %218, %220, !dbg !290
  %222 = call i1 @fCmpInstHandler(double %218, double %220, i1 %221, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 94334763766064, i32 692, i32 30), !dbg !291
  br i1 %222, label %243, label %223, !dbg !291

; <label>:223:                                    ; preds = %217, %212
  %224 = load i32, i32* %17, align 4, !dbg !292
  %225 = icmp ne i32 %224, 0, !dbg !292
  %226 = sext i32 %224 to i64, !dbg !294
  %227 = call i1 @iCmpInstHandler(i64 %226, i64 0, i1 %225, i32 33, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 94334763767376, i32 692, i32 47), !dbg !294
  br i1 %227, label %228, label %234, !dbg !294

; <label>:228:                                    ; preds = %223
  %229 = load double, double* %8, align 8, !dbg !295
  %230 = load double, double* %9, align 8, !dbg !297
  %231 = fadd double %230, 1.000000e-01, !dbg !298
  call void @fAddHandler(double %230, double 1.000000e-01, double %231, i64 94334763770072, i64 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 94334763770512, i32 692, i32 70), !dbg !299
  %232 = fcmp ogt double %229, %231, !dbg !299
  %233 = call i1 @fCmpInstHandler(double %229, double %231, i1 %232, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 94334763770896, i32 692, i32 66), !dbg !300
  br i1 %233, label %243, label %234, !dbg !300

; <label>:234:                                    ; preds = %228, %223
  br label %235, !dbg !301, !llvm.loop !303

; <label>:235:                                    ; preds = %234
  %236 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !304
  %237 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %236, i32 0, i32 0, !dbg !304
  store double 0x7FF8000000000000, double* %237, align 8, !dbg !304
  %238 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !304
  %239 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %238, i32 0, i32 1, !dbg !304
  store double 0x7FF8000000000000, double* %239, align 8, !dbg !304
  br label %240, !dbg !304, !llvm.loop !307

; <label>:240:                                    ; preds = %235
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 693, i32 1), !dbg !309
  store i32 1, i32* %6, align 4, !dbg !309
  br label %453, !dbg !309
                                                  ; No predecessors!
  br label %242, !dbg !312

; <label>:242:                                    ; preds = %241
  br label %243, !dbg !314

; <label>:243:                                    ; preds = %242, %228, %217
  br label %244, !dbg !315

; <label>:244:                                    ; preds = %243, %207
  %245 = load double, double* %9, align 8, !dbg !316
  %246 = load double, double* %8, align 8, !dbg !318
  %247 = fsub double %245, %246, !dbg !319
  call void @fSubHandler(double %245, double %246, double %247, i64 94334763779144, i64 94334763779464, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 94334763779872, i32 697, i32 12), !dbg !320
  %248 = call double @fabs(double %247) #1, !dbg !320
  %249 = fcmp olt double %248, 0x3D4F400000000000, !dbg !321
  %250 = call i1 @fCmpInstHandler(double %248, double 0x3D4F400000000000, i1 %249, i32 4, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 94334763780832, i32 697, i32 16), !dbg !322
  br i1 %250, label %258, label %251, !dbg !322

; <label>:251:                                    ; preds = %244
  %252 = load double, double* %9, align 8, !dbg !323
  %253 = load double, double* %7, align 8, !dbg !325
  %254 = fsub double %252, %253, !dbg !326
  call void @fSubHandler(double %252, double %253, double %254, i64 94334763781944, i64 94334763782264, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 94334763782672, i32 697, i32 34), !dbg !327
  %255 = call double @fabs(double %254) #1, !dbg !327
  %256 = fcmp olt double %255, 0x3D4F400000000000, !dbg !328
  %257 = call i1 @fCmpInstHandler(double %255, double 0x3D4F400000000000, i1 %256, i32 4, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 94334763783632, i32 697, i32 38), !dbg !329
  br i1 %257, label %258, label %263, !dbg !329

; <label>:258:                                    ; preds = %251, %244
  %259 = load double, double* %10, align 8, !dbg !330
  %260 = load double, double* %12, align 8, !dbg !332
  %261 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !333
  %262 = call i32 @pow_omx(double %259, double %260, %struct.gsl_sf_result_struct* %261), !dbg !334
  store i32 %262, i32* %6, align 4, !dbg !335
  br label %453, !dbg !335

; <label>:263:                                    ; preds = %251
  %264 = load double, double* %7, align 8, !dbg !336
  %265 = fcmp oge double %264, 0.000000e+00, !dbg !338
  %266 = call i1 @fCmpInstHandler(double %264, double 0.000000e+00, i1 %265, i32 3, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 94334763788960, i32 701, i32 8), !dbg !339
  br i1 %266, label %267, label %290, !dbg !339

; <label>:267:                                    ; preds = %263
  %268 = load double, double* %8, align 8, !dbg !340
  %269 = fcmp oge double %268, 0.000000e+00, !dbg !342
  %270 = call i1 @fCmpInstHandler(double %268, double 0.000000e+00, i1 %269, i32 3, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 94334763790416, i32 701, i32 20), !dbg !343
  br i1 %270, label %271, label %290, !dbg !343

; <label>:271:                                    ; preds = %267
  %272 = load double, double* %9, align 8, !dbg !344
  %273 = fcmp oge double %272, 0.000000e+00, !dbg !346
  %274 = call i1 @fCmpInstHandler(double %272, double 0.000000e+00, i1 %273, i32 3, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 94334763791728, i32 701, i32 32), !dbg !347
  br i1 %274, label %275, label %290, !dbg !347

; <label>:275:                                    ; preds = %271
  %276 = load double, double* %10, align 8, !dbg !348
  %277 = fcmp oge double %276, 0.000000e+00, !dbg !350
  %278 = call i1 @fCmpInstHandler(double %276, double 0.000000e+00, i1 %277, i32 3, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 94334763793040, i32 701, i32 43), !dbg !351
  br i1 %278, label %279, label %290, !dbg !351

; <label>:279:                                    ; preds = %275
  %280 = load double, double* %10, align 8, !dbg !352
  %281 = fcmp olt double %280, 9.950000e-01, !dbg !354
  %282 = call i1 @fCmpInstHandler(double %280, double 9.950000e-01, i1 %281, i32 4, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 94334763794448, i32 701, i32 55), !dbg !355
  br i1 %282, label %283, label %290, !dbg !355

; <label>:283:                                    ; preds = %279
  %284 = load double, double* %7, align 8, !dbg !356
  %285 = load double, double* %8, align 8, !dbg !358
  %286 = load double, double* %9, align 8, !dbg !359
  %287 = load double, double* %10, align 8, !dbg !360
  %288 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !361
  %289 = call i32 @hyperg_2F1_series(double %284, double %285, double %286, double %287, %struct.gsl_sf_result_struct* %288), !dbg !362
  store i32 %289, i32* %6, align 4, !dbg !363
  br label %453, !dbg !363

; <label>:290:                                    ; preds = %279, %275, %271, %267, %263
  %291 = load double, double* %7, align 8, !dbg !364
  %292 = call double @fabs(double %291) #1, !dbg !366
  %293 = fcmp olt double %292, 1.000000e+01, !dbg !367
  %294 = call i1 @fCmpInstHandler(double %292, double 1.000000e+01, i1 %293, i32 4, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 94334763803392, i32 708, i32 14), !dbg !368
  br i1 %294, label %295, label %365, !dbg !368

; <label>:295:                                    ; preds = %290
  %296 = load double, double* %8, align 8, !dbg !369
  %297 = call double @fabs(double %296) #1, !dbg !371
  %298 = fcmp olt double %297, 1.000000e+01, !dbg !372
  %299 = call i1 @fCmpInstHandler(double %297, double 1.000000e+01, i1 %298, i32 4, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 94334763805392, i32 708, i32 32), !dbg !373
  br i1 %299, label %300, label %365, !dbg !373

; <label>:300:                                    ; preds = %295
  %301 = load i32, i32* %16, align 4, !dbg !374
  %302 = icmp ne i32 %301, 0, !dbg !374
  %303 = sext i32 %301 to i64, !dbg !377
  %304 = call i1 @iCmpInstHandler(i64 %303, i64 0, i1 %302, i32 33, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 94334763806672, i32 712, i32 8), !dbg !377
  br i1 %304, label %305, label %312, !dbg !377

; <label>:305:                                    ; preds = %300
  %306 = load double, double* %13, align 8, !dbg !378
  %307 = load double, double* %8, align 8, !dbg !380
  %308 = load double, double* %9, align 8, !dbg !381
  %309 = load double, double* %10, align 8, !dbg !382
  %310 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !383
  %311 = call i32 @hyperg_2F1_series(double %306, double %307, double %308, double %309, %struct.gsl_sf_result_struct* %310), !dbg !384
  store i32 %311, i32* %6, align 4, !dbg !385
  br label %453, !dbg !385

; <label>:312:                                    ; preds = %300
  %313 = load i32, i32* %17, align 4, !dbg !386
  %314 = icmp ne i32 %313, 0, !dbg !386
  %315 = sext i32 %313 to i64, !dbg !388
  %316 = call i1 @iCmpInstHandler(i64 %315, i64 0, i1 %314, i32 33, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 94334763813968, i32 715, i32 8), !dbg !388
  br i1 %316, label %317, label %324, !dbg !388

; <label>:317:                                    ; preds = %312
  %318 = load double, double* %7, align 8, !dbg !389
  %319 = load double, double* %14, align 8, !dbg !391
  %320 = load double, double* %9, align 8, !dbg !392
  %321 = load double, double* %10, align 8, !dbg !393
  %322 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !394
  %323 = call i32 @hyperg_2F1_series(double %318, double %319, double %320, double %321, %struct.gsl_sf_result_struct* %322), !dbg !395
  store i32 %323, i32* %6, align 4, !dbg !396
  br label %453, !dbg !396

; <label>:324:                                    ; preds = %312
  %325 = load double, double* %10, align 8, !dbg !397
  %326 = fcmp olt double %325, -2.500000e-01, !dbg !399
  %327 = call i1 @fCmpInstHandler(double %325, double -2.500000e-01, i1 %326, i32 4, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 94334763821312, i32 719, i32 10), !dbg !400
  br i1 %327, label %328, label %335, !dbg !400

; <label>:328:                                    ; preds = %324
  %329 = load double, double* %7, align 8, !dbg !401
  %330 = load double, double* %8, align 8, !dbg !403
  %331 = load double, double* %9, align 8, !dbg !404
  %332 = load double, double* %10, align 8, !dbg !405
  %333 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !406
  %334 = call i32 @hyperg_2F1_luke(double %329, double %330, double %331, double %332, %struct.gsl_sf_result_struct* %333), !dbg !407
  store i32 %334, i32* %6, align 4, !dbg !408
  br label %453, !dbg !408

; <label>:335:                                    ; preds = %324
  %336 = load double, double* %10, align 8, !dbg !409
  %337 = fcmp olt double %336, 5.000000e-01, !dbg !411
  %338 = call i1 @fCmpInstHandler(double %336, double 5.000000e-01, i1 %337, i32 4, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 94334763827568, i32 722, i32 15), !dbg !412
  br i1 %338, label %339, label %346, !dbg !412

; <label>:339:                                    ; preds = %335
  %340 = load double, double* %7, align 8, !dbg !413
  %341 = load double, double* %8, align 8, !dbg !415
  %342 = load double, double* %9, align 8, !dbg !416
  %343 = load double, double* %10, align 8, !dbg !417
  %344 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !418
  %345 = call i32 @hyperg_2F1_series(double %340, double %341, double %342, double %343, %struct.gsl_sf_result_struct* %344), !dbg !419
  store i32 %345, i32* %6, align 4, !dbg !420
  br label %453, !dbg !420

; <label>:346:                                    ; preds = %335
  %347 = load double, double* %9, align 8, !dbg !421
  %348 = call double @fabs(double %347) #1, !dbg !424
  %349 = fcmp ogt double %348, 1.000000e+01, !dbg !425
  %350 = call i1 @fCmpInstHandler(double %348, double 1.000000e+01, i1 %349, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 94334763834192, i32 726, i32 18), !dbg !426
  br i1 %350, label %351, label %358, !dbg !426

; <label>:351:                                    ; preds = %346
  %352 = load double, double* %7, align 8, !dbg !427
  %353 = load double, double* %8, align 8, !dbg !429
  %354 = load double, double* %9, align 8, !dbg !430
  %355 = load double, double* %10, align 8, !dbg !431
  %356 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !432
  %357 = call i32 @hyperg_2F1_series(double %352, double %353, double %354, double %355, %struct.gsl_sf_result_struct* %356), !dbg !433
  store i32 %357, i32* %6, align 4, !dbg !434
  br label %453, !dbg !434

; <label>:358:                                    ; preds = %346
  %359 = load double, double* %7, align 8, !dbg !435
  %360 = load double, double* %8, align 8, !dbg !437
  %361 = load double, double* %9, align 8, !dbg !438
  %362 = load double, double* %10, align 8, !dbg !439
  %363 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !440
  %364 = call i32 @hyperg_2F1_reflect(double %359, double %360, double %361, double %362, %struct.gsl_sf_result_struct* %363), !dbg !441
  store i32 %364, i32* %6, align 4, !dbg !442
  br label %453, !dbg !442

; <label>:365:                                    ; preds = %295, %290
  call void @llvm.dbg.declare(metadata double* %31, metadata !443, metadata !61), !dbg !445
  call void @llvm.dbg.declare(metadata double* %32, metadata !446, metadata !61), !dbg !447
  %366 = load double, double* %7, align 8, !dbg !448
  %367 = call double @fabs(double %366) #1, !dbg !450
  %368 = load double, double* %8, align 8, !dbg !451
  %369 = call double @fabs(double %368) #1, !dbg !452
  %370 = fcmp ogt double %367, %369, !dbg !454
  %371 = call i1 @fCmpInstHandler(double %367, double %369, i1 %370, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 94334763848720, i32 740, i32 16), !dbg !455
  br i1 %371, label %372, label %375, !dbg !455

; <label>:372:                                    ; preds = %365
  %373 = load double, double* %7, align 8, !dbg !456
  store double %373, double* %32, align 8, !dbg !458
  %374 = load double, double* %8, align 8, !dbg !459
  store double %374, double* %31, align 8, !dbg !460
  br label %378, !dbg !461

; <label>:375:                                    ; preds = %365
  %376 = load double, double* %8, align 8, !dbg !462
  store double %376, double* %32, align 8, !dbg !464
  %377 = load double, double* %7, align 8, !dbg !465
  store double %377, double* %31, align 8, !dbg !466
  br label %378

; <label>:378:                                    ; preds = %375, %372
  %379 = load double, double* %10, align 8, !dbg !467
  %380 = fcmp olt double %379, 0.000000e+00, !dbg !469
  %381 = call i1 @fCmpInstHandler(double %379, double 0.000000e+00, i1 %380, i32 4, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 94334763853872, i32 749, i32 10), !dbg !470
  br i1 %381, label %382, label %389, !dbg !470

; <label>:382:                                    ; preds = %378
  %383 = load double, double* %7, align 8, !dbg !471
  %384 = load double, double* %8, align 8, !dbg !473
  %385 = load double, double* %9, align 8, !dbg !474
  %386 = load double, double* %10, align 8, !dbg !475
  %387 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !476
  %388 = call i32 @hyperg_2F1_luke(double %383, double %384, double %385, double %386, %struct.gsl_sf_result_struct* %387), !dbg !477
  store i32 %388, i32* %6, align 4, !dbg !478
  br label %453, !dbg !478

; <label>:389:                                    ; preds = %378
  %390 = load double, double* %31, align 8, !dbg !479
  %391 = call double @fabs(double %390) #1, !dbg !481
  %392 = call double @GSL_MAX_DBL(double %391, double 1.000000e+00), !dbg !482
  %393 = load double, double* %32, align 8, !dbg !484
  %394 = call double @fabs(double %393) #1, !dbg !485
  %395 = fmul double %392, %394, !dbg !487
  call void @fMulHandler(double %392, double %394, double %395, i64 94334763860760, i64 94334763861648, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 94334763862128, i32 755, i32 33), !dbg !488
  %396 = load double, double* %10, align 8, !dbg !488
  %397 = call double @fabs(double %396) #1, !dbg !489
  %398 = fmul double %395, %397, !dbg !491
  call void @fMulHandler(double %395, double %397, double %398, i64 94334763862128, i64 94334763862992, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 94334763863472, i32 755, i32 42), !dbg !492
  %399 = load double, double* %9, align 8, !dbg !492
  %400 = call double @fabs(double %399) #1, !dbg !493
  %401 = fmul double 2.000000e+00, %400, !dbg !495
  call void @fMulHandler(double 2.000000e+00, double %400, double %401, i64 0, i64 94334763864336, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 94334763864912, i32 755, i32 56), !dbg !496
  %402 = fcmp olt double %398, %401, !dbg !496
  %403 = call i1 @fCmpInstHandler(double %398, double %401, i1 %402, i32 4, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 94334763865296, i32 755, i32 51), !dbg !497
  br i1 %403, label %404, label %411, !dbg !497

; <label>:404:                                    ; preds = %389
  %405 = load double, double* %7, align 8, !dbg !498
  %406 = load double, double* %8, align 8, !dbg !500
  %407 = load double, double* %9, align 8, !dbg !501
  %408 = load double, double* %10, align 8, !dbg !502
  %409 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !503
  %410 = call i32 @hyperg_2F1_series(double %405, double %406, double %407, double %408, %struct.gsl_sf_result_struct* %409), !dbg !504
  store i32 %410, i32* %6, align 4, !dbg !505
  br label %453, !dbg !505

; <label>:411:                                    ; preds = %389
  %412 = load double, double* %32, align 8, !dbg !506
  %413 = load double, double* %32, align 8, !dbg !508
  %414 = fmul double %412, %413, !dbg !509
  call void @fMulHandler(double %412, double %413, double %414, i64 94334763871032, i64 94334763871352, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 94334763871760, i32 762, i32 15), !dbg !510
  %415 = load double, double* %10, align 8, !dbg !510
  %416 = fmul double %414, %415, !dbg !511
  call void @fMulHandler(double %414, double %415, double %416, i64 94334763871760, i64 94334763872152, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 94334763872560, i32 762, i32 18), !dbg !512
  %417 = load double, double* %10, align 8, !dbg !512
  %418 = fmul double %416, %417, !dbg !513
  call void @fMulHandler(double %416, double %417, double %418, i64 94334763872560, i64 94334763872952, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 94334763873360, i32 762, i32 20), !dbg !514
  %419 = call double @fabs(double %418) #1, !dbg !514
  %420 = load double, double* %32, align 8, !dbg !515
  %421 = call double @fabs(double %420) #1, !dbg !516
  %422 = fmul double 1.000000e-03, %421, !dbg !518
  call void @fMulHandler(double 1.000000e-03, double %421, double %422, i64 0, i64 94334763874768, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 94334763875344, i32 762, i32 31), !dbg !519
  %423 = fcmp olt double %419, %422, !dbg !519
  %424 = call i1 @fCmpInstHandler(double %419, double %422, i1 %423, i32 4, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 94334763875728, i32 762, i32 24), !dbg !520
  br i1 %424, label %425, label %446, !dbg !520

; <label>:425:                                    ; preds = %411
  %426 = load double, double* %31, align 8, !dbg !521
  %427 = call double @fabs(double %426) #1, !dbg !523
  %428 = fcmp olt double %427, 1.000000e+01, !dbg !524
  %429 = call i1 @fCmpInstHandler(double %427, double 1.000000e+01, i1 %428, i32 4, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 94334763877760, i32 762, i32 53), !dbg !525
  br i1 %429, label %430, label %446, !dbg !525

; <label>:430:                                    ; preds = %425
  call void @llvm.dbg.declare(metadata i32* %33, metadata !526, metadata !61), !dbg !528
  %431 = load double, double* %31, align 8, !dbg !529
  %432 = load double, double* %9, align 8, !dbg !530
  %433 = load double, double* %32, align 8, !dbg !531
  %434 = load double, double* %10, align 8, !dbg !532
  %435 = fmul double %433, %434, !dbg !533
  call void @fMulHandler(double %433, double %434, double %435, i64 94334763880488, i64 94334763880872, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 94334763881280, i32 765, i32 47), !dbg !534
  %436 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !534
  %437 = call i32 @gsl_sf_hyperg_1F1_e(double %431, double %432, double %435, %struct.gsl_sf_result_struct* %436), !dbg !535
  store i32 %437, i32* %33, align 4, !dbg !528
  %438 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !536
  %439 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %438, i32 0, i32 0, !dbg !537
  %440 = load double, double* %439, align 8, !dbg !537
  %441 = call double @fabs(double %440) #1, !dbg !538
  %442 = fmul double 1.000000e-03, %441, !dbg !539
  call void @fMulHandler(double 1.000000e-03, double %441, double %442, i64 0, i64 94334763887232, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 94334763887744, i32 766, i32 27), !dbg !540
  %443 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !540
  %444 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %443, i32 0, i32 1, !dbg !541
  store double %442, double* %444, align 8, !dbg !542
  %445 = load i32, i32* %33, align 4, !dbg !543
  store i32 %445, i32* %6, align 4, !dbg !544
  br label %453, !dbg !544

; <label>:446:                                    ; preds = %425, %411
  %447 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !545
  %448 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %447, i32 0, i32 0, !dbg !546
  store double 0.000000e+00, double* %448, align 8, !dbg !547
  %449 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !548
  %450 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %449, i32 0, i32 1, !dbg !549
  store double 0.000000e+00, double* %450, align 8, !dbg !550
  br label %451, !dbg !551, !llvm.loop !552

; <label>:451:                                    ; preds = %446
  call void @gsl_error(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 773, i32 24), !dbg !553
  store i32 24, i32* %6, align 4, !dbg !553
  br label %453, !dbg !553
                                                  ; No predecessors!
  br label %453

; <label>:453:                                    ; preds = %452, %451, %430, %404, %382, %358, %351, %339, %328, %317, %305, %283, %258, %240, %204, %155, %152
  %454 = load i32, i32* %6, align 4, !dbg !556
  ret i32 %454, !dbg !556
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readnone
declare double @floor(double) #2

; Function Attrs: nounwind readnone
declare double @fabs(double) #2

declare i32 @gsl_sf_lngamma_sgn_e(double, %struct.gsl_sf_result_struct*, double*) #3

declare i32 @gsl_sf_lngamma_e(double, %struct.gsl_sf_result_struct*) #3

declare void @gsl_error(i8*, i8*, i32, i32) #3

declare i32 @gsl_sf_exp_err_e(double, double, %struct.gsl_sf_result_struct*) #3

; Function Attrs: nounwind uwtable
define internal i32 @pow_omx(double, double, %struct.gsl_sf_result_struct*) #0 !dbg !557 {
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca %struct.gsl_sf_result_struct*, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !560, metadata !61), !dbg !561
  store double %1, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !562, metadata !61), !dbg !563
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %6, metadata !564, metadata !61), !dbg !565
  call void @llvm.dbg.declare(metadata double* %7, metadata !566, metadata !61), !dbg !567
  call void @llvm.dbg.declare(metadata double* %8, metadata !568, metadata !61), !dbg !569
  %9 = load double, double* %4, align 8, !dbg !570
  %10 = call double @fabs(double %9) #1, !dbg !572
  %11 = fcmp olt double %10, 0x3F48406003B2AE5A, !dbg !573
  %12 = call i1 @fCmpInstHandler(double %10, double 0x3F48406003B2AE5A, i1 %11, i32 4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @3, i32 0, i32 0), i64 94334763905552, i32 629, i32 14), !dbg !574
  br i1 %12, label %13, label %31, !dbg !574

; <label>:13:                                     ; preds = %3
  %14 = load double, double* %4, align 8, !dbg !575
  %15 = fsub double -0.000000e+00, %14, !dbg !577
  call void @fSubHandler(double -0.000000e+00, double %14, double %15, i64 0, i64 94334763717560, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @3, i32 0, i32 0), i64 94334763906976, i32 630, i32 14), !dbg !578
  %16 = load double, double* %4, align 8, !dbg !578
  %17 = load double, double* %4, align 8, !dbg !579
  %18 = load double, double* %4, align 8, !dbg !580
  %19 = fdiv double %18, 4.000000e+00, !dbg !581
  call void @fDivHandler(double %18, double 4.000000e+00, double %19, i64 94334763645480, i64 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @3, i32 0, i32 0), i64 94334763908352, i32 630, i32 51), !dbg !582
  %20 = fadd double 0x3FD5555555555555, %19, !dbg !582
  call void @fAddHandler(double 0x3FD5555555555555, double %19, double %20, i64 0, i64 94334763908352, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @3, i32 0, i32 0), i64 94334763908800, i32 630, i32 48), !dbg !583
  %21 = load double, double* %4, align 8, !dbg !583
  %22 = load double, double* %4, align 8, !dbg !584
  %23 = fmul double %21, %22, !dbg !585
  call void @fMulHandler(double %21, double %22, double %23, i64 94334763630472, i64 94334763615944, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @3, i32 0, i32 0), i64 94334763909792, i32 630, i32 59), !dbg !586
  %24 = fdiv double %23, 5.000000e+00, !dbg !586
  call void @fDivHandler(double %23, double 5.000000e+00, double %24, i64 94334763909792, i64 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @3, i32 0, i32 0), i64 94334763910304, i32 630, i32 61), !dbg !587
  %25 = fadd double %20, %24, !dbg !587
  call void @fAddHandler(double %20, double %24, double %25, i64 94334763908800, i64 94334763910304, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @3, i32 0, i32 0), i64 94334763910688, i32 630, i32 56), !dbg !588
  %26 = fmul double %17, %25, !dbg !588
  call void @fMulHandler(double %17, double %25, double %26, i64 94334763682424, i64 94334763910688, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @3, i32 0, i32 0), i64 94334763911104, i32 630, i32 38), !dbg !589
  %27 = fadd double 5.000000e-01, %26, !dbg !589
  call void @fAddHandler(double 5.000000e-01, double %26, double %27, i64 0, i64 94334763911104, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @3, i32 0, i32 0), i64 94334763911552, i32 630, i32 35), !dbg !590
  %28 = fmul double %16, %27, !dbg !590
  call void @fMulHandler(double %16, double %27, double %28, i64 94334763688136, i64 94334763911552, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @3, i32 0, i32 0), i64 94334763911936, i32 630, i32 25), !dbg !591
  %29 = fadd double 1.000000e+00, %28, !dbg !591
  call void @fAddHandler(double 1.000000e+00, double %28, double %29, i64 0, i64 94334763911936, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @3, i32 0, i32 0), i64 94334763912384, i32 630, i32 22), !dbg !592
  %30 = fmul double %15, %29, !dbg !592
  call void @fMulHandler(double %15, double %29, double %30, i64 94334763906976, i64 94334763912384, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @3, i32 0, i32 0), i64 94334763912768, i32 630, i32 16), !dbg !593
  store double %30, double* %7, align 8, !dbg !593
  br label %35, !dbg !594

; <label>:31:                                     ; preds = %3
  %32 = load double, double* %4, align 8, !dbg !595
  %33 = fsub double 1.000000e+00, %32, !dbg !597
  call void @fSubHandler(double 1.000000e+00, double %32, double %33, i64 0, i64 94334763914008, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @3, i32 0, i32 0), i64 94334763914384, i32 633, i32 21), !dbg !598
  %34 = call double @log(double %33) #5, !dbg !598
  call void @callOneArgHandler(i32 12, double %33, double %34, i64 94334763914384, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @3, i32 0, i32 0), i64 94334763801600, i32 633, i32 14), !dbg !599
  store double %34, double* %7, align 8, !dbg !599
  br label %35

; <label>:35:                                     ; preds = %31, %13
  %36 = load double, double* %5, align 8, !dbg !600
  %37 = load double, double* %7, align 8, !dbg !601
  %38 = fmul double %36, %37, !dbg !602
  call void @fMulHandler(double %36, double %37, double %38, i64 94334763916488, i64 94334763916808, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @3, i32 0, i32 0), i64 94334763917216, i32 635, i32 17), !dbg !603
  store double %38, double* %8, align 8, !dbg !603
  %39 = load double, double* %8, align 8, !dbg !604
  %40 = load double, double* %8, align 8, !dbg !605
  %41 = call double @fabs(double %40) #1, !dbg !606
  %42 = fmul double 0x3CB0000000000000, %41, !dbg !607
  call void @fMulHandler(double 0x3CB0000000000000, double %41, double %42, i64 0, i64 94334763918880, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @3, i32 0, i32 0), i64 94334763919424, i32 636, i32 54), !dbg !608
  %43 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !608
  %44 = call i32 @gsl_sf_exp_err_e(double %39, double %42, %struct.gsl_sf_result_struct* %43), !dbg !609
  ret i32 %44, !dbg !611
}

; Function Attrs: nounwind uwtable
define internal i32 @hyperg_2F1_series(double, double, double, double, %struct.gsl_sf_result_struct*) #0 !dbg !612 {
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca %struct.gsl_sf_result_struct*, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca i32, align 4
  store double %0, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !615, metadata !61), !dbg !616
  store double %1, double* %8, align 8
  call void @llvm.dbg.declare(metadata double* %8, metadata !617, metadata !61), !dbg !618
  store double %2, double* %9, align 8
  call void @llvm.dbg.declare(metadata double* %9, metadata !619, metadata !61), !dbg !620
  store double %3, double* %10, align 8
  call void @llvm.dbg.declare(metadata double* %10, metadata !621, metadata !61), !dbg !622
  store %struct.gsl_sf_result_struct* %4, %struct.gsl_sf_result_struct** %11, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %11, metadata !623, metadata !61), !dbg !624
  call void @llvm.dbg.declare(metadata double* %12, metadata !625, metadata !61), !dbg !626
  store double 1.000000e+00, double* %12, align 8, !dbg !626
  call void @llvm.dbg.declare(metadata double* %13, metadata !627, metadata !61), !dbg !628
  store double 0.000000e+00, double* %13, align 8, !dbg !628
  call void @llvm.dbg.declare(metadata double* %14, metadata !629, metadata !61), !dbg !630
  store double 1.000000e+00, double* %14, align 8, !dbg !630
  call void @llvm.dbg.declare(metadata double* %15, metadata !631, metadata !61), !dbg !632
  store double 0.000000e+00, double* %15, align 8, !dbg !632
  call void @llvm.dbg.declare(metadata double* %16, metadata !633, metadata !61), !dbg !634
  store double 1.000000e+00, double* %16, align 8, !dbg !634
  call void @llvm.dbg.declare(metadata double* %17, metadata !635, metadata !61), !dbg !636
  call void @llvm.dbg.declare(metadata double* %18, metadata !637, metadata !61), !dbg !638
  store double 0.000000e+00, double* %18, align 8, !dbg !638
  call void @llvm.dbg.declare(metadata i32* %19, metadata !639, metadata !61), !dbg !640
  store i32 0, i32* %19, align 4, !dbg !640
  %20 = load double, double* %9, align 8, !dbg !641
  %21 = call double @fabs(double %20) #1, !dbg !643
  %22 = fcmp olt double %21, 0x3CB0000000000000, !dbg !644
  %23 = call i1 @fCmpInstHandler(double %21, double 0x3CB0000000000000, i1 %22, i32 4, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @5, i32 0, i32 0), i64 94334763950928, i32 54, i32 14), !dbg !645
  br i1 %23, label %24, label %31, !dbg !645

; <label>:24:                                     ; preds = %5
  %25 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !646
  %26 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %25, i32 0, i32 0, !dbg !648
  store double 0.000000e+00, double* %26, align 8, !dbg !649
  %27 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !650
  %28 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %27, i32 0, i32 1, !dbg !651
  store double 1.000000e+00, double* %28, align 8, !dbg !652
  br label %29, !dbg !653, !llvm.loop !654

; <label>:29:                                     ; preds = %24
  call void @gsl_error(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 57, i32 1), !dbg !655
  store i32 1, i32* %6, align 4, !dbg !655
  br label %179, !dbg !655
                                                  ; No predecessors!
  br label %31, !dbg !658

; <label>:31:                                     ; preds = %30, %5
  br label %32, !dbg !659, !llvm.loop !660

; <label>:32:                                     ; preds = %135, %31
  %33 = load i32, i32* %19, align 4, !dbg !661
  %34 = add nsw i32 %33, 1, !dbg !661
  store i32 %34, i32* %19, align 4, !dbg !661
  %35 = icmp sgt i32 %34, 30000, !dbg !664
  %36 = sext i32 %34 to i64, !dbg !665
  %37 = call i1 @iCmpInstHandler(i64 %36, i64 30000, i1 %35, i32 38, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @5, i32 0, i32 0), i64 94334763961216, i32 61, i32 12), !dbg !665
  br i1 %37, label %38, label %73, !dbg !665

; <label>:38:                                     ; preds = %32
  %39 = load double, double* %12, align 8, !dbg !666
  %40 = load double, double* %13, align 8, !dbg !668
  %41 = fsub double %39, %40, !dbg !669
  call void @fSubHandler(double %39, double %40, double %41, i64 94334763962328, i64 94334763962648, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @5, i32 0, i32 0), i64 94334763963056, i32 62, i32 30), !dbg !670
  %42 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !670
  %43 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %42, i32 0, i32 0, !dbg !671
  store double %41, double* %43, align 8, !dbg !672
  %44 = load double, double* %14, align 8, !dbg !673
  %45 = load double, double* %15, align 8, !dbg !674
  %46 = fadd double %44, %45, !dbg !675
  call void @fAddHandler(double %44, double %45, double %46, i64 94334763964696, i64 94334763965080, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @5, i32 0, i32 0), i64 94334763965488, i32 63, i32 30), !dbg !676
  %47 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !676
  %48 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %47, i32 0, i32 1, !dbg !677
  store double %46, double* %48, align 8, !dbg !678
  %49 = load double, double* %12, align 8, !dbg !679
  %50 = load double, double* %13, align 8, !dbg !680
  %51 = fadd double %49, %50, !dbg !681
  call void @fAddHandler(double %49, double %50, double %51, i64 94334763967128, i64 94334763967512, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @5, i32 0, i32 0), i64 94334763967920, i32 64, i32 55), !dbg !682
  %52 = fmul double 0x3CC0000000000000, %51, !dbg !682
  call void @fMulHandler(double 0x3CC0000000000000, double %51, double %52, i64 0, i64 94334763967920, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @5, i32 0, i32 0), i64 94334763968400, i32 64, i32 44), !dbg !683
  %53 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !683
  %54 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %53, i32 0, i32 1, !dbg !684
  %55 = load double, double* %54, align 8, !dbg !685
  %56 = fadd double %55, %52, !dbg !685
  call void @fAddHandler(double %55, double %52, double %56, i64 94334763969624, i64 94334763968400, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @5, i32 0, i32 0), i64 94334763970032, i32 64, i32 19), !dbg !685
  store double %56, double* %54, align 8, !dbg !685
  %57 = load double, double* %18, align 8, !dbg !686
  %58 = call double @sqrt(double %57) #5, !dbg !687
  call void @callOneArgHandler(i32 14, double %57, double %58, i64 94334763971816, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @5, i32 0, i32 0), i64 94334763973360, i32 65, i32 51), !dbg !688
  %59 = fmul double 2.000000e+00, %58, !dbg !688
  call void @fMulHandler(double 2.000000e+00, double %58, double %59, i64 0, i64 94334763973360, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @5, i32 0, i32 0), i64 94334763973904, i32 65, i32 50), !dbg !689
  %60 = fadd double %59, 1.000000e+00, !dbg !689
  call void @fAddHandler(double %59, double 1.000000e+00, double %60, i64 94334763973904, i64 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @5, i32 0, i32 0), i64 94334763974320, i32 65, i32 58), !dbg !690
  %61 = fmul double 0x3CC0000000000000, %60, !dbg !690
  call void @fMulHandler(double 0x3CC0000000000000, double %60, double %61, i64 0, i64 94334763974320, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @5, i32 0, i32 0), i64 94334763974704, i32 65, i32 44), !dbg !691
  %62 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !691
  %63 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %62, i32 0, i32 0, !dbg !692
  %64 = load double, double* %63, align 8, !dbg !692
  %65 = call double @fabs(double %64) #1, !dbg !693
  %66 = fmul double %61, %65, !dbg !695
  call void @fMulHandler(double %61, double %65, double %66, i64 94334763974704, i64 94334763977664, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @5, i32 0, i32 0), i64 94334763978144, i32 65, i32 64), !dbg !696
  %67 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !696
  %68 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %67, i32 0, i32 1, !dbg !697
  %69 = load double, double* %68, align 8, !dbg !698
  %70 = fadd double %69, %66, !dbg !698
  call void @fAddHandler(double %69, double %66, double %70, i64 94334763979368, i64 94334763978144, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @5, i32 0, i32 0), i64 94334763979776, i32 65, i32 19), !dbg !698
  store double %70, double* %68, align 8, !dbg !698
  br label %71, !dbg !699, !llvm.loop !700

; <label>:71:                                     ; preds = %38
  call void @gsl_error(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 66, i32 11), !dbg !701
  store i32 11, i32* %6, align 4, !dbg !701
  br label %179, !dbg !701
                                                  ; No predecessors!
  br label %73, !dbg !704

; <label>:73:                                     ; preds = %72, %32
  %74 = load double, double* %16, align 8, !dbg !705
  store double %74, double* %17, align 8, !dbg !706
  %75 = load double, double* %7, align 8, !dbg !707
  %76 = load double, double* %18, align 8, !dbg !708
  %77 = fadd double %75, %76, !dbg !709
  call void @fAddHandler(double %75, double %76, double %77, i64 94334763985992, i64 94334763986376, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @5, i32 0, i32 0), i64 94334763986784, i32 69, i32 14), !dbg !710
  %78 = load double, double* %8, align 8, !dbg !710
  %79 = load double, double* %18, align 8, !dbg !711
  %80 = fadd double %78, %79, !dbg !712
  call void @fAddHandler(double %78, double %79, double %80, i64 94334763987176, i64 94334763987560, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @5, i32 0, i32 0), i64 94334763987968, i32 69, i32 20), !dbg !713
  %81 = fmul double %77, %80, !dbg !713
  call void @fMulHandler(double %77, double %80, double %81, i64 94334763986784, i64 94334763987968, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @5, i32 0, i32 0), i64 94334763988384, i32 69, i32 17), !dbg !714
  %82 = load double, double* %10, align 8, !dbg !714
  %83 = fmul double %81, %82, !dbg !715
  call void @fMulHandler(double %81, double %82, double %83, i64 94334763988384, i64 94334763988776, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @5, i32 0, i32 0), i64 94334763989184, i32 69, i32 24), !dbg !716
  %84 = load double, double* %9, align 8, !dbg !716
  %85 = load double, double* %18, align 8, !dbg !717
  %86 = fadd double %84, %85, !dbg !718
  call void @fAddHandler(double %84, double %85, double %86, i64 94334763989576, i64 94334763989960, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @5, i32 0, i32 0), i64 94334763990368, i32 69, i32 33), !dbg !719
  %87 = load double, double* %18, align 8, !dbg !719
  %88 = fadd double %87, 1.000000e+00, !dbg !720
  call void @fAddHandler(double %87, double 1.000000e+00, double %88, i64 94334763990760, i64 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @5, i32 0, i32 0), i64 94334763991200, i32 69, i32 41), !dbg !721
  %89 = fmul double %86, %88, !dbg !721
  call void @fMulHandler(double %86, double %88, double %89, i64 94334763990368, i64 94334763991200, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @5, i32 0, i32 0), i64 94334763991584, i32 69, i32 37), !dbg !722
  %90 = fdiv double %83, %89, !dbg !722
  call void @fDivHandler(double %83, double %89, double %90, i64 94334763989184, i64 94334763991584, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @5, i32 0, i32 0), i64 94334763992000, i32 69, i32 28), !dbg !723
  %91 = load double, double* %16, align 8, !dbg !723
  %92 = fmul double %91, %90, !dbg !723
  call void @fMulHandler(double %91, double %90, double %92, i64 94334763992392, i64 94334763992000, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @5, i32 0, i32 0), i64 94334763992800, i32 69, i32 9), !dbg !723
  store double %92, double* %16, align 8, !dbg !723
  %93 = load double, double* %16, align 8, !dbg !724
  %94 = fcmp ogt double %93, 0.000000e+00, !dbg !726
  %95 = call i1 @fCmpInstHandler(double %93, double 0.000000e+00, i1 %94, i32 2, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @5, i32 0, i32 0), i64 94334763994992, i32 71, i32 12), !dbg !727
  br i1 %95, label %96, label %101, !dbg !727

; <label>:96:                                     ; preds = %73
  %97 = load double, double* %16, align 8, !dbg !728
  store double %97, double* %14, align 8, !dbg !730
  %98 = load double, double* %16, align 8, !dbg !731
  %99 = load double, double* %12, align 8, !dbg !732
  %100 = fadd double %99, %98, !dbg !732
  call void @fAddHandler(double %99, double %98, double %100, i64 94334763997224, i64 94334763996840, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @5, i32 0, i32 0), i64 94334763997632, i32 73, i32 15), !dbg !732
  store double %100, double* %12, align 8, !dbg !732
  br label %113, !dbg !733

; <label>:101:                                    ; preds = %73
  %102 = load double, double* %16, align 8, !dbg !734
  %103 = fcmp oeq double %102, 0.000000e+00, !dbg !736
  %104 = call i1 @fCmpInstHandler(double %102, double 0.000000e+00, i1 %103, i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @5, i32 0, i32 0), i64 94334764000288, i32 75, i32 17), !dbg !737
  br i1 %104, label %105, label %106, !dbg !737

; <label>:105:                                    ; preds = %101
  store double 0.000000e+00, double* %14, align 8, !dbg !738
  store double 0.000000e+00, double* %15, align 8, !dbg !740
  br label %146, !dbg !741

; <label>:106:                                    ; preds = %101
  %107 = load double, double* %16, align 8, !dbg !742
  %108 = fsub double -0.000000e+00, %107, !dbg !744
  call void @fSubHandler(double -0.000000e+00, double %107, double %108, i64 0, i64 94334764002696, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @5, i32 0, i32 0), i64 94334764003040, i32 83, i32 18), !dbg !745
  store double %108, double* %15, align 8, !dbg !745
  %109 = load double, double* %16, align 8, !dbg !746
  %110 = load double, double* %13, align 8, !dbg !747
  %111 = fsub double %110, %109, !dbg !747
  call void @fSubHandler(double %110, double %109, double %111, i64 94334764004232, i64 94334764003848, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @5, i32 0, i32 0), i64 94334764004640, i32 84, i32 15), !dbg !747
  store double %111, double* %13, align 8, !dbg !747
  br label %112

; <label>:112:                                    ; preds = %106
  br label %113

; <label>:113:                                    ; preds = %112, %96
  %114 = load double, double* %17, align 8, !dbg !748
  %115 = load double, double* %12, align 8, !dbg !750
  %116 = load double, double* %13, align 8, !dbg !751
  %117 = fsub double %115, %116, !dbg !752
  call void @fSubHandler(double %115, double %116, double %117, i64 94334764007016, i64 94334764007400, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @5, i32 0, i32 0), i64 94334764007808, i32 93, i32 34), !dbg !753
  %118 = fdiv double %114, %117, !dbg !753
  call void @fDivHandler(double %114, double %117, double %118, i64 94334764006760, i64 94334764007808, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @5, i32 0, i32 0), i64 94334764008224, i32 93, i32 23), !dbg !754
  %119 = call double @fabs(double %118) #1, !dbg !754
  %120 = fcmp olt double %119, 0x3CB0000000000000, !dbg !755
  %121 = call i1 @fCmpInstHandler(double %119, double 0x3CB0000000000000, i1 %120, i32 4, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @5, i32 0, i32 0), i64 94334764009184, i32 93, i32 46), !dbg !756
  br i1 %121, label %122, label %132, !dbg !756

; <label>:122:                                    ; preds = %113
  %123 = load double, double* %16, align 8, !dbg !757
  %124 = load double, double* %12, align 8, !dbg !758
  %125 = load double, double* %13, align 8, !dbg !759
  %126 = fsub double %124, %125, !dbg !760
  call void @fSubHandler(double %124, double %125, double %126, i64 94334764010616, i64 94334764011000, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @5, i32 0, i32 0), i64 94334764011408, i32 94, i32 29), !dbg !761
  %127 = fdiv double %123, %126, !dbg !761
  call void @fDivHandler(double %123, double %126, double %127, i64 94334764010296, i64 94334764011408, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @5, i32 0, i32 0), i64 94334764011824, i32 94, i32 18), !dbg !762
  %128 = call double @fabs(double %127) #1, !dbg !762
  %129 = fcmp olt double %128, 0x3CB0000000000000, !dbg !763
  %130 = call i1 @fCmpInstHandler(double %128, double 0x3CB0000000000000, i1 %129, i32 4, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @5, i32 0, i32 0), i64 94334764012784, i32 94, i32 41), !dbg !764
  br i1 %130, label %131, label %132, !dbg !764

; <label>:131:                                    ; preds = %122
  br label %146, !dbg !766

; <label>:132:                                    ; preds = %122, %113
  %133 = load double, double* %18, align 8, !dbg !767
  %134 = fadd double %133, 1.000000e+00, !dbg !767
  call void @fAddHandler(double %133, double 1.000000e+00, double %134, i64 94334764014072, i64 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @5, i32 0, i32 0), i64 94334764014448, i32 97, i32 7), !dbg !767
  store double %134, double* %18, align 8, !dbg !767
  br label %135, !dbg !768

; <label>:135:                                    ; preds = %132
  %136 = load double, double* %14, align 8, !dbg !769
  %137 = load double, double* %15, align 8, !dbg !771
  %138 = fadd double %136, %137, !dbg !772
  call void @fAddHandler(double %136, double %137, double %138, i64 94334764018792, i64 94334764019112, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @5, i32 0, i32 0), i64 94334764019520, i32 98, i32 25), !dbg !773
  %139 = load double, double* %12, align 8, !dbg !773
  %140 = load double, double* %13, align 8, !dbg !774
  %141 = fsub double %139, %140, !dbg !775
  call void @fSubHandler(double %139, double %140, double %141, i64 94334764019912, i64 94334764020296, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @5, i32 0, i32 0), i64 94334764020704, i32 98, i32 44), !dbg !776
  %142 = fdiv double %138, %141, !dbg !776
  call void @fDivHandler(double %138, double %141, double %142, i64 94334764019520, i64 94334764020704, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @5, i32 0, i32 0), i64 94334764021120, i32 98, i32 35), !dbg !777
  %143 = call double @fabs(double %142) #1, !dbg !777
  %144 = fcmp ogt double %143, 0x3CB0000000000000, !dbg !778
  %145 = call i1 @fCmpInstHandler(double %143, double 0x3CB0000000000000, i1 %144, i32 2, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @5, i32 0, i32 0), i64 94334764022080, i32 98, i32 55), !dbg !779
  br i1 %145, label %32, label %146, !dbg !779, !llvm.loop !660

; <label>:146:                                    ; preds = %135, %131, %105
  %147 = load double, double* %12, align 8, !dbg !780
  %148 = load double, double* %13, align 8, !dbg !781
  %149 = fsub double %147, %148, !dbg !782
  call void @fSubHandler(double %147, double %148, double %149, i64 94334764024456, i64 94334764024776, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @5, i32 0, i32 0), i64 94334764025184, i32 100, i32 26), !dbg !783
  %150 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !783
  %151 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %150, i32 0, i32 0, !dbg !784
  store double %149, double* %151, align 8, !dbg !785
  %152 = load double, double* %14, align 8, !dbg !786
  %153 = load double, double* %15, align 8, !dbg !787
  %154 = fadd double %152, %153, !dbg !788
  call void @fAddHandler(double %152, double %153, double %154, i64 94334764026824, i64 94334764027208, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @5, i32 0, i32 0), i64 94334764027616, i32 101, i32 26), !dbg !789
  %155 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !789
  %156 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %155, i32 0, i32 1, !dbg !790
  store double %154, double* %156, align 8, !dbg !791
  %157 = load double, double* %12, align 8, !dbg !792
  %158 = load double, double* %13, align 8, !dbg !793
  %159 = fadd double %157, %158, !dbg !794
  call void @fAddHandler(double %157, double %158, double %159, i64 94334764029256, i64 94334764029640, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @5, i32 0, i32 0), i64 94334764030048, i32 102, i32 51), !dbg !795
  %160 = fmul double 0x3CC0000000000000, %159, !dbg !795
  call void @fMulHandler(double 0x3CC0000000000000, double %159, double %160, i64 0, i64 94334764030048, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @5, i32 0, i32 0), i64 94334764030464, i32 102, i32 40), !dbg !796
  %161 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !796
  %162 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %161, i32 0, i32 1, !dbg !797
  %163 = load double, double* %162, align 8, !dbg !798
  %164 = fadd double %163, %160, !dbg !798
  call void @fAddHandler(double %163, double %160, double %164, i64 94334764031688, i64 94334764030464, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @5, i32 0, i32 0), i64 94334764032096, i32 102, i32 15), !dbg !798
  store double %164, double* %162, align 8, !dbg !798
  %165 = load double, double* %18, align 8, !dbg !799
  %166 = call double @sqrt(double %165) #5, !dbg !800
  call void @callOneArgHandler(i32 14, double %165, double %166, i64 94334764033880, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @5, i32 0, i32 0), i64 94334764034352, i32 103, i32 47), !dbg !801
  %167 = fmul double 2.000000e+00, %166, !dbg !801
  call void @fMulHandler(double 2.000000e+00, double %166, double %167, i64 0, i64 94334764034352, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @5, i32 0, i32 0), i64 94334764034864, i32 103, i32 46), !dbg !802
  %168 = fadd double %167, 1.000000e+00, !dbg !802
  call void @fAddHandler(double %167, double 1.000000e+00, double %168, i64 94334764034864, i64 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @5, i32 0, i32 0), i64 94334764035280, i32 103, i32 55), !dbg !803
  %169 = fmul double 0x3CC0000000000000, %168, !dbg !803
  call void @fMulHandler(double 0x3CC0000000000000, double %168, double %169, i64 0, i64 94334764035280, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @5, i32 0, i32 0), i64 94334764035664, i32 103, i32 40), !dbg !804
  %170 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !804
  %171 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %170, i32 0, i32 0, !dbg !805
  %172 = load double, double* %171, align 8, !dbg !805
  %173 = call double @fabs(double %172) #1, !dbg !806
  %174 = fmul double %169, %173, !dbg !807
  call void @fMulHandler(double %169, double %173, double %174, i64 94334764035664, i64 94334764038624, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @5, i32 0, i32 0), i64 94334764039104, i32 103, i32 62), !dbg !808
  %175 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !808
  %176 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %175, i32 0, i32 1, !dbg !809
  %177 = load double, double* %176, align 8, !dbg !810
  %178 = fadd double %177, %174, !dbg !810
  call void @fAddHandler(double %177, double %174, double %178, i64 94334764040328, i64 94334764039104, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @5, i32 0, i32 0), i64 94334764040736, i32 103, i32 15), !dbg !810
  store double %178, double* %176, align 8, !dbg !810
  store i32 0, i32* %6, align 4, !dbg !811
  br label %179, !dbg !811

; <label>:179:                                    ; preds = %146, %71, %29
  %180 = load i32, i32* %6, align 4, !dbg !812
  ret i32 %180, !dbg !812
}

; Function Attrs: nounwind uwtable
define internal i32 @hyperg_2F1_luke(double, double, double, double, %struct.gsl_sf_result_struct*) #0 !dbg !813 {
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca %struct.gsl_sf_result_struct*, align 8
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
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
  %43 = alloca double, align 8
  %44 = alloca double, align 8
  store double %0, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !814, metadata !61), !dbg !815
  store double %1, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !816, metadata !61), !dbg !817
  store double %2, double* %8, align 8
  call void @llvm.dbg.declare(metadata double* %8, metadata !818, metadata !61), !dbg !819
  store double %3, double* %9, align 8
  call void @llvm.dbg.declare(metadata double* %9, metadata !820, metadata !61), !dbg !821
  store %struct.gsl_sf_result_struct* %4, %struct.gsl_sf_result_struct** %10, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %10, metadata !822, metadata !61), !dbg !823
  call void @llvm.dbg.declare(metadata i32* %11, metadata !824, metadata !61), !dbg !825
  call void @llvm.dbg.declare(metadata double* %12, metadata !826, metadata !61), !dbg !827
  store double 1.000000e+50, double* %12, align 8, !dbg !827
  call void @llvm.dbg.declare(metadata i32* %13, metadata !828, metadata !61), !dbg !829
  store i32 20000, i32* %13, align 4, !dbg !829
  call void @llvm.dbg.declare(metadata i32* %14, metadata !830, metadata !61), !dbg !831
  store i32 3, i32* %14, align 4, !dbg !831
  call void @llvm.dbg.declare(metadata double* %15, metadata !832, metadata !61), !dbg !833
  %45 = load double, double* %9, align 8, !dbg !834
  %46 = fsub double -0.000000e+00, %45, !dbg !835
  call void @fSubHandler(double -0.000000e+00, double %45, double %46, i64 0, i64 94334763824568, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764070896, i32 179, i32 21), !dbg !833
  store double %46, double* %15, align 8, !dbg !833
  call void @llvm.dbg.declare(metadata double* %16, metadata !836, metadata !61), !dbg !837
  %47 = load double, double* %15, align 8, !dbg !838
  %48 = load double, double* %15, align 8, !dbg !839
  %49 = fmul double %47, %48, !dbg !840
  call void @fMulHandler(double %47, double %48, double %49, i64 94334764074088, i64 94334764074440, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764074848, i32 180, i32 22), !dbg !841
  %50 = load double, double* %15, align 8, !dbg !841
  %51 = fmul double %49, %50, !dbg !842
  call void @fMulHandler(double %49, double %50, double %51, i64 94334764074848, i64 94334764075240, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764075648, i32 180, i32 24), !dbg !837
  store double %51, double* %16, align 8, !dbg !837
  call void @llvm.dbg.declare(metadata double* %17, metadata !843, metadata !61), !dbg !844
  %52 = load double, double* %6, align 8, !dbg !845
  %53 = load double, double* %7, align 8, !dbg !846
  %54 = fmul double %52, %53, !dbg !847
  call void @fMulHandler(double %52, double %53, double %54, i64 94334764078840, i64 94334764079192, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764079600, i32 181, i32 22), !dbg !848
  %55 = load double, double* %8, align 8, !dbg !848
  %56 = fdiv double %54, %55, !dbg !849
  call void @fDivHandler(double %54, double %55, double %56, i64 94334764079600, i64 94334764079992, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764080400, i32 181, i32 24), !dbg !844
  store double %56, double* %17, align 8, !dbg !844
  call void @llvm.dbg.declare(metadata double* %18, metadata !850, metadata !61), !dbg !851
  %57 = load double, double* %6, align 8, !dbg !852
  %58 = fadd double %57, 1.000000e+00, !dbg !853
  call void @fAddHandler(double %57, double 1.000000e+00, double %58, i64 94334764083592, i64 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764084000, i32 182, i32 23), !dbg !854
  %59 = load double, double* %7, align 8, !dbg !854
  %60 = fadd double %59, 1.000000e+00, !dbg !855
  call void @fAddHandler(double %59, double 1.000000e+00, double %60, i64 94334764084360, i64 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764084800, i32 182, i32 31), !dbg !856
  %61 = fmul double %58, %60, !dbg !856
  call void @fMulHandler(double %58, double %60, double %61, i64 94334764084000, i64 94334764084800, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764085184, i32 182, i32 28), !dbg !857
  %62 = load double, double* %8, align 8, !dbg !857
  %63 = fmul double 2.000000e+00, %62, !dbg !858
  call void @fMulHandler(double 2.000000e+00, double %62, double %63, i64 0, i64 94334764085576, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764086016, i32 182, i32 41), !dbg !859
  %64 = fdiv double %61, %63, !dbg !859
  call void @fDivHandler(double %61, double %63, double %64, i64 94334764085184, i64 94334764086016, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764086400, i32 182, i32 36), !dbg !851
  store double %64, double* %18, align 8, !dbg !851
  call void @llvm.dbg.declare(metadata double* %19, metadata !860, metadata !61), !dbg !861
  %65 = load double, double* %6, align 8, !dbg !862
  %66 = fadd double %65, 2.000000e+00, !dbg !863
  call void @fAddHandler(double %65, double 2.000000e+00, double %66, i64 94334764089592, i64 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764090000, i32 183, i32 23), !dbg !864
  %67 = load double, double* %7, align 8, !dbg !864
  %68 = fadd double %67, 2.000000e+00, !dbg !865
  call void @fAddHandler(double %67, double 2.000000e+00, double %68, i64 94334764090360, i64 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764090800, i32 183, i32 31), !dbg !866
  %69 = fmul double %66, %68, !dbg !866
  call void @fMulHandler(double %66, double %68, double %69, i64 94334764090000, i64 94334764090800, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764091184, i32 183, i32 28), !dbg !867
  %70 = load double, double* %8, align 8, !dbg !867
  %71 = fadd double %70, 1.000000e+00, !dbg !868
  call void @fAddHandler(double %70, double 1.000000e+00, double %71, i64 94334764091576, i64 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764092016, i32 183, i32 44), !dbg !869
  %72 = fmul double 2.000000e+00, %71, !dbg !869
  call void @fMulHandler(double 2.000000e+00, double %71, double %72, i64 0, i64 94334764092016, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764092432, i32 183, i32 41), !dbg !870
  %73 = fdiv double %69, %72, !dbg !870
  call void @fDivHandler(double %69, double %72, double %73, i64 94334764091184, i64 94334764092432, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764092816, i32 183, i32 36), !dbg !861
  store double %73, double* %19, align 8, !dbg !861
  call void @llvm.dbg.declare(metadata double* %20, metadata !871, metadata !61), !dbg !872
  store double 1.000000e+00, double* %20, align 8, !dbg !872
  call void @llvm.dbg.declare(metadata double* %21, metadata !873, metadata !61), !dbg !874
  call void @llvm.dbg.declare(metadata double* %22, metadata !875, metadata !61), !dbg !876
  store double 1.000000e+00, double* %22, align 8, !dbg !876
  call void @llvm.dbg.declare(metadata double* %23, metadata !877, metadata !61), !dbg !878
  %74 = load double, double* %18, align 8, !dbg !879
  %75 = load double, double* %15, align 8, !dbg !880
  %76 = fmul double %74, %75, !dbg !881
  call void @fMulHandler(double %74, double %75, double %76, i64 94334764102632, i64 94334764102984, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764103392, i32 188, i32 26), !dbg !882
  %77 = fadd double 1.000000e+00, %76, !dbg !882
  call void @fAddHandler(double 1.000000e+00, double %76, double %77, i64 0, i64 94334764103392, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764103840, i32 188, i32 21), !dbg !878
  store double %77, double* %23, align 8, !dbg !878
  call void @llvm.dbg.declare(metadata double* %24, metadata !883, metadata !61), !dbg !884
  %78 = load double, double* %19, align 8, !dbg !885
  %79 = load double, double* %15, align 8, !dbg !886
  %80 = fmul double %78, %79, !dbg !887
  call void @fMulHandler(double %78, double %79, double %80, i64 94334764107000, i64 94334764107352, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764107760, i32 189, i32 26), !dbg !888
  %81 = load double, double* %18, align 8, !dbg !888
  %82 = fdiv double %81, 3.000000e+00, !dbg !889
  call void @fDivHandler(double %81, double 3.000000e+00, double %82, i64 94334764108152, i64 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764108656, i32 189, i32 41), !dbg !890
  %83 = load double, double* %15, align 8, !dbg !890
  %84 = fmul double %82, %83, !dbg !891
  call void @fMulHandler(double %82, double %83, double %84, i64 94334764108656, i64 94334764109016, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764109424, i32 189, i32 46), !dbg !892
  %85 = fadd double 1.000000e+00, %84, !dbg !892
  call void @fAddHandler(double 1.000000e+00, double %84, double %85, i64 0, i64 94334764109424, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764109872, i32 189, i32 37), !dbg !893
  %86 = fmul double %80, %85, !dbg !893
  call void @fMulHandler(double %80, double %85, double %86, i64 94334764107760, i64 94334764109872, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764110256, i32 189, i32 30), !dbg !894
  %87 = fadd double 1.000000e+00, %86, !dbg !894
  call void @fAddHandler(double 1.000000e+00, double %86, double %87, i64 0, i64 94334764110256, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764110704, i32 189, i32 21), !dbg !884
  store double %87, double* %24, align 8, !dbg !884
  call void @llvm.dbg.declare(metadata double* %25, metadata !895, metadata !61), !dbg !896
  store double 1.000000e+00, double* %25, align 8, !dbg !896
  call void @llvm.dbg.declare(metadata double* %26, metadata !897, metadata !61), !dbg !898
  %88 = load double, double* %23, align 8, !dbg !899
  %89 = load double, double* %17, align 8, !dbg !900
  %90 = load double, double* %15, align 8, !dbg !901
  %91 = fmul double %89, %90, !dbg !902
  call void @fMulHandler(double %89, double %90, double %91, i64 94334764116984, i64 94334764117368, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764117776, i32 192, i32 27), !dbg !903
  %92 = fsub double %88, %91, !dbg !903
  call void @fSubHandler(double %88, double %91, double %92, i64 94334764116632, i64 94334764117776, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764118192, i32 192, i32 22), !dbg !898
  store double %92, double* %26, align 8, !dbg !898
  call void @llvm.dbg.declare(metadata double* %27, metadata !904, metadata !61), !dbg !905
  %93 = load double, double* %24, align 8, !dbg !906
  %94 = load double, double* %17, align 8, !dbg !907
  %95 = load double, double* %19, align 8, !dbg !908
  %96 = load double, double* %15, align 8, !dbg !909
  %97 = fmul double %95, %96, !dbg !910
  call void @fMulHandler(double %95, double %96, double %97, i64 94334764122120, i64 94334764122504, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764122912, i32 193, i32 36), !dbg !911
  %98 = fadd double 1.000000e+00, %97, !dbg !911
  call void @fAddHandler(double 1.000000e+00, double %97, double %98, i64 0, i64 94334764122912, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764123360, i32 193, i32 32), !dbg !912
  %99 = fmul double %94, %98, !dbg !912
  call void @fMulHandler(double %94, double %98, double %99, i64 94334764121736, i64 94334764123360, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764123744, i32 193, i32 26), !dbg !913
  %100 = load double, double* %15, align 8, !dbg !913
  %101 = fmul double %99, %100, !dbg !914
  call void @fMulHandler(double %99, double %100, double %101, i64 94334764123744, i64 94334764124136, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764124544, i32 193, i32 39), !dbg !915
  %102 = fsub double %93, %101, !dbg !915
  call void @fSubHandler(double %93, double %101, double %102, i64 94334764121384, i64 94334764124544, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764124960, i32 193, i32 22), !dbg !916
  %103 = load double, double* %17, align 8, !dbg !916
  %104 = load double, double* %18, align 8, !dbg !917
  %105 = fmul double %103, %104, !dbg !918
  call void @fMulHandler(double %103, double %104, double %105, i64 94334764125352, i64 94334764125736, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764126144, i32 193, i32 47), !dbg !919
  %106 = load double, double* %8, align 8, !dbg !919
  %107 = load double, double* %8, align 8, !dbg !920
  %108 = fadd double %107, 1.000000e+00, !dbg !921
  call void @fAddHandler(double %107, double 1.000000e+00, double %108, i64 94334764126920, i64 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764127360, i32 193, i32 59), !dbg !922
  %109 = fdiv double %106, %108, !dbg !922
  call void @fDivHandler(double %106, double %108, double %109, i64 94334764126536, i64 94334764127360, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764127744, i32 193, i32 56), !dbg !923
  %110 = fmul double %105, %109, !dbg !923
  call void @fMulHandler(double %105, double %109, double %110, i64 94334764126144, i64 94334764127744, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764128160, i32 193, i32 52), !dbg !924
  %111 = load double, double* %15, align 8, !dbg !924
  %112 = fmul double %110, %111, !dbg !925
  call void @fMulHandler(double %110, double %111, double %112, i64 94334764128160, i64 94334764128552, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764128960, i32 193, i32 66), !dbg !926
  %113 = load double, double* %15, align 8, !dbg !926
  %114 = fmul double %112, %113, !dbg !927
  call void @fMulHandler(double %112, double %113, double %114, i64 94334764128960, i64 94334764129352, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764129760, i32 193, i32 69), !dbg !928
  %115 = fadd double %102, %114, !dbg !928
  call void @fAddHandler(double %102, double %114, double %115, i64 94334764124960, i64 94334764129760, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764130176, i32 193, i32 42), !dbg !905
  store double %115, double* %27, align 8, !dbg !905
  br label %116, !dbg !929

; <label>:116:                                    ; preds = %388, %5
  call void @llvm.dbg.declare(metadata double* %28, metadata !930, metadata !61), !dbg !932
  %117 = load i32, i32* %14, align 4, !dbg !933
  %118 = sitofp i32 %117 to double, !dbg !933
  %119 = load double, double* %6, align 8, !dbg !934
  %120 = fadd double %118, %119, !dbg !935
  call void @fAddHandler(double %118, double %119, double %120, i64 94334764134184, i64 94334764135832, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764136240, i32 196, i32 22), !dbg !936
  %121 = fsub double %120, 1.000000e+00, !dbg !936
  call void @fSubHandler(double %120, double 1.000000e+00, double %121, i64 94334764136240, i64 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764136688, i32 196, i32 26), !dbg !932
  store double %121, double* %28, align 8, !dbg !932
  call void @llvm.dbg.declare(metadata double* %29, metadata !937, metadata !61), !dbg !938
  %122 = load i32, i32* %14, align 4, !dbg !939
  %123 = sitofp i32 %122 to double, !dbg !939
  %124 = load double, double* %7, align 8, !dbg !940
  %125 = fadd double %123, %124, !dbg !941
  call void @fAddHandler(double %123, double %124, double %125, i64 94334764140200, i64 94334764141848, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764142256, i32 197, i32 22), !dbg !942
  %126 = fsub double %125, 1.000000e+00, !dbg !942
  call void @fSubHandler(double %125, double 1.000000e+00, double %126, i64 94334764142256, i64 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764142704, i32 197, i32 26), !dbg !938
  store double %126, double* %29, align 8, !dbg !938
  call void @llvm.dbg.declare(metadata double* %30, metadata !943, metadata !61), !dbg !944
  %127 = load i32, i32* %14, align 4, !dbg !945
  %128 = sitofp i32 %127 to double, !dbg !945
  %129 = load double, double* %8, align 8, !dbg !946
  %130 = fadd double %128, %129, !dbg !947
  call void @fAddHandler(double %128, double %129, double %130, i64 94334764146216, i64 94334764149928, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764150336, i32 198, i32 22), !dbg !948
  %131 = fsub double %130, 1.000000e+00, !dbg !948
  call void @fSubHandler(double %130, double 1.000000e+00, double %131, i64 94334764150336, i64 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764150784, i32 198, i32 26), !dbg !944
  store double %131, double* %30, align 8, !dbg !944
  call void @llvm.dbg.declare(metadata double* %31, metadata !949, metadata !61), !dbg !950
  %132 = load i32, i32* %14, align 4, !dbg !951
  %133 = sitofp i32 %132 to double, !dbg !951
  %134 = load double, double* %6, align 8, !dbg !952
  %135 = fadd double %133, %134, !dbg !953
  call void @fAddHandler(double %133, double %134, double %135, i64 94334764154296, i64 94334764155944, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764156352, i32 199, i32 22), !dbg !954
  %136 = fsub double %135, 2.000000e+00, !dbg !954
  call void @fSubHandler(double %135, double 2.000000e+00, double %136, i64 94334764156352, i64 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764156800, i32 199, i32 26), !dbg !950
  store double %136, double* %31, align 8, !dbg !950
  call void @llvm.dbg.declare(metadata double* %32, metadata !955, metadata !61), !dbg !956
  %137 = load i32, i32* %14, align 4, !dbg !957
  %138 = sitofp i32 %137 to double, !dbg !957
  %139 = load double, double* %7, align 8, !dbg !958
  %140 = fadd double %138, %139, !dbg !959
  call void @fAddHandler(double %138, double %139, double %140, i64 94334764160312, i64 94334764161960, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764162368, i32 200, i32 22), !dbg !960
  %141 = fsub double %140, 2.000000e+00, !dbg !960
  call void @fSubHandler(double %140, double 2.000000e+00, double %141, i64 94334764162368, i64 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764162816, i32 200, i32 26), !dbg !956
  store double %141, double* %32, align 8, !dbg !956
  call void @llvm.dbg.declare(metadata double* %33, metadata !961, metadata !61), !dbg !962
  %142 = load i32, i32* %14, align 4, !dbg !963
  %143 = sitofp i32 %142 to double, !dbg !963
  %144 = load double, double* %8, align 8, !dbg !964
  %145 = fadd double %143, %144, !dbg !965
  call void @fAddHandler(double %143, double %144, double %145, i64 94334764166328, i64 94334764167976, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764168384, i32 201, i32 22), !dbg !966
  %146 = fsub double %145, 2.000000e+00, !dbg !966
  call void @fSubHandler(double %145, double 2.000000e+00, double %146, i64 94334764168384, i64 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764168832, i32 201, i32 26), !dbg !962
  store double %146, double* %33, align 8, !dbg !962
  call void @llvm.dbg.declare(metadata double* %34, metadata !967, metadata !61), !dbg !968
  %147 = load i32, i32* %14, align 4, !dbg !969
  %148 = mul nsw i32 2, %147, !dbg !970
  %149 = sub nsw i32 %148, 1, !dbg !971
  %150 = sitofp i32 %149 to double, !dbg !972
  store double %150, double* %34, align 8, !dbg !968
  call void @llvm.dbg.declare(metadata double* %35, metadata !973, metadata !61), !dbg !974
  %151 = load i32, i32* %14, align 4, !dbg !975
  %152 = mul nsw i32 2, %151, !dbg !976
  %153 = sub nsw i32 %152, 3, !dbg !977
  %154 = sitofp i32 %153 to double, !dbg !978
  store double %154, double* %35, align 8, !dbg !974
  call void @llvm.dbg.declare(metadata double* %36, metadata !979, metadata !61), !dbg !980
  %155 = load i32, i32* %14, align 4, !dbg !981
  %156 = mul nsw i32 2, %155, !dbg !982
  %157 = sub nsw i32 %156, 5, !dbg !983
  %158 = sitofp i32 %157 to double, !dbg !984
  store double %158, double* %36, align 8, !dbg !980
  call void @llvm.dbg.declare(metadata double* %37, metadata !985, metadata !61), !dbg !986
  %159 = load i32, i32* %14, align 4, !dbg !987
  %160 = load i32, i32* %14, align 4, !dbg !988
  %161 = mul nsw i32 %159, %160, !dbg !989
  %162 = sitofp i32 %161 to double, !dbg !987
  store double %162, double* %37, align 8, !dbg !986
  call void @llvm.dbg.declare(metadata double* %38, metadata !990, metadata !61), !dbg !991
  %163 = load double, double* %37, align 8, !dbg !992
  %164 = fmul double 3.000000e+00, %163, !dbg !993
  call void @fMulHandler(double 3.000000e+00, double %163, double %164, i64 0, i64 94334764190824, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764191232, i32 206, i32 22), !dbg !994
  %165 = load double, double* %6, align 8, !dbg !994
  %166 = load double, double* %7, align 8, !dbg !995
  %167 = fadd double %165, %166, !dbg !996
  call void @fAddHandler(double %165, double %166, double %167, i64 94334764191592, i64 94334764191976, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764192384, i32 206, i32 30), !dbg !997
  %168 = fsub double %167, 6.000000e+00, !dbg !997
  call void @fSubHandler(double %167, double 6.000000e+00, double %168, i64 94334764192384, i64 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764192896, i32 206, i32 32), !dbg !998
  %169 = load i32, i32* %14, align 4, !dbg !998
  %170 = sitofp i32 %169 to double, !dbg !998
  %171 = fmul double %168, %170, !dbg !999
  call void @fMulHandler(double %168, double %170, double %171, i64 94334764192896, i64 94334764193640, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764195312, i32 206, i32 35), !dbg !1000
  %172 = fadd double %164, %171, !dbg !1000
  call void @fAddHandler(double %164, double %171, double %172, i64 94334764191232, i64 94334764195312, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764195728, i32 206, i32 26), !dbg !1001
  %173 = fadd double %172, 2.000000e+00, !dbg !1001
  call void @fAddHandler(double %172, double 2.000000e+00, double %173, i64 94334764195728, i64 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764196176, i32 206, i32 38), !dbg !1002
  %174 = load double, double* %6, align 8, !dbg !1002
  %175 = load double, double* %7, align 8, !dbg !1003
  %176 = fmul double %174, %175, !dbg !1004
  call void @fMulHandler(double %174, double %175, double %176, i64 94334764196536, i64 94334764196920, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764197328, i32 206, i32 45), !dbg !1005
  %177 = fsub double %173, %176, !dbg !1005
  call void @fSubHandler(double %173, double %176, double %177, i64 94334764196176, i64 94334764197328, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764197744, i32 206, i32 42), !dbg !1006
  %178 = load double, double* %6, align 8, !dbg !1006
  %179 = load double, double* %7, align 8, !dbg !1007
  %180 = fadd double %178, %179, !dbg !1008
  call void @fAddHandler(double %178, double %179, double %180, i64 94334764198136, i64 94334764198520, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764198928, i32 206, i32 54), !dbg !1009
  %181 = fmul double 2.000000e+00, %180, !dbg !1009
  call void @fMulHandler(double 2.000000e+00, double %180, double %181, i64 0, i64 94334764198928, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764199376, i32 206, i32 51), !dbg !1010
  %182 = fsub double %177, %181, !dbg !1010
  call void @fSubHandler(double %177, double %181, double %182, i64 94334764197744, i64 94334764199376, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764199760, i32 206, i32 48), !dbg !1011
  %183 = load double, double* %35, align 8, !dbg !1011
  %184 = fmul double 2.000000e+00, %183, !dbg !1012
  call void @fMulHandler(double 2.000000e+00, double %183, double %184, i64 0, i64 94334764200152, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764200592, i32 206, i32 63), !dbg !1013
  %185 = load double, double* %30, align 8, !dbg !1013
  %186 = fmul double %184, %185, !dbg !1014
  call void @fMulHandler(double %184, double %185, double %186, i64 94334764200592, i64 94334764200952, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764201360, i32 206, i32 68), !dbg !1015
  %187 = fdiv double %182, %186, !dbg !1015
  call void @fDivHandler(double %182, double %186, double %187, i64 94334764199760, i64 94334764201360, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764201776, i32 206, i32 59), !dbg !991
  store double %187, double* %38, align 8, !dbg !991
  call void @llvm.dbg.declare(metadata double* %39, metadata !1016, metadata !61), !dbg !1017
  %188 = load double, double* %37, align 8, !dbg !1018
  %189 = fmul double 3.000000e+00, %188, !dbg !1019
  call void @fMulHandler(double 3.000000e+00, double %188, double %189, i64 0, i64 94334764204968, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764205376, i32 207, i32 22), !dbg !1020
  %190 = load double, double* %6, align 8, !dbg !1020
  %191 = load double, double* %7, align 8, !dbg !1021
  %192 = fadd double %190, %191, !dbg !1022
  call void @fAddHandler(double %190, double %191, double %192, i64 94334764205736, i64 94334764206120, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764206528, i32 207, i32 30), !dbg !1023
  %193 = fadd double %192, 6.000000e+00, !dbg !1023
  call void @fAddHandler(double %192, double 6.000000e+00, double %193, i64 94334764206528, i64 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764206976, i32 207, i32 32), !dbg !1024
  %194 = load i32, i32* %14, align 4, !dbg !1024
  %195 = sitofp i32 %194 to double, !dbg !1024
  %196 = fmul double %193, %195, !dbg !1025
  call void @fMulHandler(double %193, double %195, double %196, i64 94334764206976, i64 94334764207720, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764209392, i32 207, i32 35), !dbg !1026
  %197 = fsub double %189, %196, !dbg !1026
  call void @fSubHandler(double %189, double %196, double %197, i64 94334764205376, i64 94334764209392, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764209808, i32 207, i32 26), !dbg !1027
  %198 = fadd double %197, 2.000000e+00, !dbg !1027
  call void @fAddHandler(double %197, double 2.000000e+00, double %198, i64 94334764209808, i64 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764210256, i32 207, i32 38), !dbg !1028
  %199 = load double, double* %6, align 8, !dbg !1028
  %200 = load double, double* %7, align 8, !dbg !1029
  %201 = fmul double %199, %200, !dbg !1030
  call void @fMulHandler(double %199, double %200, double %201, i64 94334764210616, i64 94334764211000, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764211408, i32 207, i32 45), !dbg !1031
  %202 = fsub double %198, %201, !dbg !1031
  call void @fSubHandler(double %198, double %201, double %202, i64 94334764210256, i64 94334764211408, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764211824, i32 207, i32 42), !dbg !1032
  %203 = fsub double -0.000000e+00, %202, !dbg !1032
  call void @fSubHandler(double -0.000000e+00, double %202, double %203, i64 0, i64 94334764211824, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764212240, i32 207, i32 17), !dbg !1033
  %204 = load double, double* %28, align 8, !dbg !1033
  %205 = fmul double %203, %204, !dbg !1034
  call void @fMulHandler(double %203, double %204, double %205, i64 94334764212240, i64 94334764212632, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764213040, i32 207, i32 48), !dbg !1035
  %206 = load double, double* %29, align 8, !dbg !1035
  %207 = fmul double %205, %206, !dbg !1036
  call void @fMulHandler(double %205, double %206, double %207, i64 94334764213040, i64 94334764213432, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764213840, i32 207, i32 54), !dbg !1037
  %208 = load double, double* %34, align 8, !dbg !1037
  %209 = fmul double 4.000000e+00, %208, !dbg !1038
  call void @fMulHandler(double 4.000000e+00, double %208, double %209, i64 0, i64 94334764214232, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764214672, i32 207, i32 63), !dbg !1039
  %210 = load double, double* %35, align 8, !dbg !1039
  %211 = fmul double %209, %210, !dbg !1040
  call void @fMulHandler(double %209, double %210, double %211, i64 94334764214672, i64 94334764215032, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764215440, i32 207, i32 68), !dbg !1041
  %212 = load double, double* %33, align 8, !dbg !1041
  %213 = fmul double %211, %212, !dbg !1042
  call void @fMulHandler(double %211, double %212, double %213, i64 94334764215440, i64 94334764215832, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764216240, i32 207, i32 73), !dbg !1043
  %214 = load double, double* %30, align 8, !dbg !1043
  %215 = fmul double %213, %214, !dbg !1044
  call void @fMulHandler(double %213, double %214, double %215, i64 94334764216240, i64 94334764216632, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764217040, i32 207, i32 79), !dbg !1045
  %216 = fdiv double %207, %215, !dbg !1045
  call void @fDivHandler(double %207, double %215, double %216, i64 94334764213840, i64 94334764217040, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764217456, i32 207, i32 60), !dbg !1017
  store double %216, double* %39, align 8, !dbg !1017
  call void @llvm.dbg.declare(metadata double* %40, metadata !1046, metadata !61), !dbg !1047
  %217 = load double, double* %31, align 8, !dbg !1048
  %218 = load double, double* %28, align 8, !dbg !1049
  %219 = fmul double %217, %218, !dbg !1050
  call void @fMulHandler(double %217, double %218, double %219, i64 94334764220648, i64 94334764221000, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764221408, i32 208, i32 23), !dbg !1051
  %220 = load double, double* %32, align 8, !dbg !1051
  %221 = fmul double %219, %220, !dbg !1052
  call void @fMulHandler(double %219, double %220, double %221, i64 94334764221408, i64 94334764221800, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764222208, i32 208, i32 29), !dbg !1053
  %222 = load double, double* %29, align 8, !dbg !1053
  %223 = fmul double %221, %222, !dbg !1054
  call void @fMulHandler(double %221, double %222, double %223, i64 94334764222208, i64 94334764222600, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764223008, i32 208, i32 35), !dbg !1055
  %224 = load i32, i32* %14, align 4, !dbg !1055
  %225 = sitofp i32 %224 to double, !dbg !1055
  %226 = load double, double* %6, align 8, !dbg !1056
  %227 = fsub double %225, %226, !dbg !1057
  call void @fSubHandler(double %225, double %226, double %227, i64 94334764223784, i64 94334764225432, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764225840, i32 208, i32 44), !dbg !1058
  %228 = fsub double %227, 2.000000e+00, !dbg !1058
  call void @fSubHandler(double %227, double 2.000000e+00, double %228, i64 94334764225840, i64 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764226288, i32 208, i32 46), !dbg !1059
  %229 = fmul double %223, %228, !dbg !1059
  call void @fMulHandler(double %223, double %228, double %229, i64 94334764223008, i64 94334764226288, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764226672, i32 208, i32 41), !dbg !1060
  %230 = load i32, i32* %14, align 4, !dbg !1060
  %231 = sitofp i32 %230 to double, !dbg !1060
  %232 = load double, double* %7, align 8, !dbg !1061
  %233 = fsub double %231, %232, !dbg !1062
  call void @fSubHandler(double %231, double %232, double %233, i64 94334764227448, i64 94334764229096, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764229504, i32 208, i32 52), !dbg !1063
  %234 = fsub double %233, 2.000000e+00, !dbg !1063
  call void @fSubHandler(double %233, double 2.000000e+00, double %234, i64 94334764229504, i64 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764229952, i32 208, i32 54), !dbg !1064
  %235 = fmul double %229, %234, !dbg !1064
  call void @fMulHandler(double %229, double %234, double %235, i64 94334764226672, i64 94334764229952, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764230336, i32 208, i32 49), !dbg !1065
  %236 = load double, double* %35, align 8, !dbg !1065
  %237 = fmul double 8.000000e+00, %236, !dbg !1066
  call void @fMulHandler(double 8.000000e+00, double %236, double %237, i64 0, i64 94334764230728, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764231232, i32 208, i32 63), !dbg !1067
  %238 = load double, double* %35, align 8, !dbg !1067
  %239 = fmul double %237, %238, !dbg !1068
  call void @fMulHandler(double %237, double %238, double %239, i64 94334764231232, i64 94334764231592, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764232000, i32 208, i32 68), !dbg !1069
  %240 = load double, double* %36, align 8, !dbg !1069
  %241 = fmul double %239, %240, !dbg !1070
  call void @fMulHandler(double %239, double %240, double %241, i64 94334764232000, i64 94334764232392, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764232800, i32 208, i32 73), !dbg !1071
  %242 = load i32, i32* %14, align 4, !dbg !1071
  %243 = sitofp i32 %242 to double, !dbg !1071
  %244 = load double, double* %8, align 8, !dbg !1072
  %245 = fadd double %243, %244, !dbg !1073
  call void @fAddHandler(double %243, double %244, double %245, i64 94334764233576, i64 94334764235224, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764235632, i32 208, i32 81), !dbg !1074
  %246 = fsub double %245, 3.000000e+00, !dbg !1074
  call void @fSubHandler(double %245, double 3.000000e+00, double %246, i64 94334764235632, i64 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764236080, i32 208, i32 83), !dbg !1075
  %247 = fmul double %241, %246, !dbg !1075
  call void @fMulHandler(double %241, double %246, double %247, i64 94334764232800, i64 94334764236080, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764236464, i32 208, i32 78), !dbg !1076
  %248 = load double, double* %33, align 8, !dbg !1076
  %249 = fmul double %247, %248, !dbg !1077
  call void @fMulHandler(double %247, double %248, double %249, i64 94334764236464, i64 94334764236856, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764237264, i32 208, i32 86), !dbg !1078
  %250 = load double, double* %30, align 8, !dbg !1078
  %251 = fmul double %249, %250, !dbg !1079
  call void @fMulHandler(double %249, double %250, double %251, i64 94334764237264, i64 94334764237656, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764238064, i32 208, i32 92), !dbg !1080
  %252 = fdiv double %235, %251, !dbg !1080
  call void @fDivHandler(double %235, double %251, double %252, i64 94334764230336, i64 94334764238064, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764238480, i32 208, i32 59), !dbg !1047
  store double %252, double* %40, align 8, !dbg !1047
  call void @llvm.dbg.declare(metadata double* %41, metadata !1081, metadata !61), !dbg !1082
  %253 = load double, double* %28, align 8, !dbg !1083
  %254 = fsub double -0.000000e+00, %253, !dbg !1084
  call void @fSubHandler(double -0.000000e+00, double %253, double %254, i64 0, i64 94334764241672, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764242048, i32 209, i32 17), !dbg !1085
  %255 = load double, double* %29, align 8, !dbg !1085
  %256 = fmul double %254, %255, !dbg !1086
  call void @fMulHandler(double %254, double %255, double %256, i64 94334764242048, i64 94334764242440, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764242848, i32 209, i32 23), !dbg !1087
  %257 = load i32, i32* %14, align 4, !dbg !1087
  %258 = sitofp i32 %257 to double, !dbg !1087
  %259 = load double, double* %8, align 8, !dbg !1088
  %260 = fsub double %258, %259, !dbg !1089
  call void @fSubHandler(double %258, double %259, double %260, i64 94334764148248, i64 94334764247352, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764247728, i32 209, i32 32), !dbg !1090
  %261 = fsub double %260, 1.000000e+00, !dbg !1090
  call void @fSubHandler(double %260, double 1.000000e+00, double %261, i64 94334764247728, i64 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764248176, i32 209, i32 34), !dbg !1091
  %262 = fmul double %256, %261, !dbg !1091
  call void @fMulHandler(double %256, double %261, double %262, i64 94334764242848, i64 94334764248176, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764248560, i32 209, i32 29), !dbg !1092
  %263 = load double, double* %35, align 8, !dbg !1092
  %264 = fmul double 2.000000e+00, %263, !dbg !1093
  call void @fMulHandler(double 2.000000e+00, double %263, double %264, i64 0, i64 94334764248952, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764249392, i32 209, i32 42), !dbg !1094
  %265 = load double, double* %33, align 8, !dbg !1094
  %266 = fmul double %264, %265, !dbg !1095
  call void @fMulHandler(double %264, double %265, double %266, i64 94334764249392, i64 94334764249752, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764250160, i32 209, i32 47), !dbg !1096
  %267 = load double, double* %30, align 8, !dbg !1096
  %268 = fmul double %266, %267, !dbg !1097
  call void @fMulHandler(double %266, double %267, double %268, i64 94334764250160, i64 94334764250552, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764250960, i32 209, i32 53), !dbg !1098
  %269 = fdiv double %262, %268, !dbg !1098
  call void @fDivHandler(double %262, double %268, double %269, i64 94334764248560, i64 94334764250960, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764251376, i32 209, i32 38), !dbg !1082
  store double %269, double* %41, align 8, !dbg !1082
  call void @llvm.dbg.declare(metadata double* %42, metadata !1099, metadata !61), !dbg !1100
  %270 = load double, double* %38, align 8, !dbg !1101
  %271 = load double, double* %15, align 8, !dbg !1102
  %272 = fmul double %270, %271, !dbg !1103
  call void @fMulHandler(double %270, double %271, double %272, i64 94334764254568, i64 94334764254920, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764255328, i32 211, i32 24), !dbg !1104
  %273 = fadd double 1.000000e+00, %272, !dbg !1104
  call void @fAddHandler(double 1.000000e+00, double %272, double %273, i64 0, i64 94334764255328, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764255776, i32 211, i32 21), !dbg !1105
  %274 = load double, double* %27, align 8, !dbg !1105
  %275 = fmul double %273, %274, !dbg !1106
  call void @fMulHandler(double %273, double %274, double %275, i64 94334764255776, i64 94334764256136, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764256544, i32 211, i32 27), !dbg !1107
  %276 = load double, double* %41, align 8, !dbg !1107
  %277 = load double, double* %39, align 8, !dbg !1108
  %278 = load double, double* %15, align 8, !dbg !1109
  %279 = fmul double %277, %278, !dbg !1110
  call void @fMulHandler(double %277, double %278, double %279, i64 94334764257320, i64 94334764257704, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764258112, i32 211, i32 42), !dbg !1111
  %280 = fadd double %276, %279, !dbg !1111
  call void @fAddHandler(double %276, double %279, double %280, i64 94334764256936, i64 94334764258112, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764258528, i32 211, i32 38), !dbg !1112
  %281 = load double, double* %15, align 8, !dbg !1112
  %282 = fmul double %280, %281, !dbg !1113
  call void @fMulHandler(double %280, double %281, double %282, i64 94334764258528, i64 94334764258920, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764259328, i32 211, i32 45), !dbg !1114
  %283 = load double, double* %26, align 8, !dbg !1114
  %284 = fmul double %282, %283, !dbg !1115
  call void @fMulHandler(double %282, double %283, double %284, i64 94334764259328, i64 94334764259720, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764260128, i32 211, i32 47), !dbg !1116
  %285 = fadd double %275, %284, !dbg !1116
  call void @fAddHandler(double %275, double %284, double %285, i64 94334764256544, i64 94334764260128, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764260544, i32 211, i32 33), !dbg !1117
  %286 = load double, double* %40, align 8, !dbg !1117
  %287 = load double, double* %16, align 8, !dbg !1118
  %288 = fmul double %286, %287, !dbg !1119
  call void @fMulHandler(double %286, double %287, double %288, i64 94334764260936, i64 94334764261320, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764261728, i32 211, i32 57), !dbg !1120
  %289 = load double, double* %25, align 8, !dbg !1120
  %290 = fmul double %288, %289, !dbg !1121
  call void @fMulHandler(double %288, double %289, double %290, i64 94334764261728, i64 94334764262120, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764262528, i32 211, i32 60), !dbg !1122
  %291 = fadd double %285, %290, !dbg !1122
  call void @fAddHandler(double %285, double %290, double %291, i64 94334764260544, i64 94334764262528, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764262944, i32 211, i32 53), !dbg !1100
  store double %291, double* %42, align 8, !dbg !1100
  call void @llvm.dbg.declare(metadata double* %43, metadata !1123, metadata !61), !dbg !1124
  %292 = load double, double* %38, align 8, !dbg !1125
  %293 = load double, double* %15, align 8, !dbg !1126
  %294 = fmul double %292, %293, !dbg !1127
  call void @fMulHandler(double %292, double %293, double %294, i64 94334764266136, i64 94334764266488, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764266896, i32 212, i32 24), !dbg !1128
  %295 = fadd double 1.000000e+00, %294, !dbg !1128
  call void @fAddHandler(double 1.000000e+00, double %294, double %295, i64 0, i64 94334764266896, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764267344, i32 212, i32 21), !dbg !1129
  %296 = load double, double* %24, align 8, !dbg !1129
  %297 = fmul double %295, %296, !dbg !1130
  call void @fMulHandler(double %295, double %296, double %297, i64 94334764267344, i64 94334764267704, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764268112, i32 212, i32 27), !dbg !1131
  %298 = load double, double* %41, align 8, !dbg !1131
  %299 = load double, double* %39, align 8, !dbg !1132
  %300 = load double, double* %15, align 8, !dbg !1133
  %301 = fmul double %299, %300, !dbg !1134
  call void @fMulHandler(double %299, double %300, double %301, i64 94334764268888, i64 94334764269272, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764269680, i32 212, i32 42), !dbg !1135
  %302 = fadd double %298, %301, !dbg !1135
  call void @fAddHandler(double %298, double %301, double %302, i64 94334764268504, i64 94334764269680, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764270096, i32 212, i32 38), !dbg !1136
  %303 = load double, double* %15, align 8, !dbg !1136
  %304 = fmul double %302, %303, !dbg !1137
  call void @fMulHandler(double %302, double %303, double %304, i64 94334764270096, i64 94334764270488, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764270896, i32 212, i32 45), !dbg !1138
  %305 = load double, double* %23, align 8, !dbg !1138
  %306 = fmul double %304, %305, !dbg !1139
  call void @fMulHandler(double %304, double %305, double %306, i64 94334764270896, i64 94334764271288, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764271696, i32 212, i32 47), !dbg !1140
  %307 = fadd double %297, %306, !dbg !1140
  call void @fAddHandler(double %297, double %306, double %307, i64 94334764268112, i64 94334764271696, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764272112, i32 212, i32 33), !dbg !1141
  %308 = load double, double* %40, align 8, !dbg !1141
  %309 = load double, double* %16, align 8, !dbg !1142
  %310 = fmul double %308, %309, !dbg !1143
  call void @fMulHandler(double %308, double %309, double %310, i64 94334764272504, i64 94334764272888, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764273296, i32 212, i32 57), !dbg !1144
  %311 = load double, double* %22, align 8, !dbg !1144
  %312 = fmul double %310, %311, !dbg !1145
  call void @fMulHandler(double %310, double %311, double %312, i64 94334764273296, i64 94334764273688, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764274096, i32 212, i32 60), !dbg !1146
  %313 = fadd double %307, %312, !dbg !1146
  call void @fAddHandler(double %307, double %312, double %313, i64 94334764272112, i64 94334764274096, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764274512, i32 212, i32 53), !dbg !1124
  store double %313, double* %43, align 8, !dbg !1124
  call void @llvm.dbg.declare(metadata double* %44, metadata !1147, metadata !61), !dbg !1148
  %314 = load double, double* %42, align 8, !dbg !1149
  %315 = load double, double* %43, align 8, !dbg !1150
  %316 = fdiv double %314, %315, !dbg !1151
  call void @fDivHandler(double %314, double %315, double %316, i64 94334764277704, i64 94334764278056, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764278464, i32 213, i32 18), !dbg !1148
  store double %316, double* %44, align 8, !dbg !1148
  %317 = load double, double* %20, align 8, !dbg !1152
  %318 = load double, double* %44, align 8, !dbg !1153
  %319 = fsub double %317, %318, !dbg !1154
  call void @fSubHandler(double %317, double %318, double %319, i64 94334764280536, i64 94334764280920, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764281328, i32 215, i32 20), !dbg !1155
  %320 = load double, double* %20, align 8, !dbg !1155
  %321 = fdiv double %319, %320, !dbg !1156
  call void @fDivHandler(double %319, double %320, double %321, i64 94334764281328, i64 94334764281720, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764282128, i32 215, i32 24), !dbg !1157
  %322 = call double @fabs(double %321) #1, !dbg !1157
  store double %322, double* %21, align 8, !dbg !1158
  %323 = load double, double* %44, align 8, !dbg !1159
  store double %323, double* %20, align 8, !dbg !1160
  %324 = load double, double* %21, align 8, !dbg !1161
  %325 = fcmp olt double %324, 0x3CB0000000000000, !dbg !1163
  %326 = call i1 @fCmpInstHandler(double %324, double 0x3CB0000000000000, i1 %325, i32 4, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764284688, i32 218, i32 13), !dbg !1164
  br i1 %326, label %332, label %327, !dbg !1164

; <label>:327:                                    ; preds = %116
  %328 = load i32, i32* %14, align 4, !dbg !1165
  %329 = icmp sgt i32 %328, 20000, !dbg !1167
  %330 = sext i32 %328 to i64, !dbg !1168
  %331 = call i1 @iCmpInstHandler(i64 %330, i64 20000, i1 %329, i32 38, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764286144, i32 218, i32 36), !dbg !1168
  br i1 %331, label %332, label %333, !dbg !1168

; <label>:332:                                    ; preds = %327, %116
  br label %397, !dbg !1169

; <label>:333:                                    ; preds = %327
  %334 = load double, double* %42, align 8, !dbg !1171
  %335 = call double @fabs(double %334) #1, !dbg !1173
  %336 = fcmp ogt double %335, 1.000000e+50, !dbg !1174
  %337 = call i1 @fCmpInstHandler(double %335, double 1.000000e+50, i1 %336, i32 2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764288496, i32 220, i32 17), !dbg !1175
  br i1 %337, label %343, label %338, !dbg !1175

; <label>:338:                                    ; preds = %333
  %339 = load double, double* %43, align 8, !dbg !1176
  %340 = call double @fabs(double %339) #1, !dbg !1178
  %341 = fcmp ogt double %340, 1.000000e+50, !dbg !1179
  %342 = call i1 @fCmpInstHandler(double %340, double 1.000000e+50, i1 %341, i32 2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764290496, i32 220, i32 41), !dbg !1180
  br i1 %342, label %343, label %360, !dbg !1180

; <label>:343:                                    ; preds = %338, %333
  %344 = load double, double* %42, align 8, !dbg !1181
  %345 = fdiv double %344, 1.000000e+50, !dbg !1181
  call void @fDivHandler(double %344, double 1.000000e+50, double %345, i64 94334764291432, i64 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764291808, i32 221, i32 12), !dbg !1181
  store double %345, double* %42, align 8, !dbg !1181
  %346 = load double, double* %43, align 8, !dbg !1183
  %347 = fdiv double %346, 1.000000e+50, !dbg !1183
  call void @fDivHandler(double %346, double 1.000000e+50, double %347, i64 94334764293592, i64 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764294000, i32 222, i32 12), !dbg !1183
  store double %347, double* %43, align 8, !dbg !1183
  %348 = load double, double* %27, align 8, !dbg !1184
  %349 = fdiv double %348, 1.000000e+50, !dbg !1184
  call void @fDivHandler(double %348, double 1.000000e+50, double %349, i64 94334764295784, i64 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764296192, i32 223, i32 12), !dbg !1184
  store double %349, double* %27, align 8, !dbg !1184
  %350 = load double, double* %24, align 8, !dbg !1185
  %351 = fdiv double %350, 1.000000e+50, !dbg !1185
  call void @fDivHandler(double %350, double 1.000000e+50, double %351, i64 94334764297976, i64 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764298384, i32 224, i32 12), !dbg !1185
  store double %351, double* %24, align 8, !dbg !1185
  %352 = load double, double* %26, align 8, !dbg !1186
  %353 = fdiv double %352, 1.000000e+50, !dbg !1186
  call void @fDivHandler(double %352, double 1.000000e+50, double %353, i64 94334764300168, i64 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764300576, i32 225, i32 12), !dbg !1186
  store double %353, double* %26, align 8, !dbg !1186
  %354 = load double, double* %23, align 8, !dbg !1187
  %355 = fdiv double %354, 1.000000e+50, !dbg !1187
  call void @fDivHandler(double %354, double 1.000000e+50, double %355, i64 94334764302360, i64 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764302768, i32 226, i32 12), !dbg !1187
  store double %355, double* %23, align 8, !dbg !1187
  %356 = load double, double* %25, align 8, !dbg !1188
  %357 = fdiv double %356, 1.000000e+50, !dbg !1188
  call void @fDivHandler(double %356, double 1.000000e+50, double %357, i64 94334764304552, i64 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764304960, i32 227, i32 12), !dbg !1188
  store double %357, double* %25, align 8, !dbg !1188
  %358 = load double, double* %22, align 8, !dbg !1189
  %359 = fdiv double %358, 1.000000e+50, !dbg !1189
  call void @fDivHandler(double %358, double 1.000000e+50, double %359, i64 94334764306744, i64 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764307152, i32 228, i32 12), !dbg !1189
  store double %359, double* %22, align 8, !dbg !1189
  br label %388, !dbg !1190

; <label>:360:                                    ; preds = %338
  %361 = load double, double* %42, align 8, !dbg !1191
  %362 = call double @fabs(double %361) #1, !dbg !1193
  %363 = fcmp olt double %362, 0x358DEE7A4AD4B81E, !dbg !1194
  %364 = call i1 @fCmpInstHandler(double %362, double 0x358DEE7A4AD4B81E, i1 %363, i32 4, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764310384, i32 230, i32 22), !dbg !1195
  br i1 %364, label %370, label %365, !dbg !1195

; <label>:365:                                    ; preds = %360
  %366 = load double, double* %43, align 8, !dbg !1196
  %367 = call double @fabs(double %366) #1, !dbg !1198
  %368 = fcmp olt double %367, 0x358DEE7A4AD4B81E, !dbg !1199
  %369 = call i1 @fCmpInstHandler(double %367, double 0x358DEE7A4AD4B81E, i1 %368, i32 4, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764312384, i32 230, i32 50), !dbg !1200
  br i1 %369, label %370, label %387, !dbg !1200

; <label>:370:                                    ; preds = %365, %360
  %371 = load double, double* %42, align 8, !dbg !1201
  %372 = fmul double %371, 1.000000e+50, !dbg !1201
  call void @fMulHandler(double %371, double 1.000000e+50, double %372, i64 94334764313352, i64 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764313728, i32 231, i32 12), !dbg !1201
  store double %372, double* %42, align 8, !dbg !1201
  %373 = load double, double* %43, align 8, !dbg !1203
  %374 = fmul double %373, 1.000000e+50, !dbg !1203
  call void @fMulHandler(double %373, double 1.000000e+50, double %374, i64 94334764315512, i64 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764315920, i32 232, i32 12), !dbg !1203
  store double %374, double* %43, align 8, !dbg !1203
  %375 = load double, double* %27, align 8, !dbg !1204
  %376 = fmul double %375, 1.000000e+50, !dbg !1204
  call void @fMulHandler(double %375, double 1.000000e+50, double %376, i64 94334764317704, i64 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764318112, i32 233, i32 12), !dbg !1204
  store double %376, double* %27, align 8, !dbg !1204
  %377 = load double, double* %24, align 8, !dbg !1205
  %378 = fmul double %377, 1.000000e+50, !dbg !1205
  call void @fMulHandler(double %377, double 1.000000e+50, double %378, i64 94334764319896, i64 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764320304, i32 234, i32 12), !dbg !1205
  store double %378, double* %24, align 8, !dbg !1205
  %379 = load double, double* %26, align 8, !dbg !1206
  %380 = fmul double %379, 1.000000e+50, !dbg !1206
  call void @fMulHandler(double %379, double 1.000000e+50, double %380, i64 94334764322088, i64 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764322496, i32 235, i32 12), !dbg !1206
  store double %380, double* %26, align 8, !dbg !1206
  %381 = load double, double* %23, align 8, !dbg !1207
  %382 = fmul double %381, 1.000000e+50, !dbg !1207
  call void @fMulHandler(double %381, double 1.000000e+50, double %382, i64 94334764324280, i64 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764324688, i32 236, i32 12), !dbg !1207
  store double %382, double* %23, align 8, !dbg !1207
  %383 = load double, double* %25, align 8, !dbg !1208
  %384 = fmul double %383, 1.000000e+50, !dbg !1208
  call void @fMulHandler(double %383, double 1.000000e+50, double %384, i64 94334764326472, i64 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764326880, i32 237, i32 12), !dbg !1208
  store double %384, double* %25, align 8, !dbg !1208
  %385 = load double, double* %22, align 8, !dbg !1209
  %386 = fmul double %385, 1.000000e+50, !dbg !1209
  call void @fMulHandler(double %385, double 1.000000e+50, double %386, i64 94334764328664, i64 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764329072, i32 238, i32 12), !dbg !1209
  store double %386, double* %22, align 8, !dbg !1209
  br label %387, !dbg !1210

; <label>:387:                                    ; preds = %370, %365
  br label %388

; <label>:388:                                    ; preds = %387, %343
  %389 = load i32, i32* %14, align 4, !dbg !1211
  %390 = add nsw i32 %389, 1, !dbg !1211
  store i32 %390, i32* %14, align 4, !dbg !1211
  %391 = load double, double* %23, align 8, !dbg !1212
  store double %391, double* %22, align 8, !dbg !1213
  %392 = load double, double* %24, align 8, !dbg !1214
  store double %392, double* %23, align 8, !dbg !1215
  %393 = load double, double* %43, align 8, !dbg !1216
  store double %393, double* %24, align 8, !dbg !1217
  %394 = load double, double* %26, align 8, !dbg !1218
  store double %394, double* %25, align 8, !dbg !1219
  %395 = load double, double* %27, align 8, !dbg !1220
  store double %395, double* %26, align 8, !dbg !1221
  %396 = load double, double* %42, align 8, !dbg !1222
  store double %396, double* %27, align 8, !dbg !1223
  br label %116, !dbg !1224, !llvm.loop !1226

; <label>:397:                                    ; preds = %332
  %398 = load double, double* %20, align 8, !dbg !1227
  %399 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %10, align 8, !dbg !1228
  %400 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %399, i32 0, i32 0, !dbg !1229
  store double %398, double* %400, align 8, !dbg !1230
  %401 = load double, double* %21, align 8, !dbg !1231
  %402 = load double, double* %20, align 8, !dbg !1232
  %403 = fmul double %401, %402, !dbg !1233
  call void @fMulHandler(double %401, double %402, double %403, i64 94334764340408, i64 94334764340792, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764341200, i32 251, i32 34), !dbg !1234
  %404 = call double @fabs(double %403) #1, !dbg !1234
  %405 = fmul double 2.000000e+00, %404, !dbg !1235
  call void @fMulHandler(double 2.000000e+00, double %404, double %405, i64 0, i64 94334764341680, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764342192, i32 251, i32 22), !dbg !1236
  %406 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %10, align 8, !dbg !1236
  %407 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %406, i32 0, i32 1, !dbg !1237
  store double %405, double* %407, align 8, !dbg !1238
  %408 = load i32, i32* %14, align 4, !dbg !1239
  %409 = sitofp i32 %408 to double, !dbg !1239
  %410 = fadd double %409, 1.000000e+00, !dbg !1240
  call void @fAddHandler(double %409, double 1.000000e+00, double %410, i64 94334764344184, i64 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764345888, i32 252, i32 44), !dbg !1241
  %411 = fmul double 0x3CC0000000000000, %410, !dbg !1241
  call void @fMulHandler(double 0x3CC0000000000000, double %410, double %411, i64 0, i64 94334764345888, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764346272, i32 252, i32 40), !dbg !1242
  %412 = load double, double* %20, align 8, !dbg !1242
  %413 = call double @fabs(double %412) #1, !dbg !1243
  %414 = fmul double %411, %413, !dbg !1244
  call void @fMulHandler(double %411, double %413, double %414, i64 94334764346272, i64 94334764347136, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764347616, i32 252, i32 50), !dbg !1245
  %415 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %10, align 8, !dbg !1245
  %416 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %415, i32 0, i32 1, !dbg !1246
  %417 = load double, double* %416, align 8, !dbg !1247
  %418 = fadd double %417, %414, !dbg !1247
  call void @fAddHandler(double %417, double %414, double %418, i64 94334764348840, i64 94334764347616, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764349248, i32 252, i32 15), !dbg !1247
  store double %418, double* %416, align 8, !dbg !1247
  %419 = load double, double* %6, align 8, !dbg !1248
  %420 = call double @fabs(double %419) #1, !dbg !1249
  %421 = load double, double* %7, align 8, !dbg !1250
  %422 = call double @fabs(double %421) #1, !dbg !1251
  %423 = fadd double %420, %422, !dbg !1252
  call void @fAddHandler(double %420, double %422, double %423, i64 94334764351504, i64 94334764352432, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764352912, i32 255, i32 33), !dbg !1253
  %424 = fadd double %423, 1.000000e+00, !dbg !1253
  call void @fAddHandler(double %423, double 1.000000e+00, double %424, i64 94334764352912, i64 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764353360, i32 255, i32 43), !dbg !1254
  %425 = fmul double 8.000000e+00, %424, !dbg !1254
  call void @fMulHandler(double 8.000000e+00, double %424, double %425, i64 0, i64 94334764353360, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764353776, i32 255, i32 22), !dbg !1255
  %426 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %10, align 8, !dbg !1255
  %427 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %426, i32 0, i32 1, !dbg !1256
  %428 = load double, double* %427, align 8, !dbg !1257
  %429 = fmul double %428, %425, !dbg !1257
  call void @fMulHandler(double %428, double %425, double %429, i64 94334764354968, i64 94334764353776, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764355376, i32 255, i32 15), !dbg !1257
  store double %429, double* %427, align 8, !dbg !1257
  %430 = load i32, i32* %14, align 4, !dbg !1258
  %431 = icmp sge i32 %430, 20000, !dbg !1259
  %432 = sext i32 %430 to i64, !dbg !1258
  %433 = call i1 @iCmpInstHandler(i64 %432, i64 20000, i1 %431, i32 39, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94334764357568, i32 257, i32 18), !dbg !1258
  %434 = select i1 %433, i32 11, i32 0, !dbg !1258
  store i32 %434, i32* %11, align 4, !dbg !1260
  %435 = load i32, i32* %11, align 4, !dbg !1261
  ret i32 %435, !dbg !1262
}

; Function Attrs: nounwind uwtable
define internal i32 @hyperg_2F1_reflect(double, double, double, double, %struct.gsl_sf_result_struct*) #0 !dbg !1263 {
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca %struct.gsl_sf_result_struct*, align 8
  %12 = alloca double, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca i32, align 4
  %18 = alloca double, align 8
  %19 = alloca %struct.gsl_sf_result_struct, align 8
  %20 = alloca %struct.gsl_sf_result_struct, align 8
  %21 = alloca double, align 8
  %22 = alloca double, align 8
  %23 = alloca %struct.gsl_sf_result_struct, align 8
  %24 = alloca %struct.gsl_sf_result_struct, align 8
  %25 = alloca %struct.gsl_sf_result_struct, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca %struct.gsl_sf_result_struct, align 8
  %30 = alloca %struct.gsl_sf_result_struct, align 8
  %31 = alloca %struct.gsl_sf_result_struct, align 8
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca double, align 8
  %37 = alloca double, align 8
  %38 = alloca double, align 8
  %39 = alloca double, align 8
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca double, align 8
  %44 = alloca %struct.gsl_sf_result_struct, align 8
  %45 = alloca %struct.gsl_sf_result_struct, align 8
  %46 = alloca %struct.gsl_sf_result_struct, align 8
  %47 = alloca i32, align 4
  %48 = alloca i32, align 4
  %49 = alloca i32, align 4
  %50 = alloca i32, align 4
  %51 = alloca double, align 8
  %52 = alloca double, align 8
  %53 = alloca double, align 8
  %54 = alloca double, align 8
  %55 = alloca double, align 8
  %56 = alloca double, align 8
  %57 = alloca double, align 8
  %58 = alloca i32, align 4
  %59 = alloca i32, align 4
  %60 = alloca double, align 8
  %61 = alloca double, align 8
  %62 = alloca double, align 8
  %63 = alloca %struct.gsl_sf_result_struct, align 8
  %64 = alloca %struct.gsl_sf_result_struct, align 8
  %65 = alloca double, align 8
  %66 = alloca double, align 8
  %67 = alloca %struct.gsl_sf_result_struct, align 8
  %68 = alloca %struct.gsl_sf_result_struct, align 8
  %69 = alloca i32, align 4
  %70 = alloca i32, align 4
  %71 = alloca %struct.gsl_sf_result_struct, align 8
  %72 = alloca %struct.gsl_sf_result_struct, align 8
  %73 = alloca %struct.gsl_sf_result_struct, align 8
  %74 = alloca %struct.gsl_sf_result_struct, align 8
  %75 = alloca double, align 8
  %76 = alloca double, align 8
  %77 = alloca double, align 8
  %78 = alloca double, align 8
  %79 = alloca i32, align 4
  %80 = alloca i32, align 4
  %81 = alloca i32, align 4
  %82 = alloca i32, align 4
  %83 = alloca i32, align 4
  %84 = alloca i32, align 4
  %85 = alloca %struct.gsl_sf_result_struct, align 8
  %86 = alloca %struct.gsl_sf_result_struct, align 8
  %87 = alloca %struct.gsl_sf_result_struct, align 8
  %88 = alloca double, align 8
  %89 = alloca double, align 8
  %90 = alloca double, align 8
  %91 = alloca double, align 8
  %92 = alloca double, align 8
  %93 = alloca double, align 8
  %94 = alloca double, align 8
  %95 = alloca double, align 8
  %96 = alloca double, align 8
  %97 = alloca double, align 8
  %98 = alloca double, align 8
  store double %0, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !1264, metadata !61), !dbg !1265
  store double %1, double* %8, align 8
  call void @llvm.dbg.declare(metadata double* %8, metadata !1266, metadata !61), !dbg !1267
  store double %2, double* %9, align 8
  call void @llvm.dbg.declare(metadata double* %9, metadata !1268, metadata !61), !dbg !1269
  store double %3, double* %10, align 8
  call void @llvm.dbg.declare(metadata double* %10, metadata !1270, metadata !61), !dbg !1271
  store %struct.gsl_sf_result_struct* %4, %struct.gsl_sf_result_struct** %11, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %11, metadata !1272, metadata !61), !dbg !1273
  call void @llvm.dbg.declare(metadata double* %12, metadata !1274, metadata !61), !dbg !1275
  %99 = load double, double* %9, align 8, !dbg !1276
  %100 = load double, double* %7, align 8, !dbg !1277
  %101 = fsub double %99, %100, !dbg !1278
  call void @fSubHandler(double %99, double %100, double %101, i64 94334763842024, i64 94334764375384, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764375792, i32 370, i32 22), !dbg !1279
  %102 = load double, double* %8, align 8, !dbg !1279
  %103 = fsub double %101, %102, !dbg !1280
  call void @fSubHandler(double %101, double %102, double %103, i64 94334764375792, i64 94334764376184, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764376592, i32 370, i32 26), !dbg !1275
  store double %103, double* %12, align 8, !dbg !1275
  call void @llvm.dbg.declare(metadata i32* %13, metadata !1281, metadata !61), !dbg !1282
  %104 = load double, double* %12, align 8, !dbg !1283
  %105 = fadd double %104, 5.000000e-01, !dbg !1284
  call void @fAddHandler(double %104, double 5.000000e-01, double %105, i64 94334764379784, i64 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764380192, i32 371, i32 28), !dbg !1285
  %106 = call double @floor(double %105) #1, !dbg !1285
  %107 = fptosi double %106 to i32, !dbg !1285
  store i32 %107, i32* %13, align 4, !dbg !1282
  call void @llvm.dbg.declare(metadata i32* %14, metadata !1286, metadata !61), !dbg !1287
  %108 = load double, double* %12, align 8, !dbg !1288
  %109 = load i32, i32* %13, align 4, !dbg !1289
  %110 = sitofp i32 %109 to double, !dbg !1289
  %111 = fsub double %108, %110, !dbg !1290
  call void @fSubHandler(double %108, double %110, double %111, i64 94334764385544, i64 94334764386280, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764387952, i32 372, i32 34), !dbg !1291
  %112 = call double @fabs(double %111) #1, !dbg !1291
  %113 = fcmp olt double %112, 0x3D4F400000000000, !dbg !1292
  %114 = zext i1 %113 to i32, !dbg !1292
  store i32 %114, i32* %14, align 4, !dbg !1287
  %115 = load i32, i32* %14, align 4, !dbg !1293
  %116 = icmp ne i32 %115, 0, !dbg !1293
  %117 = sext i32 %115 to i64, !dbg !1295
  %118 = call i1 @iCmpInstHandler(i64 %117, i64 0, i1 %116, i32 33, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764393040, i32 374, i32 6), !dbg !1295
  br i1 %118, label %119, label %571, !dbg !1295

; <label>:119:                                    ; preds = %5
  call void @llvm.dbg.declare(metadata double* %15, metadata !1296, metadata !61), !dbg !1298
  %120 = load double, double* %10, align 8, !dbg !1299
  %121 = fsub double 1.000000e+00, %120, !dbg !1300
  call void @fSubHandler(double 1.000000e+00, double %120, double %121, i64 0, i64 94334764396472, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764396880, i32 375, i32 35), !dbg !1301
  %122 = call double @log(double %121) #5, !dbg !1301
  call void @callOneArgHandler(i32 12, double %121, double %122, i64 94334764396880, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764397328, i32 375, i32 27), !dbg !1298
  store double %122, double* %15, align 8, !dbg !1298
  call void @llvm.dbg.declare(metadata double* %16, metadata !1302, metadata !61), !dbg !1303
  %123 = load double, double* %12, align 8, !dbg !1304
  %124 = call double @fabs(double %123) #1, !dbg !1305
  store double %124, double* %16, align 8, !dbg !1303
  call void @llvm.dbg.declare(metadata i32* %17, metadata !1306, metadata !61), !dbg !1307
  store i32 0, i32* %17, align 4, !dbg !1307
  call void @llvm.dbg.declare(metadata double* %18, metadata !1308, metadata !61), !dbg !1309
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %19, metadata !1310, metadata !61), !dbg !1311
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %20, metadata !1312, metadata !61), !dbg !1313
  call void @llvm.dbg.declare(metadata double* %21, metadata !1314, metadata !61), !dbg !1315
  call void @llvm.dbg.declare(metadata double* %22, metadata !1316, metadata !61), !dbg !1317
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %23, metadata !1318, metadata !61), !dbg !1319
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %24, metadata !1320, metadata !61), !dbg !1321
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %25, metadata !1322, metadata !61), !dbg !1323
  call void @llvm.dbg.declare(metadata i32* %26, metadata !1324, metadata !61), !dbg !1325
  call void @llvm.dbg.declare(metadata i32* %27, metadata !1326, metadata !61), !dbg !1327
  call void @llvm.dbg.declare(metadata i32* %28, metadata !1328, metadata !61), !dbg !1329
  %125 = load double, double* %12, align 8, !dbg !1330
  %126 = fcmp oge double %125, 0.000000e+00, !dbg !1332
  %127 = call i1 @fCmpInstHandler(double %125, double 0.000000e+00, i1 %126, i32 3, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764424480, i32 389, i32 10), !dbg !1333
  br i1 %127, label %128, label %130, !dbg !1333

; <label>:128:                                    ; preds = %119
  %129 = load double, double* %12, align 8, !dbg !1334
  store double %129, double* %21, align 8, !dbg !1336
  store double 0.000000e+00, double* %22, align 8, !dbg !1337
  br label %132, !dbg !1338

; <label>:130:                                    ; preds = %119
  store double 0.000000e+00, double* %21, align 8, !dbg !1339
  %131 = load double, double* %12, align 8, !dbg !1341
  store double %131, double* %22, align 8, !dbg !1342
  br label %132

; <label>:132:                                    ; preds = %130, %128
  %133 = load double, double* %7, align 8, !dbg !1343
  %134 = load double, double* %22, align 8, !dbg !1344
  %135 = fadd double %133, %134, !dbg !1345
  call void @fAddHandler(double %133, double %134, double %135, i64 94334764430584, i64 94334764430904, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764431312, i32 398, i32 34), !dbg !1346
  %136 = call i32 @gsl_sf_lngamma_e(double %135, %struct.gsl_sf_result_struct* %24), !dbg !1346
  store i32 %136, i32* %27, align 4, !dbg !1347
  %137 = load double, double* %8, align 8, !dbg !1348
  %138 = load double, double* %22, align 8, !dbg !1349
  %139 = fadd double %137, %138, !dbg !1350
  call void @fAddHandler(double %137, double %138, double %139, i64 94334764432648, i64 94334764433032, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764433440, i32 399, i32 34), !dbg !1351
  %140 = call i32 @gsl_sf_lngamma_e(double %139, %struct.gsl_sf_result_struct* %25), !dbg !1351
  store i32 %140, i32* %28, align 4, !dbg !1352
  %141 = load double, double* %9, align 8, !dbg !1353
  %142 = call i32 @gsl_sf_lngamma_e(double %141, %struct.gsl_sf_result_struct* %23), !dbg !1354
  store i32 %142, i32* %26, align 4, !dbg !1355
  %143 = load double, double* %16, align 8, !dbg !1356
  %144 = fcmp olt double %143, 0x3CB0000000000000, !dbg !1358
  %145 = call i1 @fCmpInstHandler(double %143, double 0x3CB0000000000000, i1 %144, i32 4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764436512, i32 404, i32 11), !dbg !1359
  br i1 %145, label %146, label %149, !dbg !1359

; <label>:146:                                    ; preds = %132
  %147 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %19, i32 0, i32 0, !dbg !1360
  store double 0.000000e+00, double* %147, align 8, !dbg !1362
  %148 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %19, i32 0, i32 1, !dbg !1363
  store double 0.000000e+00, double* %148, align 8, !dbg !1364
  br label %273, !dbg !1365

; <label>:149:                                    ; preds = %132
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %29, metadata !1366, metadata !61), !dbg !1368
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %30, metadata !1369, metadata !61), !dbg !1370
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %31, metadata !1371, metadata !61), !dbg !1372
  call void @llvm.dbg.declare(metadata i32* %32, metadata !1373, metadata !61), !dbg !1374
  %150 = load double, double* %16, align 8, !dbg !1375
  %151 = call i32 @gsl_sf_lngamma_e(double %150, %struct.gsl_sf_result_struct* %29), !dbg !1376
  store i32 %151, i32* %32, align 4, !dbg !1374
  call void @llvm.dbg.declare(metadata i32* %33, metadata !1377, metadata !61), !dbg !1378
  %152 = load double, double* %7, align 8, !dbg !1379
  %153 = load double, double* %21, align 8, !dbg !1380
  %154 = fadd double %152, %153, !dbg !1381
  call void @fAddHandler(double %152, double %153, double %154, i64 94334764447816, i64 94334764448168, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764448576, i32 414, i32 40), !dbg !1382
  %155 = call i32 @gsl_sf_lngamma_e(double %154, %struct.gsl_sf_result_struct* %30), !dbg !1382
  store i32 %155, i32* %33, align 4, !dbg !1378
  call void @llvm.dbg.declare(metadata i32* %34, metadata !1383, metadata !61), !dbg !1384
  %156 = load double, double* %8, align 8, !dbg !1385
  %157 = load double, double* %21, align 8, !dbg !1386
  %158 = fadd double %156, %157, !dbg !1387
  call void @fAddHandler(double %156, double %157, double %158, i64 94334764452296, i64 94334764452648, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764453056, i32 415, i32 40), !dbg !1388
  %159 = call i32 @gsl_sf_lngamma_e(double %158, %struct.gsl_sf_result_struct* %31), !dbg !1388
  store i32 %159, i32* %34, align 4, !dbg !1384
  %160 = load i32, i32* %33, align 4, !dbg !1389
  %161 = icmp eq i32 %160, 0, !dbg !1391
  %162 = sext i32 %160 to i64, !dbg !1392
  %163 = call i1 @iCmpInstHandler(i64 %162, i64 0, i1 %161, i32 32, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764456064, i32 417, i32 19), !dbg !1392
  br i1 %163, label %164, label %269, !dbg !1392

; <label>:164:                                    ; preds = %149
  %165 = load i32, i32* %34, align 4, !dbg !1393
  %166 = icmp eq i32 %165, 0, !dbg !1395
  %167 = sext i32 %165 to i64, !dbg !1396
  %168 = call i1 @iCmpInstHandler(i64 %167, i64 0, i1 %166, i32 32, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764457520, i32 417, i32 46), !dbg !1396
  br i1 %168, label %169, label %269, !dbg !1396

; <label>:169:                                    ; preds = %164
  %170 = load i32, i32* %32, align 4, !dbg !1397
  %171 = icmp eq i32 %170, 0, !dbg !1399
  %172 = sext i32 %170 to i64, !dbg !1400
  %173 = call i1 @iCmpInstHandler(i64 %172, i64 0, i1 %171, i32 32, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764458832, i32 417, i32 72), !dbg !1400
  br i1 %173, label %174, label %269, !dbg !1400

; <label>:174:                                    ; preds = %169
  call void @llvm.dbg.declare(metadata i32* %35, metadata !1401, metadata !61), !dbg !1403
  call void @llvm.dbg.declare(metadata double* %36, metadata !1404, metadata !61), !dbg !1405
  store double 1.000000e+00, double* %36, align 8, !dbg !1405
  call void @llvm.dbg.declare(metadata double* %37, metadata !1406, metadata !61), !dbg !1407
  store double 1.000000e+00, double* %37, align 8, !dbg !1407
  call void @llvm.dbg.declare(metadata double* %38, metadata !1408, metadata !61), !dbg !1409
  %175 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %29, i32 0, i32 0, !dbg !1410
  %176 = load double, double* %175, align 8, !dbg !1410
  %177 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %23, i32 0, i32 0, !dbg !1411
  %178 = load double, double* %177, align 8, !dbg !1411
  %179 = fadd double %176, %178, !dbg !1412
  call void @fAddHandler(double %176, double %178, double %179, i64 94334764467896, i64 94334764469992, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764471664, i32 424, i32 41), !dbg !1413
  %180 = load double, double* %22, align 8, !dbg !1413
  %181 = load double, double* %15, align 8, !dbg !1414
  %182 = fmul double %180, %181, !dbg !1415
  call void @fMulHandler(double %180, double %181, double %182, i64 94334764472056, i64 94334764472440, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764472848, i32 424, i32 57), !dbg !1416
  %183 = fadd double %179, %182, !dbg !1416
  call void @fAddHandler(double %179, double %182, double %183, i64 94334764471664, i64 94334764472848, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764473264, i32 424, i32 53), !dbg !1417
  %184 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %30, i32 0, i32 0, !dbg !1417
  %185 = load double, double* %184, align 8, !dbg !1417
  %186 = fsub double %183, %185, !dbg !1418
  call void @fSubHandler(double %183, double %185, double %186, i64 94334764473264, i64 94334764474104, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764475776, i32 424, i32 65), !dbg !1419
  %187 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %31, i32 0, i32 0, !dbg !1419
  %188 = load double, double* %187, align 8, !dbg !1419
  %189 = fsub double %186, %188, !dbg !1420
  call void @fSubHandler(double %186, double %188, double %189, i64 94334764475776, i64 94334764476616, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764478288, i32 424, i32 79), !dbg !1409
  store double %189, double* %38, align 8, !dbg !1409
  call void @llvm.dbg.declare(metadata double* %39, metadata !1421, metadata !61), !dbg !1422
  %190 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %29, i32 0, i32 1, !dbg !1423
  %191 = load double, double* %190, align 8, !dbg !1423
  %192 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %23, i32 0, i32 1, !dbg !1424
  %193 = load double, double* %192, align 8, !dbg !1424
  %194 = fadd double %191, %193, !dbg !1425
  call void @fAddHandler(double %191, double %193, double %194, i64 94334764481896, i64 94334764483992, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764485664, i32 425, i32 41), !dbg !1426
  %195 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %30, i32 0, i32 1, !dbg !1426
  %196 = load double, double* %195, align 8, !dbg !1426
  %197 = fadd double %194, %196, !dbg !1427
  call void @fAddHandler(double %194, double %196, double %197, i64 94334764485664, i64 94334764486504, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764488176, i32 425, i32 53), !dbg !1428
  %198 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %31, i32 0, i32 1, !dbg !1428
  %199 = load double, double* %198, align 8, !dbg !1428
  %200 = fadd double %197, %199, !dbg !1429
  call void @fAddHandler(double %197, double %199, double %200, i64 94334764488176, i64 94334764489016, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764490688, i32 425, i32 67), !dbg !1430
  %201 = load double, double* %38, align 8, !dbg !1430
  %202 = call double @fabs(double %201) #1, !dbg !1431
  %203 = fmul double 0x3CB0000000000000, %202, !dbg !1432
  call void @fMulHandler(double 0x3CB0000000000000, double %202, double %203, i64 0, i64 94334764491552, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764492032, i32 425, i32 99), !dbg !1433
  %204 = fadd double %200, %203, !dbg !1433
  call void @fAddHandler(double %200, double %203, double %204, i64 94334764490688, i64 94334764492032, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764492448, i32 425, i32 81), !dbg !1422
  store double %204, double* %39, align 8, !dbg !1422
  call void @llvm.dbg.declare(metadata i32* %40, metadata !1434, metadata !61), !dbg !1435
  store i32 1, i32* %35, align 4, !dbg !1436
  br label %205, !dbg !1438

; <label>:205:                                    ; preds = %244, %174
  %206 = load i32, i32* %35, align 4, !dbg !1439
  %207 = sitofp i32 %206 to double, !dbg !1439
  %208 = load double, double* %16, align 8, !dbg !1442
  %209 = fcmp olt double %207, %208, !dbg !1443
  %210 = call i1 @fCmpInstHandler(double %207, double %208, i1 %209, i32 4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764498928, i32 430, i32 19), !dbg !1444
  br i1 %210, label %211, label %247, !dbg !1444

; <label>:211:                                    ; preds = %205
  call void @llvm.dbg.declare(metadata i32* %41, metadata !1445, metadata !61), !dbg !1447
  %212 = load i32, i32* %35, align 4, !dbg !1448
  %213 = sub nsw i32 %212, 1, !dbg !1449
  store i32 %213, i32* %41, align 4, !dbg !1447
  %214 = load double, double* %7, align 8, !dbg !1450
  %215 = load double, double* %22, align 8, !dbg !1451
  %216 = fadd double %214, %215, !dbg !1452
  call void @fAddHandler(double %214, double %215, double %216, i64 94334764503544, i64 94334764503928, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764504336, i32 432, i32 22), !dbg !1453
  %217 = load i32, i32* %41, align 4, !dbg !1453
  %218 = sitofp i32 %217 to double, !dbg !1453
  %219 = fadd double %216, %218, !dbg !1454
  call void @fAddHandler(double %216, double %218, double %219, i64 94334764504336, i64 94334764505112, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764506784, i32 432, i32 27), !dbg !1455
  %220 = load double, double* %8, align 8, !dbg !1455
  %221 = load double, double* %22, align 8, !dbg !1456
  %222 = fadd double %220, %221, !dbg !1457
  call void @fAddHandler(double %220, double %221, double %222, i64 94334764507176, i64 94334764507560, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764507968, i32 432, i32 37), !dbg !1458
  %223 = load i32, i32* %41, align 4, !dbg !1458
  %224 = sitofp i32 %223 to double, !dbg !1458
  %225 = fadd double %222, %224, !dbg !1459
  call void @fAddHandler(double %222, double %224, double %225, i64 94334764507968, i64 94334764508744, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764510416, i32 432, i32 42), !dbg !1460
  %226 = fmul double %219, %225, !dbg !1460
  call void @fMulHandler(double %219, double %225, double %226, i64 94334764506784, i64 94334764510416, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764510832, i32 432, i32 32), !dbg !1461
  %227 = load double, double* %22, align 8, !dbg !1461
  %228 = fadd double 1.000000e+00, %227, !dbg !1462
  call void @fAddHandler(double 1.000000e+00, double %227, double %228, i64 0, i64 94334764511224, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764511664, i32 432, i32 54), !dbg !1463
  %229 = load i32, i32* %41, align 4, !dbg !1463
  %230 = sitofp i32 %229 to double, !dbg !1463
  %231 = fadd double %228, %230, !dbg !1464
  call void @fAddHandler(double %228, double %230, double %231, i64 94334764511664, i64 94334764512408, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764514080, i32 432, i32 59), !dbg !1465
  %232 = fdiv double %226, %231, !dbg !1465
  call void @fDivHandler(double %226, double %231, double %232, i64 94334764510832, i64 94334764514080, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764514496, i32 432, i32 47), !dbg !1466
  %233 = load i32, i32* %35, align 4, !dbg !1466
  %234 = sitofp i32 %233 to double, !dbg !1466
  %235 = fdiv double %232, %234, !dbg !1467
  call void @fDivHandler(double %232, double %234, double %235, i64 94334764514496, i64 94334764515272, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764516944, i32 432, i32 64), !dbg !1468
  %236 = load double, double* %10, align 8, !dbg !1468
  %237 = fsub double 1.000000e+00, %236, !dbg !1469
  call void @fSubHandler(double 1.000000e+00, double %236, double %237, i64 0, i64 94334764517336, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764517776, i32 432, i32 74), !dbg !1470
  %238 = fmul double %235, %237, !dbg !1470
  call void @fMulHandler(double %235, double %237, double %238, i64 94334764516944, i64 94334764517776, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764518160, i32 432, i32 68), !dbg !1471
  %239 = load double, double* %37, align 8, !dbg !1471
  %240 = fmul double %239, %238, !dbg !1471
  call void @fMulHandler(double %239, double %238, double %240, i64 94334764518552, i64 94334764518160, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764518960, i32 432, i32 16), !dbg !1471
  store double %240, double* %37, align 8, !dbg !1471
  %241 = load double, double* %37, align 8, !dbg !1472
  %242 = load double, double* %36, align 8, !dbg !1473
  %243 = fadd double %242, %241, !dbg !1473
  call void @fAddHandler(double %242, double %241, double %243, i64 94334764521128, i64 94334764520744, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764521536, i32 433, i32 16), !dbg !1473
  store double %243, double* %36, align 8, !dbg !1473
  br label %244, !dbg !1474

; <label>:244:                                    ; preds = %211
  %245 = load i32, i32* %35, align 4, !dbg !1475
  %246 = add nsw i32 %245, 1, !dbg !1475
  store i32 %246, i32* %35, align 4, !dbg !1475
  br label %205, !dbg !1477, !llvm.loop !1478

; <label>:247:                                    ; preds = %205
  %248 = load double, double* %38, align 8, !dbg !1480
  %249 = load double, double* %39, align 8, !dbg !1481
  %250 = load double, double* %36, align 8, !dbg !1482
  %251 = load double, double* %36, align 8, !dbg !1483
  %252 = call double @fabs(double %251) #1, !dbg !1484
  %253 = fmul double 0x3CB0000000000000, %252, !dbg !1485
  call void @fMulHandler(double 0x3CB0000000000000, double %252, double %253, i64 0, i64 94334764528208, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764528688, i32 437, i32 61), !dbg !1486
  %254 = call i32 @gsl_sf_exp_mult_err_e(double %248, double %249, double %250, double %253, %struct.gsl_sf_result_struct* %19), !dbg !1486
  store i32 %254, i32* %40, align 4, !dbg !1487
  %255 = load i32, i32* %40, align 4, !dbg !1488
  %256 = icmp eq i32 %255, 16, !dbg !1490
  %257 = sext i32 %255 to i64, !dbg !1491
  %258 = call i1 @iCmpInstHandler(i64 %257, i64 16, i1 %256, i32 32, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764530928, i32 439, i32 19), !dbg !1491
  br i1 %258, label %259, label %268, !dbg !1491

; <label>:259:                                    ; preds = %247
  br label %260, !dbg !1492, !llvm.loop !1494

; <label>:260:                                    ; preds = %259
  %261 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !1495
  %262 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %261, i32 0, i32 0, !dbg !1495
  store double 0x7FF0000000000000, double* %262, align 8, !dbg !1495
  %263 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !1495
  %264 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %263, i32 0, i32 1, !dbg !1495
  store double 0x7FF0000000000000, double* %264, align 8, !dbg !1495
  br label %265, !dbg !1495, !llvm.loop !1498

; <label>:265:                                    ; preds = %260
  call void @gsl_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 440, i32 16), !dbg !1500
  store i32 16, i32* %6, align 4, !dbg !1500
  br label %953, !dbg !1500
                                                  ; No predecessors!
  br label %267, !dbg !1503

; <label>:267:                                    ; preds = %266
  br label %268, !dbg !1505

; <label>:268:                                    ; preds = %267, %247
  br label %272, !dbg !1506

; <label>:269:                                    ; preds = %169, %164, %149
  %270 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %19, i32 0, i32 0, !dbg !1507
  store double 0.000000e+00, double* %270, align 8, !dbg !1509
  %271 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %19, i32 0, i32 1, !dbg !1510
  store double 0.000000e+00, double* %271, align 8, !dbg !1511
  br label %272

; <label>:272:                                    ; preds = %269, %268
  br label %273

; <label>:273:                                    ; preds = %272, %146
  %274 = load i32, i32* %27, align 4, !dbg !1512
  %275 = icmp eq i32 %274, 0, !dbg !1514
  %276 = sext i32 %274 to i64, !dbg !1515
  %277 = call i1 @iCmpInstHandler(i64 %276, i64 0, i1 %275, i32 32, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764544208, i32 455, i32 17), !dbg !1515
  br i1 %277, label %278, label %523, !dbg !1515

; <label>:278:                                    ; preds = %273
  %279 = load i32, i32* %28, align 4, !dbg !1516
  %280 = icmp eq i32 %279, 0, !dbg !1518
  %281 = sext i32 %279 to i64, !dbg !1519
  %282 = call i1 @iCmpInstHandler(i64 %281, i64 0, i1 %280, i32 32, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764545600, i32 455, i32 44), !dbg !1519
  br i1 %282, label %283, label %523, !dbg !1519

; <label>:283:                                    ; preds = %278
  call void @llvm.dbg.declare(metadata i32* %42, metadata !1520, metadata !61), !dbg !1522
  store i32 2000, i32* %42, align 4, !dbg !1522
  call void @llvm.dbg.declare(metadata double* %43, metadata !1523, metadata !61), !dbg !1524
  store double 0xBFE2788CFC6FB619, double* %43, align 8, !dbg !1524
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %44, metadata !1525, metadata !61), !dbg !1526
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %45, metadata !1527, metadata !61), !dbg !1528
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %46, metadata !1529, metadata !61), !dbg !1530
  call void @llvm.dbg.declare(metadata i32* %47, metadata !1531, metadata !61), !dbg !1532
  %284 = load double, double* %16, align 8, !dbg !1533
  %285 = fadd double 1.000000e+00, %284, !dbg !1534
  call void @fAddHandler(double 1.000000e+00, double %284, double %285, i64 0, i64 94334764556600, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764557008, i32 464, i32 40), !dbg !1535
  %286 = call i32 @gsl_sf_psi_e(double %285, %struct.gsl_sf_result_struct* %44), !dbg !1535
  store i32 %286, i32* %47, align 4, !dbg !1532
  call void @llvm.dbg.declare(metadata i32* %48, metadata !1536, metadata !61), !dbg !1537
  %287 = load double, double* %7, align 8, !dbg !1538
  %288 = load double, double* %21, align 8, !dbg !1539
  %289 = fadd double %287, %288, !dbg !1540
  call void @fAddHandler(double %287, double %288, double %289, i64 94334764561064, i64 94334764561416, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764561824, i32 465, i32 38), !dbg !1541
  %290 = call i32 @gsl_sf_psi_e(double %289, %struct.gsl_sf_result_struct* %45), !dbg !1541
  store i32 %290, i32* %48, align 4, !dbg !1537
  call void @llvm.dbg.declare(metadata i32* %49, metadata !1542, metadata !61), !dbg !1543
  %291 = load double, double* %8, align 8, !dbg !1544
  %292 = load double, double* %21, align 8, !dbg !1545
  %293 = fadd double %291, %292, !dbg !1546
  call void @fAddHandler(double %291, double %292, double %293, i64 94334764565544, i64 94334764565896, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764566304, i32 466, i32 38), !dbg !1547
  %294 = call i32 @gsl_sf_psi_e(double %293, %struct.gsl_sf_result_struct* %46), !dbg !1547
  store i32 %294, i32* %49, align 4, !dbg !1543
  call void @llvm.dbg.declare(metadata i32* %50, metadata !1548, metadata !61), !dbg !1549
  %295 = load i32, i32* %47, align 4, !dbg !1550
  %296 = icmp ne i32 %295, 0, !dbg !1550
  %297 = sext i32 %295 to i64, !dbg !1550
  %298 = call i1 @iCmpInstHandler(i64 %297, i64 0, i1 %296, i32 33, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764570400, i32 467, i32 23), !dbg !1550
  br i1 %298, label %299, label %301, !dbg !1550

; <label>:299:                                    ; preds = %283
  %300 = load i32, i32* %47, align 4, !dbg !1551
  br label %320, !dbg !1551

; <label>:301:                                    ; preds = %283
  %302 = load i32, i32* %48, align 4, !dbg !1553
  %303 = icmp ne i32 %302, 0, !dbg !1553
  %304 = sext i32 %302 to i64, !dbg !1553
  %305 = call i1 @iCmpInstHandler(i64 %304, i64 0, i1 %303, i32 33, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764574944, i32 467, i32 23), !dbg !1553
  br i1 %305, label %306, label %308, !dbg !1553

; <label>:306:                                    ; preds = %301
  %307 = load i32, i32* %48, align 4, !dbg !1555
  br label %318, !dbg !1555

; <label>:308:                                    ; preds = %301
  %309 = load i32, i32* %49, align 4, !dbg !1557
  %310 = icmp ne i32 %309, 0, !dbg !1557
  %311 = sext i32 %309 to i64, !dbg !1557
  %312 = call i1 @iCmpInstHandler(i64 %311, i64 0, i1 %310, i32 33, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764579488, i32 467, i32 23), !dbg !1557
  br i1 %312, label %313, label %315, !dbg !1557

; <label>:313:                                    ; preds = %308
  %314 = load i32, i32* %49, align 4, !dbg !1559
  br label %316, !dbg !1559

; <label>:315:                                    ; preds = %308
  br label %316, !dbg !1561

; <label>:316:                                    ; preds = %315, %313
  %317 = phi i32 [ %314, %313 ], [ 0, %315 ], !dbg !1563
  br label %318, !dbg !1563

; <label>:318:                                    ; preds = %316, %306
  %319 = phi i32 [ %307, %306 ], [ %317, %316 ], !dbg !1565
  br label %320, !dbg !1565

; <label>:320:                                    ; preds = %318, %299
  %321 = phi i32 [ %300, %299 ], [ %319, %318 ], !dbg !1567
  store i32 %321, i32* %50, align 4, !dbg !1569
  call void @llvm.dbg.declare(metadata double* %51, metadata !1570, metadata !61), !dbg !1571
  %322 = load double, double* %43, align 8, !dbg !1572
  %323 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %44, i32 0, i32 0, !dbg !1573
  %324 = load double, double* %323, align 8, !dbg !1573
  %325 = fadd double %322, %324, !dbg !1574
  call void @fAddHandler(double %322, double %324, double %325, i64 94334764590040, i64 94334764590840, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764592512, i32 469, i32 30), !dbg !1575
  %326 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %45, i32 0, i32 0, !dbg !1575
  %327 = load double, double* %326, align 8, !dbg !1575
  %328 = fsub double %325, %327, !dbg !1576
  call void @fSubHandler(double %325, double %327, double %328, i64 94334764592512, i64 94334764593352, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764595024, i32 469, i32 44), !dbg !1577
  %329 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %46, i32 0, i32 0, !dbg !1577
  %330 = load double, double* %329, align 8, !dbg !1577
  %331 = fsub double %328, %330, !dbg !1578
  call void @fSubHandler(double %328, double %330, double %331, i64 94334764595024, i64 94334764595864, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764597536, i32 469, i32 59), !dbg !1579
  %332 = load double, double* %15, align 8, !dbg !1579
  %333 = fsub double %331, %332, !dbg !1580
  call void @fSubHandler(double %331, double %332, double %333, i64 94334764597536, i64 94334764597928, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764598336, i32 469, i32 74), !dbg !1571
  store double %333, double* %51, align 8, !dbg !1571
  call void @llvm.dbg.declare(metadata double* %52, metadata !1581, metadata !61), !dbg !1582
  %334 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %44, i32 0, i32 1, !dbg !1583
  %335 = load double, double* %334, align 8, !dbg !1583
  %336 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %45, i32 0, i32 1, !dbg !1584
  %337 = load double, double* %336, align 8, !dbg !1584
  %338 = fadd double %335, %337, !dbg !1585
  call void @fAddHandler(double %335, double %337, double %338, i64 94334764601944, i64 94334764604040, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764605712, i32 470, i32 36), !dbg !1586
  %339 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %46, i32 0, i32 1, !dbg !1586
  %340 = load double, double* %339, align 8, !dbg !1586
  %341 = fadd double %338, %340, !dbg !1587
  call void @fAddHandler(double %338, double %340, double %341, i64 94334764605712, i64 94334764606552, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764608224, i32 470, i32 51), !dbg !1588
  %342 = load double, double* %51, align 8, !dbg !1588
  %343 = call double @fabs(double %342) #1, !dbg !1589
  %344 = fmul double 0x3CB0000000000000, %343, !dbg !1590
  call void @fMulHandler(double 0x3CB0000000000000, double %343, double %344, i64 0, i64 94334764609088, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764609568, i32 470, i32 83), !dbg !1591
  %345 = fadd double %341, %344, !dbg !1591
  call void @fAddHandler(double %341, double %344, double %345, i64 94334764608224, i64 94334764609568, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764609984, i32 470, i32 66), !dbg !1582
  store double %345, double* %52, align 8, !dbg !1582
  call void @llvm.dbg.declare(metadata double* %53, metadata !1592, metadata !61), !dbg !1593
  store double 1.000000e+00, double* %53, align 8, !dbg !1593
  call void @llvm.dbg.declare(metadata double* %54, metadata !1594, metadata !61), !dbg !1595
  %346 = load double, double* %51, align 8, !dbg !1596
  store double %346, double* %54, align 8, !dbg !1595
  call void @llvm.dbg.declare(metadata double* %55, metadata !1597, metadata !61), !dbg !1598
  %347 = load double, double* %52, align 8, !dbg !1599
  store double %347, double* %55, align 8, !dbg !1598
  call void @llvm.dbg.declare(metadata double* %56, metadata !1600, metadata !61), !dbg !1601
  %348 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %23, i32 0, i32 0, !dbg !1602
  %349 = load double, double* %348, align 8, !dbg !1602
  %350 = load double, double* %21, align 8, !dbg !1603
  %351 = load double, double* %15, align 8, !dbg !1604
  %352 = fmul double %350, %351, !dbg !1605
  call void @fMulHandler(double %350, double %351, double %352, i64 94334764624312, i64 94334764624696, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764625104, i32 474, i32 42), !dbg !1606
  %353 = fadd double %349, %352, !dbg !1606
  call void @fAddHandler(double %349, double %352, double %353, i64 94334764622664, i64 94334764625104, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764625520, i32 474, i32 38), !dbg !1607
  %354 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %24, i32 0, i32 0, !dbg !1607
  %355 = load double, double* %354, align 8, !dbg !1607
  %356 = fsub double %353, %355, !dbg !1608
  call void @fSubHandler(double %353, double %355, double %356, i64 94334764625520, i64 94334764626360, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764628032, i32 474, i32 50), !dbg !1609
  %357 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %25, i32 0, i32 0, !dbg !1609
  %358 = load double, double* %357, align 8, !dbg !1609
  %359 = fsub double %356, %358, !dbg !1610
  call void @fSubHandler(double %356, double %358, double %359, i64 94334764628032, i64 94334764628872, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764630544, i32 474, i32 64), !dbg !1601
  store double %359, double* %56, align 8, !dbg !1601
  call void @llvm.dbg.declare(metadata double* %57, metadata !1611, metadata !61), !dbg !1612
  %360 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %23, i32 0, i32 1, !dbg !1613
  %361 = load double, double* %360, align 8, !dbg !1613
  %362 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %24, i32 0, i32 1, !dbg !1614
  %363 = load double, double* %362, align 8, !dbg !1614
  %364 = fadd double %361, %363, !dbg !1615
  call void @fAddHandler(double %361, double %363, double %364, i64 94334764634152, i64 94334764636248, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764637920, i32 475, i32 38), !dbg !1616
  %365 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %25, i32 0, i32 1, !dbg !1616
  %366 = load double, double* %365, align 8, !dbg !1616
  %367 = fadd double %364, %366, !dbg !1617
  call void @fAddHandler(double %364, double %366, double %367, i64 94334764637920, i64 94334764638760, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764640432, i32 475, i32 52), !dbg !1618
  %368 = load double, double* %56, align 8, !dbg !1618
  %369 = call double @fabs(double %368) #1, !dbg !1619
  %370 = fmul double 0x3CB0000000000000, %369, !dbg !1620
  call void @fMulHandler(double 0x3CB0000000000000, double %369, double %370, i64 0, i64 94334764641296, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764641776, i32 475, i32 84), !dbg !1621
  %371 = fadd double %367, %370, !dbg !1621
  call void @fAddHandler(double %367, double %370, double %371, i64 94334764640432, i64 94334764641776, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764642192, i32 475, i32 66), !dbg !1612
  store double %371, double* %57, align 8, !dbg !1612
  call void @llvm.dbg.declare(metadata i32* %58, metadata !1622, metadata !61), !dbg !1623
  call void @llvm.dbg.declare(metadata i32* %59, metadata !1624, metadata !61), !dbg !1625
  store i32 1, i32* %59, align 4, !dbg !1626
  br label %372, !dbg !1628

; <label>:372:                                    ; preds = %470, %320
  %373 = load i32, i32* %59, align 4, !dbg !1629
  %374 = icmp slt i32 %373, 2000, !dbg !1632
  %375 = sext i32 %373 to i64, !dbg !1633
  %376 = call i1 @iCmpInstHandler(i64 %375, i64 2000, i1 %374, i32 40, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764647728, i32 482, i32 17), !dbg !1633
  br i1 %376, label %377, label %473, !dbg !1633

; <label>:377:                                    ; preds = %372
  call void @llvm.dbg.declare(metadata double* %60, metadata !1634, metadata !61), !dbg !1636
  %378 = load i32, i32* %59, align 4, !dbg !1637
  %379 = sitofp i32 %378 to double, !dbg !1638
  %380 = fdiv double 1.000000e+00, %379, !dbg !1639
  call void @fDivHandler(double 1.000000e+00, double %379, double %380, i64 0, i64 94334764650248, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764650688, i32 484, i32 27), !dbg !1640
  %381 = load double, double* %16, align 8, !dbg !1640
  %382 = load i32, i32* %59, align 4, !dbg !1641
  %383 = sitofp i32 %382 to double, !dbg !1641
  %384 = fadd double %381, %383, !dbg !1642
  call void @fAddHandler(double %381, double %383, double %384, i64 94334764651048, i64 94334764651816, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764653488, i32 484, i32 48), !dbg !1643
  %385 = fdiv double 1.000000e+00, %384, !dbg !1643
  call void @fDivHandler(double 1.000000e+00, double %384, double %385, i64 0, i64 94334764653488, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764653936, i32 484, i32 44), !dbg !1644
  %386 = fadd double %380, %385, !dbg !1644
  call void @fAddHandler(double %380, double %385, double %386, i64 94334764650688, i64 94334764653936, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764654320, i32 484, i32 39), !dbg !1636
  store double %386, double* %60, align 8, !dbg !1636
  call void @llvm.dbg.declare(metadata double* %61, metadata !1645, metadata !61), !dbg !1646
  %387 = load double, double* %7, align 8, !dbg !1647
  %388 = load double, double* %21, align 8, !dbg !1648
  %389 = fadd double %387, %388, !dbg !1649
  call void @fAddHandler(double %387, double %388, double %389, i64 94334764657512, i64 94334764657864, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764658272, i32 485, i32 30), !dbg !1650
  %390 = load i32, i32* %59, align 4, !dbg !1650
  %391 = sitofp i32 %390 to double, !dbg !1650
  %392 = fadd double %389, %391, !dbg !1651
  call void @fAddHandler(double %389, double %391, double %392, i64 94334764658272, i64 94334764659048, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764660720, i32 485, i32 33), !dbg !1652
  %393 = fsub double %392, 1.000000e+00, !dbg !1652
  call void @fSubHandler(double %392, double 1.000000e+00, double %393, i64 94334764660720, i64 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764661168, i32 485, i32 35), !dbg !1653
  %394 = fdiv double 1.000000e+00, %393, !dbg !1653
  call void @fDivHandler(double 1.000000e+00, double %393, double %394, i64 0, i64 94334764661168, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764661584, i32 485, i32 27), !dbg !1654
  %395 = load double, double* %8, align 8, !dbg !1654
  %396 = load double, double* %21, align 8, !dbg !1655
  %397 = fadd double %395, %396, !dbg !1656
  call void @fAddHandler(double %395, double %396, double %397, i64 94334764661944, i64 94334764662328, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764662736, i32 485, i32 49), !dbg !1657
  %398 = load i32, i32* %59, align 4, !dbg !1657
  %399 = sitofp i32 %398 to double, !dbg !1657
  %400 = fadd double %397, %399, !dbg !1658
  call void @fAddHandler(double %397, double %399, double %400, i64 94334764662736, i64 94334764663512, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764665184, i32 485, i32 52), !dbg !1659
  %401 = fsub double %400, 1.000000e+00, !dbg !1659
  call void @fSubHandler(double %400, double 1.000000e+00, double %401, i64 94334764665184, i64 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764665632, i32 485, i32 54), !dbg !1660
  %402 = fdiv double 1.000000e+00, %401, !dbg !1660
  call void @fDivHandler(double 1.000000e+00, double %401, double %402, i64 0, i64 94334764665632, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764666048, i32 485, i32 46), !dbg !1661
  %403 = fadd double %394, %402, !dbg !1661
  call void @fAddHandler(double %394, double %402, double %403, i64 94334764661584, i64 94334764666048, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764666432, i32 485, i32 41), !dbg !1646
  store double %403, double* %61, align 8, !dbg !1646
  call void @llvm.dbg.declare(metadata double* %62, metadata !1662, metadata !61), !dbg !1663
  store double 0.000000e+00, double* %62, align 8, !dbg !1663
  %404 = load double, double* %60, align 8, !dbg !1664
  %405 = load double, double* %61, align 8, !dbg !1665
  %406 = fsub double %404, %405, !dbg !1666
  call void @fSubHandler(double %404, double %405, double %406, i64 94334764671304, i64 94334764671656, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764672064, i32 487, i32 26), !dbg !1667
  %407 = load double, double* %51, align 8, !dbg !1667
  %408 = fadd double %407, %406, !dbg !1667
  call void @fAddHandler(double %407, double %406, double %408, i64 94334764672456, i64 94334764672064, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764672864, i32 487, i32 17), !dbg !1667
  store double %408, double* %51, align 8, !dbg !1667
  %409 = load double, double* %60, align 8, !dbg !1668
  %410 = call double @fabs(double %409) #1, !dbg !1669
  %411 = load double, double* %61, align 8, !dbg !1670
  %412 = call double @fabs(double %411) #1, !dbg !1671
  %413 = fadd double %410, %412, !dbg !1673
  call void @fAddHandler(double %410, double %412, double %413, i64 94334764675120, i64 94334764676048, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764676528, i32 488, i32 51), !dbg !1674
  %414 = fmul double 0x3CB0000000000000, %413, !dbg !1674
  call void @fMulHandler(double 0x3CB0000000000000, double %413, double %414, i64 0, i64 94334764676528, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764676944, i32 488, i32 36), !dbg !1675
  %415 = load double, double* %52, align 8, !dbg !1675
  %416 = fadd double %415, %414, !dbg !1675
  call void @fAddHandler(double %415, double %414, double %416, i64 94334764677336, i64 94334764676944, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764677744, i32 488, i32 17), !dbg !1675
  store double %416, double* %52, align 8, !dbg !1675
  %417 = load double, double* %7, align 8, !dbg !1676
  %418 = load double, double* %21, align 8, !dbg !1677
  %419 = fadd double %417, %418, !dbg !1678
  call void @fAddHandler(double %417, double %418, double %419, i64 94334764679528, i64 94334764679912, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764680320, i32 489, i32 19), !dbg !1679
  %420 = load i32, i32* %59, align 4, !dbg !1679
  %421 = sitofp i32 %420 to double, !dbg !1679
  %422 = fadd double %419, %421, !dbg !1680
  call void @fAddHandler(double %419, double %421, double %422, i64 94334764680320, i64 94334764681096, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764682768, i32 489, i32 22), !dbg !1681
  %423 = fsub double %422, 1.000000e+00, !dbg !1681
  call void @fSubHandler(double %422, double 1.000000e+00, double %423, i64 94334764682768, i64 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764683216, i32 489, i32 24), !dbg !1682
  %424 = load double, double* %8, align 8, !dbg !1682
  %425 = load double, double* %21, align 8, !dbg !1683
  %426 = fadd double %424, %425, !dbg !1684
  call void @fAddHandler(double %424, double %425, double %426, i64 94334764683576, i64 94334764683960, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764684368, i32 489, i32 32), !dbg !1685
  %427 = load i32, i32* %59, align 4, !dbg !1685
  %428 = sitofp i32 %427 to double, !dbg !1685
  %429 = fadd double %426, %428, !dbg !1686
  call void @fAddHandler(double %426, double %428, double %429, i64 94334764684368, i64 94334764685144, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764686816, i32 489, i32 35), !dbg !1687
  %430 = fsub double %429, 1.000000e+00, !dbg !1687
  call void @fSubHandler(double %429, double 1.000000e+00, double %430, i64 94334764686816, i64 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764687264, i32 489, i32 37), !dbg !1688
  %431 = fmul double %423, %430, !dbg !1688
  call void @fMulHandler(double %423, double %430, double %431, i64 94334764683216, i64 94334764687264, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764687648, i32 489, i32 29), !dbg !1689
  %432 = load double, double* %16, align 8, !dbg !1689
  %433 = load i32, i32* %59, align 4, !dbg !1690
  %434 = sitofp i32 %433 to double, !dbg !1690
  %435 = fadd double %432, %434, !dbg !1691
  call void @fAddHandler(double %432, double %434, double %435, i64 94334764688040, i64 94334764688808, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764690480, i32 489, i32 47), !dbg !1692
  %436 = load i32, i32* %59, align 4, !dbg !1692
  %437 = sitofp i32 %436 to double, !dbg !1692
  %438 = fmul double %435, %437, !dbg !1693
  call void @fMulHandler(double %435, double %437, double %438, i64 94334764690480, i64 94334764691256, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764692928, i32 489, i32 50), !dbg !1694
  %439 = fdiv double %431, %438, !dbg !1694
  call void @fDivHandler(double %431, double %438, double %439, i64 94334764687648, i64 94334764692928, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764693344, i32 489, i32 42), !dbg !1695
  %440 = load double, double* %10, align 8, !dbg !1695
  %441 = fsub double 1.000000e+00, %440, !dbg !1696
  call void @fSubHandler(double 1.000000e+00, double %440, double %441, i64 0, i64 94334764693736, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764694176, i32 489, i32 60), !dbg !1697
  %442 = fmul double %439, %441, !dbg !1697
  call void @fMulHandler(double %439, double %441, double %442, i64 94334764693344, i64 94334764694176, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764694560, i32 489, i32 54), !dbg !1698
  %443 = load double, double* %53, align 8, !dbg !1698
  %444 = fmul double %443, %442, !dbg !1698
  call void @fMulHandler(double %443, double %442, double %444, i64 94334764694952, i64 94334764694560, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764695360, i32 489, i32 14), !dbg !1698
  store double %444, double* %53, align 8, !dbg !1698
  %445 = load double, double* %53, align 8, !dbg !1699
  %446 = load double, double* %51, align 8, !dbg !1700
  %447 = fmul double %445, %446, !dbg !1701
  call void @fMulHandler(double %445, double %446, double %447, i64 94334764697144, i64 94334764697528, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764697936, i32 490, i32 22), !dbg !1702
  store double %447, double* %62, align 8, !dbg !1702
  %448 = load double, double* %62, align 8, !dbg !1703
  %449 = load double, double* %54, align 8, !dbg !1704
  %450 = fadd double %449, %448, !dbg !1704
  call void @fAddHandler(double %449, double %448, double %450, i64 94334764699128, i64 94334764698744, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764699536, i32 491, i32 18), !dbg !1704
  store double %450, double* %54, align 8, !dbg !1704
  %451 = load double, double* %53, align 8, !dbg !1705
  %452 = load double, double* %52, align 8, !dbg !1706
  %453 = fmul double %451, %452, !dbg !1707
  call void @fMulHandler(double %451, double %452, double %453, i64 94334764701320, i64 94334764701704, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764702112, i32 492, i32 31), !dbg !1708
  %454 = call double @fabs(double %453) #1, !dbg !1708
  %455 = load double, double* %62, align 8, !dbg !1709
  %456 = call double @fabs(double %455) #1, !dbg !1710
  %457 = fmul double 0x3CB0000000000000, %456, !dbg !1711
  call void @fMulHandler(double 0x3CB0000000000000, double %456, double %457, i64 0, i64 94334764703520, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764704000, i32 492, i32 59), !dbg !1712
  %458 = fadd double %454, %457, !dbg !1712
  call void @fAddHandler(double %454, double %457, double %458, i64 94334764702592, i64 94334764704000, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764704416, i32 492, i32 42), !dbg !1713
  %459 = load double, double* %55, align 8, !dbg !1713
  %460 = fadd double %459, %458, !dbg !1713
  call void @fAddHandler(double %459, double %458, double %460, i64 94334764704808, i64 94334764704416, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764705216, i32 492, i32 18), !dbg !1713
  store double %460, double* %55, align 8, !dbg !1713
  %461 = load double, double* %62, align 8, !dbg !1714
  %462 = call double @fabs(double %461) #1, !dbg !1716
  %463 = load double, double* %54, align 8, !dbg !1717
  %464 = call double @fabs(double %463) #1, !dbg !1718
  %465 = fmul double 0x3CB0000000000000, %464, !dbg !1720
  call void @fMulHandler(double 0x3CB0000000000000, double %464, double %465, i64 0, i64 94334764708400, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764708880, i32 493, i32 42), !dbg !1721
  %466 = fcmp olt double %462, %465, !dbg !1721
  %467 = call i1 @fCmpInstHandler(double %462, double %465, i1 %466, i32 4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764709296, i32 493, i32 24), !dbg !1722
  br i1 %467, label %468, label %469, !dbg !1722

; <label>:468:                                    ; preds = %377
  br label %473, !dbg !1723

; <label>:469:                                    ; preds = %377
  br label %470, !dbg !1725

; <label>:470:                                    ; preds = %469
  %471 = load i32, i32* %59, align 4, !dbg !1726
  %472 = add nsw i32 %471, 1, !dbg !1726
  store i32 %472, i32* %59, align 4, !dbg !1726
  br label %372, !dbg !1728, !llvm.loop !1729

; <label>:473:                                    ; preds = %468, %372
  %474 = load i32, i32* %59, align 4, !dbg !1731
  %475 = icmp eq i32 %474, 2000, !dbg !1733
  %476 = sext i32 %474 to i64, !dbg !1734
  %477 = call i1 @iCmpInstHandler(i64 %476, i64 2000, i1 %475, i32 32, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764714336, i32 496, i32 12), !dbg !1734
  br i1 %477, label %478, label %479, !dbg !1734

; <label>:478:                                    ; preds = %473
  store i32 11, i32* %17, align 4, !dbg !1735
  br label %479, !dbg !1737

; <label>:479:                                    ; preds = %478, %473
  %480 = load double, double* %54, align 8, !dbg !1738
  %481 = fcmp oeq double %480, 0.000000e+00, !dbg !1740
  %482 = call i1 @fCmpInstHandler(double %480, double 0.000000e+00, i1 %481, i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764716528, i32 498, i32 19), !dbg !1741
  br i1 %482, label %483, label %486, !dbg !1741

; <label>:483:                                    ; preds = %479
  %484 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %20, i32 0, i32 0, !dbg !1742
  store double 0.000000e+00, double* %484, align 8, !dbg !1744
  %485 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %20, i32 0, i32 1, !dbg !1745
  store double 0.000000e+00, double* %485, align 8, !dbg !1746
  br label %504, !dbg !1747

; <label>:486:                                    ; preds = %479
  %487 = load double, double* %56, align 8, !dbg !1748
  %488 = load double, double* %57, align 8, !dbg !1750
  %489 = load double, double* %54, align 8, !dbg !1751
  %490 = load double, double* %55, align 8, !dbg !1752
  %491 = call i32 @gsl_sf_exp_mult_err_e(double %487, double %488, double %489, double %490, %struct.gsl_sf_result_struct* %20), !dbg !1753
  store i32 %491, i32* %58, align 4, !dbg !1754
  %492 = load i32, i32* %58, align 4, !dbg !1755
  %493 = icmp eq i32 %492, 16, !dbg !1757
  %494 = sext i32 %492 to i64, !dbg !1758
  %495 = call i1 @iCmpInstHandler(i64 %494, i64 16, i1 %493, i32 32, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764722736, i32 506, i32 19), !dbg !1758
  br i1 %495, label %496, label %503, !dbg !1758

; <label>:496:                                    ; preds = %486
  %497 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !1759
  %498 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %497, i32 0, i32 0, !dbg !1761
  store double 0.000000e+00, double* %498, align 8, !dbg !1762
  %499 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !1763
  %500 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %499, i32 0, i32 1, !dbg !1764
  store double 0.000000e+00, double* %500, align 8, !dbg !1765
  br label %501, !dbg !1766, !llvm.loop !1767

; <label>:501:                                    ; preds = %496
  call void @gsl_error(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 509, i32 16), !dbg !1768
  store i32 16, i32* %6, align 4, !dbg !1768
  br label %953, !dbg !1768
                                                  ; No predecessors!
  br label %503, !dbg !1771

; <label>:503:                                    ; preds = %502, %486
  br label %504

; <label>:504:                                    ; preds = %503, %483
  %505 = load i32, i32* %17, align 4, !dbg !1772
  %506 = icmp ne i32 %505, 0, !dbg !1772
  %507 = sext i32 %505 to i64, !dbg !1772
  %508 = call i1 @iCmpInstHandler(i64 %507, i64 0, i1 %506, i32 33, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764730288, i32 512, i32 17), !dbg !1772
  br i1 %508, label %509, label %511, !dbg !1772

; <label>:509:                                    ; preds = %504
  %510 = load i32, i32* %17, align 4, !dbg !1773
  br label %521, !dbg !1773

; <label>:511:                                    ; preds = %504
  %512 = load i32, i32* %50, align 4, !dbg !1774
  %513 = icmp ne i32 %512, 0, !dbg !1774
  %514 = sext i32 %512 to i64, !dbg !1774
  %515 = call i1 @iCmpInstHandler(i64 %514, i64 0, i1 %513, i32 33, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764734832, i32 512, i32 17), !dbg !1774
  br i1 %515, label %516, label %518, !dbg !1774

; <label>:516:                                    ; preds = %511
  %517 = load i32, i32* %50, align 4, !dbg !1775
  br label %519, !dbg !1775

; <label>:518:                                    ; preds = %511
  br label %519, !dbg !1776

; <label>:519:                                    ; preds = %518, %516
  %520 = phi i32 [ %517, %516 ], [ 0, %518 ], !dbg !1777
  br label %521, !dbg !1777

; <label>:521:                                    ; preds = %519, %509
  %522 = phi i32 [ %510, %509 ], [ %520, %519 ], !dbg !1778
  store i32 %522, i32* %17, align 4, !dbg !1779
  br label %526, !dbg !1780

; <label>:523:                                    ; preds = %278, %273
  %524 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %20, i32 0, i32 0, !dbg !1781
  store double 0.000000e+00, double* %524, align 8, !dbg !1783
  %525 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %20, i32 0, i32 1, !dbg !1784
  store double 0.000000e+00, double* %525, align 8, !dbg !1785
  br label %526

; <label>:526:                                    ; preds = %523, %521
  %527 = load i32, i32* %13, align 4, !dbg !1786
  %528 = and i32 %527, 1, !dbg !1786
  %529 = icmp ne i32 %528, 0, !dbg !1786
  %530 = sext i32 %528 to i64, !dbg !1786
  %531 = call i1 @iCmpInstHandler(i64 %530, i64 0, i1 %529, i32 33, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764746528, i32 522, i32 15), !dbg !1786
  %532 = select i1 %531, double -1.000000e+00, double 1.000000e+00, !dbg !1786
  store double %532, double* %18, align 8, !dbg !1787
  %533 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %19, i32 0, i32 0, !dbg !1788
  %534 = load double, double* %533, align 8, !dbg !1788
  %535 = load double, double* %18, align 8, !dbg !1789
  %536 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %20, i32 0, i32 0, !dbg !1790
  %537 = load double, double* %536, align 8, !dbg !1790
  %538 = fmul double %535, %537, !dbg !1791
  call void @fMulHandler(double %535, double %537, double %538, i64 94334764749288, i64 94334764750120, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764751792, i32 523, i32 35), !dbg !1792
  %539 = fadd double %534, %538, !dbg !1792
  call void @fAddHandler(double %534, double %538, double %539, i64 94334764747640, i64 94334764751792, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764752208, i32 523, i32 27), !dbg !1793
  %540 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !1793
  %541 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %540, i32 0, i32 0, !dbg !1794
  store double %539, double* %541, align 8, !dbg !1795
  %542 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %19, i32 0, i32 1, !dbg !1796
  %543 = load double, double* %542, align 8, !dbg !1796
  %544 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %20, i32 0, i32 1, !dbg !1797
  %545 = load double, double* %544, align 8, !dbg !1797
  %546 = fadd double %543, %545, !dbg !1798
  call void @fAddHandler(double %543, double %545, double %546, i64 94334764754296, i64 94334764756392, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764758064, i32 524, i32 27), !dbg !1799
  %547 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !1799
  %548 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %547, i32 0, i32 1, !dbg !1800
  store double %546, double* %548, align 8, !dbg !1801
  %549 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %19, i32 0, i32 0, !dbg !1802
  %550 = load double, double* %549, align 8, !dbg !1802
  %551 = call double @fabs(double %550) #1, !dbg !1803
  %552 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %20, i32 0, i32 0, !dbg !1804
  %553 = load double, double* %552, align 8, !dbg !1804
  %554 = call double @fabs(double %553) #1, !dbg !1805
  %555 = fadd double %551, %554, !dbg !1807
  call void @fAddHandler(double %551, double %554, double %555, i64 94334764541680, i64 94334764542768, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764543248, i32 525, i32 58), !dbg !1808
  %556 = fmul double 0x3CC0000000000000, %555, !dbg !1808
  call void @fMulHandler(double 0x3CC0000000000000, double %555, double %556, i64 0, i64 94334764543248, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764543664, i32 525, i32 42), !dbg !1809
  %557 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !1809
  %558 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %557, i32 0, i32 1, !dbg !1810
  %559 = load double, double* %558, align 8, !dbg !1811
  %560 = fadd double %559, %556, !dbg !1811
  call void @fAddHandler(double %559, double %556, double %560, i64 94334764770744, i64 94334764543664, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764771152, i32 525, i32 17), !dbg !1811
  store double %560, double* %558, align 8, !dbg !1811
  %561 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !1812
  %562 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %561, i32 0, i32 0, !dbg !1813
  %563 = load double, double* %562, align 8, !dbg !1813
  %564 = call double @fabs(double %563) #1, !dbg !1814
  %565 = fmul double 0x3CC0000000000000, %564, !dbg !1815
  call void @fMulHandler(double 0x3CC0000000000000, double %564, double %565, i64 0, i64 94334764775504, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764775984, i32 526, i32 42), !dbg !1816
  %566 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !1816
  %567 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %566, i32 0, i32 1, !dbg !1817
  %568 = load double, double* %567, align 8, !dbg !1818
  %569 = fadd double %568, %565, !dbg !1818
  call void @fAddHandler(double %568, double %565, double %569, i64 94334764777208, i64 94334764775984, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764777616, i32 526, i32 17), !dbg !1818
  store double %569, double* %567, align 8, !dbg !1818
  %570 = load i32, i32* %17, align 4, !dbg !1819
  store i32 %570, i32* %6, align 4, !dbg !1820
  br label %953, !dbg !1820

; <label>:571:                                    ; preds = %5
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %63, metadata !1821, metadata !61), !dbg !1823
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %64, metadata !1824, metadata !61), !dbg !1825
  call void @llvm.dbg.declare(metadata double* %65, metadata !1826, metadata !61), !dbg !1827
  call void @llvm.dbg.declare(metadata double* %66, metadata !1828, metadata !61), !dbg !1829
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %67, metadata !1830, metadata !61), !dbg !1831
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %68, metadata !1832, metadata !61), !dbg !1833
  call void @llvm.dbg.declare(metadata i32* %69, metadata !1834, metadata !61), !dbg !1835
  call void @llvm.dbg.declare(metadata i32* %70, metadata !1836, metadata !61), !dbg !1837
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %71, metadata !1838, metadata !61), !dbg !1839
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %72, metadata !1840, metadata !61), !dbg !1841
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %73, metadata !1842, metadata !61), !dbg !1843
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %74, metadata !1844, metadata !61), !dbg !1845
  call void @llvm.dbg.declare(metadata double* %75, metadata !1846, metadata !61), !dbg !1847
  call void @llvm.dbg.declare(metadata double* %76, metadata !1848, metadata !61), !dbg !1849
  call void @llvm.dbg.declare(metadata double* %77, metadata !1850, metadata !61), !dbg !1851
  call void @llvm.dbg.declare(metadata double* %78, metadata !1852, metadata !61), !dbg !1853
  call void @llvm.dbg.declare(metadata i32* %79, metadata !1854, metadata !61), !dbg !1855
  %572 = load double, double* %9, align 8, !dbg !1856
  %573 = load double, double* %7, align 8, !dbg !1857
  %574 = fsub double %572, %573, !dbg !1858
  call void @fSubHandler(double %572, double %573, double %574, i64 94334764800312, i64 94334764800664, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764801072, i32 542, i32 42), !dbg !1859
  %575 = call i32 @gsl_sf_lngamma_sgn_e(double %574, %struct.gsl_sf_result_struct* %71, double* %75), !dbg !1859
  store i32 %575, i32* %79, align 4, !dbg !1855
  call void @llvm.dbg.declare(metadata i32* %80, metadata !1860, metadata !61), !dbg !1861
  %576 = load double, double* %9, align 8, !dbg !1862
  %577 = load double, double* %8, align 8, !dbg !1863
  %578 = fsub double %576, %577, !dbg !1864
  call void @fSubHandler(double %576, double %577, double %578, i64 94334764804824, i64 94334764805176, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764805584, i32 543, i32 42), !dbg !1865
  %579 = call i32 @gsl_sf_lngamma_sgn_e(double %578, %struct.gsl_sf_result_struct* %72, double* %76), !dbg !1865
  store i32 %579, i32* %80, align 4, !dbg !1861
  call void @llvm.dbg.declare(metadata i32* %81, metadata !1866, metadata !61), !dbg !1867
  %580 = load double, double* %7, align 8, !dbg !1868
  %581 = call i32 @gsl_sf_lngamma_sgn_e(double %580, %struct.gsl_sf_result_struct* %73, double* %77), !dbg !1869
  store i32 %581, i32* %81, align 4, !dbg !1867
  call void @llvm.dbg.declare(metadata i32* %82, metadata !1870, metadata !61), !dbg !1871
  %582 = load double, double* %8, align 8, !dbg !1872
  %583 = call i32 @gsl_sf_lngamma_sgn_e(double %582, %struct.gsl_sf_result_struct* %74, double* %78), !dbg !1873
  store i32 %583, i32* %82, align 4, !dbg !1871
  call void @llvm.dbg.declare(metadata i32* %83, metadata !1874, metadata !61), !dbg !1875
  %584 = load i32, i32* %79, align 4, !dbg !1876
  %585 = icmp eq i32 %584, 0, !dbg !1877
  %586 = sext i32 %584 to i64, !dbg !1878
  %587 = call i1 @iCmpInstHandler(i64 %586, i64 0, i1 %585, i32 32, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764817136, i32 546, i32 25), !dbg !1878
  br i1 %587, label %588, label %591, !dbg !1878

; <label>:588:                                    ; preds = %571
  %589 = load i32, i32* %80, align 4, !dbg !1879
  %590 = icmp eq i32 %589, 0, !dbg !1881
  br label %591

; <label>:591:                                    ; preds = %588, %571
  %592 = phi i1 [ false, %571 ], [ %590, %588 ]
  %593 = zext i1 %592 to i32, !dbg !1882
  store i32 %593, i32* %83, align 4, !dbg !1884
  call void @llvm.dbg.declare(metadata i32* %84, metadata !1885, metadata !61), !dbg !1886
  %594 = load i32, i32* %81, align 4, !dbg !1887
  %595 = icmp eq i32 %594, 0, !dbg !1888
  %596 = sext i32 %594 to i64, !dbg !1889
  %597 = call i1 @iCmpInstHandler(i64 %596, i64 0, i1 %595, i32 32, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764821488, i32 547, i32 25), !dbg !1889
  br i1 %597, label %598, label %601, !dbg !1889

; <label>:598:                                    ; preds = %591
  %599 = load i32, i32* %82, align 4, !dbg !1890
  %600 = icmp eq i32 %599, 0, !dbg !1891
  br label %601

; <label>:601:                                    ; preds = %598, %591
  %602 = phi i1 [ false, %591 ], [ %600, %598 ]
  %603 = zext i1 %602 to i32, !dbg !1892
  store i32 %603, i32* %84, align 4, !dbg !1893
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %85, metadata !1894, metadata !61), !dbg !1895
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %86, metadata !1896, metadata !61), !dbg !1897
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %87, metadata !1898, metadata !61), !dbg !1899
  call void @llvm.dbg.declare(metadata double* %88, metadata !1900, metadata !61), !dbg !1901
  call void @llvm.dbg.declare(metadata double* %89, metadata !1902, metadata !61), !dbg !1903
  call void @llvm.dbg.declare(metadata double* %90, metadata !1904, metadata !61), !dbg !1905
  %604 = load double, double* %9, align 8, !dbg !1906
  %605 = call i32 @gsl_sf_lngamma_sgn_e(double %604, %struct.gsl_sf_result_struct* %85, double* %88), !dbg !1907
  %606 = load double, double* %12, align 8, !dbg !1908
  %607 = call i32 @gsl_sf_lngamma_sgn_e(double %606, %struct.gsl_sf_result_struct* %86, double* %89), !dbg !1909
  %608 = load double, double* %12, align 8, !dbg !1910
  %609 = fsub double -0.000000e+00, %608, !dbg !1911
  call void @fSubHandler(double -0.000000e+00, double %608, double %609, i64 0, i64 94334764832792, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764833168, i32 553, i32 26), !dbg !1912
  %610 = call i32 @gsl_sf_lngamma_sgn_e(double %609, %struct.gsl_sf_result_struct* %87, double* %90), !dbg !1912
  %611 = load double, double* %88, align 8, !dbg !1913
  %612 = load double, double* %89, align 8, !dbg !1914
  %613 = fmul double %611, %612, !dbg !1915
  call void @fMulHandler(double %611, double %612, double %613, i64 94334764834152, i64 94334764834504, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764834912, i32 555, i32 19), !dbg !1916
  %614 = load double, double* %75, align 8, !dbg !1916
  %615 = fmul double %613, %614, !dbg !1917
  call void @fMulHandler(double %613, double %614, double %615, i64 94334764834912, i64 94334764835304, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764835712, i32 555, i32 29), !dbg !1918
  %616 = load double, double* %76, align 8, !dbg !1918
  %617 = fmul double %615, %616, !dbg !1919
  call void @fMulHandler(double %615, double %616, double %617, i64 94334764835712, i64 94334764836104, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764836512, i32 555, i32 40), !dbg !1920
  store double %617, double* %65, align 8, !dbg !1920
  %618 = load double, double* %88, align 8, !dbg !1921
  %619 = load double, double* %90, align 8, !dbg !1922
  %620 = fmul double %618, %619, !dbg !1923
  call void @fMulHandler(double %618, double %619, double %620, i64 94334764837320, i64 94334764837704, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764838112, i32 556, i32 19), !dbg !1924
  %621 = load double, double* %77, align 8, !dbg !1924
  %622 = fmul double %620, %621, !dbg !1925
  call void @fMulHandler(double %620, double %621, double %622, i64 94334764838112, i64 94334764838504, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764838912, i32 556, i32 29), !dbg !1926
  %623 = load double, double* %78, align 8, !dbg !1926
  %624 = fmul double %622, %623, !dbg !1927
  call void @fMulHandler(double %622, double %623, double %624, i64 94334764838912, i64 94334764839304, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764839712, i32 556, i32 40), !dbg !1928
  store double %624, double* %66, align 8, !dbg !1928
  %625 = load i32, i32* %83, align 4, !dbg !1929
  %626 = icmp ne i32 %625, 0, !dbg !1929
  %627 = sext i32 %625 to i64, !dbg !1931
  %628 = call i1 @iCmpInstHandler(i64 %627, i64 0, i1 %626, i32 33, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764840928, i32 558, i32 8), !dbg !1931
  br i1 %628, label %629, label %717, !dbg !1931

; <label>:629:                                    ; preds = %601
  %630 = load i32, i32* %84, align 4, !dbg !1932
  %631 = icmp ne i32 %630, 0, !dbg !1932
  %632 = sext i32 %630 to i64, !dbg !1934
  %633 = call i1 @iCmpInstHandler(i64 %632, i64 0, i1 %631, i32 33, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764843648, i32 558, i32 15), !dbg !1934
  br i1 %633, label %634, label %717, !dbg !1934

; <label>:634:                                    ; preds = %629
  call void @llvm.dbg.declare(metadata double* %91, metadata !1935, metadata !61), !dbg !1937
  %635 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %85, i32 0, i32 0, !dbg !1938
  %636 = load double, double* %635, align 8, !dbg !1938
  %637 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %86, i32 0, i32 0, !dbg !1939
  %638 = load double, double* %637, align 8, !dbg !1939
  %639 = fadd double %636, %638, !dbg !1940
  call void @fAddHandler(double %636, double %638, double %639, i64 94334764847352, i64 94334764849448, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764851120, i32 559, i32 38), !dbg !1941
  %640 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %71, i32 0, i32 0, !dbg !1941
  %641 = load double, double* %640, align 8, !dbg !1941
  %642 = fsub double %639, %641, !dbg !1942
  call void @fSubHandler(double %639, double %641, double %642, i64 94334764851120, i64 94334764851960, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764853632, i32 559, i32 51), !dbg !1943
  %643 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %72, i32 0, i32 0, !dbg !1943
  %644 = load double, double* %643, align 8, !dbg !1943
  %645 = fsub double %642, %644, !dbg !1944
  call void @fSubHandler(double %642, double %644, double %645, i64 94334764853632, i64 94334764854472, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764856144, i32 559, i32 65), !dbg !1937
  store double %645, double* %91, align 8, !dbg !1937
  call void @llvm.dbg.declare(metadata double* %92, metadata !1945, metadata !61), !dbg !1946
  %646 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %85, i32 0, i32 0, !dbg !1947
  %647 = load double, double* %646, align 8, !dbg !1947
  %648 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %87, i32 0, i32 0, !dbg !1948
  %649 = load double, double* %648, align 8, !dbg !1948
  %650 = fadd double %647, %649, !dbg !1949
  call void @fAddHandler(double %647, double %649, double %650, i64 94334764859752, i64 94334764861848, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764863520, i32 560, i32 38), !dbg !1950
  %651 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %73, i32 0, i32 0, !dbg !1950
  %652 = load double, double* %651, align 8, !dbg !1950
  %653 = fsub double %650, %652, !dbg !1951
  call void @fSubHandler(double %650, double %652, double %653, i64 94334764863520, i64 94334764864360, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764866032, i32 560, i32 51), !dbg !1952
  %654 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %74, i32 0, i32 0, !dbg !1952
  %655 = load double, double* %654, align 8, !dbg !1952
  %656 = fsub double %653, %655, !dbg !1953
  call void @fSubHandler(double %653, double %655, double %656, i64 94334764866032, i64 94334764866872, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764868544, i32 560, i32 65), !dbg !1954
  %657 = load double, double* %12, align 8, !dbg !1954
  %658 = load double, double* %10, align 8, !dbg !1955
  %659 = fsub double 1.000000e+00, %658, !dbg !1956
  call void @fSubHandler(double 1.000000e+00, double %658, double %659, i64 0, i64 94334764869320, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764869760, i32 560, i32 89), !dbg !1957
  %660 = call double @log(double %659) #5, !dbg !1957
  call void @callOneArgHandler(i32 12, double %659, double %660, i64 94334764869760, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764870208, i32 560, i32 82), !dbg !1958
  %661 = fmul double %657, %660, !dbg !1958
  call void @fMulHandler(double %657, double %660, double %661, i64 94334764868936, i64 94334764870208, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764870688, i32 560, i32 81), !dbg !1959
  %662 = fadd double %656, %661, !dbg !1959
  call void @fAddHandler(double %656, double %661, double %662, i64 94334764868544, i64 94334764870688, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764871104, i32 560, i32 78), !dbg !1946
  store double %662, double* %92, align 8, !dbg !1946
  call void @llvm.dbg.declare(metadata double* %93, metadata !1960, metadata !61), !dbg !1961
  %663 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %85, i32 0, i32 1, !dbg !1962
  %664 = load double, double* %663, align 8, !dbg !1962
  %665 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %86, i32 0, i32 1, !dbg !1963
  %666 = load double, double* %665, align 8, !dbg !1963
  %667 = fadd double %664, %666, !dbg !1964
  call void @fAddHandler(double %664, double %666, double %667, i64 94334764874712, i64 94334764876808, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764878480, i32 561, i32 38), !dbg !1965
  %668 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %71, i32 0, i32 1, !dbg !1965
  %669 = load double, double* %668, align 8, !dbg !1965
  %670 = fadd double %667, %669, !dbg !1966
  call void @fAddHandler(double %667, double %669, double %670, i64 94334764878480, i64 94334764879320, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764880992, i32 561, i32 50), !dbg !1967
  %671 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %72, i32 0, i32 1, !dbg !1967
  %672 = load double, double* %671, align 8, !dbg !1967
  %673 = fadd double %670, %672, !dbg !1968
  call void @fAddHandler(double %670, double %672, double %673, i64 94334764880992, i64 94334764881832, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764883504, i32 561, i32 64), !dbg !1961
  store double %673, double* %93, align 8, !dbg !1961
  call void @llvm.dbg.declare(metadata double* %94, metadata !1969, metadata !61), !dbg !1970
  %674 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %85, i32 0, i32 1, !dbg !1971
  %675 = load double, double* %674, align 8, !dbg !1971
  %676 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %87, i32 0, i32 1, !dbg !1972
  %677 = load double, double* %676, align 8, !dbg !1972
  %678 = fadd double %675, %677, !dbg !1973
  call void @fAddHandler(double %675, double %677, double %678, i64 94334764887112, i64 94334764889208, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764890880, i32 562, i32 38), !dbg !1974
  %679 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %73, i32 0, i32 1, !dbg !1974
  %680 = load double, double* %679, align 8, !dbg !1974
  %681 = fadd double %678, %680, !dbg !1975
  call void @fAddHandler(double %678, double %680, double %681, i64 94334764890880, i64 94334764891720, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764893392, i32 562, i32 51), !dbg !1976
  %682 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %74, i32 0, i32 1, !dbg !1976
  %683 = load double, double* %682, align 8, !dbg !1976
  %684 = fadd double %681, %683, !dbg !1977
  call void @fAddHandler(double %681, double %683, double %684, i64 94334764893392, i64 94334764894232, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764895904, i32 562, i32 65), !dbg !1970
  store double %684, double* %94, align 8, !dbg !1970
  %685 = load double, double* %91, align 8, !dbg !1978
  %686 = fcmp olt double %685, 0x40862E42FEFA39EF, !dbg !1980
  %687 = call i1 @fCmpInstHandler(double %685, double 0x40862E42FEFA39EF, i1 %686, i32 4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764898448, i32 563, i32 22), !dbg !1981
  br i1 %687, label %688, label %707, !dbg !1981

; <label>:688:                                    ; preds = %634
  %689 = load double, double* %92, align 8, !dbg !1982
  %690 = fcmp olt double %689, 0x40862E42FEFA39EF, !dbg !1984
  %691 = call i1 @fCmpInstHandler(double %689, double 0x40862E42FEFA39EF, i1 %690, i32 4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764899904, i32 563, i32 55), !dbg !1985
  br i1 %691, label %692, label %707, !dbg !1985

; <label>:692:                                    ; preds = %688
  %693 = load double, double* %91, align 8, !dbg !1986
  %694 = load double, double* %93, align 8, !dbg !1988
  %695 = call i32 @gsl_sf_exp_err_e(double %693, double %694, %struct.gsl_sf_result_struct* %63), !dbg !1989
  %696 = load double, double* %92, align 8, !dbg !1990
  %697 = load double, double* %94, align 8, !dbg !1991
  %698 = call i32 @gsl_sf_exp_err_e(double %696, double %697, %struct.gsl_sf_result_struct* %64), !dbg !1992
  %699 = load double, double* %65, align 8, !dbg !1993
  %700 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %63, i32 0, i32 0, !dbg !1994
  %701 = load double, double* %700, align 8, !dbg !1995
  %702 = fmul double %701, %699, !dbg !1995
  call void @fMulHandler(double %701, double %699, double %702, i64 94334764904296, i64 94334764903496, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764904704, i32 566, i32 18), !dbg !1995
  store double %702, double* %700, align 8, !dbg !1995
  %703 = load double, double* %66, align 8, !dbg !1996
  %704 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %64, i32 0, i32 0, !dbg !1997
  %705 = load double, double* %704, align 8, !dbg !1998
  %706 = fmul double %705, %703, !dbg !1998
  call void @fMulHandler(double %705, double %703, double %706, i64 94334764907320, i64 94334764906488, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764907728, i32 567, i32 18), !dbg !1998
  store double %706, double* %704, align 8, !dbg !1998
  br label %716, !dbg !1999

; <label>:707:                                    ; preds = %688, %634
  br label %708, !dbg !2000, !llvm.loop !2002

; <label>:708:                                    ; preds = %707
  %709 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !2003
  %710 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %709, i32 0, i32 0, !dbg !2003
  store double 0x7FF0000000000000, double* %710, align 8, !dbg !2003
  %711 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !2003
  %712 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %711, i32 0, i32 1, !dbg !2003
  store double 0x7FF0000000000000, double* %712, align 8, !dbg !2003
  br label %713, !dbg !2003, !llvm.loop !2006

; <label>:713:                                    ; preds = %708
  call void @gsl_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 570, i32 16), !dbg !2008
  store i32 16, i32* %6, align 4, !dbg !2008
  br label %953, !dbg !2008
                                                  ; No predecessors!
  br label %715, !dbg !2011

; <label>:715:                                    ; preds = %714
  br label %716

; <label>:716:                                    ; preds = %715, %692
  br label %848, !dbg !2013

; <label>:717:                                    ; preds = %629, %601
  %718 = load i32, i32* %83, align 4, !dbg !2014
  %719 = icmp ne i32 %718, 0, !dbg !2014
  %720 = sext i32 %718 to i64, !dbg !2016
  %721 = call i1 @iCmpInstHandler(i64 %720, i64 0, i1 %719, i32 33, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764917664, i32 573, i32 13), !dbg !2016
  br i1 %721, label %722, label %773, !dbg !2016

; <label>:722:                                    ; preds = %717
  %723 = load i32, i32* %84, align 4, !dbg !2017
  %724 = icmp ne i32 %723, 0, !dbg !2017
  %725 = sext i32 %723 to i64, !dbg !2019
  %726 = call i1 @iCmpInstHandler(i64 %725, i64 0, i1 %724, i32 33, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764920384, i32 573, i32 21), !dbg !2019
  br i1 %726, label %773, label %727, !dbg !2019

; <label>:727:                                    ; preds = %722
  call void @llvm.dbg.declare(metadata double* %95, metadata !2020, metadata !61), !dbg !2022
  %728 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %85, i32 0, i32 0, !dbg !2023
  %729 = load double, double* %728, align 8, !dbg !2023
  %730 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %86, i32 0, i32 0, !dbg !2024
  %731 = load double, double* %730, align 8, !dbg !2024
  %732 = fadd double %729, %731, !dbg !2025
  call void @fAddHandler(double %729, double %731, double %732, i64 94334764924088, i64 94334764926184, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764927856, i32 574, i32 38), !dbg !2026
  %733 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %71, i32 0, i32 0, !dbg !2026
  %734 = load double, double* %733, align 8, !dbg !2026
  %735 = fsub double %732, %734, !dbg !2027
  call void @fSubHandler(double %732, double %734, double %735, i64 94334764927856, i64 94334764928696, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764930368, i32 574, i32 50), !dbg !2028
  %736 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %72, i32 0, i32 0, !dbg !2028
  %737 = load double, double* %736, align 8, !dbg !2028
  %738 = fsub double %735, %737, !dbg !2029
  call void @fSubHandler(double %735, double %737, double %738, i64 94334764930368, i64 94334764931208, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764932880, i32 574, i32 64), !dbg !2022
  store double %738, double* %95, align 8, !dbg !2022
  call void @llvm.dbg.declare(metadata double* %96, metadata !2030, metadata !61), !dbg !2031
  %739 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %85, i32 0, i32 1, !dbg !2032
  %740 = load double, double* %739, align 8, !dbg !2032
  %741 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %86, i32 0, i32 1, !dbg !2033
  %742 = load double, double* %741, align 8, !dbg !2033
  %743 = fadd double %740, %742, !dbg !2034
  call void @fAddHandler(double %740, double %742, double %743, i64 94334764936488, i64 94334764938584, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764940256, i32 575, i32 38), !dbg !2035
  %744 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %71, i32 0, i32 1, !dbg !2035
  %745 = load double, double* %744, align 8, !dbg !2035
  %746 = fadd double %743, %745, !dbg !2036
  call void @fAddHandler(double %743, double %745, double %746, i64 94334764940256, i64 94334764941096, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764942768, i32 575, i32 50), !dbg !2037
  %747 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %72, i32 0, i32 1, !dbg !2037
  %748 = load double, double* %747, align 8, !dbg !2037
  %749 = fadd double %746, %748, !dbg !2038
  call void @fAddHandler(double %746, double %748, double %749, i64 94334764942768, i64 94334764943608, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764945280, i32 575, i32 64), !dbg !2031
  store double %749, double* %96, align 8, !dbg !2031
  %750 = load double, double* %95, align 8, !dbg !2039
  %751 = fcmp olt double %750, 0x40862E42FEFA39EF, !dbg !2041
  %752 = call i1 @fCmpInstHandler(double %750, double 0x40862E42FEFA39EF, i1 %751, i32 4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764947760, i32 576, i32 22), !dbg !2042
  br i1 %752, label %753, label %763, !dbg !2042

; <label>:753:                                    ; preds = %727
  %754 = load double, double* %95, align 8, !dbg !2043
  %755 = load double, double* %96, align 8, !dbg !2045
  %756 = call i32 @gsl_sf_exp_err_e(double %754, double %755, %struct.gsl_sf_result_struct* %63), !dbg !2046
  %757 = load double, double* %65, align 8, !dbg !2047
  %758 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %63, i32 0, i32 0, !dbg !2048
  %759 = load double, double* %758, align 8, !dbg !2049
  %760 = fmul double %759, %757, !dbg !2049
  call void @fMulHandler(double %759, double %757, double %760, i64 94334764950968, i64 94334764950168, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764951376, i32 578, i32 18), !dbg !2049
  store double %760, double* %758, align 8, !dbg !2049
  %761 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %64, i32 0, i32 0, !dbg !2050
  store double 0.000000e+00, double* %761, align 8, !dbg !2051
  %762 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %64, i32 0, i32 1, !dbg !2052
  store double 0.000000e+00, double* %762, align 8, !dbg !2053
  br label %772, !dbg !2054

; <label>:763:                                    ; preds = %727
  br label %764, !dbg !2055, !llvm.loop !2057

; <label>:764:                                    ; preds = %763
  %765 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !2058
  %766 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %765, i32 0, i32 0, !dbg !2058
  store double 0x7FF0000000000000, double* %766, align 8, !dbg !2058
  %767 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !2058
  %768 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %767, i32 0, i32 1, !dbg !2058
  store double 0x7FF0000000000000, double* %768, align 8, !dbg !2058
  br label %769, !dbg !2058, !llvm.loop !2061

; <label>:769:                                    ; preds = %764
  call void @gsl_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 583, i32 16), !dbg !2063
  store i32 16, i32* %6, align 4, !dbg !2063
  br label %953, !dbg !2063
                                                  ; No predecessors!
  br label %771, !dbg !2066

; <label>:771:                                    ; preds = %770
  br label %772

; <label>:772:                                    ; preds = %771, %753
  br label %847, !dbg !2068

; <label>:773:                                    ; preds = %722, %717
  %774 = load i32, i32* %83, align 4, !dbg !2069
  %775 = icmp ne i32 %774, 0, !dbg !2069
  %776 = sext i32 %774 to i64, !dbg !2071
  %777 = call i1 @iCmpInstHandler(i64 %776, i64 0, i1 %775, i32 33, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764963040, i32 586, i32 14), !dbg !2071
  br i1 %777, label %835, label %778, !dbg !2071

; <label>:778:                                    ; preds = %773
  %779 = load i32, i32* %84, align 4, !dbg !2072
  %780 = icmp ne i32 %779, 0, !dbg !2072
  %781 = sext i32 %779 to i64, !dbg !2074
  %782 = call i1 @iCmpInstHandler(i64 %781, i64 0, i1 %780, i32 33, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764965760, i32 586, i32 21), !dbg !2074
  br i1 %782, label %783, label %835, !dbg !2074

; <label>:783:                                    ; preds = %778
  call void @llvm.dbg.declare(metadata double* %97, metadata !2075, metadata !61), !dbg !2077
  %784 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %85, i32 0, i32 0, !dbg !2078
  %785 = load double, double* %784, align 8, !dbg !2078
  %786 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %87, i32 0, i32 0, !dbg !2079
  %787 = load double, double* %786, align 8, !dbg !2079
  %788 = fadd double %785, %787, !dbg !2080
  call void @fAddHandler(double %785, double %787, double %788, i64 94334764969464, i64 94334764971560, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764973232, i32 587, i32 38), !dbg !2081
  %789 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %73, i32 0, i32 0, !dbg !2081
  %790 = load double, double* %789, align 8, !dbg !2081
  %791 = fsub double %788, %790, !dbg !2082
  call void @fSubHandler(double %788, double %790, double %791, i64 94334764973232, i64 94334764974072, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764975744, i32 587, i32 51), !dbg !2083
  %792 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %74, i32 0, i32 0, !dbg !2083
  %793 = load double, double* %792, align 8, !dbg !2083
  %794 = fsub double %791, %793, !dbg !2084
  call void @fSubHandler(double %791, double %793, double %794, i64 94334764975744, i64 94334764976584, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764978256, i32 587, i32 64), !dbg !2085
  %795 = load double, double* %12, align 8, !dbg !2085
  %796 = load double, double* %10, align 8, !dbg !2086
  %797 = fsub double 1.000000e+00, %796, !dbg !2087
  call void @fSubHandler(double 1.000000e+00, double %796, double %797, i64 0, i64 94334764979032, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764979472, i32 587, i32 88), !dbg !2088
  %798 = call double @log(double %797) #5, !dbg !2088
  call void @callOneArgHandler(i32 12, double %797, double %798, i64 94334764979472, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764979920, i32 587, i32 81), !dbg !2089
  %799 = fmul double %795, %798, !dbg !2089
  call void @fMulHandler(double %795, double %798, double %799, i64 94334764978648, i64 94334764979920, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764980400, i32 587, i32 80), !dbg !2090
  %800 = fadd double %794, %799, !dbg !2090
  call void @fAddHandler(double %794, double %799, double %800, i64 94334764978256, i64 94334764980400, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764980816, i32 587, i32 77), !dbg !2077
  store double %800, double* %97, align 8, !dbg !2077
  call void @llvm.dbg.declare(metadata double* %98, metadata !2091, metadata !61), !dbg !2092
  %801 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %85, i32 0, i32 1, !dbg !2093
  %802 = load double, double* %801, align 8, !dbg !2093
  %803 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %87, i32 0, i32 1, !dbg !2094
  %804 = load double, double* %803, align 8, !dbg !2094
  %805 = fadd double %802, %804, !dbg !2095
  call void @fAddHandler(double %802, double %804, double %805, i64 94334764984424, i64 94334764986520, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764988192, i32 588, i32 38), !dbg !2096
  %806 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %73, i32 0, i32 1, !dbg !2096
  %807 = load double, double* %806, align 8, !dbg !2096
  %808 = fadd double %805, %807, !dbg !2097
  call void @fAddHandler(double %805, double %807, double %808, i64 94334764988192, i64 94334764989032, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764990704, i32 588, i32 51), !dbg !2098
  %809 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %74, i32 0, i32 1, !dbg !2098
  %810 = load double, double* %809, align 8, !dbg !2098
  %811 = fadd double %808, %810, !dbg !2099
  call void @fAddHandler(double %808, double %810, double %811, i64 94334764990704, i64 94334764991544, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764993216, i32 588, i32 64), !dbg !2092
  store double %811, double* %98, align 8, !dbg !2092
  %812 = load double, double* %97, align 8, !dbg !2100
  %813 = fcmp olt double %812, 0x40862E42FEFA39EF, !dbg !2102
  %814 = call i1 @fCmpInstHandler(double %812, double 0x40862E42FEFA39EF, i1 %813, i32 4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334764995696, i32 589, i32 22), !dbg !2103
  br i1 %814, label %815, label %825, !dbg !2103

; <label>:815:                                    ; preds = %783
  %816 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %63, i32 0, i32 0, !dbg !2104
  store double 0.000000e+00, double* %816, align 8, !dbg !2106
  %817 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %63, i32 0, i32 1, !dbg !2107
  store double 0.000000e+00, double* %817, align 8, !dbg !2108
  %818 = load double, double* %97, align 8, !dbg !2109
  %819 = load double, double* %98, align 8, !dbg !2110
  %820 = call i32 @gsl_sf_exp_err_e(double %818, double %819, %struct.gsl_sf_result_struct* %64), !dbg !2111
  %821 = load double, double* %66, align 8, !dbg !2112
  %822 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %64, i32 0, i32 0, !dbg !2113
  %823 = load double, double* %822, align 8, !dbg !2114
  %824 = fmul double %823, %821, !dbg !2114
  call void @fMulHandler(double %823, double %821, double %824, i64 94334765000632, i64 94334764999832, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334765001040, i32 593, i32 18), !dbg !2114
  store double %824, double* %822, align 8, !dbg !2114
  br label %834, !dbg !2115

; <label>:825:                                    ; preds = %783
  br label %826, !dbg !2116, !llvm.loop !2118

; <label>:826:                                    ; preds = %825
  %827 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !2119
  %828 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %827, i32 0, i32 0, !dbg !2119
  store double 0x7FF0000000000000, double* %828, align 8, !dbg !2119
  %829 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !2119
  %830 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %829, i32 0, i32 1, !dbg !2119
  store double 0x7FF0000000000000, double* %830, align 8, !dbg !2119
  br label %831, !dbg !2119, !llvm.loop !2122

; <label>:831:                                    ; preds = %826
  call void @gsl_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 596, i32 16), !dbg !2124
  store i32 16, i32* %6, align 4, !dbg !2124
  br label %953, !dbg !2124
                                                  ; No predecessors!
  br label %833, !dbg !2127

; <label>:833:                                    ; preds = %832
  br label %834

; <label>:834:                                    ; preds = %833, %815
  br label %846, !dbg !2129

; <label>:835:                                    ; preds = %778, %773
  %836 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %63, i32 0, i32 0, !dbg !2130
  store double 0.000000e+00, double* %836, align 8, !dbg !2132
  %837 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %64, i32 0, i32 0, !dbg !2133
  store double 0.000000e+00, double* %837, align 8, !dbg !2134
  br label %838, !dbg !2135, !llvm.loop !2136

; <label>:838:                                    ; preds = %835
  %839 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !2137
  %840 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %839, i32 0, i32 0, !dbg !2137
  store double 0.000000e+00, double* %840, align 8, !dbg !2137
  %841 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !2137
  %842 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %841, i32 0, i32 1, !dbg !2137
  store double 0x10000000000000, double* %842, align 8, !dbg !2137
  br label %843, !dbg !2137, !llvm.loop !2140

; <label>:843:                                    ; preds = %838
  call void @gsl_error(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 602, i32 15), !dbg !2142
  store i32 15, i32* %6, align 4, !dbg !2142
  br label %953, !dbg !2142
                                                  ; No predecessors!
  br label %845, !dbg !2145

; <label>:845:                                    ; preds = %844
  br label %846

; <label>:846:                                    ; preds = %845, %834
  br label %847

; <label>:847:                                    ; preds = %846, %772
  br label %848

; <label>:848:                                    ; preds = %847, %716
  %849 = load double, double* %7, align 8, !dbg !2147
  %850 = load double, double* %8, align 8, !dbg !2148
  %851 = load double, double* %12, align 8, !dbg !2149
  %852 = fsub double 1.000000e+00, %851, !dbg !2150
  call void @fSubHandler(double 1.000000e+00, double %851, double %852, i64 0, i64 94334765020200, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334765020640, i32 605, i32 48), !dbg !2151
  %853 = load double, double* %10, align 8, !dbg !2151
  %854 = fsub double 1.000000e+00, %853, !dbg !2152
  call void @fSubHandler(double 1.000000e+00, double %853, double %854, i64 0, i64 94334765021000, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334765021440, i32 605, i32 55), !dbg !2153
  %855 = call i32 @hyperg_2F1_series(double %849, double %850, double %852, double %854, %struct.gsl_sf_result_struct* %67), !dbg !2153
  store i32 %855, i32* %69, align 4, !dbg !2154
  %856 = load double, double* %9, align 8, !dbg !2155
  %857 = load double, double* %7, align 8, !dbg !2156
  %858 = fsub double %856, %857, !dbg !2157
  call void @fSubHandler(double %856, double %857, double %858, i64 94334765022824, i64 94334765023208, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334765023616, i32 606, i32 36), !dbg !2158
  %859 = load double, double* %9, align 8, !dbg !2158
  %860 = load double, double* %8, align 8, !dbg !2159
  %861 = fsub double %859, %860, !dbg !2160
  call void @fSubHandler(double %859, double %860, double %861, i64 94334765024008, i64 94334765024392, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334765024800, i32 606, i32 41), !dbg !2161
  %862 = load double, double* %12, align 8, !dbg !2161
  %863 = fadd double 1.000000e+00, %862, !dbg !2162
  call void @fAddHandler(double 1.000000e+00, double %862, double %863, i64 0, i64 94334765025192, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334765025632, i32 606, i32 48), !dbg !2163
  %864 = load double, double* %10, align 8, !dbg !2163
  %865 = fsub double 1.000000e+00, %864, !dbg !2164
  call void @fSubHandler(double 1.000000e+00, double %864, double %865, i64 0, i64 94334765025992, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334765026432, i32 606, i32 55), !dbg !2165
  %866 = call i32 @hyperg_2F1_series(double %858, double %861, double %863, double %865, %struct.gsl_sf_result_struct* %68), !dbg !2165
  store i32 %866, i32* %70, align 4, !dbg !2166
  %867 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %63, i32 0, i32 0, !dbg !2167
  %868 = load double, double* %867, align 8, !dbg !2167
  %869 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %67, i32 0, i32 0, !dbg !2168
  %870 = load double, double* %869, align 8, !dbg !2168
  %871 = fmul double %868, %870, !dbg !2169
  call void @fMulHandler(double %868, double %870, double %871, i64 94334765028264, i64 94334765030360, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334765032032, i32 608, i32 28), !dbg !2170
  %872 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %64, i32 0, i32 0, !dbg !2170
  %873 = load double, double* %872, align 8, !dbg !2170
  %874 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %68, i32 0, i32 0, !dbg !2171
  %875 = load double, double* %874, align 8, !dbg !2171
  %876 = fmul double %873, %875, !dbg !2172
  call void @fMulHandler(double %873, double %875, double %876, i64 94334765032872, i64 94334765034968, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334765036640, i32 608, i32 46), !dbg !2173
  %877 = fadd double %871, %876, !dbg !2173
  call void @fAddHandler(double %871, double %876, double %877, i64 94334765032032, i64 94334765036640, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334765037056, i32 608, i32 36), !dbg !2174
  %878 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !2174
  %879 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %878, i32 0, i32 0, !dbg !2175
  store double %877, double* %879, align 8, !dbg !2176
  %880 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %63, i32 0, i32 0, !dbg !2177
  %881 = load double, double* %880, align 8, !dbg !2177
  %882 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %67, i32 0, i32 1, !dbg !2178
  %883 = load double, double* %882, align 8, !dbg !2178
  %884 = fmul double %881, %883, !dbg !2179
  call void @fMulHandler(double %881, double %883, double %884, i64 94334765039144, i64 94334765041240, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334765042912, i32 609, i32 33), !dbg !2180
  %885 = call double @fabs(double %884) #1, !dbg !2180
  %886 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %64, i32 0, i32 0, !dbg !2181
  %887 = load double, double* %886, align 8, !dbg !2181
  %888 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %68, i32 0, i32 1, !dbg !2182
  %889 = load double, double* %888, align 8, !dbg !2182
  %890 = fmul double %887, %889, !dbg !2183
  call void @fMulHandler(double %887, double %889, double %890, i64 94334765044296, i64 94334765046392, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334765048064, i32 609, i32 57), !dbg !2184
  %891 = call double @fabs(double %890) #1, !dbg !2184
  %892 = fadd double %885, %891, !dbg !2185
  call void @fAddHandler(double %885, double %891, double %892, i64 94334765043392, i64 94334765048544, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334765049024, i32 609, i32 42), !dbg !2186
  %893 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !2186
  %894 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %893, i32 0, i32 1, !dbg !2187
  store double %892, double* %894, align 8, !dbg !2188
  %895 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %63, i32 0, i32 1, !dbg !2189
  %896 = load double, double* %895, align 8, !dbg !2189
  %897 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %67, i32 0, i32 0, !dbg !2190
  %898 = load double, double* %897, align 8, !dbg !2190
  %899 = fmul double %896, %898, !dbg !2191
  call void @fMulHandler(double %896, double %898, double %899, i64 94334765051112, i64 94334765053208, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334765054880, i32 610, i32 33), !dbg !2192
  %900 = call double @fabs(double %899) #1, !dbg !2192
  %901 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %64, i32 0, i32 1, !dbg !2193
  %902 = load double, double* %901, align 8, !dbg !2193
  %903 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %68, i32 0, i32 0, !dbg !2194
  %904 = load double, double* %903, align 8, !dbg !2194
  %905 = fmul double %902, %904, !dbg !2195
  call void @fMulHandler(double %902, double %904, double %905, i64 94334765056264, i64 94334765058360, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334765060032, i32 610, i32 57), !dbg !2196
  %906 = call double @fabs(double %905) #1, !dbg !2196
  %907 = fadd double %900, %906, !dbg !2197
  call void @fAddHandler(double %900, double %906, double %907, i64 94334765055360, i64 94334765060512, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334765060992, i32 610, i32 42), !dbg !2198
  %908 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !2198
  %909 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %908, i32 0, i32 1, !dbg !2199
  %910 = load double, double* %909, align 8, !dbg !2200
  %911 = fadd double %910, %907, !dbg !2200
  call void @fAddHandler(double %910, double %907, double %911, i64 94334765062216, i64 94334765060992, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334765062624, i32 610, i32 17), !dbg !2200
  store double %911, double* %909, align 8, !dbg !2200
  %912 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %63, i32 0, i32 0, !dbg !2201
  %913 = load double, double* %912, align 8, !dbg !2201
  %914 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %67, i32 0, i32 0, !dbg !2202
  %915 = load double, double* %914, align 8, !dbg !2202
  %916 = fmul double %913, %915, !dbg !2203
  call void @fMulHandler(double %913, double %915, double %916, i64 94334765064856, i64 94334765066952, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334765068624, i32 611, i32 58), !dbg !2204
  %917 = call double @fabs(double %916) #1, !dbg !2204
  %918 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %64, i32 0, i32 0, !dbg !2205
  %919 = load double, double* %918, align 8, !dbg !2205
  %920 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %68, i32 0, i32 0, !dbg !2206
  %921 = load double, double* %920, align 8, !dbg !2206
  %922 = fmul double %919, %921, !dbg !2207
  call void @fMulHandler(double %919, double %921, double %922, i64 94334765070008, i64 94334765072104, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334765073776, i32 611, i32 82), !dbg !2208
  %923 = call double @fabs(double %922) #1, !dbg !2208
  %924 = fadd double %917, %923, !dbg !2209
  call void @fAddHandler(double %917, double %923, double %924, i64 94334765069104, i64 94334765074256, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334765074736, i32 611, i32 67), !dbg !2210
  %925 = fmul double 0x3CC0000000000000, %924, !dbg !2210
  call void @fMulHandler(double 0x3CC0000000000000, double %924, double %925, i64 0, i64 94334765074736, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334765075152, i32 611, i32 42), !dbg !2211
  %926 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !2211
  %927 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %926, i32 0, i32 1, !dbg !2212
  %928 = load double, double* %927, align 8, !dbg !2213
  %929 = fadd double %928, %925, !dbg !2213
  call void @fAddHandler(double %928, double %925, double %929, i64 94334765076376, i64 94334765075152, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334765076784, i32 611, i32 17), !dbg !2213
  store double %929, double* %927, align 8, !dbg !2213
  %930 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !2214
  %931 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %930, i32 0, i32 0, !dbg !2215
  %932 = load double, double* %931, align 8, !dbg !2215
  %933 = call double @fabs(double %932) #1, !dbg !2216
  %934 = fmul double 0x3CC0000000000000, %933, !dbg !2217
  call void @fMulHandler(double 0x3CC0000000000000, double %933, double %934, i64 0, i64 94334765081136, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334765081616, i32 612, i32 42), !dbg !2218
  %935 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !2218
  %936 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %935, i32 0, i32 1, !dbg !2219
  %937 = load double, double* %936, align 8, !dbg !2220
  %938 = fadd double %937, %934, !dbg !2220
  call void @fAddHandler(double %937, double %934, double %938, i64 94334765082840, i64 94334765081616, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334765083248, i32 612, i32 17), !dbg !2220
  store double %938, double* %936, align 8, !dbg !2220
  %939 = load i32, i32* %69, align 4, !dbg !2221
  %940 = icmp ne i32 %939, 0, !dbg !2221
  %941 = sext i32 %939 to i64, !dbg !2223
  %942 = call i1 @iCmpInstHandler(i64 %941, i64 0, i1 %940, i32 33, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334765085440, i32 614, i32 9), !dbg !2223
  br i1 %942, label %943, label %945, !dbg !2223

; <label>:943:                                    ; preds = %848
  %944 = load i32, i32* %69, align 4, !dbg !2224
  store i32 %944, i32* %6, align 4, !dbg !2225
  br label %953, !dbg !2225

; <label>:945:                                    ; preds = %848
  %946 = load i32, i32* %70, align 4, !dbg !2226
  %947 = icmp ne i32 %946, 0, !dbg !2226
  %948 = sext i32 %946 to i64, !dbg !2228
  %949 = call i1 @iCmpInstHandler(i64 %948, i64 0, i1 %947, i32 33, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94334765090544, i32 617, i32 9), !dbg !2228
  br i1 %949, label %950, label %952, !dbg !2228

; <label>:950:                                    ; preds = %945
  %951 = load i32, i32* %70, align 4, !dbg !2229
  store i32 %951, i32* %6, align 4, !dbg !2230
  br label %953, !dbg !2230

; <label>:952:                                    ; preds = %945
  store i32 0, i32* %6, align 4, !dbg !2231
  br label %953, !dbg !2231

; <label>:953:                                    ; preds = %952, %950, %943, %843, %831, %769, %713, %526, %501, %265
  %954 = load i32, i32* %6, align 4, !dbg !2232
  ret i32 %954, !dbg !2232
}

declare double @GSL_MAX_DBL(double, double) #3

declare i32 @gsl_sf_hyperg_1F1_e(double, double, double, %struct.gsl_sf_result_struct*) #3

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_hyperg_2F1_conj_e(double, double, double, double, %struct.gsl_sf_result_struct*) #0 !dbg !2233 {
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca %struct.gsl_sf_result_struct*, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca i32, align 4
  store double %0, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !2234, metadata !61), !dbg !2235
  store double %1, double* %8, align 8
  call void @llvm.dbg.declare(metadata double* %8, metadata !2236, metadata !61), !dbg !2237
  store double %2, double* %9, align 8
  call void @llvm.dbg.declare(metadata double* %9, metadata !2238, metadata !61), !dbg !2239
  store double %3, double* %10, align 8
  call void @llvm.dbg.declare(metadata double* %10, metadata !2240, metadata !61), !dbg !2241
  store %struct.gsl_sf_result_struct* %4, %struct.gsl_sf_result_struct** %11, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %11, metadata !2242, metadata !61), !dbg !2243
  call void @llvm.dbg.declare(metadata double* %12, metadata !2244, metadata !61), !dbg !2245
  %15 = load double, double* %10, align 8, !dbg !2246
  %16 = call double @fabs(double %15) #1, !dbg !2247
  store double %16, double* %12, align 8, !dbg !2245
  call void @llvm.dbg.declare(metadata double* %13, metadata !2248, metadata !61), !dbg !2249
  %17 = load double, double* %9, align 8, !dbg !2250
  %18 = fadd double %17, 5.000000e-01, !dbg !2251
  call void @fAddHandler(double %17, double 5.000000e-01, double %18, i64 94334763860616, i64 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @11, i32 0, i32 0), i64 94334765104848, i32 784, i32 32), !dbg !2252
  %19 = call double @floor(double %18) #1, !dbg !2252
  store double %19, double* %13, align 8, !dbg !2249
  call void @llvm.dbg.declare(metadata i32* %14, metadata !2253, metadata !61), !dbg !2254
  %20 = load double, double* %9, align 8, !dbg !2255
  %21 = fcmp olt double %20, 0.000000e+00, !dbg !2256
  %22 = call i1 @fCmpInstHandler(double %20, double 0.000000e+00, i1 %21, i32 4, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @11, i32 0, i32 0), i64 94334765108928, i32 785, i32 33), !dbg !2257
  br i1 %22, label %23, label %29, !dbg !2257

; <label>:23:                                     ; preds = %5
  %24 = load double, double* %9, align 8, !dbg !2258
  %25 = load double, double* %13, align 8, !dbg !2260
  %26 = fsub double %24, %25, !dbg !2261
  call void @fSubHandler(double %24, double %25, double %26, i64 94334765110040, i64 94334765110360, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @11, i32 0, i32 0), i64 94334765110768, i32 785, i32 51), !dbg !2262
  %27 = call double @fabs(double %26) #1, !dbg !2262
  %28 = fcmp olt double %27, 0x3D4F400000000000, !dbg !2263
  br label %29

; <label>:29:                                     ; preds = %23, %5
  %30 = phi i1 [ false, %5 ], [ %28, %23 ]
  %31 = zext i1 %30 to i32, !dbg !2264
  store i32 %31, i32* %14, align 4, !dbg !2266
  %32 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !2267
  %33 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %32, i32 0, i32 0, !dbg !2268
  store double 0.000000e+00, double* %33, align 8, !dbg !2269
  %34 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !2270
  %35 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %34, i32 0, i32 1, !dbg !2271
  store double 0.000000e+00, double* %35, align 8, !dbg !2272
  %36 = load double, double* %12, align 8, !dbg !2273
  %37 = fcmp oge double %36, 1.000000e+00, !dbg !2275
  %38 = call i1 @fCmpInstHandler(double %36, double 1.000000e+00, i1 %37, i32 3, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @11, i32 0, i32 0), i64 94334765116064, i32 790, i32 9), !dbg !2276
  br i1 %38, label %48, label %39, !dbg !2276

; <label>:39:                                     ; preds = %29
  %40 = load i32, i32* %14, align 4, !dbg !2277
  %41 = icmp ne i32 %40, 0, !dbg !2277
  %42 = sext i32 %40 to i64, !dbg !2279
  %43 = call i1 @iCmpInstHandler(i64 %42, i64 0, i1 %41, i32 33, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @11, i32 0, i32 0), i64 94334765117488, i32 790, i32 19), !dbg !2279
  br i1 %43, label %48, label %44, !dbg !2279

; <label>:44:                                     ; preds = %39
  %45 = load double, double* %9, align 8, !dbg !2280
  %46 = fcmp oeq double %45, 0.000000e+00, !dbg !2282
  %47 = call i1 @fCmpInstHandler(double %45, double 0.000000e+00, i1 %46, i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @11, i32 0, i32 0), i64 94334765120064, i32 790, i32 38), !dbg !2283
  br i1 %47, label %48, label %57, !dbg !2283

; <label>:48:                                     ; preds = %44, %39, %29
  br label %49, !dbg !2284, !llvm.loop !2286

; <label>:49:                                     ; preds = %48
  %50 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !2287
  %51 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %50, i32 0, i32 0, !dbg !2287
  store double 0x7FF8000000000000, double* %51, align 8, !dbg !2287
  %52 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !2287
  %53 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %52, i32 0, i32 1, !dbg !2287
  store double 0x7FF8000000000000, double* %53, align 8, !dbg !2287
  br label %54, !dbg !2287, !llvm.loop !2290

; <label>:54:                                     ; preds = %49
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 791, i32 1), !dbg !2292
  store i32 1, i32* %6, align 4, !dbg !2292
  br label %133, !dbg !2292
                                                  ; No predecessors!
  br label %56, !dbg !2295

; <label>:56:                                     ; preds = %55
  br label %57, !dbg !2297

; <label>:57:                                     ; preds = %56, %44
  %58 = load double, double* %12, align 8, !dbg !2298
  %59 = fcmp olt double %58, 2.500000e-01, !dbg !2300
  %60 = call i1 @fCmpInstHandler(double %58, double 2.500000e-01, i1 %59, i32 4, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @11, i32 0, i32 0), i64 94334765128720, i32 794, i32 13), !dbg !2301
  br i1 %60, label %61, label %71, !dbg !2301

; <label>:61:                                     ; preds = %57
  %62 = load double, double* %7, align 8, !dbg !2302
  %63 = call double @fabs(double %62) #1, !dbg !2304
  %64 = fcmp olt double %63, 2.000000e+01, !dbg !2305
  %65 = call i1 @fCmpInstHandler(double %63, double 2.000000e+01, i1 %64, i32 4, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @11, i32 0, i32 0), i64 94334765130784, i32 794, i32 32), !dbg !2306
  br i1 %65, label %66, label %71, !dbg !2306

; <label>:66:                                     ; preds = %61
  %67 = load double, double* %8, align 8, !dbg !2307
  %68 = call double @fabs(double %67) #1, !dbg !2309
  %69 = fcmp olt double %68, 2.000000e+01, !dbg !2310
  %70 = call i1 @fCmpInstHandler(double %68, double 2.000000e+01, i1 %69, i32 4, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @11, i32 0, i32 0), i64 94334765132640, i32 794, i32 51), !dbg !2311
  br i1 %70, label %79, label %71, !dbg !2311

; <label>:71:                                     ; preds = %66, %61, %57
  %72 = load double, double* %9, align 8, !dbg !2312
  %73 = fcmp ogt double %72, 0.000000e+00, !dbg !2313
  %74 = call i1 @fCmpInstHandler(double %72, double 0.000000e+00, i1 %73, i32 2, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @11, i32 0, i32 0), i64 94334765133920, i32 795, i32 12), !dbg !2314
  br i1 %74, label %75, label %86, !dbg !2314

; <label>:75:                                     ; preds = %71
  %76 = load double, double* %10, align 8, !dbg !2315
  %77 = fcmp ogt double %76, 0.000000e+00, !dbg !2316
  %78 = call i1 @fCmpInstHandler(double %76, double 0.000000e+00, i1 %77, i32 2, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @11, i32 0, i32 0), i64 94334765135376, i32 795, i32 23), !dbg !2317
  br i1 %78, label %79, label %86, !dbg !2317

; <label>:79:                                     ; preds = %75, %66
  %80 = load double, double* %7, align 8, !dbg !2319
  %81 = load double, double* %8, align 8, !dbg !2321
  %82 = load double, double* %9, align 8, !dbg !2322
  %83 = load double, double* %10, align 8, !dbg !2323
  %84 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !2324
  %85 = call i32 @hyperg_2F1_conj_series(double %80, double %81, double %82, double %83, %struct.gsl_sf_result_struct* %84), !dbg !2325
  store i32 %85, i32* %6, align 4, !dbg !2326
  br label %133, !dbg !2326

; <label>:86:                                     ; preds = %75, %71
  %87 = load double, double* %7, align 8, !dbg !2327
  %88 = call double @fabs(double %87) #1, !dbg !2329
  %89 = fcmp olt double %88, 1.000000e+01, !dbg !2330
  %90 = call i1 @fCmpInstHandler(double %88, double 1.000000e+01, i1 %89, i32 4, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @11, i32 0, i32 0), i64 94334765142000, i32 799, i32 20), !dbg !2331
  br i1 %90, label %91, label %114, !dbg !2331

; <label>:91:                                     ; preds = %86
  %92 = load double, double* %8, align 8, !dbg !2332
  %93 = call double @fabs(double %92) #1, !dbg !2334
  %94 = fcmp olt double %93, 1.000000e+01, !dbg !2335
  %95 = call i1 @fCmpInstHandler(double %93, double 1.000000e+01, i1 %94, i32 4, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @11, i32 0, i32 0), i64 94334765144000, i32 799, i32 39), !dbg !2336
  br i1 %95, label %96, label %114, !dbg !2336

; <label>:96:                                     ; preds = %91
  %97 = load double, double* %10, align 8, !dbg !2337
  %98 = fcmp olt double %97, -2.500000e-01, !dbg !2340
  %99 = call i1 @fCmpInstHandler(double %97, double -2.500000e-01, i1 %98, i32 4, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @11, i32 0, i32 0), i64 94334765145312, i32 800, i32 10), !dbg !2341
  br i1 %99, label %100, label %107, !dbg !2341

; <label>:100:                                    ; preds = %96
  %101 = load double, double* %7, align 8, !dbg !2342
  %102 = load double, double* %8, align 8, !dbg !2344
  %103 = load double, double* %9, align 8, !dbg !2345
  %104 = load double, double* %10, align 8, !dbg !2346
  %105 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !2347
  %106 = call i32 @hyperg_2F1_conj_luke(double %101, double %102, double %103, double %104, %struct.gsl_sf_result_struct* %105), !dbg !2348
  store i32 %106, i32* %6, align 4, !dbg !2349
  br label %133, !dbg !2349

; <label>:107:                                    ; preds = %96
  %108 = load double, double* %7, align 8, !dbg !2350
  %109 = load double, double* %8, align 8, !dbg !2352
  %110 = load double, double* %9, align 8, !dbg !2353
  %111 = load double, double* %10, align 8, !dbg !2354
  %112 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !2355
  %113 = call i32 @hyperg_2F1_conj_series(double %108, double %109, double %110, double %111, %struct.gsl_sf_result_struct* %112), !dbg !2356
  store i32 %113, i32* %6, align 4, !dbg !2357
  br label %133, !dbg !2357

; <label>:114:                                    ; preds = %91, %86
  %115 = load double, double* %10, align 8, !dbg !2358
  %116 = fcmp olt double %115, 0.000000e+00, !dbg !2361
  %117 = call i1 @fCmpInstHandler(double %115, double 0.000000e+00, i1 %116, i32 4, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @11, i32 0, i32 0), i64 94334765156240, i32 808, i32 10), !dbg !2362
  br i1 %117, label %118, label %125, !dbg !2362

; <label>:118:                                    ; preds = %114
  %119 = load double, double* %7, align 8, !dbg !2363
  %120 = load double, double* %8, align 8, !dbg !2365
  %121 = load double, double* %9, align 8, !dbg !2366
  %122 = load double, double* %10, align 8, !dbg !2367
  %123 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !2368
  %124 = call i32 @hyperg_2F1_conj_luke(double %119, double %120, double %121, double %122, %struct.gsl_sf_result_struct* %123), !dbg !2369
  store i32 %124, i32* %6, align 4, !dbg !2370
  br label %133, !dbg !2370

; <label>:125:                                    ; preds = %114
  %126 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !2371
  %127 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %126, i32 0, i32 0, !dbg !2372
  store double 0.000000e+00, double* %127, align 8, !dbg !2373
  %128 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !2374
  %129 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %128, i32 0, i32 1, !dbg !2375
  store double 0.000000e+00, double* %129, align 8, !dbg !2376
  br label %130, !dbg !2377, !llvm.loop !2378

; <label>:130:                                    ; preds = %125
  call void @gsl_error(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 817, i32 24), !dbg !2379
  store i32 24, i32* %6, align 4, !dbg !2379
  br label %133, !dbg !2379
                                                  ; No predecessors!
  br label %132

; <label>:132:                                    ; preds = %131
  br label %133

; <label>:133:                                    ; preds = %132, %130, %118, %107, %100, %79, %54
  %134 = load i32, i32* %6, align 4, !dbg !2382
  ret i32 %134, !dbg !2382
}

; Function Attrs: nounwind uwtable
define internal i32 @hyperg_2F1_conj_series(double, double, double, double, %struct.gsl_sf_result_struct*) #0 !dbg !2383 {
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca %struct.gsl_sf_result_struct*, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  store double %0, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !2386, metadata !61), !dbg !2387
  store double %1, double* %8, align 8
  call void @llvm.dbg.declare(metadata double* %8, metadata !2388, metadata !61), !dbg !2389
  store double %2, double* %9, align 8
  call void @llvm.dbg.declare(metadata double* %9, metadata !2390, metadata !61), !dbg !2391
  store double %3, double* %10, align 8
  call void @llvm.dbg.declare(metadata double* %10, metadata !2392, metadata !61), !dbg !2393
  store %struct.gsl_sf_result_struct* %4, %struct.gsl_sf_result_struct** %11, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %11, metadata !2394, metadata !61), !dbg !2395
  %18 = load double, double* %9, align 8, !dbg !2396
  %19 = fcmp oeq double %18, 0.000000e+00, !dbg !2398
  %20 = call i1 @fCmpInstHandler(double %18, double 0.000000e+00, i1 %19, i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @13, i32 0, i32 0), i64 94334765178304, i32 116, i32 8), !dbg !2399
  br i1 %20, label %21, label %28, !dbg !2399

; <label>:21:                                     ; preds = %5
  %22 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !2400
  %23 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %22, i32 0, i32 0, !dbg !2402
  store double 0.000000e+00, double* %23, align 8, !dbg !2403
  %24 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !2404
  %25 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %24, i32 0, i32 1, !dbg !2405
  store double 0.000000e+00, double* %25, align 8, !dbg !2406
  br label %26, !dbg !2407, !llvm.loop !2408

; <label>:26:                                     ; preds = %21
  call void @gsl_error(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 119, i32 1), !dbg !2409
  store i32 1, i32* %6, align 4, !dbg !2409
  br label %152, !dbg !2409
                                                  ; No predecessors!
  br label %152, !dbg !2412

; <label>:28:                                     ; preds = %5
  call void @llvm.dbg.declare(metadata double* %12, metadata !2413, metadata !61), !dbg !2415
  store double 1.000000e+00, double* %12, align 8, !dbg !2415
  call void @llvm.dbg.declare(metadata double* %13, metadata !2416, metadata !61), !dbg !2417
  store double 0.000000e+00, double* %13, align 8, !dbg !2417
  call void @llvm.dbg.declare(metadata double* %14, metadata !2418, metadata !61), !dbg !2419
  store double 1.000000e+00, double* %14, align 8, !dbg !2419
  call void @llvm.dbg.declare(metadata double* %15, metadata !2420, metadata !61), !dbg !2421
  store double 0.000000e+00, double* %15, align 8, !dbg !2421
  call void @llvm.dbg.declare(metadata double* %16, metadata !2422, metadata !61), !dbg !2423
  store double 1.000000e+00, double* %16, align 8, !dbg !2423
  call void @llvm.dbg.declare(metadata double* %17, metadata !2424, metadata !61), !dbg !2425
  store double 0.000000e+00, double* %17, align 8, !dbg !2425
  br label %29, !dbg !2426, !llvm.loop !2427

; <label>:29:                                     ; preds = %108, %28
  %30 = load double, double* %7, align 8, !dbg !2428
  %31 = load double, double* %17, align 8, !dbg !2430
  %32 = fadd double %30, %31, !dbg !2431
  call void @fAddHandler(double %30, double %31, double %32, i64 94334764417816, i64 94334764418136, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @13, i32 0, i32 0), i64 94334765216016, i32 129, i32 18), !dbg !2432
  %33 = load double, double* %7, align 8, !dbg !2432
  %34 = load double, double* %17, align 8, !dbg !2433
  %35 = fadd double %33, %34, !dbg !2434
  call void @fAddHandler(double %33, double %34, double %35, i64 94334765216408, i64 94334765216792, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @13, i32 0, i32 0), i64 94334765217200, i32 129, i32 25), !dbg !2435
  %36 = fmul double %32, %35, !dbg !2435
  call void @fMulHandler(double %32, double %35, double %36, i64 94334765216016, i64 94334765217200, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @13, i32 0, i32 0), i64 94334765217616, i32 129, i32 21), !dbg !2436
  %37 = load double, double* %8, align 8, !dbg !2436
  %38 = load double, double* %8, align 8, !dbg !2437
  %39 = fmul double %37, %38, !dbg !2438
  call void @fMulHandler(double %37, double %38, double %39, i64 94334765218008, i64 94334765218392, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @13, i32 0, i32 0), i64 94334765218800, i32 129, i32 33), !dbg !2439
  %40 = fadd double %36, %39, !dbg !2439
  call void @fAddHandler(double %36, double %39, double %40, i64 94334765217616, i64 94334765218800, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @13, i32 0, i32 0), i64 94334765219216, i32 129, i32 29), !dbg !2440
  %41 = load double, double* %17, align 8, !dbg !2440
  %42 = fadd double %41, 1.000000e+00, !dbg !2441
  call void @fAddHandler(double %41, double 1.000000e+00, double %42, i64 94334765219608, i64 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @13, i32 0, i32 0), i64 94334765220048, i32 129, i32 41), !dbg !2442
  %43 = load double, double* %9, align 8, !dbg !2442
  %44 = load double, double* %17, align 8, !dbg !2443
  %45 = fadd double %43, %44, !dbg !2444
  call void @fAddHandler(double %43, double %44, double %45, i64 94334765220408, i64 94334765220792, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @13, i32 0, i32 0), i64 94334765221200, i32 129, i32 49), !dbg !2445
  %46 = fmul double %42, %45, !dbg !2445
  call void @fMulHandler(double %42, double %45, double %46, i64 94334765220048, i64 94334765221200, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @13, i32 0, i32 0), i64 94334765221616, i32 129, i32 46), !dbg !2446
  %47 = fdiv double %40, %46, !dbg !2446
  call void @fDivHandler(double %40, double %46, double %47, i64 94334765219216, i64 94334765221616, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @13, i32 0, i32 0), i64 94334765222032, i32 129, i32 37), !dbg !2447
  %48 = load double, double* %10, align 8, !dbg !2447
  %49 = fmul double %47, %48, !dbg !2448
  call void @fMulHandler(double %47, double %48, double %49, i64 94334765222032, i64 94334765222424, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @13, i32 0, i32 0), i64 94334765222832, i32 129, i32 54), !dbg !2449
  %50 = load double, double* %16, align 8, !dbg !2449
  %51 = fmul double %50, %49, !dbg !2449
  call void @fMulHandler(double %50, double %49, double %51, i64 94334765223224, i64 94334765222832, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @13, i32 0, i32 0), i64 94334765223632, i32 129, i32 11), !dbg !2449
  store double %51, double* %16, align 8, !dbg !2449
  %52 = load double, double* %16, align 8, !dbg !2450
  %53 = fcmp oge double %52, 0.000000e+00, !dbg !2452
  %54 = call i1 @fCmpInstHandler(double %52, double 0.000000e+00, i1 %53, i32 3, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @13, i32 0, i32 0), i64 94334765225824, i32 131, i32 14), !dbg !2453
  br i1 %54, label %55, label %60, !dbg !2453

; <label>:55:                                     ; preds = %29
  %56 = load double, double* %16, align 8, !dbg !2454
  store double %56, double* %14, align 8, !dbg !2456
  %57 = load double, double* %16, align 8, !dbg !2457
  %58 = load double, double* %12, align 8, !dbg !2458
  %59 = fadd double %58, %57, !dbg !2458
  call void @fAddHandler(double %58, double %57, double %59, i64 94334765228056, i64 94334765227672, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @13, i32 0, i32 0), i64 94334765228464, i32 133, i32 17), !dbg !2458
  store double %59, double* %12, align 8, !dbg !2458
  br label %66, !dbg !2459

; <label>:60:                                     ; preds = %29
  %61 = load double, double* %16, align 8, !dbg !2460
  %62 = fsub double -0.000000e+00, %61, !dbg !2462
  call void @fSubHandler(double -0.000000e+00, double %61, double %62, i64 0, i64 94334765230776, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @13, i32 0, i32 0), i64 94334765231120, i32 136, i32 20), !dbg !2463
  store double %62, double* %15, align 8, !dbg !2463
  %63 = load double, double* %16, align 8, !dbg !2464
  %64 = load double, double* %13, align 8, !dbg !2465
  %65 = fsub double %64, %63, !dbg !2465
  call void @fSubHandler(double %64, double %63, double %65, i64 94334765232312, i64 94334765231928, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @13, i32 0, i32 0), i64 94334765232720, i32 137, i32 17), !dbg !2465
  store double %65, double* %13, align 8, !dbg !2465
  br label %66

; <label>:66:                                     ; preds = %60, %55
  %67 = load double, double* %17, align 8, !dbg !2466
  %68 = fcmp ogt double %67, 3.000000e+04, !dbg !2468
  %69 = call i1 @fCmpInstHandler(double %67, double 3.000000e+04, i1 %68, i32 2, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @13, i32 0, i32 0), i64 94334765235040, i32 140, i32 12), !dbg !2469
  br i1 %69, label %70, label %105, !dbg !2469

; <label>:70:                                     ; preds = %66
  %71 = load double, double* %12, align 8, !dbg !2470
  %72 = load double, double* %13, align 8, !dbg !2472
  %73 = fsub double %71, %72, !dbg !2473
  call void @fSubHandler(double %71, double %72, double %73, i64 94334765236120, i64 94334765236440, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @13, i32 0, i32 0), i64 94334765236848, i32 141, i32 32), !dbg !2474
  %74 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !2474
  %75 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %74, i32 0, i32 0, !dbg !2475
  store double %73, double* %75, align 8, !dbg !2476
  %76 = load double, double* %14, align 8, !dbg !2477
  %77 = load double, double* %15, align 8, !dbg !2478
  %78 = fadd double %76, %77, !dbg !2479
  call void @fAddHandler(double %76, double %77, double %78, i64 94334765238488, i64 94334765238872, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @13, i32 0, i32 0), i64 94334765239280, i32 142, i32 32), !dbg !2480
  %79 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !2480
  %80 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %79, i32 0, i32 1, !dbg !2481
  store double %78, double* %80, align 8, !dbg !2482
  %81 = load double, double* %12, align 8, !dbg !2483
  %82 = load double, double* %13, align 8, !dbg !2484
  %83 = fadd double %81, %82, !dbg !2485
  call void @fAddHandler(double %81, double %82, double %83, i64 94334765240920, i64 94334765241304, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @13, i32 0, i32 0), i64 94334765241712, i32 143, i32 57), !dbg !2486
  %84 = fmul double 0x3CC0000000000000, %83, !dbg !2486
  call void @fMulHandler(double 0x3CC0000000000000, double %83, double %84, i64 0, i64 94334765241712, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @13, i32 0, i32 0), i64 94334765242128, i32 143, i32 46), !dbg !2487
  %85 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !2487
  %86 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %85, i32 0, i32 1, !dbg !2488
  %87 = load double, double* %86, align 8, !dbg !2489
  %88 = fadd double %87, %84, !dbg !2489
  call void @fAddHandler(double %87, double %84, double %88, i64 94334765243352, i64 94334765242128, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @13, i32 0, i32 0), i64 94334765243760, i32 143, i32 21), !dbg !2489
  store double %88, double* %86, align 8, !dbg !2489
  %89 = load double, double* %17, align 8, !dbg !2490
  %90 = call double @sqrt(double %89) #5, !dbg !2491
  call void @callOneArgHandler(i32 14, double %89, double %90, i64 94334765245544, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @13, i32 0, i32 0), i64 94334765246016, i32 144, i32 53), !dbg !2492
  %91 = fmul double 2.000000e+00, %90, !dbg !2492
  call void @fMulHandler(double 2.000000e+00, double %90, double %91, i64 0, i64 94334765246016, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @13, i32 0, i32 0), i64 94334765246528, i32 144, i32 52), !dbg !2493
  %92 = fadd double %91, 1.000000e+00, !dbg !2493
  call void @fAddHandler(double %91, double 1.000000e+00, double %92, i64 94334765246528, i64 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @13, i32 0, i32 0), i64 94334765246944, i32 144, i32 60), !dbg !2494
  %93 = fmul double 0x3CC0000000000000, %92, !dbg !2494
  call void @fMulHandler(double 0x3CC0000000000000, double %92, double %93, i64 0, i64 94334765246944, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @13, i32 0, i32 0), i64 94334765247328, i32 144, i32 46), !dbg !2495
  %94 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !2495
  %95 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %94, i32 0, i32 0, !dbg !2496
  %96 = load double, double* %95, align 8, !dbg !2496
  %97 = call double @fabs(double %96) #1, !dbg !2497
  %98 = fmul double %93, %97, !dbg !2499
  call void @fMulHandler(double %93, double %97, double %98, i64 94334765247328, i64 94334765250288, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @13, i32 0, i32 0), i64 94334765250768, i32 144, i32 66), !dbg !2500
  %99 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !2500
  %100 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %99, i32 0, i32 1, !dbg !2501
  %101 = load double, double* %100, align 8, !dbg !2502
  %102 = fadd double %101, %98, !dbg !2502
  call void @fAddHandler(double %101, double %98, double %102, i64 94334765251992, i64 94334765250768, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @13, i32 0, i32 0), i64 94334765252400, i32 144, i32 21), !dbg !2502
  store double %102, double* %100, align 8, !dbg !2502
  br label %103, !dbg !2503, !llvm.loop !2504

; <label>:103:                                    ; preds = %70
  call void @gsl_error(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 145, i32 11), !dbg !2505
  store i32 11, i32* %6, align 4, !dbg !2505
  br label %152, !dbg !2505
                                                  ; No predecessors!
  br label %105, !dbg !2508

; <label>:105:                                    ; preds = %104, %66
  %106 = load double, double* %17, align 8, !dbg !2509
  %107 = fadd double %106, 1.000000e+00, !dbg !2509
  call void @fAddHandler(double %106, double 1.000000e+00, double %107, i64 94334765257816, i64 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @13, i32 0, i32 0), i64 94334765258192, i32 148, i32 9), !dbg !2509
  store double %107, double* %17, align 8, !dbg !2509
  br label %108, !dbg !2510

; <label>:108:                                    ; preds = %105
  %109 = load double, double* %14, align 8, !dbg !2511
  %110 = load double, double* %15, align 8, !dbg !2513
  %111 = fadd double %109, %110, !dbg !2514
  call void @fAddHandler(double %109, double %110, double %111, i64 94334765260472, i64 94334765260792, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @13, i32 0, i32 0), i64 94334765261200, i32 149, i32 27), !dbg !2515
  %112 = load double, double* %12, align 8, !dbg !2515
  %113 = load double, double* %13, align 8, !dbg !2516
  %114 = fsub double %112, %113, !dbg !2517
  call void @fSubHandler(double %112, double %113, double %114, i64 94334765261592, i64 94334765261976, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @13, i32 0, i32 0), i64 94334765262384, i32 149, i32 47), !dbg !2518
  %115 = fdiv double %111, %114, !dbg !2518
  call void @fDivHandler(double %111, double %114, double %115, i64 94334765261200, i64 94334765262384, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @13, i32 0, i32 0), i64 94334765262800, i32 149, i32 37), !dbg !2519
  %116 = call double @fabs(double %115) #1, !dbg !2519
  %117 = fcmp ogt double %116, 0x3CB0000000000000, !dbg !2520
  %118 = call i1 @fCmpInstHandler(double %116, double 0x3CB0000000000000, i1 %117, i32 2, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @13, i32 0, i32 0), i64 94334765263760, i32 149, i32 59), !dbg !2521
  br i1 %118, label %29, label %119, !dbg !2521, !llvm.loop !2427

; <label>:119:                                    ; preds = %108
  %120 = load double, double* %12, align 8, !dbg !2522
  %121 = load double, double* %13, align 8, !dbg !2523
  %122 = fsub double %120, %121, !dbg !2524
  call void @fSubHandler(double %120, double %121, double %122, i64 94334765266280, i64 94334765266600, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @13, i32 0, i32 0), i64 94334765267008, i32 151, i32 28), !dbg !2525
  %123 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !2525
  %124 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %123, i32 0, i32 0, !dbg !2526
  store double %122, double* %124, align 8, !dbg !2527
  %125 = load double, double* %14, align 8, !dbg !2528
  %126 = load double, double* %15, align 8, !dbg !2529
  %127 = fadd double %125, %126, !dbg !2530
  call void @fAddHandler(double %125, double %126, double %127, i64 94334765268648, i64 94334765269032, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @13, i32 0, i32 0), i64 94334765269440, i32 152, i32 28), !dbg !2531
  %128 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !2531
  %129 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %128, i32 0, i32 1, !dbg !2532
  store double %127, double* %129, align 8, !dbg !2533
  %130 = load double, double* %12, align 8, !dbg !2534
  %131 = load double, double* %13, align 8, !dbg !2535
  %132 = fadd double %130, %131, !dbg !2536
  call void @fAddHandler(double %130, double %131, double %132, i64 94334765271080, i64 94334765271464, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @13, i32 0, i32 0), i64 94334765271872, i32 153, i32 53), !dbg !2537
  %133 = fmul double 0x3CC0000000000000, %132, !dbg !2537
  call void @fMulHandler(double 0x3CC0000000000000, double %132, double %133, i64 0, i64 94334765271872, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @13, i32 0, i32 0), i64 94334765274352, i32 153, i32 42), !dbg !2538
  %134 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !2538
  %135 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %134, i32 0, i32 1, !dbg !2539
  %136 = load double, double* %135, align 8, !dbg !2540
  %137 = fadd double %136, %133, !dbg !2540
  call void @fAddHandler(double %136, double %133, double %137, i64 94334765275576, i64 94334765274352, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @13, i32 0, i32 0), i64 94334765275984, i32 153, i32 17), !dbg !2540
  store double %137, double* %135, align 8, !dbg !2540
  %138 = load double, double* %17, align 8, !dbg !2541
  %139 = call double @sqrt(double %138) #5, !dbg !2542
  call void @callOneArgHandler(i32 14, double %138, double %139, i64 94334765277768, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @13, i32 0, i32 0), i64 94334765278240, i32 154, i32 49), !dbg !2543
  %140 = fmul double 2.000000e+00, %139, !dbg !2543
  call void @fMulHandler(double 2.000000e+00, double %139, double %140, i64 0, i64 94334765278240, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @13, i32 0, i32 0), i64 94334765278752, i32 154, i32 48), !dbg !2544
  %141 = fadd double %140, 1.000000e+00, !dbg !2544
  call void @fAddHandler(double %140, double 1.000000e+00, double %141, i64 94334765278752, i64 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @13, i32 0, i32 0), i64 94334765279168, i32 154, i32 57), !dbg !2545
  %142 = fmul double 0x3CC0000000000000, %141, !dbg !2545
  call void @fMulHandler(double 0x3CC0000000000000, double %141, double %142, i64 0, i64 94334765279168, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @13, i32 0, i32 0), i64 94334765279552, i32 154, i32 42), !dbg !2546
  %143 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !2546
  %144 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %143, i32 0, i32 0, !dbg !2547
  %145 = load double, double* %144, align 8, !dbg !2547
  %146 = call double @fabs(double %145) #1, !dbg !2548
  %147 = fmul double %142, %146, !dbg !2549
  call void @fMulHandler(double %142, double %146, double %147, i64 94334765279552, i64 94334765282512, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @13, i32 0, i32 0), i64 94334765282992, i32 154, i32 64), !dbg !2550
  %148 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !2550
  %149 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %148, i32 0, i32 1, !dbg !2551
  %150 = load double, double* %149, align 8, !dbg !2552
  %151 = fadd double %150, %147, !dbg !2552
  call void @fAddHandler(double %150, double %147, double %151, i64 94334765284216, i64 94334765282992, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @13, i32 0, i32 0), i64 94334765284624, i32 154, i32 17), !dbg !2552
  store double %151, double* %149, align 8, !dbg !2552
  store i32 0, i32* %6, align 4, !dbg !2553
  br label %152, !dbg !2553

; <label>:152:                                    ; preds = %119, %103, %27, %26
  %153 = load i32, i32* %6, align 4, !dbg !2554
  ret i32 %153, !dbg !2554
}

; Function Attrs: nounwind uwtable
define internal i32 @hyperg_2F1_conj_luke(double, double, double, double, %struct.gsl_sf_result_struct*) #0 !dbg !2555 {
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca %struct.gsl_sf_result_struct*, align 8
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
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
  %43 = alloca double, align 8
  %44 = alloca double, align 8
  %45 = alloca double, align 8
  %46 = alloca double, align 8
  store double %0, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !2556, metadata !61), !dbg !2557
  store double %1, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !2558, metadata !61), !dbg !2559
  store double %2, double* %8, align 8
  call void @llvm.dbg.declare(metadata double* %8, metadata !2560, metadata !61), !dbg !2561
  store double %3, double* %9, align 8
  call void @llvm.dbg.declare(metadata double* %9, metadata !2562, metadata !61), !dbg !2563
  store %struct.gsl_sf_result_struct* %4, %struct.gsl_sf_result_struct** %10, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %10, metadata !2564, metadata !61), !dbg !2565
  call void @llvm.dbg.declare(metadata i32* %11, metadata !2566, metadata !61), !dbg !2567
  call void @llvm.dbg.declare(metadata double* %12, metadata !2568, metadata !61), !dbg !2569
  store double 1.000000e+50, double* %12, align 8, !dbg !2569
  call void @llvm.dbg.declare(metadata i32* %13, metadata !2570, metadata !61), !dbg !2571
  store i32 10000, i32* %13, align 4, !dbg !2571
  call void @llvm.dbg.declare(metadata i32* %14, metadata !2572, metadata !61), !dbg !2573
  store i32 3, i32* %14, align 4, !dbg !2573
  call void @llvm.dbg.declare(metadata double* %15, metadata !2574, metadata !61), !dbg !2575
  %47 = load double, double* %9, align 8, !dbg !2576
  %48 = fsub double -0.000000e+00, %47, !dbg !2577
  call void @fSubHandler(double -0.000000e+00, double %47, double %48, i64 0, i64 94334765148664, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @15, i32 0, i32 0), i64 94334765310672, i32 276, i32 20), !dbg !2575
  store double %48, double* %15, align 8, !dbg !2575
  call void @llvm.dbg.declare(metadata double* %16, metadata !2578, metadata !61), !dbg !2579
  %49 = load double, double* %15, align 8, !dbg !2580
  %50 = load double, double* %15, align 8, !dbg !2581
  %51 = fmul double %49, %50, !dbg !2582
  call void @fMulHandler(double %49, double %50, double %51, i64 94334765313864, i64 94334765314216, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @15, i32 0, i32 0), i64 94334765314624, i32 277, i32 22), !dbg !2583
  %52 = load double, double* %15, align 8, !dbg !2583
  %53 = fmul double %51, %52, !dbg !2584
  call void @fMulHandler(double %51, double %52, double %53, i64 94334765314624, i64 94334765315016, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @15, i32 0, i32 0), i64 94334765315424, i32 277, i32 24), !dbg !2579
  store double %53, double* %16, align 8, !dbg !2579
  call void @llvm.dbg.declare(metadata double* %17, metadata !2585, metadata !61), !dbg !2586
  %54 = load double, double* %6, align 8, !dbg !2587
  %55 = load double, double* %6, align 8, !dbg !2588
  %56 = fmul double %54, %55, !dbg !2589
  call void @fMulHandler(double %54, double %55, double %56, i64 94334765318616, i64 94334765318968, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @15, i32 0, i32 0), i64 94334765319376, i32 278, i32 28), !dbg !2590
  %57 = load double, double* %7, align 8, !dbg !2590
  %58 = load double, double* %7, align 8, !dbg !2591
  %59 = fmul double %57, %58, !dbg !2592
  call void @fMulHandler(double %57, double %58, double %59, i64 94334765319768, i64 94334765320152, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @15, i32 0, i32 0), i64 94334765320560, i32 278, i32 36), !dbg !2593
  %60 = fadd double %56, %59, !dbg !2593
  call void @fAddHandler(double %56, double %59, double %60, i64 94334765319376, i64 94334765320560, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @15, i32 0, i32 0), i64 94334765320976, i32 278, i32 32), !dbg !2586
  store double %60, double* %17, align 8, !dbg !2586
  call void @llvm.dbg.declare(metadata double* %18, metadata !2594, metadata !61), !dbg !2595
  %61 = load double, double* %6, align 8, !dbg !2596
  %62 = fmul double 2.000000e+00, %61, !dbg !2597
  call void @fMulHandler(double 2.000000e+00, double %61, double %62, i64 0, i64 94334765324168, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @15, i32 0, i32 0), i64 94334765324576, i32 279, i32 29), !dbg !2595
  store double %62, double* %18, align 8, !dbg !2595
  call void @llvm.dbg.declare(metadata double* %19, metadata !2598, metadata !61), !dbg !2599
  %63 = load double, double* %17, align 8, !dbg !2600
  %64 = load double, double* %8, align 8, !dbg !2601
  %65 = fdiv double %63, %64, !dbg !2602
  call void @fDivHandler(double %63, double %64, double %65, i64 94334765327736, i64 94334765328088, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @15, i32 0, i32 0), i64 94334765328496, i32 280, i32 28), !dbg !2599
  store double %65, double* %19, align 8, !dbg !2599
  call void @llvm.dbg.declare(metadata double* %20, metadata !2603, metadata !61), !dbg !2604
  %66 = load double, double* %17, align 8, !dbg !2605
  %67 = load double, double* %18, align 8, !dbg !2606
  %68 = fadd double %66, %67, !dbg !2607
  call void @fAddHandler(double %66, double %67, double %68, i64 94334765331688, i64 94334765332040, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @15, i32 0, i32 0), i64 94334765332448, i32 281, i32 30), !dbg !2608
  %69 = fadd double %68, 1.000000e+00, !dbg !2608
  call void @fAddHandler(double %68, double 1.000000e+00, double %69, i64 94334765332448, i64 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @15, i32 0, i32 0), i64 94334765332896, i32 281, i32 40), !dbg !2609
  %70 = load double, double* %8, align 8, !dbg !2609
  %71 = fmul double 2.000000e+00, %70, !dbg !2610
  call void @fMulHandler(double 2.000000e+00, double %70, double %71, i64 0, i64 94334765333256, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @15, i32 0, i32 0), i64 94334765333696, i32 281, i32 51), !dbg !2611
  %72 = fdiv double %69, %71, !dbg !2611
  call void @fDivHandler(double %69, double %71, double %72, i64 94334765332896, i64 94334765333696, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @15, i32 0, i32 0), i64 94334765334080, i32 281, i32 46), !dbg !2604
  store double %72, double* %20, align 8, !dbg !2604
  call void @llvm.dbg.declare(metadata double* %21, metadata !2612, metadata !61), !dbg !2613
  %73 = load double, double* %17, align 8, !dbg !2614
  %74 = load double, double* %18, align 8, !dbg !2615
  %75 = fmul double 2.000000e+00, %74, !dbg !2616
  call void @fMulHandler(double 2.000000e+00, double %74, double %75, i64 0, i64 94334765337624, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @15, i32 0, i32 0), i64 94334765338064, i32 282, i32 35), !dbg !2617
  %76 = fadd double %73, %75, !dbg !2617
  call void @fAddHandler(double %73, double %75, double %76, i64 94334765337272, i64 94334765338064, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @15, i32 0, i32 0), i64 94334765338448, i32 282, i32 30), !dbg !2618
  %77 = fadd double %76, 4.000000e+00, !dbg !2618
  call void @fAddHandler(double %76, double 4.000000e+00, double %77, i64 94334765338448, i64 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @15, i32 0, i32 0), i64 94334765338896, i32 282, i32 40), !dbg !2619
  %78 = load double, double* %8, align 8, !dbg !2619
  %79 = fadd double %78, 1.000000e+00, !dbg !2620
  call void @fAddHandler(double %78, double 1.000000e+00, double %79, i64 94334765339256, i64 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @15, i32 0, i32 0), i64 94334765339696, i32 282, i32 54), !dbg !2621
  %80 = fmul double 2.000000e+00, %79, !dbg !2621
  call void @fMulHandler(double 2.000000e+00, double %79, double %80, i64 0, i64 94334765339696, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @15, i32 0, i32 0), i64 94334765340112, i32 282, i32 51), !dbg !2622
  %81 = fdiv double %77, %80, !dbg !2622
  call void @fDivHandler(double %77, double %80, double %81, i64 94334765338896, i64 94334765340112, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @15, i32 0, i32 0), i64 94334765340496, i32 282, i32 46), !dbg !2613
  store double %81, double* %21, align 8, !dbg !2613
  call void @llvm.dbg.declare(metadata double* %22, metadata !2623, metadata !61), !dbg !2624
  store double 1.000000e+00, double* %22, align 8, !dbg !2624
  call void @llvm.dbg.declare(metadata double* %23, metadata !2625, metadata !61), !dbg !2626
  call void @llvm.dbg.declare(metadata double* %24, metadata !2627, metadata !61), !dbg !2628
  store double 1.000000e+00, double* %24, align 8, !dbg !2628
  call void @llvm.dbg.declare(metadata double* %25, metadata !2629, metadata !61), !dbg !2630
  %82 = load double, double* %20, align 8, !dbg !2631
  %83 = load double, double* %15, align 8, !dbg !2632
  %84 = fmul double %82, %83, !dbg !2633
  call void @fMulHandler(double %82, double %83, double %84, i64 94334765350312, i64 94334765350664, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @15, i32 0, i32 0), i64 94334765351072, i32 287, i32 26), !dbg !2634
  %85 = fadd double 1.000000e+00, %84, !dbg !2634
  call void @fAddHandler(double 1.000000e+00, double %84, double %85, i64 0, i64 94334765351072, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @15, i32 0, i32 0), i64 94334765351520, i32 287, i32 21), !dbg !2630
  store double %85, double* %25, align 8, !dbg !2630
  call void @llvm.dbg.declare(metadata double* %26, metadata !2635, metadata !61), !dbg !2636
  %86 = load double, double* %21, align 8, !dbg !2637
  %87 = load double, double* %15, align 8, !dbg !2638
  %88 = fmul double %86, %87, !dbg !2639
  call void @fMulHandler(double %86, double %87, double %88, i64 94334765354680, i64 94334765355032, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @15, i32 0, i32 0), i64 94334765355440, i32 288, i32 26), !dbg !2640
  %89 = load double, double* %20, align 8, !dbg !2640
  %90 = fdiv double %89, 3.000000e+00, !dbg !2641
  call void @fDivHandler(double %89, double 3.000000e+00, double %90, i64 94334765355832, i64 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @15, i32 0, i32 0), i64 94334765356272, i32 288, i32 41), !dbg !2642
  %91 = load double, double* %15, align 8, !dbg !2642
  %92 = fmul double %90, %91, !dbg !2643
  call void @fMulHandler(double %90, double %91, double %92, i64 94334765356272, i64 94334765356632, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @15, i32 0, i32 0), i64 94334765357040, i32 288, i32 46), !dbg !2644
  %93 = fadd double 1.000000e+00, %92, !dbg !2644
  call void @fAddHandler(double 1.000000e+00, double %92, double %93, i64 0, i64 94334765357040, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @15, i32 0, i32 0), i64 94334765357488, i32 288, i32 37), !dbg !2645
  %94 = fmul double %88, %93, !dbg !2645
  call void @fMulHandler(double %88, double %93, double %94, i64 94334765355440, i64 94334765357488, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @15, i32 0, i32 0), i64 94334765357872, i32 288, i32 30), !dbg !2646
  %95 = fadd double 1.000000e+00, %94, !dbg !2646
  call void @fAddHandler(double 1.000000e+00, double %94, double %95, i64 0, i64 94334765357872, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @15, i32 0, i32 0), i64 94334765358320, i32 288, i32 21), !dbg !2636
  store double %95, double* %26, align 8, !dbg !2636
  call void @llvm.dbg.declare(metadata double* %27, metadata !2647, metadata !61), !dbg !2648
  store double 1.000000e+00, double* %27, align 8, !dbg !2648
  call void @llvm.dbg.declare(metadata double* %28, metadata !2649, metadata !61), !dbg !2650
  %96 = load double, double* %25, align 8, !dbg !2651
  %97 = load double, double* %19, align 8, !dbg !2652
  %98 = load double, double* %15, align 8, !dbg !2653
  %99 = fmul double %97, %98, !dbg !2654
  call void @fMulHandler(double %97, double %98, double %99, i64 94334765364600, i64 94334765364984, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @15, i32 0, i32 0), i64 94334765365392, i32 291, i32 27), !dbg !2655
  %100 = fsub double %96, %99, !dbg !2655
  call void @fSubHandler(double %96, double %99, double %100, i64 94334765364248, i64 94334765365392, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @15, i32 0, i32 0), i64 94334765365808, i32 291, i32 22), !dbg !2650
  store double %100, double* %28, align 8, !dbg !2650
  call void @llvm.dbg.declare(metadata double* %29, metadata !2656, metadata !61), !dbg !2657
  %101 = load double, double* %26, align 8, !dbg !2658
  %102 = load double, double* %19, align 8, !dbg !2659
  %103 = load double, double* %21, align 8, !dbg !2660
  %104 = load double, double* %15, align 8, !dbg !2661
  %105 = fmul double %103, %104, !dbg !2662
  call void @fMulHandler(double %103, double %104, double %105, i64 94334765369736, i64 94334765370120, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @15, i32 0, i32 0), i64 94334765370528, i32 292, i32 36), !dbg !2663
  %106 = fadd double 1.000000e+00, %105, !dbg !2663
  call void @fAddHandler(double 1.000000e+00, double %105, double %106, i64 0, i64 94334765370528, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @15, i32 0, i32 0), i64 94334765370976, i32 292, i32 32), !dbg !2664
  %107 = fmul double %102, %106, !dbg !2664
  call void @fMulHandler(double %102, double %106, double %107, i64 94334765369352, i64 94334765370976, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @15, i32 0, i32 0), i64 94334765371360, i32 292, i32 26), !dbg !2665
  %108 = load double, double* %15, align 8, !dbg !2665
  %109 = fmul double %107, %108, !dbg !2666
  call void @fMulHandler(double %107, double %108, double %109, i64 94334765371360, i64 94334765371752, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @15, i32 0, i32 0), i64 94334765372160, i32 292, i32 39), !dbg !2667
  %110 = fsub double %101, %109, !dbg !2667
  call void @fSubHandler(double %101, double %109, double %110, i64 94334765369000, i64 94334765372160, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @15, i32 0, i32 0), i64 94334765372576, i32 292, i32 22), !dbg !2668
  %111 = load double, double* %19, align 8, !dbg !2668
  %112 = load double, double* %20, align 8, !dbg !2669
  %113 = fmul double %111, %112, !dbg !2670
  call void @fMulHandler(double %111, double %112, double %113, i64 94334765372968, i64 94334765373352, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @15, i32 0, i32 0), i64 94334765373760, i32 292, i32 47), !dbg !2671
  %114 = load double, double* %8, align 8, !dbg !2671
  %115 = load double, double* %8, align 8, !dbg !2672
  %116 = fadd double %115, 1.000000e+00, !dbg !2673
  call void @fAddHandler(double %115, double 1.000000e+00, double %116, i64 94334765374536, i64 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @15, i32 0, i32 0), i64 94334765374976, i32 292, i32 59), !dbg !2674
  %117 = fdiv double %114, %116, !dbg !2674
  call void @fDivHandler(double %114, double %116, double %117, i64 94334765374152, i64 94334765374976, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @15, i32 0, i32 0), i64 94334765375360, i32 292, i32 56), !dbg !2675
  %118 = fmul double %113, %117, !dbg !2675
  call void @fMulHandler(double %113, double %117, double %118, i64 94334765373760, i64 94334765375360, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @15, i32 0, i32 0), i64 94334765375776, i32 292, i32 52), !dbg !2676
  %119 = load double, double* %15, align 8, !dbg !2676
  %120 = fmul double %118, %119, !dbg !2677
  call void @fMulHandler(double %118, double %119, double %120, i64 94334765375776, i64 94334765376168, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @15, i32 0, i32 0), i64 94334765376576, i32 292, i32 66), !dbg !2678
  %121 = load double, double* %15, align 8, !dbg !2678
  %122 = fmul double %120, %121, !dbg !2679
  call void @fMulHandler(double %120, double %121, double %122, i64 94334765376576, i64 94334765376968, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @15, i32 0, i32 0), i64 94334765377376, i32 292, i32 69), !dbg !2680
  %123 = fadd double %110, %122, !dbg !2680
  call void @fAddHandler(double %110, double %122, double %123, i64 94334765372576, i64 94334765377376, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @15, i32 0, i32 0), i64 94334765377792, i32 292, i32 42), !dbg !2657
  store double %123, double* %29, align 8, !dbg !2657
  br label %124, !dbg !2681

; <label>:124:                                    ; preds = %377, %5
  call void @llvm.dbg.declare(metadata double* %30, metadata !2682, metadata !61), !dbg !2684
  %125 = load i32, i32* %14, align 4, !dbg !2685
  %126 = sub nsw i32 %125, 1, !dbg !2686
  %127 = sitofp i32 %126 to double, !dbg !2685
  store double %127, double* %30, align 8, !dbg !2684
  call void @llvm.dbg.declare(metadata double* %31, metadata !2687, metadata !61), !dbg !2688
  %128 = load i32, i32* %14, align 4, !dbg !2689
  %129 = sub nsw i32 %128, 2, !dbg !2690
  %130 = sitofp i32 %129 to double, !dbg !2689
  store double %130, double* %31, align 8, !dbg !2688
  call void @llvm.dbg.declare(metadata double* %32, metadata !2691, metadata !61), !dbg !2692
  %131 = load double, double* %17, align 8, !dbg !2693
  %132 = load double, double* %30, align 8, !dbg !2694
  %133 = load double, double* %18, align 8, !dbg !2695
  %134 = fmul double %132, %133, !dbg !2696
  call void @fMulHandler(double %132, double %133, double %134, i64 94334765394296, i64 94334765394680, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @15, i32 0, i32 0), i64 94334765395088, i32 297, i32 39), !dbg !2697
  %135 = fadd double %131, %134, !dbg !2697
  call void @fAddHandler(double %131, double %134, double %135, i64 94334765393944, i64 94334765395088, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @15, i32 0, i32 0), i64 94334765395504, i32 297, i32 34), !dbg !2698
  %136 = load double, double* %30, align 8, !dbg !2698
  %137 = load double, double* %30, align 8, !dbg !2699
  %138 = fmul double %136, %137, !dbg !2700
  call void @fMulHandler(double %136, double %137, double %138, i64 94334765395896, i64 94334765396280, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @15, i32 0, i32 0), i64 94334765396688, i32 297, i32 49), !dbg !2701
  %139 = fadd double %135, %138, !dbg !2701
  call void @fAddHandler(double %135, double %138, double %139, i64 94334765395504, i64 94334765396688, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @15, i32 0, i32 0), i64 94334765397104, i32 297, i32 44), !dbg !2692
  store double %139, double* %32, align 8, !dbg !2692
  call void @llvm.dbg.declare(metadata double* %33, metadata !2702, metadata !61), !dbg !2703
  %140 = load double, double* %17, align 8, !dbg !2704
  %141 = load double, double* %31, align 8, !dbg !2705
  %142 = load double, double* %18, align 8, !dbg !2706
  %143 = fmul double %141, %142, !dbg !2707
  call void @fMulHandler(double %141, double %142, double %143, i64 94334765400648, i64 94334765401032, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @15, i32 0, i32 0), i64 94334765401440, i32 298, i32 39), !dbg !2708
  %144 = fadd double %140, %143, !dbg !2708
  call void @fAddHandler(double %140, double %143, double %144, i64 94334765400296, i64 94334765401440, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @15, i32 0, i32 0), i64 94334765401856, i32 298, i32 34), !dbg !2709
  %145 = load double, double* %31, align 8, !dbg !2709
  %146 = load double, double* %31, align 8, !dbg !2710
  %147 = fmul double %145, %146, !dbg !2711
  call void @fMulHandler(double %145, double %146, double %147, i64 94334765402248, i64 94334765402632, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @15, i32 0, i32 0), i64 94334765403040, i32 298, i32 49), !dbg !2712
  %148 = fadd double %144, %147, !dbg !2712
  call void @fAddHandler(double %144, double %147, double %148, i64 94334765401856, i64 94334765403040, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @15, i32 0, i32 0), i64 94334765403456, i32 298, i32 44), !dbg !2703
  store double %148, double* %33, align 8, !dbg !2703
  call void @llvm.dbg.declare(metadata double* %34, metadata !2713, metadata !61), !dbg !2714
  %149 = load double, double* %30, align 8, !dbg !2715
  %150 = load double, double* %8, align 8, !dbg !2716
  %151 = fadd double %149, %150, !dbg !2717
  call void @fAddHandler(double %149, double %150, double %151, i64 94334765406648, i64 94334765407000, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @15, i32 0, i32 0), i64 94334765407408, i32 299, i32 24), !dbg !2714
  store double %151, double* %34, align 8, !dbg !2714
  call void @llvm.dbg.declare(metadata double* %35, metadata !2718, metadata !61), !dbg !2719
  %152 = load double, double* %31, align 8, !dbg !2720
  %153 = load double, double* %8, align 8, !dbg !2721
  %154 = fadd double %152, %153, !dbg !2722
  call void @fAddHandler(double %152, double %153, double %154, i64 94334765410600, i64 94334765410952, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @15, i32 0, i32 0), i64 94334765411360, i32 300, i32 24), !dbg !2719
  store double %154, double* %35, align 8, !dbg !2719
  call void @llvm.dbg.declare(metadata double* %36, metadata !2723, metadata !61), !dbg !2724
  %155 = load i32, i32* %14, align 4, !dbg !2725
  %156 = mul nsw i32 2, %155, !dbg !2726
  %157 = sub nsw i32 %156, 1, !dbg !2727
  %158 = sitofp i32 %157 to double, !dbg !2728
  store double %158, double* %36, align 8, !dbg !2724
  call void @llvm.dbg.declare(metadata double* %37, metadata !2729, metadata !61), !dbg !2730
  %159 = load i32, i32* %14, align 4, !dbg !2731
  %160 = mul nsw i32 2, %159, !dbg !2732
  %161 = sub nsw i32 %160, 3, !dbg !2733
  %162 = sitofp i32 %161 to double, !dbg !2734
  store double %162, double* %37, align 8, !dbg !2730
  call void @llvm.dbg.declare(metadata double* %38, metadata !2735, metadata !61), !dbg !2736
  %163 = load i32, i32* %14, align 4, !dbg !2737
  %164 = mul nsw i32 2, %163, !dbg !2738
  %165 = sub nsw i32 %164, 5, !dbg !2739
  %166 = sitofp i32 %165 to double, !dbg !2740
  store double %166, double* %38, align 8, !dbg !2736
  call void @llvm.dbg.declare(metadata double* %39, metadata !2741, metadata !61), !dbg !2742
  %167 = load i32, i32* %14, align 4, !dbg !2743
  %168 = load i32, i32* %14, align 4, !dbg !2744
  %169 = mul nsw i32 %167, %168, !dbg !2745
  %170 = sitofp i32 %169 to double, !dbg !2743
  store double %170, double* %39, align 8, !dbg !2742
  call void @llvm.dbg.declare(metadata double* %40, metadata !2746, metadata !61), !dbg !2747
  %171 = load double, double* %39, align 8, !dbg !2748
  %172 = fmul double 3.000000e+00, %171, !dbg !2749
  call void @fMulHandler(double 3.000000e+00, double %171, double %172, i64 0, i64 94334765433256, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @15, i32 0, i32 0), i64 94334765433664, i32 305, i32 22), !dbg !2750
  %173 = load double, double* %18, align 8, !dbg !2750
  %174 = fsub double %173, 6.000000e+00, !dbg !2751
  call void @fSubHandler(double %173, double 6.000000e+00, double %174, i64 94334765434024, i64 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @15, i32 0, i32 0), i64 94334765434464, i32 305, i32 32), !dbg !2752
  %175 = load i32, i32* %14, align 4, !dbg !2752
  %176 = sitofp i32 %175 to double, !dbg !2752
  %177 = fmul double %174, %176, !dbg !2753
  call void @fMulHandler(double %174, double %176, double %177, i64 94334765434464, i64 94334765435208, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @15, i32 0, i32 0), i64 94334765436880, i32 305, i32 35), !dbg !2754
  %178 = fadd double %172, %177, !dbg !2754
  call void @fAddHandler(double %172, double %177, double %178, i64 94334765433664, i64 94334765436880, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @15, i32 0, i32 0), i64 94334765437296, i32 305, i32 26), !dbg !2755
  %179 = fadd double %178, 2.000000e+00, !dbg !2755
  call void @fAddHandler(double %178, double 2.000000e+00, double %179, i64 94334765437296, i64 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @15, i32 0, i32 0), i64 94334765437744, i32 305, i32 38), !dbg !2756
  %180 = load double, double* %17, align 8, !dbg !2756
  %181 = fsub double %179, %180, !dbg !2757
  call void @fSubHandler(double %179, double %180, double %181, i64 94334765437744, i64 94334765438104, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @15, i32 0, i32 0), i64 94334765438512, i32 305, i32 42), !dbg !2758
  %182 = load double, double* %18, align 8, !dbg !2758
  %183 = fmul double 2.000000e+00, %182, !dbg !2759
  call void @fMulHandler(double 2.000000e+00, double %182, double %183, i64 0, i64 94334765438904, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @15, i32 0, i32 0), i64 94334765439344, i32 305, i32 55), !dbg !2760
  %184 = fsub double %181, %183, !dbg !2760
  call void @fSubHandler(double %181, double %183, double %184, i64 94334765438512, i64 94334765439344, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @15, i32 0, i32 0), i64 94334765439728, i32 305, i32 52), !dbg !2761
  %185 = load double, double* %37, align 8, !dbg !2761
  %186 = fmul double 2.000000e+00, %185, !dbg !2762
  call void @fMulHandler(double 2.000000e+00, double %185, double %186, i64 0, i64 94334765440120, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @15, i32 0, i32 0), i64 94334765440560, i32 305, i32 65), !dbg !2763
  %187 = load double, double* %34, align 8, !dbg !2763
  %188 = fmul double %186, %187, !dbg !2764
  call void @fMulHandler(double %186, double %187, double %188, i64 94334765440560, i64 94334765440920, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @15, i32 0, i32 0), i64 94334765441328, i32 305, i32 70), !dbg !2765
  %189 = fdiv double %184, %188, !dbg !2765
  call void @fDivHandler(double %184, double %188, double %189, i64 94334765439728, i64 94334765441328, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @15, i32 0, i32 0), i64 94334765441744, i32 305, i32 61), !dbg !2747
  store double %189, double* %40, align 8, !dbg !2747
  call void @llvm.dbg.declare(metadata double* %41, metadata !2766, metadata !61), !dbg !2767
  %190 = load double, double* %39, align 8, !dbg !2768
  %191 = fmul double 3.000000e+00, %190, !dbg !2769
  call void @fMulHandler(double 3.000000e+00, double %190, double %191, i64 0, i64 94334765444936, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @15, i32 0, i32 0), i64 94334765445344, i32 306, i32 22), !dbg !2770
  %192 = load double, double* %18, align 8, !dbg !2770
  %193 = fadd double %192, 6.000000e+00, !dbg !2771
  call void @fAddHandler(double %192, double 6.000000e+00, double %193, i64 94334765445704, i64 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @15, i32 0, i32 0), i64 94334765446144, i32 306, i32 32), !dbg !2772
  %194 = load i32, i32* %14, align 4, !dbg !2772
  %195 = sitofp i32 %194 to double, !dbg !2772
  %196 = fmul double %193, %195, !dbg !2773
  call void @fMulHandler(double %193, double %195, double %196, i64 94334765446144, i64 94334765446888, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @15, i32 0, i32 0), i64 94334765448560, i32 306, i32 35), !dbg !2774
  %197 = fsub double %191, %196, !dbg !2774
  call void @fSubHandler(double %191, double %196, double %197, i64 94334765445344, i64 94334765448560, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @15, i32 0, i32 0), i64 94334765448976, i32 306, i32 26), !dbg !2775
  %198 = fadd double %197, 2.000000e+00, !dbg !2775
  call void @fAddHandler(double %197, double 2.000000e+00, double %198, i64 94334765448976, i64 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @15, i32 0, i32 0), i64 94334765449424, i32 306, i32 38), !dbg !2776
  %199 = load double, double* %17, align 8, !dbg !2776
  %200 = fsub double %198, %199, !dbg !2777
  call void @fSubHandler(double %198, double %199, double %200, i64 94334765449424, i64 94334765449784, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @15, i32 0, i32 0), i64 94334765450192, i32 306, i32 42), !dbg !2778
  %201 = fsub double -0.000000e+00, %200, !dbg !2778
  call void @fSubHandler(double -0.000000e+00, double %200, double %201, i64 0, i64 94334765450192, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @15, i32 0, i32 0), i64 94334765450608, i32 306, i32 17), !dbg !2779
  %202 = load double, double* %32, align 8, !dbg !2779
  %203 = fmul double %201, %202, !dbg !2780
  call void @fMulHandler(double %201, double %202, double %203, i64 94334765450608, i64 94334765451000, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @15, i32 0, i32 0), i64 94334765451408, i32 306, i32 52), !dbg !2781
  %204 = load double, double* %36, align 8, !dbg !2781
  %205 = fmul double 4.000000e+00, %204, !dbg !2782
  call void @fMulHandler(double 4.000000e+00, double %204, double %205, i64 0, i64 94334765451800, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @15, i32 0, i32 0), i64 94334765452240, i32 306, i32 67), !dbg !2783
  %206 = load double, double* %37, align 8, !dbg !2783
  %207 = fmul double %205, %206, !dbg !2784
  call void @fMulHandler(double %205, double %206, double %207, i64 94334765452240, i64 94334765452600, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @15, i32 0, i32 0), i64 94334765453008, i32 306, i32 72), !dbg !2785
  %208 = load double, double* %35, align 8, !dbg !2785
  %209 = fmul double %207, %208, !dbg !2786
  call void @fMulHandler(double %207, double %208, double %209, i64 94334765453008, i64 94334765453400, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @15, i32 0, i32 0), i64 94334765453808, i32 306, i32 77), !dbg !2787
  %210 = load double, double* %34, align 8, !dbg !2787
  %211 = fmul double %209, %210, !dbg !2788
  call void @fMulHandler(double %209, double %210, double %211, i64 94334765453808, i64 94334765454200, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @15, i32 0, i32 0), i64 94334765454608, i32 306, i32 83), !dbg !2789
  %212 = fdiv double %203, %211, !dbg !2789
  call void @fDivHandler(double %203, double %211, double %212, i64 94334765451408, i64 94334765454608, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @15, i32 0, i32 0), i64 94334765455024, i32 306, i32 64), !dbg !2767
  store double %212, double* %41, align 8, !dbg !2767
  call void @llvm.dbg.declare(metadata double* %42, metadata !2790, metadata !61), !dbg !2791
  %213 = load double, double* %33, align 8, !dbg !2792
  %214 = load double, double* %32, align 8, !dbg !2793
  %215 = fmul double %213, %214, !dbg !2794
  call void @fMulHandler(double %213, double %214, double %215, i64 94334765458216, i64 94334765458568, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @15, i32 0, i32 0), i64 94334765458976, i32 307, i32 29), !dbg !2795
  %216 = load double, double* %31, align 8, !dbg !2795
  %217 = load double, double* %31, align 8, !dbg !2796
  %218 = fmul double %216, %217, !dbg !2797
  call void @fMulHandler(double %216, double %217, double %218, i64 94334765459368, i64 94334765459752, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @15, i32 0, i32 0), i64 94334765460160, i32 307, i32 46), !dbg !2798
  %219 = load double, double* %31, align 8, !dbg !2798
  %220 = load double, double* %18, align 8, !dbg !2799
  %221 = fmul double %219, %220, !dbg !2800
  call void @fMulHandler(double %219, double %220, double %221, i64 94334765460552, i64 94334765460936, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @15, i32 0, i32 0), i64 94334765461344, i32 307, i32 56), !dbg !2801
  %222 = fsub double %218, %221, !dbg !2801
  call void @fSubHandler(double %218, double %221, double %222, i64 94334765460160, i64 94334765461344, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @15, i32 0, i32 0), i64 94334765461760, i32 307, i32 51), !dbg !2802
  %223 = load double, double* %17, align 8, !dbg !2802
  %224 = fadd double %222, %223, !dbg !2803
  call void @fAddHandler(double %222, double %223, double %224, i64 94334765461760, i64 94334765462152, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @15, i32 0, i32 0), i64 94334765462560, i32 307, i32 61), !dbg !2804
  %225 = fmul double %215, %224, !dbg !2804
  call void @fMulHandler(double %215, double %224, double %225, i64 94334765458976, i64 94334765462560, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @15, i32 0, i32 0), i64 94334765462976, i32 307, i32 41), !dbg !2805
  %226 = load double, double* %37, align 8, !dbg !2805
  %227 = fmul double 8.000000e+00, %226, !dbg !2806
  call void @fMulHandler(double 8.000000e+00, double %226, double %227, i64 0, i64 94334765463368, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @15, i32 0, i32 0), i64 94334765463808, i32 307, i32 77), !dbg !2807
  %228 = load double, double* %37, align 8, !dbg !2807
  %229 = fmul double %227, %228, !dbg !2808
  call void @fMulHandler(double %227, double %228, double %229, i64 94334765463808, i64 94334765464168, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @15, i32 0, i32 0), i64 94334765464576, i32 307, i32 82), !dbg !2809
  %230 = load double, double* %38, align 8, !dbg !2809
  %231 = fmul double %229, %230, !dbg !2810
  call void @fMulHandler(double %229, double %230, double %231, i64 94334765464576, i64 94334765464968, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @15, i32 0, i32 0), i64 94334765465376, i32 307, i32 87), !dbg !2811
  %232 = load i32, i32* %14, align 4, !dbg !2811
  %233 = sitofp i32 %232 to double, !dbg !2811
  %234 = load double, double* %8, align 8, !dbg !2812
  %235 = fadd double %233, %234, !dbg !2813
  call void @fAddHandler(double %233, double %234, double %235, i64 94334765466152, i64 94334765467800, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @15, i32 0, i32 0), i64 94334765468208, i32 307, i32 95), !dbg !2814
  %236 = fsub double %235, 3.000000e+00, !dbg !2814
  call void @fSubHandler(double %235, double 3.000000e+00, double %236, i64 94334765468208, i64 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @15, i32 0, i32 0), i64 94334765468656, i32 307, i32 97), !dbg !2815
  %237 = fmul double %231, %236, !dbg !2815
  call void @fMulHandler(double %231, double %236, double %237, i64 94334765465376, i64 94334765468656, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @15, i32 0, i32 0), i64 94334765469040, i32 307, i32 92), !dbg !2816
  %238 = load double, double* %35, align 8, !dbg !2816
  %239 = fmul double %237, %238, !dbg !2817
  call void @fMulHandler(double %237, double %238, double %239, i64 94334765469040, i64 94334765469432, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @15, i32 0, i32 0), i64 94334765469840, i32 307, i32 100), !dbg !2818
  %240 = load double, double* %34, align 8, !dbg !2818
  %241 = fmul double %239, %240, !dbg !2819
  call void @fMulHandler(double %239, double %240, double %241, i64 94334765469840, i64 94334765470232, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @15, i32 0, i32 0), i64 94334765470640, i32 307, i32 106), !dbg !2820
  %242 = fdiv double %225, %241, !dbg !2820
  call void @fDivHandler(double %225, double %241, double %242, i64 94334765462976, i64 94334765470640, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @15, i32 0, i32 0), i64 94334765471056, i32 307, i32 73), !dbg !2791
  store double %242, double* %42, align 8, !dbg !2791
  call void @llvm.dbg.declare(metadata double* %43, metadata !2821, metadata !61), !dbg !2822
  %243 = load double, double* %32, align 8, !dbg !2823
  %244 = fsub double -0.000000e+00, %243, !dbg !2824
  call void @fSubHandler(double -0.000000e+00, double %243, double %244, i64 0, i64 94334765474248, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @15, i32 0, i32 0), i64 94334765474624, i32 308, i32 17), !dbg !2825
  %245 = load i32, i32* %14, align 4, !dbg !2825
  %246 = sitofp i32 %245 to double, !dbg !2825
  %247 = load double, double* %8, align 8, !dbg !2826
  %248 = fsub double %246, %247, !dbg !2827
  call void @fSubHandler(double %246, double %247, double %248, i64 94334765475400, i64 94334765477048, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @15, i32 0, i32 0), i64 94334765477456, i32 308, i32 32), !dbg !2828
  %249 = fsub double %248, 1.000000e+00, !dbg !2828
  call void @fSubHandler(double %248, double 1.000000e+00, double %249, i64 94334765477456, i64 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @15, i32 0, i32 0), i64 94334765477904, i32 308, i32 34), !dbg !2829
  %250 = fmul double %244, %249, !dbg !2829
  call void @fMulHandler(double %244, double %249, double %250, i64 94334765474624, i64 94334765477904, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @15, i32 0, i32 0), i64 94334765478288, i32 308, i32 29), !dbg !2830
  %251 = load double, double* %37, align 8, !dbg !2830
  %252 = fmul double 2.000000e+00, %251, !dbg !2831
  call void @fMulHandler(double 2.000000e+00, double %251, double %252, i64 0, i64 94334765478680, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @15, i32 0, i32 0), i64 94334765479120, i32 308, i32 42), !dbg !2832
  %253 = load double, double* %35, align 8, !dbg !2832
  %254 = fmul double %252, %253, !dbg !2833
  call void @fMulHandler(double %252, double %253, double %254, i64 94334765479120, i64 94334765479480, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @15, i32 0, i32 0), i64 94334765479888, i32 308, i32 47), !dbg !2834
  %255 = load double, double* %34, align 8, !dbg !2834
  %256 = fmul double %254, %255, !dbg !2835
  call void @fMulHandler(double %254, double %255, double %256, i64 94334765479888, i64 94334765480280, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @15, i32 0, i32 0), i64 94334765480688, i32 308, i32 53), !dbg !2836
  %257 = fdiv double %250, %256, !dbg !2836
  call void @fDivHandler(double %250, double %256, double %257, i64 94334765478288, i64 94334765480688, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @15, i32 0, i32 0), i64 94334765387040, i32 308, i32 38), !dbg !2822
  store double %257, double* %43, align 8, !dbg !2822
  call void @llvm.dbg.declare(metadata double* %44, metadata !2837, metadata !61), !dbg !2838
  %258 = load double, double* %40, align 8, !dbg !2839
  %259 = load double, double* %15, align 8, !dbg !2840
  %260 = fmul double %258, %259, !dbg !2841
  call void @fMulHandler(double %258, double %259, double %260, i64 94334765388680, i64 94334765486744, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @15, i32 0, i32 0), i64 94334765487120, i32 310, i32 24), !dbg !2842
  %261 = fadd double 1.000000e+00, %260, !dbg !2842
  call void @fAddHandler(double 1.000000e+00, double %260, double %261, i64 0, i64 94334765487120, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @15, i32 0, i32 0), i64 94334765487568, i32 310, i32 21), !dbg !2843
  %262 = load double, double* %29, align 8, !dbg !2843
  %263 = fmul double %261, %262, !dbg !2844
  call void @fMulHandler(double %261, double %262, double %263, i64 94334765487568, i64 94334765487928, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @15, i32 0, i32 0), i64 94334765488336, i32 310, i32 27), !dbg !2845
  %264 = load double, double* %43, align 8, !dbg !2845
  %265 = load double, double* %41, align 8, !dbg !2846
  %266 = load double, double* %15, align 8, !dbg !2847
  %267 = fmul double %265, %266, !dbg !2848
  call void @fMulHandler(double %265, double %266, double %267, i64 94334765489112, i64 94334765489496, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @15, i32 0, i32 0), i64 94334765489904, i32 310, i32 42), !dbg !2849
  %268 = fadd double %264, %267, !dbg !2849
  call void @fAddHandler(double %264, double %267, double %268, i64 94334765488728, i64 94334765489904, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @15, i32 0, i32 0), i64 94334765490320, i32 310, i32 38), !dbg !2850
  %269 = load double, double* %15, align 8, !dbg !2850
  %270 = fmul double %268, %269, !dbg !2851
  call void @fMulHandler(double %268, double %269, double %270, i64 94334765490320, i64 94334765490712, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @15, i32 0, i32 0), i64 94334765491120, i32 310, i32 45), !dbg !2852
  %271 = load double, double* %28, align 8, !dbg !2852
  %272 = fmul double %270, %271, !dbg !2853
  call void @fMulHandler(double %270, double %271, double %272, i64 94334765491120, i64 94334765491512, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @15, i32 0, i32 0), i64 94334765491920, i32 310, i32 47), !dbg !2854
  %273 = fadd double %263, %272, !dbg !2854
  call void @fAddHandler(double %263, double %272, double %273, i64 94334765488336, i64 94334765491920, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @15, i32 0, i32 0), i64 94334765492336, i32 310, i32 33), !dbg !2855
  %274 = load double, double* %42, align 8, !dbg !2855
  %275 = load double, double* %16, align 8, !dbg !2856
  %276 = fmul double %274, %275, !dbg !2857
  call void @fMulHandler(double %274, double %275, double %276, i64 94334765492728, i64 94334765493112, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @15, i32 0, i32 0), i64 94334765493520, i32 310, i32 57), !dbg !2858
  %277 = load double, double* %27, align 8, !dbg !2858
  %278 = fmul double %276, %277, !dbg !2859
  call void @fMulHandler(double %276, double %277, double %278, i64 94334765493520, i64 94334765493912, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @15, i32 0, i32 0), i64 94334765494320, i32 310, i32 60), !dbg !2860
  %279 = fadd double %273, %278, !dbg !2860
  call void @fAddHandler(double %273, double %278, double %279, i64 94334765492336, i64 94334765494320, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @15, i32 0, i32 0), i64 94334765494736, i32 310, i32 53), !dbg !2838
  store double %279, double* %44, align 8, !dbg !2838
  call void @llvm.dbg.declare(metadata double* %45, metadata !2861, metadata !61), !dbg !2862
  %280 = load double, double* %40, align 8, !dbg !2863
  %281 = load double, double* %15, align 8, !dbg !2864
  %282 = fmul double %280, %281, !dbg !2865
  call void @fMulHandler(double %280, double %281, double %282, i64 94334765497928, i64 94334765498280, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @15, i32 0, i32 0), i64 94334765498688, i32 311, i32 24), !dbg !2866
  %283 = fadd double 1.000000e+00, %282, !dbg !2866
  call void @fAddHandler(double 1.000000e+00, double %282, double %283, i64 0, i64 94334765498688, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @15, i32 0, i32 0), i64 94334765499136, i32 311, i32 21), !dbg !2867
  %284 = load double, double* %26, align 8, !dbg !2867
  %285 = fmul double %283, %284, !dbg !2868
  call void @fMulHandler(double %283, double %284, double %285, i64 94334765499136, i64 94334765499496, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @15, i32 0, i32 0), i64 94334765499904, i32 311, i32 27), !dbg !2869
  %286 = load double, double* %43, align 8, !dbg !2869
  %287 = load double, double* %41, align 8, !dbg !2870
  %288 = load double, double* %15, align 8, !dbg !2871
  %289 = fmul double %287, %288, !dbg !2872
  call void @fMulHandler(double %287, double %288, double %289, i64 94334765500680, i64 94334765501064, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @15, i32 0, i32 0), i64 94334765501472, i32 311, i32 42), !dbg !2873
  %290 = fadd double %286, %289, !dbg !2873
  call void @fAddHandler(double %286, double %289, double %290, i64 94334765500296, i64 94334765501472, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @15, i32 0, i32 0), i64 94334765501888, i32 311, i32 38), !dbg !2874
  %291 = load double, double* %15, align 8, !dbg !2874
  %292 = fmul double %290, %291, !dbg !2875
  call void @fMulHandler(double %290, double %291, double %292, i64 94334765501888, i64 94334765502280, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @15, i32 0, i32 0), i64 94334765502688, i32 311, i32 45), !dbg !2876
  %293 = load double, double* %25, align 8, !dbg !2876
  %294 = fmul double %292, %293, !dbg !2877
  call void @fMulHandler(double %292, double %293, double %294, i64 94334765502688, i64 94334765503080, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @15, i32 0, i32 0), i64 94334765503488, i32 311, i32 47), !dbg !2878
  %295 = fadd double %285, %294, !dbg !2878
  call void @fAddHandler(double %285, double %294, double %295, i64 94334765499904, i64 94334765503488, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @15, i32 0, i32 0), i64 94334765503904, i32 311, i32 33), !dbg !2879
  %296 = load double, double* %42, align 8, !dbg !2879
  %297 = load double, double* %16, align 8, !dbg !2880
  %298 = fmul double %296, %297, !dbg !2881
  call void @fMulHandler(double %296, double %297, double %298, i64 94334765504296, i64 94334765504680, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @15, i32 0, i32 0), i64 94334765505088, i32 311, i32 57), !dbg !2882
  %299 = load double, double* %24, align 8, !dbg !2882
  %300 = fmul double %298, %299, !dbg !2883
  call void @fMulHandler(double %298, double %299, double %300, i64 94334765505088, i64 94334765505480, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @15, i32 0, i32 0), i64 94334765505888, i32 311, i32 60), !dbg !2884
  %301 = fadd double %295, %300, !dbg !2884
  call void @fAddHandler(double %295, double %300, double %301, i64 94334765503904, i64 94334765505888, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @15, i32 0, i32 0), i64 94334765506304, i32 311, i32 53), !dbg !2862
  store double %301, double* %45, align 8, !dbg !2862
  call void @llvm.dbg.declare(metadata double* %46, metadata !2885, metadata !61), !dbg !2886
  %302 = load double, double* %44, align 8, !dbg !2887
  %303 = load double, double* %45, align 8, !dbg !2888
  %304 = fdiv double %302, %303, !dbg !2889
  call void @fDivHandler(double %302, double %303, double %304, i64 94334765509496, i64 94334765509848, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @15, i32 0, i32 0), i64 94334765510256, i32 312, i32 18), !dbg !2886
  store double %304, double* %46, align 8, !dbg !2886
  %305 = load double, double* %22, align 8, !dbg !2890
  %306 = load double, double* %46, align 8, !dbg !2891
  %307 = fsub double %305, %306, !dbg !2892
  call void @fSubHandler(double %305, double %306, double %307, i64 94334765512328, i64 94334765512712, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @15, i32 0, i32 0), i64 94334765513120, i32 314, i32 19), !dbg !2893
  %308 = call double @fabs(double %307) #1, !dbg !2893
  %309 = load double, double* %22, align 8, !dbg !2894
  %310 = call double @fabs(double %309) #1, !dbg !2895
  %311 = fdiv double %308, %310, !dbg !2897
  call void @fDivHandler(double %308, double %310, double %311, i64 94334765513600, i64 94334765514528, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @15, i32 0, i32 0), i64 94334765515008, i32 314, i32 23), !dbg !2898
  store double %311, double* %23, align 8, !dbg !2898
  %312 = load double, double* %46, align 8, !dbg !2899
  store double %312, double* %22, align 8, !dbg !2900
  %313 = load double, double* %23, align 8, !dbg !2901
  %314 = fcmp olt double %313, 0x3CB0000000000000, !dbg !2903
  %315 = call i1 @fCmpInstHandler(double %313, double 0x3CB0000000000000, i1 %314, i32 4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @15, i32 0, i32 0), i64 94334765517024, i32 317, i32 13), !dbg !2904
  br i1 %315, label %321, label %316, !dbg !2904

; <label>:316:                                    ; preds = %124
  %317 = load i32, i32* %14, align 4, !dbg !2905
  %318 = icmp sgt i32 %317, 10000, !dbg !2907
  %319 = sext i32 %317 to i64, !dbg !2908
  %320 = call i1 @iCmpInstHandler(i64 %319, i64 10000, i1 %318, i32 38, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @15, i32 0, i32 0), i64 94334765518480, i32 317, i32 36), !dbg !2908
  br i1 %320, label %321, label %322, !dbg !2908

; <label>:321:                                    ; preds = %316, %124
  br label %386, !dbg !2909

; <label>:322:                                    ; preds = %316
  %323 = load double, double* %44, align 8, !dbg !2911
  %324 = call double @fabs(double %323) #1, !dbg !2913
  %325 = fcmp ogt double %324, 1.000000e+50, !dbg !2914
  %326 = call i1 @fCmpInstHandler(double %324, double 1.000000e+50, i1 %325, i32 2, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @15, i32 0, i32 0), i64 94334765520832, i32 319, i32 17), !dbg !2915
  br i1 %326, label %332, label %327, !dbg !2915

; <label>:327:                                    ; preds = %322
  %328 = load double, double* %45, align 8, !dbg !2916
  %329 = call double @fabs(double %328) #1, !dbg !2918
  %330 = fcmp ogt double %329, 1.000000e+50, !dbg !2919
  %331 = call i1 @fCmpInstHandler(double %329, double 1.000000e+50, i1 %330, i32 2, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @15, i32 0, i32 0), i64 94334765522832, i32 319, i32 41), !dbg !2920
  br i1 %331, label %332, label %349, !dbg !2920

; <label>:332:                                    ; preds = %327, %322
  %333 = load double, double* %44, align 8, !dbg !2921
  %334 = fdiv double %333, 1.000000e+50, !dbg !2921
  call void @fDivHandler(double %333, double 1.000000e+50, double %334, i64 94334765523768, i64 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @15, i32 0, i32 0), i64 94334765524144, i32 320, i32 12), !dbg !2921
  store double %334, double* %44, align 8, !dbg !2921
  %335 = load double, double* %45, align 8, !dbg !2923
  %336 = fdiv double %335, 1.000000e+50, !dbg !2923
  call void @fDivHandler(double %335, double 1.000000e+50, double %336, i64 94334765525928, i64 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @15, i32 0, i32 0), i64 94334765526336, i32 321, i32 12), !dbg !2923
  store double %336, double* %45, align 8, !dbg !2923
  %337 = load double, double* %29, align 8, !dbg !2924
  %338 = fdiv double %337, 1.000000e+50, !dbg !2924
  call void @fDivHandler(double %337, double 1.000000e+50, double %338, i64 94334765528120, i64 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @15, i32 0, i32 0), i64 94334765528528, i32 322, i32 12), !dbg !2924
  store double %338, double* %29, align 8, !dbg !2924
  %339 = load double, double* %26, align 8, !dbg !2925
  %340 = fdiv double %339, 1.000000e+50, !dbg !2925
  call void @fDivHandler(double %339, double 1.000000e+50, double %340, i64 94334765530312, i64 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @15, i32 0, i32 0), i64 94334765530720, i32 323, i32 12), !dbg !2925
  store double %340, double* %26, align 8, !dbg !2925
  %341 = load double, double* %28, align 8, !dbg !2926
  %342 = fdiv double %341, 1.000000e+50, !dbg !2926
  call void @fDivHandler(double %341, double 1.000000e+50, double %342, i64 94334765532504, i64 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @15, i32 0, i32 0), i64 94334765532912, i32 324, i32 12), !dbg !2926
  store double %342, double* %28, align 8, !dbg !2926
  %343 = load double, double* %25, align 8, !dbg !2927
  %344 = fdiv double %343, 1.000000e+50, !dbg !2927
  call void @fDivHandler(double %343, double 1.000000e+50, double %344, i64 94334765534696, i64 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @15, i32 0, i32 0), i64 94334765535104, i32 325, i32 12), !dbg !2927
  store double %344, double* %25, align 8, !dbg !2927
  %345 = load double, double* %27, align 8, !dbg !2928
  %346 = fdiv double %345, 1.000000e+50, !dbg !2928
  call void @fDivHandler(double %345, double 1.000000e+50, double %346, i64 94334765536888, i64 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @15, i32 0, i32 0), i64 94334765537296, i32 326, i32 12), !dbg !2928
  store double %346, double* %27, align 8, !dbg !2928
  %347 = load double, double* %24, align 8, !dbg !2929
  %348 = fdiv double %347, 1.000000e+50, !dbg !2929
  call void @fDivHandler(double %347, double 1.000000e+50, double %348, i64 94334765539080, i64 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @15, i32 0, i32 0), i64 94334765539488, i32 327, i32 12), !dbg !2929
  store double %348, double* %24, align 8, !dbg !2929
  br label %377, !dbg !2930

; <label>:349:                                    ; preds = %327
  %350 = load double, double* %44, align 8, !dbg !2931
  %351 = call double @fabs(double %350) #1, !dbg !2933
  %352 = fcmp olt double %351, 0x358DEE7A4AD4B81E, !dbg !2934
  %353 = call i1 @fCmpInstHandler(double %351, double 0x358DEE7A4AD4B81E, i1 %352, i32 4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @15, i32 0, i32 0), i64 94334765542656, i32 329, i32 22), !dbg !2935
  br i1 %353, label %359, label %354, !dbg !2935

; <label>:354:                                    ; preds = %349
  %355 = load double, double* %45, align 8, !dbg !2936
  %356 = call double @fabs(double %355) #1, !dbg !2938
  %357 = fcmp olt double %356, 0x358DEE7A4AD4B81E, !dbg !2939
  %358 = call i1 @fCmpInstHandler(double %356, double 0x358DEE7A4AD4B81E, i1 %357, i32 4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @15, i32 0, i32 0), i64 94334765544656, i32 329, i32 50), !dbg !2940
  br i1 %358, label %359, label %376, !dbg !2940

; <label>:359:                                    ; preds = %354, %349
  %360 = load double, double* %44, align 8, !dbg !2941
  %361 = fmul double %360, 1.000000e+50, !dbg !2941
  call void @fMulHandler(double %360, double 1.000000e+50, double %361, i64 94334765545624, i64 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @15, i32 0, i32 0), i64 94334765546000, i32 330, i32 12), !dbg !2941
  store double %361, double* %44, align 8, !dbg !2941
  %362 = load double, double* %45, align 8, !dbg !2943
  %363 = fmul double %362, 1.000000e+50, !dbg !2943
  call void @fMulHandler(double %362, double 1.000000e+50, double %363, i64 94334765547784, i64 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @15, i32 0, i32 0), i64 94334765548192, i32 331, i32 12), !dbg !2943
  store double %363, double* %45, align 8, !dbg !2943
  %364 = load double, double* %29, align 8, !dbg !2944
  %365 = fmul double %364, 1.000000e+50, !dbg !2944
  call void @fMulHandler(double %364, double 1.000000e+50, double %365, i64 94334765549976, i64 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @15, i32 0, i32 0), i64 94334765550384, i32 332, i32 12), !dbg !2944
  store double %365, double* %29, align 8, !dbg !2944
  %366 = load double, double* %26, align 8, !dbg !2945
  %367 = fmul double %366, 1.000000e+50, !dbg !2945
  call void @fMulHandler(double %366, double 1.000000e+50, double %367, i64 94334765552168, i64 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @15, i32 0, i32 0), i64 94334765552576, i32 333, i32 12), !dbg !2945
  store double %367, double* %26, align 8, !dbg !2945
  %368 = load double, double* %28, align 8, !dbg !2946
  %369 = fmul double %368, 1.000000e+50, !dbg !2946
  call void @fMulHandler(double %368, double 1.000000e+50, double %369, i64 94334765554360, i64 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @15, i32 0, i32 0), i64 94334765554768, i32 334, i32 12), !dbg !2946
  store double %369, double* %28, align 8, !dbg !2946
  %370 = load double, double* %25, align 8, !dbg !2947
  %371 = fmul double %370, 1.000000e+50, !dbg !2947
  call void @fMulHandler(double %370, double 1.000000e+50, double %371, i64 94334765556552, i64 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @15, i32 0, i32 0), i64 94334765556960, i32 335, i32 12), !dbg !2947
  store double %371, double* %25, align 8, !dbg !2947
  %372 = load double, double* %27, align 8, !dbg !2948
  %373 = fmul double %372, 1.000000e+50, !dbg !2948
  call void @fMulHandler(double %372, double 1.000000e+50, double %373, i64 94334765558744, i64 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @15, i32 0, i32 0), i64 94334765559152, i32 336, i32 12), !dbg !2948
  store double %373, double* %27, align 8, !dbg !2948
  %374 = load double, double* %24, align 8, !dbg !2949
  %375 = fmul double %374, 1.000000e+50, !dbg !2949
  call void @fMulHandler(double %374, double 1.000000e+50, double %375, i64 94334765560936, i64 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @15, i32 0, i32 0), i64 94334765561344, i32 337, i32 12), !dbg !2949
  store double %375, double* %24, align 8, !dbg !2949
  br label %376, !dbg !2950

; <label>:376:                                    ; preds = %359, %354
  br label %377

; <label>:377:                                    ; preds = %376, %332
  %378 = load i32, i32* %14, align 4, !dbg !2951
  %379 = add nsw i32 %378, 1, !dbg !2951
  store i32 %379, i32* %14, align 4, !dbg !2951
  %380 = load double, double* %25, align 8, !dbg !2952
  store double %380, double* %24, align 8, !dbg !2953
  %381 = load double, double* %26, align 8, !dbg !2954
  store double %381, double* %25, align 8, !dbg !2955
  %382 = load double, double* %45, align 8, !dbg !2956
  store double %382, double* %26, align 8, !dbg !2957
  %383 = load double, double* %28, align 8, !dbg !2958
  store double %383, double* %27, align 8, !dbg !2959
  %384 = load double, double* %29, align 8, !dbg !2960
  store double %384, double* %28, align 8, !dbg !2961
  %385 = load double, double* %44, align 8, !dbg !2962
  store double %385, double* %29, align 8, !dbg !2963
  br label %124, !dbg !2964, !llvm.loop !2966

; <label>:386:                                    ; preds = %321
  %387 = load double, double* %22, align 8, !dbg !2967
  %388 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %10, align 8, !dbg !2968
  %389 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %388, i32 0, i32 0, !dbg !2969
  store double %387, double* %389, align 8, !dbg !2970
  %390 = load double, double* %23, align 8, !dbg !2971
  %391 = load double, double* %22, align 8, !dbg !2972
  %392 = fmul double %390, %391, !dbg !2973
  call void @fMulHandler(double %390, double %391, double %392, i64 94334765572680, i64 94334765573064, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @15, i32 0, i32 0), i64 94334765573472, i32 350, i32 34), !dbg !2974
  %393 = call double @fabs(double %392) #1, !dbg !2974
  %394 = fmul double 2.000000e+00, %393, !dbg !2975
  call void @fMulHandler(double 2.000000e+00, double %393, double %394, i64 0, i64 94334765573952, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @15, i32 0, i32 0), i64 94334765574464, i32 350, i32 22), !dbg !2976
  %395 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %10, align 8, !dbg !2976
  %396 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %395, i32 0, i32 1, !dbg !2977
  store double %394, double* %396, align 8, !dbg !2978
  %397 = load i32, i32* %14, align 4, !dbg !2979
  %398 = sitofp i32 %397 to double, !dbg !2979
  %399 = fadd double %398, 1.000000e+00, !dbg !2980
  call void @fAddHandler(double %398, double 1.000000e+00, double %399, i64 94334765576456, i64 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @15, i32 0, i32 0), i64 94334765578160, i32 351, i32 44), !dbg !2981
  %400 = fmul double 0x3CC0000000000000, %399, !dbg !2981
  call void @fMulHandler(double 0x3CC0000000000000, double %399, double %400, i64 0, i64 94334765578160, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @15, i32 0, i32 0), i64 94334765578544, i32 351, i32 40), !dbg !2982
  %401 = load double, double* %22, align 8, !dbg !2982
  %402 = call double @fabs(double %401) #1, !dbg !2983
  %403 = fmul double %400, %402, !dbg !2984
  call void @fMulHandler(double %400, double %402, double %403, i64 94334765578544, i64 94334765579408, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @15, i32 0, i32 0), i64 94334765579888, i32 351, i32 50), !dbg !2985
  %404 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %10, align 8, !dbg !2985
  %405 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %404, i32 0, i32 1, !dbg !2986
  %406 = load double, double* %405, align 8, !dbg !2987
  %407 = fadd double %406, %403, !dbg !2987
  call void @fAddHandler(double %406, double %403, double %407, i64 94334765581112, i64 94334765579888, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @15, i32 0, i32 0), i64 94334765581520, i32 351, i32 15), !dbg !2987
  store double %407, double* %405, align 8, !dbg !2987
  %408 = load double, double* %6, align 8, !dbg !2988
  %409 = call double @fabs(double %408) #1, !dbg !2989
  %410 = load double, double* %7, align 8, !dbg !2990
  %411 = call double @fabs(double %410) #1, !dbg !2991
  %412 = fadd double %409, %411, !dbg !2992
  call void @fAddHandler(double %409, double %411, double %412, i64 94334765583776, i64 94334765584704, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @15, i32 0, i32 0), i64 94334765585184, i32 354, i32 34), !dbg !2993
  %413 = fadd double %412, 1.000000e+00, !dbg !2993
  call void @fAddHandler(double %412, double 1.000000e+00, double %413, i64 94334765585184, i64 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @15, i32 0, i32 0), i64 94334765585632, i32 354, i32 45), !dbg !2994
  %414 = fmul double 8.000000e+00, %413, !dbg !2994
  call void @fMulHandler(double 8.000000e+00, double %413, double %414, i64 0, i64 94334765585632, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @15, i32 0, i32 0), i64 94334765586048, i32 354, i32 22), !dbg !2995
  %415 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %10, align 8, !dbg !2995
  %416 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %415, i32 0, i32 1, !dbg !2996
  %417 = load double, double* %416, align 8, !dbg !2997
  %418 = fmul double %417, %414, !dbg !2997
  call void @fMulHandler(double %417, double %414, double %418, i64 94334765587240, i64 94334765586048, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @15, i32 0, i32 0), i64 94334765587648, i32 354, i32 15), !dbg !2997
  store double %418, double* %416, align 8, !dbg !2997
  %419 = load i32, i32* %14, align 4, !dbg !2998
  %420 = icmp sge i32 %419, 10000, !dbg !2999
  %421 = sext i32 %419 to i64, !dbg !2998
  %422 = call i1 @iCmpInstHandler(i64 %421, i64 10000, i1 %420, i32 39, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @15, i32 0, i32 0), i64 94334765589840, i32 356, i32 18), !dbg !2998
  %423 = select i1 %422, i32 11, i32 0, !dbg !2998
  store i32 %423, i32* %11, align 4, !dbg !3000
  %424 = load i32, i32* %11, align 4, !dbg !3001
  ret i32 %424, !dbg !3002
}

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_hyperg_2F1_renorm_e(double, double, double, double, %struct.gsl_sf_result_struct*) #0 !dbg !3003 {
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca %struct.gsl_sf_result_struct*, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.gsl_sf_result_struct, align 8
  %19 = alloca %struct.gsl_sf_result_struct, align 8
  %20 = alloca %struct.gsl_sf_result_struct, align 8
  %21 = alloca %struct.gsl_sf_result_struct, align 8
  %22 = alloca %struct.gsl_sf_result_struct, align 8
  %23 = alloca double, align 8
  %24 = alloca double, align 8
  %25 = alloca double, align 8
  %26 = alloca double, align 8
  %27 = alloca double, align 8
  %28 = alloca i32, align 4
  %29 = alloca %struct.gsl_sf_result_struct, align 8
  %30 = alloca i32, align 4
  %31 = alloca double, align 8
  %32 = alloca double, align 8
  %33 = alloca double, align 8
  %34 = alloca i32, align 4
  %35 = alloca %struct.gsl_sf_result_struct, align 8
  %36 = alloca %struct.gsl_sf_result_struct, align 8
  %37 = alloca double, align 8
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  store double %0, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !3004, metadata !61), !dbg !3005
  store double %1, double* %8, align 8
  call void @llvm.dbg.declare(metadata double* %8, metadata !3006, metadata !61), !dbg !3007
  store double %2, double* %9, align 8
  call void @llvm.dbg.declare(metadata double* %9, metadata !3008, metadata !61), !dbg !3009
  store double %3, double* %10, align 8
  call void @llvm.dbg.declare(metadata double* %10, metadata !3010, metadata !61), !dbg !3011
  store %struct.gsl_sf_result_struct* %4, %struct.gsl_sf_result_struct** %11, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %11, metadata !3012, metadata !61), !dbg !3013
  call void @llvm.dbg.declare(metadata double* %12, metadata !3014, metadata !61), !dbg !3015
  %41 = load double, double* %7, align 8, !dbg !3016
  %42 = fadd double %41, 5.000000e-01, !dbg !3017
  call void @fAddHandler(double %41, double 5.000000e-01, double %42, i64 94334765601208, i64 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @17, i32 0, i32 0), i64 94334765601616, i32 828, i32 32), !dbg !3018
  %43 = call double @floor(double %42) #1, !dbg !3018
  store double %43, double* %12, align 8, !dbg !3015
  call void @llvm.dbg.declare(metadata double* %13, metadata !3019, metadata !61), !dbg !3020
  %44 = load double, double* %8, align 8, !dbg !3021
  %45 = fadd double %44, 5.000000e-01, !dbg !3022
  call void @fAddHandler(double %44, double 5.000000e-01, double %45, i64 94334765605320, i64 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @17, i32 0, i32 0), i64 94334765605728, i32 829, i32 32), !dbg !3023
  %46 = call double @floor(double %45) #1, !dbg !3023
  store double %46, double* %13, align 8, !dbg !3020
  call void @llvm.dbg.declare(metadata double* %14, metadata !3024, metadata !61), !dbg !3025
  %47 = load double, double* %9, align 8, !dbg !3026
  %48 = fadd double %47, 5.000000e-01, !dbg !3027
  call void @fAddHandler(double %47, double 5.000000e-01, double %48, i64 94334765609432, i64 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @17, i32 0, i32 0), i64 94334765609840, i32 830, i32 32), !dbg !3028
  %49 = call double @floor(double %48) #1, !dbg !3028
  store double %49, double* %14, align 8, !dbg !3025
  call void @llvm.dbg.declare(metadata i32* %15, metadata !3029, metadata !61), !dbg !3030
  %50 = load double, double* %7, align 8, !dbg !3031
  %51 = fcmp olt double %50, 0.000000e+00, !dbg !3032
  %52 = call i1 @fCmpInstHandler(double %50, double 0.000000e+00, i1 %51, i32 4, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @17, i32 0, i32 0), i64 94334765613920, i32 831, i32 33), !dbg !3033
  br i1 %52, label %53, label %59, !dbg !3033

; <label>:53:                                     ; preds = %5
  %54 = load double, double* %7, align 8, !dbg !3034
  %55 = load double, double* %12, align 8, !dbg !3036
  %56 = fsub double %54, %55, !dbg !3037
  call void @fSubHandler(double %54, double %55, double %56, i64 94334765615032, i64 94334765615352, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @17, i32 0, i32 0), i64 94334765615760, i32 831, i32 51), !dbg !3038
  %57 = call double @fabs(double %56) #1, !dbg !3038
  %58 = fcmp olt double %57, 0x3D4F400000000000, !dbg !3039
  br label %59

; <label>:59:                                     ; preds = %53, %5
  %60 = phi i1 [ false, %5 ], [ %58, %53 ]
  %61 = zext i1 %60 to i32, !dbg !3040
  store i32 %61, i32* %15, align 4, !dbg !3042
  call void @llvm.dbg.declare(metadata i32* %16, metadata !3043, metadata !61), !dbg !3044
  %62 = load double, double* %8, align 8, !dbg !3045
  %63 = fcmp olt double %62, 0.000000e+00, !dbg !3046
  %64 = call i1 @fCmpInstHandler(double %62, double 0.000000e+00, i1 %63, i32 4, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @17, i32 0, i32 0), i64 94334765619616, i32 832, i32 33), !dbg !3047
  br i1 %64, label %65, label %71, !dbg !3047

; <label>:65:                                     ; preds = %59
  %66 = load double, double* %8, align 8, !dbg !3048
  %67 = load double, double* %13, align 8, !dbg !3049
  %68 = fsub double %66, %67, !dbg !3050
  call void @fSubHandler(double %66, double %67, double %68, i64 94334765620728, i64 94334765621048, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @17, i32 0, i32 0), i64 94334765621456, i32 832, i32 51), !dbg !3051
  %69 = call double @fabs(double %68) #1, !dbg !3051
  %70 = fcmp olt double %69, 0x3D4F400000000000, !dbg !3052
  br label %71

; <label>:71:                                     ; preds = %65, %59
  %72 = phi i1 [ false, %59 ], [ %70, %65 ]
  %73 = zext i1 %72 to i32, !dbg !3053
  store i32 %73, i32* %16, align 4, !dbg !3054
  call void @llvm.dbg.declare(metadata i32* %17, metadata !3055, metadata !61), !dbg !3056
  %74 = load double, double* %9, align 8, !dbg !3057
  %75 = fcmp olt double %74, 0.000000e+00, !dbg !3058
  %76 = call i1 @fCmpInstHandler(double %74, double 0.000000e+00, i1 %75, i32 4, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @17, i32 0, i32 0), i64 94334765625312, i32 833, i32 33), !dbg !3059
  br i1 %76, label %77, label %83, !dbg !3059

; <label>:77:                                     ; preds = %71
  %78 = load double, double* %9, align 8, !dbg !3060
  %79 = load double, double* %14, align 8, !dbg !3061
  %80 = fsub double %78, %79, !dbg !3062
  call void @fSubHandler(double %78, double %79, double %80, i64 94334765626424, i64 94334765626744, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @17, i32 0, i32 0), i64 94334765627152, i32 833, i32 51), !dbg !3063
  %81 = call double @fabs(double %80) #1, !dbg !3063
  %82 = fcmp olt double %81, 0x3D4F400000000000, !dbg !3064
  br label %83

; <label>:83:                                     ; preds = %77, %71
  %84 = phi i1 [ false, %71 ], [ %82, %77 ]
  %85 = zext i1 %84 to i32, !dbg !3065
  store i32 %85, i32* %17, align 4, !dbg !3066
  %86 = load i32, i32* %17, align 4, !dbg !3067
  %87 = icmp ne i32 %86, 0, !dbg !3067
  %88 = sext i32 %86 to i64, !dbg !3069
  %89 = call i1 @iCmpInstHandler(i64 %88, i64 0, i1 %87, i32 33, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @17, i32 0, i32 0), i64 94334765629920, i32 835, i32 6), !dbg !3069
  br i1 %89, label %90, label %240, !dbg !3069

; <label>:90:                                     ; preds = %83
  %91 = load i32, i32* %15, align 4, !dbg !3070
  %92 = icmp ne i32 %91, 0, !dbg !3070
  %93 = sext i32 %91 to i64, !dbg !3073
  %94 = call i1 @iCmpInstHandler(i64 %93, i64 0, i1 %92, i32 33, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @17, i32 0, i32 0), i64 94334765632640, i32 836, i32 9), !dbg !3073
  br i1 %94, label %95, label %101, !dbg !3073

; <label>:95:                                     ; preds = %90
  %96 = load double, double* %7, align 8, !dbg !3074
  %97 = load double, double* %9, align 8, !dbg !3076
  %98 = fadd double %97, 1.000000e-01, !dbg !3077
  call void @fAddHandler(double %97, double 1.000000e-01, double %98, i64 94334765635336, i64 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @17, i32 0, i32 0), i64 94334765635776, i32 836, i32 31), !dbg !3078
  %99 = fcmp ogt double %96, %98, !dbg !3078
  %100 = call i1 @fCmpInstHandler(double %96, double %98, i1 %99, i32 2, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @17, i32 0, i32 0), i64 94334765636160, i32 836, i32 28), !dbg !3079
  br i1 %100, label %112, label %101, !dbg !3079

; <label>:101:                                    ; preds = %95, %90
  %102 = load i32, i32* %16, align 4, !dbg !3080
  %103 = icmp ne i32 %102, 0, !dbg !3080
  %104 = sext i32 %102 to i64, !dbg !3082
  %105 = call i1 @iCmpInstHandler(i64 %104, i64 0, i1 %103, i32 33, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @17, i32 0, i32 0), i64 94334765637472, i32 836, i32 41), !dbg !3082
  br i1 %105, label %106, label %117, !dbg !3082

; <label>:106:                                    ; preds = %101
  %107 = load double, double* %8, align 8, !dbg !3083
  %108 = load double, double* %9, align 8, !dbg !3085
  %109 = fadd double %108, 1.000000e-01, !dbg !3086
  call void @fAddHandler(double %108, double 1.000000e-01, double %109, i64 94334765640168, i64 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @17, i32 0, i32 0), i64 94334765640608, i32 836, i32 63), !dbg !3087
  %110 = fcmp ogt double %107, %109, !dbg !3087
  %111 = call i1 @fCmpInstHandler(double %107, double %109, i1 %110, i32 2, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @17, i32 0, i32 0), i64 94334765640992, i32 836, i32 60), !dbg !3088
  br i1 %111, label %112, label %117, !dbg !3088

; <label>:112:                                    ; preds = %106, %95
  %113 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !3089
  %114 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %113, i32 0, i32 0, !dbg !3091
  store double 0.000000e+00, double* %114, align 8, !dbg !3092
  %115 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !3093
  %116 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %115, i32 0, i32 1, !dbg !3094
  store double 0.000000e+00, double* %116, align 8, !dbg !3095
  store i32 0, i32* %6, align 4, !dbg !3096
  br label %288, !dbg !3096

; <label>:117:                                    ; preds = %106, %101
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %18, metadata !3097, metadata !61), !dbg !3099
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %19, metadata !3100, metadata !61), !dbg !3101
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %20, metadata !3102, metadata !61), !dbg !3103
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %21, metadata !3104, metadata !61), !dbg !3105
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %22, metadata !3106, metadata !61), !dbg !3107
  call void @llvm.dbg.declare(metadata double* %23, metadata !3108, metadata !61), !dbg !3109
  call void @llvm.dbg.declare(metadata double* %24, metadata !3110, metadata !61), !dbg !3111
  call void @llvm.dbg.declare(metadata double* %25, metadata !3112, metadata !61), !dbg !3113
  call void @llvm.dbg.declare(metadata double* %26, metadata !3114, metadata !61), !dbg !3115
  call void @llvm.dbg.declare(metadata double* %27, metadata !3116, metadata !61), !dbg !3117
  call void @llvm.dbg.declare(metadata i32* %28, metadata !3118, metadata !61), !dbg !3119
  store i32 0, i32* %28, align 4, !dbg !3119
  %118 = load double, double* %7, align 8, !dbg !3120
  %119 = load double, double* %9, align 8, !dbg !3121
  %120 = fsub double %118, %119, !dbg !3122
  call void @fSubHandler(double %118, double %119, double %120, i64 94334765660072, i64 94334765660424, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @17, i32 0, i32 0), i64 94334765660832, i32 848, i32 37), !dbg !3123
  %121 = fadd double %120, 1.000000e+00, !dbg !3123
  call void @fAddHandler(double %120, double 1.000000e+00, double %121, i64 94334765660832, i64 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @17, i32 0, i32 0), i64 94334765661280, i32 848, i32 39), !dbg !3124
  %122 = call i32 @gsl_sf_lngamma_sgn_e(double %121, %struct.gsl_sf_result_struct* %18, double* %23), !dbg !3124
  %123 = load i32, i32* %28, align 4, !dbg !3125
  %124 = add nsw i32 %123, %122, !dbg !3125
  store i32 %124, i32* %28, align 4, !dbg !3125
  %125 = load double, double* %8, align 8, !dbg !3126
  %126 = load double, double* %9, align 8, !dbg !3127
  %127 = fsub double %125, %126, !dbg !3128
  call void @fSubHandler(double %125, double %126, double %127, i64 94334765664392, i64 94334765664776, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @17, i32 0, i32 0), i64 94334765665184, i32 849, i32 37), !dbg !3129
  %128 = fadd double %127, 1.000000e+00, !dbg !3129
  call void @fAddHandler(double %127, double 1.000000e+00, double %128, i64 94334765665184, i64 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @17, i32 0, i32 0), i64 94334765665632, i32 849, i32 39), !dbg !3130
  %129 = call i32 @gsl_sf_lngamma_sgn_e(double %128, %struct.gsl_sf_result_struct* %19, double* %24), !dbg !3130
  %130 = load i32, i32* %28, align 4, !dbg !3131
  %131 = add nsw i32 %130, %129, !dbg !3131
  store i32 %131, i32* %28, align 4, !dbg !3131
  %132 = load double, double* %7, align 8, !dbg !3132
  %133 = call i32 @gsl_sf_lngamma_sgn_e(double %132, %struct.gsl_sf_result_struct* %20, double* %25), !dbg !3133
  %134 = load i32, i32* %28, align 4, !dbg !3134
  %135 = add nsw i32 %134, %133, !dbg !3134
  store i32 %135, i32* %28, align 4, !dbg !3134
  %136 = load double, double* %8, align 8, !dbg !3135
  %137 = call i32 @gsl_sf_lngamma_sgn_e(double %136, %struct.gsl_sf_result_struct* %21, double* %26), !dbg !3136
  %138 = load i32, i32* %28, align 4, !dbg !3137
  %139 = add nsw i32 %138, %137, !dbg !3137
  store i32 %139, i32* %28, align 4, !dbg !3137
  %140 = load double, double* %9, align 8, !dbg !3138
  %141 = fsub double -0.000000e+00, %140, !dbg !3139
  call void @fSubHandler(double -0.000000e+00, double %140, double %141, i64 0, i64 94334765677080, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @17, i32 0, i32 0), i64 94334765677488, i32 852, i32 36), !dbg !3140
  %142 = fadd double %141, 2.000000e+00, !dbg !3140
  call void @fAddHandler(double %141, double 2.000000e+00, double %142, i64 94334765677488, i64 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @17, i32 0, i32 0), i64 94334765677936, i32 852, i32 38), !dbg !3141
  %143 = call i32 @gsl_sf_lngamma_sgn_e(double %142, %struct.gsl_sf_result_struct* %22, double* %27), !dbg !3141
  %144 = load i32, i32* %28, align 4, !dbg !3142
  %145 = add nsw i32 %144, %143, !dbg !3142
  store i32 %145, i32* %28, align 4, !dbg !3142
  %146 = load i32, i32* %28, align 4, !dbg !3143
  %147 = icmp ne i32 %146, 0, !dbg !3145
  %148 = sext i32 %146 to i64, !dbg !3146
  %149 = call i1 @iCmpInstHandler(i64 %148, i64 0, i1 %147, i32 33, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @17, i32 0, i32 0), i64 94334765681456, i32 853, i32 15), !dbg !3146
  br i1 %149, label %150, label %159, !dbg !3146

; <label>:150:                                    ; preds = %117
  br label %151, !dbg !3147, !llvm.loop !3149

; <label>:151:                                    ; preds = %150
  %152 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !3150
  %153 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %152, i32 0, i32 0, !dbg !3150
  store double 0x7FF8000000000000, double* %153, align 8, !dbg !3150
  %154 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !3150
  %155 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %154, i32 0, i32 1, !dbg !3150
  store double 0x7FF8000000000000, double* %155, align 8, !dbg !3150
  br label %156, !dbg !3150, !llvm.loop !3153

; <label>:156:                                    ; preds = %151
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 854, i32 1), !dbg !3155
  store i32 1, i32* %6, align 4, !dbg !3155
  br label %288, !dbg !3155
                                                  ; No predecessors!
  br label %158, !dbg !3158

; <label>:158:                                    ; preds = %157
  br label %238, !dbg !3160

; <label>:159:                                    ; preds = %117
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %29, metadata !3161, metadata !61), !dbg !3163
  call void @llvm.dbg.declare(metadata i32* %30, metadata !3164, metadata !61), !dbg !3165
  %160 = load double, double* %7, align 8, !dbg !3166
  %161 = load double, double* %9, align 8, !dbg !3167
  %162 = fsub double %160, %161, !dbg !3168
  call void @fSubHandler(double %160, double %161, double %162, i64 94334765691960, i64 94334765692312, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @17, i32 0, i32 0), i64 94334765692720, i32 858, i32 43), !dbg !3169
  %163 = fadd double %162, 1.000000e+00, !dbg !3169
  call void @fAddHandler(double %162, double 1.000000e+00, double %163, i64 94334765692720, i64 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @17, i32 0, i32 0), i64 94334765693168, i32 858, i32 45), !dbg !3170
  %164 = load double, double* %8, align 8, !dbg !3170
  %165 = load double, double* %9, align 8, !dbg !3171
  %166 = fsub double %164, %165, !dbg !3172
  call void @fSubHandler(double %164, double %165, double %166, i64 94334765693528, i64 94334765693912, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @17, i32 0, i32 0), i64 94334765694320, i32 858, i32 50), !dbg !3173
  %167 = fadd double %166, 1.000000e+00, !dbg !3173
  call void @fAddHandler(double %166, double 1.000000e+00, double %167, i64 94334765694320, i64 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @17, i32 0, i32 0), i64 94334765694768, i32 858, i32 52), !dbg !3174
  %168 = load double, double* %9, align 8, !dbg !3174
  %169 = fsub double -0.000000e+00, %168, !dbg !3175
  call void @fSubHandler(double -0.000000e+00, double %168, double %169, i64 0, i64 94334765695128, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @17, i32 0, i32 0), i64 94334765695536, i32 858, i32 56), !dbg !3176
  %170 = fadd double %169, 2.000000e+00, !dbg !3176
  call void @fAddHandler(double %169, double 2.000000e+00, double %170, i64 94334765695536, i64 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @17, i32 0, i32 0), i64 94334765695984, i32 858, i32 58), !dbg !3177
  %171 = load double, double* %10, align 8, !dbg !3177
  %172 = call i32 @gsl_sf_hyperg_2F1_e(double %163, double %167, double %170, double %171, %struct.gsl_sf_result_struct* %29), !dbg !3178
  store i32 %172, i32* %30, align 4, !dbg !3165
  call void @llvm.dbg.declare(metadata double* %31, metadata !3179, metadata !61), !dbg !3180
  %173 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %18, i32 0, i32 0, !dbg !3181
  %174 = load double, double* %173, align 8, !dbg !3181
  %175 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %19, i32 0, i32 0, !dbg !3182
  %176 = load double, double* %175, align 8, !dbg !3182
  %177 = fadd double %174, %176, !dbg !3183
  call void @fAddHandler(double %174, double %176, double %177, i64 94334765700552, i64 94334765702648, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @17, i32 0, i32 0), i64 94334765704320, i32 859, i32 36), !dbg !3184
  %178 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %20, i32 0, i32 0, !dbg !3184
  %179 = load double, double* %178, align 8, !dbg !3184
  %180 = fsub double %177, %179, !dbg !3185
  call void @fSubHandler(double %177, double %179, double %180, i64 94334765704320, i64 94334765705160, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @17, i32 0, i32 0), i64 94334765706832, i32 859, i32 45), !dbg !3186
  %181 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %21, i32 0, i32 0, !dbg !3186
  %182 = load double, double* %181, align 8, !dbg !3186
  %183 = fsub double %180, %182, !dbg !3187
  call void @fSubHandler(double %180, double %182, double %183, i64 94334765706832, i64 94334765707672, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @17, i32 0, i32 0), i64 94334765709344, i32 859, i32 54), !dbg !3188
  %184 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %22, i32 0, i32 0, !dbg !3188
  %185 = load double, double* %184, align 8, !dbg !3188
  %186 = fsub double %183, %185, !dbg !3189
  call void @fSubHandler(double %183, double %185, double %186, i64 94334765709344, i64 94334765710184, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @17, i32 0, i32 0), i64 94334765711856, i32 859, i32 63), !dbg !3180
  store double %186, double* %31, align 8, !dbg !3180
  call void @llvm.dbg.declare(metadata double* %32, metadata !3190, metadata !61), !dbg !3191
  %187 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %18, i32 0, i32 1, !dbg !3192
  %188 = load double, double* %187, align 8, !dbg !3192
  %189 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %19, i32 0, i32 1, !dbg !3193
  %190 = load double, double* %189, align 8, !dbg !3193
  %191 = fadd double %188, %190, !dbg !3194
  call void @fAddHandler(double %188, double %190, double %191, i64 94334765715464, i64 94334765717560, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @17, i32 0, i32 0), i64 94334765719232, i32 860, i32 36), !dbg !3195
  %192 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %20, i32 0, i32 1, !dbg !3195
  %193 = load double, double* %192, align 8, !dbg !3195
  %194 = fadd double %191, %193, !dbg !3196
  call void @fAddHandler(double %191, double %193, double %194, i64 94334765719232, i64 94334765720072, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @17, i32 0, i32 0), i64 94334765721744, i32 860, i32 45), !dbg !3197
  %195 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %21, i32 0, i32 1, !dbg !3197
  %196 = load double, double* %195, align 8, !dbg !3197
  %197 = fadd double %194, %196, !dbg !3198
  call void @fAddHandler(double %194, double %196, double %197, i64 94334765721744, i64 94334765722584, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @17, i32 0, i32 0), i64 94334765724256, i32 860, i32 54), !dbg !3199
  %198 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %22, i32 0, i32 1, !dbg !3199
  %199 = load double, double* %198, align 8, !dbg !3199
  %200 = fadd double %197, %199, !dbg !3200
  call void @fAddHandler(double %197, double %199, double %200, i64 94334765724256, i64 94334765725096, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @17, i32 0, i32 0), i64 94334765726768, i32 860, i32 63), !dbg !3191
  store double %200, double* %32, align 8, !dbg !3191
  call void @llvm.dbg.declare(metadata double* %33, metadata !3201, metadata !61), !dbg !3202
  %201 = load double, double* %23, align 8, !dbg !3203
  %202 = load double, double* %24, align 8, !dbg !3204
  %203 = fmul double %201, %202, !dbg !3205
  call void @fMulHandler(double %201, double %202, double %203, i64 94334765729960, i64 94334765730312, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @17, i32 0, i32 0), i64 94334765730720, i32 861, i32 25), !dbg !3206
  %204 = load double, double* %25, align 8, !dbg !3206
  %205 = fmul double %203, %204, !dbg !3207
  call void @fMulHandler(double %203, double %204, double %205, i64 94334765730720, i64 94334765731112, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @17, i32 0, i32 0), i64 94334765731520, i32 861, i32 30), !dbg !3208
  %206 = load double, double* %26, align 8, !dbg !3208
  %207 = fmul double %205, %206, !dbg !3209
  call void @fMulHandler(double %205, double %206, double %207, i64 94334765731520, i64 94334765731912, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @17, i32 0, i32 0), i64 94334765732320, i32 861, i32 35), !dbg !3210
  %208 = load double, double* %27, align 8, !dbg !3210
  %209 = fmul double %207, %208, !dbg !3211
  call void @fMulHandler(double %207, double %208, double %209, i64 94334765732320, i64 94334765732712, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @17, i32 0, i32 0), i64 94334765733120, i32 861, i32 40), !dbg !3202
  store double %209, double* %33, align 8, !dbg !3202
  call void @llvm.dbg.declare(metadata i32* %34, metadata !3212, metadata !61), !dbg !3213
  %210 = load double, double* %31, align 8, !dbg !3214
  %211 = load double, double* %32, align 8, !dbg !3215
  %212 = load double, double* %33, align 8, !dbg !3216
  %213 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %29, i32 0, i32 0, !dbg !3217
  %214 = load double, double* %213, align 8, !dbg !3217
  %215 = fmul double %212, %214, !dbg !3218
  call void @fMulHandler(double %212, double %214, double %215, i64 94334765737048, i64 94334765737880, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @17, i32 0, i32 0), i64 94334765739552, i32 863, i32 50), !dbg !3219
  %216 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %29, i32 0, i32 1, !dbg !3219
  %217 = load double, double* %216, align 8, !dbg !3219
  %218 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !3220
  %219 = call i32 @gsl_sf_exp_mult_err_e(double %210, double %211, double %215, double %217, %struct.gsl_sf_result_struct* %218), !dbg !3221
  store i32 %219, i32* %34, align 4, !dbg !3213
  %220 = load i32, i32* %34, align 4, !dbg !3222
  %221 = icmp ne i32 %220, 0, !dbg !3222
  %222 = sext i32 %220 to i64, !dbg !3222
  %223 = call i1 @iCmpInstHandler(i64 %222, i64 0, i1 %221, i32 33, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @17, i32 0, i32 0), i64 94334765745120, i32 865, i32 16), !dbg !3222
  br i1 %223, label %224, label %226, !dbg !3222

; <label>:224:                                    ; preds = %159
  %225 = load i32, i32* %34, align 4, !dbg !3223
  br label %236, !dbg !3223

; <label>:226:                                    ; preds = %159
  %227 = load i32, i32* %30, align 4, !dbg !3225
  %228 = icmp ne i32 %227, 0, !dbg !3225
  %229 = sext i32 %227 to i64, !dbg !3225
  %230 = call i1 @iCmpInstHandler(i64 %229, i64 0, i1 %228, i32 33, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @17, i32 0, i32 0), i64 94334765749664, i32 865, i32 16), !dbg !3225
  br i1 %230, label %231, label %233, !dbg !3225

; <label>:231:                                    ; preds = %226
  %232 = load i32, i32* %30, align 4, !dbg !3227
  br label %234, !dbg !3227

; <label>:233:                                    ; preds = %226
  br label %234, !dbg !3229

; <label>:234:                                    ; preds = %233, %231
  %235 = phi i32 [ %232, %231 ], [ 0, %233 ], !dbg !3231
  br label %236, !dbg !3231

; <label>:236:                                    ; preds = %234, %224
  %237 = phi i32 [ %225, %224 ], [ %235, %234 ], !dbg !3233
  store i32 %237, i32* %6, align 4, !dbg !3235
  br label %288, !dbg !3235

; <label>:238:                                    ; preds = %158
  br label %239

; <label>:239:                                    ; preds = %238
  br label %288, !dbg !3236

; <label>:240:                                    ; preds = %83
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %35, metadata !3237, metadata !61), !dbg !3239
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %36, metadata !3240, metadata !61), !dbg !3241
  call void @llvm.dbg.declare(metadata double* %37, metadata !3242, metadata !61), !dbg !3243
  call void @llvm.dbg.declare(metadata i32* %38, metadata !3244, metadata !61), !dbg !3245
  %241 = load double, double* %9, align 8, !dbg !3246
  %242 = call i32 @gsl_sf_lngamma_sgn_e(double %241, %struct.gsl_sf_result_struct* %36, double* %37), !dbg !3247
  store i32 %242, i32* %38, align 4, !dbg !3245
  call void @llvm.dbg.declare(metadata i32* %39, metadata !3248, metadata !61), !dbg !3249
  %243 = load double, double* %7, align 8, !dbg !3250
  %244 = load double, double* %8, align 8, !dbg !3251
  %245 = load double, double* %9, align 8, !dbg !3252
  %246 = load double, double* %10, align 8, !dbg !3253
  %247 = call i32 @gsl_sf_hyperg_2F1_e(double %243, double %244, double %245, double %246, %struct.gsl_sf_result_struct* %35), !dbg !3254
  store i32 %247, i32* %39, align 4, !dbg !3249
  call void @llvm.dbg.declare(metadata i32* %40, metadata !3255, metadata !61), !dbg !3256
  %248 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %36, i32 0, i32 0, !dbg !3257
  %249 = load double, double* %248, align 8, !dbg !3257
  %250 = fsub double -0.000000e+00, %249, !dbg !3258
  call void @fSubHandler(double -0.000000e+00, double %249, double %250, i64 0, i64 94334765772552, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @17, i32 0, i32 0), i64 94334765774224, i32 876, i32 40), !dbg !3259
  %251 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %36, i32 0, i32 1, !dbg !3259
  %252 = load double, double* %251, align 8, !dbg !3259
  %253 = load double, double* %37, align 8, !dbg !3260
  %254 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %35, i32 0, i32 0, !dbg !3261
  %255 = load double, double* %254, align 8, !dbg !3261
  %256 = fmul double %253, %255, !dbg !3262
  call void @fMulHandler(double %253, double %255, double %256, i64 94334765776712, i64 94334765777544, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @17, i32 0, i32 0), i64 94334765779216, i32 877, i32 46), !dbg !3263
  %257 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %35, i32 0, i32 1, !dbg !3263
  %258 = load double, double* %257, align 8, !dbg !3263
  %259 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !3264
  %260 = call i32 @gsl_sf_exp_mult_err_e(double %250, double %252, double %256, double %258, %struct.gsl_sf_result_struct* %259), !dbg !3265
  store i32 %260, i32* %40, align 4, !dbg !3256
  %261 = load i32, i32* %40, align 4, !dbg !3266
  %262 = icmp ne i32 %261, 0, !dbg !3266
  %263 = sext i32 %261 to i64, !dbg !3266
  %264 = call i1 @iCmpInstHandler(i64 %263, i64 0, i1 %262, i32 33, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @17, i32 0, i32 0), i64 94334765784784, i32 879, i32 12), !dbg !3266
  br i1 %264, label %265, label %267, !dbg !3266

; <label>:265:                                    ; preds = %240
  %266 = load i32, i32* %40, align 4, !dbg !3267
  br label %286, !dbg !3267

; <label>:267:                                    ; preds = %240
  %268 = load i32, i32* %39, align 4, !dbg !3269
  %269 = icmp ne i32 %268, 0, !dbg !3269
  %270 = sext i32 %268 to i64, !dbg !3269
  %271 = call i1 @iCmpInstHandler(i64 %270, i64 0, i1 %269, i32 33, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @17, i32 0, i32 0), i64 94334765789328, i32 879, i32 12), !dbg !3269
  br i1 %271, label %272, label %274, !dbg !3269

; <label>:272:                                    ; preds = %267
  %273 = load i32, i32* %39, align 4, !dbg !3271
  br label %284, !dbg !3271

; <label>:274:                                    ; preds = %267
  %275 = load i32, i32* %38, align 4, !dbg !3273
  %276 = icmp ne i32 %275, 0, !dbg !3273
  %277 = sext i32 %275 to i64, !dbg !3273
  %278 = call i1 @iCmpInstHandler(i64 %277, i64 0, i1 %276, i32 33, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @17, i32 0, i32 0), i64 94334765793872, i32 879, i32 12), !dbg !3273
  br i1 %278, label %279, label %281, !dbg !3273

; <label>:279:                                    ; preds = %274
  %280 = load i32, i32* %38, align 4, !dbg !3275
  br label %282, !dbg !3275

; <label>:281:                                    ; preds = %274
  br label %282, !dbg !3277

; <label>:282:                                    ; preds = %281, %279
  %283 = phi i32 [ %280, %279 ], [ 0, %281 ], !dbg !3279
  br label %284, !dbg !3279

; <label>:284:                                    ; preds = %282, %272
  %285 = phi i32 [ %273, %272 ], [ %283, %282 ], !dbg !3281
  br label %286, !dbg !3281

; <label>:286:                                    ; preds = %284, %265
  %287 = phi i32 [ %266, %265 ], [ %285, %284 ], !dbg !3283
  store i32 %287, i32* %6, align 4, !dbg !3285
  br label %288, !dbg !3285

; <label>:288:                                    ; preds = %286, %239, %236, %156, %112
  %289 = load i32, i32* %6, align 4, !dbg !3286
  ret i32 %289, !dbg !3286
}

declare i32 @gsl_sf_exp_mult_err_e(double, double, double, double, %struct.gsl_sf_result_struct*) #3

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_hyperg_2F1_conj_renorm_e(double, double, double, double, %struct.gsl_sf_result_struct*) #0 !dbg !3287 {
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca %struct.gsl_sf_result_struct*, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.gsl_sf_result_struct, align 8
  %17 = alloca %struct.gsl_sf_result_struct, align 8
  %18 = alloca %struct.gsl_sf_result_struct, align 8
  %19 = alloca %struct.gsl_sf_result_struct, align 8
  %20 = alloca %struct.gsl_sf_result_struct, align 8
  %21 = alloca i32, align 4
  %22 = alloca %struct.gsl_sf_result_struct, align 8
  %23 = alloca i32, align 4
  %24 = alloca double, align 8
  %25 = alloca double, align 8
  %26 = alloca i32, align 4
  %27 = alloca %struct.gsl_sf_result_struct, align 8
  %28 = alloca %struct.gsl_sf_result_struct, align 8
  %29 = alloca double, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  store double %0, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !3288, metadata !61), !dbg !3289
  store double %1, double* %8, align 8
  call void @llvm.dbg.declare(metadata double* %8, metadata !3290, metadata !61), !dbg !3291
  store double %2, double* %9, align 8
  call void @llvm.dbg.declare(metadata double* %9, metadata !3292, metadata !61), !dbg !3293
  store double %3, double* %10, align 8
  call void @llvm.dbg.declare(metadata double* %10, metadata !3294, metadata !61), !dbg !3295
  store %struct.gsl_sf_result_struct* %4, %struct.gsl_sf_result_struct** %11, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %11, metadata !3296, metadata !61), !dbg !3297
  call void @llvm.dbg.declare(metadata double* %12, metadata !3298, metadata !61), !dbg !3299
  %33 = load double, double* %9, align 8, !dbg !3300
  %34 = fadd double %33, 5.000000e-01, !dbg !3301
  call void @fAddHandler(double %33, double 5.000000e-01, double %34, i64 94334764529448, i64 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @19, i32 0, i32 0), i64 94334765816896, i32 890, i32 33), !dbg !3302
  %35 = call double @floor(double %34) #1, !dbg !3302
  store double %35, double* %12, align 8, !dbg !3299
  call void @llvm.dbg.declare(metadata double* %13, metadata !3303, metadata !61), !dbg !3304
  %36 = load double, double* %7, align 8, !dbg !3305
  %37 = fadd double %36, 5.000000e-01, !dbg !3306
  call void @fAddHandler(double %36, double 5.000000e-01, double %37, i64 94334765820600, i64 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @19, i32 0, i32 0), i64 94334765821008, i32 891, i32 33), !dbg !3307
  %38 = call double @floor(double %37) #1, !dbg !3307
  store double %38, double* %13, align 8, !dbg !3304
  call void @llvm.dbg.declare(metadata i32* %14, metadata !3308, metadata !61), !dbg !3309
  %39 = load double, double* %7, align 8, !dbg !3310
  %40 = fcmp olt double %39, 0.000000e+00, !dbg !3311
  %41 = call i1 @fCmpInstHandler(double %39, double 0.000000e+00, i1 %40, i32 4, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @19, i32 0, i32 0), i64 94334765825088, i32 892, i32 34), !dbg !3312
  br i1 %41, label %42, label %52, !dbg !3312

; <label>:42:                                     ; preds = %5
  %43 = load double, double* %7, align 8, !dbg !3313
  %44 = load double, double* %13, align 8, !dbg !3315
  %45 = fsub double %43, %44, !dbg !3316
  call void @fSubHandler(double %43, double %44, double %45, i64 94334765826200, i64 94334765826520, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @19, i32 0, i32 0), i64 94334765826928, i32 892, i32 50), !dbg !3317
  %46 = call double @fabs(double %45) #1, !dbg !3317
  %47 = fcmp olt double %46, 0x3D4F400000000000, !dbg !3318
  %48 = call i1 @fCmpInstHandler(double %46, double 0x3D4F400000000000, i1 %47, i32 4, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @19, i32 0, i32 0), i64 94334765827888, i32 892, i32 58), !dbg !3319
  br i1 %48, label %49, label %52, !dbg !3319

; <label>:49:                                     ; preds = %42
  %50 = load double, double* %8, align 8, !dbg !3320
  %51 = fcmp oeq double %50, 0.000000e+00, !dbg !3322
  br label %52

; <label>:52:                                     ; preds = %49, %42, %5
  %53 = phi i1 [ false, %42 ], [ false, %5 ], [ %51, %49 ]
  %54 = zext i1 %53 to i32, !dbg !3323
  store i32 %54, i32* %14, align 4, !dbg !3325
  call void @llvm.dbg.declare(metadata i32* %15, metadata !3326, metadata !61), !dbg !3327
  %55 = load double, double* %9, align 8, !dbg !3328
  %56 = fcmp olt double %55, 0.000000e+00, !dbg !3329
  %57 = call i1 @fCmpInstHandler(double %55, double 0.000000e+00, i1 %56, i32 4, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @19, i32 0, i32 0), i64 94334765832128, i32 893, i32 34), !dbg !3330
  br i1 %57, label %58, label %64, !dbg !3330

; <label>:58:                                     ; preds = %52
  %59 = load double, double* %9, align 8, !dbg !3331
  %60 = load double, double* %12, align 8, !dbg !3332
  %61 = fsub double %59, %60, !dbg !3333
  call void @fSubHandler(double %59, double %60, double %61, i64 94334765833240, i64 94334765833560, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @19, i32 0, i32 0), i64 94334765833968, i32 893, i32 50), !dbg !3334
  %62 = call double @fabs(double %61) #1, !dbg !3334
  %63 = fcmp olt double %62, 0x3D4F400000000000, !dbg !3335
  br label %64

; <label>:64:                                     ; preds = %58, %52
  %65 = phi i1 [ false, %52 ], [ %63, %58 ]
  %66 = zext i1 %65 to i32, !dbg !3336
  store i32 %66, i32* %15, align 4, !dbg !3337
  %67 = load i32, i32* %15, align 4, !dbg !3338
  %68 = icmp ne i32 %67, 0, !dbg !3338
  %69 = sext i32 %67 to i64, !dbg !3340
  %70 = call i1 @iCmpInstHandler(i64 %69, i64 0, i1 %68, i32 33, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @19, i32 0, i32 0), i64 94334765836736, i32 895, i32 6), !dbg !3340
  br i1 %70, label %71, label %177, !dbg !3340

; <label>:71:                                     ; preds = %64
  %72 = load i32, i32* %14, align 4, !dbg !3341
  %73 = icmp ne i32 %72, 0, !dbg !3341
  %74 = sext i32 %72 to i64, !dbg !3344
  %75 = call i1 @iCmpInstHandler(i64 %74, i64 0, i1 %73, i32 33, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @19, i32 0, i32 0), i64 94334765839456, i32 896, i32 8), !dbg !3344
  br i1 %75, label %76, label %87, !dbg !3344

; <label>:76:                                     ; preds = %71
  %77 = load double, double* %7, align 8, !dbg !3345
  %78 = load double, double* %9, align 8, !dbg !3347
  %79 = fadd double %78, 1.000000e-01, !dbg !3348
  call void @fAddHandler(double %78, double 1.000000e-01, double %79, i64 94334765842152, i64 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @19, i32 0, i32 0), i64 94334765842592, i32 896, i32 31), !dbg !3349
  %80 = fcmp ogt double %77, %79, !dbg !3349
  %81 = call i1 @fCmpInstHandler(double %77, double %79, i1 %80, i32 2, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @19, i32 0, i32 0), i64 94334765842976, i32 896, i32 28), !dbg !3350
  br i1 %81, label %82, label %87, !dbg !3350

; <label>:82:                                     ; preds = %76
  %83 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !3351
  %84 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %83, i32 0, i32 0, !dbg !3353
  store double 0.000000e+00, double* %84, align 8, !dbg !3354
  %85 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !3355
  %86 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %85, i32 0, i32 1, !dbg !3356
  store double 0.000000e+00, double* %86, align 8, !dbg !3357
  store i32 0, i32* %6, align 4, !dbg !3358
  br label %225, !dbg !3358

; <label>:87:                                     ; preds = %76, %71
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %16, metadata !3359, metadata !61), !dbg !3361
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %17, metadata !3362, metadata !61), !dbg !3363
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %18, metadata !3364, metadata !61), !dbg !3365
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %19, metadata !3366, metadata !61), !dbg !3367
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %20, metadata !3368, metadata !61), !dbg !3369
  call void @llvm.dbg.declare(metadata i32* %21, metadata !3370, metadata !61), !dbg !3371
  store i32 0, i32* %21, align 4, !dbg !3371
  %88 = load double, double* %7, align 8, !dbg !3372
  %89 = load double, double* %9, align 8, !dbg !3373
  %90 = fsub double %88, %89, !dbg !3374
  call void @fSubHandler(double %88, double %89, double %90, i64 94334765856760, i64 94334765857112, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @19, i32 0, i32 0), i64 94334765857520, i32 909, i32 42), !dbg !3375
  %91 = fadd double %90, 1.000000e+00, !dbg !3375
  call void @fAddHandler(double %90, double 1.000000e+00, double %91, i64 94334765857520, i64 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @19, i32 0, i32 0), i64 94334765857968, i32 909, i32 44), !dbg !3376
  %92 = load double, double* %8, align 8, !dbg !3376
  %93 = call i32 @gsl_sf_lngamma_complex_e(double %91, double %92, %struct.gsl_sf_result_struct* %16, %struct.gsl_sf_result_struct* %19), !dbg !3377
  %94 = load i32, i32* %21, align 4, !dbg !3378
  %95 = add nsw i32 %94, %93, !dbg !3378
  store i32 %95, i32* %21, align 4, !dbg !3378
  %96 = load double, double* %7, align 8, !dbg !3379
  %97 = load double, double* %8, align 8, !dbg !3380
  %98 = call i32 @gsl_sf_lngamma_complex_e(double %96, double %97, %struct.gsl_sf_result_struct* %17, %struct.gsl_sf_result_struct* %20), !dbg !3381
  %99 = load i32, i32* %21, align 4, !dbg !3382
  %100 = add nsw i32 %99, %98, !dbg !3382
  store i32 %100, i32* %21, align 4, !dbg !3382
  %101 = load double, double* %9, align 8, !dbg !3383
  %102 = fsub double -0.000000e+00, %101, !dbg !3384
  call void @fSubHandler(double -0.000000e+00, double %101, double %102, i64 0, i64 94334765865448, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @19, i32 0, i32 0), i64 94334765865856, i32 911, i32 32), !dbg !3385
  %103 = fadd double %102, 2.000000e+00, !dbg !3385
  call void @fAddHandler(double %102, double 2.000000e+00, double %103, i64 94334765865856, i64 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @19, i32 0, i32 0), i64 94334765866304, i32 911, i32 34), !dbg !3386
  %104 = call i32 @gsl_sf_lngamma_e(double %103, %struct.gsl_sf_result_struct* %18), !dbg !3386
  %105 = load i32, i32* %21, align 4, !dbg !3387
  %106 = add nsw i32 %105, %104, !dbg !3387
  store i32 %106, i32* %21, align 4, !dbg !3387
  %107 = load i32, i32* %21, align 4, !dbg !3388
  %108 = icmp ne i32 %107, 0, !dbg !3390
  %109 = sext i32 %107 to i64, !dbg !3391
  %110 = call i1 @iCmpInstHandler(i64 %109, i64 0, i1 %108, i32 33, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @19, i32 0, i32 0), i64 94334765869792, i32 912, i32 15), !dbg !3391
  br i1 %110, label %111, label %120, !dbg !3391

; <label>:111:                                    ; preds = %87
  br label %112, !dbg !3392, !llvm.loop !3394

; <label>:112:                                    ; preds = %111
  %113 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !3395
  %114 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %113, i32 0, i32 0, !dbg !3395
  store double 0x7FF8000000000000, double* %114, align 8, !dbg !3395
  %115 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !3395
  %116 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %115, i32 0, i32 1, !dbg !3395
  store double 0x7FF8000000000000, double* %116, align 8, !dbg !3395
  br label %117, !dbg !3395, !llvm.loop !3398

; <label>:117:                                    ; preds = %112
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 913, i32 1), !dbg !3400
  store i32 1, i32* %6, align 4, !dbg !3400
  br label %225, !dbg !3400
                                                  ; No predecessors!
  br label %119, !dbg !3403

; <label>:119:                                    ; preds = %118
  br label %175, !dbg !3405

; <label>:120:                                    ; preds = %87
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %22, metadata !3406, metadata !61), !dbg !3408
  call void @llvm.dbg.declare(metadata i32* %23, metadata !3409, metadata !61), !dbg !3410
  %121 = load double, double* %7, align 8, !dbg !3411
  %122 = load double, double* %9, align 8, !dbg !3412
  %123 = fsub double %121, %122, !dbg !3413
  call void @fSubHandler(double %121, double %122, double %123, i64 94334765880296, i64 94334765880648, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @19, i32 0, i32 0), i64 94334765881056, i32 917, i32 49), !dbg !3414
  %124 = fadd double %123, 1.000000e+00, !dbg !3414
  call void @fAddHandler(double %123, double 1.000000e+00, double %124, i64 94334765881056, i64 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @19, i32 0, i32 0), i64 94334765881504, i32 917, i32 51), !dbg !3415
  %125 = load double, double* %8, align 8, !dbg !3415
  %126 = load double, double* %9, align 8, !dbg !3416
  %127 = fsub double -0.000000e+00, %126, !dbg !3417
  call void @fSubHandler(double -0.000000e+00, double %126, double %127, i64 0, i64 94334765882248, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @19, i32 0, i32 0), i64 94334765882656, i32 917, i32 59), !dbg !3418
  %128 = fadd double %127, 2.000000e+00, !dbg !3418
  call void @fAddHandler(double %127, double 2.000000e+00, double %128, i64 94334765882656, i64 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @19, i32 0, i32 0), i64 94334765883104, i32 917, i32 61), !dbg !3419
  %129 = load double, double* %10, align 8, !dbg !3419
  %130 = call i32 @gsl_sf_hyperg_2F1_conj_e(double %124, double %125, double %128, double %129, %struct.gsl_sf_result_struct* %22), !dbg !3420
  store i32 %130, i32* %23, align 4, !dbg !3410
  call void @llvm.dbg.declare(metadata double* %24, metadata !3421, metadata !61), !dbg !3422
  %131 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %16, i32 0, i32 0, !dbg !3423
  %132 = load double, double* %131, align 8, !dbg !3423
  %133 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %17, i32 0, i32 0, !dbg !3424
  %134 = load double, double* %133, align 8, !dbg !3424
  %135 = fsub double %132, %134, !dbg !3425
  call void @fSubHandler(double %132, double %134, double %135, i64 94334765887672, i64 94334765889768, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @19, i32 0, i32 0), i64 94334765891440, i32 918, i32 41), !dbg !3426
  %136 = fmul double 2.000000e+00, %135, !dbg !3426
  call void @fMulHandler(double 2.000000e+00, double %135, double %136, i64 0, i64 94334765891440, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @19, i32 0, i32 0), i64 94334765891888, i32 918, i32 32), !dbg !3427
  %137 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %18, i32 0, i32 0, !dbg !3427
  %138 = load double, double* %137, align 8, !dbg !3427
  %139 = fsub double %136, %138, !dbg !3428
  call void @fSubHandler(double %136, double %138, double %139, i64 94334765891888, i64 94334765892696, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @19, i32 0, i32 0), i64 94334765896432, i32 918, i32 51), !dbg !3422
  store double %139, double* %24, align 8, !dbg !3422
  call void @llvm.dbg.declare(metadata double* %25, metadata !3429, metadata !61), !dbg !3430
  %140 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %16, i32 0, i32 1, !dbg !3431
  %141 = load double, double* %140, align 8, !dbg !3431
  %142 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %17, i32 0, i32 1, !dbg !3432
  %143 = load double, double* %142, align 8, !dbg !3432
  %144 = fadd double %141, %143, !dbg !3433
  call void @fAddHandler(double %141, double %143, double %144, i64 94334765900040, i64 94334765902136, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @19, i32 0, i32 0), i64 94334765903808, i32 919, i32 43), !dbg !3434
  %145 = fmul double 2.000000e+00, %144, !dbg !3434
  call void @fMulHandler(double 2.000000e+00, double %144, double %145, i64 0, i64 94334765903808, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @19, i32 0, i32 0), i64 94334765904256, i32 919, i32 33), !dbg !3435
  %146 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %18, i32 0, i32 1, !dbg !3435
  %147 = load double, double* %146, align 8, !dbg !3435
  %148 = fadd double %145, %147, !dbg !3436
  call void @fAddHandler(double %145, double %147, double %148, i64 94334765904256, i64 94334765905064, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @19, i32 0, i32 0), i64 94334765906736, i32 919, i32 53), !dbg !3430
  store double %148, double* %25, align 8, !dbg !3430
  call void @llvm.dbg.declare(metadata i32* %26, metadata !3437, metadata !61), !dbg !3438
  %149 = load double, double* %24, align 8, !dbg !3439
  %150 = load double, double* %25, align 8, !dbg !3440
  %151 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %22, i32 0, i32 0, !dbg !3441
  %152 = load double, double* %151, align 8, !dbg !3441
  %153 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %22, i32 0, i32 1, !dbg !3442
  %154 = load double, double* %153, align 8, !dbg !3442
  %155 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !3443
  %156 = call i32 @gsl_sf_exp_mult_err_e(double %149, double %150, double %152, double %154, %struct.gsl_sf_result_struct* %155), !dbg !3444
  store i32 %156, i32* %26, align 4, !dbg !3438
  %157 = load i32, i32* %26, align 4, !dbg !3445
  %158 = icmp ne i32 %157, 0, !dbg !3445
  %159 = sext i32 %157 to i64, !dbg !3445
  %160 = call i1 @iCmpInstHandler(i64 %159, i64 0, i1 %158, i32 33, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @19, i32 0, i32 0), i64 94334765917936, i32 923, i32 16), !dbg !3445
  br i1 %160, label %161, label %163, !dbg !3445

; <label>:161:                                    ; preds = %120
  %162 = load i32, i32* %26, align 4, !dbg !3446
  br label %173, !dbg !3446

; <label>:163:                                    ; preds = %120
  %164 = load i32, i32* %23, align 4, !dbg !3448
  %165 = icmp ne i32 %164, 0, !dbg !3448
  %166 = sext i32 %164 to i64, !dbg !3448
  %167 = call i1 @iCmpInstHandler(i64 %166, i64 0, i1 %165, i32 33, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @19, i32 0, i32 0), i64 94334765922480, i32 923, i32 16), !dbg !3448
  br i1 %167, label %168, label %170, !dbg !3448

; <label>:168:                                    ; preds = %163
  %169 = load i32, i32* %23, align 4, !dbg !3450
  br label %171, !dbg !3450

; <label>:170:                                    ; preds = %163
  br label %171, !dbg !3452

; <label>:171:                                    ; preds = %170, %168
  %172 = phi i32 [ %169, %168 ], [ 0, %170 ], !dbg !3454
  br label %173, !dbg !3454

; <label>:173:                                    ; preds = %171, %161
  %174 = phi i32 [ %162, %161 ], [ %172, %171 ], !dbg !3456
  store i32 %174, i32* %6, align 4, !dbg !3458
  br label %225, !dbg !3458

; <label>:175:                                    ; preds = %119
  br label %176

; <label>:176:                                    ; preds = %175
  br label %225, !dbg !3459

; <label>:177:                                    ; preds = %64
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %27, metadata !3460, metadata !61), !dbg !3462
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %28, metadata !3463, metadata !61), !dbg !3464
  call void @llvm.dbg.declare(metadata double* %29, metadata !3465, metadata !61), !dbg !3466
  call void @llvm.dbg.declare(metadata i32* %30, metadata !3467, metadata !61), !dbg !3468
  %178 = load double, double* %9, align 8, !dbg !3469
  %179 = call i32 @gsl_sf_lngamma_sgn_e(double %178, %struct.gsl_sf_result_struct* %28, double* %29), !dbg !3470
  store i32 %179, i32* %30, align 4, !dbg !3468
  call void @llvm.dbg.declare(metadata i32* %31, metadata !3471, metadata !61), !dbg !3472
  %180 = load double, double* %7, align 8, !dbg !3473
  %181 = load double, double* %8, align 8, !dbg !3474
  %182 = load double, double* %9, align 8, !dbg !3475
  %183 = load double, double* %10, align 8, !dbg !3476
  %184 = call i32 @gsl_sf_hyperg_2F1_conj_e(double %180, double %181, double %182, double %183, %struct.gsl_sf_result_struct* %27), !dbg !3477
  store i32 %184, i32* %31, align 4, !dbg !3472
  call void @llvm.dbg.declare(metadata i32* %32, metadata !3478, metadata !61), !dbg !3479
  %185 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %28, i32 0, i32 0, !dbg !3480
  %186 = load double, double* %185, align 8, !dbg !3480
  %187 = fsub double -0.000000e+00, %186, !dbg !3481
  call void @fSubHandler(double -0.000000e+00, double %186, double %187, i64 0, i64 94334765945368, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @19, i32 0, i32 0), i64 94334765947040, i32 934, i32 40), !dbg !3482
  %188 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %28, i32 0, i32 1, !dbg !3482
  %189 = load double, double* %188, align 8, !dbg !3482
  %190 = load double, double* %29, align 8, !dbg !3483
  %191 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %27, i32 0, i32 0, !dbg !3484
  %192 = load double, double* %191, align 8, !dbg !3484
  %193 = fmul double %190, %192, !dbg !3485
  call void @fMulHandler(double %190, double %192, double %193, i64 94334765949528, i64 94334765950360, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @19, i32 0, i32 0), i64 94334765952032, i32 935, i32 46), !dbg !3486
  %194 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %27, i32 0, i32 1, !dbg !3486
  %195 = load double, double* %194, align 8, !dbg !3486
  %196 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !3487
  %197 = call i32 @gsl_sf_exp_mult_err_e(double %187, double %189, double %193, double %195, %struct.gsl_sf_result_struct* %196), !dbg !3488
  store i32 %197, i32* %32, align 4, !dbg !3479
  %198 = load i32, i32* %32, align 4, !dbg !3489
  %199 = icmp ne i32 %198, 0, !dbg !3489
  %200 = sext i32 %198 to i64, !dbg !3489
  %201 = call i1 @iCmpInstHandler(i64 %200, i64 0, i1 %199, i32 33, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @19, i32 0, i32 0), i64 94334765957600, i32 937, i32 12), !dbg !3489
  br i1 %201, label %202, label %204, !dbg !3489

; <label>:202:                                    ; preds = %177
  %203 = load i32, i32* %32, align 4, !dbg !3490
  br label %223, !dbg !3490

; <label>:204:                                    ; preds = %177
  %205 = load i32, i32* %31, align 4, !dbg !3492
  %206 = icmp ne i32 %205, 0, !dbg !3492
  %207 = sext i32 %205 to i64, !dbg !3492
  %208 = call i1 @iCmpInstHandler(i64 %207, i64 0, i1 %206, i32 33, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @19, i32 0, i32 0), i64 94334765962144, i32 937, i32 12), !dbg !3492
  br i1 %208, label %209, label %211, !dbg !3492

; <label>:209:                                    ; preds = %204
  %210 = load i32, i32* %31, align 4, !dbg !3494
  br label %221, !dbg !3494

; <label>:211:                                    ; preds = %204
  %212 = load i32, i32* %30, align 4, !dbg !3496
  %213 = icmp ne i32 %212, 0, !dbg !3496
  %214 = sext i32 %212 to i64, !dbg !3496
  %215 = call i1 @iCmpInstHandler(i64 %214, i64 0, i1 %213, i32 33, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @19, i32 0, i32 0), i64 94334765966688, i32 937, i32 12), !dbg !3496
  br i1 %215, label %216, label %218, !dbg !3496

; <label>:216:                                    ; preds = %211
  %217 = load i32, i32* %30, align 4, !dbg !3498
  br label %219, !dbg !3498

; <label>:218:                                    ; preds = %211
  br label %219, !dbg !3500

; <label>:219:                                    ; preds = %218, %216
  %220 = phi i32 [ %217, %216 ], [ 0, %218 ], !dbg !3502
  br label %221, !dbg !3502

; <label>:221:                                    ; preds = %219, %209
  %222 = phi i32 [ %210, %209 ], [ %220, %219 ], !dbg !3504
  br label %223, !dbg !3504

; <label>:223:                                    ; preds = %221, %202
  %224 = phi i32 [ %203, %202 ], [ %222, %221 ], !dbg !3506
  store i32 %224, i32* %6, align 4, !dbg !3508
  br label %225, !dbg !3508

; <label>:225:                                    ; preds = %223, %176, %173, %117, %82
  %226 = load i32, i32* %6, align 4, !dbg !3509
  ret i32 %226, !dbg !3509
}

declare i32 @gsl_sf_lngamma_complex_e(double, double, %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct*) #3

; Function Attrs: nounwind uwtable
define double @gsl_sf_hyperg_2F1(double, double, double, double) #0 !dbg !3510 {
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca %struct.gsl_sf_result_struct, align 8
  %11 = alloca i32, align 4
  store double %0, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !3513, metadata !61), !dbg !3514
  store double %1, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !3515, metadata !61), !dbg !3516
  store double %2, double* %8, align 8
  call void @llvm.dbg.declare(metadata double* %8, metadata !3517, metadata !61), !dbg !3518
  store double %3, double* %9, align 8
  call void @llvm.dbg.declare(metadata double* %9, metadata !3519, metadata !61), !dbg !3520
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %10, metadata !3521, metadata !61), !dbg !3522
  call void @llvm.dbg.declare(metadata i32* %11, metadata !3523, metadata !61), !dbg !3522
  %12 = load double, double* %6, align 8, !dbg !3522
  %13 = load double, double* %7, align 8, !dbg !3522
  %14 = load double, double* %8, align 8, !dbg !3522
  %15 = load double, double* %9, align 8, !dbg !3522
  %16 = call i32 @gsl_sf_hyperg_2F1_e(double %12, double %13, double %14, double %15, %struct.gsl_sf_result_struct* %10), !dbg !3522
  store i32 %16, i32* %11, align 4, !dbg !3522
  %17 = load i32, i32* %11, align 4, !dbg !3524
  %18 = icmp ne i32 %17, 0, !dbg !3524
  %19 = sext i32 %17 to i64, !dbg !3522
  %20 = call i1 @iCmpInstHandler(i64 %19, i64 0, i1 %18, i32 33, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @21, i32 0, i32 0), i64 94334765989424, i32 948, i32 3), !dbg !3522
  br i1 %20, label %21, label %27, !dbg !3522

; <label>:21:                                     ; preds = %4
  br label %22, !dbg !3526, !llvm.loop !3529

; <label>:22:                                     ; preds = %21
  %23 = load i32, i32* %11, align 4, !dbg !3531
  call void @gsl_error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 948, i32 %23), !dbg !3531
  %24 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !3531
  %25 = load double, double* %24, align 8, !dbg !3531
  store double %25, double* %5, align 8, !dbg !3531
  br label %30, !dbg !3531
                                                  ; No predecessors!
  br label %27, !dbg !3534

; <label>:27:                                     ; preds = %26, %4
  %28 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !3536
  %29 = load double, double* %28, align 8, !dbg !3536
  store double %29, double* %5, align 8, !dbg !3536
  br label %30, !dbg !3536

; <label>:30:                                     ; preds = %27, %22
  %31 = load double, double* %5, align 8, !dbg !3538
  ret double %31, !dbg !3538
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_hyperg_2F1_conj(double, double, double, double) #0 !dbg !3539 {
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca %struct.gsl_sf_result_struct, align 8
  %11 = alloca i32, align 4
  store double %0, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !3540, metadata !61), !dbg !3541
  store double %1, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !3542, metadata !61), !dbg !3543
  store double %2, double* %8, align 8
  call void @llvm.dbg.declare(metadata double* %8, metadata !3544, metadata !61), !dbg !3545
  store double %3, double* %9, align 8
  call void @llvm.dbg.declare(metadata double* %9, metadata !3546, metadata !61), !dbg !3547
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %10, metadata !3548, metadata !61), !dbg !3549
  call void @llvm.dbg.declare(metadata i32* %11, metadata !3550, metadata !61), !dbg !3549
  %12 = load double, double* %6, align 8, !dbg !3549
  %13 = load double, double* %7, align 8, !dbg !3549
  %14 = load double, double* %8, align 8, !dbg !3549
  %15 = load double, double* %9, align 8, !dbg !3549
  %16 = call i32 @gsl_sf_hyperg_2F1_conj_e(double %12, double %13, double %14, double %15, %struct.gsl_sf_result_struct* %10), !dbg !3549
  store i32 %16, i32* %11, align 4, !dbg !3549
  %17 = load i32, i32* %11, align 4, !dbg !3551
  %18 = icmp ne i32 %17, 0, !dbg !3551
  %19 = sext i32 %17 to i64, !dbg !3549
  %20 = call i1 @iCmpInstHandler(i64 %19, i64 0, i1 %18, i32 33, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @23, i32 0, i32 0), i64 94334766011264, i32 953, i32 3), !dbg !3549
  br i1 %20, label %21, label %27, !dbg !3549

; <label>:21:                                     ; preds = %4
  br label %22, !dbg !3553, !llvm.loop !3556

; <label>:22:                                     ; preds = %21
  %23 = load i32, i32* %11, align 4, !dbg !3558
  call void @gsl_error(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 953, i32 %23), !dbg !3558
  %24 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !3558
  %25 = load double, double* %24, align 8, !dbg !3558
  store double %25, double* %5, align 8, !dbg !3558
  br label %30, !dbg !3558
                                                  ; No predecessors!
  br label %27, !dbg !3561

; <label>:27:                                     ; preds = %26, %4
  %28 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !3563
  %29 = load double, double* %28, align 8, !dbg !3563
  store double %29, double* %5, align 8, !dbg !3563
  br label %30, !dbg !3563

; <label>:30:                                     ; preds = %27, %22
  %31 = load double, double* %5, align 8, !dbg !3565
  ret double %31, !dbg !3565
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_hyperg_2F1_renorm(double, double, double, double) #0 !dbg !3566 {
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca %struct.gsl_sf_result_struct, align 8
  %11 = alloca i32, align 4
  store double %0, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !3567, metadata !61), !dbg !3568
  store double %1, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !3569, metadata !61), !dbg !3570
  store double %2, double* %8, align 8
  call void @llvm.dbg.declare(metadata double* %8, metadata !3571, metadata !61), !dbg !3572
  store double %3, double* %9, align 8
  call void @llvm.dbg.declare(metadata double* %9, metadata !3573, metadata !61), !dbg !3574
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %10, metadata !3575, metadata !61), !dbg !3576
  call void @llvm.dbg.declare(metadata i32* %11, metadata !3577, metadata !61), !dbg !3576
  %12 = load double, double* %6, align 8, !dbg !3576
  %13 = load double, double* %7, align 8, !dbg !3576
  %14 = load double, double* %8, align 8, !dbg !3576
  %15 = load double, double* %9, align 8, !dbg !3576
  %16 = call i32 @gsl_sf_hyperg_2F1_renorm_e(double %12, double %13, double %14, double %15, %struct.gsl_sf_result_struct* %10), !dbg !3576
  store i32 %16, i32* %11, align 4, !dbg !3576
  %17 = load i32, i32* %11, align 4, !dbg !3578
  %18 = icmp ne i32 %17, 0, !dbg !3578
  %19 = sext i32 %17 to i64, !dbg !3576
  %20 = call i1 @iCmpInstHandler(i64 %19, i64 0, i1 %18, i32 33, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @25, i32 0, i32 0), i64 94334766033120, i32 958, i32 3), !dbg !3576
  br i1 %20, label %21, label %27, !dbg !3576

; <label>:21:                                     ; preds = %4
  br label %22, !dbg !3580, !llvm.loop !3583

; <label>:22:                                     ; preds = %21
  %23 = load i32, i32* %11, align 4, !dbg !3585
  call void @gsl_error(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 958, i32 %23), !dbg !3585
  %24 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !3585
  %25 = load double, double* %24, align 8, !dbg !3585
  store double %25, double* %5, align 8, !dbg !3585
  br label %30, !dbg !3585
                                                  ; No predecessors!
  br label %27, !dbg !3588

; <label>:27:                                     ; preds = %26, %4
  %28 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !3590
  %29 = load double, double* %28, align 8, !dbg !3590
  store double %29, double* %5, align 8, !dbg !3590
  br label %30, !dbg !3590

; <label>:30:                                     ; preds = %27, %22
  %31 = load double, double* %5, align 8, !dbg !3592
  ret double %31, !dbg !3592
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_hyperg_2F1_conj_renorm(double, double, double, double) #0 !dbg !3593 {
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca %struct.gsl_sf_result_struct, align 8
  %11 = alloca i32, align 4
  store double %0, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !3594, metadata !61), !dbg !3595
  store double %1, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !3596, metadata !61), !dbg !3597
  store double %2, double* %8, align 8
  call void @llvm.dbg.declare(metadata double* %8, metadata !3598, metadata !61), !dbg !3599
  store double %3, double* %9, align 8
  call void @llvm.dbg.declare(metadata double* %9, metadata !3600, metadata !61), !dbg !3601
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %10, metadata !3602, metadata !61), !dbg !3603
  call void @llvm.dbg.declare(metadata i32* %11, metadata !3604, metadata !61), !dbg !3603
  %12 = load double, double* %6, align 8, !dbg !3603
  %13 = load double, double* %7, align 8, !dbg !3603
  %14 = load double, double* %8, align 8, !dbg !3603
  %15 = load double, double* %9, align 8, !dbg !3603
  %16 = call i32 @gsl_sf_hyperg_2F1_conj_renorm_e(double %12, double %13, double %14, double %15, %struct.gsl_sf_result_struct* %10), !dbg !3603
  store i32 %16, i32* %11, align 4, !dbg !3603
  %17 = load i32, i32* %11, align 4, !dbg !3605
  %18 = icmp ne i32 %17, 0, !dbg !3605
  %19 = sext i32 %17 to i64, !dbg !3603
  %20 = call i1 @iCmpInstHandler(i64 %19, i64 0, i1 %18, i32 33, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @27, i32 0, i32 0), i64 94334766054976, i32 963, i32 3), !dbg !3603
  br i1 %20, label %21, label %27, !dbg !3603

; <label>:21:                                     ; preds = %4
  br label %22, !dbg !3607, !llvm.loop !3610

; <label>:22:                                     ; preds = %21
  %23 = load i32, i32* %11, align 4, !dbg !3612
  call void @gsl_error(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 963, i32 %23), !dbg !3612
  %24 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !3612
  %25 = load double, double* %24, align 8, !dbg !3612
  store double %25, double* %5, align 8, !dbg !3612
  br label %30, !dbg !3612
                                                  ; No predecessors!
  br label %27, !dbg !3615

; <label>:27:                                     ; preds = %26, %4
  %28 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !3617
  %29 = load double, double* %28, align 8, !dbg !3617
  store double %29, double* %5, align 8, !dbg !3617
  br label %30, !dbg !3617

; <label>:30:                                     ; preds = %27, %22
  %31 = load double, double* %5, align 8, !dbg !3619
  ret double %31, !dbg !3619
}

; Function Attrs: nounwind
declare double @log(double) #4

; Function Attrs: nounwind
declare double @sqrt(double) #4

declare i32 @gsl_sf_psi_e(double, %struct.gsl_sf_result_struct*) #3

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
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!43, !44, !45}
!llvm.ident = !{!46}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !41)
!1 = !DIFile(filename: "hyperg_2F1.c", directory: "/fpcc/gsl-2.5/specfunc")
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
!42 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!43 = !{i32 2, !"Dwarf Version", i32 4}
!44 = !{i32 2, !"Debug Info Version", i32 3}
!45 = !{i32 1, !"PIC Level", i32 2}
!46 = !{!"clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)"}
!47 = distinct !DISubprogram(name: "gsl_sf_hyperg_2F1_e", scope: !1, file: !1, line: 643, type: !48, isLocal: false, isDefinition: true, scopeLine: 646, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !59)
!48 = !DISubroutineType(types: !49)
!49 = !{!50, !42, !42, !51, !51, !52}
!50 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!51 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64, align: 64)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !54, line: 41, baseType: !55)
!54 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/fpcc/gsl-2.5/specfunc")
!55 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !54, line: 37, size: 128, align: 64, elements: !56)
!56 = !{!57, !58}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !55, file: !54, line: 38, baseType: !42, size: 64, align: 64)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !55, file: !54, line: 39, baseType: !42, size: 64, align: 64, offset: 64)
!59 = !{}
!60 = !DILocalVariable(name: "a", arg: 1, scope: !47, file: !1, line: 643, type: !42)
!61 = !DIExpression()
!62 = !DILocation(line: 643, column: 28, scope: !47)
!63 = !DILocalVariable(name: "b", arg: 2, scope: !47, file: !1, line: 643, type: !42)
!64 = !DILocation(line: 643, column: 38, scope: !47)
!65 = !DILocalVariable(name: "c", arg: 3, scope: !47, file: !1, line: 643, type: !51)
!66 = !DILocation(line: 643, column: 54, scope: !47)
!67 = !DILocalVariable(name: "x", arg: 4, scope: !47, file: !1, line: 644, type: !51)
!68 = !DILocation(line: 644, column: 37, scope: !47)
!69 = !DILocalVariable(name: "result", arg: 5, scope: !47, file: !1, line: 645, type: !52)
!70 = !DILocation(line: 645, column: 40, scope: !47)
!71 = !DILocalVariable(name: "d", scope: !47, file: !1, line: 647, type: !51)
!72 = !DILocation(line: 647, column: 16, scope: !47)
!73 = !DILocation(line: 647, column: 20, scope: !47)
!74 = !DILocation(line: 647, column: 24, scope: !47)
!75 = !DILocation(line: 647, column: 22, scope: !47)
!76 = !DILocation(line: 647, column: 28, scope: !47)
!77 = !DILocation(line: 647, column: 26, scope: !47)
!78 = !DILocalVariable(name: "rinta", scope: !47, file: !1, line: 648, type: !51)
!79 = !DILocation(line: 648, column: 16, scope: !47)
!80 = !DILocation(line: 648, column: 30, scope: !47)
!81 = !DILocation(line: 648, column: 32, scope: !47)
!82 = !DILocation(line: 648, column: 24, scope: !47)
!83 = !DILocalVariable(name: "rintb", scope: !47, file: !1, line: 649, type: !51)
!84 = !DILocation(line: 649, column: 16, scope: !47)
!85 = !DILocation(line: 649, column: 30, scope: !47)
!86 = !DILocation(line: 649, column: 32, scope: !47)
!87 = !DILocation(line: 649, column: 24, scope: !47)
!88 = !DILocalVariable(name: "rintc", scope: !47, file: !1, line: 650, type: !51)
!89 = !DILocation(line: 650, column: 16, scope: !47)
!90 = !DILocation(line: 650, column: 30, scope: !47)
!91 = !DILocation(line: 650, column: 32, scope: !47)
!92 = !DILocation(line: 650, column: 24, scope: !47)
!93 = !DILocalVariable(name: "a_neg_integer", scope: !47, file: !1, line: 651, type: !94)
!94 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !50)
!95 = !DILocation(line: 651, column: 13, scope: !47)
!96 = !DILocation(line: 651, column: 31, scope: !47)
!97 = !DILocation(line: 651, column: 33, scope: !47)
!98 = !DILocation(line: 651, column: 40, scope: !47)
!99 = !DILocation(line: 651, column: 49, scope: !100)
!100 = !DILexicalBlockFile(scope: !47, file: !1, discriminator: 1)
!101 = !DILocation(line: 651, column: 53, scope: !100)
!102 = !DILocation(line: 651, column: 51, scope: !100)
!103 = !DILocation(line: 651, column: 44, scope: !100)
!104 = !DILocation(line: 651, column: 60, scope: !100)
!105 = !DILocation(line: 651, column: 40, scope: !106)
!106 = !DILexicalBlockFile(scope: !47, file: !1, discriminator: 2)
!107 = !DILocation(line: 651, column: 13, scope: !106)
!108 = !DILocalVariable(name: "b_neg_integer", scope: !47, file: !1, line: 652, type: !94)
!109 = !DILocation(line: 652, column: 13, scope: !47)
!110 = !DILocation(line: 652, column: 31, scope: !47)
!111 = !DILocation(line: 652, column: 33, scope: !47)
!112 = !DILocation(line: 652, column: 40, scope: !47)
!113 = !DILocation(line: 652, column: 49, scope: !100)
!114 = !DILocation(line: 652, column: 53, scope: !100)
!115 = !DILocation(line: 652, column: 51, scope: !100)
!116 = !DILocation(line: 652, column: 44, scope: !100)
!117 = !DILocation(line: 652, column: 60, scope: !100)
!118 = !DILocation(line: 652, column: 40, scope: !106)
!119 = !DILocation(line: 652, column: 13, scope: !106)
!120 = !DILocalVariable(name: "c_neg_integer", scope: !47, file: !1, line: 653, type: !94)
!121 = !DILocation(line: 653, column: 13, scope: !47)
!122 = !DILocation(line: 653, column: 31, scope: !47)
!123 = !DILocation(line: 653, column: 33, scope: !47)
!124 = !DILocation(line: 653, column: 40, scope: !47)
!125 = !DILocation(line: 653, column: 49, scope: !100)
!126 = !DILocation(line: 653, column: 53, scope: !100)
!127 = !DILocation(line: 653, column: 51, scope: !100)
!128 = !DILocation(line: 653, column: 44, scope: !100)
!129 = !DILocation(line: 653, column: 60, scope: !100)
!130 = !DILocation(line: 653, column: 40, scope: !106)
!131 = !DILocation(line: 653, column: 13, scope: !106)
!132 = !DILocation(line: 655, column: 3, scope: !47)
!133 = !DILocation(line: 655, column: 11, scope: !47)
!134 = !DILocation(line: 655, column: 15, scope: !47)
!135 = !DILocation(line: 656, column: 3, scope: !47)
!136 = !DILocation(line: 656, column: 11, scope: !47)
!137 = !DILocation(line: 656, column: 15, scope: !47)
!138 = !DILocation(line: 660, column: 13, scope: !139)
!139 = distinct !DILexicalBlock(scope: !47, file: !1, line: 660, column: 7)
!140 = !DILocation(line: 660, column: 15, scope: !139)
!141 = !DILocation(line: 660, column: 7, scope: !139)
!142 = !DILocation(line: 660, column: 22, scope: !139)
!143 = !DILocation(line: 660, column: 31, scope: !139)
!144 = !DILocation(line: 660, column: 35, scope: !145)
!145 = !DILexicalBlockFile(scope: !139, file: !1, discriminator: 1)
!146 = !DILocation(line: 660, column: 39, scope: !145)
!147 = !DILocation(line: 660, column: 37, scope: !145)
!148 = !DILocation(line: 660, column: 43, scope: !145)
!149 = !DILocation(line: 660, column: 41, scope: !145)
!150 = !DILocation(line: 660, column: 46, scope: !145)
!151 = !DILocation(line: 660, column: 50, scope: !145)
!152 = !DILocation(line: 660, column: 53, scope: !153)
!153 = !DILexicalBlockFile(scope: !139, file: !1, discriminator: 2)
!154 = !DILocation(line: 660, column: 55, scope: !153)
!155 = !DILocation(line: 660, column: 60, scope: !153)
!156 = !DILocation(line: 660, column: 64, scope: !157)
!157 = !DILexicalBlockFile(scope: !139, file: !1, discriminator: 3)
!158 = !DILocation(line: 660, column: 7, scope: !157)
!159 = !DILocalVariable(name: "lngamc", scope: !160, file: !1, line: 661, type: !53)
!160 = distinct !DILexicalBlock(scope: !139, file: !1, line: 660, column: 79)
!161 = !DILocation(line: 661, column: 19, scope: !160)
!162 = !DILocalVariable(name: "lngamcab", scope: !160, file: !1, line: 661, type: !53)
!163 = !DILocation(line: 661, column: 27, scope: !160)
!164 = !DILocalVariable(name: "lngamca", scope: !160, file: !1, line: 661, type: !53)
!165 = !DILocation(line: 661, column: 37, scope: !160)
!166 = !DILocalVariable(name: "lngamcb", scope: !160, file: !1, line: 661, type: !53)
!167 = !DILocation(line: 661, column: 46, scope: !160)
!168 = !DILocalVariable(name: "lngamc_sgn", scope: !160, file: !1, line: 662, type: !42)
!169 = !DILocation(line: 662, column: 12, scope: !160)
!170 = !DILocalVariable(name: "lngamca_sgn", scope: !160, file: !1, line: 662, type: !42)
!171 = !DILocation(line: 662, column: 24, scope: !160)
!172 = !DILocalVariable(name: "lngamcb_sgn", scope: !160, file: !1, line: 662, type: !42)
!173 = !DILocation(line: 662, column: 37, scope: !160)
!174 = !DILocalVariable(name: "status", scope: !160, file: !1, line: 663, type: !50)
!175 = !DILocation(line: 663, column: 9, scope: !160)
!176 = !DILocalVariable(name: "stat1", scope: !160, file: !1, line: 664, type: !50)
!177 = !DILocation(line: 664, column: 9, scope: !160)
!178 = !DILocation(line: 664, column: 39, scope: !160)
!179 = !DILocation(line: 664, column: 17, scope: !160)
!180 = !DILocalVariable(name: "stat2", scope: !160, file: !1, line: 665, type: !50)
!181 = !DILocation(line: 665, column: 9, scope: !160)
!182 = !DILocation(line: 665, column: 35, scope: !160)
!183 = !DILocation(line: 665, column: 39, scope: !160)
!184 = !DILocation(line: 665, column: 37, scope: !160)
!185 = !DILocation(line: 665, column: 43, scope: !160)
!186 = !DILocation(line: 665, column: 41, scope: !160)
!187 = !DILocation(line: 665, column: 17, scope: !160)
!188 = !DILocalVariable(name: "stat3", scope: !160, file: !1, line: 666, type: !50)
!189 = !DILocation(line: 666, column: 9, scope: !160)
!190 = !DILocation(line: 666, column: 39, scope: !160)
!191 = !DILocation(line: 666, column: 43, scope: !160)
!192 = !DILocation(line: 666, column: 41, scope: !160)
!193 = !DILocation(line: 666, column: 17, scope: !160)
!194 = !DILocalVariable(name: "stat4", scope: !160, file: !1, line: 667, type: !50)
!195 = !DILocation(line: 667, column: 9, scope: !160)
!196 = !DILocation(line: 667, column: 39, scope: !160)
!197 = !DILocation(line: 667, column: 43, scope: !160)
!198 = !DILocation(line: 667, column: 41, scope: !160)
!199 = !DILocation(line: 667, column: 17, scope: !160)
!200 = !DILocation(line: 669, column: 9, scope: !201)
!201 = distinct !DILexicalBlock(scope: !160, file: !1, line: 669, column: 9)
!202 = !DILocation(line: 669, column: 15, scope: !201)
!203 = !DILocation(line: 669, column: 30, scope: !201)
!204 = !DILocation(line: 669, column: 33, scope: !205)
!205 = !DILexicalBlockFile(scope: !201, file: !1, discriminator: 1)
!206 = !DILocation(line: 669, column: 39, scope: !205)
!207 = !DILocation(line: 670, column: 9, scope: !201)
!208 = !DILocation(line: 670, column: 12, scope: !205)
!209 = !DILocation(line: 670, column: 18, scope: !205)
!210 = !DILocation(line: 670, column: 33, scope: !205)
!211 = !DILocation(line: 670, column: 36, scope: !212)
!212 = !DILexicalBlockFile(scope: !201, file: !1, discriminator: 2)
!213 = !DILocation(line: 670, column: 42, scope: !212)
!214 = !DILocation(line: 669, column: 9, scope: !215)
!215 = !DILexicalBlockFile(scope: !160, file: !1, discriminator: 2)
!216 = !DILocation(line: 672, column: 9, scope: !217)
!217 = distinct !DILexicalBlock(scope: !201, file: !1, line: 671, column: 7)
!218 = distinct !{!218, !216}
!219 = !DILocation(line: 672, column: 9, scope: !220)
!220 = !DILexicalBlockFile(scope: !221, file: !1, discriminator: 1)
!221 = distinct !DILexicalBlock(scope: !217, file: !1, line: 672, column: 9)
!222 = distinct !{!222, !223}
!223 = !DILocation(line: 672, column: 9, scope: !221)
!224 = !DILocation(line: 672, column: 9, scope: !225)
!225 = !DILexicalBlockFile(scope: !226, file: !1, discriminator: 2)
!226 = distinct !DILexicalBlock(scope: !221, file: !1, line: 672, column: 9)
!227 = !DILocation(line: 672, column: 9, scope: !228)
!228 = !DILexicalBlockFile(scope: !221, file: !1, discriminator: 3)
!229 = !DILocation(line: 673, column: 7, scope: !217)
!230 = !DILocation(line: 676, column: 32, scope: !160)
!231 = !DILocation(line: 676, column: 47, scope: !160)
!232 = !DILocation(line: 676, column: 36, scope: !160)
!233 = !DILocation(line: 676, column: 61, scope: !160)
!234 = !DILocation(line: 676, column: 51, scope: !160)
!235 = !DILocation(line: 676, column: 75, scope: !160)
!236 = !DILocation(line: 676, column: 65, scope: !160)
!237 = !DILocation(line: 677, column: 32, scope: !160)
!238 = !DILocation(line: 677, column: 47, scope: !160)
!239 = !DILocation(line: 677, column: 36, scope: !160)
!240 = !DILocation(line: 677, column: 61, scope: !160)
!241 = !DILocation(line: 677, column: 51, scope: !160)
!242 = !DILocation(line: 677, column: 75, scope: !160)
!243 = !DILocation(line: 677, column: 65, scope: !160)
!244 = !DILocation(line: 678, column: 25, scope: !160)
!245 = !DILocation(line: 676, column: 7, scope: !160)
!246 = !DILocation(line: 675, column: 12, scope: !160)
!247 = !DILocation(line: 680, column: 20, scope: !160)
!248 = !DILocation(line: 680, column: 34, scope: !160)
!249 = !DILocation(line: 680, column: 48, scope: !160)
!250 = !DILocation(line: 680, column: 46, scope: !160)
!251 = !DILocation(line: 680, column: 31, scope: !160)
!252 = !DILocation(line: 680, column: 5, scope: !160)
!253 = !DILocation(line: 680, column: 13, scope: !160)
!254 = !DILocation(line: 680, column: 17, scope: !160)
!255 = !DILocation(line: 681, column: 14, scope: !160)
!256 = !DILocation(line: 681, column: 7, scope: !160)
!257 = !DILocation(line: 684, column: 6, scope: !258)
!258 = distinct !DILexicalBlock(scope: !47, file: !1, line: 684, column: 6)
!259 = !DILocation(line: 684, column: 8, scope: !258)
!260 = !DILocation(line: 684, column: 15, scope: !258)
!261 = !DILocation(line: 684, column: 25, scope: !262)
!262 = !DILexicalBlockFile(scope: !258, file: !1, discriminator: 1)
!263 = !DILocation(line: 684, column: 22, scope: !262)
!264 = !DILocation(line: 684, column: 6, scope: !262)
!265 = !DILocation(line: 685, column: 5, scope: !266)
!266 = distinct !DILexicalBlock(scope: !258, file: !1, line: 684, column: 28)
!267 = distinct !{!267, !265}
!268 = !DILocation(line: 685, column: 5, scope: !269)
!269 = !DILexicalBlockFile(scope: !270, file: !1, discriminator: 1)
!270 = distinct !DILexicalBlock(scope: !266, file: !1, line: 685, column: 5)
!271 = distinct !{!271, !272}
!272 = !DILocation(line: 685, column: 5, scope: !270)
!273 = !DILocation(line: 685, column: 5, scope: !274)
!274 = !DILexicalBlockFile(scope: !275, file: !1, discriminator: 2)
!275 = distinct !DILexicalBlock(scope: !270, file: !1, line: 685, column: 5)
!276 = !DILocation(line: 685, column: 5, scope: !277)
!277 = !DILexicalBlockFile(scope: !270, file: !1, discriminator: 3)
!278 = !DILocation(line: 686, column: 3, scope: !266)
!279 = !DILocation(line: 688, column: 6, scope: !280)
!280 = distinct !DILexicalBlock(scope: !47, file: !1, line: 688, column: 6)
!281 = !DILocation(line: 688, column: 6, scope: !47)
!282 = !DILocation(line: 692, column: 11, scope: !283)
!283 = distinct !DILexicalBlock(scope: !284, file: !1, line: 692, column: 8)
!284 = distinct !DILexicalBlock(scope: !280, file: !1, line: 688, column: 21)
!285 = !DILocation(line: 692, column: 25, scope: !283)
!286 = !DILocation(line: 692, column: 28, scope: !287)
!287 = !DILexicalBlockFile(scope: !283, file: !1, discriminator: 1)
!288 = !DILocation(line: 692, column: 32, scope: !287)
!289 = !DILocation(line: 692, column: 34, scope: !287)
!290 = !DILocation(line: 692, column: 30, scope: !287)
!291 = !DILocation(line: 692, column: 41, scope: !287)
!292 = !DILocation(line: 692, column: 47, scope: !293)
!293 = !DILexicalBlockFile(scope: !283, file: !1, discriminator: 2)
!294 = !DILocation(line: 692, column: 61, scope: !293)
!295 = !DILocation(line: 692, column: 64, scope: !296)
!296 = !DILexicalBlockFile(scope: !283, file: !1, discriminator: 3)
!297 = !DILocation(line: 692, column: 68, scope: !296)
!298 = !DILocation(line: 692, column: 70, scope: !296)
!299 = !DILocation(line: 692, column: 66, scope: !296)
!300 = !DILocation(line: 692, column: 8, scope: !296)
!301 = !DILocation(line: 693, column: 7, scope: !302)
!302 = distinct !DILexicalBlock(scope: !283, file: !1, line: 692, column: 78)
!303 = distinct !{!303, !301}
!304 = !DILocation(line: 693, column: 7, scope: !305)
!305 = !DILexicalBlockFile(scope: !306, file: !1, discriminator: 1)
!306 = distinct !DILexicalBlock(scope: !302, file: !1, line: 693, column: 7)
!307 = distinct !{!307, !308}
!308 = !DILocation(line: 693, column: 7, scope: !306)
!309 = !DILocation(line: 693, column: 7, scope: !310)
!310 = !DILexicalBlockFile(scope: !311, file: !1, discriminator: 2)
!311 = distinct !DILexicalBlock(scope: !306, file: !1, line: 693, column: 7)
!312 = !DILocation(line: 693, column: 7, scope: !313)
!313 = !DILexicalBlockFile(scope: !306, file: !1, discriminator: 3)
!314 = !DILocation(line: 694, column: 5, scope: !302)
!315 = !DILocation(line: 695, column: 3, scope: !284)
!316 = !DILocation(line: 697, column: 11, scope: !317)
!317 = distinct !DILexicalBlock(scope: !47, file: !1, line: 697, column: 6)
!318 = !DILocation(line: 697, column: 13, scope: !317)
!319 = !DILocation(line: 697, column: 12, scope: !317)
!320 = !DILocation(line: 697, column: 6, scope: !317)
!321 = !DILocation(line: 697, column: 16, scope: !317)
!322 = !DILocation(line: 697, column: 25, scope: !317)
!323 = !DILocation(line: 697, column: 33, scope: !324)
!324 = !DILexicalBlockFile(scope: !317, file: !1, discriminator: 1)
!325 = !DILocation(line: 697, column: 35, scope: !324)
!326 = !DILocation(line: 697, column: 34, scope: !324)
!327 = !DILocation(line: 697, column: 28, scope: !324)
!328 = !DILocation(line: 697, column: 38, scope: !324)
!329 = !DILocation(line: 697, column: 6, scope: !324)
!330 = !DILocation(line: 698, column: 20, scope: !331)
!331 = distinct !DILexicalBlock(scope: !317, file: !1, line: 697, column: 48)
!332 = !DILocation(line: 698, column: 23, scope: !331)
!333 = !DILocation(line: 698, column: 26, scope: !331)
!334 = !DILocation(line: 698, column: 12, scope: !331)
!335 = !DILocation(line: 698, column: 5, scope: !331)
!336 = !DILocation(line: 701, column: 6, scope: !337)
!337 = distinct !DILexicalBlock(scope: !47, file: !1, line: 701, column: 6)
!338 = !DILocation(line: 701, column: 8, scope: !337)
!339 = !DILocation(line: 701, column: 15, scope: !337)
!340 = !DILocation(line: 701, column: 18, scope: !341)
!341 = !DILexicalBlockFile(scope: !337, file: !1, discriminator: 1)
!342 = !DILocation(line: 701, column: 20, scope: !341)
!343 = !DILocation(line: 701, column: 27, scope: !341)
!344 = !DILocation(line: 701, column: 30, scope: !345)
!345 = !DILexicalBlockFile(scope: !337, file: !1, discriminator: 2)
!346 = !DILocation(line: 701, column: 32, scope: !345)
!347 = !DILocation(line: 701, column: 38, scope: !345)
!348 = !DILocation(line: 701, column: 41, scope: !349)
!349 = !DILexicalBlockFile(scope: !337, file: !1, discriminator: 3)
!350 = !DILocation(line: 701, column: 43, scope: !349)
!351 = !DILocation(line: 701, column: 50, scope: !349)
!352 = !DILocation(line: 701, column: 53, scope: !353)
!353 = !DILexicalBlockFile(scope: !337, file: !1, discriminator: 4)
!354 = !DILocation(line: 701, column: 55, scope: !353)
!355 = !DILocation(line: 701, column: 6, scope: !353)
!356 = !DILocation(line: 705, column: 30, scope: !357)
!357 = distinct !DILexicalBlock(scope: !337, file: !1, line: 701, column: 64)
!358 = !DILocation(line: 705, column: 33, scope: !357)
!359 = !DILocation(line: 705, column: 36, scope: !357)
!360 = !DILocation(line: 705, column: 39, scope: !357)
!361 = !DILocation(line: 705, column: 42, scope: !357)
!362 = !DILocation(line: 705, column: 12, scope: !357)
!363 = !DILocation(line: 705, column: 5, scope: !357)
!364 = !DILocation(line: 708, column: 11, scope: !365)
!365 = distinct !DILexicalBlock(scope: !47, file: !1, line: 708, column: 6)
!366 = !DILocation(line: 708, column: 6, scope: !365)
!367 = !DILocation(line: 708, column: 14, scope: !365)
!368 = !DILocation(line: 708, column: 21, scope: !365)
!369 = !DILocation(line: 708, column: 29, scope: !370)
!370 = !DILexicalBlockFile(scope: !365, file: !1, discriminator: 1)
!371 = !DILocation(line: 708, column: 24, scope: !370)
!372 = !DILocation(line: 708, column: 32, scope: !370)
!373 = !DILocation(line: 708, column: 6, scope: !370)
!374 = !DILocation(line: 712, column: 8, scope: !375)
!375 = distinct !DILexicalBlock(scope: !376, file: !1, line: 712, column: 8)
!376 = distinct !DILexicalBlock(scope: !365, file: !1, line: 708, column: 40)
!377 = !DILocation(line: 712, column: 8, scope: !376)
!378 = !DILocation(line: 713, column: 32, scope: !379)
!379 = distinct !DILexicalBlock(scope: !375, file: !1, line: 712, column: 23)
!380 = !DILocation(line: 713, column: 39, scope: !379)
!381 = !DILocation(line: 713, column: 42, scope: !379)
!382 = !DILocation(line: 713, column: 45, scope: !379)
!383 = !DILocation(line: 713, column: 48, scope: !379)
!384 = !DILocation(line: 713, column: 14, scope: !379)
!385 = !DILocation(line: 713, column: 7, scope: !379)
!386 = !DILocation(line: 715, column: 8, scope: !387)
!387 = distinct !DILexicalBlock(scope: !376, file: !1, line: 715, column: 8)
!388 = !DILocation(line: 715, column: 8, scope: !376)
!389 = !DILocation(line: 716, column: 32, scope: !390)
!390 = distinct !DILexicalBlock(scope: !387, file: !1, line: 715, column: 23)
!391 = !DILocation(line: 716, column: 35, scope: !390)
!392 = !DILocation(line: 716, column: 42, scope: !390)
!393 = !DILocation(line: 716, column: 45, scope: !390)
!394 = !DILocation(line: 716, column: 48, scope: !390)
!395 = !DILocation(line: 716, column: 14, scope: !390)
!396 = !DILocation(line: 716, column: 7, scope: !390)
!397 = !DILocation(line: 719, column: 8, scope: !398)
!398 = distinct !DILexicalBlock(scope: !376, file: !1, line: 719, column: 8)
!399 = !DILocation(line: 719, column: 10, scope: !398)
!400 = !DILocation(line: 719, column: 8, scope: !376)
!401 = !DILocation(line: 720, column: 30, scope: !402)
!402 = distinct !DILexicalBlock(scope: !398, file: !1, line: 719, column: 19)
!403 = !DILocation(line: 720, column: 33, scope: !402)
!404 = !DILocation(line: 720, column: 36, scope: !402)
!405 = !DILocation(line: 720, column: 39, scope: !402)
!406 = !DILocation(line: 720, column: 42, scope: !402)
!407 = !DILocation(line: 720, column: 14, scope: !402)
!408 = !DILocation(line: 720, column: 7, scope: !402)
!409 = !DILocation(line: 722, column: 13, scope: !410)
!410 = distinct !DILexicalBlock(scope: !398, file: !1, line: 722, column: 13)
!411 = !DILocation(line: 722, column: 15, scope: !410)
!412 = !DILocation(line: 722, column: 13, scope: !398)
!413 = !DILocation(line: 723, column: 32, scope: !414)
!414 = distinct !DILexicalBlock(scope: !410, file: !1, line: 722, column: 22)
!415 = !DILocation(line: 723, column: 35, scope: !414)
!416 = !DILocation(line: 723, column: 38, scope: !414)
!417 = !DILocation(line: 723, column: 41, scope: !414)
!418 = !DILocation(line: 723, column: 44, scope: !414)
!419 = !DILocation(line: 723, column: 14, scope: !414)
!420 = !DILocation(line: 723, column: 7, scope: !414)
!421 = !DILocation(line: 726, column: 15, scope: !422)
!422 = distinct !DILexicalBlock(scope: !423, file: !1, line: 726, column: 10)
!423 = distinct !DILexicalBlock(scope: !410, file: !1, line: 725, column: 10)
!424 = !DILocation(line: 726, column: 10, scope: !422)
!425 = !DILocation(line: 726, column: 18, scope: !422)
!426 = !DILocation(line: 726, column: 10, scope: !423)
!427 = !DILocation(line: 727, column: 34, scope: !428)
!428 = distinct !DILexicalBlock(scope: !422, file: !1, line: 726, column: 26)
!429 = !DILocation(line: 727, column: 37, scope: !428)
!430 = !DILocation(line: 727, column: 40, scope: !428)
!431 = !DILocation(line: 727, column: 43, scope: !428)
!432 = !DILocation(line: 727, column: 46, scope: !428)
!433 = !DILocation(line: 727, column: 16, scope: !428)
!434 = !DILocation(line: 727, column: 9, scope: !428)
!435 = !DILocation(line: 730, column: 35, scope: !436)
!436 = distinct !DILexicalBlock(scope: !422, file: !1, line: 729, column: 12)
!437 = !DILocation(line: 730, column: 38, scope: !436)
!438 = !DILocation(line: 730, column: 41, scope: !436)
!439 = !DILocation(line: 730, column: 44, scope: !436)
!440 = !DILocation(line: 730, column: 47, scope: !436)
!441 = !DILocation(line: 730, column: 16, scope: !436)
!442 = !DILocation(line: 730, column: 9, scope: !436)
!443 = !DILocalVariable(name: "ap", scope: !444, file: !1, line: 739, type: !42)
!444 = distinct !DILexicalBlock(scope: !365, file: !1, line: 734, column: 8)
!445 = !DILocation(line: 739, column: 12, scope: !444)
!446 = !DILocalVariable(name: "bp", scope: !444, file: !1, line: 739, type: !42)
!447 = !DILocation(line: 739, column: 16, scope: !444)
!448 = !DILocation(line: 740, column: 13, scope: !449)
!449 = distinct !DILexicalBlock(scope: !444, file: !1, line: 740, column: 8)
!450 = !DILocation(line: 740, column: 8, scope: !449)
!451 = !DILocation(line: 740, column: 23, scope: !449)
!452 = !DILocation(line: 740, column: 18, scope: !453)
!453 = !DILexicalBlockFile(scope: !449, file: !1, discriminator: 1)
!454 = !DILocation(line: 740, column: 16, scope: !449)
!455 = !DILocation(line: 740, column: 8, scope: !444)
!456 = !DILocation(line: 741, column: 12, scope: !457)
!457 = distinct !DILexicalBlock(scope: !449, file: !1, line: 740, column: 27)
!458 = !DILocation(line: 741, column: 10, scope: !457)
!459 = !DILocation(line: 742, column: 12, scope: !457)
!460 = !DILocation(line: 742, column: 10, scope: !457)
!461 = !DILocation(line: 743, column: 5, scope: !457)
!462 = !DILocation(line: 745, column: 12, scope: !463)
!463 = distinct !DILexicalBlock(scope: !449, file: !1, line: 744, column: 10)
!464 = !DILocation(line: 745, column: 10, scope: !463)
!465 = !DILocation(line: 746, column: 12, scope: !463)
!466 = !DILocation(line: 746, column: 10, scope: !463)
!467 = !DILocation(line: 749, column: 8, scope: !468)
!468 = distinct !DILexicalBlock(scope: !444, file: !1, line: 749, column: 8)
!469 = !DILocation(line: 749, column: 10, scope: !468)
!470 = !DILocation(line: 749, column: 8, scope: !444)
!471 = !DILocation(line: 752, column: 30, scope: !472)
!472 = distinct !DILexicalBlock(scope: !468, file: !1, line: 749, column: 17)
!473 = !DILocation(line: 752, column: 33, scope: !472)
!474 = !DILocation(line: 752, column: 36, scope: !472)
!475 = !DILocation(line: 752, column: 39, scope: !472)
!476 = !DILocation(line: 752, column: 42, scope: !472)
!477 = !DILocation(line: 752, column: 14, scope: !472)
!478 = !DILocation(line: 752, column: 7, scope: !472)
!479 = !DILocation(line: 755, column: 25, scope: !480)
!480 = distinct !DILexicalBlock(scope: !444, file: !1, line: 755, column: 8)
!481 = !DILocation(line: 755, column: 20, scope: !480)
!482 = !DILocation(line: 755, column: 8, scope: !483)
!483 = !DILexicalBlockFile(scope: !480, file: !1, discriminator: 1)
!484 = !DILocation(line: 755, column: 39, scope: !480)
!485 = !DILocation(line: 755, column: 34, scope: !486)
!486 = !DILexicalBlockFile(scope: !480, file: !1, discriminator: 2)
!487 = !DILocation(line: 755, column: 33, scope: !480)
!488 = !DILocation(line: 755, column: 48, scope: !480)
!489 = !DILocation(line: 755, column: 43, scope: !490)
!490 = !DILexicalBlockFile(scope: !480, file: !1, discriminator: 3)
!491 = !DILocation(line: 755, column: 42, scope: !480)
!492 = !DILocation(line: 755, column: 62, scope: !480)
!493 = !DILocation(line: 755, column: 57, scope: !494)
!494 = !DILexicalBlockFile(scope: !480, file: !1, discriminator: 4)
!495 = !DILocation(line: 755, column: 56, scope: !480)
!496 = !DILocation(line: 755, column: 51, scope: !480)
!497 = !DILocation(line: 755, column: 8, scope: !444)
!498 = !DILocation(line: 759, column: 32, scope: !499)
!499 = distinct !DILexicalBlock(scope: !480, file: !1, line: 755, column: 66)
!500 = !DILocation(line: 759, column: 35, scope: !499)
!501 = !DILocation(line: 759, column: 38, scope: !499)
!502 = !DILocation(line: 759, column: 41, scope: !499)
!503 = !DILocation(line: 759, column: 44, scope: !499)
!504 = !DILocation(line: 759, column: 14, scope: !499)
!505 = !DILocation(line: 759, column: 7, scope: !499)
!506 = !DILocation(line: 762, column: 13, scope: !507)
!507 = distinct !DILexicalBlock(scope: !444, file: !1, line: 762, column: 8)
!508 = !DILocation(line: 762, column: 16, scope: !507)
!509 = !DILocation(line: 762, column: 15, scope: !507)
!510 = !DILocation(line: 762, column: 19, scope: !507)
!511 = !DILocation(line: 762, column: 18, scope: !507)
!512 = !DILocation(line: 762, column: 21, scope: !507)
!513 = !DILocation(line: 762, column: 20, scope: !507)
!514 = !DILocation(line: 762, column: 8, scope: !507)
!515 = !DILocation(line: 762, column: 37, scope: !507)
!516 = !DILocation(line: 762, column: 32, scope: !517)
!517 = !DILexicalBlockFile(scope: !507, file: !1, discriminator: 2)
!518 = !DILocation(line: 762, column: 31, scope: !507)
!519 = !DILocation(line: 762, column: 24, scope: !507)
!520 = !DILocation(line: 762, column: 41, scope: !507)
!521 = !DILocation(line: 762, column: 49, scope: !522)
!522 = !DILexicalBlockFile(scope: !507, file: !1, discriminator: 1)
!523 = !DILocation(line: 762, column: 44, scope: !522)
!524 = !DILocation(line: 762, column: 53, scope: !522)
!525 = !DILocation(line: 762, column: 8, scope: !522)
!526 = !DILocalVariable(name: "stat", scope: !527, file: !1, line: 765, type: !50)
!527 = distinct !DILexicalBlock(scope: !507, file: !1, line: 762, column: 61)
!528 = !DILocation(line: 765, column: 11, scope: !527)
!529 = !DILocation(line: 765, column: 38, scope: !527)
!530 = !DILocation(line: 765, column: 42, scope: !527)
!531 = !DILocation(line: 765, column: 45, scope: !527)
!532 = !DILocation(line: 765, column: 48, scope: !527)
!533 = !DILocation(line: 765, column: 47, scope: !527)
!534 = !DILocation(line: 765, column: 51, scope: !527)
!535 = !DILocation(line: 765, column: 18, scope: !527)
!536 = !DILocation(line: 766, column: 34, scope: !527)
!537 = !DILocation(line: 766, column: 42, scope: !527)
!538 = !DILocation(line: 766, column: 29, scope: !527)
!539 = !DILocation(line: 766, column: 27, scope: !527)
!540 = !DILocation(line: 766, column: 7, scope: !527)
!541 = !DILocation(line: 766, column: 15, scope: !527)
!542 = !DILocation(line: 766, column: 19, scope: !527)
!543 = !DILocation(line: 767, column: 14, scope: !527)
!544 = !DILocation(line: 767, column: 7, scope: !527)
!545 = !DILocation(line: 771, column: 5, scope: !444)
!546 = !DILocation(line: 771, column: 13, scope: !444)
!547 = !DILocation(line: 771, column: 17, scope: !444)
!548 = !DILocation(line: 772, column: 5, scope: !444)
!549 = !DILocation(line: 772, column: 13, scope: !444)
!550 = !DILocation(line: 772, column: 17, scope: !444)
!551 = !DILocation(line: 773, column: 5, scope: !444)
!552 = distinct !{!552, !551}
!553 = !DILocation(line: 773, column: 5, scope: !554)
!554 = !DILexicalBlockFile(scope: !555, file: !1, discriminator: 1)
!555 = distinct !DILexicalBlock(scope: !444, file: !1, line: 773, column: 5)
!556 = !DILocation(line: 775, column: 1, scope: !47)
!557 = distinct !DISubprogram(name: "pow_omx", scope: !1, file: !1, line: 625, type: !558, isLocal: true, isDefinition: true, scopeLine: 626, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !59)
!558 = !DISubroutineType(types: !559)
!559 = !{!50, !51, !51, !52}
!560 = !DILocalVariable(name: "x", arg: 1, scope: !557, file: !1, line: 625, type: !51)
!561 = !DILocation(line: 625, column: 33, scope: !557)
!562 = !DILocalVariable(name: "p", arg: 2, scope: !557, file: !1, line: 625, type: !51)
!563 = !DILocation(line: 625, column: 49, scope: !557)
!564 = !DILocalVariable(name: "result", arg: 3, scope: !557, file: !1, line: 625, type: !52)
!565 = !DILocation(line: 625, column: 68, scope: !557)
!566 = !DILocalVariable(name: "ln_omx", scope: !557, file: !1, line: 627, type: !42)
!567 = !DILocation(line: 627, column: 10, scope: !557)
!568 = !DILocalVariable(name: "ln_result", scope: !557, file: !1, line: 628, type: !42)
!569 = !DILocation(line: 628, column: 10, scope: !557)
!570 = !DILocation(line: 629, column: 11, scope: !571)
!571 = distinct !DILexicalBlock(scope: !557, file: !1, line: 629, column: 6)
!572 = !DILocation(line: 629, column: 6, scope: !571)
!573 = !DILocation(line: 629, column: 14, scope: !571)
!574 = !DILocation(line: 629, column: 6, scope: !557)
!575 = !DILocation(line: 630, column: 15, scope: !576)
!576 = distinct !DILexicalBlock(scope: !571, file: !1, line: 629, column: 39)
!577 = !DILocation(line: 630, column: 14, scope: !576)
!578 = !DILocation(line: 630, column: 24, scope: !576)
!579 = !DILocation(line: 630, column: 37, scope: !576)
!580 = !DILocation(line: 630, column: 50, scope: !576)
!581 = !DILocation(line: 630, column: 51, scope: !576)
!582 = !DILocation(line: 630, column: 48, scope: !576)
!583 = !DILocation(line: 630, column: 58, scope: !576)
!584 = !DILocation(line: 630, column: 60, scope: !576)
!585 = !DILocation(line: 630, column: 59, scope: !576)
!586 = !DILocation(line: 630, column: 61, scope: !576)
!587 = !DILocation(line: 630, column: 56, scope: !576)
!588 = !DILocation(line: 630, column: 38, scope: !576)
!589 = !DILocation(line: 630, column: 35, scope: !576)
!590 = !DILocation(line: 630, column: 25, scope: !576)
!591 = !DILocation(line: 630, column: 22, scope: !576)
!592 = !DILocation(line: 630, column: 16, scope: !576)
!593 = !DILocation(line: 630, column: 12, scope: !576)
!594 = !DILocation(line: 631, column: 3, scope: !576)
!595 = !DILocation(line: 633, column: 22, scope: !596)
!596 = distinct !DILexicalBlock(scope: !571, file: !1, line: 632, column: 8)
!597 = !DILocation(line: 633, column: 21, scope: !596)
!598 = !DILocation(line: 633, column: 14, scope: !596)
!599 = !DILocation(line: 633, column: 12, scope: !596)
!600 = !DILocation(line: 635, column: 15, scope: !557)
!601 = !DILocation(line: 635, column: 19, scope: !557)
!602 = !DILocation(line: 635, column: 17, scope: !557)
!603 = !DILocation(line: 635, column: 13, scope: !557)
!604 = !DILocation(line: 636, column: 27, scope: !557)
!605 = !DILocation(line: 636, column: 61, scope: !557)
!606 = !DILocation(line: 636, column: 56, scope: !557)
!607 = !DILocation(line: 636, column: 54, scope: !557)
!608 = !DILocation(line: 636, column: 73, scope: !557)
!609 = !DILocation(line: 636, column: 10, scope: !610)
!610 = !DILexicalBlockFile(scope: !557, file: !1, discriminator: 1)
!611 = !DILocation(line: 636, column: 3, scope: !557)
!612 = distinct !DISubprogram(name: "hyperg_2F1_series", scope: !1, file: !1, line: 40, type: !613, isLocal: true, isDefinition: true, scopeLine: 44, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !59)
!613 = !DISubroutineType(types: !614)
!614 = !{!50, !51, !51, !51, !51, !52}
!615 = !DILocalVariable(name: "a", arg: 1, scope: !612, file: !1, line: 40, type: !51)
!616 = !DILocation(line: 40, column: 32, scope: !612)
!617 = !DILocalVariable(name: "b", arg: 2, scope: !612, file: !1, line: 40, type: !51)
!618 = !DILocation(line: 40, column: 48, scope: !612)
!619 = !DILocalVariable(name: "c", arg: 3, scope: !612, file: !1, line: 40, type: !51)
!620 = !DILocation(line: 40, column: 64, scope: !612)
!621 = !DILocalVariable(name: "x", arg: 4, scope: !612, file: !1, line: 41, type: !51)
!622 = !DILocation(line: 41, column: 32, scope: !612)
!623 = !DILocalVariable(name: "result", arg: 5, scope: !612, file: !1, line: 42, type: !52)
!624 = !DILocation(line: 42, column: 35, scope: !612)
!625 = !DILocalVariable(name: "sum_pos", scope: !612, file: !1, line: 45, type: !42)
!626 = !DILocation(line: 45, column: 10, scope: !612)
!627 = !DILocalVariable(name: "sum_neg", scope: !612, file: !1, line: 46, type: !42)
!628 = !DILocation(line: 46, column: 10, scope: !612)
!629 = !DILocalVariable(name: "del_pos", scope: !612, file: !1, line: 47, type: !42)
!630 = !DILocation(line: 47, column: 10, scope: !612)
!631 = !DILocalVariable(name: "del_neg", scope: !612, file: !1, line: 48, type: !42)
!632 = !DILocation(line: 48, column: 10, scope: !612)
!633 = !DILocalVariable(name: "del", scope: !612, file: !1, line: 49, type: !42)
!634 = !DILocation(line: 49, column: 10, scope: !612)
!635 = !DILocalVariable(name: "del_prev", scope: !612, file: !1, line: 50, type: !42)
!636 = !DILocation(line: 50, column: 10, scope: !612)
!637 = !DILocalVariable(name: "k", scope: !612, file: !1, line: 51, type: !42)
!638 = !DILocation(line: 51, column: 10, scope: !612)
!639 = !DILocalVariable(name: "i", scope: !612, file: !1, line: 52, type: !50)
!640 = !DILocation(line: 52, column: 7, scope: !612)
!641 = !DILocation(line: 54, column: 11, scope: !642)
!642 = distinct !DILexicalBlock(scope: !612, file: !1, line: 54, column: 6)
!643 = !DILocation(line: 54, column: 6, scope: !642)
!644 = !DILocation(line: 54, column: 14, scope: !642)
!645 = !DILocation(line: 54, column: 6, scope: !612)
!646 = !DILocation(line: 55, column: 5, scope: !647)
!647 = distinct !DILexicalBlock(scope: !642, file: !1, line: 54, column: 33)
!648 = !DILocation(line: 55, column: 13, scope: !647)
!649 = !DILocation(line: 55, column: 17, scope: !647)
!650 = !DILocation(line: 56, column: 5, scope: !647)
!651 = !DILocation(line: 56, column: 13, scope: !647)
!652 = !DILocation(line: 56, column: 17, scope: !647)
!653 = !DILocation(line: 57, column: 5, scope: !647)
!654 = distinct !{!654, !653}
!655 = !DILocation(line: 57, column: 5, scope: !656)
!656 = !DILexicalBlockFile(scope: !657, file: !1, discriminator: 1)
!657 = distinct !DILexicalBlock(scope: !647, file: !1, line: 57, column: 5)
!658 = !DILocation(line: 58, column: 3, scope: !647)
!659 = !DILocation(line: 60, column: 3, scope: !612)
!660 = distinct !{!660, !659}
!661 = !DILocation(line: 61, column: 8, scope: !662)
!662 = distinct !DILexicalBlock(scope: !663, file: !1, line: 61, column: 8)
!663 = distinct !DILexicalBlock(scope: !612, file: !1, line: 60, column: 6)
!664 = !DILocation(line: 61, column: 12, scope: !662)
!665 = !DILocation(line: 61, column: 8, scope: !663)
!666 = !DILocation(line: 62, column: 22, scope: !667)
!667 = distinct !DILexicalBlock(scope: !662, file: !1, line: 61, column: 21)
!668 = !DILocation(line: 62, column: 32, scope: !667)
!669 = !DILocation(line: 62, column: 30, scope: !667)
!670 = !DILocation(line: 62, column: 7, scope: !667)
!671 = !DILocation(line: 62, column: 15, scope: !667)
!672 = !DILocation(line: 62, column: 20, scope: !667)
!673 = !DILocation(line: 63, column: 22, scope: !667)
!674 = !DILocation(line: 63, column: 32, scope: !667)
!675 = !DILocation(line: 63, column: 30, scope: !667)
!676 = !DILocation(line: 63, column: 7, scope: !667)
!677 = !DILocation(line: 63, column: 15, scope: !667)
!678 = !DILocation(line: 63, column: 20, scope: !667)
!679 = !DILocation(line: 64, column: 47, scope: !667)
!680 = !DILocation(line: 64, column: 57, scope: !667)
!681 = !DILocation(line: 64, column: 55, scope: !667)
!682 = !DILocation(line: 64, column: 44, scope: !667)
!683 = !DILocation(line: 64, column: 7, scope: !667)
!684 = !DILocation(line: 64, column: 15, scope: !667)
!685 = !DILocation(line: 64, column: 19, scope: !667)
!686 = !DILocation(line: 65, column: 56, scope: !667)
!687 = !DILocation(line: 65, column: 51, scope: !667)
!688 = !DILocation(line: 65, column: 50, scope: !667)
!689 = !DILocation(line: 65, column: 58, scope: !667)
!690 = !DILocation(line: 65, column: 44, scope: !667)
!691 = !DILocation(line: 65, column: 71, scope: !667)
!692 = !DILocation(line: 65, column: 79, scope: !667)
!693 = !DILocation(line: 65, column: 66, scope: !694)
!694 = !DILexicalBlockFile(scope: !667, file: !1, discriminator: 1)
!695 = !DILocation(line: 65, column: 64, scope: !667)
!696 = !DILocation(line: 65, column: 7, scope: !667)
!697 = !DILocation(line: 65, column: 15, scope: !667)
!698 = !DILocation(line: 65, column: 19, scope: !667)
!699 = !DILocation(line: 66, column: 7, scope: !667)
!700 = distinct !{!700, !699}
!701 = !DILocation(line: 66, column: 7, scope: !702)
!702 = !DILexicalBlockFile(scope: !703, file: !1, discriminator: 1)
!703 = distinct !DILexicalBlock(scope: !667, file: !1, line: 66, column: 7)
!704 = !DILocation(line: 67, column: 5, scope: !667)
!705 = !DILocation(line: 68, column: 16, scope: !663)
!706 = !DILocation(line: 68, column: 14, scope: !663)
!707 = !DILocation(line: 69, column: 13, scope: !663)
!708 = !DILocation(line: 69, column: 15, scope: !663)
!709 = !DILocation(line: 69, column: 14, scope: !663)
!710 = !DILocation(line: 69, column: 19, scope: !663)
!711 = !DILocation(line: 69, column: 21, scope: !663)
!712 = !DILocation(line: 69, column: 20, scope: !663)
!713 = !DILocation(line: 69, column: 17, scope: !663)
!714 = !DILocation(line: 69, column: 26, scope: !663)
!715 = !DILocation(line: 69, column: 24, scope: !663)
!716 = !DILocation(line: 69, column: 32, scope: !663)
!717 = !DILocation(line: 69, column: 34, scope: !663)
!718 = !DILocation(line: 69, column: 33, scope: !663)
!719 = !DILocation(line: 69, column: 40, scope: !663)
!720 = !DILocation(line: 69, column: 41, scope: !663)
!721 = !DILocation(line: 69, column: 37, scope: !663)
!722 = !DILocation(line: 69, column: 28, scope: !663)
!723 = !DILocation(line: 69, column: 9, scope: !663)
!724 = !DILocation(line: 71, column: 8, scope: !725)
!725 = distinct !DILexicalBlock(scope: !663, file: !1, line: 71, column: 8)
!726 = !DILocation(line: 71, column: 12, scope: !725)
!727 = !DILocation(line: 71, column: 8, scope: !663)
!728 = !DILocation(line: 72, column: 19, scope: !729)
!729 = distinct !DILexicalBlock(scope: !725, file: !1, line: 71, column: 19)
!730 = !DILocation(line: 72, column: 16, scope: !729)
!731 = !DILocation(line: 73, column: 19, scope: !729)
!732 = !DILocation(line: 73, column: 15, scope: !729)
!733 = !DILocation(line: 74, column: 5, scope: !729)
!734 = !DILocation(line: 75, column: 13, scope: !735)
!735 = distinct !DILexicalBlock(scope: !725, file: !1, line: 75, column: 13)
!736 = !DILocation(line: 75, column: 17, scope: !735)
!737 = !DILocation(line: 75, column: 13, scope: !725)
!738 = !DILocation(line: 78, column: 15, scope: !739)
!739 = distinct !DILexicalBlock(scope: !735, file: !1, line: 75, column: 25)
!740 = !DILocation(line: 79, column: 15, scope: !739)
!741 = !DILocation(line: 80, column: 7, scope: !739)
!742 = !DILocation(line: 83, column: 19, scope: !743)
!743 = distinct !DILexicalBlock(scope: !735, file: !1, line: 82, column: 10)
!744 = !DILocation(line: 83, column: 18, scope: !743)
!745 = !DILocation(line: 83, column: 16, scope: !743)
!746 = !DILocation(line: 84, column: 19, scope: !743)
!747 = !DILocation(line: 84, column: 15, scope: !743)
!748 = !DILocation(line: 93, column: 14, scope: !749)
!749 = distinct !DILexicalBlock(scope: !663, file: !1, line: 93, column: 9)
!750 = !DILocation(line: 93, column: 26, scope: !749)
!751 = !DILocation(line: 93, column: 36, scope: !749)
!752 = !DILocation(line: 93, column: 34, scope: !749)
!753 = !DILocation(line: 93, column: 23, scope: !749)
!754 = !DILocation(line: 93, column: 9, scope: !749)
!755 = !DILocation(line: 93, column: 46, scope: !749)
!756 = !DILocation(line: 93, column: 64, scope: !749)
!757 = !DILocation(line: 94, column: 14, scope: !749)
!758 = !DILocation(line: 94, column: 21, scope: !749)
!759 = !DILocation(line: 94, column: 31, scope: !749)
!760 = !DILocation(line: 94, column: 29, scope: !749)
!761 = !DILocation(line: 94, column: 18, scope: !749)
!762 = !DILocation(line: 94, column: 9, scope: !749)
!763 = !DILocation(line: 94, column: 41, scope: !749)
!764 = !DILocation(line: 93, column: 9, scope: !765)
!765 = !DILexicalBlockFile(scope: !663, file: !1, discriminator: 1)
!766 = !DILocation(line: 95, column: 7, scope: !749)
!767 = !DILocation(line: 97, column: 7, scope: !663)
!768 = !DILocation(line: 98, column: 3, scope: !663)
!769 = !DILocation(line: 98, column: 17, scope: !770)
!770 = !DILexicalBlockFile(scope: !612, file: !1, discriminator: 1)
!771 = !DILocation(line: 98, column: 27, scope: !770)
!772 = !DILocation(line: 98, column: 25, scope: !770)
!773 = !DILocation(line: 98, column: 37, scope: !770)
!774 = !DILocation(line: 98, column: 45, scope: !770)
!775 = !DILocation(line: 98, column: 44, scope: !770)
!776 = !DILocation(line: 98, column: 35, scope: !770)
!777 = !DILocation(line: 98, column: 11, scope: !770)
!778 = !DILocation(line: 98, column: 55, scope: !770)
!779 = !DILocation(line: 98, column: 3, scope: !770)
!780 = !DILocation(line: 100, column: 18, scope: !612)
!781 = !DILocation(line: 100, column: 28, scope: !612)
!782 = !DILocation(line: 100, column: 26, scope: !612)
!783 = !DILocation(line: 100, column: 3, scope: !612)
!784 = !DILocation(line: 100, column: 11, scope: !612)
!785 = !DILocation(line: 100, column: 16, scope: !612)
!786 = !DILocation(line: 101, column: 18, scope: !612)
!787 = !DILocation(line: 101, column: 28, scope: !612)
!788 = !DILocation(line: 101, column: 26, scope: !612)
!789 = !DILocation(line: 101, column: 3, scope: !612)
!790 = !DILocation(line: 101, column: 11, scope: !612)
!791 = !DILocation(line: 101, column: 16, scope: !612)
!792 = !DILocation(line: 102, column: 43, scope: !612)
!793 = !DILocation(line: 102, column: 53, scope: !612)
!794 = !DILocation(line: 102, column: 51, scope: !612)
!795 = !DILocation(line: 102, column: 40, scope: !612)
!796 = !DILocation(line: 102, column: 3, scope: !612)
!797 = !DILocation(line: 102, column: 11, scope: !612)
!798 = !DILocation(line: 102, column: 15, scope: !612)
!799 = !DILocation(line: 103, column: 52, scope: !612)
!800 = !DILocation(line: 103, column: 47, scope: !612)
!801 = !DILocation(line: 103, column: 46, scope: !612)
!802 = !DILocation(line: 103, column: 55, scope: !612)
!803 = !DILocation(line: 103, column: 40, scope: !612)
!804 = !DILocation(line: 103, column: 69, scope: !612)
!805 = !DILocation(line: 103, column: 77, scope: !612)
!806 = !DILocation(line: 103, column: 64, scope: !770)
!807 = !DILocation(line: 103, column: 62, scope: !612)
!808 = !DILocation(line: 103, column: 3, scope: !612)
!809 = !DILocation(line: 103, column: 11, scope: !612)
!810 = !DILocation(line: 103, column: 15, scope: !612)
!811 = !DILocation(line: 105, column: 3, scope: !612)
!812 = !DILocation(line: 106, column: 1, scope: !612)
!813 = distinct !DISubprogram(name: "hyperg_2F1_luke", scope: !1, file: !1, line: 171, type: !613, isLocal: true, isDefinition: true, scopeLine: 174, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !59)
!814 = !DILocalVariable(name: "a", arg: 1, scope: !813, file: !1, line: 171, type: !51)
!815 = !DILocation(line: 171, column: 30, scope: !813)
!816 = !DILocalVariable(name: "b", arg: 2, scope: !813, file: !1, line: 171, type: !51)
!817 = !DILocation(line: 171, column: 46, scope: !813)
!818 = !DILocalVariable(name: "c", arg: 3, scope: !813, file: !1, line: 171, type: !51)
!819 = !DILocation(line: 171, column: 62, scope: !813)
!820 = !DILocalVariable(name: "xin", arg: 4, scope: !813, file: !1, line: 172, type: !51)
!821 = !DILocation(line: 172, column: 30, scope: !813)
!822 = !DILocalVariable(name: "result", arg: 5, scope: !813, file: !1, line: 173, type: !52)
!823 = !DILocation(line: 173, column: 33, scope: !813)
!824 = !DILocalVariable(name: "stat_iter", scope: !813, file: !1, line: 175, type: !50)
!825 = !DILocation(line: 175, column: 7, scope: !813)
!826 = !DILocalVariable(name: "RECUR_BIG", scope: !813, file: !1, line: 176, type: !51)
!827 = !DILocation(line: 176, column: 16, scope: !813)
!828 = !DILocalVariable(name: "nmax", scope: !813, file: !1, line: 177, type: !94)
!829 = !DILocation(line: 177, column: 13, scope: !813)
!830 = !DILocalVariable(name: "n", scope: !813, file: !1, line: 178, type: !50)
!831 = !DILocation(line: 178, column: 7, scope: !813)
!832 = !DILocalVariable(name: "x", scope: !813, file: !1, line: 179, type: !51)
!833 = !DILocation(line: 179, column: 16, scope: !813)
!834 = !DILocation(line: 179, column: 22, scope: !813)
!835 = !DILocation(line: 179, column: 21, scope: !813)
!836 = !DILocalVariable(name: "x3", scope: !813, file: !1, line: 180, type: !51)
!837 = !DILocation(line: 180, column: 16, scope: !813)
!838 = !DILocation(line: 180, column: 21, scope: !813)
!839 = !DILocation(line: 180, column: 23, scope: !813)
!840 = !DILocation(line: 180, column: 22, scope: !813)
!841 = !DILocation(line: 180, column: 25, scope: !813)
!842 = !DILocation(line: 180, column: 24, scope: !813)
!843 = !DILocalVariable(name: "t0", scope: !813, file: !1, line: 181, type: !51)
!844 = !DILocation(line: 181, column: 16, scope: !813)
!845 = !DILocation(line: 181, column: 21, scope: !813)
!846 = !DILocation(line: 181, column: 23, scope: !813)
!847 = !DILocation(line: 181, column: 22, scope: !813)
!848 = !DILocation(line: 181, column: 25, scope: !813)
!849 = !DILocation(line: 181, column: 24, scope: !813)
!850 = !DILocalVariable(name: "t1", scope: !813, file: !1, line: 182, type: !51)
!851 = !DILocation(line: 182, column: 16, scope: !813)
!852 = !DILocation(line: 182, column: 22, scope: !813)
!853 = !DILocation(line: 182, column: 23, scope: !813)
!854 = !DILocation(line: 182, column: 30, scope: !813)
!855 = !DILocation(line: 182, column: 31, scope: !813)
!856 = !DILocation(line: 182, column: 28, scope: !813)
!857 = !DILocation(line: 182, column: 42, scope: !813)
!858 = !DILocation(line: 182, column: 41, scope: !813)
!859 = !DILocation(line: 182, column: 36, scope: !813)
!860 = !DILocalVariable(name: "t2", scope: !813, file: !1, line: 183, type: !51)
!861 = !DILocation(line: 183, column: 16, scope: !813)
!862 = !DILocation(line: 183, column: 22, scope: !813)
!863 = !DILocation(line: 183, column: 23, scope: !813)
!864 = !DILocation(line: 183, column: 30, scope: !813)
!865 = !DILocation(line: 183, column: 31, scope: !813)
!866 = !DILocation(line: 183, column: 28, scope: !813)
!867 = !DILocation(line: 183, column: 43, scope: !813)
!868 = !DILocation(line: 183, column: 44, scope: !813)
!869 = !DILocation(line: 183, column: 41, scope: !813)
!870 = !DILocation(line: 183, column: 36, scope: !813)
!871 = !DILocalVariable(name: "F", scope: !813, file: !1, line: 184, type: !42)
!872 = !DILocation(line: 184, column: 10, scope: !813)
!873 = !DILocalVariable(name: "prec", scope: !813, file: !1, line: 185, type: !42)
!874 = !DILocation(line: 185, column: 10, scope: !813)
!875 = !DILocalVariable(name: "Bnm3", scope: !813, file: !1, line: 187, type: !42)
!876 = !DILocation(line: 187, column: 10, scope: !813)
!877 = !DILocalVariable(name: "Bnm2", scope: !813, file: !1, line: 188, type: !42)
!878 = !DILocation(line: 188, column: 10, scope: !813)
!879 = !DILocation(line: 188, column: 23, scope: !813)
!880 = !DILocation(line: 188, column: 28, scope: !813)
!881 = !DILocation(line: 188, column: 26, scope: !813)
!882 = !DILocation(line: 188, column: 21, scope: !813)
!883 = !DILocalVariable(name: "Bnm1", scope: !813, file: !1, line: 189, type: !42)
!884 = !DILocation(line: 189, column: 10, scope: !813)
!885 = !DILocation(line: 189, column: 23, scope: !813)
!886 = !DILocation(line: 189, column: 28, scope: !813)
!887 = !DILocation(line: 189, column: 26, scope: !813)
!888 = !DILocation(line: 189, column: 39, scope: !813)
!889 = !DILocation(line: 189, column: 41, scope: !813)
!890 = !DILocation(line: 189, column: 48, scope: !813)
!891 = !DILocation(line: 189, column: 46, scope: !813)
!892 = !DILocation(line: 189, column: 37, scope: !813)
!893 = !DILocation(line: 189, column: 30, scope: !813)
!894 = !DILocation(line: 189, column: 21, scope: !813)
!895 = !DILocalVariable(name: "Anm3", scope: !813, file: !1, line: 191, type: !42)
!896 = !DILocation(line: 191, column: 10, scope: !813)
!897 = !DILocalVariable(name: "Anm2", scope: !813, file: !1, line: 192, type: !42)
!898 = !DILocation(line: 192, column: 10, scope: !813)
!899 = !DILocation(line: 192, column: 17, scope: !813)
!900 = !DILocation(line: 192, column: 24, scope: !813)
!901 = !DILocation(line: 192, column: 29, scope: !813)
!902 = !DILocation(line: 192, column: 27, scope: !813)
!903 = !DILocation(line: 192, column: 22, scope: !813)
!904 = !DILocalVariable(name: "Anm1", scope: !813, file: !1, line: 193, type: !42)
!905 = !DILocation(line: 193, column: 10, scope: !813)
!906 = !DILocation(line: 193, column: 17, scope: !813)
!907 = !DILocation(line: 193, column: 24, scope: !813)
!908 = !DILocation(line: 193, column: 34, scope: !813)
!909 = !DILocation(line: 193, column: 37, scope: !813)
!910 = !DILocation(line: 193, column: 36, scope: !813)
!911 = !DILocation(line: 193, column: 32, scope: !813)
!912 = !DILocation(line: 193, column: 26, scope: !813)
!913 = !DILocation(line: 193, column: 40, scope: !813)
!914 = !DILocation(line: 193, column: 39, scope: !813)
!915 = !DILocation(line: 193, column: 22, scope: !813)
!916 = !DILocation(line: 193, column: 44, scope: !813)
!917 = !DILocation(line: 193, column: 49, scope: !813)
!918 = !DILocation(line: 193, column: 47, scope: !813)
!919 = !DILocation(line: 193, column: 55, scope: !813)
!920 = !DILocation(line: 193, column: 58, scope: !813)
!921 = !DILocation(line: 193, column: 59, scope: !813)
!922 = !DILocation(line: 193, column: 56, scope: !813)
!923 = !DILocation(line: 193, column: 52, scope: !813)
!924 = !DILocation(line: 193, column: 68, scope: !813)
!925 = !DILocation(line: 193, column: 66, scope: !813)
!926 = !DILocation(line: 193, column: 70, scope: !813)
!927 = !DILocation(line: 193, column: 69, scope: !813)
!928 = !DILocation(line: 193, column: 42, scope: !813)
!929 = !DILocation(line: 195, column: 3, scope: !813)
!930 = !DILocalVariable(name: "npam1", scope: !931, file: !1, line: 196, type: !42)
!931 = distinct !DILexicalBlock(scope: !813, file: !1, line: 195, column: 12)
!932 = !DILocation(line: 196, column: 12, scope: !931)
!933 = !DILocation(line: 196, column: 20, scope: !931)
!934 = !DILocation(line: 196, column: 24, scope: !931)
!935 = !DILocation(line: 196, column: 22, scope: !931)
!936 = !DILocation(line: 196, column: 26, scope: !931)
!937 = !DILocalVariable(name: "npbm1", scope: !931, file: !1, line: 197, type: !42)
!938 = !DILocation(line: 197, column: 12, scope: !931)
!939 = !DILocation(line: 197, column: 20, scope: !931)
!940 = !DILocation(line: 197, column: 24, scope: !931)
!941 = !DILocation(line: 197, column: 22, scope: !931)
!942 = !DILocation(line: 197, column: 26, scope: !931)
!943 = !DILocalVariable(name: "npcm1", scope: !931, file: !1, line: 198, type: !42)
!944 = !DILocation(line: 198, column: 12, scope: !931)
!945 = !DILocation(line: 198, column: 20, scope: !931)
!946 = !DILocation(line: 198, column: 24, scope: !931)
!947 = !DILocation(line: 198, column: 22, scope: !931)
!948 = !DILocation(line: 198, column: 26, scope: !931)
!949 = !DILocalVariable(name: "npam2", scope: !931, file: !1, line: 199, type: !42)
!950 = !DILocation(line: 199, column: 12, scope: !931)
!951 = !DILocation(line: 199, column: 20, scope: !931)
!952 = !DILocation(line: 199, column: 24, scope: !931)
!953 = !DILocation(line: 199, column: 22, scope: !931)
!954 = !DILocation(line: 199, column: 26, scope: !931)
!955 = !DILocalVariable(name: "npbm2", scope: !931, file: !1, line: 200, type: !42)
!956 = !DILocation(line: 200, column: 12, scope: !931)
!957 = !DILocation(line: 200, column: 20, scope: !931)
!958 = !DILocation(line: 200, column: 24, scope: !931)
!959 = !DILocation(line: 200, column: 22, scope: !931)
!960 = !DILocation(line: 200, column: 26, scope: !931)
!961 = !DILocalVariable(name: "npcm2", scope: !931, file: !1, line: 201, type: !42)
!962 = !DILocation(line: 201, column: 12, scope: !931)
!963 = !DILocation(line: 201, column: 20, scope: !931)
!964 = !DILocation(line: 201, column: 24, scope: !931)
!965 = !DILocation(line: 201, column: 22, scope: !931)
!966 = !DILocation(line: 201, column: 26, scope: !931)
!967 = !DILocalVariable(name: "tnm1", scope: !931, file: !1, line: 202, type: !42)
!968 = !DILocation(line: 202, column: 12, scope: !931)
!969 = !DILocation(line: 202, column: 22, scope: !931)
!970 = !DILocation(line: 202, column: 21, scope: !931)
!971 = !DILocation(line: 202, column: 24, scope: !931)
!972 = !DILocation(line: 202, column: 20, scope: !931)
!973 = !DILocalVariable(name: "tnm3", scope: !931, file: !1, line: 203, type: !42)
!974 = !DILocation(line: 203, column: 12, scope: !931)
!975 = !DILocation(line: 203, column: 22, scope: !931)
!976 = !DILocation(line: 203, column: 21, scope: !931)
!977 = !DILocation(line: 203, column: 24, scope: !931)
!978 = !DILocation(line: 203, column: 20, scope: !931)
!979 = !DILocalVariable(name: "tnm5", scope: !931, file: !1, line: 204, type: !42)
!980 = !DILocation(line: 204, column: 12, scope: !931)
!981 = !DILocation(line: 204, column: 22, scope: !931)
!982 = !DILocation(line: 204, column: 21, scope: !931)
!983 = !DILocation(line: 204, column: 24, scope: !931)
!984 = !DILocation(line: 204, column: 20, scope: !931)
!985 = !DILocalVariable(name: "n2", scope: !931, file: !1, line: 205, type: !42)
!986 = !DILocation(line: 205, column: 12, scope: !931)
!987 = !DILocation(line: 205, column: 17, scope: !931)
!988 = !DILocation(line: 205, column: 19, scope: !931)
!989 = !DILocation(line: 205, column: 18, scope: !931)
!990 = !DILocalVariable(name: "F1", scope: !931, file: !1, line: 206, type: !42)
!991 = !DILocation(line: 206, column: 12, scope: !931)
!992 = !DILocation(line: 206, column: 23, scope: !931)
!993 = !DILocation(line: 206, column: 22, scope: !931)
!994 = !DILocation(line: 206, column: 29, scope: !931)
!995 = !DILocation(line: 206, column: 31, scope: !931)
!996 = !DILocation(line: 206, column: 30, scope: !931)
!997 = !DILocation(line: 206, column: 32, scope: !931)
!998 = !DILocation(line: 206, column: 36, scope: !931)
!999 = !DILocation(line: 206, column: 35, scope: !931)
!1000 = !DILocation(line: 206, column: 26, scope: !931)
!1001 = !DILocation(line: 206, column: 38, scope: !931)
!1002 = !DILocation(line: 206, column: 44, scope: !931)
!1003 = !DILocation(line: 206, column: 46, scope: !931)
!1004 = !DILocation(line: 206, column: 45, scope: !931)
!1005 = !DILocation(line: 206, column: 42, scope: !931)
!1006 = !DILocation(line: 206, column: 53, scope: !931)
!1007 = !DILocation(line: 206, column: 55, scope: !931)
!1008 = !DILocation(line: 206, column: 54, scope: !931)
!1009 = !DILocation(line: 206, column: 51, scope: !931)
!1010 = !DILocation(line: 206, column: 48, scope: !931)
!1011 = !DILocation(line: 206, column: 64, scope: !931)
!1012 = !DILocation(line: 206, column: 63, scope: !931)
!1013 = !DILocation(line: 206, column: 69, scope: !931)
!1014 = !DILocation(line: 206, column: 68, scope: !931)
!1015 = !DILocation(line: 206, column: 59, scope: !931)
!1016 = !DILocalVariable(name: "F2", scope: !931, file: !1, line: 207, type: !42)
!1017 = !DILocation(line: 207, column: 12, scope: !931)
!1018 = !DILocation(line: 207, column: 23, scope: !931)
!1019 = !DILocation(line: 207, column: 22, scope: !931)
!1020 = !DILocation(line: 207, column: 29, scope: !931)
!1021 = !DILocation(line: 207, column: 31, scope: !931)
!1022 = !DILocation(line: 207, column: 30, scope: !931)
!1023 = !DILocation(line: 207, column: 32, scope: !931)
!1024 = !DILocation(line: 207, column: 36, scope: !931)
!1025 = !DILocation(line: 207, column: 35, scope: !931)
!1026 = !DILocation(line: 207, column: 26, scope: !931)
!1027 = !DILocation(line: 207, column: 38, scope: !931)
!1028 = !DILocation(line: 207, column: 44, scope: !931)
!1029 = !DILocation(line: 207, column: 46, scope: !931)
!1030 = !DILocation(line: 207, column: 45, scope: !931)
!1031 = !DILocation(line: 207, column: 42, scope: !931)
!1032 = !DILocation(line: 207, column: 17, scope: !931)
!1033 = !DILocation(line: 207, column: 49, scope: !931)
!1034 = !DILocation(line: 207, column: 48, scope: !931)
!1035 = !DILocation(line: 207, column: 55, scope: !931)
!1036 = !DILocation(line: 207, column: 54, scope: !931)
!1037 = !DILocation(line: 207, column: 64, scope: !931)
!1038 = !DILocation(line: 207, column: 63, scope: !931)
!1039 = !DILocation(line: 207, column: 69, scope: !931)
!1040 = !DILocation(line: 207, column: 68, scope: !931)
!1041 = !DILocation(line: 207, column: 74, scope: !931)
!1042 = !DILocation(line: 207, column: 73, scope: !931)
!1043 = !DILocation(line: 207, column: 80, scope: !931)
!1044 = !DILocation(line: 207, column: 79, scope: !931)
!1045 = !DILocation(line: 207, column: 60, scope: !931)
!1046 = !DILocalVariable(name: "F3", scope: !931, file: !1, line: 208, type: !42)
!1047 = !DILocation(line: 208, column: 12, scope: !931)
!1048 = !DILocation(line: 208, column: 18, scope: !931)
!1049 = !DILocation(line: 208, column: 24, scope: !931)
!1050 = !DILocation(line: 208, column: 23, scope: !931)
!1051 = !DILocation(line: 208, column: 30, scope: !931)
!1052 = !DILocation(line: 208, column: 29, scope: !931)
!1053 = !DILocation(line: 208, column: 36, scope: !931)
!1054 = !DILocation(line: 208, column: 35, scope: !931)
!1055 = !DILocation(line: 208, column: 43, scope: !931)
!1056 = !DILocation(line: 208, column: 45, scope: !931)
!1057 = !DILocation(line: 208, column: 44, scope: !931)
!1058 = !DILocation(line: 208, column: 46, scope: !931)
!1059 = !DILocation(line: 208, column: 41, scope: !931)
!1060 = !DILocation(line: 208, column: 51, scope: !931)
!1061 = !DILocation(line: 208, column: 53, scope: !931)
!1062 = !DILocation(line: 208, column: 52, scope: !931)
!1063 = !DILocation(line: 208, column: 54, scope: !931)
!1064 = !DILocation(line: 208, column: 49, scope: !931)
!1065 = !DILocation(line: 208, column: 64, scope: !931)
!1066 = !DILocation(line: 208, column: 63, scope: !931)
!1067 = !DILocation(line: 208, column: 69, scope: !931)
!1068 = !DILocation(line: 208, column: 68, scope: !931)
!1069 = !DILocation(line: 208, column: 74, scope: !931)
!1070 = !DILocation(line: 208, column: 73, scope: !931)
!1071 = !DILocation(line: 208, column: 80, scope: !931)
!1072 = !DILocation(line: 208, column: 82, scope: !931)
!1073 = !DILocation(line: 208, column: 81, scope: !931)
!1074 = !DILocation(line: 208, column: 83, scope: !931)
!1075 = !DILocation(line: 208, column: 78, scope: !931)
!1076 = !DILocation(line: 208, column: 87, scope: !931)
!1077 = !DILocation(line: 208, column: 86, scope: !931)
!1078 = !DILocation(line: 208, column: 93, scope: !931)
!1079 = !DILocation(line: 208, column: 92, scope: !931)
!1080 = !DILocation(line: 208, column: 59, scope: !931)
!1081 = !DILocalVariable(name: "E", scope: !931, file: !1, line: 209, type: !42)
!1082 = !DILocation(line: 209, column: 12, scope: !931)
!1083 = !DILocation(line: 209, column: 18, scope: !931)
!1084 = !DILocation(line: 209, column: 17, scope: !931)
!1085 = !DILocation(line: 209, column: 24, scope: !931)
!1086 = !DILocation(line: 209, column: 23, scope: !931)
!1087 = !DILocation(line: 209, column: 31, scope: !931)
!1088 = !DILocation(line: 209, column: 33, scope: !931)
!1089 = !DILocation(line: 209, column: 32, scope: !931)
!1090 = !DILocation(line: 209, column: 34, scope: !931)
!1091 = !DILocation(line: 209, column: 29, scope: !931)
!1092 = !DILocation(line: 209, column: 43, scope: !931)
!1093 = !DILocation(line: 209, column: 42, scope: !931)
!1094 = !DILocation(line: 209, column: 48, scope: !931)
!1095 = !DILocation(line: 209, column: 47, scope: !931)
!1096 = !DILocation(line: 209, column: 54, scope: !931)
!1097 = !DILocation(line: 209, column: 53, scope: !931)
!1098 = !DILocation(line: 209, column: 38, scope: !931)
!1099 = !DILocalVariable(name: "An", scope: !931, file: !1, line: 211, type: !42)
!1100 = !DILocation(line: 211, column: 12, scope: !931)
!1101 = !DILocation(line: 211, column: 22, scope: !931)
!1102 = !DILocation(line: 211, column: 25, scope: !931)
!1103 = !DILocation(line: 211, column: 24, scope: !931)
!1104 = !DILocation(line: 211, column: 21, scope: !931)
!1105 = !DILocation(line: 211, column: 28, scope: !931)
!1106 = !DILocation(line: 211, column: 27, scope: !931)
!1107 = !DILocation(line: 211, column: 36, scope: !931)
!1108 = !DILocation(line: 211, column: 40, scope: !931)
!1109 = !DILocation(line: 211, column: 43, scope: !931)
!1110 = !DILocation(line: 211, column: 42, scope: !931)
!1111 = !DILocation(line: 211, column: 38, scope: !931)
!1112 = !DILocation(line: 211, column: 46, scope: !931)
!1113 = !DILocation(line: 211, column: 45, scope: !931)
!1114 = !DILocation(line: 211, column: 48, scope: !931)
!1115 = !DILocation(line: 211, column: 47, scope: !931)
!1116 = !DILocation(line: 211, column: 33, scope: !931)
!1117 = !DILocation(line: 211, column: 55, scope: !931)
!1118 = !DILocation(line: 211, column: 58, scope: !931)
!1119 = !DILocation(line: 211, column: 57, scope: !931)
!1120 = !DILocation(line: 211, column: 61, scope: !931)
!1121 = !DILocation(line: 211, column: 60, scope: !931)
!1122 = !DILocation(line: 211, column: 53, scope: !931)
!1123 = !DILocalVariable(name: "Bn", scope: !931, file: !1, line: 212, type: !42)
!1124 = !DILocation(line: 212, column: 12, scope: !931)
!1125 = !DILocation(line: 212, column: 22, scope: !931)
!1126 = !DILocation(line: 212, column: 25, scope: !931)
!1127 = !DILocation(line: 212, column: 24, scope: !931)
!1128 = !DILocation(line: 212, column: 21, scope: !931)
!1129 = !DILocation(line: 212, column: 28, scope: !931)
!1130 = !DILocation(line: 212, column: 27, scope: !931)
!1131 = !DILocation(line: 212, column: 36, scope: !931)
!1132 = !DILocation(line: 212, column: 40, scope: !931)
!1133 = !DILocation(line: 212, column: 43, scope: !931)
!1134 = !DILocation(line: 212, column: 42, scope: !931)
!1135 = !DILocation(line: 212, column: 38, scope: !931)
!1136 = !DILocation(line: 212, column: 46, scope: !931)
!1137 = !DILocation(line: 212, column: 45, scope: !931)
!1138 = !DILocation(line: 212, column: 48, scope: !931)
!1139 = !DILocation(line: 212, column: 47, scope: !931)
!1140 = !DILocation(line: 212, column: 33, scope: !931)
!1141 = !DILocation(line: 212, column: 55, scope: !931)
!1142 = !DILocation(line: 212, column: 58, scope: !931)
!1143 = !DILocation(line: 212, column: 57, scope: !931)
!1144 = !DILocation(line: 212, column: 61, scope: !931)
!1145 = !DILocation(line: 212, column: 60, scope: !931)
!1146 = !DILocation(line: 212, column: 53, scope: !931)
!1147 = !DILocalVariable(name: "r", scope: !931, file: !1, line: 213, type: !42)
!1148 = !DILocation(line: 213, column: 12, scope: !931)
!1149 = !DILocation(line: 213, column: 16, scope: !931)
!1150 = !DILocation(line: 213, column: 19, scope: !931)
!1151 = !DILocation(line: 213, column: 18, scope: !931)
!1152 = !DILocation(line: 215, column: 18, scope: !931)
!1153 = !DILocation(line: 215, column: 22, scope: !931)
!1154 = !DILocation(line: 215, column: 20, scope: !931)
!1155 = !DILocation(line: 215, column: 25, scope: !931)
!1156 = !DILocation(line: 215, column: 24, scope: !931)
!1157 = !DILocation(line: 215, column: 12, scope: !931)
!1158 = !DILocation(line: 215, column: 10, scope: !931)
!1159 = !DILocation(line: 216, column: 9, scope: !931)
!1160 = !DILocation(line: 216, column: 7, scope: !931)
!1161 = !DILocation(line: 218, column: 8, scope: !1162)
!1162 = distinct !DILexicalBlock(scope: !931, file: !1, line: 218, column: 8)
!1163 = !DILocation(line: 218, column: 13, scope: !1162)
!1164 = !DILocation(line: 218, column: 31, scope: !1162)
!1165 = !DILocation(line: 218, column: 34, scope: !1166)
!1166 = !DILexicalBlockFile(scope: !1162, file: !1, discriminator: 1)
!1167 = !DILocation(line: 218, column: 36, scope: !1166)
!1168 = !DILocation(line: 218, column: 8, scope: !1166)
!1169 = !DILocation(line: 218, column: 44, scope: !1170)
!1170 = !DILexicalBlockFile(scope: !1162, file: !1, discriminator: 2)
!1171 = !DILocation(line: 220, column: 13, scope: !1172)
!1172 = distinct !DILexicalBlock(scope: !931, file: !1, line: 220, column: 8)
!1173 = !DILocation(line: 220, column: 8, scope: !1172)
!1174 = !DILocation(line: 220, column: 17, scope: !1172)
!1175 = !DILocation(line: 220, column: 29, scope: !1172)
!1176 = !DILocation(line: 220, column: 37, scope: !1177)
!1177 = !DILexicalBlockFile(scope: !1172, file: !1, discriminator: 1)
!1178 = !DILocation(line: 220, column: 32, scope: !1177)
!1179 = !DILocation(line: 220, column: 41, scope: !1177)
!1180 = !DILocation(line: 220, column: 8, scope: !1177)
!1181 = !DILocation(line: 221, column: 12, scope: !1182)
!1182 = distinct !DILexicalBlock(scope: !1172, file: !1, line: 220, column: 54)
!1183 = !DILocation(line: 222, column: 12, scope: !1182)
!1184 = !DILocation(line: 223, column: 12, scope: !1182)
!1185 = !DILocation(line: 224, column: 12, scope: !1182)
!1186 = !DILocation(line: 225, column: 12, scope: !1182)
!1187 = !DILocation(line: 226, column: 12, scope: !1182)
!1188 = !DILocation(line: 227, column: 12, scope: !1182)
!1189 = !DILocation(line: 228, column: 12, scope: !1182)
!1190 = !DILocation(line: 229, column: 5, scope: !1182)
!1191 = !DILocation(line: 230, column: 18, scope: !1192)
!1192 = distinct !DILexicalBlock(scope: !1172, file: !1, line: 230, column: 13)
!1193 = !DILocation(line: 230, column: 13, scope: !1192)
!1194 = !DILocation(line: 230, column: 22, scope: !1192)
!1195 = !DILocation(line: 230, column: 38, scope: !1192)
!1196 = !DILocation(line: 230, column: 46, scope: !1197)
!1197 = !DILexicalBlockFile(scope: !1192, file: !1, discriminator: 1)
!1198 = !DILocation(line: 230, column: 41, scope: !1197)
!1199 = !DILocation(line: 230, column: 50, scope: !1197)
!1200 = !DILocation(line: 230, column: 13, scope: !1197)
!1201 = !DILocation(line: 231, column: 12, scope: !1202)
!1202 = distinct !DILexicalBlock(scope: !1192, file: !1, line: 230, column: 67)
!1203 = !DILocation(line: 232, column: 12, scope: !1202)
!1204 = !DILocation(line: 233, column: 12, scope: !1202)
!1205 = !DILocation(line: 234, column: 12, scope: !1202)
!1206 = !DILocation(line: 235, column: 12, scope: !1202)
!1207 = !DILocation(line: 236, column: 12, scope: !1202)
!1208 = !DILocation(line: 237, column: 12, scope: !1202)
!1209 = !DILocation(line: 238, column: 12, scope: !1202)
!1210 = !DILocation(line: 239, column: 5, scope: !1202)
!1211 = !DILocation(line: 241, column: 6, scope: !931)
!1212 = !DILocation(line: 242, column: 12, scope: !931)
!1213 = !DILocation(line: 242, column: 10, scope: !931)
!1214 = !DILocation(line: 243, column: 12, scope: !931)
!1215 = !DILocation(line: 243, column: 10, scope: !931)
!1216 = !DILocation(line: 244, column: 12, scope: !931)
!1217 = !DILocation(line: 244, column: 10, scope: !931)
!1218 = !DILocation(line: 245, column: 12, scope: !931)
!1219 = !DILocation(line: 245, column: 10, scope: !931)
!1220 = !DILocation(line: 246, column: 12, scope: !931)
!1221 = !DILocation(line: 246, column: 10, scope: !931)
!1222 = !DILocation(line: 247, column: 12, scope: !931)
!1223 = !DILocation(line: 247, column: 10, scope: !931)
!1224 = !DILocation(line: 195, column: 3, scope: !1225)
!1225 = !DILexicalBlockFile(scope: !813, file: !1, discriminator: 1)
!1226 = distinct !{!1226, !929}
!1227 = !DILocation(line: 250, column: 18, scope: !813)
!1228 = !DILocation(line: 250, column: 3, scope: !813)
!1229 = !DILocation(line: 250, column: 11, scope: !813)
!1230 = !DILocation(line: 250, column: 16, scope: !813)
!1231 = !DILocation(line: 251, column: 29, scope: !813)
!1232 = !DILocation(line: 251, column: 36, scope: !813)
!1233 = !DILocation(line: 251, column: 34, scope: !813)
!1234 = !DILocation(line: 251, column: 24, scope: !813)
!1235 = !DILocation(line: 251, column: 22, scope: !813)
!1236 = !DILocation(line: 251, column: 3, scope: !813)
!1237 = !DILocation(line: 251, column: 11, scope: !813)
!1238 = !DILocation(line: 251, column: 16, scope: !813)
!1239 = !DILocation(line: 252, column: 43, scope: !813)
!1240 = !DILocation(line: 252, column: 44, scope: !813)
!1241 = !DILocation(line: 252, column: 40, scope: !813)
!1242 = !DILocation(line: 252, column: 57, scope: !813)
!1243 = !DILocation(line: 252, column: 52, scope: !813)
!1244 = !DILocation(line: 252, column: 50, scope: !813)
!1245 = !DILocation(line: 252, column: 3, scope: !813)
!1246 = !DILocation(line: 252, column: 11, scope: !813)
!1247 = !DILocation(line: 252, column: 15, scope: !813)
!1248 = !DILocation(line: 255, column: 30, scope: !813)
!1249 = !DILocation(line: 255, column: 25, scope: !813)
!1250 = !DILocation(line: 255, column: 40, scope: !813)
!1251 = !DILocation(line: 255, column: 35, scope: !1225)
!1252 = !DILocation(line: 255, column: 33, scope: !813)
!1253 = !DILocation(line: 255, column: 43, scope: !813)
!1254 = !DILocation(line: 255, column: 22, scope: !813)
!1255 = !DILocation(line: 255, column: 3, scope: !813)
!1256 = !DILocation(line: 255, column: 11, scope: !813)
!1257 = !DILocation(line: 255, column: 15, scope: !813)
!1258 = !DILocation(line: 257, column: 16, scope: !813)
!1259 = !DILocation(line: 257, column: 18, scope: !813)
!1260 = !DILocation(line: 257, column: 13, scope: !813)
!1261 = !DILocation(line: 259, column: 10, scope: !813)
!1262 = !DILocation(line: 259, column: 3, scope: !813)
!1263 = distinct !DISubprogram(name: "hyperg_2F1_reflect", scope: !1, file: !1, line: 367, type: !613, isLocal: true, isDefinition: true, scopeLine: 369, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !59)
!1264 = !DILocalVariable(name: "a", arg: 1, scope: !1263, file: !1, line: 367, type: !51)
!1265 = !DILocation(line: 367, column: 33, scope: !1263)
!1266 = !DILocalVariable(name: "b", arg: 2, scope: !1263, file: !1, line: 367, type: !51)
!1267 = !DILocation(line: 367, column: 49, scope: !1263)
!1268 = !DILocalVariable(name: "c", arg: 3, scope: !1263, file: !1, line: 367, type: !51)
!1269 = !DILocation(line: 367, column: 65, scope: !1263)
!1270 = !DILocalVariable(name: "x", arg: 4, scope: !1263, file: !1, line: 368, type: !51)
!1271 = !DILocation(line: 368, column: 33, scope: !1263)
!1272 = !DILocalVariable(name: "result", arg: 5, scope: !1263, file: !1, line: 368, type: !52)
!1273 = !DILocation(line: 368, column: 52, scope: !1263)
!1274 = !DILocalVariable(name: "d", scope: !1263, file: !1, line: 370, type: !51)
!1275 = !DILocation(line: 370, column: 16, scope: !1263)
!1276 = !DILocation(line: 370, column: 20, scope: !1263)
!1277 = !DILocation(line: 370, column: 24, scope: !1263)
!1278 = !DILocation(line: 370, column: 22, scope: !1263)
!1279 = !DILocation(line: 370, column: 28, scope: !1263)
!1280 = !DILocation(line: 370, column: 26, scope: !1263)
!1281 = !DILocalVariable(name: "intd", scope: !1263, file: !1, line: 371, type: !94)
!1282 = !DILocation(line: 371, column: 13, scope: !1263)
!1283 = !DILocation(line: 371, column: 27, scope: !1263)
!1284 = !DILocation(line: 371, column: 28, scope: !1263)
!1285 = !DILocation(line: 371, column: 21, scope: !1263)
!1286 = !DILocalVariable(name: "d_integer", scope: !1263, file: !1, line: 372, type: !94)
!1287 = !DILocation(line: 372, column: 13, scope: !1263)
!1288 = !DILocation(line: 372, column: 32, scope: !1263)
!1289 = !DILocation(line: 372, column: 36, scope: !1263)
!1290 = !DILocation(line: 372, column: 34, scope: !1263)
!1291 = !DILocation(line: 372, column: 27, scope: !1263)
!1292 = !DILocation(line: 372, column: 42, scope: !1263)
!1293 = !DILocation(line: 374, column: 6, scope: !1294)
!1294 = distinct !DILexicalBlock(scope: !1263, file: !1, line: 374, column: 6)
!1295 = !DILocation(line: 374, column: 6, scope: !1263)
!1296 = !DILocalVariable(name: "ln_omx", scope: !1297, file: !1, line: 375, type: !51)
!1297 = distinct !DILexicalBlock(scope: !1294, file: !1, line: 374, column: 17)
!1298 = !DILocation(line: 375, column: 18, scope: !1297)
!1299 = !DILocation(line: 375, column: 37, scope: !1297)
!1300 = !DILocation(line: 375, column: 35, scope: !1297)
!1301 = !DILocation(line: 375, column: 27, scope: !1297)
!1302 = !DILocalVariable(name: "ad", scope: !1297, file: !1, line: 376, type: !51)
!1303 = !DILocation(line: 376, column: 18, scope: !1297)
!1304 = !DILocation(line: 376, column: 28, scope: !1297)
!1305 = !DILocation(line: 376, column: 23, scope: !1297)
!1306 = !DILocalVariable(name: "stat_F2", scope: !1297, file: !1, line: 377, type: !50)
!1307 = !DILocation(line: 377, column: 9, scope: !1297)
!1308 = !DILocalVariable(name: "sgn_2", scope: !1297, file: !1, line: 378, type: !42)
!1309 = !DILocation(line: 378, column: 12, scope: !1297)
!1310 = !DILocalVariable(name: "F1", scope: !1297, file: !1, line: 379, type: !53)
!1311 = !DILocation(line: 379, column: 19, scope: !1297)
!1312 = !DILocalVariable(name: "F2", scope: !1297, file: !1, line: 380, type: !53)
!1313 = !DILocation(line: 380, column: 19, scope: !1297)
!1314 = !DILocalVariable(name: "d1", scope: !1297, file: !1, line: 381, type: !42)
!1315 = !DILocation(line: 381, column: 12, scope: !1297)
!1316 = !DILocalVariable(name: "d2", scope: !1297, file: !1, line: 381, type: !42)
!1317 = !DILocation(line: 381, column: 16, scope: !1297)
!1318 = !DILocalVariable(name: "lng_c", scope: !1297, file: !1, line: 382, type: !53)
!1319 = !DILocation(line: 382, column: 19, scope: !1297)
!1320 = !DILocalVariable(name: "lng_ad2", scope: !1297, file: !1, line: 383, type: !53)
!1321 = !DILocation(line: 383, column: 19, scope: !1297)
!1322 = !DILocalVariable(name: "lng_bd2", scope: !1297, file: !1, line: 384, type: !53)
!1323 = !DILocation(line: 384, column: 19, scope: !1297)
!1324 = !DILocalVariable(name: "stat_c", scope: !1297, file: !1, line: 385, type: !50)
!1325 = !DILocation(line: 385, column: 9, scope: !1297)
!1326 = !DILocalVariable(name: "stat_ad2", scope: !1297, file: !1, line: 386, type: !50)
!1327 = !DILocation(line: 386, column: 9, scope: !1297)
!1328 = !DILocalVariable(name: "stat_bd2", scope: !1297, file: !1, line: 387, type: !50)
!1329 = !DILocation(line: 387, column: 9, scope: !1297)
!1330 = !DILocation(line: 389, column: 8, scope: !1331)
!1331 = distinct !DILexicalBlock(scope: !1297, file: !1, line: 389, column: 8)
!1332 = !DILocation(line: 389, column: 10, scope: !1331)
!1333 = !DILocation(line: 389, column: 8, scope: !1297)
!1334 = !DILocation(line: 390, column: 12, scope: !1335)
!1335 = distinct !DILexicalBlock(scope: !1331, file: !1, line: 389, column: 18)
!1336 = !DILocation(line: 390, column: 10, scope: !1335)
!1337 = !DILocation(line: 391, column: 10, scope: !1335)
!1338 = !DILocation(line: 392, column: 5, scope: !1335)
!1339 = !DILocation(line: 394, column: 10, scope: !1340)
!1340 = distinct !DILexicalBlock(scope: !1331, file: !1, line: 393, column: 10)
!1341 = !DILocation(line: 395, column: 12, scope: !1340)
!1342 = !DILocation(line: 395, column: 10, scope: !1340)
!1343 = !DILocation(line: 398, column: 33, scope: !1297)
!1344 = !DILocation(line: 398, column: 35, scope: !1297)
!1345 = !DILocation(line: 398, column: 34, scope: !1297)
!1346 = !DILocation(line: 398, column: 16, scope: !1297)
!1347 = !DILocation(line: 398, column: 14, scope: !1297)
!1348 = !DILocation(line: 399, column: 33, scope: !1297)
!1349 = !DILocation(line: 399, column: 35, scope: !1297)
!1350 = !DILocation(line: 399, column: 34, scope: !1297)
!1351 = !DILocation(line: 399, column: 16, scope: !1297)
!1352 = !DILocation(line: 399, column: 14, scope: !1297)
!1353 = !DILocation(line: 400, column: 33, scope: !1297)
!1354 = !DILocation(line: 400, column: 16, scope: !1297)
!1355 = !DILocation(line: 400, column: 14, scope: !1297)
!1356 = !DILocation(line: 404, column: 8, scope: !1357)
!1357 = distinct !DILexicalBlock(scope: !1297, file: !1, line: 404, column: 8)
!1358 = !DILocation(line: 404, column: 11, scope: !1357)
!1359 = !DILocation(line: 404, column: 8, scope: !1297)
!1360 = !DILocation(line: 406, column: 10, scope: !1361)
!1361 = distinct !DILexicalBlock(scope: !1357, file: !1, line: 404, column: 30)
!1362 = !DILocation(line: 406, column: 14, scope: !1361)
!1363 = !DILocation(line: 407, column: 10, scope: !1361)
!1364 = !DILocation(line: 407, column: 14, scope: !1361)
!1365 = !DILocation(line: 408, column: 5, scope: !1361)
!1366 = !DILocalVariable(name: "lng_ad", scope: !1367, file: !1, line: 410, type: !53)
!1367 = distinct !DILexicalBlock(scope: !1357, file: !1, line: 409, column: 10)
!1368 = !DILocation(line: 410, column: 21, scope: !1367)
!1369 = !DILocalVariable(name: "lng_ad1", scope: !1367, file: !1, line: 411, type: !53)
!1370 = !DILocation(line: 411, column: 21, scope: !1367)
!1371 = !DILocalVariable(name: "lng_bd1", scope: !1367, file: !1, line: 412, type: !53)
!1372 = !DILocation(line: 412, column: 21, scope: !1367)
!1373 = !DILocalVariable(name: "stat_ad", scope: !1367, file: !1, line: 413, type: !50)
!1374 = !DILocation(line: 413, column: 11, scope: !1367)
!1375 = !DILocation(line: 413, column: 39, scope: !1367)
!1376 = !DILocation(line: 413, column: 22, scope: !1367)
!1377 = !DILocalVariable(name: "stat_ad1", scope: !1367, file: !1, line: 414, type: !50)
!1378 = !DILocation(line: 414, column: 11, scope: !1367)
!1379 = !DILocation(line: 414, column: 39, scope: !1367)
!1380 = !DILocation(line: 414, column: 41, scope: !1367)
!1381 = !DILocation(line: 414, column: 40, scope: !1367)
!1382 = !DILocation(line: 414, column: 22, scope: !1367)
!1383 = !DILocalVariable(name: "stat_bd1", scope: !1367, file: !1, line: 415, type: !50)
!1384 = !DILocation(line: 415, column: 11, scope: !1367)
!1385 = !DILocation(line: 415, column: 39, scope: !1367)
!1386 = !DILocation(line: 415, column: 41, scope: !1367)
!1387 = !DILocation(line: 415, column: 40, scope: !1367)
!1388 = !DILocation(line: 415, column: 22, scope: !1367)
!1389 = !DILocation(line: 417, column: 10, scope: !1390)
!1390 = distinct !DILexicalBlock(scope: !1367, file: !1, line: 417, column: 10)
!1391 = !DILocation(line: 417, column: 19, scope: !1390)
!1392 = !DILocation(line: 417, column: 34, scope: !1390)
!1393 = !DILocation(line: 417, column: 37, scope: !1394)
!1394 = !DILexicalBlockFile(scope: !1390, file: !1, discriminator: 1)
!1395 = !DILocation(line: 417, column: 46, scope: !1394)
!1396 = !DILocation(line: 417, column: 61, scope: !1394)
!1397 = !DILocation(line: 417, column: 64, scope: !1398)
!1398 = !DILexicalBlockFile(scope: !1390, file: !1, discriminator: 2)
!1399 = !DILocation(line: 417, column: 72, scope: !1398)
!1400 = !DILocation(line: 417, column: 10, scope: !1398)
!1401 = !DILocalVariable(name: "i", scope: !1402, file: !1, line: 421, type: !50)
!1402 = distinct !DILexicalBlock(scope: !1390, file: !1, line: 417, column: 88)
!1403 = !DILocation(line: 421, column: 13, scope: !1402)
!1404 = !DILocalVariable(name: "sum1", scope: !1402, file: !1, line: 422, type: !42)
!1405 = !DILocation(line: 422, column: 16, scope: !1402)
!1406 = !DILocalVariable(name: "term", scope: !1402, file: !1, line: 423, type: !42)
!1407 = !DILocation(line: 423, column: 16, scope: !1402)
!1408 = !DILocalVariable(name: "ln_pre1_val", scope: !1402, file: !1, line: 424, type: !42)
!1409 = !DILocation(line: 424, column: 16, scope: !1402)
!1410 = !DILocation(line: 424, column: 37, scope: !1402)
!1411 = !DILocation(line: 424, column: 49, scope: !1402)
!1412 = !DILocation(line: 424, column: 41, scope: !1402)
!1413 = !DILocation(line: 424, column: 55, scope: !1402)
!1414 = !DILocation(line: 424, column: 58, scope: !1402)
!1415 = !DILocation(line: 424, column: 57, scope: !1402)
!1416 = !DILocation(line: 424, column: 53, scope: !1402)
!1417 = !DILocation(line: 424, column: 75, scope: !1402)
!1418 = !DILocation(line: 424, column: 65, scope: !1402)
!1419 = !DILocation(line: 424, column: 89, scope: !1402)
!1420 = !DILocation(line: 424, column: 79, scope: !1402)
!1421 = !DILocalVariable(name: "ln_pre1_err", scope: !1402, file: !1, line: 425, type: !42)
!1422 = !DILocation(line: 425, column: 16, scope: !1402)
!1423 = !DILocation(line: 425, column: 37, scope: !1402)
!1424 = !DILocation(line: 425, column: 49, scope: !1402)
!1425 = !DILocation(line: 425, column: 41, scope: !1402)
!1426 = !DILocation(line: 425, column: 63, scope: !1402)
!1427 = !DILocation(line: 425, column: 53, scope: !1402)
!1428 = !DILocation(line: 425, column: 77, scope: !1402)
!1429 = !DILocation(line: 425, column: 67, scope: !1402)
!1430 = !DILocation(line: 425, column: 106, scope: !1402)
!1431 = !DILocation(line: 425, column: 101, scope: !1402)
!1432 = !DILocation(line: 425, column: 99, scope: !1402)
!1433 = !DILocation(line: 425, column: 81, scope: !1402)
!1434 = !DILocalVariable(name: "stat_e", scope: !1402, file: !1, line: 426, type: !50)
!1435 = !DILocation(line: 426, column: 13, scope: !1402)
!1436 = !DILocation(line: 430, column: 14, scope: !1437)
!1437 = distinct !DILexicalBlock(scope: !1402, file: !1, line: 430, column: 9)
!1438 = !DILocation(line: 430, column: 13, scope: !1437)
!1439 = !DILocation(line: 430, column: 18, scope: !1440)
!1440 = !DILexicalBlockFile(scope: !1441, file: !1, discriminator: 1)
!1441 = distinct !DILexicalBlock(scope: !1437, file: !1, line: 430, column: 9)
!1442 = !DILocation(line: 430, column: 20, scope: !1440)
!1443 = !DILocation(line: 430, column: 19, scope: !1440)
!1444 = !DILocation(line: 430, column: 9, scope: !1440)
!1445 = !DILocalVariable(name: "j", scope: !1446, file: !1, line: 431, type: !50)
!1446 = distinct !DILexicalBlock(scope: !1441, file: !1, line: 430, column: 29)
!1447 = !DILocation(line: 431, column: 15, scope: !1446)
!1448 = !DILocation(line: 431, column: 19, scope: !1446)
!1449 = !DILocation(line: 431, column: 20, scope: !1446)
!1450 = !DILocation(line: 432, column: 20, scope: !1446)
!1451 = !DILocation(line: 432, column: 24, scope: !1446)
!1452 = !DILocation(line: 432, column: 22, scope: !1446)
!1453 = !DILocation(line: 432, column: 29, scope: !1446)
!1454 = !DILocation(line: 432, column: 27, scope: !1446)
!1455 = !DILocation(line: 432, column: 35, scope: !1446)
!1456 = !DILocation(line: 432, column: 39, scope: !1446)
!1457 = !DILocation(line: 432, column: 37, scope: !1446)
!1458 = !DILocation(line: 432, column: 44, scope: !1446)
!1459 = !DILocation(line: 432, column: 42, scope: !1446)
!1460 = !DILocation(line: 432, column: 32, scope: !1446)
!1461 = !DILocation(line: 432, column: 56, scope: !1446)
!1462 = !DILocation(line: 432, column: 54, scope: !1446)
!1463 = !DILocation(line: 432, column: 61, scope: !1446)
!1464 = !DILocation(line: 432, column: 59, scope: !1446)
!1465 = !DILocation(line: 432, column: 47, scope: !1446)
!1466 = !DILocation(line: 432, column: 66, scope: !1446)
!1467 = !DILocation(line: 432, column: 64, scope: !1446)
!1468 = !DILocation(line: 432, column: 75, scope: !1446)
!1469 = !DILocation(line: 432, column: 74, scope: !1446)
!1470 = !DILocation(line: 432, column: 68, scope: !1446)
!1471 = !DILocation(line: 432, column: 16, scope: !1446)
!1472 = !DILocation(line: 433, column: 19, scope: !1446)
!1473 = !DILocation(line: 433, column: 16, scope: !1446)
!1474 = !DILocation(line: 434, column: 9, scope: !1446)
!1475 = !DILocation(line: 430, column: 25, scope: !1476)
!1476 = !DILexicalBlockFile(scope: !1441, file: !1, discriminator: 2)
!1477 = !DILocation(line: 430, column: 9, scope: !1476)
!1478 = distinct !{!1478, !1479}
!1479 = !DILocation(line: 430, column: 9, scope: !1402)
!1480 = !DILocation(line: 436, column: 40, scope: !1402)
!1481 = !DILocation(line: 436, column: 53, scope: !1402)
!1482 = !DILocation(line: 437, column: 40, scope: !1402)
!1483 = !DILocation(line: 437, column: 67, scope: !1402)
!1484 = !DILocation(line: 437, column: 62, scope: !1402)
!1485 = !DILocation(line: 437, column: 61, scope: !1402)
!1486 = !DILocation(line: 436, column: 18, scope: !1402)
!1487 = !DILocation(line: 436, column: 16, scope: !1402)
!1488 = !DILocation(line: 439, column: 12, scope: !1489)
!1489 = distinct !DILexicalBlock(scope: !1402, file: !1, line: 439, column: 12)
!1490 = !DILocation(line: 439, column: 19, scope: !1489)
!1491 = !DILocation(line: 439, column: 12, scope: !1402)
!1492 = !DILocation(line: 440, column: 11, scope: !1493)
!1493 = distinct !DILexicalBlock(scope: !1489, file: !1, line: 439, column: 35)
!1494 = distinct !{!1494, !1492}
!1495 = !DILocation(line: 440, column: 11, scope: !1496)
!1496 = !DILexicalBlockFile(scope: !1497, file: !1, discriminator: 1)
!1497 = distinct !DILexicalBlock(scope: !1493, file: !1, line: 440, column: 11)
!1498 = distinct !{!1498, !1499}
!1499 = !DILocation(line: 440, column: 11, scope: !1497)
!1500 = !DILocation(line: 440, column: 11, scope: !1501)
!1501 = !DILexicalBlockFile(scope: !1502, file: !1, discriminator: 2)
!1502 = distinct !DILexicalBlock(scope: !1497, file: !1, line: 440, column: 11)
!1503 = !DILocation(line: 440, column: 11, scope: !1504)
!1504 = !DILexicalBlockFile(scope: !1497, file: !1, discriminator: 3)
!1505 = !DILocation(line: 441, column: 9, scope: !1493)
!1506 = !DILocation(line: 442, column: 7, scope: !1402)
!1507 = !DILocation(line: 447, column: 12, scope: !1508)
!1508 = distinct !DILexicalBlock(scope: !1390, file: !1, line: 443, column: 12)
!1509 = !DILocation(line: 447, column: 16, scope: !1508)
!1510 = !DILocation(line: 448, column: 12, scope: !1508)
!1511 = !DILocation(line: 448, column: 16, scope: !1508)
!1512 = !DILocation(line: 455, column: 8, scope: !1513)
!1513 = distinct !DILexicalBlock(scope: !1297, file: !1, line: 455, column: 8)
!1514 = !DILocation(line: 455, column: 17, scope: !1513)
!1515 = !DILocation(line: 455, column: 32, scope: !1513)
!1516 = !DILocation(line: 455, column: 35, scope: !1517)
!1517 = !DILexicalBlockFile(scope: !1513, file: !1, discriminator: 1)
!1518 = !DILocation(line: 455, column: 44, scope: !1517)
!1519 = !DILocation(line: 455, column: 8, scope: !1517)
!1520 = !DILocalVariable(name: "maxiter", scope: !1521, file: !1, line: 459, type: !94)
!1521 = distinct !DILexicalBlock(scope: !1513, file: !1, line: 455, column: 60)
!1522 = !DILocation(line: 459, column: 17, scope: !1521)
!1523 = !DILocalVariable(name: "psi_1", scope: !1521, file: !1, line: 460, type: !42)
!1524 = !DILocation(line: 460, column: 14, scope: !1521)
!1525 = !DILocalVariable(name: "psi_1pd", scope: !1521, file: !1, line: 461, type: !53)
!1526 = !DILocation(line: 461, column: 21, scope: !1521)
!1527 = !DILocalVariable(name: "psi_apd1", scope: !1521, file: !1, line: 462, type: !53)
!1528 = !DILocation(line: 462, column: 21, scope: !1521)
!1529 = !DILocalVariable(name: "psi_bpd1", scope: !1521, file: !1, line: 463, type: !53)
!1530 = !DILocation(line: 463, column: 21, scope: !1521)
!1531 = !DILocalVariable(name: "stat_1pd", scope: !1521, file: !1, line: 464, type: !50)
!1532 = !DILocation(line: 464, column: 11, scope: !1521)
!1533 = !DILocation(line: 464, column: 42, scope: !1521)
!1534 = !DILocation(line: 464, column: 40, scope: !1521)
!1535 = !DILocation(line: 464, column: 23, scope: !1521)
!1536 = !DILocalVariable(name: "stat_apd1", scope: !1521, file: !1, line: 465, type: !50)
!1537 = !DILocation(line: 465, column: 11, scope: !1521)
!1538 = !DILocation(line: 465, column: 36, scope: !1521)
!1539 = !DILocation(line: 465, column: 40, scope: !1521)
!1540 = !DILocation(line: 465, column: 38, scope: !1521)
!1541 = !DILocation(line: 465, column: 23, scope: !1521)
!1542 = !DILocalVariable(name: "stat_bpd1", scope: !1521, file: !1, line: 466, type: !50)
!1543 = !DILocation(line: 466, column: 11, scope: !1521)
!1544 = !DILocation(line: 466, column: 36, scope: !1521)
!1545 = !DILocation(line: 466, column: 40, scope: !1521)
!1546 = !DILocation(line: 466, column: 38, scope: !1521)
!1547 = !DILocation(line: 466, column: 23, scope: !1521)
!1548 = !DILocalVariable(name: "stat_dall", scope: !1521, file: !1, line: 467, type: !50)
!1549 = !DILocation(line: 467, column: 11, scope: !1521)
!1550 = !DILocation(line: 467, column: 23, scope: !1521)
!1551 = !DILocation(line: 467, column: 23, scope: !1552)
!1552 = !DILexicalBlockFile(scope: !1521, file: !1, discriminator: 1)
!1553 = !DILocation(line: 467, column: 23, scope: !1554)
!1554 = !DILexicalBlockFile(scope: !1521, file: !1, discriminator: 2)
!1555 = !DILocation(line: 467, column: 23, scope: !1556)
!1556 = !DILexicalBlockFile(scope: !1521, file: !1, discriminator: 3)
!1557 = !DILocation(line: 467, column: 23, scope: !1558)
!1558 = !DILexicalBlockFile(scope: !1521, file: !1, discriminator: 4)
!1559 = !DILocation(line: 467, column: 23, scope: !1560)
!1560 = !DILexicalBlockFile(scope: !1521, file: !1, discriminator: 5)
!1561 = !DILocation(line: 467, column: 23, scope: !1562)
!1562 = !DILexicalBlockFile(scope: !1521, file: !1, discriminator: 6)
!1563 = !DILocation(line: 467, column: 23, scope: !1564)
!1564 = !DILexicalBlockFile(scope: !1521, file: !1, discriminator: 7)
!1565 = !DILocation(line: 467, column: 23, scope: !1566)
!1566 = !DILexicalBlockFile(scope: !1521, file: !1, discriminator: 8)
!1567 = !DILocation(line: 467, column: 23, scope: !1568)
!1568 = !DILexicalBlockFile(scope: !1521, file: !1, discriminator: 9)
!1569 = !DILocation(line: 467, column: 11, scope: !1568)
!1570 = !DILocalVariable(name: "psi_val", scope: !1521, file: !1, line: 469, type: !42)
!1571 = !DILocation(line: 469, column: 14, scope: !1521)
!1572 = !DILocation(line: 469, column: 24, scope: !1521)
!1573 = !DILocation(line: 469, column: 40, scope: !1521)
!1574 = !DILocation(line: 469, column: 30, scope: !1521)
!1575 = !DILocation(line: 469, column: 55, scope: !1521)
!1576 = !DILocation(line: 469, column: 44, scope: !1521)
!1577 = !DILocation(line: 469, column: 70, scope: !1521)
!1578 = !DILocation(line: 469, column: 59, scope: !1521)
!1579 = !DILocation(line: 469, column: 76, scope: !1521)
!1580 = !DILocation(line: 469, column: 74, scope: !1521)
!1581 = !DILocalVariable(name: "psi_err", scope: !1521, file: !1, line: 470, type: !42)
!1582 = !DILocation(line: 470, column: 14, scope: !1521)
!1583 = !DILocation(line: 470, column: 32, scope: !1521)
!1584 = !DILocation(line: 470, column: 47, scope: !1521)
!1585 = !DILocation(line: 470, column: 36, scope: !1521)
!1586 = !DILocation(line: 470, column: 62, scope: !1521)
!1587 = !DILocation(line: 470, column: 51, scope: !1521)
!1588 = !DILocation(line: 470, column: 89, scope: !1521)
!1589 = !DILocation(line: 470, column: 84, scope: !1521)
!1590 = !DILocation(line: 470, column: 83, scope: !1521)
!1591 = !DILocation(line: 470, column: 66, scope: !1521)
!1592 = !DILocalVariable(name: "fact", scope: !1521, file: !1, line: 471, type: !42)
!1593 = !DILocation(line: 471, column: 14, scope: !1521)
!1594 = !DILocalVariable(name: "sum2_val", scope: !1521, file: !1, line: 472, type: !42)
!1595 = !DILocation(line: 472, column: 14, scope: !1521)
!1596 = !DILocation(line: 472, column: 25, scope: !1521)
!1597 = !DILocalVariable(name: "sum2_err", scope: !1521, file: !1, line: 473, type: !42)
!1598 = !DILocation(line: 473, column: 14, scope: !1521)
!1599 = !DILocation(line: 473, column: 25, scope: !1521)
!1600 = !DILocalVariable(name: "ln_pre2_val", scope: !1521, file: !1, line: 474, type: !42)
!1601 = !DILocation(line: 474, column: 14, scope: !1521)
!1602 = !DILocation(line: 474, column: 34, scope: !1521)
!1603 = !DILocation(line: 474, column: 40, scope: !1521)
!1604 = !DILocation(line: 474, column: 43, scope: !1521)
!1605 = !DILocation(line: 474, column: 42, scope: !1521)
!1606 = !DILocation(line: 474, column: 38, scope: !1521)
!1607 = !DILocation(line: 474, column: 60, scope: !1521)
!1608 = !DILocation(line: 474, column: 50, scope: !1521)
!1609 = !DILocation(line: 474, column: 74, scope: !1521)
!1610 = !DILocation(line: 474, column: 64, scope: !1521)
!1611 = !DILocalVariable(name: "ln_pre2_err", scope: !1521, file: !1, line: 475, type: !42)
!1612 = !DILocation(line: 475, column: 14, scope: !1521)
!1613 = !DILocation(line: 475, column: 34, scope: !1521)
!1614 = !DILocation(line: 475, column: 48, scope: !1521)
!1615 = !DILocation(line: 475, column: 38, scope: !1521)
!1616 = !DILocation(line: 475, column: 62, scope: !1521)
!1617 = !DILocation(line: 475, column: 52, scope: !1521)
!1618 = !DILocation(line: 475, column: 91, scope: !1521)
!1619 = !DILocation(line: 475, column: 86, scope: !1521)
!1620 = !DILocation(line: 475, column: 84, scope: !1521)
!1621 = !DILocation(line: 475, column: 66, scope: !1521)
!1622 = !DILocalVariable(name: "stat_e", scope: !1521, file: !1, line: 476, type: !50)
!1623 = !DILocation(line: 476, column: 11, scope: !1521)
!1624 = !DILocalVariable(name: "j", scope: !1521, file: !1, line: 478, type: !50)
!1625 = !DILocation(line: 478, column: 11, scope: !1521)
!1626 = !DILocation(line: 482, column: 12, scope: !1627)
!1627 = distinct !DILexicalBlock(scope: !1521, file: !1, line: 482, column: 7)
!1628 = !DILocation(line: 482, column: 11, scope: !1627)
!1629 = !DILocation(line: 482, column: 16, scope: !1630)
!1630 = !DILexicalBlockFile(scope: !1631, file: !1, discriminator: 1)
!1631 = distinct !DILexicalBlock(scope: !1627, file: !1, line: 482, column: 7)
!1632 = !DILocation(line: 482, column: 17, scope: !1630)
!1633 = !DILocation(line: 482, column: 7, scope: !1630)
!1634 = !DILocalVariable(name: "term1", scope: !1635, file: !1, line: 484, type: !42)
!1635 = distinct !DILexicalBlock(scope: !1631, file: !1, line: 482, column: 32)
!1636 = !DILocation(line: 484, column: 16, scope: !1635)
!1637 = !DILocation(line: 484, column: 36, scope: !1635)
!1638 = !DILocation(line: 484, column: 28, scope: !1635)
!1639 = !DILocation(line: 484, column: 27, scope: !1635)
!1640 = !DILocation(line: 484, column: 46, scope: !1635)
!1641 = !DILocation(line: 484, column: 49, scope: !1635)
!1642 = !DILocation(line: 484, column: 48, scope: !1635)
!1643 = !DILocation(line: 484, column: 44, scope: !1635)
!1644 = !DILocation(line: 484, column: 39, scope: !1635)
!1645 = !DILocalVariable(name: "term2", scope: !1635, file: !1, line: 485, type: !42)
!1646 = !DILocation(line: 485, column: 16, scope: !1635)
!1647 = !DILocation(line: 485, column: 29, scope: !1635)
!1648 = !DILocation(line: 485, column: 31, scope: !1635)
!1649 = !DILocation(line: 485, column: 30, scope: !1635)
!1650 = !DILocation(line: 485, column: 34, scope: !1635)
!1651 = !DILocation(line: 485, column: 33, scope: !1635)
!1652 = !DILocation(line: 485, column: 35, scope: !1635)
!1653 = !DILocation(line: 485, column: 27, scope: !1635)
!1654 = !DILocation(line: 485, column: 48, scope: !1635)
!1655 = !DILocation(line: 485, column: 50, scope: !1635)
!1656 = !DILocation(line: 485, column: 49, scope: !1635)
!1657 = !DILocation(line: 485, column: 53, scope: !1635)
!1658 = !DILocation(line: 485, column: 52, scope: !1635)
!1659 = !DILocation(line: 485, column: 54, scope: !1635)
!1660 = !DILocation(line: 485, column: 46, scope: !1635)
!1661 = !DILocation(line: 485, column: 41, scope: !1635)
!1662 = !DILocalVariable(name: "delta", scope: !1635, file: !1, line: 486, type: !42)
!1663 = !DILocation(line: 486, column: 16, scope: !1635)
!1664 = !DILocation(line: 487, column: 20, scope: !1635)
!1665 = !DILocation(line: 487, column: 28, scope: !1635)
!1666 = !DILocation(line: 487, column: 26, scope: !1635)
!1667 = !DILocation(line: 487, column: 17, scope: !1635)
!1668 = !DILocation(line: 488, column: 44, scope: !1635)
!1669 = !DILocation(line: 488, column: 39, scope: !1635)
!1670 = !DILocation(line: 488, column: 58, scope: !1635)
!1671 = !DILocation(line: 488, column: 53, scope: !1672)
!1672 = !DILexicalBlockFile(scope: !1635, file: !1, discriminator: 1)
!1673 = !DILocation(line: 488, column: 51, scope: !1635)
!1674 = !DILocation(line: 488, column: 36, scope: !1635)
!1675 = !DILocation(line: 488, column: 17, scope: !1635)
!1676 = !DILocation(line: 489, column: 18, scope: !1635)
!1677 = !DILocation(line: 489, column: 20, scope: !1635)
!1678 = !DILocation(line: 489, column: 19, scope: !1635)
!1679 = !DILocation(line: 489, column: 23, scope: !1635)
!1680 = !DILocation(line: 489, column: 22, scope: !1635)
!1681 = !DILocation(line: 489, column: 24, scope: !1635)
!1682 = !DILocation(line: 489, column: 31, scope: !1635)
!1683 = !DILocation(line: 489, column: 33, scope: !1635)
!1684 = !DILocation(line: 489, column: 32, scope: !1635)
!1685 = !DILocation(line: 489, column: 36, scope: !1635)
!1686 = !DILocation(line: 489, column: 35, scope: !1635)
!1687 = !DILocation(line: 489, column: 37, scope: !1635)
!1688 = !DILocation(line: 489, column: 29, scope: !1635)
!1689 = !DILocation(line: 489, column: 45, scope: !1635)
!1690 = !DILocation(line: 489, column: 48, scope: !1635)
!1691 = !DILocation(line: 489, column: 47, scope: !1635)
!1692 = !DILocation(line: 489, column: 51, scope: !1635)
!1693 = !DILocation(line: 489, column: 50, scope: !1635)
!1694 = !DILocation(line: 489, column: 42, scope: !1635)
!1695 = !DILocation(line: 489, column: 61, scope: !1635)
!1696 = !DILocation(line: 489, column: 60, scope: !1635)
!1697 = !DILocation(line: 489, column: 54, scope: !1635)
!1698 = !DILocation(line: 489, column: 14, scope: !1635)
!1699 = !DILocation(line: 490, column: 17, scope: !1635)
!1700 = !DILocation(line: 490, column: 24, scope: !1635)
!1701 = !DILocation(line: 490, column: 22, scope: !1635)
!1702 = !DILocation(line: 490, column: 15, scope: !1635)
!1703 = !DILocation(line: 491, column: 21, scope: !1635)
!1704 = !DILocation(line: 491, column: 18, scope: !1635)
!1705 = !DILocation(line: 492, column: 26, scope: !1635)
!1706 = !DILocation(line: 492, column: 33, scope: !1635)
!1707 = !DILocation(line: 492, column: 31, scope: !1635)
!1708 = !DILocation(line: 492, column: 21, scope: !1635)
!1709 = !DILocation(line: 492, column: 65, scope: !1635)
!1710 = !DILocation(line: 492, column: 60, scope: !1672)
!1711 = !DILocation(line: 492, column: 59, scope: !1635)
!1712 = !DILocation(line: 492, column: 42, scope: !1635)
!1713 = !DILocation(line: 492, column: 18, scope: !1635)
!1714 = !DILocation(line: 493, column: 17, scope: !1715)
!1715 = distinct !DILexicalBlock(scope: !1635, file: !1, line: 493, column: 12)
!1716 = !DILocation(line: 493, column: 12, scope: !1715)
!1717 = !DILocation(line: 493, column: 49, scope: !1715)
!1718 = !DILocation(line: 493, column: 44, scope: !1719)
!1719 = !DILexicalBlockFile(scope: !1715, file: !1, discriminator: 2)
!1720 = !DILocation(line: 493, column: 42, scope: !1715)
!1721 = !DILocation(line: 493, column: 24, scope: !1715)
!1722 = !DILocation(line: 493, column: 12, scope: !1635)
!1723 = !DILocation(line: 493, column: 60, scope: !1724)
!1724 = !DILexicalBlockFile(scope: !1715, file: !1, discriminator: 1)
!1725 = !DILocation(line: 494, column: 7, scope: !1635)
!1726 = !DILocation(line: 482, column: 28, scope: !1727)
!1727 = !DILexicalBlockFile(scope: !1631, file: !1, discriminator: 2)
!1728 = !DILocation(line: 482, column: 7, scope: !1727)
!1729 = distinct !{!1729, !1730}
!1730 = !DILocation(line: 482, column: 7, scope: !1521)
!1731 = !DILocation(line: 496, column: 10, scope: !1732)
!1732 = distinct !DILexicalBlock(scope: !1521, file: !1, line: 496, column: 10)
!1733 = !DILocation(line: 496, column: 12, scope: !1732)
!1734 = !DILocation(line: 496, column: 10, scope: !1521)
!1735 = !DILocation(line: 496, column: 32, scope: !1736)
!1736 = !DILexicalBlockFile(scope: !1732, file: !1, discriminator: 1)
!1737 = !DILocation(line: 496, column: 24, scope: !1736)
!1738 = !DILocation(line: 498, column: 10, scope: !1739)
!1739 = distinct !DILexicalBlock(scope: !1521, file: !1, line: 498, column: 10)
!1740 = !DILocation(line: 498, column: 19, scope: !1739)
!1741 = !DILocation(line: 498, column: 10, scope: !1521)
!1742 = !DILocation(line: 499, column: 12, scope: !1743)
!1743 = distinct !DILexicalBlock(scope: !1739, file: !1, line: 498, column: 27)
!1744 = !DILocation(line: 499, column: 16, scope: !1743)
!1745 = !DILocation(line: 500, column: 12, scope: !1743)
!1746 = !DILocation(line: 500, column: 16, scope: !1743)
!1747 = !DILocation(line: 501, column: 7, scope: !1743)
!1748 = !DILocation(line: 503, column: 40, scope: !1749)
!1749 = distinct !DILexicalBlock(scope: !1739, file: !1, line: 502, column: 12)
!1750 = !DILocation(line: 503, column: 53, scope: !1749)
!1751 = !DILocation(line: 504, column: 40, scope: !1749)
!1752 = !DILocation(line: 504, column: 50, scope: !1749)
!1753 = !DILocation(line: 503, column: 18, scope: !1749)
!1754 = !DILocation(line: 503, column: 16, scope: !1749)
!1755 = !DILocation(line: 506, column: 12, scope: !1756)
!1756 = distinct !DILexicalBlock(scope: !1749, file: !1, line: 506, column: 12)
!1757 = !DILocation(line: 506, column: 19, scope: !1756)
!1758 = !DILocation(line: 506, column: 12, scope: !1749)
!1759 = !DILocation(line: 507, column: 11, scope: !1760)
!1760 = distinct !DILexicalBlock(scope: !1756, file: !1, line: 506, column: 35)
!1761 = !DILocation(line: 507, column: 19, scope: !1760)
!1762 = !DILocation(line: 507, column: 23, scope: !1760)
!1763 = !DILocation(line: 508, column: 11, scope: !1760)
!1764 = !DILocation(line: 508, column: 19, scope: !1760)
!1765 = !DILocation(line: 508, column: 23, scope: !1760)
!1766 = !DILocation(line: 509, column: 11, scope: !1760)
!1767 = distinct !{!1767, !1766}
!1768 = !DILocation(line: 509, column: 11, scope: !1769)
!1769 = !DILexicalBlockFile(scope: !1770, file: !1, discriminator: 1)
!1770 = distinct !DILexicalBlock(scope: !1760, file: !1, line: 509, column: 11)
!1771 = !DILocation(line: 510, column: 9, scope: !1760)
!1772 = !DILocation(line: 512, column: 17, scope: !1521)
!1773 = !DILocation(line: 512, column: 17, scope: !1552)
!1774 = !DILocation(line: 512, column: 17, scope: !1554)
!1775 = !DILocation(line: 512, column: 17, scope: !1556)
!1776 = !DILocation(line: 512, column: 17, scope: !1558)
!1777 = !DILocation(line: 512, column: 17, scope: !1560)
!1778 = !DILocation(line: 512, column: 17, scope: !1562)
!1779 = !DILocation(line: 512, column: 15, scope: !1562)
!1780 = !DILocation(line: 513, column: 5, scope: !1521)
!1781 = !DILocation(line: 518, column: 10, scope: !1782)
!1782 = distinct !DILexicalBlock(scope: !1513, file: !1, line: 514, column: 10)
!1783 = !DILocation(line: 518, column: 14, scope: !1782)
!1784 = !DILocation(line: 519, column: 10, scope: !1782)
!1785 = !DILocation(line: 519, column: 14, scope: !1782)
!1786 = !DILocation(line: 522, column: 15, scope: !1297)
!1787 = !DILocation(line: 522, column: 11, scope: !1297)
!1788 = !DILocation(line: 523, column: 23, scope: !1297)
!1789 = !DILocation(line: 523, column: 29, scope: !1297)
!1790 = !DILocation(line: 523, column: 40, scope: !1297)
!1791 = !DILocation(line: 523, column: 35, scope: !1297)
!1792 = !DILocation(line: 523, column: 27, scope: !1297)
!1793 = !DILocation(line: 523, column: 5, scope: !1297)
!1794 = !DILocation(line: 523, column: 13, scope: !1297)
!1795 = !DILocation(line: 523, column: 18, scope: !1297)
!1796 = !DILocation(line: 524, column: 23, scope: !1297)
!1797 = !DILocation(line: 524, column: 33, scope: !1297)
!1798 = !DILocation(line: 524, column: 27, scope: !1297)
!1799 = !DILocation(line: 524, column: 5, scope: !1297)
!1800 = !DILocation(line: 524, column: 13, scope: !1297)
!1801 = !DILocation(line: 524, column: 18, scope: !1297)
!1802 = !DILocation(line: 525, column: 53, scope: !1297)
!1803 = !DILocation(line: 525, column: 45, scope: !1297)
!1804 = !DILocation(line: 525, column: 68, scope: !1297)
!1805 = !DILocation(line: 525, column: 60, scope: !1806)
!1806 = !DILexicalBlockFile(scope: !1297, file: !1, discriminator: 1)
!1807 = !DILocation(line: 525, column: 58, scope: !1297)
!1808 = !DILocation(line: 525, column: 42, scope: !1297)
!1809 = !DILocation(line: 525, column: 5, scope: !1297)
!1810 = !DILocation(line: 525, column: 13, scope: !1297)
!1811 = !DILocation(line: 525, column: 17, scope: !1297)
!1812 = !DILocation(line: 526, column: 49, scope: !1297)
!1813 = !DILocation(line: 526, column: 57, scope: !1297)
!1814 = !DILocation(line: 526, column: 44, scope: !1297)
!1815 = !DILocation(line: 526, column: 42, scope: !1297)
!1816 = !DILocation(line: 526, column: 5, scope: !1297)
!1817 = !DILocation(line: 526, column: 13, scope: !1297)
!1818 = !DILocation(line: 526, column: 17, scope: !1297)
!1819 = !DILocation(line: 527, column: 12, scope: !1297)
!1820 = !DILocation(line: 527, column: 5, scope: !1297)
!1821 = !DILocalVariable(name: "pre1", scope: !1822, file: !1, line: 532, type: !53)
!1822 = distinct !DILexicalBlock(scope: !1294, file: !1, line: 529, column: 8)
!1823 = !DILocation(line: 532, column: 19, scope: !1822)
!1824 = !DILocalVariable(name: "pre2", scope: !1822, file: !1, line: 532, type: !53)
!1825 = !DILocation(line: 532, column: 25, scope: !1822)
!1826 = !DILocalVariable(name: "sgn1", scope: !1822, file: !1, line: 533, type: !42)
!1827 = !DILocation(line: 533, column: 12, scope: !1822)
!1828 = !DILocalVariable(name: "sgn2", scope: !1822, file: !1, line: 533, type: !42)
!1829 = !DILocation(line: 533, column: 18, scope: !1822)
!1830 = !DILocalVariable(name: "F1", scope: !1822, file: !1, line: 534, type: !53)
!1831 = !DILocation(line: 534, column: 19, scope: !1822)
!1832 = !DILocalVariable(name: "F2", scope: !1822, file: !1, line: 534, type: !53)
!1833 = !DILocation(line: 534, column: 23, scope: !1822)
!1834 = !DILocalVariable(name: "status_F1", scope: !1822, file: !1, line: 535, type: !50)
!1835 = !DILocation(line: 535, column: 9, scope: !1822)
!1836 = !DILocalVariable(name: "status_F2", scope: !1822, file: !1, line: 535, type: !50)
!1837 = !DILocation(line: 535, column: 20, scope: !1822)
!1838 = !DILocalVariable(name: "ln_g1ca", scope: !1822, file: !1, line: 540, type: !53)
!1839 = !DILocation(line: 540, column: 19, scope: !1822)
!1840 = !DILocalVariable(name: "ln_g1cb", scope: !1822, file: !1, line: 540, type: !53)
!1841 = !DILocation(line: 540, column: 29, scope: !1822)
!1842 = !DILocalVariable(name: "ln_g2a", scope: !1822, file: !1, line: 540, type: !53)
!1843 = !DILocation(line: 540, column: 39, scope: !1822)
!1844 = !DILocalVariable(name: "ln_g2b", scope: !1822, file: !1, line: 540, type: !53)
!1845 = !DILocation(line: 540, column: 48, scope: !1822)
!1846 = !DILocalVariable(name: "sgn_g1ca", scope: !1822, file: !1, line: 541, type: !42)
!1847 = !DILocation(line: 541, column: 12, scope: !1822)
!1848 = !DILocalVariable(name: "sgn_g1cb", scope: !1822, file: !1, line: 541, type: !42)
!1849 = !DILocation(line: 541, column: 22, scope: !1822)
!1850 = !DILocalVariable(name: "sgn_g2a", scope: !1822, file: !1, line: 541, type: !42)
!1851 = !DILocation(line: 541, column: 32, scope: !1822)
!1852 = !DILocalVariable(name: "sgn_g2b", scope: !1822, file: !1, line: 541, type: !42)
!1853 = !DILocation(line: 541, column: 41, scope: !1822)
!1854 = !DILocalVariable(name: "stat_1ca", scope: !1822, file: !1, line: 542, type: !50)
!1855 = !DILocation(line: 542, column: 9, scope: !1822)
!1856 = !DILocation(line: 542, column: 41, scope: !1822)
!1857 = !DILocation(line: 542, column: 43, scope: !1822)
!1858 = !DILocation(line: 542, column: 42, scope: !1822)
!1859 = !DILocation(line: 542, column: 20, scope: !1822)
!1860 = !DILocalVariable(name: "stat_1cb", scope: !1822, file: !1, line: 543, type: !50)
!1861 = !DILocation(line: 543, column: 9, scope: !1822)
!1862 = !DILocation(line: 543, column: 41, scope: !1822)
!1863 = !DILocation(line: 543, column: 43, scope: !1822)
!1864 = !DILocation(line: 543, column: 42, scope: !1822)
!1865 = !DILocation(line: 543, column: 20, scope: !1822)
!1866 = !DILocalVariable(name: "stat_2a", scope: !1822, file: !1, line: 544, type: !50)
!1867 = !DILocation(line: 544, column: 9, scope: !1822)
!1868 = !DILocation(line: 544, column: 41, scope: !1822)
!1869 = !DILocation(line: 544, column: 20, scope: !1822)
!1870 = !DILocalVariable(name: "stat_2b", scope: !1822, file: !1, line: 545, type: !50)
!1871 = !DILocation(line: 545, column: 9, scope: !1822)
!1872 = !DILocation(line: 545, column: 41, scope: !1822)
!1873 = !DILocation(line: 545, column: 20, scope: !1822)
!1874 = !DILocalVariable(name: "ok1", scope: !1822, file: !1, line: 546, type: !50)
!1875 = !DILocation(line: 546, column: 9, scope: !1822)
!1876 = !DILocation(line: 546, column: 16, scope: !1822)
!1877 = !DILocation(line: 546, column: 25, scope: !1822)
!1878 = !DILocation(line: 546, column: 40, scope: !1822)
!1879 = !DILocation(line: 546, column: 43, scope: !1880)
!1880 = !DILexicalBlockFile(scope: !1822, file: !1, discriminator: 1)
!1881 = !DILocation(line: 546, column: 52, scope: !1880)
!1882 = !DILocation(line: 546, column: 40, scope: !1883)
!1883 = !DILexicalBlockFile(scope: !1822, file: !1, discriminator: 2)
!1884 = !DILocation(line: 546, column: 9, scope: !1883)
!1885 = !DILocalVariable(name: "ok2", scope: !1822, file: !1, line: 547, type: !50)
!1886 = !DILocation(line: 547, column: 9, scope: !1822)
!1887 = !DILocation(line: 547, column: 16, scope: !1822)
!1888 = !DILocation(line: 547, column: 25, scope: !1822)
!1889 = !DILocation(line: 547, column: 40, scope: !1822)
!1890 = !DILocation(line: 547, column: 43, scope: !1880)
!1891 = !DILocation(line: 547, column: 52, scope: !1880)
!1892 = !DILocation(line: 547, column: 40, scope: !1883)
!1893 = !DILocation(line: 547, column: 9, scope: !1883)
!1894 = !DILocalVariable(name: "ln_gc", scope: !1822, file: !1, line: 549, type: !53)
!1895 = !DILocation(line: 549, column: 19, scope: !1822)
!1896 = !DILocalVariable(name: "ln_gd", scope: !1822, file: !1, line: 549, type: !53)
!1897 = !DILocation(line: 549, column: 27, scope: !1822)
!1898 = !DILocalVariable(name: "ln_gmd", scope: !1822, file: !1, line: 549, type: !53)
!1899 = !DILocation(line: 549, column: 35, scope: !1822)
!1900 = !DILocalVariable(name: "sgn_gc", scope: !1822, file: !1, line: 550, type: !42)
!1901 = !DILocation(line: 550, column: 12, scope: !1822)
!1902 = !DILocalVariable(name: "sgn_gd", scope: !1822, file: !1, line: 550, type: !42)
!1903 = !DILocation(line: 550, column: 20, scope: !1822)
!1904 = !DILocalVariable(name: "sgn_gmd", scope: !1822, file: !1, line: 550, type: !42)
!1905 = !DILocation(line: 550, column: 28, scope: !1822)
!1906 = !DILocation(line: 551, column: 27, scope: !1822)
!1907 = !DILocation(line: 551, column: 5, scope: !1822)
!1908 = !DILocation(line: 552, column: 27, scope: !1822)
!1909 = !DILocation(line: 552, column: 5, scope: !1822)
!1910 = !DILocation(line: 553, column: 27, scope: !1822)
!1911 = !DILocation(line: 553, column: 26, scope: !1822)
!1912 = !DILocation(line: 553, column: 5, scope: !1822)
!1913 = !DILocation(line: 555, column: 12, scope: !1822)
!1914 = !DILocation(line: 555, column: 21, scope: !1822)
!1915 = !DILocation(line: 555, column: 19, scope: !1822)
!1916 = !DILocation(line: 555, column: 31, scope: !1822)
!1917 = !DILocation(line: 555, column: 29, scope: !1822)
!1918 = !DILocation(line: 555, column: 42, scope: !1822)
!1919 = !DILocation(line: 555, column: 40, scope: !1822)
!1920 = !DILocation(line: 555, column: 10, scope: !1822)
!1921 = !DILocation(line: 556, column: 12, scope: !1822)
!1922 = !DILocation(line: 556, column: 21, scope: !1822)
!1923 = !DILocation(line: 556, column: 19, scope: !1822)
!1924 = !DILocation(line: 556, column: 31, scope: !1822)
!1925 = !DILocation(line: 556, column: 29, scope: !1822)
!1926 = !DILocation(line: 556, column: 42, scope: !1822)
!1927 = !DILocation(line: 556, column: 40, scope: !1822)
!1928 = !DILocation(line: 556, column: 10, scope: !1822)
!1929 = !DILocation(line: 558, column: 8, scope: !1930)
!1930 = distinct !DILexicalBlock(scope: !1822, file: !1, line: 558, column: 8)
!1931 = !DILocation(line: 558, column: 12, scope: !1930)
!1932 = !DILocation(line: 558, column: 15, scope: !1933)
!1933 = !DILexicalBlockFile(scope: !1930, file: !1, discriminator: 1)
!1934 = !DILocation(line: 558, column: 8, scope: !1933)
!1935 = !DILocalVariable(name: "ln_pre1_val", scope: !1936, file: !1, line: 559, type: !42)
!1936 = distinct !DILexicalBlock(scope: !1930, file: !1, line: 558, column: 20)
!1937 = !DILocation(line: 559, column: 14, scope: !1936)
!1938 = !DILocation(line: 559, column: 34, scope: !1936)
!1939 = !DILocation(line: 559, column: 46, scope: !1936)
!1940 = !DILocation(line: 559, column: 38, scope: !1936)
!1941 = !DILocation(line: 559, column: 61, scope: !1936)
!1942 = !DILocation(line: 559, column: 51, scope: !1936)
!1943 = !DILocation(line: 559, column: 75, scope: !1936)
!1944 = !DILocation(line: 559, column: 65, scope: !1936)
!1945 = !DILocalVariable(name: "ln_pre2_val", scope: !1936, file: !1, line: 560, type: !42)
!1946 = !DILocation(line: 560, column: 14, scope: !1936)
!1947 = !DILocation(line: 560, column: 34, scope: !1936)
!1948 = !DILocation(line: 560, column: 47, scope: !1936)
!1949 = !DILocation(line: 560, column: 38, scope: !1936)
!1950 = !DILocation(line: 560, column: 60, scope: !1936)
!1951 = !DILocation(line: 560, column: 51, scope: !1936)
!1952 = !DILocation(line: 560, column: 74, scope: !1936)
!1953 = !DILocation(line: 560, column: 65, scope: !1936)
!1954 = !DILocation(line: 560, column: 80, scope: !1936)
!1955 = !DILocation(line: 560, column: 90, scope: !1936)
!1956 = !DILocation(line: 560, column: 89, scope: !1936)
!1957 = !DILocation(line: 560, column: 82, scope: !1936)
!1958 = !DILocation(line: 560, column: 81, scope: !1936)
!1959 = !DILocation(line: 560, column: 78, scope: !1936)
!1960 = !DILocalVariable(name: "ln_pre1_err", scope: !1936, file: !1, line: 561, type: !42)
!1961 = !DILocation(line: 561, column: 14, scope: !1936)
!1962 = !DILocation(line: 561, column: 34, scope: !1936)
!1963 = !DILocation(line: 561, column: 46, scope: !1936)
!1964 = !DILocation(line: 561, column: 38, scope: !1936)
!1965 = !DILocation(line: 561, column: 60, scope: !1936)
!1966 = !DILocation(line: 561, column: 50, scope: !1936)
!1967 = !DILocation(line: 561, column: 74, scope: !1936)
!1968 = !DILocation(line: 561, column: 64, scope: !1936)
!1969 = !DILocalVariable(name: "ln_pre2_err", scope: !1936, file: !1, line: 562, type: !42)
!1970 = !DILocation(line: 562, column: 14, scope: !1936)
!1971 = !DILocation(line: 562, column: 34, scope: !1936)
!1972 = !DILocation(line: 562, column: 47, scope: !1936)
!1973 = !DILocation(line: 562, column: 38, scope: !1936)
!1974 = !DILocation(line: 562, column: 60, scope: !1936)
!1975 = !DILocation(line: 562, column: 51, scope: !1936)
!1976 = !DILocation(line: 562, column: 74, scope: !1936)
!1977 = !DILocation(line: 562, column: 65, scope: !1936)
!1978 = !DILocation(line: 563, column: 10, scope: !1979)
!1979 = distinct !DILexicalBlock(scope: !1936, file: !1, line: 563, column: 10)
!1980 = !DILocation(line: 563, column: 22, scope: !1979)
!1981 = !DILocation(line: 563, column: 40, scope: !1979)
!1982 = !DILocation(line: 563, column: 43, scope: !1983)
!1983 = !DILexicalBlockFile(scope: !1979, file: !1, discriminator: 1)
!1984 = !DILocation(line: 563, column: 55, scope: !1983)
!1985 = !DILocation(line: 563, column: 10, scope: !1983)
!1986 = !DILocation(line: 564, column: 26, scope: !1987)
!1987 = distinct !DILexicalBlock(scope: !1979, file: !1, line: 563, column: 74)
!1988 = !DILocation(line: 564, column: 39, scope: !1987)
!1989 = !DILocation(line: 564, column: 9, scope: !1987)
!1990 = !DILocation(line: 565, column: 26, scope: !1987)
!1991 = !DILocation(line: 565, column: 39, scope: !1987)
!1992 = !DILocation(line: 565, column: 9, scope: !1987)
!1993 = !DILocation(line: 566, column: 21, scope: !1987)
!1994 = !DILocation(line: 566, column: 14, scope: !1987)
!1995 = !DILocation(line: 566, column: 18, scope: !1987)
!1996 = !DILocation(line: 567, column: 21, scope: !1987)
!1997 = !DILocation(line: 567, column: 14, scope: !1987)
!1998 = !DILocation(line: 567, column: 18, scope: !1987)
!1999 = !DILocation(line: 568, column: 7, scope: !1987)
!2000 = !DILocation(line: 570, column: 9, scope: !2001)
!2001 = distinct !DILexicalBlock(scope: !1979, file: !1, line: 569, column: 12)
!2002 = distinct !{!2002, !2000}
!2003 = !DILocation(line: 570, column: 9, scope: !2004)
!2004 = !DILexicalBlockFile(scope: !2005, file: !1, discriminator: 1)
!2005 = distinct !DILexicalBlock(scope: !2001, file: !1, line: 570, column: 9)
!2006 = distinct !{!2006, !2007}
!2007 = !DILocation(line: 570, column: 9, scope: !2005)
!2008 = !DILocation(line: 570, column: 9, scope: !2009)
!2009 = !DILexicalBlockFile(scope: !2010, file: !1, discriminator: 2)
!2010 = distinct !DILexicalBlock(scope: !2005, file: !1, line: 570, column: 9)
!2011 = !DILocation(line: 570, column: 9, scope: !2012)
!2012 = !DILexicalBlockFile(scope: !2005, file: !1, discriminator: 3)
!2013 = !DILocation(line: 572, column: 5, scope: !1936)
!2014 = !DILocation(line: 573, column: 13, scope: !2015)
!2015 = distinct !DILexicalBlock(scope: !1930, file: !1, line: 573, column: 13)
!2016 = !DILocation(line: 573, column: 17, scope: !2015)
!2017 = !DILocation(line: 573, column: 21, scope: !2018)
!2018 = !DILexicalBlockFile(scope: !2015, file: !1, discriminator: 1)
!2019 = !DILocation(line: 573, column: 13, scope: !2018)
!2020 = !DILocalVariable(name: "ln_pre1_val", scope: !2021, file: !1, line: 574, type: !42)
!2021 = distinct !DILexicalBlock(scope: !2015, file: !1, line: 573, column: 26)
!2022 = !DILocation(line: 574, column: 14, scope: !2021)
!2023 = !DILocation(line: 574, column: 34, scope: !2021)
!2024 = !DILocation(line: 574, column: 46, scope: !2021)
!2025 = !DILocation(line: 574, column: 38, scope: !2021)
!2026 = !DILocation(line: 574, column: 60, scope: !2021)
!2027 = !DILocation(line: 574, column: 50, scope: !2021)
!2028 = !DILocation(line: 574, column: 74, scope: !2021)
!2029 = !DILocation(line: 574, column: 64, scope: !2021)
!2030 = !DILocalVariable(name: "ln_pre1_err", scope: !2021, file: !1, line: 575, type: !42)
!2031 = !DILocation(line: 575, column: 14, scope: !2021)
!2032 = !DILocation(line: 575, column: 34, scope: !2021)
!2033 = !DILocation(line: 575, column: 46, scope: !2021)
!2034 = !DILocation(line: 575, column: 38, scope: !2021)
!2035 = !DILocation(line: 575, column: 60, scope: !2021)
!2036 = !DILocation(line: 575, column: 50, scope: !2021)
!2037 = !DILocation(line: 575, column: 74, scope: !2021)
!2038 = !DILocation(line: 575, column: 64, scope: !2021)
!2039 = !DILocation(line: 576, column: 10, scope: !2040)
!2040 = distinct !DILexicalBlock(scope: !2021, file: !1, line: 576, column: 10)
!2041 = !DILocation(line: 576, column: 22, scope: !2040)
!2042 = !DILocation(line: 576, column: 10, scope: !2021)
!2043 = !DILocation(line: 577, column: 26, scope: !2044)
!2044 = distinct !DILexicalBlock(scope: !2040, file: !1, line: 576, column: 41)
!2045 = !DILocation(line: 577, column: 39, scope: !2044)
!2046 = !DILocation(line: 577, column: 9, scope: !2044)
!2047 = !DILocation(line: 578, column: 21, scope: !2044)
!2048 = !DILocation(line: 578, column: 14, scope: !2044)
!2049 = !DILocation(line: 578, column: 18, scope: !2044)
!2050 = !DILocation(line: 579, column: 14, scope: !2044)
!2051 = !DILocation(line: 579, column: 18, scope: !2044)
!2052 = !DILocation(line: 580, column: 14, scope: !2044)
!2053 = !DILocation(line: 580, column: 18, scope: !2044)
!2054 = !DILocation(line: 581, column: 7, scope: !2044)
!2055 = !DILocation(line: 583, column: 9, scope: !2056)
!2056 = distinct !DILexicalBlock(scope: !2040, file: !1, line: 582, column: 12)
!2057 = distinct !{!2057, !2055}
!2058 = !DILocation(line: 583, column: 9, scope: !2059)
!2059 = !DILexicalBlockFile(scope: !2060, file: !1, discriminator: 1)
!2060 = distinct !DILexicalBlock(scope: !2056, file: !1, line: 583, column: 9)
!2061 = distinct !{!2061, !2062}
!2062 = !DILocation(line: 583, column: 9, scope: !2060)
!2063 = !DILocation(line: 583, column: 9, scope: !2064)
!2064 = !DILexicalBlockFile(scope: !2065, file: !1, discriminator: 2)
!2065 = distinct !DILexicalBlock(scope: !2060, file: !1, line: 583, column: 9)
!2066 = !DILocation(line: 583, column: 9, scope: !2067)
!2067 = !DILexicalBlockFile(scope: !2060, file: !1, discriminator: 3)
!2068 = !DILocation(line: 585, column: 5, scope: !2021)
!2069 = !DILocation(line: 586, column: 14, scope: !2070)
!2070 = distinct !DILexicalBlock(scope: !2015, file: !1, line: 586, column: 13)
!2071 = !DILocation(line: 586, column: 18, scope: !2070)
!2072 = !DILocation(line: 586, column: 21, scope: !2073)
!2073 = !DILexicalBlockFile(scope: !2070, file: !1, discriminator: 1)
!2074 = !DILocation(line: 586, column: 13, scope: !2073)
!2075 = !DILocalVariable(name: "ln_pre2_val", scope: !2076, file: !1, line: 587, type: !42)
!2076 = distinct !DILexicalBlock(scope: !2070, file: !1, line: 586, column: 26)
!2077 = !DILocation(line: 587, column: 14, scope: !2076)
!2078 = !DILocation(line: 587, column: 34, scope: !2076)
!2079 = !DILocation(line: 587, column: 47, scope: !2076)
!2080 = !DILocation(line: 587, column: 38, scope: !2076)
!2081 = !DILocation(line: 587, column: 60, scope: !2076)
!2082 = !DILocation(line: 587, column: 51, scope: !2076)
!2083 = !DILocation(line: 587, column: 73, scope: !2076)
!2084 = !DILocation(line: 587, column: 64, scope: !2076)
!2085 = !DILocation(line: 587, column: 79, scope: !2076)
!2086 = !DILocation(line: 587, column: 89, scope: !2076)
!2087 = !DILocation(line: 587, column: 88, scope: !2076)
!2088 = !DILocation(line: 587, column: 81, scope: !2076)
!2089 = !DILocation(line: 587, column: 80, scope: !2076)
!2090 = !DILocation(line: 587, column: 77, scope: !2076)
!2091 = !DILocalVariable(name: "ln_pre2_err", scope: !2076, file: !1, line: 588, type: !42)
!2092 = !DILocation(line: 588, column: 14, scope: !2076)
!2093 = !DILocation(line: 588, column: 34, scope: !2076)
!2094 = !DILocation(line: 588, column: 47, scope: !2076)
!2095 = !DILocation(line: 588, column: 38, scope: !2076)
!2096 = !DILocation(line: 588, column: 60, scope: !2076)
!2097 = !DILocation(line: 588, column: 51, scope: !2076)
!2098 = !DILocation(line: 588, column: 73, scope: !2076)
!2099 = !DILocation(line: 588, column: 64, scope: !2076)
!2100 = !DILocation(line: 589, column: 10, scope: !2101)
!2101 = distinct !DILexicalBlock(scope: !2076, file: !1, line: 589, column: 10)
!2102 = !DILocation(line: 589, column: 22, scope: !2101)
!2103 = !DILocation(line: 589, column: 10, scope: !2076)
!2104 = !DILocation(line: 590, column: 14, scope: !2105)
!2105 = distinct !DILexicalBlock(scope: !2101, file: !1, line: 589, column: 41)
!2106 = !DILocation(line: 590, column: 18, scope: !2105)
!2107 = !DILocation(line: 591, column: 14, scope: !2105)
!2108 = !DILocation(line: 591, column: 18, scope: !2105)
!2109 = !DILocation(line: 592, column: 26, scope: !2105)
!2110 = !DILocation(line: 592, column: 39, scope: !2105)
!2111 = !DILocation(line: 592, column: 9, scope: !2105)
!2112 = !DILocation(line: 593, column: 21, scope: !2105)
!2113 = !DILocation(line: 593, column: 14, scope: !2105)
!2114 = !DILocation(line: 593, column: 18, scope: !2105)
!2115 = !DILocation(line: 594, column: 7, scope: !2105)
!2116 = !DILocation(line: 596, column: 9, scope: !2117)
!2117 = distinct !DILexicalBlock(scope: !2101, file: !1, line: 595, column: 12)
!2118 = distinct !{!2118, !2116}
!2119 = !DILocation(line: 596, column: 9, scope: !2120)
!2120 = !DILexicalBlockFile(scope: !2121, file: !1, discriminator: 1)
!2121 = distinct !DILexicalBlock(scope: !2117, file: !1, line: 596, column: 9)
!2122 = distinct !{!2122, !2123}
!2123 = !DILocation(line: 596, column: 9, scope: !2121)
!2124 = !DILocation(line: 596, column: 9, scope: !2125)
!2125 = !DILexicalBlockFile(scope: !2126, file: !1, discriminator: 2)
!2126 = distinct !DILexicalBlock(scope: !2121, file: !1, line: 596, column: 9)
!2127 = !DILocation(line: 596, column: 9, scope: !2128)
!2128 = !DILexicalBlockFile(scope: !2121, file: !1, discriminator: 3)
!2129 = !DILocation(line: 598, column: 5, scope: !2076)
!2130 = !DILocation(line: 600, column: 12, scope: !2131)
!2131 = distinct !DILexicalBlock(scope: !2070, file: !1, line: 599, column: 10)
!2132 = !DILocation(line: 600, column: 16, scope: !2131)
!2133 = !DILocation(line: 601, column: 12, scope: !2131)
!2134 = !DILocation(line: 601, column: 16, scope: !2131)
!2135 = !DILocation(line: 602, column: 7, scope: !2131)
!2136 = distinct !{!2136, !2135}
!2137 = !DILocation(line: 602, column: 7, scope: !2138)
!2138 = !DILexicalBlockFile(scope: !2139, file: !1, discriminator: 1)
!2139 = distinct !DILexicalBlock(scope: !2131, file: !1, line: 602, column: 7)
!2140 = distinct !{!2140, !2141}
!2141 = !DILocation(line: 602, column: 7, scope: !2139)
!2142 = !DILocation(line: 602, column: 7, scope: !2143)
!2143 = !DILexicalBlockFile(scope: !2144, file: !1, discriminator: 2)
!2144 = distinct !DILexicalBlock(scope: !2139, file: !1, line: 602, column: 7)
!2145 = !DILocation(line: 602, column: 7, scope: !2146)
!2146 = !DILexicalBlockFile(scope: !2139, file: !1, discriminator: 3)
!2147 = !DILocation(line: 605, column: 37, scope: !1822)
!2148 = !DILocation(line: 605, column: 42, scope: !1822)
!2149 = !DILocation(line: 605, column: 49, scope: !1822)
!2150 = !DILocation(line: 605, column: 48, scope: !1822)
!2151 = !DILocation(line: 605, column: 56, scope: !1822)
!2152 = !DILocation(line: 605, column: 55, scope: !1822)
!2153 = !DILocation(line: 605, column: 17, scope: !1822)
!2154 = !DILocation(line: 605, column: 15, scope: !1822)
!2155 = !DILocation(line: 606, column: 35, scope: !1822)
!2156 = !DILocation(line: 606, column: 37, scope: !1822)
!2157 = !DILocation(line: 606, column: 36, scope: !1822)
!2158 = !DILocation(line: 606, column: 40, scope: !1822)
!2159 = !DILocation(line: 606, column: 42, scope: !1822)
!2160 = !DILocation(line: 606, column: 41, scope: !1822)
!2161 = !DILocation(line: 606, column: 49, scope: !1822)
!2162 = !DILocation(line: 606, column: 48, scope: !1822)
!2163 = !DILocation(line: 606, column: 56, scope: !1822)
!2164 = !DILocation(line: 606, column: 55, scope: !1822)
!2165 = !DILocation(line: 606, column: 17, scope: !1822)
!2166 = !DILocation(line: 606, column: 15, scope: !1822)
!2167 = !DILocation(line: 608, column: 25, scope: !1822)
!2168 = !DILocation(line: 608, column: 32, scope: !1822)
!2169 = !DILocation(line: 608, column: 28, scope: !1822)
!2170 = !DILocation(line: 608, column: 43, scope: !1822)
!2171 = !DILocation(line: 608, column: 50, scope: !1822)
!2172 = !DILocation(line: 608, column: 46, scope: !1822)
!2173 = !DILocation(line: 608, column: 36, scope: !1822)
!2174 = !DILocation(line: 608, column: 5, scope: !1822)
!2175 = !DILocation(line: 608, column: 13, scope: !1822)
!2176 = !DILocation(line: 608, column: 18, scope: !1822)
!2177 = !DILocation(line: 609, column: 30, scope: !1822)
!2178 = !DILocation(line: 609, column: 37, scope: !1822)
!2179 = !DILocation(line: 609, column: 33, scope: !1822)
!2180 = !DILocation(line: 609, column: 20, scope: !1822)
!2181 = !DILocation(line: 609, column: 54, scope: !1822)
!2182 = !DILocation(line: 609, column: 61, scope: !1822)
!2183 = !DILocation(line: 609, column: 57, scope: !1822)
!2184 = !DILocation(line: 609, column: 44, scope: !1880)
!2185 = !DILocation(line: 609, column: 42, scope: !1822)
!2186 = !DILocation(line: 609, column: 5, scope: !1822)
!2187 = !DILocation(line: 609, column: 13, scope: !1822)
!2188 = !DILocation(line: 609, column: 18, scope: !1822)
!2189 = !DILocation(line: 610, column: 30, scope: !1822)
!2190 = !DILocation(line: 610, column: 37, scope: !1822)
!2191 = !DILocation(line: 610, column: 33, scope: !1822)
!2192 = !DILocation(line: 610, column: 20, scope: !1822)
!2193 = !DILocation(line: 610, column: 54, scope: !1822)
!2194 = !DILocation(line: 610, column: 61, scope: !1822)
!2195 = !DILocation(line: 610, column: 57, scope: !1822)
!2196 = !DILocation(line: 610, column: 44, scope: !1880)
!2197 = !DILocation(line: 610, column: 42, scope: !1822)
!2198 = !DILocation(line: 610, column: 5, scope: !1822)
!2199 = !DILocation(line: 610, column: 13, scope: !1822)
!2200 = !DILocation(line: 610, column: 17, scope: !1822)
!2201 = !DILocation(line: 611, column: 55, scope: !1822)
!2202 = !DILocation(line: 611, column: 62, scope: !1822)
!2203 = !DILocation(line: 611, column: 58, scope: !1822)
!2204 = !DILocation(line: 611, column: 45, scope: !1822)
!2205 = !DILocation(line: 611, column: 79, scope: !1822)
!2206 = !DILocation(line: 611, column: 86, scope: !1822)
!2207 = !DILocation(line: 611, column: 82, scope: !1822)
!2208 = !DILocation(line: 611, column: 69, scope: !1880)
!2209 = !DILocation(line: 611, column: 67, scope: !1822)
!2210 = !DILocation(line: 611, column: 42, scope: !1822)
!2211 = !DILocation(line: 611, column: 5, scope: !1822)
!2212 = !DILocation(line: 611, column: 13, scope: !1822)
!2213 = !DILocation(line: 611, column: 17, scope: !1822)
!2214 = !DILocation(line: 612, column: 49, scope: !1822)
!2215 = !DILocation(line: 612, column: 57, scope: !1822)
!2216 = !DILocation(line: 612, column: 44, scope: !1822)
!2217 = !DILocation(line: 612, column: 42, scope: !1822)
!2218 = !DILocation(line: 612, column: 5, scope: !1822)
!2219 = !DILocation(line: 612, column: 13, scope: !1822)
!2220 = !DILocation(line: 612, column: 17, scope: !1822)
!2221 = !DILocation(line: 614, column: 9, scope: !2222)
!2222 = distinct !DILexicalBlock(scope: !1822, file: !1, line: 614, column: 9)
!2223 = !DILocation(line: 614, column: 9, scope: !1822)
!2224 = !DILocation(line: 615, column: 14, scope: !2222)
!2225 = !DILocation(line: 615, column: 7, scope: !2222)
!2226 = !DILocation(line: 617, column: 9, scope: !2227)
!2227 = distinct !DILexicalBlock(scope: !1822, file: !1, line: 617, column: 9)
!2228 = !DILocation(line: 617, column: 9, scope: !1822)
!2229 = !DILocation(line: 618, column: 14, scope: !2227)
!2230 = !DILocation(line: 618, column: 7, scope: !2227)
!2231 = !DILocation(line: 620, column: 5, scope: !1822)
!2232 = !DILocation(line: 622, column: 1, scope: !1263)
!2233 = distinct !DISubprogram(name: "gsl_sf_hyperg_2F1_conj_e", scope: !1, file: !1, line: 779, type: !613, isLocal: false, isDefinition: true, scopeLine: 782, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !59)
!2234 = !DILocalVariable(name: "aR", arg: 1, scope: !2233, file: !1, line: 779, type: !51)
!2235 = !DILocation(line: 779, column: 39, scope: !2233)
!2236 = !DILocalVariable(name: "aI", arg: 2, scope: !2233, file: !1, line: 779, type: !51)
!2237 = !DILocation(line: 779, column: 56, scope: !2233)
!2238 = !DILocalVariable(name: "c", arg: 3, scope: !2233, file: !1, line: 779, type: !51)
!2239 = !DILocation(line: 779, column: 73, scope: !2233)
!2240 = !DILocalVariable(name: "x", arg: 4, scope: !2233, file: !1, line: 780, type: !51)
!2241 = !DILocation(line: 780, column: 42, scope: !2233)
!2242 = !DILocalVariable(name: "result", arg: 5, scope: !2233, file: !1, line: 781, type: !52)
!2243 = !DILocation(line: 781, column: 45, scope: !2233)
!2244 = !DILocalVariable(name: "ax", scope: !2233, file: !1, line: 783, type: !51)
!2245 = !DILocation(line: 783, column: 16, scope: !2233)
!2246 = !DILocation(line: 783, column: 26, scope: !2233)
!2247 = !DILocation(line: 783, column: 21, scope: !2233)
!2248 = !DILocalVariable(name: "rintc", scope: !2233, file: !1, line: 784, type: !51)
!2249 = !DILocation(line: 784, column: 16, scope: !2233)
!2250 = !DILocation(line: 784, column: 30, scope: !2233)
!2251 = !DILocation(line: 784, column: 32, scope: !2233)
!2252 = !DILocation(line: 784, column: 24, scope: !2233)
!2253 = !DILocalVariable(name: "c_neg_integer", scope: !2233, file: !1, line: 785, type: !94)
!2254 = !DILocation(line: 785, column: 13, scope: !2233)
!2255 = !DILocation(line: 785, column: 31, scope: !2233)
!2256 = !DILocation(line: 785, column: 33, scope: !2233)
!2257 = !DILocation(line: 785, column: 40, scope: !2233)
!2258 = !DILocation(line: 785, column: 49, scope: !2259)
!2259 = !DILexicalBlockFile(scope: !2233, file: !1, discriminator: 1)
!2260 = !DILocation(line: 785, column: 53, scope: !2259)
!2261 = !DILocation(line: 785, column: 51, scope: !2259)
!2262 = !DILocation(line: 785, column: 44, scope: !2259)
!2263 = !DILocation(line: 785, column: 60, scope: !2259)
!2264 = !DILocation(line: 785, column: 40, scope: !2265)
!2265 = !DILexicalBlockFile(scope: !2233, file: !1, discriminator: 2)
!2266 = !DILocation(line: 785, column: 13, scope: !2265)
!2267 = !DILocation(line: 787, column: 3, scope: !2233)
!2268 = !DILocation(line: 787, column: 11, scope: !2233)
!2269 = !DILocation(line: 787, column: 15, scope: !2233)
!2270 = !DILocation(line: 788, column: 3, scope: !2233)
!2271 = !DILocation(line: 788, column: 11, scope: !2233)
!2272 = !DILocation(line: 788, column: 15, scope: !2233)
!2273 = !DILocation(line: 790, column: 6, scope: !2274)
!2274 = distinct !DILexicalBlock(scope: !2233, file: !1, line: 790, column: 6)
!2275 = !DILocation(line: 790, column: 9, scope: !2274)
!2276 = !DILocation(line: 790, column: 16, scope: !2274)
!2277 = !DILocation(line: 790, column: 19, scope: !2278)
!2278 = !DILexicalBlockFile(scope: !2274, file: !1, discriminator: 1)
!2279 = !DILocation(line: 790, column: 33, scope: !2278)
!2280 = !DILocation(line: 790, column: 36, scope: !2281)
!2281 = !DILexicalBlockFile(scope: !2274, file: !1, discriminator: 2)
!2282 = !DILocation(line: 790, column: 38, scope: !2281)
!2283 = !DILocation(line: 790, column: 6, scope: !2281)
!2284 = !DILocation(line: 791, column: 5, scope: !2285)
!2285 = distinct !DILexicalBlock(scope: !2274, file: !1, line: 790, column: 46)
!2286 = distinct !{!2286, !2284}
!2287 = !DILocation(line: 791, column: 5, scope: !2288)
!2288 = !DILexicalBlockFile(scope: !2289, file: !1, discriminator: 1)
!2289 = distinct !DILexicalBlock(scope: !2285, file: !1, line: 791, column: 5)
!2290 = distinct !{!2290, !2291}
!2291 = !DILocation(line: 791, column: 5, scope: !2289)
!2292 = !DILocation(line: 791, column: 5, scope: !2293)
!2293 = !DILexicalBlockFile(scope: !2294, file: !1, discriminator: 2)
!2294 = distinct !DILexicalBlock(scope: !2289, file: !1, line: 791, column: 5)
!2295 = !DILocation(line: 791, column: 5, scope: !2296)
!2296 = !DILexicalBlockFile(scope: !2289, file: !1, discriminator: 3)
!2297 = !DILocation(line: 792, column: 3, scope: !2285)
!2298 = !DILocation(line: 794, column: 10, scope: !2299)
!2299 = distinct !DILexicalBlock(scope: !2233, file: !1, line: 794, column: 9)
!2300 = !DILocation(line: 794, column: 13, scope: !2299)
!2301 = !DILocation(line: 794, column: 20, scope: !2299)
!2302 = !DILocation(line: 794, column: 28, scope: !2303)
!2303 = !DILexicalBlockFile(scope: !2299, file: !1, discriminator: 1)
!2304 = !DILocation(line: 794, column: 23, scope: !2303)
!2305 = !DILocation(line: 794, column: 32, scope: !2303)
!2306 = !DILocation(line: 794, column: 39, scope: !2303)
!2307 = !DILocation(line: 794, column: 47, scope: !2308)
!2308 = !DILexicalBlockFile(scope: !2299, file: !1, discriminator: 2)
!2309 = !DILocation(line: 794, column: 42, scope: !2308)
!2310 = !DILocation(line: 794, column: 51, scope: !2308)
!2311 = !DILocation(line: 795, column: 6, scope: !2299)
!2312 = !DILocation(line: 795, column: 10, scope: !2303)
!2313 = !DILocation(line: 795, column: 12, scope: !2303)
!2314 = !DILocation(line: 795, column: 18, scope: !2303)
!2315 = !DILocation(line: 795, column: 21, scope: !2308)
!2316 = !DILocation(line: 795, column: 23, scope: !2308)
!2317 = !DILocation(line: 794, column: 9, scope: !2318)
!2318 = !DILexicalBlockFile(scope: !2233, file: !1, discriminator: 3)
!2319 = !DILocation(line: 797, column: 35, scope: !2320)
!2320 = distinct !DILexicalBlock(scope: !2299, file: !1, line: 796, column: 7)
!2321 = !DILocation(line: 797, column: 39, scope: !2320)
!2322 = !DILocation(line: 797, column: 43, scope: !2320)
!2323 = !DILocation(line: 797, column: 46, scope: !2320)
!2324 = !DILocation(line: 797, column: 49, scope: !2320)
!2325 = !DILocation(line: 797, column: 12, scope: !2320)
!2326 = !DILocation(line: 797, column: 5, scope: !2320)
!2327 = !DILocation(line: 799, column: 16, scope: !2328)
!2328 = distinct !DILexicalBlock(scope: !2299, file: !1, line: 799, column: 11)
!2329 = !DILocation(line: 799, column: 11, scope: !2328)
!2330 = !DILocation(line: 799, column: 20, scope: !2328)
!2331 = !DILocation(line: 799, column: 27, scope: !2328)
!2332 = !DILocation(line: 799, column: 35, scope: !2333)
!2333 = !DILexicalBlockFile(scope: !2328, file: !1, discriminator: 1)
!2334 = !DILocation(line: 799, column: 30, scope: !2333)
!2335 = !DILocation(line: 799, column: 39, scope: !2333)
!2336 = !DILocation(line: 799, column: 11, scope: !2333)
!2337 = !DILocation(line: 800, column: 8, scope: !2338)
!2338 = distinct !DILexicalBlock(scope: !2339, file: !1, line: 800, column: 8)
!2339 = distinct !DILexicalBlock(scope: !2328, file: !1, line: 799, column: 47)
!2340 = !DILocation(line: 800, column: 10, scope: !2338)
!2341 = !DILocation(line: 800, column: 8, scope: !2339)
!2342 = !DILocation(line: 801, column: 35, scope: !2343)
!2343 = distinct !DILexicalBlock(scope: !2338, file: !1, line: 800, column: 19)
!2344 = !DILocation(line: 801, column: 39, scope: !2343)
!2345 = !DILocation(line: 801, column: 43, scope: !2343)
!2346 = !DILocation(line: 801, column: 46, scope: !2343)
!2347 = !DILocation(line: 801, column: 49, scope: !2343)
!2348 = !DILocation(line: 801, column: 14, scope: !2343)
!2349 = !DILocation(line: 801, column: 7, scope: !2343)
!2350 = !DILocation(line: 804, column: 37, scope: !2351)
!2351 = distinct !DILexicalBlock(scope: !2338, file: !1, line: 803, column: 10)
!2352 = !DILocation(line: 804, column: 41, scope: !2351)
!2353 = !DILocation(line: 804, column: 45, scope: !2351)
!2354 = !DILocation(line: 804, column: 48, scope: !2351)
!2355 = !DILocation(line: 804, column: 51, scope: !2351)
!2356 = !DILocation(line: 804, column: 14, scope: !2351)
!2357 = !DILocation(line: 804, column: 7, scope: !2351)
!2358 = !DILocation(line: 808, column: 8, scope: !2359)
!2359 = distinct !DILexicalBlock(scope: !2360, file: !1, line: 808, column: 8)
!2360 = distinct !DILexicalBlock(scope: !2328, file: !1, line: 807, column: 8)
!2361 = !DILocation(line: 808, column: 10, scope: !2359)
!2362 = !DILocation(line: 808, column: 8, scope: !2360)
!2363 = !DILocation(line: 811, column: 35, scope: !2364)
!2364 = distinct !DILexicalBlock(scope: !2359, file: !1, line: 808, column: 17)
!2365 = !DILocation(line: 811, column: 39, scope: !2364)
!2366 = !DILocation(line: 811, column: 43, scope: !2364)
!2367 = !DILocation(line: 811, column: 46, scope: !2364)
!2368 = !DILocation(line: 811, column: 49, scope: !2364)
!2369 = !DILocation(line: 811, column: 14, scope: !2364)
!2370 = !DILocation(line: 811, column: 7, scope: !2364)
!2371 = !DILocation(line: 815, column: 5, scope: !2360)
!2372 = !DILocation(line: 815, column: 13, scope: !2360)
!2373 = !DILocation(line: 815, column: 17, scope: !2360)
!2374 = !DILocation(line: 816, column: 5, scope: !2360)
!2375 = !DILocation(line: 816, column: 13, scope: !2360)
!2376 = !DILocation(line: 816, column: 17, scope: !2360)
!2377 = !DILocation(line: 817, column: 5, scope: !2360)
!2378 = distinct !{!2378, !2377}
!2379 = !DILocation(line: 817, column: 5, scope: !2380)
!2380 = !DILexicalBlockFile(scope: !2381, file: !1, discriminator: 1)
!2381 = distinct !DILexicalBlock(scope: !2360, file: !1, line: 817, column: 5)
!2382 = !DILocation(line: 819, column: 1, scope: !2233)
!2383 = distinct !DISubprogram(name: "hyperg_2F1_conj_series", scope: !1, file: !1, line: 112, type: !2384, isLocal: true, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !59)
!2384 = !DISubroutineType(types: !2385)
!2385 = !{!50, !51, !51, !51, !42, !52}
!2386 = !DILocalVariable(name: "aR", arg: 1, scope: !2383, file: !1, line: 112, type: !51)
!2387 = !DILocation(line: 112, column: 37, scope: !2383)
!2388 = !DILocalVariable(name: "aI", arg: 2, scope: !2383, file: !1, line: 112, type: !51)
!2389 = !DILocation(line: 112, column: 54, scope: !2383)
!2390 = !DILocalVariable(name: "c", arg: 3, scope: !2383, file: !1, line: 112, type: !51)
!2391 = !DILocation(line: 112, column: 71, scope: !2383)
!2392 = !DILocalVariable(name: "x", arg: 4, scope: !2383, file: !1, line: 113, type: !42)
!2393 = !DILocation(line: 113, column: 31, scope: !2383)
!2394 = !DILocalVariable(name: "result", arg: 5, scope: !2383, file: !1, line: 114, type: !52)
!2395 = !DILocation(line: 114, column: 40, scope: !2383)
!2396 = !DILocation(line: 116, column: 6, scope: !2397)
!2397 = distinct !DILexicalBlock(scope: !2383, file: !1, line: 116, column: 6)
!2398 = !DILocation(line: 116, column: 8, scope: !2397)
!2399 = !DILocation(line: 116, column: 6, scope: !2383)
!2400 = !DILocation(line: 117, column: 5, scope: !2401)
!2401 = distinct !DILexicalBlock(scope: !2397, file: !1, line: 116, column: 16)
!2402 = !DILocation(line: 117, column: 13, scope: !2401)
!2403 = !DILocation(line: 117, column: 17, scope: !2401)
!2404 = !DILocation(line: 118, column: 5, scope: !2401)
!2405 = !DILocation(line: 118, column: 13, scope: !2401)
!2406 = !DILocation(line: 118, column: 17, scope: !2401)
!2407 = !DILocation(line: 119, column: 5, scope: !2401)
!2408 = distinct !{!2408, !2407}
!2409 = !DILocation(line: 119, column: 5, scope: !2410)
!2410 = !DILexicalBlockFile(scope: !2411, file: !1, discriminator: 1)
!2411 = distinct !DILexicalBlock(scope: !2401, file: !1, line: 119, column: 5)
!2412 = !DILocation(line: 120, column: 3, scope: !2401)
!2413 = !DILocalVariable(name: "sum_pos", scope: !2414, file: !1, line: 122, type: !42)
!2414 = distinct !DILexicalBlock(scope: !2397, file: !1, line: 121, column: 8)
!2415 = !DILocation(line: 122, column: 12, scope: !2414)
!2416 = !DILocalVariable(name: "sum_neg", scope: !2414, file: !1, line: 123, type: !42)
!2417 = !DILocation(line: 123, column: 12, scope: !2414)
!2418 = !DILocalVariable(name: "del_pos", scope: !2414, file: !1, line: 124, type: !42)
!2419 = !DILocation(line: 124, column: 12, scope: !2414)
!2420 = !DILocalVariable(name: "del_neg", scope: !2414, file: !1, line: 125, type: !42)
!2421 = !DILocation(line: 125, column: 12, scope: !2414)
!2422 = !DILocalVariable(name: "del", scope: !2414, file: !1, line: 126, type: !42)
!2423 = !DILocation(line: 126, column: 12, scope: !2414)
!2424 = !DILocalVariable(name: "k", scope: !2414, file: !1, line: 127, type: !42)
!2425 = !DILocation(line: 127, column: 12, scope: !2414)
!2426 = !DILocation(line: 128, column: 5, scope: !2414)
!2427 = distinct !{!2427, !2426}
!2428 = !DILocation(line: 129, column: 16, scope: !2429)
!2429 = distinct !DILexicalBlock(scope: !2414, file: !1, line: 128, column: 8)
!2430 = !DILocation(line: 129, column: 19, scope: !2429)
!2431 = !DILocation(line: 129, column: 18, scope: !2429)
!2432 = !DILocation(line: 129, column: 23, scope: !2429)
!2433 = !DILocation(line: 129, column: 26, scope: !2429)
!2434 = !DILocation(line: 129, column: 25, scope: !2429)
!2435 = !DILocation(line: 129, column: 21, scope: !2429)
!2436 = !DILocation(line: 129, column: 31, scope: !2429)
!2437 = !DILocation(line: 129, column: 34, scope: !2429)
!2438 = !DILocation(line: 129, column: 33, scope: !2429)
!2439 = !DILocation(line: 129, column: 29, scope: !2429)
!2440 = !DILocation(line: 129, column: 40, scope: !2429)
!2441 = !DILocation(line: 129, column: 41, scope: !2429)
!2442 = !DILocation(line: 129, column: 48, scope: !2429)
!2443 = !DILocation(line: 129, column: 50, scope: !2429)
!2444 = !DILocation(line: 129, column: 49, scope: !2429)
!2445 = !DILocation(line: 129, column: 46, scope: !2429)
!2446 = !DILocation(line: 129, column: 37, scope: !2429)
!2447 = !DILocation(line: 129, column: 56, scope: !2429)
!2448 = !DILocation(line: 129, column: 54, scope: !2429)
!2449 = !DILocation(line: 129, column: 11, scope: !2429)
!2450 = !DILocation(line: 131, column: 10, scope: !2451)
!2451 = distinct !DILexicalBlock(scope: !2429, file: !1, line: 131, column: 10)
!2452 = !DILocation(line: 131, column: 14, scope: !2451)
!2453 = !DILocation(line: 131, column: 10, scope: !2429)
!2454 = !DILocation(line: 132, column: 21, scope: !2455)
!2455 = distinct !DILexicalBlock(scope: !2451, file: !1, line: 131, column: 22)
!2456 = !DILocation(line: 132, column: 18, scope: !2455)
!2457 = !DILocation(line: 133, column: 21, scope: !2455)
!2458 = !DILocation(line: 133, column: 17, scope: !2455)
!2459 = !DILocation(line: 134, column: 7, scope: !2455)
!2460 = !DILocation(line: 136, column: 21, scope: !2461)
!2461 = distinct !DILexicalBlock(scope: !2451, file: !1, line: 135, column: 12)
!2462 = !DILocation(line: 136, column: 20, scope: !2461)
!2463 = !DILocation(line: 136, column: 18, scope: !2461)
!2464 = !DILocation(line: 137, column: 21, scope: !2461)
!2465 = !DILocation(line: 137, column: 17, scope: !2461)
!2466 = !DILocation(line: 140, column: 10, scope: !2467)
!2467 = distinct !DILexicalBlock(scope: !2429, file: !1, line: 140, column: 10)
!2468 = !DILocation(line: 140, column: 12, scope: !2467)
!2469 = !DILocation(line: 140, column: 10, scope: !2429)
!2470 = !DILocation(line: 141, column: 24, scope: !2471)
!2471 = distinct !DILexicalBlock(scope: !2467, file: !1, line: 140, column: 21)
!2472 = !DILocation(line: 141, column: 34, scope: !2471)
!2473 = !DILocation(line: 141, column: 32, scope: !2471)
!2474 = !DILocation(line: 141, column: 9, scope: !2471)
!2475 = !DILocation(line: 141, column: 17, scope: !2471)
!2476 = !DILocation(line: 141, column: 22, scope: !2471)
!2477 = !DILocation(line: 142, column: 24, scope: !2471)
!2478 = !DILocation(line: 142, column: 34, scope: !2471)
!2479 = !DILocation(line: 142, column: 32, scope: !2471)
!2480 = !DILocation(line: 142, column: 9, scope: !2471)
!2481 = !DILocation(line: 142, column: 17, scope: !2471)
!2482 = !DILocation(line: 142, column: 22, scope: !2471)
!2483 = !DILocation(line: 143, column: 49, scope: !2471)
!2484 = !DILocation(line: 143, column: 59, scope: !2471)
!2485 = !DILocation(line: 143, column: 57, scope: !2471)
!2486 = !DILocation(line: 143, column: 46, scope: !2471)
!2487 = !DILocation(line: 143, column: 9, scope: !2471)
!2488 = !DILocation(line: 143, column: 17, scope: !2471)
!2489 = !DILocation(line: 143, column: 21, scope: !2471)
!2490 = !DILocation(line: 144, column: 58, scope: !2471)
!2491 = !DILocation(line: 144, column: 53, scope: !2471)
!2492 = !DILocation(line: 144, column: 52, scope: !2471)
!2493 = !DILocation(line: 144, column: 60, scope: !2471)
!2494 = !DILocation(line: 144, column: 46, scope: !2471)
!2495 = !DILocation(line: 144, column: 73, scope: !2471)
!2496 = !DILocation(line: 144, column: 81, scope: !2471)
!2497 = !DILocation(line: 144, column: 68, scope: !2498)
!2498 = !DILexicalBlockFile(scope: !2471, file: !1, discriminator: 1)
!2499 = !DILocation(line: 144, column: 66, scope: !2471)
!2500 = !DILocation(line: 144, column: 9, scope: !2471)
!2501 = !DILocation(line: 144, column: 17, scope: !2471)
!2502 = !DILocation(line: 144, column: 21, scope: !2471)
!2503 = !DILocation(line: 145, column: 9, scope: !2471)
!2504 = distinct !{!2504, !2503}
!2505 = !DILocation(line: 145, column: 9, scope: !2506)
!2506 = !DILexicalBlockFile(scope: !2507, file: !1, discriminator: 1)
!2507 = distinct !DILexicalBlock(scope: !2471, file: !1, line: 145, column: 9)
!2508 = !DILocation(line: 146, column: 7, scope: !2471)
!2509 = !DILocation(line: 148, column: 9, scope: !2429)
!2510 = !DILocation(line: 149, column: 5, scope: !2429)
!2511 = !DILocation(line: 149, column: 19, scope: !2512)
!2512 = !DILexicalBlockFile(scope: !2414, file: !1, discriminator: 1)
!2513 = !DILocation(line: 149, column: 29, scope: !2512)
!2514 = !DILocation(line: 149, column: 27, scope: !2512)
!2515 = !DILocation(line: 149, column: 39, scope: !2512)
!2516 = !DILocation(line: 149, column: 49, scope: !2512)
!2517 = !DILocation(line: 149, column: 47, scope: !2512)
!2518 = !DILocation(line: 149, column: 37, scope: !2512)
!2519 = !DILocation(line: 149, column: 13, scope: !2512)
!2520 = !DILocation(line: 149, column: 59, scope: !2512)
!2521 = !DILocation(line: 149, column: 5, scope: !2512)
!2522 = !DILocation(line: 151, column: 20, scope: !2414)
!2523 = !DILocation(line: 151, column: 30, scope: !2414)
!2524 = !DILocation(line: 151, column: 28, scope: !2414)
!2525 = !DILocation(line: 151, column: 5, scope: !2414)
!2526 = !DILocation(line: 151, column: 13, scope: !2414)
!2527 = !DILocation(line: 151, column: 18, scope: !2414)
!2528 = !DILocation(line: 152, column: 20, scope: !2414)
!2529 = !DILocation(line: 152, column: 30, scope: !2414)
!2530 = !DILocation(line: 152, column: 28, scope: !2414)
!2531 = !DILocation(line: 152, column: 5, scope: !2414)
!2532 = !DILocation(line: 152, column: 13, scope: !2414)
!2533 = !DILocation(line: 152, column: 18, scope: !2414)
!2534 = !DILocation(line: 153, column: 45, scope: !2414)
!2535 = !DILocation(line: 153, column: 55, scope: !2414)
!2536 = !DILocation(line: 153, column: 53, scope: !2414)
!2537 = !DILocation(line: 153, column: 42, scope: !2414)
!2538 = !DILocation(line: 153, column: 5, scope: !2414)
!2539 = !DILocation(line: 153, column: 13, scope: !2414)
!2540 = !DILocation(line: 153, column: 17, scope: !2414)
!2541 = !DILocation(line: 154, column: 54, scope: !2414)
!2542 = !DILocation(line: 154, column: 49, scope: !2414)
!2543 = !DILocation(line: 154, column: 48, scope: !2414)
!2544 = !DILocation(line: 154, column: 57, scope: !2414)
!2545 = !DILocation(line: 154, column: 42, scope: !2414)
!2546 = !DILocation(line: 154, column: 71, scope: !2414)
!2547 = !DILocation(line: 154, column: 79, scope: !2414)
!2548 = !DILocation(line: 154, column: 66, scope: !2512)
!2549 = !DILocation(line: 154, column: 64, scope: !2414)
!2550 = !DILocation(line: 154, column: 5, scope: !2414)
!2551 = !DILocation(line: 154, column: 13, scope: !2414)
!2552 = !DILocation(line: 154, column: 17, scope: !2414)
!2553 = !DILocation(line: 156, column: 5, scope: !2414)
!2554 = !DILocation(line: 158, column: 1, scope: !2383)
!2555 = distinct !DISubprogram(name: "hyperg_2F1_conj_luke", scope: !1, file: !1, line: 268, type: !613, isLocal: true, isDefinition: true, scopeLine: 271, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !59)
!2556 = !DILocalVariable(name: "aR", arg: 1, scope: !2555, file: !1, line: 268, type: !51)
!2557 = !DILocation(line: 268, column: 35, scope: !2555)
!2558 = !DILocalVariable(name: "aI", arg: 2, scope: !2555, file: !1, line: 268, type: !51)
!2559 = !DILocation(line: 268, column: 52, scope: !2555)
!2560 = !DILocalVariable(name: "c", arg: 3, scope: !2555, file: !1, line: 268, type: !51)
!2561 = !DILocation(line: 268, column: 69, scope: !2555)
!2562 = !DILocalVariable(name: "xin", arg: 4, scope: !2555, file: !1, line: 269, type: !51)
!2563 = !DILocation(line: 269, column: 35, scope: !2555)
!2564 = !DILocalVariable(name: "result", arg: 5, scope: !2555, file: !1, line: 270, type: !52)
!2565 = !DILocation(line: 270, column: 38, scope: !2555)
!2566 = !DILocalVariable(name: "stat_iter", scope: !2555, file: !1, line: 272, type: !50)
!2567 = !DILocation(line: 272, column: 7, scope: !2555)
!2568 = !DILocalVariable(name: "RECUR_BIG", scope: !2555, file: !1, line: 273, type: !51)
!2569 = !DILocation(line: 273, column: 16, scope: !2555)
!2570 = !DILocalVariable(name: "nmax", scope: !2555, file: !1, line: 274, type: !94)
!2571 = !DILocation(line: 274, column: 13, scope: !2555)
!2572 = !DILocalVariable(name: "n", scope: !2555, file: !1, line: 275, type: !50)
!2573 = !DILocation(line: 275, column: 7, scope: !2555)
!2574 = !DILocalVariable(name: "x", scope: !2555, file: !1, line: 276, type: !51)
!2575 = !DILocation(line: 276, column: 16, scope: !2555)
!2576 = !DILocation(line: 276, column: 21, scope: !2555)
!2577 = !DILocation(line: 276, column: 20, scope: !2555)
!2578 = !DILocalVariable(name: "x3", scope: !2555, file: !1, line: 277, type: !51)
!2579 = !DILocation(line: 277, column: 16, scope: !2555)
!2580 = !DILocation(line: 277, column: 21, scope: !2555)
!2581 = !DILocation(line: 277, column: 23, scope: !2555)
!2582 = !DILocation(line: 277, column: 22, scope: !2555)
!2583 = !DILocation(line: 277, column: 25, scope: !2555)
!2584 = !DILocation(line: 277, column: 24, scope: !2555)
!2585 = !DILocalVariable(name: "atimesb", scope: !2555, file: !1, line: 278, type: !51)
!2586 = !DILocation(line: 278, column: 16, scope: !2555)
!2587 = !DILocation(line: 278, column: 26, scope: !2555)
!2588 = !DILocation(line: 278, column: 29, scope: !2555)
!2589 = !DILocation(line: 278, column: 28, scope: !2555)
!2590 = !DILocation(line: 278, column: 34, scope: !2555)
!2591 = !DILocation(line: 278, column: 37, scope: !2555)
!2592 = !DILocation(line: 278, column: 36, scope: !2555)
!2593 = !DILocation(line: 278, column: 32, scope: !2555)
!2594 = !DILocalVariable(name: "apb", scope: !2555, file: !1, line: 279, type: !51)
!2595 = !DILocation(line: 279, column: 16, scope: !2555)
!2596 = !DILocation(line: 279, column: 30, scope: !2555)
!2597 = !DILocation(line: 279, column: 29, scope: !2555)
!2598 = !DILocalVariable(name: "t0", scope: !2555, file: !1, line: 280, type: !51)
!2599 = !DILocation(line: 280, column: 16, scope: !2555)
!2600 = !DILocation(line: 280, column: 21, scope: !2555)
!2601 = !DILocation(line: 280, column: 29, scope: !2555)
!2602 = !DILocation(line: 280, column: 28, scope: !2555)
!2603 = !DILocalVariable(name: "t1", scope: !2555, file: !1, line: 281, type: !51)
!2604 = !DILocation(line: 281, column: 16, scope: !2555)
!2605 = !DILocation(line: 281, column: 22, scope: !2555)
!2606 = !DILocation(line: 281, column: 36, scope: !2555)
!2607 = !DILocation(line: 281, column: 30, scope: !2555)
!2608 = !DILocation(line: 281, column: 40, scope: !2555)
!2609 = !DILocation(line: 281, column: 52, scope: !2555)
!2610 = !DILocation(line: 281, column: 51, scope: !2555)
!2611 = !DILocation(line: 281, column: 46, scope: !2555)
!2612 = !DILocalVariable(name: "t2", scope: !2555, file: !1, line: 282, type: !51)
!2613 = !DILocation(line: 282, column: 16, scope: !2555)
!2614 = !DILocation(line: 282, column: 22, scope: !2555)
!2615 = !DILocation(line: 282, column: 36, scope: !2555)
!2616 = !DILocation(line: 282, column: 35, scope: !2555)
!2617 = !DILocation(line: 282, column: 30, scope: !2555)
!2618 = !DILocation(line: 282, column: 40, scope: !2555)
!2619 = !DILocation(line: 282, column: 53, scope: !2555)
!2620 = !DILocation(line: 282, column: 54, scope: !2555)
!2621 = !DILocation(line: 282, column: 51, scope: !2555)
!2622 = !DILocation(line: 282, column: 46, scope: !2555)
!2623 = !DILocalVariable(name: "F", scope: !2555, file: !1, line: 283, type: !42)
!2624 = !DILocation(line: 283, column: 10, scope: !2555)
!2625 = !DILocalVariable(name: "prec", scope: !2555, file: !1, line: 284, type: !42)
!2626 = !DILocation(line: 284, column: 10, scope: !2555)
!2627 = !DILocalVariable(name: "Bnm3", scope: !2555, file: !1, line: 286, type: !42)
!2628 = !DILocation(line: 286, column: 10, scope: !2555)
!2629 = !DILocalVariable(name: "Bnm2", scope: !2555, file: !1, line: 287, type: !42)
!2630 = !DILocation(line: 287, column: 10, scope: !2555)
!2631 = !DILocation(line: 287, column: 23, scope: !2555)
!2632 = !DILocation(line: 287, column: 28, scope: !2555)
!2633 = !DILocation(line: 287, column: 26, scope: !2555)
!2634 = !DILocation(line: 287, column: 21, scope: !2555)
!2635 = !DILocalVariable(name: "Bnm1", scope: !2555, file: !1, line: 288, type: !42)
!2636 = !DILocation(line: 288, column: 10, scope: !2555)
!2637 = !DILocation(line: 288, column: 23, scope: !2555)
!2638 = !DILocation(line: 288, column: 28, scope: !2555)
!2639 = !DILocation(line: 288, column: 26, scope: !2555)
!2640 = !DILocation(line: 288, column: 39, scope: !2555)
!2641 = !DILocation(line: 288, column: 41, scope: !2555)
!2642 = !DILocation(line: 288, column: 48, scope: !2555)
!2643 = !DILocation(line: 288, column: 46, scope: !2555)
!2644 = !DILocation(line: 288, column: 37, scope: !2555)
!2645 = !DILocation(line: 288, column: 30, scope: !2555)
!2646 = !DILocation(line: 288, column: 21, scope: !2555)
!2647 = !DILocalVariable(name: "Anm3", scope: !2555, file: !1, line: 290, type: !42)
!2648 = !DILocation(line: 290, column: 10, scope: !2555)
!2649 = !DILocalVariable(name: "Anm2", scope: !2555, file: !1, line: 291, type: !42)
!2650 = !DILocation(line: 291, column: 10, scope: !2555)
!2651 = !DILocation(line: 291, column: 17, scope: !2555)
!2652 = !DILocation(line: 291, column: 24, scope: !2555)
!2653 = !DILocation(line: 291, column: 29, scope: !2555)
!2654 = !DILocation(line: 291, column: 27, scope: !2555)
!2655 = !DILocation(line: 291, column: 22, scope: !2555)
!2656 = !DILocalVariable(name: "Anm1", scope: !2555, file: !1, line: 292, type: !42)
!2657 = !DILocation(line: 292, column: 10, scope: !2555)
!2658 = !DILocation(line: 292, column: 17, scope: !2555)
!2659 = !DILocation(line: 292, column: 24, scope: !2555)
!2660 = !DILocation(line: 292, column: 34, scope: !2555)
!2661 = !DILocation(line: 292, column: 37, scope: !2555)
!2662 = !DILocation(line: 292, column: 36, scope: !2555)
!2663 = !DILocation(line: 292, column: 32, scope: !2555)
!2664 = !DILocation(line: 292, column: 26, scope: !2555)
!2665 = !DILocation(line: 292, column: 40, scope: !2555)
!2666 = !DILocation(line: 292, column: 39, scope: !2555)
!2667 = !DILocation(line: 292, column: 22, scope: !2555)
!2668 = !DILocation(line: 292, column: 44, scope: !2555)
!2669 = !DILocation(line: 292, column: 49, scope: !2555)
!2670 = !DILocation(line: 292, column: 47, scope: !2555)
!2671 = !DILocation(line: 292, column: 55, scope: !2555)
!2672 = !DILocation(line: 292, column: 58, scope: !2555)
!2673 = !DILocation(line: 292, column: 59, scope: !2555)
!2674 = !DILocation(line: 292, column: 56, scope: !2555)
!2675 = !DILocation(line: 292, column: 52, scope: !2555)
!2676 = !DILocation(line: 292, column: 68, scope: !2555)
!2677 = !DILocation(line: 292, column: 66, scope: !2555)
!2678 = !DILocation(line: 292, column: 70, scope: !2555)
!2679 = !DILocation(line: 292, column: 69, scope: !2555)
!2680 = !DILocation(line: 292, column: 42, scope: !2555)
!2681 = !DILocation(line: 294, column: 3, scope: !2555)
!2682 = !DILocalVariable(name: "nm1", scope: !2683, file: !1, line: 295, type: !42)
!2683 = distinct !DILexicalBlock(scope: !2555, file: !1, line: 294, column: 12)
!2684 = !DILocation(line: 295, column: 12, scope: !2683)
!2685 = !DILocation(line: 295, column: 18, scope: !2683)
!2686 = !DILocation(line: 295, column: 20, scope: !2683)
!2687 = !DILocalVariable(name: "nm2", scope: !2683, file: !1, line: 296, type: !42)
!2688 = !DILocation(line: 296, column: 12, scope: !2683)
!2689 = !DILocation(line: 296, column: 18, scope: !2683)
!2690 = !DILocation(line: 296, column: 20, scope: !2683)
!2691 = !DILocalVariable(name: "npam1_npbm1", scope: !2683, file: !1, line: 297, type: !42)
!2692 = !DILocation(line: 297, column: 12, scope: !2683)
!2693 = !DILocation(line: 297, column: 26, scope: !2683)
!2694 = !DILocation(line: 297, column: 36, scope: !2683)
!2695 = !DILocation(line: 297, column: 40, scope: !2683)
!2696 = !DILocation(line: 297, column: 39, scope: !2683)
!2697 = !DILocation(line: 297, column: 34, scope: !2683)
!2698 = !DILocation(line: 297, column: 46, scope: !2683)
!2699 = !DILocation(line: 297, column: 50, scope: !2683)
!2700 = !DILocation(line: 297, column: 49, scope: !2683)
!2701 = !DILocation(line: 297, column: 44, scope: !2683)
!2702 = !DILocalVariable(name: "npam2_npbm2", scope: !2683, file: !1, line: 298, type: !42)
!2703 = !DILocation(line: 298, column: 12, scope: !2683)
!2704 = !DILocation(line: 298, column: 26, scope: !2683)
!2705 = !DILocation(line: 298, column: 36, scope: !2683)
!2706 = !DILocation(line: 298, column: 40, scope: !2683)
!2707 = !DILocation(line: 298, column: 39, scope: !2683)
!2708 = !DILocation(line: 298, column: 34, scope: !2683)
!2709 = !DILocation(line: 298, column: 46, scope: !2683)
!2710 = !DILocation(line: 298, column: 50, scope: !2683)
!2711 = !DILocation(line: 298, column: 49, scope: !2683)
!2712 = !DILocation(line: 298, column: 44, scope: !2683)
!2713 = !DILocalVariable(name: "npcm1", scope: !2683, file: !1, line: 299, type: !42)
!2714 = !DILocation(line: 299, column: 12, scope: !2683)
!2715 = !DILocation(line: 299, column: 20, scope: !2683)
!2716 = !DILocation(line: 299, column: 26, scope: !2683)
!2717 = !DILocation(line: 299, column: 24, scope: !2683)
!2718 = !DILocalVariable(name: "npcm2", scope: !2683, file: !1, line: 300, type: !42)
!2719 = !DILocation(line: 300, column: 12, scope: !2683)
!2720 = !DILocation(line: 300, column: 20, scope: !2683)
!2721 = !DILocation(line: 300, column: 26, scope: !2683)
!2722 = !DILocation(line: 300, column: 24, scope: !2683)
!2723 = !DILocalVariable(name: "tnm1", scope: !2683, file: !1, line: 301, type: !42)
!2724 = !DILocation(line: 301, column: 12, scope: !2683)
!2725 = !DILocation(line: 301, column: 22, scope: !2683)
!2726 = !DILocation(line: 301, column: 21, scope: !2683)
!2727 = !DILocation(line: 301, column: 24, scope: !2683)
!2728 = !DILocation(line: 301, column: 20, scope: !2683)
!2729 = !DILocalVariable(name: "tnm3", scope: !2683, file: !1, line: 302, type: !42)
!2730 = !DILocation(line: 302, column: 12, scope: !2683)
!2731 = !DILocation(line: 302, column: 22, scope: !2683)
!2732 = !DILocation(line: 302, column: 21, scope: !2683)
!2733 = !DILocation(line: 302, column: 24, scope: !2683)
!2734 = !DILocation(line: 302, column: 20, scope: !2683)
!2735 = !DILocalVariable(name: "tnm5", scope: !2683, file: !1, line: 303, type: !42)
!2736 = !DILocation(line: 303, column: 12, scope: !2683)
!2737 = !DILocation(line: 303, column: 22, scope: !2683)
!2738 = !DILocation(line: 303, column: 21, scope: !2683)
!2739 = !DILocation(line: 303, column: 24, scope: !2683)
!2740 = !DILocation(line: 303, column: 20, scope: !2683)
!2741 = !DILocalVariable(name: "n2", scope: !2683, file: !1, line: 304, type: !42)
!2742 = !DILocation(line: 304, column: 12, scope: !2683)
!2743 = !DILocation(line: 304, column: 17, scope: !2683)
!2744 = !DILocation(line: 304, column: 19, scope: !2683)
!2745 = !DILocation(line: 304, column: 18, scope: !2683)
!2746 = !DILocalVariable(name: "F1", scope: !2683, file: !1, line: 305, type: !42)
!2747 = !DILocation(line: 305, column: 12, scope: !2683)
!2748 = !DILocation(line: 305, column: 23, scope: !2683)
!2749 = !DILocation(line: 305, column: 22, scope: !2683)
!2750 = !DILocation(line: 305, column: 29, scope: !2683)
!2751 = !DILocation(line: 305, column: 32, scope: !2683)
!2752 = !DILocation(line: 305, column: 36, scope: !2683)
!2753 = !DILocation(line: 305, column: 35, scope: !2683)
!2754 = !DILocation(line: 305, column: 26, scope: !2683)
!2755 = !DILocation(line: 305, column: 38, scope: !2683)
!2756 = !DILocation(line: 305, column: 44, scope: !2683)
!2757 = !DILocation(line: 305, column: 42, scope: !2683)
!2758 = !DILocation(line: 305, column: 56, scope: !2683)
!2759 = !DILocation(line: 305, column: 55, scope: !2683)
!2760 = !DILocation(line: 305, column: 52, scope: !2683)
!2761 = !DILocation(line: 305, column: 66, scope: !2683)
!2762 = !DILocation(line: 305, column: 65, scope: !2683)
!2763 = !DILocation(line: 305, column: 71, scope: !2683)
!2764 = !DILocation(line: 305, column: 70, scope: !2683)
!2765 = !DILocation(line: 305, column: 61, scope: !2683)
!2766 = !DILocalVariable(name: "F2", scope: !2683, file: !1, line: 306, type: !42)
!2767 = !DILocation(line: 306, column: 12, scope: !2683)
!2768 = !DILocation(line: 306, column: 23, scope: !2683)
!2769 = !DILocation(line: 306, column: 22, scope: !2683)
!2770 = !DILocation(line: 306, column: 29, scope: !2683)
!2771 = !DILocation(line: 306, column: 32, scope: !2683)
!2772 = !DILocation(line: 306, column: 36, scope: !2683)
!2773 = !DILocation(line: 306, column: 35, scope: !2683)
!2774 = !DILocation(line: 306, column: 26, scope: !2683)
!2775 = !DILocation(line: 306, column: 38, scope: !2683)
!2776 = !DILocation(line: 306, column: 44, scope: !2683)
!2777 = !DILocation(line: 306, column: 42, scope: !2683)
!2778 = !DILocation(line: 306, column: 17, scope: !2683)
!2779 = !DILocation(line: 306, column: 53, scope: !2683)
!2780 = !DILocation(line: 306, column: 52, scope: !2683)
!2781 = !DILocation(line: 306, column: 68, scope: !2683)
!2782 = !DILocation(line: 306, column: 67, scope: !2683)
!2783 = !DILocation(line: 306, column: 73, scope: !2683)
!2784 = !DILocation(line: 306, column: 72, scope: !2683)
!2785 = !DILocation(line: 306, column: 78, scope: !2683)
!2786 = !DILocation(line: 306, column: 77, scope: !2683)
!2787 = !DILocation(line: 306, column: 84, scope: !2683)
!2788 = !DILocation(line: 306, column: 83, scope: !2683)
!2789 = !DILocation(line: 306, column: 64, scope: !2683)
!2790 = !DILocalVariable(name: "F3", scope: !2683, file: !1, line: 307, type: !42)
!2791 = !DILocation(line: 307, column: 12, scope: !2683)
!2792 = !DILocation(line: 307, column: 18, scope: !2683)
!2793 = !DILocation(line: 307, column: 30, scope: !2683)
!2794 = !DILocation(line: 307, column: 29, scope: !2683)
!2795 = !DILocation(line: 307, column: 43, scope: !2683)
!2796 = !DILocation(line: 307, column: 47, scope: !2683)
!2797 = !DILocation(line: 307, column: 46, scope: !2683)
!2798 = !DILocation(line: 307, column: 53, scope: !2683)
!2799 = !DILocation(line: 307, column: 57, scope: !2683)
!2800 = !DILocation(line: 307, column: 56, scope: !2683)
!2801 = !DILocation(line: 307, column: 51, scope: !2683)
!2802 = !DILocation(line: 307, column: 63, scope: !2683)
!2803 = !DILocation(line: 307, column: 61, scope: !2683)
!2804 = !DILocation(line: 307, column: 41, scope: !2683)
!2805 = !DILocation(line: 307, column: 78, scope: !2683)
!2806 = !DILocation(line: 307, column: 77, scope: !2683)
!2807 = !DILocation(line: 307, column: 83, scope: !2683)
!2808 = !DILocation(line: 307, column: 82, scope: !2683)
!2809 = !DILocation(line: 307, column: 88, scope: !2683)
!2810 = !DILocation(line: 307, column: 87, scope: !2683)
!2811 = !DILocation(line: 307, column: 94, scope: !2683)
!2812 = !DILocation(line: 307, column: 96, scope: !2683)
!2813 = !DILocation(line: 307, column: 95, scope: !2683)
!2814 = !DILocation(line: 307, column: 97, scope: !2683)
!2815 = !DILocation(line: 307, column: 92, scope: !2683)
!2816 = !DILocation(line: 307, column: 101, scope: !2683)
!2817 = !DILocation(line: 307, column: 100, scope: !2683)
!2818 = !DILocation(line: 307, column: 107, scope: !2683)
!2819 = !DILocation(line: 307, column: 106, scope: !2683)
!2820 = !DILocation(line: 307, column: 73, scope: !2683)
!2821 = !DILocalVariable(name: "E", scope: !2683, file: !1, line: 308, type: !42)
!2822 = !DILocation(line: 308, column: 12, scope: !2683)
!2823 = !DILocation(line: 308, column: 18, scope: !2683)
!2824 = !DILocation(line: 308, column: 17, scope: !2683)
!2825 = !DILocation(line: 308, column: 31, scope: !2683)
!2826 = !DILocation(line: 308, column: 33, scope: !2683)
!2827 = !DILocation(line: 308, column: 32, scope: !2683)
!2828 = !DILocation(line: 308, column: 34, scope: !2683)
!2829 = !DILocation(line: 308, column: 29, scope: !2683)
!2830 = !DILocation(line: 308, column: 43, scope: !2683)
!2831 = !DILocation(line: 308, column: 42, scope: !2683)
!2832 = !DILocation(line: 308, column: 48, scope: !2683)
!2833 = !DILocation(line: 308, column: 47, scope: !2683)
!2834 = !DILocation(line: 308, column: 54, scope: !2683)
!2835 = !DILocation(line: 308, column: 53, scope: !2683)
!2836 = !DILocation(line: 308, column: 38, scope: !2683)
!2837 = !DILocalVariable(name: "An", scope: !2683, file: !1, line: 310, type: !42)
!2838 = !DILocation(line: 310, column: 12, scope: !2683)
!2839 = !DILocation(line: 310, column: 22, scope: !2683)
!2840 = !DILocation(line: 310, column: 25, scope: !2683)
!2841 = !DILocation(line: 310, column: 24, scope: !2683)
!2842 = !DILocation(line: 310, column: 21, scope: !2683)
!2843 = !DILocation(line: 310, column: 28, scope: !2683)
!2844 = !DILocation(line: 310, column: 27, scope: !2683)
!2845 = !DILocation(line: 310, column: 36, scope: !2683)
!2846 = !DILocation(line: 310, column: 40, scope: !2683)
!2847 = !DILocation(line: 310, column: 43, scope: !2683)
!2848 = !DILocation(line: 310, column: 42, scope: !2683)
!2849 = !DILocation(line: 310, column: 38, scope: !2683)
!2850 = !DILocation(line: 310, column: 46, scope: !2683)
!2851 = !DILocation(line: 310, column: 45, scope: !2683)
!2852 = !DILocation(line: 310, column: 48, scope: !2683)
!2853 = !DILocation(line: 310, column: 47, scope: !2683)
!2854 = !DILocation(line: 310, column: 33, scope: !2683)
!2855 = !DILocation(line: 310, column: 55, scope: !2683)
!2856 = !DILocation(line: 310, column: 58, scope: !2683)
!2857 = !DILocation(line: 310, column: 57, scope: !2683)
!2858 = !DILocation(line: 310, column: 61, scope: !2683)
!2859 = !DILocation(line: 310, column: 60, scope: !2683)
!2860 = !DILocation(line: 310, column: 53, scope: !2683)
!2861 = !DILocalVariable(name: "Bn", scope: !2683, file: !1, line: 311, type: !42)
!2862 = !DILocation(line: 311, column: 12, scope: !2683)
!2863 = !DILocation(line: 311, column: 22, scope: !2683)
!2864 = !DILocation(line: 311, column: 25, scope: !2683)
!2865 = !DILocation(line: 311, column: 24, scope: !2683)
!2866 = !DILocation(line: 311, column: 21, scope: !2683)
!2867 = !DILocation(line: 311, column: 28, scope: !2683)
!2868 = !DILocation(line: 311, column: 27, scope: !2683)
!2869 = !DILocation(line: 311, column: 36, scope: !2683)
!2870 = !DILocation(line: 311, column: 40, scope: !2683)
!2871 = !DILocation(line: 311, column: 43, scope: !2683)
!2872 = !DILocation(line: 311, column: 42, scope: !2683)
!2873 = !DILocation(line: 311, column: 38, scope: !2683)
!2874 = !DILocation(line: 311, column: 46, scope: !2683)
!2875 = !DILocation(line: 311, column: 45, scope: !2683)
!2876 = !DILocation(line: 311, column: 48, scope: !2683)
!2877 = !DILocation(line: 311, column: 47, scope: !2683)
!2878 = !DILocation(line: 311, column: 33, scope: !2683)
!2879 = !DILocation(line: 311, column: 55, scope: !2683)
!2880 = !DILocation(line: 311, column: 58, scope: !2683)
!2881 = !DILocation(line: 311, column: 57, scope: !2683)
!2882 = !DILocation(line: 311, column: 61, scope: !2683)
!2883 = !DILocation(line: 311, column: 60, scope: !2683)
!2884 = !DILocation(line: 311, column: 53, scope: !2683)
!2885 = !DILocalVariable(name: "r", scope: !2683, file: !1, line: 312, type: !42)
!2886 = !DILocation(line: 312, column: 12, scope: !2683)
!2887 = !DILocation(line: 312, column: 16, scope: !2683)
!2888 = !DILocation(line: 312, column: 19, scope: !2683)
!2889 = !DILocation(line: 312, column: 18, scope: !2683)
!2890 = !DILocation(line: 314, column: 17, scope: !2683)
!2891 = !DILocation(line: 314, column: 21, scope: !2683)
!2892 = !DILocation(line: 314, column: 19, scope: !2683)
!2893 = !DILocation(line: 314, column: 12, scope: !2683)
!2894 = !DILocation(line: 314, column: 29, scope: !2683)
!2895 = !DILocation(line: 314, column: 24, scope: !2896)
!2896 = !DILexicalBlockFile(scope: !2683, file: !1, discriminator: 1)
!2897 = !DILocation(line: 314, column: 23, scope: !2683)
!2898 = !DILocation(line: 314, column: 10, scope: !2683)
!2899 = !DILocation(line: 315, column: 9, scope: !2683)
!2900 = !DILocation(line: 315, column: 7, scope: !2683)
!2901 = !DILocation(line: 317, column: 8, scope: !2902)
!2902 = distinct !DILexicalBlock(scope: !2683, file: !1, line: 317, column: 8)
!2903 = !DILocation(line: 317, column: 13, scope: !2902)
!2904 = !DILocation(line: 317, column: 31, scope: !2902)
!2905 = !DILocation(line: 317, column: 34, scope: !2906)
!2906 = !DILexicalBlockFile(scope: !2902, file: !1, discriminator: 1)
!2907 = !DILocation(line: 317, column: 36, scope: !2906)
!2908 = !DILocation(line: 317, column: 8, scope: !2906)
!2909 = !DILocation(line: 317, column: 44, scope: !2910)
!2910 = !DILexicalBlockFile(scope: !2902, file: !1, discriminator: 2)
!2911 = !DILocation(line: 319, column: 13, scope: !2912)
!2912 = distinct !DILexicalBlock(scope: !2683, file: !1, line: 319, column: 8)
!2913 = !DILocation(line: 319, column: 8, scope: !2912)
!2914 = !DILocation(line: 319, column: 17, scope: !2912)
!2915 = !DILocation(line: 319, column: 29, scope: !2912)
!2916 = !DILocation(line: 319, column: 37, scope: !2917)
!2917 = !DILexicalBlockFile(scope: !2912, file: !1, discriminator: 1)
!2918 = !DILocation(line: 319, column: 32, scope: !2917)
!2919 = !DILocation(line: 319, column: 41, scope: !2917)
!2920 = !DILocation(line: 319, column: 8, scope: !2917)
!2921 = !DILocation(line: 320, column: 12, scope: !2922)
!2922 = distinct !DILexicalBlock(scope: !2912, file: !1, line: 319, column: 54)
!2923 = !DILocation(line: 321, column: 12, scope: !2922)
!2924 = !DILocation(line: 322, column: 12, scope: !2922)
!2925 = !DILocation(line: 323, column: 12, scope: !2922)
!2926 = !DILocation(line: 324, column: 12, scope: !2922)
!2927 = !DILocation(line: 325, column: 12, scope: !2922)
!2928 = !DILocation(line: 326, column: 12, scope: !2922)
!2929 = !DILocation(line: 327, column: 12, scope: !2922)
!2930 = !DILocation(line: 328, column: 5, scope: !2922)
!2931 = !DILocation(line: 329, column: 18, scope: !2932)
!2932 = distinct !DILexicalBlock(scope: !2912, file: !1, line: 329, column: 13)
!2933 = !DILocation(line: 329, column: 13, scope: !2932)
!2934 = !DILocation(line: 329, column: 22, scope: !2932)
!2935 = !DILocation(line: 329, column: 38, scope: !2932)
!2936 = !DILocation(line: 329, column: 46, scope: !2937)
!2937 = !DILexicalBlockFile(scope: !2932, file: !1, discriminator: 1)
!2938 = !DILocation(line: 329, column: 41, scope: !2937)
!2939 = !DILocation(line: 329, column: 50, scope: !2937)
!2940 = !DILocation(line: 329, column: 13, scope: !2937)
!2941 = !DILocation(line: 330, column: 12, scope: !2942)
!2942 = distinct !DILexicalBlock(scope: !2932, file: !1, line: 329, column: 67)
!2943 = !DILocation(line: 331, column: 12, scope: !2942)
!2944 = !DILocation(line: 332, column: 12, scope: !2942)
!2945 = !DILocation(line: 333, column: 12, scope: !2942)
!2946 = !DILocation(line: 334, column: 12, scope: !2942)
!2947 = !DILocation(line: 335, column: 12, scope: !2942)
!2948 = !DILocation(line: 336, column: 12, scope: !2942)
!2949 = !DILocation(line: 337, column: 12, scope: !2942)
!2950 = !DILocation(line: 338, column: 5, scope: !2942)
!2951 = !DILocation(line: 340, column: 6, scope: !2683)
!2952 = !DILocation(line: 341, column: 12, scope: !2683)
!2953 = !DILocation(line: 341, column: 10, scope: !2683)
!2954 = !DILocation(line: 342, column: 12, scope: !2683)
!2955 = !DILocation(line: 342, column: 10, scope: !2683)
!2956 = !DILocation(line: 343, column: 12, scope: !2683)
!2957 = !DILocation(line: 343, column: 10, scope: !2683)
!2958 = !DILocation(line: 344, column: 12, scope: !2683)
!2959 = !DILocation(line: 344, column: 10, scope: !2683)
!2960 = !DILocation(line: 345, column: 12, scope: !2683)
!2961 = !DILocation(line: 345, column: 10, scope: !2683)
!2962 = !DILocation(line: 346, column: 12, scope: !2683)
!2963 = !DILocation(line: 346, column: 10, scope: !2683)
!2964 = !DILocation(line: 294, column: 3, scope: !2965)
!2965 = !DILexicalBlockFile(scope: !2555, file: !1, discriminator: 1)
!2966 = distinct !{!2966, !2681}
!2967 = !DILocation(line: 349, column: 18, scope: !2555)
!2968 = !DILocation(line: 349, column: 3, scope: !2555)
!2969 = !DILocation(line: 349, column: 11, scope: !2555)
!2970 = !DILocation(line: 349, column: 16, scope: !2555)
!2971 = !DILocation(line: 350, column: 29, scope: !2555)
!2972 = !DILocation(line: 350, column: 36, scope: !2555)
!2973 = !DILocation(line: 350, column: 34, scope: !2555)
!2974 = !DILocation(line: 350, column: 24, scope: !2555)
!2975 = !DILocation(line: 350, column: 22, scope: !2555)
!2976 = !DILocation(line: 350, column: 3, scope: !2555)
!2977 = !DILocation(line: 350, column: 11, scope: !2555)
!2978 = !DILocation(line: 350, column: 16, scope: !2555)
!2979 = !DILocation(line: 351, column: 43, scope: !2555)
!2980 = !DILocation(line: 351, column: 44, scope: !2555)
!2981 = !DILocation(line: 351, column: 40, scope: !2555)
!2982 = !DILocation(line: 351, column: 57, scope: !2555)
!2983 = !DILocation(line: 351, column: 52, scope: !2555)
!2984 = !DILocation(line: 351, column: 50, scope: !2555)
!2985 = !DILocation(line: 351, column: 3, scope: !2555)
!2986 = !DILocation(line: 351, column: 11, scope: !2555)
!2987 = !DILocation(line: 351, column: 15, scope: !2555)
!2988 = !DILocation(line: 354, column: 30, scope: !2555)
!2989 = !DILocation(line: 354, column: 25, scope: !2555)
!2990 = !DILocation(line: 354, column: 41, scope: !2555)
!2991 = !DILocation(line: 354, column: 36, scope: !2965)
!2992 = !DILocation(line: 354, column: 34, scope: !2555)
!2993 = !DILocation(line: 354, column: 45, scope: !2555)
!2994 = !DILocation(line: 354, column: 22, scope: !2555)
!2995 = !DILocation(line: 354, column: 3, scope: !2555)
!2996 = !DILocation(line: 354, column: 11, scope: !2555)
!2997 = !DILocation(line: 354, column: 15, scope: !2555)
!2998 = !DILocation(line: 356, column: 16, scope: !2555)
!2999 = !DILocation(line: 356, column: 18, scope: !2555)
!3000 = !DILocation(line: 356, column: 13, scope: !2555)
!3001 = !DILocation(line: 358, column: 10, scope: !2555)
!3002 = !DILocation(line: 358, column: 3, scope: !2555)
!3003 = distinct !DISubprogram(name: "gsl_sf_hyperg_2F1_renorm_e", scope: !1, file: !1, line: 823, type: !613, isLocal: false, isDefinition: true, scopeLine: 827, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !59)
!3004 = !DILocalVariable(name: "a", arg: 1, scope: !3003, file: !1, line: 823, type: !51)
!3005 = !DILocation(line: 823, column: 41, scope: !3003)
!3006 = !DILocalVariable(name: "b", arg: 2, scope: !3003, file: !1, line: 823, type: !51)
!3007 = !DILocation(line: 823, column: 57, scope: !3003)
!3008 = !DILocalVariable(name: "c", arg: 3, scope: !3003, file: !1, line: 823, type: !51)
!3009 = !DILocation(line: 823, column: 73, scope: !3003)
!3010 = !DILocalVariable(name: "x", arg: 4, scope: !3003, file: !1, line: 824, type: !51)
!3011 = !DILocation(line: 824, column: 44, scope: !3003)
!3012 = !DILocalVariable(name: "result", arg: 5, scope: !3003, file: !1, line: 825, type: !52)
!3013 = !DILocation(line: 825, column: 47, scope: !3003)
!3014 = !DILocalVariable(name: "rinta", scope: !3003, file: !1, line: 828, type: !51)
!3015 = !DILocation(line: 828, column: 16, scope: !3003)
!3016 = !DILocation(line: 828, column: 30, scope: !3003)
!3017 = !DILocation(line: 828, column: 32, scope: !3003)
!3018 = !DILocation(line: 828, column: 24, scope: !3003)
!3019 = !DILocalVariable(name: "rintb", scope: !3003, file: !1, line: 829, type: !51)
!3020 = !DILocation(line: 829, column: 16, scope: !3003)
!3021 = !DILocation(line: 829, column: 30, scope: !3003)
!3022 = !DILocation(line: 829, column: 32, scope: !3003)
!3023 = !DILocation(line: 829, column: 24, scope: !3003)
!3024 = !DILocalVariable(name: "rintc", scope: !3003, file: !1, line: 830, type: !51)
!3025 = !DILocation(line: 830, column: 16, scope: !3003)
!3026 = !DILocation(line: 830, column: 30, scope: !3003)
!3027 = !DILocation(line: 830, column: 32, scope: !3003)
!3028 = !DILocation(line: 830, column: 24, scope: !3003)
!3029 = !DILocalVariable(name: "a_neg_integer", scope: !3003, file: !1, line: 831, type: !94)
!3030 = !DILocation(line: 831, column: 13, scope: !3003)
!3031 = !DILocation(line: 831, column: 31, scope: !3003)
!3032 = !DILocation(line: 831, column: 33, scope: !3003)
!3033 = !DILocation(line: 831, column: 40, scope: !3003)
!3034 = !DILocation(line: 831, column: 49, scope: !3035)
!3035 = !DILexicalBlockFile(scope: !3003, file: !1, discriminator: 1)
!3036 = !DILocation(line: 831, column: 53, scope: !3035)
!3037 = !DILocation(line: 831, column: 51, scope: !3035)
!3038 = !DILocation(line: 831, column: 44, scope: !3035)
!3039 = !DILocation(line: 831, column: 60, scope: !3035)
!3040 = !DILocation(line: 831, column: 40, scope: !3041)
!3041 = !DILexicalBlockFile(scope: !3003, file: !1, discriminator: 2)
!3042 = !DILocation(line: 831, column: 13, scope: !3041)
!3043 = !DILocalVariable(name: "b_neg_integer", scope: !3003, file: !1, line: 832, type: !94)
!3044 = !DILocation(line: 832, column: 13, scope: !3003)
!3045 = !DILocation(line: 832, column: 31, scope: !3003)
!3046 = !DILocation(line: 832, column: 33, scope: !3003)
!3047 = !DILocation(line: 832, column: 40, scope: !3003)
!3048 = !DILocation(line: 832, column: 49, scope: !3035)
!3049 = !DILocation(line: 832, column: 53, scope: !3035)
!3050 = !DILocation(line: 832, column: 51, scope: !3035)
!3051 = !DILocation(line: 832, column: 44, scope: !3035)
!3052 = !DILocation(line: 832, column: 60, scope: !3035)
!3053 = !DILocation(line: 832, column: 40, scope: !3041)
!3054 = !DILocation(line: 832, column: 13, scope: !3041)
!3055 = !DILocalVariable(name: "c_neg_integer", scope: !3003, file: !1, line: 833, type: !94)
!3056 = !DILocation(line: 833, column: 13, scope: !3003)
!3057 = !DILocation(line: 833, column: 31, scope: !3003)
!3058 = !DILocation(line: 833, column: 33, scope: !3003)
!3059 = !DILocation(line: 833, column: 40, scope: !3003)
!3060 = !DILocation(line: 833, column: 49, scope: !3035)
!3061 = !DILocation(line: 833, column: 53, scope: !3035)
!3062 = !DILocation(line: 833, column: 51, scope: !3035)
!3063 = !DILocation(line: 833, column: 44, scope: !3035)
!3064 = !DILocation(line: 833, column: 60, scope: !3035)
!3065 = !DILocation(line: 833, column: 40, scope: !3041)
!3066 = !DILocation(line: 833, column: 13, scope: !3041)
!3067 = !DILocation(line: 835, column: 6, scope: !3068)
!3068 = distinct !DILexicalBlock(scope: !3003, file: !1, line: 835, column: 6)
!3069 = !DILocation(line: 835, column: 6, scope: !3003)
!3070 = !DILocation(line: 836, column: 9, scope: !3071)
!3071 = distinct !DILexicalBlock(scope: !3072, file: !1, line: 836, column: 8)
!3072 = distinct !DILexicalBlock(scope: !3068, file: !1, line: 835, column: 21)
!3073 = !DILocation(line: 836, column: 23, scope: !3071)
!3074 = !DILocation(line: 836, column: 26, scope: !3075)
!3075 = !DILexicalBlockFile(scope: !3071, file: !1, discriminator: 1)
!3076 = !DILocation(line: 836, column: 30, scope: !3075)
!3077 = !DILocation(line: 836, column: 31, scope: !3075)
!3078 = !DILocation(line: 836, column: 28, scope: !3075)
!3079 = !DILocation(line: 836, column: 37, scope: !3075)
!3080 = !DILocation(line: 836, column: 41, scope: !3081)
!3081 = !DILexicalBlockFile(scope: !3071, file: !1, discriminator: 2)
!3082 = !DILocation(line: 836, column: 55, scope: !3081)
!3083 = !DILocation(line: 836, column: 58, scope: !3084)
!3084 = !DILexicalBlockFile(scope: !3071, file: !1, discriminator: 3)
!3085 = !DILocation(line: 836, column: 62, scope: !3084)
!3086 = !DILocation(line: 836, column: 63, scope: !3084)
!3087 = !DILocation(line: 836, column: 60, scope: !3084)
!3088 = !DILocation(line: 836, column: 8, scope: !3084)
!3089 = !DILocation(line: 838, column: 7, scope: !3090)
!3090 = distinct !DILexicalBlock(scope: !3071, file: !1, line: 836, column: 70)
!3091 = !DILocation(line: 838, column: 15, scope: !3090)
!3092 = !DILocation(line: 838, column: 19, scope: !3090)
!3093 = !DILocation(line: 839, column: 7, scope: !3090)
!3094 = !DILocation(line: 839, column: 15, scope: !3090)
!3095 = !DILocation(line: 839, column: 19, scope: !3090)
!3096 = !DILocation(line: 840, column: 7, scope: !3090)
!3097 = !DILocalVariable(name: "g1", scope: !3098, file: !1, line: 845, type: !53)
!3098 = distinct !DILexicalBlock(scope: !3071, file: !1, line: 842, column: 10)
!3099 = !DILocation(line: 845, column: 21, scope: !3098)
!3100 = !DILocalVariable(name: "g2", scope: !3098, file: !1, line: 845, type: !53)
!3101 = !DILocation(line: 845, column: 25, scope: !3098)
!3102 = !DILocalVariable(name: "g3", scope: !3098, file: !1, line: 845, type: !53)
!3103 = !DILocation(line: 845, column: 29, scope: !3098)
!3104 = !DILocalVariable(name: "g4", scope: !3098, file: !1, line: 845, type: !53)
!3105 = !DILocation(line: 845, column: 33, scope: !3098)
!3106 = !DILocalVariable(name: "g5", scope: !3098, file: !1, line: 845, type: !53)
!3107 = !DILocation(line: 845, column: 37, scope: !3098)
!3108 = !DILocalVariable(name: "s1", scope: !3098, file: !1, line: 846, type: !42)
!3109 = !DILocation(line: 846, column: 14, scope: !3098)
!3110 = !DILocalVariable(name: "s2", scope: !3098, file: !1, line: 846, type: !42)
!3111 = !DILocation(line: 846, column: 18, scope: !3098)
!3112 = !DILocalVariable(name: "s3", scope: !3098, file: !1, line: 846, type: !42)
!3113 = !DILocation(line: 846, column: 22, scope: !3098)
!3114 = !DILocalVariable(name: "s4", scope: !3098, file: !1, line: 846, type: !42)
!3115 = !DILocation(line: 846, column: 26, scope: !3098)
!3116 = !DILocalVariable(name: "s5", scope: !3098, file: !1, line: 846, type: !42)
!3117 = !DILocation(line: 846, column: 30, scope: !3098)
!3118 = !DILocalVariable(name: "stat", scope: !3098, file: !1, line: 847, type: !50)
!3119 = !DILocation(line: 847, column: 11, scope: !3098)
!3120 = !DILocation(line: 848, column: 36, scope: !3098)
!3121 = !DILocation(line: 848, column: 38, scope: !3098)
!3122 = !DILocation(line: 848, column: 37, scope: !3098)
!3123 = !DILocation(line: 848, column: 39, scope: !3098)
!3124 = !DILocation(line: 848, column: 15, scope: !3098)
!3125 = !DILocation(line: 848, column: 12, scope: !3098)
!3126 = !DILocation(line: 849, column: 36, scope: !3098)
!3127 = !DILocation(line: 849, column: 38, scope: !3098)
!3128 = !DILocation(line: 849, column: 37, scope: !3098)
!3129 = !DILocation(line: 849, column: 39, scope: !3098)
!3130 = !DILocation(line: 849, column: 15, scope: !3098)
!3131 = !DILocation(line: 849, column: 12, scope: !3098)
!3132 = !DILocation(line: 850, column: 36, scope: !3098)
!3133 = !DILocation(line: 850, column: 15, scope: !3098)
!3134 = !DILocation(line: 850, column: 12, scope: !3098)
!3135 = !DILocation(line: 851, column: 36, scope: !3098)
!3136 = !DILocation(line: 851, column: 15, scope: !3098)
!3137 = !DILocation(line: 851, column: 12, scope: !3098)
!3138 = !DILocation(line: 852, column: 37, scope: !3098)
!3139 = !DILocation(line: 852, column: 36, scope: !3098)
!3140 = !DILocation(line: 852, column: 38, scope: !3098)
!3141 = !DILocation(line: 852, column: 15, scope: !3098)
!3142 = !DILocation(line: 852, column: 12, scope: !3098)
!3143 = !DILocation(line: 853, column: 10, scope: !3144)
!3144 = distinct !DILexicalBlock(scope: !3098, file: !1, line: 853, column: 10)
!3145 = !DILocation(line: 853, column: 15, scope: !3144)
!3146 = !DILocation(line: 853, column: 10, scope: !3098)
!3147 = !DILocation(line: 854, column: 9, scope: !3148)
!3148 = distinct !DILexicalBlock(scope: !3144, file: !1, line: 853, column: 21)
!3149 = distinct !{!3149, !3147}
!3150 = !DILocation(line: 854, column: 9, scope: !3151)
!3151 = !DILexicalBlockFile(scope: !3152, file: !1, discriminator: 1)
!3152 = distinct !DILexicalBlock(scope: !3148, file: !1, line: 854, column: 9)
!3153 = distinct !{!3153, !3154}
!3154 = !DILocation(line: 854, column: 9, scope: !3152)
!3155 = !DILocation(line: 854, column: 9, scope: !3156)
!3156 = !DILexicalBlockFile(scope: !3157, file: !1, discriminator: 2)
!3157 = distinct !DILexicalBlock(scope: !3152, file: !1, line: 854, column: 9)
!3158 = !DILocation(line: 854, column: 9, scope: !3159)
!3159 = !DILexicalBlockFile(scope: !3152, file: !1, discriminator: 3)
!3160 = !DILocation(line: 855, column: 7, scope: !3148)
!3161 = !DILocalVariable(name: "F", scope: !3162, file: !1, line: 857, type: !53)
!3162 = distinct !DILexicalBlock(scope: !3144, file: !1, line: 856, column: 12)
!3163 = !DILocation(line: 857, column: 23, scope: !3162)
!3164 = !DILocalVariable(name: "stat_F", scope: !3162, file: !1, line: 858, type: !50)
!3165 = !DILocation(line: 858, column: 13, scope: !3162)
!3166 = !DILocation(line: 858, column: 42, scope: !3162)
!3167 = !DILocation(line: 858, column: 44, scope: !3162)
!3168 = !DILocation(line: 858, column: 43, scope: !3162)
!3169 = !DILocation(line: 858, column: 45, scope: !3162)
!3170 = !DILocation(line: 858, column: 49, scope: !3162)
!3171 = !DILocation(line: 858, column: 51, scope: !3162)
!3172 = !DILocation(line: 858, column: 50, scope: !3162)
!3173 = !DILocation(line: 858, column: 52, scope: !3162)
!3174 = !DILocation(line: 858, column: 57, scope: !3162)
!3175 = !DILocation(line: 858, column: 56, scope: !3162)
!3176 = !DILocation(line: 858, column: 58, scope: !3162)
!3177 = !DILocation(line: 858, column: 62, scope: !3162)
!3178 = !DILocation(line: 858, column: 22, scope: !3162)
!3179 = !DILocalVariable(name: "ln_pre_val", scope: !3162, file: !1, line: 859, type: !42)
!3180 = !DILocation(line: 859, column: 16, scope: !3162)
!3181 = !DILocation(line: 859, column: 32, scope: !3162)
!3182 = !DILocation(line: 859, column: 41, scope: !3162)
!3183 = !DILocation(line: 859, column: 36, scope: !3162)
!3184 = !DILocation(line: 859, column: 50, scope: !3162)
!3185 = !DILocation(line: 859, column: 45, scope: !3162)
!3186 = !DILocation(line: 859, column: 59, scope: !3162)
!3187 = !DILocation(line: 859, column: 54, scope: !3162)
!3188 = !DILocation(line: 859, column: 68, scope: !3162)
!3189 = !DILocation(line: 859, column: 63, scope: !3162)
!3190 = !DILocalVariable(name: "ln_pre_err", scope: !3162, file: !1, line: 860, type: !42)
!3191 = !DILocation(line: 860, column: 16, scope: !3162)
!3192 = !DILocation(line: 860, column: 32, scope: !3162)
!3193 = !DILocation(line: 860, column: 41, scope: !3162)
!3194 = !DILocation(line: 860, column: 36, scope: !3162)
!3195 = !DILocation(line: 860, column: 50, scope: !3162)
!3196 = !DILocation(line: 860, column: 45, scope: !3162)
!3197 = !DILocation(line: 860, column: 59, scope: !3162)
!3198 = !DILocation(line: 860, column: 54, scope: !3162)
!3199 = !DILocation(line: 860, column: 68, scope: !3162)
!3200 = !DILocation(line: 860, column: 63, scope: !3162)
!3201 = !DILocalVariable(name: "sg", scope: !3162, file: !1, line: 861, type: !42)
!3202 = !DILocation(line: 861, column: 16, scope: !3162)
!3203 = !DILocation(line: 861, column: 22, scope: !3162)
!3204 = !DILocation(line: 861, column: 27, scope: !3162)
!3205 = !DILocation(line: 861, column: 25, scope: !3162)
!3206 = !DILocation(line: 861, column: 32, scope: !3162)
!3207 = !DILocation(line: 861, column: 30, scope: !3162)
!3208 = !DILocation(line: 861, column: 37, scope: !3162)
!3209 = !DILocation(line: 861, column: 35, scope: !3162)
!3210 = !DILocation(line: 861, column: 42, scope: !3162)
!3211 = !DILocation(line: 861, column: 40, scope: !3162)
!3212 = !DILocalVariable(name: "stat_e", scope: !3162, file: !1, line: 862, type: !50)
!3213 = !DILocation(line: 862, column: 13, scope: !3162)
!3214 = !DILocation(line: 862, column: 44, scope: !3162)
!3215 = !DILocation(line: 862, column: 56, scope: !3162)
!3216 = !DILocation(line: 863, column: 47, scope: !3162)
!3217 = !DILocation(line: 863, column: 54, scope: !3162)
!3218 = !DILocation(line: 863, column: 50, scope: !3162)
!3219 = !DILocation(line: 863, column: 61, scope: !3162)
!3220 = !DILocation(line: 864, column: 47, scope: !3162)
!3221 = !DILocation(line: 862, column: 22, scope: !3162)
!3222 = !DILocation(line: 865, column: 16, scope: !3162)
!3223 = !DILocation(line: 865, column: 16, scope: !3224)
!3224 = !DILexicalBlockFile(scope: !3162, file: !1, discriminator: 1)
!3225 = !DILocation(line: 865, column: 16, scope: !3226)
!3226 = !DILexicalBlockFile(scope: !3162, file: !1, discriminator: 2)
!3227 = !DILocation(line: 865, column: 16, scope: !3228)
!3228 = !DILexicalBlockFile(scope: !3162, file: !1, discriminator: 3)
!3229 = !DILocation(line: 865, column: 16, scope: !3230)
!3230 = !DILexicalBlockFile(scope: !3162, file: !1, discriminator: 4)
!3231 = !DILocation(line: 865, column: 16, scope: !3232)
!3232 = !DILexicalBlockFile(scope: !3162, file: !1, discriminator: 5)
!3233 = !DILocation(line: 865, column: 16, scope: !3234)
!3234 = !DILexicalBlockFile(scope: !3162, file: !1, discriminator: 6)
!3235 = !DILocation(line: 865, column: 9, scope: !3234)
!3236 = !DILocation(line: 868, column: 3, scope: !3072)
!3237 = !DILocalVariable(name: "F", scope: !3238, file: !1, line: 871, type: !53)
!3238 = distinct !DILexicalBlock(scope: !3068, file: !1, line: 869, column: 8)
!3239 = !DILocation(line: 871, column: 19, scope: !3238)
!3240 = !DILocalVariable(name: "lng", scope: !3238, file: !1, line: 872, type: !53)
!3241 = !DILocation(line: 872, column: 19, scope: !3238)
!3242 = !DILocalVariable(name: "sgn", scope: !3238, file: !1, line: 873, type: !42)
!3243 = !DILocation(line: 873, column: 12, scope: !3238)
!3244 = !DILocalVariable(name: "stat_g", scope: !3238, file: !1, line: 874, type: !50)
!3245 = !DILocation(line: 874, column: 9, scope: !3238)
!3246 = !DILocation(line: 874, column: 39, scope: !3238)
!3247 = !DILocation(line: 874, column: 18, scope: !3238)
!3248 = !DILocalVariable(name: "stat_F", scope: !3238, file: !1, line: 875, type: !50)
!3249 = !DILocation(line: 875, column: 9, scope: !3238)
!3250 = !DILocation(line: 875, column: 38, scope: !3238)
!3251 = !DILocation(line: 875, column: 41, scope: !3238)
!3252 = !DILocation(line: 875, column: 44, scope: !3238)
!3253 = !DILocation(line: 875, column: 47, scope: !3238)
!3254 = !DILocation(line: 875, column: 18, scope: !3238)
!3255 = !DILocalVariable(name: "stat_e", scope: !3238, file: !1, line: 876, type: !50)
!3256 = !DILocation(line: 876, column: 9, scope: !3238)
!3257 = !DILocation(line: 876, column: 45, scope: !3238)
!3258 = !DILocation(line: 876, column: 40, scope: !3238)
!3259 = !DILocation(line: 876, column: 54, scope: !3238)
!3260 = !DILocation(line: 877, column: 43, scope: !3238)
!3261 = !DILocation(line: 877, column: 49, scope: !3238)
!3262 = !DILocation(line: 877, column: 46, scope: !3238)
!3263 = !DILocation(line: 877, column: 56, scope: !3238)
!3264 = !DILocation(line: 878, column: 43, scope: !3238)
!3265 = !DILocation(line: 876, column: 18, scope: !3238)
!3266 = !DILocation(line: 879, column: 12, scope: !3238)
!3267 = !DILocation(line: 879, column: 12, scope: !3268)
!3268 = !DILexicalBlockFile(scope: !3238, file: !1, discriminator: 1)
!3269 = !DILocation(line: 879, column: 12, scope: !3270)
!3270 = !DILexicalBlockFile(scope: !3238, file: !1, discriminator: 2)
!3271 = !DILocation(line: 879, column: 12, scope: !3272)
!3272 = !DILexicalBlockFile(scope: !3238, file: !1, discriminator: 3)
!3273 = !DILocation(line: 879, column: 12, scope: !3274)
!3274 = !DILexicalBlockFile(scope: !3238, file: !1, discriminator: 4)
!3275 = !DILocation(line: 879, column: 12, scope: !3276)
!3276 = !DILexicalBlockFile(scope: !3238, file: !1, discriminator: 5)
!3277 = !DILocation(line: 879, column: 12, scope: !3278)
!3278 = !DILexicalBlockFile(scope: !3238, file: !1, discriminator: 6)
!3279 = !DILocation(line: 879, column: 12, scope: !3280)
!3280 = !DILexicalBlockFile(scope: !3238, file: !1, discriminator: 7)
!3281 = !DILocation(line: 879, column: 12, scope: !3282)
!3282 = !DILexicalBlockFile(scope: !3238, file: !1, discriminator: 8)
!3283 = !DILocation(line: 879, column: 12, scope: !3284)
!3284 = !DILexicalBlockFile(scope: !3238, file: !1, discriminator: 9)
!3285 = !DILocation(line: 879, column: 5, scope: !3284)
!3286 = !DILocation(line: 881, column: 1, scope: !3003)
!3287 = distinct !DISubprogram(name: "gsl_sf_hyperg_2F1_conj_renorm_e", scope: !1, file: !1, line: 885, type: !613, isLocal: false, isDefinition: true, scopeLine: 889, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !59)
!3288 = !DILocalVariable(name: "aR", arg: 1, scope: !3287, file: !1, line: 885, type: !51)
!3289 = !DILocation(line: 885, column: 46, scope: !3287)
!3290 = !DILocalVariable(name: "aI", arg: 2, scope: !3287, file: !1, line: 885, type: !51)
!3291 = !DILocation(line: 885, column: 63, scope: !3287)
!3292 = !DILocalVariable(name: "c", arg: 3, scope: !3287, file: !1, line: 885, type: !51)
!3293 = !DILocation(line: 885, column: 80, scope: !3287)
!3294 = !DILocalVariable(name: "x", arg: 4, scope: !3287, file: !1, line: 886, type: !51)
!3295 = !DILocation(line: 886, column: 49, scope: !3287)
!3296 = !DILocalVariable(name: "result", arg: 5, scope: !3287, file: !1, line: 887, type: !52)
!3297 = !DILocation(line: 887, column: 52, scope: !3287)
!3298 = !DILocalVariable(name: "rintc", scope: !3287, file: !1, line: 890, type: !51)
!3299 = !DILocation(line: 890, column: 16, scope: !3287)
!3300 = !DILocation(line: 890, column: 30, scope: !3287)
!3301 = !DILocation(line: 890, column: 33, scope: !3287)
!3302 = !DILocation(line: 890, column: 24, scope: !3287)
!3303 = !DILocalVariable(name: "rinta", scope: !3287, file: !1, line: 891, type: !51)
!3304 = !DILocation(line: 891, column: 16, scope: !3287)
!3305 = !DILocation(line: 891, column: 30, scope: !3287)
!3306 = !DILocation(line: 891, column: 33, scope: !3287)
!3307 = !DILocation(line: 891, column: 24, scope: !3287)
!3308 = !DILocalVariable(name: "a_neg_integer", scope: !3287, file: !1, line: 892, type: !94)
!3309 = !DILocation(line: 892, column: 13, scope: !3287)
!3310 = !DILocation(line: 892, column: 31, scope: !3287)
!3311 = !DILocation(line: 892, column: 34, scope: !3287)
!3312 = !DILocation(line: 892, column: 40, scope: !3287)
!3313 = !DILocation(line: 892, column: 48, scope: !3314)
!3314 = !DILexicalBlockFile(scope: !3287, file: !1, discriminator: 1)
!3315 = !DILocation(line: 892, column: 51, scope: !3314)
!3316 = !DILocation(line: 892, column: 50, scope: !3314)
!3317 = !DILocation(line: 892, column: 43, scope: !3314)
!3318 = !DILocation(line: 892, column: 58, scope: !3314)
!3319 = !DILocation(line: 892, column: 67, scope: !3314)
!3320 = !DILocation(line: 892, column: 70, scope: !3321)
!3321 = !DILexicalBlockFile(scope: !3287, file: !1, discriminator: 2)
!3322 = !DILocation(line: 892, column: 73, scope: !3321)
!3323 = !DILocation(line: 892, column: 67, scope: !3324)
!3324 = !DILexicalBlockFile(scope: !3287, file: !1, discriminator: 3)
!3325 = !DILocation(line: 892, column: 13, scope: !3324)
!3326 = !DILocalVariable(name: "c_neg_integer", scope: !3287, file: !1, line: 893, type: !94)
!3327 = !DILocation(line: 893, column: 13, scope: !3287)
!3328 = !DILocation(line: 893, column: 32, scope: !3287)
!3329 = !DILocation(line: 893, column: 34, scope: !3287)
!3330 = !DILocation(line: 893, column: 40, scope: !3287)
!3331 = !DILocation(line: 893, column: 48, scope: !3314)
!3332 = !DILocation(line: 893, column: 52, scope: !3314)
!3333 = !DILocation(line: 893, column: 50, scope: !3314)
!3334 = !DILocation(line: 893, column: 43, scope: !3314)
!3335 = !DILocation(line: 893, column: 59, scope: !3314)
!3336 = !DILocation(line: 893, column: 40, scope: !3321)
!3337 = !DILocation(line: 893, column: 13, scope: !3321)
!3338 = !DILocation(line: 895, column: 6, scope: !3339)
!3339 = distinct !DILexicalBlock(scope: !3287, file: !1, line: 895, column: 6)
!3340 = !DILocation(line: 895, column: 6, scope: !3287)
!3341 = !DILocation(line: 896, column: 8, scope: !3342)
!3342 = distinct !DILexicalBlock(scope: !3343, file: !1, line: 896, column: 8)
!3343 = distinct !DILexicalBlock(scope: !3339, file: !1, line: 895, column: 21)
!3344 = !DILocation(line: 896, column: 22, scope: !3342)
!3345 = !DILocation(line: 896, column: 25, scope: !3346)
!3346 = !DILexicalBlockFile(scope: !3342, file: !1, discriminator: 1)
!3347 = !DILocation(line: 896, column: 30, scope: !3346)
!3348 = !DILocation(line: 896, column: 31, scope: !3346)
!3349 = !DILocation(line: 896, column: 28, scope: !3346)
!3350 = !DILocation(line: 896, column: 8, scope: !3346)
!3351 = !DILocation(line: 898, column: 7, scope: !3352)
!3352 = distinct !DILexicalBlock(scope: !3342, file: !1, line: 896, column: 37)
!3353 = !DILocation(line: 898, column: 15, scope: !3352)
!3354 = !DILocation(line: 898, column: 19, scope: !3352)
!3355 = !DILocation(line: 899, column: 7, scope: !3352)
!3356 = !DILocation(line: 899, column: 15, scope: !3352)
!3357 = !DILocation(line: 899, column: 19, scope: !3352)
!3358 = !DILocation(line: 900, column: 7, scope: !3352)
!3359 = !DILocalVariable(name: "g1", scope: !3360, file: !1, line: 905, type: !53)
!3360 = distinct !DILexicalBlock(scope: !3342, file: !1, line: 902, column: 10)
!3361 = !DILocation(line: 905, column: 21, scope: !3360)
!3362 = !DILocalVariable(name: "g2", scope: !3360, file: !1, line: 905, type: !53)
!3363 = !DILocation(line: 905, column: 25, scope: !3360)
!3364 = !DILocalVariable(name: "g3", scope: !3360, file: !1, line: 906, type: !53)
!3365 = !DILocation(line: 906, column: 21, scope: !3360)
!3366 = !DILocalVariable(name: "a1", scope: !3360, file: !1, line: 907, type: !53)
!3367 = !DILocation(line: 907, column: 21, scope: !3360)
!3368 = !DILocalVariable(name: "a2", scope: !3360, file: !1, line: 907, type: !53)
!3369 = !DILocation(line: 907, column: 25, scope: !3360)
!3370 = !DILocalVariable(name: "stat", scope: !3360, file: !1, line: 908, type: !50)
!3371 = !DILocation(line: 908, column: 11, scope: !3360)
!3372 = !DILocation(line: 909, column: 40, scope: !3360)
!3373 = !DILocation(line: 909, column: 43, scope: !3360)
!3374 = !DILocation(line: 909, column: 42, scope: !3360)
!3375 = !DILocation(line: 909, column: 44, scope: !3360)
!3376 = !DILocation(line: 909, column: 48, scope: !3360)
!3377 = !DILocation(line: 909, column: 15, scope: !3360)
!3378 = !DILocation(line: 909, column: 12, scope: !3360)
!3379 = !DILocation(line: 910, column: 40, scope: !3360)
!3380 = !DILocation(line: 910, column: 44, scope: !3360)
!3381 = !DILocation(line: 910, column: 15, scope: !3360)
!3382 = !DILocation(line: 910, column: 12, scope: !3360)
!3383 = !DILocation(line: 911, column: 33, scope: !3360)
!3384 = !DILocation(line: 911, column: 32, scope: !3360)
!3385 = !DILocation(line: 911, column: 34, scope: !3360)
!3386 = !DILocation(line: 911, column: 15, scope: !3360)
!3387 = !DILocation(line: 911, column: 12, scope: !3360)
!3388 = !DILocation(line: 912, column: 10, scope: !3389)
!3389 = distinct !DILexicalBlock(scope: !3360, file: !1, line: 912, column: 10)
!3390 = !DILocation(line: 912, column: 15, scope: !3389)
!3391 = !DILocation(line: 912, column: 10, scope: !3360)
!3392 = !DILocation(line: 913, column: 9, scope: !3393)
!3393 = distinct !DILexicalBlock(scope: !3389, file: !1, line: 912, column: 21)
!3394 = distinct !{!3394, !3392}
!3395 = !DILocation(line: 913, column: 9, scope: !3396)
!3396 = !DILexicalBlockFile(scope: !3397, file: !1, discriminator: 1)
!3397 = distinct !DILexicalBlock(scope: !3393, file: !1, line: 913, column: 9)
!3398 = distinct !{!3398, !3399}
!3399 = !DILocation(line: 913, column: 9, scope: !3397)
!3400 = !DILocation(line: 913, column: 9, scope: !3401)
!3401 = !DILexicalBlockFile(scope: !3402, file: !1, discriminator: 2)
!3402 = distinct !DILexicalBlock(scope: !3397, file: !1, line: 913, column: 9)
!3403 = !DILocation(line: 913, column: 9, scope: !3404)
!3404 = !DILexicalBlockFile(scope: !3397, file: !1, discriminator: 3)
!3405 = !DILocation(line: 914, column: 7, scope: !3393)
!3406 = !DILocalVariable(name: "F", scope: !3407, file: !1, line: 916, type: !53)
!3407 = distinct !DILexicalBlock(scope: !3389, file: !1, line: 915, column: 12)
!3408 = !DILocation(line: 916, column: 23, scope: !3407)
!3409 = !DILocalVariable(name: "stat_F", scope: !3407, file: !1, line: 917, type: !50)
!3410 = !DILocation(line: 917, column: 13, scope: !3407)
!3411 = !DILocation(line: 917, column: 47, scope: !3407)
!3412 = !DILocation(line: 917, column: 50, scope: !3407)
!3413 = !DILocation(line: 917, column: 49, scope: !3407)
!3414 = !DILocation(line: 917, column: 51, scope: !3407)
!3415 = !DILocation(line: 917, column: 55, scope: !3407)
!3416 = !DILocation(line: 917, column: 60, scope: !3407)
!3417 = !DILocation(line: 917, column: 59, scope: !3407)
!3418 = !DILocation(line: 917, column: 61, scope: !3407)
!3419 = !DILocation(line: 917, column: 65, scope: !3407)
!3420 = !DILocation(line: 917, column: 22, scope: !3407)
!3421 = !DILocalVariable(name: "ln_pre_val", scope: !3407, file: !1, line: 918, type: !42)
!3422 = !DILocation(line: 918, column: 16, scope: !3407)
!3423 = !DILocation(line: 918, column: 37, scope: !3407)
!3424 = !DILocation(line: 918, column: 46, scope: !3407)
!3425 = !DILocation(line: 918, column: 41, scope: !3407)
!3426 = !DILocation(line: 918, column: 32, scope: !3407)
!3427 = !DILocation(line: 918, column: 56, scope: !3407)
!3428 = !DILocation(line: 918, column: 51, scope: !3407)
!3429 = !DILocalVariable(name: "ln_pre_err", scope: !3407, file: !1, line: 919, type: !42)
!3430 = !DILocation(line: 919, column: 16, scope: !3407)
!3431 = !DILocation(line: 919, column: 39, scope: !3407)
!3432 = !DILocation(line: 919, column: 48, scope: !3407)
!3433 = !DILocation(line: 919, column: 43, scope: !3407)
!3434 = !DILocation(line: 919, column: 33, scope: !3407)
!3435 = !DILocation(line: 919, column: 58, scope: !3407)
!3436 = !DILocation(line: 919, column: 53, scope: !3407)
!3437 = !DILocalVariable(name: "stat_e", scope: !3407, file: !1, line: 920, type: !50)
!3438 = !DILocation(line: 920, column: 13, scope: !3407)
!3439 = !DILocation(line: 920, column: 44, scope: !3407)
!3440 = !DILocation(line: 920, column: 56, scope: !3407)
!3441 = !DILocation(line: 921, column: 49, scope: !3407)
!3442 = !DILocation(line: 921, column: 56, scope: !3407)
!3443 = !DILocation(line: 922, column: 47, scope: !3407)
!3444 = !DILocation(line: 920, column: 22, scope: !3407)
!3445 = !DILocation(line: 923, column: 16, scope: !3407)
!3446 = !DILocation(line: 923, column: 16, scope: !3447)
!3447 = !DILexicalBlockFile(scope: !3407, file: !1, discriminator: 1)
!3448 = !DILocation(line: 923, column: 16, scope: !3449)
!3449 = !DILexicalBlockFile(scope: !3407, file: !1, discriminator: 2)
!3450 = !DILocation(line: 923, column: 16, scope: !3451)
!3451 = !DILexicalBlockFile(scope: !3407, file: !1, discriminator: 3)
!3452 = !DILocation(line: 923, column: 16, scope: !3453)
!3453 = !DILexicalBlockFile(scope: !3407, file: !1, discriminator: 4)
!3454 = !DILocation(line: 923, column: 16, scope: !3455)
!3455 = !DILexicalBlockFile(scope: !3407, file: !1, discriminator: 5)
!3456 = !DILocation(line: 923, column: 16, scope: !3457)
!3457 = !DILexicalBlockFile(scope: !3407, file: !1, discriminator: 6)
!3458 = !DILocation(line: 923, column: 9, scope: !3457)
!3459 = !DILocation(line: 926, column: 3, scope: !3343)
!3460 = !DILocalVariable(name: "F", scope: !3461, file: !1, line: 929, type: !53)
!3461 = distinct !DILexicalBlock(scope: !3339, file: !1, line: 927, column: 8)
!3462 = !DILocation(line: 929, column: 19, scope: !3461)
!3463 = !DILocalVariable(name: "lng", scope: !3461, file: !1, line: 930, type: !53)
!3464 = !DILocation(line: 930, column: 19, scope: !3461)
!3465 = !DILocalVariable(name: "sgn", scope: !3461, file: !1, line: 931, type: !42)
!3466 = !DILocation(line: 931, column: 12, scope: !3461)
!3467 = !DILocalVariable(name: "stat_g", scope: !3461, file: !1, line: 932, type: !50)
!3468 = !DILocation(line: 932, column: 9, scope: !3461)
!3469 = !DILocation(line: 932, column: 39, scope: !3461)
!3470 = !DILocation(line: 932, column: 18, scope: !3461)
!3471 = !DILocalVariable(name: "stat_F", scope: !3461, file: !1, line: 933, type: !50)
!3472 = !DILocation(line: 933, column: 9, scope: !3461)
!3473 = !DILocation(line: 933, column: 43, scope: !3461)
!3474 = !DILocation(line: 933, column: 47, scope: !3461)
!3475 = !DILocation(line: 933, column: 51, scope: !3461)
!3476 = !DILocation(line: 933, column: 54, scope: !3461)
!3477 = !DILocation(line: 933, column: 18, scope: !3461)
!3478 = !DILocalVariable(name: "stat_e", scope: !3461, file: !1, line: 934, type: !50)
!3479 = !DILocation(line: 934, column: 9, scope: !3461)
!3480 = !DILocation(line: 934, column: 45, scope: !3461)
!3481 = !DILocation(line: 934, column: 40, scope: !3461)
!3482 = !DILocation(line: 934, column: 54, scope: !3461)
!3483 = !DILocation(line: 935, column: 43, scope: !3461)
!3484 = !DILocation(line: 935, column: 49, scope: !3461)
!3485 = !DILocation(line: 935, column: 46, scope: !3461)
!3486 = !DILocation(line: 935, column: 56, scope: !3461)
!3487 = !DILocation(line: 936, column: 43, scope: !3461)
!3488 = !DILocation(line: 934, column: 18, scope: !3461)
!3489 = !DILocation(line: 937, column: 12, scope: !3461)
!3490 = !DILocation(line: 937, column: 12, scope: !3491)
!3491 = !DILexicalBlockFile(scope: !3461, file: !1, discriminator: 1)
!3492 = !DILocation(line: 937, column: 12, scope: !3493)
!3493 = !DILexicalBlockFile(scope: !3461, file: !1, discriminator: 2)
!3494 = !DILocation(line: 937, column: 12, scope: !3495)
!3495 = !DILexicalBlockFile(scope: !3461, file: !1, discriminator: 3)
!3496 = !DILocation(line: 937, column: 12, scope: !3497)
!3497 = !DILexicalBlockFile(scope: !3461, file: !1, discriminator: 4)
!3498 = !DILocation(line: 937, column: 12, scope: !3499)
!3499 = !DILexicalBlockFile(scope: !3461, file: !1, discriminator: 5)
!3500 = !DILocation(line: 937, column: 12, scope: !3501)
!3501 = !DILexicalBlockFile(scope: !3461, file: !1, discriminator: 6)
!3502 = !DILocation(line: 937, column: 12, scope: !3503)
!3503 = !DILexicalBlockFile(scope: !3461, file: !1, discriminator: 7)
!3504 = !DILocation(line: 937, column: 12, scope: !3505)
!3505 = !DILexicalBlockFile(scope: !3461, file: !1, discriminator: 8)
!3506 = !DILocation(line: 937, column: 12, scope: !3507)
!3507 = !DILexicalBlockFile(scope: !3461, file: !1, discriminator: 9)
!3508 = !DILocation(line: 937, column: 5, scope: !3507)
!3509 = !DILocation(line: 939, column: 1, scope: !3287)
!3510 = distinct !DISubprogram(name: "gsl_sf_hyperg_2F1", scope: !1, file: !1, line: 946, type: !3511, isLocal: false, isDefinition: true, scopeLine: 947, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !59)
!3511 = !DISubroutineType(types: !3512)
!3512 = !{!42, !42, !42, !42, !42}
!3513 = !DILocalVariable(name: "a", arg: 1, scope: !3510, file: !1, line: 946, type: !42)
!3514 = !DILocation(line: 946, column: 33, scope: !3510)
!3515 = !DILocalVariable(name: "b", arg: 2, scope: !3510, file: !1, line: 946, type: !42)
!3516 = !DILocation(line: 946, column: 43, scope: !3510)
!3517 = !DILocalVariable(name: "c", arg: 3, scope: !3510, file: !1, line: 946, type: !42)
!3518 = !DILocation(line: 946, column: 53, scope: !3510)
!3519 = !DILocalVariable(name: "x", arg: 4, scope: !3510, file: !1, line: 946, type: !42)
!3520 = !DILocation(line: 946, column: 63, scope: !3510)
!3521 = !DILocalVariable(name: "result", scope: !3510, file: !1, line: 948, type: !53)
!3522 = !DILocation(line: 948, column: 3, scope: !3510)
!3523 = !DILocalVariable(name: "status", scope: !3510, file: !1, line: 948, type: !50)
!3524 = !DILocation(line: 948, column: 3, scope: !3525)
!3525 = distinct !DILexicalBlock(scope: !3510, file: !1, line: 948, column: 3)
!3526 = !DILocation(line: 948, column: 3, scope: !3527)
!3527 = !DILexicalBlockFile(scope: !3528, file: !1, discriminator: 1)
!3528 = distinct !DILexicalBlock(scope: !3525, file: !1, line: 948, column: 3)
!3529 = distinct !{!3529, !3530}
!3530 = !DILocation(line: 948, column: 3, scope: !3528)
!3531 = !DILocation(line: 948, column: 3, scope: !3532)
!3532 = !DILexicalBlockFile(scope: !3533, file: !1, discriminator: 2)
!3533 = distinct !DILexicalBlock(scope: !3528, file: !1, line: 948, column: 3)
!3534 = !DILocation(line: 948, column: 3, scope: !3535)
!3535 = !DILexicalBlockFile(scope: !3528, file: !1, discriminator: 3)
!3536 = !DILocation(line: 948, column: 3, scope: !3537)
!3537 = !DILexicalBlockFile(scope: !3510, file: !1, discriminator: 4)
!3538 = !DILocation(line: 949, column: 1, scope: !3510)
!3539 = distinct !DISubprogram(name: "gsl_sf_hyperg_2F1_conj", scope: !1, file: !1, line: 951, type: !3511, isLocal: false, isDefinition: true, scopeLine: 952, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !59)
!3540 = !DILocalVariable(name: "aR", arg: 1, scope: !3539, file: !1, line: 951, type: !42)
!3541 = !DILocation(line: 951, column: 38, scope: !3539)
!3542 = !DILocalVariable(name: "aI", arg: 2, scope: !3539, file: !1, line: 951, type: !42)
!3543 = !DILocation(line: 951, column: 49, scope: !3539)
!3544 = !DILocalVariable(name: "c", arg: 3, scope: !3539, file: !1, line: 951, type: !42)
!3545 = !DILocation(line: 951, column: 60, scope: !3539)
!3546 = !DILocalVariable(name: "x", arg: 4, scope: !3539, file: !1, line: 951, type: !42)
!3547 = !DILocation(line: 951, column: 70, scope: !3539)
!3548 = !DILocalVariable(name: "result", scope: !3539, file: !1, line: 953, type: !53)
!3549 = !DILocation(line: 953, column: 3, scope: !3539)
!3550 = !DILocalVariable(name: "status", scope: !3539, file: !1, line: 953, type: !50)
!3551 = !DILocation(line: 953, column: 3, scope: !3552)
!3552 = distinct !DILexicalBlock(scope: !3539, file: !1, line: 953, column: 3)
!3553 = !DILocation(line: 953, column: 3, scope: !3554)
!3554 = !DILexicalBlockFile(scope: !3555, file: !1, discriminator: 1)
!3555 = distinct !DILexicalBlock(scope: !3552, file: !1, line: 953, column: 3)
!3556 = distinct !{!3556, !3557}
!3557 = !DILocation(line: 953, column: 3, scope: !3555)
!3558 = !DILocation(line: 953, column: 3, scope: !3559)
!3559 = !DILexicalBlockFile(scope: !3560, file: !1, discriminator: 2)
!3560 = distinct !DILexicalBlock(scope: !3555, file: !1, line: 953, column: 3)
!3561 = !DILocation(line: 953, column: 3, scope: !3562)
!3562 = !DILexicalBlockFile(scope: !3555, file: !1, discriminator: 3)
!3563 = !DILocation(line: 953, column: 3, scope: !3564)
!3564 = !DILexicalBlockFile(scope: !3539, file: !1, discriminator: 4)
!3565 = !DILocation(line: 954, column: 1, scope: !3539)
!3566 = distinct !DISubprogram(name: "gsl_sf_hyperg_2F1_renorm", scope: !1, file: !1, line: 956, type: !3511, isLocal: false, isDefinition: true, scopeLine: 957, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !59)
!3567 = !DILocalVariable(name: "a", arg: 1, scope: !3566, file: !1, line: 956, type: !42)
!3568 = !DILocation(line: 956, column: 40, scope: !3566)
!3569 = !DILocalVariable(name: "b", arg: 2, scope: !3566, file: !1, line: 956, type: !42)
!3570 = !DILocation(line: 956, column: 50, scope: !3566)
!3571 = !DILocalVariable(name: "c", arg: 3, scope: !3566, file: !1, line: 956, type: !42)
!3572 = !DILocation(line: 956, column: 60, scope: !3566)
!3573 = !DILocalVariable(name: "x", arg: 4, scope: !3566, file: !1, line: 956, type: !42)
!3574 = !DILocation(line: 956, column: 70, scope: !3566)
!3575 = !DILocalVariable(name: "result", scope: !3566, file: !1, line: 958, type: !53)
!3576 = !DILocation(line: 958, column: 3, scope: !3566)
!3577 = !DILocalVariable(name: "status", scope: !3566, file: !1, line: 958, type: !50)
!3578 = !DILocation(line: 958, column: 3, scope: !3579)
!3579 = distinct !DILexicalBlock(scope: !3566, file: !1, line: 958, column: 3)
!3580 = !DILocation(line: 958, column: 3, scope: !3581)
!3581 = !DILexicalBlockFile(scope: !3582, file: !1, discriminator: 1)
!3582 = distinct !DILexicalBlock(scope: !3579, file: !1, line: 958, column: 3)
!3583 = distinct !{!3583, !3584}
!3584 = !DILocation(line: 958, column: 3, scope: !3582)
!3585 = !DILocation(line: 958, column: 3, scope: !3586)
!3586 = !DILexicalBlockFile(scope: !3587, file: !1, discriminator: 2)
!3587 = distinct !DILexicalBlock(scope: !3582, file: !1, line: 958, column: 3)
!3588 = !DILocation(line: 958, column: 3, scope: !3589)
!3589 = !DILexicalBlockFile(scope: !3582, file: !1, discriminator: 3)
!3590 = !DILocation(line: 958, column: 3, scope: !3591)
!3591 = !DILexicalBlockFile(scope: !3566, file: !1, discriminator: 4)
!3592 = !DILocation(line: 959, column: 1, scope: !3566)
!3593 = distinct !DISubprogram(name: "gsl_sf_hyperg_2F1_conj_renorm", scope: !1, file: !1, line: 961, type: !3511, isLocal: false, isDefinition: true, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !59)
!3594 = !DILocalVariable(name: "aR", arg: 1, scope: !3593, file: !1, line: 961, type: !42)
!3595 = !DILocation(line: 961, column: 45, scope: !3593)
!3596 = !DILocalVariable(name: "aI", arg: 2, scope: !3593, file: !1, line: 961, type: !42)
!3597 = !DILocation(line: 961, column: 56, scope: !3593)
!3598 = !DILocalVariable(name: "c", arg: 3, scope: !3593, file: !1, line: 961, type: !42)
!3599 = !DILocation(line: 961, column: 67, scope: !3593)
!3600 = !DILocalVariable(name: "x", arg: 4, scope: !3593, file: !1, line: 961, type: !42)
!3601 = !DILocation(line: 961, column: 77, scope: !3593)
!3602 = !DILocalVariable(name: "result", scope: !3593, file: !1, line: 963, type: !53)
!3603 = !DILocation(line: 963, column: 3, scope: !3593)
!3604 = !DILocalVariable(name: "status", scope: !3593, file: !1, line: 963, type: !50)
!3605 = !DILocation(line: 963, column: 3, scope: !3606)
!3606 = distinct !DILexicalBlock(scope: !3593, file: !1, line: 963, column: 3)
!3607 = !DILocation(line: 963, column: 3, scope: !3608)
!3608 = !DILexicalBlockFile(scope: !3609, file: !1, discriminator: 1)
!3609 = distinct !DILexicalBlock(scope: !3606, file: !1, line: 963, column: 3)
!3610 = distinct !{!3610, !3611}
!3611 = !DILocation(line: 963, column: 3, scope: !3609)
!3612 = !DILocation(line: 963, column: 3, scope: !3613)
!3613 = !DILexicalBlockFile(scope: !3614, file: !1, discriminator: 2)
!3614 = distinct !DILexicalBlock(scope: !3609, file: !1, line: 963, column: 3)
!3615 = !DILocation(line: 963, column: 3, scope: !3616)
!3616 = !DILexicalBlockFile(scope: !3609, file: !1, discriminator: 3)
!3617 = !DILocation(line: 963, column: 3, scope: !3618)
!3618 = !DILexicalBlockFile(scope: !3593, file: !1, discriminator: 4)
!3619 = !DILocation(line: 964, column: 1, scope: !3593)
