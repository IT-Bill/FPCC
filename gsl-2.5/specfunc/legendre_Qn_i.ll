; ModuleID = 'legendre_Qn.ll'
source_filename = "legendre_Qn.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsl_sf_result_struct = type { double, double }

@.str = private unnamed_addr constant [13 x i8] c"domain error\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"legendre_Qn.c\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"underflow\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"gsl_sf_legendre_Q0_e(x, &result)\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"gsl_sf_legendre_Q1_e(x, &result)\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"gsl_sf_legendre_Ql_e(l, x, &result)\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@0 = private unnamed_addr constant [21 x i8] c"gsl_sf_legendre_Q0_e\00"
@1 = private unnamed_addr constant [15 x i8] c"legendre_Qn.ll\00"
@2 = private unnamed_addr constant [21 x i8] c"gsl_sf_legendre_Q1_e\00"
@3 = private unnamed_addr constant [15 x i8] c"legendre_Qn.ll\00"
@4 = private unnamed_addr constant [21 x i8] c"gsl_sf_legendre_Ql_e\00"
@5 = private unnamed_addr constant [15 x i8] c"legendre_Qn.ll\00"
@6 = private unnamed_addr constant [23 x i8] c"legendre_Ql_asymp_unif\00"
@7 = private unnamed_addr constant [15 x i8] c"legendre_Qn.ll\00"
@8 = private unnamed_addr constant [19 x i8] c"legendreQ_CF1_xgt1\00"
@9 = private unnamed_addr constant [15 x i8] c"legendre_Qn.ll\00"
@10 = private unnamed_addr constant [19 x i8] c"gsl_sf_legendre_Q0\00"
@11 = private unnamed_addr constant [15 x i8] c"legendre_Qn.ll\00"
@12 = private unnamed_addr constant [19 x i8] c"gsl_sf_legendre_Q1\00"
@13 = private unnamed_addr constant [15 x i8] c"legendre_Qn.ll\00"
@14 = private unnamed_addr constant [19 x i8] c"gsl_sf_legendre_Ql\00"
@15 = private unnamed_addr constant [15 x i8] c"legendre_Qn.ll\00"

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_legendre_Q0_e(double, %struct.gsl_sf_result_struct*) #0 !dbg !45 {
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
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !59, metadata !60), !dbg !61
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %5, metadata !62, metadata !60), !dbg !63
  %21 = load double, double* %4, align 8, !dbg !64
  %22 = fcmp ole double %21, -1.000000e+00, !dbg !66
  %23 = call i1 @fCmpInstHandler(double %21, double -1.000000e+00, i1 %22, i32 5, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @1, i32 0, i32 0), i64 94552618380912, i32 184, i32 8), !dbg !67
  br i1 %23, label %28, label %24, !dbg !67

; <label>:24:                                     ; preds = %2
  %25 = load double, double* %4, align 8, !dbg !68
  %26 = fcmp oeq double %25, 1.000000e+00, !dbg !70
  %27 = call i1 @fCmpInstHandler(double %25, double 1.000000e+00, i1 %26, i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @1, i32 0, i32 0), i64 94552618382432, i32 184, i32 21), !dbg !71
  br i1 %27, label %28, label %37, !dbg !71

; <label>:28:                                     ; preds = %24, %2
  br label %29, !dbg !72, !llvm.loop !74

; <label>:29:                                     ; preds = %28
  %30 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !75
  %31 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %30, i32 0, i32 0, !dbg !75
  store double 0x7FF8000000000000, double* %31, align 8, !dbg !75
  %32 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !75
  %33 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %32, i32 0, i32 1, !dbg !75
  store double 0x7FF8000000000000, double* %33, align 8, !dbg !75
  br label %34, !dbg !75, !llvm.loop !78

; <label>:34:                                     ; preds = %29
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 185, i32 1), !dbg !80
  store i32 1, i32* %3, align 4, !dbg !80
  br label %172, !dbg !80
                                                  ; No predecessors!
  br label %36, !dbg !83

; <label>:36:                                     ; preds = %35
  br label %172, !dbg !85

; <label>:37:                                     ; preds = %24
  %38 = load double, double* %4, align 8, !dbg !86
  %39 = load double, double* %4, align 8, !dbg !88
  %40 = fmul double %38, %39, !dbg !89
  call void @fMulHandler(double %38, double %39, double %40, i64 94552618396440, i64 94552618396760, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @1, i32 0, i32 0), i64 94552618397168, i32 187, i32 12), !dbg !90
  %41 = fcmp olt double %40, 0x3F6428A2F98D728D, !dbg !90
  %42 = call i1 @fCmpInstHandler(double %40, double 0x3F6428A2F98D728D, i1 %41, i32 4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @1, i32 0, i32 0), i64 94552618397648, i32 187, i32 15), !dbg !91
  br i1 %42, label %43, label %72, !dbg !91

; <label>:43:                                     ; preds = %37
  call void @llvm.dbg.declare(metadata double* %6, metadata !92, metadata !60), !dbg !94
  store double 0x3FD5555555555555, double* %6, align 8, !dbg !94
  call void @llvm.dbg.declare(metadata double* %7, metadata !95, metadata !60), !dbg !96
  store double 2.000000e-01, double* %7, align 8, !dbg !96
  call void @llvm.dbg.declare(metadata double* %8, metadata !97, metadata !60), !dbg !98
  store double 0x3FC2492492492492, double* %8, align 8, !dbg !98
  call void @llvm.dbg.declare(metadata double* %9, metadata !99, metadata !60), !dbg !100
  store double 0x3FBC71C71C71C71C, double* %9, align 8, !dbg !100
  call void @llvm.dbg.declare(metadata double* %10, metadata !101, metadata !60), !dbg !102
  store double 0x3FB745D1745D1746, double* %10, align 8, !dbg !102
  call void @llvm.dbg.declare(metadata double* %11, metadata !103, metadata !60), !dbg !104
  %44 = load double, double* %4, align 8, !dbg !105
  %45 = load double, double* %4, align 8, !dbg !106
  %46 = fmul double %44, %45, !dbg !107
  call void @fMulHandler(double %44, double %45, double %46, i64 94552618414072, i64 94552618414424, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @1, i32 0, i32 0), i64 94552618414832, i32 193, i32 24), !dbg !104
  store double %46, double* %11, align 8, !dbg !104
  call void @llvm.dbg.declare(metadata double* %12, metadata !108, metadata !60), !dbg !109
  %47 = load double, double* %11, align 8, !dbg !110
  %48 = load double, double* %11, align 8, !dbg !111
  %49 = load double, double* %11, align 8, !dbg !112
  %50 = load double, double* %11, align 8, !dbg !113
  %51 = load double, double* %11, align 8, !dbg !114
  %52 = fmul double %51, 0x3FB745D1745D1746, !dbg !115
  call void @fMulHandler(double %51, double 0x3FB745D1745D1746, double %52, i64 94552618419528, i64 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @1, i32 0, i32 0), i64 94552618419936, i32 194, i32 66), !dbg !116
  %53 = fadd double 0x3FBC71C71C71C71C, %52, !dbg !116
  call void @fAddHandler(double 0x3FBC71C71C71C71C, double %52, double %53, i64 0, i64 94552618419936, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @1, i32 0, i32 0), i64 94552618420352, i32 194, i32 63), !dbg !117
  %54 = fmul double %50, %53, !dbg !117
  call void @fMulHandler(double %50, double %53, double %54, i64 94552618419144, i64 94552618420352, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @1, i32 0, i32 0), i64 94552618420768, i32 194, i32 58), !dbg !118
  %55 = fadd double 0x3FC2492492492492, %54, !dbg !118
  call void @fAddHandler(double 0x3FC2492492492492, double %54, double %55, i64 0, i64 94552618420768, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @1, i32 0, i32 0), i64 94552618421184, i32 194, i32 55), !dbg !119
  %56 = fmul double %49, %55, !dbg !119
  call void @fMulHandler(double %49, double %55, double %56, i64 94552618418760, i64 94552618421184, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @1, i32 0, i32 0), i64 94552618421600, i32 194, i32 50), !dbg !120
  %57 = fadd double 2.000000e-01, %56, !dbg !120
  call void @fAddHandler(double 2.000000e-01, double %56, double %57, i64 0, i64 94552618421600, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @1, i32 0, i32 0), i64 94552618422048, i32 194, i32 47), !dbg !121
  %58 = fmul double %48, %57, !dbg !121
  call void @fMulHandler(double %48, double %57, double %58, i64 94552618418376, i64 94552618422048, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @1, i32 0, i32 0), i64 94552618422432, i32 194, i32 42), !dbg !122
  %59 = fadd double 0x3FD5555555555555, %58, !dbg !122
  call void @fAddHandler(double 0x3FD5555555555555, double %58, double %59, i64 0, i64 94552618422432, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @1, i32 0, i32 0), i64 94552618422848, i32 194, i32 39), !dbg !123
  %60 = fmul double %47, %59, !dbg !123
  call void @fMulHandler(double %47, double %59, double %60, i64 94552618418024, i64 94552618422848, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @1, i32 0, i32 0), i64 94552618423264, i32 194, i32 34), !dbg !124
  %61 = fadd double 1.000000e+00, %60, !dbg !124
  call void @fAddHandler(double 1.000000e+00, double %60, double %61, i64 0, i64 94552618423264, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @1, i32 0, i32 0), i64 94552618423712, i32 194, i32 31), !dbg !109
  store double %61, double* %12, align 8, !dbg !109
  %62 = load double, double* %4, align 8, !dbg !125
  %63 = load double, double* %12, align 8, !dbg !126
  %64 = fmul double %62, %63, !dbg !127
  call void @fMulHandler(double %62, double %63, double %64, i64 94552618425752, i64 94552618426136, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @1, i32 0, i32 0), i64 94552618426544, i32 195, i32 21), !dbg !128
  %65 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !128
  %66 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %65, i32 0, i32 0, !dbg !129
  store double %64, double* %66, align 8, !dbg !130
  %67 = load double, double* %4, align 8, !dbg !131
  %68 = call double @fabs(double %67) #1, !dbg !132
  %69 = fmul double 0x3CC0000000000000, %68, !dbg !133
  call void @fMulHandler(double 0x3CC0000000000000, double %68, double %69, i64 0, i64 94552618429968, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @1, i32 0, i32 0), i64 94552618430544, i32 196, i32 41), !dbg !134
  %70 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !134
  %71 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %70, i32 0, i32 1, !dbg !135
  store double %69, double* %71, align 8, !dbg !136
  store i32 0, i32* %3, align 4, !dbg !137
  br label %172, !dbg !137

; <label>:72:                                     ; preds = %37
  %73 = load double, double* %4, align 8, !dbg !138
  %74 = fcmp olt double %73, 1.000000e+00, !dbg !140
  %75 = call i1 @fCmpInstHandler(double %73, double 1.000000e+00, i1 %74, i32 4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @1, i32 0, i32 0), i64 94552618434624, i32 199, i32 13), !dbg !141
  br i1 %75, label %76, label %94, !dbg !141

; <label>:76:                                     ; preds = %72
  %77 = load double, double* %4, align 8, !dbg !142
  %78 = fadd double 1.000000e+00, %77, !dbg !144
  call void @fAddHandler(double 1.000000e+00, double %77, double %78, i64 0, i64 94552618435704, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @1, i32 0, i32 0), i64 94552618436080, i32 201, i32 33), !dbg !145
  %79 = load double, double* %4, align 8, !dbg !145
  %80 = fsub double -1.000000e+00, %79, !dbg !146
  call void @fSubHandler(double -1.000000e+00, double %79, double %80, i64 0, i64 94552618436440, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @1, i32 0, i32 0), i64 94552618436880, i32 201, i32 42), !dbg !147
  %81 = fadd double %80, 2.000000e+00, !dbg !147
  call void @fAddHandler(double %80, double 2.000000e+00, double %81, i64 94552618436880, i64 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @1, i32 0, i32 0), i64 94552618437360, i32 201, i32 44), !dbg !148
  %82 = fdiv double %78, %81, !dbg !148
  call void @fDivHandler(double %78, double %81, double %82, i64 94552618436080, i64 94552618437360, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @1, i32 0, i32 0), i64 94552618437744, i32 201, i32 36), !dbg !149
  %83 = call double @log(double %82) #5, !dbg !149
  call void @callOneArgHandler(i32 12, double %82, double %83, i64 94552618437744, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @1, i32 0, i32 0), i64 94552618438496, i32 201, i32 25), !dbg !150
  %84 = fmul double 5.000000e-01, %83, !dbg !150
  call void @fMulHandler(double 5.000000e-01, double %83, double %84, i64 0, i64 94552618438496, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @1, i32 0, i32 0), i64 94552618439104, i32 201, i32 23), !dbg !151
  %85 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !151
  %86 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %85, i32 0, i32 0, !dbg !152
  store double %84, double* %86, align 8, !dbg !153
  %87 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !154
  %88 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %87, i32 0, i32 0, !dbg !155
  %89 = load double, double* %88, align 8, !dbg !155
  %90 = call double @fabs(double %89) #1, !dbg !156
  %91 = fmul double 0x3CC0000000000000, %90, !dbg !157
  call void @fMulHandler(double 0x3CC0000000000000, double %90, double %91, i64 0, i64 94552618443280, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @1, i32 0, i32 0), i64 94552618443760, i32 202, i32 42), !dbg !158
  %92 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !158
  %93 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %92, i32 0, i32 1, !dbg !159
  store double %91, double* %93, align 8, !dbg !160
  store i32 0, i32* %3, align 4, !dbg !161
  br label %172, !dbg !161

; <label>:94:                                     ; preds = %72
  %95 = load double, double* %4, align 8, !dbg !162
  %96 = fcmp olt double %95, 1.000000e+01, !dbg !164
  %97 = call i1 @fCmpInstHandler(double %95, double 1.000000e+01, i1 %96, i32 4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @1, i32 0, i32 0), i64 94552618447904, i32 205, i32 13), !dbg !165
  br i1 %97, label %98, label %116, !dbg !165

; <label>:98:                                     ; preds = %94
  %99 = load double, double* %4, align 8, !dbg !166
  %100 = fadd double %99, 1.000000e+00, !dbg !168
  call void @fAddHandler(double %99, double 1.000000e+00, double %100, i64 94552618448984, i64 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @1, i32 0, i32 0), i64 94552618449360, i32 207, i32 31), !dbg !169
  %101 = load double, double* %4, align 8, !dbg !169
  %102 = fadd double %101, 1.000000e+00, !dbg !170
  call void @fAddHandler(double %101, double 1.000000e+00, double %102, i64 94552618449720, i64 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @1, i32 0, i32 0), i64 94552618450160, i32 207, i32 39), !dbg !171
  %103 = fsub double %102, 2.000000e+00, !dbg !171
  call void @fSubHandler(double %102, double 2.000000e+00, double %103, i64 94552618450160, i64 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @1, i32 0, i32 0), i64 94552618450576, i32 207, i32 43), !dbg !172
  %104 = fdiv double %100, %103, !dbg !172
  call void @fDivHandler(double %100, double %103, double %104, i64 94552618449360, i64 94552618450576, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @1, i32 0, i32 0), i64 94552618450960, i32 207, i32 36), !dbg !173
  %105 = call double @log(double %104) #5, !dbg !173
  call void @callOneArgHandler(i32 12, double %104, double %105, i64 94552618450960, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @1, i32 0, i32 0), i64 94552618451440, i32 207, i32 25), !dbg !174
  %106 = fmul double 5.000000e-01, %105, !dbg !174
  call void @fMulHandler(double 5.000000e-01, double %105, double %106, i64 0, i64 94552618451440, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @1, i32 0, i32 0), i64 94552618451952, i32 207, i32 23), !dbg !175
  %107 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !175
  %108 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %107, i32 0, i32 0, !dbg !176
  store double %106, double* %108, align 8, !dbg !177
  %109 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !178
  %110 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %109, i32 0, i32 0, !dbg !179
  %111 = load double, double* %110, align 8, !dbg !179
  %112 = call double @fabs(double %111) #1, !dbg !180
  %113 = fmul double 0x3CC0000000000000, %112, !dbg !181
  call void @fMulHandler(double 0x3CC0000000000000, double %112, double %113, i64 0, i64 94552618456128, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @1, i32 0, i32 0), i64 94552618456608, i32 208, i32 41), !dbg !182
  %114 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !182
  %115 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %114, i32 0, i32 1, !dbg !183
  store double %113, double* %115, align 8, !dbg !184
  store i32 0, i32* %3, align 4, !dbg !185
  br label %172, !dbg !185

; <label>:116:                                    ; preds = %94
  %117 = load double, double* %4, align 8, !dbg !186
  %118 = fmul double %117, 0x10000000000000, !dbg !188
  call void @fMulHandler(double %117, double 0x10000000000000, double %118, i64 94552618460312, i64 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @1, i32 0, i32 0), i64 94552618460720, i32 211, i32 12), !dbg !189
  %119 = fcmp olt double %118, 2.000000e+00, !dbg !189
  %120 = call i1 @fCmpInstHandler(double %118, double 2.000000e+00, i1 %119, i32 4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @1, i32 0, i32 0), i64 94552618461168, i32 211, i32 25), !dbg !190
  br i1 %120, label %121, label %159, !dbg !190

; <label>:121:                                    ; preds = %116
  call void @llvm.dbg.declare(metadata double* %13, metadata !191, metadata !60), !dbg !193
  %122 = load double, double* %4, align 8, !dbg !194
  %123 = load double, double* %4, align 8, !dbg !195
  %124 = fmul double %122, %123, !dbg !196
  call void @fMulHandler(double %122, double %123, double %124, i64 94552618463400, i64 94552618463752, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @1, i32 0, i32 0), i64 94552618464160, i32 212, i32 28), !dbg !197
  %125 = fdiv double 1.000000e+00, %124, !dbg !197
  call void @fDivHandler(double 1.000000e+00, double %124, double %125, i64 0, i64 94552618464160, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @1, i32 0, i32 0), i64 94552618464608, i32 212, i32 25), !dbg !193
  store double %125, double* %13, align 8, !dbg !193
  call void @llvm.dbg.declare(metadata double* %14, metadata !198, metadata !60), !dbg !199
  store double 0x3FD5555555555555, double* %14, align 8, !dbg !199
  call void @llvm.dbg.declare(metadata double* %15, metadata !200, metadata !60), !dbg !201
  store double 2.000000e-01, double* %15, align 8, !dbg !201
  call void @llvm.dbg.declare(metadata double* %16, metadata !202, metadata !60), !dbg !203
  store double 0x3FC2492492492492, double* %16, align 8, !dbg !203
  call void @llvm.dbg.declare(metadata double* %17, metadata !204, metadata !60), !dbg !205
  store double 0x3FBC71C71C71C71C, double* %17, align 8, !dbg !205
  call void @llvm.dbg.declare(metadata double* %18, metadata !206, metadata !60), !dbg !207
  store double 0x3FB745D1745D1746, double* %18, align 8, !dbg !207
  call void @llvm.dbg.declare(metadata double* %19, metadata !208, metadata !60), !dbg !209
  store double 0x3FB3B13B13B13B14, double* %19, align 8, !dbg !209
  call void @llvm.dbg.declare(metadata double* %20, metadata !210, metadata !60), !dbg !211
  store double 0x3FB1111111111111, double* %20, align 8, !dbg !211
  %126 = load double, double* %4, align 8, !dbg !212
  %127 = fdiv double 1.000000e+00, %126, !dbg !213
  call void @fDivHandler(double 1.000000e+00, double %126, double %127, i64 0, i64 94552618486184, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @1, i32 0, i32 0), i64 94552618486592, i32 220, i32 23), !dbg !214
  %128 = load double, double* %13, align 8, !dbg !214
  %129 = load double, double* %13, align 8, !dbg !215
  %130 = load double, double* %13, align 8, !dbg !216
  %131 = load double, double* %13, align 8, !dbg !217
  %132 = load double, double* %13, align 8, !dbg !218
  %133 = load double, double* %13, align 8, !dbg !219
  %134 = load double, double* %13, align 8, !dbg !220
  %135 = fmul double %134, 0x3FB1111111111111, !dbg !221
  call void @fMulHandler(double %134, double 0x3FB1111111111111, double %135, i64 94552618489256, i64 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @1, i32 0, i32 0), i64 94552618491728, i32 220, i32 85), !dbg !222
  %136 = fadd double 0x3FB3B13B13B13B14, %135, !dbg !222
  call void @fAddHandler(double 0x3FB3B13B13B13B14, double %135, double %136, i64 0, i64 94552618491728, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @1, i32 0, i32 0), i64 94552618492144, i32 220, i32 82), !dbg !223
  %137 = fmul double %133, %136, !dbg !223
  call void @fMulHandler(double %133, double %136, double %137, i64 94552618488872, i64 94552618492144, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @1, i32 0, i32 0), i64 94552618492560, i32 220, i32 77), !dbg !224
  %138 = fadd double 0x3FB745D1745D1746, %137, !dbg !224
  call void @fAddHandler(double 0x3FB745D1745D1746, double %137, double %138, i64 0, i64 94552618492560, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @1, i32 0, i32 0), i64 94552618492976, i32 220, i32 74), !dbg !225
  %139 = fmul double %132, %138, !dbg !225
  call void @fMulHandler(double %132, double %138, double %139, i64 94552618488488, i64 94552618492976, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @1, i32 0, i32 0), i64 94552618493392, i32 220, i32 69), !dbg !226
  %140 = fadd double 0x3FBC71C71C71C71C, %139, !dbg !226
  call void @fAddHandler(double 0x3FBC71C71C71C71C, double %139, double %140, i64 0, i64 94552618493392, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @1, i32 0, i32 0), i64 94552618493808, i32 220, i32 66), !dbg !227
  %141 = fmul double %131, %140, !dbg !227
  call void @fMulHandler(double %131, double %140, double %141, i64 94552618488104, i64 94552618493808, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @1, i32 0, i32 0), i64 94552618494224, i32 220, i32 61), !dbg !228
  %142 = fadd double 0x3FC2492492492492, %141, !dbg !228
  call void @fAddHandler(double 0x3FC2492492492492, double %141, double %142, i64 0, i64 94552618494224, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @1, i32 0, i32 0), i64 94552618494640, i32 220, i32 58), !dbg !229
  %143 = fmul double %130, %142, !dbg !229
  call void @fMulHandler(double %130, double %142, double %143, i64 94552618487720, i64 94552618494640, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @1, i32 0, i32 0), i64 94552618495056, i32 220, i32 53), !dbg !230
  %144 = fadd double 2.000000e-01, %143, !dbg !230
  call void @fAddHandler(double 2.000000e-01, double %143, double %144, i64 0, i64 94552618495056, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @1, i32 0, i32 0), i64 94552618495504, i32 220, i32 50), !dbg !231
  %145 = fmul double %129, %144, !dbg !231
  call void @fMulHandler(double %129, double %144, double %145, i64 94552618487336, i64 94552618495504, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @1, i32 0, i32 0), i64 94552618495888, i32 220, i32 45), !dbg !232
  %146 = fadd double 0x3FD5555555555555, %145, !dbg !232
  call void @fAddHandler(double 0x3FD5555555555555, double %145, double %146, i64 0, i64 94552618495888, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @1, i32 0, i32 0), i64 94552618496304, i32 220, i32 42), !dbg !233
  %147 = fmul double %128, %146, !dbg !233
  call void @fMulHandler(double %128, double %146, double %147, i64 94552618486952, i64 94552618496304, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @1, i32 0, i32 0), i64 94552618496720, i32 220, i32 37), !dbg !234
  %148 = fadd double 1.000000e+00, %147, !dbg !234
  call void @fAddHandler(double 1.000000e+00, double %147, double %148, i64 0, i64 94552618496720, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @1, i32 0, i32 0), i64 94552618497168, i32 220, i32 34), !dbg !235
  %149 = fmul double %127, %148, !dbg !235
  call void @fMulHandler(double %127, double %148, double %149, i64 94552618486592, i64 94552618497168, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @1, i32 0, i32 0), i64 94552618497552, i32 220, i32 27), !dbg !236
  %150 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !236
  %151 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %150, i32 0, i32 0, !dbg !237
  store double %149, double* %151, align 8, !dbg !238
  %152 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !239
  %153 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %152, i32 0, i32 0, !dbg !240
  %154 = load double, double* %153, align 8, !dbg !240
  %155 = call double @fabs(double %154) #1, !dbg !241
  %156 = fmul double 0x3CC0000000000000, %155, !dbg !242
  call void @fMulHandler(double 0x3CC0000000000000, double %155, double %156, i64 0, i64 94552618501760, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @1, i32 0, i32 0), i64 94552618502240, i32 221, i32 41), !dbg !243
  %157 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !243
  %158 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %157, i32 0, i32 1, !dbg !244
  store double %156, double* %158, align 8, !dbg !245
  store i32 0, i32* %3, align 4, !dbg !246
  br label %172, !dbg !246

; <label>:159:                                    ; preds = %116
  br label %160, !dbg !247, !llvm.loop !249

; <label>:160:                                    ; preds = %159
  %161 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !250
  %162 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %161, i32 0, i32 0, !dbg !250
  store double 0.000000e+00, double* %162, align 8, !dbg !250
  %163 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !250
  %164 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %163, i32 0, i32 1, !dbg !250
  store double 0x10000000000000, double* %164, align 8, !dbg !250
  br label %165, !dbg !250, !llvm.loop !253

; <label>:165:                                    ; preds = %160
  call void @gsl_error(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 225, i32 15), !dbg !255
  store i32 15, i32* %3, align 4, !dbg !255
  br label %172, !dbg !255
                                                  ; No predecessors!
  br label %167, !dbg !258

; <label>:167:                                    ; preds = %166
  br label %168

; <label>:168:                                    ; preds = %167
  br label %169

; <label>:169:                                    ; preds = %168
  br label %170

; <label>:170:                                    ; preds = %169
  br label %171

; <label>:171:                                    ; preds = %170
  br label %172

; <label>:172:                                    ; preds = %171, %165, %121, %98, %76, %43, %36, %34
  %173 = load i32, i32* %3, align 4, !dbg !260
  ret i32 %173, !dbg !260
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @gsl_error(i8*, i8*, i32, i32) #2

; Function Attrs: nounwind readnone
declare double @fabs(double) #3

; Function Attrs: nounwind
declare double @log(double) #4

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_legendre_Q1_e(double, %struct.gsl_sf_result_struct*) #0 !dbg !261 {
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
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  %22 = alloca double, align 8
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !262, metadata !60), !dbg !263
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %5, metadata !264, metadata !60), !dbg !265
  %23 = load double, double* %4, align 8, !dbg !266
  %24 = fcmp ole double %23, -1.000000e+00, !dbg !268
  %25 = call i1 @fCmpInstHandler(double %23, double -1.000000e+00, i1 %24, i32 5, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @3, i32 0, i32 0), i64 94552618520928, i32 235, i32 8), !dbg !269
  br i1 %25, label %30, label %26, !dbg !269

; <label>:26:                                     ; preds = %2
  %27 = load double, double* %4, align 8, !dbg !270
  %28 = fcmp oeq double %27, 1.000000e+00, !dbg !272
  %29 = call i1 @fCmpInstHandler(double %27, double 1.000000e+00, i1 %28, i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @3, i32 0, i32 0), i64 94552618522288, i32 235, i32 21), !dbg !273
  br i1 %29, label %30, label %39, !dbg !273

; <label>:30:                                     ; preds = %26, %2
  br label %31, !dbg !274, !llvm.loop !276

; <label>:31:                                     ; preds = %30
  %32 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !277
  %33 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %32, i32 0, i32 0, !dbg !277
  store double 0x7FF8000000000000, double* %33, align 8, !dbg !277
  %34 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !277
  %35 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %34, i32 0, i32 1, !dbg !277
  store double 0x7FF8000000000000, double* %35, align 8, !dbg !277
  br label %36, !dbg !277, !llvm.loop !280

; <label>:36:                                     ; preds = %31
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 236, i32 1), !dbg !282
  store i32 1, i32* %3, align 4, !dbg !282
  br label %189, !dbg !282
                                                  ; No predecessors!
  br label %38, !dbg !285

; <label>:38:                                     ; preds = %37
  br label %189, !dbg !287

; <label>:39:                                     ; preds = %26
  %40 = load double, double* %4, align 8, !dbg !288
  %41 = load double, double* %4, align 8, !dbg !290
  %42 = fmul double %40, %41, !dbg !291
  call void @fMulHandler(double %40, double %41, double %42, i64 94552618530280, i64 94552618530600, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @3, i32 0, i32 0), i64 94552618531008, i32 238, i32 12), !dbg !292
  %43 = fcmp olt double %42, 0x3F6428A2F98D728D, !dbg !292
  %44 = call i1 @fCmpInstHandler(double %42, double 0x3F6428A2F98D728D, i1 %43, i32 4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @3, i32 0, i32 0), i64 94552618531424, i32 238, i32 15), !dbg !293
  br i1 %44, label %45, label %79, !dbg !293

