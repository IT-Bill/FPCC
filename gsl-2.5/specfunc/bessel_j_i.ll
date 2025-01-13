; ModuleID = 'bessel_j.ll'
source_filename = "bessel_j.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsl_sf_result_struct = type { double, double }

@.str = private unnamed_addr constant [10 x i8] c"underflow\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"bessel_j.c\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"domain error\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"gsl_sf_bessel_j0_e(x, &result)\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"gsl_sf_bessel_j1_e(x, &result)\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"gsl_sf_bessel_j2_e(x, &result)\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"gsl_sf_bessel_jl_e(l, x, &result)\00", align 1
@0 = private unnamed_addr constant [19 x i8] c"gsl_sf_bessel_j0_e\00"
@1 = private unnamed_addr constant [12 x i8] c"bessel_j.ll\00"
@2 = private unnamed_addr constant [19 x i8] c"gsl_sf_bessel_j1_e\00"
@3 = private unnamed_addr constant [12 x i8] c"bessel_j.ll\00"
@4 = private unnamed_addr constant [19 x i8] c"gsl_sf_bessel_j2_e\00"
@5 = private unnamed_addr constant [12 x i8] c"bessel_j.ll\00"
@6 = private unnamed_addr constant [19 x i8] c"gsl_sf_bessel_jl_e\00"
@7 = private unnamed_addr constant [12 x i8] c"bessel_j.ll\00"
@8 = private unnamed_addr constant [23 x i8] c"gsl_sf_bessel_jl_array\00"
@9 = private unnamed_addr constant [12 x i8] c"bessel_j.ll\00"
@10 = private unnamed_addr constant [29 x i8] c"gsl_sf_bessel_jl_steed_array\00"
@11 = private unnamed_addr constant [12 x i8] c"bessel_j.ll\00"
@12 = private unnamed_addr constant [17 x i8] c"gsl_sf_bessel_j0\00"
@13 = private unnamed_addr constant [12 x i8] c"bessel_j.ll\00"
@14 = private unnamed_addr constant [17 x i8] c"gsl_sf_bessel_j1\00"
@15 = private unnamed_addr constant [12 x i8] c"bessel_j.ll\00"
@16 = private unnamed_addr constant [17 x i8] c"gsl_sf_bessel_j2\00"
@17 = private unnamed_addr constant [12 x i8] c"bessel_j.ll\00"
@18 = private unnamed_addr constant [17 x i8] c"gsl_sf_bessel_jl\00"
@19 = private unnamed_addr constant [12 x i8] c"bessel_j.ll\00"

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_bessel_j0_e(double, %struct.gsl_sf_result_struct*) #0 !dbg !45 {
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
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !59, metadata !60), !dbg !61
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %5, metadata !62, metadata !60), !dbg !63
  call void @llvm.dbg.declare(metadata double* %6, metadata !64, metadata !60), !dbg !65
  %14 = load double, double* %4, align 8, !dbg !66
  %15 = call double @fabs(double %14) #1, !dbg !67
  store double %15, double* %6, align 8, !dbg !65
  %16 = load double, double* %6, align 8, !dbg !68
  %17 = fcmp olt double %16, 5.000000e-01, !dbg !70
  %18 = call i1 @fCmpInstHandler(double %16, double 5.000000e-01, i1 %17, i32 4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94150071733344, i32 42, i32 9), !dbg !71
  br i1 %18, label %19, label %50, !dbg !71

; <label>:19:                                     ; preds = %2
  call void @llvm.dbg.declare(metadata double* %7, metadata !72, metadata !60), !dbg !74
  %20 = load double, double* %4, align 8, !dbg !75
  %21 = load double, double* %4, align 8, !dbg !76
  %22 = fmul double %20, %21, !dbg !77
  call void @fMulHandler(double %20, double %21, double %22, i64 94150071735384, i64 94150071735736, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94150071736144, i32 43, i32 23), !dbg !74
  store double %22, double* %7, align 8, !dbg !74
  call void @llvm.dbg.declare(metadata double* %8, metadata !78, metadata !60), !dbg !79
  store double 0xBFC5555555555555, double* %8, align 8, !dbg !79
  call void @llvm.dbg.declare(metadata double* %9, metadata !80, metadata !60), !dbg !81
  store double 0x3F81111111111111, double* %9, align 8, !dbg !81
  call void @llvm.dbg.declare(metadata double* %10, metadata !82, metadata !60), !dbg !83
  store double 0xBF2A01A01A01A01A, double* %10, align 8, !dbg !83
  call void @llvm.dbg.declare(metadata double* %11, metadata !84, metadata !60), !dbg !85
  store double 0x3EC71DE3A556C734, double* %11, align 8, !dbg !85
  call void @llvm.dbg.declare(metadata double* %12, metadata !86, metadata !60), !dbg !87
  store double 0xBE5AE64567F544E4, double* %12, align 8, !dbg !87
  call void @llvm.dbg.declare(metadata double* %13, metadata !88, metadata !60), !dbg !89
  store double 0x3DE6124613A86D09, double* %13, align 8, !dbg !89
  %23 = load double, double* %7, align 8, !dbg !90
  %24 = load double, double* %7, align 8, !dbg !91
  %25 = load double, double* %7, align 8, !dbg !92
  %26 = load double, double* %7, align 8, !dbg !93
  %27 = load double, double* %7, align 8, !dbg !94
  %28 = load double, double* %7, align 8, !dbg !95
  %29 = fmul double %28, 0x3DE6124613A86D09, !dbg !96
  call void @fMulHandler(double %28, double 0x3DE6124613A86D09, double %29, i64 94150071757128, i64 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94150071757536, i32 50, i32 66), !dbg !97
  %30 = fadd double 0xBE5AE64567F544E4, %29, !dbg !97
  call void @fAddHandler(double 0xBE5AE64567F544E4, double %29, double %30, i64 0, i64 94150071757536, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94150071757952, i32 50, i32 63), !dbg !98
  %31 = fmul double %27, %30, !dbg !98
  call void @fMulHandler(double %27, double %30, double %31, i64 94150071756744, i64 94150071757952, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94150071758368, i32 50, i32 58), !dbg !99
  %32 = fadd double 0x3EC71DE3A556C734, %31, !dbg !99
  call void @fAddHandler(double 0x3EC71DE3A556C734, double %31, double %32, i64 0, i64 94150071758368, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94150071758784, i32 50, i32 55), !dbg !100
  %33 = fmul double %26, %32, !dbg !100
  call void @fMulHandler(double %26, double %32, double %33, i64 94150071756360, i64 94150071758784, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94150071759200, i32 50, i32 50), !dbg !101
  %34 = fadd double 0xBF2A01A01A01A01A, %33, !dbg !101
  call void @fAddHandler(double 0xBF2A01A01A01A01A, double %33, double %34, i64 0, i64 94150071759200, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94150071760144, i32 50, i32 47), !dbg !102
  %35 = fmul double %25, %34, !dbg !102
  call void @fMulHandler(double %25, double %34, double %35, i64 94150071755976, i64 94150071760144, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94150071760560, i32 50, i32 42), !dbg !103
  %36 = fadd double 0x3F81111111111111, %35, !dbg !103
  call void @fAddHandler(double 0x3F81111111111111, double %35, double %36, i64 0, i64 94150071760560, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94150071760976, i32 50, i32 39), !dbg !104
  %37 = fmul double %24, %36, !dbg !104
  call void @fMulHandler(double %24, double %36, double %37, i64 94150071755592, i64 94150071760976, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94150071761392, i32 50, i32 34), !dbg !105
  %38 = fadd double 0xBFC5555555555555, %37, !dbg !105
  call void @fAddHandler(double 0xBFC5555555555555, double %37, double %38, i64 0, i64 94150071761392, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94150071761808, i32 50, i32 31), !dbg !106
  %39 = fmul double %23, %38, !dbg !106
  call void @fMulHandler(double %23, double %38, double %39, i64 94150071755240, i64 94150071761808, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94150071762224, i32 50, i32 26), !dbg !107
  %40 = fadd double 1.000000e+00, %39, !dbg !107
  call void @fAddHandler(double 1.000000e+00, double %39, double %40, i64 0, i64 94150071762224, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94150071762736, i32 50, i32 23), !dbg !108
  %41 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !108
  %42 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %41, i32 0, i32 0, !dbg !109
  store double %40, double* %42, align 8, !dbg !110
  %43 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !111
  %44 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %43, i32 0, i32 0, !dbg !112
  %45 = load double, double* %44, align 8, !dbg !112
  %46 = call double @fabs(double %45) #1, !dbg !113
  %47 = fmul double 0x3CC0000000000000, %46, !dbg !114
  call void @fMulHandler(double 0x3CC0000000000000, double %46, double %47, i64 0, i64 94150071766976, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94150071767520, i32 51, i32 41), !dbg !115
  %48 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !115
  %49 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %48, i32 0, i32 1, !dbg !116
  store double %47, double* %49, align 8, !dbg !117
  store i32 0, i32* %3, align 4, !dbg !118
  br label %64, !dbg !118

; <label>:50:                                     ; preds = %2
  %51 = load double, double* %4, align 8, !dbg !119
  %52 = call double @sin(double %51) #5, !dbg !121
  call void @callOneArgHandler(i32 1, double %51, double %52, i64 94150071771368, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94150071772048, i32 55, i32 19), !dbg !122
  %53 = load double, double* %4, align 8, !dbg !122
  %54 = fdiv double %52, %53, !dbg !123
  call void @fDivHandler(double %52, double %53, double %54, i64 94150071772048, i64 94150071772536, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94150071772944, i32 55, i32 26), !dbg !124
  %55 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !124
  %56 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %55, i32 0, i32 0, !dbg !125
  store double %54, double* %56, align 8, !dbg !126
  %57 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !127
  %58 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %57, i32 0, i32 0, !dbg !128
  %59 = load double, double* %58, align 8, !dbg !128
  %60 = call double @fabs(double %59) #1, !dbg !129
  %61 = fmul double 0x3CC0000000000000, %60, !dbg !130
  call void @fMulHandler(double 0x3CC0000000000000, double %60, double %61, i64 0, i64 94150071777152, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94150071777632, i32 56, i32 41), !dbg !131
  %62 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !131
  %63 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %62, i32 0, i32 1, !dbg !132
  store double %61, double* %63, align 8, !dbg !133
  store i32 0, i32* %3, align 4, !dbg !134
  br label %64, !dbg !134

; <label>:64:                                     ; preds = %50, %19
  %65 = load i32, i32* %3, align 4, !dbg !135
  ret i32 %65, !dbg !135
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readnone
declare double @fabs(double) #2

; Function Attrs: nounwind
declare double @sin(double) #3

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_bessel_j1_e(double, %struct.gsl_sf_result_struct*) #0 !dbg !136 {
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
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !137, metadata !60), !dbg !138
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %5, metadata !139, metadata !60), !dbg !140
  call void @llvm.dbg.declare(metadata double* %6, metadata !141, metadata !60), !dbg !142
  %16 = load double, double* %4, align 8, !dbg !143
  %17 = call double @fabs(double %16) #1, !dbg !144
  store double %17, double* %6, align 8, !dbg !142
  %18 = load double, double* %4, align 8, !dbg !145
  %19 = fcmp oeq double %18, 0.000000e+00, !dbg !147
  %20 = call i1 @fCmpInstHandler(double %18, double 0.000000e+00, i1 %19, i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94150071794176, i32 68, i32 8), !dbg !148
  br i1 %20, label %21, label %26, !dbg !148

; <label>:21:                                     ; preds = %2
  %22 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !149
  %23 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %22, i32 0, i32 0, !dbg !151
  store double 0.000000e+00, double* %23, align 8, !dbg !152
  %24 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !153
  %25 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %24, i32 0, i32 1, !dbg !154
  store double 0.000000e+00, double* %25, align 8, !dbg !155
  store i32 0, i32* %3, align 4, !dbg !156
  br label %113, !dbg !156

; <label>:26:                                     ; preds = %2
  %27 = load double, double* %6, align 8, !dbg !157
  %28 = fcmp olt double %27, 0x28CCCCCCCCCCCD, !dbg !159
  %29 = call i1 @fCmpInstHandler(double %27, double 0x28CCCCCCCCCCCD, i1 %28, i32 4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94150071800240, i32 73, i32 14), !dbg !160
  br i1 %29, label %30, label %39, !dbg !160

; <label>:30:                                     ; preds = %26
  br label %31, !dbg !161, !llvm.loop !163

; <label>:31:                                     ; preds = %30
  %32 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !164
  %33 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %32, i32 0, i32 0, !dbg !164
  store double 0.000000e+00, double* %33, align 8, !dbg !164
  %34 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !164
  %35 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %34, i32 0, i32 1, !dbg !164
  store double 0x10000000000000, double* %35, align 8, !dbg !164
  br label %36, !dbg !164, !llvm.loop !167

; <label>:36:                                     ; preds = %31
  call void @gsl_error(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 74, i32 15), !dbg !169
  store i32 15, i32* %3, align 4, !dbg !169
  br label %113, !dbg !169
                                                  ; No predecessors!
  br label %38, !dbg !172

; <label>:38:                                     ; preds = %37
  br label %112, !dbg !174

; <label>:39:                                     ; preds = %26
  %40 = load double, double* %6, align 8, !dbg !175
  %41 = fcmp olt double %40, 2.500000e-01, !dbg !177
  %42 = call i1 @fCmpInstHandler(double %40, double 2.500000e-01, i1 %41, i32 4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94150071814336, i32 76, i32 14), !dbg !178
  br i1 %42, label %43, label %75, !dbg !178

; <label>:43:                                     ; preds = %39
  call void @llvm.dbg.declare(metadata double* %7, metadata !179, metadata !60), !dbg !181
  %44 = load double, double* %4, align 8, !dbg !182
  %45 = load double, double* %4, align 8, !dbg !183
  %46 = fmul double %44, %45, !dbg !184
  call void @fMulHandler(double %44, double %45, double %46, i64 94150071816568, i64 94150071816920, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94150071817328, i32 77, i32 23), !dbg !181
  store double %46, double* %7, align 8, !dbg !181
  call void @llvm.dbg.declare(metadata double* %8, metadata !185, metadata !60), !dbg !186
  store double -1.000000e-01, double* %8, align 8, !dbg !186
  call void @llvm.dbg.declare(metadata double* %9, metadata !187, metadata !60), !dbg !188
  store double 0x3F6D41D41D41D41D, double* %9, align 8, !dbg !188
  call void @llvm.dbg.declare(metadata double* %10, metadata !189, metadata !60), !dbg !190
  store double 0xBF11566ABC011567, double* %10, align 8, !dbg !190
  call void @llvm.dbg.declare(metadata double* %11, metadata !191, metadata !60), !dbg !192
  store double 0x3EA937E11175F095, double* %11, align 8, !dbg !192
  call void @llvm.dbg.declare(metadata double* %12, metadata !193, metadata !60), !dbg !194
  store double 0xBE38D48ED61D7AAB, double* %12, align 8, !dbg !194
  call void @llvm.dbg.declare(metadata double* %13, metadata !195, metadata !60), !dbg !196
  %47 = load double, double* %7, align 8, !dbg !197
  %48 = load double, double* %7, align 8, !dbg !198
  %49 = load double, double* %7, align 8, !dbg !199
  %50 = load double, double* %7, align 8, !dbg !200
  %51 = load double, double* %7, align 8, !dbg !201
  %52 = fmul double %51, 0xBE38D48ED61D7AAB, !dbg !202
  call void @fMulHandler(double %51, double 0xBE38D48ED61D7AAB, double %52, i64 94150071836184, i64 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94150071836592, i32 83, i32 63), !dbg !203
  %53 = fadd double 0x3EA937E11175F095, %52, !dbg !203
  call void @fAddHandler(double 0x3EA937E11175F095, double %52, double %53, i64 0, i64 94150071836592, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94150071837008, i32 83, i32 60), !dbg !204
  %54 = fmul double %50, %53, !dbg !204
  call void @fMulHandler(double %50, double %53, double %54, i64 94150071835800, i64 94150071837008, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94150071837424, i32 83, i32 55), !dbg !205
  %55 = fadd double 0xBF11566ABC011567, %54, !dbg !205
  call void @fAddHandler(double 0xBF11566ABC011567, double %54, double %55, i64 0, i64 94150071837424, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94150071837840, i32 83, i32 52), !dbg !206
  %56 = fmul double %49, %55, !dbg !206
  call void @fMulHandler(double %49, double %55, double %56, i64 94150071835416, i64 94150071837840, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94150071838256, i32 83, i32 47), !dbg !207
  %57 = fadd double 0x3F6D41D41D41D41D, %56, !dbg !207
  call void @fAddHandler(double 0x3F6D41D41D41D41D, double %56, double %57, i64 0, i64 94150071838256, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94150071838672, i32 83, i32 44), !dbg !208
  %58 = fmul double %48, %57, !dbg !208
  call void @fMulHandler(double %48, double %57, double %58, i64 94150071835032, i64 94150071838672, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94150071839088, i32 83, i32 39), !dbg !209
  %59 = fadd double -1.000000e-01, %58, !dbg !209
  call void @fAddHandler(double -1.000000e-01, double %58, double %59, i64 0, i64 94150071839088, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94150071839536, i32 83, i32 36), !dbg !210
  %60 = fmul double %47, %59, !dbg !210
  call void @fMulHandler(double %47, double %59, double %60, i64 94150071834680, i64 94150071839536, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94150071839920, i32 83, i32 31), !dbg !211
  %61 = fadd double 1.000000e+00, %60, !dbg !211
  call void @fAddHandler(double 1.000000e+00, double %60, double %61, i64 0, i64 94150071839920, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94150071840368, i32 83, i32 28), !dbg !196
  store double %61, double* %13, align 8, !dbg !196
  %62 = load double, double* %4, align 8, !dbg !212
  %63 = fdiv double %62, 3.000000e+00, !dbg !213
  call void @fDivHandler(double %62, double 3.000000e+00, double %63, i64 94150071842408, i64 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94150071842912, i32 84, i32 20), !dbg !214
  %64 = load double, double* %13, align 8, !dbg !214
  %65 = fmul double %63, %64, !dbg !215
  call void @fMulHandler(double %63, double %64, double %65, i64 94150071842912, i64 94150071843272, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94150071843680, i32 84, i32 25), !dbg !216
  %66 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !216
  %67 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %66, i32 0, i32 0, !dbg !217
  store double %65, double* %67, align 8, !dbg !218
  %68 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !219
  %69 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %68, i32 0, i32 0, !dbg !220
  %70 = load double, double* %69, align 8, !dbg !220
  %71 = call double @fabs(double %70) #1, !dbg !221
  %72 = fmul double 0x3CC0000000000000, %71, !dbg !222
  call void @fMulHandler(double 0x3CC0000000000000, double %71, double %72, i64 0, i64 94150071847888, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94150071848368, i32 85, i32 41), !dbg !223
  %73 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !223
  %74 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %73, i32 0, i32 1, !dbg !224
  store double %72, double* %74, align 8, !dbg !225
  store i32 0, i32* %3, align 4, !dbg !226
  br label %113, !dbg !226

; <label>:75:                                     ; preds = %39
  call void @llvm.dbg.declare(metadata double* %14, metadata !227, metadata !60), !dbg !229
  %76 = load double, double* %4, align 8, !dbg !230
  %77 = call double @cos(double %76) #5, !dbg !231
  call void @callOneArgHandler(i32 2, double %76, double %77, i64 94150071853128, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94150071853840, i32 89, i32 26), !dbg !229
  store double %77, double* %14, align 8, !dbg !229
  call void @llvm.dbg.declare(metadata double* %15, metadata !232, metadata !60), !dbg !233
  %78 = load double, double* %4, align 8, !dbg !234
  %79 = call double @sin(double %78) #5, !dbg !235
  call void @callOneArgHandler(i32 1, double %78, double %79, i64 94150071857176, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94150071857616, i32 90, i32 26), !dbg !233
  store double %79, double* %15, align 8, !dbg !233
  %80 = load double, double* %15, align 8, !dbg !236
  %81 = load double, double* %4, align 8, !dbg !237
  %82 = fdiv double %80, %81, !dbg !238
  call void @fDivHandler(double %80, double %81, double %82, i64 94150071859752, i64 94150071860136, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94150071860544, i32 91, i32 26), !dbg !239
  %83 = load double, double* %14, align 8, !dbg !239
  %84 = fsub double %82, %83, !dbg !240
  call void @fSubHandler(double %82, double %83, double %84, i64 94150071860544, i64 94150071860936, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94150071861344, i32 91, i32 29), !dbg !241
  %85 = load double, double* %4, align 8, !dbg !241
  %86 = fdiv double %84, %85, !dbg !242
  call void @fDivHandler(double %84, double %85, double %86, i64 94150071861344, i64 94150071861736, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94150071862144, i32 91, i32 37), !dbg !243
  %87 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !243
  %88 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %87, i32 0, i32 0, !dbg !244
  store double %86, double* %88, align 8, !dbg !245
  %89 = load double, double* %15, align 8, !dbg !246
  %90 = load double, double* %4, align 8, !dbg !247
  %91 = load double, double* %4, align 8, !dbg !248
  %92 = fmul double %90, %91, !dbg !249
  call void @fMulHandler(double %90, double %91, double %92, i64 94150071864168, i64 94150071864552, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94150071864960, i32 92, i32 58), !dbg !250
  %93 = fdiv double %89, %92, !dbg !250
  call void @fDivHandler(double %89, double %92, double %93, i64 94150071863784, i64 94150071864960, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94150071865376, i32 92, i32 55), !dbg !251
  %94 = call double @fabs(double %93) #1, !dbg !251
  %95 = load double, double* %14, align 8, !dbg !252
  %96 = load double, double* %4, align 8, !dbg !253
  %97 = fdiv double %95, %96, !dbg !254
  call void @fDivHandler(double %95, double %96, double %97, i64 94150071866312, i64 94150071866696, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94150071867104, i32 92, i32 75), !dbg !255
  %98 = call double @fabs(double %97) #1, !dbg !255
  %99 = fadd double %94, %98, !dbg !257
  call void @fAddHandler(double %94, double %98, double %99, i64 94150071865856, i64 94150071867584, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94150071868064, i32 92, i32 63), !dbg !258
  %100 = fmul double 0x3CC0000000000000, %99, !dbg !258
  call void @fMulHandler(double 0x3CC0000000000000, double %99, double %100, i64 0, i64 94150071868064, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94150071868480, i32 92, i32 42), !dbg !259
  %101 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !259
  %102 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %101, i32 0, i32 1, !dbg !260
  store double %100, double* %102, align 8, !dbg !261
  %103 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !262
  %104 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %103, i32 0, i32 0, !dbg !263
  %105 = load double, double* %104, align 8, !dbg !263
  %106 = call double @fabs(double %105) #1, !dbg !264
  %107 = fmul double 0x3CC0000000000000, %106, !dbg !265
  call void @fMulHandler(double 0x3CC0000000000000, double %106, double %107, i64 0, i64 94150071872688, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94150071873168, i32 93, i32 42), !dbg !266
  %108 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !266
  %109 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %108, i32 0, i32 1, !dbg !267
  %110 = load double, double* %109, align 8, !dbg !268
  %111 = fadd double %110, %107, !dbg !268
  call void @fAddHandler(double %110, double %107, double %111, i64 94150071874392, i64 94150071873168, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94150071874800, i32 93, i32 17), !dbg !268
  store double %111, double* %109, align 8, !dbg !268
  store i32 0, i32* %3, align 4, !dbg !269
  br label %113, !dbg !269

; <label>:112:                                    ; preds = %38
  br label %113

; <label>:113:                                    ; preds = %112, %75, %43, %36, %21
  %114 = load i32, i32* %3, align 4, !dbg !270
  ret i32 %114, !dbg !270
}

declare void @gsl_error(i8*, i8*, i32, i32) #4

; Function Attrs: nounwind
declare double @cos(double) #3

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_bessel_j2_e(double, %struct.gsl_sf_result_struct*) #0 !dbg !271 {
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
  call void @llvm.dbg.declare(metadata double* %4, metadata !272, metadata !60), !dbg !273
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %5, metadata !274, metadata !60), !dbg !275
  call void @llvm.dbg.declare(metadata double* %6, metadata !276, metadata !60), !dbg !277
  %21 = load double, double* %4, align 8, !dbg !278
  %22 = call double @fabs(double %21) #1, !dbg !279
  store double %22, double* %6, align 8, !dbg !277
  %23 = load double, double* %4, align 8, !dbg !280
  %24 = fcmp oeq double %23, 0.000000e+00, !dbg !282
  %25 = call i1 @fCmpInstHandler(double %23, double 0.000000e+00, i1 %24, i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94150071892496, i32 105, i32 8), !dbg !283
  br i1 %25, label %26, label %31, !dbg !283

; <label>:26:                                     ; preds = %2
  %27 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !284
  %28 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %27, i32 0, i32 0, !dbg !286
  store double 0.000000e+00, double* %28, align 8, !dbg !287
  %29 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !288
  %30 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %29, i32 0, i32 1, !dbg !289
  store double 0.000000e+00, double* %30, align 8, !dbg !290
  store i32 0, i32* %3, align 4, !dbg !291
  br label %141, !dbg !291

; <label>:31:                                     ; preds = %2
  %32 = load double, double* %6, align 8, !dbg !292
  %33 = fcmp olt double %32, 0x2020000000000000, !dbg !294
  %34 = call i1 @fCmpInstHandler(double %32, double 0x2020000000000000, i1 %33, i32 4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94150071898656, i32 110, i32 14), !dbg !295
  br i1 %34, label %35, label %44, !dbg !295

; <label>:35:                                     ; preds = %31
  br label %36, !dbg !296, !llvm.loop !298

; <label>:36:                                     ; preds = %35
  %37 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !299
  %38 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %37, i32 0, i32 0, !dbg !299
  store double 0.000000e+00, double* %38, align 8, !dbg !299
  %39 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !299
  %40 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %39, i32 0, i32 1, !dbg !299
  store double 0x10000000000000, double* %40, align 8, !dbg !299
  br label %41, !dbg !299, !llvm.loop !302

; <label>:41:                                     ; preds = %36
  call void @gsl_error(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 111, i32 15), !dbg !304
  store i32 15, i32* %3, align 4, !dbg !304
  br label %141, !dbg !304
                                                  ; No predecessors!
  br label %43, !dbg !307

; <label>:43:                                     ; preds = %42
  br label %140, !dbg !309

; <label>:44:                                     ; preds = %31
  %45 = load double, double* %6, align 8, !dbg !310
  %46 = fcmp olt double %45, 1.300000e+00, !dbg !312
  %47 = call i1 @fCmpInstHandler(double %45, double 1.300000e+00, i1 %46, i32 4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94150071907456, i32 113, i32 14), !dbg !313
  br i1 %47, label %48, label %92, !dbg !313

