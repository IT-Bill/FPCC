; ModuleID = 'shint.ll'
source_filename = "shint.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.cheb_series_struct = type { double*, i32, double, double, i32 }
%struct.gsl_sf_result_struct = type { double, double }

@shi_cs = internal global %struct.cheb_series_struct { double* getelementptr inbounds ([7 x double], [7 x double]* @shi_data, i32 0, i32 0), i32 6, double -1.000000e+00, double 1.000000e+00, i32 6 }, align 8
@.str = private unnamed_addr constant [10 x i8] c"underflow\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"shint.c\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"overflow\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"domain error\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"gsl_sf_Shi_e(x, &result)\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"gsl_sf_Chi_e(x, &result)\00", align 1
@shi_data = internal global [7 x double] [double 0x3F800CFC618BFBF7, double 0x3F7011519CC91B58, double 0x3ED15793D9F174BE, double 0x3E25393B7E14F475, double 0x3D70800F2892FC16, double 2.451817e-16, double 4.670000e-20], align 16
@0 = private unnamed_addr constant [13 x i8] c"gsl_sf_Shi_e\00"
@1 = private unnamed_addr constant [9 x i8] c"shint.ll\00"
@2 = private unnamed_addr constant [12 x i8] c"cheb_eval_e\00"
@3 = private unnamed_addr constant [9 x i8] c"shint.ll\00"
@4 = private unnamed_addr constant [13 x i8] c"gsl_sf_Chi_e\00"
@5 = private unnamed_addr constant [9 x i8] c"shint.ll\00"
@6 = private unnamed_addr constant [11 x i8] c"gsl_sf_Shi\00"
@7 = private unnamed_addr constant [9 x i8] c"shint.ll\00"
@8 = private unnamed_addr constant [11 x i8] c"gsl_sf_Chi\00"
@9 = private unnamed_addr constant [9 x i8] c"shint.ll\00"

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_Shi_e(double, %struct.gsl_sf_result_struct*) #0 !dbg !63 {
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca %struct.gsl_sf_result_struct*, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca %struct.gsl_sf_result_struct, align 8
  %9 = alloca %struct.gsl_sf_result_struct, align 8
  %10 = alloca %struct.gsl_sf_result_struct, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !75, metadata !76), !dbg !77
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %5, metadata !78, metadata !76), !dbg !79
  call void @llvm.dbg.declare(metadata double* %6, metadata !80, metadata !76), !dbg !81
  store double 0x3E50000000000000, double* %6, align 8, !dbg !81
  call void @llvm.dbg.declare(metadata double* %7, metadata !82, metadata !76), !dbg !83
  %13 = load double, double* %4, align 8, !dbg !84
  %14 = call double @fabs(double %13) #1, !dbg !85
  store double %14, double* %7, align 8, !dbg !83
  %15 = load double, double* %7, align 8, !dbg !86
  %16 = fcmp olt double %15, 0x3E50000000000000, !dbg !88
  %17 = call i1 @fCmpInstHandler(double %15, double 0x3E50000000000000, i1 %16, i32 4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @1, i32 0, i32 0), i64 94649107209968, i32 66, i32 9), !dbg !89
  br i1 %17, label %18, label %24, !dbg !89

; <label>:18:                                     ; preds = %2
  %19 = load double, double* %4, align 8, !dbg !90
  %20 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !92
  %21 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %20, i32 0, i32 0, !dbg !93
  store double %19, double* %21, align 8, !dbg !94
  %22 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !95
  %23 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %22, i32 0, i32 1, !dbg !96
  store double 0.000000e+00, double* %23, align 8, !dbg !97
  store i32 0, i32* %3, align 4, !dbg !98
  br label %117, !dbg !98

; <label>:24:                                     ; preds = %2
  %25 = load double, double* %7, align 8, !dbg !99
  %26 = fcmp ole double %25, 3.750000e-01, !dbg !101
  %27 = call i1 @fCmpInstHandler(double %25, double 3.750000e-01, i1 %26, i32 5, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @1, i32 0, i32 0), i64 94649107216464, i32 71, i32 14), !dbg !102
  br i1 %27, label %28, label %58, !dbg !102

; <label>:28:                                     ; preds = %24
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %8, metadata !103, metadata !76), !dbg !105
  %29 = load double, double* %4, align 8, !dbg !106
  %30 = fmul double 1.280000e+02, %29, !dbg !107
  call void @fMulHandler(double 1.280000e+02, double %29, double %30, i64 0, i64 94649107218648, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @1, i32 0, i32 0), i64 94649107219120, i32 73, i32 31), !dbg !108
  %31 = load double, double* %4, align 8, !dbg !108
  %32 = fmul double %30, %31, !dbg !109
  call void @fMulHandler(double %30, double %31, double %32, i64 94649107219120, i64 94649107219480, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @1, i32 0, i32 0), i64 94649107219888, i32 73, i32 33), !dbg !110
  %33 = fdiv double %32, 9.000000e+00, !dbg !110
  call void @fDivHandler(double %32, double 9.000000e+00, double %33, i64 94649107219888, i64 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @1, i32 0, i32 0), i64 94649107220400, i32 73, i32 35), !dbg !111
  %34 = fsub double %33, 1.000000e+00, !dbg !111
  call void @fSubHandler(double %33, double 1.000000e+00, double %34, i64 94649107220400, i64 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @1, i32 0, i32 0), i64 94649107220816, i32 73, i32 39), !dbg !112
  %35 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @shi_cs, double %34, %struct.gsl_sf_result_struct* %8), !dbg !112
  %36 = load double, double* %4, align 8, !dbg !113
  %37 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 0, !dbg !114
  %38 = load double, double* %37, align 8, !dbg !114
  %39 = fadd double 1.000000e+00, %38, !dbg !115
  call void @fAddHandler(double 1.000000e+00, double %38, double %39, i64 0, i64 94649107223368, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @1, i32 0, i32 0), i64 94649107225072, i32 74, i32 29), !dbg !116
  %40 = fmul double %36, %39, !dbg !116
  call void @fMulHandler(double %36, double %39, double %40, i64 94649107222568, i64 94649107225072, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @1, i32 0, i32 0), i64 94649107225456, i32 74, i32 22), !dbg !117
  %41 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !117
  %42 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %41, i32 0, i32 0, !dbg !118
  store double %40, double* %42, align 8, !dbg !119
  %43 = load double, double* %4, align 8, !dbg !120
  %44 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 1, !dbg !121
  %45 = load double, double* %44, align 8, !dbg !121
  %46 = fmul double %43, %45, !dbg !122
  call void @fMulHandler(double %43, double %45, double %46, i64 94649107227096, i64 94649107227928, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @1, i32 0, i32 0), i64 94649107229600, i32 75, i32 22), !dbg !123
  %47 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !123
  %48 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %47, i32 0, i32 1, !dbg !124
  store double %46, double* %48, align 8, !dbg !125
  %49 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !126
  %50 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %49, i32 0, i32 0, !dbg !127
  %51 = load double, double* %50, align 8, !dbg !127
  %52 = call double @fabs(double %51) #1, !dbg !128
  %53 = fmul double 0x3CC0000000000000, %52, !dbg !129
  call void @fMulHandler(double 0x3CC0000000000000, double %52, double %53, i64 0, i64 94649107233808, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @1, i32 0, i32 0), i64 94649107234352, i32 76, i32 42), !dbg !130
  %54 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !130
  %55 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %54, i32 0, i32 1, !dbg !131
  %56 = load double, double* %55, align 8, !dbg !132
  %57 = fadd double %56, %53, !dbg !132
  call void @fAddHandler(double %56, double %53, double %57, i64 94649107235576, i64 94649107234352, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @1, i32 0, i32 0), i64 94649107235984, i32 76, i32 17), !dbg !132
  store double %57, double* %55, align 8, !dbg !132
  store i32 0, i32* %3, align 4, !dbg !133
  br label %117, !dbg !133

