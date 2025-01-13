; ModuleID = 'poch.ll'
source_filename = "poch.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsl_sf_result_struct = type { double, double }

@.str = private unnamed_addr constant [13 x i8] c"domain error\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"poch.c\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"overflow\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"gsl_sf_lnpoch_e(a, x, &result)\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"gsl_sf_poch_e(a, x, &result)\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"gsl_sf_pochrel_e(a, x, &result)\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@bern = internal constant [21 x double] [double 0.000000e+00, double 0x3FB5555555555555, double 0xBF56C16C16C16C17, double 0x3F01566ABC011567, double 0xBEABBD779334EF0B, double 0x3E566A8F2BF70EBE, double 0xBE022805D644267F, double 0x3DAD6DB2C4E09162, double 0xBD57DA4E1F79955C, double 0x3D0355871D652E9E, double 0xBCAF57D968CAACF1, double 0x3C5967E1F09C376F, double 0xBC0497D9033A2B5C, double 0x3BB0B132D7C6AD06, double 0xBB5B0F72D59F1C16, double 0x3B05EF2DA4CCA26D, double 0xBAE6394CAA612629, double 0x3A5CD299DE521B62, double 0xBA075CDE656574A7, double 0x39B2EFE8DB3B4ADF, double 0xB95EB322904761FF], align 16
@0 = private unnamed_addr constant [16 x i8] c"gsl_sf_lnpoch_e\00"
@1 = private unnamed_addr constant [8 x i8] c"poch.ll\00"
@2 = private unnamed_addr constant [11 x i8] c"lnpoch_pos\00"
@3 = private unnamed_addr constant [8 x i8] c"poch.ll\00"
@4 = private unnamed_addr constant [20 x i8] c"gsl_sf_lnpoch_sgn_e\00"
@5 = private unnamed_addr constant [8 x i8] c"poch.ll\00"
@6 = private unnamed_addr constant [14 x i8] c"gsl_sf_poch_e\00"
@7 = private unnamed_addr constant [8 x i8] c"poch.ll\00"
@8 = private unnamed_addr constant [17 x i8] c"gsl_sf_pochrel_e\00"
@9 = private unnamed_addr constant [8 x i8] c"poch.ll\00"
@10 = private unnamed_addr constant [15 x i8] c"pochrel_smallx\00"
@11 = private unnamed_addr constant [8 x i8] c"poch.ll\00"
@12 = private unnamed_addr constant [14 x i8] c"gsl_sf_lnpoch\00"
@13 = private unnamed_addr constant [8 x i8] c"poch.ll\00"
@14 = private unnamed_addr constant [12 x i8] c"gsl_sf_poch\00"
@15 = private unnamed_addr constant [8 x i8] c"poch.ll\00"
@16 = private unnamed_addr constant [15 x i8] c"gsl_sf_pochrel\00"
@17 = private unnamed_addr constant [8 x i8] c"poch.ll\00"

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_lnpoch_e(double, double, %struct.gsl_sf_result_struct*) #0 !dbg !54 {
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca %struct.gsl_sf_result_struct*, align 8
  store double %0, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !65, metadata !66), !dbg !67
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !68, metadata !66), !dbg !69
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %7, metadata !70, metadata !66), !dbg !71
  %8 = load double, double* %5, align 8, !dbg !72
  %9 = fcmp ole double %8, 0.000000e+00, !dbg !74
  %10 = call i1 @fCmpInstHandler(double %8, double 0.000000e+00, i1 %9, i32 5, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 94646999360896, i32 286, i32 8), !dbg !75
  br i1 %10, label %17, label %11, !dbg !75

; <label>:11:                                     ; preds = %3
  %12 = load double, double* %5, align 8, !dbg !76
  %13 = load double, double* %6, align 8, !dbg !78
  %14 = fadd double %12, %13, !dbg !79
  call void @fAddHandler(double %12, double %13, double %14, i64 94646999361928, i64 94646999362248, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 94646999362656, i32 286, i32 19), !dbg !80
  %15 = fcmp ole double %14, 0.000000e+00, !dbg !80
  %16 = call i1 @fCmpInstHandler(double %14, double 0.000000e+00, i1 %15, i32 5, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 94646999363072, i32 286, i32 22), !dbg !81
  br i1 %16, label %17, label %26, !dbg !81

; <label>:17:                                     ; preds = %11, %3
  br label %18, !dbg !82, !llvm.loop !84

; <label>:18:                                     ; preds = %17
  %19 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !85
  %20 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %19, i32 0, i32 0, !dbg !85
  store double 0x7FF8000000000000, double* %20, align 8, !dbg !85
  %21 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !85
  %22 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %21, i32 0, i32 1, !dbg !85
  store double 0x7FF8000000000000, double* %22, align 8, !dbg !85
  br label %23, !dbg !85, !llvm.loop !88

; <label>:23:                                     ; preds = %18
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 287, i32 1), !dbg !90
  store i32 1, i32* %4, align 4, !dbg !90
  br label %40, !dbg !90
                                                  ; No predecessors!
  br label %25, !dbg !93

; <label>:25:                                     ; preds = %24
  br label %40, !dbg !95

; <label>:26:                                     ; preds = %11
  %27 = load double, double* %6, align 8, !dbg !96
  %28 = fcmp oeq double %27, 0.000000e+00, !dbg !98
  %29 = call i1 @fCmpInstHandler(double %27, double 0.000000e+00, i1 %28, i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 94646999376928, i32 289, i32 13), !dbg !99
  br i1 %29, label %30, label %35, !dbg !99

; <label>:30:                                     ; preds = %26
  %31 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !100
  %32 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %31, i32 0, i32 0, !dbg !102
  store double 0.000000e+00, double* %32, align 8, !dbg !103
  %33 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !104
  %34 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %33, i32 0, i32 1, !dbg !105
  store double 0.000000e+00, double* %34, align 8, !dbg !106
  store i32 0, i32* %4, align 4, !dbg !107
  br label %40, !dbg !107

; <label>:35:                                     ; preds = %26
  %36 = load double, double* %5, align 8, !dbg !108
  %37 = load double, double* %6, align 8, !dbg !110
  %38 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !111
  %39 = call i32 @lnpoch_pos(double %36, double %37, %struct.gsl_sf_result_struct* %38), !dbg !112
  store i32 %39, i32* %4, align 4, !dbg !113
  br label %40, !dbg !113

; <label>:40:                                     ; preds = %35, %30, %25, %23
  %41 = load i32, i32* %4, align 4, !dbg !114
  ret i32 %41, !dbg !114
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @gsl_error(i8*, i8*, i32, i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @lnpoch_pos(double, double, %struct.gsl_sf_result_struct*) #0 !dbg !115 {
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca %struct.gsl_sf_result_struct*, align 8
  %8 = alloca double, align 8
  %9 = alloca %struct.gsl_sf_result_struct, align 8
  %10 = alloca %struct.gsl_sf_result_struct, align 8
  %11 = alloca %struct.gsl_sf_result_struct, align 8
  %12 = alloca %struct.gsl_sf_result_struct, align 8
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
  %34 = alloca %struct.gsl_sf_result_struct, align 8
  %35 = alloca %struct.gsl_sf_result_struct, align 8
  %36 = alloca i32, align 4
  %37 = alloca double, align 8
  %38 = alloca i32, align 4
  store double %0, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !116, metadata !66), !dbg !117
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !118, metadata !66), !dbg !119
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %7, metadata !120, metadata !66), !dbg !121
  call void @llvm.dbg.declare(metadata double* %8, metadata !122, metadata !66), !dbg !123
  %39 = load double, double* %6, align 8, !dbg !124
  %40 = call double @fabs(double %39) #1, !dbg !125
  store double %40, double* %8, align 8, !dbg !123
  %41 = load double, double* %8, align 8, !dbg !126
  %42 = load double, double* %5, align 8, !dbg !128
  %43 = fmul double 1.000000e-01, %42, !dbg !129
  call void @fMulHandler(double 1.000000e-01, double %42, double %43, i64 0, i64 94646999402456, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94646999402960, i32 194, i32 16), !dbg !130
  %44 = fcmp ogt double %41, %43, !dbg !130
  %45 = call i1 @fCmpInstHandler(double %41, double %43, i1 %44, i32 2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94646999403344, i32 194, i32 11), !dbg !131
  br i1 %45, label %54, label %46, !dbg !131

; <label>:46:                                     ; preds = %3
  %47 = load double, double* %8, align 8, !dbg !132
  %48 = load double, double* %5, align 8, !dbg !134
  %49 = call double @GSL_MAX_DBL(double %48, double 2.000000e+00), !dbg !135
  %50 = call double @log(double %49) #5, !dbg !136
  call void @callOneArgHandler(i32 12, double %49, double %50, i64 94646999405656, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94646999406480, i32 194, i32 27), !dbg !138
  %51 = fmul double %47, %50, !dbg !138
  call void @fMulHandler(double %47, double %50, double %51, i64 94646999404456, i64 94646999406480, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94646999406992, i32 194, i32 26), !dbg !139
  %52 = fcmp ogt double %51, 1.000000e-01, !dbg !139
  %53 = call i1 @fCmpInstHandler(double %51, double 1.000000e-01, i1 %52, i32 2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94646999407440, i32 194, i32 51), !dbg !140
  br i1 %53, label %54, label %152, !dbg !140

; <label>:54:                                     ; preds = %46, %3
  %55 = load double, double* %5, align 8, !dbg !141
  %56 = fcmp olt double %55, 1.710000e+02, !dbg !144
  %57 = call i1 @fCmpInstHandler(double %55, double 1.710000e+02, i1 %56, i32 4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94646999408816, i32 195, i32 10), !dbg !145
  br i1 %57, label %58, label %104, !dbg !145

; <label>:58:                                     ; preds = %54
  %59 = load double, double* %5, align 8, !dbg !146
  %60 = load double, double* %6, align 8, !dbg !148
  %61 = fadd double %59, %60, !dbg !149
  call void @fAddHandler(double %59, double %60, double %61, i64 94646999409896, i64 94646999410216, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94646999410624, i32 195, i32 34), !dbg !150
  %62 = fcmp olt double %61, 1.710000e+02, !dbg !150
  %63 = call i1 @fCmpInstHandler(double %61, double 1.710000e+02, i1 %62, i32 4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94646999411072, i32 195, i32 37), !dbg !151
  br i1 %63, label %64, label %104, !dbg !151

; <label>:64:                                     ; preds = %58
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %9, metadata !152, metadata !66), !dbg !154
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %10, metadata !155, metadata !66), !dbg !156
  %65 = load double, double* %5, align 8, !dbg !157
  %66 = call i32 @gsl_sf_gammainv_e(double %65, %struct.gsl_sf_result_struct* %9), !dbg !158
  %67 = load double, double* %5, align 8, !dbg !159
  %68 = load double, double* %6, align 8, !dbg !160
  %69 = fadd double %67, %68, !dbg !161
  call void @fAddHandler(double %67, double %68, double %69, i64 94646999415480, i64 94646999415864, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94646999417312, i32 203, i32 26), !dbg !162
  %70 = call i32 @gsl_sf_gammainv_e(double %69, %struct.gsl_sf_result_struct* %10), !dbg !162
  %71 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !163
  %72 = load double, double* %71, align 8, !dbg !163
  %73 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %9, i32 0, i32 0, !dbg !164
  %74 = load double, double* %73, align 8, !dbg !164
  %75 = fdiv double %72, %74, !dbg !165
  call void @fDivHandler(double %72, double %74, double %75, i64 94646999418680, i64 94646999420776, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94646999422448, i32 204, i32 33), !dbg !166
  %76 = call double @log(double %75) #5, !dbg !166
  call void @callOneArgHandler(i32 12, double %75, double %76, i64 94646999422448, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94646999422928, i32 204, i32 23), !dbg !167
  %77 = fsub double -0.000000e+00, %76, !dbg !167
  call void @fSubHandler(double -0.000000e+00, double %76, double %77, i64 0, i64 94646999422928, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94646999423472, i32 204, i32 22), !dbg !168
  %78 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !168
  %79 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %78, i32 0, i32 0, !dbg !169
  store double %77, double* %79, align 8, !dbg !170
  %80 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %9, i32 0, i32 1, !dbg !171
  %81 = load double, double* %80, align 8, !dbg !171
  %82 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %9, i32 0, i32 0, !dbg !172
  %83 = load double, double* %82, align 8, !dbg !172
  %84 = call double @fabs(double %83) #1, !dbg !173
  %85 = fdiv double %81, %84, !dbg !174
  call void @fDivHandler(double %81, double %84, double %85, i64 94646999425560, i64 94646999429392, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94646999429872, i32 205, i32 28), !dbg !175
  %86 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 1, !dbg !175
  %87 = load double, double* %86, align 8, !dbg !175
  %88 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !176
  %89 = load double, double* %88, align 8, !dbg !176
  %90 = call double @fabs(double %89) #1, !dbg !177
  %91 = fdiv double %87, %90, !dbg !179
  call void @fDivHandler(double %87, double %90, double %91, i64 94646999430712, i64 94646999434544, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94646999435024, i32 205, i32 50), !dbg !180
  %92 = fadd double %85, %91, !dbg !180
  call void @fAddHandler(double %85, double %91, double %92, i64 94646999429872, i64 94646999435024, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94646999435440, i32 205, i32 42), !dbg !181
  %93 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !181
  %94 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %93, i32 0, i32 1, !dbg !182
  store double %92, double* %94, align 8, !dbg !183
  %95 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !184
  %96 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %95, i32 0, i32 0, !dbg !185
  %97 = load double, double* %96, align 8, !dbg !185
  %98 = call double @fabs(double %97) #1, !dbg !186
  %99 = fmul double 0x3CC0000000000000, %98, !dbg !187
  call void @fMulHandler(double 0x3CC0000000000000, double %98, double %99, i64 0, i64 94646999439648, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94646999440192, i32 206, i32 44), !dbg !188
  %100 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !188
  %101 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %100, i32 0, i32 1, !dbg !189
  %102 = load double, double* %101, align 8, !dbg !190
  %103 = fadd double %102, %99, !dbg !190
  call void @fAddHandler(double %102, double %99, double %103, i64 94646999441416, i64 94646999440192, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94646999441824, i32 206, i32 19), !dbg !190
  store double %103, double* %101, align 8, !dbg !190
  store i32 0, i32* %4, align 4, !dbg !191
  br label %409, !dbg !191

; <label>:104:                                    ; preds = %58, %54
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %11, metadata !192, metadata !66), !dbg !194
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %12, metadata !195, metadata !66), !dbg !196
  call void @llvm.dbg.declare(metadata i32* %13, metadata !197, metadata !66), !dbg !198
  %105 = load double, double* %5, align 8, !dbg !199
  %106 = call i32 @gsl_sf_lngamma_e(double %105, %struct.gsl_sf_result_struct* %11), !dbg !200
  store i32 %106, i32* %13, align 4, !dbg !198
  call void @llvm.dbg.declare(metadata i32* %14, metadata !201, metadata !66), !dbg !202
  %107 = load double, double* %5, align 8, !dbg !203
  %108 = load double, double* %6, align 8, !dbg !204
  %109 = fadd double %107, %108, !dbg !205
  call void @fAddHandler(double %107, double %108, double %109, i64 94646999453176, i64 94646999453528, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94646999453936, i32 215, i32 38), !dbg !206
  %110 = call i32 @gsl_sf_lngamma_e(double %109, %struct.gsl_sf_result_struct* %12), !dbg !206
  store i32 %110, i32* %14, align 4, !dbg !202
  %111 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %12, i32 0, i32 0, !dbg !207
  %112 = load double, double* %111, align 8, !dbg !207
  %113 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 0, !dbg !208
  %114 = load double, double* %113, align 8, !dbg !208
  %115 = fsub double %112, %114, !dbg !209
  call void @fSubHandler(double %112, double %114, double %115, i64 94646999456984, i64 94646999459080, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94646999460752, i32 216, i32 30), !dbg !210
  %116 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !210
  %117 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %116, i32 0, i32 0, !dbg !211
  store double %115, double* %117, align 8, !dbg !212
  %118 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %12, i32 0, i32 1, !dbg !213
  %119 = load double, double* %118, align 8, !dbg !213
  %120 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 1, !dbg !214
  %121 = load double, double* %120, align 8, !dbg !214
  %122 = fadd double %119, %121, !dbg !215
  call void @fAddHandler(double %119, double %121, double %122, i64 94646999462840, i64 94646999464936, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94646999466608, i32 217, i32 30), !dbg !216
  %123 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !216
  %124 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %123, i32 0, i32 1, !dbg !217
  store double %122, double* %124, align 8, !dbg !218
  %125 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !219
  %126 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %125, i32 0, i32 0, !dbg !220
  %127 = load double, double* %126, align 8, !dbg !220
  %128 = call double @fabs(double %127) #1, !dbg !221
  %129 = fmul double 0x3CC0000000000000, %128, !dbg !222
  call void @fMulHandler(double 0x3CC0000000000000, double %128, double %129, i64 0, i64 94646999470816, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94646999471296, i32 218, i32 44), !dbg !223
  %130 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !223
  %131 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %130, i32 0, i32 1, !dbg !224
  %132 = load double, double* %131, align 8, !dbg !225
  %133 = fadd double %132, %129, !dbg !225
  call void @fAddHandler(double %132, double %129, double %133, i64 94646999472520, i64 94646999471296, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94646999474992, i32 218, i32 19), !dbg !225
  store double %133, double* %131, align 8, !dbg !225
  %134 = load i32, i32* %13, align 4, !dbg !226
  %135 = icmp ne i32 %134, 0, !dbg !226
  %136 = sext i32 %134 to i64, !dbg !226
  %137 = call i1 @iCmpInstHandler(i64 %136, i64 0, i1 %135, i32 33, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94646999477184, i32 219, i32 14), !dbg !226
  br i1 %137, label %138, label %140, !dbg !226

; <label>:138:                                    ; preds = %104
  %139 = load i32, i32* %13, align 4, !dbg !227
  br label %150, !dbg !227

; <label>:140:                                    ; preds = %104
  %141 = load i32, i32* %14, align 4, !dbg !229
  %142 = icmp ne i32 %141, 0, !dbg !229
  %143 = sext i32 %141 to i64, !dbg !229
  %144 = call i1 @iCmpInstHandler(i64 %143, i64 0, i1 %142, i32 33, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94646999481728, i32 219, i32 14), !dbg !229
  br i1 %144, label %145, label %147, !dbg !229

; <label>:145:                                    ; preds = %140
  %146 = load i32, i32* %14, align 4, !dbg !231
  br label %148, !dbg !231

; <label>:147:                                    ; preds = %140
  br label %148, !dbg !233

; <label>:148:                                    ; preds = %147, %145
  %149 = phi i32 [ %146, %145 ], [ 0, %147 ], !dbg !235
  br label %150, !dbg !235

; <label>:150:                                    ; preds = %148, %138
  %151 = phi i32 [ %139, %138 ], [ %149, %148 ], !dbg !237
  store i32 %151, i32* %4, align 4, !dbg !239
  br label %409, !dbg !239

; <label>:152:                                    ; preds = %46
  %153 = load double, double* %8, align 8, !dbg !240
  %154 = load double, double* %5, align 8, !dbg !242
  %155 = fmul double 1.000000e-01, %154, !dbg !243
  call void @fMulHandler(double 1.000000e-01, double %154, double %155, i64 0, i64 94646999491080, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94646999491520, i32 222, i32 21), !dbg !244
  %156 = fcmp olt double %153, %155, !dbg !244
  %157 = call i1 @fCmpInstHandler(double %153, double %155, i1 %156, i32 4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94646999491904, i32 222, i32 16), !dbg !245
  br i1 %157, label %158, label %360, !dbg !245

; <label>:158:                                    ; preds = %152
  %159 = load double, double* %5, align 8, !dbg !246
  %160 = fcmp ogt double %159, 1.500000e+01, !dbg !248
  %161 = call i1 @fCmpInstHandler(double %159, double 1.500000e+01, i1 %160, i32 2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94646999493456, i32 222, i32 29), !dbg !249
  br i1 %161, label %162, label %360, !dbg !249