; <label>:48:                                     ; preds = %44
  call void @llvm.dbg.declare(metadata double* %7, metadata !314, metadata !60), !dbg !316
  %49 = load double, double* %4, align 8, !dbg !317
  %50 = load double, double* %4, align 8, !dbg !318
  %51 = fmul double %49, %50, !dbg !319
  call void @fMulHandler(double %49, double %50, double %51, i64 94150071909592, i64 94150071909944, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94150071910352, i32 114, i32 24), !dbg !316
  store double %51, double* %7, align 8, !dbg !316
  call void @llvm.dbg.declare(metadata double* %8, metadata !320, metadata !60), !dbg !321
  store double 0xBFB2492492492492, double* %8, align 8, !dbg !321
  call void @llvm.dbg.declare(metadata double* %9, metadata !322, metadata !60), !dbg !323
  store double 0x3F60410410410410, double* %9, align 8, !dbg !323
  call void @llvm.dbg.declare(metadata double* %10, metadata !324, metadata !60), !dbg !325
  store double 0xBEFF85D955D36CBB, double* %10, align 8, !dbg !325
  call void @llvm.dbg.declare(metadata double* %11, metadata !326, metadata !60), !dbg !327
  store double 0x3E93660F974707D5, double* %11, align 8, !dbg !327
  call void @llvm.dbg.declare(metadata double* %12, metadata !328, metadata !60), !dbg !329
  store double 0xBE208DB48EBE51C7, double* %12, align 8, !dbg !329
  call void @llvm.dbg.declare(metadata double* %13, metadata !330, metadata !60), !dbg !331
  store double 0x3DA4C5E79A07EE27, double* %13, align 8, !dbg !331
  call void @llvm.dbg.declare(metadata double* %14, metadata !332, metadata !60), !dbg !333
  store double 0xBD23FDFBC45C52EA, double* %14, align 8, !dbg !333
  call void @llvm.dbg.declare(metadata double* %15, metadata !334, metadata !60), !dbg !335
  store double 0x3C9E76D4FA744D95, double* %15, align 8, !dbg !335
  call void @llvm.dbg.declare(metadata double* %16, metadata !336, metadata !60), !dbg !337
  store double 0xBC12D6775460A6B3, double* %16, align 8, !dbg !337
  call void @llvm.dbg.declare(metadata double* %17, metadata !338, metadata !60), !dbg !339
  %52 = load double, double* %7, align 8, !dbg !340
  %53 = load double, double* %7, align 8, !dbg !341
  %54 = load double, double* %7, align 8, !dbg !342
  %55 = load double, double* %7, align 8, !dbg !343
  %56 = load double, double* %7, align 8, !dbg !344
  %57 = load double, double* %7, align 8, !dbg !345
  %58 = load double, double* %7, align 8, !dbg !346
  %59 = load double, double* %7, align 8, !dbg !347
  %60 = load double, double* %7, align 8, !dbg !348
  %61 = fmul double %60, 0xBC12D6775460A6B3, !dbg !349
  call void @fMulHandler(double %60, double 0xBC12D6775460A6B3, double %61, i64 94150071942072, i64 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94150071942480, i32 124, i32 77), !dbg !350
  %62 = fadd double 0x3C9E76D4FA744D95, %61, !dbg !350
  call void @fAddHandler(double 0x3C9E76D4FA744D95, double %61, double %62, i64 0, i64 94150071942480, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94150071942896, i32 124, i32 75), !dbg !351
  %63 = fmul double %59, %62, !dbg !351
  call void @fMulHandler(double %59, double %62, double %63, i64 94150071941688, i64 94150071942896, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94150071943312, i32 124, i32 71), !dbg !352
  %64 = fadd double 0xBD23FDFBC45C52EA, %63, !dbg !352
  call void @fAddHandler(double 0xBD23FDFBC45C52EA, double %63, double %64, i64 0, i64 94150071943312, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94150071943728, i32 124, i32 69), !dbg !353
  %65 = fmul double %58, %64, !dbg !353
  call void @fMulHandler(double %58, double %64, double %65, i64 94150071941304, i64 94150071943728, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94150071944144, i32 124, i32 65), !dbg !354
  %66 = fadd double 0x3DA4C5E79A07EE27, %65, !dbg !354
  call void @fAddHandler(double 0x3DA4C5E79A07EE27, double %65, double %66, i64 0, i64 94150071944144, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94150071944560, i32 124, i32 63), !dbg !355
  %67 = fmul double %57, %66, !dbg !355
  call void @fMulHandler(double %57, double %66, double %67, i64 94150071940920, i64 94150071944560, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94150071944976, i32 124, i32 59), !dbg !356
  %68 = fadd double 0xBE208DB48EBE51C7, %67, !dbg !356
  call void @fAddHandler(double 0xBE208DB48EBE51C7, double %67, double %68, i64 0, i64 94150071944976, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94150071945392, i32 124, i32 57), !dbg !357
  %69 = fmul double %56, %68, !dbg !357
  call void @fMulHandler(double %56, double %68, double %69, i64 94150071940536, i64 94150071945392, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94150071945808, i32 124, i32 53), !dbg !358
  %70 = fadd double 0x3E93660F974707D5, %69, !dbg !358
  call void @fAddHandler(double 0x3E93660F974707D5, double %69, double %70, i64 0, i64 94150071945808, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94150071946224, i32 124, i32 51), !dbg !359
  %71 = fmul double %55, %70, !dbg !359
  call void @fMulHandler(double %55, double %70, double %71, i64 94150071940152, i64 94150071946224, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94150071946640, i32 124, i32 47), !dbg !360
  %72 = fadd double 0xBEFF85D955D36CBB, %71, !dbg !360
  call void @fAddHandler(double 0xBEFF85D955D36CBB, double %71, double %72, i64 0, i64 94150071946640, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94150071947056, i32 124, i32 45), !dbg !361
  %73 = fmul double %54, %72, !dbg !361
  call void @fMulHandler(double %54, double %72, double %73, i64 94150071939768, i64 94150071947056, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94150071947472, i32 124, i32 41), !dbg !362
  %74 = fadd double 0x3F60410410410410, %73, !dbg !362
  call void @fAddHandler(double 0x3F60410410410410, double %73, double %74, i64 0, i64 94150071947472, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94150071947888, i32 124, i32 39), !dbg !363
  %75 = fmul double %53, %74, !dbg !363
  call void @fMulHandler(double %53, double %74, double %75, i64 94150071939384, i64 94150071947888, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94150071948304, i32 124, i32 35), !dbg !364
  %76 = fadd double 0xBFB2492492492492, %75, !dbg !364
  call void @fAddHandler(double 0xBFB2492492492492, double %75, double %76, i64 0, i64 94150071948304, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94150071948720, i32 124, i32 33), !dbg !365
  %77 = fmul double %52, %76, !dbg !365
  call void @fMulHandler(double %52, double %76, double %77, i64 94150071939032, i64 94150071948720, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94150071949136, i32 124, i32 29), !dbg !366
  %78 = fadd double 1.000000e+00, %77, !dbg !366
  call void @fAddHandler(double 1.000000e+00, double %77, double %78, i64 0, i64 94150071949136, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94150071949584, i32 124, i32 27), !dbg !339
  store double %78, double* %17, align 8, !dbg !339
  %79 = load double, double* %7, align 8, !dbg !367
  %80 = fdiv double %79, 1.500000e+01, !dbg !368
  call void @fDivHandler(double %79, double 1.500000e+01, double %80, i64 94150071951624, i64 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94150071952128, i32 125, i32 20), !dbg !369
  %81 = load double, double* %17, align 8, !dbg !369
  %82 = fmul double %80, %81, !dbg !370
  call void @fMulHandler(double %80, double %81, double %82, i64 94150071952128, i64 94150071952488, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94150071952896, i32 125, i32 26), !dbg !371
  %83 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !371
  %84 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %83, i32 0, i32 0, !dbg !372
  store double %82, double* %84, align 8, !dbg !373
  %85 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !374
  %86 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %85, i32 0, i32 0, !dbg !375
  %87 = load double, double* %86, align 8, !dbg !375
  %88 = call double @fabs(double %87) #1, !dbg !376
  %89 = fmul double 0x3CC0000000000000, %88, !dbg !377
  call void @fMulHandler(double 0x3CC0000000000000, double %88, double %89, i64 0, i64 94150071957104, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94150071957584, i32 126, i32 41), !dbg !378
  %90 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !378
  %91 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %90, i32 0, i32 1, !dbg !379
  store double %89, double* %91, align 8, !dbg !380
  store i32 0, i32* %3, align 4, !dbg !381
  br label %141, !dbg !381

; <label>:92:                                     ; preds = %44
  call void @llvm.dbg.declare(metadata double* %18, metadata !382, metadata !60), !dbg !384
  %93 = load double, double* %4, align 8, !dbg !385
  %94 = call double @cos(double %93) #5, !dbg !386
  call void @callOneArgHandler(i32 2, double %93, double %94, i64 94150071962344, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94150071962784, i32 145, i32 26), !dbg !384
  store double %94, double* %18, align 8, !dbg !384
  call void @llvm.dbg.declare(metadata double* %19, metadata !387, metadata !60), !dbg !388
  %95 = load double, double* %4, align 8, !dbg !389
  %96 = call double @sin(double %95) #5, !dbg !390
  call void @callOneArgHandler(i32 1, double %95, double %96, i64 94150071966040, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94150071966480, i32 146, i32 26), !dbg !388
  store double %96, double* %19, align 8, !dbg !388
  call void @llvm.dbg.declare(metadata double* %20, metadata !391, metadata !60), !dbg !392
  %97 = load double, double* %4, align 8, !dbg !393
  %98 = load double, double* %4, align 8, !dbg !394
  %99 = fmul double %97, %98, !dbg !395
  call void @fMulHandler(double %97, double %98, double %99, i64 94150071969736, i64 94150071970088, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94150071970496, i32 147, i32 29), !dbg !396
  %100 = fdiv double 3.000000e+00, %99, !dbg !396
  call void @fDivHandler(double 3.000000e+00, double %99, double %100, i64 0, i64 94150071970496, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94150071970944, i32 147, i32 26), !dbg !397
  %101 = fsub double %100, 1.000000e+00, !dbg !397
  call void @fSubHandler(double %100, double 1.000000e+00, double %101, i64 94150071970944, i64 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94150071971360, i32 147, i32 33), !dbg !392
  store double %101, double* %20, align 8, !dbg !392
  %102 = load double, double* %20, align 8, !dbg !398
  %103 = load double, double* %19, align 8, !dbg !399
  %104 = fmul double %102, %103, !dbg !400
  call void @fMulHandler(double %102, double %103, double %104, i64 94150071973400, i64 94150071973784, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94150071974192, i32 148, i32 23), !dbg !401
  %105 = load double, double* %18, align 8, !dbg !401
  %106 = fmul double 3.000000e+00, %105, !dbg !402
  call void @fMulHandler(double 3.000000e+00, double %105, double %106, i64 0, i64 94150071974584, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94150071975024, i32 148, i32 36), !dbg !403
  %107 = load double, double* %4, align 8, !dbg !403
  %108 = fdiv double %106, %107, !dbg !404
  call void @fDivHandler(double %106, double %107, double %108, i64 94150071975024, i64 94150071975384, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94150071975792, i32 148, i32 42), !dbg !405
  %109 = fsub double %104, %108, !dbg !405
  call void @fSubHandler(double %104, double %108, double %109, i64 94150071974192, i64 94150071975792, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94150071976208, i32 148, i32 31), !dbg !406
  %110 = load double, double* %4, align 8, !dbg !406
  %111 = fdiv double %109, %110, !dbg !407
  call void @fDivHandler(double %109, double %110, double %111, i64 94150071976208, i64 94150071976600, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94150071977008, i32 148, i32 45), !dbg !408
  %112 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !408
  %113 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %112, i32 0, i32 0, !dbg !409
  store double %111, double* %113, align 8, !dbg !410
  %114 = load double, double* %20, align 8, !dbg !411
  %115 = load double, double* %19, align 8, !dbg !412
  %116 = fmul double %114, %115, !dbg !413
  call void @fMulHandler(double %114, double %115, double %116, i64 94150071978648, i64 94150071979032, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94150071979440, i32 149, i32 50), !dbg !414
  %117 = load double, double* %4, align 8, !dbg !414
  %118 = fdiv double %116, %117, !dbg !415
  call void @fDivHandler(double %116, double %117, double %118, i64 94150071979440, i64 94150071979832, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94150071980240, i32 149, i32 56), !dbg !416
  %119 = call double @fabs(double %118) #1, !dbg !416
  %120 = load double, double* %18, align 8, !dbg !417
  %121 = load double, double* %4, align 8, !dbg !418
  %122 = load double, double* %4, align 8, !dbg !419
  %123 = fmul double %121, %122, !dbg !420
  call void @fMulHandler(double %121, double %122, double %123, i64 94150071981560, i64 94150071981944, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94150071982352, i32 149, i32 79), !dbg !421
  %124 = fdiv double %120, %123, !dbg !421
  call void @fDivHandler(double %120, double %123, double %124, i64 94150071981176, i64 94150071982352, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94150071982768, i32 149, i32 76), !dbg !422
  %125 = call double @fabs(double %124) #1, !dbg !422
  %126 = fmul double 3.000000e+00, %125, !dbg !424
  call void @fMulHandler(double 3.000000e+00, double %125, double %126, i64 0, i64 94150071983248, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94150071983760, i32 149, i32 65), !dbg !425
  %127 = fadd double %119, %126, !dbg !425
  call void @fAddHandler(double %119, double %126, double %127, i64 94150071980720, i64 94150071983760, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94150071984144, i32 149, i32 60), !dbg !426
  %128 = fmul double 0x3CC0000000000000, %127, !dbg !426
  call void @fMulHandler(double 0x3CC0000000000000, double %127, double %128, i64 0, i64 94150071984144, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94150071984560, i32 149, i32 41), !dbg !427
  %129 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !427
  %130 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %129, i32 0, i32 1, !dbg !428
  store double %128, double* %130, align 8, !dbg !429
  %131 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !430
  %132 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %131, i32 0, i32 0, !dbg !431
  %133 = load double, double* %132, align 8, !dbg !431
  %134 = call double @fabs(double %133) #1, !dbg !432
  %135 = fmul double 0x3CC0000000000000, %134, !dbg !433
  call void @fMulHandler(double 0x3CC0000000000000, double %134, double %135, i64 0, i64 94150071990832, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94150071991312, i32 150, i32 42), !dbg !434
  %136 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !434
  %137 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %136, i32 0, i32 1, !dbg !435
  %138 = load double, double* %137, align 8, !dbg !436
  %139 = fadd double %138, %135, !dbg !436
  call void @fAddHandler(double %138, double %135, double %139, i64 94150071992536, i64 94150071991312, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94150071992944, i32 150, i32 17), !dbg !436
  store double %139, double* %137, align 8, !dbg !436
  store i32 0, i32* %3, align 4, !dbg !437
  br label %141, !dbg !437

; <label>:140:                                    ; preds = %43
  br label %141

; <label>:141:                                    ; preds = %140, %92, %48, %41, %26
  %142 = load i32, i32* %3, align 4, !dbg !438
  ret i32 %142, !dbg !438
}

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_bessel_jl_e(i32, double, %struct.gsl_sf_result_struct*) #0 !dbg !439 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca %struct.gsl_sf_result_struct*, align 8
  %8 = alloca %struct.gsl_sf_result_struct, align 8
  %9 = alloca i32, align 4
  %10 = alloca double, align 8
  %11 = alloca %struct.gsl_sf_result_struct, align 8
  %12 = alloca i32, align 4
  %13 = alloca double, align 8
  %14 = alloca %struct.gsl_sf_result_struct, align 8
  %15 = alloca i32, align 4
  %16 = alloca double, align 8
  %17 = alloca %struct.gsl_sf_result_struct, align 8
  %18 = alloca i32, align 4
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  %22 = alloca i32, align 4
  %23 = alloca double, align 8
  %24 = alloca double, align 8
  %25 = alloca double, align 8
  %26 = alloca double, align 8
  %27 = alloca i32, align 4
  %28 = alloca %struct.gsl_sf_result_struct, align 8
  %29 = alloca i32, align 4
  %30 = alloca double, align 8
  %31 = alloca %struct.gsl_sf_result_struct, align 8
  %32 = alloca i32, align 4
  %33 = alloca double, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !443, metadata !60), !dbg !444
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !445, metadata !60), !dbg !446
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %7, metadata !447, metadata !60), !dbg !448
  %34 = load i32, i32* %5, align 4, !dbg !449
  %35 = icmp slt i32 %34, 0, !dbg !451
  %36 = sext i32 %34 to i64, !dbg !452
  %37 = call i1 @iCmpInstHandler(i64 %36, i64 0, i1 %35, i32 40, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94150072005088, i32 161, i32 8), !dbg !452
  br i1 %37, label %42, label %38, !dbg !452

; <label>:38:                                     ; preds = %3
  %39 = load double, double* %6, align 8, !dbg !453
  %40 = fcmp olt double %39, 0.000000e+00, !dbg !455
  %41 = call i1 @fCmpInstHandler(double %39, double 0.000000e+00, i1 %40, i32 4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94150072006544, i32 161, i32 17), !dbg !456
  br i1 %41, label %42, label %51, !dbg !456

; <label>:42:                                     ; preds = %38, %3
  br label %43, !dbg !457, !llvm.loop !459

; <label>:43:                                     ; preds = %42
  %44 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !460
  %45 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %44, i32 0, i32 0, !dbg !460
  store double 0x7FF8000000000000, double* %45, align 8, !dbg !460
  %46 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !460
  %47 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %46, i32 0, i32 1, !dbg !460
  store double 0x7FF8000000000000, double* %47, align 8, !dbg !460
  br label %48, !dbg !460, !llvm.loop !463

; <label>:48:                                     ; preds = %43
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 162, i32 1), !dbg !465
  store i32 1, i32* %4, align 4, !dbg !465
  br label %385, !dbg !465
                                                  ; No predecessors!
  br label %50, !dbg !468

; <label>:50:                                     ; preds = %49
  br label %385, !dbg !470

; <label>:51:                                     ; preds = %38
  %52 = load double, double* %6, align 8, !dbg !471
  %53 = fcmp oeq double %52, 0.000000e+00, !dbg !473
  %54 = call i1 @fCmpInstHandler(double %52, double 0.000000e+00, i1 %53, i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94150072015296, i32 164, i32 13), !dbg !474
  br i1 %54, label %55, label %65, !dbg !474

; <label>:55:                                     ; preds = %51
  %56 = load i32, i32* %5, align 4, !dbg !475
  %57 = icmp sgt i32 %56, 0, !dbg !477
  %58 = sext i32 %56 to i64, !dbg !475
  %59 = call i1 @iCmpInstHandler(i64 %58, i64 0, i1 %57, i32 38, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94150072016752, i32 165, i32 23), !dbg !475
  %60 = select i1 %59, double 0.000000e+00, double 1.000000e+00, !dbg !475
  %61 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !478
  %62 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %61, i32 0, i32 0, !dbg !479
  store double %60, double* %62, align 8, !dbg !480
  %63 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !481
  %64 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %63, i32 0, i32 1, !dbg !482
  store double 0.000000e+00, double* %64, align 8, !dbg !483
  store i32 0, i32* %4, align 4, !dbg !484
  br label %385, !dbg !484

; <label>:65:                                     ; preds = %51
  %66 = load i32, i32* %5, align 4, !dbg !485
  %67 = icmp eq i32 %66, 0, !dbg !487
  %68 = sext i32 %66 to i64, !dbg !488
  %69 = call i1 @iCmpInstHandler(i64 %68, i64 0, i1 %67, i32 32, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94150072023744, i32 169, i32 13), !dbg !488
  br i1 %69, label %70, label %74, !dbg !488

; <label>:70:                                     ; preds = %65
  %71 = load double, double* %6, align 8, !dbg !489
  %72 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !491
  %73 = call i32 @gsl_sf_bessel_j0_e(double %71, %struct.gsl_sf_result_struct* %72), !dbg !492
  store i32 %73, i32* %4, align 4, !dbg !493
  br label %385, !dbg !493

; <label>:74:                                     ; preds = %65
  %75 = load i32, i32* %5, align 4, !dbg !494
  %76 = icmp eq i32 %75, 1, !dbg !496
  %77 = sext i32 %75 to i64, !dbg !497
  %78 = call i1 @iCmpInstHandler(i64 %77, i64 1, i1 %76, i32 32, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94150072028496, i32 172, i32 13), !dbg !497
  br i1 %78, label %79, label %83, !dbg !497

; <label>:79:                                     ; preds = %74
  %80 = load double, double* %6, align 8, !dbg !498
  %81 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !500
  %82 = call i32 @gsl_sf_bessel_j1_e(double %80, %struct.gsl_sf_result_struct* %81), !dbg !501
  store i32 %82, i32* %4, align 4, !dbg !502
  br label %385, !dbg !502

; <label>:83:                                     ; preds = %74
  %84 = load i32, i32* %5, align 4, !dbg !503
  %85 = icmp eq i32 %84, 2, !dbg !505
  %86 = sext i32 %84 to i64, !dbg !506
  %87 = call i1 @iCmpInstHandler(i64 %86, i64 2, i1 %85, i32 32, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94150072033312, i32 175, i32 13), !dbg !506
  br i1 %87, label %88, label %92, !dbg !506

; <label>:88:                                     ; preds = %83
  %89 = load double, double* %6, align 8, !dbg !507
  %90 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !509
  %91 = call i32 @gsl_sf_bessel_j2_e(double %89, %struct.gsl_sf_result_struct* %90), !dbg !510
  store i32 %91, i32* %4, align 4, !dbg !511
  br label %385, !dbg !511

; <label>:92:                                     ; preds = %83
  %93 = load double, double* %6, align 8, !dbg !512
  %94 = load double, double* %6, align 8, !dbg !514
  %95 = fmul double %93, %94, !dbg !515
  call void @fMulHandler(double %93, double %94, double %95, i64 94150072037720, i64 94150072038040, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94150072038448, i32 178, i32 12), !dbg !516
  %96 = load i32, i32* %5, align 4, !dbg !516
  %97 = sitofp i32 %96 to double, !dbg !516
  %98 = fadd double %97, 5.000000e-01, !dbg !517
  call void @fAddHandler(double %97, double 5.000000e-01, double %98, i64 94150072039224, i64 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94150072040928, i32 178, i32 24), !dbg !518
  %99 = fmul double 1.000000e+01, %98, !dbg !518
  call void @fMulHandler(double 1.000000e+01, double %98, double %99, i64 0, i64 94150072040928, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94150072041408, i32 178, i32 21), !dbg !519
  %100 = fdiv double %99, 0x4005BF0A8B145769, !dbg !519
  call void @fDivHandler(double %99, double 0x4005BF0A8B145769, double %100, i64 94150072041408, i64 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94150072041856, i32 178, i32 29), !dbg !520
  %101 = fcmp olt double %95, %100, !dbg !520
  %102 = call i1 @fCmpInstHandler(double %95, double %100, i1 %101, i32 4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94150072042272, i32 178, i32 15), !dbg !521
  br i1 %102, label %103, label %134, !dbg !521

; <label>:103:                                    ; preds = %92
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %8, metadata !522, metadata !60), !dbg !524
  call void @llvm.dbg.declare(metadata i32* %9, metadata !525, metadata !60), !dbg !526
  %104 = load i32, i32* %5, align 4, !dbg !527
  %105 = sitofp i32 %104 to double, !dbg !527
  %106 = fadd double %105, 5.000000e-01, !dbg !528
  call void @fAddHandler(double %105, double 5.000000e-01, double %106, i64 94150072045880, i64 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94150072047584, i32 180, i32 45), !dbg !529
  %107 = load double, double* %6, align 8, !dbg !529
  %108 = call i32 @gsl_sf_bessel_IJ_taylor_e(double %106, double %107, i32 -1, i32 50, double 0x3CB0000000000000, %struct.gsl_sf_result_struct* %8), !dbg !530
  store i32 %108, i32* %9, align 4, !dbg !526
  call void @llvm.dbg.declare(metadata double* %10, metadata !531, metadata !60), !dbg !532
  %109 = load double, double* %6, align 8, !dbg !533
  %110 = fdiv double 0x3FF921FB54442D18, %109, !dbg !534
  call void @fDivHandler(double 0x3FF921FB54442D18, double %109, double %110, i64 0, i64 94150072052376, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94150072052816, i32 181, i32 35), !dbg !535
  %111 = call double @sqrt(double %110) #5, !dbg !535
  call void @callOneArgHandler(i32 14, double %110, double %111, i64 94150072052816, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94150072053568, i32 181, i32 20), !dbg !532
  store double %111, double* %10, align 8, !dbg !532
  %112 = load double, double* %10, align 8, !dbg !536
  %113 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 0, !dbg !537
  %114 = load double, double* %113, align 8, !dbg !537
  %115 = fmul double %112, %114, !dbg !538
  call void @fMulHandler(double %112, double %114, double %115, i64 94150072055736, i64 94150072056568, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94150072058240, i32 182, i32 24), !dbg !539
  %116 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !539
  %117 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %116, i32 0, i32 0, !dbg !540
  store double %115, double* %117, align 8, !dbg !541
  %118 = load double, double* %10, align 8, !dbg !542
  %119 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 1, !dbg !543
  %120 = load double, double* %119, align 8, !dbg !543
  %121 = fmul double %118, %120, !dbg !544
  call void @fMulHandler(double %118, double %120, double %121, i64 94150072059880, i64 94150072060712, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94150072062384, i32 183, i32 24), !dbg !545
  %122 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !545
  %123 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %122, i32 0, i32 1, !dbg !546
  store double %121, double* %123, align 8, !dbg !547
  %124 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !548
  %125 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %124, i32 0, i32 0, !dbg !549
  %126 = load double, double* %125, align 8, !dbg !549
  %127 = call double @fabs(double %126) #1, !dbg !550
  %128 = fmul double 0x3CC0000000000000, %127, !dbg !551
  call void @fMulHandler(double 0x3CC0000000000000, double %127, double %128, i64 0, i64 94150072066592, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94150072067072, i32 184, i32 42), !dbg !552
  %129 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !552
  %130 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %129, i32 0, i32 1, !dbg !553
  %131 = load double, double* %130, align 8, !dbg !554
  %132 = fadd double %131, %128, !dbg !554
  call void @fAddHandler(double %131, double %128, double %132, i64 94150072068296, i64 94150072067072, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94150072068704, i32 184, i32 17), !dbg !554
  store double %132, double* %130, align 8, !dbg !554
  %133 = load i32, i32* %9, align 4, !dbg !555
  store i32 %133, i32* %4, align 4, !dbg !556
  br label %385, !dbg !556

; <label>:134:                                    ; preds = %92
  %135 = load double, double* %6, align 8, !dbg !557
  %136 = fmul double 0x3F20000000000000, %135, !dbg !559
  call void @fMulHandler(double 0x3F20000000000000, double %135, double %136, i64 0, i64 94150072072936, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94150072073344, i32 187, i32 33), !dbg !560
  %137 = load i32, i32* %5, align 4, !dbg !560
  %138 = load i32, i32* %5, align 4, !dbg !561
  %139 = mul nsw i32 %137, %138, !dbg !562
  %140 = load i32, i32* %5, align 4, !dbg !563
  %141 = add nsw i32 %139, %140, !dbg !564
  %142 = sitofp i32 %141 to double, !dbg !560
  %143 = fadd double %142, 1.000000e+00, !dbg !565
  call void @fAddHandler(double %142, double 1.000000e+00, double %143, i64 94150072077784, i64 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94150072079488, i32 187, i32 48), !dbg !566
  %144 = fcmp ogt double %136, %143, !dbg !566
  %145 = call i1 @fCmpInstHandler(double %136, double %143, i1 %144, i32 2, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94150072079872, i32 187, i32 37), !dbg !567
  br i1 %145, label %146, label %174, !dbg !567

; <label>:146:                                    ; preds = %134
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %11, metadata !568, metadata !60), !dbg !570
  call void @llvm.dbg.declare(metadata i32* %12, metadata !571, metadata !60), !dbg !572
  %147 = load i32, i32* %5, align 4, !dbg !573
  %148 = sitofp i32 %147 to double, !dbg !573
  %149 = fadd double %148, 5.000000e-01, !dbg !574
  call void @fAddHandler(double %148, double 5.000000e-01, double %149, i64 94150072083528, i64 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94150072085232, i32 189, i32 47), !dbg !575
  %150 = load double, double* %6, align 8, !dbg !575
  %151 = call i32 @gsl_sf_bessel_Jnu_asympx_e(double %149, double %150, %struct.gsl_sf_result_struct* %11), !dbg !576
  store i32 %151, i32* %12, align 4, !dbg !572
  call void @llvm.dbg.declare(metadata double* %13, metadata !577, metadata !60), !dbg !578
  %152 = load double, double* %6, align 8, !dbg !579
  %153 = fdiv double 0x3FF921FB54442D18, %152, !dbg !580
  call void @fDivHandler(double 0x3FF921FB54442D18, double %152, double %153, i64 0, i64 94150071886600, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94150071886976, i32 190, i32 33), !dbg !581
  %154 = call double @sqrt(double %153) #5, !dbg !581
  call void @callOneArgHandler(i32 14, double %153, double %154, i64 94150071886976, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94150071887456, i32 190, i32 18), !dbg !578
  store double %154, double* %13, align 8, !dbg !578
  %155 = load double, double* %13, align 8, !dbg !582
  %156 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 0, !dbg !583
  %157 = load double, double* %156, align 8, !dbg !583
  %158 = fmul double %155, %157, !dbg !584
  call void @fMulHandler(double %155, double %157, double %158, i64 94150072096888, i64 94150072097720, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94150072099392, i32 191, i32 23), !dbg !585
  %159 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !585
  %160 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %159, i32 0, i32 0, !dbg !586
  store double %158, double* %160, align 8, !dbg !587
  %161 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !588
  %162 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %161, i32 0, i32 0, !dbg !589
  %163 = load double, double* %162, align 8, !dbg !589
  %164 = call double @fabs(double %163) #1, !dbg !590
  %165 = fmul double 0x3CC0000000000000, %164, !dbg !591
  call void @fMulHandler(double 0x3CC0000000000000, double %164, double %165, i64 0, i64 94150072103600, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94150072104080, i32 192, i32 41), !dbg !592
  %166 = load double, double* %13, align 8, !dbg !592
  %167 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 1, !dbg !593
  %168 = load double, double* %167, align 8, !dbg !593
  %169 = fmul double %166, %168, !dbg !594
  call void @fMulHandler(double %166, double %168, double %169, i64 94150072104472, i64 94150072105304, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94150072106976, i32 192, i32 67), !dbg !595
  %170 = fadd double %165, %169, !dbg !595
  call void @fAddHandler(double %165, double %169, double %170, i64 94150072104080, i64 94150072106976, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94150072107392, i32 192, i32 61), !dbg !596
  %171 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !596
  %172 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %171, i32 0, i32 1, !dbg !597
  store double %170, double* %172, align 8, !dbg !598
  %173 = load i32, i32* %12, align 4, !dbg !599
  store i32 %173, i32* %4, align 4, !dbg !600
  br label %385, !dbg !600

; <label>:174:                                    ; preds = %134
  %175 = load i32, i32* %5, align 4, !dbg !601
  %176 = sitofp i32 %175 to double, !dbg !601
  %177 = fcmp ogt double %176, 0x407965FEA53D6E3A, !dbg !603
  %178 = call i1 @fCmpInstHandler(double %176, double 0x407965FEA53D6E3A, i1 %177, i32 2, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94150072113536, i32 195, i32 13), !dbg !604
  br i1 %178, label %179, label %207, !dbg !604