; <label>:45:                                     ; preds = %39
  call void @llvm.dbg.declare(metadata double* %6, metadata !294, metadata !60), !dbg !296
  store double 0x3FD5555555555555, double* %6, align 8, !dbg !296
  call void @llvm.dbg.declare(metadata double* %7, metadata !297, metadata !60), !dbg !298
  store double 2.000000e-01, double* %7, align 8, !dbg !298
  call void @llvm.dbg.declare(metadata double* %8, metadata !299, metadata !60), !dbg !300
  store double 0x3FC2492492492492, double* %8, align 8, !dbg !300
  call void @llvm.dbg.declare(metadata double* %9, metadata !301, metadata !60), !dbg !302
  store double 0x3FBC71C71C71C71C, double* %9, align 8, !dbg !302
  call void @llvm.dbg.declare(metadata double* %10, metadata !303, metadata !60), !dbg !304
  store double 0x3FB745D1745D1746, double* %10, align 8, !dbg !304
  call void @llvm.dbg.declare(metadata double* %11, metadata !305, metadata !60), !dbg !306
  %46 = load double, double* %4, align 8, !dbg !307
  %47 = load double, double* %4, align 8, !dbg !308
  %48 = fmul double %46, %47, !dbg !309
  call void @fMulHandler(double %46, double %47, double %48, i64 94552618549496, i64 94552618549848, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @3, i32 0, i32 0), i64 94552618550256, i32 244, i32 24), !dbg !306
  store double %48, double* %11, align 8, !dbg !306
  call void @llvm.dbg.declare(metadata double* %12, metadata !310, metadata !60), !dbg !311
  %49 = load double, double* %11, align 8, !dbg !312
  %50 = load double, double* %11, align 8, !dbg !313
  %51 = load double, double* %11, align 8, !dbg !314
  %52 = load double, double* %11, align 8, !dbg !315
  %53 = load double, double* %11, align 8, !dbg !316
  %54 = fmul double %53, 0x3FB745D1745D1746, !dbg !317
  call void @fMulHandler(double %53, double 0x3FB745D1745D1746, double %54, i64 94552618554952, i64 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @3, i32 0, i32 0), i64 94552618555360, i32 245, i32 66), !dbg !318
  %55 = fadd double 0x3FBC71C71C71C71C, %54, !dbg !318
  call void @fAddHandler(double 0x3FBC71C71C71C71C, double %54, double %55, i64 0, i64 94552618555360, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @3, i32 0, i32 0), i64 94552618555776, i32 245, i32 63), !dbg !319
  %56 = fmul double %52, %55, !dbg !319
  call void @fMulHandler(double %52, double %55, double %56, i64 94552618554568, i64 94552618555776, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @3, i32 0, i32 0), i64 94552618556192, i32 245, i32 58), !dbg !320
  %57 = fadd double 0x3FC2492492492492, %56, !dbg !320
  call void @fAddHandler(double 0x3FC2492492492492, double %56, double %57, i64 0, i64 94552618556192, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @3, i32 0, i32 0), i64 94552618556608, i32 245, i32 55), !dbg !321
  %58 = fmul double %51, %57, !dbg !321
  call void @fMulHandler(double %51, double %57, double %58, i64 94552618554184, i64 94552618556608, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @3, i32 0, i32 0), i64 94552618557024, i32 245, i32 50), !dbg !322
  %59 = fadd double 2.000000e-01, %58, !dbg !322
  call void @fAddHandler(double 2.000000e-01, double %58, double %59, i64 0, i64 94552618557024, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @3, i32 0, i32 0), i64 94552618557472, i32 245, i32 47), !dbg !323
  %60 = fmul double %50, %59, !dbg !323
  call void @fMulHandler(double %50, double %59, double %60, i64 94552618553800, i64 94552618557472, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @3, i32 0, i32 0), i64 94552618557856, i32 245, i32 42), !dbg !324
  %61 = fadd double 0x3FD5555555555555, %60, !dbg !324
  call void @fAddHandler(double 0x3FD5555555555555, double %60, double %61, i64 0, i64 94552618557856, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @3, i32 0, i32 0), i64 94552618558272, i32 245, i32 39), !dbg !325
  %62 = fmul double %49, %61, !dbg !325
  call void @fMulHandler(double %49, double %61, double %62, i64 94552618553448, i64 94552618558272, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @3, i32 0, i32 0), i64 94552618558688, i32 245, i32 34), !dbg !326
  %63 = fadd double 1.000000e+00, %62, !dbg !326
  call void @fAddHandler(double 1.000000e+00, double %62, double %63, i64 0, i64 94552618558688, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @3, i32 0, i32 0), i64 94552618559136, i32 245, i32 31), !dbg !311
  store double %63, double* %12, align 8, !dbg !311
  %64 = load double, double* %4, align 8, !dbg !327
  %65 = load double, double* %4, align 8, !dbg !328
  %66 = fmul double %64, %65, !dbg !329
  call void @fMulHandler(double %64, double %65, double %66, i64 94552618561176, i64 94552618561560, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @3, i32 0, i32 0), i64 94552618561968, i32 246, i32 21), !dbg !330
  %67 = load double, double* %12, align 8, !dbg !330
  %68 = fmul double %66, %67, !dbg !331
  call void @fMulHandler(double %66, double %67, double %68, i64 94552618561968, i64 94552618562360, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @3, i32 0, i32 0), i64 94552618562768, i32 246, i32 25), !dbg !332
  %69 = fsub double %68, 1.000000e+00, !dbg !332
  call void @fSubHandler(double %68, double 1.000000e+00, double %69, i64 94552618562768, i64 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @3, i32 0, i32 0), i64 94552618563216, i32 246, i32 34), !dbg !333
  %70 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !333
  %71 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %70, i32 0, i32 0, !dbg !334
  store double %69, double* %71, align 8, !dbg !335
  %72 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !336
  %73 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %72, i32 0, i32 0, !dbg !337
  %74 = load double, double* %73, align 8, !dbg !337
  %75 = call double @fabs(double %74) #1, !dbg !338
  %76 = fmul double 0x3CC0000000000000, %75, !dbg !339
  call void @fMulHandler(double 0x3CC0000000000000, double %75, double %76, i64 0, i64 94552618567392, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @3, i32 0, i32 0), i64 94552618567872, i32 247, i32 41), !dbg !340
  %77 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !340
  %78 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %77, i32 0, i32 1, !dbg !341
  store double %76, double* %78, align 8, !dbg !342
  store i32 0, i32* %3, align 4, !dbg !343
  br label %189, !dbg !343

; <label>:79:                                     ; preds = %39
  %80 = load double, double* %4, align 8, !dbg !344
  %81 = fcmp olt double %80, 1.000000e+00, !dbg !346
  %82 = call i1 @fCmpInstHandler(double %80, double 1.000000e+00, i1 %81, i32 4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @3, i32 0, i32 0), i64 94552618571952, i32 250, i32 13), !dbg !347
  br i1 %82, label %83, label %103, !dbg !347

; <label>:83:                                     ; preds = %79
  %84 = load double, double* %4, align 8, !dbg !348
  %85 = fmul double 5.000000e-01, %84, !dbg !350
  call void @fMulHandler(double 5.000000e-01, double %84, double %85, i64 0, i64 94552618573032, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @3, i32 0, i32 0), i64 94552618573408, i32 251, i32 23), !dbg !351
  %86 = load double, double* %4, align 8, !dbg !351
  %87 = fadd double 1.000000e+00, %86, !dbg !352
  call void @fAddHandler(double 1.000000e+00, double %86, double %87, i64 0, i64 94552618573768, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @3, i32 0, i32 0), i64 94552618574208, i32 251, i32 38), !dbg !353
  %88 = load double, double* %4, align 8, !dbg !353
  %89 = fsub double 1.000000e+00, %88, !dbg !354
  call void @fSubHandler(double 1.000000e+00, double %88, double %89, i64 0, i64 94552618574568, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @3, i32 0, i32 0), i64 94552618575008, i32 251, i32 46), !dbg !355
  %90 = fdiv double %87, %89, !dbg !355
  call void @fDivHandler(double %87, double %89, double %90, i64 94552618574208, i64 94552618575008, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @3, i32 0, i32 0), i64 94552618575392, i32 251, i32 41), !dbg !356
  %91 = call double @log(double %90) #5, !dbg !356
  call void @callOneArgHandler(i32 12, double %90, double %91, i64 94552618575392, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @3, i32 0, i32 0), i64 94552618575872, i32 251, i32 30), !dbg !357
  %92 = fmul double %85, %91, !dbg !357
  call void @fMulHandler(double %85, double %91, double %92, i64 94552618573408, i64 94552618575872, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @3, i32 0, i32 0), i64 94552618576352, i32 251, i32 27), !dbg !358
  %93 = fsub double %92, 1.000000e+00, !dbg !358
  call void @fSubHandler(double %92, double 1.000000e+00, double %93, i64 94552618576352, i64 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @3, i32 0, i32 0), i64 94552618576800, i32 251, i32 52), !dbg !359
  %94 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !359
  %95 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %94, i32 0, i32 0, !dbg !360
  store double %93, double* %95, align 8, !dbg !361
  %96 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !362
  %97 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %96, i32 0, i32 0, !dbg !363
  %98 = load double, double* %97, align 8, !dbg !363
  %99 = call double @fabs(double %98) #1, !dbg !364
  %100 = fmul double 0x3CC0000000000000, %99, !dbg !365
  call void @fMulHandler(double 0x3CC0000000000000, double %99, double %100, i64 0, i64 94552618580976, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @3, i32 0, i32 0), i64 94552618581456, i32 252, i32 42), !dbg !366
  %101 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !366
  %102 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %101, i32 0, i32 1, !dbg !367
  store double %100, double* %102, align 8, !dbg !368
  store i32 0, i32* %3, align 4, !dbg !369
  br label %189, !dbg !369

; <label>:103:                                    ; preds = %79
  %104 = load double, double* %4, align 8, !dbg !370
  %105 = fcmp olt double %104, 6.000000e+00, !dbg !372
  %106 = call i1 @fCmpInstHandler(double %104, double 6.000000e+00, i1 %105, i32 4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @3, i32 0, i32 0), i64 94552618585600, i32 255, i32 13), !dbg !373
  br i1 %106, label %107, label %127, !dbg !373

; <label>:107:                                    ; preds = %103
  %108 = load double, double* %4, align 8, !dbg !374
  %109 = fmul double 5.000000e-01, %108, !dbg !376
  call void @fMulHandler(double 5.000000e-01, double %108, double %109, i64 0, i64 94552618586680, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @3, i32 0, i32 0), i64 94552618587056, i32 256, i32 23), !dbg !377
  %110 = load double, double* %4, align 8, !dbg !377
  %111 = fadd double %110, 1.000000e+00, !dbg !378
  call void @fAddHandler(double %110, double 1.000000e+00, double %111, i64 94552618587416, i64 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @3, i32 0, i32 0), i64 94552618587856, i32 256, i32 35), !dbg !379
  %112 = load double, double* %4, align 8, !dbg !379
  %113 = fsub double %112, 1.000000e+00, !dbg !380
  call void @fSubHandler(double %112, double 1.000000e+00, double %113, i64 94552618588216, i64 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @3, i32 0, i32 0), i64 94552618588656, i32 256, i32 43), !dbg !381
  %114 = fdiv double %111, %113, !dbg !381
  call void @fDivHandler(double %111, double %113, double %114, i64 94552618587856, i64 94552618588656, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @3, i32 0, i32 0), i64 94552618589040, i32 256, i32 40), !dbg !382
  %115 = call double @log(double %114) #5, !dbg !382
  call void @callOneArgHandler(i32 12, double %114, double %115, i64 94552618589040, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @3, i32 0, i32 0), i64 94552618589520, i32 256, i32 29), !dbg !383
  %116 = fmul double %109, %115, !dbg !383
  call void @fMulHandler(double %109, double %115, double %116, i64 94552618587056, i64 94552618589520, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @3, i32 0, i32 0), i64 94552618590000, i32 256, i32 27), !dbg !384
  %117 = fsub double %116, 1.000000e+00, !dbg !384
  call void @fSubHandler(double %116, double 1.000000e+00, double %117, i64 94552618590000, i64 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @3, i32 0, i32 0), i64 94552618590448, i32 256, i32 50), !dbg !385
  %118 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !385
  %119 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %118, i32 0, i32 0, !dbg !386
  store double %117, double* %119, align 8, !dbg !387
  %120 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !388
  %121 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %120, i32 0, i32 0, !dbg !389
  %122 = load double, double* %121, align 8, !dbg !389
  %123 = call double @fabs(double %122) #1, !dbg !390
  %124 = fmul double 0x3CC0000000000000, %123, !dbg !391
  call void @fMulHandler(double 0x3CC0000000000000, double %123, double %124, i64 0, i64 94552618594624, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @3, i32 0, i32 0), i64 94552618595104, i32 257, i32 41), !dbg !392
  %125 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !392
  %126 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %125, i32 0, i32 1, !dbg !393
  store double %124, double* %126, align 8, !dbg !394
  store i32 0, i32* %3, align 4, !dbg !395
  br label %189, !dbg !395

; <label>:127:                                    ; preds = %103
  %128 = load double, double* %4, align 8, !dbg !396
  %129 = fmul double %128, 0x2000000000000000, !dbg !398
  call void @fMulHandler(double %128, double 0x2000000000000000, double %129, i64 94552618598808, i64 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @3, i32 0, i32 0), i64 94552618599216, i32 260, i32 12), !dbg !399
  %130 = fcmp olt double %129, 0x3FE24A5B5BE85B8F, !dbg !399
  %131 = call i1 @fCmpInstHandler(double %129, double 0x3FE24A5B5BE85B8F, i1 %130, i32 4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @3, i32 0, i32 0), i64 94552618599696, i32 260, i32 30), !dbg !400
  br i1 %131, label %132, label %176, !dbg !400

; <label>:132:                                    ; preds = %127
  call void @llvm.dbg.declare(metadata double* %13, metadata !401, metadata !60), !dbg !403
  %133 = load double, double* %4, align 8, !dbg !404
  %134 = load double, double* %4, align 8, !dbg !405
  %135 = fmul double %133, %134, !dbg !406
  call void @fMulHandler(double %133, double %134, double %135, i64 94552618601864, i64 94552618602216, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @3, i32 0, i32 0), i64 94552618604688, i32 261, i32 26), !dbg !407
  %136 = fdiv double 1.000000e+00, %135, !dbg !407
  call void @fDivHandler(double 1.000000e+00, double %135, double %136, i64 0, i64 94552618604688, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @3, i32 0, i32 0), i64 94552618605136, i32 261, i32 23), !dbg !403
  store double %136, double* %13, align 8, !dbg !403
  call void @llvm.dbg.declare(metadata double* %14, metadata !408, metadata !60), !dbg !409
  store double 6.000000e-01, double* %14, align 8, !dbg !409
  call void @llvm.dbg.declare(metadata double* %15, metadata !410, metadata !60), !dbg !411
  store double 0x3FDB6DB6DB6DB6DB, double* %15, align 8, !dbg !411
  call void @llvm.dbg.declare(metadata double* %16, metadata !412, metadata !60), !dbg !413
  store double 0x3FD5555555555555, double* %16, align 8, !dbg !413
  call void @llvm.dbg.declare(metadata double* %17, metadata !414, metadata !60), !dbg !415
  store double 0x3FD1745D1745D174, double* %17, align 8, !dbg !415
  call void @llvm.dbg.declare(metadata double* %18, metadata !416, metadata !60), !dbg !417
  store double 0x3FCD89D89D89D89E, double* %18, align 8, !dbg !417
  call void @llvm.dbg.declare(metadata double* %19, metadata !418, metadata !60), !dbg !419
  store double 2.000000e-01, double* %19, align 8, !dbg !419
  call void @llvm.dbg.declare(metadata double* %20, metadata !420, metadata !60), !dbg !421
  store double 0x3FC6969696969697, double* %20, align 8, !dbg !421
  call void @llvm.dbg.declare(metadata double* %21, metadata !422, metadata !60), !dbg !423
  store double 0x3FC435E50D79435E, double* %21, align 8, !dbg !423
  call void @llvm.dbg.declare(metadata double* %22, metadata !424, metadata !60), !dbg !425
  %137 = load double, double* %13, align 8, !dbg !426
  %138 = load double, double* %13, align 8, !dbg !427
  %139 = load double, double* %13, align 8, !dbg !428
  %140 = load double, double* %13, align 8, !dbg !429
  %141 = load double, double* %13, align 8, !dbg !430
  %142 = load double, double* %13, align 8, !dbg !431
  %143 = load double, double* %13, align 8, !dbg !432
  %144 = load double, double* %13, align 8, !dbg !433
  %145 = fmul double %144, 0x3FC435E50D79435E, !dbg !434
  call void @fMulHandler(double %144, double 0x3FC435E50D79435E, double %145, i64 94552618633480, i64 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @3, i32 0, i32 0), i64 94552618633888, i32 270, i32 87), !dbg !435
  %146 = fadd double 0x3FC6969696969697, %145, !dbg !435
  call void @fAddHandler(double 0x3FC6969696969697, double %145, double %146, i64 0, i64 94552618633888, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @3, i32 0, i32 0), i64 94552618634304, i32 270, i32 84), !dbg !436
  %147 = fmul double %143, %146, !dbg !436
  call void @fMulHandler(double %143, double %146, double %147, i64 94552618633096, i64 94552618634304, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @3, i32 0, i32 0), i64 94552618634720, i32 270, i32 79), !dbg !437
  %148 = fadd double 2.000000e-01, %147, !dbg !437
  call void @fAddHandler(double 2.000000e-01, double %147, double %148, i64 0, i64 94552618634720, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @3, i32 0, i32 0), i64 94552618635168, i32 270, i32 76), !dbg !438
  %149 = fmul double %142, %148, !dbg !438
  call void @fMulHandler(double %142, double %148, double %149, i64 94552618632712, i64 94552618635168, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @3, i32 0, i32 0), i64 94552618635552, i32 270, i32 71), !dbg !439
  %150 = fadd double 0x3FCD89D89D89D89E, %149, !dbg !439
  call void @fAddHandler(double 0x3FCD89D89D89D89E, double %149, double %150, i64 0, i64 94552618635552, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @3, i32 0, i32 0), i64 94552618635968, i32 270, i32 68), !dbg !440
  %151 = fmul double %141, %150, !dbg !440
  call void @fMulHandler(double %141, double %150, double %151, i64 94552618632328, i64 94552618635968, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @3, i32 0, i32 0), i64 94552618636384, i32 270, i32 63), !dbg !441
  %152 = fadd double 0x3FD1745D1745D174, %151, !dbg !441
  call void @fAddHandler(double 0x3FD1745D1745D174, double %151, double %152, i64 0, i64 94552618636384, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @3, i32 0, i32 0), i64 94552618636800, i32 270, i32 60), !dbg !442
  %153 = fmul double %140, %152, !dbg !442
  call void @fMulHandler(double %140, double %152, double %153, i64 94552618631944, i64 94552618636800, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @3, i32 0, i32 0), i64 94552618637216, i32 270, i32 55), !dbg !443
  %154 = fadd double 0x3FD5555555555555, %153, !dbg !443
  call void @fAddHandler(double 0x3FD5555555555555, double %153, double %154, i64 0, i64 94552618637216, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @3, i32 0, i32 0), i64 94552618637632, i32 270, i32 52), !dbg !444
  %155 = fmul double %139, %154, !dbg !444
  call void @fMulHandler(double %139, double %154, double %155, i64 94552618631560, i64 94552618637632, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @3, i32 0, i32 0), i64 94552618638048, i32 270, i32 47), !dbg !445
  %156 = fadd double 0x3FDB6DB6DB6DB6DB, %155, !dbg !445
  call void @fAddHandler(double 0x3FDB6DB6DB6DB6DB, double %155, double %156, i64 0, i64 94552618638048, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @3, i32 0, i32 0), i64 94552618638464, i32 270, i32 44), !dbg !446
  %157 = fmul double %138, %156, !dbg !446
  call void @fMulHandler(double %138, double %156, double %157, i64 94552618631176, i64 94552618638464, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @3, i32 0, i32 0), i64 94552618638880, i32 270, i32 39), !dbg !447
  %158 = fadd double 6.000000e-01, %157, !dbg !447
  call void @fAddHandler(double 6.000000e-01, double %157, double %158, i64 0, i64 94552618638880, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @3, i32 0, i32 0), i64 94552618639328, i32 270, i32 36), !dbg !448
  %159 = fmul double %137, %158, !dbg !448
  call void @fMulHandler(double %137, double %158, double %159, i64 94552618630824, i64 94552618639328, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @3, i32 0, i32 0), i64 94552618639712, i32 270, i32 31), !dbg !449
  %160 = fadd double 1.000000e+00, %159, !dbg !449
  call void @fAddHandler(double 1.000000e+00, double %159, double %160, i64 0, i64 94552618639712, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @3, i32 0, i32 0), i64 94552618640160, i32 270, i32 28), !dbg !425
  store double %160, double* %22, align 8, !dbg !425
  %161 = load double, double* %22, align 8, !dbg !450
  %162 = load double, double* %4, align 8, !dbg !451
  %163 = fmul double 3.000000e+00, %162, !dbg !452
  call void @fMulHandler(double 3.000000e+00, double %162, double %163, i64 0, i64 94552618642584, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @3, i32 0, i32 0), i64 94552618643088, i32 271, i32 29), !dbg !453
  %164 = load double, double* %4, align 8, !dbg !453
  %165 = fmul double %163, %164, !dbg !454
  call void @fMulHandler(double %163, double %164, double %165, i64 94552618643088, i64 94552618643448, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @3, i32 0, i32 0), i64 94552618643856, i32 271, i32 31), !dbg !455
  %166 = fdiv double %161, %165, !dbg !455
  call void @fDivHandler(double %161, double %165, double %166, i64 94552618642200, i64 94552618643856, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @3, i32 0, i32 0), i64 94552618644272, i32 271, i32 23), !dbg !456
  %167 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !456
  %168 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %167, i32 0, i32 0, !dbg !457
  store double %166, double* %168, align 8, !dbg !458
  %169 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !459
  %170 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %169, i32 0, i32 0, !dbg !460
  %171 = load double, double* %170, align 8, !dbg !460
  %172 = call double @fabs(double %171) #1, !dbg !461
  %173 = fmul double 0x3CC0000000000000, %172, !dbg !462
  call void @fMulHandler(double 0x3CC0000000000000, double %172, double %173, i64 0, i64 94552618648480, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @3, i32 0, i32 0), i64 94552618648960, i32 272, i32 41), !dbg !463
  %174 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !463
  %175 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %174, i32 0, i32 1, !dbg !464
  store double %173, double* %175, align 8, !dbg !465
  store i32 0, i32* %3, align 4, !dbg !466
  br label %189, !dbg !466

; <label>:176:                                    ; preds = %127
  br label %177, !dbg !467, !llvm.loop !469

; <label>:177:                                    ; preds = %176
  %178 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !470
  %179 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %178, i32 0, i32 0, !dbg !470
  store double 0.000000e+00, double* %179, align 8, !dbg !470
  %180 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !470
  %181 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %180, i32 0, i32 1, !dbg !470
  store double 0x10000000000000, double* %181, align 8, !dbg !470
  br label %182, !dbg !470, !llvm.loop !473

; <label>:182:                                    ; preds = %177
  call void @gsl_error(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 276, i32 15), !dbg !475
  store i32 15, i32* %3, align 4, !dbg !475
  br label %189, !dbg !475
                                                  ; No predecessors!
  br label %184, !dbg !478

; <label>:184:                                    ; preds = %183
  br label %185

; <label>:185:                                    ; preds = %184
  br label %186

; <label>:186:                                    ; preds = %185
  br label %187

; <label>:187:                                    ; preds = %186
  br label %188

; <label>:188:                                    ; preds = %187
  br label %189

; <label>:189:                                    ; preds = %188, %182, %132, %107, %83, %45, %38, %36
  %190 = load i32, i32* %3, align 4, !dbg !480
  ret i32 %190, !dbg !480
}

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_legendre_Ql_e(i32, double, %struct.gsl_sf_result_struct*) #0 !dbg !481 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca %struct.gsl_sf_result_struct*, align 8
  %8 = alloca %struct.gsl_sf_result_struct, align 8
  %9 = alloca %struct.gsl_sf_result_struct, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca i32, align 4
  %16 = alloca double, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.gsl_sf_result_struct, align 8
  %24 = alloca %struct.gsl_sf_result_struct, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !485, metadata !60), !dbg !486
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !487, metadata !60), !dbg !488
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %7, metadata !489, metadata !60), !dbg !490
  %25 = load double, double* %6, align 8, !dbg !491
  %26 = fcmp ole double %25, -1.000000e+00, !dbg !493
  %27 = call i1 @fCmpInstHandler(double %25, double -1.000000e+00, i1 %26, i32 5, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @5, i32 0, i32 0), i64 94552618667472, i32 286, i32 8), !dbg !494
  br i1 %27, label %37, label %28, !dbg !494

; <label>:28:                                     ; preds = %3
  %29 = load double, double* %6, align 8, !dbg !495
  %30 = fcmp oeq double %29, 1.000000e+00, !dbg !497
  %31 = call i1 @fCmpInstHandler(double %29, double 1.000000e+00, i1 %30, i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @5, i32 0, i32 0), i64 94552618668928, i32 286, i32 21), !dbg !498
  br i1 %31, label %37, label %32, !dbg !498

; <label>:32:                                     ; preds = %28
  %33 = load i32, i32* %5, align 4, !dbg !499
  %34 = icmp slt i32 %33, 0, !dbg !501
  %35 = sext i32 %33 to i64, !dbg !502
  %36 = call i1 @iCmpInstHandler(i64 %35, i64 0, i1 %34, i32 40, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @5, i32 0, i32 0), i64 94552618670208, i32 286, i32 33), !dbg !502
  br i1 %36, label %37, label %46, !dbg !502

; <label>:37:                                     ; preds = %32, %28, %3
  br label %38, !dbg !503, !llvm.loop !505

; <label>:38:                                     ; preds = %37
  %39 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !506
  %40 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %39, i32 0, i32 0, !dbg !506
  store double 0x7FF8000000000000, double* %40, align 8, !dbg !506
  %41 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !506
  %42 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %41, i32 0, i32 1, !dbg !506
  store double 0x7FF8000000000000, double* %42, align 8, !dbg !506
  br label %43, !dbg !506, !llvm.loop !509

; <label>:43:                                     ; preds = %38
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 287, i32 1), !dbg !511
  store i32 1, i32* %4, align 4, !dbg !511
  br label %251, !dbg !511
                                                  ; No predecessors!
  br label %45, !dbg !514

; <label>:45:                                     ; preds = %44
  br label %251, !dbg !516

; <label>:46:                                     ; preds = %32
  %47 = load i32, i32* %5, align 4, !dbg !517
  %48 = icmp eq i32 %47, 0, !dbg !519
  %49 = sext i32 %47 to i64, !dbg !520
  %50 = call i1 @iCmpInstHandler(i64 %49, i64 0, i1 %48, i32 32, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @5, i32 0, i32 0), i64 94552618678768, i32 289, i32 13), !dbg !520
  br i1 %50, label %51, label %55, !dbg !520

; <label>:51:                                     ; preds = %46
  %52 = load double, double* %6, align 8, !dbg !521
  %53 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !523
  %54 = call i32 @gsl_sf_legendre_Q0_e(double %52, %struct.gsl_sf_result_struct* %53), !dbg !524
  store i32 %54, i32* %4, align 4, !dbg !525
  br label %251, !dbg !525

; <label>:55:                                     ; preds = %46
  %56 = load i32, i32* %5, align 4, !dbg !526
  %57 = icmp eq i32 %56, 1, !dbg !528
  %58 = sext i32 %56 to i64, !dbg !529
  %59 = call i1 @iCmpInstHandler(i64 %58, i64 1, i1 %57, i32 32, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @5, i32 0, i32 0), i64 94552618683520, i32 292, i32 13), !dbg !529
  br i1 %59, label %60, label %64, !dbg !529

; <label>:60:                                     ; preds = %55
  %61 = load double, double* %6, align 8, !dbg !530
  %62 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !532
  %63 = call i32 @gsl_sf_legendre_Q1_e(double %61, %struct.gsl_sf_result_struct* %62), !dbg !533
  store i32 %63, i32* %4, align 4, !dbg !534
  br label %251, !dbg !534

; <label>:64:                                     ; preds = %55
  %65 = load i32, i32* %5, align 4, !dbg !535
  %66 = icmp sgt i32 %65, 100000, !dbg !537
  %67 = sext i32 %65 to i64, !dbg !538
  %68 = call i1 @iCmpInstHandler(i64 %67, i64 100000, i1 %66, i32 38, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @5, i32 0, i32 0), i64 94552618688336, i32 295, i32 13), !dbg !538
  br i1 %68, label %69, label %75, !dbg !538

; <label>:69:                                     ; preds = %64
  %70 = load i32, i32* %5, align 4, !dbg !539
  %71 = sitofp i32 %70 to double, !dbg !539
  %72 = load double, double* %6, align 8, !dbg !541
  %73 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !542
  %74 = call i32 @legendre_Ql_asymp_unif(double %71, double %72, %struct.gsl_sf_result_struct* %73), !dbg !543
  store i32 %74, i32* %4, align 4, !dbg !544
  br label %251, !dbg !544

; <label>:75:                                     ; preds = %64
  %76 = load double, double* %6, align 8, !dbg !545
  %77 = fcmp olt double %76, 1.000000e+00, !dbg !547
  %78 = call i1 @fCmpInstHandler(double %76, double 1.000000e+00, i1 %77, i32 4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @5, i32 0, i32 0), i64 94552618695536, i32 298, i32 13), !dbg !548
  br i1 %78, label %79, label %150, !dbg !548