; <label>:162:                                    ; preds = %158
  call void @llvm.dbg.declare(metadata double* %15, metadata !250, metadata !66), !dbg !252
  %163 = load double, double* %6, align 8, !dbg !253
  %164 = load double, double* %5, align 8, !dbg !254
  %165 = fdiv double %163, %164, !dbg !255
  call void @fDivHandler(double %163, double %164, double %165, i64 94646999495448, i64 94646999495800, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94646999496208, i32 236, i32 25), !dbg !252
  store double %165, double* %15, align 8, !dbg !252
  call void @llvm.dbg.declare(metadata double* %16, metadata !256, metadata !66), !dbg !257
  %166 = load double, double* %15, align 8, !dbg !258
  %167 = fadd double 1.000000e+00, %166, !dbg !259
  call void @fAddHandler(double 1.000000e+00, double %166, double %167, i64 0, i64 94646999499400, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94646999499872, i32 237, i32 28), !dbg !257
  store double %167, double* %16, align 8, !dbg !257
  call void @llvm.dbg.declare(metadata double* %17, metadata !260, metadata !66), !dbg !261
  %168 = load double, double* %16, align 8, !dbg !262
  %169 = load double, double* %16, align 8, !dbg !263
  %170 = fmul double %168, %169, !dbg !264
  call void @fMulHandler(double %168, double %169, double %170, i64 94646999503032, i64 94646999503384, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94646999503792, i32 238, i32 26), !dbg !265
  %171 = load double, double* %16, align 8, !dbg !265
  %172 = fmul double %170, %171, !dbg !266
  call void @fMulHandler(double %170, double %171, double %172, i64 94646999503792, i64 94646999504184, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94646999504592, i32 238, i32 30), !dbg !261
  store double %172, double* %17, align 8, !dbg !261
  call void @llvm.dbg.declare(metadata double* %18, metadata !267, metadata !66), !dbg !268
  %173 = load double, double* %17, align 8, !dbg !269
  %174 = load double, double* %16, align 8, !dbg !270
  %175 = fmul double %173, %174, !dbg !271
  call void @fMulHandler(double %173, double %174, double %175, i64 94646999507784, i64 94646999508136, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94646999508544, i32 239, i32 25), !dbg !272
  %176 = load double, double* %16, align 8, !dbg !272
  %177 = fmul double %175, %176, !dbg !273
  call void @fMulHandler(double %175, double %176, double %177, i64 94646999508544, i64 94646999508936, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94646999509344, i32 239, i32 29), !dbg !268
  store double %177, double* %18, align 8, !dbg !268
  call void @llvm.dbg.declare(metadata double* %19, metadata !274, metadata !66), !dbg !275
  %178 = load double, double* %18, align 8, !dbg !276
  %179 = load double, double* %16, align 8, !dbg !277
  %180 = fmul double %178, %179, !dbg !278
  call void @fMulHandler(double %178, double %179, double %180, i64 94646999512536, i64 94646999512888, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94646999513296, i32 240, i32 25), !dbg !279
  %181 = load double, double* %16, align 8, !dbg !279
  %182 = fmul double %180, %181, !dbg !280
  call void @fMulHandler(double %180, double %181, double %182, i64 94646999513296, i64 94646999513688, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94646999514096, i32 240, i32 29), !dbg !275
  store double %182, double* %19, align 8, !dbg !275
  call void @llvm.dbg.declare(metadata double* %20, metadata !281, metadata !66), !dbg !282
  %183 = load double, double* %15, align 8, !dbg !283
  %184 = fsub double -0.000000e+00, %183, !dbg !284
  call void @fSubHandler(double -0.000000e+00, double %183, double %184, i64 0, i64 94646999517288, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94646999517664, i32 241, i32 23), !dbg !285
  %185 = load double, double* %16, align 8, !dbg !285
  %186 = fdiv double %184, %185, !dbg !286
  call void @fDivHandler(double %184, double %185, double %186, i64 94646999517664, i64 94646999518056, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94646999518464, i32 241, i32 27), !dbg !282
  store double %186, double* %20, align 8, !dbg !282
  call void @llvm.dbg.declare(metadata double* %21, metadata !287, metadata !66), !dbg !288
  %187 = load double, double* %15, align 8, !dbg !289
  %188 = fsub double -0.000000e+00, %187, !dbg !290
  call void @fSubHandler(double -0.000000e+00, double %187, double %188, i64 0, i64 94646999521656, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94646999522032, i32 242, i32 23), !dbg !291
  %189 = load double, double* %15, align 8, !dbg !291
  %190 = load double, double* %15, align 8, !dbg !292
  %191 = fadd double 3.000000e+00, %190, !dbg !293
  call void @fAddHandler(double 3.000000e+00, double %190, double %191, i64 0, i64 94646999522808, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94646999523312, i32 242, i32 41), !dbg !294
  %192 = fmul double %189, %191, !dbg !294
  call void @fMulHandler(double %189, double %191, double %192, i64 94646999522424, i64 94646999523312, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94646999523696, i32 242, i32 36), !dbg !295
  %193 = fadd double 3.000000e+00, %192, !dbg !295
  call void @fAddHandler(double 3.000000e+00, double %192, double %193, i64 0, i64 94646999523696, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94646999524144, i32 242, i32 32), !dbg !296
  %194 = fmul double %188, %193, !dbg !296
  call void @fMulHandler(double %188, double %193, double %194, i64 94646999522032, i64 94646999524144, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94646999524528, i32 242, i32 27), !dbg !297
  %195 = load double, double* %17, align 8, !dbg !297
  %196 = fdiv double %194, %195, !dbg !298
  call void @fDivHandler(double %194, double %195, double %196, i64 94646999524528, i64 94646999524920, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94646999525328, i32 242, i32 47), !dbg !288
  store double %196, double* %21, align 8, !dbg !288
  call void @llvm.dbg.declare(metadata double* %22, metadata !299, metadata !66), !dbg !300
  %197 = load double, double* %15, align 8, !dbg !301
  %198 = fsub double -0.000000e+00, %197, !dbg !302
  call void @fSubHandler(double -0.000000e+00, double %197, double %198, i64 0, i64 94646999528520, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94646999528896, i32 243, i32 23), !dbg !303
  %199 = load double, double* %15, align 8, !dbg !303
  %200 = load double, double* %15, align 8, !dbg !304
  %201 = load double, double* %15, align 8, !dbg !305
  %202 = load double, double* %15, align 8, !dbg !306
  %203 = fadd double 5.000000e+00, %202, !dbg !307
  call void @fAddHandler(double 5.000000e+00, double %202, double %203, i64 0, i64 94646999530440, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94646999530944, i32 243, i32 61), !dbg !308
  %204 = fmul double %201, %203, !dbg !308
  call void @fMulHandler(double %201, double %203, double %204, i64 94646999530056, i64 94646999530944, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94646999531328, i32 243, i32 56), !dbg !309
  %205 = fadd double 1.000000e+01, %204, !dbg !309
  call void @fAddHandler(double 1.000000e+01, double %204, double %205, i64 0, i64 94646999531328, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94646999531840, i32 243, i32 52), !dbg !310
  %206 = fmul double %200, %205, !dbg !310
  call void @fMulHandler(double %200, double %205, double %206, i64 94646999529672, i64 94646999531840, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94646999532224, i32 243, i32 46), !dbg !311
  %207 = fadd double 1.000000e+01, %206, !dbg !311
  call void @fAddHandler(double 1.000000e+01, double %206, double %207, i64 0, i64 94646999532224, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94646999532672, i32 243, i32 42), !dbg !312
  %208 = fmul double %199, %207, !dbg !312
  call void @fMulHandler(double %199, double %207, double %208, i64 94646999529288, i64 94646999532672, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94646999533056, i32 243, i32 36), !dbg !313
  %209 = fadd double 5.000000e+00, %208, !dbg !313
  call void @fAddHandler(double 5.000000e+00, double %208, double %209, i64 0, i64 94646999533056, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94646999533504, i32 243, i32 32), !dbg !314
  %210 = fmul double %198, %209, !dbg !314
  call void @fMulHandler(double %198, double %209, double %210, i64 94646999528896, i64 94646999533504, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94646999533888, i32 243, i32 27), !dbg !315
  %211 = load double, double* %18, align 8, !dbg !315
  %212 = fdiv double %210, %211, !dbg !316
  call void @fDivHandler(double %210, double %211, double %212, i64 94646999533888, i64 94646999534280, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94646999534688, i32 243, i32 69), !dbg !300
  store double %212, double* %22, align 8, !dbg !300
  call void @llvm.dbg.declare(metadata double* %23, metadata !317, metadata !66), !dbg !318
  %213 = load double, double* %15, align 8, !dbg !319
  %214 = fsub double -0.000000e+00, %213, !dbg !320
  call void @fSubHandler(double -0.000000e+00, double %213, double %214, i64 0, i64 94646999537880, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94646999538256, i32 244, i32 23), !dbg !321
  %215 = load double, double* %15, align 8, !dbg !321
  %216 = load double, double* %15, align 8, !dbg !322
  %217 = load double, double* %15, align 8, !dbg !323
  %218 = load double, double* %15, align 8, !dbg !324
  %219 = load double, double* %15, align 8, !dbg !325
  %220 = load double, double* %15, align 8, !dbg !326
  %221 = fadd double 7.000000e+00, %220, !dbg !327
  call void @fAddHandler(double 7.000000e+00, double %220, double %221, i64 0, i64 94646999540568, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94646999541072, i32 244, i32 81), !dbg !328
  %222 = fmul double %219, %221, !dbg !328
  call void @fMulHandler(double %219, double %221, double %222, i64 94646999540184, i64 94646999541072, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94646999541456, i32 244, i32 76), !dbg !329
  %223 = fadd double 2.100000e+01, %222, !dbg !329
  call void @fAddHandler(double 2.100000e+01, double %222, double %223, i64 0, i64 94646999541456, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94646999541968, i32 244, i32 72), !dbg !330
  %224 = fmul double %218, %223, !dbg !330
  call void @fMulHandler(double %218, double %223, double %224, i64 94646999539800, i64 94646999541968, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94646999542352, i32 244, i32 66), !dbg !331
  %225 = fadd double 3.500000e+01, %224, !dbg !331
  call void @fAddHandler(double 3.500000e+01, double %224, double %225, i64 0, i64 94646999542352, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94646999542864, i32 244, i32 62), !dbg !332
  %226 = fmul double %217, %225, !dbg !332
  call void @fMulHandler(double %217, double %225, double %226, i64 94646999539416, i64 94646999542864, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94646999543248, i32 244, i32 56), !dbg !333
  %227 = fadd double 3.500000e+01, %226, !dbg !333
  call void @fAddHandler(double 3.500000e+01, double %226, double %227, i64 0, i64 94646999543248, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94646999543696, i32 244, i32 52), !dbg !334
  %228 = fmul double %216, %227, !dbg !334
  call void @fMulHandler(double %216, double %227, double %228, i64 94646999539032, i64 94646999543696, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94646999544080, i32 244, i32 46), !dbg !335
  %229 = fadd double 2.100000e+01, %228, !dbg !335
  call void @fAddHandler(double 2.100000e+01, double %228, double %229, i64 0, i64 94646999544080, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94646999544528, i32 244, i32 42), !dbg !336
  %230 = fmul double %215, %229, !dbg !336
  call void @fMulHandler(double %215, double %229, double %230, i64 94646999538648, i64 94646999544528, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94646999544912, i32 244, i32 36), !dbg !337
  %231 = fadd double 7.000000e+00, %230, !dbg !337
  call void @fAddHandler(double 7.000000e+00, double %230, double %231, i64 0, i64 94646999544912, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94646999545360, i32 244, i32 32), !dbg !338
  %232 = fmul double %214, %231, !dbg !338
  call void @fMulHandler(double %214, double %231, double %232, i64 94646999538256, i64 94646999545360, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94646999545744, i32 244, i32 27), !dbg !339
  %233 = load double, double* %19, align 8, !dbg !339
  %234 = fdiv double %232, %233, !dbg !340
  call void @fDivHandler(double %232, double %233, double %234, i64 94646999545744, i64 94646999546136, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94646999546544, i32 244, i32 91), !dbg !318
  store double %234, double* %23, align 8, !dbg !318
  call void @llvm.dbg.declare(metadata double* %24, metadata !341, metadata !66), !dbg !342
  %235 = load double, double* %15, align 8, !dbg !343
  %236 = fadd double 1.000000e+00, %235, !dbg !344
  call void @fAddHandler(double 1.000000e+00, double %235, double %236, i64 0, i64 94646999549736, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94646999550144, i32 245, i32 41), !dbg !345
  %237 = call double @gsl_sf_pow_int(double %236, i32 8), !dbg !345
  store double %237, double* %24, align 8, !dbg !342
  call void @llvm.dbg.declare(metadata double* %25, metadata !346, metadata !66), !dbg !347
  %238 = load double, double* %24, align 8, !dbg !348
  %239 = fdiv double 1.000000e+00, %238, !dbg !349
  call void @fDivHandler(double 1.000000e+00, double %238, double %239, i64 0, i64 94646999556328, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94646999556736, i32 246, i32 26), !dbg !350
  %240 = fsub double %239, 1.000000e+00, !dbg !350
  call void @fSubHandler(double %239, double 1.000000e+00, double %240, i64 94646999556736, i64 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94646999557152, i32 246, i32 42), !dbg !347
  store double %240, double* %25, align 8, !dbg !347
  call void @llvm.dbg.declare(metadata double* %26, metadata !351, metadata !66), !dbg !352
  %241 = load double, double* %24, align 8, !dbg !353
  %242 = load double, double* %15, align 8, !dbg !354
  %243 = fadd double 1.000000e+00, %242, !dbg !355
  call void @fAddHandler(double 1.000000e+00, double %242, double %243, i64 0, i64 94646999560664, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94646999561104, i32 247, i32 35), !dbg !356
  %244 = fmul double %241, %243, !dbg !356
  call void @fMulHandler(double %241, double %243, double %244, i64 94646999560312, i64 94646999561104, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94646999561488, i32 247, i32 30), !dbg !357
  %245 = fdiv double 1.000000e+00, %244, !dbg !357
  call void @fDivHandler(double 1.000000e+00, double %244, double %245, i64 0, i64 94646999561488, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94646999561936, i32 247, i32 26), !dbg !358
  %246 = fsub double %245, 1.000000e+00, !dbg !358
  call void @fSubHandler(double %245, double 1.000000e+00, double %246, i64 94646999561936, i64 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94646999562352, i32 247, i32 42), !dbg !352
  store double %246, double* %26, align 8, !dbg !352
  call void @llvm.dbg.declare(metadata double* %27, metadata !359, metadata !66), !dbg !360
  %247 = load double, double* %5, align 8, !dbg !361
  %248 = load double, double* %5, align 8, !dbg !362
  %249 = fmul double %247, %248, !dbg !363
  call void @fMulHandler(double %247, double %248, double %249, i64 94646999565512, i64 94646999565864, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94646999566272, i32 248, i32 24), !dbg !364
  %250 = load double, double* %5, align 8, !dbg !364
  %251 = fmul double %249, %250, !dbg !365
  call void @fMulHandler(double %249, double %250, double %251, i64 94646999566272, i64 94646999566664, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94646999567072, i32 248, i32 26), !dbg !366
  %252 = load double, double* %5, align 8, !dbg !366
  %253 = fmul double %251, %252, !dbg !367
  call void @fMulHandler(double %251, double %252, double %253, i64 94646999567072, i64 94646999567464, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94646999567872, i32 248, i32 28), !dbg !360
  store double %253, double* %27, align 8, !dbg !360
  call void @llvm.dbg.declare(metadata double* %28, metadata !368, metadata !66), !dbg !369
  %254 = load double, double* %27, align 8, !dbg !370
  %255 = load double, double* %5, align 8, !dbg !371
  %256 = fmul double %254, %255, !dbg !372
  call void @fMulHandler(double %254, double %255, double %256, i64 94646999571064, i64 94646999571416, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94646999571824, i32 249, i32 25), !dbg !373
  %257 = load double, double* %5, align 8, !dbg !373
  %258 = fmul double %256, %257, !dbg !374
  call void @fMulHandler(double %256, double %257, double %258, i64 94646999571824, i64 94646999572216, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94646999572624, i32 249, i32 27), !dbg !369
  store double %258, double* %28, align 8, !dbg !369
  call void @llvm.dbg.declare(metadata double* %29, metadata !375, metadata !66), !dbg !376
  %259 = load double, double* %20, align 8, !dbg !377
  %260 = load double, double* %21, align 8, !dbg !378
  %261 = load double, double* %5, align 8, !dbg !379
  %262 = fmul double 3.000000e+01, %261, !dbg !380
  call void @fMulHandler(double 3.000000e+01, double %261, double %262, i64 0, i64 94646999576552, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94646999577056, i32 250, i32 39), !dbg !381
  %263 = load double, double* %5, align 8, !dbg !381
  %264 = fmul double %262, %263, !dbg !382
  call void @fMulHandler(double %262, double %263, double %264, i64 94646999577056, i64 94646999577416, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94646999577824, i32 250, i32 41), !dbg !383
  %265 = fdiv double %260, %264, !dbg !383
  call void @fDivHandler(double %260, double %264, double %265, i64 94646999576168, i64 94646999577824, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94646999578240, i32 250, i32 33), !dbg !384
  %266 = fadd double %259, %265, !dbg !384
  call void @fAddHandler(double %259, double %265, double %266, i64 94646999575816, i64 94646999578240, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94646999578656, i32 250, i32 29), !dbg !385
  %267 = load double, double* %22, align 8, !dbg !385
  %268 = load double, double* %27, align 8, !dbg !386
  %269 = fmul double 1.050000e+02, %268, !dbg !387
  call void @fMulHandler(double 1.050000e+02, double %268, double %269, i64 0, i64 94646999473288, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94646999473792, i32 250, i32 56), !dbg !388
  %270 = fdiv double %267, %269, !dbg !388
  call void @fDivHandler(double %267, double %269, double %270, i64 94646999472904, i64 94646999473792, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94646999474176, i32 250, i32 49), !dbg !389
  %271 = fadd double %266, %270, !dbg !389
  call void @fAddHandler(double %266, double %270, double %271, i64 94646999578656, i64 94646999474176, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94646999474592, i32 250, i32 45), !dbg !390
  %272 = load double, double* %23, align 8, !dbg !390
  %273 = load double, double* %28, align 8, !dbg !391
  %274 = fmul double 1.400000e+02, %273, !dbg !392
  call void @fMulHandler(double 1.400000e+02, double %273, double %274, i64 0, i64 94646999583576, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94646999584080, i32 250, i32 72), !dbg !393
  %275 = fdiv double %272, %274, !dbg !393
  call void @fDivHandler(double %272, double %274, double %275, i64 94646999474856, i64 94646999584080, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94646999584464, i32 250, i32 65), !dbg !394
  %276 = fadd double %271, %275, !dbg !394
  call void @fAddHandler(double %271, double %275, double %276, i64 94646999474592, i64 94646999584464, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94646999584880, i32 250, i32 61), !dbg !376
  store double %276, double* %29, align 8, !dbg !376
  call void @llvm.dbg.declare(metadata double* %30, metadata !395, metadata !66), !dbg !396
  %277 = load double, double* %25, align 8, !dbg !397
  %278 = load double, double* %28, align 8, !dbg !398
  %279 = fmul double 9.900000e+01, %278, !dbg !399
  call void @fMulHandler(double 9.900000e+01, double %278, double %279, i64 0, i64 94646999588424, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94646999588928, i32 251, i32 34), !dbg !400
  %280 = load double, double* %5, align 8, !dbg !400
  %281 = fmul double %279, %280, !dbg !401
  call void @fMulHandler(double %279, double %280, double %281, i64 94646999588928, i64 94646999589288, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94646999589696, i32 251, i32 37), !dbg !402
  %282 = load double, double* %5, align 8, !dbg !402
  %283 = fmul double %281, %282, !dbg !403
  call void @fMulHandler(double %281, double %282, double %283, i64 94646999589696, i64 94646999590088, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94646999590496, i32 251, i32 39), !dbg !404
  %284 = fdiv double %277, %283, !dbg !404
  call void @fDivHandler(double %277, double %283, double %284, i64 94646999588072, i64 94646999590496, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94646999590912, i32 251, i32 28), !dbg !405
  %285 = load double, double* %26, align 8, !dbg !405
  %286 = fmul double 0x3F5F6AB0D9993C7D, %285, !dbg !406
  call void @fMulHandler(double 0x3F5F6AB0D9993C7D, double %285, double %286, i64 0, i64 94646999591304, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94646999591776, i32 251, i32 60), !dbg !407
  %287 = load double, double* %28, align 8, !dbg !407
  %288 = load double, double* %27, align 8, !dbg !408
  %289 = fmul double %287, %288, !dbg !409
  call void @fMulHandler(double %287, double %288, double %289, i64 94646999592168, i64 94646999592552, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94646999592960, i32 251, i32 68), !dbg !410
  %290 = fdiv double %286, %289, !dbg !410
  call void @fDivHandler(double %286, double %289, double %290, i64 94646999591776, i64 94646999592960, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94646999593376, i32 251, i32 64), !dbg !411
  %291 = fsub double %284, %290, !dbg !411
  call void @fSubHandler(double %284, double %290, double %291, i64 94646999590912, i64 94646999593376, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94646999593792, i32 251, i32 43), !dbg !396
  store double %291, double* %30, align 8, !dbg !396
  call void @llvm.dbg.declare(metadata double* %31, metadata !412, metadata !66), !dbg !413
  %292 = load double, double* %29, align 8, !dbg !414
  %293 = load double, double* %30, align 8, !dbg !415
  %294 = fadd double %292, %293, !dbg !416
  call void @fAddHandler(double %292, double %293, double %294, i64 94646999596984, i64 94646999597336, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94646999597744, i32 252, i32 31), !dbg !417
  %295 = load double, double* %5, align 8, !dbg !417
  %296 = fmul double 1.200000e+01, %295, !dbg !418
  call void @fMulHandler(double 1.200000e+01, double %295, double %296, i64 0, i64 94646999598136, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94646999598640, i32 252, i32 46), !dbg !419
  %297 = fdiv double %294, %296, !dbg !419
  call void @fDivHandler(double %294, double %296, double %297, i64 94646999597744, i64 94646999598640, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94646999599024, i32 252, i32 39), !dbg !413
  store double %297, double* %31, align 8, !dbg !413
  call void @llvm.dbg.declare(metadata double* %32, metadata !420, metadata !66), !dbg !421
  %298 = load double, double* %6, align 8, !dbg !422
  %299 = load double, double* %5, align 8, !dbg !423
  %300 = fdiv double %299, 0x4005BF0A8B145769, !dbg !424
  call void @fDivHandler(double %299, double 0x4005BF0A8B145769, double %300, i64 94646999602568, i64 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94646999603040, i32 254, i32 29), !dbg !425
  %301 = call double @log(double %300) #5, !dbg !425
  call void @callOneArgHandler(i32 12, double %300, double %301, i64 94646999603040, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94646999603520, i32 254, i32 24), !dbg !426
  %302 = fmul double %298, %301, !dbg !426
  call void @fMulHandler(double %298, double %301, double %302, i64 94646999602216, i64 94646999603520, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94646999604000, i32 254, i32 22), !dbg !421
  store double %302, double* %32, align 8, !dbg !421
  call void @llvm.dbg.declare(metadata double* %33, metadata !427, metadata !66), !dbg !428
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %34, metadata !429, metadata !66), !dbg !430
  %303 = load double, double* %15, align 8, !dbg !431
  %304 = call i32 @gsl_sf_log_1plusx_e(double %303, %struct.gsl_sf_result_struct* %34), !dbg !432
  %305 = load double, double* %6, align 8, !dbg !433
  %306 = load double, double* %5, align 8, !dbg !434
  %307 = fadd double %305, %306, !dbg !435
  call void @fAddHandler(double %305, double %306, double %307, i64 94646999609512, i64 94646999609896, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94646999610304, i32 258, i32 16), !dbg !436
  %308 = fsub double %307, 5.000000e-01, !dbg !436
  call void @fSubHandler(double %307, double 5.000000e-01, double %308, i64 94646999610304, i64 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94646999610816, i32 258, i32 20), !dbg !437
  %309 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %34, i32 0, i32 0, !dbg !437
  %310 = load double, double* %309, align 8, !dbg !437
  %311 = fmul double %308, %310, !dbg !438
  call void @fMulHandler(double %308, double %310, double %311, i64 94646999610816, i64 94646999611624, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94646999613296, i32 258, i32 27), !dbg !439
  store double %311, double* %33, align 8, !dbg !439
  %312 = load double, double* %32, align 8, !dbg !440
  %313 = load double, double* %33, align 8, !dbg !441
  %314 = fadd double %312, %313, !dbg !442
  call void @fAddHandler(double %312, double %313, double %314, i64 94646999614104, i64 94646999614488, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94646999614896, i32 260, i32 26), !dbg !443
  %315 = load double, double* %31, align 8, !dbg !443
  %316 = fadd double %314, %315, !dbg !444
  call void @fAddHandler(double %314, double %315, double %316, i64 94646999614896, i64 94646999615288, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94646999615696, i32 260, i32 34), !dbg !445
  %317 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !445
  %318 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %317, i32 0, i32 0, !dbg !446
  store double %316, double* %318, align 8, !dbg !447
  %319 = load double, double* %32, align 8, !dbg !448
  %320 = call double @fabs(double %319) #1, !dbg !449
  %321 = fmul double 0x3CB0000000000000, %320, !dbg !450
  call void @fMulHandler(double 0x3CB0000000000000, double %320, double %321, i64 0, i64 94646999617808, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94646999618352, i32 261, i32 35), !dbg !451
  %322 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !451
  %323 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %322, i32 0, i32 1, !dbg !452
  store double %321, double* %323, align 8, !dbg !453
  %324 = load double, double* %6, align 8, !dbg !454
  %325 = load double, double* %5, align 8, !dbg !455
  %326 = fadd double %324, %325, !dbg !456
  call void @fAddHandler(double %324, double %325, double %326, i64 94646999619992, i64 94646999620376, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94646999620784, i32 262, i32 28), !dbg !457
  %327 = fsub double %326, 5.000000e-01, !dbg !457
  call void @fSubHandler(double %326, double 5.000000e-01, double %327, i64 94646999620784, i64 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94646999621232, i32 262, i32 32), !dbg !458
  %328 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %34, i32 0, i32 1, !dbg !458
  %329 = load double, double* %328, align 8, !dbg !458
  %330 = fmul double %327, %329, !dbg !459
  call void @fMulHandler(double %327, double %329, double %330, i64 94646999621232, i64 94646999622040, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94646999623712, i32 262, i32 38), !dbg !460
  %331 = call double @fabs(double %330) #1, !dbg !460
  %332 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !461
  %333 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %332, i32 0, i32 1, !dbg !462
  %334 = load double, double* %333, align 8, !dbg !463
  %335 = fadd double %334, %331, !dbg !463
  call void @fAddHandler(double %334, double %331, double %335, i64 94646999625480, i64 94646999624192, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94646999625888, i32 262, i32 17), !dbg !463
  store double %335, double* %333, align 8, !dbg !463
  %336 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %34, i32 0, i32 0, !dbg !464
  %337 = load double, double* %336, align 8, !dbg !464
  %338 = call double @fabs(double %337) #1, !dbg !465
  %339 = fmul double %338, 0x3CB0000000000000, !dbg !466
  call void @fMulHandler(double %338, double 0x3CB0000000000000, double %339, i64 94646999629856, i64 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94646999630336, i32 263, i32 39), !dbg !467
  %340 = load double, double* %6, align 8, !dbg !467
  %341 = call double @fabs(double %340) #1, !dbg !468
  %342 = load double, double* %5, align 8, !dbg !470
  %343 = call double @fabs(double %342) #1, !dbg !471
  %344 = fadd double %341, %343, !dbg !473
  call void @fAddHandler(double %341, double %343, double %344, i64 94646999631200, i64 94646999632128, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94646999632608, i32 263, i32 68), !dbg !474
  %345 = fadd double %344, 5.000000e-01, !dbg !474
  call void @fAddHandler(double %344, double 5.000000e-01, double %345, i64 94646999632608, i64 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94646999633056, i32 263, i32 78), !dbg !475
  %346 = fmul double %339, %345, !dbg !475
  call void @fMulHandler(double %339, double %345, double %346, i64 94646999630336, i64 94646999633056, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94646999633440, i32 263, i32 57), !dbg !476
  %347 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !476
  %348 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %347, i32 0, i32 1, !dbg !477
  %349 = load double, double* %348, align 8, !dbg !478
  %350 = fadd double %349, %346, !dbg !478
  call void @fAddHandler(double %349, double %346, double %350, i64 94646999634664, i64 94646999633440, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94646999635072, i32 263, i32 17), !dbg !478
  store double %350, double* %348, align 8, !dbg !478
  %351 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !479
  %352 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %351, i32 0, i32 0, !dbg !480
  %353 = load double, double* %352, align 8, !dbg !480
  %354 = call double @fabs(double %353) #1, !dbg !481
  %355 = fmul double 0x3CC0000000000000, %354, !dbg !482
  call void @fMulHandler(double 0x3CC0000000000000, double %354, double %355, i64 0, i64 94646999639424, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94646999639904, i32 264, i32 42), !dbg !483
  %356 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !483
  %357 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %356, i32 0, i32 1, !dbg !484
  %358 = load double, double* %357, align 8, !dbg !485
  %359 = fadd double %358, %355, !dbg !485
  call void @fAddHandler(double %358, double %355, double %359, i64 94646999641128, i64 94646999639904, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94646999641536, i32 264, i32 17), !dbg !485
  store double %359, double* %357, align 8, !dbg !485
  store i32 0, i32* %4, align 4, !dbg !486
  br label %409, !dbg !486

; <label>:360:                                    ; preds = %158, %152
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %35, metadata !487, metadata !66), !dbg !489
  call void @llvm.dbg.declare(metadata i32* %36, metadata !490, metadata !66), !dbg !491
  %361 = load double, double* %5, align 8, !dbg !492
  %362 = load double, double* %6, align 8, !dbg !493
  %363 = call i32 @pochrel_smallx(double %361, double %362, %struct.gsl_sf_result_struct* %35), !dbg !494
  store i32 %363, i32* %36, align 4, !dbg !491
  call void @llvm.dbg.declare(metadata double* %37, metadata !495, metadata !66), !dbg !496
  %364 = load double, double* %6, align 8, !dbg !497
  %365 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %35, i32 0, i32 0, !dbg !498
  %366 = load double, double* %365, align 8, !dbg !498
  %367 = fmul double %364, %366, !dbg !499
  call void @fMulHandler(double %364, double %366, double %367, i64 94646999652040, i64 94646999652840, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94646999654512, i32 270, i32 19), !dbg !496
  store double %367, double* %37, align 8, !dbg !496
  call void @llvm.dbg.declare(metadata i32* %38, metadata !500, metadata !66), !dbg !501
  %368 = load double, double* %37, align 8, !dbg !502
  %369 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !503
  %370 = call i32 @gsl_sf_log_1plusx_e(double %368, %struct.gsl_sf_result_struct* %369), !dbg !504
  store i32 %370, i32* %38, align 4, !dbg !501
  %371 = load double, double* %6, align 8, !dbg !505
  %372 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %35, i32 0, i32 1, !dbg !506
  %373 = load double, double* %372, align 8, !dbg !506
  %374 = fmul double %371, %373, !dbg !507
  call void @fMulHandler(double %371, double %373, double %374, i64 94646999660680, i64 94646999661480, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94646999663152, i32 272, i32 33), !dbg !508
  %375 = load double, double* %37, align 8, !dbg !508
  %376 = fadd double 1.000000e+00, %375, !dbg !509
  call void @fAddHandler(double 1.000000e+00, double %375, double %376, i64 0, i64 94646999663544, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94646999663984, i32 272, i32 55), !dbg !510
  %377 = fdiv double %374, %376, !dbg !510
  call void @fDivHandler(double %374, double %376, double %377, i64 94646999663152, i64 94646999663984, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94646999664368, i32 272, i32 48), !dbg !511
  %378 = call double @fabs(double %377) #1, !dbg !511
  %379 = fmul double 2.000000e+00, %378, !dbg !512
  call void @fMulHandler(double 2.000000e+00, double %378, double %379, i64 0, i64 94646999664848, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94646999665360, i32 272, i32 24), !dbg !513
  %380 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !513
  %381 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %380, i32 0, i32 1, !dbg !514
  store double %379, double* %381, align 8, !dbg !515
  %382 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !516
  %383 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %382, i32 0, i32 0, !dbg !517
  %384 = load double, double* %383, align 8, !dbg !517
  %385 = call double @fabs(double %384) #1, !dbg !518
  %386 = fmul double 0x3CC0000000000000, %385, !dbg !519
  call void @fMulHandler(double 0x3CC0000000000000, double %385, double %386, i64 0, i64 94646999669536, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94646999670016, i32 273, i32 42), !dbg !520
  %387 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !520
  %388 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %387, i32 0, i32 1, !dbg !521
  %389 = load double, double* %388, align 8, !dbg !522
  %390 = fadd double %389, %386, !dbg !522
  call void @fAddHandler(double %389, double %386, double %390, i64 94646999671240, i64 94646999670016, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94646999671648, i32 273, i32 17), !dbg !522
  store double %390, double* %388, align 8, !dbg !522
  %391 = load i32, i32* %38, align 4, !dbg !523
  %392 = icmp ne i32 %391, 0, !dbg !523
  %393 = sext i32 %391 to i64, !dbg !523
  %394 = call i1 @iCmpInstHandler(i64 %393, i64 0, i1 %392, i32 33, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94646999673840, i32 274, i32 12), !dbg !523
  br i1 %394, label %395, label %397, !dbg !523

; <label>:395:                                    ; preds = %360
  %396 = load i32, i32* %38, align 4, !dbg !524
  br label %407, !dbg !524

; <label>:397:                                    ; preds = %360
  %398 = load i32, i32* %36, align 4, !dbg !526
  %399 = icmp ne i32 %398, 0, !dbg !526
  %400 = sext i32 %398 to i64, !dbg !526
  %401 = call i1 @iCmpInstHandler(i64 %400, i64 0, i1 %399, i32 33, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94646999678384, i32 274, i32 12), !dbg !526
  br i1 %401, label %402, label %404, !dbg !526

; <label>:402:                                    ; preds = %397
  %403 = load i32, i32* %36, align 4, !dbg !528
  br label %405, !dbg !528

; <label>:404:                                    ; preds = %397
  br label %405, !dbg !530

; <label>:405:                                    ; preds = %404, %402
  %406 = phi i32 [ %403, %402 ], [ 0, %404 ], !dbg !532
  br label %407, !dbg !532

; <label>:407:                                    ; preds = %405, %395
  %408 = phi i32 [ %396, %395 ], [ %406, %405 ], !dbg !534
  store i32 %408, i32* %4, align 4, !dbg !536
  br label %409, !dbg !536

; <label>:409:                                    ; preds = %407, %162, %150, %64
  %410 = load i32, i32* %4, align 4, !dbg !537
  ret i32 %410, !dbg !537
}

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_lnpoch_sgn_e(double, double, %struct.gsl_sf_result_struct*, double*) #0 !dbg !538 {
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca %struct.gsl_sf_result_struct*, align 8
  %9 = alloca double*, align 8
  %10 = alloca %struct.gsl_sf_result_struct, align 8
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca i32, align 4
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca %struct.gsl_sf_result_struct, align 8
  %19 = alloca i32, align 4
  %20 = alloca double, align 8
  %21 = alloca %struct.gsl_sf_result_struct, align 8
  %22 = alloca %struct.gsl_sf_result_struct, align 8
  %23 = alloca double, align 8
  %24 = alloca double, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store double %0, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !542, metadata !66), !dbg !543
  store double %1, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !544, metadata !66), !dbg !545
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %8, metadata !546, metadata !66), !dbg !547
  store double* %3, double** %9, align 8
  call void @llvm.dbg.declare(metadata double** %9, metadata !548, metadata !66), !dbg !549
  %27 = load double, double* %7, align 8, !dbg !550
  %28 = fcmp oeq double %27, 0.000000e+00, !dbg !552
  %29 = call i1 @fCmpInstHandler(double %27, double 0.000000e+00, i1 %28, i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94646999694016, i32 304, i32 8), !dbg !553
  br i1 %29, label %30, label %36, !dbg !553

; <label>:30:                                     ; preds = %4
  %31 = load double*, double** %9, align 8, !dbg !554
  store double 1.000000e+00, double* %31, align 8, !dbg !556
  %32 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !557
  %33 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %32, i32 0, i32 0, !dbg !558
  store double 0.000000e+00, double* %33, align 8, !dbg !559
  %34 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !560
  %35 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %34, i32 0, i32 1, !dbg !561
  store double 0.000000e+00, double* %35, align 8, !dbg !562
  store i32 0, i32* %5, align 4, !dbg !563
  br label %309, !dbg !563

; <label>:36:                                     ; preds = %4
  %37 = load double, double* %6, align 8, !dbg !564
  %38 = fcmp ogt double %37, 0.000000e+00, !dbg !566
  %39 = call i1 @fCmpInstHandler(double %37, double 0.000000e+00, i1 %38, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94646999700912, i32 310, i32 13), !dbg !567
  br i1 %39, label %40, label %52, !dbg !567

; <label>:40:                                     ; preds = %36
  %41 = load double, double* %6, align 8, !dbg !568
  %42 = load double, double* %7, align 8, !dbg !570
  %43 = fadd double %41, %42, !dbg !571
  call void @fAddHandler(double %41, double %42, double %43, i64 94646999702024, i64 94646999702344, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94646999702752, i32 310, i32 23), !dbg !572
  %44 = fcmp ogt double %43, 0.000000e+00, !dbg !572
  %45 = call i1 @fCmpInstHandler(double %43, double 0.000000e+00, i1 %44, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94646999703168, i32 310, i32 26), !dbg !573
  br i1 %45, label %46, label %52, !dbg !573

; <label>:46:                                     ; preds = %40
  %47 = load double*, double** %9, align 8, !dbg !574
  store double 1.000000e+00, double* %47, align 8, !dbg !576
  %48 = load double, double* %6, align 8, !dbg !577
  %49 = load double, double* %7, align 8, !dbg !578
  %50 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !579
  %51 = call i32 @lnpoch_pos(double %48, double %49, %struct.gsl_sf_result_struct* %50), !dbg !580
  store i32 %51, i32* %5, align 4, !dbg !581
  br label %309, !dbg !581

; <label>:52:                                     ; preds = %40, %36
  %53 = load double, double* %6, align 8, !dbg !582
  %54 = fcmp ole double %53, 0.000000e+00, !dbg !584
  %55 = call i1 @fCmpInstHandler(double %53, double 0.000000e+00, i1 %54, i32 5, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94646999708992, i32 314, i32 14), !dbg !585
  br i1 %55, label %56, label %139, !dbg !585

; <label>:56:                                     ; preds = %52
  %57 = load double, double* %6, align 8, !dbg !586
  %58 = load double, double* %6, align 8, !dbg !588
  %59 = call double @floor(double %58) #1, !dbg !589
  %60 = fcmp oeq double %57, %59, !dbg !590
  %61 = call i1 @fCmpInstHandler(double %57, double %59, i1 %60, i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94646999711680, i32 314, i32 24), !dbg !591
  br i1 %61, label %62, label %139, !dbg !591

; <label>:62:                                     ; preds = %56
  %63 = load double, double* %6, align 8, !dbg !592
  %64 = load double, double* %7, align 8, !dbg !595
  %65 = fadd double %63, %64, !dbg !596
  call void @fAddHandler(double %63, double %64, double %65, i64 94646999712648, i64 94646999712968, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94646999713376, i32 316, i32 11), !dbg !597
  %66 = fcmp olt double %65, 0.000000e+00, !dbg !597
  %67 = call i1 @fCmpInstHandler(double %65, double 0.000000e+00, i1 %66, i32 4, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94646999713792, i32 316, i32 15), !dbg !598
  br i1 %67, label %68, label %108, !dbg !598

; <label>:68:                                     ; preds = %62
  %69 = load double, double* %7, align 8, !dbg !599
  %70 = load double, double* %7, align 8, !dbg !601
  %71 = call double @floor(double %70) #1, !dbg !602
  %72 = fcmp oeq double %69, %71, !dbg !603
  %73 = call i1 @fCmpInstHandler(double %69, double %71, i1 %72, i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94646999716176, i32 316, i32 25), !dbg !604
  br i1 %73, label %74, label %108, !dbg !604

; <label>:74:                                     ; preds = %68
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %10, metadata !605, metadata !66), !dbg !607
  call void @llvm.dbg.declare(metadata i32* %11, metadata !608, metadata !66), !dbg !609
  %75 = load double, double* %6, align 8, !dbg !610
  %76 = fsub double -0.000000e+00, %75, !dbg !611
  call void @fSubHandler(double -0.000000e+00, double %75, double %76, i64 0, i64 94646999719336, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94646999719712, i32 321, i32 30), !dbg !612
  %77 = load double, double* %7, align 8, !dbg !612
  %78 = fsub double -0.000000e+00, %77, !dbg !613
  call void @fSubHandler(double -0.000000e+00, double %77, double %78, i64 0, i64 94646999720104, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94646999720512, i32 321, i32 34), !dbg !614
  %79 = call i32 @lnpoch_pos(double %76, double %78, %struct.gsl_sf_result_struct* %10), !dbg !614
  store i32 %79, i32* %11, align 4, !dbg !609
  call void @llvm.dbg.declare(metadata double* %12, metadata !615, metadata !66), !dbg !616
  %80 = load double, double* %6, align 8, !dbg !617
  %81 = load double, double* %6, align 8, !dbg !618
  %82 = load double, double* %7, align 8, !dbg !619
  %83 = fadd double %81, %82, !dbg !620
  call void @fAddHandler(double %81, double %82, double %83, i64 94646999724616, i64 94646999725000, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94646999725408, i32 322, i32 30), !dbg !621
  %84 = fdiv double %80, %83, !dbg !621
  call void @fDivHandler(double %80, double %83, double %84, i64 94646999724264, i64 94646999725408, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94646999725824, i32 322, i32 25), !dbg !622
  %85 = call double @log(double %84) #5, !dbg !622
  call void @callOneArgHandler(i32 12, double %84, double %85, i64 94646999725824, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94646999726304, i32 322, i32 18), !dbg !616
  store double %85, double* %12, align 8, !dbg !616
  call void @llvm.dbg.declare(metadata double* %13, metadata !623, metadata !66), !dbg !624
  %86 = load double, double* %7, align 8, !dbg !625
  %87 = call double @fmod(double %86, double 2.000000e+00) #5, !dbg !626
  %88 = fcmp oeq double %87, 0.000000e+00, !dbg !627
  %89 = call i1 @fCmpInstHandler(double %87, double 0.000000e+00, i1 %88, i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94646999730800, i32 323, i32 30), !dbg !628
  %90 = select i1 %89, i32 1, i32 -1, !dbg !628
  %91 = sitofp i32 %90 to double, !dbg !628
  store double %91, double* %13, align 8, !dbg !624
  %92 = load double, double* %12, align 8, !dbg !629
  %93 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !630
  %94 = load double, double* %93, align 8, !dbg !630
  %95 = fsub double %92, %94, !dbg !631
  call void @fSubHandler(double %92, double %94, double %95, i64 94646999735016, i64 94646999735848, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94646999737520, i32 324, i32 23), !dbg !632
  %96 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !632
  %97 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %96, i32 0, i32 0, !dbg !633
  store double %95, double* %97, align 8, !dbg !634
  %98 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 1, !dbg !635
  %99 = load double, double* %98, align 8, !dbg !635
  %100 = load double, double* %12, align 8, !dbg !636
  %101 = fmul double 0x3CC0000000000000, %100, !dbg !637
  call void @fMulHandler(double 0x3CC0000000000000, double %100, double %101, i64 0, i64 94646999741256, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94646999741664, i32 325, i32 60), !dbg !638
  %102 = fadd double %99, %101, !dbg !638
  call void @fAddHandler(double %99, double %101, double %102, i64 94646999739608, i64 94646999741664, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94646999742080, i32 325, i32 36), !dbg !639
  %103 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !639
  %104 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %103, i32 0, i32 1, !dbg !640
  store double %102, double* %104, align 8, !dbg !641
  %105 = load double, double* %13, align 8, !dbg !642
  %106 = load double*, double** %9, align 8, !dbg !643
  store double %105, double* %106, align 8, !dbg !644
  %107 = load i32, i32* %11, align 4, !dbg !645
  store i32 %107, i32* %5, align 4, !dbg !646
  br label %309, !dbg !646

; <label>:108:                                    ; preds = %68, %62
  %109 = load double, double* %6, align 8, !dbg !647
  %110 = load double, double* %7, align 8, !dbg !649
  %111 = fadd double %109, %110, !dbg !650
  call void @fAddHandler(double %109, double %110, double %111, i64 94646999747352, i64 94646999747672, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94646999748080, i32 328, i32 18), !dbg !651
  %112 = fcmp oeq double %111, 0.000000e+00, !dbg !651
  %113 = call i1 @fCmpInstHandler(double %111, double 0.000000e+00, i1 %112, i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94646999748496, i32 328, i32 22), !dbg !652
  br i1 %113, label %114, label %133, !dbg !652