; <label>:179:                                    ; preds = %174
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %14, metadata !605, metadata !60), !dbg !607
  call void @llvm.dbg.declare(metadata i32* %15, metadata !608, metadata !60), !dbg !609
  %180 = load i32, i32* %5, align 4, !dbg !610
  %181 = sitofp i32 %180 to double, !dbg !610
  %182 = fadd double %181, 5.000000e-01, !dbg !611
  call void @fAddHandler(double %181, double 5.000000e-01, double %182, i64 94150072117144, i64 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94150072118848, i32 197, i32 52), !dbg !612
  %183 = load double, double* %6, align 8, !dbg !612
  %184 = call i32 @gsl_sf_bessel_Jnu_asymp_Olver_e(double %182, double %183, %struct.gsl_sf_result_struct* %14), !dbg !613
  store i32 %184, i32* %15, align 4, !dbg !609
  call void @llvm.dbg.declare(metadata double* %16, metadata !614, metadata !60), !dbg !615
  %185 = load double, double* %6, align 8, !dbg !616
  %186 = fdiv double 0x3FF921FB54442D18, %185, !dbg !617
  call void @fDivHandler(double 0x3FF921FB54442D18, double %185, double %186, i64 0, i64 94150072123384, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94150072123760, i32 198, i32 33), !dbg !618
  %187 = call double @sqrt(double %186) #5, !dbg !618
  call void @callOneArgHandler(i32 14, double %186, double %187, i64 94150072123760, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94150072124240, i32 198, i32 18), !dbg !615
  store double %187, double* %16, align 8, !dbg !615
  %188 = load double, double* %16, align 8, !dbg !619
  %189 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 0, !dbg !620
  %190 = load double, double* %189, align 8, !dbg !620
  %191 = fmul double %188, %190, !dbg !621
  call void @fMulHandler(double %188, double %190, double %191, i64 94150072126376, i64 94150072127208, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94150072128880, i32 199, i32 23), !dbg !622
  %192 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !622
  %193 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %192, i32 0, i32 0, !dbg !623
  store double %191, double* %193, align 8, !dbg !624
  %194 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !625
  %195 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %194, i32 0, i32 0, !dbg !626
  %196 = load double, double* %195, align 8, !dbg !626
  %197 = call double @fabs(double %196) #1, !dbg !627
  %198 = fmul double 0x3CC0000000000000, %197, !dbg !628
  call void @fMulHandler(double 0x3CC0000000000000, double %197, double %198, i64 0, i64 94150072133088, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94150072133568, i32 200, i32 41), !dbg !629
  %199 = load double, double* %16, align 8, !dbg !629
  %200 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 1, !dbg !630
  %201 = load double, double* %200, align 8, !dbg !630
  %202 = fmul double %199, %201, !dbg !631
  call void @fMulHandler(double %199, double %201, double %202, i64 94150072133960, i64 94150072134792, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94150072136464, i32 200, i32 67), !dbg !632
  %203 = fadd double %198, %202, !dbg !632
  call void @fAddHandler(double %198, double %202, double %203, i64 94150072133568, i64 94150072136464, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94150072136880, i32 200, i32 61), !dbg !633
  %204 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !633
  %205 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %204, i32 0, i32 1, !dbg !634
  store double %203, double* %205, align 8, !dbg !635
  %206 = load i32, i32* %15, align 4, !dbg !636
  store i32 %206, i32* %4, align 4, !dbg !637
  br label %385, !dbg !637

; <label>:207:                                    ; preds = %174
  %208 = load double, double* %6, align 8, !dbg !638
  %209 = fcmp ogt double %208, 1.000000e+03, !dbg !640
  %210 = call i1 @fCmpInstHandler(double %208, double 1.000000e+03, i1 %209, i32 2, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94150072141408, i32 203, i32 13), !dbg !641
  br i1 %210, label %211, label %247, !dbg !641

; <label>:211:                                    ; preds = %207
  %212 = load double, double* %6, align 8, !dbg !642
  %213 = load i32, i32* %5, align 4, !dbg !644
  %214 = load i32, i32* %5, align 4, !dbg !645
  %215 = mul nsw i32 %213, %214, !dbg !646
  %216 = sitofp i32 %215 to double, !dbg !644
  %217 = fcmp ogt double %212, %216, !dbg !647
  %218 = call i1 @fCmpInstHandler(double %212, double %216, i1 %217, i32 2, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94150072145664, i32 203, i32 27), !dbg !648
  br i1 %218, label %219, label %247, !dbg !648

; <label>:219:                                    ; preds = %211
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %17, metadata !649, metadata !60), !dbg !651
  call void @llvm.dbg.declare(metadata i32* %18, metadata !652, metadata !60), !dbg !653
  %220 = load i32, i32* %5, align 4, !dbg !654
  %221 = sitofp i32 %220 to double, !dbg !654
  %222 = fadd double %221, 5.000000e-01, !dbg !655
  call void @fAddHandler(double %221, double 5.000000e-01, double %222, i64 94150072149128, i64 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94150072150832, i32 207, i32 47), !dbg !656
  %223 = load double, double* %6, align 8, !dbg !656
  %224 = call i32 @gsl_sf_bessel_Jnu_asympx_e(double %222, double %223, %struct.gsl_sf_result_struct* %17), !dbg !657
  store i32 %224, i32* %18, align 4, !dbg !653
  call void @llvm.dbg.declare(metadata double* %19, metadata !658, metadata !60), !dbg !659
  %225 = load double, double* %6, align 8, !dbg !660
  %226 = fdiv double 0x3FF921FB54442D18, %225, !dbg !661
  call void @fDivHandler(double 0x3FF921FB54442D18, double %225, double %226, i64 0, i64 94150072154936, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94150072155312, i32 208, i32 33), !dbg !662
  %227 = call double @sqrt(double %226) #5, !dbg !662
  call void @callOneArgHandler(i32 14, double %226, double %227, i64 94150072155312, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94150072155792, i32 208, i32 18), !dbg !659
  store double %227, double* %19, align 8, !dbg !659
  %228 = load double, double* %19, align 8, !dbg !663
  %229 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %17, i32 0, i32 0, !dbg !664
  %230 = load double, double* %229, align 8, !dbg !664
  %231 = fmul double %228, %230, !dbg !665
  call void @fMulHandler(double %228, double %230, double %231, i64 94150072157928, i64 94150072158760, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94150072160432, i32 209, i32 23), !dbg !666
  %232 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !666
  %233 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %232, i32 0, i32 0, !dbg !667
  store double %231, double* %233, align 8, !dbg !668
  %234 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !669
  %235 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %234, i32 0, i32 0, !dbg !670
  %236 = load double, double* %235, align 8, !dbg !670
  %237 = call double @fabs(double %236) #1, !dbg !671
  %238 = fmul double 0x3CC0000000000000, %237, !dbg !672
  call void @fMulHandler(double 0x3CC0000000000000, double %237, double %238, i64 0, i64 94150072164640, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94150072165120, i32 210, i32 41), !dbg !673
  %239 = load double, double* %19, align 8, !dbg !673
  %240 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %17, i32 0, i32 1, !dbg !674
  %241 = load double, double* %240, align 8, !dbg !674
  %242 = fmul double %239, %241, !dbg !675
  call void @fMulHandler(double %239, double %241, double %242, i64 94150072165512, i64 94150072166344, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94150072168016, i32 210, i32 67), !dbg !676
  %243 = fadd double %238, %242, !dbg !676
  call void @fAddHandler(double %238, double %242, double %243, i64 94150072165120, i64 94150072168016, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94150072168432, i32 210, i32 61), !dbg !677
  %244 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !677
  %245 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %244, i32 0, i32 1, !dbg !678
  store double %243, double* %245, align 8, !dbg !679
  %246 = load i32, i32* %18, align 4, !dbg !680
  store i32 %246, i32* %4, align 4, !dbg !681
  br label %385, !dbg !681

; <label>:247:                                    ; preds = %211, %207
  call void @llvm.dbg.declare(metadata double* %20, metadata !682, metadata !60), !dbg !684
  call void @llvm.dbg.declare(metadata double* %21, metadata !685, metadata !60), !dbg !686
  call void @llvm.dbg.declare(metadata i32* %22, metadata !687, metadata !60), !dbg !688
  %248 = load i32, i32* %5, align 4, !dbg !689
  %249 = sitofp i32 %248 to double, !dbg !689
  %250 = fadd double %249, 5.000000e-01, !dbg !690
  call void @fAddHandler(double %249, double 5.000000e-01, double %250, i64 94150072176104, i64 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94150072177808, i32 217, i32 41), !dbg !691
  %251 = load double, double* %6, align 8, !dbg !691
  %252 = call i32 @gsl_sf_bessel_J_CF1(double %250, double %251, double* %21, double* %20), !dbg !692
  store i32 %252, i32* %22, align 4, !dbg !688
  call void @llvm.dbg.declare(metadata double* %23, metadata !693, metadata !60), !dbg !694
  store double 0x350000000000000, double* %23, align 8, !dbg !694
  call void @llvm.dbg.declare(metadata double* %24, metadata !695, metadata !60), !dbg !696
  %253 = load double, double* %21, align 8, !dbg !697
  %254 = fmul double 0x350000000000000, %253, !dbg !698
  call void @fMulHandler(double 0x350000000000000, double %253, double %254, i64 0, i64 94150072185160, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94150072185536, i32 219, i32 36), !dbg !696
  store double %254, double* %24, align 8, !dbg !696
  call void @llvm.dbg.declare(metadata double* %25, metadata !699, metadata !60), !dbg !700
  store double 0x350000000000000, double* %25, align 8, !dbg !700
  call void @llvm.dbg.declare(metadata double* %26, metadata !701, metadata !60), !dbg !702
  call void @llvm.dbg.declare(metadata i32* %27, metadata !703, metadata !60), !dbg !704
  %255 = load i32, i32* %5, align 4, !dbg !705
  store i32 %255, i32* %27, align 4, !dbg !707
  br label %256, !dbg !708

; <label>:256:                                    ; preds = %275, %247
  %257 = load i32, i32* %27, align 4, !dbg !709
  %258 = icmp sgt i32 %257, 0, !dbg !712
  %259 = sext i32 %257 to i64, !dbg !713
  %260 = call i1 @iCmpInstHandler(i64 %259, i64 0, i1 %258, i32 38, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94150072194224, i32 223, i32 22), !dbg !713
  br i1 %260, label %261, label %278, !dbg !713

; <label>:261:                                    ; preds = %256
  %262 = load double, double* %24, align 8, !dbg !714
  %263 = fsub double -0.000000e+00, %262, !dbg !716
  call void @fSubHandler(double -0.000000e+00, double %262, double %263, i64 0, i64 94150072195336, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94150072195744, i32 224, i32 16), !dbg !717
  %264 = load i32, i32* %27, align 4, !dbg !717
  %265 = mul nsw i32 2, %264, !dbg !718
  %266 = add nsw i32 %265, 1, !dbg !719
  %267 = sitofp i32 %266 to double, !dbg !720
  %268 = load double, double* %6, align 8, !dbg !721
  %269 = fdiv double %267, %268, !dbg !722
  call void @fDivHandler(double %267, double %268, double %269, i64 94150072197352, i64 94150072197736, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94150072198144, i32 224, i32 37), !dbg !723
  %270 = load double, double* %25, align 8, !dbg !723
  %271 = fmul double %269, %270, !dbg !724
  call void @fMulHandler(double %269, double %270, double %271, i64 94150072198144, i64 94150072198536, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94150072198944, i32 224, i32 40), !dbg !725
  %272 = fadd double %263, %271, !dbg !725
  call void @fAddHandler(double %263, double %271, double %272, i64 94150072195744, i64 94150072198944, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94150072199360, i32 224, i32 24), !dbg !726
  store double %272, double* %26, align 8, !dbg !726
  %273 = load double, double* %25, align 8, !dbg !727
  store double %273, double* %24, align 8, !dbg !728
  %274 = load double, double* %26, align 8, !dbg !729
  store double %274, double* %25, align 8, !dbg !730
  br label %275, !dbg !731

; <label>:275:                                    ; preds = %261
  %276 = load i32, i32* %27, align 4, !dbg !732
  %277 = add nsw i32 %276, -1, !dbg !732
  store i32 %277, i32* %27, align 4, !dbg !732
  br label %256, !dbg !734, !llvm.loop !735

; <label>:278:                                    ; preds = %256
  %279 = load double, double* %25, align 8, !dbg !737
  %280 = call double @fabs(double %279) #1, !dbg !739
  %281 = load double, double* %24, align 8, !dbg !740
  %282 = call double @fabs(double %281) #1, !dbg !741
  %283 = fcmp ogt double %280, %282, !dbg !743
  %284 = call i1 @fCmpInstHandler(double %280, double %282, i1 %283, i32 2, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94150072208960, i32 229, i32 19), !dbg !744
  br i1 %284, label %285, label %335, !dbg !744

; <label>:285:                                    ; preds = %278
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %28, metadata !745, metadata !60), !dbg !747
  call void @llvm.dbg.declare(metadata i32* %29, metadata !748, metadata !60), !dbg !749
  %286 = load double, double* %6, align 8, !dbg !750
  %287 = call i32 @gsl_sf_bessel_j0_e(double %286, %struct.gsl_sf_result_struct* %28), !dbg !751
  store i32 %287, i32* %29, align 4, !dbg !749
  call void @llvm.dbg.declare(metadata double* %30, metadata !752, metadata !60), !dbg !753
  %288 = load double, double* %25, align 8, !dbg !754
  %289 = fdiv double 0x350000000000000, %288, !dbg !755
  call void @fDivHandler(double 0x350000000000000, double %288, double %289, i64 0, i64 94150072215896, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94150072216272, i32 232, i32 37), !dbg !753
  store double %289, double* %30, align 8, !dbg !753
  %290 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %28, i32 0, i32 0, !dbg !756
  %291 = load double, double* %290, align 8, !dbg !756
  %292 = load double, double* %30, align 8, !dbg !757
  %293 = fmul double %291, %292, !dbg !758
  call void @fMulHandler(double %291, double %292, double %293, i64 94150072218792, i64 94150072220440, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94150072220848, i32 233, i32 36), !dbg !759
  %294 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !759
  %295 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %294, i32 0, i32 0, !dbg !760
  store double %293, double* %295, align 8, !dbg !761
  %296 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %28, i32 0, i32 1, !dbg !762
  %297 = load double, double* %296, align 8, !dbg !762
  %298 = load double, double* %30, align 8, !dbg !763
  %299 = call double @fabs(double %298) #1, !dbg !764
  %300 = fmul double %297, %299, !dbg !765
  call void @fMulHandler(double %297, double %299, double %300, i64 94150072222936, i64 94150072225056, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94150072225536, i32 234, i32 36), !dbg !766
  %301 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !766
  %302 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %301, i32 0, i32 1, !dbg !767
  store double %300, double* %302, align 8, !dbg !768
  %303 = load i32, i32* %5, align 4, !dbg !769
  %304 = sitofp i32 %303 to double, !dbg !769
  %305 = fmul double 5.000000e-01, %304, !dbg !770
  call void @fMulHandler(double 5.000000e-01, double %304, double %305, i64 0, i64 94150072227560, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94150072229264, i32 235, i32 50), !dbg !771
  %306 = fadd double %305, 1.000000e+00, !dbg !771
  call void @fAddHandler(double %305, double 1.000000e+00, double %306, i64 94150072229264, i64 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94150072229680, i32 235, i32 53), !dbg !772
  %307 = fmul double 0x3CD0000000000000, %306, !dbg !772
  call void @fMulHandler(double 0x3CD0000000000000, double %306, double %307, i64 0, i64 94150072229680, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94150072230128, i32 235, i32 44), !dbg !773
  %308 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !773
  %309 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %308, i32 0, i32 0, !dbg !774
  %310 = load double, double* %309, align 8, !dbg !774
  %311 = call double @fabs(double %310) #1, !dbg !775
  %312 = fmul double %307, %311, !dbg !776
  call void @fMulHandler(double %307, double %311, double %312, i64 94150072230128, i64 94150072233088, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94150072233568, i32 235, i32 60), !dbg !777
  %313 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !777
  %314 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %313, i32 0, i32 1, !dbg !778
  %315 = load double, double* %314, align 8, !dbg !779
  %316 = fadd double %315, %312, !dbg !779
  call void @fAddHandler(double %315, double %312, double %316, i64 94150072234792, i64 94150072233568, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94150072235200, i32 235, i32 19), !dbg !779
  store double %316, double* %314, align 8, !dbg !779
  %317 = load i32, i32* %29, align 4, !dbg !780
  %318 = icmp ne i32 %317, 0, !dbg !780
  %319 = sext i32 %317 to i64, !dbg !780
  %320 = call i1 @iCmpInstHandler(i64 %319, i64 0, i1 %318, i32 33, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94150072237392, i32 236, i32 14), !dbg !780
  br i1 %320, label %321, label %323, !dbg !780

; <label>:321:                                    ; preds = %285
  %322 = load i32, i32* %29, align 4, !dbg !781
  br label %333, !dbg !781

; <label>:323:                                    ; preds = %285
  %324 = load i32, i32* %22, align 4, !dbg !783
  %325 = icmp ne i32 %324, 0, !dbg !783
  %326 = sext i32 %324 to i64, !dbg !783
  %327 = call i1 @iCmpInstHandler(i64 %326, i64 0, i1 %325, i32 33, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94150072241936, i32 236, i32 14), !dbg !783
  br i1 %327, label %328, label %330, !dbg !783

; <label>:328:                                    ; preds = %323
  %329 = load i32, i32* %22, align 4, !dbg !785
  br label %331, !dbg !785

; <label>:330:                                    ; preds = %323
  br label %331, !dbg !787

; <label>:331:                                    ; preds = %330, %328
  %332 = phi i32 [ %329, %328 ], [ 0, %330 ], !dbg !789
  br label %333, !dbg !789

; <label>:333:                                    ; preds = %331, %321
  %334 = phi i32 [ %322, %321 ], [ %332, %331 ], !dbg !791
  store i32 %334, i32* %4, align 4, !dbg !793
  br label %385, !dbg !793

; <label>:335:                                    ; preds = %278
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %31, metadata !794, metadata !60), !dbg !796
  call void @llvm.dbg.declare(metadata i32* %32, metadata !797, metadata !60), !dbg !798
  %336 = load double, double* %6, align 8, !dbg !799
  %337 = call i32 @gsl_sf_bessel_j1_e(double %336, %struct.gsl_sf_result_struct* %31), !dbg !800
  store i32 %337, i32* %32, align 4, !dbg !798
  call void @llvm.dbg.declare(metadata double* %33, metadata !801, metadata !60), !dbg !802
  %338 = load double, double* %24, align 8, !dbg !803
  %339 = fdiv double 0x350000000000000, %338, !dbg !804
  call void @fDivHandler(double 0x350000000000000, double %338, double %339, i64 0, i64 94150072256792, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94150072257168, i32 241, i32 37), !dbg !802
  store double %339, double* %33, align 8, !dbg !802
  %340 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %31, i32 0, i32 0, !dbg !805
  %341 = load double, double* %340, align 8, !dbg !805
  %342 = load double, double* %33, align 8, !dbg !806
  %343 = fmul double %341, %342, !dbg !807
  call void @fMulHandler(double %341, double %342, double %343, i64 94150072259688, i64 94150072261336, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94150072261744, i32 242, i32 36), !dbg !808
  %344 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !808
  %345 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %344, i32 0, i32 0, !dbg !809
  store double %343, double* %345, align 8, !dbg !810
  %346 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %31, i32 0, i32 1, !dbg !811
  %347 = load double, double* %346, align 8, !dbg !811
  %348 = load double, double* %33, align 8, !dbg !812
  %349 = call double @fabs(double %348) #1, !dbg !813
  %350 = fmul double %347, %349, !dbg !814
  call void @fMulHandler(double %347, double %349, double %350, i64 94150072263832, i64 94150072265952, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94150072266432, i32 243, i32 36), !dbg !815
  %351 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !815
  %352 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %351, i32 0, i32 1, !dbg !816
  store double %350, double* %352, align 8, !dbg !817
  %353 = load i32, i32* %5, align 4, !dbg !818
  %354 = sitofp i32 %353 to double, !dbg !818
  %355 = fmul double 5.000000e-01, %354, !dbg !819
  call void @fMulHandler(double 5.000000e-01, double %354, double %355, i64 0, i64 94150072268456, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94150072270160, i32 244, i32 50), !dbg !820
  %356 = fadd double %355, 1.000000e+00, !dbg !820
  call void @fAddHandler(double %355, double 1.000000e+00, double %356, i64 94150072270160, i64 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94150072270576, i32 244, i32 53), !dbg !821
  %357 = fmul double 0x3CD0000000000000, %356, !dbg !821
  call void @fMulHandler(double 0x3CD0000000000000, double %356, double %357, i64 0, i64 94150072270576, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94150072270960, i32 244, i32 44), !dbg !822
  %358 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !822
  %359 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %358, i32 0, i32 0, !dbg !823
  %360 = load double, double* %359, align 8, !dbg !823
  %361 = call double @fabs(double %360) #1, !dbg !824
  %362 = fmul double %357, %361, !dbg !825
  call void @fMulHandler(double %357, double %361, double %362, i64 94150072270960, i64 94150072273920, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94150072274400, i32 244, i32 60), !dbg !826
  %363 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !826
  %364 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %363, i32 0, i32 1, !dbg !827
  %365 = load double, double* %364, align 8, !dbg !828
  %366 = fadd double %365, %362, !dbg !828
  call void @fAddHandler(double %365, double %362, double %366, i64 94150072275624, i64 94150072274400, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94150072276032, i32 244, i32 19), !dbg !828
  store double %366, double* %364, align 8, !dbg !828
  %367 = load i32, i32* %32, align 4, !dbg !829
  %368 = icmp ne i32 %367, 0, !dbg !829
  %369 = sext i32 %367 to i64, !dbg !829
  %370 = call i1 @iCmpInstHandler(i64 %369, i64 0, i1 %368, i32 33, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94150072278224, i32 245, i32 14), !dbg !829
  br i1 %370, label %371, label %373, !dbg !829

; <label>:371:                                    ; preds = %335
  %372 = load i32, i32* %32, align 4, !dbg !830
  br label %383, !dbg !830

; <label>:373:                                    ; preds = %335
  %374 = load i32, i32* %22, align 4, !dbg !832
  %375 = icmp ne i32 %374, 0, !dbg !832
  %376 = sext i32 %374 to i64, !dbg !832
  %377 = call i1 @iCmpInstHandler(i64 %376, i64 0, i1 %375, i32 33, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94150072282768, i32 245, i32 14), !dbg !832
  br i1 %377, label %378, label %380, !dbg !832

; <label>:378:                                    ; preds = %373
  %379 = load i32, i32* %22, align 4, !dbg !834
  br label %381, !dbg !834

; <label>:380:                                    ; preds = %373
  br label %381, !dbg !836

; <label>:381:                                    ; preds = %380, %378
  %382 = phi i32 [ %379, %378 ], [ 0, %380 ], !dbg !838
  br label %383, !dbg !838

; <label>:383:                                    ; preds = %381, %371
  %384 = phi i32 [ %372, %371 ], [ %382, %381 ], !dbg !840
  store i32 %384, i32* %4, align 4, !dbg !842
  br label %385, !dbg !842

; <label>:385:                                    ; preds = %383, %333, %219, %179, %146, %103, %88, %79, %70, %55, %50, %48
  %386 = load i32, i32* %4, align 4, !dbg !843
  ret i32 %386, !dbg !843
}

declare i32 @gsl_sf_bessel_IJ_taylor_e(double, double, i32, i32, double, %struct.gsl_sf_result_struct*) #4

; Function Attrs: nounwind
declare double @sqrt(double) #3

declare i32 @gsl_sf_bessel_Jnu_asympx_e(double, double, %struct.gsl_sf_result_struct*) #4

declare i32 @gsl_sf_bessel_Jnu_asymp_Olver_e(double, double, %struct.gsl_sf_result_struct*) #4

declare i32 @gsl_sf_bessel_J_CF1(double, double, double*, double*) #4

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_bessel_jl_array(i32, double, double*) #0 !dbg !844 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca double*, align 8
  %8 = alloca i32, align 4
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
  call void @llvm.dbg.declare(metadata i32* %5, metadata !848, metadata !60), !dbg !849
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !850, metadata !60), !dbg !851
  store double* %2, double** %7, align 8
  call void @llvm.dbg.declare(metadata double** %7, metadata !852, metadata !60), !dbg !853
  %18 = load i32, i32* %5, align 4, !dbg !854
  %19 = icmp slt i32 %18, 0, !dbg !856
  %20 = sext i32 %18 to i64, !dbg !857
  %21 = call i1 @iCmpInstHandler(i64 %20, i64 0, i1 %19, i32 40, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94150072297600, i32 256, i32 11), !dbg !857
  br i1 %21, label %26, label %22, !dbg !857

; <label>:22:                                     ; preds = %3
  %23 = load double, double* %6, align 8, !dbg !858
  %24 = fcmp olt double %23, 0.000000e+00, !dbg !860
  %25 = call i1 @fCmpInstHandler(double %23, double 0.000000e+00, i1 %24, i32 4, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94150072298960, i32 256, i32 20), !dbg !861
  br i1 %25, label %26, label %45, !dbg !861

; <label>:26:                                     ; preds = %22, %3
  call void @llvm.dbg.declare(metadata i32* %8, metadata !862, metadata !60), !dbg !864
  store i32 0, i32* %8, align 4, !dbg !865
  br label %27, !dbg !867

; <label>:27:                                     ; preds = %39, %26
  %28 = load i32, i32* %8, align 4, !dbg !868
  %29 = load i32, i32* %5, align 4, !dbg !871
  %30 = icmp sle i32 %28, %29, !dbg !872
  %31 = sext i32 %28 to i64, !dbg !873
  %32 = sext i32 %29 to i64, !dbg !873
  %33 = call i1 @iCmpInstHandler(i64 %31, i64 %32, i1 %30, i32 41, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94150072302336, i32 258, i32 15), !dbg !873
  br i1 %33, label %34, label %42, !dbg !873

; <label>:34:                                     ; preds = %27
  %35 = load i32, i32* %8, align 4, !dbg !874
  %36 = sext i32 %35 to i64, !dbg !876
  %37 = load double*, double** %7, align 8, !dbg !876
  %38 = getelementptr inbounds double, double* %37, i64 %36, !dbg !876
  store double 0.000000e+00, double* %38, align 8, !dbg !877
  br label %39, !dbg !876

; <label>:39:                                     ; preds = %34
  %40 = load i32, i32* %8, align 4, !dbg !878
  %41 = add nsw i32 %40, 1, !dbg !878
  store i32 %41, i32* %8, align 4, !dbg !878
  br label %27, !dbg !880, !llvm.loop !881

; <label>:42:                                     ; preds = %27
  br label %43, !dbg !883, !llvm.loop !884

; <label>:43:                                     ; preds = %42
  call void @gsl_error(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 259, i32 1), !dbg !885
  store i32 1, i32* %4, align 4, !dbg !885
  br label %133, !dbg !885
                                                  ; No predecessors!
  br label %133, !dbg !888

; <label>:45:                                     ; preds = %22
  %46 = load double, double* %6, align 8, !dbg !889
  %47 = fcmp oeq double %46, 0.000000e+00, !dbg !891
  %48 = call i1 @fCmpInstHandler(double %46, double 0.000000e+00, i1 %47, i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94150072313584, i32 261, i32 13), !dbg !892
  br i1 %48, label %49, label %68, !dbg !892

; <label>:49:                                     ; preds = %45
  call void @llvm.dbg.declare(metadata i32* %9, metadata !893, metadata !60), !dbg !895
  store i32 1, i32* %9, align 4, !dbg !896
  br label %50, !dbg !898

; <label>:50:                                     ; preds = %62, %49
  %51 = load i32, i32* %9, align 4, !dbg !899
  %52 = load i32, i32* %5, align 4, !dbg !902
  %53 = icmp sle i32 %51, %52, !dbg !903
  %54 = sext i32 %51 to i64, !dbg !904
  %55 = sext i32 %52 to i64, !dbg !904
  %56 = call i1 @iCmpInstHandler(i64 %54, i64 %55, i1 %53, i32 41, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94150072317392, i32 263, i32 15), !dbg !904
  br i1 %56, label %57, label %65, !dbg !904

; <label>:57:                                     ; preds = %50
  %58 = load i32, i32* %9, align 4, !dbg !905
  %59 = sext i32 %58 to i64, !dbg !907
  %60 = load double*, double** %7, align 8, !dbg !907
  %61 = getelementptr inbounds double, double* %60, i64 %59, !dbg !907
  store double 0.000000e+00, double* %61, align 8, !dbg !908
  br label %62, !dbg !907

; <label>:62:                                     ; preds = %57
  %63 = load i32, i32* %9, align 4, !dbg !909
  %64 = add nsw i32 %63, 1, !dbg !909
  store i32 %64, i32* %9, align 4, !dbg !909
  br label %50, !dbg !911, !llvm.loop !912

; <label>:65:                                     ; preds = %50
  %66 = load double*, double** %7, align 8, !dbg !914
  %67 = getelementptr inbounds double, double* %66, i64 0, !dbg !914
  store double 1.000000e+00, double* %67, align 8, !dbg !915
  store i32 0, i32* %4, align 4, !dbg !916
  br label %133, !dbg !916