; <label>:58:                                     ; preds = %24
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %9, metadata !134, metadata !76), !dbg !136
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %10, metadata !137, metadata !76), !dbg !138
  call void @llvm.dbg.declare(metadata i32* %11, metadata !139, metadata !76), !dbg !140
  %59 = load double, double* %4, align 8, !dbg !141
  %60 = call i32 @gsl_sf_expint_Ei_e(double %59, %struct.gsl_sf_result_struct* %9), !dbg !142
  store i32 %60, i32* %11, align 4, !dbg !140
  call void @llvm.dbg.declare(metadata i32* %12, metadata !143, metadata !76), !dbg !144
  %61 = load double, double* %4, align 8, !dbg !145
  %62 = call i32 @gsl_sf_expint_E1_e(double %61, %struct.gsl_sf_result_struct* %10), !dbg !146
  store i32 %62, i32* %12, align 4, !dbg !144
  %63 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %9, i32 0, i32 0, !dbg !147
  %64 = load double, double* %63, align 8, !dbg !147
  %65 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !148
  %66 = load double, double* %65, align 8, !dbg !148
  %67 = fadd double %64, %66, !dbg !149
  call void @fAddHandler(double %64, double %66, double %67, i64 94649107251016, i64 94649107253112, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @1, i32 0, i32 0), i64 94649107255824, i32 84, i32 39), !dbg !150
  %68 = fmul double 5.000000e-01, %67, !dbg !150
  call void @fMulHandler(double 5.000000e-01, double %67, double %68, i64 0, i64 94649107255824, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @1, i32 0, i32 0), i64 94649107256336, i32 84, i32 23), !dbg !151
  %69 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !151
  %70 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %69, i32 0, i32 0, !dbg !152
  store double %68, double* %70, align 8, !dbg !153
  %71 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %9, i32 0, i32 1, !dbg !154
  %72 = load double, double* %71, align 8, !dbg !154
  %73 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 1, !dbg !155
  %74 = load double, double* %73, align 8, !dbg !155
  %75 = fadd double %72, %74, !dbg !156
  call void @fAddHandler(double %72, double %74, double %75, i64 94649107258392, i64 94649107260488, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @1, i32 0, i32 0), i64 94649107262160, i32 85, i32 39), !dbg !157
  %76 = fmul double 5.000000e-01, %75, !dbg !157
  call void @fMulHandler(double 5.000000e-01, double %75, double %76, i64 0, i64 94649107262160, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @1, i32 0, i32 0), i64 94649107262608, i32 85, i32 23), !dbg !158
  %77 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !158
  %78 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %77, i32 0, i32 1, !dbg !159
  store double %76, double* %78, align 8, !dbg !160
  %79 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !161
  %80 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %79, i32 0, i32 0, !dbg !162
  %81 = load double, double* %80, align 8, !dbg !162
  %82 = call double @fabs(double %81) #1, !dbg !163
  %83 = fmul double 0x3CC0000000000000, %82, !dbg !164
  call void @fMulHandler(double 0x3CC0000000000000, double %82, double %83, i64 0, i64 94649107266784, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @1, i32 0, i32 0), i64 94649107267264, i32 86, i32 42), !dbg !165
  %84 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !165
  %85 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %84, i32 0, i32 1, !dbg !166
  %86 = load double, double* %85, align 8, !dbg !167
  %87 = fadd double %86, %83, !dbg !167
  call void @fAddHandler(double %86, double %83, double %87, i64 94649107268488, i64 94649107267264, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @1, i32 0, i32 0), i64 94649107268896, i32 86, i32 17), !dbg !167
  store double %87, double* %85, align 8, !dbg !167
  %88 = load i32, i32* %11, align 4, !dbg !168
  %89 = icmp eq i32 %88, 15, !dbg !170
  %90 = sext i32 %88 to i64, !dbg !171
  %91 = call i1 @iCmpInstHandler(i64 %90, i64 15, i1 %89, i32 32, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @1, i32 0, i32 0), i64 94649107271152, i32 87, i32 18), !dbg !171
  br i1 %91, label %92, label %100, !dbg !171

; <label>:92:                                     ; preds = %58
  %93 = load i32, i32* %12, align 4, !dbg !172
  %94 = icmp eq i32 %93, 15, !dbg !174
  %95 = sext i32 %93 to i64, !dbg !175
  %96 = call i1 @iCmpInstHandler(i64 %95, i64 15, i1 %94, i32 32, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @1, i32 0, i32 0), i64 94649107272608, i32 87, i32 47), !dbg !175
  br i1 %96, label %97, label %100, !dbg !175

; <label>:97:                                     ; preds = %92
  br label %98, !dbg !176, !llvm.loop !178

; <label>:98:                                     ; preds = %97
  call void @gsl_error(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i32 88, i32 15), !dbg !179
  store i32 15, i32* %3, align 4, !dbg !179
  br label %117, !dbg !179
                                                  ; No predecessors!
  br label %115, !dbg !182

; <label>:100:                                    ; preds = %92, %58
  %101 = load i32, i32* %11, align 4, !dbg !183
  %102 = icmp eq i32 %101, 16, !dbg !185
  %103 = sext i32 %101 to i64, !dbg !186
  %104 = call i1 @iCmpInstHandler(i64 %103, i64 16, i1 %102, i32 32, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @1, i32 0, i32 0), i64 94649107282384, i32 90, i32 23), !dbg !186
  br i1 %104, label %110, label %105, !dbg !186

; <label>:105:                                    ; preds = %100
  %106 = load i32, i32* %12, align 4, !dbg !187
  %107 = icmp eq i32 %106, 16, !dbg !189
  %108 = sext i32 %106 to i64, !dbg !190
  %109 = call i1 @iCmpInstHandler(i64 %108, i64 16, i1 %107, i32 32, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @1, i32 0, i32 0), i64 94649107283840, i32 90, i32 51), !dbg !190
  br i1 %109, label %110, label %113, !dbg !190

; <label>:110:                                    ; preds = %105, %100
  br label %111, !dbg !191, !llvm.loop !193

; <label>:111:                                    ; preds = %110
  call void @gsl_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i32 91, i32 16), !dbg !194
  store i32 16, i32* %3, align 4, !dbg !194
  br label %117, !dbg !194
                                                  ; No predecessors!
  br label %114, !dbg !197

; <label>:113:                                    ; preds = %105
  store i32 0, i32* %3, align 4, !dbg !198
  br label %117, !dbg !198

; <label>:114:                                    ; preds = %112
  br label %115

; <label>:115:                                    ; preds = %114, %99
  br label %116

; <label>:116:                                    ; preds = %115
  br label %117

; <label>:117:                                    ; preds = %116, %113, %111, %98, %28, %18
  %118 = load i32, i32* %3, align 4, !dbg !200
  ret i32 %118, !dbg !200
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readnone
declare double @fabs(double) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @cheb_eval_e(%struct.cheb_series_struct*, double, %struct.gsl_sf_result_struct*) #3 !dbg !201 {
  %4 = alloca %struct.cheb_series_struct*, align 8
  %5 = alloca double, align 8
  %6 = alloca %struct.gsl_sf_result_struct*, align 8
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  store %struct.cheb_series_struct* %0, %struct.cheb_series_struct** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.cheb_series_struct** %4, metadata !207, metadata !76), !dbg !208
  store double %1, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !209, metadata !76), !dbg !210
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %6, metadata !211, metadata !76), !dbg !212
  call void @llvm.dbg.declare(metadata i32* %7, metadata !213, metadata !76), !dbg !214
  call void @llvm.dbg.declare(metadata double* %8, metadata !215, metadata !76), !dbg !216
  store double 0.000000e+00, double* %8, align 8, !dbg !216
  call void @llvm.dbg.declare(metadata double* %9, metadata !217, metadata !76), !dbg !218
  store double 0.000000e+00, double* %9, align 8, !dbg !218
  call void @llvm.dbg.declare(metadata double* %10, metadata !219, metadata !76), !dbg !220
  %15 = load double, double* %5, align 8, !dbg !221
  %16 = fmul double 2.000000e+00, %15, !dbg !222
  call void @fMulHandler(double 2.000000e+00, double %15, double %16, i64 0, i64 94649107221944, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 94649107307216, i32 11, i32 19), !dbg !223
  %17 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !223
  %18 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %17, i32 0, i32 2, !dbg !224
  %19 = load double, double* %18, align 8, !dbg !224
  %20 = fsub double %16, %19, !dbg !225
  call void @fSubHandler(double %16, double %19, double %20, i64 94649107307216, i64 94649107079528, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 94649107309952, i32 11, i32 22), !dbg !226
  %21 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !226
  %22 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %21, i32 0, i32 3, !dbg !227
  %23 = load double, double* %22, align 8, !dbg !227
  %24 = fsub double %20, %23, !dbg !228
  call void @fSubHandler(double %20, double %23, double %24, i64 94649107309952, i64 94649107311240, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 94649107312912, i32 11, i32 30), !dbg !229
  %25 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !229
  %26 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %25, i32 0, i32 3, !dbg !230
  %27 = load double, double* %26, align 8, !dbg !230
  %28 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !231
  %29 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %28, i32 0, i32 2, !dbg !232
  %30 = load double, double* %29, align 8, !dbg !232
  %31 = fsub double %27, %30, !dbg !233
  call void @fSubHandler(double %27, double %30, double %31, i64 94649107314136, i64 94649107316616, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 94649107318288, i32 11, i32 48), !dbg !234
  %32 = fdiv double %24, %31, !dbg !234
  call void @fDivHandler(double %24, double %31, double %32, i64 94649107312912, i64 94649107318288, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 94649107318704, i32 11, i32 39), !dbg !220
  store double %32, double* %10, align 8, !dbg !220
  call void @llvm.dbg.declare(metadata double* %11, metadata !235, metadata !76), !dbg !236
  %33 = load double, double* %10, align 8, !dbg !237
  %34 = fmul double 2.000000e+00, %33, !dbg !238
  call void @fMulHandler(double 2.000000e+00, double %33, double %34, i64 0, i64 94649107321752, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 94649107322160, i32 12, i32 19), !dbg !236
  store double %34, double* %11, align 8, !dbg !236
  call void @llvm.dbg.declare(metadata double* %12, metadata !239, metadata !76), !dbg !240
  store double 0.000000e+00, double* %12, align 8, !dbg !240
  %35 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !241
  %36 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %35, i32 0, i32 1, !dbg !243
  %37 = load i32, i32* %36, align 8, !dbg !243
  store i32 %37, i32* %7, align 4, !dbg !244
  br label %38, !dbg !245