; <label>:114:                                    ; preds = %108
  call void @llvm.dbg.declare(metadata i32* %14, metadata !653, metadata !66), !dbg !655
  %115 = load double, double* %6, align 8, !dbg !656
  %116 = fsub double -0.000000e+00, %115, !dbg !657
  call void @fSubHandler(double -0.000000e+00, double %115, double %116, i64 0, i64 94646999750712, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94646999751088, i32 331, i32 40), !dbg !658
  %117 = fadd double %116, 1.000000e+00, !dbg !658
  call void @fAddHandler(double %116, double 1.000000e+00, double %117, i64 94646999751088, i64 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94646999751536, i32 331, i32 43), !dbg !659
  %118 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !659
  %119 = load double*, double** %9, align 8, !dbg !660
  %120 = call i32 @gsl_sf_lngamma_sgn_e(double %117, %struct.gsl_sf_result_struct* %118, double* %119), !dbg !661
  store i32 %120, i32* %14, align 4, !dbg !655
  call void @llvm.dbg.declare(metadata double* %15, metadata !662, metadata !66), !dbg !663
  %121 = load double, double* %6, align 8, !dbg !664
  %122 = fsub double -0.000000e+00, %121, !dbg !665
  call void @fSubHandler(double -0.000000e+00, double %121, double %122, i64 0, i64 94646999756424, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94646999756800, i32 332, i32 24), !dbg !666
  %123 = call double @fmod(double %122, double 2.000000e+00) #5, !dbg !666
  %124 = fcmp oeq double %123, 0.000000e+00, !dbg !667
  %125 = call i1 @fCmpInstHandler(double %123, double 0.000000e+00, i1 %124, i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94646999757808, i32 332, i32 31), !dbg !668
  %126 = select i1 %125, i32 1, i32 -1, !dbg !668
  %127 = sitofp i32 %126 to double, !dbg !668
  store double %127, double* %15, align 8, !dbg !663
  %128 = load double, double* %15, align 8, !dbg !669
  %129 = load double*, double** %9, align 8, !dbg !670
  %130 = load double, double* %129, align 8, !dbg !671
  %131 = fmul double %130, %128, !dbg !671
  call void @fMulHandler(double %130, double %128, double %131, i64 94646999762696, i64 94646999761928, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94646999763104, i32 333, i32 12), !dbg !671
  store double %131, double* %129, align 8, !dbg !671
  %132 = load i32, i32* %14, align 4, !dbg !672
  store i32 %132, i32* %5, align 4, !dbg !673
  br label %309, !dbg !673

; <label>:133:                                    ; preds = %108
  %134 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !674
  %135 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %134, i32 0, i32 0, !dbg !676
  store double 0xFFF0000000000000, double* %135, align 8, !dbg !677
  %136 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !678
  %137 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %136, i32 0, i32 1, !dbg !679
  store double 0.000000e+00, double* %137, align 8, !dbg !680
  %138 = load double*, double** %9, align 8, !dbg !681
  store double 1.000000e+00, double* %138, align 8, !dbg !682
  store i32 0, i32* %5, align 4, !dbg !683
  br label %309, !dbg !683

; <label>:139:                                    ; preds = %56, %52
  %140 = load double, double* %6, align 8, !dbg !684
  %141 = fcmp olt double %140, 0.000000e+00, !dbg !686
  %142 = call i1 @fCmpInstHandler(double %140, double 0.000000e+00, i1 %141, i32 4, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94646999775104, i32 342, i32 15), !dbg !687
  br i1 %142, label %143, label %234, !dbg !687

; <label>:143:                                    ; preds = %139
  %144 = load double, double* %6, align 8, !dbg !688
  %145 = load double, double* %7, align 8, !dbg !690
  %146 = fadd double %144, %145, !dbg !691
  call void @fAddHandler(double %144, double %145, double %146, i64 94646999776216, i64 94646999776536, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94646999776944, i32 342, i32 25), !dbg !692
  %147 = fcmp olt double %146, 0.000000e+00, !dbg !692
  %148 = call i1 @fCmpInstHandler(double %146, double 0.000000e+00, i1 %147, i32 4, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94646999777360, i32 342, i32 28), !dbg !693
  br i1 %148, label %149, label %234, !dbg !693

; <label>:149:                                    ; preds = %143
  call void @llvm.dbg.declare(metadata double* %16, metadata !694, metadata !66), !dbg !696
  %150 = load double, double* %6, align 8, !dbg !697
  %151 = fsub double 1.000000e+00, %150, !dbg !698
  call void @fSubHandler(double 1.000000e+00, double %150, double %151, i64 0, i64 94646999554184, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94646999554592, i32 345, i32 36), !dbg !699
  %152 = fmul double 0x400921FB54442D18, %151, !dbg !699
  call void @fMulHandler(double 0x400921FB54442D18, double %151, double %152, i64 0, i64 94646999554592, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94646999555040, i32 345, i32 29), !dbg !700
  %153 = call double @sin(double %152) #5, !dbg !700
  call void @callOneArgHandler(i32 1, double %152, double %153, i64 94646999555040, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94646999785904, i32 345, i32 20), !dbg !696
  store double %153, double* %16, align 8, !dbg !696
  call void @llvm.dbg.declare(metadata double* %17, metadata !701, metadata !66), !dbg !702
  %154 = load double, double* %6, align 8, !dbg !703
  %155 = fsub double 1.000000e+00, %154, !dbg !704
  call void @fSubHandler(double 1.000000e+00, double %154, double %155, i64 0, i64 94646999789240, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94646999789648, i32 346, i32 36), !dbg !705
  %156 = load double, double* %7, align 8, !dbg !705
  %157 = fsub double %155, %156, !dbg !706
  call void @fSubHandler(double %155, double %156, double %157, i64 94646999789648, i64 94646999790008, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94646999790416, i32 346, i32 40), !dbg !707
  %158 = fmul double 0x400921FB54442D18, %157, !dbg !707
  call void @fMulHandler(double 0x400921FB54442D18, double %157, double %158, i64 0, i64 94646999790416, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94646999790832, i32 346, i32 29), !dbg !708
  %159 = call double @sin(double %158) #5, !dbg !708
  call void @callOneArgHandler(i32 1, double %158, double %159, i64 94646999790832, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94646999791312, i32 346, i32 20), !dbg !702
  store double %159, double* %17, align 8, !dbg !702
  %160 = load double, double* %16, align 8, !dbg !709
  %161 = fcmp oeq double %160, 0.000000e+00, !dbg !711
  %162 = call i1 @fCmpInstHandler(double %160, double 0.000000e+00, i1 %161, i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94646999793856, i32 347, i32 14), !dbg !712
  br i1 %162, label %167, label %163, !dbg !712

; <label>:163:                                    ; preds = %149
  %164 = load double, double* %17, align 8, !dbg !713
  %165 = fcmp oeq double %164, 0.000000e+00, !dbg !715
  %166 = call i1 @fCmpInstHandler(double %164, double 0.000000e+00, i1 %165, i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94646999795312, i32 347, i32 30), !dbg !716
  br i1 %166, label %167, label %177, !dbg !716

; <label>:167:                                    ; preds = %163, %149
  %168 = load double*, double** %9, align 8, !dbg !717
  store double 0.000000e+00, double* %168, align 8, !dbg !719
  br label %169, !dbg !720, !llvm.loop !721

; <label>:169:                                    ; preds = %167
  %170 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !722
  %171 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %170, i32 0, i32 0, !dbg !722
  store double 0x7FF8000000000000, double* %171, align 8, !dbg !722
  %172 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !722
  %173 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %172, i32 0, i32 1, !dbg !722
  store double 0x7FF8000000000000, double* %173, align 8, !dbg !722
  br label %174, !dbg !722, !llvm.loop !725

; <label>:174:                                    ; preds = %169
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 349, i32 1), !dbg !727
  store i32 1, i32* %5, align 4, !dbg !727
  br label %309, !dbg !727
                                                  ; No predecessors!
  br label %176, !dbg !730

; <label>:176:                                    ; preds = %175
  br label %233, !dbg !732

; <label>:177:                                    ; preds = %163
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %18, metadata !733, metadata !66), !dbg !735
  call void @llvm.dbg.declare(metadata i32* %19, metadata !736, metadata !66), !dbg !737
  %178 = load double, double* %6, align 8, !dbg !738
  %179 = fsub double 1.000000e+00, %178, !dbg !739
  call void @fSubHandler(double 1.000000e+00, double %178, double %179, i64 0, i64 94646999806472, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94646999806880, i32 353, i32 37), !dbg !740
  %180 = load double, double* %7, align 8, !dbg !740
  %181 = fsub double -0.000000e+00, %180, !dbg !741
  call void @fSubHandler(double -0.000000e+00, double %180, double %181, i64 0, i64 94646999807240, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94646999807648, i32 353, i32 41), !dbg !742
  %182 = call i32 @lnpoch_pos(double %179, double %181, %struct.gsl_sf_result_struct* %18), !dbg !742
  store i32 %182, i32* %19, align 4, !dbg !737
  call void @llvm.dbg.declare(metadata double* %20, metadata !743, metadata !66), !dbg !744
  %183 = load double, double* %16, align 8, !dbg !745
  %184 = load double, double* %17, align 8, !dbg !746
  %185 = fdiv double %183, %184, !dbg !747
  call void @fDivHandler(double %183, double %184, double %185, i64 94646999811400, i64 94646999811752, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94646999812160, i32 354, i32 37), !dbg !748
  %186 = call double @fabs(double %185) #1, !dbg !748
  %187 = call double @log(double %186) #5, !dbg !749
  call void @callOneArgHandler(i32 12, double %186, double %187, i64 94646999812640, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94646999813184, i32 354, i32 23), !dbg !744
  store double %187, double* %20, align 8, !dbg !744
  %188 = load double, double* %20, align 8, !dbg !751
  %189 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %18, i32 0, i32 0, !dbg !752
  %190 = load double, double* %189, align 8, !dbg !752
  %191 = fsub double %188, %190, !dbg !753
  call void @fSubHandler(double %188, double %190, double %191, i64 94646999815320, i64 94646999816152, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94646999817824, i32 355, i32 29), !dbg !754
  %192 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !754
  %193 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %192, i32 0, i32 0, !dbg !755
  store double %191, double* %193, align 8, !dbg !756
  %194 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %18, i32 0, i32 1, !dbg !757
  %195 = load double, double* %194, align 8, !dbg !757
  %196 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !758
  %197 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %196, i32 0, i32 1, !dbg !759
  store double %195, double* %197, align 8, !dbg !760
  %198 = load double, double* %6, align 8, !dbg !761
  %199 = fsub double 1.000000e+00, %198, !dbg !762
  call void @fSubHandler(double 1.000000e+00, double %198, double %199, i64 0, i64 94646999822808, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94646999823248, i32 357, i32 55), !dbg !763
  %200 = call double @fabs(double %199) #1, !dbg !763
  %201 = load double, double* %6, align 8, !dbg !764
  %202 = fsub double 1.000000e+00, %201, !dbg !765
  call void @fSubHandler(double 1.000000e+00, double %201, double %202, i64 0, i64 94646999824152, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94646999824592, i32 357, i32 69), !dbg !766
  %203 = load double, double* %7, align 8, !dbg !766
  %204 = fsub double %202, %203, !dbg !767
  call void @fSubHandler(double %202, double %203, double %204, i64 94646999824592, i64 94646999824952, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94646999825360, i32 357, i32 71), !dbg !768
  %205 = call double @fabs(double %204) #1, !dbg !768
  %206 = fadd double %200, %205, !dbg !769
  call void @fAddHandler(double %200, double %205, double %206, i64 94646999823696, i64 94646999825840, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94646999826320, i32 357, i32 59), !dbg !770
  %207 = fmul double 0x3CC0000000000000, %206, !dbg !770
  call void @fMulHandler(double 0x3CC0000000000000, double %206, double %207, i64 0, i64 94646999826320, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94646999826736, i32 357, i32 44), !dbg !771
  %208 = load double, double* %20, align 8, !dbg !771
  %209 = call double @fabs(double %208) #1, !dbg !772
  %210 = fmul double %207, %209, !dbg !774
  call void @fMulHandler(double %207, double %209, double %210, i64 94646999826736, i64 94646999827600, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94646999828080, i32 357, i32 76), !dbg !775
  %211 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !775
  %212 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %211, i32 0, i32 1, !dbg !776
  %213 = load double, double* %212, align 8, !dbg !777
  %214 = fadd double %213, %210, !dbg !777
  call void @fAddHandler(double %213, double %210, double %214, i64 94646999829304, i64 94646999828080, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94646999829712, i32 357, i32 19), !dbg !777
  store double %214, double* %212, align 8, !dbg !777
  %215 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !778
  %216 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %215, i32 0, i32 0, !dbg !779
  %217 = load double, double* %216, align 8, !dbg !779
  %218 = call double @fabs(double %217) #1, !dbg !780
  %219 = fmul double 0x3CC0000000000000, %218, !dbg !781
  call void @fMulHandler(double 0x3CC0000000000000, double %218, double %219, i64 0, i64 94646999834064, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94646999834544, i32 358, i32 44), !dbg !782
  %220 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !782
  %221 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %220, i32 0, i32 1, !dbg !783
  %222 = load double, double* %221, align 8, !dbg !784
  %223 = fadd double %222, %219, !dbg !784
  call void @fAddHandler(double %222, double %219, double %223, i64 94646999835768, i64 94646999834544, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94646999836176, i32 358, i32 19), !dbg !784
  store double %223, double* %221, align 8, !dbg !784
  %224 = load double, double* %16, align 8, !dbg !785
  %225 = load double, double* %17, align 8, !dbg !785
  %226 = fmul double %224, %225, !dbg !785
  call void @fMulHandler(double %224, double %225, double %226, i64 94646999837960, i64 94646999838344, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94646999840016, i32 359, i32 14), !dbg !785
  %227 = fcmp oge double %226, 0.000000e+00, !dbg !785
  %228 = call i1 @fCmpInstHandler(double %226, double 0.000000e+00, i1 %227, i32 3, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94646999840144, i32 359, i32 14), !dbg !785
  %229 = select i1 %228, i32 1, i32 -1, !dbg !785
  %230 = sitofp i32 %229 to double, !dbg !785
  %231 = load double*, double** %9, align 8, !dbg !786
  store double %230, double* %231, align 8, !dbg !787
  %232 = load i32, i32* %19, align 4, !dbg !788
  store i32 %232, i32* %5, align 4, !dbg !789
  br label %309, !dbg !789

; <label>:233:                                    ; preds = %176
  br label %306, !dbg !790

; <label>:234:                                    ; preds = %143, %139
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %21, metadata !791, metadata !66), !dbg !793
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %22, metadata !794, metadata !66), !dbg !795
  call void @llvm.dbg.declare(metadata double* %23, metadata !796, metadata !66), !dbg !797
  call void @llvm.dbg.declare(metadata double* %24, metadata !798, metadata !66), !dbg !799
  call void @llvm.dbg.declare(metadata i32* %25, metadata !800, metadata !66), !dbg !801
  %235 = load double, double* %6, align 8, !dbg !802
  %236 = load double, double* %7, align 8, !dbg !803
  %237 = fadd double %235, %236, !dbg !804
  call void @fAddHandler(double %235, double %236, double %237, i64 94646999849608, i64 94646999849960, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94646999850368, i32 369, i32 42), !dbg !805
  %238 = call i32 @gsl_sf_lngamma_sgn_e(double %237, %struct.gsl_sf_result_struct* %21, double* %23), !dbg !805
  store i32 %238, i32* %25, align 4, !dbg !801
  call void @llvm.dbg.declare(metadata i32* %26, metadata !806, metadata !66), !dbg !807
  %239 = load double, double* %6, align 8, !dbg !808
  %240 = call i32 @gsl_sf_lngamma_sgn_e(double %239, %struct.gsl_sf_result_struct* %22, double* %24), !dbg !809
  store i32 %240, i32* %26, align 4, !dbg !807
  %241 = load i32, i32* %25, align 4, !dbg !810
  %242 = icmp eq i32 %241, 0, !dbg !812
  %243 = sext i32 %241 to i64, !dbg !813
  %244 = call i1 @iCmpInstHandler(i64 %243, i64 0, i1 %242, i32 32, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94646999857120, i32 371, i32 17), !dbg !813
  br i1 %244, label %245, label %278, !dbg !813

; <label>:245:                                    ; preds = %234
  %246 = load i32, i32* %26, align 4, !dbg !814
  %247 = icmp eq i32 %246, 0, !dbg !816
  %248 = sext i32 %246 to i64, !dbg !817
  %249 = call i1 @iCmpInstHandler(i64 %248, i64 0, i1 %247, i32 32, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94646999858576, i32 371, i32 42), !dbg !817
  br i1 %249, label %250, label %278, !dbg !817

; <label>:250:                                    ; preds = %245
  %251 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %21, i32 0, i32 0, !dbg !818
  %252 = load double, double* %251, align 8, !dbg !818
  %253 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %22, i32 0, i32 0, !dbg !820
  %254 = load double, double* %253, align 8, !dbg !820
  %255 = fsub double %252, %254, !dbg !821
  call void @fSubHandler(double %252, double %254, double %255, i64 94646999859928, i64 94646999862024, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94646999863696, i32 372, i32 33), !dbg !822
  %256 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !822
  %257 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %256, i32 0, i32 0, !dbg !823
  store double %255, double* %257, align 8, !dbg !824
  %258 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %21, i32 0, i32 1, !dbg !825
  %259 = load double, double* %258, align 8, !dbg !825
  %260 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %22, i32 0, i32 1, !dbg !826
  %261 = load double, double* %260, align 8, !dbg !826
  %262 = fadd double %259, %261, !dbg !827
  call void @fAddHandler(double %259, double %261, double %262, i64 94646999865784, i64 94646999867880, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94646999869552, i32 373, i32 33), !dbg !828
  %263 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !828
  %264 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %263, i32 0, i32 1, !dbg !829
  store double %262, double* %264, align 8, !dbg !830
  %265 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !831
  %266 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %265, i32 0, i32 0, !dbg !832
  %267 = load double, double* %266, align 8, !dbg !832
  %268 = call double @fabs(double %267) #1, !dbg !833
  %269 = fmul double 0x3CC0000000000000, %268, !dbg !834
  call void @fMulHandler(double 0x3CC0000000000000, double %268, double %269, i64 0, i64 94646999873760, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94646999874240, i32 374, i32 44), !dbg !835
  %270 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !835
  %271 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %270, i32 0, i32 1, !dbg !836
  %272 = load double, double* %271, align 8, !dbg !837
  %273 = fadd double %272, %269, !dbg !837
  call void @fAddHandler(double %272, double %269, double %273, i64 94646999875464, i64 94646999874240, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94646999875872, i32 374, i32 19), !dbg !837
  store double %273, double* %271, align 8, !dbg !837
  %274 = load double, double* %24, align 8, !dbg !838
  %275 = load double, double* %23, align 8, !dbg !839
  %276 = fmul double %274, %275, !dbg !840
  call void @fMulHandler(double %274, double %275, double %276, i64 94646999877656, i64 94646999878040, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94646999770240, i32 375, i32 18), !dbg !841
  %277 = load double*, double** %9, align 8, !dbg !841
  store double %276, double* %277, align 8, !dbg !842
  store i32 0, i32* %5, align 4, !dbg !843
  br label %309, !dbg !843

; <label>:278:                                    ; preds = %245, %234
  %279 = load i32, i32* %25, align 4, !dbg !844
  %280 = icmp eq i32 %279, 1, !dbg !846
  %281 = sext i32 %279 to i64, !dbg !847
  %282 = call i1 @iCmpInstHandler(i64 %281, i64 1, i1 %280, i32 32, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94646999884112, i32 378, i32 22), !dbg !847
  br i1 %282, label %288, label %283, !dbg !847

; <label>:283:                                    ; preds = %278
  %284 = load i32, i32* %26, align 4, !dbg !848
  %285 = icmp eq i32 %284, 1, !dbg !850
  %286 = sext i32 %284 to i64, !dbg !851
  %287 = call i1 @iCmpInstHandler(i64 %286, i64 1, i1 %285, i32 32, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94646999885568, i32 378, i32 44), !dbg !851
  br i1 %287, label %288, label %298, !dbg !851

; <label>:288:                                    ; preds = %283, %278
  %289 = load double*, double** %9, align 8, !dbg !852
  store double 0.000000e+00, double* %289, align 8, !dbg !854
  br label %290, !dbg !855, !llvm.loop !856

; <label>:290:                                    ; preds = %288
  %291 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !857
  %292 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %291, i32 0, i32 0, !dbg !857
  store double 0x7FF8000000000000, double* %292, align 8, !dbg !857
  %293 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !857
  %294 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %293, i32 0, i32 1, !dbg !857
  store double 0x7FF8000000000000, double* %294, align 8, !dbg !857
  br label %295, !dbg !857, !llvm.loop !860

; <label>:295:                                    ; preds = %290
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 380, i32 1), !dbg !862
  store i32 1, i32* %5, align 4, !dbg !862
  br label %309, !dbg !862
                                                  ; No predecessors!
  br label %297, !dbg !865

; <label>:297:                                    ; preds = %296
  br label %304, !dbg !867

; <label>:298:                                    ; preds = %283
  %299 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !868
  %300 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %299, i32 0, i32 0, !dbg !870
  store double 0.000000e+00, double* %300, align 8, !dbg !871
  %301 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !872
  %302 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %301, i32 0, i32 1, !dbg !873
  store double 0.000000e+00, double* %302, align 8, !dbg !874
  %303 = load double*, double** %9, align 8, !dbg !875
  store double 0.000000e+00, double* %303, align 8, !dbg !876
  store i32 -1, i32* %5, align 4, !dbg !877
  br label %309, !dbg !877

; <label>:304:                                    ; preds = %297
  br label %305

; <label>:305:                                    ; preds = %304
  br label %306

; <label>:306:                                    ; preds = %305, %233
  br label %307

; <label>:307:                                    ; preds = %306
  br label %308

; <label>:308:                                    ; preds = %307
  br label %309

; <label>:309:                                    ; preds = %308, %298, %295, %250, %177, %174, %133, %114, %74, %46, %30
  %310 = load i32, i32* %5, align 4, !dbg !878
  ret i32 %310, !dbg !878
}

; Function Attrs: nounwind readnone
declare double @floor(double) #3

; Function Attrs: nounwind
declare double @log(double) #4

; Function Attrs: nounwind
declare double @fmod(double, double) #4

declare i32 @gsl_sf_lngamma_sgn_e(double, %struct.gsl_sf_result_struct*, double*) #2

; Function Attrs: nounwind
declare double @sin(double) #4

; Function Attrs: nounwind readnone
declare double @fabs(double) #3

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_poch_e(double, double, %struct.gsl_sf_result_struct*) #0 !dbg !879 {
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca %struct.gsl_sf_result_struct*, align 8
  %8 = alloca %struct.gsl_sf_result_struct, align 8
  %9 = alloca double, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store double %0, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !880, metadata !66), !dbg !881
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !882, metadata !66), !dbg !883
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %7, metadata !884, metadata !66), !dbg !885
  %12 = load double, double* %6, align 8, !dbg !886
  %13 = fcmp oeq double %12, 0.000000e+00, !dbg !888
  %14 = call i1 @fCmpInstHandler(double %12, double 0.000000e+00, i1 %13, i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @7, i32 0, i32 0), i64 94646999905488, i32 397, i32 8), !dbg !889
  br i1 %14, label %15, label %20, !dbg !889

; <label>:15:                                     ; preds = %3
  %16 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !890
  %17 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %16, i32 0, i32 0, !dbg !892
  store double 1.000000e+00, double* %17, align 8, !dbg !893
  %18 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !894
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %18, i32 0, i32 1, !dbg !895
  store double 0.000000e+00, double* %19, align 8, !dbg !896
  store i32 0, i32* %4, align 4, !dbg !897
  br label %73, !dbg !897

; <label>:20:                                     ; preds = %3
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %8, metadata !898, metadata !66), !dbg !900
  call void @llvm.dbg.declare(metadata double* %9, metadata !901, metadata !66), !dbg !902
  call void @llvm.dbg.declare(metadata i32* %10, metadata !903, metadata !66), !dbg !904
  %21 = load double, double* %5, align 8, !dbg !905
  %22 = load double, double* %6, align 8, !dbg !906
  %23 = call i32 @gsl_sf_lnpoch_sgn_e(double %21, double %22, %struct.gsl_sf_result_struct* %8, double* %9), !dbg !907
  store i32 %23, i32* %10, align 4, !dbg !904
  %24 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 0, !dbg !908
  %25 = load double, double* %24, align 8, !dbg !908
  %26 = fcmp oeq double %25, 0xFFF0000000000000, !dbg !910
  %27 = call i1 @fCmpInstHandler(double %25, double 0xFFF0000000000000, i1 %26, i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @7, i32 0, i32 0), i64 94646999918960, i32 405, i32 20), !dbg !911
  br i1 %27, label %28, label %34, !dbg !911

; <label>:28:                                     ; preds = %20
  %29 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !912
  %30 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %29, i32 0, i32 0, !dbg !914
  store double 0.000000e+00, double* %30, align 8, !dbg !915
  %31 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !916
  %32 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %31, i32 0, i32 1, !dbg !917
  store double 0.000000e+00, double* %32, align 8, !dbg !918
  %33 = load i32, i32* %10, align 4, !dbg !919
  store i32 %33, i32* %4, align 4, !dbg !920
  br label %73, !dbg !920

; <label>:34:                                     ; preds = %20
  call void @llvm.dbg.declare(metadata i32* %11, metadata !921, metadata !66), !dbg !923
  %35 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 0, !dbg !924
  %36 = load double, double* %35, align 8, !dbg !924
  %37 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 1, !dbg !925
  %38 = load double, double* %37, align 8, !dbg !925
  %39 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !926
  %40 = call i32 @gsl_sf_exp_err_e(double %36, double %38, %struct.gsl_sf_result_struct* %39), !dbg !927
  store i32 %40, i32* %11, align 4, !dbg !923
  %41 = load double, double* %9, align 8, !dbg !928
  %42 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !929
  %43 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %42, i32 0, i32 0, !dbg !930
  %44 = load double, double* %43, align 8, !dbg !931
  %45 = fmul double %44, %41, !dbg !931
  call void @fMulHandler(double %44, double %41, double %45, i64 94646999934360, i64 94646999933144, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @7, i32 0, i32 0), i64 94646999934768, i32 411, i32 19), !dbg !931
  store double %45, double* %43, align 8, !dbg !931
  %46 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !932
  %47 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %46, i32 0, i32 0, !dbg !933
  %48 = load double, double* %47, align 8, !dbg !933
  %49 = call double @fabs(double %48) #1, !dbg !934
  %50 = fmul double 0x3CC0000000000000, %49, !dbg !935
  call void @fMulHandler(double 0x3CC0000000000000, double %49, double %50, i64 0, i64 94646999939120, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @7, i32 0, i32 0), i64 94646999939600, i32 412, i32 44), !dbg !936
  %51 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !936
  %52 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %51, i32 0, i32 1, !dbg !937
  %53 = load double, double* %52, align 8, !dbg !938
  %54 = fadd double %53, %50, !dbg !938
  call void @fAddHandler(double %53, double %50, double %54, i64 94646999940824, i64 94646999939600, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @7, i32 0, i32 0), i64 94646999941232, i32 412, i32 19), !dbg !938
  store double %54, double* %52, align 8, !dbg !938
  %55 = load i32, i32* %11, align 4, !dbg !939
  %56 = icmp ne i32 %55, 0, !dbg !939
  %57 = sext i32 %55 to i64, !dbg !939
  %58 = call i1 @iCmpInstHandler(i64 %57, i64 0, i1 %56, i32 33, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @7, i32 0, i32 0), i64 94646999943424, i32 413, i32 14), !dbg !939
  br i1 %58, label %59, label %61, !dbg !939

; <label>:59:                                     ; preds = %34
  %60 = load i32, i32* %11, align 4, !dbg !940
  br label %71, !dbg !940

; <label>:61:                                     ; preds = %34
  %62 = load i32, i32* %10, align 4, !dbg !942
  %63 = icmp ne i32 %62, 0, !dbg !942
  %64 = sext i32 %62 to i64, !dbg !942
  %65 = call i1 @iCmpInstHandler(i64 %64, i64 0, i1 %63, i32 33, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @7, i32 0, i32 0), i64 94646999947968, i32 413, i32 14), !dbg !942
  br i1 %65, label %66, label %68, !dbg !942

; <label>:66:                                     ; preds = %61
  %67 = load i32, i32* %10, align 4, !dbg !944
  br label %69, !dbg !944

; <label>:68:                                     ; preds = %61
  br label %69, !dbg !946

; <label>:69:                                     ; preds = %68, %66
  %70 = phi i32 [ %67, %66 ], [ 0, %68 ], !dbg !948
  br label %71, !dbg !948

; <label>:71:                                     ; preds = %69, %59
  %72 = phi i32 [ %60, %59 ], [ %70, %69 ], !dbg !950
  store i32 %72, i32* %4, align 4, !dbg !952
  br label %73, !dbg !952

; <label>:73:                                     ; preds = %71, %28, %15
  %74 = load i32, i32* %4, align 4, !dbg !953
  ret i32 %74, !dbg !953
}

declare i32 @gsl_sf_exp_err_e(double, double, %struct.gsl_sf_result_struct*) #2

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_pochrel_e(double, double, %struct.gsl_sf_result_struct*) #0 !dbg !954 {
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca %struct.gsl_sf_result_struct*, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca %struct.gsl_sf_result_struct, align 8
  %11 = alloca double, align 8
  %12 = alloca i32, align 4
  %13 = alloca double, align 8
  store double %0, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !955, metadata !66), !dbg !956
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !957, metadata !66), !dbg !958
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %7, metadata !959, metadata !66), !dbg !960
  call void @llvm.dbg.declare(metadata double* %8, metadata !961, metadata !66), !dbg !962
  %14 = load double, double* %6, align 8, !dbg !963
  %15 = call double @fabs(double %14) #1, !dbg !964
  store double %15, double* %8, align 8, !dbg !962
  call void @llvm.dbg.declare(metadata double* %9, metadata !965, metadata !66), !dbg !966
  %16 = load double, double* %5, align 8, !dbg !967
  %17 = call double @fabs(double %16) #1, !dbg !968
  store double %17, double* %9, align 8, !dbg !966
  %18 = load double, double* %8, align 8, !dbg !969
  %19 = load double, double* %9, align 8, !dbg !971
  %20 = fmul double 1.000000e-01, %19, !dbg !972
  call void @fMulHandler(double 1.000000e-01, double %19, double %20, i64 0, i64 94646999972680, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @9, i32 0, i32 0), i64 94646999973120, i32 427, i32 16), !dbg !973
  %21 = fcmp ogt double %18, %20, !dbg !973
  %22 = call i1 @fCmpInstHandler(double %18, double %20, i1 %21, i32 2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @9, i32 0, i32 0), i64 94646999973504, i32 427, i32 11), !dbg !974
  br i1 %22, label %37, label %23, !dbg !974

; <label>:23:                                     ; preds = %3
  %24 = load double, double* %8, align 8, !dbg !975
  %25 = load double, double* %9, align 8, !dbg !977
  %26 = fcmp ogt double %25, 2.000000e+00, !dbg !977
  %27 = call i1 @fCmpInstHandler(double %25, double 2.000000e+00, i1 %26, i32 2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @9, i32 0, i32 0), i64 94646999975376, i32 427, i32 34), !dbg !977
  br i1 %27, label %28, label %30, !dbg !977

; <label>:28:                                     ; preds = %23
  %29 = load double, double* %9, align 8, !dbg !978
  br label %31, !dbg !978

; <label>:30:                                     ; preds = %23
  br label %31, !dbg !980

; <label>:31:                                     ; preds = %30, %28
  %32 = phi double [ %29, %28 ], [ 2.000000e+00, %30 ], !dbg !982
  %33 = call double @log(double %32) #5, !dbg !984
  call void @callOneArgHandler(i32 12, double %32, double %33, i64 94646999979880, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @9, i32 0, i32 0), i64 94646999980352, i32 427, i32 30), !dbg !985
  %34 = fmul double %24, %33, !dbg !985
  call void @fMulHandler(double %24, double %33, double %34, i64 94646999974616, i64 94646999980352, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @9, i32 0, i32 0), i64 94646999980832, i32 427, i32 29), !dbg !986
  %35 = fcmp ogt double %34, 1.000000e-01, !dbg !986
  %36 = call i1 @fCmpInstHandler(double %34, double 1.000000e-01, i1 %35, i32 2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @9, i32 0, i32 0), i64 94646999981280, i32 427, i32 53), !dbg !987
  br i1 %36, label %37, label %91, !dbg !987