; <label>:68:                                     ; preds = %45
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %10, metadata !917, metadata !60), !dbg !919
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %11, metadata !920, metadata !60), !dbg !921
  call void @llvm.dbg.declare(metadata i32* %12, metadata !922, metadata !60), !dbg !923
  %69 = load i32, i32* %5, align 4, !dbg !924
  %70 = add nsw i32 %69, 1, !dbg !925
  %71 = load double, double* %6, align 8, !dbg !926
  %72 = call i32 @gsl_sf_bessel_jl_e(i32 %70, double %71, %struct.gsl_sf_result_struct* %10), !dbg !927
  store i32 %72, i32* %12, align 4, !dbg !923
  call void @llvm.dbg.declare(metadata i32* %13, metadata !928, metadata !60), !dbg !929
  %73 = load i32, i32* %5, align 4, !dbg !930
  %74 = load double, double* %6, align 8, !dbg !931
  %75 = call i32 @gsl_sf_bessel_jl_e(i32 %73, double %74, %struct.gsl_sf_result_struct* %11), !dbg !932
  store i32 %75, i32* %13, align 4, !dbg !929
  call void @llvm.dbg.declare(metadata double* %14, metadata !933, metadata !60), !dbg !934
  %76 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !935
  %77 = load double, double* %76, align 8, !dbg !935
  store double %77, double* %14, align 8, !dbg !934
  call void @llvm.dbg.declare(metadata double* %15, metadata !936, metadata !60), !dbg !937
  %78 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 0, !dbg !938
  %79 = load double, double* %78, align 8, !dbg !938
  store double %79, double* %15, align 8, !dbg !937
  call void @llvm.dbg.declare(metadata double* %16, metadata !939, metadata !60), !dbg !940
  call void @llvm.dbg.declare(metadata i32* %17, metadata !941, metadata !60), !dbg !942
  %80 = load double, double* %15, align 8, !dbg !943
  %81 = load i32, i32* %5, align 4, !dbg !944
  %82 = sext i32 %81 to i64, !dbg !945
  %83 = load double*, double** %7, align 8, !dbg !945
  %84 = getelementptr inbounds double, double* %83, i64 %82, !dbg !945
  store double %80, double* %84, align 8, !dbg !946
  %85 = load i32, i32* %5, align 4, !dbg !947
  store i32 %85, i32* %17, align 4, !dbg !949
  br label %86, !dbg !950

; <label>:86:                                     ; preds = %111, %68
  %87 = load i32, i32* %17, align 4, !dbg !951
  %88 = icmp sge i32 %87, 1, !dbg !954
  %89 = sext i32 %87 to i64, !dbg !955
  %90 = call i1 @iCmpInstHandler(i64 %89, i64 1, i1 %88, i32 39, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94150072356672, i32 278, i32 25), !dbg !955
  br i1 %90, label %91, label %114, !dbg !955

; <label>:91:                                     ; preds = %86
  %92 = load double, double* %14, align 8, !dbg !956
  %93 = fsub double -0.000000e+00, %92, !dbg !958
  call void @fSubHandler(double -0.000000e+00, double %92, double %93, i64 0, i64 94150072357784, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94150072358128, i32 279, i32 16), !dbg !959
  %94 = load i32, i32* %17, align 4, !dbg !959
  %95 = mul nsw i32 2, %94, !dbg !960
  %96 = add nsw i32 %95, 1, !dbg !961
  %97 = sitofp i32 %96 to double, !dbg !962
  %98 = load double, double* %6, align 8, !dbg !963
  %99 = fdiv double %97, %98, !dbg !964
  call void @fDivHandler(double %97, double %98, double %99, i64 94150072359736, i64 94150072360120, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94150072360528, i32 279, i32 37), !dbg !965
  %100 = load double, double* %15, align 8, !dbg !965
  %101 = fmul double %99, %100, !dbg !966
  call void @fMulHandler(double %99, double %100, double %101, i64 94150072360528, i64 94150072360920, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94150072361328, i32 279, i32 40), !dbg !967
  %102 = fadd double %93, %101, !dbg !967
  call void @fAddHandler(double %93, double %101, double %102, i64 94150072358128, i64 94150072361328, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94150072361744, i32 279, i32 24), !dbg !968
  store double %102, double* %16, align 8, !dbg !968
  %103 = load double, double* %15, align 8, !dbg !969
  store double %103, double* %14, align 8, !dbg !970
  %104 = load double, double* %16, align 8, !dbg !971
  store double %104, double* %15, align 8, !dbg !972
  %105 = load double, double* %16, align 8, !dbg !973
  %106 = load i32, i32* %17, align 4, !dbg !974
  %107 = sub nsw i32 %106, 1, !dbg !975
  %108 = sext i32 %107 to i64, !dbg !976
  %109 = load double*, double** %7, align 8, !dbg !976
  %110 = getelementptr inbounds double, double* %109, i64 %108, !dbg !976
  store double %105, double* %110, align 8, !dbg !977
  br label %111, !dbg !978

; <label>:111:                                    ; preds = %91
  %112 = load i32, i32* %17, align 4, !dbg !979
  %113 = add nsw i32 %112, -1, !dbg !979
  store i32 %113, i32* %17, align 4, !dbg !979
  br label %86, !dbg !981, !llvm.loop !982

; <label>:114:                                    ; preds = %86
  %115 = load i32, i32* %12, align 4, !dbg !984
  %116 = icmp ne i32 %115, 0, !dbg !984
  %117 = sext i32 %115 to i64, !dbg !984
  %118 = call i1 @iCmpInstHandler(i64 %117, i64 0, i1 %116, i32 33, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94150072371600, i32 285, i32 12), !dbg !984
  br i1 %118, label %119, label %121, !dbg !984

; <label>:119:                                    ; preds = %114
  %120 = load i32, i32* %12, align 4, !dbg !985
  br label %131, !dbg !985

; <label>:121:                                    ; preds = %114
  %122 = load i32, i32* %13, align 4, !dbg !987
  %123 = icmp ne i32 %122, 0, !dbg !987
  %124 = sext i32 %122 to i64, !dbg !987
  %125 = call i1 @iCmpInstHandler(i64 %124, i64 0, i1 %123, i32 33, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94150072376144, i32 285, i32 12), !dbg !987
  br i1 %125, label %126, label %128, !dbg !987

; <label>:126:                                    ; preds = %121
  %127 = load i32, i32* %13, align 4, !dbg !989
  br label %129, !dbg !989

; <label>:128:                                    ; preds = %121
  br label %129, !dbg !991

; <label>:129:                                    ; preds = %128, %126
  %130 = phi i32 [ %127, %126 ], [ 0, %128 ], !dbg !993
  br label %131, !dbg !993

; <label>:131:                                    ; preds = %129, %119
  %132 = phi i32 [ %120, %119 ], [ %130, %129 ], !dbg !995
  store i32 %132, i32* %4, align 4, !dbg !997
  br label %133, !dbg !997

; <label>:133:                                    ; preds = %131, %65, %44, %43
  %134 = load i32, i32* %4, align 4, !dbg !998
  ret i32 %134, !dbg !998
}

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_bessel_jl_steed_array(i32, double, double*) #0 !dbg !999 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca double*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca i32, align 4
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
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1000, metadata !60), !dbg !1001
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !1002, metadata !60), !dbg !1003
  store double* %2, double** %7, align 8
  call void @llvm.dbg.declare(metadata double** %7, metadata !1004, metadata !60), !dbg !1005
  %26 = load i32, i32* %5, align 4, !dbg !1006
  %27 = icmp slt i32 %26, 0, !dbg !1008
  %28 = sext i32 %26 to i64, !dbg !1009
  %29 = call i1 @iCmpInstHandler(i64 %28, i64 0, i1 %27, i32 40, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94150072394624, i32 294, i32 11), !dbg !1009
  br i1 %29, label %34, label %30, !dbg !1009

; <label>:30:                                     ; preds = %3
  %31 = load double, double* %6, align 8, !dbg !1010
  %32 = fcmp olt double %31, 0.000000e+00, !dbg !1012
  %33 = call i1 @fCmpInstHandler(double %31, double 0.000000e+00, i1 %32, i32 4, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94150072396080, i32 294, i32 20), !dbg !1013
  br i1 %33, label %34, label %53, !dbg !1013

; <label>:34:                                     ; preds = %30, %3
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1014, metadata !60), !dbg !1016
  store i32 0, i32* %8, align 4, !dbg !1017
  br label %35, !dbg !1019

; <label>:35:                                     ; preds = %47, %34
  %36 = load i32, i32* %8, align 4, !dbg !1020
  %37 = load i32, i32* %5, align 4, !dbg !1023
  %38 = icmp sle i32 %36, %37, !dbg !1024
  %39 = sext i32 %36 to i64, !dbg !1025
  %40 = sext i32 %37 to i64, !dbg !1025
  %41 = call i1 @iCmpInstHandler(i64 %39, i64 %40, i1 %38, i32 41, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94150072399744, i32 296, i32 15), !dbg !1025
  br i1 %41, label %42, label %50, !dbg !1025

; <label>:42:                                     ; preds = %35
  %43 = load i32, i32* %8, align 4, !dbg !1026
  %44 = sext i32 %43 to i64, !dbg !1028
  %45 = load double*, double** %7, align 8, !dbg !1028
  %46 = getelementptr inbounds double, double* %45, i64 %44, !dbg !1028
  store double 0.000000e+00, double* %46, align 8, !dbg !1029
  br label %47, !dbg !1028

; <label>:47:                                     ; preds = %42
  %48 = load i32, i32* %8, align 4, !dbg !1030
  %49 = add nsw i32 %48, 1, !dbg !1030
  store i32 %49, i32* %8, align 4, !dbg !1030
  br label %35, !dbg !1032, !llvm.loop !1033

; <label>:50:                                     ; preds = %35
  br label %51, !dbg !1035, !llvm.loop !1036

; <label>:51:                                     ; preds = %50
  call void @gsl_error(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 297, i32 1), !dbg !1037
  store i32 1, i32* %4, align 4, !dbg !1037
  br label %295, !dbg !1037
                                                  ; No predecessors!
  br label %295, !dbg !1040

; <label>:53:                                     ; preds = %30
  %54 = load double, double* %6, align 8, !dbg !1041
  %55 = fcmp oeq double %54, 0.000000e+00, !dbg !1043
  %56 = call i1 @fCmpInstHandler(double %54, double 0.000000e+00, i1 %55, i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94150072410864, i32 299, i32 13), !dbg !1044
  br i1 %56, label %57, label %76, !dbg !1044

; <label>:57:                                     ; preds = %53
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1045, metadata !60), !dbg !1047
  store i32 1, i32* %9, align 4, !dbg !1048
  br label %58, !dbg !1050

; <label>:58:                                     ; preds = %70, %57
  %59 = load i32, i32* %9, align 4, !dbg !1051
  %60 = load i32, i32* %5, align 4, !dbg !1054
  %61 = icmp sle i32 %59, %60, !dbg !1055
  %62 = sext i32 %59 to i64, !dbg !1056
  %63 = sext i32 %60 to i64, !dbg !1056
  %64 = call i1 @iCmpInstHandler(i64 %62, i64 %63, i1 %61, i32 41, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94150072414672, i32 301, i32 15), !dbg !1056
  br i1 %64, label %65, label %73, !dbg !1056

; <label>:65:                                     ; preds = %58
  %66 = load i32, i32* %9, align 4, !dbg !1057
  %67 = sext i32 %66 to i64, !dbg !1059
  %68 = load double*, double** %7, align 8, !dbg !1059
  %69 = getelementptr inbounds double, double* %68, i64 %67, !dbg !1059
  store double 0.000000e+00, double* %69, align 8, !dbg !1060
  br label %70, !dbg !1059

; <label>:70:                                     ; preds = %65
  %71 = load i32, i32* %9, align 4, !dbg !1061
  %72 = add nsw i32 %71, 1, !dbg !1061
  store i32 %72, i32* %9, align 4, !dbg !1061
  br label %58, !dbg !1063, !llvm.loop !1064

; <label>:73:                                     ; preds = %58
  %74 = load double*, double** %7, align 8, !dbg !1066
  %75 = getelementptr inbounds double, double* %74, i64 0, !dbg !1066
  store double 1.000000e+00, double* %75, align 8, !dbg !1067
  store i32 0, i32* %4, align 4, !dbg !1068
  br label %295, !dbg !1068

; <label>:76:                                     ; preds = %53
  %77 = load double, double* %6, align 8, !dbg !1069
  %78 = fcmp olt double %77, 0x3F30000000000000, !dbg !1071
  %79 = call i1 @fCmpInstHandler(double %77, double 0x3F30000000000000, i1 %78, i32 4, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94150072426640, i32 305, i32 13), !dbg !1072
  br i1 %79, label %80, label %125, !dbg !1072

; <label>:80:                                     ; preds = %76
  call void @llvm.dbg.declare(metadata double* %10, metadata !1073, metadata !60), !dbg !1075
  store double 1.000000e+00, double* %10, align 8, !dbg !1075
  call void @llvm.dbg.declare(metadata double* %11, metadata !1076, metadata !60), !dbg !1077
  store double 1.000000e+00, double* %11, align 8, !dbg !1077
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1078, metadata !60), !dbg !1079
  store i32 0, i32* %12, align 4, !dbg !1080
  br label %81, !dbg !1082

; <label>:81:                                     ; preds = %121, %80
  %82 = load i32, i32* %12, align 4, !dbg !1083
  %83 = load i32, i32* %5, align 4, !dbg !1086
  %84 = icmp sle i32 %82, %83, !dbg !1087
  %85 = sext i32 %82 to i64, !dbg !1088
  %86 = sext i32 %83 to i64, !dbg !1088
  %87 = call i1 @iCmpInstHandler(i64 %85, i64 %86, i1 %84, i32 41, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94150072435984, i32 310, i32 15), !dbg !1088
  br i1 %87, label %88, label %124, !dbg !1088

; <label>:88:                                     ; preds = %81
  %89 = load double, double* %11, align 8, !dbg !1089
  %90 = load double, double* %10, align 8, !dbg !1091
  %91 = fmul double %89, %90, !dbg !1092
  call void @fMulHandler(double %89, double %90, double %91, i64 94150072437096, i64 94150072437416, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94150072437824, i32 311, i32 22), !dbg !1093
  %92 = load i32, i32* %12, align 4, !dbg !1093
  %93 = sext i32 %92 to i64, !dbg !1094
  %94 = load double*, double** %7, align 8, !dbg !1094
  %95 = getelementptr inbounds double, double* %94, i64 %93, !dbg !1094
  store double %91, double* %95, align 8, !dbg !1095
  %96 = load double, double* %6, align 8, !dbg !1096
  %97 = fmul double 5.000000e-01, %96, !dbg !1097
  call void @fMulHandler(double 5.000000e-01, double %96, double %97, i64 0, i64 94150072441192, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94150072441632, i32 312, i32 27), !dbg !1098
  %98 = load double, double* %6, align 8, !dbg !1098
  %99 = fmul double %97, %98, !dbg !1099
  call void @fMulHandler(double %97, double %98, double %99, i64 94150072441632, i64 94150072441992, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94150072442400, i32 312, i32 29), !dbg !1100
  %100 = load i32, i32* %12, align 4, !dbg !1100
  %101 = sitofp i32 %100 to double, !dbg !1100
  %102 = fmul double 2.000000e+00, %101, !dbg !1101
  call void @fMulHandler(double 2.000000e+00, double %101, double %102, i64 0, i64 94150072443176, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94150072444944, i32 312, i32 36), !dbg !1102
  %103 = fadd double %102, 3.000000e+00, !dbg !1102
  call void @fAddHandler(double %102, double 3.000000e+00, double %103, i64 94150072444944, i64 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94150072445360, i32 312, i32 38), !dbg !1103
  %104 = fdiv double %99, %103, !dbg !1103
  call void @fDivHandler(double %99, double %103, double %104, i64 94150072442400, i64 94150072445360, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94150072445744, i32 312, i32 31), !dbg !1104
  %105 = fsub double 1.000000e+00, %104, !dbg !1104
  call void @fSubHandler(double 1.000000e+00, double %104, double %105, i64 0, i64 94150072445744, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94150072446192, i32 312, i32 22), !dbg !1105
  %106 = load i32, i32* %12, align 4, !dbg !1105
  %107 = sext i32 %106 to i64, !dbg !1106
  %108 = load double*, double** %7, align 8, !dbg !1106
  %109 = getelementptr inbounds double, double* %108, i64 %107, !dbg !1106
  %110 = load double, double* %109, align 8, !dbg !1107
  %111 = fmul double %110, %105, !dbg !1107
  call void @fMulHandler(double %110, double %105, double %111, i64 94150072449112, i64 94150072446192, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94150072449520, i32 312, i32 15), !dbg !1107
  store double %111, double* %109, align 8, !dbg !1107
  %112 = load i32, i32* %12, align 4, !dbg !1108
  %113 = sitofp i32 %112 to double, !dbg !1108
  %114 = fmul double 2.000000e+00, %113, !dbg !1109
  call void @fMulHandler(double 2.000000e+00, double %113, double %114, i64 0, i64 94150072451688, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94150072453392, i32 313, i32 22), !dbg !1110
  %115 = fadd double %114, 3.000000e+00, !dbg !1110
  call void @fAddHandler(double %114, double 3.000000e+00, double %115, i64 94150072453392, i64 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94150072453808, i32 313, i32 24), !dbg !1111
  %116 = load double, double* %10, align 8, !dbg !1111
  %117 = fdiv double %116, %115, !dbg !1111
  call void @fDivHandler(double %116, double %115, double %117, i64 94150072454168, i64 94150072453808, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94150072454576, i32 313, i32 16), !dbg !1111
  store double %117, double* %10, align 8, !dbg !1111
  %118 = load double, double* %6, align 8, !dbg !1112
  %119 = load double, double* %11, align 8, !dbg !1113
  %120 = fmul double %119, %118, !dbg !1113
  call void @fMulHandler(double %119, double %118, double %120, i64 94150072456744, i64 94150072456360, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94150072457152, i32 314, i32 16), !dbg !1113
  store double %120, double* %11, align 8, !dbg !1113
  br label %121, !dbg !1114

; <label>:121:                                    ; preds = %88
  %122 = load i32, i32* %12, align 4, !dbg !1115
  %123 = add nsw i32 %122, 1, !dbg !1115
  store i32 %123, i32* %12, align 4, !dbg !1115
  br label %81, !dbg !1117, !llvm.loop !1118

; <label>:124:                                    ; preds = %81
  store i32 0, i32* %4, align 4, !dbg !1120
  br label %295, !dbg !1120

; <label>:125:                                    ; preds = %76
  call void @llvm.dbg.declare(metadata double* %13, metadata !1121, metadata !60), !dbg !1123
  %126 = load double, double* %6, align 8, !dbg !1124
  %127 = fdiv double 1.000000e+00, %126, !dbg !1125
  call void @fDivHandler(double 1.000000e+00, double %126, double %127, i64 0, i64 94150072465320, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94150072465728, i32 320, i32 23), !dbg !1123
  store double %127, double* %13, align 8, !dbg !1123
  call void @llvm.dbg.declare(metadata double* %14, metadata !1126, metadata !60), !dbg !1127
  %128 = load double, double* %13, align 8, !dbg !1128
  %129 = fmul double 2.000000e+00, %128, !dbg !1129
  call void @fMulHandler(double 2.000000e+00, double %128, double %129, i64 0, i64 94150072468888, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94150072469296, i32 321, i32 19), !dbg !1127
  store double %129, double* %14, align 8, !dbg !1127
  call void @llvm.dbg.declare(metadata double* %15, metadata !1130, metadata !60), !dbg !1131
  store double 1.000000e+00, double* %15, align 8, !dbg !1131
  call void @llvm.dbg.declare(metadata double* %16, metadata !1132, metadata !60), !dbg !1133
  %130 = load i32, i32* %5, align 4, !dbg !1134
  %131 = sitofp i32 %130 to double, !dbg !1134
  %132 = fadd double %131, 1.000000e+00, !dbg !1135
  call void @fAddHandler(double %131, double 1.000000e+00, double %132, i64 94150072475576, i64 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94150072477280, i32 323, i32 22), !dbg !1136
  %133 = load double, double* %13, align 8, !dbg !1136
  %134 = fmul double %132, %133, !dbg !1137
  call void @fMulHandler(double %132, double %133, double %134, i64 94150072477280, i64 94150072477640, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94150072478048, i32 323, i32 28), !dbg !1133
  store double %134, double* %16, align 8, !dbg !1133
  call void @llvm.dbg.declare(metadata double* %17, metadata !1138, metadata !60), !dbg !1139
  %135 = load double, double* %16, align 8, !dbg !1140
  %136 = fmul double 2.000000e+00, %135, !dbg !1141
  call void @fMulHandler(double 2.000000e+00, double %135, double %136, i64 0, i64 94150072481240, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94150072481648, i32 324, i32 19), !dbg !1142
  %137 = load double, double* %13, align 8, !dbg !1142
  %138 = fadd double %136, %137, !dbg !1143
  call void @fAddHandler(double %136, double %137, double %138, i64 94150072481648, i64 94150072482008, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94150072482416, i32 324, i32 23), !dbg !1139
  store double %138, double* %17, align 8, !dbg !1139
  call void @llvm.dbg.declare(metadata double* %18, metadata !1144, metadata !60), !dbg !1145
  %139 = load double, double* %17, align 8, !dbg !1146
  %140 = load double, double* %14, align 8, !dbg !1147
  %141 = fmul double 2.000000e+04, %140, !dbg !1148
  call void @fMulHandler(double 2.000000e+04, double %140, double %141, i64 0, i64 94150072485960, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94150072486464, i32 325, i32 29), !dbg !1149
  %142 = fadd double %139, %141, !dbg !1149
  call void @fAddHandler(double %139, double %141, double %142, i64 94150072485608, i64 94150072486464, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94150072486848, i32 325, i32 20), !dbg !1145
  store double %142, double* %18, align 8, !dbg !1145
  call void @llvm.dbg.declare(metadata double* %19, metadata !1150, metadata !60), !dbg !1151
  %143 = load double, double* %17, align 8, !dbg !1152
  %144 = fdiv double 1.000000e+00, %143, !dbg !1153
  call void @fDivHandler(double 1.000000e+00, double %143, double %144, i64 0, i64 94150072089752, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94150072090160, i32 326, i32 19), !dbg !1151
  store double %144, double* %19, align 8, !dbg !1151
  call void @llvm.dbg.declare(metadata double* %20, metadata !1154, metadata !60), !dbg !1155
  %145 = load double, double* %19, align 8, !dbg !1156
  %146 = fsub double -0.000000e+00, %145, !dbg !1157
  call void @fSubHandler(double -0.000000e+00, double %145, double %146, i64 0, i64 94150072093464, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94150072093840, i32 327, i32 18), !dbg !1155
  store double %146, double* %20, align 8, !dbg !1155
  %147 = load double, double* %20, align 8, !dbg !1158
  %148 = load double, double* %16, align 8, !dbg !1159
  %149 = fadd double %148, %147, !dbg !1159
  call void @fAddHandler(double %148, double %147, double %149, i64 94150072094744, i64 94150072094360, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94150072505072, i32 329, i32 8), !dbg !1159
  store double %149, double* %16, align 8, !dbg !1159
  br label %150, !dbg !1160, !llvm.loop !1161

; <label>:150:                                    ; preds = %182, %125
  %151 = load double, double* %14, align 8, !dbg !1162
  %152 = load double, double* %17, align 8, !dbg !1164
  %153 = fadd double %152, %151, !dbg !1164
  call void @fAddHandler(double %152, double %151, double %153, i64 94150072507992, i64 94150072507672, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94150072508400, i32 333, i32 9), !dbg !1164
  store double %153, double* %17, align 8, !dbg !1164
  %154 = load double, double* %17, align 8, !dbg !1165
  %155 = load double, double* %19, align 8, !dbg !1166
  %156 = fsub double %154, %155, !dbg !1167
  call void @fSubHandler(double %154, double %155, double %156, i64 94150072510184, i64 94150072510568, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94150072510976, i32 334, i32 17), !dbg !1168
  %157 = fdiv double 1.000000e+00, %156, !dbg !1168
  call void @fDivHandler(double 1.000000e+00, double %156, double %157, i64 0, i64 94150072510976, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94150072511424, i32 334, i32 14), !dbg !1169
  store double %157, double* %19, align 8, !dbg !1169
  %158 = load double, double* %17, align 8, !dbg !1170
  %159 = load double, double* %19, align 8, !dbg !1171
  %160 = fmul double %158, %159, !dbg !1172
  call void @fMulHandler(double %158, double %159, double %160, i64 94150072512200, i64 94150072512584, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94150072512992, i32 335, i32 16), !dbg !1173
  %161 = fsub double %160, 1.000000e+00, !dbg !1173
  call void @fSubHandler(double %160, double 1.000000e+00, double %161, i64 94150072512992, i64 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94150072513440, i32 335, i32 19), !dbg !1174
  %162 = load double, double* %20, align 8, !dbg !1174
  %163 = fmul double %162, %161, !dbg !1174
  call void @fMulHandler(double %162, double %161, double %163, i64 94150072513800, i64 94150072513440, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94150072514208, i32 335, i32 11), !dbg !1174
  store double %163, double* %20, align 8, !dbg !1174
  %164 = load double, double* %20, align 8, !dbg !1175
  %165 = load double, double* %16, align 8, !dbg !1176
  %166 = fadd double %165, %164, !dbg !1176
  call void @fAddHandler(double %165, double %164, double %166, i64 94150072516376, i64 94150072515992, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94150072516784, i32 336, i32 10), !dbg !1176
  store double %166, double* %16, align 8, !dbg !1176
  %167 = load double, double* %19, align 8, !dbg !1177
  %168 = fcmp olt double %167, 0.000000e+00, !dbg !1179
  %169 = call i1 @fCmpInstHandler(double %167, double 0.000000e+00, i1 %168, i32 4, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94150072518976, i32 337, i32 12), !dbg !1180
  br i1 %169, label %170, label %173, !dbg !1180

; <label>:170:                                    ; preds = %150
  %171 = load double, double* %15, align 8, !dbg !1181
  %172 = fsub double -0.000000e+00, %171, !dbg !1183
  call void @fSubHandler(double -0.000000e+00, double %171, double %172, i64 0, i64 94150072520088, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94150072520432, i32 337, i32 23), !dbg !1184
  store double %172, double* %15, align 8, !dbg !1184
  br label %173, !dbg !1185

; <label>:173:                                    ; preds = %170, %150
  %174 = load double, double* %17, align 8, !dbg !1186
  %175 = load double, double* %18, align 8, !dbg !1188
  %176 = fcmp ogt double %174, %175, !dbg !1189
  %177 = call i1 @fCmpInstHandler(double %174, double %175, i1 %176, i32 2, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94150072522352, i32 338, i32 12), !dbg !1190
  br i1 %177, label %178, label %181, !dbg !1190

; <label>:178:                                    ; preds = %173
  br label %179, !dbg !1191, !llvm.loop !1193

; <label>:179:                                    ; preds = %178
  call void @gsl_error(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 339, i32 11), !dbg !1194
  store i32 11, i32* %4, align 4, !dbg !1194
  br label %295, !dbg !1194
                                                  ; No predecessors!
  br label %181, !dbg !1197

; <label>:181:                                    ; preds = %180, %173
  br label %182, !dbg !1198

; <label>:182:                                    ; preds = %181
  %183 = load double, double* %20, align 8, !dbg !1199
  %184 = call double @fabs(double %183) #1, !dbg !1200
  %185 = load double, double* %16, align 8, !dbg !1201
  %186 = call double @fabs(double %185) #1, !dbg !1202
  %187 = fmul double %186, 0x3CB0000000000000, !dbg !1204
  call void @fMulHandler(double %186, double 0x3CB0000000000000, double %187, i64 94150072528896, i64 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94150072529376, i32 342, i32 33), !dbg !1205
  %188 = fcmp oge double %184, %187, !dbg !1205
  %189 = call i1 @fCmpInstHandler(double %184, double %187, i1 %188, i32 3, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94150072529792, i32 342, i32 21), !dbg !1206
  br i1 %189, label %150, label %190, !dbg !1206, !llvm.loop !1161

; <label>:190:                                    ; preds = %182
  %191 = load double, double* %15, align 8, !dbg !1208
  %192 = load double, double* %16, align 8, !dbg !1209
  %193 = fmul double %192, %191, !dbg !1209
  call void @fMulHandler(double %192, double %191, double %193, i64 94150072532632, i64 94150072532312, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94150072533040, i32 344, i32 8), !dbg !1209
  store double %193, double* %16, align 8, !dbg !1209
  %194 = load i32, i32* %5, align 4, !dbg !1210
  %195 = icmp sgt i32 %194, 0, !dbg !1212
  %196 = sext i32 %194 to i64, !dbg !1213
  %197 = call i1 @iCmpInstHandler(i64 %196, i64 0, i1 %195, i32 38, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94150072535232, i32 346, i32 13), !dbg !1213
  br i1 %197, label %198, label %259, !dbg !1213