; <label>:79:                                     ; preds = %75
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %8, metadata !549, metadata !60), !dbg !551
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %9, metadata !552, metadata !60), !dbg !553
  call void @llvm.dbg.declare(metadata i32* %10, metadata !554, metadata !60), !dbg !555
  %80 = load double, double* %6, align 8, !dbg !556
  %81 = call i32 @gsl_sf_legendre_Q0_e(double %80, %struct.gsl_sf_result_struct* %8), !dbg !557
  store i32 %81, i32* %10, align 4, !dbg !555
  call void @llvm.dbg.declare(metadata i32* %11, metadata !558, metadata !60), !dbg !559
  %82 = load double, double* %6, align 8, !dbg !560
  %83 = call i32 @gsl_sf_legendre_Q1_e(double %82, %struct.gsl_sf_result_struct* %9), !dbg !561
  store i32 %83, i32* %11, align 4, !dbg !559
  call void @llvm.dbg.declare(metadata double* %12, metadata !562, metadata !60), !dbg !563
  %84 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 0, !dbg !564
  %85 = load double, double* %84, align 8, !dbg !564
  store double %85, double* %12, align 8, !dbg !563
  call void @llvm.dbg.declare(metadata double* %13, metadata !565, metadata !60), !dbg !566
  %86 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %9, i32 0, i32 0, !dbg !567
  %87 = load double, double* %86, align 8, !dbg !567
  store double %87, double* %13, align 8, !dbg !566
  call void @llvm.dbg.declare(metadata double* %14, metadata !568, metadata !60), !dbg !569
  call void @llvm.dbg.declare(metadata i32* %15, metadata !570, metadata !60), !dbg !571
  store i32 1, i32* %15, align 4, !dbg !572
  br label %88, !dbg !574

; <label>:88:                                     ; preds = %115, %79
  %89 = load i32, i32* %15, align 4, !dbg !575
  %90 = load i32, i32* %5, align 4, !dbg !578
  %91 = icmp slt i32 %89, %90, !dbg !579
  %92 = sext i32 %89 to i64, !dbg !580
  %93 = sext i32 %90 to i64, !dbg !580
  %94 = call i1 @iCmpInstHandler(i64 %92, i64 %93, i1 %91, i32 40, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @5, i32 0, i32 0), i64 94552618719712, i32 308, i32 19), !dbg !580
  br i1 %94, label %95, label %118, !dbg !580

; <label>:95:                                     ; preds = %88
  %96 = load double, double* %6, align 8, !dbg !581
  %97 = load i32, i32* %15, align 4, !dbg !583
  %98 = sitofp i32 %97 to double, !dbg !583
  %99 = fmul double 2.000000e+00, %98, !dbg !584
  call void @fMulHandler(double 2.000000e+00, double %98, double %99, i64 0, i64 94552618721528, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @5, i32 0, i32 0), i64 94552618723232, i32 309, i32 23), !dbg !585
  %100 = fadd double %99, 1.000000e+00, !dbg !585
  call void @fAddHandler(double %99, double 1.000000e+00, double %100, i64 94552618723232, i64 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @5, i32 0, i32 0), i64 94552618723648, i32 309, i32 28), !dbg !586
  %101 = fmul double %96, %100, !dbg !586
  call void @fMulHandler(double %96, double %100, double %101, i64 94552618720824, i64 94552618723648, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @5, i32 0, i32 0), i64 94552618724032, i32 309, i32 18), !dbg !587
  %102 = load double, double* %13, align 8, !dbg !587
  %103 = fmul double %101, %102, !dbg !588
  call void @fMulHandler(double %101, double %102, double %103, i64 94552618724032, i64 94552618724424, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @5, i32 0, i32 0), i64 94552618724832, i32 309, i32 35), !dbg !589
  %104 = load i32, i32* %15, align 4, !dbg !589
  %105 = sitofp i32 %104 to double, !dbg !589
  %106 = load double, double* %12, align 8, !dbg !590
  %107 = fmul double %105, %106, !dbg !591
  call void @fMulHandler(double %105, double %106, double %107, i64 94552618725608, i64 94552618727256, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @5, i32 0, i32 0), i64 94552618727664, i32 309, i32 48), !dbg !592
  %108 = fsub double %103, %107, !dbg !592
  call void @fSubHandler(double %103, double %107, double %108, i64 94552618724832, i64 94552618727664, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @5, i32 0, i32 0), i64 94552618728080, i32 309, i32 42), !dbg !593
  %109 = load i32, i32* %15, align 4, !dbg !593
  %110 = sitofp i32 %109 to double, !dbg !593
  %111 = fadd double %110, 1.000000e+00, !dbg !594
  call void @fAddHandler(double %110, double 1.000000e+00, double %111, i64 94552618728856, i64 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @5, i32 0, i32 0), i64 94552618730560, i32 309, i32 65), !dbg !595
  %112 = fdiv double %108, %111, !dbg !595
  call void @fDivHandler(double %108, double %111, double %112, i64 94552618728080, i64 94552618730560, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @5, i32 0, i32 0), i64 94552618730944, i32 309, i32 58), !dbg !596
  store double %112, double* %14, align 8, !dbg !596
  %113 = load double, double* %13, align 8, !dbg !597
  store double %113, double* %12, align 8, !dbg !598
  %114 = load double, double* %14, align 8, !dbg !599
  store double %114, double* %13, align 8, !dbg !600
  br label %115, !dbg !601

; <label>:115:                                    ; preds = %95
  %116 = load i32, i32* %15, align 4, !dbg !602
  %117 = add nsw i32 %116, 1, !dbg !602
  store i32 %117, i32* %15, align 4, !dbg !602
  br label %88, !dbg !604, !llvm.loop !605

; <label>:118:                                    ; preds = %88
  %119 = load double, double* %13, align 8, !dbg !607
  %120 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !608
  %121 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %120, i32 0, i32 0, !dbg !609
  store double %119, double* %121, align 8, !dbg !610
  %122 = load i32, i32* %5, align 4, !dbg !611
  %123 = sitofp i32 %122 to double, !dbg !611
  %124 = fmul double 0x3CB0000000000000, %123, !dbg !612
  call void @fMulHandler(double 0x3CB0000000000000, double %123, double %124, i64 0, i64 94552618738632, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @5, i32 0, i32 0), i64 94552618740368, i32 314, i32 35), !dbg !613
  %125 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !613
  %126 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %125, i32 0, i32 0, !dbg !614
  %127 = load double, double* %126, align 8, !dbg !614
  %128 = call double @fabs(double %127) #1, !dbg !615
  %129 = fmul double %124, %128, !dbg !616
  call void @fMulHandler(double %124, double %128, double %129, i64 94552618740368, i64 94552618743328, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @5, i32 0, i32 0), i64 94552618743808, i32 314, i32 39), !dbg !617
  %130 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !617
  %131 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %130, i32 0, i32 1, !dbg !618
  store double %129, double* %131, align 8, !dbg !619
  %132 = load i32, i32* %10, align 4, !dbg !620
  %133 = icmp ne i32 %132, 0, !dbg !620
  %134 = sext i32 %132 to i64, !dbg !620
  %135 = call i1 @iCmpInstHandler(i64 %134, i64 0, i1 %133, i32 33, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @5, i32 0, i32 0), i64 94552618745856, i32 315, i32 12), !dbg !620
  br i1 %135, label %136, label %138, !dbg !620

; <label>:136:                                    ; preds = %118
  %137 = load i32, i32* %10, align 4, !dbg !621
  br label %148, !dbg !621

; <label>:138:                                    ; preds = %118
  %139 = load i32, i32* %11, align 4, !dbg !623
  %140 = icmp ne i32 %139, 0, !dbg !623
  %141 = sext i32 %139 to i64, !dbg !623
  %142 = call i1 @iCmpInstHandler(i64 %141, i64 0, i1 %140, i32 33, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @5, i32 0, i32 0), i64 94552618750400, i32 315, i32 12), !dbg !623
  br i1 %142, label %143, label %145, !dbg !623

; <label>:143:                                    ; preds = %138
  %144 = load i32, i32* %11, align 4, !dbg !625
  br label %146, !dbg !625

; <label>:145:                                    ; preds = %138
  br label %146, !dbg !627

; <label>:146:                                    ; preds = %145, %143
  %147 = phi i32 [ %144, %143 ], [ 0, %145 ], !dbg !629
  br label %148, !dbg !629

; <label>:148:                                    ; preds = %146, %136
  %149 = phi i32 [ %137, %136 ], [ %147, %146 ], !dbg !631
  store i32 %149, i32* %4, align 4, !dbg !633
  br label %251, !dbg !633

; <label>:150:                                    ; preds = %75
  call void @llvm.dbg.declare(metadata double* %16, metadata !634, metadata !60), !dbg !636
  call void @llvm.dbg.declare(metadata i32* %17, metadata !637, metadata !60), !dbg !638
  %151 = load i32, i32* %5, align 4, !dbg !639
  %152 = load double, double* %6, align 8, !dbg !640
  %153 = call i32 @legendreQ_CF1_xgt1(i32 %151, double 0.000000e+00, double 0.000000e+00, double %152, double* %16), !dbg !641
  store i32 %153, i32* %17, align 4, !dbg !638
  call void @llvm.dbg.declare(metadata i32* %18, metadata !642, metadata !60), !dbg !643
  call void @llvm.dbg.declare(metadata double* %19, metadata !644, metadata !60), !dbg !645
  %154 = load double, double* %16, align 8, !dbg !646
  %155 = fmul double %154, 0x2000000000000000, !dbg !647
  call void @fMulHandler(double %154, double 0x2000000000000000, double %155, i64 94552618773384, i64 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @5, i32 0, i32 0), i64 94552618773760, i32 323, i32 25), !dbg !645
  store double %155, double* %19, align 8, !dbg !645
  call void @llvm.dbg.declare(metadata double* %20, metadata !648, metadata !60), !dbg !649
  store double 0x2000000000000000, double* %20, align 8, !dbg !649
  call void @llvm.dbg.declare(metadata double* %21, metadata !650, metadata !60), !dbg !651
  call void @llvm.dbg.declare(metadata i32* %22, metadata !652, metadata !60), !dbg !653
  %156 = load i32, i32* %5, align 4, !dbg !654
  store i32 %156, i32* %22, align 4, !dbg !656
  br label %157, !dbg !657

; <label>:157:                                    ; preds = %182, %150
  %158 = load i32, i32* %22, align 4, !dbg !658
  %159 = icmp sgt i32 %158, 0, !dbg !661
  %160 = sext i32 %158 to i64, !dbg !662
  %161 = call i1 @iCmpInstHandler(i64 %160, i64 0, i1 %159, i32 38, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @5, i32 0, i32 0), i64 94552618782448, i32 327, i32 19), !dbg !662
  br i1 %161, label %162, label %185, !dbg !662

; <label>:162:                                    ; preds = %157
  %163 = load double, double* %6, align 8, !dbg !663
  %164 = load i32, i32* %22, align 4, !dbg !665
  %165 = sitofp i32 %164 to double, !dbg !665
  %166 = fmul double 2.000000e+00, %165, !dbg !666
  call void @fMulHandler(double 2.000000e+00, double %165, double %166, i64 0, i64 94552618784264, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @5, i32 0, i32 0), i64 94552618785968, i32 328, i32 25), !dbg !667
  %167 = fadd double %166, 1.000000e+00, !dbg !667
  call void @fAddHandler(double %166, double 1.000000e+00, double %167, i64 94552618785968, i64 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @5, i32 0, i32 0), i64 94552618786384, i32 328, i32 30), !dbg !668
  %168 = fmul double %163, %167, !dbg !668
  call void @fMulHandler(double %163, double %167, double %168, i64 94552618783560, i64 94552618786384, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @5, i32 0, i32 0), i64 94552618786768, i32 328, i32 19), !dbg !669
  %169 = load double, double* %20, align 8, !dbg !669
  %170 = fmul double %168, %169, !dbg !670
  call void @fMulHandler(double %168, double %169, double %170, i64 94552618786768, i64 94552618787160, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @5, i32 0, i32 0), i64 94552618787568, i32 328, i32 37), !dbg !671
  %171 = load i32, i32* %22, align 4, !dbg !671
  %172 = sitofp i32 %171 to double, !dbg !671
  %173 = fadd double %172, 1.000000e+00, !dbg !672
  call void @fAddHandler(double %172, double 1.000000e+00, double %173, i64 94552618788344, i64 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @5, i32 0, i32 0), i64 94552618790048, i32 328, i32 50), !dbg !673
  %174 = load double, double* %19, align 8, !dbg !673
  %175 = fmul double %173, %174, !dbg !674
  call void @fMulHandler(double %173, double %174, double %175, i64 94552618790048, i64 94552618790408, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @5, i32 0, i32 0), i64 94552618790816, i32 328, i32 56), !dbg !675
  %176 = fsub double %170, %175, !dbg !675
  call void @fSubHandler(double %170, double %175, double %176, i64 94552618787568, i64 94552618790816, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @5, i32 0, i32 0), i64 94552618791232, i32 328, i32 44), !dbg !676
  %177 = load i32, i32* %22, align 4, !dbg !676
  %178 = sitofp i32 %177 to double, !dbg !676
  %179 = fdiv double %176, %178, !dbg !677
  call void @fDivHandler(double %176, double %178, double %179, i64 94552618791232, i64 94552618792008, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @5, i32 0, i32 0), i64 94552618793680, i32 328, i32 66), !dbg !678
  store double %179, double* %21, align 8, !dbg !678
  %180 = load double, double* %20, align 8, !dbg !679
  store double %180, double* %19, align 8, !dbg !680
  %181 = load double, double* %21, align 8, !dbg !681
  store double %181, double* %20, align 8, !dbg !682
  br label %182, !dbg !683

; <label>:182:                                    ; preds = %162
  %183 = load i32, i32* %22, align 4, !dbg !684
  %184 = add nsw i32 %183, -1, !dbg !684
  store i32 %184, i32* %22, align 4, !dbg !684
  br label %157, !dbg !686, !llvm.loop !687

; <label>:185:                                    ; preds = %157
  %186 = load double, double* %20, align 8, !dbg !689
  %187 = call double @fabs(double %186) #1, !dbg !691
  %188 = load double, double* %19, align 8, !dbg !692
  %189 = call double @fabs(double %188) #1, !dbg !693
  %190 = fcmp ogt double %187, %189, !dbg !695
  %191 = call i1 @fCmpInstHandler(double %187, double %189, i1 %190, i32 2, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @5, i32 0, i32 0), i64 94552618801296, i32 333, i32 19), !dbg !696
  br i1 %191, label %192, label %212, !dbg !696

; <label>:192:                                    ; preds = %185
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %23, metadata !697, metadata !60), !dbg !699
  %193 = load double, double* %6, align 8, !dbg !700
  %194 = call i32 @gsl_sf_legendre_Q0_e(double %193, %struct.gsl_sf_result_struct* %23), !dbg !701
  store i32 %194, i32* %18, align 4, !dbg !702
  %195 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %23, i32 0, i32 0, !dbg !703
  %196 = load double, double* %195, align 8, !dbg !703
  %197 = fmul double 0x2000000000000000, %196, !dbg !704
  call void @fMulHandler(double 0x2000000000000000, double %196, double %197, i64 0, i64 94552618805208, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @5, i32 0, i32 0), i64 94552618806880, i32 336, i32 38), !dbg !705
  %198 = load double, double* %20, align 8, !dbg !705
  %199 = fdiv double %197, %198, !dbg !706
  call void @fDivHandler(double %197, double %198, double %199, i64 94552618806880, i64 94552618807272, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @5, i32 0, i32 0), i64 94552618807680, i32 336, i32 47), !dbg !707
  %200 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !707
  %201 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %200, i32 0, i32 0, !dbg !708
  store double %199, double* %201, align 8, !dbg !709
  %202 = load i32, i32* %5, align 4, !dbg !710
  %203 = sitofp i32 %202 to double, !dbg !710
  %204 = fmul double %203, 0x3CB0000000000000, !dbg !711
  call void @fMulHandler(double %203, double 0x3CB0000000000000, double %204, i64 94552618809704, i64 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @5, i32 0, i32 0), i64 94552618811376, i32 337, i32 23), !dbg !712
  %205 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !712
  %206 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %205, i32 0, i32 0, !dbg !713
  %207 = load double, double* %206, align 8, !dbg !713
  %208 = call double @fabs(double %207) #1, !dbg !714
  %209 = fmul double %204, %208, !dbg !715
  call void @fMulHandler(double %204, double %208, double %209, i64 94552618811376, i64 94552618814336, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @5, i32 0, i32 0), i64 94552618814816, i32 337, i32 41), !dbg !716
  %210 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !716
  %211 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %210, i32 0, i32 1, !dbg !717
  store double %209, double* %211, align 8, !dbg !718
  br label %232, !dbg !719

; <label>:212:                                    ; preds = %185
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %24, metadata !720, metadata !60), !dbg !722
  %213 = load double, double* %6, align 8, !dbg !723
  %214 = call i32 @gsl_sf_legendre_Q1_e(double %213, %struct.gsl_sf_result_struct* %24), !dbg !724
  store i32 %214, i32* %18, align 4, !dbg !725
  %215 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %24, i32 0, i32 0, !dbg !726
  %216 = load double, double* %215, align 8, !dbg !726
  %217 = fmul double 0x2000000000000000, %216, !dbg !727
  call void @fMulHandler(double 0x2000000000000000, double %216, double %217, i64 0, i64 94552618819784, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @5, i32 0, i32 0), i64 94552618821456, i32 342, i32 38), !dbg !728
  %218 = load double, double* %19, align 8, !dbg !728
  %219 = fdiv double %217, %218, !dbg !729
  call void @fDivHandler(double %217, double %218, double %219, i64 94552618821456, i64 94552618821848, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @5, i32 0, i32 0), i64 94552618822256, i32 342, i32 47), !dbg !730
  %220 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !730
  %221 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %220, i32 0, i32 0, !dbg !731
  store double %219, double* %221, align 8, !dbg !732
  %222 = load i32, i32* %5, align 4, !dbg !733
  %223 = sitofp i32 %222 to double, !dbg !733
  %224 = fmul double %223, 0x3CB0000000000000, !dbg !734
  call void @fMulHandler(double %223, double 0x3CB0000000000000, double %224, i64 94552618824280, i64 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @5, i32 0, i32 0), i64 94552618825952, i32 343, i32 23), !dbg !735
  %225 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !735
  %226 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %225, i32 0, i32 0, !dbg !736
  %227 = load double, double* %226, align 8, !dbg !736
  %228 = call double @fabs(double %227) #1, !dbg !737
  %229 = fmul double %224, %228, !dbg !738
  call void @fMulHandler(double %224, double %228, double %229, i64 94552618825952, i64 94552618828912, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @5, i32 0, i32 0), i64 94552618829392, i32 343, i32 41), !dbg !739
  %230 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !739
  %231 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %230, i32 0, i32 1, !dbg !740
  store double %229, double* %231, align 8, !dbg !741
  br label %232

; <label>:232:                                    ; preds = %212, %192
  %233 = load i32, i32* %18, align 4, !dbg !742
  %234 = icmp ne i32 %233, 0, !dbg !742
  %235 = sext i32 %233 to i64, !dbg !742
  %236 = call i1 @iCmpInstHandler(i64 %235, i64 0, i1 %234, i32 33, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @5, i32 0, i32 0), i64 94552618831472, i32 346, i32 12), !dbg !742
  br i1 %236, label %237, label %239, !dbg !742

; <label>:237:                                    ; preds = %232
  %238 = load i32, i32* %18, align 4, !dbg !743
  br label %249, !dbg !743

; <label>:239:                                    ; preds = %232
  %240 = load i32, i32* %17, align 4, !dbg !745
  %241 = icmp ne i32 %240, 0, !dbg !745
  %242 = sext i32 %240 to i64, !dbg !745
  %243 = call i1 @iCmpInstHandler(i64 %242, i64 0, i1 %241, i32 33, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @5, i32 0, i32 0), i64 94552618836016, i32 346, i32 12), !dbg !745
  br i1 %243, label %244, label %246, !dbg !745

; <label>:244:                                    ; preds = %239
  %245 = load i32, i32* %17, align 4, !dbg !747
  br label %247, !dbg !747

; <label>:246:                                    ; preds = %239
  br label %247, !dbg !749

; <label>:247:                                    ; preds = %246, %244
  %248 = phi i32 [ %245, %244 ], [ 0, %246 ], !dbg !751
  br label %249, !dbg !751

; <label>:249:                                    ; preds = %247, %237
  %250 = phi i32 [ %238, %237 ], [ %248, %247 ], !dbg !753
  store i32 %250, i32* %4, align 4, !dbg !755
  br label %251, !dbg !755

; <label>:251:                                    ; preds = %249, %148, %69, %60, %51, %45, %43
  %252 = load i32, i32* %4, align 4, !dbg !756
  ret i32 %252, !dbg !756
}

; Function Attrs: nounwind uwtable
define internal i32 @legendre_Ql_asymp_unif(double, double, %struct.gsl_sf_result_struct*) #0 !dbg !757 {
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca %struct.gsl_sf_result_struct*, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca %struct.gsl_sf_result_struct, align 8
  %11 = alloca %struct.gsl_sf_result_struct, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  %22 = alloca %struct.gsl_sf_result_struct, align 8
  %23 = alloca %struct.gsl_sf_result_struct, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca double, align 8
  %28 = alloca double, align 8
  %29 = alloca double, align 8
  %30 = alloca double, align 8
  %31 = alloca double, align 8
  store double %0, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !760, metadata !60), !dbg !761
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !762, metadata !60), !dbg !763
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %7, metadata !764, metadata !60), !dbg !765
  %32 = load double, double* %6, align 8, !dbg !766
  %33 = fcmp olt double %32, 1.000000e+00, !dbg !768
  %34 = call i1 @fCmpInstHandler(double %32, double 1.000000e+00, i1 %33, i32 4, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @7, i32 0, i32 0), i64 94552618852720, i32 103, i32 8), !dbg !769
  br i1 %34, label %35, label %158, !dbg !769

; <label>:35:                                     ; preds = %3
  call void @llvm.dbg.declare(metadata double* %8, metadata !770, metadata !60), !dbg !772
  %36 = load double, double* %5, align 8, !dbg !773
  %37 = fadd double %36, 5.000000e-01, !dbg !774
  call void @fAddHandler(double %36, double 5.000000e-01, double %37, i64 94552618854856, i64 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @7, i32 0, i32 0), i64 94552618855264, i32 104, i32 22), !dbg !772
  store double %37, double* %8, align 8, !dbg !772
  call void @llvm.dbg.declare(metadata double* %9, metadata !775, metadata !60), !dbg !776
  %38 = load double, double* %6, align 8, !dbg !777
  %39 = call double @acos(double %38) #5, !dbg !778
  call void @callOneArgHandler(i32 5, double %38, double %39, i64 94552618858424, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @7, i32 0, i32 0), i64 94552618859136, i32 105, i32 18), !dbg !776
  store double %39, double* %9, align 8, !dbg !776
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %10, metadata !779, metadata !60), !dbg !780
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %11, metadata !781, metadata !60), !dbg !782
  call void @llvm.dbg.declare(metadata i32* %12, metadata !783, metadata !60), !dbg !784
  call void @llvm.dbg.declare(metadata i32* %13, metadata !785, metadata !60), !dbg !786
  call void @llvm.dbg.declare(metadata i32* %14, metadata !787, metadata !60), !dbg !788
  call void @llvm.dbg.declare(metadata double* %15, metadata !789, metadata !60), !dbg !790
  call void @llvm.dbg.declare(metadata double* %16, metadata !791, metadata !60), !dbg !792
  call void @llvm.dbg.declare(metadata double* %17, metadata !793, metadata !60), !dbg !794
  %40 = load double, double* %9, align 8, !dbg !795
  %41 = fcmp olt double %40, 0x3F20000000000000, !dbg !797
  %42 = call i1 @fCmpInstHandler(double %40, double 0x3F20000000000000, i1 %41, i32 4, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @7, i32 0, i32 0), i64 94552618870528, i32 116, i32 11), !dbg !798
  br i1 %42, label %43, label %55, !dbg !798

; <label>:43:                                     ; preds = %35
  %44 = load double, double* %9, align 8, !dbg !799
  %45 = load double, double* %9, align 8, !dbg !801
  %46 = fmul double %44, %45, !dbg !802
  call void @fMulHandler(double %44, double %45, double %46, i64 94552618871640, i64 94552618871960, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @7, i32 0, i32 0), i64 94552618872368, i32 117, i32 22), !dbg !803
  %47 = fdiv double %46, 1.500000e+01, !dbg !803
  call void @fDivHandler(double %46, double 1.500000e+01, double %47, i64 94552618872368, i64 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @7, i32 0, i32 0), i64 94552618872880, i32 117, i32 25), !dbg !804
  %48 = fadd double 1.000000e+00, %47, !dbg !804
  call void @fAddHandler(double 1.000000e+00, double %47, double %48, i64 0, i64 94552618872880, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @7, i32 0, i32 0), i64 94552618873296, i32 117, i32 18), !dbg !805
  %49 = fdiv double %48, 2.400000e+01, !dbg !805
  call void @fDivHandler(double %48, double 2.400000e+01, double %49, i64 94552618873296, i64 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @7, i32 0, i32 0), i64 94552618873776, i32 117, i32 31), !dbg !806
  store double %49, double* %16, align 8, !dbg !806
  %50 = load double, double* %9, align 8, !dbg !807
  %51 = load double, double* %9, align 8, !dbg !808
  %52 = fmul double %50, %51, !dbg !809
  call void @fMulHandler(double %50, double %51, double %52, i64 94552618874552, i64 94552618874936, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @7, i32 0, i32 0), i64 94552618875344, i32 118, i32 21), !dbg !810
  %53 = fdiv double %52, 1.200000e+01, !dbg !810
  call void @fDivHandler(double %52, double 1.200000e+01, double %53, i64 94552618875344, i64 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @7, i32 0, i32 0), i64 94552618875856, i32 118, i32 24), !dbg !811
  %54 = fadd double 1.000000e+00, %53, !dbg !811
  call void @fAddHandler(double 1.000000e+00, double %53, double %54, i64 0, i64 94552618875856, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @7, i32 0, i32 0), i64 94552618876272, i32 118, i32 17), !dbg !812
  store double %54, double* %15, align 8, !dbg !812
  br label %77, !dbg !813

; <label>:55:                                     ; preds = %35
  call void @llvm.dbg.declare(metadata double* %18, metadata !814, metadata !60), !dbg !816
  %56 = load double, double* %6, align 8, !dbg !817
  %57 = load double, double* %6, align 8, !dbg !818
  %58 = fmul double %56, %57, !dbg !819
  call void @fMulHandler(double %56, double %57, double %58, i64 94552618878632, i64 94552618878984, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @7, i32 0, i32 0), i64 94552618879392, i32 121, i32 35), !dbg !820
  %59 = fsub double 1.000000e+00, %58, !dbg !820
  call void @fSubHandler(double 1.000000e+00, double %58, double %59, i64 0, i64 94552618879392, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @7, i32 0, i32 0), i64 94552618879840, i32 121, i32 32), !dbg !821
  %60 = call double @sqrt(double %59) #5, !dbg !821
  call void @callOneArgHandler(i32 14, double %59, double %60, i64 94552618879840, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @7, i32 0, i32 0), i64 94552618880560, i32 121, i32 23), !dbg !816
  store double %60, double* %18, align 8, !dbg !816
  call void @llvm.dbg.declare(metadata double* %19, metadata !822, metadata !60), !dbg !823
  %61 = load double, double* %6, align 8, !dbg !824
  %62 = load double, double* %18, align 8, !dbg !825
  %63 = fdiv double %61, %62, !dbg !826
  call void @fDivHandler(double %61, double %62, double %63, i64 94552618883896, i64 94552618884248, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @7, i32 0, i32 0), i64 94552618884656, i32 122, i32 25), !dbg !823
  store double %63, double* %19, align 8, !dbg !823
  %64 = load double, double* %9, align 8, !dbg !827
  %65 = load double, double* %19, align 8, !dbg !828
  %66 = fmul double %64, %65, !dbg !829
  call void @fMulHandler(double %64, double %65, double %66, i64 94552618886728, i64 94552618887112, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @7, i32 0, i32 0), i64 94552618887520, i32 123, i32 33), !dbg !830
  %67 = fsub double 1.000000e+00, %66, !dbg !830
  call void @fSubHandler(double 1.000000e+00, double %66, double %67, i64 0, i64 94552618887520, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @7, i32 0, i32 0), i64 94552618887968, i32 123, i32 28), !dbg !831
  %68 = fmul double 1.250000e-01, %67, !dbg !831
  call void @fMulHandler(double 1.250000e-01, double %67, double %68, i64 0, i64 94552618887968, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @7, i32 0, i32 0), i64 94552618888448, i32 123, i32 21), !dbg !832
  %69 = load double, double* %9, align 8, !dbg !832
  %70 = load double, double* %9, align 8, !dbg !833
  %71 = fmul double %69, %70, !dbg !834
  call void @fMulHandler(double %69, double %70, double %71, i64 94552618888808, i64 94552618889192, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @7, i32 0, i32 0), i64 94552618889600, i32 123, i32 48), !dbg !835
  %72 = fdiv double %68, %71, !dbg !835
  call void @fDivHandler(double %68, double %71, double %72, i64 94552618888448, i64 94552618889600, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @7, i32 0, i32 0), i64 94552618890016, i32 123, i32 43), !dbg !836
  store double %72, double* %16, align 8, !dbg !836
  %73 = load double, double* %9, align 8, !dbg !837
  %74 = load double, double* %18, align 8, !dbg !838
  %75 = fdiv double %73, %74, !dbg !839
  call void @fDivHandler(double %73, double %74, double %75, i64 94552618890824, i64 94552618891208, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @7, i32 0, i32 0), i64 94552618891616, i32 124, i32 20), !dbg !840
  %76 = call double @sqrt(double %75) #5, !dbg !840
  call void @callOneArgHandler(i32 14, double %75, double %76, i64 94552618891616, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @7, i32 0, i32 0), i64 94552618892096, i32 124, i32 13), !dbg !841
  store double %76, double* %15, align 8, !dbg !841
  br label %77