; <label>:37:                                     ; preds = %31, %3
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %10, metadata !988, metadata !66), !dbg !990
  call void @llvm.dbg.declare(metadata double* %11, metadata !991, metadata !66), !dbg !992
  call void @llvm.dbg.declare(metadata i32* %12, metadata !993, metadata !66), !dbg !994
  %38 = load double, double* %5, align 8, !dbg !995
  %39 = load double, double* %6, align 8, !dbg !996
  %40 = call i32 @gsl_sf_lnpoch_sgn_e(double %38, double %39, %struct.gsl_sf_result_struct* %10, double* %11), !dbg !997
  store i32 %40, i32* %12, align 4, !dbg !994
  %41 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !998
  %42 = load double, double* %41, align 8, !dbg !998
  %43 = fcmp ogt double %42, 0x40862E42FEFA39EF, !dbg !1000
  %44 = call i1 @fCmpInstHandler(double %42, double 0x40862E42FEFA39EF, i1 %43, i32 2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @9, i32 0, i32 0), i64 94646999990624, i32 431, i32 19), !dbg !1001
  br i1 %44, label %45, label %54, !dbg !1001

; <label>:45:                                     ; preds = %37
  br label %46, !dbg !1002, !llvm.loop !1004

; <label>:46:                                     ; preds = %45
  %47 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1005
  %48 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %47, i32 0, i32 0, !dbg !1005
  store double 0x7FF0000000000000, double* %48, align 8, !dbg !1005
  %49 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1005
  %50 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %49, i32 0, i32 1, !dbg !1005
  store double 0x7FF0000000000000, double* %50, align 8, !dbg !1005
  br label %51, !dbg !1005, !llvm.loop !1008

; <label>:51:                                     ; preds = %46
  call void @gsl_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 432, i32 16), !dbg !1010
  store i32 16, i32* %4, align 4, !dbg !1010
  br label %96, !dbg !1010
                                                  ; No predecessors!
  br label %53, !dbg !1013

; <label>:53:                                     ; preds = %52
  br label %90, !dbg !1015

; <label>:54:                                     ; preds = %37
  call void @llvm.dbg.declare(metadata double* %13, metadata !1016, metadata !66), !dbg !1018
  %55 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !1019
  %56 = load double, double* %55, align 8, !dbg !1019
  %57 = call double @exp(double %56) #5, !dbg !1020
  call void @callOneArgHandler(i32 11, double %56, double %57, i64 94647000002904, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @9, i32 0, i32 0), i64 94647000004912, i32 435, i32 25), !dbg !1018
  store double %57, double* %13, align 8, !dbg !1018
  %58 = load double, double* %11, align 8, !dbg !1021
  %59 = load double, double* %13, align 8, !dbg !1022
  %60 = fmul double %58, %59, !dbg !1023
  call void @fMulHandler(double %58, double %59, double %60, i64 94647000007080, i64 94647000007464, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @9, i32 0, i32 0), i64 94647000007872, i32 436, i32 26), !dbg !1024
  %61 = fsub double %60, 1.000000e+00, !dbg !1024
  call void @fSubHandler(double %60, double 1.000000e+00, double %61, i64 94647000007872, i64 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @9, i32 0, i32 0), i64 94647000008320, i32 436, i32 30), !dbg !1025
  %62 = load double, double* %6, align 8, !dbg !1025
  %63 = fdiv double %61, %62, !dbg !1026
  call void @fDivHandler(double %61, double %62, double %63, i64 94647000008320, i64 94647000008680, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @9, i32 0, i32 0), i64 94647000009088, i32 436, i32 36), !dbg !1027
  %64 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1027
  %65 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %64, i32 0, i32 0, !dbg !1028
  store double %63, double* %65, align 8, !dbg !1029
  %66 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1030
  %67 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %66, i32 0, i32 0, !dbg !1031
  %68 = load double, double* %67, align 8, !dbg !1031
  %69 = call double @fabs(double %68) #1, !dbg !1032
  %70 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 1, !dbg !1033
  %71 = load double, double* %70, align 8, !dbg !1033
  %72 = fadd double %71, 0x3CC0000000000000, !dbg !1034
  call void @fAddHandler(double %71, double 0x3CC0000000000000, double %72, i64 94647000014200, i64 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @9, i32 0, i32 0), i64 94647000015872, i32 437, i32 54), !dbg !1035
  %73 = fmul double %69, %72, !dbg !1035
  call void @fMulHandler(double %69, double %72, double %73, i64 94647000013296, i64 94647000015872, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @9, i32 0, i32 0), i64 94647000016288, i32 437, i32 40), !dbg !1036
  %74 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1036
  %75 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %74, i32 0, i32 1, !dbg !1037
  store double %73, double* %75, align 8, !dbg !1038
  %76 = load double, double* %11, align 8, !dbg !1039
  %77 = load double, double* %13, align 8, !dbg !1040
  %78 = fmul double %76, %77, !dbg !1041
  call void @fMulHandler(double %76, double %77, double %78, i64 94647000017928, i64 94647000018312, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @9, i32 0, i32 0), i64 94647000018720, i32 438, i32 55), !dbg !1042
  %79 = call double @fabs(double %78) #1, !dbg !1042
  %80 = fadd double %79, 1.000000e+00, !dbg !1043
  call void @fAddHandler(double %79, double 1.000000e+00, double %80, i64 94647000019200, i64 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @9, i32 0, i32 0), i64 94647000019712, i32 438, i32 60), !dbg !1044
  %81 = fmul double 0x3CC0000000000000, %80, !dbg !1044
  call void @fMulHandler(double 0x3CC0000000000000, double %80, double %81, i64 0, i64 94647000019712, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @9, i32 0, i32 0), i64 94647000020096, i32 438, i32 44), !dbg !1045
  %82 = load double, double* %6, align 8, !dbg !1045
  %83 = call double @fabs(double %82) #1, !dbg !1046
  %84 = fdiv double %81, %83, !dbg !1048
  call void @fDivHandler(double %81, double %83, double %84, i64 94647000020096, i64 94647000020960, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @9, i32 0, i32 0), i64 94647000021440, i32 438, i32 67), !dbg !1049
  %85 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1049
  %86 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %85, i32 0, i32 1, !dbg !1050
  %87 = load double, double* %86, align 8, !dbg !1051
  %88 = fadd double %87, %84, !dbg !1051
  call void @fAddHandler(double %87, double %84, double %88, i64 94647000022664, i64 94647000021440, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @9, i32 0, i32 0), i64 94647000023072, i32 438, i32 19), !dbg !1051
  store double %88, double* %86, align 8, !dbg !1051
  %89 = load i32, i32* %12, align 4, !dbg !1052
  store i32 %89, i32* %4, align 4, !dbg !1053
  br label %96, !dbg !1053

; <label>:90:                                     ; preds = %53
  br label %96, !dbg !1054

; <label>:91:                                     ; preds = %31
  %92 = load double, double* %5, align 8, !dbg !1055
  %93 = load double, double* %6, align 8, !dbg !1057
  %94 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1058
  %95 = call i32 @pochrel_smallx(double %92, double %93, %struct.gsl_sf_result_struct* %94), !dbg !1059
  store i32 %95, i32* %4, align 4, !dbg !1060
  br label %96, !dbg !1060

; <label>:96:                                     ; preds = %91, %90, %54, %51
  %97 = load i32, i32* %4, align 4, !dbg !1061
  ret i32 %97, !dbg !1061
}

; Function Attrs: nounwind
declare double @exp(double) #4

; Function Attrs: nounwind uwtable
define internal i32 @pochrel_smallx(double, double, %struct.gsl_sf_result_struct*) #0 !dbg !1062 {
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca %struct.gsl_sf_result_struct*, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca %struct.gsl_sf_result_struct, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca i32, align 4
  %22 = alloca double, align 8
  %23 = alloca double, align 8
  %24 = alloca double, align 8
  %25 = alloca [24 x double], align 16
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca double, align 8
  %29 = alloca double, align 8
  %30 = alloca double, align 8
  %31 = alloca double, align 8
  %32 = alloca double, align 8
  %33 = alloca double, align 8
  %34 = alloca double, align 8
  store double %0, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !1063, metadata !66), !dbg !1064
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !1065, metadata !66), !dbg !1066
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %7, metadata !1067, metadata !66), !dbg !1068
  call void @llvm.dbg.declare(metadata double* %8, metadata !1069, metadata !66), !dbg !1070
  store double 0x5FBA20BD700C2C3D, double* %8, align 8, !dbg !1070
  call void @llvm.dbg.declare(metadata double* %9, metadata !1071, metadata !66), !dbg !1072
  store double 0xC0425E4F7B2737FA, double* %9, align 8, !dbg !1072
  %35 = load double, double* %6, align 8, !dbg !1073
  %36 = fcmp oeq double %35, 0.000000e+00, !dbg !1075
  %37 = call i1 @fCmpInstHandler(double %35, double 0.000000e+00, i1 %36, i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @11, i32 0, i32 0), i64 94647000047296, i32 93, i32 8), !dbg !1076
  br i1 %37, label %38, label %42, !dbg !1076

; <label>:38:                                     ; preds = %3
  %39 = load double, double* %5, align 8, !dbg !1077
  %40 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1079
  %41 = call i32 @gsl_sf_psi_e(double %39, %struct.gsl_sf_result_struct* %40), !dbg !1080
  store i32 %41, i32* %4, align 4, !dbg !1081
  br label %330, !dbg !1081

; <label>:42:                                     ; preds = %3
  call void @llvm.dbg.declare(metadata double* %10, metadata !1082, metadata !66), !dbg !1084
  %43 = load double, double* %5, align 8, !dbg !1085
  %44 = fcmp olt double %43, -5.000000e-01, !dbg !1086
  %45 = call i1 @fCmpInstHandler(double %43, double -5.000000e-01, i1 %44, i32 4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @11, i32 0, i32 0), i64 94647000053648, i32 97, i32 31), !dbg !1087
  br i1 %45, label %46, label %51, !dbg !1087

; <label>:46:                                     ; preds = %42
  %47 = load double, double* %5, align 8, !dbg !1088
  %48 = fsub double 1.000000e+00, %47, !dbg !1090
  call void @fSubHandler(double 1.000000e+00, double %47, double %48, i64 0, i64 94647000054728, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @11, i32 0, i32 0), i64 94647000055104, i32 97, i32 44), !dbg !1091
  %49 = load double, double* %6, align 8, !dbg !1091
  %50 = fsub double %48, %49, !dbg !1092
  call void @fSubHandler(double %48, double %49, double %50, i64 94647000055104, i64 94647000055464, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @11, i32 0, i32 0), i64 94647000055872, i32 97, i32 46), !dbg !1093
  br label %53, !dbg !1093

; <label>:51:                                     ; preds = %42
  %52 = load double, double* %5, align 8, !dbg !1094
  br label %53, !dbg !1096

; <label>:53:                                     ; preds = %51, %46
  %54 = phi double [ %50, %46 ], [ %52, %51 ], !dbg !1097
  store double %54, double* %10, align 8, !dbg !1099
  call void @llvm.dbg.declare(metadata i32* %11, metadata !1100, metadata !66), !dbg !1102
  %55 = load double, double* %10, align 8, !dbg !1103
  %56 = fcmp olt double %55, 1.000000e+01, !dbg !1104
  %57 = call i1 @fCmpInstHandler(double %55, double 1.000000e+01, i1 %56, i32 4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @11, i32 0, i32 0), i64 94647000059840, i32 98, i32 31), !dbg !1105
  br i1 %57, label %58, label %61, !dbg !1105

; <label>:58:                                     ; preds = %53
  %59 = load double, double* %10, align 8, !dbg !1106
  %60 = fsub double 1.100000e+01, %59, !dbg !1107
  call void @fSubHandler(double 1.100000e+01, double %59, double %60, i64 0, i64 94647000060920, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @11, i32 0, i32 0), i64 94647000061360, i32 98, i32 45), !dbg !1108
  br label %62, !dbg !1108

; <label>:61:                                     ; preds = %53
  br label %62, !dbg !1109

; <label>:62:                                     ; preds = %61, %58
  %63 = phi double [ %60, %58 ], [ 0.000000e+00, %61 ], !dbg !1110
  %64 = fptosi double %63 to i32, !dbg !1111
  store i32 %64, i32* %11, align 4, !dbg !1112
  call void @llvm.dbg.declare(metadata double* %12, metadata !1113, metadata !66), !dbg !1114
  %65 = load double, double* %10, align 8, !dbg !1115
  %66 = load i32, i32* %11, align 4, !dbg !1116
  %67 = sitofp i32 %66 to double, !dbg !1116
  %68 = fadd double %65, %67, !dbg !1117
  call void @fAddHandler(double %65, double %67, double %68, i64 94647000064888, i64 94647000065624, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @11, i32 0, i32 0), i64 94647000067296, i32 99, i32 28), !dbg !1114
  store double %68, double* %12, align 8, !dbg !1114
  call void @llvm.dbg.declare(metadata double* %13, metadata !1118, metadata !66), !dbg !1119
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %14, metadata !1120, metadata !66), !dbg !1121
  call void @llvm.dbg.declare(metadata i32* %15, metadata !1122, metadata !66), !dbg !1123
  call void @llvm.dbg.declare(metadata i32* %16, metadata !1124, metadata !66), !dbg !1125
  call void @llvm.dbg.declare(metadata double* %17, metadata !1126, metadata !66), !dbg !1127
  %69 = load double, double* %12, align 8, !dbg !1128
  %70 = load double, double* %6, align 8, !dbg !1129
  %71 = fsub double %70, 1.000000e+00, !dbg !1130
  call void @fSubHandler(double %70, double 1.000000e+00, double %71, i64 94647000075192, i64 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @11, i32 0, i32 0), i64 94647000075632, i32 105, i32 31), !dbg !1131
  %72 = fmul double 5.000000e-01, %71, !dbg !1131
  call void @fMulHandler(double 5.000000e-01, double %71, double %72, i64 0, i64 94647000075632, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @11, i32 0, i32 0), i64 94647000076048, i32 105, i32 28), !dbg !1132
  %73 = fadd double %69, %72, !dbg !1132
  call void @fAddHandler(double %69, double %72, double %73, i64 94647000074840, i64 94647000076048, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @11, i32 0, i32 0), i64 94647000076432, i32 105, i32 23), !dbg !1127
  store double %73, double* %17, align 8, !dbg !1127
  call void @llvm.dbg.declare(metadata double* %18, metadata !1133, metadata !66), !dbg !1134
  %74 = load double, double* %17, align 8, !dbg !1135
  %75 = call double @log(double %74) #5, !dbg !1136
  call void @callOneArgHandler(i32 12, double %74, double %75, i64 94647000079624, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @11, i32 0, i32 0), i64 94647000080064, i32 106, i32 21), !dbg !1134
  store double %75, double* %18, align 8, !dbg !1134
  call void @llvm.dbg.declare(metadata double* %19, metadata !1137, metadata !66), !dbg !1138
  %76 = load double, double* %6, align 8, !dbg !1139
  %77 = load double, double* %18, align 8, !dbg !1140
  %78 = fmul double %76, %77, !dbg !1141
  call void @fMulHandler(double %76, double %77, double %78, i64 94647000083320, i64 94647000083672, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @11, i32 0, i32 0), i64 94647000084080, i32 107, i32 17), !dbg !1138
  store double %78, double* %19, align 8, !dbg !1138
  call void @llvm.dbg.declare(metadata double* %20, metadata !1142, metadata !66), !dbg !1143
  store double 0.000000e+00, double* %20, align 8, !dbg !1143
  %79 = load double, double* %17, align 8, !dbg !1144
  %80 = fcmp olt double %79, 0x5FBA20BD700C2C3D, !dbg !1146
  %81 = call i1 @fCmpInstHandler(double %79, double 0x5FBA20BD700C2C3D, i1 %80, i32 4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @11, i32 0, i32 0), i64 94647000089328, i32 111, i32 12), !dbg !1147
  br i1 %81, label %82, label %191, !dbg !1147

; <label>:82:                                     ; preds = %62
  call void @llvm.dbg.declare(metadata i32* %21, metadata !1148, metadata !66), !dbg !1150
  %83 = load double, double* %18, align 8, !dbg !1151
  %84 = fdiv double 0x40325E4F7B2737FA, %83, !dbg !1152
  call void @fDivHandler(double 0x40325E4F7B2737FA, double %83, double %84, i64 0, i64 94647000091496, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @11, i32 0, i32 0), i64 94647000091936, i32 112, i32 43), !dbg !1153
  %85 = fadd double %84, 1.000000e+00, !dbg !1153
  call void @fAddHandler(double %84, double 1.000000e+00, double %85, i64 94647000091936, i64 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @11, i32 0, i32 0), i64 94647000092384, i32 112, i32 51), !dbg !1154
  %86 = fptosi double %85 to i32, !dbg !1154
  store i32 %86, i32* %21, align 4, !dbg !1150
  call void @llvm.dbg.declare(metadata double* %22, metadata !1155, metadata !66), !dbg !1156
  %87 = load double, double* %17, align 8, !dbg !1157
  %88 = fdiv double 1.000000e+00, %87, !dbg !1158
  call void @fDivHandler(double 1.000000e+00, double %87, double %88, i64 0, i64 94647000095928, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @11, i32 0, i32 0), i64 94647000096336, i32 113, i32 31), !dbg !1159
  %89 = load double, double* %17, align 8, !dbg !1159
  %90 = fdiv double %88, %89, !dbg !1160
  call void @fDivHandler(double %88, double %89, double %90, i64 94647000096336, i64 94647000096696, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @11, i32 0, i32 0), i64 94647000097104, i32 113, i32 36), !dbg !1156
  store double %90, double* %22, align 8, !dbg !1156
  call void @llvm.dbg.declare(metadata double* %23, metadata !1161, metadata !66), !dbg !1162
  %91 = load double, double* %6, align 8, !dbg !1163
  %92 = fadd double %91, 1.000000e+00, !dbg !1164
  call void @fAddHandler(double %91, double 1.000000e+00, double %92, i64 94647000100296, i64 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @11, i32 0, i32 0), i64 94647000100704, i32 114, i32 36), !dbg !1165
  %93 = fmul double 5.000000e-01, %92, !dbg !1165
  call void @fMulHandler(double 5.000000e-01, double %92, double %93, i64 0, i64 94647000100704, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @11, i32 0, i32 0), i64 94647000101120, i32 114, i32 31), !dbg !1162
  store double %93, double* %23, align 8, !dbg !1162
  call void @llvm.dbg.declare(metadata double* %24, metadata !1166, metadata !66), !dbg !1167
  %94 = load double, double* %22, align 8, !dbg !1168
  store double %94, double* %24, align 8, !dbg !1167
  call void @llvm.dbg.declare(metadata [24 x double]* %25, metadata !1169, metadata !66), !dbg !1173
  call void @llvm.dbg.declare(metadata i32* %26, metadata !1174, metadata !66), !dbg !1175
  call void @llvm.dbg.declare(metadata i32* %27, metadata !1176, metadata !66), !dbg !1177
  %95 = getelementptr inbounds [24 x double], [24 x double]* %25, i64 0, i64 1, !dbg !1178
  store double 1.000000e+00, double* %95, align 8, !dbg !1179
  %96 = load double, double* %23, align 8, !dbg !1180
  %97 = fsub double -0.000000e+00, %96, !dbg !1181
  call void @fSubHandler(double -0.000000e+00, double %96, double %97, i64 0, i64 94646999781624, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @11, i32 0, i32 0), i64 94646999782032, i32 120, i32 18), !dbg !1182
  %98 = fdiv double %97, 1.200000e+01, !dbg !1182
  call void @fDivHandler(double %97, double 1.200000e+01, double %98, i64 94646999782032, i64 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @11, i32 0, i32 0), i64 94646999782480, i32 120, i32 22), !dbg !1183
  %99 = getelementptr inbounds [24 x double], [24 x double]* %25, i64 0, i64 2, !dbg !1183
  store double %98, double* %99, align 16, !dbg !1184
  %100 = getelementptr inbounds [24 x double], [24 x double]* %25, i64 0, i64 2, !dbg !1185
  %101 = load double, double* %100, align 16, !dbg !1185
  %102 = load double, double* %24, align 8, !dbg !1186
  %103 = fmul double %101, %102, !dbg !1187
  call void @fMulHandler(double %101, double %102, double %103, i64 94646999784216, i64 94646999784312, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @11, i32 0, i32 0), i64 94647000121456, i32 121, i32 24), !dbg !1188
  store double %103, double* %20, align 8, !dbg !1188
  %104 = load i32, i32* %21, align 4, !dbg !1189
  %105 = icmp sgt i32 %104, 20, !dbg !1191
  %106 = sext i32 %104 to i64, !dbg !1192
  %107 = call i1 @iCmpInstHandler(i64 %106, i64 20, i1 %105, i32 38, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @11, i32 0, i32 0), i64 94647000122672, i32 123, i32 17), !dbg !1192
  br i1 %107, label %108, label %115, !dbg !1192

; <label>:108:                                    ; preds = %82
  %109 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1193
  %110 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %109, i32 0, i32 0, !dbg !1195
  store double 0.000000e+00, double* %110, align 8, !dbg !1196
  %111 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1197
  %112 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %111, i32 0, i32 1, !dbg !1198
  store double 0.000000e+00, double* %112, align 8, !dbg !1199
  br label %113, !dbg !1200, !llvm.loop !1201

; <label>:113:                                    ; preds = %108
  call void @gsl_error(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 128, i32 7), !dbg !1202
  store i32 7, i32* %4, align 4, !dbg !1202
  br label %330, !dbg !1202
                                                  ; No predecessors!
  br label %115, !dbg !1205

; <label>:115:                                    ; preds = %114, %82
  store i32 2, i32* %26, align 4, !dbg !1206
  br label %116, !dbg !1208

; <label>:116:                                    ; preds = %187, %115
  %117 = load i32, i32* %26, align 4, !dbg !1209
  %118 = load i32, i32* %21, align 4, !dbg !1212
  %119 = icmp sle i32 %117, %118, !dbg !1213
  %120 = sext i32 %117 to i64, !dbg !1214
  %121 = sext i32 %118 to i64, !dbg !1214
  %122 = call i1 @iCmpInstHandler(i64 %120, i64 %121, i1 %119, i32 41, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @11, i32 0, i32 0), i64 94647000131712, i32 131, i32 17), !dbg !1214
  br i1 %122, label %123, label %190, !dbg !1214

; <label>:123:                                    ; preds = %116
  call void @llvm.dbg.declare(metadata double* %28, metadata !1215, metadata !66), !dbg !1217
  store double 0.000000e+00, double* %28, align 8, !dbg !1217
  store i32 1, i32* %27, align 4, !dbg !1218
  br label %124, !dbg !1220

; <label>:124:                                    ; preds = %146, %123
  %125 = load i32, i32* %27, align 4, !dbg !1221
  %126 = load i32, i32* %26, align 4, !dbg !1224
  %127 = icmp sle i32 %125, %126, !dbg !1225
  %128 = sext i32 %125 to i64, !dbg !1226
  %129 = sext i32 %126 to i64, !dbg !1226
  %130 = call i1 @iCmpInstHandler(i64 %128, i64 %129, i1 %127, i32 41, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @11, i32 0, i32 0), i64 94647000137200, i32 133, i32 19), !dbg !1226
  br i1 %130, label %131, label %149, !dbg !1226

; <label>:131:                                    ; preds = %124
  %132 = load i32, i32* %26, align 4, !dbg !1227
  %133 = load i32, i32* %27, align 4, !dbg !1229
  %134 = sub nsw i32 %132, %133, !dbg !1230
  %135 = add nsw i32 %134, 1, !dbg !1231
  %136 = sext i32 %135 to i64, !dbg !1232
  %137 = getelementptr inbounds [21 x double], [21 x double]* @bern, i64 0, i64 %136, !dbg !1232
  %138 = load double, double* %137, align 8, !dbg !1232
  %139 = load i32, i32* %27, align 4, !dbg !1233
  %140 = sext i32 %139 to i64, !dbg !1234
  %141 = getelementptr inbounds [24 x double], [24 x double]* %25, i64 0, i64 %140, !dbg !1234
  %142 = load double, double* %141, align 8, !dbg !1234
  %143 = fmul double %138, %142, !dbg !1235
  call void @fMulHandler(double %138, double %142, double %143, i64 94647000141944, i64 94647000146584, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @11, i32 0, i32 0), i64 94647000146704, i32 134, i32 29), !dbg !1236
  %144 = load double, double* %28, align 8, !dbg !1236
  %145 = fadd double %144, %143, !dbg !1236
  call void @fAddHandler(double %144, double %143, double %145, i64 94647000147096, i64 94647000146704, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @11, i32 0, i32 0), i64 94647000147504, i32 134, i32 15), !dbg !1236
  store double %145, double* %28, align 8, !dbg !1236
  br label %146, !dbg !1237

; <label>:146:                                    ; preds = %131
  %147 = load i32, i32* %27, align 4, !dbg !1238
  %148 = add nsw i32 %147, 1, !dbg !1238
  store i32 %148, i32* %27, align 4, !dbg !1238
  br label %124, !dbg !1240, !llvm.loop !1241

; <label>:149:                                    ; preds = %124
  %150 = load double, double* %23, align 8, !dbg !1243
  %151 = fsub double -0.000000e+00, %150, !dbg !1244
  call void @fSubHandler(double -0.000000e+00, double %150, double %151, i64 0, i64 94647000152616, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @11, i32 0, i32 0), i64 94647000152960, i32 136, i32 22), !dbg !1245
  %152 = load double, double* %28, align 8, !dbg !1245
  %153 = fmul double %151, %152, !dbg !1246
  call void @fMulHandler(double %151, double %152, double %153, i64 94647000152960, i64 94647000153352, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @11, i32 0, i32 0), i64 94647000153760, i32 136, i32 26), !dbg !1247
  %154 = load i32, i32* %26, align 4, !dbg !1247
  %155 = sitofp i32 %154 to double, !dbg !1247
  %156 = fdiv double %153, %155, !dbg !1248
  call void @fDivHandler(double %153, double %155, double %156, i64 94647000153760, i64 94647000154536, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @11, i32 0, i32 0), i64 94647000156208, i32 136, i32 30), !dbg !1249
  %157 = load i32, i32* %26, align 4, !dbg !1249
  %158 = add nsw i32 %157, 1, !dbg !1250
  %159 = sext i32 %158 to i64, !dbg !1251
  %160 = getelementptr inbounds [24 x double], [24 x double]* %25, i64 0, i64 %159, !dbg !1251
  store double %156, double* %160, align 8, !dbg !1252
  %161 = load i32, i32* %26, align 4, !dbg !1253
  %162 = mul nsw i32 2, %161, !dbg !1254
  %163 = sub nsw i32 %162, 2, !dbg !1255
  %164 = sitofp i32 %163 to double, !dbg !1256
  %165 = load double, double* %6, align 8, !dbg !1257
  %166 = fsub double %164, %165, !dbg !1258
  call void @fSubHandler(double %164, double %165, double %166, i64 94647000161128, i64 94647000161512, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @11, i32 0, i32 0), i64 94647000161920, i32 138, i32 24), !dbg !1259
  %167 = load i32, i32* %26, align 4, !dbg !1259
  %168 = mul nsw i32 2, %167, !dbg !1260
  %169 = sub nsw i32 %168, 1, !dbg !1261
  %170 = sitofp i32 %169 to double, !dbg !1262
  %171 = load double, double* %6, align 8, !dbg !1263
  %172 = fsub double %170, %171, !dbg !1264
  call void @fSubHandler(double %170, double %171, double %172, i64 94647000163528, i64 94647000163912, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @11, i32 0, i32 0), i64 94647000164320, i32 138, i32 34), !dbg !1265
  %173 = fmul double %166, %172, !dbg !1265
  call void @fMulHandler(double %166, double %172, double %173, i64 94647000161920, i64 94647000164320, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @11, i32 0, i32 0), i64 94647000164736, i32 138, i32 27), !dbg !1266
  %174 = load double, double* %22, align 8, !dbg !1266
  %175 = fmul double %173, %174, !dbg !1267
  call void @fMulHandler(double %173, double %174, double %175, i64 94647000164736, i64 94647000165128, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @11, i32 0, i32 0), i64 94647000165536, i32 138, i32 37), !dbg !1268
  %176 = load double, double* %24, align 8, !dbg !1268
  %177 = fmul double %176, %175, !dbg !1268
  call void @fMulHandler(double %176, double %175, double %177, i64 94647000165928, i64 94647000165536, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @11, i32 0, i32 0), i64 94647000166336, i32 138, i32 15), !dbg !1268
  store double %177, double* %24, align 8, !dbg !1268
  %178 = load i32, i32* %26, align 4, !dbg !1269
  %179 = add nsw i32 %178, 1, !dbg !1270
  %180 = sext i32 %179 to i64, !dbg !1271
  %181 = getelementptr inbounds [24 x double], [24 x double]* %25, i64 0, i64 %180, !dbg !1271
  %182 = load double, double* %181, align 8, !dbg !1271
  %183 = load double, double* %24, align 8, !dbg !1272
  %184 = fmul double %182, %183, !dbg !1273
  call void @fMulHandler(double %182, double %183, double %184, i64 94647000171016, i64 94647000171112, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @11, i32 0, i32 0), i64 94647000171520, i32 139, i32 28), !dbg !1274
  %185 = load double, double* %20, align 8, !dbg !1274
  %186 = fadd double %185, %184, !dbg !1274
  call void @fAddHandler(double %185, double %184, double %186, i64 94647000171912, i64 94647000171520, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @11, i32 0, i32 0), i64 94647000172320, i32 139, i32 15), !dbg !1274
  store double %186, double* %20, align 8, !dbg !1274
  br label %187, !dbg !1275

; <label>:187:                                    ; preds = %149
  %188 = load i32, i32* %26, align 4, !dbg !1276
  %189 = add nsw i32 %188, 1, !dbg !1276
  store i32 %189, i32* %26, align 4, !dbg !1276
  br label %116, !dbg !1278, !llvm.loop !1279

; <label>:190:                                    ; preds = %116
  br label %191, !dbg !1281

; <label>:191:                                    ; preds = %190, %62
  %192 = load double, double* %19, align 8, !dbg !1282
  %193 = call i32 @gsl_sf_expm1_e(double %192, %struct.gsl_sf_result_struct* %14), !dbg !1283
  store i32 %193, i32* %15, align 4, !dbg !1284
  %194 = load i32, i32* %15, align 4, !dbg !1285
  %195 = icmp ne i32 %194, 0, !dbg !1287
  %196 = sext i32 %194 to i64, !dbg !1288
  %197 = call i1 @iCmpInstHandler(i64 %196, i64 0, i1 %195, i32 33, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @11, i32 0, i32 0), i64 94647000179696, i32 144, i32 20), !dbg !1288
  br i1 %197, label %198, label %204, !dbg !1288

; <label>:198:                                    ; preds = %191
  %199 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1289
  %200 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %199, i32 0, i32 0, !dbg !1291
  store double 0.000000e+00, double* %200, align 8, !dbg !1292
  %201 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1293
  %202 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %201, i32 0, i32 1, !dbg !1294
  store double 0.000000e+00, double* %202, align 8, !dbg !1295
  %203 = load i32, i32* %15, align 4, !dbg !1296
  store i32 %203, i32* %4, align 4, !dbg !1297
  br label %330, !dbg !1297

; <label>:204:                                    ; preds = %191
  %205 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 0, !dbg !1298
  %206 = load double, double* %205, align 8, !dbg !1298
  %207 = load double, double* %19, align 8, !dbg !1299
  %208 = fdiv double %206, %207, !dbg !1300
  call void @fDivHandler(double %206, double %207, double %208, i64 94647000186072, i64 94647000187720, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @11, i32 0, i32 0), i64 94647000188128, i32 149, i32 28), !dbg !1301
  %209 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 0, !dbg !1301
  store double %208, double* %209, align 8, !dbg !1302
  %210 = load double, double* %6, align 8, !dbg !1303
  %211 = fsub double %210, 1.000000e+00, !dbg !1304
  call void @fSubHandler(double %210, double 1.000000e+00, double %211, i64 94647000189384, i64 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @11, i32 0, i32 0), i64 94647000189824, i32 150, i32 17), !dbg !1305
  %212 = load double, double* %20, align 8, !dbg !1305
  %213 = fmul double %212, %211, !dbg !1305
  call void @fMulHandler(double %212, double %211, double %213, i64 94647000190184, i64 94647000189824, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @11, i32 0, i32 0), i64 94647000190592, i32 150, i32 11), !dbg !1305
  store double %213, double* %20, align 8, !dbg !1305
  %214 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 0, !dbg !1306
  %215 = load double, double* %214, align 8, !dbg !1306
  %216 = load double, double* %18, align 8, !dbg !1307
  %217 = load double, double* %19, align 8, !dbg !1308
  %218 = load double, double* %20, align 8, !dbg !1309
  %219 = fmul double %217, %218, !dbg !1310
  call void @fMulHandler(double %217, double %218, double %219, i64 94647000194856, i64 94647000195240, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @11, i32 0, i32 0), i64 94647000195648, i32 151, i32 39), !dbg !1311
  %220 = fadd double %216, %219, !dbg !1311
  call void @fAddHandler(double %216, double %219, double %220, i64 94647000194472, i64 94647000195648, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @11, i32 0, i32 0), i64 94647000196064, i32 151, i32 35), !dbg !1312
  %221 = fmul double %215, %220, !dbg !1312
  call void @fMulHandler(double %215, double %220, double %221, i64 94647000192824, i64 94647000196064, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @11, i32 0, i32 0), i64 94647000196480, i32 151, i32 25), !dbg !1313
  %222 = load double, double* %20, align 8, !dbg !1313
  %223 = fadd double %221, %222, !dbg !1314
  call void @fAddHandler(double %221, double %222, double %223, i64 94647000196480, i64 94647000196872, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @11, i32 0, i32 0), i64 94647000197280, i32 151, i32 48), !dbg !1315
  store double %223, double* %13, align 8, !dbg !1315
  %224 = load i32, i32* %11, align 4, !dbg !1316
  %225 = sub nsw i32 %224, 1, !dbg !1318
  store i32 %225, i32* %16, align 4, !dbg !1319
  br label %226, !dbg !1320