; <label>:198:                                    ; preds = %190
  call void @llvm.dbg.declare(metadata double* %21, metadata !1214, metadata !60), !dbg !1216
  %199 = load double, double* %16, align 8, !dbg !1217
  store double %199, double* %21, align 8, !dbg !1216
  call void @llvm.dbg.declare(metadata double* %22, metadata !1218, metadata !60), !dbg !1219
  %200 = load i32, i32* %5, align 4, !dbg !1220
  %201 = sitofp i32 %200 to double, !dbg !1220
  %202 = load double, double* %13, align 8, !dbg !1221
  %203 = fmul double %201, %202, !dbg !1222
  call void @fMulHandler(double %201, double %202, double %203, i64 94150072540904, i64 94150072542552, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94150072542960, i32 349, i32 24), !dbg !1219
  store double %203, double* %22, align 8, !dbg !1219
  call void @llvm.dbg.declare(metadata i32* %23, metadata !1223, metadata !60), !dbg !1224
  %204 = load i32, i32* %5, align 4, !dbg !1225
  store i32 %204, i32* %23, align 4, !dbg !1224
  call void @llvm.dbg.declare(metadata i32* %24, metadata !1226, metadata !60), !dbg !1227
  %205 = load double, double* %15, align 8, !dbg !1228
  %206 = load i32, i32* %5, align 4, !dbg !1229
  %207 = sext i32 %206 to i64, !dbg !1230
  %208 = load double*, double** %7, align 8, !dbg !1230
  %209 = getelementptr inbounds double, double* %208, i64 %207, !dbg !1230
  store double %205, double* %209, align 8, !dbg !1231
  store i32 1, i32* %24, align 4, !dbg !1232
  br label %210, !dbg !1234

; <label>:210:                                    ; preds = %252, %198
  %211 = load i32, i32* %24, align 4, !dbg !1235
  %212 = load i32, i32* %5, align 4, !dbg !1238
  %213 = icmp sle i32 %211, %212, !dbg !1239
  %214 = sext i32 %211 to i64, !dbg !1240
  %215 = sext i32 %212 to i64, !dbg !1240
  %216 = call i1 @iCmpInstHandler(i64 %214, i64 %215, i1 %213, i32 41, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94150072554304, i32 353, i32 21), !dbg !1240
  br i1 %216, label %217, label %255, !dbg !1240

; <label>:217:                                    ; preds = %210
  %218 = load double, double* %22, align 8, !dbg !1241
  %219 = load i32, i32* %23, align 4, !dbg !1243
  %220 = sext i32 %219 to i64, !dbg !1244
  %221 = load double*, double** %7, align 8, !dbg !1244
  %222 = getelementptr inbounds double, double* %221, i64 %220, !dbg !1244
  %223 = load double, double* %222, align 8, !dbg !1244
  %224 = fmul double %218, %223, !dbg !1245
  call void @fMulHandler(double %218, double %223, double %224, i64 94150072555416, i64 94150072558296, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94150072558416, i32 354, i32 24), !dbg !1246
  %225 = load double, double* %21, align 8, !dbg !1246
  %226 = fadd double %224, %225, !dbg !1247
  call void @fAddHandler(double %224, double %225, double %226, i64 94150072558416, i64 94150072558808, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94150072559216, i32 354, i32 34), !dbg !1248
  %227 = load i32, i32* %23, align 4, !dbg !1248
  %228 = sub nsw i32 %227, 1, !dbg !1249
  %229 = sext i32 %228 to i64, !dbg !1250
  %230 = load double*, double** %7, align 8, !dbg !1250
  %231 = getelementptr inbounds double, double* %230, i64 %229, !dbg !1250
  store double %226, double* %231, align 8, !dbg !1251
  %232 = load double, double* %22, align 8, !dbg !1252
  %233 = load i32, i32* %23, align 4, !dbg !1253
  %234 = sub nsw i32 %233, 1, !dbg !1254
  %235 = sext i32 %234 to i64, !dbg !1255
  %236 = load double*, double** %7, align 8, !dbg !1255
  %237 = getelementptr inbounds double, double* %236, i64 %235, !dbg !1255
  %238 = load double, double* %237, align 8, !dbg !1255
  %239 = fmul double %232, %238, !dbg !1256
  call void @fMulHandler(double %232, double %238, double %239, i64 94150072563000, i64 94150072566360, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94150072566480, i32 355, i32 16), !dbg !1257
  %240 = load i32, i32* %23, align 4, !dbg !1257
  %241 = sext i32 %240 to i64, !dbg !1258
  %242 = load double*, double** %7, align 8, !dbg !1258
  %243 = getelementptr inbounds double, double* %242, i64 %241, !dbg !1258
  %244 = load double, double* %243, align 8, !dbg !1258
  %245 = fsub double %239, %244, !dbg !1259
  call void @fSubHandler(double %239, double %244, double %245, i64 94150072566480, i64 94150072569432, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94150072569552, i32 355, i32 27), !dbg !1260
  store double %245, double* %16, align 8, !dbg !1260
  %246 = load double, double* %16, align 8, !dbg !1261
  store double %246, double* %21, align 8, !dbg !1262
  %247 = load double, double* %13, align 8, !dbg !1263
  %248 = load double, double* %22, align 8, !dbg !1264
  %249 = fsub double %248, %247, !dbg !1264
  call void @fSubHandler(double %248, double %247, double %249, i64 94150072571544, i64 94150072571160, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94150072571952, i32 357, i32 12), !dbg !1264
  store double %249, double* %22, align 8, !dbg !1264
  %250 = load i32, i32* %23, align 4, !dbg !1265
  %251 = add nsw i32 %250, -1, !dbg !1265
  store i32 %251, i32* %23, align 4, !dbg !1265
  br label %252, !dbg !1266

; <label>:252:                                    ; preds = %217
  %253 = load i32, i32* %24, align 4, !dbg !1267
  %254 = add nsw i32 %253, 1, !dbg !1267
  store i32 %254, i32* %24, align 4, !dbg !1267
  br label %210, !dbg !1269, !llvm.loop !1270

; <label>:255:                                    ; preds = %210
  %256 = load double*, double** %7, align 8, !dbg !1272
  %257 = getelementptr inbounds double, double* %256, i64 0, !dbg !1272
  %258 = load double, double* %257, align 8, !dbg !1272
  store double %258, double* %15, align 8, !dbg !1273
  br label %259, !dbg !1274

; <label>:259:                                    ; preds = %255, %190
  %260 = load double, double* %13, align 8, !dbg !1275
  %261 = load double, double* %16, align 8, !dbg !1276
  %262 = load double, double* %15, align 8, !dbg !1277
  %263 = call double @hypot(double %261, double %262) #5, !dbg !1278
  %264 = fdiv double %260, %263, !dbg !1279
  call void @fDivHandler(double %260, double %263, double %264, i64 94150072582168, i64 94150072584472, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94150072584944, i32 364, i32 15), !dbg !1280
  store double %264, double* %14, align 8, !dbg !1280
  %265 = load double, double* %14, align 8, !dbg !1281
  %266 = load double, double* %15, align 8, !dbg !1282
  %267 = fmul double %265, %266, !dbg !1283
  call void @fMulHandler(double %265, double %266, double %267, i64 94150072585752, i64 94150072586136, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94150072586544, i32 365, i32 16), !dbg !1284
  %268 = load double*, double** %7, align 8, !dbg !1284
  %269 = getelementptr inbounds double, double* %268, i64 0, !dbg !1284
  store double %267, double* %269, align 8, !dbg !1285
  %270 = load i32, i32* %5, align 4, !dbg !1286
  %271 = icmp sgt i32 %270, 0, !dbg !1288
  %272 = sext i32 %270 to i64, !dbg !1289
  %273 = call i1 @iCmpInstHandler(i64 %272, i64 0, i1 %271, i32 38, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94150072589840, i32 366, i32 13), !dbg !1289
  br i1 %273, label %274, label %294, !dbg !1289

; <label>:274:                                    ; preds = %259
  call void @llvm.dbg.declare(metadata i32* %25, metadata !1290, metadata !60), !dbg !1292
  store i32 1, i32* %25, align 4, !dbg !1293
  br label %275, !dbg !1295

; <label>:275:                                    ; preds = %290, %274
  %276 = load i32, i32* %25, align 4, !dbg !1296
  %277 = load i32, i32* %5, align 4, !dbg !1299
  %278 = icmp sle i32 %276, %277, !dbg !1300
  %279 = sext i32 %276 to i64, !dbg !1301
  %280 = sext i32 %277 to i64, !dbg !1301
  %281 = call i1 @iCmpInstHandler(i64 %279, i64 %280, i1 %278, i32 41, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94150072593696, i32 368, i32 17), !dbg !1301
  br i1 %281, label %282, label %293, !dbg !1301

; <label>:282:                                    ; preds = %275
  %283 = load double, double* %14, align 8, !dbg !1302
  %284 = load i32, i32* %25, align 4, !dbg !1304
  %285 = sext i32 %284 to i64, !dbg !1305
  %286 = load double*, double** %7, align 8, !dbg !1305
  %287 = getelementptr inbounds double, double* %286, i64 %285, !dbg !1305
  %288 = load double, double* %287, align 8, !dbg !1306
  %289 = fmul double %288, %283, !dbg !1306
  call void @fMulHandler(double %288, double %283, double %289, i64 94150072488248, i64 94150072594808, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94150072488656, i32 369, i32 17), !dbg !1306
  store double %289, double* %287, align 8, !dbg !1306
  br label %290, !dbg !1307

; <label>:290:                                    ; preds = %282
  %291 = load i32, i32* %25, align 4, !dbg !1308
  %292 = add nsw i32 %291, 1, !dbg !1308
  store i32 %292, i32* %25, align 4, !dbg !1308
  br label %275, !dbg !1310, !llvm.loop !1311

; <label>:293:                                    ; preds = %275
  br label %294, !dbg !1313

; <label>:294:                                    ; preds = %293, %259
  store i32 0, i32* %4, align 4, !dbg !1314
  br label %295, !dbg !1314

; <label>:295:                                    ; preds = %294, %179, %124, %73, %52, %51
  %296 = load i32, i32* %4, align 4, !dbg !1315
  ret i32 %296, !dbg !1315
}

; Function Attrs: nounwind
declare double @hypot(double, double) #3

; Function Attrs: nounwind uwtable
define double @gsl_sf_bessel_j0(double) #0 !dbg !1316 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct, align 8
  %5 = alloca i32, align 4
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !1319, metadata !60), !dbg !1320
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %4, metadata !1321, metadata !60), !dbg !1322
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1323, metadata !60), !dbg !1322
  %6 = load double, double* %3, align 8, !dbg !1322
  %7 = call i32 @gsl_sf_bessel_j0_e(double %6, %struct.gsl_sf_result_struct* %4), !dbg !1322
  store i32 %7, i32* %5, align 4, !dbg !1322
  %8 = load i32, i32* %5, align 4, !dbg !1324
  %9 = icmp ne i32 %8, 0, !dbg !1324
  %10 = sext i32 %8 to i64, !dbg !1322
  %11 = call i1 @iCmpInstHandler(i64 %10, i64 0, i1 %9, i32 33, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @13, i32 0, i32 0), i64 94150072612640, i32 384, i32 3), !dbg !1322
  br i1 %11, label %12, label %18, !dbg !1322

; <label>:12:                                     ; preds = %1
  br label %13, !dbg !1326, !llvm.loop !1329

; <label>:13:                                     ; preds = %12
  %14 = load i32, i32* %5, align 4, !dbg !1331
  call void @gsl_error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 384, i32 %14), !dbg !1331
  %15 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !1331
  %16 = load double, double* %15, align 8, !dbg !1331
  store double %16, double* %2, align 8, !dbg !1331
  br label %21, !dbg !1331
                                                  ; No predecessors!
  br label %18, !dbg !1334

; <label>:18:                                     ; preds = %17, %1
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !1336
  %20 = load double, double* %19, align 8, !dbg !1336
  store double %20, double* %2, align 8, !dbg !1336
  br label %21, !dbg !1336

; <label>:21:                                     ; preds = %18, %13
  %22 = load double, double* %2, align 8, !dbg !1338
  ret double %22, !dbg !1338
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_bessel_j1(double) #0 !dbg !1339 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct, align 8
  %5 = alloca i32, align 4
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !1340, metadata !60), !dbg !1341
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %4, metadata !1342, metadata !60), !dbg !1343
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1344, metadata !60), !dbg !1343
  %6 = load double, double* %3, align 8, !dbg !1343
  %7 = call i32 @gsl_sf_bessel_j1_e(double %6, %struct.gsl_sf_result_struct* %4), !dbg !1343
  store i32 %7, i32* %5, align 4, !dbg !1343
  %8 = load i32, i32* %5, align 4, !dbg !1345
  %9 = icmp ne i32 %8, 0, !dbg !1345
  %10 = sext i32 %8 to i64, !dbg !1343
  %11 = call i1 @iCmpInstHandler(i64 %10, i64 0, i1 %9, i32 33, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @15, i32 0, i32 0), i64 94150072629936, i32 389, i32 3), !dbg !1343
  br i1 %11, label %12, label %18, !dbg !1343

; <label>:12:                                     ; preds = %1
  br label %13, !dbg !1347, !llvm.loop !1350

; <label>:13:                                     ; preds = %12
  %14 = load i32, i32* %5, align 4, !dbg !1352
  call void @gsl_error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 389, i32 %14), !dbg !1352
  %15 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !1352
  %16 = load double, double* %15, align 8, !dbg !1352
  store double %16, double* %2, align 8, !dbg !1352
  br label %21, !dbg !1352
                                                  ; No predecessors!
  br label %18, !dbg !1355

; <label>:18:                                     ; preds = %17, %1
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !1357
  %20 = load double, double* %19, align 8, !dbg !1357
  store double %20, double* %2, align 8, !dbg !1357
  br label %21, !dbg !1357

; <label>:21:                                     ; preds = %18, %13
  %22 = load double, double* %2, align 8, !dbg !1359
  ret double %22, !dbg !1359
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_bessel_j2(double) #0 !dbg !1360 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct, align 8
  %5 = alloca i32, align 4
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !1361, metadata !60), !dbg !1362
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %4, metadata !1363, metadata !60), !dbg !1364
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1365, metadata !60), !dbg !1364
  %6 = load double, double* %3, align 8, !dbg !1364
  %7 = call i32 @gsl_sf_bessel_j2_e(double %6, %struct.gsl_sf_result_struct* %4), !dbg !1364
  store i32 %7, i32* %5, align 4, !dbg !1364
  %8 = load i32, i32* %5, align 4, !dbg !1366
  %9 = icmp ne i32 %8, 0, !dbg !1366
  %10 = sext i32 %8 to i64, !dbg !1364
  %11 = call i1 @iCmpInstHandler(i64 %10, i64 0, i1 %9, i32 33, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @17, i32 0, i32 0), i64 94150072647232, i32 394, i32 3), !dbg !1364
  br i1 %11, label %12, label %18, !dbg !1364

; <label>:12:                                     ; preds = %1
  br label %13, !dbg !1368, !llvm.loop !1371

; <label>:13:                                     ; preds = %12
  %14 = load i32, i32* %5, align 4, !dbg !1373
  call void @gsl_error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 394, i32 %14), !dbg !1373
  %15 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !1373
  %16 = load double, double* %15, align 8, !dbg !1373
  store double %16, double* %2, align 8, !dbg !1373
  br label %21, !dbg !1373
                                                  ; No predecessors!
  br label %18, !dbg !1376

; <label>:18:                                     ; preds = %17, %1
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !1378
  %20 = load double, double* %19, align 8, !dbg !1378
  store double %20, double* %2, align 8, !dbg !1378
  br label %21, !dbg !1378

; <label>:21:                                     ; preds = %18, %13
  %22 = load double, double* %2, align 8, !dbg !1380
  ret double %22, !dbg !1380
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_bessel_jl(i32, double) #0 !dbg !1381 {
  %3 = alloca double, align 8
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca %struct.gsl_sf_result_struct, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1384, metadata !60), !dbg !1385
  store double %1, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !1386, metadata !60), !dbg !1387
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %6, metadata !1388, metadata !60), !dbg !1389
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1390, metadata !60), !dbg !1389
  %8 = load i32, i32* %4, align 4, !dbg !1389
  %9 = load double, double* %5, align 8, !dbg !1389
  %10 = call i32 @gsl_sf_bessel_jl_e(i32 %8, double %9, %struct.gsl_sf_result_struct* %6), !dbg !1389
  store i32 %10, i32* %7, align 4, !dbg !1389
  %11 = load i32, i32* %7, align 4, !dbg !1391
  %12 = icmp ne i32 %11, 0, !dbg !1391
  %13 = sext i32 %11 to i64, !dbg !1389
  %14 = call i1 @iCmpInstHandler(i64 %13, i64 0, i1 %12, i32 33, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @19, i32 0, i32 0), i64 94150072665968, i32 399, i32 3), !dbg !1389
  br i1 %14, label %15, label %21, !dbg !1389

; <label>:15:                                     ; preds = %2
  br label %16, !dbg !1393, !llvm.loop !1396

; <label>:16:                                     ; preds = %15
  %17 = load i32, i32* %7, align 4, !dbg !1398
  call void @gsl_error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 399, i32 %17), !dbg !1398
  %18 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !1398
  %19 = load double, double* %18, align 8, !dbg !1398
  store double %19, double* %3, align 8, !dbg !1398
  br label %24, !dbg !1398
                                                  ; No predecessors!
  br label %21, !dbg !1401

; <label>:21:                                     ; preds = %20, %2
  %22 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !1403
  %23 = load double, double* %22, align 8, !dbg !1403
  store double %23, double* %3, align 8, !dbg !1403
  br label %24, !dbg !1403