; <label>:38:                                     ; preds = %77, %3
  %39 = load i32, i32* %7, align 4, !dbg !246
  %40 = icmp sge i32 %39, 1, !dbg !249
  %41 = sext i32 %39 to i64, !dbg !250
  %42 = call i1 @iCmpInstHandler(i64 %41, i64 1, i1 %40, i32 39, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 94649107330736, i32 16, i32 23), !dbg !250
  br i1 %42, label %43, label %80, !dbg !250

; <label>:43:                                     ; preds = %38
  call void @llvm.dbg.declare(metadata double* %13, metadata !251, metadata !76), !dbg !253
  %44 = load double, double* %8, align 8, !dbg !254
  store double %44, double* %13, align 8, !dbg !253
  %45 = load double, double* %11, align 8, !dbg !255
  %46 = load double, double* %8, align 8, !dbg !256
  %47 = fmul double %45, %46, !dbg !257
  call void @fMulHandler(double %45, double %46, double %47, i64 94649107334936, i64 94649107335320, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 94649107335728, i32 18, i32 11), !dbg !258
  %48 = load double, double* %9, align 8, !dbg !258
  %49 = fsub double %47, %48, !dbg !259
  call void @fSubHandler(double %47, double %48, double %49, i64 94649107335728, i64 94649107336120, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 94649107336528, i32 18, i32 14), !dbg !260
  %50 = load i32, i32* %7, align 4, !dbg !260
  %51 = sext i32 %50 to i64, !dbg !261
  %52 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !261
  %53 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %52, i32 0, i32 0, !dbg !262
  %54 = load double*, double** %53, align 8, !dbg !262
  %55 = getelementptr inbounds double, double* %54, i64 %51, !dbg !261
  %56 = load double, double* %55, align 8, !dbg !261
  %57 = fadd double %49, %56, !dbg !263
  call void @fAddHandler(double %49, double %56, double %57, i64 94649107336528, i64 94649107341576, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 94649107341696, i32 18, i32 19), !dbg !264
  store double %57, double* %8, align 8, !dbg !264
  %58 = load double, double* %11, align 8, !dbg !265
  %59 = load double, double* %13, align 8, !dbg !266
  %60 = fmul double %58, %59, !dbg !267
  call void @fMulHandler(double %58, double %59, double %60, i64 94649107342504, i64 94649107342888, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 94649107343296, i32 19, i32 17), !dbg !268
  %61 = call double @fabs(double %60) #1, !dbg !268
  %62 = load double, double* %9, align 8, !dbg !269
  %63 = call double @fabs(double %62) #1, !dbg !270
  %64 = fadd double %61, %63, !dbg !272
  call void @fAddHandler(double %61, double %63, double %64, i64 94649107343776, i64 94649107344704, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 94649107345184, i32 19, i32 24), !dbg !273
  %65 = load i32, i32* %7, align 4, !dbg !273
  %66 = sext i32 %65 to i64, !dbg !274
  %67 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !274
  %68 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %67, i32 0, i32 0, !dbg !275
  %69 = load double*, double** %68, align 8, !dbg !275
  %70 = getelementptr inbounds double, double* %69, i64 %66, !dbg !274
  %71 = load double, double* %70, align 8, !dbg !274
  %72 = call double @fabs(double %71) #1, !dbg !276
  %73 = fadd double %64, %72, !dbg !278
  call void @fAddHandler(double %64, double %72, double %73, i64 94649107345184, i64 94649107350416, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 94649107350896, i32 19, i32 35), !dbg !279
  %74 = load double, double* %12, align 8, !dbg !279
  %75 = fadd double %74, %73, !dbg !279
  call void @fAddHandler(double %74, double %73, double %75, i64 94649107351288, i64 94649107350896, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 94649107351696, i32 19, i32 7), !dbg !279
  store double %75, double* %12, align 8, !dbg !279
  %76 = load double, double* %13, align 8, !dbg !280
  store double %76, double* %9, align 8, !dbg !281
  br label %77, !dbg !282

; <label>:77:                                     ; preds = %43
  %78 = load i32, i32* %7, align 4, !dbg !283
  %79 = add nsw i32 %78, -1, !dbg !283
  store i32 %79, i32* %7, align 4, !dbg !283
  br label %38, !dbg !285, !llvm.loop !286

; <label>:80:                                     ; preds = %38
  call void @llvm.dbg.declare(metadata double* %14, metadata !288, metadata !76), !dbg !290
  %81 = load double, double* %8, align 8, !dbg !291
  store double %81, double* %14, align 8, !dbg !290
  %82 = load double, double* %10, align 8, !dbg !292
  %83 = load double, double* %8, align 8, !dbg !293
  %84 = fmul double %82, %83, !dbg !294
  call void @fMulHandler(double %82, double %83, double %84, i64 94649107360760, i64 94649107361144, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 94649107361552, i32 25, i32 10), !dbg !295
  %85 = load double, double* %9, align 8, !dbg !295
  %86 = fsub double %84, %85, !dbg !296
  call void @fSubHandler(double %84, double %85, double %86, i64 94649107361552, i64 94649107361944, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 94649107362352, i32 25, i32 13), !dbg !297
  %87 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !297
  %88 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %87, i32 0, i32 0, !dbg !298
  %89 = load double*, double** %88, align 8, !dbg !298
  %90 = getelementptr inbounds double, double* %89, i64 0, !dbg !297
  %91 = load double, double* %90, align 8, !dbg !297
  %92 = fmul double 5.000000e-01, %91, !dbg !299
  call void @fMulHandler(double 5.000000e-01, double %91, double %92, i64 0, i64 94649107366984, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 94649107367136, i32 25, i32 24), !dbg !300
  %93 = fadd double %86, %92, !dbg !300
  call void @fAddHandler(double %86, double %92, double %93, i64 94649107362352, i64 94649107367136, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 94649107367520, i32 25, i32 18), !dbg !301
  store double %93, double* %8, align 8, !dbg !301
  %94 = load double, double* %10, align 8, !dbg !302
  %95 = load double, double* %14, align 8, !dbg !303
  %96 = fmul double %94, %95, !dbg !304
  call void @fMulHandler(double %94, double %95, double %96, i64 94649107368328, i64 94649107368712, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 94649107369120, i32 26, i32 16), !dbg !305
  %97 = call double @fabs(double %96) #1, !dbg !305
  %98 = load double, double* %9, align 8, !dbg !306
  %99 = call double @fabs(double %98) #1, !dbg !307
  %100 = fadd double %97, %99, !dbg !309
  call void @fAddHandler(double %97, double %99, double %100, i64 94649107369600, i64 94649107370528, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 94649107371008, i32 26, i32 23), !dbg !310
  %101 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !310
  %102 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %101, i32 0, i32 0, !dbg !311
  %103 = load double*, double** %102, align 8, !dbg !311
  %104 = getelementptr inbounds double, double* %103, i64 0, !dbg !310
  %105 = load double, double* %104, align 8, !dbg !310
  %106 = call double @fabs(double %105) #1, !dbg !312
  %107 = fmul double 5.000000e-01, %106, !dbg !314
  call void @fMulHandler(double 5.000000e-01, double %106, double %107, i64 0, i64 94649107375760, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 94649107376272, i32 26, i32 40), !dbg !315
  %108 = fadd double %100, %107, !dbg !315
  call void @fAddHandler(double %100, double %107, double %108, i64 94649107371008, i64 94649107376272, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 94649107376656, i32 26, i32 34), !dbg !316
  %109 = load double, double* %12, align 8, !dbg !316
  %110 = fadd double %109, %108, !dbg !316
  call void @fAddHandler(double %109, double %108, double %110, i64 94649107377048, i64 94649107376656, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 94649107377456, i32 26, i32 7), !dbg !316
  store double %110, double* %12, align 8, !dbg !316
  %111 = load double, double* %8, align 8, !dbg !317
  %112 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !318
  %113 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %112, i32 0, i32 0, !dbg !319
  store double %111, double* %113, align 8, !dbg !320
  %114 = load double, double* %12, align 8, !dbg !321
  %115 = fmul double 0x3CB0000000000000, %114, !dbg !322
  call void @fMulHandler(double 0x3CB0000000000000, double %114, double %115, i64 0, i64 94649107380872, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 94649107381344, i32 30, i32 33), !dbg !323
  %116 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !323
  %117 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %116, i32 0, i32 1, !dbg !324
  %118 = load i32, i32* %117, align 8, !dbg !324
  %119 = sext i32 %118 to i64, !dbg !325
  %120 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !325
  %121 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %120, i32 0, i32 0, !dbg !326
  %122 = load double*, double** %121, align 8, !dbg !326
  %123 = getelementptr inbounds double, double* %122, i64 %119, !dbg !325
  %124 = load double, double* %123, align 8, !dbg !325
  %125 = call double @fabs(double %124) #1, !dbg !327
  %126 = fadd double %115, %125, !dbg !328
  call void @fAddHandler(double %115, double %125, double %126, i64 94649107381344, i64 94649107388672, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 94649107389152, i32 30, i32 37), !dbg !329
  %127 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !329
  %128 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %127, i32 0, i32 1, !dbg !330
  store double %126, double* %128, align 8, !dbg !331
  ret i32 0, !dbg !332
}

declare i32 @gsl_sf_expint_Ei_e(double, %struct.gsl_sf_result_struct*) #4

declare i32 @gsl_sf_expint_E1_e(double, %struct.gsl_sf_result_struct*) #4