; <label>:226:                                    ; preds = %245, %204
  %227 = load i32, i32* %16, align 4, !dbg !1321
  %228 = icmp sge i32 %227, 0, !dbg !1324
  %229 = sext i32 %227 to i64, !dbg !1325
  %230 = call i1 @iCmpInstHandler(i64 %229, i64 0, i1 %228, i32 39, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @11, i32 0, i32 0), i64 94647000200176, i32 153, i32 21), !dbg !1325
  br i1 %230, label %231, label %248, !dbg !1325

; <label>:231:                                    ; preds = %226
  call void @llvm.dbg.declare(metadata double* %29, metadata !1326, metadata !66), !dbg !1328
  %232 = load double, double* %10, align 8, !dbg !1329
  %233 = load i32, i32* %16, align 4, !dbg !1330
  %234 = sitofp i32 %233 to double, !dbg !1330
  %235 = fadd double %232, %234, !dbg !1331
  call void @fAddHandler(double %232, double %234, double %235, i64 94647000202440, i64 94647000203176, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @11, i32 0, i32 0), i64 94647000204848, i32 158, i32 28), !dbg !1332
  %236 = fdiv double 1.000000e+00, %235, !dbg !1332
  call void @fDivHandler(double 1.000000e+00, double %235, double %236, i64 0, i64 94647000204848, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @11, i32 0, i32 0), i64 94647000205296, i32 158, i32 24), !dbg !1328
  store double %236, double* %29, align 8, !dbg !1328
  %237 = load double, double* %13, align 8, !dbg !1333
  %238 = load double, double* %29, align 8, !dbg !1334
  %239 = fsub double %237, %238, !dbg !1335
  call void @fSubHandler(double %237, double %238, double %239, i64 94647000207336, i64 94647000207720, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @11, i32 0, i32 0), i64 94647000208128, i32 159, i32 24), !dbg !1336
  %240 = load double, double* %6, align 8, !dbg !1336
  %241 = load double, double* %29, align 8, !dbg !1337
  %242 = fmul double %240, %241, !dbg !1338
  call void @fMulHandler(double %240, double %241, double %242, i64 94647000208520, i64 94647000208904, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @11, i32 0, i32 0), i64 94647000209312, i32 159, i32 42), !dbg !1339
  %243 = fadd double 1.000000e+00, %242, !dbg !1339
  call void @fAddHandler(double 1.000000e+00, double %242, double %243, i64 0, i64 94647000209312, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @11, i32 0, i32 0), i64 94647000209760, i32 159, i32 39), !dbg !1340
  %244 = fdiv double %239, %243, !dbg !1340
  call void @fDivHandler(double %239, double %243, double %244, i64 94647000208128, i64 94647000209760, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @11, i32 0, i32 0), i64 94647000210144, i32 159, i32 32), !dbg !1341
  store double %244, double* %13, align 8, !dbg !1341
  br label %245, !dbg !1342

; <label>:245:                                    ; preds = %231
  %246 = load i32, i32* %16, align 4, !dbg !1343
  %247 = add nsw i32 %246, -1, !dbg !1343
  store i32 %247, i32* %16, align 4, !dbg !1343
  br label %226, !dbg !1345, !llvm.loop !1346

; <label>:248:                                    ; preds = %226
  %249 = load double, double* %10, align 8, !dbg !1348
  %250 = load double, double* %5, align 8, !dbg !1350
  %251 = fcmp oeq double %249, %250, !dbg !1351
  %252 = call i1 @fCmpInstHandler(double %249, double %250, i1 %251, i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @11, i32 0, i32 0), i64 94647000215008, i32 162, i32 11), !dbg !1352
  br i1 %252, label %253, label %269, !dbg !1352

; <label>:253:                                    ; preds = %248
  %254 = load double, double* %13, align 8, !dbg !1353
  %255 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1355
  %256 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %255, i32 0, i32 0, !dbg !1356
  store double %254, double* %256, align 8, !dbg !1357
  %257 = load i32, i32* %11, align 4, !dbg !1358
  %258 = sitofp i32 %257 to double, !dbg !1358
  %259 = call double @fabs(double %258) #1, !dbg !1359
  %260 = fadd double %259, 1.000000e+00, !dbg !1360
  call void @fAddHandler(double %259, double 1.000000e+00, double %260, i64 94647000219808, i64 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @11, i32 0, i32 0), i64 94647000220320, i32 164, i32 57), !dbg !1361
  %261 = fmul double 0x3CC0000000000000, %260, !dbg !1361
  call void @fMulHandler(double 0x3CC0000000000000, double %260, double %261, i64 0, i64 94647000220320, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @11, i32 0, i32 0), i64 94647000220704, i32 164, i32 43), !dbg !1362
  %262 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1362
  %263 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %262, i32 0, i32 0, !dbg !1363
  %264 = load double, double* %263, align 8, !dbg !1363
  %265 = call double @fabs(double %264) #1, !dbg !1364
  %266 = fmul double %261, %265, !dbg !1366
  call void @fMulHandler(double %261, double %265, double %266, i64 94647000220704, i64 94647000223664, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @11, i32 0, i32 0), i64 94647000224144, i32 164, i32 64), !dbg !1367
  %267 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1367
  %268 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %267, i32 0, i32 1, !dbg !1368
  store double %266, double* %268, align 8, !dbg !1369
  store i32 0, i32* %4, align 4, !dbg !1370
  br label %330, !dbg !1370

; <label>:269:                                    ; preds = %248
  call void @llvm.dbg.declare(metadata double* %30, metadata !1371, metadata !66), !dbg !1373
  %270 = load double, double* %6, align 8, !dbg !1374
  %271 = fmul double 0x400921FB54442D18, %270, !dbg !1375
  call void @fMulHandler(double 0x400921FB54442D18, double %270, double %271, i64 0, i64 94647000228904, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @11, i32 0, i32 0), i64 94647000229280, i32 172, i32 31), !dbg !1376
  %272 = call double @sin(double %271) #5, !dbg !1376
  call void @callOneArgHandler(i32 1, double %271, double %272, i64 94647000229280, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @11, i32 0, i32 0), i64 94647000229760, i32 172, i32 23), !dbg !1377
  %273 = load double, double* %6, align 8, !dbg !1377
  %274 = fdiv double %272, %273, !dbg !1378
  call void @fDivHandler(double %272, double %273, double %274, i64 94647000229760, i64 94647000230216, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @11, i32 0, i32 0), i64 94647000142832, i32 172, i32 34), !dbg !1373
  store double %274, double* %30, align 8, !dbg !1373
  call void @llvm.dbg.declare(metadata double* %31, metadata !1379, metadata !66), !dbg !1380
  %275 = load double, double* %6, align 8, !dbg !1381
  %276 = fmul double 0x3FF921FB54442D18, %275, !dbg !1382
  call void @fMulHandler(double 0x3FF921FB54442D18, double %275, double %276, i64 0, i64 94647000144472, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @11, i32 0, i32 0), i64 94647000236352, i32 173, i32 35), !dbg !1383
  %277 = call double @sin(double %276) #5, !dbg !1383
  call void @callOneArgHandler(i32 1, double %276, double %277, i64 94647000236352, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @11, i32 0, i32 0), i64 94647000236800, i32 173, i32 23), !dbg !1380
  store double %277, double* %31, align 8, !dbg !1380
  call void @llvm.dbg.declare(metadata double* %32, metadata !1384, metadata !66), !dbg !1385
  %278 = load double, double* %30, align 8, !dbg !1386
  %279 = load double, double* %12, align 8, !dbg !1387
  %280 = fmul double 0x400921FB54442D18, %279, !dbg !1388
  call void @fMulHandler(double 0x400921FB54442D18, double %279, double %280, i64 0, i64 94647000240408, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @11, i32 0, i32 0), i64 94647000240816, i32 174, i32 34), !dbg !1389
  %281 = call double @tan(double %280) #5, !dbg !1389
  call void @callOneArgHandler(i32 3, double %280, double %281, i64 94647000240816, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @11, i32 0, i32 0), i64 94647000241568, i32 174, i32 26), !dbg !1390
  %282 = fdiv double %278, %281, !dbg !1390
  call void @fDivHandler(double %278, double %281, double %282, i64 94647000240056, i64 94647000241568, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @11, i32 0, i32 0), i64 94647000242080, i32 174, i32 25), !dbg !1385
  store double %282, double* %32, align 8, !dbg !1385
  call void @llvm.dbg.declare(metadata double* %33, metadata !1391, metadata !66), !dbg !1392
  %283 = load double, double* %31, align 8, !dbg !1393
  %284 = fmul double 2.000000e+00, %283, !dbg !1394
  call void @fMulHandler(double 2.000000e+00, double %283, double %284, i64 0, i64 94647000245320, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @11, i32 0, i32 0), i64 94647000245728, i32 175, i32 22), !dbg !1395
  %285 = load double, double* %31, align 8, !dbg !1395
  %286 = load double, double* %6, align 8, !dbg !1396
  %287 = fdiv double %285, %286, !dbg !1397
  call void @fDivHandler(double %285, double %286, double %287, i64 94647000246088, i64 94647000246472, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @11, i32 0, i32 0), i64 94647000246880, i32 175, i32 37), !dbg !1398
  %288 = fmul double %284, %287, !dbg !1398
  call void @fMulHandler(double %284, double %287, double %288, i64 94647000245728, i64 94647000246880, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @11, i32 0, i32 0), i64 94647000247296, i32 175, i32 29), !dbg !1392
  store double %288, double* %33, align 8, !dbg !1392
  call void @llvm.dbg.declare(metadata double* %34, metadata !1399, metadata !66), !dbg !1400
  %289 = load double, double* %32, align 8, !dbg !1401
  %290 = load double, double* %33, align 8, !dbg !1402
  %291 = fsub double %289, %290, !dbg !1403
  call void @fSubHandler(double %289, double %290, double %291, i64 94647000250488, i64 94647000250840, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @11, i32 0, i32 0), i64 94647000251248, i32 176, i32 25), !dbg !1400
  store double %291, double* %34, align 8, !dbg !1400
  %292 = load double, double* %13, align 8, !dbg !1404
  %293 = load double, double* %6, align 8, !dbg !1405
  %294 = load double, double* %34, align 8, !dbg !1406
  %295 = fmul double %293, %294, !dbg !1407
  call void @fMulHandler(double %293, double %294, double %295, i64 94647000253704, i64 94647000254088, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @11, i32 0, i32 0), i64 94647000254496, i32 177, i32 39), !dbg !1408
  %296 = fadd double 1.000000e+00, %295, !dbg !1408
  call void @fAddHandler(double 1.000000e+00, double %295, double %296, i64 0, i64 94647000254496, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @11, i32 0, i32 0), i64 94647000254944, i32 177, i32 36), !dbg !1409
  %297 = fmul double %292, %296, !dbg !1409
  call void @fMulHandler(double %292, double %296, double %297, i64 94647000253320, i64 94647000254944, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @11, i32 0, i32 0), i64 94647000255328, i32 177, i32 29), !dbg !1410
  %298 = load double, double* %34, align 8, !dbg !1410
  %299 = fadd double %297, %298, !dbg !1411
  call void @fAddHandler(double %297, double %298, double %299, i64 94647000255328, i64 94647000255720, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @11, i32 0, i32 0), i64 94647000256128, i32 177, i32 46), !dbg !1412
  %300 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1412
  %301 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %300, i32 0, i32 0, !dbg !1413
  store double %299, double* %301, align 8, !dbg !1414
  %302 = load double, double* %13, align 8, !dbg !1415
  %303 = load double, double* %6, align 8, !dbg !1416
  %304 = fmul double %302, %303, !dbg !1417
  call void @fMulHandler(double %302, double %303, double %304, i64 94647000257768, i64 94647000258152, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @11, i32 0, i32 0), i64 94647000258560, i32 178, i32 34), !dbg !1418
  %305 = call double @fabs(double %304) #1, !dbg !1418
  %306 = fadd double %305, 1.000000e+00, !dbg !1419
  call void @fAddHandler(double %305, double 1.000000e+00, double %306, i64 94647000259040, i64 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @11, i32 0, i32 0), i64 94647000259552, i32 178, i32 38), !dbg !1420
  %307 = fmul double %306, 0x3CB0000000000000, !dbg !1420
  call void @fMulHandler(double %306, double 0x3CB0000000000000, double %307, i64 94647000259552, i64 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @11, i32 0, i32 0), i64 94647000259936, i32 178, i32 45), !dbg !1421
  %308 = load double, double* %32, align 8, !dbg !1421
  %309 = call double @fabs(double %308) #1, !dbg !1422
  %310 = load double, double* %33, align 8, !dbg !1424
  %311 = call double @fabs(double %310) #1, !dbg !1425
  %312 = fadd double %309, %311, !dbg !1427
  call void @fAddHandler(double %309, double %311, double %312, i64 94647000260800, i64 94647000261728, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @11, i32 0, i32 0), i64 94647000262208, i32 178, i32 75), !dbg !1428
  %313 = fmul double %307, %312, !dbg !1428
  call void @fMulHandler(double %307, double %312, double %313, i64 94647000259936, i64 94647000262208, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @11, i32 0, i32 0), i64 94647000262624, i32 178, i32 63), !dbg !1429
  %314 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1429
  %315 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %314, i32 0, i32 1, !dbg !1430
  store double %313, double* %315, align 8, !dbg !1431
  %316 = load i32, i32* %11, align 4, !dbg !1432
  %317 = sitofp i32 %316 to double, !dbg !1432
  %318 = call double @fabs(double %317) #1, !dbg !1433
  %319 = fadd double %318, 1.000000e+00, !dbg !1434
  call void @fAddHandler(double %318, double 1.000000e+00, double %319, i64 94647000266384, i64 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @11, i32 0, i32 0), i64 94647000266896, i32 179, i32 58), !dbg !1435
  %320 = fmul double 0x3CC0000000000000, %319, !dbg !1435
  call void @fMulHandler(double 0x3CC0000000000000, double %319, double %320, i64 0, i64 94647000266896, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @11, i32 0, i32 0), i64 94647000267280, i32 179, i32 44), !dbg !1436
  %321 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1436
  %322 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %321, i32 0, i32 0, !dbg !1437
  %323 = load double, double* %322, align 8, !dbg !1437
  %324 = call double @fabs(double %323) #1, !dbg !1438
  %325 = fmul double %320, %324, !dbg !1439
  call void @fMulHandler(double %320, double %324, double %325, i64 94647000267280, i64 94647000270240, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @11, i32 0, i32 0), i64 94647000270720, i32 179, i32 65), !dbg !1440
  %326 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1440
  %327 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %326, i32 0, i32 1, !dbg !1441
  %328 = load double, double* %327, align 8, !dbg !1442
  %329 = fadd double %328, %325, !dbg !1442
  call void @fAddHandler(double %328, double %325, double %329, i64 94647000271944, i64 94647000270720, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @11, i32 0, i32 0), i64 94647000272352, i32 179, i32 19), !dbg !1442
  store double %329, double* %327, align 8, !dbg !1442
  store i32 0, i32* %4, align 4, !dbg !1443
  br label %330, !dbg !1443

; <label>:330:                                    ; preds = %269, %253, %198, %113, %38
  %331 = load i32, i32* %4, align 4, !dbg !1444
  ret i32 %331, !dbg !1444
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_lnpoch(double, double) #0 !dbg !1445 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca %struct.gsl_sf_result_struct, align 8
  %7 = alloca i32, align 4
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !1448, metadata !66), !dbg !1449
  store double %1, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !1450, metadata !66), !dbg !1451
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %6, metadata !1452, metadata !66), !dbg !1453
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1454, metadata !66), !dbg !1453
  %8 = load double, double* %4, align 8, !dbg !1453
  %9 = load double, double* %5, align 8, !dbg !1453
  %10 = call i32 @gsl_sf_lnpoch_e(double %8, double %9, %struct.gsl_sf_result_struct* %6), !dbg !1453
  store i32 %10, i32* %7, align 4, !dbg !1453
  %11 = load i32, i32* %7, align 4, !dbg !1455
  %12 = icmp ne i32 %11, 0, !dbg !1455
  %13 = sext i32 %11 to i64, !dbg !1453
  %14 = call i1 @iCmpInstHandler(i64 %13, i64 0, i1 %12, i32 33, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @13, i32 0, i32 0), i64 94647000282544, i32 454, i32 3), !dbg !1453
  br i1 %14, label %15, label %21, !dbg !1453

; <label>:15:                                     ; preds = %2
  br label %16, !dbg !1457, !llvm.loop !1460

; <label>:16:                                     ; preds = %15
  %17 = load i32, i32* %7, align 4, !dbg !1462
  call void @gsl_error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 454, i32 %17), !dbg !1462
  %18 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !1462
  %19 = load double, double* %18, align 8, !dbg !1462
  store double %19, double* %3, align 8, !dbg !1462
  br label %24, !dbg !1462
                                                  ; No predecessors!
  br label %21, !dbg !1465

; <label>:21:                                     ; preds = %20, %2
  %22 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !1467
  %23 = load double, double* %22, align 8, !dbg !1467
  store double %23, double* %3, align 8, !dbg !1467
  br label %24, !dbg !1467

; <label>:24:                                     ; preds = %21, %16
  %25 = load double, double* %3, align 8, !dbg !1469
  ret double %25, !dbg !1469
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_poch(double, double) #0 !dbg !1470 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca %struct.gsl_sf_result_struct, align 8
  %7 = alloca i32, align 4
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !1471, metadata !66), !dbg !1472
  store double %1, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !1473, metadata !66), !dbg !1474
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %6, metadata !1475, metadata !66), !dbg !1476
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1477, metadata !66), !dbg !1476
  %8 = load double, double* %4, align 8, !dbg !1476
  %9 = load double, double* %5, align 8, !dbg !1476
  %10 = call i32 @gsl_sf_poch_e(double %8, double %9, %struct.gsl_sf_result_struct* %6), !dbg !1476
  store i32 %10, i32* %7, align 4, !dbg !1476
  %11 = load i32, i32* %7, align 4, !dbg !1478
  %12 = icmp ne i32 %11, 0, !dbg !1478
  %13 = sext i32 %11 to i64, !dbg !1476
  %14 = call i1 @iCmpInstHandler(i64 %13, i64 0, i1 %12, i32 33, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @15, i32 0, i32 0), i64 94647000301360, i32 459, i32 3), !dbg !1476
  br i1 %14, label %15, label %21, !dbg !1476

; <label>:15:                                     ; preds = %2
  br label %16, !dbg !1480, !llvm.loop !1483

; <label>:16:                                     ; preds = %15
  %17 = load i32, i32* %7, align 4, !dbg !1485
  call void @gsl_error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 459, i32 %17), !dbg !1485
  %18 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !1485
  %19 = load double, double* %18, align 8, !dbg !1485
  store double %19, double* %3, align 8, !dbg !1485
  br label %24, !dbg !1485
                                                  ; No predecessors!
  br label %21, !dbg !1488

; <label>:21:                                     ; preds = %20, %2
  %22 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !1490
  %23 = load double, double* %22, align 8, !dbg !1490
  store double %23, double* %3, align 8, !dbg !1490
  br label %24, !dbg !1490

; <label>:24:                                     ; preds = %21, %16
  %25 = load double, double* %3, align 8, !dbg !1492
  ret double %25, !dbg !1492
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_pochrel(double, double) #0 !dbg !1493 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca %struct.gsl_sf_result_struct, align 8
  %7 = alloca i32, align 4
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !1494, metadata !66), !dbg !1495
  store double %1, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !1496, metadata !66), !dbg !1497
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %6, metadata !1498, metadata !66), !dbg !1499
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1500, metadata !66), !dbg !1499
  %8 = load double, double* %4, align 8, !dbg !1499
  %9 = load double, double* %5, align 8, !dbg !1499
  %10 = call i32 @gsl_sf_pochrel_e(double %8, double %9, %struct.gsl_sf_result_struct* %6), !dbg !1499
  store i32 %10, i32* %7, align 4, !dbg !1499
  %11 = load i32, i32* %7, align 4, !dbg !1501
  %12 = icmp ne i32 %11, 0, !dbg !1501
  %13 = sext i32 %11 to i64, !dbg !1499
  %14 = call i1 @iCmpInstHandler(i64 %13, i64 0, i1 %12, i32 33, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @17, i32 0, i32 0), i64 94647000320176, i32 464, i32 3), !dbg !1499
  br i1 %14, label %15, label %21, !dbg !1499

; <label>:15:                                     ; preds = %2
  br label %16, !dbg !1503, !llvm.loop !1506

; <label>:16:                                     ; preds = %15
  %17 = load i32, i32* %7, align 4, !dbg !1508
  call void @gsl_error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 464, i32 %17), !dbg !1508
  %18 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !1508
  %19 = load double, double* %18, align 8, !dbg !1508
  store double %19, double* %3, align 8, !dbg !1508
  br label %24, !dbg !1508
                                                  ; No predecessors!
  br label %21, !dbg !1511

; <label>:21:                                     ; preds = %20, %2
  %22 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !1513
  %23 = load double, double* %22, align 8, !dbg !1513
  store double %23, double* %3, align 8, !dbg !1513
  br label %24, !dbg !1513

; <label>:24:                                     ; preds = %21, %16
  %25 = load double, double* %3, align 8, !dbg !1515
  ret double %25, !dbg !1515
}

declare double @GSL_MAX_DBL(double, double) #2

declare i32 @gsl_sf_gammainv_e(double, %struct.gsl_sf_result_struct*) #2

declare i32 @gsl_sf_lngamma_e(double, %struct.gsl_sf_result_struct*) #2

declare double @gsl_sf_pow_int(double, i32) #2

declare i32 @gsl_sf_log_1plusx_e(double, %struct.gsl_sf_result_struct*) #2

declare i32 @gsl_sf_psi_e(double, %struct.gsl_sf_result_struct*) #2

declare i32 @gsl_sf_expm1_e(double, %struct.gsl_sf_result_struct*) #2