; <label>:24:                                     ; preds = %21, %16
  %25 = load double, double* %3, align 8, !dbg !1405
  ret double %25, !dbg !1405
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
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!41, !42, !43}
!llvm.ident = !{!44}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "bessel_j.c", directory: "/fpcc/gsl-2.5/specfunc")
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
!45 = distinct !DISubprogram(name: "gsl_sf_bessel_j0_e", scope: !1, file: !1, line: 36, type: !46, isLocal: false, isDefinition: true, scopeLine: 37, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
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
!59 = !DILocalVariable(name: "x", arg: 1, scope: !45, file: !1, line: 36, type: !49)
!60 = !DIExpression()
!61 = !DILocation(line: 36, column: 37, scope: !45)
!62 = !DILocalVariable(name: "result", arg: 2, scope: !45, file: !1, line: 36, type: !51)
!63 = !DILocation(line: 36, column: 56, scope: !45)
!64 = !DILocalVariable(name: "ax", scope: !45, file: !1, line: 38, type: !50)
!65 = !DILocation(line: 38, column: 10, scope: !45)
!66 = !DILocation(line: 38, column: 20, scope: !45)
!67 = !DILocation(line: 38, column: 15, scope: !45)
!68 = !DILocation(line: 42, column: 6, scope: !69)
!69 = distinct !DILexicalBlock(scope: !45, file: !1, line: 42, column: 6)
!70 = !DILocation(line: 42, column: 9, scope: !69)
!71 = !DILocation(line: 42, column: 6, scope: !45)
!72 = !DILocalVariable(name: "y", scope: !73, file: !1, line: 43, type: !49)
!73 = distinct !DILexicalBlock(scope: !69, file: !1, line: 42, column: 16)
!74 = !DILocation(line: 43, column: 18, scope: !73)
!75 = !DILocation(line: 43, column: 22, scope: !73)
!76 = !DILocation(line: 43, column: 24, scope: !73)
!77 = !DILocation(line: 43, column: 23, scope: !73)
!78 = !DILocalVariable(name: "c1", scope: !73, file: !1, line: 44, type: !49)
!79 = !DILocation(line: 44, column: 18, scope: !73)
!80 = !DILocalVariable(name: "c2", scope: !73, file: !1, line: 45, type: !49)
!81 = !DILocation(line: 45, column: 18, scope: !73)
!82 = !DILocalVariable(name: "c3", scope: !73, file: !1, line: 46, type: !49)
!83 = !DILocation(line: 46, column: 18, scope: !73)
!84 = !DILocalVariable(name: "c4", scope: !73, file: !1, line: 47, type: !49)
!85 = !DILocation(line: 47, column: 18, scope: !73)
!86 = !DILocalVariable(name: "c5", scope: !73, file: !1, line: 48, type: !49)
!87 = !DILocation(line: 48, column: 18, scope: !73)
!88 = !DILocalVariable(name: "c6", scope: !73, file: !1, line: 49, type: !49)
!89 = !DILocation(line: 49, column: 18, scope: !73)
!90 = !DILocation(line: 50, column: 25, scope: !73)
!91 = !DILocation(line: 50, column: 33, scope: !73)
!92 = !DILocation(line: 50, column: 41, scope: !73)
!93 = !DILocation(line: 50, column: 49, scope: !73)
!94 = !DILocation(line: 50, column: 57, scope: !73)
!95 = !DILocation(line: 50, column: 65, scope: !73)
!96 = !DILocation(line: 50, column: 66, scope: !73)
!97 = !DILocation(line: 50, column: 63, scope: !73)
!98 = !DILocation(line: 50, column: 58, scope: !73)
!99 = !DILocation(line: 50, column: 55, scope: !73)
!100 = !DILocation(line: 50, column: 50, scope: !73)
!101 = !DILocation(line: 50, column: 47, scope: !73)
!102 = !DILocation(line: 50, column: 42, scope: !73)
!103 = !DILocation(line: 50, column: 39, scope: !73)
!104 = !DILocation(line: 50, column: 34, scope: !73)
!105 = !DILocation(line: 50, column: 31, scope: !73)
!106 = !DILocation(line: 50, column: 26, scope: !73)
!107 = !DILocation(line: 50, column: 23, scope: !73)
!108 = !DILocation(line: 50, column: 5, scope: !73)
!109 = !DILocation(line: 50, column: 13, scope: !73)
!110 = !DILocation(line: 50, column: 17, scope: !73)
!111 = !DILocation(line: 51, column: 48, scope: !73)
!112 = !DILocation(line: 51, column: 56, scope: !73)
!113 = !DILocation(line: 51, column: 43, scope: !73)
!114 = !DILocation(line: 51, column: 41, scope: !73)
!115 = !DILocation(line: 51, column: 5, scope: !73)
!116 = !DILocation(line: 51, column: 13, scope: !73)
!117 = !DILocation(line: 51, column: 17, scope: !73)
!118 = !DILocation(line: 52, column: 5, scope: !73)
!119 = !DILocation(line: 55, column: 23, scope: !120)
!120 = distinct !DILexicalBlock(scope: !69, file: !1, line: 54, column: 8)
!121 = !DILocation(line: 55, column: 19, scope: !120)
!122 = !DILocation(line: 55, column: 28, scope: !120)
!123 = !DILocation(line: 55, column: 26, scope: !120)
!124 = !DILocation(line: 55, column: 5, scope: !120)
!125 = !DILocation(line: 55, column: 13, scope: !120)
!126 = !DILocation(line: 55, column: 17, scope: !120)
!127 = !DILocation(line: 56, column: 48, scope: !120)
!128 = !DILocation(line: 56, column: 56, scope: !120)
!129 = !DILocation(line: 56, column: 43, scope: !120)
!130 = !DILocation(line: 56, column: 41, scope: !120)
!131 = !DILocation(line: 56, column: 5, scope: !120)
!132 = !DILocation(line: 56, column: 13, scope: !120)
!133 = !DILocation(line: 56, column: 17, scope: !120)
!134 = !DILocation(line: 57, column: 5, scope: !120)
!135 = !DILocation(line: 59, column: 1, scope: !45)
!136 = distinct !DISubprogram(name: "gsl_sf_bessel_j1_e", scope: !1, file: !1, line: 62, type: !46, isLocal: false, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!137 = !DILocalVariable(name: "x", arg: 1, scope: !136, file: !1, line: 62, type: !49)
!138 = !DILocation(line: 62, column: 37, scope: !136)
!139 = !DILocalVariable(name: "result", arg: 2, scope: !136, file: !1, line: 62, type: !51)
!140 = !DILocation(line: 62, column: 56, scope: !136)
!141 = !DILocalVariable(name: "ax", scope: !136, file: !1, line: 64, type: !50)
!142 = !DILocation(line: 64, column: 10, scope: !136)
!143 = !DILocation(line: 64, column: 20, scope: !136)
!144 = !DILocation(line: 64, column: 15, scope: !136)
!145 = !DILocation(line: 68, column: 6, scope: !146)
!146 = distinct !DILexicalBlock(scope: !136, file: !1, line: 68, column: 6)
!147 = !DILocation(line: 68, column: 8, scope: !146)
!148 = !DILocation(line: 68, column: 6, scope: !136)
!149 = !DILocation(line: 69, column: 5, scope: !150)
!150 = distinct !DILexicalBlock(scope: !146, file: !1, line: 68, column: 16)
!151 = !DILocation(line: 69, column: 13, scope: !150)
!152 = !DILocation(line: 69, column: 17, scope: !150)
!153 = !DILocation(line: 70, column: 5, scope: !150)
!154 = !DILocation(line: 70, column: 13, scope: !150)
!155 = !DILocation(line: 70, column: 17, scope: !150)
!156 = !DILocation(line: 71, column: 5, scope: !150)
!157 = !DILocation(line: 73, column: 11, scope: !158)
!158 = distinct !DILexicalBlock(scope: !146, file: !1, line: 73, column: 11)
!159 = !DILocation(line: 73, column: 14, scope: !158)
!160 = !DILocation(line: 73, column: 11, scope: !146)
!161 = !DILocation(line: 74, column: 5, scope: !162)
!162 = distinct !DILexicalBlock(scope: !158, file: !1, line: 73, column: 33)
!163 = distinct !{!163, !161}
!164 = !DILocation(line: 74, column: 5, scope: !165)
!165 = !DILexicalBlockFile(scope: !166, file: !1, discriminator: 1)
!166 = distinct !DILexicalBlock(scope: !162, file: !1, line: 74, column: 5)
!167 = distinct !{!167, !168}
!168 = !DILocation(line: 74, column: 5, scope: !166)
!169 = !DILocation(line: 74, column: 5, scope: !170)
!170 = !DILexicalBlockFile(scope: !171, file: !1, discriminator: 2)
!171 = distinct !DILexicalBlock(scope: !166, file: !1, line: 74, column: 5)
!172 = !DILocation(line: 74, column: 5, scope: !173)
!173 = !DILexicalBlockFile(scope: !166, file: !1, discriminator: 3)
!174 = !DILocation(line: 75, column: 3, scope: !162)
!175 = !DILocation(line: 76, column: 11, scope: !176)
!176 = distinct !DILexicalBlock(scope: !158, file: !1, line: 76, column: 11)
!177 = !DILocation(line: 76, column: 14, scope: !176)
!178 = !DILocation(line: 76, column: 11, scope: !158)
!179 = !DILocalVariable(name: "y", scope: !180, file: !1, line: 77, type: !49)
!180 = distinct !DILexicalBlock(scope: !176, file: !1, line: 76, column: 22)
!181 = !DILocation(line: 77, column: 18, scope: !180)
!182 = !DILocation(line: 77, column: 22, scope: !180)
!183 = !DILocation(line: 77, column: 24, scope: !180)
!184 = !DILocation(line: 77, column: 23, scope: !180)
!185 = !DILocalVariable(name: "c1", scope: !180, file: !1, line: 78, type: !49)
!186 = !DILocation(line: 78, column: 18, scope: !180)
!187 = !DILocalVariable(name: "c2", scope: !180, file: !1, line: 79, type: !49)
!188 = !DILocation(line: 79, column: 18, scope: !180)
!189 = !DILocalVariable(name: "c3", scope: !180, file: !1, line: 80, type: !49)
!190 = !DILocation(line: 80, column: 18, scope: !180)
!191 = !DILocalVariable(name: "c4", scope: !180, file: !1, line: 81, type: !49)
!192 = !DILocation(line: 81, column: 18, scope: !180)
!193 = !DILocalVariable(name: "c5", scope: !180, file: !1, line: 82, type: !49)
!194 = !DILocation(line: 82, column: 18, scope: !180)
!195 = !DILocalVariable(name: "sum", scope: !180, file: !1, line: 83, type: !49)
!196 = !DILocation(line: 83, column: 18, scope: !180)
!197 = !DILocation(line: 83, column: 30, scope: !180)
!198 = !DILocation(line: 83, column: 38, scope: !180)
!199 = !DILocation(line: 83, column: 46, scope: !180)
!200 = !DILocation(line: 83, column: 54, scope: !180)
!201 = !DILocation(line: 83, column: 62, scope: !180)
!202 = !DILocation(line: 83, column: 63, scope: !180)
!203 = !DILocation(line: 83, column: 60, scope: !180)
!204 = !DILocation(line: 83, column: 55, scope: !180)
!205 = !DILocation(line: 83, column: 52, scope: !180)
!206 = !DILocation(line: 83, column: 47, scope: !180)
!207 = !DILocation(line: 83, column: 44, scope: !180)
!208 = !DILocation(line: 83, column: 39, scope: !180)
!209 = !DILocation(line: 83, column: 36, scope: !180)
!210 = !DILocation(line: 83, column: 31, scope: !180)
!211 = !DILocation(line: 83, column: 28, scope: !180)
!212 = !DILocation(line: 84, column: 19, scope: !180)
!213 = !DILocation(line: 84, column: 20, scope: !180)
!214 = !DILocation(line: 84, column: 27, scope: !180)
!215 = !DILocation(line: 84, column: 25, scope: !180)
!216 = !DILocation(line: 84, column: 5, scope: !180)
!217 = !DILocation(line: 84, column: 13, scope: !180)
!218 = !DILocation(line: 84, column: 17, scope: !180)
!219 = !DILocation(line: 85, column: 48, scope: !180)
!220 = !DILocation(line: 85, column: 56, scope: !180)
!221 = !DILocation(line: 85, column: 43, scope: !180)
!222 = !DILocation(line: 85, column: 41, scope: !180)
!223 = !DILocation(line: 85, column: 5, scope: !180)
!224 = !DILocation(line: 85, column: 13, scope: !180)
!225 = !DILocation(line: 85, column: 17, scope: !180)
!226 = !DILocation(line: 86, column: 5, scope: !180)
!227 = !DILocalVariable(name: "cos_x", scope: !228, file: !1, line: 89, type: !49)
!228 = distinct !DILexicalBlock(scope: !176, file: !1, line: 88, column: 8)
!229 = !DILocation(line: 89, column: 18, scope: !228)
!230 = !DILocation(line: 89, column: 30, scope: !228)
!231 = !DILocation(line: 89, column: 26, scope: !228)
!232 = !DILocalVariable(name: "sin_x", scope: !228, file: !1, line: 90, type: !49)
!233 = !DILocation(line: 90, column: 18, scope: !228)
!234 = !DILocation(line: 90, column: 30, scope: !228)
!235 = !DILocation(line: 90, column: 26, scope: !228)
!236 = !DILocation(line: 91, column: 21, scope: !228)
!237 = !DILocation(line: 91, column: 27, scope: !228)
!238 = !DILocation(line: 91, column: 26, scope: !228)
!239 = !DILocation(line: 91, column: 31, scope: !228)
!240 = !DILocation(line: 91, column: 29, scope: !228)
!241 = !DILocation(line: 91, column: 38, scope: !228)
!242 = !DILocation(line: 91, column: 37, scope: !228)
!243 = !DILocation(line: 91, column: 5, scope: !228)
!244 = !DILocation(line: 91, column: 13, scope: !228)
!245 = !DILocation(line: 91, column: 18, scope: !228)
!246 = !DILocation(line: 92, column: 50, scope: !228)
!247 = !DILocation(line: 92, column: 57, scope: !228)
!248 = !DILocation(line: 92, column: 59, scope: !228)
!249 = !DILocation(line: 92, column: 58, scope: !228)
!250 = !DILocation(line: 92, column: 55, scope: !228)
!251 = !DILocation(line: 92, column: 45, scope: !228)
!252 = !DILocation(line: 92, column: 70, scope: !228)
!253 = !DILocation(line: 92, column: 76, scope: !228)
!254 = !DILocation(line: 92, column: 75, scope: !228)
!255 = !DILocation(line: 92, column: 65, scope: !256)
!256 = !DILexicalBlockFile(scope: !228, file: !1, discriminator: 1)
!257 = !DILocation(line: 92, column: 63, scope: !228)
!258 = !DILocation(line: 92, column: 42, scope: !228)
!259 = !DILocation(line: 92, column: 5, scope: !228)
!260 = !DILocation(line: 92, column: 13, scope: !228)
!261 = !DILocation(line: 92, column: 18, scope: !228)
!262 = !DILocation(line: 93, column: 49, scope: !228)
!263 = !DILocation(line: 93, column: 57, scope: !228)
!264 = !DILocation(line: 93, column: 44, scope: !228)
!265 = !DILocation(line: 93, column: 42, scope: !228)
!266 = !DILocation(line: 93, column: 5, scope: !228)
!267 = !DILocation(line: 93, column: 13, scope: !228)
!268 = !DILocation(line: 93, column: 17, scope: !228)
!269 = !DILocation(line: 94, column: 5, scope: !228)
!270 = !DILocation(line: 96, column: 1, scope: !136)
!271 = distinct !DISubprogram(name: "gsl_sf_bessel_j2_e", scope: !1, file: !1, line: 99, type: !46, isLocal: false, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!272 = !DILocalVariable(name: "x", arg: 1, scope: !271, file: !1, line: 99, type: !49)
!273 = !DILocation(line: 99, column: 37, scope: !271)
!274 = !DILocalVariable(name: "result", arg: 2, scope: !271, file: !1, line: 99, type: !51)
!275 = !DILocation(line: 99, column: 56, scope: !271)
!276 = !DILocalVariable(name: "ax", scope: !271, file: !1, line: 101, type: !50)
!277 = !DILocation(line: 101, column: 10, scope: !271)
!278 = !DILocation(line: 101, column: 20, scope: !271)
!279 = !DILocation(line: 101, column: 15, scope: !271)
!280 = !DILocation(line: 105, column: 6, scope: !281)
!281 = distinct !DILexicalBlock(scope: !271, file: !1, line: 105, column: 6)
!282 = !DILocation(line: 105, column: 8, scope: !281)
!283 = !DILocation(line: 105, column: 6, scope: !271)
!284 = !DILocation(line: 106, column: 5, scope: !285)
!285 = distinct !DILexicalBlock(scope: !281, file: !1, line: 105, column: 16)
!286 = !DILocation(line: 106, column: 13, scope: !285)
!287 = !DILocation(line: 106, column: 17, scope: !285)
!288 = !DILocation(line: 107, column: 5, scope: !285)
!289 = !DILocation(line: 107, column: 13, scope: !285)
!290 = !DILocation(line: 107, column: 17, scope: !285)
!291 = !DILocation(line: 108, column: 5, scope: !285)
!292 = !DILocation(line: 110, column: 11, scope: !293)
!293 = distinct !DILexicalBlock(scope: !281, file: !1, line: 110, column: 11)
!294 = !DILocation(line: 110, column: 14, scope: !293)
!295 = !DILocation(line: 110, column: 11, scope: !281)
!296 = !DILocation(line: 111, column: 5, scope: !297)
!297 = distinct !DILexicalBlock(scope: !293, file: !1, line: 110, column: 38)
!298 = distinct !{!298, !296}
!299 = !DILocation(line: 111, column: 5, scope: !300)
!300 = !DILexicalBlockFile(scope: !301, file: !1, discriminator: 1)
!301 = distinct !DILexicalBlock(scope: !297, file: !1, line: 111, column: 5)
!302 = distinct !{!302, !303}
!303 = !DILocation(line: 111, column: 5, scope: !301)
!304 = !DILocation(line: 111, column: 5, scope: !305)
!305 = !DILexicalBlockFile(scope: !306, file: !1, discriminator: 2)
!306 = distinct !DILexicalBlock(scope: !301, file: !1, line: 111, column: 5)
!307 = !DILocation(line: 111, column: 5, scope: !308)
!308 = !DILexicalBlockFile(scope: !301, file: !1, discriminator: 3)
!309 = !DILocation(line: 112, column: 3, scope: !297)
!310 = !DILocation(line: 113, column: 11, scope: !311)
!311 = distinct !DILexicalBlock(scope: !293, file: !1, line: 113, column: 11)
!312 = !DILocation(line: 113, column: 14, scope: !311)
!313 = !DILocation(line: 113, column: 11, scope: !293)
!314 = !DILocalVariable(name: "y", scope: !315, file: !1, line: 114, type: !49)
!315 = distinct !DILexicalBlock(scope: !311, file: !1, line: 113, column: 21)
!316 = !DILocation(line: 114, column: 18, scope: !315)
!317 = !DILocation(line: 114, column: 23, scope: !315)
!318 = !DILocation(line: 114, column: 25, scope: !315)
!319 = !DILocation(line: 114, column: 24, scope: !315)
!320 = !DILocalVariable(name: "c1", scope: !315, file: !1, line: 115, type: !49)
!321 = !DILocation(line: 115, column: 18, scope: !315)
!322 = !DILocalVariable(name: "c2", scope: !315, file: !1, line: 116, type: !49)
!323 = !DILocation(line: 116, column: 18, scope: !315)
!324 = !DILocalVariable(name: "c3", scope: !315, file: !1, line: 117, type: !49)
!325 = !DILocation(line: 117, column: 18, scope: !315)
!326 = !DILocalVariable(name: "c4", scope: !315, file: !1, line: 118, type: !49)
!327 = !DILocation(line: 118, column: 18, scope: !315)
!328 = !DILocalVariable(name: "c5", scope: !315, file: !1, line: 119, type: !49)
!329 = !DILocation(line: 119, column: 18, scope: !315)
!330 = !DILocalVariable(name: "c6", scope: !315, file: !1, line: 120, type: !49)
!331 = !DILocation(line: 120, column: 18, scope: !315)
!332 = !DILocalVariable(name: "c7", scope: !315, file: !1, line: 121, type: !49)
!333 = !DILocation(line: 121, column: 18, scope: !315)
!334 = !DILocalVariable(name: "c8", scope: !315, file: !1, line: 122, type: !49)
!335 = !DILocation(line: 122, column: 18, scope: !315)
!336 = !DILocalVariable(name: "c9", scope: !315, file: !1, line: 123, type: !49)
!337 = !DILocation(line: 123, column: 18, scope: !315)
!338 = !DILocalVariable(name: "sum", scope: !315, file: !1, line: 124, type: !49)
!339 = !DILocation(line: 124, column: 18, scope: !315)
!340 = !DILocation(line: 124, column: 28, scope: !315)
!341 = !DILocation(line: 124, column: 34, scope: !315)
!342 = !DILocation(line: 124, column: 40, scope: !315)
!343 = !DILocation(line: 124, column: 46, scope: !315)
!344 = !DILocation(line: 124, column: 52, scope: !315)
!345 = !DILocation(line: 124, column: 58, scope: !315)
!346 = !DILocation(line: 124, column: 64, scope: !315)
!347 = !DILocation(line: 124, column: 70, scope: !315)
!348 = !DILocation(line: 124, column: 76, scope: !315)
!349 = !DILocation(line: 124, column: 77, scope: !315)
!350 = !DILocation(line: 124, column: 75, scope: !315)
!351 = !DILocation(line: 124, column: 71, scope: !315)
!352 = !DILocation(line: 124, column: 69, scope: !315)
!353 = !DILocation(line: 124, column: 65, scope: !315)
!354 = !DILocation(line: 124, column: 63, scope: !315)
!355 = !DILocation(line: 124, column: 59, scope: !315)
!356 = !DILocation(line: 124, column: 57, scope: !315)
!357 = !DILocation(line: 124, column: 53, scope: !315)
!358 = !DILocation(line: 124, column: 51, scope: !315)
!359 = !DILocation(line: 124, column: 47, scope: !315)
!360 = !DILocation(line: 124, column: 45, scope: !315)
!361 = !DILocation(line: 124, column: 41, scope: !315)
!362 = !DILocation(line: 124, column: 39, scope: !315)
!363 = !DILocation(line: 124, column: 35, scope: !315)
!364 = !DILocation(line: 124, column: 33, scope: !315)
!365 = !DILocation(line: 124, column: 29, scope: !315)
!366 = !DILocation(line: 124, column: 27, scope: !315)
!367 = !DILocation(line: 125, column: 19, scope: !315)
!368 = !DILocation(line: 125, column: 20, scope: !315)
!369 = !DILocation(line: 125, column: 28, scope: !315)
!370 = !DILocation(line: 125, column: 26, scope: !315)
!371 = !DILocation(line: 125, column: 5, scope: !315)
!372 = !DILocation(line: 125, column: 13, scope: !315)
!373 = !DILocation(line: 125, column: 17, scope: !315)
!374 = !DILocation(line: 126, column: 48, scope: !315)
!375 = !DILocation(line: 126, column: 56, scope: !315)
!376 = !DILocation(line: 126, column: 43, scope: !315)
!377 = !DILocation(line: 126, column: 41, scope: !315)
!378 = !DILocation(line: 126, column: 5, scope: !315)
!379 = !DILocation(line: 126, column: 13, scope: !315)
!380 = !DILocation(line: 126, column: 17, scope: !315)
!381 = !DILocation(line: 127, column: 5, scope: !315)
!382 = !DILocalVariable(name: "cos_x", scope: !383, file: !1, line: 145, type: !49)
!383 = distinct !DILexicalBlock(scope: !311, file: !1, line: 129, column: 8)
!384 = !DILocation(line: 145, column: 18, scope: !383)
!385 = !DILocation(line: 145, column: 30, scope: !383)
!386 = !DILocation(line: 145, column: 26, scope: !383)
!387 = !DILocalVariable(name: "sin_x", scope: !383, file: !1, line: 146, type: !49)
!388 = !DILocation(line: 146, column: 18, scope: !383)
!389 = !DILocation(line: 146, column: 30, scope: !383)
!390 = !DILocation(line: 146, column: 26, scope: !383)
!391 = !DILocalVariable(name: "f", scope: !383, file: !1, line: 147, type: !49)
!392 = !DILocation(line: 147, column: 18, scope: !383)
!393 = !DILocation(line: 147, column: 28, scope: !383)
!394 = !DILocation(line: 147, column: 30, scope: !383)
!395 = !DILocation(line: 147, column: 29, scope: !383)
!396 = !DILocation(line: 147, column: 26, scope: !383)
!397 = !DILocation(line: 147, column: 33, scope: !383)
!398 = !DILocation(line: 148, column: 21, scope: !383)
!399 = !DILocation(line: 148, column: 25, scope: !383)
!400 = !DILocation(line: 148, column: 23, scope: !383)
!401 = !DILocation(line: 148, column: 37, scope: !383)
!402 = !DILocation(line: 148, column: 36, scope: !383)
!403 = !DILocation(line: 148, column: 43, scope: !383)
!404 = !DILocation(line: 148, column: 42, scope: !383)
!405 = !DILocation(line: 148, column: 31, scope: !383)
!406 = !DILocation(line: 148, column: 46, scope: !383)
!407 = !DILocation(line: 148, column: 45, scope: !383)
!408 = !DILocation(line: 148, column: 5, scope: !383)
!409 = !DILocation(line: 148, column: 13, scope: !383)
!410 = !DILocation(line: 148, column: 18, scope: !383)
!411 = !DILocation(line: 149, column: 49, scope: !383)
!412 = !DILocation(line: 149, column: 51, scope: !383)
!413 = !DILocation(line: 149, column: 50, scope: !383)
!414 = !DILocation(line: 149, column: 57, scope: !383)
!415 = !DILocation(line: 149, column: 56, scope: !383)
!416 = !DILocation(line: 149, column: 44, scope: !383)
!417 = !DILocation(line: 149, column: 71, scope: !383)
!418 = !DILocation(line: 149, column: 78, scope: !383)
!419 = !DILocation(line: 149, column: 80, scope: !383)
!420 = !DILocation(line: 149, column: 79, scope: !383)
!421 = !DILocation(line: 149, column: 76, scope: !383)
!422 = !DILocation(line: 149, column: 66, scope: !423)
!423 = !DILexicalBlockFile(scope: !383, file: !1, discriminator: 1)
!424 = !DILocation(line: 149, column: 65, scope: !383)
!425 = !DILocation(line: 149, column: 60, scope: !383)
!426 = !DILocation(line: 149, column: 41, scope: !383)
!427 = !DILocation(line: 149, column: 5, scope: !383)
!428 = !DILocation(line: 149, column: 13, scope: !383)
!429 = !DILocation(line: 149, column: 17, scope: !383)
!430 = !DILocation(line: 150, column: 49, scope: !383)
!431 = !DILocation(line: 150, column: 57, scope: !383)
!432 = !DILocation(line: 150, column: 44, scope: !383)
!433 = !DILocation(line: 150, column: 42, scope: !383)
!434 = !DILocation(line: 150, column: 5, scope: !383)
!435 = !DILocation(line: 150, column: 13, scope: !383)
!436 = !DILocation(line: 150, column: 17, scope: !383)
!437 = !DILocation(line: 152, column: 5, scope: !383)
!438 = !DILocation(line: 155, column: 1, scope: !271)
!439 = distinct !DISubprogram(name: "gsl_sf_bessel_jl_e", scope: !1, file: !1, line: 159, type: !440, isLocal: false, isDefinition: true, scopeLine: 160, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!440 = !DISubroutineType(types: !441)
!441 = !{!48, !442, !49, !51}
!442 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !48)
!443 = !DILocalVariable(name: "l", arg: 1, scope: !439, file: !1, line: 159, type: !442)
!444 = !DILocation(line: 159, column: 30, scope: !439)
!445 = !DILocalVariable(name: "x", arg: 2, scope: !439, file: !1, line: 159, type: !49)
!446 = !DILocation(line: 159, column: 46, scope: !439)
!447 = !DILocalVariable(name: "result", arg: 3, scope: !439, file: !1, line: 159, type: !51)
!448 = !DILocation(line: 159, column: 65, scope: !439)
!449 = !DILocation(line: 161, column: 6, scope: !450)
!450 = distinct !DILexicalBlock(scope: !439, file: !1, line: 161, column: 6)
!451 = !DILocation(line: 161, column: 8, scope: !450)
!452 = !DILocation(line: 161, column: 12, scope: !450)
!453 = !DILocation(line: 161, column: 15, scope: !454)
!454 = !DILexicalBlockFile(scope: !450, file: !1, discriminator: 1)
!455 = !DILocation(line: 161, column: 17, scope: !454)
!456 = !DILocation(line: 161, column: 6, scope: !454)
!457 = !DILocation(line: 162, column: 5, scope: !458)
!458 = distinct !DILexicalBlock(scope: !450, file: !1, line: 161, column: 24)
!459 = distinct !{!459, !457}
!460 = !DILocation(line: 162, column: 5, scope: !461)
!461 = !DILexicalBlockFile(scope: !462, file: !1, discriminator: 1)
!462 = distinct !DILexicalBlock(scope: !458, file: !1, line: 162, column: 5)
!463 = distinct !{!463, !464}
!464 = !DILocation(line: 162, column: 5, scope: !462)
!465 = !DILocation(line: 162, column: 5, scope: !466)
!466 = !DILexicalBlockFile(scope: !467, file: !1, discriminator: 2)
!467 = distinct !DILexicalBlock(scope: !462, file: !1, line: 162, column: 5)
!468 = !DILocation(line: 162, column: 5, scope: !469)
!469 = !DILexicalBlockFile(scope: !462, file: !1, discriminator: 3)
!470 = !DILocation(line: 163, column: 3, scope: !458)
!471 = !DILocation(line: 164, column: 11, scope: !472)
!472 = distinct !DILexicalBlock(scope: !450, file: !1, line: 164, column: 11)
!473 = !DILocation(line: 164, column: 13, scope: !472)
!474 = !DILocation(line: 164, column: 11, scope: !450)
!475 = !DILocation(line: 165, column: 21, scope: !476)
!476 = distinct !DILexicalBlock(scope: !472, file: !1, line: 164, column: 21)
!477 = !DILocation(line: 165, column: 23, scope: !476)
!478 = !DILocation(line: 165, column: 5, scope: !476)
!479 = !DILocation(line: 165, column: 13, scope: !476)
!480 = !DILocation(line: 165, column: 17, scope: !476)
!481 = !DILocation(line: 166, column: 5, scope: !476)
!482 = !DILocation(line: 166, column: 13, scope: !476)
!483 = !DILocation(line: 166, column: 17, scope: !476)
!484 = !DILocation(line: 167, column: 5, scope: !476)
!485 = !DILocation(line: 169, column: 11, scope: !486)
!486 = distinct !DILexicalBlock(scope: !472, file: !1, line: 169, column: 11)
!487 = !DILocation(line: 169, column: 13, scope: !486)
!488 = !DILocation(line: 169, column: 11, scope: !472)
!489 = !DILocation(line: 170, column: 31, scope: !490)
!490 = distinct !DILexicalBlock(scope: !486, file: !1, line: 169, column: 19)
!491 = !DILocation(line: 170, column: 34, scope: !490)
!492 = !DILocation(line: 170, column: 12, scope: !490)
!493 = !DILocation(line: 170, column: 5, scope: !490)
!494 = !DILocation(line: 172, column: 11, scope: !495)
!495 = distinct !DILexicalBlock(scope: !486, file: !1, line: 172, column: 11)
!496 = !DILocation(line: 172, column: 13, scope: !495)
!497 = !DILocation(line: 172, column: 11, scope: !486)
!498 = !DILocation(line: 173, column: 31, scope: !499)
!499 = distinct !DILexicalBlock(scope: !495, file: !1, line: 172, column: 19)
!500 = !DILocation(line: 173, column: 34, scope: !499)
!501 = !DILocation(line: 173, column: 12, scope: !499)
!502 = !DILocation(line: 173, column: 5, scope: !499)
!503 = !DILocation(line: 175, column: 11, scope: !504)
!504 = distinct !DILexicalBlock(scope: !495, file: !1, line: 175, column: 11)
!505 = !DILocation(line: 175, column: 13, scope: !504)
!506 = !DILocation(line: 175, column: 11, scope: !495)
!507 = !DILocation(line: 176, column: 31, scope: !508)
!508 = distinct !DILexicalBlock(scope: !504, file: !1, line: 175, column: 19)
!509 = !DILocation(line: 176, column: 34, scope: !508)
!510 = !DILocation(line: 176, column: 12, scope: !508)
!511 = !DILocation(line: 176, column: 5, scope: !508)
!512 = !DILocation(line: 178, column: 11, scope: !513)
!513 = distinct !DILexicalBlock(scope: !504, file: !1, line: 178, column: 11)
!514 = !DILocation(line: 178, column: 13, scope: !513)
!515 = !DILocation(line: 178, column: 12, scope: !513)
!516 = !DILocation(line: 178, column: 23, scope: !513)
!517 = !DILocation(line: 178, column: 24, scope: !513)
!518 = !DILocation(line: 178, column: 21, scope: !513)
!519 = !DILocation(line: 178, column: 29, scope: !513)
!520 = !DILocation(line: 178, column: 15, scope: !513)
!521 = !DILocation(line: 178, column: 11, scope: !504)
!522 = !DILocalVariable(name: "b", scope: !523, file: !1, line: 179, type: !52)
!523 = distinct !DILexicalBlock(scope: !513, file: !1, line: 178, column: 35)
!524 = !DILocation(line: 179, column: 19, scope: !523)
!525 = !DILocalVariable(name: "status", scope: !523, file: !1, line: 180, type: !48)
!526 = !DILocation(line: 180, column: 9, scope: !523)
!527 = !DILocation(line: 180, column: 44, scope: !523)
!528 = !DILocation(line: 180, column: 45, scope: !523)
!529 = !DILocation(line: 180, column: 51, scope: !523)
!530 = !DILocation(line: 180, column: 18, scope: !523)
!531 = !DILocalVariable(name: "pre", scope: !523, file: !1, line: 181, type: !50)
!532 = !DILocation(line: 181, column: 12, scope: !523)
!533 = !DILocation(line: 181, column: 36, scope: !523)
!534 = !DILocation(line: 181, column: 35, scope: !523)
!535 = !DILocation(line: 181, column: 20, scope: !523)
!536 = !DILocation(line: 182, column: 20, scope: !523)
!537 = !DILocation(line: 182, column: 28, scope: !523)
!538 = !DILocation(line: 182, column: 24, scope: !523)
!539 = !DILocation(line: 182, column: 5, scope: !523)
!540 = !DILocation(line: 182, column: 13, scope: !523)
!541 = !DILocation(line: 182, column: 18, scope: !523)
!542 = !DILocation(line: 183, column: 20, scope: !523)
!543 = !DILocation(line: 183, column: 28, scope: !523)
!544 = !DILocation(line: 183, column: 24, scope: !523)
!545 = !DILocation(line: 183, column: 5, scope: !523)
!546 = !DILocation(line: 183, column: 13, scope: !523)
!547 = !DILocation(line: 183, column: 18, scope: !523)
!548 = !DILocation(line: 184, column: 49, scope: !523)
!549 = !DILocation(line: 184, column: 57, scope: !523)
!550 = !DILocation(line: 184, column: 44, scope: !523)
!551 = !DILocation(line: 184, column: 42, scope: !523)
!552 = !DILocation(line: 184, column: 5, scope: !523)
!553 = !DILocation(line: 184, column: 13, scope: !523)
!554 = !DILocation(line: 184, column: 17, scope: !523)
!555 = !DILocation(line: 185, column: 12, scope: !523)
!556 = !DILocation(line: 185, column: 5, scope: !523)
!557 = !DILocation(line: 187, column: 35, scope: !558)
!558 = distinct !DILexicalBlock(scope: !513, file: !1, line: 187, column: 11)
!559 = !DILocation(line: 187, column: 33, scope: !558)
!560 = !DILocation(line: 187, column: 40, scope: !558)
!561 = !DILocation(line: 187, column: 42, scope: !558)
!562 = !DILocation(line: 187, column: 41, scope: !558)
!563 = !DILocation(line: 187, column: 46, scope: !558)
!564 = !DILocation(line: 187, column: 44, scope: !558)
!565 = !DILocation(line: 187, column: 48, scope: !558)
!566 = !DILocation(line: 187, column: 37, scope: !558)
!567 = !DILocation(line: 187, column: 11, scope: !513)
!568 = !DILocalVariable(name: "b", scope: !569, file: !1, line: 188, type: !52)
!569 = distinct !DILexicalBlock(scope: !558, file: !1, line: 187, column: 56)
!570 = !DILocation(line: 188, column: 19, scope: !569)
!571 = !DILocalVariable(name: "status", scope: !569, file: !1, line: 189, type: !48)
!572 = !DILocation(line: 189, column: 9, scope: !569)
!573 = !DILocation(line: 189, column: 45, scope: !569)
!574 = !DILocation(line: 189, column: 47, scope: !569)
!575 = !DILocation(line: 189, column: 54, scope: !569)
!576 = !DILocation(line: 189, column: 18, scope: !569)
!577 = !DILocalVariable(name: "pre", scope: !569, file: !1, line: 190, type: !50)
!578 = !DILocation(line: 190, column: 12, scope: !569)
!579 = !DILocation(line: 190, column: 34, scope: !569)
!580 = !DILocation(line: 190, column: 33, scope: !569)
!581 = !DILocation(line: 190, column: 18, scope: !569)
!582 = !DILocation(line: 191, column: 19, scope: !569)
!583 = !DILocation(line: 191, column: 27, scope: !569)
!584 = !DILocation(line: 191, column: 23, scope: !569)
!585 = !DILocation(line: 191, column: 5, scope: !569)
!586 = !DILocation(line: 191, column: 13, scope: !569)
!587 = !DILocation(line: 191, column: 17, scope: !569)
!588 = !DILocation(line: 192, column: 48, scope: !569)
!589 = !DILocation(line: 192, column: 56, scope: !569)
!590 = !DILocation(line: 192, column: 43, scope: !569)
!591 = !DILocation(line: 192, column: 41, scope: !569)
!592 = !DILocation(line: 192, column: 63, scope: !569)
!593 = !DILocation(line: 192, column: 71, scope: !569)
!594 = !DILocation(line: 192, column: 67, scope: !569)
!595 = !DILocation(line: 192, column: 61, scope: !569)
!596 = !DILocation(line: 192, column: 5, scope: !569)
!597 = !DILocation(line: 192, column: 13, scope: !569)
!598 = !DILocation(line: 192, column: 17, scope: !569)
!599 = !DILocation(line: 193, column: 12, scope: !569)
!600 = !DILocation(line: 193, column: 5, scope: !569)
!601 = !DILocation(line: 195, column: 11, scope: !602)
!602 = distinct !DILexicalBlock(scope: !558, file: !1, line: 195, column: 11)
!603 = !DILocation(line: 195, column: 13, scope: !602)
!604 = !DILocation(line: 195, column: 11, scope: !558)
!605 = !DILocalVariable(name: "b", scope: !606, file: !1, line: 196, type: !52)
!606 = distinct !DILexicalBlock(scope: !602, file: !1, line: 195, column: 42)
!607 = !DILocation(line: 196, column: 19, scope: !606)
!608 = !DILocalVariable(name: "status", scope: !606, file: !1, line: 197, type: !48)
!609 = !DILocation(line: 197, column: 9, scope: !606)
!610 = !DILocation(line: 197, column: 50, scope: !606)
!611 = !DILocation(line: 197, column: 52, scope: !606)
!612 = !DILocation(line: 197, column: 59, scope: !606)
!613 = !DILocation(line: 197, column: 18, scope: !606)
!614 = !DILocalVariable(name: "pre", scope: !606, file: !1, line: 198, type: !50)
!615 = !DILocation(line: 198, column: 12, scope: !606)
!616 = !DILocation(line: 198, column: 34, scope: !606)
!617 = !DILocation(line: 198, column: 33, scope: !606)
!618 = !DILocation(line: 198, column: 18, scope: !606)
!619 = !DILocation(line: 199, column: 19, scope: !606)
!620 = !DILocation(line: 199, column: 27, scope: !606)
!621 = !DILocation(line: 199, column: 23, scope: !606)
!622 = !DILocation(line: 199, column: 5, scope: !606)
!623 = !DILocation(line: 199, column: 13, scope: !606)
!624 = !DILocation(line: 199, column: 17, scope: !606)
!625 = !DILocation(line: 200, column: 48, scope: !606)
!626 = !DILocation(line: 200, column: 56, scope: !606)
!627 = !DILocation(line: 200, column: 43, scope: !606)
!628 = !DILocation(line: 200, column: 41, scope: !606)
!629 = !DILocation(line: 200, column: 63, scope: !606)
!630 = !DILocation(line: 200, column: 71, scope: !606)
!631 = !DILocation(line: 200, column: 67, scope: !606)
!632 = !DILocation(line: 200, column: 61, scope: !606)
!633 = !DILocation(line: 200, column: 5, scope: !606)
!634 = !DILocation(line: 200, column: 13, scope: !606)
!635 = !DILocation(line: 200, column: 17, scope: !606)
!636 = !DILocation(line: 201, column: 12, scope: !606)
!637 = !DILocation(line: 201, column: 5, scope: !606)
!638 = !DILocation(line: 203, column: 11, scope: !639)
!639 = distinct !DILexicalBlock(scope: !602, file: !1, line: 203, column: 11)
!640 = !DILocation(line: 203, column: 13, scope: !639)
!641 = !DILocation(line: 203, column: 22, scope: !639)
!642 = !DILocation(line: 203, column: 25, scope: !643)
!643 = !DILexicalBlockFile(scope: !639, file: !1, discriminator: 1)
!644 = !DILocation(line: 203, column: 29, scope: !643)
!645 = !DILocation(line: 203, column: 31, scope: !643)
!646 = !DILocation(line: 203, column: 30, scope: !643)
!647 = !DILocation(line: 203, column: 27, scope: !643)
!648 = !DILocation(line: 203, column: 11, scope: !643)
!649 = !DILocalVariable(name: "b", scope: !650, file: !1, line: 206, type: !52)
!650 = distinct !DILexicalBlock(scope: !639, file: !1, line: 204, column: 3)
!651 = !DILocation(line: 206, column: 19, scope: !650)
!652 = !DILocalVariable(name: "status", scope: !650, file: !1, line: 207, type: !48)
!653 = !DILocation(line: 207, column: 9, scope: !650)
!654 = !DILocation(line: 207, column: 45, scope: !650)
!655 = !DILocation(line: 207, column: 47, scope: !650)
!656 = !DILocation(line: 207, column: 54, scope: !650)
!657 = !DILocation(line: 207, column: 18, scope: !650)
!658 = !DILocalVariable(name: "pre", scope: !650, file: !1, line: 208, type: !50)
!659 = !DILocation(line: 208, column: 12, scope: !650)
!660 = !DILocation(line: 208, column: 34, scope: !650)
!661 = !DILocation(line: 208, column: 33, scope: !650)
!662 = !DILocation(line: 208, column: 18, scope: !650)
!663 = !DILocation(line: 209, column: 19, scope: !650)
!664 = !DILocation(line: 209, column: 27, scope: !650)
!665 = !DILocation(line: 209, column: 23, scope: !650)
!666 = !DILocation(line: 209, column: 5, scope: !650)
!667 = !DILocation(line: 209, column: 13, scope: !650)
!668 = !DILocation(line: 209, column: 17, scope: !650)
!669 = !DILocation(line: 210, column: 48, scope: !650)
!670 = !DILocation(line: 210, column: 56, scope: !650)
!671 = !DILocation(line: 210, column: 43, scope: !650)
!672 = !DILocation(line: 210, column: 41, scope: !650)
!673 = !DILocation(line: 210, column: 63, scope: !650)
!674 = !DILocation(line: 210, column: 71, scope: !650)
!675 = !DILocation(line: 210, column: 67, scope: !650)
!676 = !DILocation(line: 210, column: 61, scope: !650)
!677 = !DILocation(line: 210, column: 5, scope: !650)
!678 = !DILocation(line: 210, column: 13, scope: !650)
!679 = !DILocation(line: 210, column: 17, scope: !650)
!680 = !DILocation(line: 211, column: 12, scope: !650)
!681 = !DILocation(line: 211, column: 5, scope: !650)
!682 = !DILocalVariable(name: "sgn", scope: !683, file: !1, line: 214, type: !50)
!683 = distinct !DILexicalBlock(scope: !639, file: !1, line: 213, column: 8)
!684 = !DILocation(line: 214, column: 12, scope: !683)
!685 = !DILocalVariable(name: "ratio", scope: !683, file: !1, line: 215, type: !50)
!686 = !DILocation(line: 215, column: 12, scope: !683)
!687 = !DILocalVariable(name: "stat_CF1", scope: !683, file: !1, line: 217, type: !48)
!688 = !DILocation(line: 217, column: 9, scope: !683)
!689 = !DILocation(line: 217, column: 40, scope: !683)
!690 = !DILocation(line: 217, column: 41, scope: !683)
!691 = !DILocation(line: 217, column: 47, scope: !683)
!692 = !DILocation(line: 217, column: 20, scope: !683)
!693 = !DILocalVariable(name: "BESSEL_J_SMALL", scope: !683, file: !1, line: 218, type: !49)
!694 = !DILocation(line: 218, column: 18, scope: !683)
!695 = !DILocalVariable(name: "jellp1", scope: !683, file: !1, line: 219, type: !50)
!696 = !DILocation(line: 219, column: 12, scope: !683)
!697 = !DILocation(line: 219, column: 38, scope: !683)
!698 = !DILocation(line: 219, column: 36, scope: !683)
!699 = !DILocalVariable(name: "jell", scope: !683, file: !1, line: 220, type: !50)
!700 = !DILocation(line: 220, column: 12, scope: !683)
!701 = !DILocalVariable(name: "jellm1", scope: !683, file: !1, line: 221, type: !50)
!702 = !DILocation(line: 221, column: 12, scope: !683)
!703 = !DILocalVariable(name: "ell", scope: !683, file: !1, line: 222, type: !48)
!704 = !DILocation(line: 222, column: 9, scope: !683)
!705 = !DILocation(line: 223, column: 15, scope: !706)
!706 = distinct !DILexicalBlock(scope: !683, file: !1, line: 223, column: 5)
!707 = !DILocation(line: 223, column: 13, scope: !706)
!708 = !DILocation(line: 223, column: 9, scope: !706)
!709 = !DILocation(line: 223, column: 18, scope: !710)
!710 = !DILexicalBlockFile(scope: !711, file: !1, discriminator: 1)
!711 = distinct !DILexicalBlock(scope: !706, file: !1, line: 223, column: 5)
!712 = !DILocation(line: 223, column: 22, scope: !710)
!713 = !DILocation(line: 223, column: 5, scope: !710)
!714 = !DILocation(line: 224, column: 17, scope: !715)
!715 = distinct !DILexicalBlock(scope: !711, file: !1, line: 223, column: 34)
!716 = !DILocation(line: 224, column: 16, scope: !715)
!717 = !DILocation(line: 224, column: 29, scope: !715)
!718 = !DILocation(line: 224, column: 28, scope: !715)
!719 = !DILocation(line: 224, column: 33, scope: !715)
!720 = !DILocation(line: 224, column: 26, scope: !715)
!721 = !DILocation(line: 224, column: 38, scope: !715)
!722 = !DILocation(line: 224, column: 37, scope: !715)
!723 = !DILocation(line: 224, column: 42, scope: !715)
!724 = !DILocation(line: 224, column: 40, scope: !715)
!725 = !DILocation(line: 224, column: 24, scope: !715)
!726 = !DILocation(line: 224, column: 14, scope: !715)
!727 = !DILocation(line: 225, column: 16, scope: !715)
!728 = !DILocation(line: 225, column: 14, scope: !715)
!729 = !DILocation(line: 226, column: 16, scope: !715)
!730 = !DILocation(line: 226, column: 14, scope: !715)
!731 = !DILocation(line: 227, column: 5, scope: !715)
!732 = !DILocation(line: 223, column: 30, scope: !733)
!733 = !DILexicalBlockFile(scope: !711, file: !1, discriminator: 2)
!734 = !DILocation(line: 223, column: 5, scope: !733)
!735 = distinct !{!735, !736}
!736 = !DILocation(line: 223, column: 5, scope: !683)
!737 = !DILocation(line: 229, column: 13, scope: !738)
!738 = distinct !DILexicalBlock(scope: !683, file: !1, line: 229, column: 8)
!739 = !DILocation(line: 229, column: 8, scope: !738)
!740 = !DILocation(line: 229, column: 26, scope: !738)
!741 = !DILocation(line: 229, column: 21, scope: !742)
!742 = !DILexicalBlockFile(scope: !738, file: !1, discriminator: 1)
!743 = !DILocation(line: 229, column: 19, scope: !738)
!744 = !DILocation(line: 229, column: 8, scope: !683)
!745 = !DILocalVariable(name: "j0_result", scope: !746, file: !1, line: 230, type: !52)
!746 = distinct !DILexicalBlock(scope: !738, file: !1, line: 229, column: 35)
!747 = !DILocation(line: 230, column: 21, scope: !746)
!748 = !DILocalVariable(name: "stat_j0", scope: !746, file: !1, line: 231, type: !48)
!749 = !DILocation(line: 231, column: 11, scope: !746)
!750 = !DILocation(line: 231, column: 41, scope: !746)
!751 = !DILocation(line: 231, column: 22, scope: !746)
!752 = !DILocalVariable(name: "pre", scope: !746, file: !1, line: 232, type: !50)
!753 = !DILocation(line: 232, column: 14, scope: !746)
!754 = !DILocation(line: 232, column: 39, scope: !746)
!755 = !DILocation(line: 232, column: 37, scope: !746)
!756 = !DILocation(line: 233, column: 32, scope: !746)
!757 = !DILocation(line: 233, column: 38, scope: !746)
!758 = !DILocation(line: 233, column: 36, scope: !746)
!759 = !DILocation(line: 233, column: 7, scope: !746)
!760 = !DILocation(line: 233, column: 15, scope: !746)
!761 = !DILocation(line: 233, column: 20, scope: !746)
!762 = !DILocation(line: 234, column: 32, scope: !746)
!763 = !DILocation(line: 234, column: 43, scope: !746)
!764 = !DILocation(line: 234, column: 38, scope: !746)
!765 = !DILocation(line: 234, column: 36, scope: !746)
!766 = !DILocation(line: 234, column: 7, scope: !746)
!767 = !DILocation(line: 234, column: 15, scope: !746)
!768 = !DILocation(line: 234, column: 20, scope: !746)
!769 = !DILocation(line: 235, column: 51, scope: !746)
!770 = !DILocation(line: 235, column: 50, scope: !746)
!771 = !DILocation(line: 235, column: 53, scope: !746)
!772 = !DILocation(line: 235, column: 44, scope: !746)
!773 = !DILocation(line: 235, column: 67, scope: !746)
!774 = !DILocation(line: 235, column: 75, scope: !746)
!775 = !DILocation(line: 235, column: 62, scope: !746)
!776 = !DILocation(line: 235, column: 60, scope: !746)
!777 = !DILocation(line: 235, column: 7, scope: !746)
!778 = !DILocation(line: 235, column: 15, scope: !746)
!779 = !DILocation(line: 235, column: 19, scope: !746)
!780 = !DILocation(line: 236, column: 14, scope: !746)
!781 = !DILocation(line: 236, column: 14, scope: !782)
!782 = !DILexicalBlockFile(scope: !746, file: !1, discriminator: 1)
!783 = !DILocation(line: 236, column: 14, scope: !784)
!784 = !DILexicalBlockFile(scope: !746, file: !1, discriminator: 2)
!785 = !DILocation(line: 236, column: 14, scope: !786)
!786 = !DILexicalBlockFile(scope: !746, file: !1, discriminator: 3)
!787 = !DILocation(line: 236, column: 14, scope: !788)
!788 = !DILexicalBlockFile(scope: !746, file: !1, discriminator: 4)
!789 = !DILocation(line: 236, column: 14, scope: !790)
!790 = !DILexicalBlockFile(scope: !746, file: !1, discriminator: 5)
!791 = !DILocation(line: 236, column: 14, scope: !792)
!792 = !DILexicalBlockFile(scope: !746, file: !1, discriminator: 6)
!793 = !DILocation(line: 236, column: 7, scope: !792)
!794 = !DILocalVariable(name: "j1_result", scope: !795, file: !1, line: 239, type: !52)
!795 = distinct !DILexicalBlock(scope: !738, file: !1, line: 238, column: 10)
!796 = !DILocation(line: 239, column: 21, scope: !795)
!797 = !DILocalVariable(name: "stat_j1", scope: !795, file: !1, line: 240, type: !48)
!798 = !DILocation(line: 240, column: 11, scope: !795)
!799 = !DILocation(line: 240, column: 41, scope: !795)
!800 = !DILocation(line: 240, column: 22, scope: !795)
!801 = !DILocalVariable(name: "pre", scope: !795, file: !1, line: 241, type: !50)
!802 = !DILocation(line: 241, column: 14, scope: !795)
!803 = !DILocation(line: 241, column: 39, scope: !795)
!804 = !DILocation(line: 241, column: 37, scope: !795)
!805 = !DILocation(line: 242, column: 32, scope: !795)
!806 = !DILocation(line: 242, column: 38, scope: !795)
!807 = !DILocation(line: 242, column: 36, scope: !795)
!808 = !DILocation(line: 242, column: 7, scope: !795)
!809 = !DILocation(line: 242, column: 15, scope: !795)
!810 = !DILocation(line: 242, column: 20, scope: !795)
!811 = !DILocation(line: 243, column: 32, scope: !795)
!812 = !DILocation(line: 243, column: 43, scope: !795)
!813 = !DILocation(line: 243, column: 38, scope: !795)
!814 = !DILocation(line: 243, column: 36, scope: !795)
!815 = !DILocation(line: 243, column: 7, scope: !795)
!816 = !DILocation(line: 243, column: 15, scope: !795)
!817 = !DILocation(line: 243, column: 20, scope: !795)
!818 = !DILocation(line: 244, column: 51, scope: !795)
!819 = !DILocation(line: 244, column: 50, scope: !795)
!820 = !DILocation(line: 244, column: 53, scope: !795)
!821 = !DILocation(line: 244, column: 44, scope: !795)
!822 = !DILocation(line: 244, column: 67, scope: !795)
!823 = !DILocation(line: 244, column: 75, scope: !795)
!824 = !DILocation(line: 244, column: 62, scope: !795)
!825 = !DILocation(line: 244, column: 60, scope: !795)
!826 = !DILocation(line: 244, column: 7, scope: !795)
!827 = !DILocation(line: 244, column: 15, scope: !795)
!828 = !DILocation(line: 244, column: 19, scope: !795)
!829 = !DILocation(line: 245, column: 14, scope: !795)
!830 = !DILocation(line: 245, column: 14, scope: !831)
!831 = !DILexicalBlockFile(scope: !795, file: !1, discriminator: 1)
!832 = !DILocation(line: 245, column: 14, scope: !833)
!833 = !DILexicalBlockFile(scope: !795, file: !1, discriminator: 2)
!834 = !DILocation(line: 245, column: 14, scope: !835)
!835 = !DILexicalBlockFile(scope: !795, file: !1, discriminator: 3)
!836 = !DILocation(line: 245, column: 14, scope: !837)
!837 = !DILexicalBlockFile(scope: !795, file: !1, discriminator: 4)
!838 = !DILocation(line: 245, column: 14, scope: !839)
!839 = !DILexicalBlockFile(scope: !795, file: !1, discriminator: 5)
!840 = !DILocation(line: 245, column: 14, scope: !841)
!841 = !DILexicalBlockFile(scope: !795, file: !1, discriminator: 6)
!842 = !DILocation(line: 245, column: 7, scope: !841)
!843 = !DILocation(line: 248, column: 1, scope: !439)
!844 = distinct !DISubprogram(name: "gsl_sf_bessel_jl_array", scope: !1, file: !1, line: 252, type: !845, isLocal: false, isDefinition: true, scopeLine: 253, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!845 = !DISubroutineType(types: !846)
!846 = !{!48, !442, !49, !847}
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64, align: 64)
!848 = !DILocalVariable(name: "lmax", arg: 1, scope: !844, file: !1, line: 252, type: !442)
!849 = !DILocation(line: 252, column: 34, scope: !844)
!850 = !DILocalVariable(name: "x", arg: 2, scope: !844, file: !1, line: 252, type: !49)
!851 = !DILocation(line: 252, column: 53, scope: !844)
!852 = !DILocalVariable(name: "result_array", arg: 3, scope: !844, file: !1, line: 252, type: !847)
!853 = !DILocation(line: 252, column: 65, scope: !844)
!854 = !DILocation(line: 256, column: 6, scope: !855)
!855 = distinct !DILexicalBlock(scope: !844, file: !1, line: 256, column: 6)
!856 = !DILocation(line: 256, column: 11, scope: !855)
!857 = !DILocation(line: 256, column: 15, scope: !855)
!858 = !DILocation(line: 256, column: 18, scope: !859)
!859 = !DILexicalBlockFile(scope: !855, file: !1, discriminator: 1)
!860 = !DILocation(line: 256, column: 20, scope: !859)
!861 = !DILocation(line: 256, column: 6, scope: !859)
!862 = !DILocalVariable(name: "j", scope: !863, file: !1, line: 257, type: !48)
!863 = distinct !DILexicalBlock(scope: !855, file: !1, line: 256, column: 27)
!864 = !DILocation(line: 257, column: 9, scope: !863)
!865 = !DILocation(line: 258, column: 10, scope: !866)
!866 = distinct !DILexicalBlock(scope: !863, file: !1, line: 258, column: 5)
!867 = !DILocation(line: 258, column: 9, scope: !866)
!868 = !DILocation(line: 258, column: 14, scope: !869)
!869 = !DILexicalBlockFile(scope: !870, file: !1, discriminator: 1)
!870 = distinct !DILexicalBlock(scope: !866, file: !1, line: 258, column: 5)
!871 = !DILocation(line: 258, column: 17, scope: !869)
!872 = !DILocation(line: 258, column: 15, scope: !869)
!873 = !DILocation(line: 258, column: 5, scope: !869)
!874 = !DILocation(line: 258, column: 41, scope: !875)
!875 = !DILexicalBlockFile(scope: !870, file: !1, discriminator: 2)
!876 = !DILocation(line: 258, column: 28, scope: !875)
!877 = !DILocation(line: 258, column: 44, scope: !875)
!878 = !DILocation(line: 258, column: 24, scope: !879)
!879 = !DILexicalBlockFile(scope: !870, file: !1, discriminator: 3)
!880 = !DILocation(line: 258, column: 5, scope: !879)
!881 = distinct !{!881, !882}
!882 = !DILocation(line: 258, column: 5, scope: !863)
!883 = !DILocation(line: 259, column: 5, scope: !863)
!884 = distinct !{!884, !883}
!885 = !DILocation(line: 259, column: 5, scope: !886)
!886 = !DILexicalBlockFile(scope: !887, file: !1, discriminator: 1)
!887 = distinct !DILexicalBlock(scope: !863, file: !1, line: 259, column: 5)
!888 = !DILocation(line: 260, column: 3, scope: !863)
!889 = !DILocation(line: 261, column: 11, scope: !890)
!890 = distinct !DILexicalBlock(scope: !855, file: !1, line: 261, column: 11)
!891 = !DILocation(line: 261, column: 13, scope: !890)
!892 = !DILocation(line: 261, column: 11, scope: !855)
!893 = !DILocalVariable(name: "j", scope: !894, file: !1, line: 262, type: !48)
!894 = distinct !DILexicalBlock(scope: !890, file: !1, line: 261, column: 21)
!895 = !DILocation(line: 262, column: 9, scope: !894)
!896 = !DILocation(line: 263, column: 10, scope: !897)
!897 = distinct !DILexicalBlock(scope: !894, file: !1, line: 263, column: 5)
!898 = !DILocation(line: 263, column: 9, scope: !897)
!899 = !DILocation(line: 263, column: 14, scope: !900)
!900 = !DILexicalBlockFile(scope: !901, file: !1, discriminator: 1)
!901 = distinct !DILexicalBlock(scope: !897, file: !1, line: 263, column: 5)
!902 = !DILocation(line: 263, column: 17, scope: !900)
!903 = !DILocation(line: 263, column: 15, scope: !900)
!904 = !DILocation(line: 263, column: 5, scope: !900)
!905 = !DILocation(line: 263, column: 41, scope: !906)
!906 = !DILexicalBlockFile(scope: !901, file: !1, discriminator: 2)
!907 = !DILocation(line: 263, column: 28, scope: !906)
!908 = !DILocation(line: 263, column: 44, scope: !906)
!909 = !DILocation(line: 263, column: 24, scope: !910)
!910 = !DILexicalBlockFile(scope: !901, file: !1, discriminator: 3)
!911 = !DILocation(line: 263, column: 5, scope: !910)
!912 = distinct !{!912, !913}
!913 = !DILocation(line: 263, column: 5, scope: !894)
!914 = !DILocation(line: 264, column: 5, scope: !894)
!915 = !DILocation(line: 264, column: 21, scope: !894)
!916 = !DILocation(line: 265, column: 5, scope: !894)
!917 = !DILocalVariable(name: "r_jellp1", scope: !918, file: !1, line: 268, type: !52)
!918 = distinct !DILexicalBlock(scope: !890, file: !1, line: 267, column: 8)
!919 = !DILocation(line: 268, column: 19, scope: !918)
!920 = !DILocalVariable(name: "r_jell", scope: !918, file: !1, line: 269, type: !52)
!921 = !DILocation(line: 269, column: 19, scope: !918)
!922 = !DILocalVariable(name: "stat_0", scope: !918, file: !1, line: 270, type: !48)
!923 = !DILocation(line: 270, column: 9, scope: !918)
!924 = !DILocation(line: 270, column: 37, scope: !918)
!925 = !DILocation(line: 270, column: 41, scope: !918)
!926 = !DILocation(line: 270, column: 45, scope: !918)
!927 = !DILocation(line: 270, column: 18, scope: !918)
!928 = !DILocalVariable(name: "stat_1", scope: !918, file: !1, line: 271, type: !48)
!929 = !DILocation(line: 271, column: 9, scope: !918)
!930 = !DILocation(line: 271, column: 37, scope: !918)
!931 = !DILocation(line: 271, column: 45, scope: !918)
!932 = !DILocation(line: 271, column: 18, scope: !918)
!933 = !DILocalVariable(name: "jellp1", scope: !918, file: !1, line: 272, type: !50)
!934 = !DILocation(line: 272, column: 12, scope: !918)
!935 = !DILocation(line: 272, column: 30, scope: !918)
!936 = !DILocalVariable(name: "jell", scope: !918, file: !1, line: 273, type: !50)
!937 = !DILocation(line: 273, column: 12, scope: !918)
!938 = !DILocation(line: 273, column: 28, scope: !918)
!939 = !DILocalVariable(name: "jellm1", scope: !918, file: !1, line: 274, type: !50)
!940 = !DILocation(line: 274, column: 12, scope: !918)
!941 = !DILocalVariable(name: "ell", scope: !918, file: !1, line: 275, type: !48)
!942 = !DILocation(line: 275, column: 9, scope: !918)
!943 = !DILocation(line: 277, column: 26, scope: !918)
!944 = !DILocation(line: 277, column: 18, scope: !918)
!945 = !DILocation(line: 277, column: 5, scope: !918)
!946 = !DILocation(line: 277, column: 24, scope: !918)
!947 = !DILocation(line: 278, column: 15, scope: !948)
!948 = distinct !DILexicalBlock(scope: !918, file: !1, line: 278, column: 5)
!949 = !DILocation(line: 278, column: 13, scope: !948)
!950 = !DILocation(line: 278, column: 9, scope: !948)
!951 = !DILocation(line: 278, column: 21, scope: !952)
!952 = !DILexicalBlockFile(scope: !953, file: !1, discriminator: 1)
!953 = distinct !DILexicalBlock(scope: !948, file: !1, line: 278, column: 5)
!954 = !DILocation(line: 278, column: 25, scope: !952)
!955 = !DILocation(line: 278, column: 5, scope: !952)
!956 = !DILocation(line: 279, column: 17, scope: !957)
!957 = distinct !DILexicalBlock(scope: !953, file: !1, line: 278, column: 38)
!958 = !DILocation(line: 279, column: 16, scope: !957)
!959 = !DILocation(line: 279, column: 29, scope: !957)
!960 = !DILocation(line: 279, column: 28, scope: !957)
!961 = !DILocation(line: 279, column: 33, scope: !957)
!962 = !DILocation(line: 279, column: 26, scope: !957)
!963 = !DILocation(line: 279, column: 38, scope: !957)
!964 = !DILocation(line: 279, column: 37, scope: !957)
!965 = !DILocation(line: 279, column: 42, scope: !957)
!966 = !DILocation(line: 279, column: 40, scope: !957)
!967 = !DILocation(line: 279, column: 24, scope: !957)
!968 = !DILocation(line: 279, column: 14, scope: !957)
!969 = !DILocation(line: 280, column: 16, scope: !957)
!970 = !DILocation(line: 280, column: 14, scope: !957)
!971 = !DILocation(line: 281, column: 16, scope: !957)
!972 = !DILocation(line: 281, column: 14, scope: !957)
!973 = !DILocation(line: 282, column: 29, scope: !957)
!974 = !DILocation(line: 282, column: 20, scope: !957)
!975 = !DILocation(line: 282, column: 23, scope: !957)
!976 = !DILocation(line: 282, column: 7, scope: !957)
!977 = !DILocation(line: 282, column: 27, scope: !957)
!978 = !DILocation(line: 283, column: 5, scope: !957)
!979 = !DILocation(line: 278, column: 34, scope: !980)
!980 = !DILexicalBlockFile(scope: !953, file: !1, discriminator: 2)
!981 = !DILocation(line: 278, column: 5, scope: !980)
!982 = distinct !{!982, !983}
!983 = !DILocation(line: 278, column: 5, scope: !918)
!984 = !DILocation(line: 285, column: 12, scope: !918)
!985 = !DILocation(line: 285, column: 12, scope: !986)
!986 = !DILexicalBlockFile(scope: !918, file: !1, discriminator: 1)
!987 = !DILocation(line: 285, column: 12, scope: !988)
!988 = !DILexicalBlockFile(scope: !918, file: !1, discriminator: 2)
!989 = !DILocation(line: 285, column: 12, scope: !990)
!990 = !DILexicalBlockFile(scope: !918, file: !1, discriminator: 3)
!991 = !DILocation(line: 285, column: 12, scope: !992)
!992 = !DILexicalBlockFile(scope: !918, file: !1, discriminator: 4)
!993 = !DILocation(line: 285, column: 12, scope: !994)
!994 = !DILexicalBlockFile(scope: !918, file: !1, discriminator: 5)
!995 = !DILocation(line: 285, column: 12, scope: !996)
!996 = !DILexicalBlockFile(scope: !918, file: !1, discriminator: 6)
!997 = !DILocation(line: 285, column: 5, scope: !996)
!998 = !DILocation(line: 287, column: 1, scope: !844)
!999 = distinct !DISubprogram(name: "gsl_sf_bessel_jl_steed_array", scope: !1, file: !1, line: 290, type: !845, isLocal: false, isDefinition: true, scopeLine: 291, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!1000 = !DILocalVariable(name: "lmax", arg: 1, scope: !999, file: !1, line: 290, type: !442)
!1001 = !DILocation(line: 290, column: 44, scope: !999)
!1002 = !DILocalVariable(name: "x", arg: 2, scope: !999, file: !1, line: 290, type: !49)
!1003 = !DILocation(line: 290, column: 63, scope: !999)
!1004 = !DILocalVariable(name: "jl_x", arg: 3, scope: !999, file: !1, line: 290, type: !847)
!1005 = !DILocation(line: 290, column: 75, scope: !999)
!1006 = !DILocation(line: 294, column: 6, scope: !1007)
!1007 = distinct !DILexicalBlock(scope: !999, file: !1, line: 294, column: 6)
!1008 = !DILocation(line: 294, column: 11, scope: !1007)
!1009 = !DILocation(line: 294, column: 15, scope: !1007)
!1010 = !DILocation(line: 294, column: 18, scope: !1011)
!1011 = !DILexicalBlockFile(scope: !1007, file: !1, discriminator: 1)
!1012 = !DILocation(line: 294, column: 20, scope: !1011)
!1013 = !DILocation(line: 294, column: 6, scope: !1011)
!1014 = !DILocalVariable(name: "j", scope: !1015, file: !1, line: 295, type: !48)
!1015 = distinct !DILexicalBlock(scope: !1007, file: !1, line: 294, column: 27)
!1016 = !DILocation(line: 295, column: 9, scope: !1015)
!1017 = !DILocation(line: 296, column: 10, scope: !1018)
!1018 = distinct !DILexicalBlock(scope: !1015, file: !1, line: 296, column: 5)
!1019 = !DILocation(line: 296, column: 9, scope: !1018)
!1020 = !DILocation(line: 296, column: 14, scope: !1021)
!1021 = !DILexicalBlockFile(scope: !1022, file: !1, discriminator: 1)
!1022 = distinct !DILexicalBlock(scope: !1018, file: !1, line: 296, column: 5)
!1023 = !DILocation(line: 296, column: 17, scope: !1021)
!1024 = !DILocation(line: 296, column: 15, scope: !1021)
!1025 = !DILocation(line: 296, column: 5, scope: !1021)
!1026 = !DILocation(line: 296, column: 33, scope: !1027)
!1027 = !DILexicalBlockFile(scope: !1022, file: !1, discriminator: 2)
!1028 = !DILocation(line: 296, column: 28, scope: !1027)
!1029 = !DILocation(line: 296, column: 36, scope: !1027)
!1030 = !DILocation(line: 296, column: 24, scope: !1031)
!1031 = !DILexicalBlockFile(scope: !1022, file: !1, discriminator: 3)
!1032 = !DILocation(line: 296, column: 5, scope: !1031)
!1033 = distinct !{!1033, !1034}
!1034 = !DILocation(line: 296, column: 5, scope: !1015)
!1035 = !DILocation(line: 297, column: 5, scope: !1015)
!1036 = distinct !{!1036, !1035}
!1037 = !DILocation(line: 297, column: 5, scope: !1038)
!1038 = !DILexicalBlockFile(scope: !1039, file: !1, discriminator: 1)
!1039 = distinct !DILexicalBlock(scope: !1015, file: !1, line: 297, column: 5)
!1040 = !DILocation(line: 298, column: 3, scope: !1015)
!1041 = !DILocation(line: 299, column: 11, scope: !1042)
!1042 = distinct !DILexicalBlock(scope: !1007, file: !1, line: 299, column: 11)
!1043 = !DILocation(line: 299, column: 13, scope: !1042)
!1044 = !DILocation(line: 299, column: 11, scope: !1007)
!1045 = !DILocalVariable(name: "j", scope: !1046, file: !1, line: 300, type: !48)
!1046 = distinct !DILexicalBlock(scope: !1042, file: !1, line: 299, column: 21)
!1047 = !DILocation(line: 300, column: 9, scope: !1046)
!1048 = !DILocation(line: 301, column: 10, scope: !1049)
!1049 = distinct !DILexicalBlock(scope: !1046, file: !1, line: 301, column: 5)
!1050 = !DILocation(line: 301, column: 9, scope: !1049)
!1051 = !DILocation(line: 301, column: 14, scope: !1052)
!1052 = !DILexicalBlockFile(scope: !1053, file: !1, discriminator: 1)
!1053 = distinct !DILexicalBlock(scope: !1049, file: !1, line: 301, column: 5)
!1054 = !DILocation(line: 301, column: 17, scope: !1052)
!1055 = !DILocation(line: 301, column: 15, scope: !1052)
!1056 = !DILocation(line: 301, column: 5, scope: !1052)
!1057 = !DILocation(line: 301, column: 33, scope: !1058)
!1058 = !DILexicalBlockFile(scope: !1053, file: !1, discriminator: 2)
!1059 = !DILocation(line: 301, column: 28, scope: !1058)
!1060 = !DILocation(line: 301, column: 36, scope: !1058)
!1061 = !DILocation(line: 301, column: 24, scope: !1062)
!1062 = !DILexicalBlockFile(scope: !1053, file: !1, discriminator: 3)
!1063 = !DILocation(line: 301, column: 5, scope: !1062)
!1064 = distinct !{!1064, !1065}
!1065 = !DILocation(line: 301, column: 5, scope: !1046)
!1066 = !DILocation(line: 302, column: 5, scope: !1046)
!1067 = !DILocation(line: 302, column: 13, scope: !1046)
!1068 = !DILocation(line: 303, column: 5, scope: !1046)
!1069 = !DILocation(line: 305, column: 11, scope: !1070)
!1070 = distinct !DILexicalBlock(scope: !1042, file: !1, line: 305, column: 11)
!1071 = !DILocation(line: 305, column: 13, scope: !1070)
!1072 = !DILocation(line: 305, column: 11, scope: !1042)
!1073 = !DILocalVariable(name: "inv_fact", scope: !1074, file: !1, line: 307, type: !50)
!1074 = distinct !DILexicalBlock(scope: !1070, file: !1, line: 305, column: 42)
!1075 = !DILocation(line: 307, column: 12, scope: !1074)
!1076 = !DILocalVariable(name: "x_l", scope: !1074, file: !1, line: 308, type: !50)
!1077 = !DILocation(line: 308, column: 12, scope: !1074)
!1078 = !DILocalVariable(name: "l", scope: !1074, file: !1, line: 309, type: !48)
!1079 = !DILocation(line: 309, column: 9, scope: !1074)
!1080 = !DILocation(line: 310, column: 10, scope: !1081)
!1081 = distinct !DILexicalBlock(scope: !1074, file: !1, line: 310, column: 5)
!1082 = !DILocation(line: 310, column: 9, scope: !1081)
!1083 = !DILocation(line: 310, column: 14, scope: !1084)
!1084 = !DILexicalBlockFile(scope: !1085, file: !1, discriminator: 1)
!1085 = distinct !DILexicalBlock(scope: !1081, file: !1, line: 310, column: 5)
!1086 = !DILocation(line: 310, column: 17, scope: !1084)
!1087 = !DILocation(line: 310, column: 15, scope: !1084)
!1088 = !DILocation(line: 310, column: 5, scope: !1084)
!1089 = !DILocation(line: 311, column: 18, scope: !1090)
!1090 = distinct !DILexicalBlock(scope: !1085, file: !1, line: 310, column: 28)
!1091 = !DILocation(line: 311, column: 24, scope: !1090)
!1092 = !DILocation(line: 311, column: 22, scope: !1090)
!1093 = !DILocation(line: 311, column: 12, scope: !1090)
!1094 = !DILocation(line: 311, column: 7, scope: !1090)
!1095 = !DILocation(line: 311, column: 16, scope: !1090)
!1096 = !DILocation(line: 312, column: 28, scope: !1090)
!1097 = !DILocation(line: 312, column: 27, scope: !1090)
!1098 = !DILocation(line: 312, column: 30, scope: !1090)
!1099 = !DILocation(line: 312, column: 29, scope: !1090)
!1100 = !DILocation(line: 312, column: 37, scope: !1090)
!1101 = !DILocation(line: 312, column: 36, scope: !1090)
!1102 = !DILocation(line: 312, column: 38, scope: !1090)
!1103 = !DILocation(line: 312, column: 31, scope: !1090)
!1104 = !DILocation(line: 312, column: 22, scope: !1090)
!1105 = !DILocation(line: 312, column: 12, scope: !1090)
!1106 = !DILocation(line: 312, column: 7, scope: !1090)
!1107 = !DILocation(line: 312, column: 15, scope: !1090)
!1108 = !DILocation(line: 313, column: 23, scope: !1090)
!1109 = !DILocation(line: 313, column: 22, scope: !1090)
!1110 = !DILocation(line: 313, column: 24, scope: !1090)
!1111 = !DILocation(line: 313, column: 16, scope: !1090)
!1112 = !DILocation(line: 314, column: 19, scope: !1090)
!1113 = !DILocation(line: 314, column: 16, scope: !1090)
!1114 = !DILocation(line: 315, column: 5, scope: !1090)
!1115 = !DILocation(line: 310, column: 24, scope: !1116)
!1116 = !DILexicalBlockFile(scope: !1085, file: !1, discriminator: 2)
!1117 = !DILocation(line: 310, column: 5, scope: !1116)
!1118 = distinct !{!1118, !1119}
!1119 = !DILocation(line: 310, column: 5, scope: !1074)
!1120 = !DILocation(line: 316, column: 5, scope: !1074)
!1121 = !DILocalVariable(name: "x_inv", scope: !1122, file: !1, line: 320, type: !50)
!1122 = distinct !DILexicalBlock(scope: !1070, file: !1, line: 318, column: 8)
!1123 = !DILocation(line: 320, column: 12, scope: !1122)
!1124 = !DILocation(line: 320, column: 24, scope: !1122)
!1125 = !DILocation(line: 320, column: 23, scope: !1122)
!1126 = !DILocalVariable(name: "W", scope: !1122, file: !1, line: 321, type: !50)
!1127 = !DILocation(line: 321, column: 12, scope: !1122)
!1128 = !DILocation(line: 321, column: 20, scope: !1122)
!1129 = !DILocation(line: 321, column: 19, scope: !1122)
!1130 = !DILocalVariable(name: "F", scope: !1122, file: !1, line: 322, type: !50)
!1131 = !DILocation(line: 322, column: 12, scope: !1122)
!1132 = !DILocalVariable(name: "FP", scope: !1122, file: !1, line: 323, type: !50)
!1133 = !DILocation(line: 323, column: 12, scope: !1122)
!1134 = !DILocation(line: 323, column: 18, scope: !1122)
!1135 = !DILocation(line: 323, column: 22, scope: !1122)
!1136 = !DILocation(line: 323, column: 30, scope: !1122)
!1137 = !DILocation(line: 323, column: 28, scope: !1122)
!1138 = !DILocalVariable(name: "B", scope: !1122, file: !1, line: 324, type: !50)
!1139 = !DILocation(line: 324, column: 12, scope: !1122)
!1140 = !DILocation(line: 324, column: 20, scope: !1122)
!1141 = !DILocation(line: 324, column: 19, scope: !1122)
!1142 = !DILocation(line: 324, column: 25, scope: !1122)
!1143 = !DILocation(line: 324, column: 23, scope: !1122)
!1144 = !DILocalVariable(name: "end", scope: !1122, file: !1, line: 325, type: !50)
!1145 = !DILocation(line: 325, column: 12, scope: !1122)
!1146 = !DILocation(line: 325, column: 18, scope: !1122)
!1147 = !DILocation(line: 325, column: 30, scope: !1122)
!1148 = !DILocation(line: 325, column: 29, scope: !1122)
!1149 = !DILocation(line: 325, column: 20, scope: !1122)
!1150 = !DILocalVariable(name: "D", scope: !1122, file: !1, line: 326, type: !50)
!1151 = !DILocation(line: 326, column: 12, scope: !1122)
!1152 = !DILocation(line: 326, column: 20, scope: !1122)
!1153 = !DILocation(line: 326, column: 19, scope: !1122)
!1154 = !DILocalVariable(name: "del", scope: !1122, file: !1, line: 327, type: !50)
!1155 = !DILocation(line: 327, column: 12, scope: !1122)
!1156 = !DILocation(line: 327, column: 19, scope: !1122)
!1157 = !DILocation(line: 327, column: 18, scope: !1122)
!1158 = !DILocation(line: 329, column: 11, scope: !1122)
!1159 = !DILocation(line: 329, column: 8, scope: !1122)
!1160 = !DILocation(line: 332, column: 5, scope: !1122)
!1161 = distinct !{!1161, !1160}
!1162 = !DILocation(line: 333, column: 12, scope: !1163)
!1163 = distinct !DILexicalBlock(scope: !1122, file: !1, line: 332, column: 8)
!1164 = !DILocation(line: 333, column: 9, scope: !1163)
!1165 = !DILocation(line: 334, column: 16, scope: !1163)
!1166 = !DILocation(line: 334, column: 18, scope: !1163)
!1167 = !DILocation(line: 334, column: 17, scope: !1163)
!1168 = !DILocation(line: 334, column: 14, scope: !1163)
!1169 = !DILocation(line: 334, column: 9, scope: !1163)
!1170 = !DILocation(line: 335, column: 15, scope: !1163)
!1171 = !DILocation(line: 335, column: 17, scope: !1163)
!1172 = !DILocation(line: 335, column: 16, scope: !1163)
!1173 = !DILocation(line: 335, column: 19, scope: !1163)
!1174 = !DILocation(line: 335, column: 11, scope: !1163)
!1175 = !DILocation(line: 336, column: 13, scope: !1163)
!1176 = !DILocation(line: 336, column: 10, scope: !1163)
!1177 = !DILocation(line: 337, column: 10, scope: !1178)
!1178 = distinct !DILexicalBlock(scope: !1163, file: !1, line: 337, column: 10)
!1179 = !DILocation(line: 337, column: 12, scope: !1178)
!1180 = !DILocation(line: 337, column: 10, scope: !1163)
!1181 = !DILocation(line: 337, column: 24, scope: !1182)
!1182 = !DILexicalBlockFile(scope: !1178, file: !1, discriminator: 1)
!1183 = !DILocation(line: 337, column: 23, scope: !1182)
!1184 = !DILocation(line: 337, column: 21, scope: !1182)
!1185 = !DILocation(line: 337, column: 19, scope: !1182)
!1186 = !DILocation(line: 338, column: 10, scope: !1187)
!1187 = distinct !DILexicalBlock(scope: !1163, file: !1, line: 338, column: 10)
!1188 = !DILocation(line: 338, column: 14, scope: !1187)
!1189 = !DILocation(line: 338, column: 12, scope: !1187)
!1190 = !DILocation(line: 338, column: 10, scope: !1163)
!1191 = !DILocation(line: 339, column: 9, scope: !1192)
!1192 = distinct !DILexicalBlock(scope: !1187, file: !1, line: 338, column: 19)
!1193 = distinct !{!1193, !1191}
!1194 = !DILocation(line: 339, column: 9, scope: !1195)
!1195 = !DILexicalBlockFile(scope: !1196, file: !1, discriminator: 1)
!1196 = distinct !DILexicalBlock(scope: !1192, file: !1, line: 339, column: 9)
!1197 = !DILocation(line: 340, column: 7, scope: !1192)
!1198 = !DILocation(line: 341, column: 5, scope: !1163)
!1199 = !DILocation(line: 342, column: 16, scope: !1122)
!1200 = !DILocation(line: 342, column: 11, scope: !1122)
!1201 = !DILocation(line: 342, column: 29, scope: !1122)
!1202 = !DILocation(line: 342, column: 24, scope: !1203)
!1203 = !DILexicalBlockFile(scope: !1122, file: !1, discriminator: 1)
!1204 = !DILocation(line: 342, column: 33, scope: !1122)
!1205 = !DILocation(line: 342, column: 21, scope: !1122)
!1206 = !DILocation(line: 341, column: 5, scope: !1207)
!1207 = !DILexicalBlockFile(scope: !1163, file: !1, discriminator: 1)
!1208 = !DILocation(line: 344, column: 11, scope: !1122)
!1209 = !DILocation(line: 344, column: 8, scope: !1122)
!1210 = !DILocation(line: 346, column: 8, scope: !1211)
!1211 = distinct !DILexicalBlock(scope: !1122, file: !1, line: 346, column: 8)
!1212 = !DILocation(line: 346, column: 13, scope: !1211)
!1213 = !DILocation(line: 346, column: 8, scope: !1122)
!1214 = !DILocalVariable(name: "XP2", scope: !1215, file: !1, line: 348, type: !50)
!1215 = distinct !DILexicalBlock(scope: !1211, file: !1, line: 346, column: 18)
!1216 = !DILocation(line: 348, column: 14, scope: !1215)
!1217 = !DILocation(line: 348, column: 20, scope: !1215)
!1218 = !DILocalVariable(name: "PL", scope: !1215, file: !1, line: 349, type: !50)
!1219 = !DILocation(line: 349, column: 14, scope: !1215)
!1220 = !DILocation(line: 349, column: 19, scope: !1215)
!1221 = !DILocation(line: 349, column: 26, scope: !1215)
!1222 = !DILocation(line: 349, column: 24, scope: !1215)
!1223 = !DILocalVariable(name: "L", scope: !1215, file: !1, line: 350, type: !48)
!1224 = !DILocation(line: 350, column: 11, scope: !1215)
!1225 = !DILocation(line: 350, column: 16, scope: !1215)
!1226 = !DILocalVariable(name: "LP", scope: !1215, file: !1, line: 351, type: !48)
!1227 = !DILocation(line: 351, column: 11, scope: !1215)
!1228 = !DILocation(line: 352, column: 20, scope: !1215)
!1229 = !DILocation(line: 352, column: 12, scope: !1215)
!1230 = !DILocation(line: 352, column: 7, scope: !1215)
!1231 = !DILocation(line: 352, column: 18, scope: !1215)
!1232 = !DILocation(line: 353, column: 14, scope: !1233)
!1233 = distinct !DILexicalBlock(scope: !1215, file: !1, line: 353, column: 7)
!1234 = !DILocation(line: 353, column: 11, scope: !1233)
!1235 = !DILocation(line: 353, column: 19, scope: !1236)
!1236 = !DILexicalBlockFile(scope: !1237, file: !1, discriminator: 1)
!1237 = distinct !DILexicalBlock(scope: !1233, file: !1, line: 353, column: 7)
!1238 = !DILocation(line: 353, column: 23, scope: !1236)
!1239 = !DILocation(line: 353, column: 21, scope: !1236)
!1240 = !DILocation(line: 353, column: 7, scope: !1236)
!1241 = !DILocation(line: 354, column: 21, scope: !1242)
!1242 = distinct !DILexicalBlock(scope: !1237, file: !1, line: 353, column: 35)
!1243 = !DILocation(line: 354, column: 31, scope: !1242)
!1244 = !DILocation(line: 354, column: 26, scope: !1242)
!1245 = !DILocation(line: 354, column: 24, scope: !1242)
!1246 = !DILocation(line: 354, column: 36, scope: !1242)
!1247 = !DILocation(line: 354, column: 34, scope: !1242)
!1248 = !DILocation(line: 354, column: 14, scope: !1242)
!1249 = !DILocation(line: 354, column: 15, scope: !1242)
!1250 = !DILocation(line: 354, column: 9, scope: !1242)
!1251 = !DILocation(line: 354, column: 19, scope: !1242)
!1252 = !DILocation(line: 355, column: 14, scope: !1242)
!1253 = !DILocation(line: 355, column: 22, scope: !1242)
!1254 = !DILocation(line: 355, column: 23, scope: !1242)
!1255 = !DILocation(line: 355, column: 17, scope: !1242)
!1256 = !DILocation(line: 355, column: 16, scope: !1242)
!1257 = !DILocation(line: 355, column: 34, scope: !1242)
!1258 = !DILocation(line: 355, column: 29, scope: !1242)
!1259 = !DILocation(line: 355, column: 27, scope: !1242)
!1260 = !DILocation(line: 355, column: 12, scope: !1242)
!1261 = !DILocation(line: 356, column: 15, scope: !1242)
!1262 = !DILocation(line: 356, column: 13, scope: !1242)
!1263 = !DILocation(line: 357, column: 15, scope: !1242)
!1264 = !DILocation(line: 357, column: 12, scope: !1242)
!1265 = !DILocation(line: 358, column: 9, scope: !1242)
!1266 = !DILocation(line: 359, column: 7, scope: !1242)
!1267 = !DILocation(line: 353, column: 31, scope: !1268)
!1268 = !DILexicalBlockFile(scope: !1237, file: !1, discriminator: 2)
!1269 = !DILocation(line: 353, column: 7, scope: !1268)
!1270 = distinct !{!1270, !1271}
!1271 = !DILocation(line: 353, column: 7, scope: !1215)
!1272 = !DILocation(line: 360, column: 11, scope: !1215)
!1273 = !DILocation(line: 360, column: 9, scope: !1215)
!1274 = !DILocation(line: 361, column: 5, scope: !1215)
!1275 = !DILocation(line: 364, column: 9, scope: !1122)
!1276 = !DILocation(line: 364, column: 23, scope: !1122)
!1277 = !DILocation(line: 364, column: 27, scope: !1122)
!1278 = !DILocation(line: 364, column: 17, scope: !1122)
!1279 = !DILocation(line: 364, column: 15, scope: !1122)
!1280 = !DILocation(line: 364, column: 7, scope: !1122)
!1281 = !DILocation(line: 365, column: 15, scope: !1122)
!1282 = !DILocation(line: 365, column: 17, scope: !1122)
!1283 = !DILocation(line: 365, column: 16, scope: !1122)
!1284 = !DILocation(line: 365, column: 5, scope: !1122)
!1285 = !DILocation(line: 365, column: 13, scope: !1122)
!1286 = !DILocation(line: 366, column: 8, scope: !1287)
!1287 = distinct !DILexicalBlock(scope: !1122, file: !1, line: 366, column: 8)
!1288 = !DILocation(line: 366, column: 13, scope: !1287)
!1289 = !DILocation(line: 366, column: 8, scope: !1122)
!1290 = !DILocalVariable(name: "L", scope: !1291, file: !1, line: 367, type: !48)
!1291 = distinct !DILexicalBlock(scope: !1287, file: !1, line: 366, column: 18)
!1292 = !DILocation(line: 367, column: 11, scope: !1291)
!1293 = !DILocation(line: 368, column: 12, scope: !1294)
!1294 = distinct !DILexicalBlock(scope: !1291, file: !1, line: 368, column: 7)
!1295 = !DILocation(line: 368, column: 11, scope: !1294)
!1296 = !DILocation(line: 368, column: 16, scope: !1297)
!1297 = !DILexicalBlockFile(scope: !1298, file: !1, discriminator: 1)
!1298 = distinct !DILexicalBlock(scope: !1294, file: !1, line: 368, column: 7)
!1299 = !DILocation(line: 368, column: 19, scope: !1297)
!1300 = !DILocation(line: 368, column: 17, scope: !1297)
!1301 = !DILocation(line: 368, column: 7, scope: !1297)
!1302 = !DILocation(line: 369, column: 20, scope: !1303)
!1303 = distinct !DILexicalBlock(scope: !1298, file: !1, line: 368, column: 30)
!1304 = !DILocation(line: 369, column: 14, scope: !1303)
!1305 = !DILocation(line: 369, column: 9, scope: !1303)
!1306 = !DILocation(line: 369, column: 17, scope: !1303)
!1307 = !DILocation(line: 370, column: 7, scope: !1303)
!1308 = !DILocation(line: 368, column: 26, scope: !1309)
!1309 = !DILexicalBlockFile(scope: !1298, file: !1, discriminator: 2)
!1310 = !DILocation(line: 368, column: 7, scope: !1309)
!1311 = distinct !{!1311, !1312}
!1312 = !DILocation(line: 368, column: 7, scope: !1291)
!1313 = !DILocation(line: 371, column: 5, scope: !1291)
!1314 = !DILocation(line: 373, column: 5, scope: !1122)
!1315 = !DILocation(line: 375, column: 1, scope: !999)
!1316 = distinct !DISubprogram(name: "gsl_sf_bessel_j0", scope: !1, file: !1, line: 382, type: !1317, isLocal: false, isDefinition: true, scopeLine: 383, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!1317 = !DISubroutineType(types: !1318)
!1318 = !{!50, !49}
!1319 = !DILocalVariable(name: "x", arg: 1, scope: !1316, file: !1, line: 382, type: !49)
!1320 = !DILocation(line: 382, column: 38, scope: !1316)
!1321 = !DILocalVariable(name: "result", scope: !1316, file: !1, line: 384, type: !52)
!1322 = !DILocation(line: 384, column: 3, scope: !1316)
!1323 = !DILocalVariable(name: "status", scope: !1316, file: !1, line: 384, type: !48)
!1324 = !DILocation(line: 384, column: 3, scope: !1325)
!1325 = distinct !DILexicalBlock(scope: !1316, file: !1, line: 384, column: 3)
!1326 = !DILocation(line: 384, column: 3, scope: !1327)
!1327 = !DILexicalBlockFile(scope: !1328, file: !1, discriminator: 1)
!1328 = distinct !DILexicalBlock(scope: !1325, file: !1, line: 384, column: 3)
!1329 = distinct !{!1329, !1330}
!1330 = !DILocation(line: 384, column: 3, scope: !1328)
!1331 = !DILocation(line: 384, column: 3, scope: !1332)
!1332 = !DILexicalBlockFile(scope: !1333, file: !1, discriminator: 2)
!1333 = distinct !DILexicalBlock(scope: !1328, file: !1, line: 384, column: 3)
!1334 = !DILocation(line: 384, column: 3, scope: !1335)
!1335 = !DILexicalBlockFile(scope: !1328, file: !1, discriminator: 3)
!1336 = !DILocation(line: 384, column: 3, scope: !1337)
!1337 = !DILexicalBlockFile(scope: !1316, file: !1, discriminator: 4)
!1338 = !DILocation(line: 385, column: 1, scope: !1316)
!1339 = distinct !DISubprogram(name: "gsl_sf_bessel_j1", scope: !1, file: !1, line: 387, type: !1317, isLocal: false, isDefinition: true, scopeLine: 388, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!1340 = !DILocalVariable(name: "x", arg: 1, scope: !1339, file: !1, line: 387, type: !49)
!1341 = !DILocation(line: 387, column: 38, scope: !1339)
!1342 = !DILocalVariable(name: "result", scope: !1339, file: !1, line: 389, type: !52)
!1343 = !DILocation(line: 389, column: 3, scope: !1339)
!1344 = !DILocalVariable(name: "status", scope: !1339, file: !1, line: 389, type: !48)
!1345 = !DILocation(line: 389, column: 3, scope: !1346)
!1346 = distinct !DILexicalBlock(scope: !1339, file: !1, line: 389, column: 3)
!1347 = !DILocation(line: 389, column: 3, scope: !1348)
!1348 = !DILexicalBlockFile(scope: !1349, file: !1, discriminator: 1)
!1349 = distinct !DILexicalBlock(scope: !1346, file: !1, line: 389, column: 3)
!1350 = distinct !{!1350, !1351}
!1351 = !DILocation(line: 389, column: 3, scope: !1349)
!1352 = !DILocation(line: 389, column: 3, scope: !1353)
!1353 = !DILexicalBlockFile(scope: !1354, file: !1, discriminator: 2)
!1354 = distinct !DILexicalBlock(scope: !1349, file: !1, line: 389, column: 3)
!1355 = !DILocation(line: 389, column: 3, scope: !1356)
!1356 = !DILexicalBlockFile(scope: !1349, file: !1, discriminator: 3)
!1357 = !DILocation(line: 389, column: 3, scope: !1358)
!1358 = !DILexicalBlockFile(scope: !1339, file: !1, discriminator: 4)
!1359 = !DILocation(line: 390, column: 1, scope: !1339)
!1360 = distinct !DISubprogram(name: "gsl_sf_bessel_j2", scope: !1, file: !1, line: 392, type: !1317, isLocal: false, isDefinition: true, scopeLine: 393, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!1361 = !DILocalVariable(name: "x", arg: 1, scope: !1360, file: !1, line: 392, type: !49)
!1362 = !DILocation(line: 392, column: 38, scope: !1360)
!1363 = !DILocalVariable(name: "result", scope: !1360, file: !1, line: 394, type: !52)
!1364 = !DILocation(line: 394, column: 3, scope: !1360)
!1365 = !DILocalVariable(name: "status", scope: !1360, file: !1, line: 394, type: !48)
!1366 = !DILocation(line: 394, column: 3, scope: !1367)
!1367 = distinct !DILexicalBlock(scope: !1360, file: !1, line: 394, column: 3)
!1368 = !DILocation(line: 394, column: 3, scope: !1369)
!1369 = !DILexicalBlockFile(scope: !1370, file: !1, discriminator: 1)
!1370 = distinct !DILexicalBlock(scope: !1367, file: !1, line: 394, column: 3)
!1371 = distinct !{!1371, !1372}
!1372 = !DILocation(line: 394, column: 3, scope: !1370)
!1373 = !DILocation(line: 394, column: 3, scope: !1374)
!1374 = !DILexicalBlockFile(scope: !1375, file: !1, discriminator: 2)
!1375 = distinct !DILexicalBlock(scope: !1370, file: !1, line: 394, column: 3)
!1376 = !DILocation(line: 394, column: 3, scope: !1377)
!1377 = !DILexicalBlockFile(scope: !1370, file: !1, discriminator: 3)
!1378 = !DILocation(line: 394, column: 3, scope: !1379)
!1379 = !DILexicalBlockFile(scope: !1360, file: !1, discriminator: 4)
!1380 = !DILocation(line: 395, column: 1, scope: !1360)
!1381 = distinct !DISubprogram(name: "gsl_sf_bessel_jl", scope: !1, file: !1, line: 397, type: !1382, isLocal: false, isDefinition: true, scopeLine: 398, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!1382 = !DISubroutineType(types: !1383)
!1383 = !{!50, !442, !49}
!1384 = !DILocalVariable(name: "l", arg: 1, scope: !1381, file: !1, line: 397, type: !442)
!1385 = !DILocation(line: 397, column: 35, scope: !1381)
!1386 = !DILocalVariable(name: "x", arg: 2, scope: !1381, file: !1, line: 397, type: !49)
!1387 = !DILocation(line: 397, column: 51, scope: !1381)
!1388 = !DILocalVariable(name: "result", scope: !1381, file: !1, line: 399, type: !52)
!1389 = !DILocation(line: 399, column: 3, scope: !1381)
!1390 = !DILocalVariable(name: "status", scope: !1381, file: !1, line: 399, type: !48)
!1391 = !DILocation(line: 399, column: 3, scope: !1392)
!1392 = distinct !DILexicalBlock(scope: !1381, file: !1, line: 399, column: 3)
!1393 = !DILocation(line: 399, column: 3, scope: !1394)
!1394 = !DILexicalBlockFile(scope: !1395, file: !1, discriminator: 1)
!1395 = distinct !DILexicalBlock(scope: !1392, file: !1, line: 399, column: 3)
!1396 = distinct !{!1396, !1397}
!1397 = !DILocation(line: 399, column: 3, scope: !1395)
!1398 = !DILocation(line: 399, column: 3, scope: !1399)
!1399 = !DILexicalBlockFile(scope: !1400, file: !1, discriminator: 2)
!1400 = distinct !DILexicalBlock(scope: !1395, file: !1, line: 399, column: 3)
!1401 = !DILocation(line: 399, column: 3, scope: !1402)
!1402 = !DILexicalBlockFile(scope: !1395, file: !1, discriminator: 3)
!1403 = !DILocation(line: 399, column: 3, scope: !1404)
!1404 = !DILexicalBlockFile(scope: !1381, file: !1, discriminator: 4)
!1405 = !DILocation(line: 400, column: 1, scope: !1381)