declare void @gsl_error(i8*, i8*, i32, i32) #4

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_Chi_e(double, %struct.gsl_sf_result_struct*) #0 !dbg !333 {
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca %struct.gsl_sf_result_struct*, align 8
  %6 = alloca %struct.gsl_sf_result_struct, align 8
  %7 = alloca %struct.gsl_sf_result_struct, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !334, metadata !76), !dbg !335
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %5, metadata !336, metadata !76), !dbg !337
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %6, metadata !338, metadata !76), !dbg !339
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %7, metadata !340, metadata !76), !dbg !341
  call void @llvm.dbg.declare(metadata i32* %8, metadata !342, metadata !76), !dbg !343
  %10 = load double, double* %4, align 8, !dbg !344
  %11 = call i32 @gsl_sf_expint_Ei_e(double %10, %struct.gsl_sf_result_struct* %6), !dbg !345
  store i32 %11, i32* %8, align 4, !dbg !343
  call void @llvm.dbg.declare(metadata i32* %9, metadata !346, metadata !76), !dbg !347
  %12 = load double, double* %4, align 8, !dbg !348
  %13 = call i32 @gsl_sf_expint_E1_e(double %12, %struct.gsl_sf_result_struct* %7), !dbg !349
  store i32 %13, i32* %9, align 4, !dbg !347
  %14 = load i32, i32* %8, align 4, !dbg !350
  %15 = icmp eq i32 %14, 1, !dbg !352
  %16 = sext i32 %14 to i64, !dbg !353
  %17 = call i1 @iCmpInstHandler(i64 %16, i64 1, i1 %15, i32 32, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @5, i32 0, i32 0), i64 94649107407920, i32 106, i32 16), !dbg !353
  br i1 %17, label %23, label %18, !dbg !353

; <label>:18:                                     ; preds = %2
  %19 = load i32, i32* %9, align 4, !dbg !354
  %20 = icmp eq i32 %19, 1, !dbg !356
  %21 = sext i32 %19 to i64, !dbg !357
  %22 = call i1 @iCmpInstHandler(i64 %21, i64 1, i1 %20, i32 32, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @5, i32 0, i32 0), i64 94649107409376, i32 106, i32 41), !dbg !357
  br i1 %22, label %23, label %32, !dbg !357

; <label>:23:                                     ; preds = %18, %2
  br label %24, !dbg !358, !llvm.loop !360

; <label>:24:                                     ; preds = %23
  %25 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !361
  %26 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %25, i32 0, i32 0, !dbg !361
  store double 0x7FF8000000000000, double* %26, align 8, !dbg !361
  %27 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !361
  %28 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %27, i32 0, i32 1, !dbg !361
  store double 0x7FF8000000000000, double* %28, align 8, !dbg !361
  br label %29, !dbg !361, !llvm.loop !364

; <label>:29:                                     ; preds = %24
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i32 107, i32 1), !dbg !366
  store i32 1, i32* %3, align 4, !dbg !366
  br label %98, !dbg !366
                                                  ; No predecessors!
  br label %31, !dbg !369

; <label>:31:                                     ; preds = %30
  br label %98, !dbg !371

; <label>:32:                                     ; preds = %18
  %33 = load i32, i32* %8, align 4, !dbg !372
  %34 = icmp eq i32 %33, 15, !dbg !374
  %35 = sext i32 %33 to i64, !dbg !375
  %36 = call i1 @iCmpInstHandler(i64 %35, i64 15, i1 %34, i32 32, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @5, i32 0, i32 0), i64 94649107417984, i32 109, i32 21), !dbg !375
  br i1 %36, label %37, label %51, !dbg !375

; <label>:37:                                     ; preds = %32
  %38 = load i32, i32* %9, align 4, !dbg !376
  %39 = icmp eq i32 %38, 15, !dbg !378
  %40 = sext i32 %38 to i64, !dbg !379
  %41 = call i1 @iCmpInstHandler(i64 %40, i64 15, i1 %39, i32 32, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @5, i32 0, i32 0), i64 94649107419440, i32 109, i32 50), !dbg !379
  br i1 %41, label %42, label %51, !dbg !379

; <label>:42:                                     ; preds = %37
  br label %43, !dbg !380, !llvm.loop !382

; <label>:43:                                     ; preds = %42
  %44 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !383
  %45 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %44, i32 0, i32 0, !dbg !383
  store double 0.000000e+00, double* %45, align 8, !dbg !383
  %46 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !383
  %47 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %46, i32 0, i32 1, !dbg !383
  store double 0x10000000000000, double* %47, align 8, !dbg !383
  br label %48, !dbg !383, !llvm.loop !386

; <label>:48:                                     ; preds = %43
  call void @gsl_error(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i32 110, i32 15), !dbg !388
  store i32 15, i32* %3, align 4, !dbg !388
  br label %98, !dbg !388
                                                  ; No predecessors!
  br label %50, !dbg !391

; <label>:50:                                     ; preds = %49
  br label %97, !dbg !393

; <label>:51:                                     ; preds = %37, %32
  %52 = load i32, i32* %8, align 4, !dbg !394
  %53 = icmp eq i32 %52, 16, !dbg !396
  %54 = sext i32 %52 to i64, !dbg !397
  %55 = call i1 @iCmpInstHandler(i64 %54, i64 16, i1 %53, i32 32, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @5, i32 0, i32 0), i64 94649107428064, i32 112, i32 21), !dbg !397
  br i1 %55, label %61, label %56, !dbg !397

; <label>:56:                                     ; preds = %51
  %57 = load i32, i32* %9, align 4, !dbg !398
  %58 = icmp eq i32 %57, 16, !dbg !400
  %59 = sext i32 %57 to i64, !dbg !401
  %60 = call i1 @iCmpInstHandler(i64 %59, i64 16, i1 %58, i32 32, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @5, i32 0, i32 0), i64 94649107429520, i32 112, i32 49), !dbg !401
  br i1 %60, label %61, label %70, !dbg !401

; <label>:61:                                     ; preds = %56, %51
  br label %62, !dbg !402, !llvm.loop !404

; <label>:62:                                     ; preds = %61
  %63 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !405
  %64 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %63, i32 0, i32 0, !dbg !405
  store double 0x7FF0000000000000, double* %64, align 8, !dbg !405
  %65 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !405
  %66 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %65, i32 0, i32 1, !dbg !405
  store double 0x7FF0000000000000, double* %66, align 8, !dbg !405
  br label %67, !dbg !405, !llvm.loop !408

; <label>:67:                                     ; preds = %62
  call void @gsl_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i32 113, i32 16), !dbg !410
  store i32 16, i32* %3, align 4, !dbg !410
  br label %98, !dbg !410
                                                  ; No predecessors!
  br label %69, !dbg !413

; <label>:69:                                     ; preds = %68
  br label %96, !dbg !415

; <label>:70:                                     ; preds = %56
  %71 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !416
  %72 = load double, double* %71, align 8, !dbg !416
  %73 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %7, i32 0, i32 0, !dbg !418
  %74 = load double, double* %73, align 8, !dbg !418
  %75 = fsub double %72, %74, !dbg !419
  call void @fSubHandler(double %72, double %74, double %75, i64 94649107438184, i64 94649107440280, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @5, i32 0, i32 0), i64 94649107441952, i32 116, i32 41), !dbg !420
  %76 = fmul double 5.000000e-01, %75, !dbg !420
  call void @fMulHandler(double 5.000000e-01, double %75, double %76, i64 0, i64 94649107441952, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @5, i32 0, i32 0), i64 94649107442400, i32 116, i32 24), !dbg !421
  %77 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !421
  %78 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %77, i32 0, i32 0, !dbg !422
  store double %76, double* %78, align 8, !dbg !423
  %79 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 1, !dbg !424
  %80 = load double, double* %79, align 8, !dbg !424
  %81 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %7, i32 0, i32 1, !dbg !425
  %82 = load double, double* %81, align 8, !dbg !425
  %83 = fadd double %80, %82, !dbg !426
  call void @fAddHandler(double %80, double %82, double %83, i64 94649107444456, i64 94649107446552, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @5, i32 0, i32 0), i64 94649107448224, i32 117, i32 41), !dbg !427
  %84 = fmul double 5.000000e-01, %83, !dbg !427
  call void @fMulHandler(double 5.000000e-01, double %83, double %84, i64 0, i64 94649107448224, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @5, i32 0, i32 0), i64 94649107448672, i32 117, i32 24), !dbg !428
  %85 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !428
  %86 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %85, i32 0, i32 1, !dbg !429
  store double %84, double* %86, align 8, !dbg !430
  %87 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !431
  %88 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %87, i32 0, i32 0, !dbg !432
  %89 = load double, double* %88, align 8, !dbg !432
  %90 = call double @fabs(double %89) #1, !dbg !433
  %91 = fmul double 0x3CC0000000000000, %90, !dbg !434
  call void @fMulHandler(double 0x3CC0000000000000, double %90, double %91, i64 0, i64 94649107452848, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @5, i32 0, i32 0), i64 94649107453328, i32 118, i32 42), !dbg !435
  %92 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !435
  %93 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %92, i32 0, i32 1, !dbg !436
  %94 = load double, double* %93, align 8, !dbg !437
  %95 = fadd double %94, %91, !dbg !437
  call void @fAddHandler(double %94, double %91, double %95, i64 94649107454552, i64 94649107453328, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @5, i32 0, i32 0), i64 94649107454960, i32 118, i32 17), !dbg !437
  store double %95, double* %93, align 8, !dbg !437
  store i32 0, i32* %3, align 4, !dbg !438
  br label %98, !dbg !438