; Function Attrs: nounwind
declare double @tan(double) #4

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
!llvm.module.flags = !{!50, !51, !52}
!llvm.ident = !{!53}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !41, globals: !43)
!1 = !DIFile(filename: "poch.c", directory: "/fpcc/gsl-2.5/specfunc")
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
!43 = !{!44}
!44 = distinct !DIGlobalVariable(name: "bern", scope: !0, file: !1, line: 34, type: !45, isLocal: true, isDefinition: true, variable: [21 x double]* @bern)
!45 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 1344, align: 64, elements: !48)
!46 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !47)
!47 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!48 = !{!49}
!49 = !DISubrange(count: 21)
!50 = !{i32 2, !"Dwarf Version", i32 4}
!51 = !{i32 2, !"Debug Info Version", i32 3}
!52 = !{i32 1, !"PIC Level", i32 2}
!53 = !{!"clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)"}
!54 = distinct !DISubprogram(name: "gsl_sf_lnpoch_e", scope: !1, file: !1, line: 282, type: !55, isLocal: false, isDefinition: true, scopeLine: 283, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !64)
!55 = !DISubroutineType(types: !56)
!56 = !{!42, !46, !46, !57}
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64, align: 64)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !59, line: 41, baseType: !60)
!59 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/fpcc/gsl-2.5/specfunc")
!60 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !59, line: 37, size: 128, align: 64, elements: !61)
!61 = !{!62, !63}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !60, file: !59, line: 38, baseType: !47, size: 64, align: 64)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !60, file: !59, line: 39, baseType: !47, size: 64, align: 64, offset: 64)
!64 = !{}
!65 = !DILocalVariable(name: "a", arg: 1, scope: !54, file: !1, line: 282, type: !46)
!66 = !DIExpression()
!67 = !DILocation(line: 282, column: 30, scope: !54)
!68 = !DILocalVariable(name: "x", arg: 2, scope: !54, file: !1, line: 282, type: !46)
!69 = !DILocation(line: 282, column: 46, scope: !54)
!70 = !DILocalVariable(name: "result", arg: 3, scope: !54, file: !1, line: 282, type: !57)
!71 = !DILocation(line: 282, column: 65, scope: !54)
!72 = !DILocation(line: 286, column: 6, scope: !73)
!73 = distinct !DILexicalBlock(scope: !54, file: !1, line: 286, column: 6)
!74 = !DILocation(line: 286, column: 8, scope: !73)
!75 = !DILocation(line: 286, column: 15, scope: !73)
!76 = !DILocation(line: 286, column: 18, scope: !77)
!77 = !DILexicalBlockFile(scope: !73, file: !1, discriminator: 1)
!78 = !DILocation(line: 286, column: 20, scope: !77)
!79 = !DILocation(line: 286, column: 19, scope: !77)
!80 = !DILocation(line: 286, column: 22, scope: !77)
!81 = !DILocation(line: 286, column: 6, scope: !77)
!82 = !DILocation(line: 287, column: 5, scope: !83)
!83 = distinct !DILexicalBlock(scope: !73, file: !1, line: 286, column: 30)
!84 = distinct !{!84, !82}
!85 = !DILocation(line: 287, column: 5, scope: !86)
!86 = !DILexicalBlockFile(scope: !87, file: !1, discriminator: 1)
!87 = distinct !DILexicalBlock(scope: !83, file: !1, line: 287, column: 5)
!88 = distinct !{!88, !89}
!89 = !DILocation(line: 287, column: 5, scope: !87)
!90 = !DILocation(line: 287, column: 5, scope: !91)
!91 = !DILexicalBlockFile(scope: !92, file: !1, discriminator: 2)
!92 = distinct !DILexicalBlock(scope: !87, file: !1, line: 287, column: 5)
!93 = !DILocation(line: 287, column: 5, scope: !94)
!94 = !DILexicalBlockFile(scope: !87, file: !1, discriminator: 3)
!95 = !DILocation(line: 288, column: 3, scope: !83)
!96 = !DILocation(line: 289, column: 11, scope: !97)
!97 = distinct !DILexicalBlock(scope: !73, file: !1, line: 289, column: 11)
!98 = !DILocation(line: 289, column: 13, scope: !97)
!99 = !DILocation(line: 289, column: 11, scope: !73)
!100 = !DILocation(line: 290, column: 5, scope: !101)
!101 = distinct !DILexicalBlock(scope: !97, file: !1, line: 289, column: 21)
!102 = !DILocation(line: 290, column: 13, scope: !101)
!103 = !DILocation(line: 290, column: 17, scope: !101)
!104 = !DILocation(line: 291, column: 5, scope: !101)
!105 = !DILocation(line: 291, column: 13, scope: !101)
!106 = !DILocation(line: 291, column: 17, scope: !101)
!107 = !DILocation(line: 292, column: 5, scope: !101)
!108 = !DILocation(line: 295, column: 23, scope: !109)
!109 = distinct !DILexicalBlock(scope: !97, file: !1, line: 294, column: 8)
!110 = !DILocation(line: 295, column: 26, scope: !109)
!111 = !DILocation(line: 295, column: 29, scope: !109)
!112 = !DILocation(line: 295, column: 12, scope: !109)
!113 = !DILocation(line: 295, column: 5, scope: !109)
!114 = !DILocation(line: 297, column: 1, scope: !54)
!115 = distinct !DISubprogram(name: "lnpoch_pos", scope: !1, file: !1, line: 190, type: !55, isLocal: true, isDefinition: true, scopeLine: 191, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !64)
!116 = !DILocalVariable(name: "a", arg: 1, scope: !115, file: !1, line: 190, type: !46)
!117 = !DILocation(line: 190, column: 25, scope: !115)
!118 = !DILocalVariable(name: "x", arg: 2, scope: !115, file: !1, line: 190, type: !46)
!119 = !DILocation(line: 190, column: 41, scope: !115)
!120 = !DILocalVariable(name: "result", arg: 3, scope: !115, file: !1, line: 190, type: !57)
!121 = !DILocation(line: 190, column: 60, scope: !115)
!122 = !DILocalVariable(name: "absx", scope: !115, file: !1, line: 192, type: !47)
!123 = !DILocation(line: 192, column: 10, scope: !115)
!124 = !DILocation(line: 192, column: 22, scope: !115)
!125 = !DILocation(line: 192, column: 17, scope: !115)
!126 = !DILocation(line: 194, column: 6, scope: !127)
!127 = distinct !DILexicalBlock(scope: !115, file: !1, line: 194, column: 6)
!128 = !DILocation(line: 194, column: 17, scope: !127)
!129 = !DILocation(line: 194, column: 16, scope: !127)
!130 = !DILocation(line: 194, column: 11, scope: !127)
!131 = !DILocation(line: 194, column: 19, scope: !127)
!132 = !DILocation(line: 194, column: 22, scope: !133)
!133 = !DILexicalBlockFile(scope: !127, file: !1, discriminator: 1)
!134 = !DILocation(line: 194, column: 43, scope: !133)
!135 = !DILocation(line: 194, column: 31, scope: !133)
!136 = !DILocation(line: 194, column: 27, scope: !137)
!137 = !DILexicalBlockFile(scope: !133, file: !1, discriminator: 2)
!138 = !DILocation(line: 194, column: 26, scope: !133)
!139 = !DILocation(line: 194, column: 51, scope: !133)
!140 = !DILocation(line: 194, column: 6, scope: !133)
!141 = !DILocation(line: 195, column: 8, scope: !142)
!142 = distinct !DILexicalBlock(scope: !143, file: !1, line: 195, column: 8)
!143 = distinct !DILexicalBlock(scope: !127, file: !1, line: 194, column: 58)
!144 = !DILocation(line: 195, column: 10, scope: !142)
!145 = !DILocation(line: 195, column: 30, scope: !142)
!146 = !DILocation(line: 195, column: 33, scope: !147)
!147 = !DILexicalBlockFile(scope: !142, file: !1, discriminator: 1)
!148 = !DILocation(line: 195, column: 35, scope: !147)
!149 = !DILocation(line: 195, column: 34, scope: !147)
!150 = !DILocation(line: 195, column: 37, scope: !147)
!151 = !DILocation(line: 195, column: 8, scope: !147)
!152 = !DILocalVariable(name: "g1", scope: !153, file: !1, line: 200, type: !58)
!153 = distinct !DILexicalBlock(scope: !142, file: !1, line: 195, column: 58)
!154 = !DILocation(line: 200, column: 21, scope: !153)
!155 = !DILocalVariable(name: "g2", scope: !153, file: !1, line: 201, type: !58)
!156 = !DILocation(line: 201, column: 21, scope: !153)
!157 = !DILocation(line: 202, column: 25, scope: !153)
!158 = !DILocation(line: 202, column: 7, scope: !153)
!159 = !DILocation(line: 203, column: 25, scope: !153)
!160 = !DILocation(line: 203, column: 27, scope: !153)
!161 = !DILocation(line: 203, column: 26, scope: !153)
!162 = !DILocation(line: 203, column: 7, scope: !153)
!163 = !DILocation(line: 204, column: 30, scope: !153)
!164 = !DILocation(line: 204, column: 37, scope: !153)
!165 = !DILocation(line: 204, column: 33, scope: !153)
!166 = !DILocation(line: 204, column: 23, scope: !153)
!167 = !DILocation(line: 204, column: 22, scope: !153)
!168 = !DILocation(line: 204, column: 7, scope: !153)
!169 = !DILocation(line: 204, column: 15, scope: !153)
!170 = !DILocation(line: 204, column: 20, scope: !153)
!171 = !DILocation(line: 205, column: 25, scope: !153)
!172 = !DILocation(line: 205, column: 37, scope: !153)
!173 = !DILocation(line: 205, column: 29, scope: !153)
!174 = !DILocation(line: 205, column: 28, scope: !153)
!175 = !DILocation(line: 205, column: 47, scope: !153)
!176 = !DILocation(line: 205, column: 59, scope: !153)
!177 = !DILocation(line: 205, column: 51, scope: !178)
!178 = !DILexicalBlockFile(scope: !153, file: !1, discriminator: 1)
!179 = !DILocation(line: 205, column: 50, scope: !153)
!180 = !DILocation(line: 205, column: 42, scope: !153)
!181 = !DILocation(line: 205, column: 7, scope: !153)
!182 = !DILocation(line: 205, column: 15, scope: !153)
!183 = !DILocation(line: 205, column: 20, scope: !153)
!184 = !DILocation(line: 206, column: 51, scope: !153)
!185 = !DILocation(line: 206, column: 59, scope: !153)
!186 = !DILocation(line: 206, column: 46, scope: !153)
!187 = !DILocation(line: 206, column: 44, scope: !153)
!188 = !DILocation(line: 206, column: 7, scope: !153)
!189 = !DILocation(line: 206, column: 15, scope: !153)
!190 = !DILocation(line: 206, column: 19, scope: !153)
!191 = !DILocation(line: 207, column: 7, scope: !153)
!192 = !DILocalVariable(name: "lg1", scope: !193, file: !1, line: 212, type: !58)
!193 = distinct !DILexicalBlock(scope: !142, file: !1, line: 209, column: 10)
!194 = !DILocation(line: 212, column: 21, scope: !193)
!195 = !DILocalVariable(name: "lg2", scope: !193, file: !1, line: 213, type: !58)
!196 = !DILocation(line: 213, column: 21, scope: !193)
!197 = !DILocalVariable(name: "stat_1", scope: !193, file: !1, line: 214, type: !42)
!198 = !DILocation(line: 214, column: 11, scope: !193)
!199 = !DILocation(line: 214, column: 37, scope: !193)
!200 = !DILocation(line: 214, column: 20, scope: !193)
!201 = !DILocalVariable(name: "stat_2", scope: !193, file: !1, line: 215, type: !42)
!202 = !DILocation(line: 215, column: 11, scope: !193)
!203 = !DILocation(line: 215, column: 37, scope: !193)
!204 = !DILocation(line: 215, column: 39, scope: !193)
!205 = !DILocation(line: 215, column: 38, scope: !193)
!206 = !DILocation(line: 215, column: 20, scope: !193)
!207 = !DILocation(line: 216, column: 26, scope: !193)
!208 = !DILocation(line: 216, column: 36, scope: !193)
!209 = !DILocation(line: 216, column: 30, scope: !193)
!210 = !DILocation(line: 216, column: 7, scope: !193)
!211 = !DILocation(line: 216, column: 15, scope: !193)
!212 = !DILocation(line: 216, column: 20, scope: !193)
!213 = !DILocation(line: 217, column: 26, scope: !193)
!214 = !DILocation(line: 217, column: 36, scope: !193)
!215 = !DILocation(line: 217, column: 30, scope: !193)
!216 = !DILocation(line: 217, column: 7, scope: !193)
!217 = !DILocation(line: 217, column: 15, scope: !193)
!218 = !DILocation(line: 217, column: 20, scope: !193)
!219 = !DILocation(line: 218, column: 51, scope: !193)
!220 = !DILocation(line: 218, column: 59, scope: !193)
!221 = !DILocation(line: 218, column: 46, scope: !193)
!222 = !DILocation(line: 218, column: 44, scope: !193)
!223 = !DILocation(line: 218, column: 7, scope: !193)
!224 = !DILocation(line: 218, column: 15, scope: !193)
!225 = !DILocation(line: 218, column: 19, scope: !193)
!226 = !DILocation(line: 219, column: 14, scope: !193)
!227 = !DILocation(line: 219, column: 14, scope: !228)
!228 = !DILexicalBlockFile(scope: !193, file: !1, discriminator: 1)
!229 = !DILocation(line: 219, column: 14, scope: !230)
!230 = !DILexicalBlockFile(scope: !193, file: !1, discriminator: 2)
!231 = !DILocation(line: 219, column: 14, scope: !232)
!232 = !DILexicalBlockFile(scope: !193, file: !1, discriminator: 3)
!233 = !DILocation(line: 219, column: 14, scope: !234)
!234 = !DILexicalBlockFile(scope: !193, file: !1, discriminator: 4)
!235 = !DILocation(line: 219, column: 14, scope: !236)
!236 = !DILexicalBlockFile(scope: !193, file: !1, discriminator: 5)
!237 = !DILocation(line: 219, column: 14, scope: !238)
!238 = !DILexicalBlockFile(scope: !193, file: !1, discriminator: 6)
!239 = !DILocation(line: 219, column: 7, scope: !238)
!240 = !DILocation(line: 222, column: 11, scope: !241)
!241 = distinct !DILexicalBlock(scope: !127, file: !1, line: 222, column: 11)
!242 = !DILocation(line: 222, column: 22, scope: !241)
!243 = !DILocation(line: 222, column: 21, scope: !241)
!244 = !DILocation(line: 222, column: 16, scope: !241)
!245 = !DILocation(line: 222, column: 24, scope: !241)
!246 = !DILocation(line: 222, column: 27, scope: !247)
!247 = !DILexicalBlockFile(scope: !241, file: !1, discriminator: 1)
!248 = !DILocation(line: 222, column: 29, scope: !247)
!249 = !DILocation(line: 222, column: 11, scope: !247)
!250 = !DILocalVariable(name: "eps", scope: !251, file: !1, line: 236, type: !46)
!251 = distinct !DILexicalBlock(scope: !241, file: !1, line: 222, column: 37)
!252 = !DILocation(line: 236, column: 18, scope: !251)
!253 = !DILocation(line: 236, column: 24, scope: !251)
!254 = !DILocation(line: 236, column: 26, scope: !251)
!255 = !DILocation(line: 236, column: 25, scope: !251)
!256 = !DILocalVariable(name: "den", scope: !251, file: !1, line: 237, type: !46)
!257 = !DILocation(line: 237, column: 18, scope: !251)
!258 = !DILocation(line: 237, column: 30, scope: !251)
!259 = !DILocation(line: 237, column: 28, scope: !251)
!260 = !DILocalVariable(name: "d3", scope: !251, file: !1, line: 238, type: !46)
!261 = !DILocation(line: 238, column: 18, scope: !251)
!262 = !DILocation(line: 238, column: 23, scope: !251)
!263 = !DILocation(line: 238, column: 27, scope: !251)
!264 = !DILocation(line: 238, column: 26, scope: !251)
!265 = !DILocation(line: 238, column: 31, scope: !251)
!266 = !DILocation(line: 238, column: 30, scope: !251)
!267 = !DILocalVariable(name: "d5", scope: !251, file: !1, line: 239, type: !46)
!268 = !DILocation(line: 239, column: 18, scope: !251)
!269 = !DILocation(line: 239, column: 23, scope: !251)
!270 = !DILocation(line: 239, column: 26, scope: !251)
!271 = !DILocation(line: 239, column: 25, scope: !251)
!272 = !DILocation(line: 239, column: 30, scope: !251)
!273 = !DILocation(line: 239, column: 29, scope: !251)
!274 = !DILocalVariable(name: "d7", scope: !251, file: !1, line: 240, type: !46)
!275 = !DILocation(line: 240, column: 18, scope: !251)
!276 = !DILocation(line: 240, column: 23, scope: !251)
!277 = !DILocation(line: 240, column: 26, scope: !251)
!278 = !DILocation(line: 240, column: 25, scope: !251)
!279 = !DILocation(line: 240, column: 30, scope: !251)
!280 = !DILocation(line: 240, column: 29, scope: !251)
!281 = !DILocalVariable(name: "c1", scope: !251, file: !1, line: 241, type: !46)
!282 = !DILocation(line: 241, column: 18, scope: !251)
!283 = !DILocation(line: 241, column: 24, scope: !251)
!284 = !DILocation(line: 241, column: 23, scope: !251)
!285 = !DILocation(line: 241, column: 28, scope: !251)
!286 = !DILocation(line: 241, column: 27, scope: !251)
!287 = !DILocalVariable(name: "c3", scope: !251, file: !1, line: 242, type: !46)
!288 = !DILocation(line: 242, column: 18, scope: !251)
!289 = !DILocation(line: 242, column: 24, scope: !251)
!290 = !DILocation(line: 242, column: 23, scope: !251)
!291 = !DILocation(line: 242, column: 33, scope: !251)
!292 = !DILocation(line: 242, column: 42, scope: !251)
!293 = !DILocation(line: 242, column: 41, scope: !251)
!294 = !DILocation(line: 242, column: 36, scope: !251)
!295 = !DILocation(line: 242, column: 32, scope: !251)
!296 = !DILocation(line: 242, column: 27, scope: !251)
!297 = !DILocation(line: 242, column: 48, scope: !251)
!298 = !DILocation(line: 242, column: 47, scope: !251)
!299 = !DILocalVariable(name: "c5", scope: !251, file: !1, line: 243, type: !46)
!300 = !DILocation(line: 243, column: 18, scope: !251)
!301 = !DILocation(line: 243, column: 24, scope: !251)
!302 = !DILocation(line: 243, column: 23, scope: !251)
!303 = !DILocation(line: 243, column: 33, scope: !251)
!304 = !DILocation(line: 243, column: 43, scope: !251)
!305 = !DILocation(line: 243, column: 53, scope: !251)
!306 = !DILocation(line: 243, column: 62, scope: !251)
!307 = !DILocation(line: 243, column: 61, scope: !251)
!308 = !DILocation(line: 243, column: 56, scope: !251)
!309 = !DILocation(line: 243, column: 52, scope: !251)
!310 = !DILocation(line: 243, column: 46, scope: !251)
!311 = !DILocation(line: 243, column: 42, scope: !251)
!312 = !DILocation(line: 243, column: 36, scope: !251)
!313 = !DILocation(line: 243, column: 32, scope: !251)
!314 = !DILocation(line: 243, column: 27, scope: !251)
!315 = !DILocation(line: 243, column: 70, scope: !251)
!316 = !DILocation(line: 243, column: 69, scope: !251)
!317 = !DILocalVariable(name: "c7", scope: !251, file: !1, line: 244, type: !46)
!318 = !DILocation(line: 244, column: 18, scope: !251)
!319 = !DILocation(line: 244, column: 24, scope: !251)
!320 = !DILocation(line: 244, column: 23, scope: !251)
!321 = !DILocation(line: 244, column: 33, scope: !251)
!322 = !DILocation(line: 244, column: 43, scope: !251)
!323 = !DILocation(line: 244, column: 53, scope: !251)
!324 = !DILocation(line: 244, column: 63, scope: !251)
!325 = !DILocation(line: 244, column: 73, scope: !251)
!326 = !DILocation(line: 244, column: 82, scope: !251)
!327 = !DILocation(line: 244, column: 81, scope: !251)
!328 = !DILocation(line: 244, column: 76, scope: !251)
!329 = !DILocation(line: 244, column: 72, scope: !251)
!330 = !DILocation(line: 244, column: 66, scope: !251)
!331 = !DILocation(line: 244, column: 62, scope: !251)
!332 = !DILocation(line: 244, column: 56, scope: !251)
!333 = !DILocation(line: 244, column: 52, scope: !251)
!334 = !DILocation(line: 244, column: 46, scope: !251)
!335 = !DILocation(line: 244, column: 42, scope: !251)
!336 = !DILocation(line: 244, column: 36, scope: !251)
!337 = !DILocation(line: 244, column: 32, scope: !251)
!338 = !DILocation(line: 244, column: 27, scope: !251)
!339 = !DILocation(line: 244, column: 92, scope: !251)
!340 = !DILocation(line: 244, column: 91, scope: !251)
!341 = !DILocalVariable(name: "p8", scope: !251, file: !1, line: 245, type: !46)
!342 = !DILocation(line: 245, column: 18, scope: !251)
!343 = !DILocation(line: 245, column: 42, scope: !251)
!344 = !DILocation(line: 245, column: 41, scope: !251)
!345 = !DILocation(line: 245, column: 23, scope: !251)
!346 = !DILocalVariable(name: "c8", scope: !251, file: !1, line: 246, type: !46)
!347 = !DILocation(line: 246, column: 18, scope: !251)
!348 = !DILocation(line: 246, column: 27, scope: !251)
!349 = !DILocation(line: 246, column: 26, scope: !251)
!350 = !DILocation(line: 246, column: 42, scope: !251)
!351 = !DILocalVariable(name: "c9", scope: !251, file: !1, line: 247, type: !46)
!352 = !DILocation(line: 247, column: 18, scope: !251)
!353 = !DILocation(line: 247, column: 28, scope: !251)
!354 = !DILocation(line: 247, column: 36, scope: !251)
!355 = !DILocation(line: 247, column: 35, scope: !251)
!356 = !DILocation(line: 247, column: 30, scope: !251)
!357 = !DILocation(line: 247, column: 26, scope: !251)
!358 = !DILocation(line: 247, column: 42, scope: !251)
!359 = !DILocalVariable(name: "a4", scope: !251, file: !1, line: 248, type: !46)
!360 = !DILocation(line: 248, column: 18, scope: !251)
!361 = !DILocation(line: 248, column: 23, scope: !251)
!362 = !DILocation(line: 248, column: 25, scope: !251)
!363 = !DILocation(line: 248, column: 24, scope: !251)
!364 = !DILocation(line: 248, column: 27, scope: !251)
!365 = !DILocation(line: 248, column: 26, scope: !251)
!366 = !DILocation(line: 248, column: 29, scope: !251)
!367 = !DILocation(line: 248, column: 28, scope: !251)
!368 = !DILocalVariable(name: "a6", scope: !251, file: !1, line: 249, type: !46)
!369 = !DILocation(line: 249, column: 18, scope: !251)
!370 = !DILocation(line: 249, column: 23, scope: !251)
!371 = !DILocation(line: 249, column: 26, scope: !251)
!372 = !DILocation(line: 249, column: 25, scope: !251)
!373 = !DILocation(line: 249, column: 28, scope: !251)
!374 = !DILocation(line: 249, column: 27, scope: !251)
!375 = !DILocalVariable(name: "ser_1", scope: !251, file: !1, line: 250, type: !46)
!376 = !DILocation(line: 250, column: 18, scope: !251)
!377 = !DILocation(line: 250, column: 26, scope: !251)
!378 = !DILocation(line: 250, column: 31, scope: !251)
!379 = !DILocation(line: 250, column: 40, scope: !251)
!380 = !DILocation(line: 250, column: 39, scope: !251)
!381 = !DILocation(line: 250, column: 42, scope: !251)
!382 = !DILocation(line: 250, column: 41, scope: !251)
!383 = !DILocation(line: 250, column: 33, scope: !251)
!384 = !DILocation(line: 250, column: 29, scope: !251)
!385 = !DILocation(line: 250, column: 47, scope: !251)
!386 = !DILocation(line: 250, column: 57, scope: !251)
!387 = !DILocation(line: 250, column: 56, scope: !251)
!388 = !DILocation(line: 250, column: 49, scope: !251)
!389 = !DILocation(line: 250, column: 45, scope: !251)
!390 = !DILocation(line: 250, column: 63, scope: !251)
!391 = !DILocation(line: 250, column: 73, scope: !251)
!392 = !DILocation(line: 250, column: 72, scope: !251)
!393 = !DILocation(line: 250, column: 65, scope: !251)
!394 = !DILocation(line: 250, column: 61, scope: !251)
!395 = !DILocalVariable(name: "ser_2", scope: !251, file: !1, line: 251, type: !46)
!396 = !DILocation(line: 251, column: 18, scope: !251)
!397 = !DILocation(line: 251, column: 26, scope: !251)
!398 = !DILocation(line: 251, column: 35, scope: !251)
!399 = !DILocation(line: 251, column: 34, scope: !251)
!400 = !DILocation(line: 251, column: 38, scope: !251)
!401 = !DILocation(line: 251, column: 37, scope: !251)
!402 = !DILocation(line: 251, column: 40, scope: !251)
!403 = !DILocation(line: 251, column: 39, scope: !251)
!404 = !DILocation(line: 251, column: 28, scope: !251)
!405 = !DILocation(line: 251, column: 62, scope: !251)
!406 = !DILocation(line: 251, column: 60, scope: !251)
!407 = !DILocation(line: 251, column: 66, scope: !251)
!408 = !DILocation(line: 251, column: 69, scope: !251)
!409 = !DILocation(line: 251, column: 68, scope: !251)
!410 = !DILocation(line: 251, column: 64, scope: !251)
!411 = !DILocation(line: 251, column: 43, scope: !251)
!412 = !DILocalVariable(name: "ser", scope: !251, file: !1, line: 252, type: !46)
!413 = !DILocation(line: 252, column: 18, scope: !251)
!414 = !DILocation(line: 252, column: 25, scope: !251)
!415 = !DILocation(line: 252, column: 33, scope: !251)
!416 = !DILocation(line: 252, column: 31, scope: !251)
!417 = !DILocation(line: 252, column: 47, scope: !251)
!418 = !DILocation(line: 252, column: 46, scope: !251)
!419 = !DILocation(line: 252, column: 39, scope: !251)
!420 = !DILocalVariable(name: "term1", scope: !251, file: !1, line: 254, type: !47)
!421 = !DILocation(line: 254, column: 12, scope: !251)
!422 = !DILocation(line: 254, column: 20, scope: !251)
!423 = !DILocation(line: 254, column: 28, scope: !251)
!424 = !DILocation(line: 254, column: 29, scope: !251)
!425 = !DILocation(line: 254, column: 24, scope: !251)
!426 = !DILocation(line: 254, column: 22, scope: !251)
!427 = !DILocalVariable(name: "term2", scope: !251, file: !1, line: 255, type: !47)
!428 = !DILocation(line: 255, column: 12, scope: !251)
!429 = !DILocalVariable(name: "ln_1peps", scope: !251, file: !1, line: 256, type: !58)
!430 = !DILocation(line: 256, column: 19, scope: !251)
!431 = !DILocation(line: 257, column: 25, scope: !251)
!432 = !DILocation(line: 257, column: 5, scope: !251)
!433 = !DILocation(line: 258, column: 14, scope: !251)
!434 = !DILocation(line: 258, column: 18, scope: !251)
!435 = !DILocation(line: 258, column: 16, scope: !251)
!436 = !DILocation(line: 258, column: 20, scope: !251)
!437 = !DILocation(line: 258, column: 38, scope: !251)
!438 = !DILocation(line: 258, column: 27, scope: !251)
!439 = !DILocation(line: 258, column: 11, scope: !251)
!440 = !DILocation(line: 260, column: 20, scope: !251)
!441 = !DILocation(line: 260, column: 28, scope: !251)
!442 = !DILocation(line: 260, column: 26, scope: !251)
!443 = !DILocation(line: 260, column: 36, scope: !251)
!444 = !DILocation(line: 260, column: 34, scope: !251)
!445 = !DILocation(line: 260, column: 5, scope: !251)
!446 = !DILocation(line: 260, column: 13, scope: !251)
!447 = !DILocation(line: 260, column: 18, scope: !251)
!448 = !DILocation(line: 261, column: 41, scope: !251)
!449 = !DILocation(line: 261, column: 36, scope: !251)
!450 = !DILocation(line: 261, column: 35, scope: !251)
!451 = !DILocation(line: 261, column: 5, scope: !251)
!452 = !DILocation(line: 261, column: 13, scope: !251)
!453 = !DILocation(line: 261, column: 18, scope: !251)
!454 = !DILocation(line: 262, column: 26, scope: !251)
!455 = !DILocation(line: 262, column: 30, scope: !251)
!456 = !DILocation(line: 262, column: 28, scope: !251)
!457 = !DILocation(line: 262, column: 32, scope: !251)
!458 = !DILocation(line: 262, column: 48, scope: !251)
!459 = !DILocation(line: 262, column: 38, scope: !251)
!460 = !DILocation(line: 262, column: 20, scope: !251)
!461 = !DILocation(line: 262, column: 5, scope: !251)
!462 = !DILocation(line: 262, column: 13, scope: !251)
!463 = !DILocation(line: 262, column: 17, scope: !251)
!464 = !DILocation(line: 263, column: 34, scope: !251)
!465 = !DILocation(line: 263, column: 20, scope: !251)
!466 = !DILocation(line: 263, column: 39, scope: !251)
!467 = !DILocation(line: 263, column: 65, scope: !251)
!468 = !DILocation(line: 263, column: 60, scope: !469)
!469 = !DILexicalBlockFile(scope: !251, file: !1, discriminator: 1)
!470 = !DILocation(line: 263, column: 75, scope: !251)
!471 = !DILocation(line: 263, column: 70, scope: !472)
!472 = !DILexicalBlockFile(scope: !251, file: !1, discriminator: 2)
!473 = !DILocation(line: 263, column: 68, scope: !251)
!474 = !DILocation(line: 263, column: 78, scope: !251)
!475 = !DILocation(line: 263, column: 57, scope: !251)
!476 = !DILocation(line: 263, column: 5, scope: !251)
!477 = !DILocation(line: 263, column: 13, scope: !251)
!478 = !DILocation(line: 263, column: 17, scope: !251)
!479 = !DILocation(line: 264, column: 49, scope: !251)
!480 = !DILocation(line: 264, column: 57, scope: !251)
!481 = !DILocation(line: 264, column: 44, scope: !251)
!482 = !DILocation(line: 264, column: 42, scope: !251)
!483 = !DILocation(line: 264, column: 5, scope: !251)
!484 = !DILocation(line: 264, column: 13, scope: !251)
!485 = !DILocation(line: 264, column: 17, scope: !251)
!486 = !DILocation(line: 265, column: 5, scope: !251)
!487 = !DILocalVariable(name: "poch_rel", scope: !488, file: !1, line: 268, type: !58)
!488 = distinct !DILexicalBlock(scope: !241, file: !1, line: 267, column: 8)
!489 = !DILocation(line: 268, column: 19, scope: !488)
!490 = !DILocalVariable(name: "stat_p", scope: !488, file: !1, line: 269, type: !42)
!491 = !DILocation(line: 269, column: 9, scope: !488)
!492 = !DILocation(line: 269, column: 33, scope: !488)
!493 = !DILocation(line: 269, column: 36, scope: !488)
!494 = !DILocation(line: 269, column: 18, scope: !488)
!495 = !DILocalVariable(name: "eps", scope: !488, file: !1, line: 270, type: !47)
!496 = !DILocation(line: 270, column: 12, scope: !488)
!497 = !DILocation(line: 270, column: 18, scope: !488)
!498 = !DILocation(line: 270, column: 29, scope: !488)
!499 = !DILocation(line: 270, column: 19, scope: !488)
!500 = !DILocalVariable(name: "stat_e", scope: !488, file: !1, line: 271, type: !42)
!501 = !DILocation(line: 271, column: 9, scope: !488)
!502 = !DILocation(line: 271, column: 38, scope: !488)
!503 = !DILocation(line: 271, column: 43, scope: !488)
!504 = !DILocation(line: 271, column: 18, scope: !488)
!505 = !DILocation(line: 272, column: 31, scope: !488)
!506 = !DILocation(line: 272, column: 44, scope: !488)
!507 = !DILocation(line: 272, column: 33, scope: !488)
!508 = !DILocation(line: 272, column: 57, scope: !488)
!509 = !DILocation(line: 272, column: 55, scope: !488)
!510 = !DILocation(line: 272, column: 48, scope: !488)
!511 = !DILocation(line: 272, column: 26, scope: !488)
!512 = !DILocation(line: 272, column: 24, scope: !488)
!513 = !DILocation(line: 272, column: 5, scope: !488)
!514 = !DILocation(line: 272, column: 13, scope: !488)
!515 = !DILocation(line: 272, column: 18, scope: !488)
!516 = !DILocation(line: 273, column: 49, scope: !488)
!517 = !DILocation(line: 273, column: 57, scope: !488)
!518 = !DILocation(line: 273, column: 44, scope: !488)
!519 = !DILocation(line: 273, column: 42, scope: !488)
!520 = !DILocation(line: 273, column: 5, scope: !488)
!521 = !DILocation(line: 273, column: 13, scope: !488)
!522 = !DILocation(line: 273, column: 17, scope: !488)
!523 = !DILocation(line: 274, column: 12, scope: !488)
!524 = !DILocation(line: 274, column: 12, scope: !525)
!525 = !DILexicalBlockFile(scope: !488, file: !1, discriminator: 1)
!526 = !DILocation(line: 274, column: 12, scope: !527)
!527 = !DILexicalBlockFile(scope: !488, file: !1, discriminator: 2)
!528 = !DILocation(line: 274, column: 12, scope: !529)
!529 = !DILexicalBlockFile(scope: !488, file: !1, discriminator: 3)
!530 = !DILocation(line: 274, column: 12, scope: !531)
!531 = !DILexicalBlockFile(scope: !488, file: !1, discriminator: 4)
!532 = !DILocation(line: 274, column: 12, scope: !533)
!533 = !DILexicalBlockFile(scope: !488, file: !1, discriminator: 5)
!534 = !DILocation(line: 274, column: 12, scope: !535)
!535 = !DILexicalBlockFile(scope: !488, file: !1, discriminator: 6)
!536 = !DILocation(line: 274, column: 5, scope: !535)
!537 = !DILocation(line: 276, column: 1, scope: !115)
!538 = distinct !DISubprogram(name: "gsl_sf_lnpoch_sgn_e", scope: !1, file: !1, line: 301, type: !539, isLocal: false, isDefinition: true, scopeLine: 303, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !64)
!539 = !DISubroutineType(types: !540)
!540 = !{!42, !46, !46, !57, !541}
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64, align: 64)
!542 = !DILocalVariable(name: "a", arg: 1, scope: !538, file: !1, line: 301, type: !46)
!543 = !DILocation(line: 301, column: 34, scope: !538)
!544 = !DILocalVariable(name: "x", arg: 2, scope: !538, file: !1, line: 301, type: !46)
!545 = !DILocation(line: 301, column: 50, scope: !538)
!546 = !DILocalVariable(name: "result", arg: 3, scope: !538, file: !1, line: 302, type: !57)
!547 = !DILocation(line: 302, column: 40, scope: !538)
!548 = !DILocalVariable(name: "sgn", arg: 4, scope: !538, file: !1, line: 302, type: !541)
!549 = !DILocation(line: 302, column: 57, scope: !538)
!550 = !DILocation(line: 304, column: 6, scope: !551)
!551 = distinct !DILexicalBlock(scope: !538, file: !1, line: 304, column: 6)
!552 = !DILocation(line: 304, column: 8, scope: !551)
!553 = !DILocation(line: 304, column: 6, scope: !538)
!554 = !DILocation(line: 305, column: 6, scope: !555)
!555 = distinct !DILexicalBlock(scope: !551, file: !1, line: 304, column: 16)
!556 = !DILocation(line: 305, column: 10, scope: !555)
!557 = !DILocation(line: 306, column: 5, scope: !555)
!558 = !DILocation(line: 306, column: 13, scope: !555)
!559 = !DILocation(line: 306, column: 17, scope: !555)
!560 = !DILocation(line: 307, column: 5, scope: !555)
!561 = !DILocation(line: 307, column: 13, scope: !555)
!562 = !DILocation(line: 307, column: 17, scope: !555)
!563 = !DILocation(line: 308, column: 5, scope: !555)
!564 = !DILocation(line: 310, column: 11, scope: !565)
!565 = distinct !DILexicalBlock(scope: !551, file: !1, line: 310, column: 11)
!566 = !DILocation(line: 310, column: 13, scope: !565)
!567 = !DILocation(line: 310, column: 19, scope: !565)
!568 = !DILocation(line: 310, column: 22, scope: !569)
!569 = !DILexicalBlockFile(scope: !565, file: !1, discriminator: 1)
!570 = !DILocation(line: 310, column: 24, scope: !569)
!571 = !DILocation(line: 310, column: 23, scope: !569)
!572 = !DILocation(line: 310, column: 26, scope: !569)
!573 = !DILocation(line: 310, column: 11, scope: !569)
!574 = !DILocation(line: 311, column: 6, scope: !575)
!575 = distinct !DILexicalBlock(scope: !565, file: !1, line: 310, column: 33)
!576 = !DILocation(line: 311, column: 10, scope: !575)
!577 = !DILocation(line: 312, column: 23, scope: !575)
!578 = !DILocation(line: 312, column: 26, scope: !575)
!579 = !DILocation(line: 312, column: 29, scope: !575)
!580 = !DILocation(line: 312, column: 12, scope: !575)
!581 = !DILocation(line: 312, column: 5, scope: !575)
!582 = !DILocation(line: 314, column: 12, scope: !583)
!583 = distinct !DILexicalBlock(scope: !565, file: !1, line: 314, column: 12)
!584 = !DILocation(line: 314, column: 14, scope: !583)
!585 = !DILocation(line: 314, column: 19, scope: !583)
!586 = !DILocation(line: 314, column: 22, scope: !587)
!587 = !DILexicalBlockFile(scope: !583, file: !1, discriminator: 1)
!588 = !DILocation(line: 314, column: 33, scope: !587)
!589 = !DILocation(line: 314, column: 27, scope: !587)
!590 = !DILocation(line: 314, column: 24, scope: !587)
!591 = !DILocation(line: 314, column: 12, scope: !587)
!592 = !DILocation(line: 316, column: 9, scope: !593)
!593 = distinct !DILexicalBlock(scope: !594, file: !1, line: 316, column: 9)
!594 = distinct !DILexicalBlock(scope: !583, file: !1, line: 314, column: 37)
!595 = !DILocation(line: 316, column: 13, scope: !593)
!596 = !DILocation(line: 316, column: 11, scope: !593)
!597 = !DILocation(line: 316, column: 15, scope: !593)
!598 = !DILocation(line: 316, column: 20, scope: !593)
!599 = !DILocation(line: 316, column: 23, scope: !600)
!600 = !DILexicalBlockFile(scope: !593, file: !1, discriminator: 1)
!601 = !DILocation(line: 316, column: 34, scope: !600)
!602 = !DILocation(line: 316, column: 28, scope: !600)
!603 = !DILocation(line: 316, column: 25, scope: !600)
!604 = !DILocation(line: 316, column: 9, scope: !600)
!605 = !DILocalVariable(name: "result_pos", scope: !606, file: !1, line: 318, type: !58)
!606 = distinct !DILexicalBlock(scope: !593, file: !1, line: 316, column: 38)
!607 = !DILocation(line: 318, column: 21, scope: !606)
!608 = !DILocalVariable(name: "stat", scope: !606, file: !1, line: 321, type: !42)
!609 = !DILocation(line: 321, column: 11, scope: !606)
!610 = !DILocation(line: 321, column: 31, scope: !606)
!611 = !DILocation(line: 321, column: 30, scope: !606)
!612 = !DILocation(line: 321, column: 35, scope: !606)
!613 = !DILocation(line: 321, column: 34, scope: !606)
!614 = !DILocation(line: 321, column: 18, scope: !606)
!615 = !DILocalVariable(name: "f", scope: !606, file: !1, line: 322, type: !47)
!616 = !DILocation(line: 322, column: 14, scope: !606)
!617 = !DILocation(line: 322, column: 23, scope: !606)
!618 = !DILocation(line: 322, column: 28, scope: !606)
!619 = !DILocation(line: 322, column: 32, scope: !606)
!620 = !DILocation(line: 322, column: 30, scope: !606)
!621 = !DILocation(line: 322, column: 25, scope: !606)
!622 = !DILocation(line: 322, column: 18, scope: !606)
!623 = !DILocalVariable(name: "s", scope: !606, file: !1, line: 323, type: !47)
!624 = !DILocation(line: 323, column: 14, scope: !606)
!625 = !DILocation(line: 323, column: 24, scope: !606)
!626 = !DILocation(line: 323, column: 19, scope: !606)
!627 = !DILocation(line: 323, column: 30, scope: !606)
!628 = !DILocation(line: 323, column: 18, scope: !606)
!629 = !DILocation(line: 324, column: 21, scope: !606)
!630 = !DILocation(line: 324, column: 36, scope: !606)
!631 = !DILocation(line: 324, column: 23, scope: !606)
!632 = !DILocation(line: 324, column: 7, scope: !606)
!633 = !DILocation(line: 324, column: 15, scope: !606)
!634 = !DILocation(line: 324, column: 19, scope: !606)
!635 = !DILocation(line: 325, column: 32, scope: !606)
!636 = !DILocation(line: 325, column: 62, scope: !606)
!637 = !DILocation(line: 325, column: 60, scope: !606)
!638 = !DILocation(line: 325, column: 36, scope: !606)
!639 = !DILocation(line: 325, column: 7, scope: !606)
!640 = !DILocation(line: 325, column: 15, scope: !606)
!641 = !DILocation(line: 325, column: 19, scope: !606)
!642 = !DILocation(line: 326, column: 14, scope: !606)
!643 = !DILocation(line: 326, column: 8, scope: !606)
!644 = !DILocation(line: 326, column: 12, scope: !606)
!645 = !DILocation(line: 327, column: 14, scope: !606)
!646 = !DILocation(line: 327, column: 7, scope: !606)
!647 = !DILocation(line: 328, column: 16, scope: !648)
!648 = distinct !DILexicalBlock(scope: !593, file: !1, line: 328, column: 16)
!649 = !DILocation(line: 328, column: 20, scope: !648)
!650 = !DILocation(line: 328, column: 18, scope: !648)
!651 = !DILocation(line: 328, column: 22, scope: !648)
!652 = !DILocation(line: 328, column: 16, scope: !593)
!653 = !DILocalVariable(name: "stat", scope: !654, file: !1, line: 331, type: !42)
!654 = distinct !DILexicalBlock(scope: !648, file: !1, line: 328, column: 28)
!655 = !DILocation(line: 331, column: 11, scope: !654)
!656 = !DILocation(line: 331, column: 41, scope: !654)
!657 = !DILocation(line: 331, column: 40, scope: !654)
!658 = !DILocation(line: 331, column: 43, scope: !654)
!659 = !DILocation(line: 331, column: 48, scope: !654)
!660 = !DILocation(line: 331, column: 56, scope: !654)
!661 = !DILocation(line: 331, column: 18, scope: !654)
!662 = !DILocalVariable(name: "s", scope: !654, file: !1, line: 332, type: !47)
!663 = !DILocation(line: 332, column: 14, scope: !654)
!664 = !DILocation(line: 332, column: 25, scope: !654)
!665 = !DILocation(line: 332, column: 24, scope: !654)
!666 = !DILocation(line: 332, column: 19, scope: !654)
!667 = !DILocation(line: 332, column: 31, scope: !654)
!668 = !DILocation(line: 332, column: 18, scope: !654)
!669 = !DILocation(line: 333, column: 15, scope: !654)
!670 = !DILocation(line: 333, column: 8, scope: !654)
!671 = !DILocation(line: 333, column: 12, scope: !654)
!672 = !DILocation(line: 334, column: 14, scope: !654)
!673 = !DILocation(line: 334, column: 7, scope: !654)
!674 = !DILocation(line: 337, column: 7, scope: !675)
!675 = distinct !DILexicalBlock(scope: !648, file: !1, line: 335, column: 12)
!676 = !DILocation(line: 337, column: 15, scope: !675)
!677 = !DILocation(line: 337, column: 19, scope: !675)
!678 = !DILocation(line: 338, column: 7, scope: !675)
!679 = !DILocation(line: 338, column: 15, scope: !675)
!680 = !DILocation(line: 338, column: 19, scope: !675)
!681 = !DILocation(line: 339, column: 8, scope: !675)
!682 = !DILocation(line: 339, column: 12, scope: !675)
!683 = !DILocation(line: 340, column: 7, scope: !675)
!684 = !DILocation(line: 342, column: 13, scope: !685)
!685 = distinct !DILexicalBlock(scope: !583, file: !1, line: 342, column: 13)
!686 = !DILocation(line: 342, column: 15, scope: !685)
!687 = !DILocation(line: 342, column: 21, scope: !685)
!688 = !DILocation(line: 342, column: 24, scope: !689)
!689 = !DILexicalBlockFile(scope: !685, file: !1, discriminator: 1)
!690 = !DILocation(line: 342, column: 26, scope: !689)
!691 = !DILocation(line: 342, column: 25, scope: !689)
!692 = !DILocation(line: 342, column: 28, scope: !689)
!693 = !DILocation(line: 342, column: 13, scope: !689)
!694 = !DILocalVariable(name: "sin_1", scope: !695, file: !1, line: 345, type: !47)
!695 = distinct !DILexicalBlock(scope: !685, file: !1, line: 342, column: 35)
!696 = !DILocation(line: 345, column: 12, scope: !695)
!697 = !DILocation(line: 345, column: 38, scope: !695)
!698 = !DILocation(line: 345, column: 36, scope: !695)
!699 = !DILocation(line: 345, column: 29, scope: !695)
!700 = !DILocation(line: 345, column: 20, scope: !695)
!701 = !DILocalVariable(name: "sin_2", scope: !695, file: !1, line: 346, type: !47)
!702 = !DILocation(line: 346, column: 12, scope: !695)
!703 = !DILocation(line: 346, column: 38, scope: !695)
!704 = !DILocation(line: 346, column: 36, scope: !695)
!705 = !DILocation(line: 346, column: 42, scope: !695)
!706 = !DILocation(line: 346, column: 40, scope: !695)
!707 = !DILocation(line: 346, column: 29, scope: !695)
!708 = !DILocation(line: 346, column: 20, scope: !695)
!709 = !DILocation(line: 347, column: 8, scope: !710)
!710 = distinct !DILexicalBlock(scope: !695, file: !1, line: 347, column: 8)
!711 = !DILocation(line: 347, column: 14, scope: !710)
!712 = !DILocation(line: 347, column: 21, scope: !710)
!713 = !DILocation(line: 347, column: 24, scope: !714)
!714 = !DILexicalBlockFile(scope: !710, file: !1, discriminator: 1)
!715 = !DILocation(line: 347, column: 30, scope: !714)
!716 = !DILocation(line: 347, column: 8, scope: !714)
!717 = !DILocation(line: 348, column: 8, scope: !718)
!718 = distinct !DILexicalBlock(scope: !710, file: !1, line: 347, column: 38)
!719 = !DILocation(line: 348, column: 12, scope: !718)
!720 = !DILocation(line: 349, column: 7, scope: !718)
!721 = distinct !{!721, !720}
!722 = !DILocation(line: 349, column: 7, scope: !723)
!723 = !DILexicalBlockFile(scope: !724, file: !1, discriminator: 1)
!724 = distinct !DILexicalBlock(scope: !718, file: !1, line: 349, column: 7)
!725 = distinct !{!725, !726}
!726 = !DILocation(line: 349, column: 7, scope: !724)
!727 = !DILocation(line: 349, column: 7, scope: !728)
!728 = !DILexicalBlockFile(scope: !729, file: !1, discriminator: 2)
!729 = distinct !DILexicalBlock(scope: !724, file: !1, line: 349, column: 7)
!730 = !DILocation(line: 349, column: 7, scope: !731)
!731 = !DILexicalBlockFile(scope: !724, file: !1, discriminator: 3)
!732 = !DILocation(line: 350, column: 5, scope: !718)
!733 = !DILocalVariable(name: "lnp_pos", scope: !734, file: !1, line: 352, type: !58)
!734 = distinct !DILexicalBlock(scope: !710, file: !1, line: 351, column: 10)
!735 = !DILocation(line: 352, column: 21, scope: !734)
!736 = !DILocalVariable(name: "stat_pp", scope: !734, file: !1, line: 353, type: !42)
!737 = !DILocation(line: 353, column: 11, scope: !734)
!738 = !DILocation(line: 353, column: 38, scope: !734)
!739 = !DILocation(line: 353, column: 37, scope: !734)
!740 = !DILocation(line: 353, column: 42, scope: !734)
!741 = !DILocation(line: 353, column: 41, scope: !734)
!742 = !DILocation(line: 353, column: 23, scope: !734)
!743 = !DILocalVariable(name: "lnterm", scope: !734, file: !1, line: 354, type: !47)
!744 = !DILocation(line: 354, column: 14, scope: !734)
!745 = !DILocation(line: 354, column: 32, scope: !734)
!746 = !DILocation(line: 354, column: 38, scope: !734)
!747 = !DILocation(line: 354, column: 37, scope: !734)
!748 = !DILocation(line: 354, column: 27, scope: !734)
!749 = !DILocation(line: 354, column: 23, scope: !750)
!750 = !DILexicalBlockFile(scope: !734, file: !1, discriminator: 1)
!751 = !DILocation(line: 355, column: 22, scope: !734)
!752 = !DILocation(line: 355, column: 39, scope: !734)
!753 = !DILocation(line: 355, column: 29, scope: !734)
!754 = !DILocation(line: 355, column: 7, scope: !734)
!755 = !DILocation(line: 355, column: 15, scope: !734)
!756 = !DILocation(line: 355, column: 20, scope: !734)
!757 = !DILocation(line: 356, column: 30, scope: !734)
!758 = !DILocation(line: 356, column: 7, scope: !734)
!759 = !DILocation(line: 356, column: 15, scope: !734)
!760 = !DILocation(line: 356, column: 20, scope: !734)
!761 = !DILocation(line: 357, column: 56, scope: !734)
!762 = !DILocation(line: 357, column: 55, scope: !734)
!763 = !DILocation(line: 357, column: 47, scope: !734)
!764 = !DILocation(line: 357, column: 70, scope: !734)
!765 = !DILocation(line: 357, column: 69, scope: !734)
!766 = !DILocation(line: 357, column: 72, scope: !734)
!767 = !DILocation(line: 357, column: 71, scope: !734)
!768 = !DILocation(line: 357, column: 61, scope: !750)
!769 = !DILocation(line: 357, column: 59, scope: !734)
!770 = !DILocation(line: 357, column: 44, scope: !734)
!771 = !DILocation(line: 357, column: 83, scope: !734)
!772 = !DILocation(line: 357, column: 78, scope: !773)
!773 = !DILexicalBlockFile(scope: !734, file: !1, discriminator: 2)
!774 = !DILocation(line: 357, column: 76, scope: !734)
!775 = !DILocation(line: 357, column: 7, scope: !734)
!776 = !DILocation(line: 357, column: 15, scope: !734)
!777 = !DILocation(line: 357, column: 19, scope: !734)
!778 = !DILocation(line: 358, column: 51, scope: !734)
!779 = !DILocation(line: 358, column: 59, scope: !734)
!780 = !DILocation(line: 358, column: 46, scope: !734)
!781 = !DILocation(line: 358, column: 44, scope: !734)
!782 = !DILocation(line: 358, column: 7, scope: !734)
!783 = !DILocation(line: 358, column: 15, scope: !734)
!784 = !DILocation(line: 358, column: 19, scope: !734)
!785 = !DILocation(line: 359, column: 14, scope: !734)
!786 = !DILocation(line: 359, column: 8, scope: !734)
!787 = !DILocation(line: 359, column: 12, scope: !734)
!788 = !DILocation(line: 360, column: 14, scope: !734)
!789 = !DILocation(line: 360, column: 7, scope: !734)
!790 = !DILocation(line: 362, column: 3, scope: !695)
!791 = !DILocalVariable(name: "lg_apn", scope: !792, file: !1, line: 366, type: !58)
!792 = distinct !DILexicalBlock(scope: !685, file: !1, line: 363, column: 8)
!793 = !DILocation(line: 366, column: 19, scope: !792)
!794 = !DILocalVariable(name: "lg_a", scope: !792, file: !1, line: 367, type: !58)
!795 = !DILocation(line: 367, column: 19, scope: !792)
!796 = !DILocalVariable(name: "s_apn", scope: !792, file: !1, line: 368, type: !47)
!797 = !DILocation(line: 368, column: 12, scope: !792)
!798 = !DILocalVariable(name: "s_a", scope: !792, file: !1, line: 368, type: !47)
!799 = !DILocation(line: 368, column: 19, scope: !792)
!800 = !DILocalVariable(name: "stat_apn", scope: !792, file: !1, line: 369, type: !42)
!801 = !DILocation(line: 369, column: 9, scope: !792)
!802 = !DILocation(line: 369, column: 41, scope: !792)
!803 = !DILocation(line: 369, column: 43, scope: !792)
!804 = !DILocation(line: 369, column: 42, scope: !792)
!805 = !DILocation(line: 369, column: 20, scope: !792)
!806 = !DILocalVariable(name: "stat_a", scope: !792, file: !1, line: 370, type: !42)
!807 = !DILocation(line: 370, column: 9, scope: !792)
!808 = !DILocation(line: 370, column: 41, scope: !792)
!809 = !DILocation(line: 370, column: 20, scope: !792)
!810 = !DILocation(line: 371, column: 8, scope: !811)
!811 = distinct !DILexicalBlock(scope: !792, file: !1, line: 371, column: 8)
!812 = !DILocation(line: 371, column: 17, scope: !811)
!813 = !DILocation(line: 371, column: 32, scope: !811)
!814 = !DILocation(line: 371, column: 35, scope: !815)
!815 = !DILexicalBlockFile(scope: !811, file: !1, discriminator: 1)
!816 = !DILocation(line: 371, column: 42, scope: !815)
!817 = !DILocation(line: 371, column: 8, scope: !815)
!818 = !DILocation(line: 372, column: 29, scope: !819)
!819 = distinct !DILexicalBlock(scope: !811, file: !1, line: 371, column: 58)
!820 = !DILocation(line: 372, column: 40, scope: !819)
!821 = !DILocation(line: 372, column: 33, scope: !819)
!822 = !DILocation(line: 372, column: 7, scope: !819)
!823 = !DILocation(line: 372, column: 15, scope: !819)
!824 = !DILocation(line: 372, column: 20, scope: !819)
!825 = !DILocation(line: 373, column: 29, scope: !819)
!826 = !DILocation(line: 373, column: 40, scope: !819)
!827 = !DILocation(line: 373, column: 33, scope: !819)
!828 = !DILocation(line: 373, column: 7, scope: !819)
!829 = !DILocation(line: 373, column: 15, scope: !819)
!830 = !DILocation(line: 373, column: 20, scope: !819)
!831 = !DILocation(line: 374, column: 51, scope: !819)
!832 = !DILocation(line: 374, column: 59, scope: !819)
!833 = !DILocation(line: 374, column: 46, scope: !819)
!834 = !DILocation(line: 374, column: 44, scope: !819)
!835 = !DILocation(line: 374, column: 7, scope: !819)
!836 = !DILocation(line: 374, column: 15, scope: !819)
!837 = !DILocation(line: 374, column: 19, scope: !819)
!838 = !DILocation(line: 375, column: 14, scope: !819)
!839 = !DILocation(line: 375, column: 20, scope: !819)
!840 = !DILocation(line: 375, column: 18, scope: !819)
!841 = !DILocation(line: 375, column: 8, scope: !819)
!842 = !DILocation(line: 375, column: 12, scope: !819)
!843 = !DILocation(line: 376, column: 7, scope: !819)
!844 = !DILocation(line: 378, column: 13, scope: !845)
!845 = distinct !DILexicalBlock(scope: !811, file: !1, line: 378, column: 13)
!846 = !DILocation(line: 378, column: 22, scope: !845)
!847 = !DILocation(line: 378, column: 34, scope: !845)
!848 = !DILocation(line: 378, column: 37, scope: !849)
!849 = !DILexicalBlockFile(scope: !845, file: !1, discriminator: 1)
!850 = !DILocation(line: 378, column: 44, scope: !849)
!851 = !DILocation(line: 378, column: 13, scope: !849)
!852 = !DILocation(line: 379, column: 8, scope: !853)
!853 = distinct !DILexicalBlock(scope: !845, file: !1, line: 378, column: 56)
!854 = !DILocation(line: 379, column: 12, scope: !853)
!855 = !DILocation(line: 380, column: 7, scope: !853)
!856 = distinct !{!856, !855}
!857 = !DILocation(line: 380, column: 7, scope: !858)
!858 = !DILexicalBlockFile(scope: !859, file: !1, discriminator: 1)
!859 = distinct !DILexicalBlock(scope: !853, file: !1, line: 380, column: 7)
!860 = distinct !{!860, !861}
!861 = !DILocation(line: 380, column: 7, scope: !859)
!862 = !DILocation(line: 380, column: 7, scope: !863)
!863 = !DILexicalBlockFile(scope: !864, file: !1, discriminator: 2)
!864 = distinct !DILexicalBlock(scope: !859, file: !1, line: 380, column: 7)
!865 = !DILocation(line: 380, column: 7, scope: !866)
!866 = !DILexicalBlockFile(scope: !859, file: !1, discriminator: 3)
!867 = !DILocation(line: 381, column: 5, scope: !853)
!868 = !DILocation(line: 383, column: 7, scope: !869)
!869 = distinct !DILexicalBlock(scope: !845, file: !1, line: 382, column: 10)
!870 = !DILocation(line: 383, column: 15, scope: !869)
!871 = !DILocation(line: 383, column: 19, scope: !869)
!872 = !DILocation(line: 384, column: 7, scope: !869)
!873 = !DILocation(line: 384, column: 15, scope: !869)
!874 = !DILocation(line: 384, column: 19, scope: !869)
!875 = !DILocation(line: 385, column: 8, scope: !869)
!876 = !DILocation(line: 385, column: 12, scope: !869)
!877 = !DILocation(line: 386, column: 7, scope: !869)
!878 = !DILocation(line: 389, column: 1, scope: !538)
!879 = distinct !DISubprogram(name: "gsl_sf_poch_e", scope: !1, file: !1, line: 393, type: !55, isLocal: false, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !64)
!880 = !DILocalVariable(name: "a", arg: 1, scope: !879, file: !1, line: 393, type: !46)
!881 = !DILocation(line: 393, column: 28, scope: !879)
!882 = !DILocalVariable(name: "x", arg: 2, scope: !879, file: !1, line: 393, type: !46)
!883 = !DILocation(line: 393, column: 44, scope: !879)
!884 = !DILocalVariable(name: "result", arg: 3, scope: !879, file: !1, line: 393, type: !57)
!885 = !DILocation(line: 393, column: 63, scope: !879)
!886 = !DILocation(line: 397, column: 6, scope: !887)
!887 = distinct !DILexicalBlock(scope: !879, file: !1, line: 397, column: 6)
!888 = !DILocation(line: 397, column: 8, scope: !887)
!889 = !DILocation(line: 397, column: 6, scope: !879)
!890 = !DILocation(line: 398, column: 5, scope: !891)
!891 = distinct !DILexicalBlock(scope: !887, file: !1, line: 397, column: 16)
!892 = !DILocation(line: 398, column: 13, scope: !891)
!893 = !DILocation(line: 398, column: 17, scope: !891)
!894 = !DILocation(line: 399, column: 5, scope: !891)
!895 = !DILocation(line: 399, column: 13, scope: !891)
!896 = !DILocation(line: 399, column: 17, scope: !891)
!897 = !DILocation(line: 400, column: 5, scope: !891)
!898 = !DILocalVariable(name: "lnpoch", scope: !899, file: !1, line: 402, type: !58)
!899 = distinct !DILexicalBlock(scope: !887, file: !1, line: 401, column: 10)
!900 = !DILocation(line: 402, column: 19, scope: !899)
!901 = !DILocalVariable(name: "sgn", scope: !899, file: !1, line: 403, type: !47)
!902 = !DILocation(line: 403, column: 12, scope: !899)
!903 = !DILocalVariable(name: "stat_lnpoch", scope: !899, file: !1, line: 404, type: !42)
!904 = !DILocation(line: 404, column: 9, scope: !899)
!905 = !DILocation(line: 404, column: 43, scope: !899)
!906 = !DILocation(line: 404, column: 46, scope: !899)
!907 = !DILocation(line: 404, column: 23, scope: !899)
!908 = !DILocation(line: 405, column: 16, scope: !909)
!909 = distinct !DILexicalBlock(scope: !899, file: !1, line: 405, column: 9)
!910 = !DILocation(line: 405, column: 20, scope: !909)
!911 = !DILocation(line: 405, column: 9, scope: !899)
!912 = !DILocation(line: 406, column: 7, scope: !913)
!913 = distinct !DILexicalBlock(scope: !909, file: !1, line: 405, column: 35)
!914 = !DILocation(line: 406, column: 15, scope: !913)
!915 = !DILocation(line: 406, column: 19, scope: !913)
!916 = !DILocation(line: 407, column: 7, scope: !913)
!917 = !DILocation(line: 407, column: 15, scope: !913)
!918 = !DILocation(line: 407, column: 19, scope: !913)
!919 = !DILocation(line: 408, column: 14, scope: !913)
!920 = !DILocation(line: 408, column: 7, scope: !913)
!921 = !DILocalVariable(name: "stat_exp", scope: !922, file: !1, line: 410, type: !42)
!922 = distinct !DILexicalBlock(scope: !909, file: !1, line: 409, column: 12)
!923 = !DILocation(line: 410, column: 11, scope: !922)
!924 = !DILocation(line: 410, column: 49, scope: !922)
!925 = !DILocation(line: 410, column: 61, scope: !922)
!926 = !DILocation(line: 410, column: 66, scope: !922)
!927 = !DILocation(line: 410, column: 25, scope: !922)
!928 = !DILocation(line: 411, column: 22, scope: !922)
!929 = !DILocation(line: 411, column: 7, scope: !922)
!930 = !DILocation(line: 411, column: 15, scope: !922)
!931 = !DILocation(line: 411, column: 19, scope: !922)
!932 = !DILocation(line: 412, column: 51, scope: !922)
!933 = !DILocation(line: 412, column: 59, scope: !922)
!934 = !DILocation(line: 412, column: 46, scope: !922)
!935 = !DILocation(line: 412, column: 44, scope: !922)
!936 = !DILocation(line: 412, column: 7, scope: !922)
!937 = !DILocation(line: 412, column: 15, scope: !922)
!938 = !DILocation(line: 412, column: 19, scope: !922)
!939 = !DILocation(line: 413, column: 14, scope: !922)
!940 = !DILocation(line: 413, column: 14, scope: !941)
!941 = !DILexicalBlockFile(scope: !922, file: !1, discriminator: 1)
!942 = !DILocation(line: 413, column: 14, scope: !943)
!943 = !DILexicalBlockFile(scope: !922, file: !1, discriminator: 2)
!944 = !DILocation(line: 413, column: 14, scope: !945)
!945 = !DILexicalBlockFile(scope: !922, file: !1, discriminator: 3)
!946 = !DILocation(line: 413, column: 14, scope: !947)
!947 = !DILexicalBlockFile(scope: !922, file: !1, discriminator: 4)
!948 = !DILocation(line: 413, column: 14, scope: !949)
!949 = !DILexicalBlockFile(scope: !922, file: !1, discriminator: 5)
!950 = !DILocation(line: 413, column: 14, scope: !951)
!951 = !DILexicalBlockFile(scope: !922, file: !1, discriminator: 6)
!952 = !DILocation(line: 413, column: 7, scope: !951)
!953 = !DILocation(line: 416, column: 1, scope: !879)
!954 = distinct !DISubprogram(name: "gsl_sf_pochrel_e", scope: !1, file: !1, line: 420, type: !55, isLocal: false, isDefinition: true, scopeLine: 421, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !64)
!955 = !DILocalVariable(name: "a", arg: 1, scope: !954, file: !1, line: 420, type: !46)
!956 = !DILocation(line: 420, column: 31, scope: !954)
!957 = !DILocalVariable(name: "x", arg: 2, scope: !954, file: !1, line: 420, type: !46)
!958 = !DILocation(line: 420, column: 47, scope: !954)
!959 = !DILocalVariable(name: "result", arg: 3, scope: !954, file: !1, line: 420, type: !57)
!960 = !DILocation(line: 420, column: 66, scope: !954)
!961 = !DILocalVariable(name: "absx", scope: !954, file: !1, line: 422, type: !46)
!962 = !DILocation(line: 422, column: 16, scope: !954)
!963 = !DILocation(line: 422, column: 28, scope: !954)
!964 = !DILocation(line: 422, column: 23, scope: !954)
!965 = !DILocalVariable(name: "absa", scope: !954, file: !1, line: 423, type: !46)
!966 = !DILocation(line: 423, column: 16, scope: !954)
!967 = !DILocation(line: 423, column: 28, scope: !954)
!968 = !DILocation(line: 423, column: 23, scope: !954)
!969 = !DILocation(line: 427, column: 6, scope: !970)
!970 = distinct !DILexicalBlock(scope: !954, file: !1, line: 427, column: 6)
!971 = !DILocation(line: 427, column: 17, scope: !970)
!972 = !DILocation(line: 427, column: 16, scope: !970)
!973 = !DILocation(line: 427, column: 11, scope: !970)
!974 = !DILocation(line: 427, column: 22, scope: !970)
!975 = !DILocation(line: 427, column: 25, scope: !976)
!976 = !DILexicalBlockFile(scope: !970, file: !1, discriminator: 1)
!977 = !DILocation(line: 427, column: 34, scope: !976)
!978 = !DILocation(line: 427, column: 34, scope: !979)
!979 = !DILexicalBlockFile(scope: !970, file: !1, discriminator: 2)
!980 = !DILocation(line: 427, column: 34, scope: !981)
!981 = !DILexicalBlockFile(scope: !970, file: !1, discriminator: 3)
!982 = !DILocation(line: 427, column: 34, scope: !983)
!983 = !DILexicalBlockFile(scope: !970, file: !1, discriminator: 4)
!984 = !DILocation(line: 427, column: 30, scope: !983)
!985 = !DILocation(line: 427, column: 29, scope: !983)
!986 = !DILocation(line: 427, column: 53, scope: !983)
!987 = !DILocation(line: 427, column: 6, scope: !983)
!988 = !DILocalVariable(name: "lnpoch", scope: !989, file: !1, line: 428, type: !58)
!989 = distinct !DILexicalBlock(scope: !970, file: !1, line: 427, column: 60)
!990 = !DILocation(line: 428, column: 19, scope: !989)
!991 = !DILocalVariable(name: "sgn", scope: !989, file: !1, line: 429, type: !47)
!992 = !DILocation(line: 429, column: 12, scope: !989)
!993 = !DILocalVariable(name: "stat_poch", scope: !989, file: !1, line: 430, type: !42)
!994 = !DILocation(line: 430, column: 9, scope: !989)
!995 = !DILocation(line: 430, column: 41, scope: !989)
!996 = !DILocation(line: 430, column: 44, scope: !989)
!997 = !DILocation(line: 430, column: 21, scope: !989)
!998 = !DILocation(line: 431, column: 15, scope: !999)
!999 = distinct !DILexicalBlock(scope: !989, file: !1, line: 431, column: 8)
!1000 = !DILocation(line: 431, column: 19, scope: !999)
!1001 = !DILocation(line: 431, column: 8, scope: !989)
!1002 = !DILocation(line: 432, column: 7, scope: !1003)
!1003 = distinct !DILexicalBlock(scope: !999, file: !1, line: 431, column: 38)
!1004 = distinct !{!1004, !1002}
!1005 = !DILocation(line: 432, column: 7, scope: !1006)
!1006 = !DILexicalBlockFile(scope: !1007, file: !1, discriminator: 1)
!1007 = distinct !DILexicalBlock(scope: !1003, file: !1, line: 432, column: 7)
!1008 = distinct !{!1008, !1009}
!1009 = !DILocation(line: 432, column: 7, scope: !1007)
!1010 = !DILocation(line: 432, column: 7, scope: !1011)
!1011 = !DILexicalBlockFile(scope: !1012, file: !1, discriminator: 2)
!1012 = distinct !DILexicalBlock(scope: !1007, file: !1, line: 432, column: 7)
!1013 = !DILocation(line: 432, column: 7, scope: !1014)
!1014 = !DILexicalBlockFile(scope: !1007, file: !1, discriminator: 3)
!1015 = !DILocation(line: 433, column: 5, scope: !1003)
!1016 = !DILocalVariable(name: "el", scope: !1017, file: !1, line: 435, type: !46)
!1017 = distinct !DILexicalBlock(scope: !999, file: !1, line: 434, column: 10)
!1018 = !DILocation(line: 435, column: 20, scope: !1017)
!1019 = !DILocation(line: 435, column: 36, scope: !1017)
!1020 = !DILocation(line: 435, column: 25, scope: !1017)
!1021 = !DILocation(line: 436, column: 23, scope: !1017)
!1022 = !DILocation(line: 436, column: 27, scope: !1017)
!1023 = !DILocation(line: 436, column: 26, scope: !1017)
!1024 = !DILocation(line: 436, column: 30, scope: !1017)
!1025 = !DILocation(line: 436, column: 37, scope: !1017)
!1026 = !DILocation(line: 436, column: 36, scope: !1017)
!1027 = !DILocation(line: 436, column: 7, scope: !1017)
!1028 = !DILocation(line: 436, column: 15, scope: !1017)
!1029 = !DILocation(line: 436, column: 20, scope: !1017)
!1030 = !DILocation(line: 437, column: 27, scope: !1017)
!1031 = !DILocation(line: 437, column: 35, scope: !1017)
!1032 = !DILocation(line: 437, column: 22, scope: !1017)
!1033 = !DILocation(line: 437, column: 50, scope: !1017)
!1034 = !DILocation(line: 437, column: 54, scope: !1017)
!1035 = !DILocation(line: 437, column: 40, scope: !1017)
!1036 = !DILocation(line: 437, column: 7, scope: !1017)
!1037 = !DILocation(line: 437, column: 15, scope: !1017)
!1038 = !DILocation(line: 437, column: 20, scope: !1017)
!1039 = !DILocation(line: 438, column: 52, scope: !1017)
!1040 = !DILocation(line: 438, column: 56, scope: !1017)
!1041 = !DILocation(line: 438, column: 55, scope: !1017)
!1042 = !DILocation(line: 438, column: 47, scope: !1017)
!1043 = !DILocation(line: 438, column: 60, scope: !1017)
!1044 = !DILocation(line: 438, column: 44, scope: !1017)
!1045 = !DILocation(line: 438, column: 74, scope: !1017)
!1046 = !DILocation(line: 438, column: 69, scope: !1047)
!1047 = !DILexicalBlockFile(scope: !1017, file: !1, discriminator: 1)
!1048 = !DILocation(line: 438, column: 67, scope: !1017)
!1049 = !DILocation(line: 438, column: 7, scope: !1017)
!1050 = !DILocation(line: 438, column: 15, scope: !1017)
!1051 = !DILocation(line: 438, column: 19, scope: !1017)
!1052 = !DILocation(line: 439, column: 14, scope: !1017)
!1053 = !DILocation(line: 439, column: 7, scope: !1017)
!1054 = !DILocation(line: 441, column: 3, scope: !989)
!1055 = !DILocation(line: 443, column: 27, scope: !1056)
!1056 = distinct !DILexicalBlock(scope: !970, file: !1, line: 442, column: 8)
!1057 = !DILocation(line: 443, column: 30, scope: !1056)
!1058 = !DILocation(line: 443, column: 33, scope: !1056)
!1059 = !DILocation(line: 443, column: 12, scope: !1056)
!1060 = !DILocation(line: 443, column: 5, scope: !1056)
!1061 = !DILocation(line: 445, column: 1, scope: !954)
!1062 = distinct !DISubprogram(name: "pochrel_smallx", scope: !1, file: !1, line: 84, type: !55, isLocal: true, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !64)
!1063 = !DILocalVariable(name: "a", arg: 1, scope: !1062, file: !1, line: 84, type: !46)
!1064 = !DILocation(line: 84, column: 29, scope: !1062)
!1065 = !DILocalVariable(name: "x", arg: 2, scope: !1062, file: !1, line: 84, type: !46)
!1066 = !DILocation(line: 84, column: 45, scope: !1062)
!1067 = !DILocalVariable(name: "result", arg: 3, scope: !1062, file: !1, line: 84, type: !57)
!1068 = !DILocation(line: 84, column: 64, scope: !1062)
!1069 = !DILocalVariable(name: "SQTBIG", scope: !1062, file: !1, line: 90, type: !46)
!1070 = !DILocation(line: 90, column: 16, scope: !1062)
!1071 = !DILocalVariable(name: "ALNEPS", scope: !1062, file: !1, line: 91, type: !46)
!1072 = !DILocation(line: 91, column: 16, scope: !1062)
!1073 = !DILocation(line: 93, column: 6, scope: !1074)
!1074 = distinct !DILexicalBlock(scope: !1062, file: !1, line: 93, column: 6)
!1075 = !DILocation(line: 93, column: 8, scope: !1074)
!1076 = !DILocation(line: 93, column: 6, scope: !1062)
!1077 = !DILocation(line: 94, column: 25, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !1074, file: !1, line: 93, column: 16)
!1079 = !DILocation(line: 94, column: 28, scope: !1078)
!1080 = !DILocation(line: 94, column: 12, scope: !1078)
!1081 = !DILocation(line: 94, column: 5, scope: !1078)
!1082 = !DILocalVariable(name: "bp", scope: !1083, file: !1, line: 97, type: !46)
!1083 = distinct !DILexicalBlock(scope: !1074, file: !1, line: 96, column: 8)
!1084 = !DILocation(line: 97, column: 18, scope: !1083)
!1085 = !DILocation(line: 97, column: 29, scope: !1083)
!1086 = !DILocation(line: 97, column: 31, scope: !1083)
!1087 = !DILocation(line: 97, column: 28, scope: !1083)
!1088 = !DILocation(line: 97, column: 45, scope: !1089)
!1089 = !DILexicalBlockFile(scope: !1083, file: !1, discriminator: 1)
!1090 = !DILocation(line: 97, column: 44, scope: !1089)
!1091 = !DILocation(line: 97, column: 47, scope: !1089)
!1092 = !DILocation(line: 97, column: 46, scope: !1089)
!1093 = !DILocation(line: 97, column: 28, scope: !1089)
!1094 = !DILocation(line: 97, column: 51, scope: !1095)
!1095 = !DILexicalBlockFile(scope: !1083, file: !1, discriminator: 2)
!1096 = !DILocation(line: 97, column: 28, scope: !1095)
!1097 = !DILocation(line: 97, column: 28, scope: !1098)
!1098 = !DILexicalBlockFile(scope: !1083, file: !1, discriminator: 3)
!1099 = !DILocation(line: 97, column: 18, scope: !1098)
!1100 = !DILocalVariable(name: "incr", scope: !1083, file: !1, line: 98, type: !1101)
!1101 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!1102 = !DILocation(line: 98, column: 18, scope: !1083)
!1103 = !DILocation(line: 98, column: 28, scope: !1083)
!1104 = !DILocation(line: 98, column: 31, scope: !1083)
!1105 = !DILocation(line: 98, column: 27, scope: !1083)
!1106 = !DILocation(line: 98, column: 46, scope: !1089)
!1107 = !DILocation(line: 98, column: 45, scope: !1089)
!1108 = !DILocation(line: 98, column: 27, scope: !1089)
!1109 = !DILocation(line: 98, column: 27, scope: !1095)
!1110 = !DILocation(line: 98, column: 27, scope: !1098)
!1111 = !DILocation(line: 98, column: 25, scope: !1098)
!1112 = !DILocation(line: 98, column: 18, scope: !1098)
!1113 = !DILocalVariable(name: "b", scope: !1083, file: !1, line: 99, type: !46)
!1114 = !DILocation(line: 99, column: 18, scope: !1083)
!1115 = !DILocation(line: 99, column: 25, scope: !1083)
!1116 = !DILocation(line: 99, column: 30, scope: !1083)
!1117 = !DILocation(line: 99, column: 28, scope: !1083)
!1118 = !DILocalVariable(name: "dpoch1", scope: !1083, file: !1, line: 100, type: !47)
!1119 = !DILocation(line: 100, column: 12, scope: !1083)
!1120 = !DILocalVariable(name: "dexprl", scope: !1083, file: !1, line: 101, type: !58)
!1121 = !DILocation(line: 101, column: 19, scope: !1083)
!1122 = !DILocalVariable(name: "stat_dexprl", scope: !1083, file: !1, line: 102, type: !42)
!1123 = !DILocation(line: 102, column: 9, scope: !1083)
!1124 = !DILocalVariable(name: "i", scope: !1083, file: !1, line: 103, type: !42)
!1125 = !DILocation(line: 103, column: 9, scope: !1083)
!1126 = !DILocalVariable(name: "var", scope: !1083, file: !1, line: 105, type: !47)
!1127 = !DILocation(line: 105, column: 12, scope: !1083)
!1128 = !DILocation(line: 105, column: 21, scope: !1083)
!1129 = !DILocation(line: 105, column: 30, scope: !1083)
!1130 = !DILocation(line: 105, column: 31, scope: !1083)
!1131 = !DILocation(line: 105, column: 28, scope: !1083)
!1132 = !DILocation(line: 105, column: 23, scope: !1083)
!1133 = !DILocalVariable(name: "alnvar", scope: !1083, file: !1, line: 106, type: !47)
!1134 = !DILocation(line: 106, column: 12, scope: !1083)
!1135 = !DILocation(line: 106, column: 25, scope: !1083)
!1136 = !DILocation(line: 106, column: 21, scope: !1083)
!1137 = !DILocalVariable(name: "q", scope: !1083, file: !1, line: 107, type: !47)
!1138 = !DILocation(line: 107, column: 12, scope: !1083)
!1139 = !DILocation(line: 107, column: 16, scope: !1083)
!1140 = !DILocation(line: 107, column: 18, scope: !1083)
!1141 = !DILocation(line: 107, column: 17, scope: !1083)
!1142 = !DILocalVariable(name: "poly1", scope: !1083, file: !1, line: 109, type: !47)
!1143 = !DILocation(line: 109, column: 12, scope: !1083)
!1144 = !DILocation(line: 111, column: 8, scope: !1145)
!1145 = distinct !DILexicalBlock(scope: !1083, file: !1, line: 111, column: 8)
!1146 = !DILocation(line: 111, column: 12, scope: !1145)
!1147 = !DILocation(line: 111, column: 8, scope: !1083)
!1148 = !DILocalVariable(name: "nterms", scope: !1149, file: !1, line: 112, type: !1101)
!1149 = distinct !DILexicalBlock(scope: !1145, file: !1, line: 111, column: 22)
!1150 = !DILocation(line: 112, column: 17, scope: !1149)
!1151 = !DILocation(line: 112, column: 44, scope: !1149)
!1152 = !DILocation(line: 112, column: 43, scope: !1149)
!1153 = !DILocation(line: 112, column: 51, scope: !1149)
!1154 = !DILocation(line: 112, column: 26, scope: !1149)
!1155 = !DILocalVariable(name: "var2", scope: !1149, file: !1, line: 113, type: !46)
!1156 = !DILocation(line: 113, column: 20, scope: !1149)
!1157 = !DILocation(line: 113, column: 32, scope: !1149)
!1158 = !DILocation(line: 113, column: 31, scope: !1149)
!1159 = !DILocation(line: 113, column: 37, scope: !1149)
!1160 = !DILocation(line: 113, column: 36, scope: !1149)
!1161 = !DILocalVariable(name: "rho", scope: !1149, file: !1, line: 114, type: !46)
!1162 = !DILocation(line: 114, column: 20, scope: !1149)
!1163 = !DILocation(line: 114, column: 34, scope: !1149)
!1164 = !DILocation(line: 114, column: 36, scope: !1149)
!1165 = !DILocation(line: 114, column: 31, scope: !1149)
!1166 = !DILocalVariable(name: "term", scope: !1149, file: !1, line: 115, type: !47)
!1167 = !DILocation(line: 115, column: 14, scope: !1149)
!1168 = !DILocation(line: 115, column: 21, scope: !1149)
!1169 = !DILocalVariable(name: "gbern", scope: !1149, file: !1, line: 116, type: !1170)
!1170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 1536, align: 64, elements: !1171)
!1171 = !{!1172}
!1172 = !DISubrange(count: 24)
!1173 = !DILocation(line: 116, column: 14, scope: !1149)
!1174 = !DILocalVariable(name: "k", scope: !1149, file: !1, line: 117, type: !42)
!1175 = !DILocation(line: 117, column: 11, scope: !1149)
!1176 = !DILocalVariable(name: "j", scope: !1149, file: !1, line: 117, type: !42)
!1177 = !DILocation(line: 117, column: 14, scope: !1149)
!1178 = !DILocation(line: 119, column: 7, scope: !1149)
!1179 = !DILocation(line: 119, column: 16, scope: !1149)
!1180 = !DILocation(line: 120, column: 19, scope: !1149)
!1181 = !DILocation(line: 120, column: 18, scope: !1149)
!1182 = !DILocation(line: 120, column: 22, scope: !1149)
!1183 = !DILocation(line: 120, column: 7, scope: !1149)
!1184 = !DILocation(line: 120, column: 16, scope: !1149)
!1185 = !DILocation(line: 121, column: 15, scope: !1149)
!1186 = !DILocation(line: 121, column: 26, scope: !1149)
!1187 = !DILocation(line: 121, column: 24, scope: !1149)
!1188 = !DILocation(line: 121, column: 13, scope: !1149)
!1189 = !DILocation(line: 123, column: 10, scope: !1190)
!1190 = distinct !DILexicalBlock(scope: !1149, file: !1, line: 123, column: 10)
!1191 = !DILocation(line: 123, column: 17, scope: !1190)
!1192 = !DILocation(line: 123, column: 10, scope: !1149)
!1193 = !DILocation(line: 126, column: 9, scope: !1194)
!1194 = distinct !DILexicalBlock(scope: !1190, file: !1, line: 123, column: 23)
!1195 = !DILocation(line: 126, column: 17, scope: !1194)
!1196 = !DILocation(line: 126, column: 21, scope: !1194)
!1197 = !DILocation(line: 127, column: 9, scope: !1194)
!1198 = !DILocation(line: 127, column: 17, scope: !1194)
!1199 = !DILocation(line: 127, column: 21, scope: !1194)
!1200 = !DILocation(line: 128, column: 9, scope: !1194)
!1201 = distinct !{!1201, !1200}
!1202 = !DILocation(line: 128, column: 9, scope: !1203)
!1203 = !DILexicalBlockFile(scope: !1204, file: !1, discriminator: 1)
!1204 = distinct !DILexicalBlock(scope: !1194, file: !1, line: 128, column: 9)
!1205 = !DILocation(line: 129, column: 7, scope: !1194)
!1206 = !DILocation(line: 131, column: 12, scope: !1207)
!1207 = distinct !DILexicalBlock(scope: !1149, file: !1, line: 131, column: 7)
!1208 = !DILocation(line: 131, column: 11, scope: !1207)
!1209 = !DILocation(line: 131, column: 16, scope: !1210)
!1210 = !DILexicalBlockFile(scope: !1211, file: !1, discriminator: 1)
!1211 = distinct !DILexicalBlock(scope: !1207, file: !1, line: 131, column: 7)
!1212 = !DILocation(line: 131, column: 19, scope: !1210)
!1213 = !DILocation(line: 131, column: 17, scope: !1210)
!1214 = !DILocation(line: 131, column: 7, scope: !1210)
!1215 = !DILocalVariable(name: "gbk", scope: !1216, file: !1, line: 132, type: !47)
!1216 = distinct !DILexicalBlock(scope: !1211, file: !1, line: 131, column: 32)
!1217 = !DILocation(line: 132, column: 16, scope: !1216)
!1218 = !DILocation(line: 133, column: 14, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !1216, file: !1, line: 133, column: 9)
!1220 = !DILocation(line: 133, column: 13, scope: !1219)
!1221 = !DILocation(line: 133, column: 18, scope: !1222)
!1222 = !DILexicalBlockFile(scope: !1223, file: !1, discriminator: 1)
!1223 = distinct !DILexicalBlock(scope: !1219, file: !1, line: 133, column: 9)
!1224 = !DILocation(line: 133, column: 21, scope: !1222)
!1225 = !DILocation(line: 133, column: 19, scope: !1222)
!1226 = !DILocation(line: 133, column: 9, scope: !1222)
!1227 = !DILocation(line: 134, column: 23, scope: !1228)
!1228 = distinct !DILexicalBlock(scope: !1223, file: !1, line: 133, column: 29)
!1229 = !DILocation(line: 134, column: 25, scope: !1228)
!1230 = !DILocation(line: 134, column: 24, scope: !1228)
!1231 = !DILocation(line: 134, column: 26, scope: !1228)
!1232 = !DILocation(line: 134, column: 18, scope: !1228)
!1233 = !DILocation(line: 134, column: 36, scope: !1228)
!1234 = !DILocation(line: 134, column: 30, scope: !1228)
!1235 = !DILocation(line: 134, column: 29, scope: !1228)
!1236 = !DILocation(line: 134, column: 15, scope: !1228)
!1237 = !DILocation(line: 135, column: 9, scope: !1228)
!1238 = !DILocation(line: 133, column: 25, scope: !1239)
!1239 = !DILexicalBlockFile(scope: !1223, file: !1, discriminator: 2)
!1240 = !DILocation(line: 133, column: 9, scope: !1239)
!1241 = distinct !{!1241, !1242}
!1242 = !DILocation(line: 133, column: 9, scope: !1216)
!1243 = !DILocation(line: 136, column: 23, scope: !1216)
!1244 = !DILocation(line: 136, column: 22, scope: !1216)
!1245 = !DILocation(line: 136, column: 27, scope: !1216)
!1246 = !DILocation(line: 136, column: 26, scope: !1216)
!1247 = !DILocation(line: 136, column: 31, scope: !1216)
!1248 = !DILocation(line: 136, column: 30, scope: !1216)
!1249 = !DILocation(line: 136, column: 15, scope: !1216)
!1250 = !DILocation(line: 136, column: 16, scope: !1216)
!1251 = !DILocation(line: 136, column: 9, scope: !1216)
!1252 = !DILocation(line: 136, column: 20, scope: !1216)
!1253 = !DILocation(line: 138, column: 21, scope: !1216)
!1254 = !DILocation(line: 138, column: 20, scope: !1216)
!1255 = !DILocation(line: 138, column: 22, scope: !1216)
!1256 = !DILocation(line: 138, column: 19, scope: !1216)
!1257 = !DILocation(line: 138, column: 25, scope: !1216)
!1258 = !DILocation(line: 138, column: 24, scope: !1216)
!1259 = !DILocation(line: 138, column: 31, scope: !1216)
!1260 = !DILocation(line: 138, column: 30, scope: !1216)
!1261 = !DILocation(line: 138, column: 32, scope: !1216)
!1262 = !DILocation(line: 138, column: 29, scope: !1216)
!1263 = !DILocation(line: 138, column: 35, scope: !1216)
!1264 = !DILocation(line: 138, column: 34, scope: !1216)
!1265 = !DILocation(line: 138, column: 27, scope: !1216)
!1266 = !DILocation(line: 138, column: 38, scope: !1216)
!1267 = !DILocation(line: 138, column: 37, scope: !1216)
!1268 = !DILocation(line: 138, column: 15, scope: !1216)
!1269 = !DILocation(line: 139, column: 24, scope: !1216)
!1270 = !DILocation(line: 139, column: 25, scope: !1216)
!1271 = !DILocation(line: 139, column: 18, scope: !1216)
!1272 = !DILocation(line: 139, column: 29, scope: !1216)
!1273 = !DILocation(line: 139, column: 28, scope: !1216)
!1274 = !DILocation(line: 139, column: 15, scope: !1216)
!1275 = !DILocation(line: 140, column: 7, scope: !1216)
!1276 = !DILocation(line: 131, column: 28, scope: !1277)
!1277 = !DILexicalBlockFile(scope: !1211, file: !1, discriminator: 2)
!1278 = !DILocation(line: 131, column: 7, scope: !1277)
!1279 = distinct !{!1279, !1280}
!1280 = !DILocation(line: 131, column: 7, scope: !1149)
!1281 = !DILocation(line: 141, column: 5, scope: !1149)
!1282 = !DILocation(line: 143, column: 34, scope: !1083)
!1283 = !DILocation(line: 143, column: 19, scope: !1083)
!1284 = !DILocation(line: 143, column: 17, scope: !1083)
!1285 = !DILocation(line: 144, column: 8, scope: !1286)
!1286 = distinct !DILexicalBlock(scope: !1083, file: !1, line: 144, column: 8)
!1287 = !DILocation(line: 144, column: 20, scope: !1286)
!1288 = !DILocation(line: 144, column: 8, scope: !1083)
!1289 = !DILocation(line: 145, column: 7, scope: !1290)
!1290 = distinct !DILexicalBlock(scope: !1286, file: !1, line: 144, column: 36)
!1291 = !DILocation(line: 145, column: 15, scope: !1290)
!1292 = !DILocation(line: 145, column: 19, scope: !1290)
!1293 = !DILocation(line: 146, column: 7, scope: !1290)
!1294 = !DILocation(line: 146, column: 15, scope: !1290)
!1295 = !DILocation(line: 146, column: 19, scope: !1290)
!1296 = !DILocation(line: 147, column: 14, scope: !1290)
!1297 = !DILocation(line: 147, column: 7, scope: !1290)
!1298 = !DILocation(line: 149, column: 25, scope: !1083)
!1299 = !DILocation(line: 149, column: 29, scope: !1083)
!1300 = !DILocation(line: 149, column: 28, scope: !1083)
!1301 = !DILocation(line: 149, column: 12, scope: !1083)
!1302 = !DILocation(line: 149, column: 16, scope: !1083)
!1303 = !DILocation(line: 150, column: 15, scope: !1083)
!1304 = !DILocation(line: 150, column: 17, scope: !1083)
!1305 = !DILocation(line: 150, column: 11, scope: !1083)
!1306 = !DILocation(line: 151, column: 21, scope: !1083)
!1307 = !DILocation(line: 151, column: 28, scope: !1083)
!1308 = !DILocation(line: 151, column: 37, scope: !1083)
!1309 = !DILocation(line: 151, column: 41, scope: !1083)
!1310 = !DILocation(line: 151, column: 39, scope: !1083)
!1311 = !DILocation(line: 151, column: 35, scope: !1083)
!1312 = !DILocation(line: 151, column: 25, scope: !1083)
!1313 = !DILocation(line: 151, column: 50, scope: !1083)
!1314 = !DILocation(line: 151, column: 48, scope: !1083)
!1315 = !DILocation(line: 151, column: 12, scope: !1083)
!1316 = !DILocation(line: 153, column: 11, scope: !1317)
!1317 = distinct !DILexicalBlock(scope: !1083, file: !1, line: 153, column: 5)
!1318 = !DILocation(line: 153, column: 15, scope: !1317)
!1319 = !DILocation(line: 153, column: 10, scope: !1317)
!1320 = !DILocation(line: 153, column: 9, scope: !1317)
!1321 = !DILocation(line: 153, column: 19, scope: !1322)
!1322 = !DILexicalBlockFile(scope: !1323, file: !1, discriminator: 1)
!1323 = distinct !DILexicalBlock(scope: !1317, file: !1, line: 153, column: 5)
!1324 = !DILocation(line: 153, column: 21, scope: !1322)
!1325 = !DILocation(line: 153, column: 5, scope: !1322)
!1326 = !DILocalVariable(name: "binv", scope: !1327, file: !1, line: 158, type: !47)
!1327 = distinct !DILexicalBlock(scope: !1323, file: !1, line: 153, column: 32)
!1328 = !DILocation(line: 158, column: 14, scope: !1327)
!1329 = !DILocation(line: 158, column: 26, scope: !1327)
!1330 = !DILocation(line: 158, column: 29, scope: !1327)
!1331 = !DILocation(line: 158, column: 28, scope: !1327)
!1332 = !DILocation(line: 158, column: 24, scope: !1327)
!1333 = !DILocation(line: 159, column: 17, scope: !1327)
!1334 = !DILocation(line: 159, column: 26, scope: !1327)
!1335 = !DILocation(line: 159, column: 24, scope: !1327)
!1336 = !DILocation(line: 159, column: 41, scope: !1327)
!1337 = !DILocation(line: 159, column: 43, scope: !1327)
!1338 = !DILocation(line: 159, column: 42, scope: !1327)
!1339 = !DILocation(line: 159, column: 39, scope: !1327)
!1340 = !DILocation(line: 159, column: 32, scope: !1327)
!1341 = !DILocation(line: 159, column: 14, scope: !1327)
!1342 = !DILocation(line: 160, column: 5, scope: !1327)
!1343 = !DILocation(line: 153, column: 28, scope: !1344)
!1344 = !DILexicalBlockFile(scope: !1323, file: !1, discriminator: 2)
!1345 = !DILocation(line: 153, column: 5, scope: !1344)
!1346 = distinct !{!1346, !1347}
!1347 = !DILocation(line: 153, column: 5, scope: !1083)
!1348 = !DILocation(line: 162, column: 8, scope: !1349)
!1349 = distinct !DILexicalBlock(scope: !1083, file: !1, line: 162, column: 8)
!1350 = !DILocation(line: 162, column: 14, scope: !1349)
!1351 = !DILocation(line: 162, column: 11, scope: !1349)
!1352 = !DILocation(line: 162, column: 8, scope: !1083)
!1353 = !DILocation(line: 163, column: 21, scope: !1354)
!1354 = distinct !DILexicalBlock(scope: !1349, file: !1, line: 162, column: 17)
!1355 = !DILocation(line: 163, column: 7, scope: !1354)
!1356 = !DILocation(line: 163, column: 15, scope: !1354)
!1357 = !DILocation(line: 163, column: 19, scope: !1354)
!1358 = !DILocation(line: 164, column: 51, scope: !1354)
!1359 = !DILocation(line: 164, column: 46, scope: !1354)
!1360 = !DILocation(line: 164, column: 57, scope: !1354)
!1361 = !DILocation(line: 164, column: 43, scope: !1354)
!1362 = !DILocation(line: 164, column: 71, scope: !1354)
!1363 = !DILocation(line: 164, column: 79, scope: !1354)
!1364 = !DILocation(line: 164, column: 66, scope: !1365)
!1365 = !DILexicalBlockFile(scope: !1354, file: !1, discriminator: 1)
!1366 = !DILocation(line: 164, column: 64, scope: !1354)
!1367 = !DILocation(line: 164, column: 7, scope: !1354)
!1368 = !DILocation(line: 164, column: 15, scope: !1354)
!1369 = !DILocation(line: 164, column: 19, scope: !1354)
!1370 = !DILocation(line: 165, column: 7, scope: !1354)
!1371 = !DILocalVariable(name: "sinpxx", scope: !1372, file: !1, line: 172, type: !47)
!1372 = distinct !DILexicalBlock(scope: !1349, file: !1, line: 167, column: 10)
!1373 = !DILocation(line: 172, column: 14, scope: !1372)
!1374 = !DILocation(line: 172, column: 32, scope: !1372)
!1375 = !DILocation(line: 172, column: 31, scope: !1372)
!1376 = !DILocation(line: 172, column: 23, scope: !1372)
!1377 = !DILocation(line: 172, column: 35, scope: !1372)
!1378 = !DILocation(line: 172, column: 34, scope: !1372)
!1379 = !DILocalVariable(name: "sinpx2", scope: !1372, file: !1, line: 173, type: !47)
!1380 = !DILocation(line: 173, column: 14, scope: !1372)
!1381 = !DILocation(line: 173, column: 36, scope: !1372)
!1382 = !DILocation(line: 173, column: 35, scope: !1372)
!1383 = !DILocation(line: 173, column: 23, scope: !1372)
!1384 = !DILocalVariable(name: "t1", scope: !1372, file: !1, line: 174, type: !47)
!1385 = !DILocation(line: 174, column: 14, scope: !1372)
!1386 = !DILocation(line: 174, column: 19, scope: !1372)
!1387 = !DILocation(line: 174, column: 35, scope: !1372)
!1388 = !DILocation(line: 174, column: 34, scope: !1372)
!1389 = !DILocation(line: 174, column: 26, scope: !1372)
!1390 = !DILocation(line: 174, column: 25, scope: !1372)
!1391 = !DILocalVariable(name: "t2", scope: !1372, file: !1, line: 175, type: !47)
!1392 = !DILocation(line: 175, column: 14, scope: !1372)
!1393 = !DILocation(line: 175, column: 23, scope: !1372)
!1394 = !DILocation(line: 175, column: 22, scope: !1372)
!1395 = !DILocation(line: 175, column: 31, scope: !1372)
!1396 = !DILocation(line: 175, column: 38, scope: !1372)
!1397 = !DILocation(line: 175, column: 37, scope: !1372)
!1398 = !DILocation(line: 175, column: 29, scope: !1372)
!1399 = !DILocalVariable(name: "trig", scope: !1372, file: !1, line: 176, type: !47)
!1400 = !DILocation(line: 176, column: 14, scope: !1372)
!1401 = !DILocation(line: 176, column: 22, scope: !1372)
!1402 = !DILocation(line: 176, column: 27, scope: !1372)
!1403 = !DILocation(line: 176, column: 25, scope: !1372)
!1404 = !DILocation(line: 177, column: 22, scope: !1372)
!1405 = !DILocation(line: 177, column: 38, scope: !1372)
!1406 = !DILocation(line: 177, column: 40, scope: !1372)
!1407 = !DILocation(line: 177, column: 39, scope: !1372)
!1408 = !DILocation(line: 177, column: 36, scope: !1372)
!1409 = !DILocation(line: 177, column: 29, scope: !1372)
!1410 = !DILocation(line: 177, column: 48, scope: !1372)
!1411 = !DILocation(line: 177, column: 46, scope: !1372)
!1412 = !DILocation(line: 177, column: 7, scope: !1372)
!1413 = !DILocation(line: 177, column: 15, scope: !1372)
!1414 = !DILocation(line: 177, column: 20, scope: !1372)
!1415 = !DILocation(line: 178, column: 28, scope: !1372)
!1416 = !DILocation(line: 178, column: 35, scope: !1372)
!1417 = !DILocation(line: 178, column: 34, scope: !1372)
!1418 = !DILocation(line: 178, column: 23, scope: !1372)
!1419 = !DILocation(line: 178, column: 38, scope: !1372)
!1420 = !DILocation(line: 178, column: 45, scope: !1372)
!1421 = !DILocation(line: 178, column: 71, scope: !1372)
!1422 = !DILocation(line: 178, column: 66, scope: !1423)
!1423 = !DILexicalBlockFile(scope: !1372, file: !1, discriminator: 1)
!1424 = !DILocation(line: 178, column: 82, scope: !1372)
!1425 = !DILocation(line: 178, column: 77, scope: !1426)
!1426 = !DILexicalBlockFile(scope: !1372, file: !1, discriminator: 2)
!1427 = !DILocation(line: 178, column: 75, scope: !1372)
!1428 = !DILocation(line: 178, column: 63, scope: !1372)
!1429 = !DILocation(line: 178, column: 7, scope: !1372)
!1430 = !DILocation(line: 178, column: 15, scope: !1372)
!1431 = !DILocation(line: 178, column: 20, scope: !1372)
!1432 = !DILocation(line: 179, column: 52, scope: !1372)
!1433 = !DILocation(line: 179, column: 47, scope: !1372)
!1434 = !DILocation(line: 179, column: 58, scope: !1372)
!1435 = !DILocation(line: 179, column: 44, scope: !1372)
!1436 = !DILocation(line: 179, column: 72, scope: !1372)
!1437 = !DILocation(line: 179, column: 80, scope: !1372)
!1438 = !DILocation(line: 179, column: 67, scope: !1423)
!1439 = !DILocation(line: 179, column: 65, scope: !1372)
!1440 = !DILocation(line: 179, column: 7, scope: !1372)
!1441 = !DILocation(line: 179, column: 15, scope: !1372)
!1442 = !DILocation(line: 179, column: 19, scope: !1372)
!1443 = !DILocation(line: 180, column: 7, scope: !1372)
!1444 = !DILocation(line: 183, column: 1, scope: !1062)
!1445 = distinct !DISubprogram(name: "gsl_sf_lnpoch", scope: !1, file: !1, line: 452, type: !1446, isLocal: false, isDefinition: true, scopeLine: 453, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !64)
!1446 = !DISubroutineType(types: !1447)
!1447 = !{!47, !46, !46}
!1448 = !DILocalVariable(name: "a", arg: 1, scope: !1445, file: !1, line: 452, type: !46)
!1449 = !DILocation(line: 452, column: 35, scope: !1445)
!1450 = !DILocalVariable(name: "x", arg: 2, scope: !1445, file: !1, line: 452, type: !46)
!1451 = !DILocation(line: 452, column: 51, scope: !1445)
!1452 = !DILocalVariable(name: "result", scope: !1445, file: !1, line: 454, type: !58)
!1453 = !DILocation(line: 454, column: 3, scope: !1445)
!1454 = !DILocalVariable(name: "status", scope: !1445, file: !1, line: 454, type: !42)
!1455 = !DILocation(line: 454, column: 3, scope: !1456)
!1456 = distinct !DILexicalBlock(scope: !1445, file: !1, line: 454, column: 3)
!1457 = !DILocation(line: 454, column: 3, scope: !1458)
!1458 = !DILexicalBlockFile(scope: !1459, file: !1, discriminator: 1)
!1459 = distinct !DILexicalBlock(scope: !1456, file: !1, line: 454, column: 3)
!1460 = distinct !{!1460, !1461}
!1461 = !DILocation(line: 454, column: 3, scope: !1459)
!1462 = !DILocation(line: 454, column: 3, scope: !1463)
!1463 = !DILexicalBlockFile(scope: !1464, file: !1, discriminator: 2)
!1464 = distinct !DILexicalBlock(scope: !1459, file: !1, line: 454, column: 3)
!1465 = !DILocation(line: 454, column: 3, scope: !1466)
!1466 = !DILexicalBlockFile(scope: !1459, file: !1, discriminator: 3)
!1467 = !DILocation(line: 454, column: 3, scope: !1468)
!1468 = !DILexicalBlockFile(scope: !1445, file: !1, discriminator: 4)
!1469 = !DILocation(line: 455, column: 1, scope: !1445)
!1470 = distinct !DISubprogram(name: "gsl_sf_poch", scope: !1, file: !1, line: 457, type: !1446, isLocal: false, isDefinition: true, scopeLine: 458, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !64)
!1471 = !DILocalVariable(name: "a", arg: 1, scope: !1470, file: !1, line: 457, type: !46)
!1472 = !DILocation(line: 457, column: 33, scope: !1470)
!1473 = !DILocalVariable(name: "x", arg: 2, scope: !1470, file: !1, line: 457, type: !46)
!1474 = !DILocation(line: 457, column: 49, scope: !1470)
!1475 = !DILocalVariable(name: "result", scope: !1470, file: !1, line: 459, type: !58)
!1476 = !DILocation(line: 459, column: 3, scope: !1470)
!1477 = !DILocalVariable(name: "status", scope: !1470, file: !1, line: 459, type: !42)
!1478 = !DILocation(line: 459, column: 3, scope: !1479)
!1479 = distinct !DILexicalBlock(scope: !1470, file: !1, line: 459, column: 3)
!1480 = !DILocation(line: 459, column: 3, scope: !1481)
!1481 = !DILexicalBlockFile(scope: !1482, file: !1, discriminator: 1)
!1482 = distinct !DILexicalBlock(scope: !1479, file: !1, line: 459, column: 3)
!1483 = distinct !{!1483, !1484}
!1484 = !DILocation(line: 459, column: 3, scope: !1482)
!1485 = !DILocation(line: 459, column: 3, scope: !1486)
!1486 = !DILexicalBlockFile(scope: !1487, file: !1, discriminator: 2)
!1487 = distinct !DILexicalBlock(scope: !1482, file: !1, line: 459, column: 3)
!1488 = !DILocation(line: 459, column: 3, scope: !1489)
!1489 = !DILexicalBlockFile(scope: !1482, file: !1, discriminator: 3)
!1490 = !DILocation(line: 459, column: 3, scope: !1491)
!1491 = !DILexicalBlockFile(scope: !1470, file: !1, discriminator: 4)
!1492 = !DILocation(line: 460, column: 1, scope: !1470)
!1493 = distinct !DISubprogram(name: "gsl_sf_pochrel", scope: !1, file: !1, line: 462, type: !1446, isLocal: false, isDefinition: true, scopeLine: 463, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !64)
!1494 = !DILocalVariable(name: "a", arg: 1, scope: !1493, file: !1, line: 462, type: !46)
!1495 = !DILocation(line: 462, column: 36, scope: !1493)
!1496 = !DILocalVariable(name: "x", arg: 2, scope: !1493, file: !1, line: 462, type: !46)
!1497 = !DILocation(line: 462, column: 52, scope: !1493)
!1498 = !DILocalVariable(name: "result", scope: !1493, file: !1, line: 464, type: !58)
!1499 = !DILocation(line: 464, column: 3, scope: !1493)
!1500 = !DILocalVariable(name: "status", scope: !1493, file: !1, line: 464, type: !42)
!1501 = !DILocation(line: 464, column: 3, scope: !1502)
!1502 = distinct !DILexicalBlock(scope: !1493, file: !1, line: 464, column: 3)
!1503 = !DILocation(line: 464, column: 3, scope: !1504)
!1504 = !DILexicalBlockFile(scope: !1505, file: !1, discriminator: 1)
!1505 = distinct !DILexicalBlock(scope: !1502, file: !1, line: 464, column: 3)
!1506 = distinct !{!1506, !1507}
!1507 = !DILocation(line: 464, column: 3, scope: !1505)
!1508 = !DILocation(line: 464, column: 3, scope: !1509)
!1509 = !DILexicalBlockFile(scope: !1510, file: !1, discriminator: 2)
!1510 = distinct !DILexicalBlock(scope: !1505, file: !1, line: 464, column: 3)
!1511 = !DILocation(line: 464, column: 3, scope: !1512)
!1512 = !DILexicalBlockFile(scope: !1505, file: !1, discriminator: 3)
!1513 = !DILocation(line: 464, column: 3, scope: !1514)
!1514 = !DILexicalBlockFile(scope: !1493, file: !1, discriminator: 4)
!1515 = !DILocation(line: 465, column: 1, scope: !1493)