; <label>:77:                                     ; preds = %55, %43
  %78 = load double, double* %8, align 8, !dbg !842
  %79 = load double, double* %9, align 8, !dbg !843
  %80 = fmul double %78, %79, !dbg !844
  call void @fMulHandler(double %78, double %79, double %80, i64 94552618893064, i64 94552618893384, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @7, i32 0, i32 0), i64 94552618893792, i32 127, i32 35), !dbg !845
  %81 = call i32 @gsl_sf_bessel_Y0_e(double %80, %struct.gsl_sf_result_struct* %10), !dbg !845
  store i32 %81, i32* %12, align 4, !dbg !846
  %82 = load double, double* %8, align 8, !dbg !847
  %83 = load double, double* %9, align 8, !dbg !848
  %84 = fmul double %82, %83, !dbg !849
  call void @fMulHandler(double %82, double %83, double %84, i64 94552618895480, i64 94552618895864, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @7, i32 0, i32 0), i64 94552618896272, i32 128, i32 35), !dbg !850
  %85 = call i32 @gsl_sf_bessel_Y1_e(double %84, %struct.gsl_sf_result_struct* %11), !dbg !850
  store i32 %85, i32* %13, align 4, !dbg !851
  %86 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !852
  %87 = load double, double* %86, align 8, !dbg !852
  %88 = load double, double* %9, align 8, !dbg !853
  %89 = load double, double* %8, align 8, !dbg !854
  %90 = fdiv double %88, %89, !dbg !855
  call void @fDivHandler(double %88, double %89, double %90, i64 94552618900104, i64 94552618900488, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @7, i32 0, i32 0), i64 94552618900896, i32 130, i32 35), !dbg !856
  %91 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 0, !dbg !856
  %92 = load double, double* %91, align 8, !dbg !856
  %93 = fmul double %90, %92, !dbg !857
  call void @fMulHandler(double %90, double %92, double %93, i64 94552618900896, i64 94552618901736, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @7, i32 0, i32 0), i64 94552618903408, i32 130, i32 38), !dbg !858
  %94 = load double, double* %16, align 8, !dbg !858
  %95 = fmul double %93, %94, !dbg !859
  call void @fMulHandler(double %93, double %94, double %95, i64 94552618903408, i64 94552618903800, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @7, i32 0, i32 0), i64 94552618904208, i32 130, i32 47), !dbg !860
  %96 = fadd double %87, %95, !dbg !860
  call void @fAddHandler(double %87, double %95, double %96, i64 94552618898456, i64 94552618904208, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @7, i32 0, i32 0), i64 94552618904624, i32 130, i32 31), !dbg !861
  %97 = fmul double 0xBFF921FB54442D18, %96, !dbg !861
  call void @fMulHandler(double 0xBFF921FB54442D18, double %96, double %97, i64 0, i64 94552618904624, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @7, i32 0, i32 0), i64 94552618905104, i32 130, i32 21), !dbg !862
  store double %97, double* %17, align 8, !dbg !862
  %98 = load double, double* %15, align 8, !dbg !863
  %99 = load double, double* %17, align 8, !dbg !864
  %100 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !865
  %101 = call i32 @gsl_sf_multiply_e(double %98, double %99, %struct.gsl_sf_result_struct* %100), !dbg !866
  store i32 %101, i32* %14, align 4, !dbg !867
  %102 = load double, double* %15, align 8, !dbg !868
  %103 = call double @fabs(double %102) #1, !dbg !869
  %104 = fmul double 0x3FF921FB54442D18, %103, !dbg !870
  call void @fMulHandler(double 0x3FF921FB54442D18, double %103, double %104, i64 0, i64 94552618908912, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @7, i32 0, i32 0), i64 94552618909456, i32 133, i32 29), !dbg !871
  %105 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 1, !dbg !871
  %106 = load double, double* %105, align 8, !dbg !871
  %107 = load double, double* %9, align 8, !dbg !872
  %108 = load double, double* %8, align 8, !dbg !873
  %109 = fdiv double %107, %108, !dbg !874
  call void @fDivHandler(double %107, double %108, double %109, i64 94552618911944, i64 94552618912328, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @7, i32 0, i32 0), i64 94552618912736, i32 133, i32 60), !dbg !875
  %110 = load double, double* %16, align 8, !dbg !875
  %111 = fmul double %109, %110, !dbg !876
  call void @fMulHandler(double %109, double %110, double %111, i64 94552618912736, i64 94552618913128, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @7, i32 0, i32 0), i64 94552618913536, i32 133, i32 62), !dbg !877
  %112 = call double @fabs(double %111) #1, !dbg !877
  %113 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 1, !dbg !879
  %114 = load double, double* %113, align 8, !dbg !879
  %115 = fmul double %112, %114, !dbg !880
  call void @fMulHandler(double %112, double %114, double %115, i64 94552618914016, i64 94552618914920, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @7, i32 0, i32 0), i64 94552618916592, i32 133, i32 67), !dbg !881
  %116 = fadd double %106, %115, !dbg !881
  call void @fAddHandler(double %106, double %115, double %116, i64 94552618910296, i64 94552618916592, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @7, i32 0, i32 0), i64 94552618917008, i32 133, i32 51), !dbg !882
  %117 = fmul double %104, %116, !dbg !882
  call void @fMulHandler(double %104, double %116, double %117, i64 94552618909456, i64 94552618917008, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @7, i32 0, i32 0), i64 94552618917424, i32 133, i32 41), !dbg !883
  %118 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !883
  %119 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %118, i32 0, i32 1, !dbg !884
  %120 = load double, double* %119, align 8, !dbg !885
  %121 = fadd double %120, %117, !dbg !885
  call void @fAddHandler(double %120, double %117, double %121, i64 94552618918648, i64 94552618917424, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @7, i32 0, i32 0), i64 94552618919056, i32 133, i32 17), !dbg !885
  store double %121, double* %119, align 8, !dbg !885
  %122 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !886
  %123 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %122, i32 0, i32 0, !dbg !887
  %124 = load double, double* %123, align 8, !dbg !887
  %125 = call double @fabs(double %124) #1, !dbg !888
  %126 = fmul double 0x3CB0000000000000, %125, !dbg !889
  call void @fMulHandler(double 0x3CB0000000000000, double %125, double %126, i64 0, i64 94552618923408, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @7, i32 0, i32 0), i64 94552618923888, i32 134, i32 36), !dbg !890
  %127 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !890
  %128 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %127, i32 0, i32 1, !dbg !891
  %129 = load double, double* %128, align 8, !dbg !892
  %130 = fadd double %129, %126, !dbg !892
  call void @fAddHandler(double %129, double %126, double %130, i64 94552618925112, i64 94552618923888, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @7, i32 0, i32 0), i64 94552618925520, i32 134, i32 17), !dbg !892
  store double %130, double* %128, align 8, !dbg !892
  %131 = load i32, i32* %14, align 4, !dbg !893
  %132 = icmp ne i32 %131, 0, !dbg !893
  %133 = sext i32 %131 to i64, !dbg !893
  %134 = call i1 @iCmpInstHandler(i64 %133, i64 0, i1 %132, i32 33, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @7, i32 0, i32 0), i64 94552618929776, i32 136, i32 12), !dbg !893
  br i1 %134, label %135, label %137, !dbg !893

; <label>:135:                                    ; preds = %77
  %136 = load i32, i32* %14, align 4, !dbg !894
  br label %156, !dbg !894

; <label>:137:                                    ; preds = %77
  %138 = load i32, i32* %12, align 4, !dbg !895
  %139 = icmp ne i32 %138, 0, !dbg !895
  %140 = sext i32 %138 to i64, !dbg !895
  %141 = call i1 @iCmpInstHandler(i64 %140, i64 0, i1 %139, i32 33, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @7, i32 0, i32 0), i64 94552618934320, i32 136, i32 12), !dbg !895
  br i1 %141, label %142, label %144, !dbg !895

; <label>:142:                                    ; preds = %137
  %143 = load i32, i32* %12, align 4, !dbg !897
  br label %154, !dbg !897

; <label>:144:                                    ; preds = %137
  %145 = load i32, i32* %13, align 4, !dbg !899
  %146 = icmp ne i32 %145, 0, !dbg !899
  %147 = sext i32 %145 to i64, !dbg !899
  %148 = call i1 @iCmpInstHandler(i64 %147, i64 0, i1 %146, i32 33, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @7, i32 0, i32 0), i64 94552618938864, i32 136, i32 12), !dbg !899
  br i1 %148, label %149, label %151, !dbg !899

; <label>:149:                                    ; preds = %144
  %150 = load i32, i32* %13, align 4, !dbg !901
  br label %152, !dbg !901

; <label>:151:                                    ; preds = %144
  br label %152, !dbg !903

; <label>:152:                                    ; preds = %151, %149
  %153 = phi i32 [ %150, %149 ], [ 0, %151 ], !dbg !905
  br label %154, !dbg !905

; <label>:154:                                    ; preds = %152, %142
  %155 = phi i32 [ %143, %142 ], [ %153, %152 ], !dbg !907
  br label %156, !dbg !907

; <label>:156:                                    ; preds = %154, %135
  %157 = phi i32 [ %136, %135 ], [ %155, %154 ], !dbg !909
  store i32 %157, i32* %4, align 4, !dbg !911
  br label %277, !dbg !911

; <label>:158:                                    ; preds = %3
  call void @llvm.dbg.declare(metadata double* %20, metadata !912, metadata !60), !dbg !914
  %159 = load double, double* %5, align 8, !dbg !915
  %160 = fadd double %159, 5.000000e-01, !dbg !916
  call void @fAddHandler(double %159, double 5.000000e-01, double %160, i64 94552618951192, i64 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @7, i32 0, i32 0), i64 94552618951600, i32 139, i32 22), !dbg !914
  store double %160, double* %20, align 8, !dbg !914
  call void @llvm.dbg.declare(metadata double* %21, metadata !917, metadata !60), !dbg !918
  %161 = load double, double* %6, align 8, !dbg !919
  %162 = call double @acosh(double %161) #5, !dbg !920
  store double %162, double* %21, align 8, !dbg !918
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %22, metadata !921, metadata !60), !dbg !922
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %23, metadata !923, metadata !60), !dbg !924
  call void @llvm.dbg.declare(metadata i32* %24, metadata !925, metadata !60), !dbg !926
  call void @llvm.dbg.declare(metadata i32* %25, metadata !927, metadata !60), !dbg !928
  call void @llvm.dbg.declare(metadata i32* %26, metadata !929, metadata !60), !dbg !930
  call void @llvm.dbg.declare(metadata double* %27, metadata !931, metadata !60), !dbg !932
  call void @llvm.dbg.declare(metadata double* %28, metadata !933, metadata !60), !dbg !934
  call void @llvm.dbg.declare(metadata double* %29, metadata !935, metadata !60), !dbg !936
  %163 = load double, double* %21, align 8, !dbg !937
  %164 = fcmp olt double %163, 0x3F20000000000000, !dbg !939
  %165 = call i1 @fCmpInstHandler(double %163, double 0x3F20000000000000, i1 %164, i32 4, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @7, i32 0, i32 0), i64 94552618966800, i32 151, i32 11), !dbg !940
  br i1 %165, label %166, label %178, !dbg !940

; <label>:166:                                    ; preds = %158
  %167 = load double, double* %21, align 8, !dbg !941
  %168 = load double, double* %21, align 8, !dbg !943
  %169 = fmul double %167, %168, !dbg !944
  call void @fMulHandler(double %167, double %168, double %169, i64 94552618967912, i64 94552618968232, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @7, i32 0, i32 0), i64 94552618968640, i32 152, i32 20), !dbg !945
  %170 = fdiv double %169, 1.500000e+01, !dbg !945
  call void @fDivHandler(double %169, double 1.500000e+01, double %170, i64 94552618968640, i64 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @7, i32 0, i32 0), i64 94552618969088, i32 152, i32 23), !dbg !946
  %171 = fsub double 1.000000e+00, %170, !dbg !946
  call void @fSubHandler(double 1.000000e+00, double %170, double %171, i64 0, i64 94552618969088, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @7, i32 0, i32 0), i64 94552618969504, i32 152, i32 17), !dbg !947
  %172 = fdiv double %171, 2.400000e+01, !dbg !947
  call void @fDivHandler(double %171, double 2.400000e+01, double %172, i64 94552618969504, i64 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @7, i32 0, i32 0), i64 94552618969920, i32 152, i32 29), !dbg !948
  store double %172, double* %28, align 8, !dbg !948
  %173 = load double, double* %21, align 8, !dbg !949
  %174 = load double, double* %21, align 8, !dbg !950
  %175 = fmul double %173, %174, !dbg !951
  call void @fMulHandler(double %173, double %174, double %175, i64 94552618970696, i64 94552618971080, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @7, i32 0, i32 0), i64 94552618971488, i32 153, i32 21), !dbg !952
  %176 = fdiv double %175, 1.200000e+01, !dbg !952
  call void @fDivHandler(double %175, double 1.200000e+01, double %176, i64 94552618971488, i64 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @7, i32 0, i32 0), i64 94552618971936, i32 153, i32 24), !dbg !953
  %177 = fsub double 1.000000e+00, %176, !dbg !953
  call void @fSubHandler(double 1.000000e+00, double %176, double %177, i64 0, i64 94552618971936, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @7, i32 0, i32 0), i64 94552618972352, i32 153, i32 17), !dbg !954
  store double %177, double* %27, align 8, !dbg !954
  br label %200, !dbg !955

; <label>:178:                                    ; preds = %158
  call void @llvm.dbg.declare(metadata double* %30, metadata !956, metadata !60), !dbg !958
  %179 = load double, double* %6, align 8, !dbg !959
  %180 = load double, double* %6, align 8, !dbg !960
  %181 = fmul double %179, %180, !dbg !961
  call void @fMulHandler(double %179, double %180, double %181, i64 94552618974712, i64 94552618975064, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @7, i32 0, i32 0), i64 94552618975472, i32 156, i32 30), !dbg !962
  %182 = fsub double %181, 1.000000e+00, !dbg !962
  call void @fSubHandler(double %181, double 1.000000e+00, double %182, i64 94552618975472, i64 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @7, i32 0, i32 0), i64 94552618975920, i32 156, i32 33), !dbg !963
  %183 = call double @sqrt(double %182) #5, !dbg !963
  call void @callOneArgHandler(i32 14, double %182, double %183, i64 94552618975920, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @7, i32 0, i32 0), i64 94552618976368, i32 156, i32 24), !dbg !958
  store double %183, double* %30, align 8, !dbg !958
  call void @llvm.dbg.declare(metadata double* %31, metadata !964, metadata !60), !dbg !965
  %184 = load double, double* %6, align 8, !dbg !966
  %185 = load double, double* %30, align 8, !dbg !967
  %186 = fdiv double %184, %185, !dbg !968
  call void @fDivHandler(double %184, double %185, double %186, i64 94552618979624, i64 94552618979976, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @7, i32 0, i32 0), i64 94552618980384, i32 157, i32 26), !dbg !965
  store double %186, double* %31, align 8, !dbg !965
  %187 = load double, double* %21, align 8, !dbg !969
  %188 = load double, double* %31, align 8, !dbg !970
  %189 = fmul double %187, %188, !dbg !971
  call void @fMulHandler(double %187, double %188, double %189, i64 94552618982456, i64 94552618982840, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @7, i32 0, i32 0), i64 94552618983248, i32 158, i32 34), !dbg !972
  %190 = fsub double 1.000000e+00, %189, !dbg !972
  call void @fSubHandler(double 1.000000e+00, double %189, double %190, i64 0, i64 94552618983248, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @7, i32 0, i32 0), i64 94552618983696, i32 158, i32 29), !dbg !973
  %191 = fmul double -1.250000e-01, %190, !dbg !973
  call void @fMulHandler(double -1.250000e-01, double %190, double %191, i64 0, i64 94552618983696, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @7, i32 0, i32 0), i64 94552618984176, i32 158, i32 22), !dbg !974
  %192 = load double, double* %21, align 8, !dbg !974
  %193 = load double, double* %21, align 8, !dbg !975
  %194 = fmul double %192, %193, !dbg !976
  call void @fMulHandler(double %192, double %193, double %194, i64 94552618984536, i64 94552618984920, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @7, i32 0, i32 0), i64 94552618985328, i32 158, i32 50), !dbg !977
  %195 = fdiv double %191, %194, !dbg !977
  call void @fDivHandler(double %191, double %194, double %195, i64 94552618984176, i64 94552618985328, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @7, i32 0, i32 0), i64 94552618985744, i32 158, i32 45), !dbg !978
  store double %195, double* %28, align 8, !dbg !978
  %196 = load double, double* %21, align 8, !dbg !979
  %197 = load double, double* %30, align 8, !dbg !980
  %198 = fdiv double %196, %197, !dbg !981
  call void @fDivHandler(double %196, double %197, double %198, i64 94552618986552, i64 94552618986936, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @7, i32 0, i32 0), i64 94552618987344, i32 159, i32 20), !dbg !982
  %199 = call double @sqrt(double %198) #5, !dbg !982
  call void @callOneArgHandler(i32 14, double %198, double %199, i64 94552618987344, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @7, i32 0, i32 0), i64 94552618987824, i32 159, i32 13), !dbg !983
  store double %199, double* %27, align 8, !dbg !983
  br label %200

; <label>:200:                                    ; preds = %178, %166
  %201 = load double, double* %20, align 8, !dbg !984
  %202 = load double, double* %21, align 8, !dbg !985
  %203 = fmul double %201, %202, !dbg !986
  call void @fMulHandler(double %201, double %202, double %203, i64 94552618988792, i64 94552618989112, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @7, i32 0, i32 0), i64 94552618989520, i32 162, i32 42), !dbg !987
  %204 = call i32 @gsl_sf_bessel_K0_scaled_e(double %203, %struct.gsl_sf_result_struct* %22), !dbg !987
  store i32 %204, i32* %24, align 4, !dbg !988
  %205 = load double, double* %20, align 8, !dbg !989
  %206 = load double, double* %21, align 8, !dbg !990
  %207 = fmul double %205, %206, !dbg !991
  call void @fMulHandler(double %205, double %206, double %207, i64 94552618991240, i64 94552618991624, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @7, i32 0, i32 0), i64 94552618992032, i32 163, i32 42), !dbg !992
  %208 = call i32 @gsl_sf_bessel_K1_scaled_e(double %207, %struct.gsl_sf_result_struct* %23), !dbg !992
  store i32 %208, i32* %25, align 4, !dbg !993
  %209 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %22, i32 0, i32 0, !dbg !994
  %210 = load double, double* %209, align 8, !dbg !994
  %211 = load double, double* %21, align 8, !dbg !995
  %212 = load double, double* %20, align 8, !dbg !996
  %213 = fdiv double %211, %212, !dbg !997
  call void @fDivHandler(double %211, double %212, double %213, i64 94552618995896, i64 94552618996280, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @7, i32 0, i32 0), i64 94552618996688, i32 165, i32 29), !dbg !998
  %214 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %23, i32 0, i32 0, !dbg !998
  %215 = load double, double* %214, align 8, !dbg !998
  %216 = fmul double %213, %215, !dbg !999
  call void @fMulHandler(double %213, double %215, double %216, i64 94552618996688, i64 94552618997528, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @7, i32 0, i32 0), i64 94552618999200, i32 165, i32 32), !dbg !1000
  %217 = load double, double* %28, align 8, !dbg !1000
  %218 = fmul double %216, %217, !dbg !1001
  call void @fMulHandler(double %216, double %217, double %218, i64 94552618999200, i64 94552618999592, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @7, i32 0, i32 0), i64 94552619000000, i32 165, i32 48), !dbg !1002
  %219 = fsub double %210, %218, !dbg !1002
  call void @fSubHandler(double %210, double %218, double %219, i64 94552618994248, i64 94552619000000, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @7, i32 0, i32 0), i64 94552619000416, i32 165, i32 25), !dbg !1003
  store double %219, double* %29, align 8, !dbg !1003
  %220 = load double, double* %20, align 8, !dbg !1004
  %221 = fsub double -0.000000e+00, %220, !dbg !1005
  call void @fSubHandler(double -0.000000e+00, double %220, double %221, i64 0, i64 94552619001224, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @7, i32 0, i32 0), i64 94552619001696, i32 167, i32 32), !dbg !1006
  %222 = load double, double* %21, align 8, !dbg !1006
  %223 = fmul double %221, %222, !dbg !1007
  call void @fMulHandler(double %221, double %222, double %223, i64 94552619001696, i64 94552619002088, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @7, i32 0, i32 0), i64 94552619002496, i32 167, i32 34), !dbg !1008
  %224 = load double, double* %27, align 8, !dbg !1008
  %225 = load double, double* %29, align 8, !dbg !1009
  %226 = fmul double %224, %225, !dbg !1010
  call void @fMulHandler(double %224, double %225, double %226, i64 94552619002888, i64 94552619003272, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @7, i32 0, i32 0), i64 94552619003680, i32 167, i32 43), !dbg !1011
  %227 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1011
  %228 = call i32 @gsl_sf_exp_mult_e(double %223, double %226, %struct.gsl_sf_result_struct* %227), !dbg !1012
  store i32 %228, i32* %26, align 4, !dbg !1013
  %229 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1014
  %230 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %229, i32 0, i32 0, !dbg !1015
  %231 = load double, double* %230, align 8, !dbg !1015
  %232 = call double @fabs(double %231) #1, !dbg !1016
  %233 = fmul double 0x3CB0000000000000, %232, !dbg !1017
  call void @fMulHandler(double 0x3CB0000000000000, double %232, double %233, i64 0, i64 94552619009200, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @7, i32 0, i32 0), i64 94552619009680, i32 168, i32 36), !dbg !1018
  %234 = load double, double* %20, align 8, !dbg !1018
  %235 = load double, double* %21, align 8, !dbg !1019
  %236 = fmul double %234, %235, !dbg !1020
  call void @fMulHandler(double %234, double %235, double %236, i64 94552619010072, i64 94552619010456, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @7, i32 0, i32 0), i64 94552619010864, i32 168, i32 64), !dbg !1021
  %237 = call double @fabs(double %236) #1, !dbg !1021
  %238 = fmul double %233, %237, !dbg !1023
  call void @fMulHandler(double %233, double %237, double %238, i64 94552619009680, i64 94552619011344, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @7, i32 0, i32 0), i64 94552619011824, i32 168, i32 56), !dbg !1024
  %239 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1024
  %240 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %239, i32 0, i32 1, !dbg !1025
  store double %238, double* %240, align 8, !dbg !1026
  %241 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1027
  %242 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %241, i32 0, i32 0, !dbg !1028
  %243 = load double, double* %242, align 8, !dbg !1028
  %244 = call double @fabs(double %243) #1, !dbg !1029
  %245 = fmul double 0x3CC0000000000000, %244, !dbg !1030
  call void @fMulHandler(double 0x3CC0000000000000, double %244, double %245, i64 0, i64 94552619016032, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @7, i32 0, i32 0), i64 94552619016512, i32 169, i32 42), !dbg !1031
  %246 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1031
  %247 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %246, i32 0, i32 1, !dbg !1032
  %248 = load double, double* %247, align 8, !dbg !1033
  %249 = fadd double %248, %245, !dbg !1033
  call void @fAddHandler(double %248, double %245, double %249, i64 94552619017736, i64 94552619016512, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @7, i32 0, i32 0), i64 94552619018144, i32 169, i32 17), !dbg !1033
  store double %249, double* %247, align 8, !dbg !1033
  %250 = load i32, i32* %26, align 4, !dbg !1034
  %251 = icmp ne i32 %250, 0, !dbg !1034
  %252 = sext i32 %250 to i64, !dbg !1034
  %253 = call i1 @iCmpInstHandler(i64 %252, i64 0, i1 %251, i32 33, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @7, i32 0, i32 0), i64 94552619020336, i32 171, i32 12), !dbg !1034
  br i1 %253, label %254, label %256, !dbg !1034

; <label>:254:                                    ; preds = %200
  %255 = load i32, i32* %26, align 4, !dbg !1035
  br label %275, !dbg !1035

; <label>:256:                                    ; preds = %200
  %257 = load i32, i32* %24, align 4, !dbg !1036
  %258 = icmp ne i32 %257, 0, !dbg !1036
  %259 = sext i32 %257 to i64, !dbg !1036
  %260 = call i1 @iCmpInstHandler(i64 %259, i64 0, i1 %258, i32 33, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @7, i32 0, i32 0), i64 94552619024880, i32 171, i32 12), !dbg !1036
  br i1 %260, label %261, label %263, !dbg !1036

; <label>:261:                                    ; preds = %256
  %262 = load i32, i32* %24, align 4, !dbg !1038
  br label %273, !dbg !1038

; <label>:263:                                    ; preds = %256
  %264 = load i32, i32* %25, align 4, !dbg !1040
  %265 = icmp ne i32 %264, 0, !dbg !1040
  %266 = sext i32 %264 to i64, !dbg !1040
  %267 = call i1 @iCmpInstHandler(i64 %266, i64 0, i1 %265, i32 33, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @7, i32 0, i32 0), i64 94552619029424, i32 171, i32 12), !dbg !1040
  br i1 %267, label %268, label %270, !dbg !1040

; <label>:268:                                    ; preds = %263
  %269 = load i32, i32* %25, align 4, !dbg !1042
  br label %271, !dbg !1042

; <label>:270:                                    ; preds = %263
  br label %271, !dbg !1044

; <label>:271:                                    ; preds = %270, %268
  %272 = phi i32 [ %269, %268 ], [ 0, %270 ], !dbg !1046
  br label %273, !dbg !1046

; <label>:273:                                    ; preds = %271, %261
  %274 = phi i32 [ %262, %261 ], [ %272, %271 ], !dbg !1048
  br label %275, !dbg !1048

; <label>:275:                                    ; preds = %273, %254
  %276 = phi i32 [ %255, %254 ], [ %274, %273 ], !dbg !1050
  store i32 %276, i32* %4, align 4, !dbg !1052
  br label %277, !dbg !1052

; <label>:277:                                    ; preds = %275, %156
  %278 = load i32, i32* %4, align 4, !dbg !1053
  ret i32 %278, !dbg !1053
}