; <label>:96:                                     ; preds = %69
  br label %97

; <label>:97:                                     ; preds = %96, %50
  br label %98

; <label>:98:                                     ; preds = %97, %70, %67, %48, %31, %29
  %99 = load i32, i32* %3, align 4, !dbg !439
  ret i32 %99, !dbg !439
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_Shi(double) #0 !dbg !440 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct, align 8
  %5 = alloca i32, align 4
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !443, metadata !76), !dbg !444
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %4, metadata !445, metadata !76), !dbg !446
  call void @llvm.dbg.declare(metadata i32* %5, metadata !447, metadata !76), !dbg !446
  %6 = load double, double* %3, align 8, !dbg !446
  %7 = call i32 @gsl_sf_Shi_e(double %6, %struct.gsl_sf_result_struct* %4), !dbg !446
  store i32 %7, i32* %5, align 4, !dbg !446
  %8 = load i32, i32* %5, align 4, !dbg !448
  %9 = icmp ne i32 %8, 0, !dbg !448
  %10 = sext i32 %8 to i64, !dbg !446
  %11 = call i1 @iCmpInstHandler(i64 %10, i64 0, i1 %9, i32 33, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @7, i32 0, i32 0), i64 94649107467888, i32 129, i32 3), !dbg !446
  br i1 %11, label %12, label %18, !dbg !446

; <label>:12:                                     ; preds = %1
  br label %13, !dbg !450, !llvm.loop !453

; <label>:13:                                     ; preds = %12
  %14 = load i32, i32* %5, align 4, !dbg !455
  call void @gsl_error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i32 129, i32 %14), !dbg !455
  %15 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !455
  %16 = load double, double* %15, align 8, !dbg !455
  store double %16, double* %2, align 8, !dbg !455
  br label %21, !dbg !455
                                                  ; No predecessors!
  br label %18, !dbg !458

; <label>:18:                                     ; preds = %17, %1
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !460
  %20 = load double, double* %19, align 8, !dbg !460
  store double %20, double* %2, align 8, !dbg !460
  br label %21, !dbg !460

; <label>:21:                                     ; preds = %18, %13
  %22 = load double, double* %2, align 8, !dbg !462
  ret double %22, !dbg !462
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_Chi(double) #0 !dbg !463 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct, align 8
  %5 = alloca i32, align 4
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !464, metadata !76), !dbg !465
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %4, metadata !466, metadata !76), !dbg !467
  call void @llvm.dbg.declare(metadata i32* %5, metadata !468, metadata !76), !dbg !467
  %6 = load double, double* %3, align 8, !dbg !467
  %7 = call i32 @gsl_sf_Chi_e(double %6, %struct.gsl_sf_result_struct* %4), !dbg !467
  store i32 %7, i32* %5, align 4, !dbg !467
  %8 = load i32, i32* %5, align 4, !dbg !469
  %9 = icmp ne i32 %8, 0, !dbg !469
  %10 = sext i32 %8 to i64, !dbg !467
  %11 = call i1 @iCmpInstHandler(i64 %10, i64 0, i1 %9, i32 33, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @9, i32 0, i32 0), i64 94649107485184, i32 134, i32 3), !dbg !467
  br i1 %11, label %12, label %18, !dbg !467

; <label>:12:                                     ; preds = %1
  br label %13, !dbg !471, !llvm.loop !474

; <label>:13:                                     ; preds = %12
  %14 = load i32, i32* %5, align 4, !dbg !476
  call void @gsl_error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i32 134, i32 %14), !dbg !476
  %15 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !476
  %16 = load double, double* %15, align 8, !dbg !476
  store double %16, double* %2, align 8, !dbg !476
  br label %21, !dbg !476
                                                  ; No predecessors!
  br label %18, !dbg !479

; <label>:18:                                     ; preds = %17, %1
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !481
  %20 = load double, double* %19, align 8, !dbg !481
  store double %20, double* %2, align 8, !dbg !481
  br label %21, !dbg !481

; <label>:21:                                     ; preds = %18, %13
  %22 = load double, double* %2, align 8, !dbg !483
  ret double %22, !dbg !483
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
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!59, !60, !61}
!llvm.ident = !{!62}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, globals: !41)
!1 = !DIFile(filename: "shint.c", directory: "/fpcc/gsl-2.5/specfunc")
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
!41 = !{!42, !55}
!42 = distinct !DIGlobalVariable(name: "shi_cs", scope: !0, file: !1, line: 51, type: !43, isLocal: true, isDefinition: true, variable: %struct.cheb_series_struct* @shi_cs)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "cheb_series", file: !44, line: 29, baseType: !45)
!44 = !DIFile(filename: "./chebyshev.h", directory: "/fpcc/gsl-2.5/specfunc")
!45 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cheb_series_struct", file: !44, line: 22, size: 320, align: 64, elements: !46)
!46 = !{!47, !50, !52, !53, !54}
!47 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !45, file: !44, line: 23, baseType: !48, size: 64, align: 64)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64, align: 64)
!49 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "order", scope: !45, file: !44, line: 24, baseType: !51, size: 32, align: 32, offset: 64)
!51 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !45, file: !44, line: 25, baseType: !49, size: 64, align: 64, offset: 128)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !45, file: !44, line: 26, baseType: !49, size: 64, align: 64, offset: 192)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "order_sp", scope: !45, file: !44, line: 27, baseType: !51, size: 32, align: 32, offset: 256)
!55 = distinct !DIGlobalVariable(name: "shi_data", scope: !0, file: !1, line: 42, type: !56, isLocal: true, isDefinition: true, variable: [7 x double]* @shi_data)
!56 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 448, align: 64, elements: !57)
!57 = !{!58}
!58 = !DISubrange(count: 7)
!59 = !{i32 2, !"Dwarf Version", i32 4}
!60 = !{i32 2, !"Debug Info Version", i32 3}
!61 = !{i32 1, !"PIC Level", i32 2}
!62 = !{!"clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)"}
!63 = distinct !DISubprogram(name: "gsl_sf_Shi_e", scope: !1, file: !1, line: 61, type: !64, isLocal: false, isDefinition: true, scopeLine: 62, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !74)
!64 = !DISubroutineType(types: !65)
!65 = !{!51, !66, !67}
!66 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !49)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64, align: 64)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !69, line: 41, baseType: !70)
!69 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/fpcc/gsl-2.5/specfunc")
!70 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !69, line: 37, size: 128, align: 64, elements: !71)
!71 = !{!72, !73}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !70, file: !69, line: 38, baseType: !49, size: 64, align: 64)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !70, file: !69, line: 39, baseType: !49, size: 64, align: 64, offset: 64)
!74 = !{}
!75 = !DILocalVariable(name: "x", arg: 1, scope: !63, file: !1, line: 61, type: !66)
!76 = !DIExpression()
!77 = !DILocation(line: 61, column: 31, scope: !63)
!78 = !DILocalVariable(name: "result", arg: 2, scope: !63, file: !1, line: 61, type: !67)
!79 = !DILocation(line: 61, column: 50, scope: !63)
!80 = !DILocalVariable(name: "xsml", scope: !63, file: !1, line: 63, type: !66)
!81 = !DILocation(line: 63, column: 16, scope: !63)
!82 = !DILocalVariable(name: "ax", scope: !63, file: !1, line: 64, type: !66)
!83 = !DILocation(line: 64, column: 16, scope: !63)
!84 = !DILocation(line: 64, column: 28, scope: !63)
!85 = !DILocation(line: 64, column: 23, scope: !63)
!86 = !DILocation(line: 66, column: 6, scope: !87)
!87 = distinct !DILexicalBlock(scope: !63, file: !1, line: 66, column: 6)
!88 = !DILocation(line: 66, column: 9, scope: !87)
!89 = !DILocation(line: 66, column: 6, scope: !63)
!90 = !DILocation(line: 67, column: 19, scope: !91)
!91 = distinct !DILexicalBlock(scope: !87, file: !1, line: 66, column: 17)
!92 = !DILocation(line: 67, column: 5, scope: !91)
!93 = !DILocation(line: 67, column: 13, scope: !91)
!94 = !DILocation(line: 67, column: 17, scope: !91)
!95 = !DILocation(line: 68, column: 5, scope: !91)
!96 = !DILocation(line: 68, column: 13, scope: !91)
!97 = !DILocation(line: 68, column: 17, scope: !91)
!98 = !DILocation(line: 69, column: 5, scope: !91)
!99 = !DILocation(line: 71, column: 11, scope: !100)
!100 = distinct !DILexicalBlock(scope: !87, file: !1, line: 71, column: 11)
!101 = !DILocation(line: 71, column: 14, scope: !100)
!102 = !DILocation(line: 71, column: 11, scope: !87)
!103 = !DILocalVariable(name: "result_c", scope: !104, file: !1, line: 72, type: !68)
!104 = distinct !DILexicalBlock(scope: !100, file: !1, line: 71, column: 24)
!105 = !DILocation(line: 72, column: 19, scope: !104)
!106 = !DILocation(line: 73, column: 32, scope: !104)
!107 = !DILocation(line: 73, column: 31, scope: !104)
!108 = !DILocation(line: 73, column: 34, scope: !104)
!109 = !DILocation(line: 73, column: 33, scope: !104)
!110 = !DILocation(line: 73, column: 35, scope: !104)
!111 = !DILocation(line: 73, column: 39, scope: !104)
!112 = !DILocation(line: 73, column: 5, scope: !104)
!113 = !DILocation(line: 74, column: 20, scope: !104)
!114 = !DILocation(line: 74, column: 40, scope: !104)
!115 = !DILocation(line: 74, column: 29, scope: !104)
!116 = !DILocation(line: 74, column: 22, scope: !104)
!117 = !DILocation(line: 74, column: 5, scope: !104)
!118 = !DILocation(line: 74, column: 13, scope: !104)
!119 = !DILocation(line: 74, column: 18, scope: !104)
!120 = !DILocation(line: 75, column: 20, scope: !104)
!121 = !DILocation(line: 75, column: 33, scope: !104)
!122 = !DILocation(line: 75, column: 22, scope: !104)
!123 = !DILocation(line: 75, column: 5, scope: !104)
!124 = !DILocation(line: 75, column: 13, scope: !104)
!125 = !DILocation(line: 75, column: 18, scope: !104)
!126 = !DILocation(line: 76, column: 49, scope: !104)
!127 = !DILocation(line: 76, column: 57, scope: !104)
!128 = !DILocation(line: 76, column: 44, scope: !104)
!129 = !DILocation(line: 76, column: 42, scope: !104)
!130 = !DILocation(line: 76, column: 5, scope: !104)
!131 = !DILocation(line: 76, column: 13, scope: !104)
!132 = !DILocation(line: 76, column: 17, scope: !104)
!133 = !DILocation(line: 77, column: 5, scope: !104)
!134 = !DILocalVariable(name: "result_Ei", scope: !135, file: !1, line: 80, type: !68)
!135 = distinct !DILexicalBlock(scope: !100, file: !1, line: 79, column: 8)
!136 = !DILocation(line: 80, column: 19, scope: !135)
!137 = !DILocalVariable(name: "result_E1", scope: !135, file: !1, line: 81, type: !68)
!138 = !DILocation(line: 81, column: 19, scope: !135)
!139 = !DILocalVariable(name: "status_Ei", scope: !135, file: !1, line: 82, type: !51)
!140 = !DILocation(line: 82, column: 9, scope: !135)
!141 = !DILocation(line: 82, column: 40, scope: !135)
!142 = !DILocation(line: 82, column: 21, scope: !135)
!143 = !DILocalVariable(name: "status_E1", scope: !135, file: !1, line: 83, type: !51)
!144 = !DILocation(line: 83, column: 9, scope: !135)
!145 = !DILocation(line: 83, column: 40, scope: !135)
!146 = !DILocation(line: 83, column: 21, scope: !135)
!147 = !DILocation(line: 84, column: 35, scope: !135)
!148 = !DILocation(line: 84, column: 51, scope: !135)
!149 = !DILocation(line: 84, column: 39, scope: !135)
!150 = !DILocation(line: 84, column: 23, scope: !135)
!151 = !DILocation(line: 84, column: 5, scope: !135)
!152 = !DILocation(line: 84, column: 13, scope: !135)
!153 = !DILocation(line: 84, column: 18, scope: !135)
!154 = !DILocation(line: 85, column: 35, scope: !135)
!155 = !DILocation(line: 85, column: 51, scope: !135)
!156 = !DILocation(line: 85, column: 39, scope: !135)
!157 = !DILocation(line: 85, column: 23, scope: !135)
!158 = !DILocation(line: 85, column: 5, scope: !135)
!159 = !DILocation(line: 85, column: 13, scope: !135)
!160 = !DILocation(line: 85, column: 18, scope: !135)
!161 = !DILocation(line: 86, column: 49, scope: !135)
!162 = !DILocation(line: 86, column: 57, scope: !135)
!163 = !DILocation(line: 86, column: 44, scope: !135)
!164 = !DILocation(line: 86, column: 42, scope: !135)
!165 = !DILocation(line: 86, column: 5, scope: !135)
!166 = !DILocation(line: 86, column: 13, scope: !135)
!167 = !DILocation(line: 86, column: 17, scope: !135)
!168 = !DILocation(line: 87, column: 8, scope: !169)
!169 = distinct !DILexicalBlock(scope: !135, file: !1, line: 87, column: 8)
!170 = !DILocation(line: 87, column: 18, scope: !169)
!171 = !DILocation(line: 87, column: 34, scope: !169)
!172 = !DILocation(line: 87, column: 37, scope: !173)
!173 = !DILexicalBlockFile(scope: !169, file: !1, discriminator: 1)
!174 = !DILocation(line: 87, column: 47, scope: !173)
!175 = !DILocation(line: 87, column: 8, scope: !173)
!176 = !DILocation(line: 88, column: 7, scope: !177)
!177 = distinct !DILexicalBlock(scope: !169, file: !1, line: 87, column: 64)
!178 = distinct !{!178, !176}
!179 = !DILocation(line: 88, column: 7, scope: !180)
!180 = !DILexicalBlockFile(scope: !181, file: !1, discriminator: 1)
!181 = distinct !DILexicalBlock(scope: !177, file: !1, line: 88, column: 7)
!182 = !DILocation(line: 89, column: 5, scope: !177)
!183 = !DILocation(line: 90, column: 13, scope: !184)
!184 = distinct !DILexicalBlock(scope: !169, file: !1, line: 90, column: 13)
!185 = !DILocation(line: 90, column: 23, scope: !184)
!186 = !DILocation(line: 90, column: 38, scope: !184)
!187 = !DILocation(line: 90, column: 41, scope: !188)
!188 = !DILexicalBlockFile(scope: !184, file: !1, discriminator: 1)
!189 = !DILocation(line: 90, column: 51, scope: !188)
!190 = !DILocation(line: 90, column: 13, scope: !188)
!191 = !DILocation(line: 91, column: 7, scope: !192)
!192 = distinct !DILexicalBlock(scope: !184, file: !1, line: 90, column: 67)
!193 = distinct !{!193, !191}
!194 = !DILocation(line: 91, column: 7, scope: !195)
!195 = !DILexicalBlockFile(scope: !196, file: !1, discriminator: 1)
!196 = distinct !DILexicalBlock(scope: !192, file: !1, line: 91, column: 7)
!197 = !DILocation(line: 92, column: 5, scope: !192)
!198 = !DILocation(line: 94, column: 7, scope: !199)
!199 = distinct !DILexicalBlock(scope: !184, file: !1, line: 93, column: 10)
!200 = !DILocation(line: 97, column: 1, scope: !63)
!201 = distinct !DISubprogram(name: "cheb_eval_e", scope: !202, file: !202, line: 3, type: !203, isLocal: true, isDefinition: true, scopeLine: 6, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !74)
!202 = !DIFile(filename: "./cheb_eval.c", directory: "/fpcc/gsl-2.5/specfunc")
!203 = !DISubroutineType(types: !204)
!204 = !{!51, !205, !66, !67}
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64, align: 64)
!206 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!207 = !DILocalVariable(name: "cs", arg: 1, scope: !201, file: !202, line: 3, type: !205)
!208 = !DILocation(line: 3, column: 33, scope: !201)
!209 = !DILocalVariable(name: "x", arg: 2, scope: !201, file: !202, line: 4, type: !66)
!210 = !DILocation(line: 4, column: 26, scope: !201)
!211 = !DILocalVariable(name: "result", arg: 3, scope: !201, file: !202, line: 5, type: !67)
!212 = !DILocation(line: 5, column: 29, scope: !201)
!213 = !DILocalVariable(name: "j", scope: !201, file: !202, line: 7, type: !51)
!214 = !DILocation(line: 7, column: 7, scope: !201)
!215 = !DILocalVariable(name: "d", scope: !201, file: !202, line: 8, type: !49)
!216 = !DILocation(line: 8, column: 10, scope: !201)
!217 = !DILocalVariable(name: "dd", scope: !201, file: !202, line: 9, type: !49)
!218 = !DILocation(line: 9, column: 10, scope: !201)
!219 = !DILocalVariable(name: "y", scope: !201, file: !202, line: 11, type: !49)
!220 = !DILocation(line: 11, column: 10, scope: !201)
!221 = !DILocation(line: 11, column: 20, scope: !201)
!222 = !DILocation(line: 11, column: 19, scope: !201)
!223 = !DILocation(line: 11, column: 24, scope: !201)
!224 = !DILocation(line: 11, column: 28, scope: !201)
!225 = !DILocation(line: 11, column: 22, scope: !201)
!226 = !DILocation(line: 11, column: 32, scope: !201)
!227 = !DILocation(line: 11, column: 36, scope: !201)
!228 = !DILocation(line: 11, column: 30, scope: !201)
!229 = !DILocation(line: 11, column: 42, scope: !201)
!230 = !DILocation(line: 11, column: 46, scope: !201)
!231 = !DILocation(line: 11, column: 50, scope: !201)
!232 = !DILocation(line: 11, column: 54, scope: !201)
!233 = !DILocation(line: 11, column: 48, scope: !201)
!234 = !DILocation(line: 11, column: 39, scope: !201)
!235 = !DILocalVariable(name: "y2", scope: !201, file: !202, line: 12, type: !49)
!236 = !DILocation(line: 12, column: 10, scope: !201)
!237 = !DILocation(line: 12, column: 21, scope: !201)
!238 = !DILocation(line: 12, column: 19, scope: !201)
!239 = !DILocalVariable(name: "e", scope: !201, file: !202, line: 14, type: !49)
!240 = !DILocation(line: 14, column: 10, scope: !201)
!241 = !DILocation(line: 16, column: 11, scope: !242)
!242 = distinct !DILexicalBlock(scope: !201, file: !202, line: 16, column: 3)
!243 = !DILocation(line: 16, column: 15, scope: !242)
!244 = !DILocation(line: 16, column: 9, scope: !242)
!245 = !DILocation(line: 16, column: 7, scope: !242)
!246 = !DILocation(line: 16, column: 22, scope: !247)
!247 = !DILexicalBlockFile(scope: !248, file: !202, discriminator: 1)
!248 = distinct !DILexicalBlock(scope: !242, file: !202, line: 16, column: 3)
!249 = !DILocation(line: 16, column: 23, scope: !247)
!250 = !DILocation(line: 16, column: 3, scope: !247)
!251 = !DILocalVariable(name: "temp", scope: !252, file: !202, line: 17, type: !49)
!252 = distinct !DILexicalBlock(scope: !248, file: !202, line: 16, column: 33)
!253 = !DILocation(line: 17, column: 12, scope: !252)
!254 = !DILocation(line: 17, column: 19, scope: !252)
!255 = !DILocation(line: 18, column: 9, scope: !252)
!256 = !DILocation(line: 18, column: 12, scope: !252)
!257 = !DILocation(line: 18, column: 11, scope: !252)
!258 = !DILocation(line: 18, column: 16, scope: !252)
!259 = !DILocation(line: 18, column: 14, scope: !252)
!260 = !DILocation(line: 18, column: 27, scope: !252)
!261 = !DILocation(line: 18, column: 21, scope: !252)
!262 = !DILocation(line: 18, column: 25, scope: !252)
!263 = !DILocation(line: 18, column: 19, scope: !252)
!264 = !DILocation(line: 18, column: 7, scope: !252)
!265 = !DILocation(line: 19, column: 15, scope: !252)
!266 = !DILocation(line: 19, column: 18, scope: !252)
!267 = !DILocation(line: 19, column: 17, scope: !252)
!268 = !DILocation(line: 19, column: 10, scope: !252)
!269 = !DILocation(line: 19, column: 31, scope: !252)
!270 = !DILocation(line: 19, column: 26, scope: !271)
!271 = !DILexicalBlockFile(scope: !252, file: !202, discriminator: 1)
!272 = !DILocation(line: 19, column: 24, scope: !252)
!273 = !DILocation(line: 19, column: 48, scope: !252)
!274 = !DILocation(line: 19, column: 42, scope: !252)
!275 = !DILocation(line: 19, column: 46, scope: !252)
!276 = !DILocation(line: 19, column: 37, scope: !277)
!277 = !DILexicalBlockFile(scope: !252, file: !202, discriminator: 2)
!278 = !DILocation(line: 19, column: 35, scope: !252)
!279 = !DILocation(line: 19, column: 7, scope: !252)
!280 = !DILocation(line: 20, column: 10, scope: !252)
!281 = !DILocation(line: 20, column: 8, scope: !252)
!282 = !DILocation(line: 21, column: 3, scope: !252)
!283 = !DILocation(line: 16, column: 29, scope: !284)
!284 = !DILexicalBlockFile(scope: !248, file: !202, discriminator: 2)
!285 = !DILocation(line: 16, column: 3, scope: !284)
!286 = distinct !{!286, !287}
!287 = !DILocation(line: 16, column: 3, scope: !201)
!288 = !DILocalVariable(name: "temp", scope: !289, file: !202, line: 24, type: !49)
!289 = distinct !DILexicalBlock(scope: !201, file: !202, line: 23, column: 3)
!290 = !DILocation(line: 24, column: 12, scope: !289)
!291 = !DILocation(line: 24, column: 19, scope: !289)
!292 = !DILocation(line: 25, column: 9, scope: !289)
!293 = !DILocation(line: 25, column: 11, scope: !289)
!294 = !DILocation(line: 25, column: 10, scope: !289)
!295 = !DILocation(line: 25, column: 15, scope: !289)
!296 = !DILocation(line: 25, column: 13, scope: !289)
!297 = !DILocation(line: 25, column: 26, scope: !289)
!298 = !DILocation(line: 25, column: 30, scope: !289)
!299 = !DILocation(line: 25, column: 24, scope: !289)
!300 = !DILocation(line: 25, column: 18, scope: !289)
!301 = !DILocation(line: 25, column: 7, scope: !289)
!302 = !DILocation(line: 26, column: 15, scope: !289)
!303 = !DILocation(line: 26, column: 17, scope: !289)
!304 = !DILocation(line: 26, column: 16, scope: !289)
!305 = !DILocation(line: 26, column: 10, scope: !289)
!306 = !DILocation(line: 26, column: 30, scope: !289)
!307 = !DILocation(line: 26, column: 25, scope: !308)
!308 = !DILexicalBlockFile(scope: !289, file: !202, discriminator: 1)
!309 = !DILocation(line: 26, column: 23, scope: !289)
!310 = !DILocation(line: 26, column: 47, scope: !289)
!311 = !DILocation(line: 26, column: 51, scope: !289)
!312 = !DILocation(line: 26, column: 42, scope: !313)
!313 = !DILexicalBlockFile(scope: !289, file: !202, discriminator: 2)
!314 = !DILocation(line: 26, column: 40, scope: !289)
!315 = !DILocation(line: 26, column: 34, scope: !289)
!316 = !DILocation(line: 26, column: 7, scope: !289)
!317 = !DILocation(line: 29, column: 17, scope: !201)
!318 = !DILocation(line: 29, column: 3, scope: !201)
!319 = !DILocation(line: 29, column: 11, scope: !201)
!320 = !DILocation(line: 29, column: 15, scope: !201)
!321 = !DILocation(line: 30, column: 35, scope: !201)
!322 = !DILocation(line: 30, column: 33, scope: !201)
!323 = !DILocation(line: 30, column: 50, scope: !201)
!324 = !DILocation(line: 30, column: 54, scope: !201)
!325 = !DILocation(line: 30, column: 44, scope: !201)
!326 = !DILocation(line: 30, column: 48, scope: !201)
!327 = !DILocation(line: 30, column: 39, scope: !201)
!328 = !DILocation(line: 30, column: 37, scope: !201)
!329 = !DILocation(line: 30, column: 3, scope: !201)
!330 = !DILocation(line: 30, column: 11, scope: !201)
!331 = !DILocation(line: 30, column: 15, scope: !201)
!332 = !DILocation(line: 32, column: 3, scope: !201)
!333 = distinct !DISubprogram(name: "gsl_sf_Chi_e", scope: !1, file: !1, line: 100, type: !64, isLocal: false, isDefinition: true, scopeLine: 101, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !74)
!334 = !DILocalVariable(name: "x", arg: 1, scope: !333, file: !1, line: 100, type: !66)
!335 = !DILocation(line: 100, column: 31, scope: !333)
!336 = !DILocalVariable(name: "result", arg: 2, scope: !333, file: !1, line: 100, type: !67)
!337 = !DILocation(line: 100, column: 50, scope: !333)
!338 = !DILocalVariable(name: "result_Ei", scope: !333, file: !1, line: 102, type: !68)
!339 = !DILocation(line: 102, column: 17, scope: !333)
!340 = !DILocalVariable(name: "result_E1", scope: !333, file: !1, line: 103, type: !68)
!341 = !DILocation(line: 103, column: 17, scope: !333)
!342 = !DILocalVariable(name: "status_Ei", scope: !333, file: !1, line: 104, type: !51)
!343 = !DILocation(line: 104, column: 7, scope: !333)
!344 = !DILocation(line: 104, column: 38, scope: !333)
!345 = !DILocation(line: 104, column: 19, scope: !333)
!346 = !DILocalVariable(name: "status_E1", scope: !333, file: !1, line: 105, type: !51)
!347 = !DILocation(line: 105, column: 7, scope: !333)
!348 = !DILocation(line: 105, column: 38, scope: !333)
!349 = !DILocation(line: 105, column: 19, scope: !333)
!350 = !DILocation(line: 106, column: 6, scope: !351)
!351 = distinct !DILexicalBlock(scope: !333, file: !1, line: 106, column: 6)
!352 = !DILocation(line: 106, column: 16, scope: !351)
!353 = !DILocation(line: 106, column: 28, scope: !351)
!354 = !DILocation(line: 106, column: 31, scope: !355)
!355 = !DILexicalBlockFile(scope: !351, file: !1, discriminator: 1)
!356 = !DILocation(line: 106, column: 41, scope: !355)
!357 = !DILocation(line: 106, column: 6, scope: !355)
!358 = !DILocation(line: 107, column: 5, scope: !359)
!359 = distinct !DILexicalBlock(scope: !351, file: !1, line: 106, column: 54)
!360 = distinct !{!360, !358}
!361 = !DILocation(line: 107, column: 5, scope: !362)
!362 = !DILexicalBlockFile(scope: !363, file: !1, discriminator: 1)
!363 = distinct !DILexicalBlock(scope: !359, file: !1, line: 107, column: 5)
!364 = distinct !{!364, !365}
!365 = !DILocation(line: 107, column: 5, scope: !363)
!366 = !DILocation(line: 107, column: 5, scope: !367)
!367 = !DILexicalBlockFile(scope: !368, file: !1, discriminator: 2)
!368 = distinct !DILexicalBlock(scope: !363, file: !1, line: 107, column: 5)
!369 = !DILocation(line: 107, column: 5, scope: !370)
!370 = !DILexicalBlockFile(scope: !363, file: !1, discriminator: 3)
!371 = !DILocation(line: 108, column: 3, scope: !359)
!372 = !DILocation(line: 109, column: 11, scope: !373)
!373 = distinct !DILexicalBlock(scope: !351, file: !1, line: 109, column: 11)
!374 = !DILocation(line: 109, column: 21, scope: !373)
!375 = !DILocation(line: 109, column: 37, scope: !373)
!376 = !DILocation(line: 109, column: 40, scope: !377)
!377 = !DILexicalBlockFile(scope: !373, file: !1, discriminator: 1)
!378 = !DILocation(line: 109, column: 50, scope: !377)
!379 = !DILocation(line: 109, column: 11, scope: !377)
!380 = !DILocation(line: 110, column: 5, scope: !381)
!381 = distinct !DILexicalBlock(scope: !373, file: !1, line: 109, column: 67)
!382 = distinct !{!382, !380}
!383 = !DILocation(line: 110, column: 5, scope: !384)
!384 = !DILexicalBlockFile(scope: !385, file: !1, discriminator: 1)
!385 = distinct !DILexicalBlock(scope: !381, file: !1, line: 110, column: 5)
!386 = distinct !{!386, !387}
!387 = !DILocation(line: 110, column: 5, scope: !385)
!388 = !DILocation(line: 110, column: 5, scope: !389)
!389 = !DILexicalBlockFile(scope: !390, file: !1, discriminator: 2)
!390 = distinct !DILexicalBlock(scope: !385, file: !1, line: 110, column: 5)
!391 = !DILocation(line: 110, column: 5, scope: !392)
!392 = !DILexicalBlockFile(scope: !385, file: !1, discriminator: 3)
!393 = !DILocation(line: 111, column: 3, scope: !381)
!394 = !DILocation(line: 112, column: 11, scope: !395)
!395 = distinct !DILexicalBlock(scope: !373, file: !1, line: 112, column: 11)
!396 = !DILocation(line: 112, column: 21, scope: !395)
!397 = !DILocation(line: 112, column: 36, scope: !395)
!398 = !DILocation(line: 112, column: 39, scope: !399)
!399 = !DILexicalBlockFile(scope: !395, file: !1, discriminator: 1)
!400 = !DILocation(line: 112, column: 49, scope: !399)
!401 = !DILocation(line: 112, column: 11, scope: !399)
!402 = !DILocation(line: 113, column: 5, scope: !403)
!403 = distinct !DILexicalBlock(scope: !395, file: !1, line: 112, column: 65)
!404 = distinct !{!404, !402}
!405 = !DILocation(line: 113, column: 5, scope: !406)
!406 = !DILexicalBlockFile(scope: !407, file: !1, discriminator: 1)
!407 = distinct !DILexicalBlock(scope: !403, file: !1, line: 113, column: 5)
!408 = distinct !{!408, !409}
!409 = !DILocation(line: 113, column: 5, scope: !407)
!410 = !DILocation(line: 113, column: 5, scope: !411)
!411 = !DILexicalBlockFile(scope: !412, file: !1, discriminator: 2)
!412 = distinct !DILexicalBlock(scope: !407, file: !1, line: 113, column: 5)
!413 = !DILocation(line: 113, column: 5, scope: !414)
!414 = !DILexicalBlockFile(scope: !407, file: !1, discriminator: 3)
!415 = !DILocation(line: 114, column: 3, scope: !403)
!416 = !DILocation(line: 116, column: 37, scope: !417)
!417 = distinct !DILexicalBlock(scope: !395, file: !1, line: 115, column: 8)
!418 = !DILocation(line: 116, column: 53, scope: !417)
!419 = !DILocation(line: 116, column: 41, scope: !417)
!420 = !DILocation(line: 116, column: 24, scope: !417)
!421 = !DILocation(line: 116, column: 5, scope: !417)
!422 = !DILocation(line: 116, column: 13, scope: !417)
!423 = !DILocation(line: 116, column: 18, scope: !417)
!424 = !DILocation(line: 117, column: 37, scope: !417)
!425 = !DILocation(line: 117, column: 53, scope: !417)
!426 = !DILocation(line: 117, column: 41, scope: !417)
!427 = !DILocation(line: 117, column: 24, scope: !417)
!428 = !DILocation(line: 117, column: 5, scope: !417)
!429 = !DILocation(line: 117, column: 13, scope: !417)
!430 = !DILocation(line: 117, column: 18, scope: !417)
!431 = !DILocation(line: 118, column: 49, scope: !417)
!432 = !DILocation(line: 118, column: 57, scope: !417)
!433 = !DILocation(line: 118, column: 44, scope: !417)
!434 = !DILocation(line: 118, column: 42, scope: !417)
!435 = !DILocation(line: 118, column: 5, scope: !417)
!436 = !DILocation(line: 118, column: 13, scope: !417)
!437 = !DILocation(line: 118, column: 17, scope: !417)
!438 = !DILocation(line: 119, column: 5, scope: !417)
!439 = !DILocation(line: 121, column: 1, scope: !333)
!440 = distinct !DISubprogram(name: "gsl_sf_Shi", scope: !1, file: !1, line: 127, type: !441, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !74)
!441 = !DISubroutineType(types: !442)
!442 = !{!49, !66}
!443 = !DILocalVariable(name: "x", arg: 1, scope: !440, file: !1, line: 127, type: !66)
!444 = !DILocation(line: 127, column: 32, scope: !440)
!445 = !DILocalVariable(name: "result", scope: !440, file: !1, line: 129, type: !68)
!446 = !DILocation(line: 129, column: 3, scope: !440)
!447 = !DILocalVariable(name: "status", scope: !440, file: !1, line: 129, type: !51)
!448 = !DILocation(line: 129, column: 3, scope: !449)
!449 = distinct !DILexicalBlock(scope: !440, file: !1, line: 129, column: 3)
!450 = !DILocation(line: 129, column: 3, scope: !451)
!451 = !DILexicalBlockFile(scope: !452, file: !1, discriminator: 1)
!452 = distinct !DILexicalBlock(scope: !449, file: !1, line: 129, column: 3)
!453 = distinct !{!453, !454}
!454 = !DILocation(line: 129, column: 3, scope: !452)
!455 = !DILocation(line: 129, column: 3, scope: !456)
!456 = !DILexicalBlockFile(scope: !457, file: !1, discriminator: 2)
!457 = distinct !DILexicalBlock(scope: !452, file: !1, line: 129, column: 3)
!458 = !DILocation(line: 129, column: 3, scope: !459)
!459 = !DILexicalBlockFile(scope: !452, file: !1, discriminator: 3)
!460 = !DILocation(line: 129, column: 3, scope: !461)
!461 = !DILexicalBlockFile(scope: !440, file: !1, discriminator: 4)
!462 = !DILocation(line: 130, column: 1, scope: !440)
!463 = distinct !DISubprogram(name: "gsl_sf_Chi", scope: !1, file: !1, line: 132, type: !441, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !74)
!464 = !DILocalVariable(name: "x", arg: 1, scope: !463, file: !1, line: 132, type: !66)
!465 = !DILocation(line: 132, column: 32, scope: !463)
!466 = !DILocalVariable(name: "result", scope: !463, file: !1, line: 134, type: !68)
!467 = !DILocation(line: 134, column: 3, scope: !463)
!468 = !DILocalVariable(name: "status", scope: !463, file: !1, line: 134, type: !51)
!469 = !DILocation(line: 134, column: 3, scope: !470)
!470 = distinct !DILexicalBlock(scope: !463, file: !1, line: 134, column: 3)
!471 = !DILocation(line: 134, column: 3, scope: !472)
!472 = !DILexicalBlockFile(scope: !473, file: !1, discriminator: 1)
!473 = distinct !DILexicalBlock(scope: !470, file: !1, line: 134, column: 3)
!474 = distinct !{!474, !475}
!475 = !DILocation(line: 134, column: 3, scope: !473)
!476 = !DILocation(line: 134, column: 3, scope: !477)
!477 = !DILexicalBlockFile(scope: !478, file: !1, discriminator: 2)
!478 = distinct !DILexicalBlock(scope: !473, file: !1, line: 134, column: 3)
!479 = !DILocation(line: 134, column: 3, scope: !480)
!480 = !DILexicalBlockFile(scope: !473, file: !1, discriminator: 3)
!481 = !DILocation(line: 134, column: 3, scope: !482)
!482 = !DILexicalBlockFile(scope: !463, file: !1, discriminator: 4)
!483 = !DILocation(line: 135, column: 1, scope: !463)