; Function Attrs: nounwind uwtable
define internal i32 @legendreQ_CF1_xgt1(i32, double, double, double, double*) #0 !dbg !1054 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double*, align 8
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
  store i32 %0, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1058, metadata !60), !dbg !1059
  store double %1, double* %8, align 8
  call void @llvm.dbg.declare(metadata double* %8, metadata !1060, metadata !60), !dbg !1061
  store double %2, double* %9, align 8
  call void @llvm.dbg.declare(metadata double* %9, metadata !1062, metadata !60), !dbg !1063
  store double %3, double* %10, align 8
  call void @llvm.dbg.declare(metadata double* %10, metadata !1064, metadata !60), !dbg !1065
  store double* %4, double** %11, align 8
  call void @llvm.dbg.declare(metadata double** %11, metadata !1066, metadata !60), !dbg !1067
  call void @llvm.dbg.declare(metadata double* %12, metadata !1068, metadata !60), !dbg !1069
  store double 0x5FEFFFFFFFFFFFFF, double* %12, align 8, !dbg !1069
  call void @llvm.dbg.declare(metadata i32* %13, metadata !1070, metadata !60), !dbg !1071
  store i32 5000, i32* %13, align 4, !dbg !1071
  call void @llvm.dbg.declare(metadata i32* %14, metadata !1072, metadata !60), !dbg !1073
  store i32 1, i32* %14, align 4, !dbg !1073
  call void @llvm.dbg.declare(metadata double* %15, metadata !1074, metadata !60), !dbg !1075
  store double 1.000000e+00, double* %15, align 8, !dbg !1075
  call void @llvm.dbg.declare(metadata double* %16, metadata !1076, metadata !60), !dbg !1077
  store double 0.000000e+00, double* %16, align 8, !dbg !1077
  call void @llvm.dbg.declare(metadata double* %17, metadata !1078, metadata !60), !dbg !1079
  store double 0.000000e+00, double* %17, align 8, !dbg !1079
  call void @llvm.dbg.declare(metadata double* %18, metadata !1080, metadata !60), !dbg !1081
  store double 1.000000e+00, double* %18, align 8, !dbg !1081
  call void @llvm.dbg.declare(metadata double* %19, metadata !1082, metadata !60), !dbg !1083
  %29 = load i32, i32* %7, align 4, !dbg !1084
  %30 = sitofp i32 %29 to double, !dbg !1084
  %31 = fadd double %30, 1.000000e+00, !dbg !1085
  call void @fAddHandler(double %30, double 1.000000e+00, double %31, i64 94552618762840, i64 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @9, i32 0, i32 0), i64 94552618762992, i32 48, i32 19), !dbg !1086
  %32 = load double, double* %8, align 8, !dbg !1086
  %33 = fadd double %31, %32, !dbg !1087
  call void @fAddHandler(double %31, double %32, double %33, i64 94552618762992, i64 94552618763352, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @9, i32 0, i32 0), i64 94552618765472, i32 48, i32 25), !dbg !1088
  %34 = load double, double* %9, align 8, !dbg !1088
  %35 = fadd double %33, %34, !dbg !1089
  call void @fAddHandler(double %33, double %34, double %35, i64 94552618765472, i64 94552618765864, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @9, i32 0, i32 0), i64 94552618766272, i32 48, i32 29), !dbg !1083
  store double %35, double* %19, align 8, !dbg !1083
  call void @llvm.dbg.declare(metadata double* %20, metadata !1090, metadata !60), !dbg !1091
  %36 = load i32, i32* %7, align 4, !dbg !1092
  %37 = sitofp i32 %36 to double, !dbg !1092
  %38 = fadd double %37, 1.000000e+00, !dbg !1093
  call void @fAddHandler(double %37, double 1.000000e+00, double %38, i64 94552619083784, i64 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @9, i32 0, i32 0), i64 94552619085456, i32 49, i32 24), !dbg !1094
  %39 = load double, double* %8, align 8, !dbg !1094
  %40 = fadd double %38, %39, !dbg !1095
  call void @fAddHandler(double %38, double %39, double %40, i64 94552619085456, i64 94552619085816, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @9, i32 0, i32 0), i64 94552619086224, i32 49, i32 28), !dbg !1096
  %41 = fmul double 2.000000e+00, %40, !dbg !1096
  call void @fMulHandler(double 2.000000e+00, double %40, double %41, i64 0, i64 94552619086224, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @9, i32 0, i32 0), i64 94552619086672, i32 49, i32 19), !dbg !1097
  %42 = fadd double %41, 1.000000e+00, !dbg !1097
  call void @fAddHandler(double %41, double 1.000000e+00, double %42, i64 94552619086672, i64 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @9, i32 0, i32 0), i64 94552619087088, i32 49, i32 32), !dbg !1098
  %43 = load double, double* %10, align 8, !dbg !1098
  %44 = fmul double %42, %43, !dbg !1099
  call void @fMulHandler(double %42, double %43, double %44, i64 94552619087088, i64 94552619087448, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @9, i32 0, i32 0), i64 94552619087856, i32 49, i32 39), !dbg !1091
  store double %44, double* %20, align 8, !dbg !1091
  call void @llvm.dbg.declare(metadata double* %21, metadata !1100, metadata !60), !dbg !1101
  %45 = load double, double* %20, align 8, !dbg !1102
  %46 = load double, double* %17, align 8, !dbg !1103
  %47 = fmul double %45, %46, !dbg !1104
  call void @fMulHandler(double %45, double %46, double %47, i64 94552619091048, i64 94552619091400, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @9, i32 0, i32 0), i64 94552619091808, i32 50, i32 17), !dbg !1105
  %48 = load double, double* %19, align 8, !dbg !1105
  %49 = load double, double* %15, align 8, !dbg !1106
  %50 = fmul double %48, %49, !dbg !1107
  call void @fMulHandler(double %48, double %49, double %50, i64 94552619092200, i64 94552619092584, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @9, i32 0, i32 0), i64 94552619092992, i32 50, i32 27), !dbg !1108
  %51 = fadd double %47, %50, !dbg !1108
  call void @fAddHandler(double %47, double %50, double %51, i64 94552619091808, i64 94552619092992, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @9, i32 0, i32 0), i64 94552619093408, i32 50, i32 23), !dbg !1101
  store double %51, double* %21, align 8, !dbg !1101
  call void @llvm.dbg.declare(metadata double* %22, metadata !1109, metadata !60), !dbg !1110
  %52 = load double, double* %20, align 8, !dbg !1111
  %53 = load double, double* %18, align 8, !dbg !1112
  %54 = fmul double %52, %53, !dbg !1113
  call void @fMulHandler(double %52, double %53, double %54, i64 94552619096600, i64 94552619096952, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @9, i32 0, i32 0), i64 94552619097360, i32 51, i32 17), !dbg !1114
  %55 = load double, double* %19, align 8, !dbg !1114
  %56 = load double, double* %16, align 8, !dbg !1115
  %57 = fmul double %55, %56, !dbg !1116
  call void @fMulHandler(double %55, double %56, double %57, i64 94552619097752, i64 94552619098136, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @9, i32 0, i32 0), i64 94552619098544, i32 51, i32 27), !dbg !1117
  %58 = fadd double %54, %57, !dbg !1117
  call void @fAddHandler(double %54, double %57, double %58, i64 94552619097360, i64 94552619098544, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @9, i32 0, i32 0), i64 94552619098960, i32 51, i32 23), !dbg !1110
  store double %58, double* %22, align 8, !dbg !1110
  call void @llvm.dbg.declare(metadata double* %23, metadata !1118, metadata !60), !dbg !1119
  call void @llvm.dbg.declare(metadata double* %24, metadata !1120, metadata !60), !dbg !1121
  call void @llvm.dbg.declare(metadata double* %25, metadata !1122, metadata !60), !dbg !1123
  %59 = load double, double* %21, align 8, !dbg !1124
  %60 = load double, double* %22, align 8, !dbg !1125
  %61 = fdiv double %59, %60, !dbg !1126
  call void @fDivHandler(double %59, double %60, double %61, i64 94552619104328, i64 94552619104680, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @9, i32 0, i32 0), i64 94552619105088, i32 53, i32 17), !dbg !1123
  store double %61, double* %25, align 8, !dbg !1123
  br label %62, !dbg !1127

; <label>:62:                                     ; preds = %142, %5
  %63 = load i32, i32* %14, align 4, !dbg !1128
  %64 = icmp slt i32 %63, 5000, !dbg !1130
  %65 = sext i32 %63 to i64, !dbg !1131
  %66 = call i1 @iCmpInstHandler(i64 %65, i64 5000, i1 %64, i32 40, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @9, i32 0, i32 0), i64 94552619108032, i32 55, i32 11), !dbg !1131
  br i1 %66, label %67, label %143, !dbg !1131

; <label>:67:                                     ; preds = %62
  call void @llvm.dbg.declare(metadata double* %26, metadata !1132, metadata !60), !dbg !1134
  call void @llvm.dbg.declare(metadata double* %27, metadata !1135, metadata !60), !dbg !1136
  call void @llvm.dbg.declare(metadata double* %28, metadata !1137, metadata !60), !dbg !1138
  %68 = load i32, i32* %14, align 4, !dbg !1139
  %69 = add nsw i32 %68, 1, !dbg !1139
  store i32 %69, i32* %14, align 4, !dbg !1139
  %70 = load double, double* %17, align 8, !dbg !1140
  store double %70, double* %15, align 8, !dbg !1141
  %71 = load double, double* %18, align 8, !dbg !1142
  store double %71, double* %16, align 8, !dbg !1143
  %72 = load double, double* %21, align 8, !dbg !1144
  store double %72, double* %17, align 8, !dbg !1145
  %73 = load double, double* %22, align 8, !dbg !1146
  store double %73, double* %18, align 8, !dbg !1147
  %74 = load i32, i32* %7, align 4, !dbg !1148
  %75 = load i32, i32* %14, align 4, !dbg !1149
  %76 = add nsw i32 %74, %75, !dbg !1150
  %77 = sitofp i32 %76 to double, !dbg !1148
  %78 = load double, double* %8, align 8, !dbg !1151
  %79 = fadd double %77, %78, !dbg !1152
  call void @fAddHandler(double %77, double %78, double %79, i64 94552619118920, i64 94552619120568, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @9, i32 0, i32 0), i64 94552619120976, i32 64, i32 19), !dbg !1153
  store double %79, double* %28, align 8, !dbg !1153
  %80 = load double, double* %9, align 8, !dbg !1154
  %81 = load double, double* %9, align 8, !dbg !1155
  %82 = fmul double %80, %81, !dbg !1156
  call void @fMulHandler(double %80, double %81, double %82, i64 94552619121784, i64 94552619122168, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @9, i32 0, i32 0), i64 94552619122576, i32 65, i32 11), !dbg !1157
  %83 = load double, double* %28, align 8, !dbg !1157
  %84 = load double, double* %28, align 8, !dbg !1158
  %85 = fmul double %83, %84, !dbg !1159
  call void @fMulHandler(double %83, double %84, double %85, i64 94552619122968, i64 94552619123352, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @9, i32 0, i32 0), i64 94552619123760, i32 65, i32 19), !dbg !1160
  %86 = fsub double %82, %85, !dbg !1160
  call void @fSubHandler(double %82, double %85, double %86, i64 94552619122576, i64 94552619123760, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @9, i32 0, i32 0), i64 94552619124176, i32 65, i32 14), !dbg !1161
  store double %86, double* %23, align 8, !dbg !1161
  %87 = load double, double* %28, align 8, !dbg !1162
  %88 = fmul double 2.000000e+00, %87, !dbg !1163
  call void @fMulHandler(double 2.000000e+00, double %87, double %88, i64 0, i64 94552619124984, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @9, i32 0, i32 0), i64 94552619125424, i32 66, i32 14), !dbg !1164
  %89 = fadd double %88, 1.000000e+00, !dbg !1164
  call void @fAddHandler(double %88, double 1.000000e+00, double %89, i64 94552619125424, i64 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @9, i32 0, i32 0), i64 94552619125840, i32 66, i32 19), !dbg !1165
  %90 = load double, double* %10, align 8, !dbg !1165
  %91 = fmul double %89, %90, !dbg !1166
  call void @fMulHandler(double %89, double %90, double %91, i64 94552619125840, i64 94552619126200, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @9, i32 0, i32 0), i64 94552619126608, i32 66, i32 26), !dbg !1167
  store double %91, double* %24, align 8, !dbg !1167
  %92 = load double, double* %24, align 8, !dbg !1168
  %93 = load double, double* %17, align 8, !dbg !1169
  %94 = fmul double %92, %93, !dbg !1170
  call void @fMulHandler(double %92, double %93, double %94, i64 94552619127416, i64 94552619127800, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @9, i32 0, i32 0), i64 94552619128208, i32 67, i32 12), !dbg !1171
  %95 = load double, double* %23, align 8, !dbg !1171
  %96 = load double, double* %15, align 8, !dbg !1172
  %97 = fmul double %95, %96, !dbg !1173
  call void @fMulHandler(double %95, double %96, double %97, i64 94552619128600, i64 94552619128984, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @9, i32 0, i32 0), i64 94552619129392, i32 67, i32 22), !dbg !1174
  %98 = fadd double %94, %97, !dbg !1174
  call void @fAddHandler(double %94, double %97, double %98, i64 94552619128208, i64 94552619129392, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @9, i32 0, i32 0), i64 94552619129808, i32 67, i32 18), !dbg !1175
  store double %98, double* %21, align 8, !dbg !1175
  %99 = load double, double* %24, align 8, !dbg !1176
  %100 = load double, double* %18, align 8, !dbg !1177
  %101 = fmul double %99, %100, !dbg !1178
  call void @fMulHandler(double %99, double %100, double %101, i64 94552619130616, i64 94552619131000, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @9, i32 0, i32 0), i64 94552619131408, i32 68, i32 12), !dbg !1179
  %102 = load double, double* %23, align 8, !dbg !1179
  %103 = load double, double* %16, align 8, !dbg !1180
  %104 = fmul double %102, %103, !dbg !1181
  call void @fMulHandler(double %102, double %103, double %104, i64 94552619131800, i64 94552619132184, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @9, i32 0, i32 0), i64 94552619132592, i32 68, i32 22), !dbg !1182
  %105 = fadd double %101, %104, !dbg !1182
  call void @fAddHandler(double %101, double %104, double %105, i64 94552619131408, i64 94552619132592, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @9, i32 0, i32 0), i64 94552619133008, i32 68, i32 18), !dbg !1183
  store double %105, double* %22, align 8, !dbg !1183
  %106 = load double, double* %21, align 8, !dbg !1184
  %107 = call double @fabs(double %106) #1, !dbg !1186
  %108 = fcmp ogt double %107, 0x5FEFFFFFFFFFFFFF, !dbg !1187
  %109 = call i1 @fCmpInstHandler(double %107, double 0x5FEFFFFFFFFFFFFF, i1 %108, i32 2, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @9, i32 0, i32 0), i64 94552619134768, i32 70, i32 17), !dbg !1188
  br i1 %109, label %115, label %110, !dbg !1188

; <label>:110:                                    ; preds = %67
  %111 = load double, double* %22, align 8, !dbg !1189
  %112 = call double @fabs(double %111) #1, !dbg !1191
  %113 = fcmp ogt double %112, 0x5FEFFFFFFFFFFFFF, !dbg !1192
  %114 = call i1 @fCmpInstHandler(double %112, double 0x5FEFFFFFFFFFFFFF, i1 %113, i32 2, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @9, i32 0, i32 0), i64 94552619136768, i32 70, i32 41), !dbg !1193
  br i1 %114, label %115, label %128, !dbg !1193

; <label>:115:                                    ; preds = %110, %67
  %116 = load double, double* %21, align 8, !dbg !1194
  %117 = fdiv double %116, 0x5FEFFFFFFFFFFFFF, !dbg !1194
  call void @fDivHandler(double %116, double 0x5FEFFFFFFFFFFFFF, double %117, i64 94552619137736, i64 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @9, i32 0, i32 0), i64 94552619138080, i32 71, i32 10), !dbg !1194
  store double %117, double* %21, align 8, !dbg !1194
  %118 = load double, double* %22, align 8, !dbg !1196
  %119 = fdiv double %118, 0x5FEFFFFFFFFFFFFF, !dbg !1196
  call void @fDivHandler(double %118, double 0x5FEFFFFFFFFFFFFF, double %119, i64 94552619139864, i64 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @9, i32 0, i32 0), i64 94552619140272, i32 72, i32 10), !dbg !1196
  store double %119, double* %22, align 8, !dbg !1196
  %120 = load double, double* %17, align 8, !dbg !1197
  %121 = fdiv double %120, 0x5FEFFFFFFFFFFFFF, !dbg !1197
  call void @fDivHandler(double %120, double 0x5FEFFFFFFFFFFFFF, double %121, i64 94552619142056, i64 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @9, i32 0, i32 0), i64 94552619142464, i32 73, i32 12), !dbg !1197
  store double %121, double* %17, align 8, !dbg !1197
  %122 = load double, double* %18, align 8, !dbg !1198
  %123 = fdiv double %122, 0x5FEFFFFFFFFFFFFF, !dbg !1198
  call void @fDivHandler(double %122, double 0x5FEFFFFFFFFFFFFF, double %123, i64 94552619144248, i64 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @9, i32 0, i32 0), i64 94552619144656, i32 74, i32 12), !dbg !1198
  store double %123, double* %18, align 8, !dbg !1198
  %124 = load double, double* %15, align 8, !dbg !1199
  %125 = fdiv double %124, 0x5FEFFFFFFFFFFFFF, !dbg !1199
  call void @fDivHandler(double %124, double 0x5FEFFFFFFFFFFFFF, double %125, i64 94552619146440, i64 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @9, i32 0, i32 0), i64 94552619146848, i32 75, i32 12), !dbg !1199
  store double %125, double* %15, align 8, !dbg !1199
  %126 = load double, double* %16, align 8, !dbg !1200
  %127 = fdiv double %126, 0x5FEFFFFFFFFFFFFF, !dbg !1200
  call void @fDivHandler(double %126, double 0x5FEFFFFFFFFFFFFF, double %127, i64 94552619148632, i64 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @9, i32 0, i32 0), i64 94552619149040, i32 76, i32 12), !dbg !1200
  store double %127, double* %16, align 8, !dbg !1200
  br label %128, !dbg !1201

; <label>:128:                                    ; preds = %115, %110
  %129 = load double, double* %25, align 8, !dbg !1202
  store double %129, double* %26, align 8, !dbg !1203
  %130 = load double, double* %21, align 8, !dbg !1204
  %131 = load double, double* %22, align 8, !dbg !1205
  %132 = fdiv double %130, %131, !dbg !1206
  call void @fDivHandler(double %130, double %131, double %132, i64 94552619151944, i64 94552619152328, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @9, i32 0, i32 0), i64 94552619152736, i32 80, i32 12), !dbg !1207
  store double %132, double* %25, align 8, !dbg !1207
  %133 = load double, double* %26, align 8, !dbg !1208
  %134 = load double, double* %25, align 8, !dbg !1209
  %135 = fdiv double %133, %134, !dbg !1210
  call void @fDivHandler(double %133, double %134, double %135, i64 94552619155608, i64 94552619155992, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @9, i32 0, i32 0), i64 94552619156400, i32 81, i32 17), !dbg !1211
  store double %135, double* %27, align 8, !dbg !1211
  %136 = load double, double* %27, align 8, !dbg !1212
  %137 = fsub double %136, 1.000000e+00, !dbg !1214
  call void @fSubHandler(double %136, double 1.000000e+00, double %137, i64 94552619157208, i64 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @9, i32 0, i32 0), i64 94552619157648, i32 83, i32 17), !dbg !1215
  %138 = call double @fabs(double %137) #1, !dbg !1215
  %139 = fcmp olt double %138, 0x3CD0000000000000, !dbg !1216
  %140 = call i1 @fCmpInstHandler(double %138, double 0x3CD0000000000000, i1 %139, i32 4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @9, i32 0, i32 0), i64 94552619158640, i32 83, i32 24), !dbg !1217
  br i1 %140, label %141, label %142, !dbg !1217

; <label>:141:                                    ; preds = %128
  br label %143, !dbg !1218

; <label>:142:                                    ; preds = %128
  br label %62, !dbg !1220, !llvm.loop !1222

; <label>:143:                                    ; preds = %141, %62
  %144 = load double, double* %25, align 8, !dbg !1223
  %145 = load double*, double** %11, align 8, !dbg !1224
  store double %144, double* %145, align 8, !dbg !1225
  %146 = load i32, i32* %14, align 4, !dbg !1226
  %147 = icmp eq i32 %146, 5000, !dbg !1228
  %148 = sext i32 %146 to i64, !dbg !1229
  %149 = call i1 @iCmpInstHandler(i64 %148, i64 5000, i1 %147, i32 32, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @9, i32 0, i32 0), i64 94552619162208, i32 88, i32 8), !dbg !1229
  br i1 %149, label %150, label %153, !dbg !1229

; <label>:150:                                    ; preds = %143
  br label %151, !dbg !1230, !llvm.loop !1231

; <label>:151:                                    ; preds = %150
  call void @gsl_error(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 89, i32 11), !dbg !1232
  store i32 11, i32* %6, align 4, !dbg !1232
  br label %154, !dbg !1232
                                                  ; No predecessors!
  br label %154, !dbg !1235

; <label>:153:                                    ; preds = %143
  store i32 0, i32* %6, align 4, !dbg !1237
  br label %154, !dbg !1237

; <label>:154:                                    ; preds = %153, %152, %151
  %155 = load i32, i32* %6, align 4, !dbg !1238
  ret i32 %155, !dbg !1238
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_legendre_Q0(double) #0 !dbg !1239 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct, align 8
  %5 = alloca i32, align 4
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !1242, metadata !60), !dbg !1243
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %4, metadata !1244, metadata !60), !dbg !1245
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1246, metadata !60), !dbg !1245
  %6 = load double, double* %3, align 8, !dbg !1245
  %7 = call i32 @gsl_sf_legendre_Q0_e(double %6, %struct.gsl_sf_result_struct* %4), !dbg !1245
  store i32 %7, i32* %5, align 4, !dbg !1245
  %8 = load i32, i32* %5, align 4, !dbg !1247
  %9 = icmp ne i32 %8, 0, !dbg !1247
  %10 = sext i32 %8 to i64, !dbg !1245
  %11 = call i1 @iCmpInstHandler(i64 %10, i64 0, i1 %9, i32 33, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @11, i32 0, i32 0), i64 94552619176176, i32 357, i32 3), !dbg !1245
  br i1 %11, label %12, label %18, !dbg !1245

; <label>:12:                                     ; preds = %1
  br label %13, !dbg !1249, !llvm.loop !1252

; <label>:13:                                     ; preds = %12
  %14 = load i32, i32* %5, align 4, !dbg !1254
  call void @gsl_error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 357, i32 %14), !dbg !1254
  %15 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !1254
  %16 = load double, double* %15, align 8, !dbg !1254
  store double %16, double* %2, align 8, !dbg !1254
  br label %21, !dbg !1254
                                                  ; No predecessors!
  br label %18, !dbg !1257

; <label>:18:                                     ; preds = %17, %1
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !1259
  %20 = load double, double* %19, align 8, !dbg !1259
  store double %20, double* %2, align 8, !dbg !1259
  br label %21, !dbg !1259

; <label>:21:                                     ; preds = %18, %13
  %22 = load double, double* %2, align 8, !dbg !1261
  ret double %22, !dbg !1261
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_legendre_Q1(double) #0 !dbg !1262 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct, align 8
  %5 = alloca i32, align 4
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !1263, metadata !60), !dbg !1264
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %4, metadata !1265, metadata !60), !dbg !1266
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1267, metadata !60), !dbg !1266
  %6 = load double, double* %3, align 8, !dbg !1266
  %7 = call i32 @gsl_sf_legendre_Q1_e(double %6, %struct.gsl_sf_result_struct* %4), !dbg !1266
  store i32 %7, i32* %5, align 4, !dbg !1266
  %8 = load i32, i32* %5, align 4, !dbg !1268
  %9 = icmp ne i32 %8, 0, !dbg !1268
  %10 = sext i32 %8 to i64, !dbg !1266
  %11 = call i1 @iCmpInstHandler(i64 %10, i64 0, i1 %9, i32 33, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @13, i32 0, i32 0), i64 94552619193472, i32 362, i32 3), !dbg !1266
  br i1 %11, label %12, label %18, !dbg !1266

; <label>:12:                                     ; preds = %1
  br label %13, !dbg !1270, !llvm.loop !1273

; <label>:13:                                     ; preds = %12
  %14 = load i32, i32* %5, align 4, !dbg !1275
  call void @gsl_error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 362, i32 %14), !dbg !1275
  %15 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !1275
  %16 = load double, double* %15, align 8, !dbg !1275
  store double %16, double* %2, align 8, !dbg !1275
  br label %21, !dbg !1275
                                                  ; No predecessors!
  br label %18, !dbg !1278

; <label>:18:                                     ; preds = %17, %1
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !1280
  %20 = load double, double* %19, align 8, !dbg !1280
  store double %20, double* %2, align 8, !dbg !1280
  br label %21, !dbg !1280

; <label>:21:                                     ; preds = %18, %13
  %22 = load double, double* %2, align 8, !dbg !1282
  ret double %22, !dbg !1282
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_legendre_Ql(i32, double) #0 !dbg !1283 {
  %3 = alloca double, align 8
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca %struct.gsl_sf_result_struct, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1286, metadata !60), !dbg !1287
  store double %1, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !1288, metadata !60), !dbg !1289
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %6, metadata !1290, metadata !60), !dbg !1291
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1292, metadata !60), !dbg !1291
  %8 = load i32, i32* %4, align 4, !dbg !1291
  %9 = load double, double* %5, align 8, !dbg !1291
  %10 = call i32 @gsl_sf_legendre_Ql_e(i32 %8, double %9, %struct.gsl_sf_result_struct* %6), !dbg !1291
  store i32 %10, i32* %7, align 4, !dbg !1291
  %11 = load i32, i32* %7, align 4, !dbg !1293
  %12 = icmp ne i32 %11, 0, !dbg !1293
  %13 = sext i32 %11 to i64, !dbg !1291
  %14 = call i1 @iCmpInstHandler(i64 %13, i64 0, i1 %12, i32 33, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @15, i32 0, i32 0), i64 94552619212208, i32 367, i32 3), !dbg !1291
  br i1 %14, label %15, label %21, !dbg !1291

; <label>:15:                                     ; preds = %2
  br label %16, !dbg !1295, !llvm.loop !1298

; <label>:16:                                     ; preds = %15
  %17 = load i32, i32* %7, align 4, !dbg !1300
  call void @gsl_error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 367, i32 %17), !dbg !1300
  %18 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !1300
  %19 = load double, double* %18, align 8, !dbg !1300
  store double %19, double* %3, align 8, !dbg !1300
  br label %24, !dbg !1300
                                                  ; No predecessors!
  br label %21, !dbg !1303

; <label>:21:                                     ; preds = %20, %2
  %22 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !1305
  %23 = load double, double* %22, align 8, !dbg !1305
  store double %23, double* %3, align 8, !dbg !1305
  br label %24, !dbg !1305

; <label>:24:                                     ; preds = %21, %16
  %25 = load double, double* %3, align 8, !dbg !1307
  ret double %25, !dbg !1307
}

; Function Attrs: nounwind
declare double @acos(double) #4

; Function Attrs: nounwind
declare double @sqrt(double) #4

declare i32 @gsl_sf_bessel_Y0_e(double, %struct.gsl_sf_result_struct*) #2

declare i32 @gsl_sf_bessel_Y1_e(double, %struct.gsl_sf_result_struct*) #2

declare i32 @gsl_sf_multiply_e(double, double, %struct.gsl_sf_result_struct*) #2

; Function Attrs: nounwind
declare double @acosh(double) #4

declare i32 @gsl_sf_bessel_K0_scaled_e(double, %struct.gsl_sf_result_struct*) #2

declare i32 @gsl_sf_bessel_K1_scaled_e(double, %struct.gsl_sf_result_struct*) #2

declare i32 @gsl_sf_exp_mult_e(double, double, %struct.gsl_sf_result_struct*) #2

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
!llvm.module.flags = !{!41, !42, !43}
!llvm.ident = !{!44}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "legendre_Qn.c", directory: "/fpcc/gsl-2.5/specfunc")
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
!45 = distinct !DISubprogram(name: "gsl_sf_legendre_Q0_e", scope: !1, file: !1, line: 180, type: !46, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
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
!59 = !DILocalVariable(name: "x", arg: 1, scope: !45, file: !1, line: 180, type: !49)
!60 = !DIExpression()
!61 = !DILocation(line: 180, column: 35, scope: !45)
!62 = !DILocalVariable(name: "result", arg: 2, scope: !45, file: !1, line: 180, type: !51)
!63 = !DILocation(line: 180, column: 54, scope: !45)
!64 = !DILocation(line: 184, column: 6, scope: !65)
!65 = distinct !DILexicalBlock(scope: !45, file: !1, line: 184, column: 6)
!66 = !DILocation(line: 184, column: 8, scope: !65)
!67 = !DILocation(line: 184, column: 16, scope: !65)
!68 = !DILocation(line: 184, column: 19, scope: !69)
!69 = !DILexicalBlockFile(scope: !65, file: !1, discriminator: 1)
!70 = !DILocation(line: 184, column: 21, scope: !69)
!71 = !DILocation(line: 184, column: 6, scope: !69)
!72 = !DILocation(line: 185, column: 5, scope: !73)
!73 = distinct !DILexicalBlock(scope: !65, file: !1, line: 184, column: 29)
!74 = distinct !{!74, !72}
!75 = !DILocation(line: 185, column: 5, scope: !76)
!76 = !DILexicalBlockFile(scope: !77, file: !1, discriminator: 1)
!77 = distinct !DILexicalBlock(scope: !73, file: !1, line: 185, column: 5)
!78 = distinct !{!78, !79}
!79 = !DILocation(line: 185, column: 5, scope: !77)
!80 = !DILocation(line: 185, column: 5, scope: !81)
!81 = !DILexicalBlockFile(scope: !82, file: !1, discriminator: 2)
!82 = distinct !DILexicalBlock(scope: !77, file: !1, line: 185, column: 5)
!83 = !DILocation(line: 185, column: 5, scope: !84)
!84 = !DILexicalBlockFile(scope: !77, file: !1, discriminator: 3)
!85 = !DILocation(line: 186, column: 3, scope: !73)
!86 = !DILocation(line: 187, column: 11, scope: !87)
!87 = distinct !DILexicalBlock(scope: !65, file: !1, line: 187, column: 11)
!88 = !DILocation(line: 187, column: 13, scope: !87)
!89 = !DILocation(line: 187, column: 12, scope: !87)
!90 = !DILocation(line: 187, column: 15, scope: !87)
!91 = !DILocation(line: 187, column: 11, scope: !65)
!92 = !DILocalVariable(name: "c3", scope: !93, file: !1, line: 188, type: !49)
!93 = distinct !DILexicalBlock(scope: !87, file: !1, line: 187, column: 40)
!94 = !DILocation(line: 188, column: 18, scope: !93)
!95 = !DILocalVariable(name: "c5", scope: !93, file: !1, line: 189, type: !49)
!96 = !DILocation(line: 189, column: 18, scope: !93)
!97 = !DILocalVariable(name: "c7", scope: !93, file: !1, line: 190, type: !49)
!98 = !DILocation(line: 190, column: 18, scope: !93)
!99 = !DILocalVariable(name: "c9", scope: !93, file: !1, line: 191, type: !49)
!100 = !DILocation(line: 191, column: 18, scope: !93)
!101 = !DILocalVariable(name: "c11", scope: !93, file: !1, line: 192, type: !49)
!102 = !DILocation(line: 192, column: 18, scope: !93)
!103 = !DILocalVariable(name: "y", scope: !93, file: !1, line: 193, type: !49)
!104 = !DILocation(line: 193, column: 18, scope: !93)
!105 = !DILocation(line: 193, column: 22, scope: !93)
!106 = !DILocation(line: 193, column: 26, scope: !93)
!107 = !DILocation(line: 193, column: 24, scope: !93)
!108 = !DILocalVariable(name: "series", scope: !93, file: !1, line: 194, type: !49)
!109 = !DILocation(line: 194, column: 18, scope: !93)
!110 = !DILocation(line: 194, column: 33, scope: !93)
!111 = !DILocation(line: 194, column: 41, scope: !93)
!112 = !DILocation(line: 194, column: 49, scope: !93)
!113 = !DILocation(line: 194, column: 57, scope: !93)
!114 = !DILocation(line: 194, column: 65, scope: !93)
!115 = !DILocation(line: 194, column: 66, scope: !93)
!116 = !DILocation(line: 194, column: 63, scope: !93)
!117 = !DILocation(line: 194, column: 58, scope: !93)
!118 = !DILocation(line: 194, column: 55, scope: !93)
!119 = !DILocation(line: 194, column: 50, scope: !93)
!120 = !DILocation(line: 194, column: 47, scope: !93)
!121 = !DILocation(line: 194, column: 42, scope: !93)
!122 = !DILocation(line: 194, column: 39, scope: !93)
!123 = !DILocation(line: 194, column: 34, scope: !93)
!124 = !DILocation(line: 194, column: 31, scope: !93)
!125 = !DILocation(line: 195, column: 19, scope: !93)
!126 = !DILocation(line: 195, column: 23, scope: !93)
!127 = !DILocation(line: 195, column: 21, scope: !93)
!128 = !DILocation(line: 195, column: 5, scope: !93)
!129 = !DILocation(line: 195, column: 13, scope: !93)
!130 = !DILocation(line: 195, column: 17, scope: !93)
!131 = !DILocation(line: 196, column: 48, scope: !93)
!132 = !DILocation(line: 196, column: 43, scope: !93)
!133 = !DILocation(line: 196, column: 41, scope: !93)
!134 = !DILocation(line: 196, column: 5, scope: !93)
!135 = !DILocation(line: 196, column: 13, scope: !93)
!136 = !DILocation(line: 196, column: 17, scope: !93)
!137 = !DILocation(line: 197, column: 5, scope: !93)
!138 = !DILocation(line: 199, column: 11, scope: !139)
!139 = distinct !DILexicalBlock(scope: !87, file: !1, line: 199, column: 11)
!140 = !DILocation(line: 199, column: 13, scope: !139)
!141 = !DILocation(line: 199, column: 11, scope: !87)
!142 = !DILocation(line: 201, column: 34, scope: !143)
!143 = distinct !DILexicalBlock(scope: !139, file: !1, line: 199, column: 20)
!144 = !DILocation(line: 201, column: 33, scope: !143)
!145 = !DILocation(line: 201, column: 43, scope: !143)
!146 = !DILocation(line: 201, column: 42, scope: !143)
!147 = !DILocation(line: 201, column: 44, scope: !143)
!148 = !DILocation(line: 201, column: 36, scope: !143)
!149 = !DILocation(line: 201, column: 25, scope: !143)
!150 = !DILocation(line: 201, column: 23, scope: !143)
!151 = !DILocation(line: 201, column: 5, scope: !143)
!152 = !DILocation(line: 201, column: 13, scope: !143)
!153 = !DILocation(line: 201, column: 17, scope: !143)
!154 = !DILocation(line: 202, column: 49, scope: !143)
!155 = !DILocation(line: 202, column: 57, scope: !143)
!156 = !DILocation(line: 202, column: 44, scope: !143)
!157 = !DILocation(line: 202, column: 42, scope: !143)
!158 = !DILocation(line: 202, column: 5, scope: !143)
!159 = !DILocation(line: 202, column: 13, scope: !143)
!160 = !DILocation(line: 202, column: 18, scope: !143)
!161 = !DILocation(line: 203, column: 5, scope: !143)
!162 = !DILocation(line: 205, column: 11, scope: !163)
!163 = distinct !DILexicalBlock(scope: !139, file: !1, line: 205, column: 11)
!164 = !DILocation(line: 205, column: 13, scope: !163)
!165 = !DILocation(line: 205, column: 11, scope: !139)
!166 = !DILocation(line: 207, column: 30, scope: !167)
!167 = distinct !DILexicalBlock(scope: !163, file: !1, line: 205, column: 21)
!168 = !DILocation(line: 207, column: 31, scope: !167)
!169 = !DILocation(line: 207, column: 38, scope: !167)
!170 = !DILocation(line: 207, column: 39, scope: !167)
!171 = !DILocation(line: 207, column: 43, scope: !167)
!172 = !DILocation(line: 207, column: 36, scope: !167)
!173 = !DILocation(line: 207, column: 25, scope: !167)
!174 = !DILocation(line: 207, column: 23, scope: !167)
!175 = !DILocation(line: 207, column: 5, scope: !167)
!176 = !DILocation(line: 207, column: 13, scope: !167)
!177 = !DILocation(line: 207, column: 17, scope: !167)
!178 = !DILocation(line: 208, column: 48, scope: !167)
!179 = !DILocation(line: 208, column: 56, scope: !167)
!180 = !DILocation(line: 208, column: 43, scope: !167)
!181 = !DILocation(line: 208, column: 41, scope: !167)
!182 = !DILocation(line: 208, column: 5, scope: !167)
!183 = !DILocation(line: 208, column: 13, scope: !167)
!184 = !DILocation(line: 208, column: 17, scope: !167)
!185 = !DILocation(line: 209, column: 5, scope: !167)
!186 = !DILocation(line: 211, column: 11, scope: !187)
!187 = distinct !DILexicalBlock(scope: !163, file: !1, line: 211, column: 11)
!188 = !DILocation(line: 211, column: 12, scope: !187)
!189 = !DILocation(line: 211, column: 25, scope: !187)
!190 = !DILocation(line: 211, column: 11, scope: !163)
!191 = !DILocalVariable(name: "y", scope: !192, file: !1, line: 212, type: !49)
!192 = distinct !DILexicalBlock(scope: !187, file: !1, line: 211, column: 32)
!193 = !DILocation(line: 212, column: 18, scope: !192)
!194 = !DILocation(line: 212, column: 27, scope: !192)
!195 = !DILocation(line: 212, column: 29, scope: !192)
!196 = !DILocation(line: 212, column: 28, scope: !192)
!197 = !DILocation(line: 212, column: 25, scope: !192)
!198 = !DILocalVariable(name: "c1", scope: !192, file: !1, line: 213, type: !49)
!199 = !DILocation(line: 213, column: 18, scope: !192)
!200 = !DILocalVariable(name: "c2", scope: !192, file: !1, line: 214, type: !49)
!201 = !DILocation(line: 214, column: 18, scope: !192)
!202 = !DILocalVariable(name: "c3", scope: !192, file: !1, line: 215, type: !49)
!203 = !DILocation(line: 215, column: 18, scope: !192)
!204 = !DILocalVariable(name: "c4", scope: !192, file: !1, line: 216, type: !49)
!205 = !DILocation(line: 216, column: 18, scope: !192)
!206 = !DILocalVariable(name: "c5", scope: !192, file: !1, line: 217, type: !49)
!207 = !DILocation(line: 217, column: 18, scope: !192)
!208 = !DILocalVariable(name: "c6", scope: !192, file: !1, line: 218, type: !49)
!209 = !DILocation(line: 218, column: 18, scope: !192)
!210 = !DILocalVariable(name: "c7", scope: !192, file: !1, line: 219, type: !49)
!211 = !DILocation(line: 219, column: 18, scope: !192)
!212 = !DILocation(line: 220, column: 24, scope: !192)
!213 = !DILocation(line: 220, column: 23, scope: !192)
!214 = !DILocation(line: 220, column: 36, scope: !192)
!215 = !DILocation(line: 220, column: 44, scope: !192)
!216 = !DILocation(line: 220, column: 52, scope: !192)
!217 = !DILocation(line: 220, column: 60, scope: !192)
!218 = !DILocation(line: 220, column: 68, scope: !192)
!219 = !DILocation(line: 220, column: 76, scope: !192)
!220 = !DILocation(line: 220, column: 84, scope: !192)
!221 = !DILocation(line: 220, column: 85, scope: !192)
!222 = !DILocation(line: 220, column: 82, scope: !192)
!223 = !DILocation(line: 220, column: 77, scope: !192)
!224 = !DILocation(line: 220, column: 74, scope: !192)
!225 = !DILocation(line: 220, column: 69, scope: !192)
!226 = !DILocation(line: 220, column: 66, scope: !192)
!227 = !DILocation(line: 220, column: 61, scope: !192)
!228 = !DILocation(line: 220, column: 58, scope: !192)
!229 = !DILocation(line: 220, column: 53, scope: !192)
!230 = !DILocation(line: 220, column: 50, scope: !192)
!231 = !DILocation(line: 220, column: 45, scope: !192)
!232 = !DILocation(line: 220, column: 42, scope: !192)
!233 = !DILocation(line: 220, column: 37, scope: !192)
!234 = !DILocation(line: 220, column: 34, scope: !192)
!235 = !DILocation(line: 220, column: 27, scope: !192)
!236 = !DILocation(line: 220, column: 5, scope: !192)
!237 = !DILocation(line: 220, column: 13, scope: !192)
!238 = !DILocation(line: 220, column: 17, scope: !192)
!239 = !DILocation(line: 221, column: 48, scope: !192)
!240 = !DILocation(line: 221, column: 56, scope: !192)
!241 = !DILocation(line: 221, column: 43, scope: !192)
!242 = !DILocation(line: 221, column: 41, scope: !192)
!243 = !DILocation(line: 221, column: 5, scope: !192)
!244 = !DILocation(line: 221, column: 13, scope: !192)
!245 = !DILocation(line: 221, column: 17, scope: !192)
!246 = !DILocation(line: 222, column: 5, scope: !192)
!247 = !DILocation(line: 225, column: 5, scope: !248)
!248 = distinct !DILexicalBlock(scope: !187, file: !1, line: 224, column: 8)
!249 = distinct !{!249, !247}
!250 = !DILocation(line: 225, column: 5, scope: !251)
!251 = !DILexicalBlockFile(scope: !252, file: !1, discriminator: 1)
!252 = distinct !DILexicalBlock(scope: !248, file: !1, line: 225, column: 5)
!253 = distinct !{!253, !254}
!254 = !DILocation(line: 225, column: 5, scope: !252)
!255 = !DILocation(line: 225, column: 5, scope: !256)
!256 = !DILexicalBlockFile(scope: !257, file: !1, discriminator: 2)
!257 = distinct !DILexicalBlock(scope: !252, file: !1, line: 225, column: 5)
!258 = !DILocation(line: 225, column: 5, scope: !259)
!259 = !DILexicalBlockFile(scope: !252, file: !1, discriminator: 3)
!260 = !DILocation(line: 227, column: 1, scope: !45)
!261 = distinct !DISubprogram(name: "gsl_sf_legendre_Q1_e", scope: !1, file: !1, line: 231, type: !46, isLocal: false, isDefinition: true, scopeLine: 232, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!262 = !DILocalVariable(name: "x", arg: 1, scope: !261, file: !1, line: 231, type: !49)
!263 = !DILocation(line: 231, column: 35, scope: !261)
!264 = !DILocalVariable(name: "result", arg: 2, scope: !261, file: !1, line: 231, type: !51)
!265 = !DILocation(line: 231, column: 54, scope: !261)
!266 = !DILocation(line: 235, column: 6, scope: !267)
!267 = distinct !DILexicalBlock(scope: !261, file: !1, line: 235, column: 6)
!268 = !DILocation(line: 235, column: 8, scope: !267)
!269 = !DILocation(line: 235, column: 16, scope: !267)
!270 = !DILocation(line: 235, column: 19, scope: !271)
!271 = !DILexicalBlockFile(scope: !267, file: !1, discriminator: 1)
!272 = !DILocation(line: 235, column: 21, scope: !271)
!273 = !DILocation(line: 235, column: 6, scope: !271)
!274 = !DILocation(line: 236, column: 5, scope: !275)
!275 = distinct !DILexicalBlock(scope: !267, file: !1, line: 235, column: 29)
!276 = distinct !{!276, !274}
!277 = !DILocation(line: 236, column: 5, scope: !278)
!278 = !DILexicalBlockFile(scope: !279, file: !1, discriminator: 1)
!279 = distinct !DILexicalBlock(scope: !275, file: !1, line: 236, column: 5)
!280 = distinct !{!280, !281}
!281 = !DILocation(line: 236, column: 5, scope: !279)
!282 = !DILocation(line: 236, column: 5, scope: !283)
!283 = !DILexicalBlockFile(scope: !284, file: !1, discriminator: 2)
!284 = distinct !DILexicalBlock(scope: !279, file: !1, line: 236, column: 5)
!285 = !DILocation(line: 236, column: 5, scope: !286)
!286 = !DILexicalBlockFile(scope: !279, file: !1, discriminator: 3)
!287 = !DILocation(line: 237, column: 3, scope: !275)
!288 = !DILocation(line: 238, column: 11, scope: !289)
!289 = distinct !DILexicalBlock(scope: !267, file: !1, line: 238, column: 11)
!290 = !DILocation(line: 238, column: 13, scope: !289)
!291 = !DILocation(line: 238, column: 12, scope: !289)
!292 = !DILocation(line: 238, column: 15, scope: !289)
!293 = !DILocation(line: 238, column: 11, scope: !267)
!294 = !DILocalVariable(name: "c3", scope: !295, file: !1, line: 239, type: !49)
!295 = distinct !DILexicalBlock(scope: !289, file: !1, line: 238, column: 40)
!296 = !DILocation(line: 239, column: 18, scope: !295)
!297 = !DILocalVariable(name: "c5", scope: !295, file: !1, line: 240, type: !49)
!298 = !DILocation(line: 240, column: 18, scope: !295)
!299 = !DILocalVariable(name: "c7", scope: !295, file: !1, line: 241, type: !49)
!300 = !DILocation(line: 241, column: 18, scope: !295)
!301 = !DILocalVariable(name: "c9", scope: !295, file: !1, line: 242, type: !49)
!302 = !DILocation(line: 242, column: 18, scope: !295)
!303 = !DILocalVariable(name: "c11", scope: !295, file: !1, line: 243, type: !49)
!304 = !DILocation(line: 243, column: 18, scope: !295)
!305 = !DILocalVariable(name: "y", scope: !295, file: !1, line: 244, type: !49)
!306 = !DILocation(line: 244, column: 18, scope: !295)
!307 = !DILocation(line: 244, column: 22, scope: !295)
!308 = !DILocation(line: 244, column: 26, scope: !295)
!309 = !DILocation(line: 244, column: 24, scope: !295)
!310 = !DILocalVariable(name: "series", scope: !295, file: !1, line: 245, type: !49)
!311 = !DILocation(line: 245, column: 18, scope: !295)
!312 = !DILocation(line: 245, column: 33, scope: !295)
!313 = !DILocation(line: 245, column: 41, scope: !295)
!314 = !DILocation(line: 245, column: 49, scope: !295)
!315 = !DILocation(line: 245, column: 57, scope: !295)
!316 = !DILocation(line: 245, column: 65, scope: !295)
!317 = !DILocation(line: 245, column: 66, scope: !295)
!318 = !DILocation(line: 245, column: 63, scope: !295)
!319 = !DILocation(line: 245, column: 58, scope: !295)
!320 = !DILocation(line: 245, column: 55, scope: !295)
!321 = !DILocation(line: 245, column: 50, scope: !295)
!322 = !DILocation(line: 245, column: 47, scope: !295)
!323 = !DILocation(line: 245, column: 42, scope: !295)
!324 = !DILocation(line: 245, column: 39, scope: !295)
!325 = !DILocation(line: 245, column: 34, scope: !295)
!326 = !DILocation(line: 245, column: 31, scope: !295)
!327 = !DILocation(line: 246, column: 19, scope: !295)
!328 = !DILocation(line: 246, column: 23, scope: !295)
!329 = !DILocation(line: 246, column: 21, scope: !295)
!330 = !DILocation(line: 246, column: 27, scope: !295)
!331 = !DILocation(line: 246, column: 25, scope: !295)
!332 = !DILocation(line: 246, column: 34, scope: !295)
!333 = !DILocation(line: 246, column: 5, scope: !295)
!334 = !DILocation(line: 246, column: 13, scope: !295)
!335 = !DILocation(line: 246, column: 17, scope: !295)
!336 = !DILocation(line: 247, column: 48, scope: !295)
!337 = !DILocation(line: 247, column: 56, scope: !295)
!338 = !DILocation(line: 247, column: 43, scope: !295)
!339 = !DILocation(line: 247, column: 41, scope: !295)
!340 = !DILocation(line: 247, column: 5, scope: !295)
!341 = !DILocation(line: 247, column: 13, scope: !295)
!342 = !DILocation(line: 247, column: 17, scope: !295)
!343 = !DILocation(line: 248, column: 5, scope: !295)
!344 = !DILocation(line: 250, column: 11, scope: !345)
!345 = distinct !DILexicalBlock(scope: !289, file: !1, line: 250, column: 11)
!346 = !DILocation(line: 250, column: 13, scope: !345)
!347 = !DILocation(line: 250, column: 11, scope: !289)
!348 = !DILocation(line: 251, column: 25, scope: !349)
!349 = distinct !DILexicalBlock(scope: !345, file: !1, line: 250, column: 19)
!350 = !DILocation(line: 251, column: 23, scope: !349)
!351 = !DILocation(line: 251, column: 39, scope: !349)
!352 = !DILocation(line: 251, column: 38, scope: !349)
!353 = !DILocation(line: 251, column: 47, scope: !349)
!354 = !DILocation(line: 251, column: 46, scope: !349)
!355 = !DILocation(line: 251, column: 41, scope: !349)
!356 = !DILocation(line: 251, column: 30, scope: !349)
!357 = !DILocation(line: 251, column: 27, scope: !349)
!358 = !DILocation(line: 251, column: 52, scope: !349)
!359 = !DILocation(line: 251, column: 5, scope: !349)
!360 = !DILocation(line: 251, column: 13, scope: !349)
!361 = !DILocation(line: 251, column: 17, scope: !349)
!362 = !DILocation(line: 252, column: 49, scope: !349)
!363 = !DILocation(line: 252, column: 57, scope: !349)
!364 = !DILocation(line: 252, column: 44, scope: !349)
!365 = !DILocation(line: 252, column: 42, scope: !349)
!366 = !DILocation(line: 252, column: 5, scope: !349)
!367 = !DILocation(line: 252, column: 13, scope: !349)
!368 = !DILocation(line: 252, column: 18, scope: !349)
!369 = !DILocation(line: 253, column: 5, scope: !349)
!370 = !DILocation(line: 255, column: 11, scope: !371)
!371 = distinct !DILexicalBlock(scope: !345, file: !1, line: 255, column: 11)
!372 = !DILocation(line: 255, column: 13, scope: !371)
!373 = !DILocation(line: 255, column: 11, scope: !345)
!374 = !DILocation(line: 256, column: 25, scope: !375)
!375 = distinct !DILexicalBlock(scope: !371, file: !1, line: 255, column: 20)
!376 = !DILocation(line: 256, column: 23, scope: !375)
!377 = !DILocation(line: 256, column: 34, scope: !375)
!378 = !DILocation(line: 256, column: 35, scope: !375)
!379 = !DILocation(line: 256, column: 42, scope: !375)
!380 = !DILocation(line: 256, column: 43, scope: !375)
!381 = !DILocation(line: 256, column: 40, scope: !375)
!382 = !DILocation(line: 256, column: 29, scope: !375)
!383 = !DILocation(line: 256, column: 27, scope: !375)
!384 = !DILocation(line: 256, column: 50, scope: !375)
!385 = !DILocation(line: 256, column: 5, scope: !375)
!386 = !DILocation(line: 256, column: 13, scope: !375)
!387 = !DILocation(line: 256, column: 17, scope: !375)
!388 = !DILocation(line: 257, column: 48, scope: !375)
!389 = !DILocation(line: 257, column: 56, scope: !375)
!390 = !DILocation(line: 257, column: 43, scope: !375)
!391 = !DILocation(line: 257, column: 41, scope: !375)
!392 = !DILocation(line: 257, column: 5, scope: !375)
!393 = !DILocation(line: 257, column: 13, scope: !375)
!394 = !DILocation(line: 257, column: 17, scope: !375)
!395 = !DILocation(line: 258, column: 5, scope: !375)
!396 = !DILocation(line: 260, column: 11, scope: !397)
!397 = distinct !DILexicalBlock(scope: !371, file: !1, line: 260, column: 11)
!398 = !DILocation(line: 260, column: 12, scope: !397)
!399 = !DILocation(line: 260, column: 30, scope: !397)
!400 = !DILocation(line: 260, column: 11, scope: !371)
!401 = !DILocalVariable(name: "y", scope: !402, file: !1, line: 261, type: !49)
!402 = distinct !DILexicalBlock(scope: !397, file: !1, line: 260, column: 46)
!403 = !DILocation(line: 261, column: 18, scope: !402)
!404 = !DILocation(line: 261, column: 25, scope: !402)
!405 = !DILocation(line: 261, column: 27, scope: !402)
!406 = !DILocation(line: 261, column: 26, scope: !402)
!407 = !DILocation(line: 261, column: 23, scope: !402)
!408 = !DILocalVariable(name: "c1", scope: !402, file: !1, line: 262, type: !49)
!409 = !DILocation(line: 262, column: 18, scope: !402)
!410 = !DILocalVariable(name: "c2", scope: !402, file: !1, line: 263, type: !49)
!411 = !DILocation(line: 263, column: 18, scope: !402)
!412 = !DILocalVariable(name: "c3", scope: !402, file: !1, line: 264, type: !49)
!413 = !DILocation(line: 264, column: 18, scope: !402)
!414 = !DILocalVariable(name: "c4", scope: !402, file: !1, line: 265, type: !49)
!415 = !DILocation(line: 265, column: 18, scope: !402)
!416 = !DILocalVariable(name: "c5", scope: !402, file: !1, line: 266, type: !49)
!417 = !DILocation(line: 266, column: 18, scope: !402)
!418 = !DILocalVariable(name: "c6", scope: !402, file: !1, line: 267, type: !49)
!419 = !DILocation(line: 267, column: 18, scope: !402)
!420 = !DILocalVariable(name: "c7", scope: !402, file: !1, line: 268, type: !49)
!421 = !DILocation(line: 268, column: 18, scope: !402)
!422 = !DILocalVariable(name: "c8", scope: !402, file: !1, line: 269, type: !49)
!423 = !DILocation(line: 269, column: 18, scope: !402)
!424 = !DILocalVariable(name: "sum", scope: !402, file: !1, line: 270, type: !49)
!425 = !DILocation(line: 270, column: 18, scope: !402)
!426 = !DILocation(line: 270, column: 30, scope: !402)
!427 = !DILocation(line: 270, column: 38, scope: !402)
!428 = !DILocation(line: 270, column: 46, scope: !402)
!429 = !DILocation(line: 270, column: 54, scope: !402)
!430 = !DILocation(line: 270, column: 62, scope: !402)
!431 = !DILocation(line: 270, column: 70, scope: !402)
!432 = !DILocation(line: 270, column: 78, scope: !402)
!433 = !DILocation(line: 270, column: 86, scope: !402)
!434 = !DILocation(line: 270, column: 87, scope: !402)
!435 = !DILocation(line: 270, column: 84, scope: !402)
!436 = !DILocation(line: 270, column: 79, scope: !402)
!437 = !DILocation(line: 270, column: 76, scope: !402)
!438 = !DILocation(line: 270, column: 71, scope: !402)
!439 = !DILocation(line: 270, column: 68, scope: !402)
!440 = !DILocation(line: 270, column: 63, scope: !402)
!441 = !DILocation(line: 270, column: 60, scope: !402)
!442 = !DILocation(line: 270, column: 55, scope: !402)
!443 = !DILocation(line: 270, column: 52, scope: !402)
!444 = !DILocation(line: 270, column: 47, scope: !402)
!445 = !DILocation(line: 270, column: 44, scope: !402)
!446 = !DILocation(line: 270, column: 39, scope: !402)
!447 = !DILocation(line: 270, column: 36, scope: !402)
!448 = !DILocation(line: 270, column: 31, scope: !402)
!449 = !DILocation(line: 270, column: 28, scope: !402)
!450 = !DILocation(line: 271, column: 19, scope: !402)
!451 = !DILocation(line: 271, column: 30, scope: !402)
!452 = !DILocation(line: 271, column: 29, scope: !402)
!453 = !DILocation(line: 271, column: 32, scope: !402)
!454 = !DILocation(line: 271, column: 31, scope: !402)
!455 = !DILocation(line: 271, column: 23, scope: !402)
!456 = !DILocation(line: 271, column: 5, scope: !402)
!457 = !DILocation(line: 271, column: 13, scope: !402)
!458 = !DILocation(line: 271, column: 17, scope: !402)
!459 = !DILocation(line: 272, column: 48, scope: !402)
!460 = !DILocation(line: 272, column: 56, scope: !402)
!461 = !DILocation(line: 272, column: 43, scope: !402)
!462 = !DILocation(line: 272, column: 41, scope: !402)
!463 = !DILocation(line: 272, column: 5, scope: !402)
!464 = !DILocation(line: 272, column: 13, scope: !402)
!465 = !DILocation(line: 272, column: 17, scope: !402)
!466 = !DILocation(line: 273, column: 5, scope: !402)
!467 = !DILocation(line: 276, column: 5, scope: !468)
!468 = distinct !DILexicalBlock(scope: !397, file: !1, line: 275, column: 8)
!469 = distinct !{!469, !467}
!470 = !DILocation(line: 276, column: 5, scope: !471)
!471 = !DILexicalBlockFile(scope: !472, file: !1, discriminator: 1)
!472 = distinct !DILexicalBlock(scope: !468, file: !1, line: 276, column: 5)
!473 = distinct !{!473, !474}
!474 = !DILocation(line: 276, column: 5, scope: !472)
!475 = !DILocation(line: 276, column: 5, scope: !476)
!476 = !DILexicalBlockFile(scope: !477, file: !1, discriminator: 2)
!477 = distinct !DILexicalBlock(scope: !472, file: !1, line: 276, column: 5)
!478 = !DILocation(line: 276, column: 5, scope: !479)
!479 = !DILexicalBlockFile(scope: !472, file: !1, discriminator: 3)
!480 = !DILocation(line: 278, column: 1, scope: !261)
!481 = distinct !DISubprogram(name: "gsl_sf_legendre_Ql_e", scope: !1, file: !1, line: 282, type: !482, isLocal: false, isDefinition: true, scopeLine: 283, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!482 = !DISubroutineType(types: !483)
!483 = !{!48, !484, !49, !51}
!484 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !48)
!485 = !DILocalVariable(name: "l", arg: 1, scope: !481, file: !1, line: 282, type: !484)
!486 = !DILocation(line: 282, column: 32, scope: !481)
!487 = !DILocalVariable(name: "x", arg: 2, scope: !481, file: !1, line: 282, type: !49)
!488 = !DILocation(line: 282, column: 48, scope: !481)
!489 = !DILocalVariable(name: "result", arg: 3, scope: !481, file: !1, line: 282, type: !51)
!490 = !DILocation(line: 282, column: 67, scope: !481)
!491 = !DILocation(line: 286, column: 6, scope: !492)
!492 = distinct !DILexicalBlock(scope: !481, file: !1, line: 286, column: 6)
!493 = !DILocation(line: 286, column: 8, scope: !492)
!494 = !DILocation(line: 286, column: 16, scope: !492)
!495 = !DILocation(line: 286, column: 19, scope: !496)
!496 = !DILexicalBlockFile(scope: !492, file: !1, discriminator: 1)
!497 = !DILocation(line: 286, column: 21, scope: !496)
!498 = !DILocation(line: 286, column: 28, scope: !496)
!499 = !DILocation(line: 286, column: 31, scope: !500)
!500 = !DILexicalBlockFile(scope: !492, file: !1, discriminator: 2)
!501 = !DILocation(line: 286, column: 33, scope: !500)
!502 = !DILocation(line: 286, column: 6, scope: !500)
!503 = !DILocation(line: 287, column: 5, scope: !504)
!504 = distinct !DILexicalBlock(scope: !492, file: !1, line: 286, column: 38)
!505 = distinct !{!505, !503}
!506 = !DILocation(line: 287, column: 5, scope: !507)
!507 = !DILexicalBlockFile(scope: !508, file: !1, discriminator: 1)
!508 = distinct !DILexicalBlock(scope: !504, file: !1, line: 287, column: 5)
!509 = distinct !{!509, !510}
!510 = !DILocation(line: 287, column: 5, scope: !508)
!511 = !DILocation(line: 287, column: 5, scope: !512)
!512 = !DILexicalBlockFile(scope: !513, file: !1, discriminator: 2)
!513 = distinct !DILexicalBlock(scope: !508, file: !1, line: 287, column: 5)
!514 = !DILocation(line: 287, column: 5, scope: !515)
!515 = !DILexicalBlockFile(scope: !508, file: !1, discriminator: 3)
!516 = !DILocation(line: 288, column: 3, scope: !504)
!517 = !DILocation(line: 289, column: 11, scope: !518)
!518 = distinct !DILexicalBlock(scope: !492, file: !1, line: 289, column: 11)
!519 = !DILocation(line: 289, column: 13, scope: !518)
!520 = !DILocation(line: 289, column: 11, scope: !492)
!521 = !DILocation(line: 290, column: 33, scope: !522)
!522 = distinct !DILexicalBlock(scope: !518, file: !1, line: 289, column: 19)
!523 = !DILocation(line: 290, column: 36, scope: !522)
!524 = !DILocation(line: 290, column: 12, scope: !522)
!525 = !DILocation(line: 290, column: 5, scope: !522)
!526 = !DILocation(line: 292, column: 11, scope: !527)
!527 = distinct !DILexicalBlock(scope: !518, file: !1, line: 292, column: 11)
!528 = !DILocation(line: 292, column: 13, scope: !527)
!529 = !DILocation(line: 292, column: 11, scope: !518)
!530 = !DILocation(line: 293, column: 33, scope: !531)
!531 = distinct !DILexicalBlock(scope: !527, file: !1, line: 292, column: 19)
!532 = !DILocation(line: 293, column: 36, scope: !531)
!533 = !DILocation(line: 293, column: 12, scope: !531)
!534 = !DILocation(line: 293, column: 5, scope: !531)
!535 = !DILocation(line: 295, column: 11, scope: !536)
!536 = distinct !DILexicalBlock(scope: !527, file: !1, line: 295, column: 11)
!537 = !DILocation(line: 295, column: 13, scope: !536)
!538 = !DILocation(line: 295, column: 11, scope: !527)
!539 = !DILocation(line: 296, column: 35, scope: !540)
!540 = distinct !DILexicalBlock(scope: !536, file: !1, line: 295, column: 23)
!541 = !DILocation(line: 296, column: 38, scope: !540)
!542 = !DILocation(line: 296, column: 41, scope: !540)
!543 = !DILocation(line: 296, column: 12, scope: !540)
!544 = !DILocation(line: 296, column: 5, scope: !540)
!545 = !DILocation(line: 298, column: 11, scope: !546)
!546 = distinct !DILexicalBlock(scope: !536, file: !1, line: 298, column: 11)
!547 = !DILocation(line: 298, column: 13, scope: !546)
!548 = !DILocation(line: 298, column: 11, scope: !536)
!549 = !DILocalVariable(name: "Q0", scope: !550, file: !1, line: 301, type: !52)
!550 = distinct !DILexicalBlock(scope: !546, file: !1, line: 298, column: 19)
!551 = !DILocation(line: 301, column: 19, scope: !550)
!552 = !DILocalVariable(name: "Q1", scope: !550, file: !1, line: 301, type: !52)
!553 = !DILocation(line: 301, column: 23, scope: !550)
!554 = !DILocalVariable(name: "stat_Q0", scope: !550, file: !1, line: 302, type: !48)
!555 = !DILocation(line: 302, column: 9, scope: !550)
!556 = !DILocation(line: 302, column: 40, scope: !550)
!557 = !DILocation(line: 302, column: 19, scope: !550)
!558 = !DILocalVariable(name: "stat_Q1", scope: !550, file: !1, line: 303, type: !48)
!559 = !DILocation(line: 303, column: 9, scope: !550)
!560 = !DILocation(line: 303, column: 40, scope: !550)
!561 = !DILocation(line: 303, column: 19, scope: !550)
!562 = !DILocalVariable(name: "Qellm1", scope: !550, file: !1, line: 304, type: !50)
!563 = !DILocation(line: 304, column: 12, scope: !550)
!564 = !DILocation(line: 304, column: 24, scope: !550)
!565 = !DILocalVariable(name: "Qell", scope: !550, file: !1, line: 305, type: !50)
!566 = !DILocation(line: 305, column: 12, scope: !550)
!567 = !DILocation(line: 305, column: 24, scope: !550)
!568 = !DILocalVariable(name: "Qellp1", scope: !550, file: !1, line: 306, type: !50)
!569 = !DILocation(line: 306, column: 12, scope: !550)
!570 = !DILocalVariable(name: "ell", scope: !550, file: !1, line: 307, type: !48)
!571 = !DILocation(line: 307, column: 9, scope: !550)
!572 = !DILocation(line: 308, column: 12, scope: !573)
!573 = distinct !DILexicalBlock(scope: !550, file: !1, line: 308, column: 5)
!574 = !DILocation(line: 308, column: 9, scope: !573)
!575 = !DILocation(line: 308, column: 16, scope: !576)
!576 = !DILexicalBlockFile(scope: !577, file: !1, discriminator: 1)
!577 = distinct !DILexicalBlock(scope: !573, file: !1, line: 308, column: 5)
!578 = !DILocation(line: 308, column: 20, scope: !576)
!579 = !DILocation(line: 308, column: 19, scope: !576)
!580 = !DILocation(line: 308, column: 5, scope: !576)
!581 = !DILocation(line: 309, column: 17, scope: !582)
!582 = distinct !DILexicalBlock(scope: !577, file: !1, line: 308, column: 30)
!583 = !DILocation(line: 309, column: 24, scope: !582)
!584 = !DILocation(line: 309, column: 23, scope: !582)
!585 = !DILocation(line: 309, column: 28, scope: !582)
!586 = !DILocation(line: 309, column: 18, scope: !582)
!587 = !DILocation(line: 309, column: 37, scope: !582)
!588 = !DILocation(line: 309, column: 35, scope: !582)
!589 = !DILocation(line: 309, column: 44, scope: !582)
!590 = !DILocation(line: 309, column: 50, scope: !582)
!591 = !DILocation(line: 309, column: 48, scope: !582)
!592 = !DILocation(line: 309, column: 42, scope: !582)
!593 = !DILocation(line: 309, column: 61, scope: !582)
!594 = !DILocation(line: 309, column: 65, scope: !582)
!595 = !DILocation(line: 309, column: 58, scope: !582)
!596 = !DILocation(line: 309, column: 14, scope: !582)
!597 = !DILocation(line: 310, column: 16, scope: !582)
!598 = !DILocation(line: 310, column: 14, scope: !582)
!599 = !DILocation(line: 311, column: 16, scope: !582)
!600 = !DILocation(line: 311, column: 14, scope: !582)
!601 = !DILocation(line: 312, column: 5, scope: !582)
!602 = !DILocation(line: 308, column: 26, scope: !603)
!603 = !DILexicalBlockFile(scope: !577, file: !1, discriminator: 2)
!604 = !DILocation(line: 308, column: 5, scope: !603)
!605 = distinct !{!605, !606}
!606 = !DILocation(line: 308, column: 5, scope: !550)
!607 = !DILocation(line: 313, column: 19, scope: !550)
!608 = !DILocation(line: 313, column: 5, scope: !550)
!609 = !DILocation(line: 313, column: 13, scope: !550)
!610 = !DILocation(line: 313, column: 17, scope: !550)
!611 = !DILocation(line: 314, column: 37, scope: !550)
!612 = !DILocation(line: 314, column: 35, scope: !550)
!613 = !DILocation(line: 314, column: 46, scope: !550)
!614 = !DILocation(line: 314, column: 54, scope: !550)
!615 = !DILocation(line: 314, column: 41, scope: !550)
!616 = !DILocation(line: 314, column: 39, scope: !550)
!617 = !DILocation(line: 314, column: 5, scope: !550)
!618 = !DILocation(line: 314, column: 13, scope: !550)
!619 = !DILocation(line: 314, column: 17, scope: !550)
!620 = !DILocation(line: 315, column: 12, scope: !550)
!621 = !DILocation(line: 315, column: 12, scope: !622)
!622 = !DILexicalBlockFile(scope: !550, file: !1, discriminator: 1)
!623 = !DILocation(line: 315, column: 12, scope: !624)
!624 = !DILexicalBlockFile(scope: !550, file: !1, discriminator: 2)
!625 = !DILocation(line: 315, column: 12, scope: !626)
!626 = !DILexicalBlockFile(scope: !550, file: !1, discriminator: 3)
!627 = !DILocation(line: 315, column: 12, scope: !628)
!628 = !DILexicalBlockFile(scope: !550, file: !1, discriminator: 4)
!629 = !DILocation(line: 315, column: 12, scope: !630)
!630 = !DILexicalBlockFile(scope: !550, file: !1, discriminator: 5)
!631 = !DILocation(line: 315, column: 12, scope: !632)
!632 = !DILexicalBlockFile(scope: !550, file: !1, discriminator: 6)
!633 = !DILocation(line: 315, column: 5, scope: !632)
!634 = !DILocalVariable(name: "rat", scope: !635, file: !1, line: 320, type: !50)
!635 = distinct !DILexicalBlock(scope: !546, file: !1, line: 317, column: 8)
!636 = !DILocation(line: 320, column: 12, scope: !635)
!637 = !DILocalVariable(name: "stat_CF1", scope: !635, file: !1, line: 321, type: !48)
!638 = !DILocation(line: 321, column: 9, scope: !635)
!639 = !DILocation(line: 321, column: 40, scope: !635)
!640 = !DILocation(line: 321, column: 53, scope: !635)
!641 = !DILocation(line: 321, column: 21, scope: !635)
!642 = !DILocalVariable(name: "stat_Q", scope: !635, file: !1, line: 322, type: !48)
!643 = !DILocation(line: 322, column: 9, scope: !635)
!644 = !DILocalVariable(name: "Qellp1", scope: !635, file: !1, line: 323, type: !50)
!645 = !DILocation(line: 323, column: 12, scope: !635)
!646 = !DILocation(line: 323, column: 21, scope: !635)
!647 = !DILocation(line: 323, column: 25, scope: !635)
!648 = !DILocalVariable(name: "Qell", scope: !635, file: !1, line: 324, type: !50)
!649 = !DILocation(line: 324, column: 12, scope: !635)
!650 = !DILocalVariable(name: "Qellm1", scope: !635, file: !1, line: 325, type: !50)
!651 = !DILocation(line: 325, column: 12, scope: !635)
!652 = !DILocalVariable(name: "ell", scope: !635, file: !1, line: 326, type: !48)
!653 = !DILocation(line: 326, column: 9, scope: !635)
!654 = !DILocation(line: 327, column: 13, scope: !655)
!655 = distinct !DILexicalBlock(scope: !635, file: !1, line: 327, column: 5)
!656 = !DILocation(line: 327, column: 12, scope: !655)
!657 = !DILocation(line: 327, column: 9, scope: !655)
!658 = !DILocation(line: 327, column: 16, scope: !659)
!659 = !DILexicalBlockFile(scope: !660, file: !1, discriminator: 1)
!660 = distinct !DILexicalBlock(scope: !655, file: !1, line: 327, column: 5)
!661 = !DILocation(line: 327, column: 19, scope: !659)
!662 = !DILocation(line: 327, column: 5, scope: !659)
!663 = !DILocation(line: 328, column: 17, scope: !664)
!664 = distinct !DILexicalBlock(scope: !660, file: !1, line: 327, column: 30)
!665 = !DILocation(line: 328, column: 26, scope: !664)
!666 = !DILocation(line: 328, column: 25, scope: !664)
!667 = !DILocation(line: 328, column: 30, scope: !664)
!668 = !DILocation(line: 328, column: 19, scope: !664)
!669 = !DILocation(line: 328, column: 39, scope: !664)
!670 = !DILocation(line: 328, column: 37, scope: !664)
!671 = !DILocation(line: 328, column: 47, scope: !664)
!672 = !DILocation(line: 328, column: 50, scope: !664)
!673 = !DILocation(line: 328, column: 58, scope: !664)
!674 = !DILocation(line: 328, column: 56, scope: !664)
!675 = !DILocation(line: 328, column: 44, scope: !664)
!676 = !DILocation(line: 328, column: 68, scope: !664)
!677 = !DILocation(line: 328, column: 66, scope: !664)
!678 = !DILocation(line: 328, column: 14, scope: !664)
!679 = !DILocation(line: 329, column: 16, scope: !664)
!680 = !DILocation(line: 329, column: 14, scope: !664)
!681 = !DILocation(line: 330, column: 16, scope: !664)
!682 = !DILocation(line: 330, column: 14, scope: !664)
!683 = !DILocation(line: 331, column: 5, scope: !664)
!684 = !DILocation(line: 327, column: 26, scope: !685)
!685 = !DILexicalBlockFile(scope: !660, file: !1, discriminator: 2)
!686 = !DILocation(line: 327, column: 5, scope: !685)
!687 = distinct !{!687, !688}
!688 = !DILocation(line: 327, column: 5, scope: !635)
!689 = !DILocation(line: 333, column: 13, scope: !690)
!690 = distinct !DILexicalBlock(scope: !635, file: !1, line: 333, column: 8)
!691 = !DILocation(line: 333, column: 8, scope: !690)
!692 = !DILocation(line: 333, column: 26, scope: !690)
!693 = !DILocation(line: 333, column: 21, scope: !694)
!694 = !DILexicalBlockFile(scope: !690, file: !1, discriminator: 1)
!695 = !DILocation(line: 333, column: 19, scope: !690)
!696 = !DILocation(line: 333, column: 8, scope: !635)
!697 = !DILocalVariable(name: "Q0", scope: !698, file: !1, line: 334, type: !52)
!698 = distinct !DILexicalBlock(scope: !690, file: !1, line: 333, column: 35)
!699 = !DILocation(line: 334, column: 21, scope: !698)
!700 = !DILocation(line: 335, column: 37, scope: !698)
!701 = !DILocation(line: 335, column: 16, scope: !698)
!702 = !DILocation(line: 335, column: 14, scope: !698)
!703 = !DILocation(line: 336, column: 43, scope: !698)
!704 = !DILocation(line: 336, column: 38, scope: !698)
!705 = !DILocation(line: 336, column: 49, scope: !698)
!706 = !DILocation(line: 336, column: 47, scope: !698)
!707 = !DILocation(line: 336, column: 7, scope: !698)
!708 = !DILocation(line: 336, column: 15, scope: !698)
!709 = !DILocation(line: 336, column: 19, scope: !698)
!710 = !DILocation(line: 337, column: 21, scope: !698)
!711 = !DILocation(line: 337, column: 23, scope: !698)
!712 = !DILocation(line: 337, column: 48, scope: !698)
!713 = !DILocation(line: 337, column: 56, scope: !698)
!714 = !DILocation(line: 337, column: 43, scope: !698)
!715 = !DILocation(line: 337, column: 41, scope: !698)
!716 = !DILocation(line: 337, column: 7, scope: !698)
!717 = !DILocation(line: 337, column: 15, scope: !698)
!718 = !DILocation(line: 337, column: 19, scope: !698)
!719 = !DILocation(line: 338, column: 5, scope: !698)
!720 = !DILocalVariable(name: "Q1", scope: !721, file: !1, line: 340, type: !52)
!721 = distinct !DILexicalBlock(scope: !690, file: !1, line: 339, column: 10)
!722 = !DILocation(line: 340, column: 21, scope: !721)
!723 = !DILocation(line: 341, column: 37, scope: !721)
!724 = !DILocation(line: 341, column: 16, scope: !721)
!725 = !DILocation(line: 341, column: 14, scope: !721)
!726 = !DILocation(line: 342, column: 43, scope: !721)
!727 = !DILocation(line: 342, column: 38, scope: !721)
!728 = !DILocation(line: 342, column: 49, scope: !721)
!729 = !DILocation(line: 342, column: 47, scope: !721)
!730 = !DILocation(line: 342, column: 7, scope: !721)
!731 = !DILocation(line: 342, column: 15, scope: !721)
!732 = !DILocation(line: 342, column: 19, scope: !721)
!733 = !DILocation(line: 343, column: 21, scope: !721)
!734 = !DILocation(line: 343, column: 23, scope: !721)
!735 = !DILocation(line: 343, column: 48, scope: !721)
!736 = !DILocation(line: 343, column: 56, scope: !721)
!737 = !DILocation(line: 343, column: 43, scope: !721)
!738 = !DILocation(line: 343, column: 41, scope: !721)
!739 = !DILocation(line: 343, column: 7, scope: !721)
!740 = !DILocation(line: 343, column: 15, scope: !721)
!741 = !DILocation(line: 343, column: 19, scope: !721)
!742 = !DILocation(line: 346, column: 12, scope: !635)
!743 = !DILocation(line: 346, column: 12, scope: !744)
!744 = !DILexicalBlockFile(scope: !635, file: !1, discriminator: 1)
!745 = !DILocation(line: 346, column: 12, scope: !746)
!746 = !DILexicalBlockFile(scope: !635, file: !1, discriminator: 2)
!747 = !DILocation(line: 346, column: 12, scope: !748)
!748 = !DILexicalBlockFile(scope: !635, file: !1, discriminator: 3)
!749 = !DILocation(line: 346, column: 12, scope: !750)
!750 = !DILexicalBlockFile(scope: !635, file: !1, discriminator: 4)
!751 = !DILocation(line: 346, column: 12, scope: !752)
!752 = !DILexicalBlockFile(scope: !635, file: !1, discriminator: 5)
!753 = !DILocation(line: 346, column: 12, scope: !754)
!754 = !DILexicalBlockFile(scope: !635, file: !1, discriminator: 6)
!755 = !DILocation(line: 346, column: 5, scope: !754)
!756 = !DILocation(line: 348, column: 1, scope: !481)
!757 = distinct !DISubprogram(name: "legendre_Ql_asymp_unif", scope: !1, file: !1, line: 101, type: !758, isLocal: true, isDefinition: true, scopeLine: 102, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!758 = !DISubroutineType(types: !759)
!759 = !{!48, !49, !49, !51}
!760 = !DILocalVariable(name: "ell", arg: 1, scope: !757, file: !1, line: 101, type: !49)
!761 = !DILocation(line: 101, column: 37, scope: !757)
!762 = !DILocalVariable(name: "x", arg: 2, scope: !757, file: !1, line: 101, type: !49)
!763 = !DILocation(line: 101, column: 55, scope: !757)
!764 = !DILocalVariable(name: "result", arg: 3, scope: !757, file: !1, line: 101, type: !51)
!765 = !DILocation(line: 101, column: 74, scope: !757)
!766 = !DILocation(line: 103, column: 6, scope: !767)
!767 = distinct !DILexicalBlock(scope: !757, file: !1, line: 103, column: 6)
!768 = !DILocation(line: 103, column: 8, scope: !767)
!769 = !DILocation(line: 103, column: 6, scope: !757)
!770 = !DILocalVariable(name: "u", scope: !771, file: !1, line: 104, type: !50)
!771 = distinct !DILexicalBlock(scope: !767, file: !1, line: 103, column: 15)
!772 = !DILocation(line: 104, column: 12, scope: !771)
!773 = !DILocation(line: 104, column: 18, scope: !771)
!774 = !DILocation(line: 104, column: 22, scope: !771)
!775 = !DILocalVariable(name: "th", scope: !771, file: !1, line: 105, type: !50)
!776 = !DILocation(line: 105, column: 12, scope: !771)
!777 = !DILocation(line: 105, column: 23, scope: !771)
!778 = !DILocation(line: 105, column: 18, scope: !771)
!779 = !DILocalVariable(name: "Y0", scope: !771, file: !1, line: 106, type: !52)
!780 = !DILocation(line: 106, column: 19, scope: !771)
!781 = !DILocalVariable(name: "Y1", scope: !771, file: !1, line: 106, type: !52)
!782 = !DILocation(line: 106, column: 23, scope: !771)
!783 = !DILocalVariable(name: "stat_Y0", scope: !771, file: !1, line: 107, type: !48)
!784 = !DILocation(line: 107, column: 9, scope: !771)
!785 = !DILocalVariable(name: "stat_Y1", scope: !771, file: !1, line: 107, type: !48)
!786 = !DILocation(line: 107, column: 18, scope: !771)
!787 = !DILocalVariable(name: "stat_m", scope: !771, file: !1, line: 108, type: !48)
!788 = !DILocation(line: 108, column: 9, scope: !771)
!789 = !DILocalVariable(name: "pre", scope: !771, file: !1, line: 109, type: !50)
!790 = !DILocation(line: 109, column: 12, scope: !771)
!791 = !DILocalVariable(name: "B00", scope: !771, file: !1, line: 110, type: !50)
!792 = !DILocation(line: 110, column: 12, scope: !771)
!793 = !DILocalVariable(name: "sum", scope: !771, file: !1, line: 111, type: !50)
!794 = !DILocation(line: 111, column: 12, scope: !771)
!795 = !DILocation(line: 116, column: 8, scope: !796)
!796 = distinct !DILexicalBlock(scope: !771, file: !1, line: 116, column: 8)
!797 = !DILocation(line: 116, column: 11, scope: !796)
!798 = !DILocation(line: 116, column: 8, scope: !771)
!799 = !DILocation(line: 117, column: 20, scope: !800)
!800 = distinct !DILexicalBlock(scope: !796, file: !1, line: 116, column: 36)
!801 = !DILocation(line: 117, column: 23, scope: !800)
!802 = !DILocation(line: 117, column: 22, scope: !800)
!803 = !DILocation(line: 117, column: 25, scope: !800)
!804 = !DILocation(line: 117, column: 18, scope: !800)
!805 = !DILocation(line: 117, column: 31, scope: !800)
!806 = !DILocation(line: 117, column: 11, scope: !800)
!807 = !DILocation(line: 118, column: 19, scope: !800)
!808 = !DILocation(line: 118, column: 22, scope: !800)
!809 = !DILocation(line: 118, column: 21, scope: !800)
!810 = !DILocation(line: 118, column: 24, scope: !800)
!811 = !DILocation(line: 118, column: 17, scope: !800)
!812 = !DILocation(line: 118, column: 11, scope: !800)
!813 = !DILocation(line: 119, column: 5, scope: !800)
!814 = !DILocalVariable(name: "sin_th", scope: !815, file: !1, line: 121, type: !50)
!815 = distinct !DILexicalBlock(scope: !796, file: !1, line: 120, column: 10)
!816 = !DILocation(line: 121, column: 14, scope: !815)
!817 = !DILocation(line: 121, column: 34, scope: !815)
!818 = !DILocation(line: 121, column: 36, scope: !815)
!819 = !DILocation(line: 121, column: 35, scope: !815)
!820 = !DILocation(line: 121, column: 32, scope: !815)
!821 = !DILocation(line: 121, column: 23, scope: !815)
!822 = !DILocalVariable(name: "cot_th", scope: !815, file: !1, line: 122, type: !50)
!823 = !DILocation(line: 122, column: 14, scope: !815)
!824 = !DILocation(line: 122, column: 23, scope: !815)
!825 = !DILocation(line: 122, column: 27, scope: !815)
!826 = !DILocation(line: 122, column: 25, scope: !815)
!827 = !DILocation(line: 123, column: 30, scope: !815)
!828 = !DILocation(line: 123, column: 35, scope: !815)
!829 = !DILocation(line: 123, column: 33, scope: !815)
!830 = !DILocation(line: 123, column: 28, scope: !815)
!831 = !DILocation(line: 123, column: 21, scope: !815)
!832 = !DILocation(line: 123, column: 46, scope: !815)
!833 = !DILocation(line: 123, column: 49, scope: !815)
!834 = !DILocation(line: 123, column: 48, scope: !815)
!835 = !DILocation(line: 123, column: 43, scope: !815)
!836 = !DILocation(line: 123, column: 11, scope: !815)
!837 = !DILocation(line: 124, column: 18, scope: !815)
!838 = !DILocation(line: 124, column: 21, scope: !815)
!839 = !DILocation(line: 124, column: 20, scope: !815)
!840 = !DILocation(line: 124, column: 13, scope: !815)
!841 = !DILocation(line: 124, column: 11, scope: !815)
!842 = !DILocation(line: 127, column: 34, scope: !771)
!843 = !DILocation(line: 127, column: 36, scope: !771)
!844 = !DILocation(line: 127, column: 35, scope: !771)
!845 = !DILocation(line: 127, column: 15, scope: !771)
!846 = !DILocation(line: 127, column: 13, scope: !771)
!847 = !DILocation(line: 128, column: 34, scope: !771)
!848 = !DILocation(line: 128, column: 36, scope: !771)
!849 = !DILocation(line: 128, column: 35, scope: !771)
!850 = !DILocation(line: 128, column: 15, scope: !771)
!851 = !DILocation(line: 128, column: 13, scope: !771)
!852 = !DILocation(line: 130, column: 27, scope: !771)
!853 = !DILocation(line: 130, column: 33, scope: !771)
!854 = !DILocation(line: 130, column: 36, scope: !771)
!855 = !DILocation(line: 130, column: 35, scope: !771)
!856 = !DILocation(line: 130, column: 43, scope: !771)
!857 = !DILocation(line: 130, column: 38, scope: !771)
!858 = !DILocation(line: 130, column: 49, scope: !771)
!859 = !DILocation(line: 130, column: 47, scope: !771)
!860 = !DILocation(line: 130, column: 31, scope: !771)
!861 = !DILocation(line: 130, column: 21, scope: !771)
!862 = !DILocation(line: 130, column: 9, scope: !771)
!863 = !DILocation(line: 132, column: 32, scope: !771)
!864 = !DILocation(line: 132, column: 37, scope: !771)
!865 = !DILocation(line: 132, column: 42, scope: !771)
!866 = !DILocation(line: 132, column: 14, scope: !771)
!867 = !DILocation(line: 132, column: 12, scope: !771)
!868 = !DILocation(line: 133, column: 36, scope: !771)
!869 = !DILocation(line: 133, column: 31, scope: !771)
!870 = !DILocation(line: 133, column: 29, scope: !771)
!871 = !DILocation(line: 133, column: 47, scope: !771)
!872 = !DILocation(line: 133, column: 58, scope: !771)
!873 = !DILocation(line: 133, column: 61, scope: !771)
!874 = !DILocation(line: 133, column: 60, scope: !771)
!875 = !DILocation(line: 133, column: 63, scope: !771)
!876 = !DILocation(line: 133, column: 62, scope: !771)
!877 = !DILocation(line: 133, column: 53, scope: !878)
!878 = !DILexicalBlockFile(scope: !771, file: !1, discriminator: 1)
!879 = !DILocation(line: 133, column: 71, scope: !771)
!880 = !DILocation(line: 133, column: 67, scope: !771)
!881 = !DILocation(line: 133, column: 51, scope: !771)
!882 = !DILocation(line: 133, column: 41, scope: !771)
!883 = !DILocation(line: 133, column: 5, scope: !771)
!884 = !DILocation(line: 133, column: 13, scope: !771)
!885 = !DILocation(line: 133, column: 17, scope: !771)
!886 = !DILocation(line: 134, column: 43, scope: !771)
!887 = !DILocation(line: 134, column: 51, scope: !771)
!888 = !DILocation(line: 134, column: 38, scope: !771)
!889 = !DILocation(line: 134, column: 36, scope: !771)
!890 = !DILocation(line: 134, column: 5, scope: !771)
!891 = !DILocation(line: 134, column: 13, scope: !771)
!892 = !DILocation(line: 134, column: 17, scope: !771)
!893 = !DILocation(line: 136, column: 12, scope: !771)
!894 = !DILocation(line: 136, column: 12, scope: !878)
!895 = !DILocation(line: 136, column: 12, scope: !896)
!896 = !DILexicalBlockFile(scope: !771, file: !1, discriminator: 2)
!897 = !DILocation(line: 136, column: 12, scope: !898)
!898 = !DILexicalBlockFile(scope: !771, file: !1, discriminator: 3)
!899 = !DILocation(line: 136, column: 12, scope: !900)
!900 = !DILexicalBlockFile(scope: !771, file: !1, discriminator: 4)
!901 = !DILocation(line: 136, column: 12, scope: !902)
!902 = !DILexicalBlockFile(scope: !771, file: !1, discriminator: 5)
!903 = !DILocation(line: 136, column: 12, scope: !904)
!904 = !DILexicalBlockFile(scope: !771, file: !1, discriminator: 6)
!905 = !DILocation(line: 136, column: 12, scope: !906)
!906 = !DILexicalBlockFile(scope: !771, file: !1, discriminator: 7)
!907 = !DILocation(line: 136, column: 12, scope: !908)
!908 = !DILexicalBlockFile(scope: !771, file: !1, discriminator: 8)
!909 = !DILocation(line: 136, column: 12, scope: !910)
!910 = !DILexicalBlockFile(scope: !771, file: !1, discriminator: 9)
!911 = !DILocation(line: 136, column: 5, scope: !910)
!912 = !DILocalVariable(name: "u", scope: !913, file: !1, line: 139, type: !50)
!913 = distinct !DILexicalBlock(scope: !767, file: !1, line: 138, column: 8)
!914 = !DILocation(line: 139, column: 12, scope: !913)
!915 = !DILocation(line: 139, column: 18, scope: !913)
!916 = !DILocation(line: 139, column: 22, scope: !913)
!917 = !DILocalVariable(name: "xi", scope: !913, file: !1, line: 140, type: !50)
!918 = !DILocation(line: 140, column: 12, scope: !913)
!919 = !DILocation(line: 140, column: 24, scope: !913)
!920 = !DILocation(line: 140, column: 18, scope: !913)
!921 = !DILocalVariable(name: "K0_scaled", scope: !913, file: !1, line: 141, type: !52)
!922 = !DILocation(line: 141, column: 19, scope: !913)
!923 = !DILocalVariable(name: "K1_scaled", scope: !913, file: !1, line: 141, type: !52)
!924 = !DILocation(line: 141, column: 30, scope: !913)
!925 = !DILocalVariable(name: "stat_K0", scope: !913, file: !1, line: 142, type: !48)
!926 = !DILocation(line: 142, column: 9, scope: !913)
!927 = !DILocalVariable(name: "stat_K1", scope: !913, file: !1, line: 142, type: !48)
!928 = !DILocation(line: 142, column: 18, scope: !913)
!929 = !DILocalVariable(name: "stat_e", scope: !913, file: !1, line: 143, type: !48)
!930 = !DILocation(line: 143, column: 9, scope: !913)
!931 = !DILocalVariable(name: "pre", scope: !913, file: !1, line: 144, type: !50)
!932 = !DILocation(line: 144, column: 12, scope: !913)
!933 = !DILocalVariable(name: "B00", scope: !913, file: !1, line: 145, type: !50)
!934 = !DILocation(line: 145, column: 12, scope: !913)
!935 = !DILocalVariable(name: "sum", scope: !913, file: !1, line: 146, type: !50)
!936 = !DILocation(line: 146, column: 12, scope: !913)
!937 = !DILocation(line: 151, column: 8, scope: !938)
!938 = distinct !DILexicalBlock(scope: !913, file: !1, line: 151, column: 8)
!939 = !DILocation(line: 151, column: 11, scope: !938)
!940 = !DILocation(line: 151, column: 8, scope: !913)
!941 = !DILocation(line: 152, column: 18, scope: !942)
!942 = distinct !DILexicalBlock(scope: !938, file: !1, line: 151, column: 36)
!943 = !DILocation(line: 152, column: 21, scope: !942)
!944 = !DILocation(line: 152, column: 20, scope: !942)
!945 = !DILocation(line: 152, column: 23, scope: !942)
!946 = !DILocation(line: 152, column: 17, scope: !942)
!947 = !DILocation(line: 152, column: 29, scope: !942)
!948 = !DILocation(line: 152, column: 11, scope: !942)
!949 = !DILocation(line: 153, column: 19, scope: !942)
!950 = !DILocation(line: 153, column: 22, scope: !942)
!951 = !DILocation(line: 153, column: 21, scope: !942)
!952 = !DILocation(line: 153, column: 24, scope: !942)
!953 = !DILocation(line: 153, column: 17, scope: !942)
!954 = !DILocation(line: 153, column: 11, scope: !942)
!955 = !DILocation(line: 154, column: 5, scope: !942)
!956 = !DILocalVariable(name: "sinh_xi", scope: !957, file: !1, line: 156, type: !50)
!957 = distinct !DILexicalBlock(scope: !938, file: !1, line: 155, column: 10)
!958 = !DILocation(line: 156, column: 14, scope: !957)
!959 = !DILocation(line: 156, column: 29, scope: !957)
!960 = !DILocation(line: 156, column: 31, scope: !957)
!961 = !DILocation(line: 156, column: 30, scope: !957)
!962 = !DILocation(line: 156, column: 33, scope: !957)
!963 = !DILocation(line: 156, column: 24, scope: !957)
!964 = !DILocalVariable(name: "coth_xi", scope: !957, file: !1, line: 157, type: !50)
!965 = !DILocation(line: 157, column: 14, scope: !957)
!966 = !DILocation(line: 157, column: 24, scope: !957)
!967 = !DILocation(line: 157, column: 28, scope: !957)
!968 = !DILocation(line: 157, column: 26, scope: !957)
!969 = !DILocation(line: 158, column: 31, scope: !957)
!970 = !DILocation(line: 158, column: 36, scope: !957)
!971 = !DILocation(line: 158, column: 34, scope: !957)
!972 = !DILocation(line: 158, column: 29, scope: !957)
!973 = !DILocation(line: 158, column: 22, scope: !957)
!974 = !DILocation(line: 158, column: 48, scope: !957)
!975 = !DILocation(line: 158, column: 51, scope: !957)
!976 = !DILocation(line: 158, column: 50, scope: !957)
!977 = !DILocation(line: 158, column: 45, scope: !957)
!978 = !DILocation(line: 158, column: 11, scope: !957)
!979 = !DILocation(line: 159, column: 18, scope: !957)
!980 = !DILocation(line: 159, column: 21, scope: !957)
!981 = !DILocation(line: 159, column: 20, scope: !957)
!982 = !DILocation(line: 159, column: 13, scope: !957)
!983 = !DILocation(line: 159, column: 11, scope: !957)
!984 = !DILocation(line: 162, column: 41, scope: !913)
!985 = !DILocation(line: 162, column: 43, scope: !913)
!986 = !DILocation(line: 162, column: 42, scope: !913)
!987 = !DILocation(line: 162, column: 15, scope: !913)
!988 = !DILocation(line: 162, column: 13, scope: !913)
!989 = !DILocation(line: 163, column: 41, scope: !913)
!990 = !DILocation(line: 163, column: 43, scope: !913)
!991 = !DILocation(line: 163, column: 42, scope: !913)
!992 = !DILocation(line: 163, column: 15, scope: !913)
!993 = !DILocation(line: 163, column: 13, scope: !913)
!994 = !DILocation(line: 165, column: 21, scope: !913)
!995 = !DILocation(line: 165, column: 27, scope: !913)
!996 = !DILocation(line: 165, column: 30, scope: !913)
!997 = !DILocation(line: 165, column: 29, scope: !913)
!998 = !DILocation(line: 165, column: 44, scope: !913)
!999 = !DILocation(line: 165, column: 32, scope: !913)
!1000 = !DILocation(line: 165, column: 50, scope: !913)
!1001 = !DILocation(line: 165, column: 48, scope: !913)
!1002 = !DILocation(line: 165, column: 25, scope: !913)
!1003 = !DILocation(line: 165, column: 9, scope: !913)
!1004 = !DILocation(line: 167, column: 33, scope: !913)
!1005 = !DILocation(line: 167, column: 32, scope: !913)
!1006 = !DILocation(line: 167, column: 35, scope: !913)
!1007 = !DILocation(line: 167, column: 34, scope: !913)
!1008 = !DILocation(line: 167, column: 39, scope: !913)
!1009 = !DILocation(line: 167, column: 45, scope: !913)
!1010 = !DILocation(line: 167, column: 43, scope: !913)
!1011 = !DILocation(line: 167, column: 50, scope: !913)
!1012 = !DILocation(line: 167, column: 14, scope: !913)
!1013 = !DILocation(line: 167, column: 12, scope: !913)
!1014 = !DILocation(line: 168, column: 43, scope: !913)
!1015 = !DILocation(line: 168, column: 51, scope: !913)
!1016 = !DILocation(line: 168, column: 38, scope: !913)
!1017 = !DILocation(line: 168, column: 36, scope: !913)
!1018 = !DILocation(line: 168, column: 63, scope: !913)
!1019 = !DILocation(line: 168, column: 65, scope: !913)
!1020 = !DILocation(line: 168, column: 64, scope: !913)
!1021 = !DILocation(line: 168, column: 58, scope: !1022)
!1022 = !DILexicalBlockFile(scope: !913, file: !1, discriminator: 1)
!1023 = !DILocation(line: 168, column: 56, scope: !913)
!1024 = !DILocation(line: 168, column: 5, scope: !913)
!1025 = !DILocation(line: 168, column: 13, scope: !913)
!1026 = !DILocation(line: 168, column: 18, scope: !913)
!1027 = !DILocation(line: 169, column: 49, scope: !913)
!1028 = !DILocation(line: 169, column: 57, scope: !913)
!1029 = !DILocation(line: 169, column: 44, scope: !913)
!1030 = !DILocation(line: 169, column: 42, scope: !913)
!1031 = !DILocation(line: 169, column: 5, scope: !913)
!1032 = !DILocation(line: 169, column: 13, scope: !913)
!1033 = !DILocation(line: 169, column: 17, scope: !913)
!1034 = !DILocation(line: 171, column: 12, scope: !913)
!1035 = !DILocation(line: 171, column: 12, scope: !1022)
!1036 = !DILocation(line: 171, column: 12, scope: !1037)
!1037 = !DILexicalBlockFile(scope: !913, file: !1, discriminator: 2)
!1038 = !DILocation(line: 171, column: 12, scope: !1039)
!1039 = !DILexicalBlockFile(scope: !913, file: !1, discriminator: 3)
!1040 = !DILocation(line: 171, column: 12, scope: !1041)
!1041 = !DILexicalBlockFile(scope: !913, file: !1, discriminator: 4)
!1042 = !DILocation(line: 171, column: 12, scope: !1043)
!1043 = !DILexicalBlockFile(scope: !913, file: !1, discriminator: 5)
!1044 = !DILocation(line: 171, column: 12, scope: !1045)
!1045 = !DILexicalBlockFile(scope: !913, file: !1, discriminator: 6)
!1046 = !DILocation(line: 171, column: 12, scope: !1047)
!1047 = !DILexicalBlockFile(scope: !913, file: !1, discriminator: 7)
!1048 = !DILocation(line: 171, column: 12, scope: !1049)
!1049 = !DILexicalBlockFile(scope: !913, file: !1, discriminator: 8)
!1050 = !DILocation(line: 171, column: 12, scope: !1051)
!1051 = !DILexicalBlockFile(scope: !913, file: !1, discriminator: 9)
!1052 = !DILocation(line: 171, column: 5, scope: !1051)
!1053 = !DILocation(line: 173, column: 1, scope: !757)
!1054 = distinct !DISubprogram(name: "legendreQ_CF1_xgt1", scope: !1, file: !1, line: 39, type: !1055, isLocal: true, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!1055 = !DISubroutineType(types: !1056)
!1056 = !{!48, !48, !50, !50, !50, !1057}
!1057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64, align: 64)
!1058 = !DILocalVariable(name: "ell", arg: 1, scope: !1054, file: !1, line: 39, type: !48)
!1059 = !DILocation(line: 39, column: 24, scope: !1054)
!1060 = !DILocalVariable(name: "a", arg: 2, scope: !1054, file: !1, line: 39, type: !50)
!1061 = !DILocation(line: 39, column: 36, scope: !1054)
!1062 = !DILocalVariable(name: "b", arg: 3, scope: !1054, file: !1, line: 39, type: !50)
!1063 = !DILocation(line: 39, column: 46, scope: !1054)
!1064 = !DILocalVariable(name: "x", arg: 4, scope: !1054, file: !1, line: 39, type: !50)
!1065 = !DILocation(line: 39, column: 56, scope: !1054)
!1066 = !DILocalVariable(name: "result", arg: 5, scope: !1054, file: !1, line: 39, type: !1057)
!1067 = !DILocation(line: 39, column: 68, scope: !1054)
!1068 = !DILocalVariable(name: "RECUR_BIG", scope: !1054, file: !1, line: 41, type: !49)
!1069 = !DILocation(line: 41, column: 16, scope: !1054)
!1070 = !DILocalVariable(name: "maxiter", scope: !1054, file: !1, line: 42, type: !484)
!1071 = !DILocation(line: 42, column: 13, scope: !1054)
!1072 = !DILocalVariable(name: "n", scope: !1054, file: !1, line: 43, type: !48)
!1073 = !DILocation(line: 43, column: 7, scope: !1054)
!1074 = !DILocalVariable(name: "Anm2", scope: !1054, file: !1, line: 44, type: !50)
!1075 = !DILocation(line: 44, column: 10, scope: !1054)
!1076 = !DILocalVariable(name: "Bnm2", scope: !1054, file: !1, line: 45, type: !50)
!1077 = !DILocation(line: 45, column: 10, scope: !1054)
!1078 = !DILocalVariable(name: "Anm1", scope: !1054, file: !1, line: 46, type: !50)
!1079 = !DILocation(line: 46, column: 10, scope: !1054)
!1080 = !DILocalVariable(name: "Bnm1", scope: !1054, file: !1, line: 47, type: !50)
!1081 = !DILocation(line: 47, column: 10, scope: !1054)
!1082 = !DILocalVariable(name: "a1", scope: !1054, file: !1, line: 48, type: !50)
!1083 = !DILocation(line: 48, column: 10, scope: !1054)
!1084 = !DILocation(line: 48, column: 15, scope: !1054)
!1085 = !DILocation(line: 48, column: 19, scope: !1054)
!1086 = !DILocation(line: 48, column: 27, scope: !1054)
!1087 = !DILocation(line: 48, column: 25, scope: !1054)
!1088 = !DILocation(line: 48, column: 31, scope: !1054)
!1089 = !DILocation(line: 48, column: 29, scope: !1054)
!1090 = !DILocalVariable(name: "b1", scope: !1054, file: !1, line: 49, type: !50)
!1091 = !DILocation(line: 49, column: 10, scope: !1054)
!1092 = !DILocation(line: 49, column: 21, scope: !1054)
!1093 = !DILocation(line: 49, column: 24, scope: !1054)
!1094 = !DILocation(line: 49, column: 29, scope: !1054)
!1095 = !DILocation(line: 49, column: 28, scope: !1054)
!1096 = !DILocation(line: 49, column: 19, scope: !1054)
!1097 = !DILocation(line: 49, column: 32, scope: !1054)
!1098 = !DILocation(line: 49, column: 41, scope: !1054)
!1099 = !DILocation(line: 49, column: 39, scope: !1054)
!1100 = !DILocalVariable(name: "An", scope: !1054, file: !1, line: 50, type: !50)
!1101 = !DILocation(line: 50, column: 10, scope: !1054)
!1102 = !DILocation(line: 50, column: 15, scope: !1054)
!1103 = !DILocation(line: 50, column: 18, scope: !1054)
!1104 = !DILocation(line: 50, column: 17, scope: !1054)
!1105 = !DILocation(line: 50, column: 25, scope: !1054)
!1106 = !DILocation(line: 50, column: 28, scope: !1054)
!1107 = !DILocation(line: 50, column: 27, scope: !1054)
!1108 = !DILocation(line: 50, column: 23, scope: !1054)
!1109 = !DILocalVariable(name: "Bn", scope: !1054, file: !1, line: 51, type: !50)
!1110 = !DILocation(line: 51, column: 10, scope: !1054)
!1111 = !DILocation(line: 51, column: 15, scope: !1054)
!1112 = !DILocation(line: 51, column: 18, scope: !1054)
!1113 = !DILocation(line: 51, column: 17, scope: !1054)
!1114 = !DILocation(line: 51, column: 25, scope: !1054)
!1115 = !DILocation(line: 51, column: 28, scope: !1054)
!1116 = !DILocation(line: 51, column: 27, scope: !1054)
!1117 = !DILocation(line: 51, column: 23, scope: !1054)
!1118 = !DILocalVariable(name: "an", scope: !1054, file: !1, line: 52, type: !50)
!1119 = !DILocation(line: 52, column: 10, scope: !1054)
!1120 = !DILocalVariable(name: "bn", scope: !1054, file: !1, line: 52, type: !50)
!1121 = !DILocation(line: 52, column: 14, scope: !1054)
!1122 = !DILocalVariable(name: "fn", scope: !1054, file: !1, line: 53, type: !50)
!1123 = !DILocation(line: 53, column: 10, scope: !1054)
!1124 = !DILocation(line: 53, column: 15, scope: !1054)
!1125 = !DILocation(line: 53, column: 18, scope: !1054)
!1126 = !DILocation(line: 53, column: 17, scope: !1054)
!1127 = !DILocation(line: 55, column: 3, scope: !1054)
!1128 = !DILocation(line: 55, column: 9, scope: !1129)
!1129 = !DILexicalBlockFile(scope: !1054, file: !1, discriminator: 1)
!1130 = !DILocation(line: 55, column: 11, scope: !1129)
!1131 = !DILocation(line: 55, column: 3, scope: !1129)
!1132 = !DILocalVariable(name: "old_fn", scope: !1133, file: !1, line: 56, type: !50)
!1133 = distinct !DILexicalBlock(scope: !1054, file: !1, line: 55, column: 22)
!1134 = !DILocation(line: 56, column: 12, scope: !1133)
!1135 = !DILocalVariable(name: "del", scope: !1133, file: !1, line: 57, type: !50)
!1136 = !DILocation(line: 57, column: 12, scope: !1133)
!1137 = !DILocalVariable(name: "lna", scope: !1133, file: !1, line: 58, type: !50)
!1138 = !DILocation(line: 58, column: 12, scope: !1133)
!1139 = !DILocation(line: 59, column: 6, scope: !1133)
!1140 = !DILocation(line: 60, column: 12, scope: !1133)
!1141 = !DILocation(line: 60, column: 10, scope: !1133)
!1142 = !DILocation(line: 61, column: 12, scope: !1133)
!1143 = !DILocation(line: 61, column: 10, scope: !1133)
!1144 = !DILocation(line: 62, column: 12, scope: !1133)
!1145 = !DILocation(line: 62, column: 10, scope: !1133)
!1146 = !DILocation(line: 63, column: 12, scope: !1133)
!1147 = !DILocation(line: 63, column: 10, scope: !1133)
!1148 = !DILocation(line: 64, column: 11, scope: !1133)
!1149 = !DILocation(line: 64, column: 17, scope: !1133)
!1150 = !DILocation(line: 64, column: 15, scope: !1133)
!1151 = !DILocation(line: 64, column: 21, scope: !1133)
!1152 = !DILocation(line: 64, column: 19, scope: !1133)
!1153 = !DILocation(line: 64, column: 9, scope: !1133)
!1154 = !DILocation(line: 65, column: 10, scope: !1133)
!1155 = !DILocation(line: 65, column: 12, scope: !1133)
!1156 = !DILocation(line: 65, column: 11, scope: !1133)
!1157 = !DILocation(line: 65, column: 16, scope: !1133)
!1158 = !DILocation(line: 65, column: 20, scope: !1133)
!1159 = !DILocation(line: 65, column: 19, scope: !1133)
!1160 = !DILocation(line: 65, column: 14, scope: !1133)
!1161 = !DILocation(line: 65, column: 8, scope: !1133)
!1162 = !DILocation(line: 66, column: 15, scope: !1133)
!1163 = !DILocation(line: 66, column: 14, scope: !1133)
!1164 = !DILocation(line: 66, column: 19, scope: !1133)
!1165 = !DILocation(line: 66, column: 28, scope: !1133)
!1166 = !DILocation(line: 66, column: 26, scope: !1133)
!1167 = !DILocation(line: 66, column: 8, scope: !1133)
!1168 = !DILocation(line: 67, column: 10, scope: !1133)
!1169 = !DILocation(line: 67, column: 13, scope: !1133)
!1170 = !DILocation(line: 67, column: 12, scope: !1133)
!1171 = !DILocation(line: 67, column: 20, scope: !1133)
!1172 = !DILocation(line: 67, column: 23, scope: !1133)
!1173 = !DILocation(line: 67, column: 22, scope: !1133)
!1174 = !DILocation(line: 67, column: 18, scope: !1133)
!1175 = !DILocation(line: 67, column: 8, scope: !1133)
!1176 = !DILocation(line: 68, column: 10, scope: !1133)
!1177 = !DILocation(line: 68, column: 13, scope: !1133)
!1178 = !DILocation(line: 68, column: 12, scope: !1133)
!1179 = !DILocation(line: 68, column: 20, scope: !1133)
!1180 = !DILocation(line: 68, column: 23, scope: !1133)
!1181 = !DILocation(line: 68, column: 22, scope: !1133)
!1182 = !DILocation(line: 68, column: 18, scope: !1133)
!1183 = !DILocation(line: 68, column: 8, scope: !1133)
!1184 = !DILocation(line: 70, column: 13, scope: !1185)
!1185 = distinct !DILexicalBlock(scope: !1133, file: !1, line: 70, column: 8)
!1186 = !DILocation(line: 70, column: 8, scope: !1185)
!1187 = !DILocation(line: 70, column: 17, scope: !1185)
!1188 = !DILocation(line: 70, column: 29, scope: !1185)
!1189 = !DILocation(line: 70, column: 37, scope: !1190)
!1190 = !DILexicalBlockFile(scope: !1185, file: !1, discriminator: 1)
!1191 = !DILocation(line: 70, column: 32, scope: !1190)
!1192 = !DILocation(line: 70, column: 41, scope: !1190)
!1193 = !DILocation(line: 70, column: 8, scope: !1190)
!1194 = !DILocation(line: 71, column: 10, scope: !1195)
!1195 = distinct !DILexicalBlock(scope: !1185, file: !1, line: 70, column: 54)
!1196 = !DILocation(line: 72, column: 10, scope: !1195)
!1197 = !DILocation(line: 73, column: 12, scope: !1195)
!1198 = !DILocation(line: 74, column: 12, scope: !1195)
!1199 = !DILocation(line: 75, column: 12, scope: !1195)
!1200 = !DILocation(line: 76, column: 12, scope: !1195)
!1201 = !DILocation(line: 77, column: 5, scope: !1195)
!1202 = !DILocation(line: 79, column: 14, scope: !1133)
!1203 = !DILocation(line: 79, column: 12, scope: !1133)
!1204 = !DILocation(line: 80, column: 10, scope: !1133)
!1205 = !DILocation(line: 80, column: 13, scope: !1133)
!1206 = !DILocation(line: 80, column: 12, scope: !1133)
!1207 = !DILocation(line: 80, column: 8, scope: !1133)
!1208 = !DILocation(line: 81, column: 11, scope: !1133)
!1209 = !DILocation(line: 81, column: 18, scope: !1133)
!1210 = !DILocation(line: 81, column: 17, scope: !1133)
!1211 = !DILocation(line: 81, column: 9, scope: !1133)
!1212 = !DILocation(line: 83, column: 13, scope: !1213)
!1213 = distinct !DILexicalBlock(scope: !1133, file: !1, line: 83, column: 8)
!1214 = !DILocation(line: 83, column: 17, scope: !1213)
!1215 = !DILocation(line: 83, column: 8, scope: !1213)
!1216 = !DILocation(line: 83, column: 24, scope: !1213)
!1217 = !DILocation(line: 83, column: 8, scope: !1133)
!1218 = !DILocation(line: 83, column: 47, scope: !1219)
!1219 = !DILexicalBlockFile(scope: !1213, file: !1, discriminator: 1)
!1220 = !DILocation(line: 55, column: 3, scope: !1221)
!1221 = !DILexicalBlockFile(scope: !1054, file: !1, discriminator: 2)
!1222 = distinct !{!1222, !1127}
!1223 = !DILocation(line: 86, column: 13, scope: !1054)
!1224 = !DILocation(line: 86, column: 4, scope: !1054)
!1225 = !DILocation(line: 86, column: 11, scope: !1054)
!1226 = !DILocation(line: 88, column: 6, scope: !1227)
!1227 = distinct !DILexicalBlock(scope: !1054, file: !1, line: 88, column: 6)
!1228 = !DILocation(line: 88, column: 8, scope: !1227)
!1229 = !DILocation(line: 88, column: 6, scope: !1054)
!1230 = !DILocation(line: 89, column: 5, scope: !1227)
!1231 = distinct !{!1231, !1230}
!1232 = !DILocation(line: 89, column: 5, scope: !1233)
!1233 = !DILexicalBlockFile(scope: !1234, file: !1, discriminator: 1)
!1234 = distinct !DILexicalBlock(scope: !1227, file: !1, line: 89, column: 5)
!1235 = !DILocation(line: 89, column: 5, scope: !1236)
!1236 = !DILexicalBlockFile(scope: !1234, file: !1, discriminator: 2)
!1237 = !DILocation(line: 91, column: 5, scope: !1227)
!1238 = !DILocation(line: 92, column: 1, scope: !1054)
!1239 = distinct !DISubprogram(name: "gsl_sf_legendre_Q0", scope: !1, file: !1, line: 355, type: !1240, isLocal: false, isDefinition: true, scopeLine: 356, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!1240 = !DISubroutineType(types: !1241)
!1241 = !{!50, !49}
!1242 = !DILocalVariable(name: "x", arg: 1, scope: !1239, file: !1, line: 355, type: !49)
!1243 = !DILocation(line: 355, column: 40, scope: !1239)
!1244 = !DILocalVariable(name: "result", scope: !1239, file: !1, line: 357, type: !52)
!1245 = !DILocation(line: 357, column: 3, scope: !1239)
!1246 = !DILocalVariable(name: "status", scope: !1239, file: !1, line: 357, type: !48)
!1247 = !DILocation(line: 357, column: 3, scope: !1248)
!1248 = distinct !DILexicalBlock(scope: !1239, file: !1, line: 357, column: 3)
!1249 = !DILocation(line: 357, column: 3, scope: !1250)
!1250 = !DILexicalBlockFile(scope: !1251, file: !1, discriminator: 1)
!1251 = distinct !DILexicalBlock(scope: !1248, file: !1, line: 357, column: 3)
!1252 = distinct !{!1252, !1253}
!1253 = !DILocation(line: 357, column: 3, scope: !1251)
!1254 = !DILocation(line: 357, column: 3, scope: !1255)
!1255 = !DILexicalBlockFile(scope: !1256, file: !1, discriminator: 2)
!1256 = distinct !DILexicalBlock(scope: !1251, file: !1, line: 357, column: 3)
!1257 = !DILocation(line: 357, column: 3, scope: !1258)
!1258 = !DILexicalBlockFile(scope: !1251, file: !1, discriminator: 3)
!1259 = !DILocation(line: 357, column: 3, scope: !1260)
!1260 = !DILexicalBlockFile(scope: !1239, file: !1, discriminator: 4)
!1261 = !DILocation(line: 358, column: 1, scope: !1239)
!1262 = distinct !DISubprogram(name: "gsl_sf_legendre_Q1", scope: !1, file: !1, line: 360, type: !1240, isLocal: false, isDefinition: true, scopeLine: 361, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!1263 = !DILocalVariable(name: "x", arg: 1, scope: !1262, file: !1, line: 360, type: !49)
!1264 = !DILocation(line: 360, column: 40, scope: !1262)
!1265 = !DILocalVariable(name: "result", scope: !1262, file: !1, line: 362, type: !52)
!1266 = !DILocation(line: 362, column: 3, scope: !1262)
!1267 = !DILocalVariable(name: "status", scope: !1262, file: !1, line: 362, type: !48)
!1268 = !DILocation(line: 362, column: 3, scope: !1269)
!1269 = distinct !DILexicalBlock(scope: !1262, file: !1, line: 362, column: 3)
!1270 = !DILocation(line: 362, column: 3, scope: !1271)
!1271 = !DILexicalBlockFile(scope: !1272, file: !1, discriminator: 1)
!1272 = distinct !DILexicalBlock(scope: !1269, file: !1, line: 362, column: 3)
!1273 = distinct !{!1273, !1274}
!1274 = !DILocation(line: 362, column: 3, scope: !1272)
!1275 = !DILocation(line: 362, column: 3, scope: !1276)
!1276 = !DILexicalBlockFile(scope: !1277, file: !1, discriminator: 2)
!1277 = distinct !DILexicalBlock(scope: !1272, file: !1, line: 362, column: 3)
!1278 = !DILocation(line: 362, column: 3, scope: !1279)
!1279 = !DILexicalBlockFile(scope: !1272, file: !1, discriminator: 3)
!1280 = !DILocation(line: 362, column: 3, scope: !1281)
!1281 = !DILexicalBlockFile(scope: !1262, file: !1, discriminator: 4)
!1282 = !DILocation(line: 363, column: 1, scope: !1262)
!1283 = distinct !DISubprogram(name: "gsl_sf_legendre_Ql", scope: !1, file: !1, line: 365, type: !1284, isLocal: false, isDefinition: true, scopeLine: 366, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!1284 = !DISubroutineType(types: !1285)
!1285 = !{!50, !484, !49}
!1286 = !DILocalVariable(name: "l", arg: 1, scope: !1283, file: !1, line: 365, type: !484)
!1287 = !DILocation(line: 365, column: 37, scope: !1283)
!1288 = !DILocalVariable(name: "x", arg: 2, scope: !1283, file: !1, line: 365, type: !49)
!1289 = !DILocation(line: 365, column: 53, scope: !1283)
!1290 = !DILocalVariable(name: "result", scope: !1283, file: !1, line: 367, type: !52)
!1291 = !DILocation(line: 367, column: 3, scope: !1283)
!1292 = !DILocalVariable(name: "status", scope: !1283, file: !1, line: 367, type: !48)
!1293 = !DILocation(line: 367, column: 3, scope: !1294)
!1294 = distinct !DILexicalBlock(scope: !1283, file: !1, line: 367, column: 3)
!1295 = !DILocation(line: 367, column: 3, scope: !1296)
!1296 = !DILexicalBlockFile(scope: !1297, file: !1, discriminator: 1)
!1297 = distinct !DILexicalBlock(scope: !1294, file: !1, line: 367, column: 3)
!1298 = distinct !{!1298, !1299}
!1299 = !DILocation(line: 367, column: 3, scope: !1297)
!1300 = !DILocation(line: 367, column: 3, scope: !1301)
!1301 = !DILexicalBlockFile(scope: !1302, file: !1, discriminator: 2)
!1302 = distinct !DILexicalBlock(scope: !1297, file: !1, line: 367, column: 3)
!1303 = !DILocation(line: 367, column: 3, scope: !1304)
!1304 = !DILexicalBlockFile(scope: !1297, file: !1, discriminator: 3)
!1305 = !DILocation(line: 367, column: 3, scope: !1306)
!1306 = !DILexicalBlockFile(scope: !1283, file: !1, discriminator: 4)
!1307 = !DILocation(line: 368, column: 1, scope: !1283)
