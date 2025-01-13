; ModuleID = 'legendre_poly.ll'
source_filename = "legendre_poly.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsl_sf_result_struct = type { double, double }

@.str = private unnamed_addr constant [13 x i8] c"domain error\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"legendre_poly.c\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"overflow\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"gsl_sf_legendre_P1_e(x, &result)\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"gsl_sf_legendre_P2_e(x, &result)\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"gsl_sf_legendre_P3_e(x, &result)\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"gsl_sf_legendre_Pl_e(l, x, &result)\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"gsl_sf_legendre_Plm_e(l, m, x, &result)\00", align 1
@.str.8 = private unnamed_addr constant [43 x i8] c"gsl_sf_legendre_sphPlm_e(l, m, x, &result)\00", align 1
@0 = private unnamed_addr constant [21 x i8] c"gsl_sf_legendre_P1_e\00"
@1 = private unnamed_addr constant [17 x i8] c"legendre_poly.ll\00"
@2 = private unnamed_addr constant [21 x i8] c"gsl_sf_legendre_P2_e\00"
@3 = private unnamed_addr constant [17 x i8] c"legendre_poly.ll\00"
@4 = private unnamed_addr constant [21 x i8] c"gsl_sf_legendre_P3_e\00"
@5 = private unnamed_addr constant [17 x i8] c"legendre_poly.ll\00"
@6 = private unnamed_addr constant [21 x i8] c"gsl_sf_legendre_Pl_e\00"
@7 = private unnamed_addr constant [17 x i8] c"legendre_poly.ll\00"
@8 = private unnamed_addr constant [25 x i8] c"gsl_sf_legendre_Pl_array\00"
@9 = private unnamed_addr constant [17 x i8] c"legendre_poly.ll\00"
@10 = private unnamed_addr constant [31 x i8] c"gsl_sf_legendre_Pl_deriv_array\00"
@11 = private unnamed_addr constant [17 x i8] c"legendre_poly.ll\00"
@12 = private unnamed_addr constant [22 x i8] c"gsl_sf_legendre_Plm_e\00"
@13 = private unnamed_addr constant [17 x i8] c"legendre_poly.ll\00"
@14 = private unnamed_addr constant [13 x i8] c"legendre_Pmm\00"
@15 = private unnamed_addr constant [17 x i8] c"legendre_poly.ll\00"
@16 = private unnamed_addr constant [25 x i8] c"gsl_sf_legendre_sphPlm_e\00"
@17 = private unnamed_addr constant [17 x i8] c"legendre_poly.ll\00"
@18 = private unnamed_addr constant [19 x i8] c"gsl_sf_legendre_P1\00"
@19 = private unnamed_addr constant [17 x i8] c"legendre_poly.ll\00"
@20 = private unnamed_addr constant [19 x i8] c"gsl_sf_legendre_P2\00"
@21 = private unnamed_addr constant [17 x i8] c"legendre_poly.ll\00"
@22 = private unnamed_addr constant [19 x i8] c"gsl_sf_legendre_P3\00"
@23 = private unnamed_addr constant [17 x i8] c"legendre_poly.ll\00"
@24 = private unnamed_addr constant [19 x i8] c"gsl_sf_legendre_Pl\00"
@25 = private unnamed_addr constant [17 x i8] c"legendre_poly.ll\00"
@26 = private unnamed_addr constant [20 x i8] c"gsl_sf_legendre_Plm\00"
@27 = private unnamed_addr constant [17 x i8] c"legendre_poly.ll\00"
@28 = private unnamed_addr constant [23 x i8] c"gsl_sf_legendre_sphPlm\00"
@29 = private unnamed_addr constant [17 x i8] c"legendre_poly.ll\00"

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_legendre_P1_e(double, %struct.gsl_sf_result_struct*) #0 !dbg !47 {
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct*, align 8
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !59, metadata !60), !dbg !61
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %4, metadata !62, metadata !60), !dbg !63
  %5 = load double, double* %3, align 8, !dbg !64
  %6 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %4, align 8, !dbg !66
  %7 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !67
  store double %5, double* %7, align 8, !dbg !68
  %8 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %4, align 8, !dbg !69
  %9 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 1, !dbg !70
  store double 0.000000e+00, double* %9, align 8, !dbg !71
  ret i32 0, !dbg !72
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_legendre_P2_e(double, %struct.gsl_sf_result_struct*) #0 !dbg !73 {
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct*, align 8
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !74, metadata !60), !dbg !75
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %4, metadata !76, metadata !60), !dbg !77
  %5 = load double, double* %3, align 8, !dbg !78
  %6 = fmul double 3.000000e+00, %5, !dbg !80
  call void @fMulHandler(double 3.000000e+00, double %5, double %6, i64 0, i64 94892793661784, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @3, i32 0, i32 0), i64 94892793673408, i32 83, i32 27), !dbg !81
  %7 = load double, double* %3, align 8, !dbg !81
  %8 = fmul double %6, %7, !dbg !82
  call void @fMulHandler(double %6, double %7, double %8, i64 94892793673408, i64 94892793673768, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @3, i32 0, i32 0), i64 94892793674176, i32 83, i32 29), !dbg !83
  %9 = fsub double %8, 1.000000e+00, !dbg !83
  call void @fSubHandler(double %8, double 1.000000e+00, double %9, i64 94892793674176, i64 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @3, i32 0, i32 0), i64 94892793674832, i32 83, i32 32), !dbg !84
  %10 = fmul double 5.000000e-01, %9, !dbg !84
  call void @fMulHandler(double 5.000000e-01, double %9, double %10, i64 0, i64 94892793674832, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @3, i32 0, i32 0), i64 94892793675312, i32 83, i32 22), !dbg !85
  %11 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %4, align 8, !dbg !85
  %12 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 0, !dbg !86
  store double %10, double* %12, align 8, !dbg !87
  %13 = load double, double* %3, align 8, !dbg !88
  %14 = fmul double 3.000000e+00, %13, !dbg !89
  call void @fMulHandler(double 3.000000e+00, double %13, double %14, i64 0, i64 94892793676920, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @3, i32 0, i32 0), i64 94892793677360, i32 84, i32 46), !dbg !90
  %15 = load double, double* %3, align 8, !dbg !90
  %16 = fmul double %14, %15, !dbg !91
  call void @fMulHandler(double %14, double %15, double %16, i64 94892793677360, i64 94892793677720, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @3, i32 0, i32 0), i64 94892793678128, i32 84, i32 48), !dbg !92
  %17 = call double @fabs(double %16) #1, !dbg !92
  %18 = fadd double %17, 1.000000e+00, !dbg !93
  call void @fAddHandler(double %17, double 1.000000e+00, double %18, i64 94892793674592, i64 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @3, i32 0, i32 0), i64 94892793679616, i32 84, i32 52), !dbg !94
  %19 = fmul double 0x3CB0000000000000, %18, !dbg !94
  call void @fMulHandler(double 0x3CB0000000000000, double %18, double %19, i64 0, i64 94892793679616, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @3, i32 0, i32 0), i64 94892793680064, i32 84, i32 35), !dbg !95
  %20 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %4, align 8, !dbg !95
  %21 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %20, i32 0, i32 1, !dbg !96
  store double %19, double* %21, align 8, !dbg !97
  ret i32 0, !dbg !98
}

; Function Attrs: nounwind readnone
declare double @fabs(double) #2

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_legendre_P3_e(double, %struct.gsl_sf_result_struct*) #0 !dbg !99 {
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct*, align 8
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !100, metadata !60), !dbg !101
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %4, metadata !102, metadata !60), !dbg !103
  %5 = load double, double* %3, align 8, !dbg !104
  %6 = fmul double 5.000000e-01, %5, !dbg !106
  call void @fMulHandler(double 5.000000e-01, double %5, double %6, i64 0, i64 94892793679176, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @5, i32 0, i32 0), i64 94892793686272, i32 95, i32 22), !dbg !107
  %7 = load double, double* %3, align 8, !dbg !107
  %8 = fmul double 5.000000e+00, %7, !dbg !108
  call void @fMulHandler(double 5.000000e+00, double %7, double %8, i64 0, i64 94892793686632, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @5, i32 0, i32 0), i64 94892793687136, i32 95, i32 29), !dbg !109
  %9 = load double, double* %3, align 8, !dbg !109
  %10 = fmul double %8, %9, !dbg !110
  call void @fMulHandler(double %8, double %9, double %10, i64 94892793687136, i64 94892793687640, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @5, i32 0, i32 0), i64 94892793688048, i32 95, i32 31), !dbg !111
  %11 = fsub double %10, 3.000000e+00, !dbg !111
  call void @fSubHandler(double %10, double 3.000000e+00, double %11, i64 94892793688048, i64 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @5, i32 0, i32 0), i64 94892793688496, i32 95, i32 34), !dbg !112
  %12 = fmul double %6, %11, !dbg !112
  call void @fMulHandler(double %6, double %11, double %12, i64 94892793686272, i64 94892793688496, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @5, i32 0, i32 0), i64 94892793688880, i32 95, i32 24), !dbg !113
  %13 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %4, align 8, !dbg !113
  %14 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %13, i32 0, i32 0, !dbg !114
  store double %12, double* %14, align 8, !dbg !115
  %15 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %4, align 8, !dbg !116
  %16 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %15, i32 0, i32 0, !dbg !117
  %17 = load double, double* %16, align 8, !dbg !117
  %18 = call double @fabs(double %17) #1, !dbg !118
  %19 = load double, double* %3, align 8, !dbg !119
  %20 = call double @fabs(double %19) #1, !dbg !120
  %21 = fmul double 5.000000e-01, %20, !dbg !122
  call void @fMulHandler(double 5.000000e-01, double %20, double %21, i64 0, i64 94892793693792, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @5, i32 0, i32 0), i64 94892793694304, i32 96, i32 62), !dbg !123
  %22 = load double, double* %3, align 8, !dbg !123
  %23 = fmul double 5.000000e+00, %22, !dbg !124
  call void @fMulHandler(double 5.000000e+00, double %22, double %23, i64 0, i64 94892793694664, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @5, i32 0, i32 0), i64 94892793695104, i32 96, i32 83), !dbg !125
  %24 = load double, double* %3, align 8, !dbg !125
  %25 = fmul double %23, %24, !dbg !126
  call void @fMulHandler(double %23, double %24, double %25, i64 94892793695104, i64 94892793695464, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @5, i32 0, i32 0), i64 94892793695872, i32 96, i32 85), !dbg !127
  %26 = call double @fabs(double %25) #1, !dbg !127
  %27 = fadd double %26, 3.000000e+00, !dbg !129
  call void @fAddHandler(double %26, double 3.000000e+00, double %27, i64 94892793696352, i64 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @5, i32 0, i32 0), i64 94892793696864, i32 96, i32 89), !dbg !130
  %28 = fmul double %21, %27, !dbg !130
  call void @fMulHandler(double %21, double %27, double %28, i64 94892793694304, i64 94892793696864, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @5, i32 0, i32 0), i64 94892793697248, i32 96, i32 72), !dbg !131
  %29 = fadd double %18, %28, !dbg !131
  call void @fAddHandler(double %18, double %28, double %29, i64 94892793687520, i64 94892793697248, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @5, i32 0, i32 0), i64 94892793697664, i32 96, i32 56), !dbg !132
  %30 = fmul double 0x3CB0000000000000, %29, !dbg !132
  call void @fMulHandler(double 0x3CB0000000000000, double %29, double %30, i64 0, i64 94892793697664, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @5, i32 0, i32 0), i64 94892793698080, i32 96, i32 35), !dbg !133
  %31 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %4, align 8, !dbg !133
  %32 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %31, i32 0, i32 1, !dbg !134
  store double %30, double* %32, align 8, !dbg !135
  ret i32 0, !dbg !136
}

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_legendre_Pl_e(i32, double, %struct.gsl_sf_result_struct*) #0 !dbg !137 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca %struct.gsl_sf_result_struct*, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca i32, align 4
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca %struct.gsl_sf_result_struct, align 8
  %18 = alloca %struct.gsl_sf_result_struct, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca double, align 8
  %22 = alloca double, align 8
  %23 = alloca double, align 8
  %24 = alloca double, align 8
  %25 = alloca double, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !142, metadata !60), !dbg !143
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !144, metadata !60), !dbg !145
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %7, metadata !146, metadata !60), !dbg !147
  %26 = load i32, i32* %5, align 4, !dbg !148
  %27 = icmp slt i32 %26, 0, !dbg !150
  %28 = sext i32 %26 to i64, !dbg !151
  %29 = call i1 @iCmpInstHandler(i64 %28, i64 0, i1 %27, i32 40, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @7, i32 0, i32 0), i64 94892793708096, i32 107, i32 8), !dbg !151
  br i1 %29, label %38, label %30, !dbg !151

; <label>:30:                                     ; preds = %3
  %31 = load double, double* %6, align 8, !dbg !152
  %32 = fcmp olt double %31, -1.000000e+00, !dbg !154
  %33 = call i1 @fCmpInstHandler(double %31, double -1.000000e+00, i1 %32, i32 4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @7, i32 0, i32 0), i64 94892793709648, i32 107, i32 17), !dbg !155
  br i1 %33, label %38, label %34, !dbg !155

; <label>:34:                                     ; preds = %30
  %35 = load double, double* %6, align 8, !dbg !156
  %36 = fcmp ogt double %35, 1.000000e+00, !dbg !158
  %37 = call i1 @fCmpInstHandler(double %35, double 1.000000e+00, i1 %36, i32 2, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @7, i32 0, i32 0), i64 94892793710960, i32 107, i32 29), !dbg !159
  br i1 %37, label %38, label %47, !dbg !159

; <label>:38:                                     ; preds = %34, %30, %3
  br label %39, !dbg !160, !llvm.loop !162

; <label>:39:                                     ; preds = %38
  %40 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !163
  %41 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %40, i32 0, i32 0, !dbg !163
  store double 0x7FF8000000000000, double* %41, align 8, !dbg !163
  %42 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !163
  %43 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %42, i32 0, i32 1, !dbg !163
  store double 0x7FF8000000000000, double* %43, align 8, !dbg !163
  br label %44, !dbg !163, !llvm.loop !166

; <label>:44:                                     ; preds = %39
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i32 108, i32 1), !dbg !168
  store i32 1, i32* %4, align 4, !dbg !168
  br label %299, !dbg !168
                                                  ; No predecessors!
  br label %46, !dbg !171

; <label>:46:                                     ; preds = %45
  br label %299, !dbg !173

; <label>:47:                                     ; preds = %34
  %48 = load i32, i32* %5, align 4, !dbg !174
  %49 = icmp eq i32 %48, 0, !dbg !176
  %50 = sext i32 %48 to i64, !dbg !177
  %51 = call i1 @iCmpInstHandler(i64 %50, i64 0, i1 %49, i32 32, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @7, i32 0, i32 0), i64 94892793724720, i32 110, i32 13), !dbg !177
  br i1 %51, label %52, label %57, !dbg !177

; <label>:52:                                     ; preds = %47
  %53 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !178
  %54 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %53, i32 0, i32 0, !dbg !180
  store double 1.000000e+00, double* %54, align 8, !dbg !181
  %55 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !182
  %56 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %55, i32 0, i32 1, !dbg !183
  store double 0.000000e+00, double* %56, align 8, !dbg !184
  store i32 0, i32* %4, align 4, !dbg !185
  br label %299, !dbg !185

; <label>:57:                                     ; preds = %47
  %58 = load i32, i32* %5, align 4, !dbg !186
  %59 = icmp eq i32 %58, 1, !dbg !188
  %60 = sext i32 %58 to i64, !dbg !189
  %61 = call i1 @iCmpInstHandler(i64 %60, i64 1, i1 %59, i32 32, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @7, i32 0, i32 0), i64 94892793730672, i32 115, i32 13), !dbg !189
  br i1 %61, label %62, label %68, !dbg !189

; <label>:62:                                     ; preds = %57
  %63 = load double, double* %6, align 8, !dbg !190
  %64 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !192
  %65 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %64, i32 0, i32 0, !dbg !193
  store double %63, double* %65, align 8, !dbg !194
  %66 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !195
  %67 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %66, i32 0, i32 1, !dbg !196
  store double 0.000000e+00, double* %67, align 8, !dbg !197
  store i32 0, i32* %4, align 4, !dbg !198
  br label %299, !dbg !198

; <label>:68:                                     ; preds = %57
  %69 = load i32, i32* %5, align 4, !dbg !199
  %70 = icmp eq i32 %69, 2, !dbg !201
  %71 = sext i32 %69 to i64, !dbg !202
  %72 = call i1 @iCmpInstHandler(i64 %71, i64 2, i1 %70, i32 32, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @7, i32 0, i32 0), i64 94892793737072, i32 120, i32 13), !dbg !202
  br i1 %72, label %73, label %91, !dbg !202

; <label>:73:                                     ; preds = %68
  %74 = load double, double* %6, align 8, !dbg !203
  %75 = fmul double 3.000000e+00, %74, !dbg !205
  call void @fMulHandler(double 3.000000e+00, double %74, double %75, i64 0, i64 94892793738184, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @7, i32 0, i32 0), i64 94892793739600, i32 121, i32 29), !dbg !206
  %76 = load double, double* %6, align 8, !dbg !206
  %77 = fmul double %75, %76, !dbg !207
  call void @fMulHandler(double %75, double %76, double %77, i64 94892793739600, i64 94892793739960, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @7, i32 0, i32 0), i64 94892793740368, i32 121, i32 31), !dbg !208
  %78 = fsub double %77, 1.000000e+00, !dbg !208
  call void @fSubHandler(double %77, double 1.000000e+00, double %78, i64 94892793740368, i64 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @7, i32 0, i32 0), i64 94892793740816, i32 121, i32 34), !dbg !209
  %79 = fmul double 5.000000e-01, %78, !dbg !209
  call void @fMulHandler(double 5.000000e-01, double %78, double %79, i64 0, i64 94892793740816, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @7, i32 0, i32 0), i64 94892793741232, i32 121, i32 23), !dbg !210
  %80 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !210
  %81 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %80, i32 0, i32 0, !dbg !211
  store double %79, double* %81, align 8, !dbg !212
  %82 = load double, double* %6, align 8, !dbg !213
  %83 = fmul double 3.000000e+00, %82, !dbg !214
  call void @fMulHandler(double 3.000000e+00, double %82, double %83, i64 0, i64 94892793742840, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @7, i32 0, i32 0), i64 94892793743280, i32 122, i32 46), !dbg !215
  %84 = load double, double* %6, align 8, !dbg !215
  %85 = fmul double %83, %84, !dbg !216
  call void @fMulHandler(double %83, double %84, double %85, i64 94892793743280, i64 94892793743640, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @7, i32 0, i32 0), i64 94892793744048, i32 122, i32 48), !dbg !217
  %86 = call double @fabs(double %85) #1, !dbg !217
  %87 = fadd double %86, 1.000000e+00, !dbg !218
  call void @fAddHandler(double %86, double 1.000000e+00, double %87, i64 94892793744528, i64 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @7, i32 0, i32 0), i64 94892793745040, i32 122, i32 52), !dbg !219
  %88 = fmul double 0x3CB0000000000000, %87, !dbg !219
  call void @fMulHandler(double 0x3CB0000000000000, double %87, double %88, i64 0, i64 94892793745040, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @7, i32 0, i32 0), i64 94892793745424, i32 122, i32 35), !dbg !220
  %89 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !220
  %90 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %89, i32 0, i32 1, !dbg !221
  store double %88, double* %90, align 8, !dbg !222
  store i32 0, i32* %4, align 4, !dbg !223
  br label %299, !dbg !223

; <label>:91:                                     ; preds = %68
  %92 = load double, double* %6, align 8, !dbg !224
  %93 = fcmp oeq double %92, 1.000000e+00, !dbg !226
  %94 = call i1 @fCmpInstHandler(double %92, double 1.000000e+00, i1 %93, i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @7, i32 0, i32 0), i64 94892793749504, i32 128, i32 13), !dbg !227
  br i1 %94, label %95, label %100, !dbg !227

; <label>:95:                                     ; preds = %91
  %96 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !228
  %97 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %96, i32 0, i32 0, !dbg !230
  store double 1.000000e+00, double* %97, align 8, !dbg !231
  %98 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !232
  %99 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %98, i32 0, i32 1, !dbg !233
  store double 0.000000e+00, double* %99, align 8, !dbg !234
  store i32 0, i32* %4, align 4, !dbg !235
  br label %299, !dbg !235

; <label>:100:                                    ; preds = %91
  %101 = load double, double* %6, align 8, !dbg !236
  %102 = fcmp oeq double %101, -1.000000e+00, !dbg !238
  %103 = call i1 @fCmpInstHandler(double %101, double -1.000000e+00, i1 %102, i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @7, i32 0, i32 0), i64 94892793755456, i32 133, i32 13), !dbg !239
  br i1 %103, label %104, label %115, !dbg !239

; <label>:104:                                    ; preds = %100
  %105 = load i32, i32* %5, align 4, !dbg !240
  %106 = and i32 %105, 1, !dbg !240
  %107 = icmp ne i32 %106, 0, !dbg !240
  %108 = sext i32 %106 to i64, !dbg !240
  %109 = call i1 @iCmpInstHandler(i64 %108, i64 0, i1 %107, i32 33, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @7, i32 0, i32 0), i64 94892793758560, i32 134, i32 21), !dbg !240
  %110 = select i1 %109, double -1.000000e+00, double 1.000000e+00, !dbg !240
  %111 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !242
  %112 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %111, i32 0, i32 0, !dbg !243
  store double %110, double* %112, align 8, !dbg !244
  %113 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !245
  %114 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %113, i32 0, i32 1, !dbg !246
  store double 0.000000e+00, double* %114, align 8, !dbg !247
  store i32 0, i32* %4, align 4, !dbg !248
  br label %299, !dbg !248

; <label>:115:                                    ; preds = %100
  %116 = load i32, i32* %5, align 4, !dbg !249
  %117 = icmp slt i32 %116, 100000, !dbg !251
  %118 = sext i32 %116 to i64, !dbg !252
  %119 = call i1 @iCmpInstHandler(i64 %118, i64 100000, i1 %117, i32 40, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @7, i32 0, i32 0), i64 94892793763776, i32 138, i32 13), !dbg !252
  br i1 %119, label %120, label %192, !dbg !252

; <label>:120:                                    ; preds = %115
  call void @llvm.dbg.declare(metadata double* %8, metadata !253, metadata !60), !dbg !255
  store double 1.000000e+00, double* %8, align 8, !dbg !255
  call void @llvm.dbg.declare(metadata double* %9, metadata !256, metadata !60), !dbg !257
  %121 = load double, double* %6, align 8, !dbg !258
  store double %121, double* %9, align 8, !dbg !257
  call void @llvm.dbg.declare(metadata double* %10, metadata !259, metadata !60), !dbg !260
  %122 = load double, double* %9, align 8, !dbg !261
  store double %122, double* %10, align 8, !dbg !260
  call void @llvm.dbg.declare(metadata double* %11, metadata !262, metadata !60), !dbg !263
  store double 0x3CB0000000000000, double* %11, align 8, !dbg !263
  call void @llvm.dbg.declare(metadata double* %12, metadata !264, metadata !60), !dbg !265
  %123 = load double, double* %6, align 8, !dbg !266
  %124 = call double @fabs(double %123) #1, !dbg !267
  %125 = fmul double %124, 0x3CB0000000000000, !dbg !268
  call void @fMulHandler(double %124, double 0x3CB0000000000000, double %125, i64 94892793778320, i64 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @7, i32 0, i32 0), i64 94892793778800, i32 146, i32 29), !dbg !265
  store double %125, double* %12, align 8, !dbg !265
  call void @llvm.dbg.declare(metadata double* %13, metadata !269, metadata !60), !dbg !270
  %126 = load double, double* %12, align 8, !dbg !271
  store double %126, double* %13, align 8, !dbg !270
  call void @llvm.dbg.declare(metadata i32* %14, metadata !272, metadata !60), !dbg !273
  store i32 2, i32* %14, align 4, !dbg !274
  br label %127, !dbg !276

; <label>:127:                                    ; preds = %175, %120
  %128 = load i32, i32* %14, align 4, !dbg !277
  %129 = load i32, i32* %5, align 4, !dbg !280
  %130 = icmp sle i32 %128, %129, !dbg !281
  %131 = sext i32 %128 to i64, !dbg !282
  %132 = sext i32 %129 to i64, !dbg !282
  %133 = call i1 @iCmpInstHandler(i64 %131, i64 %132, i1 %130, i32 41, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @7, i32 0, i32 0), i64 94892793786784, i32 151, i32 20), !dbg !282
  br i1 %133, label %134, label %178, !dbg !282

; <label>:134:                                    ; preds = %127
  %135 = load double, double* %6, align 8, !dbg !283
  %136 = load i32, i32* %14, align 4, !dbg !285
  %137 = mul nsw i32 2, %136, !dbg !286
  %138 = sub nsw i32 %137, 1, !dbg !287
  %139 = sitofp i32 %138 to double, !dbg !288
  %140 = fmul double %135, %139, !dbg !289
  call void @fMulHandler(double %135, double %139, double %140, i64 94892793787896, i64 94892793789432, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @7, i32 0, i32 0), i64 94892793789840, i32 152, i32 17), !dbg !290
  %141 = load double, double* %9, align 8, !dbg !290
  %142 = fmul double %140, %141, !dbg !291
  call void @fMulHandler(double %140, double %141, double %142, i64 94892793789840, i64 94892793790232, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @7, i32 0, i32 0), i64 94892793790640, i32 152, i32 27), !dbg !292
  %143 = load i32, i32* %14, align 4, !dbg !292
  %144 = sub nsw i32 %143, 1, !dbg !293
  %145 = sitofp i32 %144 to double, !dbg !294
  %146 = load double, double* %8, align 8, !dbg !295
  %147 = fmul double %145, %146, !dbg !296
  call void @fMulHandler(double %145, double %146, double %147, i64 94892793791832, i64 94892793792216, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @7, i32 0, i32 0), i64 94892793792624, i32 152, i32 45), !dbg !297
  %148 = fsub double %142, %147, !dbg !297
  call void @fSubHandler(double %142, double %147, double %148, i64 94892793790640, i64 94892793792624, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @7, i32 0, i32 0), i64 94892793795104, i32 152, i32 36), !dbg !298
  %149 = load i32, i32* %14, align 4, !dbg !298
  %150 = sitofp i32 %149 to double, !dbg !298
  %151 = fdiv double %148, %150, !dbg !299
  call void @fDivHandler(double %148, double %150, double %151, i64 94892793795104, i64 94892793795880, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @7, i32 0, i32 0), i64 94892793797552, i32 152, i32 55), !dbg !300
  store double %151, double* %10, align 8, !dbg !300
  %152 = load double, double* %9, align 8, !dbg !301
  store double %152, double* %8, align 8, !dbg !302
  %153 = load double, double* %10, align 8, !dbg !303
  store double %153, double* %9, align 8, !dbg !304
  %154 = load double, double* %6, align 8, !dbg !305
  %155 = call double @fabs(double %154) #1, !dbg !306
  %156 = load i32, i32* %14, align 4, !dbg !307
  %157 = mul nsw i32 2, %156, !dbg !308
  %158 = sitofp i32 %157 to double, !dbg !309
  %159 = fsub double %158, 1.000000e+00, !dbg !310
  call void @fSubHandler(double %158, double 1.000000e+00, double %159, i64 94892793801688, i64 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @7, i32 0, i32 0), i64 94892793802128, i32 156, i32 34), !dbg !311
  %160 = fmul double %155, %159, !dbg !311
  call void @fMulHandler(double %155, double %159, double %160, i64 94892793800432, i64 94892793802128, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @7, i32 0, i32 0), i64 94892793802512, i32 156, i32 27), !dbg !312
  %161 = load double, double* %12, align 8, !dbg !312
  %162 = fmul double %160, %161, !dbg !313
  call void @fMulHandler(double %160, double %161, double %162, i64 94892793802512, i64 94892793802904, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @7, i32 0, i32 0), i64 94892793803312, i32 156, i32 40), !dbg !314
  %163 = load i32, i32* %14, align 4, !dbg !314
  %164 = sitofp i32 %163 to double, !dbg !314
  %165 = fsub double %164, 1.000000e+00, !dbg !315
  call void @fSubHandler(double %164, double 1.000000e+00, double %165, i64 94892793804088, i64 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @7, i32 0, i32 0), i64 94892793805792, i32 156, i32 56), !dbg !316
  %166 = load double, double* %11, align 8, !dbg !316
  %167 = fmul double %165, %166, !dbg !317
  call void @fMulHandler(double %165, double %166, double %167, i64 94892793805792, i64 94892793806152, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @7, i32 0, i32 0), i64 94892793806560, i32 156, i32 61), !dbg !318
  %168 = fadd double %162, %167, !dbg !318
  call void @fAddHandler(double %162, double %167, double %168, i64 94892793803312, i64 94892793806560, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @7, i32 0, i32 0), i64 94892793806976, i32 156, i32 50), !dbg !319
  %169 = fmul double 5.000000e-01, %168, !dbg !319
  call void @fMulHandler(double 5.000000e-01, double %168, double %169, i64 0, i64 94892793806976, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @7, i32 0, i32 0), i64 94892793807424, i32 156, i32 18), !dbg !320
  %170 = load i32, i32* %14, align 4, !dbg !320
  %171 = sitofp i32 %170 to double, !dbg !320
  %172 = fdiv double %169, %171, !dbg !321
  call void @fDivHandler(double %169, double %171, double %172, i64 94892793807424, i64 94892793808168, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @7, i32 0, i32 0), i64 94892793809840, i32 156, i32 70), !dbg !322
  store double %172, double* %13, align 8, !dbg !322
  %173 = load double, double* %12, align 8, !dbg !323
  store double %173, double* %11, align 8, !dbg !324
  %174 = load double, double* %13, align 8, !dbg !325
  store double %174, double* %12, align 8, !dbg !326
  br label %175, !dbg !327

; <label>:175:                                    ; preds = %134
  %176 = load i32, i32* %14, align 4, !dbg !328
  %177 = add nsw i32 %176, 1, !dbg !328
  store i32 %177, i32* %14, align 4, !dbg !328
  br label %127, !dbg !330, !llvm.loop !331

; <label>:178:                                    ; preds = %127
  %179 = load double, double* %10, align 8, !dbg !333
  %180 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !334
  %181 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %180, i32 0, i32 0, !dbg !335
  store double %179, double* %181, align 8, !dbg !336
  %182 = load double, double* %13, align 8, !dbg !337
  %183 = load i32, i32* %5, align 4, !dbg !338
  %184 = sitofp i32 %183 to double, !dbg !338
  %185 = load double, double* %10, align 8, !dbg !339
  %186 = call double @fabs(double %185) #1, !dbg !340
  %187 = fmul double %184, %186, !dbg !341
  call void @fMulHandler(double %184, double %186, double %187, i64 94892793817912, i64 94892793820032, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @7, i32 0, i32 0), i64 94892793820512, i32 162, i32 28), !dbg !342
  %188 = fmul double %187, 0x3CB0000000000000, !dbg !342
  call void @fMulHandler(double %187, double 0x3CB0000000000000, double %188, i64 94892793820512, i64 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @7, i32 0, i32 0), i64 94892793820928, i32 162, i32 40), !dbg !343
  %189 = fadd double %182, %188, !dbg !343
  call void @fAddHandler(double %182, double %188, double %189, i64 94892793817144, i64 94892793820928, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @7, i32 0, i32 0), i64 94892793821344, i32 162, i32 25), !dbg !344
  %190 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !344
  %191 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %190, i32 0, i32 1, !dbg !345
  store double %189, double* %191, align 8, !dbg !346
  store i32 0, i32* %4, align 4, !dbg !347
  br label %299, !dbg !347

; <label>:192:                                    ; preds = %115
  call void @llvm.dbg.declare(metadata double* %15, metadata !348, metadata !60), !dbg !350
  %193 = load i32, i32* %5, align 4, !dbg !351
  %194 = sitofp i32 %193 to double, !dbg !351
  %195 = fadd double %194, 5.000000e-01, !dbg !352
  call void @fAddHandler(double %194, double 5.000000e-01, double %195, i64 94892793826456, i64 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @7, i32 0, i32 0), i64 94892793828160, i32 169, i32 19), !dbg !350
  store double %195, double* %15, align 8, !dbg !350
  call void @llvm.dbg.declare(metadata double* %16, metadata !353, metadata !60), !dbg !354
  %196 = load double, double* %6, align 8, !dbg !355
  %197 = call double @acos(double %196) #5, !dbg !356
  call void @callOneArgHandler(i32 5, double %196, double %197, i64 94892793831320, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @7, i32 0, i32 0), i64 94892793832032, i32 170, i32 17), !dbg !354
  store double %197, double* %16, align 8, !dbg !354
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %17, metadata !357, metadata !60), !dbg !358
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %18, metadata !359, metadata !60), !dbg !360
  call void @llvm.dbg.declare(metadata i32* %19, metadata !361, metadata !60), !dbg !362
  %198 = load double, double* %15, align 8, !dbg !363
  %199 = load double, double* %16, align 8, !dbg !364
  %200 = fmul double %198, %199, !dbg !365
  call void @fMulHandler(double %198, double %199, double %200, i64 94892793837544, i64 94892793837896, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @7, i32 0, i32 0), i64 94892793838304, i32 173, i32 40), !dbg !366
  %201 = call i32 @gsl_sf_bessel_J0_e(double %200, %struct.gsl_sf_result_struct* %17), !dbg !366
  store i32 %201, i32* %19, align 4, !dbg !362
  call void @llvm.dbg.declare(metadata i32* %20, metadata !367, metadata !60), !dbg !368
  %202 = load double, double* %15, align 8, !dbg !369
  %203 = load double, double* %16, align 8, !dbg !370
  %204 = fmul double %202, %203, !dbg !371
  call void @fMulHandler(double %202, double %203, double %204, i64 94892793842424, i64 94892793842776, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @7, i32 0, i32 0), i64 94892793843184, i32 174, i32 44), !dbg !372
  %205 = call i32 @gsl_sf_bessel_Jn_e(i32 -1, double %204, %struct.gsl_sf_result_struct* %18), !dbg !372
  store i32 %205, i32* %20, align 4, !dbg !368
  call void @llvm.dbg.declare(metadata double* %21, metadata !373, metadata !60), !dbg !374
  call void @llvm.dbg.declare(metadata double* %22, metadata !375, metadata !60), !dbg !376
  call void @llvm.dbg.declare(metadata double* %23, metadata !377, metadata !60), !dbg !378
  %206 = load double, double* %16, align 8, !dbg !379
  %207 = fcmp olt double %206, 0x3F20000000000000, !dbg !381
  %208 = call i1 @fCmpInstHandler(double %206, double 0x3F20000000000000, i1 %207, i32 4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @7, i32 0, i32 0), i64 94892793852080, i32 182, i32 11), !dbg !382
  br i1 %208, label %209, label %221, !dbg !382

; <label>:209:                                    ; preds = %192
  %210 = load double, double* %16, align 8, !dbg !383
  %211 = load double, double* %16, align 8, !dbg !385
  %212 = fmul double %210, %211, !dbg !386
  call void @fMulHandler(double %210, double %211, double %212, i64 94892793853192, i64 94892793853512, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @7, i32 0, i32 0), i64 94892793853920, i32 183, i32 22), !dbg !387
  %213 = fdiv double %212, 1.500000e+01, !dbg !387
  call void @fDivHandler(double %212, double 1.500000e+01, double %213, i64 94892793853920, i64 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @7, i32 0, i32 0), i64 94892793854432, i32 183, i32 25), !dbg !388
  %214 = fadd double 1.000000e+00, %213, !dbg !388
  call void @fAddHandler(double 1.000000e+00, double %213, double %214, i64 0, i64 94892793854432, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @7, i32 0, i32 0), i64 94892793854848, i32 183, i32 18), !dbg !389
  %215 = fdiv double %214, 2.400000e+01, !dbg !389
  call void @fDivHandler(double %214, double 2.400000e+01, double %215, i64 94892793854848, i64 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @7, i32 0, i32 0), i64 94892793855328, i32 183, i32 31), !dbg !390
  store double %215, double* %22, align 8, !dbg !390
  %216 = load double, double* %16, align 8, !dbg !391
  %217 = load double, double* %16, align 8, !dbg !392
  %218 = fmul double %216, %217, !dbg !393
  call void @fMulHandler(double %216, double %217, double %218, i64 94892793856104, i64 94892793856488, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @7, i32 0, i32 0), i64 94892793856896, i32 184, i32 21), !dbg !394
  %219 = fdiv double %218, 1.200000e+01, !dbg !394
  call void @fDivHandler(double %218, double 1.200000e+01, double %219, i64 94892793856896, i64 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @7, i32 0, i32 0), i64 94892793857408, i32 184, i32 24), !dbg !395
  %220 = fadd double 1.000000e+00, %219, !dbg !395
  call void @fAddHandler(double 1.000000e+00, double %219, double %220, i64 0, i64 94892793857408, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @7, i32 0, i32 0), i64 94892793857824, i32 184, i32 17), !dbg !396
  store double %220, double* %21, align 8, !dbg !396
  br label %243, !dbg !397

; <label>:221:                                    ; preds = %192
  call void @llvm.dbg.declare(metadata double* %24, metadata !398, metadata !60), !dbg !400
  %222 = load double, double* %6, align 8, !dbg !401
  %223 = load double, double* %6, align 8, !dbg !402
  %224 = fmul double %222, %223, !dbg !403
  call void @fMulHandler(double %222, double %223, double %224, i64 94892793860184, i64 94892793860536, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @7, i32 0, i32 0), i64 94892793860944, i32 187, i32 35), !dbg !404
  %225 = fsub double 1.000000e+00, %224, !dbg !404
  call void @fSubHandler(double 1.000000e+00, double %224, double %225, i64 0, i64 94892793860944, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @7, i32 0, i32 0), i64 94892793861392, i32 187, i32 32), !dbg !405
  %226 = call double @sqrt(double %225) #5, !dbg !405
  call void @callOneArgHandler(i32 14, double %225, double %226, i64 94892793861392, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @7, i32 0, i32 0), i64 94892793862112, i32 187, i32 23), !dbg !400
  store double %226, double* %24, align 8, !dbg !400
  call void @llvm.dbg.declare(metadata double* %25, metadata !406, metadata !60), !dbg !407
  %227 = load double, double* %6, align 8, !dbg !408
  %228 = load double, double* %24, align 8, !dbg !409
  %229 = fdiv double %227, %228, !dbg !410
  call void @fDivHandler(double %227, double %228, double %229, i64 94892793865448, i64 94892793865800, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @7, i32 0, i32 0), i64 94892793866208, i32 188, i32 25), !dbg !407
  store double %229, double* %25, align 8, !dbg !407
  %230 = load double, double* %16, align 8, !dbg !411
  %231 = load double, double* %25, align 8, !dbg !412
  %232 = fmul double %230, %231, !dbg !413
  call void @fMulHandler(double %230, double %231, double %232, i64 94892793868280, i64 94892793868664, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @7, i32 0, i32 0), i64 94892793869072, i32 189, i32 33), !dbg !414
  %233 = fsub double 1.000000e+00, %232, !dbg !414
  call void @fSubHandler(double 1.000000e+00, double %232, double %233, i64 0, i64 94892793869072, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @7, i32 0, i32 0), i64 94892793869520, i32 189, i32 28), !dbg !415
  %234 = fmul double 1.250000e-01, %233, !dbg !415
  call void @fMulHandler(double 1.250000e-01, double %233, double %234, i64 0, i64 94892793869520, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @7, i32 0, i32 0), i64 94892793870000, i32 189, i32 21), !dbg !416
  %235 = load double, double* %16, align 8, !dbg !416
  %236 = load double, double* %16, align 8, !dbg !417
  %237 = fmul double %235, %236, !dbg !418
  call void @fMulHandler(double %235, double %236, double %237, i64 94892793870360, i64 94892793870744, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @7, i32 0, i32 0), i64 94892793871152, i32 189, i32 48), !dbg !419
  %238 = fdiv double %234, %237, !dbg !419
  call void @fDivHandler(double %234, double %237, double %238, i64 94892793870000, i64 94892793871152, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @7, i32 0, i32 0), i64 94892793871568, i32 189, i32 43), !dbg !420
  store double %238, double* %22, align 8, !dbg !420
  %239 = load double, double* %16, align 8, !dbg !421
  %240 = load double, double* %24, align 8, !dbg !422
  %241 = fdiv double %239, %240, !dbg !423
  call void @fDivHandler(double %239, double %240, double %241, i64 94892793872376, i64 94892793872760, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @7, i32 0, i32 0), i64 94892793873168, i32 190, i32 20), !dbg !424
  %242 = call double @sqrt(double %241) #5, !dbg !424
  call void @callOneArgHandler(i32 14, double %241, double %242, i64 94892793873168, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @7, i32 0, i32 0), i64 94892793873648, i32 190, i32 13), !dbg !425
  store double %242, double* %21, align 8, !dbg !425
  br label %243

; <label>:243:                                    ; preds = %221, %209
  %244 = load double, double* %16, align 8, !dbg !426
  %245 = load double, double* %15, align 8, !dbg !427
  %246 = fdiv double %244, %245, !dbg !428
  call void @fDivHandler(double %244, double %245, double %246, i64 94892793874616, i64 94892793874936, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @7, i32 0, i32 0), i64 94892793875344, i32 193, i32 12), !dbg !429
  %247 = load double, double* %22, align 8, !dbg !429
  %248 = fmul double %246, %247, !dbg !430
  call void @fMulHandler(double %246, double %247, double %248, i64 94892793875344, i64 94892793875736, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @7, i32 0, i32 0), i64 94892793876144, i32 193, i32 15), !dbg !431
  store double %248, double* %23, align 8, !dbg !431
  %249 = load double, double* %21, align 8, !dbg !432
  %250 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %17, i32 0, i32 0, !dbg !433
  %251 = load double, double* %250, align 8, !dbg !433
  %252 = load double, double* %23, align 8, !dbg !434
  %253 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %18, i32 0, i32 0, !dbg !435
  %254 = load double, double* %253, align 8, !dbg !435
  %255 = fmul double %252, %254, !dbg !436
  call void @fMulHandler(double %252, double %254, double %255, i64 94892793879432, i64 94892793880264, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @7, i32 0, i32 0), i64 94892793881936, i32 195, i32 39), !dbg !437
  %256 = fadd double %251, %255, !dbg !437
  call void @fAddHandler(double %251, double %255, double %256, i64 94892793877784, i64 94892793881936, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @7, i32 0, i32 0), i64 94892793882352, i32 195, i32 34), !dbg !438
  %257 = fmul double %249, %256, !dbg !438
  call void @fMulHandler(double %249, double %256, double %257, i64 94892793876952, i64 94892793882352, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @7, i32 0, i32 0), i64 94892793882768, i32 195, i32 24), !dbg !439
  %258 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !439
  %259 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %258, i32 0, i32 0, !dbg !440
  store double %257, double* %259, align 8, !dbg !441
  %260 = load double, double* %21, align 8, !dbg !442
  %261 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %17, i32 0, i32 1, !dbg !443
  %262 = load double, double* %261, align 8, !dbg !443
  %263 = load double, double* %23, align 8, !dbg !444
  %264 = call double @fabs(double %263) #1, !dbg !445
  %265 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %18, i32 0, i32 1, !dbg !446
  %266 = load double, double* %265, align 8, !dbg !446
  %267 = fmul double %264, %266, !dbg !447
  call void @fMulHandler(double %264, double %266, double %267, i64 94892793887360, i64 94892793888264, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @7, i32 0, i32 0), i64 94892793889936, i32 196, i32 45), !dbg !448
  %268 = fadd double %262, %267, !dbg !448
  call void @fAddHandler(double %262, double %267, double %268, i64 94892793885240, i64 94892793889936, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @7, i32 0, i32 0), i64 94892793890352, i32 196, i32 34), !dbg !449
  %269 = fmul double %260, %268, !dbg !449
  call void @fMulHandler(double %260, double %268, double %269, i64 94892793884408, i64 94892793890352, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @7, i32 0, i32 0), i64 94892793890768, i32 196, i32 24), !dbg !450
  %270 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !450
  %271 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %270, i32 0, i32 1, !dbg !451
  store double %269, double* %271, align 8, !dbg !452
  %272 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !453
  %273 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %272, i32 0, i32 0, !dbg !454
  %274 = load double, double* %273, align 8, !dbg !454
  %275 = call double @fabs(double %274) #1, !dbg !455
  %276 = fmul double 0x3E50000000000000, %275, !dbg !456
  call void @fMulHandler(double 0x3E50000000000000, double %275, double %276, i64 0, i64 94892793894976, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @7, i32 0, i32 0), i64 94892793895520, i32 197, i32 41), !dbg !457
  %277 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !457
  %278 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %277, i32 0, i32 1, !dbg !458
  %279 = load double, double* %278, align 8, !dbg !459
  %280 = fadd double %279, %276, !dbg !459
  call void @fAddHandler(double %279, double %276, double %280, i64 94892793793848, i64 94892793895520, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @7, i32 0, i32 0), i64 94892793794256, i32 197, i32 17), !dbg !459
  store double %280, double* %278, align 8, !dbg !459
  %281 = load i32, i32* %19, align 4, !dbg !460
  %282 = icmp ne i32 %281, 0, !dbg !460
  %283 = sext i32 %281 to i64, !dbg !460
  %284 = call i1 @iCmpInstHandler(i64 %283, i64 0, i1 %282, i32 33, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @7, i32 0, i32 0), i64 94892793794896, i32 199, i32 12), !dbg !460
  br i1 %284, label %285, label %287, !dbg !460

; <label>:285:                                    ; preds = %243
  %286 = load i32, i32* %19, align 4, !dbg !461
  br label %297, !dbg !461

; <label>:287:                                    ; preds = %243
  %288 = load i32, i32* %20, align 4, !dbg !463
  %289 = icmp ne i32 %288, 0, !dbg !463
  %290 = sext i32 %288 to i64, !dbg !463
  %291 = call i1 @iCmpInstHandler(i64 %290, i64 0, i1 %289, i32 33, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @7, i32 0, i32 0), i64 94892793905936, i32 199, i32 12), !dbg !463
  br i1 %291, label %292, label %294, !dbg !463

; <label>:292:                                    ; preds = %287
  %293 = load i32, i32* %20, align 4, !dbg !465
  br label %295, !dbg !465

; <label>:294:                                    ; preds = %287
  br label %295, !dbg !467

; <label>:295:                                    ; preds = %294, %292
  %296 = phi i32 [ %293, %292 ], [ 0, %294 ], !dbg !469
  br label %297, !dbg !469

; <label>:297:                                    ; preds = %295, %285
  %298 = phi i32 [ %286, %285 ], [ %296, %295 ], !dbg !471
  store i32 %298, i32* %4, align 4, !dbg !473
  br label %299, !dbg !473

; <label>:299:                                    ; preds = %297, %178, %104, %95, %73, %62, %52, %46, %44
  %300 = load i32, i32* %4, align 4, !dbg !474
  ret i32 %300, !dbg !474
}

declare void @gsl_error(i8*, i8*, i32, i32) #3

; Function Attrs: nounwind
declare double @acos(double) #4

declare i32 @gsl_sf_bessel_J0_e(double, %struct.gsl_sf_result_struct*) #3

declare i32 @gsl_sf_bessel_Jn_e(i32, double, %struct.gsl_sf_result_struct*) #3

; Function Attrs: nounwind
declare double @sqrt(double) #4

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_legendre_Pl_array(i32, double, double*) #0 !dbg !475 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca double*, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !479, metadata !60), !dbg !480
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !481, metadata !60), !dbg !482
  store double* %2, double** %7, align 8
  call void @llvm.dbg.declare(metadata double** %7, metadata !483, metadata !60), !dbg !484
  %12 = load i32, i32* %5, align 4, !dbg !485
  %13 = icmp slt i32 %12, 0, !dbg !487
  %14 = sext i32 %12 to i64, !dbg !488
  %15 = call i1 @iCmpInstHandler(i64 %14, i64 0, i1 %13, i32 40, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @9, i32 0, i32 0), i64 94892793919984, i32 209, i32 11), !dbg !488
  br i1 %15, label %24, label %16, !dbg !488

; <label>:16:                                     ; preds = %3
  %17 = load double, double* %6, align 8, !dbg !489
  %18 = fcmp olt double %17, -1.000000e+00, !dbg !491
  %19 = call i1 @fCmpInstHandler(double %17, double -1.000000e+00, i1 %18, i32 4, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @9, i32 0, i32 0), i64 94892793921376, i32 209, i32 20), !dbg !492
  br i1 %19, label %24, label %20, !dbg !492

; <label>:20:                                     ; preds = %16
  %21 = load double, double* %6, align 8, !dbg !493
  %22 = fcmp ogt double %21, 1.000000e+00, !dbg !495
  %23 = call i1 @fCmpInstHandler(double %21, double 1.000000e+00, i1 %22, i32 2, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @9, i32 0, i32 0), i64 94892793922448, i32 209, i32 32), !dbg !496
  br i1 %23, label %24, label %27, !dbg !496

; <label>:24:                                     ; preds = %20, %16, %3
  br label %25, !dbg !497, !llvm.loop !499

; <label>:25:                                     ; preds = %24
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i32 210, i32 1), !dbg !500
  store i32 1, i32* %4, align 4, !dbg !500
  br label %90, !dbg !500
                                                  ; No predecessors!
  br label %90, !dbg !503

; <label>:27:                                     ; preds = %20
  %28 = load i32, i32* %5, align 4, !dbg !504
  %29 = icmp eq i32 %28, 0, !dbg !506
  %30 = sext i32 %28 to i64, !dbg !507
  %31 = call i1 @iCmpInstHandler(i64 %30, i64 0, i1 %29, i32 32, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @9, i32 0, i32 0), i64 94892793927248, i32 212, i32 16), !dbg !507
  br i1 %31, label %32, label %35, !dbg !507

; <label>:32:                                     ; preds = %27
  %33 = load double*, double** %7, align 8, !dbg !508
  %34 = getelementptr inbounds double, double* %33, i64 0, !dbg !508
  store double 1.000000e+00, double* %34, align 8, !dbg !510
  store i32 0, i32* %4, align 4, !dbg !511
  br label %90, !dbg !511

; <label>:35:                                     ; preds = %27
  %36 = load i32, i32* %5, align 4, !dbg !512
  %37 = icmp eq i32 %36, 1, !dbg !514
  %38 = sext i32 %36 to i64, !dbg !515
  %39 = call i1 @iCmpInstHandler(i64 %38, i64 1, i1 %37, i32 32, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @9, i32 0, i32 0), i64 94892793933264, i32 216, i32 16), !dbg !515
  br i1 %39, label %40, label %46, !dbg !515

; <label>:40:                                     ; preds = %35
  %41 = load double*, double** %7, align 8, !dbg !516
  %42 = getelementptr inbounds double, double* %41, i64 0, !dbg !516
  store double 1.000000e+00, double* %42, align 8, !dbg !518
  %43 = load double, double* %6, align 8, !dbg !519
  %44 = load double*, double** %7, align 8, !dbg !520
  %45 = getelementptr inbounds double, double* %44, i64 1, !dbg !520
  store double %43, double* %45, align 8, !dbg !521
  store i32 0, i32* %4, align 4, !dbg !522
  br label %90, !dbg !522

; <label>:46:                                     ; preds = %35
  call void @llvm.dbg.declare(metadata double* %8, metadata !523, metadata !60), !dbg !525
  store double 1.000000e+00, double* %8, align 8, !dbg !525
  call void @llvm.dbg.declare(metadata double* %9, metadata !526, metadata !60), !dbg !527
  %47 = load double, double* %6, align 8, !dbg !528
  store double %47, double* %9, align 8, !dbg !527
  call void @llvm.dbg.declare(metadata double* %10, metadata !529, metadata !60), !dbg !530
  %48 = load double, double* %9, align 8, !dbg !531
  store double %48, double* %10, align 8, !dbg !530
  call void @llvm.dbg.declare(metadata i32* %11, metadata !532, metadata !60), !dbg !533
  %49 = load double*, double** %7, align 8, !dbg !534
  %50 = getelementptr inbounds double, double* %49, i64 0, !dbg !534
  store double 1.000000e+00, double* %50, align 8, !dbg !535
  %51 = load double, double* %6, align 8, !dbg !536
  %52 = load double*, double** %7, align 8, !dbg !537
  %53 = getelementptr inbounds double, double* %52, i64 1, !dbg !537
  store double %51, double* %53, align 8, !dbg !538
  store i32 2, i32* %11, align 4, !dbg !539
  br label %54, !dbg !541

; <label>:54:                                     ; preds = %86, %46
  %55 = load i32, i32* %11, align 4, !dbg !542
  %56 = load i32, i32* %5, align 4, !dbg !545
  %57 = icmp sle i32 %55, %56, !dbg !546
  %58 = sext i32 %55 to i64, !dbg !547
  %59 = sext i32 %56 to i64, !dbg !547
  %60 = call i1 @iCmpInstHandler(i64 %58, i64 %59, i1 %57, i32 41, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @9, i32 0, i32 0), i64 94892793958960, i32 232, i32 20), !dbg !547
  br i1 %60, label %61, label %89, !dbg !547

; <label>:61:                                     ; preds = %54
  %62 = load double, double* %6, align 8, !dbg !548
  %63 = load i32, i32* %11, align 4, !dbg !550
  %64 = mul nsw i32 2, %63, !dbg !551
  %65 = sub nsw i32 %64, 1, !dbg !552
  %66 = sitofp i32 %65 to double, !dbg !553
  %67 = fmul double %62, %66, !dbg !554
  call void @fMulHandler(double %62, double %66, double %67, i64 94892793960072, i64 94892793961608, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @9, i32 0, i32 0), i64 94892793962016, i32 233, i32 17), !dbg !555
  %68 = load double, double* %9, align 8, !dbg !555
  %69 = fmul double %67, %68, !dbg !556
  call void @fMulHandler(double %67, double %68, double %69, i64 94892793962016, i64 94892793962408, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @9, i32 0, i32 0), i64 94892793962816, i32 233, i32 27), !dbg !557
  %70 = load i32, i32* %11, align 4, !dbg !557
  %71 = sub nsw i32 %70, 1, !dbg !558
  %72 = sitofp i32 %71 to double, !dbg !559
  %73 = load double, double* %8, align 8, !dbg !560
  %74 = fmul double %72, %73, !dbg !561
  call void @fMulHandler(double %72, double %73, double %74, i64 94892793964008, i64 94892793964392, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @9, i32 0, i32 0), i64 94892793964800, i32 233, i32 45), !dbg !562
  %75 = fsub double %69, %74, !dbg !562
  call void @fSubHandler(double %69, double %74, double %75, i64 94892793962816, i64 94892793964800, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @9, i32 0, i32 0), i64 94892793965216, i32 233, i32 36), !dbg !563
  %76 = load i32, i32* %11, align 4, !dbg !563
  %77 = sitofp i32 %76 to double, !dbg !563
  %78 = fdiv double %75, %77, !dbg !564
  call void @fDivHandler(double %75, double %77, double %78, i64 94892793965216, i64 94892793965992, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @9, i32 0, i32 0), i64 94892793967664, i32 233, i32 55), !dbg !565
  store double %78, double* %10, align 8, !dbg !565
  %79 = load double, double* %9, align 8, !dbg !566
  store double %79, double* %8, align 8, !dbg !567
  %80 = load double, double* %10, align 8, !dbg !568
  store double %80, double* %9, align 8, !dbg !569
  %81 = load double, double* %10, align 8, !dbg !570
  %82 = load i32, i32* %11, align 4, !dbg !571
  %83 = sext i32 %82 to i64, !dbg !572
  %84 = load double*, double** %7, align 8, !dbg !572
  %85 = getelementptr inbounds double, double* %84, i64 %83, !dbg !572
  store double %81, double* %85, align 8, !dbg !573
  br label %86, !dbg !574

; <label>:86:                                     ; preds = %61
  %87 = load i32, i32* %11, align 4, !dbg !575
  %88 = add nsw i32 %87, 1, !dbg !575
  store i32 %88, i32* %11, align 4, !dbg !575
  br label %54, !dbg !577, !llvm.loop !578

; <label>:89:                                     ; preds = %54
  store i32 0, i32* %4, align 4, !dbg !580
  br label %90, !dbg !580

; <label>:90:                                     ; preds = %89, %40, %32, %26, %25
  %91 = load i32, i32* %4, align 4, !dbg !581
  ret i32 %91, !dbg !581
}

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_legendre_Pl_deriv_array(i32, double, double*, double*) #0 !dbg !582 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca double*, align 8
  %9 = alloca double*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !585, metadata !60), !dbg !586
  store double %1, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !587, metadata !60), !dbg !588
  store double* %2, double** %8, align 8
  call void @llvm.dbg.declare(metadata double** %8, metadata !589, metadata !60), !dbg !590
  store double* %3, double** %9, align 8
  call void @llvm.dbg.declare(metadata double** %9, metadata !591, metadata !60), !dbg !592
  call void @llvm.dbg.declare(metadata i32* %10, metadata !593, metadata !60), !dbg !594
  %17 = load i32, i32* %6, align 4, !dbg !595
  %18 = load double, double* %7, align 8, !dbg !596
  %19 = load double*, double** %8, align 8, !dbg !597
  %20 = call i32 @gsl_sf_legendre_Pl_array(i32 %17, double %18, double* %19), !dbg !598
  store i32 %20, i32* %10, align 4, !dbg !594
  %21 = load i32, i32* %6, align 4, !dbg !599
  %22 = icmp sge i32 %21, 0, !dbg !601
  %23 = sext i32 %21 to i64, !dbg !602
  %24 = call i1 @iCmpInstHandler(i64 %23, i64 0, i1 %22, i32 39, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @11, i32 0, i32 0), i64 94892793992848, i32 249, i32 11), !dbg !602
  br i1 %24, label %25, label %28, !dbg !602

; <label>:25:                                     ; preds = %4
  %26 = load double*, double** %9, align 8, !dbg !603
  %27 = getelementptr inbounds double, double* %26, i64 0, !dbg !603
  store double 0.000000e+00, double* %27, align 8, !dbg !605
  br label %28, !dbg !603

; <label>:28:                                     ; preds = %25, %4
  %29 = load i32, i32* %6, align 4, !dbg !606
  %30 = icmp sge i32 %29, 1, !dbg !608
  %31 = sext i32 %29 to i64, !dbg !609
  %32 = call i1 @iCmpInstHandler(i64 %31, i64 1, i1 %30, i32 39, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @11, i32 0, i32 0), i64 94892793996832, i32 250, i32 11), !dbg !609
  br i1 %32, label %33, label %36, !dbg !609

; <label>:33:                                     ; preds = %28
  %34 = load double*, double** %9, align 8, !dbg !610
  %35 = getelementptr inbounds double, double* %34, i64 1, !dbg !610
  store double 1.000000e+00, double* %35, align 8, !dbg !612
  br label %36, !dbg !610

; <label>:36:                                     ; preds = %33, %28
  %37 = load i32, i32* %10, align 4, !dbg !613
  %38 = icmp eq i32 %37, 0, !dbg !615
  %39 = sext i32 %37 to i64, !dbg !616
  %40 = call i1 @iCmpInstHandler(i64 %39, i64 0, i1 %38, i32 32, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @11, i32 0, i32 0), i64 94892794000816, i32 252, i32 17), !dbg !616
  br i1 %40, label %41, label %198, !dbg !616

; <label>:41:                                     ; preds = %36
  call void @llvm.dbg.declare(metadata i32* %11, metadata !617, metadata !60), !dbg !619
  %42 = load double, double* %7, align 8, !dbg !620
  %43 = fsub double %42, 1.000000e+00, !dbg !622
  call void @fSubHandler(double %42, double 1.000000e+00, double %43, i64 94892794002984, i64 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @11, i32 0, i32 0), i64 94892794003392, i32 256, i32 15), !dbg !623
  %44 = call double @fabs(double %43) #1, !dbg !623
  %45 = load i32, i32* %6, align 4, !dbg !624
  %46 = sitofp i32 %45 to double, !dbg !624
  %47 = fadd double %46, 1.000000e+00, !dbg !625
  call void @fAddHandler(double %46, double 1.000000e+00, double %47, i64 94892794004680, i64 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @11, i32 0, i32 0), i64 94892794006384, i32 256, i32 27), !dbg !626
  %48 = fmul double %44, %47, !dbg !626
  call void @fMulHandler(double %44, double %47, double %48, i64 94892794003840, i64 94892794006384, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @11, i32 0, i32 0), i64 94892794006768, i32 256, i32 21), !dbg !627
  %49 = load i32, i32* %6, align 4, !dbg !627
  %50 = sitofp i32 %49 to double, !dbg !627
  %51 = fadd double %50, 1.000000e+00, !dbg !628
  call void @fAddHandler(double %50, double 1.000000e+00, double %51, i64 94892794007544, i64 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @11, i32 0, i32 0), i64 94892794009248, i32 256, i32 38), !dbg !629
  %52 = fmul double %48, %51, !dbg !629
  call void @fMulHandler(double %48, double %51, double %52, i64 94892794006768, i64 94892794009248, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @11, i32 0, i32 0), i64 94892794009632, i32 256, i32 32), !dbg !630
  %53 = fcmp olt double %52, 0x3E50000000000000, !dbg !630
  %54 = call i1 @fCmpInstHandler(double %52, double 0x3E50000000000000, i1 %53, i32 4, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @11, i32 0, i32 0), i64 94892794010048, i32 256, i32 44), !dbg !631
  br i1 %54, label %55, label %93, !dbg !631

; <label>:55:                                     ; preds = %41
  store i32 2, i32* %11, align 4, !dbg !632
  br label %56, !dbg !635

; <label>:56:                                     ; preds = %89, %55
  %57 = load i32, i32* %11, align 4, !dbg !636
  %58 = load i32, i32* %6, align 4, !dbg !639
  %59 = icmp sle i32 %57, %58, !dbg !640
  %60 = sext i32 %57 to i64, !dbg !641
  %61 = sext i32 %58 to i64, !dbg !641
  %62 = call i1 @iCmpInstHandler(i64 %60, i64 %61, i1 %59, i32 41, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @11, i32 0, i32 0), i64 94892794012768, i32 259, i32 24), !dbg !641
  br i1 %62, label %63, label %92, !dbg !641

; <label>:63:                                     ; preds = %56
  call void @llvm.dbg.declare(metadata double* %12, metadata !642, metadata !60), !dbg !644
  %64 = load i32, i32* %11, align 4, !dbg !645
  %65 = sitofp i32 %64 to double, !dbg !645
  %66 = fmul double 5.000000e-01, %65, !dbg !646
  call void @fMulHandler(double 5.000000e-01, double %65, double %66, i64 0, i64 94892794015288, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @11, i32 0, i32 0), i64 94892794016992, i32 261, i32 32), !dbg !647
  %67 = load i32, i32* %11, align 4, !dbg !647
  %68 = sitofp i32 %67 to double, !dbg !647
  %69 = fadd double %68, 1.000000e+00, !dbg !648
  call void @fAddHandler(double %68, double 1.000000e+00, double %69, i64 94892794017736, i64 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @11, i32 0, i32 0), i64 94892794019440, i32 261, i32 44), !dbg !649
  %70 = fmul double %66, %69, !dbg !649
  call void @fMulHandler(double %66, double %69, double %70, i64 94892794016992, i64 94892794019440, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @11, i32 0, i32 0), i64 94892794019824, i32 261, i32 38), !dbg !644
  store double %70, double* %12, align 8, !dbg !644
  %71 = load double, double* %12, align 8, !dbg !650
  %72 = load double, double* %7, align 8, !dbg !651
  %73 = fsub double 1.000000e+00, %72, !dbg !652
  call void @fSubHandler(double 1.000000e+00, double %72, double %73, i64 0, i64 94892794022280, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @11, i32 0, i32 0), i64 94892794022720, i32 262, i32 59), !dbg !653
  %74 = fmul double 2.500000e-01, %73, !dbg !653
  call void @fMulHandler(double 2.500000e-01, double %73, double %74, i64 0, i64 94892794022720, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @11, i32 0, i32 0), i64 94892794023200, i32 262, i32 53), !dbg !654
  %75 = load i32, i32* %11, align 4, !dbg !654
  %76 = sitofp i32 %75 to double, !dbg !654
  %77 = fadd double %76, 2.000000e+00, !dbg !655
  call void @fAddHandler(double %76, double 2.000000e+00, double %77, i64 94892794023944, i64 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @11, i32 0, i32 0), i64 94892794025712, i32 262, i32 69), !dbg !656
  %78 = fmul double %74, %77, !dbg !656
  call void @fMulHandler(double %74, double %77, double %78, i64 94892794023200, i64 94892794025712, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @11, i32 0, i32 0), i64 94892794026096, i32 262, i32 63), !dbg !657
  %79 = load i32, i32* %11, align 4, !dbg !657
  %80 = sitofp i32 %79 to double, !dbg !657
  %81 = fsub double %80, 1.000000e+00, !dbg !658
  call void @fSubHandler(double %80, double 1.000000e+00, double %81, i64 94892794026872, i64 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @11, i32 0, i32 0), i64 94892794028576, i32 262, i32 79), !dbg !659
  %82 = fmul double %78, %81, !dbg !659
  call void @fMulHandler(double %78, double %81, double %82, i64 94892794026096, i64 94892794028576, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @11, i32 0, i32 0), i64 94892794028960, i32 262, i32 74), !dbg !660
  %83 = fsub double 1.000000e+00, %82, !dbg !660
  call void @fSubHandler(double 1.000000e+00, double %82, double %83, i64 0, i64 94892794028960, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @11, i32 0, i32 0), i64 94892794029408, i32 262, i32 46), !dbg !661
  %84 = fmul double %71, %83, !dbg !661
  call void @fMulHandler(double %71, double %83, double %84, i64 94892794021896, i64 94892794029408, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @11, i32 0, i32 0), i64 94892794029792, i32 262, i32 39), !dbg !662
  %85 = load i32, i32* %11, align 4, !dbg !662
  %86 = sext i32 %85 to i64, !dbg !663
  %87 = load double*, double** %9, align 8, !dbg !663
  %88 = getelementptr inbounds double, double* %87, i64 %86, !dbg !663
  store double %84, double* %88, align 8, !dbg !664
  br label %89, !dbg !665

; <label>:89:                                     ; preds = %63
  %90 = load i32, i32* %11, align 4, !dbg !666
  %91 = add nsw i32 %90, 1, !dbg !666
  store i32 %91, i32* %11, align 4, !dbg !666
  br label %56, !dbg !668, !llvm.loop !669

; <label>:92:                                     ; preds = %56
  br label %197, !dbg !671

; <label>:93:                                     ; preds = %41
  %94 = load double, double* %7, align 8, !dbg !672
  %95 = fadd double %94, 1.000000e+00, !dbg !674
  call void @fAddHandler(double %94, double 1.000000e+00, double %95, i64 94892794036952, i64 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @11, i32 0, i32 0), i64 94892794037328, i32 265, i32 20), !dbg !675
  %96 = call double @fabs(double %95) #1, !dbg !675
  %97 = load i32, i32* %6, align 4, !dbg !676
  %98 = sitofp i32 %97 to double, !dbg !676
  %99 = fadd double %98, 1.000000e+00, !dbg !677
  call void @fAddHandler(double %98, double 1.000000e+00, double %99, i64 94892794038616, i64 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @11, i32 0, i32 0), i64 94892794040320, i32 265, i32 32), !dbg !678
  %100 = fmul double %96, %99, !dbg !678
  call void @fMulHandler(double %96, double %99, double %100, i64 94892794037776, i64 94892794040320, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @11, i32 0, i32 0), i64 94892794040704, i32 265, i32 26), !dbg !679
  %101 = load i32, i32* %6, align 4, !dbg !679
  %102 = sitofp i32 %101 to double, !dbg !679
  %103 = fadd double %102, 1.000000e+00, !dbg !680
  call void @fAddHandler(double %102, double 1.000000e+00, double %103, i64 94892794041480, i64 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @11, i32 0, i32 0), i64 94892794043184, i32 265, i32 43), !dbg !681
  %104 = fmul double %100, %103, !dbg !681
  call void @fMulHandler(double %100, double %103, double %104, i64 94892794040704, i64 94892794043184, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @11, i32 0, i32 0), i64 94892794043568, i32 265, i32 37), !dbg !682
  %105 = fcmp olt double %104, 0x3E50000000000000, !dbg !682
  %106 = call i1 @fCmpInstHandler(double %104, double 0x3E50000000000000, i1 %105, i32 4, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @11, i32 0, i32 0), i64 94892794043984, i32 265, i32 49), !dbg !683
  br i1 %106, label %107, label %153, !dbg !683

; <label>:107:                                    ; preds = %93
  store i32 2, i32* %11, align 4, !dbg !684
  br label %108, !dbg !687

; <label>:108:                                    ; preds = %149, %107
  %109 = load i32, i32* %11, align 4, !dbg !688
  %110 = load i32, i32* %6, align 4, !dbg !691
  %111 = icmp sle i32 %109, %110, !dbg !692
  %112 = sext i32 %109 to i64, !dbg !693
  %113 = sext i32 %110 to i64, !dbg !693
  %114 = call i1 @iCmpInstHandler(i64 %112, i64 %113, i1 %111, i32 41, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @11, i32 0, i32 0), i64 94892794046704, i32 268, i32 24), !dbg !693
  br i1 %114, label %115, label %152, !dbg !693

; <label>:115:                                    ; preds = %108
  call void @llvm.dbg.declare(metadata double* %13, metadata !694, metadata !60), !dbg !696
  %116 = load i32, i32* %11, align 4, !dbg !697
  %117 = and i32 %116, 1, !dbg !697
  %118 = icmp ne i32 %117, 0, !dbg !697
  %119 = sext i32 %117 to i64, !dbg !697
  %120 = call i1 @iCmpInstHandler(i64 %119, i64 0, i1 %118, i32 33, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @11, i32 0, i32 0), i64 94892794050928, i32 270, i32 30), !dbg !697
  %121 = select i1 %120, double 1.000000e+00, double -1.000000e+00, !dbg !697
  store double %121, double* %13, align 8, !dbg !696
  call void @llvm.dbg.declare(metadata double* %14, metadata !698, metadata !60), !dbg !699
  %122 = load double, double* %13, align 8, !dbg !700
  %123 = fmul double %122, 5.000000e-01, !dbg !701
  call void @fMulHandler(double %122, double 5.000000e-01, double %123, i64 94892794053976, i64 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @11, i32 0, i32 0), i64 94892794054384, i32 271, i32 32), !dbg !702
  %124 = load i32, i32* %11, align 4, !dbg !702
  %125 = sitofp i32 %124 to double, !dbg !702
  %126 = fmul double %123, %125, !dbg !703
  call void @fMulHandler(double %123, double %125, double %126, i64 94892794054384, i64 94892794055128, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @11, i32 0, i32 0), i64 94892794056800, i32 271, i32 38), !dbg !704
  %127 = load i32, i32* %11, align 4, !dbg !704
  %128 = sitofp i32 %127 to double, !dbg !704
  %129 = fadd double %128, 1.000000e+00, !dbg !705
  call void @fAddHandler(double %128, double 1.000000e+00, double %129, i64 94892794057576, i64 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @11, i32 0, i32 0), i64 94892794059280, i32 271, i32 50), !dbg !706
  %130 = fmul double %126, %129, !dbg !706
  call void @fMulHandler(double %126, double %129, double %130, i64 94892794056800, i64 94892794059280, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @11, i32 0, i32 0), i64 94892794059664, i32 271, i32 44), !dbg !699
  store double %130, double* %14, align 8, !dbg !699
  %131 = load double, double* %14, align 8, !dbg !707
  %132 = load double, double* %7, align 8, !dbg !708
  %133 = fadd double 1.000000e+00, %132, !dbg !709
  call void @fAddHandler(double 1.000000e+00, double %132, double %133, i64 0, i64 94892794062120, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @11, i32 0, i32 0), i64 94892794062560, i32 272, i32 59), !dbg !710
  %134 = fmul double 2.500000e-01, %133, !dbg !710
  call void @fMulHandler(double 2.500000e-01, double %133, double %134, i64 0, i64 94892794062560, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @11, i32 0, i32 0), i64 94892794062976, i32 272, i32 53), !dbg !711
  %135 = load i32, i32* %11, align 4, !dbg !711
  %136 = sitofp i32 %135 to double, !dbg !711
  %137 = fadd double %136, 2.000000e+00, !dbg !712
  call void @fAddHandler(double %136, double 2.000000e+00, double %137, i64 94892794063720, i64 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @11, i32 0, i32 0), i64 94892794065424, i32 272, i32 69), !dbg !713
  %138 = fmul double %134, %137, !dbg !713
  call void @fMulHandler(double %134, double %137, double %138, i64 94892794062976, i64 94892794065424, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @11, i32 0, i32 0), i64 94892794065808, i32 272, i32 63), !dbg !714
  %139 = load i32, i32* %11, align 4, !dbg !714
  %140 = sitofp i32 %139 to double, !dbg !714
  %141 = fsub double %140, 1.000000e+00, !dbg !715
  call void @fSubHandler(double %140, double 1.000000e+00, double %141, i64 94892794066584, i64 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @11, i32 0, i32 0), i64 94892794068288, i32 272, i32 79), !dbg !716
  %142 = fmul double %138, %141, !dbg !716
  call void @fMulHandler(double %138, double %141, double %142, i64 94892794065808, i64 94892794068288, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @11, i32 0, i32 0), i64 94892794068672, i32 272, i32 74), !dbg !717
  %143 = fsub double 1.000000e+00, %142, !dbg !717
  call void @fSubHandler(double 1.000000e+00, double %142, double %143, i64 0, i64 94892794068672, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @11, i32 0, i32 0), i64 94892794069120, i32 272, i32 46), !dbg !718
  %144 = fmul double %131, %143, !dbg !718
  call void @fMulHandler(double %131, double %143, double %144, i64 94892794061736, i64 94892794069120, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @11, i32 0, i32 0), i64 94892794069504, i32 272, i32 39), !dbg !719
  %145 = load i32, i32* %11, align 4, !dbg !719
  %146 = sext i32 %145 to i64, !dbg !720
  %147 = load double*, double** %9, align 8, !dbg !720
  %148 = getelementptr inbounds double, double* %147, i64 %146, !dbg !720
  store double %144, double* %148, align 8, !dbg !721
  br label %149, !dbg !722

; <label>:149:                                    ; preds = %115
  %150 = load i32, i32* %11, align 4, !dbg !723
  %151 = add nsw i32 %150, 1, !dbg !723
  store i32 %151, i32* %11, align 4, !dbg !723
  br label %108, !dbg !725, !llvm.loop !726

; <label>:152:                                    ; preds = %108
  br label %196, !dbg !728

; <label>:153:                                    ; preds = %93
  call void @llvm.dbg.declare(metadata double* %15, metadata !729, metadata !60), !dbg !731
  %154 = load double, double* %7, align 8, !dbg !732
  %155 = fadd double 1.000000e+00, %154, !dbg !733
  call void @fAddHandler(double 1.000000e+00, double %154, double %155, i64 0, i64 94892794079784, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @11, i32 0, i32 0), i64 94892794080192, i32 277, i32 33), !dbg !731
  store double %155, double* %15, align 8, !dbg !731
  call void @llvm.dbg.declare(metadata double* %16, metadata !734, metadata !60), !dbg !735
  %156 = load double, double* %7, align 8, !dbg !736
  %157 = fsub double 1.000000e+00, %156, !dbg !737
  call void @fSubHandler(double 1.000000e+00, double %156, double %157, i64 0, i64 94892794083352, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @11, i32 0, i32 0), i64 94892794083760, i32 278, i32 33), !dbg !735
  store double %157, double* %16, align 8, !dbg !735
  store i32 2, i32* %11, align 4, !dbg !738
  br label %158, !dbg !740

; <label>:158:                                    ; preds = %192, %153
  %159 = load i32, i32* %11, align 4, !dbg !741
  %160 = load i32, i32* %6, align 4, !dbg !744
  %161 = icmp sle i32 %159, %160, !dbg !745
  %162 = sext i32 %159 to i64, !dbg !746
  %163 = sext i32 %160 to i64, !dbg !746
  %164 = call i1 @iCmpInstHandler(i64 %162, i64 %163, i1 %161, i32 41, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @11, i32 0, i32 0), i64 94892794087472, i32 279, i32 24), !dbg !746
  br i1 %164, label %165, label %195, !dbg !746

; <label>:165:                                    ; preds = %158
  %166 = load i32, i32* %11, align 4, !dbg !747
  %167 = sub nsw i32 0, %166, !dbg !749
  %168 = sitofp i32 %167 to double, !dbg !749
  %169 = load double, double* %7, align 8, !dbg !750
  %170 = load i32, i32* %11, align 4, !dbg !751
  %171 = sext i32 %170 to i64, !dbg !752
  %172 = load double*, double** %8, align 8, !dbg !752
  %173 = getelementptr inbounds double, double* %172, i64 %171, !dbg !752
  %174 = load double, double* %173, align 8, !dbg !752
  %175 = fmul double %169, %174, !dbg !753
  call void @fMulHandler(double %169, double %174, double %175, i64 94892794090968, i64 94892794093912, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @11, i32 0, i32 0), i64 94892794094032, i32 281, i32 46), !dbg !754
  %176 = load i32, i32* %11, align 4, !dbg !754
  %177 = sub nsw i32 %176, 1, !dbg !755
  %178 = sext i32 %177 to i64, !dbg !756
  %179 = load double*, double** %8, align 8, !dbg !756
  %180 = getelementptr inbounds double, double* %179, i64 %178, !dbg !756
  %181 = load double, double* %180, align 8, !dbg !756
  %182 = fsub double %175, %181, !dbg !757
  call void @fSubHandler(double %175, double %181, double %182, i64 94892794094032, i64 94892794097400, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @11, i32 0, i32 0), i64 94892794097520, i32 281, i32 66), !dbg !758
  %183 = fmul double %168, %182, !dbg !758
  call void @fMulHandler(double %168, double %182, double %183, i64 94892794089320, i64 94892794097520, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @11, i32 0, i32 0), i64 94892794097936, i32 281, i32 41), !dbg !759
  %184 = load double, double* %15, align 8, !dbg !759
  %185 = load double, double* %16, align 8, !dbg !760
  %186 = fmul double %184, %185, !dbg !761
  call void @fMulHandler(double %184, double %185, double %186, i64 94892794098328, i64 94892794098712, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @11, i32 0, i32 0), i64 94892794099120, i32 281, i32 99), !dbg !762
  %187 = fdiv double %183, %186, !dbg !762
  call void @fDivHandler(double %183, double %186, double %187, i64 94892794097936, i64 94892794099120, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @11, i32 0, i32 0), i64 94892794099536, i32 281, i32 89), !dbg !763
  %188 = load i32, i32* %11, align 4, !dbg !763
  %189 = sext i32 %188 to i64, !dbg !764
  %190 = load double*, double** %9, align 8, !dbg !764
  %191 = getelementptr inbounds double, double* %190, i64 %189, !dbg !764
  store double %187, double* %191, align 8, !dbg !765
  br label %192, !dbg !766

; <label>:192:                                    ; preds = %165
  %193 = load i32, i32* %11, align 4, !dbg !767
  %194 = add nsw i32 %193, 1, !dbg !767
  store i32 %194, i32* %11, align 4, !dbg !767
  br label %158, !dbg !769, !llvm.loop !770

; <label>:195:                                    ; preds = %158
  br label %196

; <label>:196:                                    ; preds = %195, %152
  br label %197

; <label>:197:                                    ; preds = %196, %92
  store i32 0, i32* %5, align 4, !dbg !772
  br label %200, !dbg !772

; <label>:198:                                    ; preds = %36
  %199 = load i32, i32* %10, align 4, !dbg !773
  store i32 %199, i32* %5, align 4, !dbg !775
  br label %200, !dbg !775

; <label>:200:                                    ; preds = %198, %197
  %201 = load i32, i32* %5, align 4, !dbg !776
  ret i32 %201, !dbg !776
}

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_legendre_Plm_e(i32, i32, double, %struct.gsl_sf_result_struct*) #0 !dbg !777 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca %struct.gsl_sf_result_struct*, align 8
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
  %21 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !780, metadata !60), !dbg !781
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !782, metadata !60), !dbg !783
  store double %2, double* %8, align 8
  call void @llvm.dbg.declare(metadata double* %8, metadata !784, metadata !60), !dbg !785
  store %struct.gsl_sf_result_struct* %3, %struct.gsl_sf_result_struct** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %9, metadata !786, metadata !60), !dbg !787
  call void @llvm.dbg.declare(metadata double* %10, metadata !788, metadata !60), !dbg !789
  %22 = load i32, i32* %6, align 4, !dbg !790
  %23 = load i32, i32* %7, align 4, !dbg !791
  %24 = sub nsw i32 %22, %23, !dbg !792
  %25 = sitofp i32 %24 to double, !dbg !790
  store double %25, double* %10, align 8, !dbg !789
  call void @llvm.dbg.declare(metadata double* %11, metadata !793, metadata !60), !dbg !794
  %26 = load i32, i32* %6, align 4, !dbg !795
  %27 = load i32, i32* %7, align 4, !dbg !796
  %28 = add nsw i32 %26, %27, !dbg !797
  %29 = sitofp i32 %28 to double, !dbg !795
  store double %29, double* %11, align 8, !dbg !794
  call void @llvm.dbg.declare(metadata double* %12, metadata !798, metadata !60), !dbg !799
  %30 = load double, double* %10, align 8, !dbg !800
  %31 = fcmp oeq double %30, 0.000000e+00, !dbg !801
  %32 = call i1 @fCmpInstHandler(double %30, double 0.000000e+00, i1 %31, i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @13, i32 0, i32 0), i64 94892794135312, i32 302, i32 28), !dbg !800
  br i1 %32, label %33, label %34, !dbg !800

; <label>:33:                                     ; preds = %4
  br label %41, !dbg !802

; <label>:34:                                     ; preds = %4
  %35 = load double, double* %10, align 8, !dbg !804
  %36 = fmul double 5.000000e-01, %35, !dbg !806
  call void @fMulHandler(double 5.000000e-01, double %35, double %36, i64 0, i64 94892794138152, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @13, i32 0, i32 0), i64 94892794138528, i32 302, i32 47), !dbg !807
  %37 = load double, double* %10, align 8, !dbg !807
  %38 = call double @log(double %37) #5, !dbg !808
  call void @callOneArgHandler(i32 12, double %37, double %38, i64 94892794138888, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @13, i32 0, i32 0), i64 94892794139632, i32 302, i32 56), !dbg !809
  %39 = fsub double %38, 1.000000e+00, !dbg !809
  call void @fSubHandler(double %38, double 1.000000e+00, double %39, i64 94892794139632, i64 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @13, i32 0, i32 0), i64 94892794140176, i32 302, i32 64), !dbg !810
  %40 = fmul double %36, %39, !dbg !810
  call void @fMulHandler(double %36, double %39, double %40, i64 94892794138528, i64 94892794140176, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @13, i32 0, i32 0), i64 94892794140560, i32 302, i32 53), !dbg !811
  br label %41, !dbg !811

; <label>:41:                                     ; preds = %34, %33
  %42 = phi double [ 0.000000e+00, %33 ], [ %40, %34 ], !dbg !812
  store double %42, double* %12, align 8, !dbg !814
  call void @llvm.dbg.declare(metadata double* %13, metadata !815, metadata !60), !dbg !816
  %43 = load double, double* %10, align 8, !dbg !817
  %44 = fcmp oeq double %43, 0.000000e+00, !dbg !818
  %45 = call i1 @fCmpInstHandler(double %43, double 0.000000e+00, i1 %44, i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @13, i32 0, i32 0), i64 94892794143696, i32 303, i32 28), !dbg !817
  br i1 %45, label %46, label %47, !dbg !817

; <label>:46:                                     ; preds = %41
  br label %54, !dbg !819

; <label>:47:                                     ; preds = %41
  %48 = load double, double* %11, align 8, !dbg !820
  %49 = fmul double 5.000000e-01, %48, !dbg !821
  call void @fMulHandler(double 5.000000e-01, double %48, double %49, i64 0, i64 94892794146536, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @13, i32 0, i32 0), i64 94892794146912, i32 303, i32 47), !dbg !822
  %50 = load double, double* %11, align 8, !dbg !822
  %51 = call double @log(double %50) #5, !dbg !823
  call void @callOneArgHandler(i32 12, double %50, double %51, i64 94892794147272, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @13, i32 0, i32 0), i64 94892794147744, i32 303, i32 56), !dbg !824
  %52 = fsub double %51, 1.000000e+00, !dbg !824
  call void @fSubHandler(double %51, double 1.000000e+00, double %52, i64 94892794147744, i64 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @13, i32 0, i32 0), i64 94892794148256, i32 303, i32 64), !dbg !825
  %53 = fmul double %49, %52, !dbg !825
  call void @fMulHandler(double %49, double %52, double %53, i64 94892794146912, i64 94892794148256, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @13, i32 0, i32 0), i64 94892794148640, i32 303, i32 53), !dbg !826
  br label %54, !dbg !826

; <label>:54:                                     ; preds = %47, %46
  %55 = phi double [ 0.000000e+00, %46 ], [ %53, %47 ], !dbg !827
  store double %55, double* %13, align 8, !dbg !828
  call void @llvm.dbg.declare(metadata double* %14, metadata !829, metadata !60), !dbg !830
  %56 = load i32, i32* %6, align 4, !dbg !831
  %57 = sitofp i32 %56 to double, !dbg !831
  %58 = fmul double 2.000000e+00, %57, !dbg !832
  call void @fMulHandler(double 2.000000e+00, double %57, double %58, i64 0, i64 94892794151704, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @13, i32 0, i32 0), i64 94892794153408, i32 304, i32 41), !dbg !833
  %59 = fadd double %58, 1.000000e+00, !dbg !833
  call void @fAddHandler(double %58, double 1.000000e+00, double %59, i64 94892794153408, i64 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @13, i32 0, i32 0), i64 94892794153824, i32 304, i32 43), !dbg !834
  %60 = call double @log(double %59) #5, !dbg !834
  call void @callOneArgHandler(i32 12, double %59, double %60, i64 94892794153824, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @13, i32 0, i32 0), i64 94892794154272, i32 304, i32 34), !dbg !835
  %61 = fmul double 5.000000e-01, %60, !dbg !835
  call void @fMulHandler(double 5.000000e-01, double %60, double %61, i64 0, i64 94892794154272, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @13, i32 0, i32 0), i64 94892794154784, i32 304, i32 32), !dbg !836
  %62 = load double, double* %12, align 8, !dbg !836
  %63 = fadd double %61, %62, !dbg !837
  call void @fAddHandler(double %61, double %62, double %63, i64 94892794154784, i64 94892794155144, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @13, i32 0, i32 0), i64 94892794155552, i32 304, i32 49), !dbg !838
  %64 = load double, double* %13, align 8, !dbg !838
  %65 = fsub double %63, %64, !dbg !839
  call void @fSubHandler(double %63, double %64, double %65, i64 94892794155552, i64 94892794155944, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @13, i32 0, i32 0), i64 94892794156352, i32 304, i32 55), !dbg !830
  store double %65, double* %14, align 8, !dbg !830
  %66 = load i32, i32* %7, align 4, !dbg !840
  %67 = icmp slt i32 %66, 0, !dbg !842
  %68 = sext i32 %66 to i64, !dbg !843
  %69 = call i1 @iCmpInstHandler(i64 %68, i64 0, i1 %67, i32 40, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @13, i32 0, i32 0), i64 94892794158832, i32 308, i32 8), !dbg !843
  br i1 %69, label %85, label %70, !dbg !843

; <label>:70:                                     ; preds = %54
  %71 = load i32, i32* %6, align 4, !dbg !844
  %72 = load i32, i32* %7, align 4, !dbg !846
  %73 = icmp slt i32 %71, %72, !dbg !847
  %74 = sext i32 %71 to i64, !dbg !848
  %75 = sext i32 %72 to i64, !dbg !848
  %76 = call i1 @iCmpInstHandler(i64 %74, i64 %75, i1 %73, i32 40, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @13, i32 0, i32 0), i64 94892794160672, i32 308, i32 17), !dbg !848
  br i1 %76, label %85, label %77, !dbg !848

; <label>:77:                                     ; preds = %70
  %78 = load double, double* %8, align 8, !dbg !849
  %79 = fcmp olt double %78, -1.000000e+00, !dbg !851
  %80 = call i1 @fCmpInstHandler(double %78, double -1.000000e+00, i1 %79, i32 4, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @13, i32 0, i32 0), i64 94892794162016, i32 308, i32 26), !dbg !852
  br i1 %80, label %85, label %81, !dbg !852

; <label>:81:                                     ; preds = %77
  %82 = load double, double* %8, align 8, !dbg !853
  %83 = fcmp ogt double %82, 1.000000e+00, !dbg !855
  %84 = call i1 @fCmpInstHandler(double %82, double 1.000000e+00, i1 %83, i32 2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @13, i32 0, i32 0), i64 94892794163328, i32 308, i32 38), !dbg !856
  br i1 %84, label %85, label %94, !dbg !856

; <label>:85:                                     ; preds = %81, %77, %70, %54
  br label %86, !dbg !857, !llvm.loop !859

; <label>:86:                                     ; preds = %85
  %87 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !860
  %88 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %87, i32 0, i32 0, !dbg !860
  store double 0x7FF8000000000000, double* %88, align 8, !dbg !860
  %89 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !860
  %90 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %89, i32 0, i32 1, !dbg !860
  store double 0x7FF8000000000000, double* %90, align 8, !dbg !860
  br label %91, !dbg !860, !llvm.loop !863

; <label>:91:                                     ; preds = %86
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i32 309, i32 1), !dbg !865
  store i32 1, i32* %5, align 4, !dbg !865
  br label %221, !dbg !865
                                                  ; No predecessors!
  br label %93, !dbg !868

; <label>:93:                                     ; preds = %92
  br label %221, !dbg !870

; <label>:94:                                     ; preds = %81
  %95 = load double, double* %14, align 8, !dbg !871
  %96 = fcmp olt double %95, 0xC085D32BDD7ABCD2, !dbg !873
  %97 = call i1 @fCmpInstHandler(double %95, double 0xC085D32BDD7ABCD2, i1 %96, i32 4, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @13, i32 0, i32 0), i64 94892794171920, i32 311, i32 21), !dbg !874
  br i1 %97, label %98, label %107, !dbg !874

; <label>:98:                                     ; preds = %94
  br label %99, !dbg !875, !llvm.loop !877

; <label>:99:                                     ; preds = %98
  %100 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !878
  %101 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %100, i32 0, i32 0, !dbg !878
  store double 0x7FF0000000000000, double* %101, align 8, !dbg !878
  %102 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !878
  %103 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %102, i32 0, i32 1, !dbg !878
  store double 0x7FF0000000000000, double* %103, align 8, !dbg !878
  br label %104, !dbg !878, !llvm.loop !881

; <label>:104:                                    ; preds = %99
  call void @gsl_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i32 313, i32 16), !dbg !883
  store i32 16, i32* %5, align 4, !dbg !883
  br label %221, !dbg !883
                                                  ; No predecessors!
  br label %106, !dbg !886

; <label>:106:                                    ; preds = %105
  br label %220, !dbg !888

; <label>:107:                                    ; preds = %94
  call void @llvm.dbg.declare(metadata double* %15, metadata !889, metadata !60), !dbg !891
  %108 = load double, double* %8, align 8, !dbg !892
  %109 = call double @fabs(double %108) #1, !dbg !893
  %110 = fsub double 1.000000e+00, %109, !dbg !894
  call void @fSubHandler(double 1.000000e+00, double %109, double %110, i64 0, i64 94892794182032, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @13, i32 0, i32 0), i64 94892794182544, i32 319, i32 61), !dbg !895
  %111 = call double @fabs(double %110) #1, !dbg !895
  %112 = fadd double 0x3CB0000000000000, %111, !dbg !897
  call void @fAddHandler(double 0x3CB0000000000000, double %111, double %112, i64 0, i64 94892794182992, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @13, i32 0, i32 0), i64 94892794183472, i32 319, i32 51), !dbg !898
  %113 = fdiv double 1.000000e+00, %112, !dbg !898
  call void @fDivHandler(double 1.000000e+00, double %112, double %113, i64 0, i64 94892794183472, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @13, i32 0, i32 0), i64 94892794183920, i32 319, i32 32), !dbg !891
  store double %113, double* %15, align 8, !dbg !891
  call void @llvm.dbg.declare(metadata double* %16, metadata !899, metadata !60), !dbg !900
  %114 = load i32, i32* %7, align 4, !dbg !901
  %115 = load double, double* %8, align 8, !dbg !902
  %116 = call double @legendre_Pmm(i32 %114, double %115), !dbg !903
  store double %116, double* %16, align 8, !dbg !900
  call void @llvm.dbg.declare(metadata double* %17, metadata !904, metadata !60), !dbg !905
  %117 = load double, double* %8, align 8, !dbg !906
  %118 = load i32, i32* %7, align 4, !dbg !907
  %119 = mul nsw i32 2, %118, !dbg !908
  %120 = add nsw i32 %119, 1, !dbg !909
  %121 = sitofp i32 %120 to double, !dbg !910
  %122 = fmul double %117, %121, !dbg !911
  call void @fMulHandler(double %117, double %121, double %122, i64 94892794192312, i64 94892794193880, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @13, i32 0, i32 0), i64 94892794194288, i32 323, i32 23), !dbg !912
  %123 = load double, double* %16, align 8, !dbg !912
  %124 = fmul double %122, %123, !dbg !913
  call void @fMulHandler(double %122, double %123, double %124, i64 94892794194288, i64 94892794194680, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @13, i32 0, i32 0), i64 94892794195088, i32 323, i32 35), !dbg !905
  store double %124, double* %17, align 8, !dbg !905
  %125 = load i32, i32* %6, align 4, !dbg !914
  %126 = load i32, i32* %7, align 4, !dbg !916
  %127 = icmp eq i32 %125, %126, !dbg !917
  %128 = sext i32 %125 to i64, !dbg !918
  %129 = sext i32 %126 to i64, !dbg !918
  %130 = call i1 @iCmpInstHandler(i64 %128, i64 %129, i1 %127, i32 32, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @13, i32 0, i32 0), i64 94892794197952, i32 325, i32 10), !dbg !918
  br i1 %130, label %131, label %143, !dbg !918

; <label>:131:                                    ; preds = %107
  %132 = load double, double* %16, align 8, !dbg !919
  %133 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !921
  %134 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %133, i32 0, i32 0, !dbg !922
  store double %132, double* %134, align 8, !dbg !923
  %135 = load double, double* %15, align 8, !dbg !924
  %136 = fmul double %135, 2.000000e+00, !dbg !925
  call void @fMulHandler(double %135, double 2.000000e+00, double %136, i64 94892794200632, i64 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @13, i32 0, i32 0), i64 94892794201072, i32 327, i32 29), !dbg !926
  %137 = fmul double %136, 0x3CB0000000000000, !dbg !926
  call void @fMulHandler(double %136, double 0x3CB0000000000000, double %137, i64 94892794201072, i64 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @13, i32 0, i32 0), i64 94892794201456, i32 327, i32 35), !dbg !927
  %138 = load double, double* %16, align 8, !dbg !927
  %139 = call double @fabs(double %138) #1, !dbg !928
  %140 = fmul double %137, %139, !dbg !929
  call void @fMulHandler(double %137, double %139, double %140, i64 94892794201456, i64 94892794202320, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @13, i32 0, i32 0), i64 94892794202800, i32 327, i32 53), !dbg !930
  %141 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !930
  %142 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %141, i32 0, i32 1, !dbg !931
  store double %140, double* %142, align 8, !dbg !932
  store i32 0, i32* %5, align 4, !dbg !933
  br label %221, !dbg !933

; <label>:143:                                    ; preds = %107
  %144 = load i32, i32* %6, align 4, !dbg !934
  %145 = load i32, i32* %7, align 4, !dbg !936
  %146 = add nsw i32 %145, 1, !dbg !937
  %147 = icmp eq i32 %144, %146, !dbg !938
  %148 = sext i32 %144 to i64, !dbg !939
  %149 = sext i32 %146 to i64, !dbg !939
  %150 = call i1 @iCmpInstHandler(i64 %148, i64 %149, i1 %147, i32 32, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @13, i32 0, i32 0), i64 94892794209712, i32 330, i32 15), !dbg !939
  br i1 %150, label %151, label %163, !dbg !939

; <label>:151:                                    ; preds = %143
  %152 = load double, double* %17, align 8, !dbg !940
  %153 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !942
  %154 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %153, i32 0, i32 0, !dbg !943
  store double %152, double* %154, align 8, !dbg !944
  %155 = load double, double* %15, align 8, !dbg !945
  %156 = fmul double %155, 2.000000e+00, !dbg !946
  call void @fMulHandler(double %155, double 2.000000e+00, double %156, i64 94892794212392, i64 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @13, i32 0, i32 0), i64 94892794212832, i32 332, i32 29), !dbg !947
  %157 = fmul double %156, 0x3CB0000000000000, !dbg !947
  call void @fMulHandler(double %156, double 0x3CB0000000000000, double %157, i64 94892794212832, i64 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @13, i32 0, i32 0), i64 94892794213216, i32 332, i32 35), !dbg !948
  %158 = load double, double* %17, align 8, !dbg !948
  %159 = call double @fabs(double %158) #1, !dbg !949
  %160 = fmul double %157, %159, !dbg !950
  call void @fMulHandler(double %157, double %159, double %160, i64 94892794213216, i64 94892794214080, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @13, i32 0, i32 0), i64 94892794214560, i32 332, i32 53), !dbg !951
  %161 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !951
  %162 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %161, i32 0, i32 1, !dbg !952
  store double %160, double* %162, align 8, !dbg !953
  store i32 0, i32* %5, align 4, !dbg !954
  br label %221, !dbg !954

; <label>:163:                                    ; preds = %143
  call void @llvm.dbg.declare(metadata double* %18, metadata !955, metadata !60), !dbg !957
  %164 = load double, double* %16, align 8, !dbg !958
  store double %164, double* %18, align 8, !dbg !957
  call void @llvm.dbg.declare(metadata double* %19, metadata !959, metadata !60), !dbg !960
  %165 = load double, double* %17, align 8, !dbg !961
  store double %165, double* %19, align 8, !dbg !960
  call void @llvm.dbg.declare(metadata double* %20, metadata !962, metadata !60), !dbg !963
  store double 0.000000e+00, double* %20, align 8, !dbg !963
  call void @llvm.dbg.declare(metadata i32* %21, metadata !964, metadata !60), !dbg !965
  %166 = load i32, i32* %7, align 4, !dbg !966
  %167 = add nsw i32 %166, 2, !dbg !968
  store i32 %167, i32* %21, align 4, !dbg !969
  br label %168, !dbg !970

; <label>:168:                                    ; preds = %199, %163
  %169 = load i32, i32* %21, align 4, !dbg !971
  %170 = load i32, i32* %6, align 4, !dbg !974
  %171 = icmp sle i32 %169, %170, !dbg !975
  %172 = sext i32 %169 to i64, !dbg !976
  %173 = sext i32 %170 to i64, !dbg !976
  %174 = call i1 @iCmpInstHandler(i64 %172, i64 %173, i1 %171, i32 41, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @13, i32 0, i32 0), i64 94892794230832, i32 345, i32 24), !dbg !976
  br i1 %174, label %175, label %202, !dbg !976

; <label>:175:                                    ; preds = %168
  %176 = load double, double* %8, align 8, !dbg !977
  %177 = load i32, i32* %21, align 4, !dbg !979
  %178 = mul nsw i32 2, %177, !dbg !980
  %179 = sub nsw i32 %178, 1, !dbg !981
  %180 = sitofp i32 %179 to double, !dbg !982
  %181 = fmul double %176, %180, !dbg !983
  call void @fMulHandler(double %176, double %180, double %181, i64 94892794231944, i64 94892794233480, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @13, i32 0, i32 0), i64 94892794233888, i32 346, i32 19), !dbg !984
  %182 = load double, double* %19, align 8, !dbg !984
  %183 = fmul double %181, %182, !dbg !985
  call void @fMulHandler(double %181, double %182, double %183, i64 94892794233888, i64 94892794234280, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @13, i32 0, i32 0), i64 94892794234688, i32 346, i32 29), !dbg !986
  %184 = load i32, i32* %21, align 4, !dbg !986
  %185 = load i32, i32* %7, align 4, !dbg !987
  %186 = add nsw i32 %184, %185, !dbg !988
  %187 = sub nsw i32 %186, 1, !dbg !989
  %188 = sitofp i32 %187 to double, !dbg !990
  %189 = load double, double* %18, align 8, !dbg !991
  %190 = fmul double %188, %189, !dbg !992
  call void @fMulHandler(double %188, double %189, double %190, i64 94892794236680, i64 94892794237064, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @13, i32 0, i32 0), i64 94892794237472, i32 346, i32 49), !dbg !993
  %191 = fsub double %183, %190, !dbg !993
  call void @fSubHandler(double %183, double %190, double %191, i64 94892794234688, i64 94892794237472, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @13, i32 0, i32 0), i64 94892794237888, i32 346, i32 38), !dbg !994
  %192 = load i32, i32* %21, align 4, !dbg !994
  %193 = load i32, i32* %7, align 4, !dbg !995
  %194 = sub nsw i32 %192, %193, !dbg !996
  %195 = sitofp i32 %194 to double, !dbg !997
  %196 = fdiv double %191, %195, !dbg !998
  call void @fDivHandler(double %191, double %195, double %196, i64 94892794237888, i64 94892794239464, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @13, i32 0, i32 0), i64 94892794239872, i32 346, i32 59), !dbg !999
  store double %196, double* %20, align 8, !dbg !999
  %197 = load double, double* %19, align 8, !dbg !1000
  store double %197, double* %18, align 8, !dbg !1001
  %198 = load double, double* %20, align 8, !dbg !1002
  store double %198, double* %19, align 8, !dbg !1003
  br label %199, !dbg !1004

; <label>:199:                                    ; preds = %175
  %200 = load i32, i32* %21, align 4, !dbg !1005
  %201 = add nsw i32 %200, 1, !dbg !1005
  store i32 %201, i32* %21, align 4, !dbg !1005
  br label %168, !dbg !1007, !llvm.loop !1008

; <label>:202:                                    ; preds = %168
  %203 = load double, double* %20, align 8, !dbg !1010
  %204 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1011
  %205 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %204, i32 0, i32 0, !dbg !1012
  store double %203, double* %205, align 8, !dbg !1013
  %206 = load double, double* %15, align 8, !dbg !1014
  %207 = load i32, i32* %6, align 4, !dbg !1015
  %208 = load i32, i32* %7, align 4, !dbg !1016
  %209 = sub nsw i32 %207, %208, !dbg !1017
  %210 = sitofp i32 %209 to double, !dbg !1018
  %211 = fmul double 5.000000e-01, %210, !dbg !1019
  call void @fMulHandler(double 5.000000e-01, double %210, double %211, i64 0, i64 94892794248744, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @13, i32 0, i32 0), i64 94892794249184, i32 352, i32 35), !dbg !1020
  %212 = fadd double %211, 1.000000e+00, !dbg !1020
  call void @fAddHandler(double %211, double 1.000000e+00, double %212, i64 94892794249184, i64 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @13, i32 0, i32 0), i64 94892794249600, i32 352, i32 42), !dbg !1021
  %213 = fmul double %206, %212, !dbg !1021
  call void @fMulHandler(double %206, double %212, double %213, i64 94892794247176, i64 94892794249600, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @13, i32 0, i32 0), i64 94892794249984, i32 352, i32 29), !dbg !1022
  %214 = fmul double %213, 0x3CB0000000000000, !dbg !1022
  call void @fMulHandler(double %213, double 0x3CB0000000000000, double %214, i64 94892794249984, i64 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @13, i32 0, i32 0), i64 94892794250400, i32 352, i32 49), !dbg !1023
  %215 = load double, double* %20, align 8, !dbg !1023
  %216 = call double @fabs(double %215) #1, !dbg !1024
  %217 = fmul double %214, %216, !dbg !1025
  call void @fMulHandler(double %214, double %216, double %217, i64 94892794250400, i64 94892794251264, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @13, i32 0, i32 0), i64 94892794251744, i32 352, i32 67), !dbg !1026
  %218 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1026
  %219 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %218, i32 0, i32 1, !dbg !1027
  store double %217, double* %219, align 8, !dbg !1028
  store i32 0, i32* %5, align 4, !dbg !1029
  br label %221, !dbg !1029

; <label>:220:                                    ; preds = %106
  br label %221

; <label>:221:                                    ; preds = %220, %202, %151, %131, %104, %93, %91
  %222 = load i32, i32* %5, align 4, !dbg !1030
  ret i32 %222, !dbg !1030
}

; Function Attrs: nounwind
declare double @log(double) #4

; Function Attrs: nounwind uwtable
define internal double @legendre_Pmm(i32, double) #0 !dbg !1031 {
  %3 = alloca double, align 8
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1034, metadata !60), !dbg !1035
  store double %1, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !1036, metadata !60), !dbg !1037
  %10 = load i32, i32* %4, align 4, !dbg !1038
  %11 = icmp eq i32 %10, 0, !dbg !1040
  %12 = sext i32 %10 to i64, !dbg !1041
  %13 = call i1 @iCmpInstHandler(i64 %12, i64 0, i1 %11, i32 32, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @15, i32 0, i32 0), i64 94892794259856, i32 42, i32 8), !dbg !1041
  br i1 %13, label %14, label %15, !dbg !1041

; <label>:14:                                     ; preds = %2
  store double 1.000000e+00, double* %3, align 8, !dbg !1042
  br label %44, !dbg !1042

; <label>:15:                                     ; preds = %2
  call void @llvm.dbg.declare(metadata double* %6, metadata !1044, metadata !60), !dbg !1046
  store double 1.000000e+00, double* %6, align 8, !dbg !1046
  call void @llvm.dbg.declare(metadata double* %7, metadata !1047, metadata !60), !dbg !1048
  %16 = load double, double* %5, align 8, !dbg !1049
  %17 = fsub double 1.000000e+00, %16, !dbg !1050
  call void @fSubHandler(double 1.000000e+00, double %16, double %17, i64 0, i64 94892794266840, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @15, i32 0, i32 0), i64 94892794267248, i32 49, i32 34), !dbg !1051
  %18 = call double @sqrt(double %17) #5, !dbg !1051
  call void @callOneArgHandler(i32 14, double %17, double %18, i64 94892794267248, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @15, i32 0, i32 0), i64 94892794267696, i32 49, i32 26), !dbg !1052
  %19 = load double, double* %5, align 8, !dbg !1052
  %20 = fadd double 1.000000e+00, %19, !dbg !1053
  call void @fAddHandler(double 1.000000e+00, double %19, double %20, i64 0, i64 94892794268152, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @15, i32 0, i32 0), i64 94892794268592, i32 49, i32 46), !dbg !1054
  %21 = call double @sqrt(double %20) #5, !dbg !1054
  call void @callOneArgHandler(i32 14, double %20, double %21, i64 94892794268592, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @15, i32 0, i32 0), i64 94892794205264, i32 49, i32 38), !dbg !1056
  %22 = fmul double %18, %21, !dbg !1056
  call void @fMulHandler(double %18, double %21, double %22, i64 94892794267696, i64 94892794205264, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @15, i32 0, i32 0), i64 94892794269376, i32 49, i32 37), !dbg !1048
  store double %22, double* %7, align 8, !dbg !1048
  call void @llvm.dbg.declare(metadata double* %8, metadata !1057, metadata !60), !dbg !1058
  store double 1.000000e+00, double* %8, align 8, !dbg !1058
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1059, metadata !60), !dbg !1060
  store i32 1, i32* %9, align 4, !dbg !1061
  br label %23, !dbg !1063

; <label>:23:                                     ; preds = %39, %15
  %24 = load i32, i32* %9, align 4, !dbg !1064
  %25 = load i32, i32* %4, align 4, !dbg !1067
  %26 = icmp sle i32 %24, %25, !dbg !1068
  %27 = sext i32 %24 to i64, !dbg !1069
  %28 = sext i32 %25 to i64, !dbg !1069
  %29 = call i1 @iCmpInstHandler(i64 %27, i64 %28, i1 %26, i32 41, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @15, i32 0, i32 0), i64 94892794276976, i32 52, i32 15), !dbg !1069
  br i1 %29, label %30, label %42, !dbg !1069

; <label>:30:                                     ; preds = %23
  %31 = load double, double* %8, align 8, !dbg !1070
  %32 = fsub double -0.000000e+00, %31, !dbg !1072
  call void @fSubHandler(double -0.000000e+00, double %31, double %32, i64 0, i64 94892794278088, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @15, i32 0, i32 0), i64 94892794278496, i32 54, i32 15), !dbg !1073
  %33 = load double, double* %7, align 8, !dbg !1073
  %34 = fmul double %32, %33, !dbg !1074
  call void @fMulHandler(double %32, double %33, double %34, i64 94892794278496, i64 94892794278888, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @15, i32 0, i32 0), i64 94892794279296, i32 54, i32 27), !dbg !1075
  %35 = load double, double* %6, align 8, !dbg !1075
  %36 = fmul double %35, %34, !dbg !1075
  call void @fMulHandler(double %35, double %34, double %36, i64 94892794279688, i64 94892794279296, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @15, i32 0, i32 0), i64 94892794280096, i32 54, i32 12), !dbg !1075
  store double %36, double* %6, align 8, !dbg !1075
  %37 = load double, double* %8, align 8, !dbg !1076
  %38 = fadd double %37, 2.000000e+00, !dbg !1076
  call void @fAddHandler(double %37, double 2.000000e+00, double %38, i64 94892794281880, i64 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @15, i32 0, i32 0), i64 94892794282320, i32 55, i32 18), !dbg !1076
  store double %38, double* %8, align 8, !dbg !1076
  br label %39, !dbg !1077

; <label>:39:                                     ; preds = %30
  %40 = load i32, i32* %9, align 4, !dbg !1078
  %41 = add nsw i32 %40, 1, !dbg !1078
  store i32 %41, i32* %9, align 4, !dbg !1078
  br label %23, !dbg !1080, !llvm.loop !1081

; <label>:42:                                     ; preds = %23
  %43 = load double, double* %6, align 8, !dbg !1083
  store double %43, double* %3, align 8, !dbg !1084
  br label %44, !dbg !1084

; <label>:44:                                     ; preds = %42, %14
  %45 = load double, double* %3, align 8, !dbg !1085
  ret double %45, !dbg !1085
}

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_legendre_sphPlm_e(i32, i32, double, %struct.gsl_sf_result_struct*) #0 !dbg !1086 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca %struct.gsl_sf_result_struct*, align 8
  %10 = alloca %struct.gsl_sf_result_struct, align 8
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
  %13 = alloca %struct.gsl_sf_result_struct, align 8
  %14 = alloca %struct.gsl_sf_result_struct, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca %struct.gsl_sf_result_struct, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  %22 = alloca double, align 8
  %23 = alloca double, align 8
  %24 = alloca double, align 8
  %25 = alloca double, align 8
  %26 = alloca double, align 8
  %27 = alloca i32, align 4
  %28 = alloca double, align 8
  %29 = alloca double, align 8
  %30 = alloca double, align 8
  %31 = alloca double, align 8
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1089, metadata !60), !dbg !1090
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1091, metadata !60), !dbg !1092
  store double %2, double* %8, align 8
  call void @llvm.dbg.declare(metadata double* %8, metadata !1093, metadata !60), !dbg !1094
  store %struct.gsl_sf_result_struct* %3, %struct.gsl_sf_result_struct** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %9, metadata !1095, metadata !60), !dbg !1096
  %32 = load i32, i32* %7, align 4, !dbg !1097
  %33 = icmp slt i32 %32, 0, !dbg !1099
  %34 = sext i32 %32 to i64, !dbg !1100
  %35 = call i1 @iCmpInstHandler(i64 %34, i64 0, i1 %33, i32 40, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @17, i32 0, i32 0), i64 94892794301072, i32 364, i32 8), !dbg !1100
  br i1 %35, label %51, label %36, !dbg !1100

; <label>:36:                                     ; preds = %4
  %37 = load i32, i32* %6, align 4, !dbg !1101
  %38 = load i32, i32* %7, align 4, !dbg !1103
  %39 = icmp slt i32 %37, %38, !dbg !1104
  %40 = sext i32 %37 to i64, !dbg !1105
  %41 = sext i32 %38 to i64, !dbg !1105
  %42 = call i1 @iCmpInstHandler(i64 %40, i64 %41, i1 %39, i32 40, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @17, i32 0, i32 0), i64 94892794302912, i32 364, i32 17), !dbg !1105
  br i1 %42, label %51, label %43, !dbg !1105

; <label>:43:                                     ; preds = %36
  %44 = load double, double* %8, align 8, !dbg !1106
  %45 = fcmp olt double %44, -1.000000e+00, !dbg !1108
  %46 = call i1 @fCmpInstHandler(double %44, double -1.000000e+00, i1 %45, i32 4, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @17, i32 0, i32 0), i64 94892794304256, i32 364, i32 26), !dbg !1109
  br i1 %46, label %51, label %47, !dbg !1109

; <label>:47:                                     ; preds = %43
  %48 = load double, double* %8, align 8, !dbg !1110
  %49 = fcmp ogt double %48, 1.000000e+00, !dbg !1112
  %50 = call i1 @fCmpInstHandler(double %48, double 1.000000e+00, i1 %49, i32 2, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @17, i32 0, i32 0), i64 94892794305568, i32 364, i32 38), !dbg !1113
  br i1 %50, label %51, label %60, !dbg !1113

; <label>:51:                                     ; preds = %47, %43, %36, %4
  br label %52, !dbg !1114, !llvm.loop !1116

; <label>:52:                                     ; preds = %51
  %53 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1117
  %54 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %53, i32 0, i32 0, !dbg !1117
  store double 0x7FF8000000000000, double* %54, align 8, !dbg !1117
  %55 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1117
  %56 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %55, i32 0, i32 1, !dbg !1117
  store double 0x7FF8000000000000, double* %56, align 8, !dbg !1117
  br label %57, !dbg !1117, !llvm.loop !1120

; <label>:57:                                     ; preds = %52
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i32 365, i32 1), !dbg !1122
  store i32 1, i32* %5, align 4, !dbg !1122
  br label %367, !dbg !1122
                                                  ; No predecessors!
  br label %59, !dbg !1125

; <label>:59:                                     ; preds = %58
  br label %367, !dbg !1127

; <label>:60:                                     ; preds = %47
  %61 = load i32, i32* %7, align 4, !dbg !1128
  %62 = icmp eq i32 %61, 0, !dbg !1130
  %63 = sext i32 %61 to i64, !dbg !1131
  %64 = call i1 @iCmpInstHandler(i64 %63, i64 0, i1 %62, i32 32, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @17, i32 0, i32 0), i64 94892794314096, i32 367, i32 13), !dbg !1131
  br i1 %64, label %65, label %97, !dbg !1131

; <label>:65:                                     ; preds = %60
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %10, metadata !1132, metadata !60), !dbg !1134
  call void @llvm.dbg.declare(metadata i32* %11, metadata !1135, metadata !60), !dbg !1136
  %66 = load i32, i32* %6, align 4, !dbg !1137
  %67 = load double, double* %8, align 8, !dbg !1138
  %68 = call i32 @gsl_sf_legendre_Pl_e(i32 %66, double %67, %struct.gsl_sf_result_struct* %10), !dbg !1139
  store i32 %68, i32* %11, align 4, !dbg !1136
  call void @llvm.dbg.declare(metadata double* %12, metadata !1140, metadata !60), !dbg !1141
  %69 = load i32, i32* %6, align 4, !dbg !1142
  %70 = sitofp i32 %69 to double, !dbg !1142
  %71 = fmul double 2.000000e+00, %70, !dbg !1143
  call void @fMulHandler(double 2.000000e+00, double %70, double %71, i64 0, i64 94892794321800, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @17, i32 0, i32 0), i64 94892794323504, i32 370, i32 27), !dbg !1144
  %72 = fadd double %71, 1.000000e+00, !dbg !1144
  call void @fAddHandler(double %71, double 1.000000e+00, double %72, i64 94892794323504, i64 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @17, i32 0, i32 0), i64 94892794323920, i32 370, i32 30), !dbg !1145
  %73 = fdiv double %72, 0x402921FB54442D18, !dbg !1145
  call void @fDivHandler(double %72, double 0x402921FB54442D18, double %73, i64 94892794323920, i64 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @17, i32 0, i32 0), i64 94892794324368, i32 370, i32 36), !dbg !1146
  %74 = call double @sqrt(double %73) #5, !dbg !1146
  call void @callOneArgHandler(i32 14, double %73, double %74, i64 94892794324368, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @17, i32 0, i32 0), i64 94892794324848, i32 370, i32 18), !dbg !1141
  store double %74, double* %12, align 8, !dbg !1141
  %75 = load double, double* %12, align 8, !dbg !1147
  %76 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !1148
  %77 = load double, double* %76, align 8, !dbg !1148
  %78 = fmul double %75, %77, !dbg !1149
  call void @fMulHandler(double %75, double %77, double %78, i64 94892794326984, i64 94892794327816, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @17, i32 0, i32 0), i64 94892794329488, i32 371, i32 24), !dbg !1150
  %79 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1150
  %80 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %79, i32 0, i32 0, !dbg !1151
  store double %78, double* %80, align 8, !dbg !1152
  %81 = load double, double* %12, align 8, !dbg !1153
  %82 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 1, !dbg !1154
  %83 = load double, double* %82, align 8, !dbg !1154
  %84 = fmul double %81, %83, !dbg !1155
  call void @fMulHandler(double %81, double %83, double %84, i64 94892794331128, i64 94892794331960, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @17, i32 0, i32 0), i64 94892794333632, i32 372, i32 24), !dbg !1156
  %85 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1156
  %86 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %85, i32 0, i32 1, !dbg !1157
  store double %84, double* %86, align 8, !dbg !1158
  %87 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1159
  %88 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %87, i32 0, i32 0, !dbg !1160
  %89 = load double, double* %88, align 8, !dbg !1160
  %90 = call double @fabs(double %89) #1, !dbg !1161
  %91 = fmul double 0x3CC0000000000000, %90, !dbg !1162
  call void @fMulHandler(double 0x3CC0000000000000, double %90, double %91, i64 0, i64 94892794337840, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @17, i32 0, i32 0), i64 94892794338384, i32 373, i32 42), !dbg !1163
  %92 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1163
  %93 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %92, i32 0, i32 1, !dbg !1164
  %94 = load double, double* %93, align 8, !dbg !1165
  %95 = fadd double %94, %91, !dbg !1165
  call void @fAddHandler(double %94, double %91, double %95, i64 94892794339608, i64 94892794338384, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @17, i32 0, i32 0), i64 94892794340016, i32 373, i32 17), !dbg !1165
  store double %95, double* %93, align 8, !dbg !1165
  %96 = load i32, i32* %11, align 4, !dbg !1166
  store i32 %96, i32* %5, align 4, !dbg !1167
  br label %367, !dbg !1167

; <label>:97:                                     ; preds = %60
  %98 = load double, double* %8, align 8, !dbg !1168
  %99 = fcmp oeq double %98, 1.000000e+00, !dbg !1170
  %100 = call i1 @fCmpInstHandler(double %98, double 1.000000e+00, i1 %99, i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @17, i32 0, i32 0), i64 94892794344624, i32 376, i32 13), !dbg !1171
  br i1 %100, label %105, label %101, !dbg !1171

; <label>:101:                                    ; preds = %97
  %102 = load double, double* %8, align 8, !dbg !1172
  %103 = fcmp oeq double %102, -1.000000e+00, !dbg !1174
  %104 = call i1 @fCmpInstHandler(double %102, double -1.000000e+00, i1 %103, i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @17, i32 0, i32 0), i64 94892794346080, i32 376, i32 25), !dbg !1175
  br i1 %104, label %105, label %110, !dbg !1175

; <label>:105:                                    ; preds = %101, %97
  %106 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1176
  %107 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %106, i32 0, i32 0, !dbg !1178
  store double 0.000000e+00, double* %107, align 8, !dbg !1179
  %108 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1180
  %109 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %108, i32 0, i32 1, !dbg !1181
  store double 0.000000e+00, double* %109, align 8, !dbg !1182
  store i32 0, i32* %5, align 4, !dbg !1183
  br label %367, !dbg !1183

; <label>:110:                                    ; preds = %101
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %13, metadata !1184, metadata !60), !dbg !1186
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %14, metadata !1187, metadata !60), !dbg !1188
  call void @llvm.dbg.declare(metadata double* %15, metadata !1189, metadata !60), !dbg !1190
  call void @llvm.dbg.declare(metadata double* %16, metadata !1191, metadata !60), !dbg !1192
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %17, metadata !1193, metadata !60), !dbg !1194
  call void @llvm.dbg.declare(metadata double* %18, metadata !1195, metadata !60), !dbg !1196
  call void @llvm.dbg.declare(metadata double* %19, metadata !1197, metadata !60), !dbg !1198
  %111 = load i32, i32* %7, align 4, !dbg !1199
  %112 = and i32 %111, 1, !dbg !1199
  %113 = icmp ne i32 %112, 0, !dbg !1199
  %114 = sext i32 %112 to i64, !dbg !1199
  %115 = call i1 @iCmpInstHandler(i64 %114, i64 0, i1 %113, i32 33, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @17, i32 0, i32 0), i64 94892794361152, i32 394, i32 26), !dbg !1199
  %116 = select i1 %115, double -1.000000e+00, double 1.000000e+00, !dbg !1199
  store double %116, double* %19, align 8, !dbg !1198
  call void @llvm.dbg.declare(metadata double* %20, metadata !1200, metadata !60), !dbg !1201
  %117 = load double, double* %8, align 8, !dbg !1202
  %118 = load i32, i32* %7, align 4, !dbg !1203
  %119 = sitofp i32 %118 to double, !dbg !1203
  %120 = fmul double 2.000000e+00, %119, !dbg !1204
  call void @fMulHandler(double 2.000000e+00, double %119, double %120, i64 0, i64 94892794364936, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @17, i32 0, i32 0), i64 94892794366640, i32 395, i32 46), !dbg !1205
  %121 = fadd double %120, 3.000000e+00, !dbg !1205
  call void @fAddHandler(double %120, double 3.000000e+00, double %121, i64 94892794366640, i64 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @17, i32 0, i32 0), i64 94892794367056, i32 395, i32 49), !dbg !1206
  %122 = call double @sqrt(double %121) #5, !dbg !1206
  call void @callOneArgHandler(i32 14, double %121, double %122, i64 94892794367056, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @17, i32 0, i32 0), i64 94892794367504, i32 395, i32 38), !dbg !1207
  %123 = fmul double %117, %122, !dbg !1207
  call void @fMulHandler(double %117, double %122, double %123, i64 94892794364200, i64 94892794367504, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @17, i32 0, i32 0), i64 94892794367984, i32 395, i32 36), !dbg !1201
  store double %123, double* %20, align 8, !dbg !1201
  call void @llvm.dbg.declare(metadata double* %21, metadata !1208, metadata !60), !dbg !1209
  call void @llvm.dbg.declare(metadata double* %22, metadata !1210, metadata !60), !dbg !1211
  call void @llvm.dbg.declare(metadata double* %23, metadata !1212, metadata !60), !dbg !1213
  call void @llvm.dbg.declare(metadata double* %24, metadata !1214, metadata !60), !dbg !1215
  %124 = load double, double* %8, align 8, !dbg !1216
  %125 = fsub double -0.000000e+00, %124, !dbg !1217
  call void @fSubHandler(double -0.000000e+00, double %124, double %125, i64 0, i64 94892794374440, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @17, i32 0, i32 0), i64 94892794374816, i32 398, i32 25), !dbg !1218
  %126 = load double, double* %8, align 8, !dbg !1218
  %127 = fmul double %125, %126, !dbg !1219
  call void @fMulHandler(double %125, double %126, double %127, i64 94892794374816, i64 94892794375208, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @17, i32 0, i32 0), i64 94892794375616, i32 398, i32 27), !dbg !1220
  %128 = call i32 @gsl_sf_log_1plusx_e(double %127, %struct.gsl_sf_result_struct* %13), !dbg !1220
  %129 = load i32, i32* %7, align 4, !dbg !1221
  %130 = sitofp i32 %129 to double, !dbg !1221
  %131 = call i32 @gsl_sf_lnpoch_e(double %130, double 5.000000e-01, %struct.gsl_sf_result_struct* %14), !dbg !1222
  %132 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 0, !dbg !1223
  %133 = load double, double* %132, align 8, !dbg !1223
  %134 = load i32, i32* %7, align 4, !dbg !1224
  %135 = sitofp i32 %134 to double, !dbg !1224
  %136 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %13, i32 0, i32 0, !dbg !1225
  %137 = load double, double* %136, align 8, !dbg !1225
  %138 = fmul double %135, %137, !dbg !1226
  call void @fMulHandler(double %135, double %137, double %138, i64 94892794382280, i64 94892794384376, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @17, i32 0, i32 0), i64 94892794386048, i32 400, i32 53), !dbg !1227
  %139 = fadd double %133, %138, !dbg !1227
  call void @fAddHandler(double %133, double %138, double %139, i64 94892794380248, i64 94892794386048, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @17, i32 0, i32 0), i64 94892794386464, i32 400, i32 50), !dbg !1228
  %140 = fmul double 5.000000e-01, %139, !dbg !1228
  call void @fMulHandler(double 5.000000e-01, double %139, double %140, i64 0, i64 94892794386464, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @17, i32 0, i32 0), i64 94892794386912, i32 400, i32 36), !dbg !1229
  %141 = fadd double 0xBFD250D048E7A1BD, %140, !dbg !1229
  call void @fAddHandler(double 0xBFD250D048E7A1BD, double %140, double %141, i64 0, i64 94892794386912, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @17, i32 0, i32 0), i64 94892794387360, i32 400, i32 30), !dbg !1230
  store double %141, double* %15, align 8, !dbg !1230
  %142 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 1, !dbg !1231
  %143 = load double, double* %142, align 8, !dbg !1231
  %144 = load i32, i32* %7, align 4, !dbg !1232
  %145 = sitofp i32 %144 to double, !dbg !1232
  %146 = call double @fabs(double %145) #1, !dbg !1233
  %147 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %13, i32 0, i32 1, !dbg !1234
  %148 = load double, double* %147, align 8, !dbg !1234
  %149 = fmul double %146, %148, !dbg !1235
  call void @fMulHandler(double %146, double %148, double %149, i64 94892794394448, i64 94892794395352, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @17, i32 0, i32 0), i64 94892794397024, i32 401, i32 74), !dbg !1236
  %150 = fadd double %143, %149, !dbg !1236
  call void @fAddHandler(double %143, double %149, double %150, i64 94892794390680, i64 94892794397024, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @17, i32 0, i32 0), i64 94892794397440, i32 401, i32 65), !dbg !1237
  %151 = fmul double 5.000000e-01, %150, !dbg !1237
  call void @fMulHandler(double 5.000000e-01, double %150, double %151, i64 0, i64 94892794397440, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @17, i32 0, i32 0), i64 94892794397888, i32 401, i32 51), !dbg !1238
  %152 = fadd double 0x3C9250D048E7A1BD, %151, !dbg !1238
  call void @fAddHandler(double 0x3C9250D048E7A1BD, double %151, double %152, i64 0, i64 94892794397888, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @17, i32 0, i32 0), i64 94892794398336, i32 401, i32 45), !dbg !1239
  store double %152, double* %16, align 8, !dbg !1239
  %153 = load double, double* %15, align 8, !dbg !1240
  %154 = call double @exp(double %153) #5, !dbg !1241
  call void @callOneArgHandler(i32 11, double %153, double %154, i64 94892794399144, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @17, i32 0, i32 0), i64 94892794399936, i32 403, i32 18), !dbg !1242
  %155 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %17, i32 0, i32 0, !dbg !1242
  store double %154, double* %155, align 8, !dbg !1243
  %156 = load double, double* %16, align 8, !dbg !1244
  %157 = call double @sinh(double %156) #5, !dbg !1245
  call void @callOneArgHandler(i32 8, double %156, double %157, i64 94892794401288, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @17, i32 0, i32 0), i64 94892794402080, i32 404, i32 23), !dbg !1246
  %158 = fadd double %157, 0x3CB0000000000000, !dbg !1246
  call void @fAddHandler(double %157, double 0x3CB0000000000000, double %158, i64 94892794402080, i64 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @17, i32 0, i32 0), i64 94892794402592, i32 404, i32 39), !dbg !1247
  %159 = fmul double 2.000000e+00, %158, !dbg !1247
  call void @fMulHandler(double 2.000000e+00, double %158, double %159, i64 0, i64 94892794402592, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @17, i32 0, i32 0), i64 94892794403040, i32 404, i32 21), !dbg !1248
  %160 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %17, i32 0, i32 0, !dbg !1248
  %161 = load double, double* %160, align 8, !dbg !1248
  %162 = fmul double %159, %161, !dbg !1249
  call void @fMulHandler(double %159, double %161, double %162, i64 94892794403040, i64 94892794403848, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @17, i32 0, i32 0), i64 94892794405520, i32 404, i32 57), !dbg !1250
  %163 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %17, i32 0, i32 1, !dbg !1250
  store double %162, double* %163, align 8, !dbg !1251
  %164 = load i32, i32* %7, align 4, !dbg !1252
  %165 = sitofp i32 %164 to double, !dbg !1252
  %166 = fdiv double 1.000000e+00, %165, !dbg !1253
  call void @fDivHandler(double 1.000000e+00, double %165, double %166, i64 0, i64 94892794407160, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @17, i32 0, i32 0), i64 94892794408864, i32 405, i32 27), !dbg !1254
  %167 = fadd double 2.000000e+00, %166, !dbg !1254
  call void @fAddHandler(double 2.000000e+00, double %166, double %167, i64 0, i64 94892794408864, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @17, i32 0, i32 0), i64 94892794409280, i32 405, i32 23), !dbg !1255
  %168 = fdiv double %167, 0x402921FB54442D18, !dbg !1255
  call void @fDivHandler(double %167, double 0x402921FB54442D18, double %168, i64 94892794409280, i64 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @17, i32 0, i32 0), i64 94892794409664, i32 405, i32 30), !dbg !1256
  %169 = call double @sqrt(double %168) #5, !dbg !1256
  call void @callOneArgHandler(i32 14, double %168, double %169, i64 94892794409664, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @17, i32 0, i32 0), i64 94892794410144, i32 405, i32 14), !dbg !1257
  store double %169, double* %18, align 8, !dbg !1257
  %170 = load double, double* %19, align 8, !dbg !1258
  %171 = load double, double* %18, align 8, !dbg !1259
  %172 = fmul double %170, %171, !dbg !1260
  call void @fMulHandler(double %170, double %171, double %172, i64 94892794411016, i64 94892794411400, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @17, i32 0, i32 0), i64 94892794411808, i32 406, i32 18), !dbg !1261
  %173 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %17, i32 0, i32 0, !dbg !1261
  %174 = load double, double* %173, align 8, !dbg !1261
  %175 = fmul double %172, %174, !dbg !1262
  call void @fMulHandler(double %172, double %174, double %175, i64 94892794411808, i64 94892794412648, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @17, i32 0, i32 0), i64 94892794414320, i32 406, i32 23), !dbg !1263
  store double %175, double* %21, align 8, !dbg !1263
  %176 = load double, double* %21, align 8, !dbg !1264
  %177 = call double @fabs(double %176) #1, !dbg !1265
  %178 = fmul double 0x3CC0000000000000, %177, !dbg !1266
  call void @fMulHandler(double 0x3CC0000000000000, double %177, double %178, i64 0, i64 94892794415600, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @17, i32 0, i32 0), i64 94892794416080, i32 407, i32 39), !dbg !1267
  %179 = load double, double* %18, align 8, !dbg !1267
  %180 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %17, i32 0, i32 1, !dbg !1268
  %181 = load double, double* %180, align 8, !dbg !1268
  %182 = fmul double %179, %181, !dbg !1269
  call void @fMulHandler(double %179, double %181, double %182, i64 94892794416472, i64 94892794417304, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @17, i32 0, i32 0), i64 94892794418976, i32 407, i32 57), !dbg !1270
  %183 = fadd double %178, %182, !dbg !1270
  call void @fAddHandler(double %178, double %182, double %183, i64 94892794416080, i64 94892794418976, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @17, i32 0, i32 0), i64 94892794419392, i32 407, i32 52), !dbg !1271
  store double %183, double* %22, align 8, !dbg !1271
  %184 = load double, double* %8, align 8, !dbg !1272
  %185 = fsub double 1.000000e+00, %184, !dbg !1273
  call void @fSubHandler(double 1.000000e+00, double %184, double %185, i64 0, i64 94892794420200, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @17, i32 0, i32 0), i64 94892794420640, i32 408, i32 54), !dbg !1274
  %186 = call double @fabs(double %185) #1, !dbg !1274
  %187 = fadd double 0x3CB0000000000000, %186, !dbg !1275
  call void @fAddHandler(double 0x3CB0000000000000, double %186, double %187, i64 0, i64 94892794421088, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @17, i32 0, i32 0), i64 94892794421568, i32 408, i32 44), !dbg !1276
  %188 = fdiv double 1.000000e+00, %187, !dbg !1276
  call void @fDivHandler(double 1.000000e+00, double %187, double %188, i64 0, i64 94892794421568, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @17, i32 0, i32 0), i64 94892794422016, i32 408, i32 26), !dbg !1277
  %189 = fadd double 1.000000e+00, %188, !dbg !1277
  call void @fAddHandler(double 1.000000e+00, double %188, double %189, i64 0, i64 94892794422016, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @17, i32 0, i32 0), i64 94892794422432, i32 408, i32 21), !dbg !1278
  %190 = load double, double* %22, align 8, !dbg !1278
  %191 = fmul double %190, %189, !dbg !1278
  call void @fMulHandler(double %190, double %189, double %191, i64 94892794422792, i64 94892794422432, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @17, i32 0, i32 0), i64 94892794423200, i32 408, i32 14), !dbg !1278
  store double %191, double* %22, align 8, !dbg !1278
  %192 = load double, double* %20, align 8, !dbg !1279
  %193 = load double, double* %21, align 8, !dbg !1280
  %194 = fmul double %192, %193, !dbg !1281
  call void @fMulHandler(double %192, double %193, double %194, i64 94892794424984, i64 94892794425368, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @17, i32 0, i32 0), i64 94892794425776, i32 409, i32 28), !dbg !1282
  store double %194, double* %23, align 8, !dbg !1282
  %195 = load double, double* %20, align 8, !dbg !1283
  %196 = call double @fabs(double %195) #1, !dbg !1284
  %197 = load double, double* %22, align 8, !dbg !1285
  %198 = fmul double %196, %197, !dbg !1286
  call void @fMulHandler(double %196, double %197, double %198, i64 94892794427056, i64 94892794427512, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @17, i32 0, i32 0), i64 94892794427920, i32 410, i32 36), !dbg !1287
  store double %198, double* %24, align 8, !dbg !1287
  %199 = load i32, i32* %6, align 4, !dbg !1288
  %200 = load i32, i32* %7, align 4, !dbg !1290
  %201 = icmp eq i32 %199, %200, !dbg !1291
  %202 = sext i32 %199 to i64, !dbg !1292
  %203 = sext i32 %200 to i64, !dbg !1292
  %204 = call i1 @iCmpInstHandler(i64 %202, i64 %203, i1 %201, i32 32, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @17, i32 0, i32 0), i64 94892794429520, i32 412, i32 10), !dbg !1292
  br i1 %204, label %205, label %219, !dbg !1292

; <label>:205:                                    ; preds = %110
  %206 = load double, double* %21, align 8, !dbg !1293
  %207 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1295
  %208 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %207, i32 0, i32 0, !dbg !1296
  store double %206, double* %208, align 8, !dbg !1297
  %209 = load double, double* %22, align 8, !dbg !1298
  %210 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1299
  %211 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %210, i32 0, i32 1, !dbg !1300
  store double %209, double* %211, align 8, !dbg !1301
  %212 = load double, double* %21, align 8, !dbg !1302
  %213 = call double @fabs(double %212) #1, !dbg !1303
  %214 = fmul double 0x3CC0000000000000, %213, !dbg !1304
  call void @fMulHandler(double 0x3CC0000000000000, double %213, double %214, i64 0, i64 94892794434304, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @17, i32 0, i32 0), i64 94892794434784, i32 415, i32 44), !dbg !1305
  %215 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1305
  %216 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %215, i32 0, i32 1, !dbg !1306
  %217 = load double, double* %216, align 8, !dbg !1307
  %218 = fadd double %217, %214, !dbg !1307
  call void @fAddHandler(double %217, double %214, double %218, i64 94892794436008, i64 94892794434784, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @17, i32 0, i32 0), i64 94892794436416, i32 415, i32 19), !dbg !1307
  store double %218, double* %216, align 8, !dbg !1307
  store i32 0, i32* %5, align 4, !dbg !1308
  br label %367, !dbg !1308

; <label>:219:                                    ; preds = %110
  %220 = load i32, i32* %6, align 4, !dbg !1309
  %221 = load i32, i32* %7, align 4, !dbg !1311
  %222 = add nsw i32 %221, 1, !dbg !1312
  %223 = icmp eq i32 %220, %222, !dbg !1313
  %224 = sext i32 %220 to i64, !dbg !1314
  %225 = sext i32 %222 to i64, !dbg !1314
  %226 = call i1 @iCmpInstHandler(i64 %224, i64 %225, i1 %223, i32 32, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @17, i32 0, i32 0), i64 94892794441408, i32 418, i32 15), !dbg !1314
  br i1 %226, label %227, label %241, !dbg !1314

; <label>:227:                                    ; preds = %219
  %228 = load double, double* %23, align 8, !dbg !1315
  %229 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1317
  %230 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %229, i32 0, i32 0, !dbg !1318
  store double %228, double* %230, align 8, !dbg !1319
  %231 = load double, double* %24, align 8, !dbg !1320
  %232 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1321
  %233 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %232, i32 0, i32 1, !dbg !1322
  store double %231, double* %233, align 8, !dbg !1323
  %234 = load double, double* %23, align 8, !dbg !1324
  %235 = call double @fabs(double %234) #1, !dbg !1325
  %236 = fmul double 0x3CC0000000000000, %235, !dbg !1326
  call void @fMulHandler(double 0x3CC0000000000000, double %235, double %236, i64 0, i64 94892794446192, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @17, i32 0, i32 0), i64 94892794446672, i32 421, i32 44), !dbg !1327
  %237 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1327
  %238 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %237, i32 0, i32 1, !dbg !1328
  %239 = load double, double* %238, align 8, !dbg !1329
  %240 = fadd double %239, %236, !dbg !1329
  call void @fAddHandler(double %239, double %236, double %240, i64 94892794447896, i64 94892794446672, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @17, i32 0, i32 0), i64 94892794448304, i32 421, i32 19), !dbg !1329
  store double %240, double* %238, align 8, !dbg !1329
  store i32 0, i32* %5, align 4, !dbg !1330
  br label %367, !dbg !1330

; <label>:241:                                    ; preds = %219
  call void @llvm.dbg.declare(metadata double* %25, metadata !1331, metadata !60), !dbg !1333
  store double 0.000000e+00, double* %25, align 8, !dbg !1333
  call void @llvm.dbg.declare(metadata double* %26, metadata !1334, metadata !60), !dbg !1335
  store double 0.000000e+00, double* %26, align 8, !dbg !1335
  call void @llvm.dbg.declare(metadata i32* %27, metadata !1336, metadata !60), !dbg !1337
  %242 = load i32, i32* %7, align 4, !dbg !1338
  %243 = add nsw i32 %242, 2, !dbg !1340
  store i32 %243, i32* %27, align 4, !dbg !1341
  br label %244, !dbg !1342

; <label>:244:                                    ; preds = %346, %241
  %245 = load i32, i32* %27, align 4, !dbg !1343
  %246 = load i32, i32* %6, align 4, !dbg !1346
  %247 = icmp sle i32 %245, %246, !dbg !1347
  %248 = sext i32 %245 to i64, !dbg !1348
  %249 = sext i32 %246 to i64, !dbg !1348
  %250 = call i1 @iCmpInstHandler(i64 %248, i64 %249, i1 %247, i32 41, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @17, i32 0, i32 0), i64 94892794461280, i32 430, i32 24), !dbg !1348
  br i1 %250, label %251, label %349, !dbg !1348

; <label>:251:                                    ; preds = %244
  call void @llvm.dbg.declare(metadata double* %28, metadata !1349, metadata !60), !dbg !1351
  %252 = load i32, i32* %27, align 4, !dbg !1352
  %253 = load i32, i32* %7, align 4, !dbg !1353
  %254 = sub nsw i32 %252, %253, !dbg !1354
  %255 = sitofp i32 %254 to double, !dbg !1355
  %256 = load i32, i32* %27, align 4, !dbg !1356
  %257 = load i32, i32* %7, align 4, !dbg !1357
  %258 = add nsw i32 %256, %257, !dbg !1358
  %259 = sitofp i32 %258 to double, !dbg !1359
  %260 = fdiv double %255, %259, !dbg !1360
  call void @fDivHandler(double %255, double %259, double %260, i64 94892794464600, i64 94892794466168, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @17, i32 0, i32 0), i64 94892794466576, i32 431, i32 44), !dbg !1351
  store double %260, double* %28, align 8, !dbg !1351
  call void @llvm.dbg.declare(metadata double* %29, metadata !1361, metadata !60), !dbg !1362
  %261 = load i32, i32* %27, align 4, !dbg !1363
  %262 = load i32, i32* %7, align 4, !dbg !1364
  %263 = sub nsw i32 %261, %262, !dbg !1365
  %264 = sitofp i32 %263 to double, !dbg !1363
  %265 = fsub double %264, 1.000000e+00, !dbg !1366
  call void @fSubHandler(double %264, double 1.000000e+00, double %265, i64 94892794470920, i64 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @17, i32 0, i32 0), i64 94892794472624, i32 432, i32 35), !dbg !1367
  %266 = load i32, i32* %27, align 4, !dbg !1367
  %267 = load i32, i32* %7, align 4, !dbg !1368
  %268 = add nsw i32 %266, %267, !dbg !1369
  %269 = sitofp i32 %268 to double, !dbg !1367
  %270 = fsub double %269, 1.000000e+00, !dbg !1370
  call void @fSubHandler(double %269, double 1.000000e+00, double %270, i64 94892794474168, i64 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @17, i32 0, i32 0), i64 94892794475872, i32 432, i32 47), !dbg !1371
  %271 = fdiv double %265, %270, !dbg !1371
  call void @fDivHandler(double %265, double %270, double %271, i64 94892794472624, i64 94892794475872, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @17, i32 0, i32 0), i64 94892794476256, i32 432, i32 40), !dbg !1362
  store double %271, double* %29, align 8, !dbg !1362
  call void @llvm.dbg.declare(metadata double* %30, metadata !1372, metadata !60), !dbg !1373
  %272 = load double, double* %28, align 8, !dbg !1374
  %273 = load i32, i32* %27, align 4, !dbg !1375
  %274 = sitofp i32 %273 to double, !dbg !1375
  %275 = fmul double 2.000000e+00, %274, !dbg !1376
  call void @fMulHandler(double 2.000000e+00, double %274, double %275, i64 0, i64 94892794480184, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @17, i32 0, i32 0), i64 94892794481888, i32 433, i32 46), !dbg !1377
  %276 = fadd double %275, 1.000000e+00, !dbg !1377
  call void @fAddHandler(double %275, double 1.000000e+00, double %276, i64 94892794481888, i64 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @17, i32 0, i32 0), i64 94892794482304, i32 433, i32 50), !dbg !1378
  %277 = fmul double %272, %276, !dbg !1378
  call void @fMulHandler(double %272, double %276, double %277, i64 94892794479448, i64 94892794482304, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @17, i32 0, i32 0), i64 94892794482688, i32 433, i32 41), !dbg !1379
  %278 = load i32, i32* %27, align 4, !dbg !1379
  %279 = sitofp i32 %278 to double, !dbg !1379
  %280 = fmul double 2.000000e+00, %279, !dbg !1380
  call void @fMulHandler(double 2.000000e+00, double %279, double %280, i64 0, i64 94892794387752, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @17, i32 0, i32 0), i64 94892794389456, i32 433, i32 60), !dbg !1381
  %281 = fsub double %280, 1.000000e+00, !dbg !1381
  call void @fSubHandler(double %280, double 1.000000e+00, double %281, i64 94892794389456, i64 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @17, i32 0, i32 0), i64 94892794487632, i32 433, i32 64), !dbg !1382
  %282 = fmul double %277, %281, !dbg !1382
  call void @fMulHandler(double %277, double %281, double %282, i64 94892794482688, i64 94892794487632, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @17, i32 0, i32 0), i64 94892794488016, i32 433, i32 55), !dbg !1383
  %283 = call double @sqrt(double %282) #5, !dbg !1383
  call void @callOneArgHandler(i32 14, double %282, double %283, i64 94892794488016, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @17, i32 0, i32 0), i64 94892794488496, i32 433, i32 32), !dbg !1373
  store double %283, double* %30, align 8, !dbg !1373
  call void @llvm.dbg.declare(metadata double* %31, metadata !1384, metadata !60), !dbg !1385
  %284 = load double, double* %28, align 8, !dbg !1386
  %285 = load double, double* %29, align 8, !dbg !1387
  %286 = fmul double %284, %285, !dbg !1388
  call void @fMulHandler(double %284, double %285, double %286, i64 94892794491752, i64 94892794492104, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @17, i32 0, i32 0), i64 94892794492512, i32 434, i32 41), !dbg !1389
  %287 = load i32, i32* %27, align 4, !dbg !1389
  %288 = sitofp i32 %287 to double, !dbg !1389
  %289 = fmul double 2.000000e+00, %288, !dbg !1390
  call void @fMulHandler(double 2.000000e+00, double %288, double %289, i64 0, i64 94892794493288, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @17, i32 0, i32 0), i64 94892794494992, i32 434, i32 51), !dbg !1391
  %290 = fadd double %289, 1.000000e+00, !dbg !1391
  call void @fAddHandler(double %289, double 1.000000e+00, double %290, i64 94892794494992, i64 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @17, i32 0, i32 0), i64 94892794495408, i32 434, i32 55), !dbg !1392
  %291 = fmul double %286, %290, !dbg !1392
  call void @fMulHandler(double %286, double %290, double %291, i64 94892794492512, i64 94892794495408, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @17, i32 0, i32 0), i64 94892794495792, i32 434, i32 46), !dbg !1393
  %292 = load i32, i32* %27, align 4, !dbg !1393
  %293 = sitofp i32 %292 to double, !dbg !1393
  %294 = fmul double 2.000000e+00, %293, !dbg !1394
  call void @fMulHandler(double 2.000000e+00, double %293, double %294, i64 0, i64 94892794496568, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @17, i32 0, i32 0), i64 94892794498272, i32 434, i32 65), !dbg !1395
  %295 = fsub double %294, 3.000000e+00, !dbg !1395
  call void @fSubHandler(double %294, double 3.000000e+00, double %295, i64 94892794498272, i64 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @17, i32 0, i32 0), i64 94892794498688, i32 434, i32 69), !dbg !1396
  %296 = fdiv double %291, %295, !dbg !1396
  call void @fDivHandler(double %291, double %295, double %296, i64 94892794495792, i64 94892794498688, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @17, i32 0, i32 0), i64 94892794499072, i32 434, i32 60), !dbg !1397
  %297 = call double @sqrt(double %296) #5, !dbg !1397
  call void @callOneArgHandler(i32 14, double %296, double %297, i64 94892794499072, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @17, i32 0, i32 0), i64 94892794499552, i32 434, i32 32), !dbg !1385
  store double %297, double* %31, align 8, !dbg !1385
  %298 = load double, double* %8, align 8, !dbg !1398
  %299 = load double, double* %23, align 8, !dbg !1399
  %300 = fmul double %298, %299, !dbg !1400
  call void @fMulHandler(double %298, double %299, double %300, i64 94892794501688, i64 94892794502072, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @17, i32 0, i32 0), i64 94892794502480, i32 435, i32 19), !dbg !1401
  %301 = load double, double* %30, align 8, !dbg !1401
  %302 = fmul double %300, %301, !dbg !1402
  call void @fMulHandler(double %300, double %301, double %302, i64 94892794502480, i64 94892794502872, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @17, i32 0, i32 0), i64 94892794503280, i32 435, i32 26), !dbg !1403
  %303 = load i32, i32* %27, align 4, !dbg !1403
  %304 = load i32, i32* %7, align 4, !dbg !1404
  %305 = add nsw i32 %303, %304, !dbg !1405
  %306 = sitofp i32 %305 to double, !dbg !1403
  %307 = fsub double %306, 1.000000e+00, !dbg !1406
  call void @fSubHandler(double %306, double 1.000000e+00, double %307, i64 94892794504856, i64 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @17, i32 0, i32 0), i64 94892794506560, i32 435, i32 43), !dbg !1407
  %308 = load double, double* %21, align 8, !dbg !1407
  %309 = fmul double %307, %308, !dbg !1408
  call void @fMulHandler(double %307, double %308, double %309, i64 94892794506560, i64 94892794506920, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @17, i32 0, i32 0), i64 94892794507328, i32 435, i32 48), !dbg !1409
  %310 = load double, double* %31, align 8, !dbg !1409
  %311 = fmul double %309, %310, !dbg !1410
  call void @fMulHandler(double %309, double %310, double %311, i64 94892794507328, i64 94892794507720, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @17, i32 0, i32 0), i64 94892794508128, i32 435, i32 53), !dbg !1411
  %312 = fsub double %302, %311, !dbg !1411
  call void @fSubHandler(double %302, double %311, double %312, i64 94892794503280, i64 94892794508128, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @17, i32 0, i32 0), i64 94892794508544, i32 435, i32 35), !dbg !1412
  %313 = load i32, i32* %27, align 4, !dbg !1412
  %314 = load i32, i32* %7, align 4, !dbg !1413
  %315 = sub nsw i32 %313, %314, !dbg !1414
  %316 = sitofp i32 %315 to double, !dbg !1415
  %317 = fdiv double %312, %316, !dbg !1416
  call void @fDivHandler(double %312, double %316, double %317, i64 94892794508544, i64 94892794510120, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @17, i32 0, i32 0), i64 94892794510528, i32 435, i32 63), !dbg !1417
  store double %317, double* %25, align 8, !dbg !1417
  %318 = load double, double* %23, align 8, !dbg !1418
  store double %318, double* %21, align 8, !dbg !1419
  %319 = load double, double* %25, align 8, !dbg !1420
  store double %319, double* %23, align 8, !dbg !1421
  %320 = load double, double* %8, align 8, !dbg !1422
  %321 = load double, double* %30, align 8, !dbg !1423
  %322 = fmul double %320, %321, !dbg !1424
  call void @fMulHandler(double %320, double %321, double %322, i64 94892794512936, i64 94892794513320, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @17, i32 0, i32 0), i64 94892794513728, i32 439, i32 32), !dbg !1425
  %323 = call double @fabs(double %322) #1, !dbg !1425
  %324 = load double, double* %24, align 8, !dbg !1426
  %325 = fmul double %323, %324, !dbg !1427
  call void @fMulHandler(double %323, double %324, double %325, i64 94892794514208, i64 94892794514664, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @17, i32 0, i32 0), i64 94892794515072, i32 439, i32 41), !dbg !1428
  %326 = load i32, i32* %27, align 4, !dbg !1428
  %327 = load i32, i32* %7, align 4, !dbg !1429
  %328 = add nsw i32 %326, %327, !dbg !1430
  %329 = sitofp i32 %328 to double, !dbg !1428
  %330 = fsub double %329, 1.000000e+00, !dbg !1431
  call void @fSubHandler(double %329, double 1.000000e+00, double %330, i64 94892794516648, i64 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @17, i32 0, i32 0), i64 94892794518352, i32 439, i32 66), !dbg !1432
  %331 = load double, double* %31, align 8, !dbg !1432
  %332 = fmul double %330, %331, !dbg !1433
  call void @fMulHandler(double %330, double %331, double %332, i64 94892794518352, i64 94892794518712, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @17, i32 0, i32 0), i64 94892794519120, i32 439, i32 71), !dbg !1434
  %333 = call double @fabs(double %332) #1, !dbg !1434
  %334 = load double, double* %22, align 8, !dbg !1436
  %335 = fmul double %333, %334, !dbg !1437
  call void @fMulHandler(double %333, double %334, double %335, i64 94892794519600, i64 94892794520056, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @17, i32 0, i32 0), i64 94892794520464, i32 439, i32 80), !dbg !1438
  %336 = fadd double %325, %335, !dbg !1438
  call void @fAddHandler(double %325, double %335, double %336, i64 94892794515072, i64 94892794520464, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @17, i32 0, i32 0), i64 94892794520880, i32 439, i32 53), !dbg !1439
  %337 = fmul double 5.000000e-01, %336, !dbg !1439
  call void @fMulHandler(double 5.000000e-01, double %336, double %337, i64 0, i64 94892794520880, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @17, i32 0, i32 0), i64 94892794521328, i32 439, i32 24), !dbg !1440
  %338 = load i32, i32* %27, align 4, !dbg !1440
  %339 = load i32, i32* %7, align 4, !dbg !1441
  %340 = sub nsw i32 %338, %339, !dbg !1442
  %341 = sitofp i32 %340 to double, !dbg !1440
  %342 = call double @fabs(double %341) #1, !dbg !1443
  %343 = fdiv double %337, %342, !dbg !1445
  call void @fDivHandler(double %337, double %342, double %343, i64 94892794521328, i64 94892794524608, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @17, i32 0, i32 0), i64 94892794525088, i32 439, i32 91), !dbg !1446
  store double %343, double* %26, align 8, !dbg !1446
  %344 = load double, double* %24, align 8, !dbg !1447
  store double %344, double* %22, align 8, !dbg !1448
  %345 = load double, double* %26, align 8, !dbg !1449
  store double %345, double* %24, align 8, !dbg !1450
  br label %346, !dbg !1451

; <label>:346:                                    ; preds = %251
  %347 = load i32, i32* %27, align 4, !dbg !1452
  %348 = add nsw i32 %347, 1, !dbg !1452
  store i32 %348, i32* %27, align 4, !dbg !1452
  br label %244, !dbg !1454, !llvm.loop !1455

; <label>:349:                                    ; preds = %244
  %350 = load double, double* %25, align 8, !dbg !1457
  %351 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1458
  %352 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %351, i32 0, i32 0, !dbg !1459
  store double %350, double* %352, align 8, !dbg !1460
  %353 = load double, double* %26, align 8, !dbg !1461
  %354 = load i32, i32* %6, align 4, !dbg !1462
  %355 = load i32, i32* %7, align 4, !dbg !1463
  %356 = sub nsw i32 %354, %355, !dbg !1464
  %357 = sitofp i32 %356 to double, !dbg !1465
  %358 = fmul double 5.000000e-01, %357, !dbg !1466
  call void @fMulHandler(double 5.000000e-01, double %357, double %358, i64 0, i64 94892794533960, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @17, i32 0, i32 0), i64 94892794534400, i32 445, i32 38), !dbg !1467
  %359 = fadd double %358, 1.000000e+00, !dbg !1467
  call void @fAddHandler(double %358, double 1.000000e+00, double %359, i64 94892794534400, i64 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @17, i32 0, i32 0), i64 94892794534816, i32 445, i32 45), !dbg !1468
  %360 = fmul double %359, 0x3CB0000000000000, !dbg !1468
  call void @fMulHandler(double %359, double 0x3CB0000000000000, double %360, i64 94892794534816, i64 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @17, i32 0, i32 0), i64 94892794535200, i32 445, i32 52), !dbg !1469
  %361 = load double, double* %25, align 8, !dbg !1469
  %362 = call double @fabs(double %361) #1, !dbg !1470
  %363 = fmul double %360, %362, !dbg !1471
  call void @fMulHandler(double %360, double %362, double %363, i64 94892794535200, i64 94892794536064, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @17, i32 0, i32 0), i64 94892794536544, i32 445, i32 70), !dbg !1472
  %364 = fadd double %353, %363, !dbg !1472
  call void @fAddHandler(double %353, double %363, double %364, i64 94892794532392, i64 94892794536544, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @17, i32 0, i32 0), i64 94892794536960, i32 445, i32 32), !dbg !1473
  %365 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1473
  %366 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %365, i32 0, i32 1, !dbg !1474
  store double %364, double* %366, align 8, !dbg !1475
  store i32 0, i32* %5, align 4, !dbg !1476
  br label %367, !dbg !1476

; <label>:367:                                    ; preds = %349, %227, %205, %105, %65, %59, %57
  %368 = load i32, i32* %5, align 4, !dbg !1477
  ret i32 %368, !dbg !1477
}

declare i32 @gsl_sf_log_1plusx_e(double, %struct.gsl_sf_result_struct*) #3

declare i32 @gsl_sf_lnpoch_e(double, double, %struct.gsl_sf_result_struct*) #3

; Function Attrs: nounwind
declare double @exp(double) #4

; Function Attrs: nounwind
declare double @sinh(double) #4

; Function Attrs: nounwind uwtable
define double @gsl_sf_legendre_P1(double) #0 !dbg !1478 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct, align 8
  %5 = alloca i32, align 4
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !1481, metadata !60), !dbg !1482
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %4, metadata !1483, metadata !60), !dbg !1484
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1485, metadata !60), !dbg !1484
  %6 = load double, double* %3, align 8, !dbg !1484
  %7 = call i32 @gsl_sf_legendre_P1_e(double %6, %struct.gsl_sf_result_struct* %4), !dbg !1484
  store i32 %7, i32* %5, align 4, !dbg !1484
  %8 = load i32, i32* %5, align 4, !dbg !1486
  %9 = icmp ne i32 %8, 0, !dbg !1486
  %10 = sext i32 %8 to i64, !dbg !1484
  %11 = call i1 @iCmpInstHandler(i64 %10, i64 0, i1 %9, i32 33, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @19, i32 0, i32 0), i64 94892794117856, i32 751, i32 3), !dbg !1484
  br i1 %11, label %12, label %18, !dbg !1484

; <label>:12:                                     ; preds = %1
  br label %13, !dbg !1488, !llvm.loop !1491

; <label>:13:                                     ; preds = %12
  %14 = load i32, i32* %5, align 4, !dbg !1493
  call void @gsl_error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i32 751, i32 %14), !dbg !1493
  %15 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !1493
  %16 = load double, double* %15, align 8, !dbg !1493
  store double %16, double* %2, align 8, !dbg !1493
  br label %21, !dbg !1493
                                                  ; No predecessors!
  br label %18, !dbg !1496

; <label>:18:                                     ; preds = %17, %1
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !1498
  %20 = load double, double* %19, align 8, !dbg !1498
  store double %20, double* %2, align 8, !dbg !1498
  br label %21, !dbg !1498

; <label>:21:                                     ; preds = %18, %13
  %22 = load double, double* %2, align 8, !dbg !1500
  ret double %22, !dbg !1500
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_legendre_P2(double) #0 !dbg !1501 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct, align 8
  %5 = alloca i32, align 4
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !1502, metadata !60), !dbg !1503
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %4, metadata !1504, metadata !60), !dbg !1505
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1506, metadata !60), !dbg !1505
  %6 = load double, double* %3, align 8, !dbg !1505
  %7 = call i32 @gsl_sf_legendre_P2_e(double %6, %struct.gsl_sf_result_struct* %4), !dbg !1505
  store i32 %7, i32* %5, align 4, !dbg !1505
  %8 = load i32, i32* %5, align 4, !dbg !1507
  %9 = icmp ne i32 %8, 0, !dbg !1507
  %10 = sext i32 %8 to i64, !dbg !1505
  %11 = call i1 @iCmpInstHandler(i64 %10, i64 0, i1 %9, i32 33, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @21, i32 0, i32 0), i64 94892794569504, i32 756, i32 3), !dbg !1505
  br i1 %11, label %12, label %18, !dbg !1505

; <label>:12:                                     ; preds = %1
  br label %13, !dbg !1509, !llvm.loop !1512

; <label>:13:                                     ; preds = %12
  %14 = load i32, i32* %5, align 4, !dbg !1514
  call void @gsl_error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i32 756, i32 %14), !dbg !1514
  %15 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !1514
  %16 = load double, double* %15, align 8, !dbg !1514
  store double %16, double* %2, align 8, !dbg !1514
  br label %21, !dbg !1514
                                                  ; No predecessors!
  br label %18, !dbg !1517

; <label>:18:                                     ; preds = %17, %1
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !1519
  %20 = load double, double* %19, align 8, !dbg !1519
  store double %20, double* %2, align 8, !dbg !1519
  br label %21, !dbg !1519

; <label>:21:                                     ; preds = %18, %13
  %22 = load double, double* %2, align 8, !dbg !1521
  ret double %22, !dbg !1521
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_legendre_P3(double) #0 !dbg !1522 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct, align 8
  %5 = alloca i32, align 4
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !1523, metadata !60), !dbg !1524
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %4, metadata !1525, metadata !60), !dbg !1526
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1527, metadata !60), !dbg !1526
  %6 = load double, double* %3, align 8, !dbg !1526
  %7 = call i32 @gsl_sf_legendre_P3_e(double %6, %struct.gsl_sf_result_struct* %4), !dbg !1526
  store i32 %7, i32* %5, align 4, !dbg !1526
  %8 = load i32, i32* %5, align 4, !dbg !1528
  %9 = icmp ne i32 %8, 0, !dbg !1528
  %10 = sext i32 %8 to i64, !dbg !1526
  %11 = call i1 @iCmpInstHandler(i64 %10, i64 0, i1 %9, i32 33, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @23, i32 0, i32 0), i64 94892794586800, i32 761, i32 3), !dbg !1526
  br i1 %11, label %12, label %18, !dbg !1526

; <label>:12:                                     ; preds = %1
  br label %13, !dbg !1530, !llvm.loop !1533

; <label>:13:                                     ; preds = %12
  %14 = load i32, i32* %5, align 4, !dbg !1535
  call void @gsl_error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i32 761, i32 %14), !dbg !1535
  %15 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !1535
  %16 = load double, double* %15, align 8, !dbg !1535
  store double %16, double* %2, align 8, !dbg !1535
  br label %21, !dbg !1535
                                                  ; No predecessors!
  br label %18, !dbg !1538

; <label>:18:                                     ; preds = %17, %1
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !1540
  %20 = load double, double* %19, align 8, !dbg !1540
  store double %20, double* %2, align 8, !dbg !1540
  br label %21, !dbg !1540

; <label>:21:                                     ; preds = %18, %13
  %22 = load double, double* %2, align 8, !dbg !1542
  ret double %22, !dbg !1542
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_legendre_Pl(i32, double) #0 !dbg !1543 {
  %3 = alloca double, align 8
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca %struct.gsl_sf_result_struct, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1546, metadata !60), !dbg !1547
  store double %1, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !1548, metadata !60), !dbg !1549
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %6, metadata !1550, metadata !60), !dbg !1551
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1552, metadata !60), !dbg !1551
  %8 = load i32, i32* %4, align 4, !dbg !1551
  %9 = load double, double* %5, align 8, !dbg !1551
  %10 = call i32 @gsl_sf_legendre_Pl_e(i32 %8, double %9, %struct.gsl_sf_result_struct* %6), !dbg !1551
  store i32 %10, i32* %7, align 4, !dbg !1551
  %11 = load i32, i32* %7, align 4, !dbg !1553
  %12 = icmp ne i32 %11, 0, !dbg !1553
  %13 = sext i32 %11 to i64, !dbg !1551
  %14 = call i1 @iCmpInstHandler(i64 %13, i64 0, i1 %12, i32 33, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @25, i32 0, i32 0), i64 94892794605536, i32 766, i32 3), !dbg !1551
  br i1 %14, label %15, label %21, !dbg !1551

; <label>:15:                                     ; preds = %2
  br label %16, !dbg !1555, !llvm.loop !1558

; <label>:16:                                     ; preds = %15
  %17 = load i32, i32* %7, align 4, !dbg !1560
  call void @gsl_error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i32 766, i32 %17), !dbg !1560
  %18 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !1560
  %19 = load double, double* %18, align 8, !dbg !1560
  store double %19, double* %3, align 8, !dbg !1560
  br label %24, !dbg !1560
                                                  ; No predecessors!
  br label %21, !dbg !1563

; <label>:21:                                     ; preds = %20, %2
  %22 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !1565
  %23 = load double, double* %22, align 8, !dbg !1565
  store double %23, double* %3, align 8, !dbg !1565
  br label %24, !dbg !1565

; <label>:24:                                     ; preds = %21, %16
  %25 = load double, double* %3, align 8, !dbg !1567
  ret double %25, !dbg !1567
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_legendre_Plm(i32, i32, double) #0 !dbg !1568 {
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca %struct.gsl_sf_result_struct, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1571, metadata !60), !dbg !1572
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1573, metadata !60), !dbg !1574
  store double %2, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !1575, metadata !60), !dbg !1576
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %8, metadata !1577, metadata !60), !dbg !1578
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1579, metadata !60), !dbg !1578
  %10 = load i32, i32* %5, align 4, !dbg !1578
  %11 = load i32, i32* %6, align 4, !dbg !1578
  %12 = load double, double* %7, align 8, !dbg !1578
  %13 = call i32 @gsl_sf_legendre_Plm_e(i32 %10, i32 %11, double %12, %struct.gsl_sf_result_struct* %8), !dbg !1578
  store i32 %13, i32* %9, align 4, !dbg !1578
  %14 = load i32, i32* %9, align 4, !dbg !1580
  %15 = icmp ne i32 %14, 0, !dbg !1580
  %16 = sext i32 %14 to i64, !dbg !1578
  %17 = call i1 @iCmpInstHandler(i64 %16, i64 0, i1 %15, i32 33, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @27, i32 0, i32 0), i64 94892794625856, i32 771, i32 3), !dbg !1578
  br i1 %17, label %18, label %24, !dbg !1578

; <label>:18:                                     ; preds = %3
  br label %19, !dbg !1582, !llvm.loop !1585

; <label>:19:                                     ; preds = %18
  %20 = load i32, i32* %9, align 4, !dbg !1587
  call void @gsl_error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i32 771, i32 %20), !dbg !1587
  %21 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 0, !dbg !1587
  %22 = load double, double* %21, align 8, !dbg !1587
  store double %22, double* %4, align 8, !dbg !1587
  br label %27, !dbg !1587
                                                  ; No predecessors!
  br label %24, !dbg !1590

; <label>:24:                                     ; preds = %23, %3
  %25 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 0, !dbg !1592
  %26 = load double, double* %25, align 8, !dbg !1592
  store double %26, double* %4, align 8, !dbg !1592
  br label %27, !dbg !1592

; <label>:27:                                     ; preds = %24, %19
  %28 = load double, double* %4, align 8, !dbg !1594
  ret double %28, !dbg !1594
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_legendre_sphPlm(i32, i32, double) #0 !dbg !1595 {
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca %struct.gsl_sf_result_struct, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1596, metadata !60), !dbg !1597
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1598, metadata !60), !dbg !1599
  store double %2, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !1600, metadata !60), !dbg !1601
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %8, metadata !1602, metadata !60), !dbg !1603
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1604, metadata !60), !dbg !1603
  %10 = load i32, i32* %5, align 4, !dbg !1603
  %11 = load i32, i32* %6, align 4, !dbg !1603
  %12 = load double, double* %7, align 8, !dbg !1603
  %13 = call i32 @gsl_sf_legendre_sphPlm_e(i32 %10, i32 %11, double %12, %struct.gsl_sf_result_struct* %8), !dbg !1603
  store i32 %13, i32* %9, align 4, !dbg !1603
  %14 = load i32, i32* %9, align 4, !dbg !1605
  %15 = icmp ne i32 %14, 0, !dbg !1605
  %16 = sext i32 %14 to i64, !dbg !1603
  %17 = call i1 @iCmpInstHandler(i64 %16, i64 0, i1 %15, i32 33, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @29, i32 0, i32 0), i64 94892794646176, i32 776, i32 3), !dbg !1603
  br i1 %17, label %18, label %24, !dbg !1603

; <label>:18:                                     ; preds = %3
  br label %19, !dbg !1607, !llvm.loop !1610

; <label>:19:                                     ; preds = %18
  %20 = load i32, i32* %9, align 4, !dbg !1612
  call void @gsl_error(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i32 776, i32 %20), !dbg !1612
  %21 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 0, !dbg !1612
  %22 = load double, double* %21, align 8, !dbg !1612
  store double %22, double* %4, align 8, !dbg !1612
  br label %27, !dbg !1612
                                                  ; No predecessors!
  br label %24, !dbg !1615

; <label>:24:                                     ; preds = %23, %3
  %25 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 0, !dbg !1617
  %26 = load double, double* %25, align 8, !dbg !1617
  store double %26, double* %4, align 8, !dbg !1617
  br label %27, !dbg !1617

; <label>:27:                                     ; preds = %24, %19
  %28 = load double, double* %4, align 8, !dbg !1619
  ret double %28, !dbg !1619
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
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!43, !44, !45}
!llvm.ident = !{!46}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !41)
!1 = !DIFile(filename: "legendre_poly.c", directory: "/fpcc/gsl-2.5/specfunc")
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
!47 = distinct !DISubprogram(name: "gsl_sf_legendre_P1_e", scope: !1, file: !1, line: 66, type: !48, isLocal: false, isDefinition: true, scopeLine: 67, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!48 = !DISubroutineType(types: !49)
!49 = !{!50, !42, !51}
!50 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64, align: 64)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !53, line: 41, baseType: !54)
!53 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/fpcc/gsl-2.5/specfunc")
!54 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !53, line: 37, size: 128, align: 64, elements: !55)
!55 = !{!56, !57}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !54, file: !53, line: 38, baseType: !42, size: 64, align: 64)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !54, file: !53, line: 39, baseType: !42, size: 64, align: 64, offset: 64)
!58 = !{}
!59 = !DILocalVariable(name: "x", arg: 1, scope: !47, file: !1, line: 66, type: !42)
!60 = !DIExpression()
!61 = !DILocation(line: 66, column: 29, scope: !47)
!62 = !DILocalVariable(name: "result", arg: 2, scope: !47, file: !1, line: 66, type: !51)
!63 = !DILocation(line: 66, column: 48, scope: !47)
!64 = !DILocation(line: 71, column: 19, scope: !65)
!65 = distinct !DILexicalBlock(scope: !47, file: !1, line: 70, column: 3)
!66 = !DILocation(line: 71, column: 5, scope: !65)
!67 = !DILocation(line: 71, column: 13, scope: !65)
!68 = !DILocation(line: 71, column: 17, scope: !65)
!69 = !DILocation(line: 72, column: 5, scope: !65)
!70 = !DILocation(line: 72, column: 13, scope: !65)
!71 = !DILocation(line: 72, column: 17, scope: !65)
!72 = !DILocation(line: 73, column: 5, scope: !65)
!73 = distinct !DISubprogram(name: "gsl_sf_legendre_P2_e", scope: !1, file: !1, line: 78, type: !48, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!74 = !DILocalVariable(name: "x", arg: 1, scope: !73, file: !1, line: 78, type: !42)
!75 = !DILocation(line: 78, column: 29, scope: !73)
!76 = !DILocalVariable(name: "result", arg: 2, scope: !73, file: !1, line: 78, type: !51)
!77 = !DILocation(line: 78, column: 48, scope: !73)
!78 = !DILocation(line: 83, column: 28, scope: !79)
!79 = distinct !DILexicalBlock(scope: !73, file: !1, line: 82, column: 3)
!80 = !DILocation(line: 83, column: 27, scope: !79)
!81 = !DILocation(line: 83, column: 30, scope: !79)
!82 = !DILocation(line: 83, column: 29, scope: !79)
!83 = !DILocation(line: 83, column: 32, scope: !79)
!84 = !DILocation(line: 83, column: 22, scope: !79)
!85 = !DILocation(line: 83, column: 5, scope: !79)
!86 = !DILocation(line: 83, column: 13, scope: !79)
!87 = !DILocation(line: 83, column: 17, scope: !79)
!88 = !DILocation(line: 84, column: 47, scope: !79)
!89 = !DILocation(line: 84, column: 46, scope: !79)
!90 = !DILocation(line: 84, column: 49, scope: !79)
!91 = !DILocation(line: 84, column: 48, scope: !79)
!92 = !DILocation(line: 84, column: 38, scope: !79)
!93 = !DILocation(line: 84, column: 52, scope: !79)
!94 = !DILocation(line: 84, column: 35, scope: !79)
!95 = !DILocation(line: 84, column: 5, scope: !79)
!96 = !DILocation(line: 84, column: 13, scope: !79)
!97 = !DILocation(line: 84, column: 17, scope: !79)
!98 = !DILocation(line: 85, column: 5, scope: !79)
!99 = distinct !DISubprogram(name: "gsl_sf_legendre_P3_e", scope: !1, file: !1, line: 90, type: !48, isLocal: false, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!100 = !DILocalVariable(name: "x", arg: 1, scope: !99, file: !1, line: 90, type: !42)
!101 = !DILocation(line: 90, column: 29, scope: !99)
!102 = !DILocalVariable(name: "result", arg: 2, scope: !99, file: !1, line: 90, type: !51)
!103 = !DILocation(line: 90, column: 48, scope: !99)
!104 = !DILocation(line: 95, column: 23, scope: !105)
!105 = distinct !DILexicalBlock(scope: !99, file: !1, line: 94, column: 3)
!106 = !DILocation(line: 95, column: 22, scope: !105)
!107 = !DILocation(line: 95, column: 30, scope: !105)
!108 = !DILocation(line: 95, column: 29, scope: !105)
!109 = !DILocation(line: 95, column: 32, scope: !105)
!110 = !DILocation(line: 95, column: 31, scope: !105)
!111 = !DILocation(line: 95, column: 34, scope: !105)
!112 = !DILocation(line: 95, column: 24, scope: !105)
!113 = !DILocation(line: 95, column: 5, scope: !105)
!114 = !DILocation(line: 95, column: 13, scope: !105)
!115 = !DILocation(line: 95, column: 17, scope: !105)
!116 = !DILocation(line: 96, column: 43, scope: !105)
!117 = !DILocation(line: 96, column: 51, scope: !105)
!118 = !DILocation(line: 96, column: 38, scope: !105)
!119 = !DILocation(line: 96, column: 69, scope: !105)
!120 = !DILocation(line: 96, column: 64, scope: !121)
!121 = !DILexicalBlockFile(scope: !105, file: !1, discriminator: 1)
!122 = !DILocation(line: 96, column: 62, scope: !105)
!123 = !DILocation(line: 96, column: 84, scope: !105)
!124 = !DILocation(line: 96, column: 83, scope: !105)
!125 = !DILocation(line: 96, column: 86, scope: !105)
!126 = !DILocation(line: 96, column: 85, scope: !105)
!127 = !DILocation(line: 96, column: 75, scope: !128)
!128 = !DILexicalBlockFile(scope: !105, file: !1, discriminator: 2)
!129 = !DILocation(line: 96, column: 89, scope: !105)
!130 = !DILocation(line: 96, column: 72, scope: !105)
!131 = !DILocation(line: 96, column: 56, scope: !105)
!132 = !DILocation(line: 96, column: 35, scope: !105)
!133 = !DILocation(line: 96, column: 5, scope: !105)
!134 = !DILocation(line: 96, column: 13, scope: !105)
!135 = !DILocation(line: 96, column: 17, scope: !105)
!136 = !DILocation(line: 97, column: 5, scope: !105)
!137 = distinct !DISubprogram(name: "gsl_sf_legendre_Pl_e", scope: !1, file: !1, line: 103, type: !138, isLocal: false, isDefinition: true, scopeLine: 104, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!138 = !DISubroutineType(types: !139)
!139 = !{!50, !140, !141, !51}
!140 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !50)
!141 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!142 = !DILocalVariable(name: "l", arg: 1, scope: !137, file: !1, line: 103, type: !140)
!143 = !DILocation(line: 103, column: 32, scope: !137)
!144 = !DILocalVariable(name: "x", arg: 2, scope: !137, file: !1, line: 103, type: !141)
!145 = !DILocation(line: 103, column: 48, scope: !137)
!146 = !DILocalVariable(name: "result", arg: 3, scope: !137, file: !1, line: 103, type: !51)
!147 = !DILocation(line: 103, column: 67, scope: !137)
!148 = !DILocation(line: 107, column: 6, scope: !149)
!149 = distinct !DILexicalBlock(scope: !137, file: !1, line: 107, column: 6)
!150 = !DILocation(line: 107, column: 8, scope: !149)
!151 = !DILocation(line: 107, column: 12, scope: !149)
!152 = !DILocation(line: 107, column: 15, scope: !153)
!153 = !DILexicalBlockFile(scope: !149, file: !1, discriminator: 1)
!154 = !DILocation(line: 107, column: 17, scope: !153)
!155 = !DILocation(line: 107, column: 24, scope: !153)
!156 = !DILocation(line: 107, column: 27, scope: !157)
!157 = !DILexicalBlockFile(scope: !149, file: !1, discriminator: 2)
!158 = !DILocation(line: 107, column: 29, scope: !157)
!159 = !DILocation(line: 107, column: 6, scope: !157)
!160 = !DILocation(line: 108, column: 5, scope: !161)
!161 = distinct !DILexicalBlock(scope: !149, file: !1, line: 107, column: 36)
!162 = distinct !{!162, !160}
!163 = !DILocation(line: 108, column: 5, scope: !164)
!164 = !DILexicalBlockFile(scope: !165, file: !1, discriminator: 1)
!165 = distinct !DILexicalBlock(scope: !161, file: !1, line: 108, column: 5)
!166 = distinct !{!166, !167}
!167 = !DILocation(line: 108, column: 5, scope: !165)
!168 = !DILocation(line: 108, column: 5, scope: !169)
!169 = !DILexicalBlockFile(scope: !170, file: !1, discriminator: 2)
!170 = distinct !DILexicalBlock(scope: !165, file: !1, line: 108, column: 5)
!171 = !DILocation(line: 108, column: 5, scope: !172)
!172 = !DILexicalBlockFile(scope: !165, file: !1, discriminator: 3)
!173 = !DILocation(line: 109, column: 3, scope: !161)
!174 = !DILocation(line: 110, column: 11, scope: !175)
!175 = distinct !DILexicalBlock(scope: !149, file: !1, line: 110, column: 11)
!176 = !DILocation(line: 110, column: 13, scope: !175)
!177 = !DILocation(line: 110, column: 11, scope: !149)
!178 = !DILocation(line: 111, column: 5, scope: !179)
!179 = distinct !DILexicalBlock(scope: !175, file: !1, line: 110, column: 19)
!180 = !DILocation(line: 111, column: 13, scope: !179)
!181 = !DILocation(line: 111, column: 17, scope: !179)
!182 = !DILocation(line: 112, column: 5, scope: !179)
!183 = !DILocation(line: 112, column: 13, scope: !179)
!184 = !DILocation(line: 112, column: 17, scope: !179)
!185 = !DILocation(line: 113, column: 5, scope: !179)
!186 = !DILocation(line: 115, column: 11, scope: !187)
!187 = distinct !DILexicalBlock(scope: !175, file: !1, line: 115, column: 11)
!188 = !DILocation(line: 115, column: 13, scope: !187)
!189 = !DILocation(line: 115, column: 11, scope: !175)
!190 = !DILocation(line: 116, column: 19, scope: !191)
!191 = distinct !DILexicalBlock(scope: !187, file: !1, line: 115, column: 19)
!192 = !DILocation(line: 116, column: 5, scope: !191)
!193 = !DILocation(line: 116, column: 13, scope: !191)
!194 = !DILocation(line: 116, column: 17, scope: !191)
!195 = !DILocation(line: 117, column: 5, scope: !191)
!196 = !DILocation(line: 117, column: 13, scope: !191)
!197 = !DILocation(line: 117, column: 17, scope: !191)
!198 = !DILocation(line: 118, column: 5, scope: !191)
!199 = !DILocation(line: 120, column: 11, scope: !200)
!200 = distinct !DILexicalBlock(scope: !187, file: !1, line: 120, column: 11)
!201 = !DILocation(line: 120, column: 13, scope: !200)
!202 = !DILocation(line: 120, column: 11, scope: !187)
!203 = !DILocation(line: 121, column: 30, scope: !204)
!204 = distinct !DILexicalBlock(scope: !200, file: !1, line: 120, column: 19)
!205 = !DILocation(line: 121, column: 29, scope: !204)
!206 = !DILocation(line: 121, column: 32, scope: !204)
!207 = !DILocation(line: 121, column: 31, scope: !204)
!208 = !DILocation(line: 121, column: 34, scope: !204)
!209 = !DILocation(line: 121, column: 23, scope: !204)
!210 = !DILocation(line: 121, column: 5, scope: !204)
!211 = !DILocation(line: 121, column: 13, scope: !204)
!212 = !DILocation(line: 121, column: 17, scope: !204)
!213 = !DILocation(line: 122, column: 47, scope: !204)
!214 = !DILocation(line: 122, column: 46, scope: !204)
!215 = !DILocation(line: 122, column: 49, scope: !204)
!216 = !DILocation(line: 122, column: 48, scope: !204)
!217 = !DILocation(line: 122, column: 38, scope: !204)
!218 = !DILocation(line: 122, column: 52, scope: !204)
!219 = !DILocation(line: 122, column: 35, scope: !204)
!220 = !DILocation(line: 122, column: 5, scope: !204)
!221 = !DILocation(line: 122, column: 13, scope: !204)
!222 = !DILocation(line: 122, column: 17, scope: !204)
!223 = !DILocation(line: 126, column: 5, scope: !204)
!224 = !DILocation(line: 128, column: 11, scope: !225)
!225 = distinct !DILexicalBlock(scope: !200, file: !1, line: 128, column: 11)
!226 = !DILocation(line: 128, column: 13, scope: !225)
!227 = !DILocation(line: 128, column: 11, scope: !200)
!228 = !DILocation(line: 129, column: 5, scope: !229)
!229 = distinct !DILexicalBlock(scope: !225, file: !1, line: 128, column: 21)
!230 = !DILocation(line: 129, column: 13, scope: !229)
!231 = !DILocation(line: 129, column: 17, scope: !229)
!232 = !DILocation(line: 130, column: 5, scope: !229)
!233 = !DILocation(line: 130, column: 13, scope: !229)
!234 = !DILocation(line: 130, column: 17, scope: !229)
!235 = !DILocation(line: 131, column: 5, scope: !229)
!236 = !DILocation(line: 133, column: 11, scope: !237)
!237 = distinct !DILexicalBlock(scope: !225, file: !1, line: 133, column: 11)
!238 = !DILocation(line: 133, column: 13, scope: !237)
!239 = !DILocation(line: 133, column: 11, scope: !225)
!240 = !DILocation(line: 134, column: 21, scope: !241)
!241 = distinct !DILexicalBlock(scope: !237, file: !1, line: 133, column: 22)
!242 = !DILocation(line: 134, column: 5, scope: !241)
!243 = !DILocation(line: 134, column: 13, scope: !241)
!244 = !DILocation(line: 134, column: 17, scope: !241)
!245 = !DILocation(line: 135, column: 5, scope: !241)
!246 = !DILocation(line: 135, column: 13, scope: !241)
!247 = !DILocation(line: 135, column: 17, scope: !241)
!248 = !DILocation(line: 136, column: 5, scope: !241)
!249 = !DILocation(line: 138, column: 11, scope: !250)
!250 = distinct !DILexicalBlock(scope: !237, file: !1, line: 138, column: 11)
!251 = !DILocation(line: 138, column: 13, scope: !250)
!252 = !DILocation(line: 138, column: 11, scope: !237)
!253 = !DILocalVariable(name: "p_ellm2", scope: !254, file: !1, line: 141, type: !42)
!254 = distinct !DILexicalBlock(scope: !250, file: !1, line: 138, column: 23)
!255 = !DILocation(line: 141, column: 12, scope: !254)
!256 = !DILocalVariable(name: "p_ellm1", scope: !254, file: !1, line: 142, type: !42)
!257 = !DILocation(line: 142, column: 12, scope: !254)
!258 = !DILocation(line: 142, column: 22, scope: !254)
!259 = !DILocalVariable(name: "p_ell", scope: !254, file: !1, line: 143, type: !42)
!260 = !DILocation(line: 143, column: 12, scope: !254)
!261 = !DILocation(line: 143, column: 20, scope: !254)
!262 = !DILocalVariable(name: "e_ellm2", scope: !254, file: !1, line: 145, type: !42)
!263 = !DILocation(line: 145, column: 12, scope: !254)
!264 = !DILocalVariable(name: "e_ellm1", scope: !254, file: !1, line: 146, type: !42)
!265 = !DILocation(line: 146, column: 12, scope: !254)
!266 = !DILocation(line: 146, column: 27, scope: !254)
!267 = !DILocation(line: 146, column: 22, scope: !254)
!268 = !DILocation(line: 146, column: 29, scope: !254)
!269 = !DILocalVariable(name: "e_ell", scope: !254, file: !1, line: 147, type: !42)
!270 = !DILocation(line: 147, column: 12, scope: !254)
!271 = !DILocation(line: 147, column: 20, scope: !254)
!272 = !DILocalVariable(name: "ell", scope: !254, file: !1, line: 149, type: !50)
!273 = !DILocation(line: 149, column: 9, scope: !254)
!274 = !DILocation(line: 151, column: 12, scope: !275)
!275 = distinct !DILexicalBlock(scope: !254, file: !1, line: 151, column: 5)
!276 = !DILocation(line: 151, column: 9, scope: !275)
!277 = !DILocation(line: 151, column: 16, scope: !278)
!278 = !DILexicalBlockFile(scope: !279, file: !1, discriminator: 1)
!279 = distinct !DILexicalBlock(scope: !275, file: !1, line: 151, column: 5)
!280 = !DILocation(line: 151, column: 23, scope: !278)
!281 = !DILocation(line: 151, column: 20, scope: !278)
!282 = !DILocation(line: 151, column: 5, scope: !278)
!283 = !DILocation(line: 152, column: 16, scope: !284)
!284 = distinct !DILexicalBlock(scope: !279, file: !1, line: 151, column: 32)
!285 = !DILocation(line: 152, column: 21, scope: !284)
!286 = !DILocation(line: 152, column: 20, scope: !284)
!287 = !DILocation(line: 152, column: 24, scope: !284)
!288 = !DILocation(line: 152, column: 18, scope: !284)
!289 = !DILocation(line: 152, column: 17, scope: !284)
!290 = !DILocation(line: 152, column: 28, scope: !284)
!291 = !DILocation(line: 152, column: 27, scope: !284)
!292 = !DILocation(line: 152, column: 39, scope: !284)
!293 = !DILocation(line: 152, column: 42, scope: !284)
!294 = !DILocation(line: 152, column: 38, scope: !284)
!295 = !DILocation(line: 152, column: 46, scope: !284)
!296 = !DILocation(line: 152, column: 45, scope: !284)
!297 = !DILocation(line: 152, column: 36, scope: !284)
!298 = !DILocation(line: 152, column: 57, scope: !284)
!299 = !DILocation(line: 152, column: 55, scope: !284)
!300 = !DILocation(line: 152, column: 13, scope: !284)
!301 = !DILocation(line: 153, column: 17, scope: !284)
!302 = !DILocation(line: 153, column: 15, scope: !284)
!303 = !DILocation(line: 154, column: 17, scope: !284)
!304 = !DILocation(line: 154, column: 15, scope: !284)
!305 = !DILocation(line: 156, column: 25, scope: !284)
!306 = !DILocation(line: 156, column: 20, scope: !284)
!307 = !DILocation(line: 156, column: 31, scope: !284)
!308 = !DILocation(line: 156, column: 30, scope: !284)
!309 = !DILocation(line: 156, column: 29, scope: !284)
!310 = !DILocation(line: 156, column: 34, scope: !284)
!311 = !DILocation(line: 156, column: 27, scope: !284)
!312 = !DILocation(line: 156, column: 42, scope: !284)
!313 = !DILocation(line: 156, column: 40, scope: !284)
!314 = !DILocation(line: 156, column: 53, scope: !284)
!315 = !DILocation(line: 156, column: 56, scope: !284)
!316 = !DILocation(line: 156, column: 62, scope: !284)
!317 = !DILocation(line: 156, column: 61, scope: !284)
!318 = !DILocation(line: 156, column: 50, scope: !284)
!319 = !DILocation(line: 156, column: 18, scope: !284)
!320 = !DILocation(line: 156, column: 71, scope: !284)
!321 = !DILocation(line: 156, column: 70, scope: !284)
!322 = !DILocation(line: 156, column: 13, scope: !284)
!323 = !DILocation(line: 157, column: 17, scope: !284)
!324 = !DILocation(line: 157, column: 15, scope: !284)
!325 = !DILocation(line: 158, column: 17, scope: !284)
!326 = !DILocation(line: 158, column: 15, scope: !284)
!327 = !DILocation(line: 159, column: 5, scope: !284)
!328 = !DILocation(line: 151, column: 29, scope: !329)
!329 = !DILexicalBlockFile(scope: !279, file: !1, discriminator: 2)
!330 = !DILocation(line: 151, column: 5, scope: !329)
!331 = distinct !{!331, !332}
!332 = !DILocation(line: 151, column: 5, scope: !254)
!333 = !DILocation(line: 161, column: 19, scope: !254)
!334 = !DILocation(line: 161, column: 5, scope: !254)
!335 = !DILocation(line: 161, column: 13, scope: !254)
!336 = !DILocation(line: 161, column: 17, scope: !254)
!337 = !DILocation(line: 162, column: 19, scope: !254)
!338 = !DILocation(line: 162, column: 27, scope: !254)
!339 = !DILocation(line: 162, column: 34, scope: !254)
!340 = !DILocation(line: 162, column: 29, scope: !254)
!341 = !DILocation(line: 162, column: 28, scope: !254)
!342 = !DILocation(line: 162, column: 40, scope: !254)
!343 = !DILocation(line: 162, column: 25, scope: !254)
!344 = !DILocation(line: 162, column: 5, scope: !254)
!345 = !DILocation(line: 162, column: 13, scope: !254)
!346 = !DILocation(line: 162, column: 17, scope: !254)
!347 = !DILocation(line: 163, column: 5, scope: !254)
!348 = !DILocalVariable(name: "u", scope: !349, file: !1, line: 169, type: !42)
!349 = distinct !DILexicalBlock(scope: !250, file: !1, line: 165, column: 8)
!350 = !DILocation(line: 169, column: 12, scope: !349)
!351 = !DILocation(line: 169, column: 17, scope: !349)
!352 = !DILocation(line: 169, column: 19, scope: !349)
!353 = !DILocalVariable(name: "th", scope: !349, file: !1, line: 170, type: !42)
!354 = !DILocation(line: 170, column: 12, scope: !349)
!355 = !DILocation(line: 170, column: 22, scope: !349)
!356 = !DILocation(line: 170, column: 17, scope: !349)
!357 = !DILocalVariable(name: "J0", scope: !349, file: !1, line: 171, type: !52)
!358 = !DILocation(line: 171, column: 19, scope: !349)
!359 = !DILocalVariable(name: "Jm1", scope: !349, file: !1, line: 172, type: !52)
!360 = !DILocation(line: 172, column: 19, scope: !349)
!361 = !DILocalVariable(name: "stat_J0", scope: !349, file: !1, line: 173, type: !50)
!362 = !DILocation(line: 173, column: 9, scope: !349)
!363 = !DILocation(line: 173, column: 39, scope: !349)
!364 = !DILocation(line: 173, column: 41, scope: !349)
!365 = !DILocation(line: 173, column: 40, scope: !349)
!366 = !DILocation(line: 173, column: 20, scope: !349)
!367 = !DILocalVariable(name: "stat_Jm1", scope: !349, file: !1, line: 174, type: !50)
!368 = !DILocation(line: 174, column: 9, scope: !349)
!369 = !DILocation(line: 174, column: 43, scope: !349)
!370 = !DILocation(line: 174, column: 45, scope: !349)
!371 = !DILocation(line: 174, column: 44, scope: !349)
!372 = !DILocation(line: 174, column: 20, scope: !349)
!373 = !DILocalVariable(name: "pre", scope: !349, file: !1, line: 175, type: !42)
!374 = !DILocation(line: 175, column: 12, scope: !349)
!375 = !DILocalVariable(name: "B00", scope: !349, file: !1, line: 176, type: !42)
!376 = !DILocation(line: 176, column: 12, scope: !349)
!377 = !DILocalVariable(name: "c1", scope: !349, file: !1, line: 177, type: !42)
!378 = !DILocation(line: 177, column: 12, scope: !349)
!379 = !DILocation(line: 182, column: 8, scope: !380)
!380 = distinct !DILexicalBlock(scope: !349, file: !1, line: 182, column: 8)
!381 = !DILocation(line: 182, column: 11, scope: !380)
!382 = !DILocation(line: 182, column: 8, scope: !349)
!383 = !DILocation(line: 183, column: 20, scope: !384)
!384 = distinct !DILexicalBlock(scope: !380, file: !1, line: 182, column: 36)
!385 = !DILocation(line: 183, column: 23, scope: !384)
!386 = !DILocation(line: 183, column: 22, scope: !384)
!387 = !DILocation(line: 183, column: 25, scope: !384)
!388 = !DILocation(line: 183, column: 18, scope: !384)
!389 = !DILocation(line: 183, column: 31, scope: !384)
!390 = !DILocation(line: 183, column: 11, scope: !384)
!391 = !DILocation(line: 184, column: 19, scope: !384)
!392 = !DILocation(line: 184, column: 22, scope: !384)
!393 = !DILocation(line: 184, column: 21, scope: !384)
!394 = !DILocation(line: 184, column: 24, scope: !384)
!395 = !DILocation(line: 184, column: 17, scope: !384)
!396 = !DILocation(line: 184, column: 11, scope: !384)
!397 = !DILocation(line: 185, column: 5, scope: !384)
!398 = !DILocalVariable(name: "sin_th", scope: !399, file: !1, line: 187, type: !42)
!399 = distinct !DILexicalBlock(scope: !380, file: !1, line: 186, column: 10)
!400 = !DILocation(line: 187, column: 14, scope: !399)
!401 = !DILocation(line: 187, column: 34, scope: !399)
!402 = !DILocation(line: 187, column: 36, scope: !399)
!403 = !DILocation(line: 187, column: 35, scope: !399)
!404 = !DILocation(line: 187, column: 32, scope: !399)
!405 = !DILocation(line: 187, column: 23, scope: !399)
!406 = !DILocalVariable(name: "cot_th", scope: !399, file: !1, line: 188, type: !42)
!407 = !DILocation(line: 188, column: 14, scope: !399)
!408 = !DILocation(line: 188, column: 23, scope: !399)
!409 = !DILocation(line: 188, column: 27, scope: !399)
!410 = !DILocation(line: 188, column: 25, scope: !399)
!411 = !DILocation(line: 189, column: 30, scope: !399)
!412 = !DILocation(line: 189, column: 35, scope: !399)
!413 = !DILocation(line: 189, column: 33, scope: !399)
!414 = !DILocation(line: 189, column: 28, scope: !399)
!415 = !DILocation(line: 189, column: 21, scope: !399)
!416 = !DILocation(line: 189, column: 46, scope: !399)
!417 = !DILocation(line: 189, column: 49, scope: !399)
!418 = !DILocation(line: 189, column: 48, scope: !399)
!419 = !DILocation(line: 189, column: 43, scope: !399)
!420 = !DILocation(line: 189, column: 11, scope: !399)
!421 = !DILocation(line: 190, column: 18, scope: !399)
!422 = !DILocation(line: 190, column: 21, scope: !399)
!423 = !DILocation(line: 190, column: 20, scope: !399)
!424 = !DILocation(line: 190, column: 13, scope: !399)
!425 = !DILocation(line: 190, column: 11, scope: !399)
!426 = !DILocation(line: 193, column: 10, scope: !349)
!427 = !DILocation(line: 193, column: 13, scope: !349)
!428 = !DILocation(line: 193, column: 12, scope: !349)
!429 = !DILocation(line: 193, column: 17, scope: !349)
!430 = !DILocation(line: 193, column: 15, scope: !349)
!431 = !DILocation(line: 193, column: 8, scope: !349)
!432 = !DILocation(line: 195, column: 20, scope: !349)
!433 = !DILocation(line: 195, column: 30, scope: !349)
!434 = !DILocation(line: 195, column: 36, scope: !349)
!435 = !DILocation(line: 195, column: 45, scope: !349)
!436 = !DILocation(line: 195, column: 39, scope: !349)
!437 = !DILocation(line: 195, column: 34, scope: !349)
!438 = !DILocation(line: 195, column: 24, scope: !349)
!439 = !DILocation(line: 195, column: 5, scope: !349)
!440 = !DILocation(line: 195, column: 13, scope: !349)
!441 = !DILocation(line: 195, column: 18, scope: !349)
!442 = !DILocation(line: 196, column: 20, scope: !349)
!443 = !DILocation(line: 196, column: 30, scope: !349)
!444 = !DILocation(line: 196, column: 41, scope: !349)
!445 = !DILocation(line: 196, column: 36, scope: !349)
!446 = !DILocation(line: 196, column: 51, scope: !349)
!447 = !DILocation(line: 196, column: 45, scope: !349)
!448 = !DILocation(line: 196, column: 34, scope: !349)
!449 = !DILocation(line: 196, column: 24, scope: !349)
!450 = !DILocation(line: 196, column: 5, scope: !349)
!451 = !DILocation(line: 196, column: 13, scope: !349)
!452 = !DILocation(line: 196, column: 18, scope: !349)
!453 = !DILocation(line: 197, column: 48, scope: !349)
!454 = !DILocation(line: 197, column: 56, scope: !349)
!455 = !DILocation(line: 197, column: 43, scope: !349)
!456 = !DILocation(line: 197, column: 41, scope: !349)
!457 = !DILocation(line: 197, column: 5, scope: !349)
!458 = !DILocation(line: 197, column: 13, scope: !349)
!459 = !DILocation(line: 197, column: 17, scope: !349)
!460 = !DILocation(line: 199, column: 12, scope: !349)
!461 = !DILocation(line: 199, column: 12, scope: !462)
!462 = !DILexicalBlockFile(scope: !349, file: !1, discriminator: 1)
!463 = !DILocation(line: 199, column: 12, scope: !464)
!464 = !DILexicalBlockFile(scope: !349, file: !1, discriminator: 2)
!465 = !DILocation(line: 199, column: 12, scope: !466)
!466 = !DILexicalBlockFile(scope: !349, file: !1, discriminator: 3)
!467 = !DILocation(line: 199, column: 12, scope: !468)
!468 = !DILexicalBlockFile(scope: !349, file: !1, discriminator: 4)
!469 = !DILocation(line: 199, column: 12, scope: !470)
!470 = !DILexicalBlockFile(scope: !349, file: !1, discriminator: 5)
!471 = !DILocation(line: 199, column: 12, scope: !472)
!472 = !DILexicalBlockFile(scope: !349, file: !1, discriminator: 6)
!473 = !DILocation(line: 199, column: 5, scope: !472)
!474 = !DILocation(line: 201, column: 1, scope: !137)
!475 = distinct !DISubprogram(name: "gsl_sf_legendre_Pl_array", scope: !1, file: !1, line: 205, type: !476, isLocal: false, isDefinition: true, scopeLine: 206, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!476 = !DISubroutineType(types: !477)
!477 = !{!50, !140, !141, !478}
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64, align: 64)
!479 = !DILocalVariable(name: "lmax", arg: 1, scope: !475, file: !1, line: 205, type: !140)
!480 = !DILocation(line: 205, column: 36, scope: !475)
!481 = !DILocalVariable(name: "x", arg: 2, scope: !475, file: !1, line: 205, type: !141)
!482 = !DILocation(line: 205, column: 55, scope: !475)
!483 = !DILocalVariable(name: "result_array", arg: 3, scope: !475, file: !1, line: 205, type: !478)
!484 = !DILocation(line: 205, column: 67, scope: !475)
!485 = !DILocation(line: 209, column: 6, scope: !486)
!486 = distinct !DILexicalBlock(scope: !475, file: !1, line: 209, column: 6)
!487 = !DILocation(line: 209, column: 11, scope: !486)
!488 = !DILocation(line: 209, column: 15, scope: !486)
!489 = !DILocation(line: 209, column: 18, scope: !490)
!490 = !DILexicalBlockFile(scope: !486, file: !1, discriminator: 1)
!491 = !DILocation(line: 209, column: 20, scope: !490)
!492 = !DILocation(line: 209, column: 27, scope: !490)
!493 = !DILocation(line: 209, column: 30, scope: !494)
!494 = !DILexicalBlockFile(scope: !486, file: !1, discriminator: 2)
!495 = !DILocation(line: 209, column: 32, scope: !494)
!496 = !DILocation(line: 209, column: 6, scope: !494)
!497 = !DILocation(line: 210, column: 5, scope: !498)
!498 = distinct !DILexicalBlock(scope: !486, file: !1, line: 209, column: 39)
!499 = distinct !{!499, !497}
!500 = !DILocation(line: 210, column: 5, scope: !501)
!501 = !DILexicalBlockFile(scope: !502, file: !1, discriminator: 1)
!502 = distinct !DILexicalBlock(scope: !498, file: !1, line: 210, column: 5)
!503 = !DILocation(line: 211, column: 3, scope: !498)
!504 = !DILocation(line: 212, column: 11, scope: !505)
!505 = distinct !DILexicalBlock(scope: !486, file: !1, line: 212, column: 11)
!506 = !DILocation(line: 212, column: 16, scope: !505)
!507 = !DILocation(line: 212, column: 11, scope: !486)
!508 = !DILocation(line: 213, column: 5, scope: !509)
!509 = distinct !DILexicalBlock(scope: !505, file: !1, line: 212, column: 22)
!510 = !DILocation(line: 213, column: 21, scope: !509)
!511 = !DILocation(line: 214, column: 5, scope: !509)
!512 = !DILocation(line: 216, column: 11, scope: !513)
!513 = distinct !DILexicalBlock(scope: !505, file: !1, line: 216, column: 11)
!514 = !DILocation(line: 216, column: 16, scope: !513)
!515 = !DILocation(line: 216, column: 11, scope: !505)
!516 = !DILocation(line: 217, column: 5, scope: !517)
!517 = distinct !DILexicalBlock(scope: !513, file: !1, line: 216, column: 22)
!518 = !DILocation(line: 217, column: 21, scope: !517)
!519 = !DILocation(line: 218, column: 23, scope: !517)
!520 = !DILocation(line: 218, column: 5, scope: !517)
!521 = !DILocation(line: 218, column: 21, scope: !517)
!522 = !DILocation(line: 219, column: 5, scope: !517)
!523 = !DILocalVariable(name: "p_ellm2", scope: !524, file: !1, line: 224, type: !42)
!524 = distinct !DILexicalBlock(scope: !513, file: !1, line: 221, column: 8)
!525 = !DILocation(line: 224, column: 12, scope: !524)
!526 = !DILocalVariable(name: "p_ellm1", scope: !524, file: !1, line: 225, type: !42)
!527 = !DILocation(line: 225, column: 12, scope: !524)
!528 = !DILocation(line: 225, column: 22, scope: !524)
!529 = !DILocalVariable(name: "p_ell", scope: !524, file: !1, line: 226, type: !42)
!530 = !DILocation(line: 226, column: 12, scope: !524)
!531 = !DILocation(line: 226, column: 20, scope: !524)
!532 = !DILocalVariable(name: "ell", scope: !524, file: !1, line: 227, type: !50)
!533 = !DILocation(line: 227, column: 9, scope: !524)
!534 = !DILocation(line: 229, column: 5, scope: !524)
!535 = !DILocation(line: 229, column: 21, scope: !524)
!536 = !DILocation(line: 230, column: 23, scope: !524)
!537 = !DILocation(line: 230, column: 5, scope: !524)
!538 = !DILocation(line: 230, column: 21, scope: !524)
!539 = !DILocation(line: 232, column: 12, scope: !540)
!540 = distinct !DILexicalBlock(scope: !524, file: !1, line: 232, column: 5)
!541 = !DILocation(line: 232, column: 9, scope: !540)
!542 = !DILocation(line: 232, column: 16, scope: !543)
!543 = !DILexicalBlockFile(scope: !544, file: !1, discriminator: 1)
!544 = distinct !DILexicalBlock(scope: !540, file: !1, line: 232, column: 5)
!545 = !DILocation(line: 232, column: 23, scope: !543)
!546 = !DILocation(line: 232, column: 20, scope: !543)
!547 = !DILocation(line: 232, column: 5, scope: !543)
!548 = !DILocation(line: 233, column: 16, scope: !549)
!549 = distinct !DILexicalBlock(scope: !544, file: !1, line: 232, column: 35)
!550 = !DILocation(line: 233, column: 21, scope: !549)
!551 = !DILocation(line: 233, column: 20, scope: !549)
!552 = !DILocation(line: 233, column: 24, scope: !549)
!553 = !DILocation(line: 233, column: 18, scope: !549)
!554 = !DILocation(line: 233, column: 17, scope: !549)
!555 = !DILocation(line: 233, column: 28, scope: !549)
!556 = !DILocation(line: 233, column: 27, scope: !549)
!557 = !DILocation(line: 233, column: 39, scope: !549)
!558 = !DILocation(line: 233, column: 42, scope: !549)
!559 = !DILocation(line: 233, column: 38, scope: !549)
!560 = !DILocation(line: 233, column: 46, scope: !549)
!561 = !DILocation(line: 233, column: 45, scope: !549)
!562 = !DILocation(line: 233, column: 36, scope: !549)
!563 = !DILocation(line: 233, column: 57, scope: !549)
!564 = !DILocation(line: 233, column: 55, scope: !549)
!565 = !DILocation(line: 233, column: 13, scope: !549)
!566 = !DILocation(line: 234, column: 17, scope: !549)
!567 = !DILocation(line: 234, column: 15, scope: !549)
!568 = !DILocation(line: 235, column: 17, scope: !549)
!569 = !DILocation(line: 235, column: 15, scope: !549)
!570 = !DILocation(line: 236, column: 27, scope: !549)
!571 = !DILocation(line: 236, column: 20, scope: !549)
!572 = !DILocation(line: 236, column: 7, scope: !549)
!573 = !DILocation(line: 236, column: 25, scope: !549)
!574 = !DILocation(line: 237, column: 5, scope: !549)
!575 = !DILocation(line: 232, column: 32, scope: !576)
!576 = !DILexicalBlockFile(scope: !544, file: !1, discriminator: 2)
!577 = !DILocation(line: 232, column: 5, scope: !576)
!578 = distinct !{!578, !579}
!579 = !DILocation(line: 232, column: 5, scope: !524)
!580 = !DILocation(line: 239, column: 5, scope: !524)
!581 = !DILocation(line: 241, column: 1, scope: !475)
!582 = distinct !DISubprogram(name: "gsl_sf_legendre_Pl_deriv_array", scope: !1, file: !1, line: 245, type: !583, isLocal: false, isDefinition: true, scopeLine: 246, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!583 = !DISubroutineType(types: !584)
!584 = !{!50, !140, !141, !478, !478}
!585 = !DILocalVariable(name: "lmax", arg: 1, scope: !582, file: !1, line: 245, type: !140)
!586 = !DILocation(line: 245, column: 42, scope: !582)
!587 = !DILocalVariable(name: "x", arg: 2, scope: !582, file: !1, line: 245, type: !141)
!588 = !DILocation(line: 245, column: 61, scope: !582)
!589 = !DILocalVariable(name: "result_array", arg: 3, scope: !582, file: !1, line: 245, type: !478)
!590 = !DILocation(line: 245, column: 73, scope: !582)
!591 = !DILocalVariable(name: "result_deriv_array", arg: 4, scope: !582, file: !1, line: 245, type: !478)
!592 = !DILocation(line: 245, column: 96, scope: !582)
!593 = !DILocalVariable(name: "stat_array", scope: !582, file: !1, line: 247, type: !50)
!594 = !DILocation(line: 247, column: 7, scope: !582)
!595 = !DILocation(line: 247, column: 45, scope: !582)
!596 = !DILocation(line: 247, column: 51, scope: !582)
!597 = !DILocation(line: 247, column: 54, scope: !582)
!598 = !DILocation(line: 247, column: 20, scope: !582)
!599 = !DILocation(line: 249, column: 6, scope: !600)
!600 = distinct !DILexicalBlock(scope: !582, file: !1, line: 249, column: 6)
!601 = !DILocation(line: 249, column: 11, scope: !600)
!602 = !DILocation(line: 249, column: 6, scope: !582)
!603 = !DILocation(line: 249, column: 17, scope: !604)
!604 = !DILexicalBlockFile(scope: !600, file: !1, discriminator: 1)
!605 = !DILocation(line: 249, column: 39, scope: !604)
!606 = !DILocation(line: 250, column: 6, scope: !607)
!607 = distinct !DILexicalBlock(scope: !582, file: !1, line: 250, column: 6)
!608 = !DILocation(line: 250, column: 11, scope: !607)
!609 = !DILocation(line: 250, column: 6, scope: !582)
!610 = !DILocation(line: 250, column: 17, scope: !611)
!611 = !DILexicalBlockFile(scope: !607, file: !1, discriminator: 1)
!612 = !DILocation(line: 250, column: 39, scope: !611)
!613 = !DILocation(line: 252, column: 6, scope: !614)
!614 = distinct !DILexicalBlock(scope: !582, file: !1, line: 252, column: 6)
!615 = !DILocation(line: 252, column: 17, scope: !614)
!616 = !DILocation(line: 252, column: 6, scope: !582)
!617 = !DILocalVariable(name: "ell", scope: !618, file: !1, line: 254, type: !50)
!618 = distinct !DILexicalBlock(scope: !614, file: !1, line: 253, column: 3)
!619 = !DILocation(line: 254, column: 9, scope: !618)
!620 = !DILocation(line: 256, column: 13, scope: !621)
!621 = distinct !DILexicalBlock(scope: !618, file: !1, line: 256, column: 8)
!622 = !DILocation(line: 256, column: 15, scope: !621)
!623 = !DILocation(line: 256, column: 8, scope: !621)
!624 = !DILocation(line: 256, column: 23, scope: !621)
!625 = !DILocation(line: 256, column: 27, scope: !621)
!626 = !DILocation(line: 256, column: 21, scope: !621)
!627 = !DILocation(line: 256, column: 34, scope: !621)
!628 = !DILocation(line: 256, column: 38, scope: !621)
!629 = !DILocation(line: 256, column: 32, scope: !621)
!630 = !DILocation(line: 256, column: 44, scope: !621)
!631 = !DILocation(line: 256, column: 8, scope: !618)
!632 = !DILocation(line: 259, column: 15, scope: !633)
!633 = distinct !DILexicalBlock(scope: !634, file: !1, line: 259, column: 7)
!634 = distinct !DILexicalBlock(scope: !621, file: !1, line: 257, column: 5)
!635 = !DILocation(line: 259, column: 11, scope: !633)
!636 = !DILocation(line: 259, column: 20, scope: !637)
!637 = !DILexicalBlockFile(scope: !638, file: !1, discriminator: 1)
!638 = distinct !DILexicalBlock(scope: !633, file: !1, line: 259, column: 7)
!639 = !DILocation(line: 259, column: 27, scope: !637)
!640 = !DILocation(line: 259, column: 24, scope: !637)
!641 = !DILocation(line: 259, column: 7, scope: !637)
!642 = !DILocalVariable(name: "pre", scope: !643, file: !1, line: 261, type: !141)
!643 = distinct !DILexicalBlock(scope: !638, file: !1, line: 260, column: 7)
!644 = !DILocation(line: 261, column: 22, scope: !643)
!645 = !DILocation(line: 261, column: 34, scope: !643)
!646 = !DILocation(line: 261, column: 32, scope: !643)
!647 = !DILocation(line: 261, column: 41, scope: !643)
!648 = !DILocation(line: 261, column: 44, scope: !643)
!649 = !DILocation(line: 261, column: 38, scope: !643)
!650 = !DILocation(line: 262, column: 35, scope: !643)
!651 = !DILocation(line: 262, column: 60, scope: !643)
!652 = !DILocation(line: 262, column: 59, scope: !643)
!653 = !DILocation(line: 262, column: 53, scope: !643)
!654 = !DILocation(line: 262, column: 66, scope: !643)
!655 = !DILocation(line: 262, column: 69, scope: !643)
!656 = !DILocation(line: 262, column: 63, scope: !643)
!657 = !DILocation(line: 262, column: 76, scope: !643)
!658 = !DILocation(line: 262, column: 79, scope: !643)
!659 = !DILocation(line: 262, column: 74, scope: !643)
!660 = !DILocation(line: 262, column: 46, scope: !643)
!661 = !DILocation(line: 262, column: 39, scope: !643)
!662 = !DILocation(line: 262, column: 28, scope: !643)
!663 = !DILocation(line: 262, column: 9, scope: !643)
!664 = !DILocation(line: 262, column: 33, scope: !643)
!665 = !DILocation(line: 263, column: 7, scope: !643)
!666 = !DILocation(line: 259, column: 36, scope: !667)
!667 = !DILexicalBlockFile(scope: !638, file: !1, discriminator: 2)
!668 = !DILocation(line: 259, column: 7, scope: !667)
!669 = distinct !{!669, !670}
!670 = !DILocation(line: 259, column: 7, scope: !634)
!671 = !DILocation(line: 264, column: 5, scope: !634)
!672 = !DILocation(line: 265, column: 18, scope: !673)
!673 = distinct !DILexicalBlock(scope: !621, file: !1, line: 265, column: 13)
!674 = !DILocation(line: 265, column: 20, scope: !673)
!675 = !DILocation(line: 265, column: 13, scope: !673)
!676 = !DILocation(line: 265, column: 28, scope: !673)
!677 = !DILocation(line: 265, column: 32, scope: !673)
!678 = !DILocation(line: 265, column: 26, scope: !673)
!679 = !DILocation(line: 265, column: 39, scope: !673)
!680 = !DILocation(line: 265, column: 43, scope: !673)
!681 = !DILocation(line: 265, column: 37, scope: !673)
!682 = !DILocation(line: 265, column: 49, scope: !673)
!683 = !DILocation(line: 265, column: 13, scope: !621)
!684 = !DILocation(line: 268, column: 15, scope: !685)
!685 = distinct !DILexicalBlock(scope: !686, file: !1, line: 268, column: 7)
!686 = distinct !DILexicalBlock(scope: !673, file: !1, line: 266, column: 5)
!687 = !DILocation(line: 268, column: 11, scope: !685)
!688 = !DILocation(line: 268, column: 20, scope: !689)
!689 = !DILexicalBlockFile(scope: !690, file: !1, discriminator: 1)
!690 = distinct !DILexicalBlock(scope: !685, file: !1, line: 268, column: 7)
!691 = !DILocation(line: 268, column: 27, scope: !689)
!692 = !DILocation(line: 268, column: 24, scope: !689)
!693 = !DILocation(line: 268, column: 7, scope: !689)
!694 = !DILocalVariable(name: "sgn", scope: !695, file: !1, line: 270, type: !141)
!695 = distinct !DILexicalBlock(scope: !690, file: !1, line: 269, column: 7)
!696 = !DILocation(line: 270, column: 22, scope: !695)
!697 = !DILocation(line: 270, column: 30, scope: !695)
!698 = !DILocalVariable(name: "pre", scope: !695, file: !1, line: 271, type: !141)
!699 = !DILocation(line: 271, column: 22, scope: !695)
!700 = !DILocation(line: 271, column: 28, scope: !695)
!701 = !DILocation(line: 271, column: 32, scope: !695)
!702 = !DILocation(line: 271, column: 40, scope: !695)
!703 = !DILocation(line: 271, column: 38, scope: !695)
!704 = !DILocation(line: 271, column: 47, scope: !695)
!705 = !DILocation(line: 271, column: 50, scope: !695)
!706 = !DILocation(line: 271, column: 44, scope: !695)
!707 = !DILocation(line: 272, column: 35, scope: !695)
!708 = !DILocation(line: 272, column: 60, scope: !695)
!709 = !DILocation(line: 272, column: 59, scope: !695)
!710 = !DILocation(line: 272, column: 53, scope: !695)
!711 = !DILocation(line: 272, column: 66, scope: !695)
!712 = !DILocation(line: 272, column: 69, scope: !695)
!713 = !DILocation(line: 272, column: 63, scope: !695)
!714 = !DILocation(line: 272, column: 76, scope: !695)
!715 = !DILocation(line: 272, column: 79, scope: !695)
!716 = !DILocation(line: 272, column: 74, scope: !695)
!717 = !DILocation(line: 272, column: 46, scope: !695)
!718 = !DILocation(line: 272, column: 39, scope: !695)
!719 = !DILocation(line: 272, column: 28, scope: !695)
!720 = !DILocation(line: 272, column: 9, scope: !695)
!721 = !DILocation(line: 272, column: 33, scope: !695)
!722 = !DILocation(line: 273, column: 7, scope: !695)
!723 = !DILocation(line: 268, column: 36, scope: !724)
!724 = !DILexicalBlockFile(scope: !690, file: !1, discriminator: 2)
!725 = !DILocation(line: 268, column: 7, scope: !724)
!726 = distinct !{!726, !727}
!727 = !DILocation(line: 268, column: 7, scope: !686)
!728 = !DILocation(line: 274, column: 5, scope: !686)
!729 = !DILocalVariable(name: "diff_a", scope: !730, file: !1, line: 277, type: !141)
!730 = distinct !DILexicalBlock(scope: !673, file: !1, line: 276, column: 5)
!731 = !DILocation(line: 277, column: 20, scope: !730)
!732 = !DILocation(line: 277, column: 35, scope: !730)
!733 = !DILocation(line: 277, column: 33, scope: !730)
!734 = !DILocalVariable(name: "diff_b", scope: !730, file: !1, line: 278, type: !141)
!735 = !DILocation(line: 278, column: 20, scope: !730)
!736 = !DILocation(line: 278, column: 35, scope: !730)
!737 = !DILocation(line: 278, column: 33, scope: !730)
!738 = !DILocation(line: 279, column: 15, scope: !739)
!739 = distinct !DILexicalBlock(scope: !730, file: !1, line: 279, column: 7)
!740 = !DILocation(line: 279, column: 11, scope: !739)
!741 = !DILocation(line: 279, column: 20, scope: !742)
!742 = !DILexicalBlockFile(scope: !743, file: !1, discriminator: 1)
!743 = distinct !DILexicalBlock(scope: !739, file: !1, line: 279, column: 7)
!744 = !DILocation(line: 279, column: 27, scope: !742)
!745 = !DILocation(line: 279, column: 24, scope: !742)
!746 = !DILocation(line: 279, column: 7, scope: !742)
!747 = !DILocation(line: 281, column: 37, scope: !748)
!748 = distinct !DILexicalBlock(scope: !743, file: !1, line: 280, column: 7)
!749 = !DILocation(line: 281, column: 35, scope: !748)
!750 = !DILocation(line: 281, column: 44, scope: !748)
!751 = !DILocation(line: 281, column: 61, scope: !748)
!752 = !DILocation(line: 281, column: 48, scope: !748)
!753 = !DILocation(line: 281, column: 46, scope: !748)
!754 = !DILocation(line: 281, column: 81, scope: !748)
!755 = !DILocation(line: 281, column: 84, scope: !748)
!756 = !DILocation(line: 281, column: 68, scope: !748)
!757 = !DILocation(line: 281, column: 66, scope: !748)
!758 = !DILocation(line: 281, column: 41, scope: !748)
!759 = !DILocation(line: 281, column: 92, scope: !748)
!760 = !DILocation(line: 281, column: 101, scope: !748)
!761 = !DILocation(line: 281, column: 99, scope: !748)
!762 = !DILocation(line: 281, column: 89, scope: !748)
!763 = !DILocation(line: 281, column: 28, scope: !748)
!764 = !DILocation(line: 281, column: 9, scope: !748)
!765 = !DILocation(line: 281, column: 33, scope: !748)
!766 = !DILocation(line: 282, column: 7, scope: !748)
!767 = !DILocation(line: 279, column: 36, scope: !768)
!768 = !DILexicalBlockFile(scope: !743, file: !1, discriminator: 2)
!769 = !DILocation(line: 279, column: 7, scope: !768)
!770 = distinct !{!770, !771}
!771 = !DILocation(line: 279, column: 7, scope: !730)
!772 = !DILocation(line: 285, column: 5, scope: !618)
!773 = !DILocation(line: 289, column: 12, scope: !774)
!774 = distinct !DILexicalBlock(scope: !614, file: !1, line: 288, column: 3)
!775 = !DILocation(line: 289, column: 5, scope: !774)
!776 = !DILocation(line: 291, column: 1, scope: !582)
!777 = distinct !DISubprogram(name: "gsl_sf_legendre_Plm_e", scope: !1, file: !1, line: 294, type: !778, isLocal: false, isDefinition: true, scopeLine: 295, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!778 = !DISubroutineType(types: !779)
!779 = !{!50, !140, !140, !141, !51}
!780 = !DILocalVariable(name: "l", arg: 1, scope: !777, file: !1, line: 294, type: !140)
!781 = !DILocation(line: 294, column: 33, scope: !777)
!782 = !DILocalVariable(name: "m", arg: 2, scope: !777, file: !1, line: 294, type: !140)
!783 = !DILocation(line: 294, column: 46, scope: !777)
!784 = !DILocalVariable(name: "x", arg: 3, scope: !777, file: !1, line: 294, type: !141)
!785 = !DILocation(line: 294, column: 62, scope: !777)
!786 = !DILocalVariable(name: "result", arg: 4, scope: !777, file: !1, line: 294, type: !51)
!787 = !DILocation(line: 294, column: 81, scope: !777)
!788 = !DILocalVariable(name: "dif", scope: !777, file: !1, line: 300, type: !141)
!789 = !DILocation(line: 300, column: 16, scope: !777)
!790 = !DILocation(line: 300, column: 22, scope: !777)
!791 = !DILocation(line: 300, column: 24, scope: !777)
!792 = !DILocation(line: 300, column: 23, scope: !777)
!793 = !DILocalVariable(name: "sum", scope: !777, file: !1, line: 301, type: !141)
!794 = !DILocation(line: 301, column: 16, scope: !777)
!795 = !DILocation(line: 301, column: 22, scope: !777)
!796 = !DILocation(line: 301, column: 24, scope: !777)
!797 = !DILocation(line: 301, column: 23, scope: !777)
!798 = !DILocalVariable(name: "t_d", scope: !777, file: !1, line: 302, type: !141)
!799 = !DILocation(line: 302, column: 16, scope: !777)
!800 = !DILocation(line: 302, column: 24, scope: !777)
!801 = !DILocation(line: 302, column: 28, scope: !777)
!802 = !DILocation(line: 302, column: 24, scope: !803)
!803 = !DILexicalBlockFile(scope: !777, file: !1, discriminator: 1)
!804 = !DILocation(line: 302, column: 49, scope: !805)
!805 = !DILexicalBlockFile(scope: !777, file: !1, discriminator: 2)
!806 = !DILocation(line: 302, column: 47, scope: !805)
!807 = !DILocation(line: 302, column: 60, scope: !805)
!808 = !DILocation(line: 302, column: 56, scope: !805)
!809 = !DILocation(line: 302, column: 64, scope: !805)
!810 = !DILocation(line: 302, column: 53, scope: !805)
!811 = !DILocation(line: 302, column: 24, scope: !805)
!812 = !DILocation(line: 302, column: 24, scope: !813)
!813 = !DILexicalBlockFile(scope: !777, file: !1, discriminator: 3)
!814 = !DILocation(line: 302, column: 16, scope: !813)
!815 = !DILocalVariable(name: "t_s", scope: !777, file: !1, line: 303, type: !141)
!816 = !DILocation(line: 303, column: 16, scope: !777)
!817 = !DILocation(line: 303, column: 24, scope: !777)
!818 = !DILocation(line: 303, column: 28, scope: !777)
!819 = !DILocation(line: 303, column: 24, scope: !803)
!820 = !DILocation(line: 303, column: 49, scope: !805)
!821 = !DILocation(line: 303, column: 47, scope: !805)
!822 = !DILocation(line: 303, column: 60, scope: !805)
!823 = !DILocation(line: 303, column: 56, scope: !805)
!824 = !DILocation(line: 303, column: 64, scope: !805)
!825 = !DILocation(line: 303, column: 53, scope: !805)
!826 = !DILocation(line: 303, column: 24, scope: !805)
!827 = !DILocation(line: 303, column: 24, scope: !813)
!828 = !DILocation(line: 303, column: 16, scope: !813)
!829 = !DILocalVariable(name: "exp_check", scope: !777, file: !1, line: 304, type: !141)
!830 = !DILocation(line: 304, column: 16, scope: !777)
!831 = !DILocation(line: 304, column: 42, scope: !777)
!832 = !DILocation(line: 304, column: 41, scope: !777)
!833 = !DILocation(line: 304, column: 43, scope: !777)
!834 = !DILocation(line: 304, column: 34, scope: !777)
!835 = !DILocation(line: 304, column: 32, scope: !777)
!836 = !DILocation(line: 304, column: 51, scope: !777)
!837 = !DILocation(line: 304, column: 49, scope: !777)
!838 = !DILocation(line: 304, column: 57, scope: !777)
!839 = !DILocation(line: 304, column: 55, scope: !777)
!840 = !DILocation(line: 308, column: 6, scope: !841)
!841 = distinct !DILexicalBlock(scope: !777, file: !1, line: 308, column: 6)
!842 = !DILocation(line: 308, column: 8, scope: !841)
!843 = !DILocation(line: 308, column: 12, scope: !841)
!844 = !DILocation(line: 308, column: 15, scope: !845)
!845 = !DILexicalBlockFile(scope: !841, file: !1, discriminator: 1)
!846 = !DILocation(line: 308, column: 19, scope: !845)
!847 = !DILocation(line: 308, column: 17, scope: !845)
!848 = !DILocation(line: 308, column: 21, scope: !845)
!849 = !DILocation(line: 308, column: 24, scope: !850)
!850 = !DILexicalBlockFile(scope: !841, file: !1, discriminator: 2)
!851 = !DILocation(line: 308, column: 26, scope: !850)
!852 = !DILocation(line: 308, column: 33, scope: !850)
!853 = !DILocation(line: 308, column: 36, scope: !854)
!854 = !DILexicalBlockFile(scope: !841, file: !1, discriminator: 3)
!855 = !DILocation(line: 308, column: 38, scope: !854)
!856 = !DILocation(line: 308, column: 6, scope: !854)
!857 = !DILocation(line: 309, column: 5, scope: !858)
!858 = distinct !DILexicalBlock(scope: !841, file: !1, line: 308, column: 45)
!859 = distinct !{!859, !857}
!860 = !DILocation(line: 309, column: 5, scope: !861)
!861 = !DILexicalBlockFile(scope: !862, file: !1, discriminator: 1)
!862 = distinct !DILexicalBlock(scope: !858, file: !1, line: 309, column: 5)
!863 = distinct !{!863, !864}
!864 = !DILocation(line: 309, column: 5, scope: !862)
!865 = !DILocation(line: 309, column: 5, scope: !866)
!866 = !DILexicalBlockFile(scope: !867, file: !1, discriminator: 2)
!867 = distinct !DILexicalBlock(scope: !862, file: !1, line: 309, column: 5)
!868 = !DILocation(line: 309, column: 5, scope: !869)
!869 = !DILexicalBlockFile(scope: !862, file: !1, discriminator: 3)
!870 = !DILocation(line: 310, column: 3, scope: !858)
!871 = !DILocation(line: 311, column: 11, scope: !872)
!872 = distinct !DILexicalBlock(scope: !841, file: !1, line: 311, column: 11)
!873 = !DILocation(line: 311, column: 21, scope: !872)
!874 = !DILocation(line: 311, column: 11, scope: !841)
!875 = !DILocation(line: 313, column: 5, scope: !876)
!876 = distinct !DILexicalBlock(scope: !872, file: !1, line: 311, column: 46)
!877 = distinct !{!877, !875}
!878 = !DILocation(line: 313, column: 5, scope: !879)
!879 = !DILexicalBlockFile(scope: !880, file: !1, discriminator: 1)
!880 = distinct !DILexicalBlock(scope: !876, file: !1, line: 313, column: 5)
!881 = distinct !{!881, !882}
!882 = !DILocation(line: 313, column: 5, scope: !880)
!883 = !DILocation(line: 313, column: 5, scope: !884)
!884 = !DILexicalBlockFile(scope: !885, file: !1, discriminator: 2)
!885 = distinct !DILexicalBlock(scope: !880, file: !1, line: 313, column: 5)
!886 = !DILocation(line: 313, column: 5, scope: !887)
!887 = !DILexicalBlockFile(scope: !880, file: !1, discriminator: 3)
!888 = !DILocation(line: 314, column: 3, scope: !876)
!889 = !DILocalVariable(name: "err_amp", scope: !890, file: !1, line: 319, type: !141)
!890 = distinct !DILexicalBlock(scope: !872, file: !1, line: 315, column: 8)
!891 = !DILocation(line: 319, column: 18, scope: !890)
!892 = !DILocation(line: 319, column: 67, scope: !890)
!893 = !DILocation(line: 319, column: 62, scope: !890)
!894 = !DILocation(line: 319, column: 61, scope: !890)
!895 = !DILocation(line: 319, column: 53, scope: !896)
!896 = !DILexicalBlockFile(scope: !890, file: !1, discriminator: 1)
!897 = !DILocation(line: 319, column: 51, scope: !890)
!898 = !DILocation(line: 319, column: 32, scope: !890)
!899 = !DILocalVariable(name: "p_mm", scope: !890, file: !1, line: 322, type: !42)
!900 = !DILocation(line: 322, column: 12, scope: !890)
!901 = !DILocation(line: 322, column: 34, scope: !890)
!902 = !DILocation(line: 322, column: 37, scope: !890)
!903 = !DILocation(line: 322, column: 21, scope: !890)
!904 = !DILocalVariable(name: "p_mmp1", scope: !890, file: !1, line: 323, type: !42)
!905 = !DILocation(line: 323, column: 12, scope: !890)
!906 = !DILocation(line: 323, column: 21, scope: !890)
!907 = !DILocation(line: 323, column: 28, scope: !890)
!908 = !DILocation(line: 323, column: 27, scope: !890)
!909 = !DILocation(line: 323, column: 30, scope: !890)
!910 = !DILocation(line: 323, column: 25, scope: !890)
!911 = !DILocation(line: 323, column: 23, scope: !890)
!912 = !DILocation(line: 323, column: 37, scope: !890)
!913 = !DILocation(line: 323, column: 35, scope: !890)
!914 = !DILocation(line: 325, column: 8, scope: !915)
!915 = distinct !DILexicalBlock(scope: !890, file: !1, line: 325, column: 8)
!916 = !DILocation(line: 325, column: 13, scope: !915)
!917 = !DILocation(line: 325, column: 10, scope: !915)
!918 = !DILocation(line: 325, column: 8, scope: !890)
!919 = !DILocation(line: 326, column: 21, scope: !920)
!920 = distinct !DILexicalBlock(scope: !915, file: !1, line: 325, column: 15)
!921 = !DILocation(line: 326, column: 7, scope: !920)
!922 = !DILocation(line: 326, column: 15, scope: !920)
!923 = !DILocation(line: 326, column: 19, scope: !920)
!924 = !DILocation(line: 327, column: 21, scope: !920)
!925 = !DILocation(line: 327, column: 29, scope: !920)
!926 = !DILocation(line: 327, column: 35, scope: !920)
!927 = !DILocation(line: 327, column: 60, scope: !920)
!928 = !DILocation(line: 327, column: 55, scope: !920)
!929 = !DILocation(line: 327, column: 53, scope: !920)
!930 = !DILocation(line: 327, column: 7, scope: !920)
!931 = !DILocation(line: 327, column: 15, scope: !920)
!932 = !DILocation(line: 327, column: 19, scope: !920)
!933 = !DILocation(line: 328, column: 7, scope: !920)
!934 = !DILocation(line: 330, column: 13, scope: !935)
!935 = distinct !DILexicalBlock(scope: !915, file: !1, line: 330, column: 13)
!936 = !DILocation(line: 330, column: 18, scope: !935)
!937 = !DILocation(line: 330, column: 20, scope: !935)
!938 = !DILocation(line: 330, column: 15, scope: !935)
!939 = !DILocation(line: 330, column: 13, scope: !915)
!940 = !DILocation(line: 331, column: 21, scope: !941)
!941 = distinct !DILexicalBlock(scope: !935, file: !1, line: 330, column: 25)
!942 = !DILocation(line: 331, column: 7, scope: !941)
!943 = !DILocation(line: 331, column: 15, scope: !941)
!944 = !DILocation(line: 331, column: 19, scope: !941)
!945 = !DILocation(line: 332, column: 21, scope: !941)
!946 = !DILocation(line: 332, column: 29, scope: !941)
!947 = !DILocation(line: 332, column: 35, scope: !941)
!948 = !DILocation(line: 332, column: 60, scope: !941)
!949 = !DILocation(line: 332, column: 55, scope: !941)
!950 = !DILocation(line: 332, column: 53, scope: !941)
!951 = !DILocation(line: 332, column: 7, scope: !941)
!952 = !DILocation(line: 332, column: 15, scope: !941)
!953 = !DILocation(line: 332, column: 19, scope: !941)
!954 = !DILocation(line: 333, column: 7, scope: !941)
!955 = !DILocalVariable(name: "p_ellm2", scope: !956, file: !1, line: 340, type: !42)
!956 = distinct !DILexicalBlock(scope: !935, file: !1, line: 335, column: 9)
!957 = !DILocation(line: 340, column: 14, scope: !956)
!958 = !DILocation(line: 340, column: 24, scope: !956)
!959 = !DILocalVariable(name: "p_ellm1", scope: !956, file: !1, line: 341, type: !42)
!960 = !DILocation(line: 341, column: 14, scope: !956)
!961 = !DILocation(line: 341, column: 24, scope: !956)
!962 = !DILocalVariable(name: "p_ell", scope: !956, file: !1, line: 342, type: !42)
!963 = !DILocation(line: 342, column: 14, scope: !956)
!964 = !DILocalVariable(name: "ell", scope: !956, file: !1, line: 343, type: !50)
!965 = !DILocation(line: 343, column: 11, scope: !956)
!966 = !DILocation(line: 345, column: 15, scope: !967)
!967 = distinct !DILexicalBlock(scope: !956, file: !1, line: 345, column: 7)
!968 = !DILocation(line: 345, column: 16, scope: !967)
!969 = !DILocation(line: 345, column: 14, scope: !967)
!970 = !DILocation(line: 345, column: 11, scope: !967)
!971 = !DILocation(line: 345, column: 20, scope: !972)
!972 = !DILexicalBlockFile(scope: !973, file: !1, discriminator: 1)
!973 = distinct !DILexicalBlock(scope: !967, file: !1, line: 345, column: 7)
!974 = !DILocation(line: 345, column: 27, scope: !972)
!975 = !DILocation(line: 345, column: 24, scope: !972)
!976 = !DILocation(line: 345, column: 7, scope: !972)
!977 = !DILocation(line: 346, column: 18, scope: !978)
!978 = distinct !DILexicalBlock(scope: !973, file: !1, line: 345, column: 36)
!979 = !DILocation(line: 346, column: 23, scope: !978)
!980 = !DILocation(line: 346, column: 22, scope: !978)
!981 = !DILocation(line: 346, column: 26, scope: !978)
!982 = !DILocation(line: 346, column: 20, scope: !978)
!983 = !DILocation(line: 346, column: 19, scope: !978)
!984 = !DILocation(line: 346, column: 30, scope: !978)
!985 = !DILocation(line: 346, column: 29, scope: !978)
!986 = !DILocation(line: 346, column: 41, scope: !978)
!987 = !DILocation(line: 346, column: 45, scope: !978)
!988 = !DILocation(line: 346, column: 44, scope: !978)
!989 = !DILocation(line: 346, column: 46, scope: !978)
!990 = !DILocation(line: 346, column: 40, scope: !978)
!991 = !DILocation(line: 346, column: 50, scope: !978)
!992 = !DILocation(line: 346, column: 49, scope: !978)
!993 = !DILocation(line: 346, column: 38, scope: !978)
!994 = !DILocation(line: 346, column: 62, scope: !978)
!995 = !DILocation(line: 346, column: 66, scope: !978)
!996 = !DILocation(line: 346, column: 65, scope: !978)
!997 = !DILocation(line: 346, column: 61, scope: !978)
!998 = !DILocation(line: 346, column: 59, scope: !978)
!999 = !DILocation(line: 346, column: 15, scope: !978)
!1000 = !DILocation(line: 347, column: 19, scope: !978)
!1001 = !DILocation(line: 347, column: 17, scope: !978)
!1002 = !DILocation(line: 348, column: 19, scope: !978)
!1003 = !DILocation(line: 348, column: 17, scope: !978)
!1004 = !DILocation(line: 349, column: 7, scope: !978)
!1005 = !DILocation(line: 345, column: 33, scope: !1006)
!1006 = !DILexicalBlockFile(scope: !973, file: !1, discriminator: 2)
!1007 = !DILocation(line: 345, column: 7, scope: !1006)
!1008 = distinct !{!1008, !1009}
!1009 = !DILocation(line: 345, column: 7, scope: !956)
!1010 = !DILocation(line: 351, column: 21, scope: !956)
!1011 = !DILocation(line: 351, column: 7, scope: !956)
!1012 = !DILocation(line: 351, column: 15, scope: !956)
!1013 = !DILocation(line: 351, column: 19, scope: !956)
!1014 = !DILocation(line: 352, column: 21, scope: !956)
!1015 = !DILocation(line: 352, column: 37, scope: !956)
!1016 = !DILocation(line: 352, column: 39, scope: !956)
!1017 = !DILocation(line: 352, column: 38, scope: !956)
!1018 = !DILocation(line: 352, column: 36, scope: !956)
!1019 = !DILocation(line: 352, column: 35, scope: !956)
!1020 = !DILocation(line: 352, column: 42, scope: !956)
!1021 = !DILocation(line: 352, column: 29, scope: !956)
!1022 = !DILocation(line: 352, column: 49, scope: !956)
!1023 = !DILocation(line: 352, column: 74, scope: !956)
!1024 = !DILocation(line: 352, column: 69, scope: !956)
!1025 = !DILocation(line: 352, column: 67, scope: !956)
!1026 = !DILocation(line: 352, column: 7, scope: !956)
!1027 = !DILocation(line: 352, column: 15, scope: !956)
!1028 = !DILocation(line: 352, column: 19, scope: !956)
!1029 = !DILocation(line: 354, column: 7, scope: !956)
!1030 = !DILocation(line: 357, column: 1, scope: !777)
!1031 = distinct !DISubprogram(name: "legendre_Pmm", scope: !1, file: !1, line: 40, type: !1032, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!1032 = !DISubroutineType(types: !1033)
!1033 = !{!42, !50, !42}
!1034 = !DILocalVariable(name: "m", arg: 1, scope: !1031, file: !1, line: 40, type: !50)
!1035 = !DILocation(line: 40, column: 32, scope: !1031)
!1036 = !DILocalVariable(name: "x", arg: 2, scope: !1031, file: !1, line: 40, type: !42)
!1037 = !DILocation(line: 40, column: 42, scope: !1031)
!1038 = !DILocation(line: 42, column: 6, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !1031, file: !1, line: 42, column: 6)
!1040 = !DILocation(line: 42, column: 8, scope: !1039)
!1041 = !DILocation(line: 42, column: 6, scope: !1031)
!1042 = !DILocation(line: 44, column: 5, scope: !1043)
!1043 = distinct !DILexicalBlock(scope: !1039, file: !1, line: 43, column: 3)
!1044 = !DILocalVariable(name: "p_mm", scope: !1045, file: !1, line: 48, type: !42)
!1045 = distinct !DILexicalBlock(scope: !1039, file: !1, line: 47, column: 3)
!1046 = !DILocation(line: 48, column: 12, scope: !1045)
!1047 = !DILocalVariable(name: "root_factor", scope: !1045, file: !1, line: 49, type: !42)
!1048 = !DILocation(line: 49, column: 12, scope: !1045)
!1049 = !DILocation(line: 49, column: 35, scope: !1045)
!1050 = !DILocation(line: 49, column: 34, scope: !1045)
!1051 = !DILocation(line: 49, column: 26, scope: !1045)
!1052 = !DILocation(line: 49, column: 47, scope: !1045)
!1053 = !DILocation(line: 49, column: 46, scope: !1045)
!1054 = !DILocation(line: 49, column: 38, scope: !1055)
!1055 = !DILexicalBlockFile(scope: !1045, file: !1, discriminator: 1)
!1056 = !DILocation(line: 49, column: 37, scope: !1045)
!1057 = !DILocalVariable(name: "fact_coeff", scope: !1045, file: !1, line: 50, type: !42)
!1058 = !DILocation(line: 50, column: 12, scope: !1045)
!1059 = !DILocalVariable(name: "i", scope: !1045, file: !1, line: 51, type: !50)
!1060 = !DILocation(line: 51, column: 9, scope: !1045)
!1061 = !DILocation(line: 52, column: 10, scope: !1062)
!1062 = distinct !DILexicalBlock(scope: !1045, file: !1, line: 52, column: 5)
!1063 = !DILocation(line: 52, column: 9, scope: !1062)
!1064 = !DILocation(line: 52, column: 14, scope: !1065)
!1065 = !DILexicalBlockFile(scope: !1066, file: !1, discriminator: 1)
!1066 = distinct !DILexicalBlock(scope: !1062, file: !1, line: 52, column: 5)
!1067 = !DILocation(line: 52, column: 17, scope: !1065)
!1068 = !DILocation(line: 52, column: 15, scope: !1065)
!1069 = !DILocation(line: 52, column: 5, scope: !1065)
!1070 = !DILocation(line: 54, column: 16, scope: !1071)
!1071 = distinct !DILexicalBlock(scope: !1066, file: !1, line: 53, column: 5)
!1072 = !DILocation(line: 54, column: 15, scope: !1071)
!1073 = !DILocation(line: 54, column: 29, scope: !1071)
!1074 = !DILocation(line: 54, column: 27, scope: !1071)
!1075 = !DILocation(line: 54, column: 12, scope: !1071)
!1076 = !DILocation(line: 55, column: 18, scope: !1071)
!1077 = !DILocation(line: 56, column: 5, scope: !1071)
!1078 = !DILocation(line: 52, column: 21, scope: !1079)
!1079 = !DILexicalBlockFile(scope: !1066, file: !1, discriminator: 2)
!1080 = !DILocation(line: 52, column: 5, scope: !1079)
!1081 = distinct !{!1081, !1082}
!1082 = !DILocation(line: 52, column: 5, scope: !1045)
!1083 = !DILocation(line: 57, column: 12, scope: !1045)
!1084 = !DILocation(line: 57, column: 5, scope: !1045)
!1085 = !DILocation(line: 59, column: 1, scope: !1031)
!1086 = distinct !DISubprogram(name: "gsl_sf_legendre_sphPlm_e", scope: !1, file: !1, line: 360, type: !1087, isLocal: false, isDefinition: true, scopeLine: 361, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!1087 = !DISubroutineType(types: !1088)
!1088 = !{!50, !140, !50, !141, !51}
!1089 = !DILocalVariable(name: "l", arg: 1, scope: !1086, file: !1, line: 360, type: !140)
!1090 = !DILocation(line: 360, column: 36, scope: !1086)
!1091 = !DILocalVariable(name: "m", arg: 2, scope: !1086, file: !1, line: 360, type: !50)
!1092 = !DILocation(line: 360, column: 43, scope: !1086)
!1093 = !DILocalVariable(name: "x", arg: 3, scope: !1086, file: !1, line: 360, type: !141)
!1094 = !DILocation(line: 360, column: 59, scope: !1086)
!1095 = !DILocalVariable(name: "result", arg: 4, scope: !1086, file: !1, line: 360, type: !51)
!1096 = !DILocation(line: 360, column: 78, scope: !1086)
!1097 = !DILocation(line: 364, column: 6, scope: !1098)
!1098 = distinct !DILexicalBlock(scope: !1086, file: !1, line: 364, column: 6)
!1099 = !DILocation(line: 364, column: 8, scope: !1098)
!1100 = !DILocation(line: 364, column: 12, scope: !1098)
!1101 = !DILocation(line: 364, column: 15, scope: !1102)
!1102 = !DILexicalBlockFile(scope: !1098, file: !1, discriminator: 1)
!1103 = !DILocation(line: 364, column: 19, scope: !1102)
!1104 = !DILocation(line: 364, column: 17, scope: !1102)
!1105 = !DILocation(line: 364, column: 21, scope: !1102)
!1106 = !DILocation(line: 364, column: 24, scope: !1107)
!1107 = !DILexicalBlockFile(scope: !1098, file: !1, discriminator: 2)
!1108 = !DILocation(line: 364, column: 26, scope: !1107)
!1109 = !DILocation(line: 364, column: 33, scope: !1107)
!1110 = !DILocation(line: 364, column: 36, scope: !1111)
!1111 = !DILexicalBlockFile(scope: !1098, file: !1, discriminator: 3)
!1112 = !DILocation(line: 364, column: 38, scope: !1111)
!1113 = !DILocation(line: 364, column: 6, scope: !1111)
!1114 = !DILocation(line: 365, column: 5, scope: !1115)
!1115 = distinct !DILexicalBlock(scope: !1098, file: !1, line: 364, column: 45)
!1116 = distinct !{!1116, !1114}
!1117 = !DILocation(line: 365, column: 5, scope: !1118)
!1118 = !DILexicalBlockFile(scope: !1119, file: !1, discriminator: 1)
!1119 = distinct !DILexicalBlock(scope: !1115, file: !1, line: 365, column: 5)
!1120 = distinct !{!1120, !1121}
!1121 = !DILocation(line: 365, column: 5, scope: !1119)
!1122 = !DILocation(line: 365, column: 5, scope: !1123)
!1123 = !DILexicalBlockFile(scope: !1124, file: !1, discriminator: 2)
!1124 = distinct !DILexicalBlock(scope: !1119, file: !1, line: 365, column: 5)
!1125 = !DILocation(line: 365, column: 5, scope: !1126)
!1126 = !DILexicalBlockFile(scope: !1119, file: !1, discriminator: 3)
!1127 = !DILocation(line: 366, column: 3, scope: !1115)
!1128 = !DILocation(line: 367, column: 11, scope: !1129)
!1129 = distinct !DILexicalBlock(scope: !1098, file: !1, line: 367, column: 11)
!1130 = !DILocation(line: 367, column: 13, scope: !1129)
!1131 = !DILocation(line: 367, column: 11, scope: !1098)
!1132 = !DILocalVariable(name: "P", scope: !1133, file: !1, line: 368, type: !52)
!1133 = distinct !DILexicalBlock(scope: !1129, file: !1, line: 367, column: 19)
!1134 = !DILocation(line: 368, column: 19, scope: !1133)
!1135 = !DILocalVariable(name: "stat_P", scope: !1133, file: !1, line: 369, type: !50)
!1136 = !DILocation(line: 369, column: 9, scope: !1133)
!1137 = !DILocation(line: 369, column: 39, scope: !1133)
!1138 = !DILocation(line: 369, column: 42, scope: !1133)
!1139 = !DILocation(line: 369, column: 18, scope: !1133)
!1140 = !DILocalVariable(name: "pre", scope: !1133, file: !1, line: 370, type: !42)
!1141 = !DILocation(line: 370, column: 12, scope: !1133)
!1142 = !DILocation(line: 370, column: 28, scope: !1133)
!1143 = !DILocation(line: 370, column: 27, scope: !1133)
!1144 = !DILocation(line: 370, column: 30, scope: !1133)
!1145 = !DILocation(line: 370, column: 36, scope: !1133)
!1146 = !DILocation(line: 370, column: 18, scope: !1133)
!1147 = !DILocation(line: 371, column: 20, scope: !1133)
!1148 = !DILocation(line: 371, column: 28, scope: !1133)
!1149 = !DILocation(line: 371, column: 24, scope: !1133)
!1150 = !DILocation(line: 371, column: 5, scope: !1133)
!1151 = !DILocation(line: 371, column: 13, scope: !1133)
!1152 = !DILocation(line: 371, column: 18, scope: !1133)
!1153 = !DILocation(line: 372, column: 20, scope: !1133)
!1154 = !DILocation(line: 372, column: 28, scope: !1133)
!1155 = !DILocation(line: 372, column: 24, scope: !1133)
!1156 = !DILocation(line: 372, column: 5, scope: !1133)
!1157 = !DILocation(line: 372, column: 13, scope: !1133)
!1158 = !DILocation(line: 372, column: 18, scope: !1133)
!1159 = !DILocation(line: 373, column: 49, scope: !1133)
!1160 = !DILocation(line: 373, column: 57, scope: !1133)
!1161 = !DILocation(line: 373, column: 44, scope: !1133)
!1162 = !DILocation(line: 373, column: 42, scope: !1133)
!1163 = !DILocation(line: 373, column: 5, scope: !1133)
!1164 = !DILocation(line: 373, column: 13, scope: !1133)
!1165 = !DILocation(line: 373, column: 17, scope: !1133)
!1166 = !DILocation(line: 374, column: 12, scope: !1133)
!1167 = !DILocation(line: 374, column: 5, scope: !1133)
!1168 = !DILocation(line: 376, column: 11, scope: !1169)
!1169 = distinct !DILexicalBlock(scope: !1129, file: !1, line: 376, column: 11)
!1170 = !DILocation(line: 376, column: 13, scope: !1169)
!1171 = !DILocation(line: 376, column: 20, scope: !1169)
!1172 = !DILocation(line: 376, column: 23, scope: !1173)
!1173 = !DILexicalBlockFile(scope: !1169, file: !1, discriminator: 1)
!1174 = !DILocation(line: 376, column: 25, scope: !1173)
!1175 = !DILocation(line: 376, column: 11, scope: !1173)
!1176 = !DILocation(line: 378, column: 5, scope: !1177)
!1177 = distinct !DILexicalBlock(scope: !1169, file: !1, line: 376, column: 34)
!1178 = !DILocation(line: 378, column: 13, scope: !1177)
!1179 = !DILocation(line: 378, column: 17, scope: !1177)
!1180 = !DILocation(line: 379, column: 5, scope: !1177)
!1181 = !DILocation(line: 379, column: 13, scope: !1177)
!1182 = !DILocation(line: 379, column: 17, scope: !1177)
!1183 = !DILocation(line: 380, column: 5, scope: !1177)
!1184 = !DILocalVariable(name: "lncirc", scope: !1185, file: !1, line: 388, type: !52)
!1185 = distinct !DILexicalBlock(scope: !1169, file: !1, line: 382, column: 8)
!1186 = !DILocation(line: 388, column: 19, scope: !1185)
!1187 = !DILocalVariable(name: "lnpoch", scope: !1185, file: !1, line: 389, type: !52)
!1188 = !DILocation(line: 389, column: 19, scope: !1185)
!1189 = !DILocalVariable(name: "lnpre_val", scope: !1185, file: !1, line: 390, type: !42)
!1190 = !DILocation(line: 390, column: 12, scope: !1185)
!1191 = !DILocalVariable(name: "lnpre_err", scope: !1185, file: !1, line: 391, type: !42)
!1192 = !DILocation(line: 391, column: 12, scope: !1185)
!1193 = !DILocalVariable(name: "ex_pre", scope: !1185, file: !1, line: 392, type: !52)
!1194 = !DILocation(line: 392, column: 19, scope: !1185)
!1195 = !DILocalVariable(name: "sr", scope: !1185, file: !1, line: 393, type: !42)
!1196 = !DILocation(line: 393, column: 12, scope: !1185)
!1197 = !DILocalVariable(name: "sgn", scope: !1185, file: !1, line: 394, type: !141)
!1198 = !DILocation(line: 394, column: 18, scope: !1185)
!1199 = !DILocation(line: 394, column: 26, scope: !1185)
!1200 = !DILocalVariable(name: "y_mmp1_factor", scope: !1185, file: !1, line: 395, type: !141)
!1201 = !DILocation(line: 395, column: 18, scope: !1185)
!1202 = !DILocation(line: 395, column: 34, scope: !1185)
!1203 = !DILocation(line: 395, column: 47, scope: !1185)
!1204 = !DILocation(line: 395, column: 46, scope: !1185)
!1205 = !DILocation(line: 395, column: 49, scope: !1185)
!1206 = !DILocation(line: 395, column: 38, scope: !1185)
!1207 = !DILocation(line: 395, column: 36, scope: !1185)
!1208 = !DILocalVariable(name: "y_mm", scope: !1185, file: !1, line: 396, type: !42)
!1209 = !DILocation(line: 396, column: 12, scope: !1185)
!1210 = !DILocalVariable(name: "y_mm_err", scope: !1185, file: !1, line: 396, type: !42)
!1211 = !DILocation(line: 396, column: 18, scope: !1185)
!1212 = !DILocalVariable(name: "y_mmp1", scope: !1185, file: !1, line: 397, type: !42)
!1213 = !DILocation(line: 397, column: 12, scope: !1185)
!1214 = !DILocalVariable(name: "y_mmp1_err", scope: !1185, file: !1, line: 397, type: !42)
!1215 = !DILocation(line: 397, column: 20, scope: !1185)
!1216 = !DILocation(line: 398, column: 26, scope: !1185)
!1217 = !DILocation(line: 398, column: 25, scope: !1185)
!1218 = !DILocation(line: 398, column: 28, scope: !1185)
!1219 = !DILocation(line: 398, column: 27, scope: !1185)
!1220 = !DILocation(line: 398, column: 5, scope: !1185)
!1221 = !DILocation(line: 399, column: 21, scope: !1185)
!1222 = !DILocation(line: 399, column: 5, scope: !1185)
!1223 = !DILocation(line: 400, column: 46, scope: !1185)
!1224 = !DILocation(line: 400, column: 52, scope: !1185)
!1225 = !DILocation(line: 400, column: 61, scope: !1185)
!1226 = !DILocation(line: 400, column: 53, scope: !1185)
!1227 = !DILocation(line: 400, column: 50, scope: !1185)
!1228 = !DILocation(line: 400, column: 36, scope: !1185)
!1229 = !DILocation(line: 400, column: 30, scope: !1185)
!1230 = !DILocation(line: 400, column: 15, scope: !1185)
!1231 = !DILocation(line: 401, column: 61, scope: !1185)
!1232 = !DILocation(line: 401, column: 72, scope: !1185)
!1233 = !DILocation(line: 401, column: 67, scope: !1185)
!1234 = !DILocation(line: 401, column: 82, scope: !1185)
!1235 = !DILocation(line: 401, column: 74, scope: !1185)
!1236 = !DILocation(line: 401, column: 65, scope: !1185)
!1237 = !DILocation(line: 401, column: 51, scope: !1185)
!1238 = !DILocation(line: 401, column: 45, scope: !1185)
!1239 = !DILocation(line: 401, column: 15, scope: !1185)
!1240 = !DILocation(line: 403, column: 22, scope: !1185)
!1241 = !DILocation(line: 403, column: 18, scope: !1185)
!1242 = !DILocation(line: 403, column: 12, scope: !1185)
!1243 = !DILocation(line: 403, column: 16, scope: !1185)
!1244 = !DILocation(line: 404, column: 28, scope: !1185)
!1245 = !DILocation(line: 404, column: 23, scope: !1185)
!1246 = !DILocation(line: 404, column: 39, scope: !1185)
!1247 = !DILocation(line: 404, column: 21, scope: !1185)
!1248 = !DILocation(line: 404, column: 65, scope: !1185)
!1249 = !DILocation(line: 404, column: 57, scope: !1185)
!1250 = !DILocation(line: 404, column: 12, scope: !1185)
!1251 = !DILocation(line: 404, column: 16, scope: !1185)
!1252 = !DILocation(line: 405, column: 28, scope: !1185)
!1253 = !DILocation(line: 405, column: 27, scope: !1185)
!1254 = !DILocation(line: 405, column: 23, scope: !1185)
!1255 = !DILocation(line: 405, column: 30, scope: !1185)
!1256 = !DILocation(line: 405, column: 14, scope: !1185)
!1257 = !DILocation(line: 405, column: 12, scope: !1185)
!1258 = !DILocation(line: 406, column: 14, scope: !1185)
!1259 = !DILocation(line: 406, column: 20, scope: !1185)
!1260 = !DILocation(line: 406, column: 18, scope: !1185)
!1261 = !DILocation(line: 406, column: 32, scope: !1185)
!1262 = !DILocation(line: 406, column: 23, scope: !1185)
!1263 = !DILocation(line: 406, column: 12, scope: !1185)
!1264 = !DILocation(line: 407, column: 46, scope: !1185)
!1265 = !DILocation(line: 407, column: 41, scope: !1185)
!1266 = !DILocation(line: 407, column: 39, scope: !1185)
!1267 = !DILocation(line: 407, column: 54, scope: !1185)
!1268 = !DILocation(line: 407, column: 66, scope: !1185)
!1269 = !DILocation(line: 407, column: 57, scope: !1185)
!1270 = !DILocation(line: 407, column: 52, scope: !1185)
!1271 = !DILocation(line: 407, column: 15, scope: !1185)
!1272 = !DILocation(line: 408, column: 55, scope: !1185)
!1273 = !DILocation(line: 408, column: 54, scope: !1185)
!1274 = !DILocation(line: 408, column: 46, scope: !1185)
!1275 = !DILocation(line: 408, column: 44, scope: !1185)
!1276 = !DILocation(line: 408, column: 26, scope: !1185)
!1277 = !DILocation(line: 408, column: 21, scope: !1185)
!1278 = !DILocation(line: 408, column: 14, scope: !1185)
!1279 = !DILocation(line: 409, column: 14, scope: !1185)
!1280 = !DILocation(line: 409, column: 30, scope: !1185)
!1281 = !DILocation(line: 409, column: 28, scope: !1185)
!1282 = !DILocation(line: 409, column: 12, scope: !1185)
!1283 = !DILocation(line: 410, column: 21, scope: !1185)
!1284 = !DILocation(line: 410, column: 16, scope: !1185)
!1285 = !DILocation(line: 410, column: 38, scope: !1185)
!1286 = !DILocation(line: 410, column: 36, scope: !1185)
!1287 = !DILocation(line: 410, column: 15, scope: !1185)
!1288 = !DILocation(line: 412, column: 8, scope: !1289)
!1289 = distinct !DILexicalBlock(scope: !1185, file: !1, line: 412, column: 8)
!1290 = !DILocation(line: 412, column: 13, scope: !1289)
!1291 = !DILocation(line: 412, column: 10, scope: !1289)
!1292 = !DILocation(line: 412, column: 8, scope: !1185)
!1293 = !DILocation(line: 413, column: 22, scope: !1294)
!1294 = distinct !DILexicalBlock(scope: !1289, file: !1, line: 412, column: 15)
!1295 = !DILocation(line: 413, column: 7, scope: !1294)
!1296 = !DILocation(line: 413, column: 15, scope: !1294)
!1297 = !DILocation(line: 413, column: 20, scope: !1294)
!1298 = !DILocation(line: 414, column: 22, scope: !1294)
!1299 = !DILocation(line: 414, column: 7, scope: !1294)
!1300 = !DILocation(line: 414, column: 15, scope: !1294)
!1301 = !DILocation(line: 414, column: 20, scope: !1294)
!1302 = !DILocation(line: 415, column: 51, scope: !1294)
!1303 = !DILocation(line: 415, column: 46, scope: !1294)
!1304 = !DILocation(line: 415, column: 44, scope: !1294)
!1305 = !DILocation(line: 415, column: 7, scope: !1294)
!1306 = !DILocation(line: 415, column: 15, scope: !1294)
!1307 = !DILocation(line: 415, column: 19, scope: !1294)
!1308 = !DILocation(line: 416, column: 7, scope: !1294)
!1309 = !DILocation(line: 418, column: 13, scope: !1310)
!1310 = distinct !DILexicalBlock(scope: !1289, file: !1, line: 418, column: 13)
!1311 = !DILocation(line: 418, column: 18, scope: !1310)
!1312 = !DILocation(line: 418, column: 20, scope: !1310)
!1313 = !DILocation(line: 418, column: 15, scope: !1310)
!1314 = !DILocation(line: 418, column: 13, scope: !1289)
!1315 = !DILocation(line: 419, column: 22, scope: !1316)
!1316 = distinct !DILexicalBlock(scope: !1310, file: !1, line: 418, column: 25)
!1317 = !DILocation(line: 419, column: 7, scope: !1316)
!1318 = !DILocation(line: 419, column: 15, scope: !1316)
!1319 = !DILocation(line: 419, column: 20, scope: !1316)
!1320 = !DILocation(line: 420, column: 22, scope: !1316)
!1321 = !DILocation(line: 420, column: 7, scope: !1316)
!1322 = !DILocation(line: 420, column: 15, scope: !1316)
!1323 = !DILocation(line: 420, column: 20, scope: !1316)
!1324 = !DILocation(line: 421, column: 51, scope: !1316)
!1325 = !DILocation(line: 421, column: 46, scope: !1316)
!1326 = !DILocation(line: 421, column: 44, scope: !1316)
!1327 = !DILocation(line: 421, column: 7, scope: !1316)
!1328 = !DILocation(line: 421, column: 15, scope: !1316)
!1329 = !DILocation(line: 421, column: 19, scope: !1316)
!1330 = !DILocation(line: 422, column: 7, scope: !1316)
!1331 = !DILocalVariable(name: "y_ell", scope: !1332, file: !1, line: 425, type: !42)
!1332 = distinct !DILexicalBlock(scope: !1310, file: !1, line: 424, column: 9)
!1333 = !DILocation(line: 425, column: 14, scope: !1332)
!1334 = !DILocalVariable(name: "y_ell_err", scope: !1332, file: !1, line: 426, type: !42)
!1335 = !DILocation(line: 426, column: 14, scope: !1332)
!1336 = !DILocalVariable(name: "ell", scope: !1332, file: !1, line: 427, type: !50)
!1337 = !DILocation(line: 427, column: 11, scope: !1332)
!1338 = !DILocation(line: 430, column: 15, scope: !1339)
!1339 = distinct !DILexicalBlock(scope: !1332, file: !1, line: 430, column: 7)
!1340 = !DILocation(line: 430, column: 16, scope: !1339)
!1341 = !DILocation(line: 430, column: 14, scope: !1339)
!1342 = !DILocation(line: 430, column: 11, scope: !1339)
!1343 = !DILocation(line: 430, column: 20, scope: !1344)
!1344 = !DILexicalBlockFile(scope: !1345, file: !1, discriminator: 1)
!1345 = distinct !DILexicalBlock(scope: !1339, file: !1, line: 430, column: 7)
!1346 = !DILocation(line: 430, column: 27, scope: !1344)
!1347 = !DILocation(line: 430, column: 24, scope: !1344)
!1348 = !DILocation(line: 430, column: 7, scope: !1344)
!1349 = !DILocalVariable(name: "rat1", scope: !1350, file: !1, line: 431, type: !141)
!1350 = distinct !DILexicalBlock(scope: !1345, file: !1, line: 430, column: 36)
!1351 = !DILocation(line: 431, column: 22, scope: !1350)
!1352 = !DILocation(line: 431, column: 38, scope: !1350)
!1353 = !DILocation(line: 431, column: 42, scope: !1350)
!1354 = !DILocation(line: 431, column: 41, scope: !1350)
!1355 = !DILocation(line: 431, column: 29, scope: !1350)
!1356 = !DILocation(line: 431, column: 54, scope: !1350)
!1357 = !DILocation(line: 431, column: 58, scope: !1350)
!1358 = !DILocation(line: 431, column: 57, scope: !1350)
!1359 = !DILocation(line: 431, column: 45, scope: !1350)
!1360 = !DILocation(line: 431, column: 44, scope: !1350)
!1361 = !DILocalVariable(name: "rat2", scope: !1350, file: !1, line: 432, type: !141)
!1362 = !DILocation(line: 432, column: 22, scope: !1350)
!1363 = !DILocation(line: 432, column: 30, scope: !1350)
!1364 = !DILocation(line: 432, column: 34, scope: !1350)
!1365 = !DILocation(line: 432, column: 33, scope: !1350)
!1366 = !DILocation(line: 432, column: 35, scope: !1350)
!1367 = !DILocation(line: 432, column: 42, scope: !1350)
!1368 = !DILocation(line: 432, column: 46, scope: !1350)
!1369 = !DILocation(line: 432, column: 45, scope: !1350)
!1370 = !DILocation(line: 432, column: 47, scope: !1350)
!1371 = !DILocation(line: 432, column: 40, scope: !1350)
!1372 = !DILocalVariable(name: "factor1", scope: !1350, file: !1, line: 433, type: !141)
!1373 = !DILocation(line: 433, column: 22, scope: !1350)
!1374 = !DILocation(line: 433, column: 37, scope: !1350)
!1375 = !DILocation(line: 433, column: 47, scope: !1350)
!1376 = !DILocation(line: 433, column: 46, scope: !1350)
!1377 = !DILocation(line: 433, column: 50, scope: !1350)
!1378 = !DILocation(line: 433, column: 41, scope: !1350)
!1379 = !DILocation(line: 433, column: 61, scope: !1350)
!1380 = !DILocation(line: 433, column: 60, scope: !1350)
!1381 = !DILocation(line: 433, column: 64, scope: !1350)
!1382 = !DILocation(line: 433, column: 55, scope: !1350)
!1383 = !DILocation(line: 433, column: 32, scope: !1350)
!1384 = !DILocalVariable(name: "factor2", scope: !1350, file: !1, line: 434, type: !141)
!1385 = !DILocation(line: 434, column: 22, scope: !1350)
!1386 = !DILocation(line: 434, column: 37, scope: !1350)
!1387 = !DILocation(line: 434, column: 42, scope: !1350)
!1388 = !DILocation(line: 434, column: 41, scope: !1350)
!1389 = !DILocation(line: 434, column: 52, scope: !1350)
!1390 = !DILocation(line: 434, column: 51, scope: !1350)
!1391 = !DILocation(line: 434, column: 55, scope: !1350)
!1392 = !DILocation(line: 434, column: 46, scope: !1350)
!1393 = !DILocation(line: 434, column: 66, scope: !1350)
!1394 = !DILocation(line: 434, column: 65, scope: !1350)
!1395 = !DILocation(line: 434, column: 69, scope: !1350)
!1396 = !DILocation(line: 434, column: 60, scope: !1350)
!1397 = !DILocation(line: 434, column: 32, scope: !1350)
!1398 = !DILocation(line: 435, column: 18, scope: !1350)
!1399 = !DILocation(line: 435, column: 20, scope: !1350)
!1400 = !DILocation(line: 435, column: 19, scope: !1350)
!1401 = !DILocation(line: 435, column: 27, scope: !1350)
!1402 = !DILocation(line: 435, column: 26, scope: !1350)
!1403 = !DILocation(line: 435, column: 38, scope: !1350)
!1404 = !DILocation(line: 435, column: 42, scope: !1350)
!1405 = !DILocation(line: 435, column: 41, scope: !1350)
!1406 = !DILocation(line: 435, column: 43, scope: !1350)
!1407 = !DILocation(line: 435, column: 49, scope: !1350)
!1408 = !DILocation(line: 435, column: 48, scope: !1350)
!1409 = !DILocation(line: 435, column: 54, scope: !1350)
!1410 = !DILocation(line: 435, column: 53, scope: !1350)
!1411 = !DILocation(line: 435, column: 35, scope: !1350)
!1412 = !DILocation(line: 435, column: 66, scope: !1350)
!1413 = !DILocation(line: 435, column: 70, scope: !1350)
!1414 = !DILocation(line: 435, column: 69, scope: !1350)
!1415 = !DILocation(line: 435, column: 65, scope: !1350)
!1416 = !DILocation(line: 435, column: 63, scope: !1350)
!1417 = !DILocation(line: 435, column: 15, scope: !1350)
!1418 = !DILocation(line: 436, column: 18, scope: !1350)
!1419 = !DILocation(line: 436, column: 16, scope: !1350)
!1420 = !DILocation(line: 437, column: 18, scope: !1350)
!1421 = !DILocation(line: 437, column: 16, scope: !1350)
!1422 = !DILocation(line: 439, column: 31, scope: !1350)
!1423 = !DILocation(line: 439, column: 33, scope: !1350)
!1424 = !DILocation(line: 439, column: 32, scope: !1350)
!1425 = !DILocation(line: 439, column: 26, scope: !1350)
!1426 = !DILocation(line: 439, column: 42, scope: !1350)
!1427 = !DILocation(line: 439, column: 41, scope: !1350)
!1428 = !DILocation(line: 439, column: 61, scope: !1350)
!1429 = !DILocation(line: 439, column: 65, scope: !1350)
!1430 = !DILocation(line: 439, column: 64, scope: !1350)
!1431 = !DILocation(line: 439, column: 66, scope: !1350)
!1432 = !DILocation(line: 439, column: 72, scope: !1350)
!1433 = !DILocation(line: 439, column: 71, scope: !1350)
!1434 = !DILocation(line: 439, column: 55, scope: !1435)
!1435 = !DILexicalBlockFile(scope: !1350, file: !1, discriminator: 1)
!1436 = !DILocation(line: 439, column: 81, scope: !1350)
!1437 = !DILocation(line: 439, column: 80, scope: !1350)
!1438 = !DILocation(line: 439, column: 53, scope: !1350)
!1439 = !DILocation(line: 439, column: 24, scope: !1350)
!1440 = !DILocation(line: 439, column: 98, scope: !1350)
!1441 = !DILocation(line: 439, column: 102, scope: !1350)
!1442 = !DILocation(line: 439, column: 101, scope: !1350)
!1443 = !DILocation(line: 439, column: 93, scope: !1444)
!1444 = !DILexicalBlockFile(scope: !1350, file: !1, discriminator: 2)
!1445 = !DILocation(line: 439, column: 91, scope: !1350)
!1446 = !DILocation(line: 439, column: 19, scope: !1350)
!1447 = !DILocation(line: 440, column: 20, scope: !1350)
!1448 = !DILocation(line: 440, column: 18, scope: !1350)
!1449 = !DILocation(line: 441, column: 22, scope: !1350)
!1450 = !DILocation(line: 441, column: 20, scope: !1350)
!1451 = !DILocation(line: 442, column: 7, scope: !1350)
!1452 = !DILocation(line: 430, column: 33, scope: !1453)
!1453 = !DILexicalBlockFile(scope: !1345, file: !1, discriminator: 2)
!1454 = !DILocation(line: 430, column: 7, scope: !1453)
!1455 = distinct !{!1455, !1456}
!1456 = !DILocation(line: 430, column: 7, scope: !1332)
!1457 = !DILocation(line: 444, column: 22, scope: !1332)
!1458 = !DILocation(line: 444, column: 7, scope: !1332)
!1459 = !DILocation(line: 444, column: 15, scope: !1332)
!1460 = !DILocation(line: 444, column: 20, scope: !1332)
!1461 = !DILocation(line: 445, column: 22, scope: !1332)
!1462 = !DILocation(line: 445, column: 40, scope: !1332)
!1463 = !DILocation(line: 445, column: 42, scope: !1332)
!1464 = !DILocation(line: 445, column: 41, scope: !1332)
!1465 = !DILocation(line: 445, column: 39, scope: !1332)
!1466 = !DILocation(line: 445, column: 38, scope: !1332)
!1467 = !DILocation(line: 445, column: 45, scope: !1332)
!1468 = !DILocation(line: 445, column: 52, scope: !1332)
!1469 = !DILocation(line: 445, column: 77, scope: !1332)
!1470 = !DILocation(line: 445, column: 72, scope: !1332)
!1471 = !DILocation(line: 445, column: 70, scope: !1332)
!1472 = !DILocation(line: 445, column: 32, scope: !1332)
!1473 = !DILocation(line: 445, column: 7, scope: !1332)
!1474 = !DILocation(line: 445, column: 15, scope: !1332)
!1475 = !DILocation(line: 445, column: 20, scope: !1332)
!1476 = !DILocation(line: 447, column: 7, scope: !1332)
!1477 = !DILocation(line: 450, column: 1, scope: !1086)
!1478 = distinct !DISubprogram(name: "gsl_sf_legendre_P1", scope: !1, file: !1, line: 749, type: !1479, isLocal: false, isDefinition: true, scopeLine: 750, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!1479 = !DISubroutineType(types: !1480)
!1480 = !{!42, !141}
!1481 = !DILocalVariable(name: "x", arg: 1, scope: !1478, file: !1, line: 749, type: !141)
!1482 = !DILocation(line: 749, column: 40, scope: !1478)
!1483 = !DILocalVariable(name: "result", scope: !1478, file: !1, line: 751, type: !52)
!1484 = !DILocation(line: 751, column: 3, scope: !1478)
!1485 = !DILocalVariable(name: "status", scope: !1478, file: !1, line: 751, type: !50)
!1486 = !DILocation(line: 751, column: 3, scope: !1487)
!1487 = distinct !DILexicalBlock(scope: !1478, file: !1, line: 751, column: 3)
!1488 = !DILocation(line: 751, column: 3, scope: !1489)
!1489 = !DILexicalBlockFile(scope: !1490, file: !1, discriminator: 1)
!1490 = distinct !DILexicalBlock(scope: !1487, file: !1, line: 751, column: 3)
!1491 = distinct !{!1491, !1492}
!1492 = !DILocation(line: 751, column: 3, scope: !1490)
!1493 = !DILocation(line: 751, column: 3, scope: !1494)
!1494 = !DILexicalBlockFile(scope: !1495, file: !1, discriminator: 2)
!1495 = distinct !DILexicalBlock(scope: !1490, file: !1, line: 751, column: 3)
!1496 = !DILocation(line: 751, column: 3, scope: !1497)
!1497 = !DILexicalBlockFile(scope: !1490, file: !1, discriminator: 3)
!1498 = !DILocation(line: 751, column: 3, scope: !1499)
!1499 = !DILexicalBlockFile(scope: !1478, file: !1, discriminator: 4)
!1500 = !DILocation(line: 752, column: 1, scope: !1478)
!1501 = distinct !DISubprogram(name: "gsl_sf_legendre_P2", scope: !1, file: !1, line: 754, type: !1479, isLocal: false, isDefinition: true, scopeLine: 755, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!1502 = !DILocalVariable(name: "x", arg: 1, scope: !1501, file: !1, line: 754, type: !141)
!1503 = !DILocation(line: 754, column: 40, scope: !1501)
!1504 = !DILocalVariable(name: "result", scope: !1501, file: !1, line: 756, type: !52)
!1505 = !DILocation(line: 756, column: 3, scope: !1501)
!1506 = !DILocalVariable(name: "status", scope: !1501, file: !1, line: 756, type: !50)
!1507 = !DILocation(line: 756, column: 3, scope: !1508)
!1508 = distinct !DILexicalBlock(scope: !1501, file: !1, line: 756, column: 3)
!1509 = !DILocation(line: 756, column: 3, scope: !1510)
!1510 = !DILexicalBlockFile(scope: !1511, file: !1, discriminator: 1)
!1511 = distinct !DILexicalBlock(scope: !1508, file: !1, line: 756, column: 3)
!1512 = distinct !{!1512, !1513}
!1513 = !DILocation(line: 756, column: 3, scope: !1511)
!1514 = !DILocation(line: 756, column: 3, scope: !1515)
!1515 = !DILexicalBlockFile(scope: !1516, file: !1, discriminator: 2)
!1516 = distinct !DILexicalBlock(scope: !1511, file: !1, line: 756, column: 3)
!1517 = !DILocation(line: 756, column: 3, scope: !1518)
!1518 = !DILexicalBlockFile(scope: !1511, file: !1, discriminator: 3)
!1519 = !DILocation(line: 756, column: 3, scope: !1520)
!1520 = !DILexicalBlockFile(scope: !1501, file: !1, discriminator: 4)
!1521 = !DILocation(line: 757, column: 1, scope: !1501)
!1522 = distinct !DISubprogram(name: "gsl_sf_legendre_P3", scope: !1, file: !1, line: 759, type: !1479, isLocal: false, isDefinition: true, scopeLine: 760, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!1523 = !DILocalVariable(name: "x", arg: 1, scope: !1522, file: !1, line: 759, type: !141)
!1524 = !DILocation(line: 759, column: 40, scope: !1522)
!1525 = !DILocalVariable(name: "result", scope: !1522, file: !1, line: 761, type: !52)
!1526 = !DILocation(line: 761, column: 3, scope: !1522)
!1527 = !DILocalVariable(name: "status", scope: !1522, file: !1, line: 761, type: !50)
!1528 = !DILocation(line: 761, column: 3, scope: !1529)
!1529 = distinct !DILexicalBlock(scope: !1522, file: !1, line: 761, column: 3)
!1530 = !DILocation(line: 761, column: 3, scope: !1531)
!1531 = !DILexicalBlockFile(scope: !1532, file: !1, discriminator: 1)
!1532 = distinct !DILexicalBlock(scope: !1529, file: !1, line: 761, column: 3)
!1533 = distinct !{!1533, !1534}
!1534 = !DILocation(line: 761, column: 3, scope: !1532)
!1535 = !DILocation(line: 761, column: 3, scope: !1536)
!1536 = !DILexicalBlockFile(scope: !1537, file: !1, discriminator: 2)
!1537 = distinct !DILexicalBlock(scope: !1532, file: !1, line: 761, column: 3)
!1538 = !DILocation(line: 761, column: 3, scope: !1539)
!1539 = !DILexicalBlockFile(scope: !1532, file: !1, discriminator: 3)
!1540 = !DILocation(line: 761, column: 3, scope: !1541)
!1541 = !DILexicalBlockFile(scope: !1522, file: !1, discriminator: 4)
!1542 = !DILocation(line: 762, column: 1, scope: !1522)
!1543 = distinct !DISubprogram(name: "gsl_sf_legendre_Pl", scope: !1, file: !1, line: 764, type: !1544, isLocal: false, isDefinition: true, scopeLine: 765, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!1544 = !DISubroutineType(types: !1545)
!1545 = !{!42, !140, !141}
!1546 = !DILocalVariable(name: "l", arg: 1, scope: !1543, file: !1, line: 764, type: !140)
!1547 = !DILocation(line: 764, column: 37, scope: !1543)
!1548 = !DILocalVariable(name: "x", arg: 2, scope: !1543, file: !1, line: 764, type: !141)
!1549 = !DILocation(line: 764, column: 53, scope: !1543)
!1550 = !DILocalVariable(name: "result", scope: !1543, file: !1, line: 766, type: !52)
!1551 = !DILocation(line: 766, column: 3, scope: !1543)
!1552 = !DILocalVariable(name: "status", scope: !1543, file: !1, line: 766, type: !50)
!1553 = !DILocation(line: 766, column: 3, scope: !1554)
!1554 = distinct !DILexicalBlock(scope: !1543, file: !1, line: 766, column: 3)
!1555 = !DILocation(line: 766, column: 3, scope: !1556)
!1556 = !DILexicalBlockFile(scope: !1557, file: !1, discriminator: 1)
!1557 = distinct !DILexicalBlock(scope: !1554, file: !1, line: 766, column: 3)
!1558 = distinct !{!1558, !1559}
!1559 = !DILocation(line: 766, column: 3, scope: !1557)
!1560 = !DILocation(line: 766, column: 3, scope: !1561)
!1561 = !DILexicalBlockFile(scope: !1562, file: !1, discriminator: 2)
!1562 = distinct !DILexicalBlock(scope: !1557, file: !1, line: 766, column: 3)
!1563 = !DILocation(line: 766, column: 3, scope: !1564)
!1564 = !DILexicalBlockFile(scope: !1557, file: !1, discriminator: 3)
!1565 = !DILocation(line: 766, column: 3, scope: !1566)
!1566 = !DILexicalBlockFile(scope: !1543, file: !1, discriminator: 4)
!1567 = !DILocation(line: 767, column: 1, scope: !1543)
!1568 = distinct !DISubprogram(name: "gsl_sf_legendre_Plm", scope: !1, file: !1, line: 769, type: !1569, isLocal: false, isDefinition: true, scopeLine: 770, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!1569 = !DISubroutineType(types: !1570)
!1570 = !{!42, !140, !140, !141}
!1571 = !DILocalVariable(name: "l", arg: 1, scope: !1568, file: !1, line: 769, type: !140)
!1572 = !DILocation(line: 769, column: 38, scope: !1568)
!1573 = !DILocalVariable(name: "m", arg: 2, scope: !1568, file: !1, line: 769, type: !140)
!1574 = !DILocation(line: 769, column: 51, scope: !1568)
!1575 = !DILocalVariable(name: "x", arg: 3, scope: !1568, file: !1, line: 769, type: !141)
!1576 = !DILocation(line: 769, column: 67, scope: !1568)
!1577 = !DILocalVariable(name: "result", scope: !1568, file: !1, line: 771, type: !52)
!1578 = !DILocation(line: 771, column: 3, scope: !1568)
!1579 = !DILocalVariable(name: "status", scope: !1568, file: !1, line: 771, type: !50)
!1580 = !DILocation(line: 771, column: 3, scope: !1581)
!1581 = distinct !DILexicalBlock(scope: !1568, file: !1, line: 771, column: 3)
!1582 = !DILocation(line: 771, column: 3, scope: !1583)
!1583 = !DILexicalBlockFile(scope: !1584, file: !1, discriminator: 1)
!1584 = distinct !DILexicalBlock(scope: !1581, file: !1, line: 771, column: 3)
!1585 = distinct !{!1585, !1586}
!1586 = !DILocation(line: 771, column: 3, scope: !1584)
!1587 = !DILocation(line: 771, column: 3, scope: !1588)
!1588 = !DILexicalBlockFile(scope: !1589, file: !1, discriminator: 2)
!1589 = distinct !DILexicalBlock(scope: !1584, file: !1, line: 771, column: 3)
!1590 = !DILocation(line: 771, column: 3, scope: !1591)
!1591 = !DILexicalBlockFile(scope: !1584, file: !1, discriminator: 3)
!1592 = !DILocation(line: 771, column: 3, scope: !1593)
!1593 = !DILexicalBlockFile(scope: !1568, file: !1, discriminator: 4)
!1594 = !DILocation(line: 772, column: 1, scope: !1568)
!1595 = distinct !DISubprogram(name: "gsl_sf_legendre_sphPlm", scope: !1, file: !1, line: 774, type: !1569, isLocal: false, isDefinition: true, scopeLine: 775, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!1596 = !DILocalVariable(name: "l", arg: 1, scope: !1595, file: !1, line: 774, type: !140)
!1597 = !DILocation(line: 774, column: 41, scope: !1595)
!1598 = !DILocalVariable(name: "m", arg: 2, scope: !1595, file: !1, line: 774, type: !140)
!1599 = !DILocation(line: 774, column: 54, scope: !1595)
!1600 = !DILocalVariable(name: "x", arg: 3, scope: !1595, file: !1, line: 774, type: !141)
!1601 = !DILocation(line: 774, column: 70, scope: !1595)
!1602 = !DILocalVariable(name: "result", scope: !1595, file: !1, line: 776, type: !52)
!1603 = !DILocation(line: 776, column: 3, scope: !1595)
!1604 = !DILocalVariable(name: "status", scope: !1595, file: !1, line: 776, type: !50)
!1605 = !DILocation(line: 776, column: 3, scope: !1606)
!1606 = distinct !DILexicalBlock(scope: !1595, file: !1, line: 776, column: 3)
!1607 = !DILocation(line: 776, column: 3, scope: !1608)
!1608 = !DILexicalBlockFile(scope: !1609, file: !1, discriminator: 1)
!1609 = distinct !DILexicalBlock(scope: !1606, file: !1, line: 776, column: 3)
!1610 = distinct !{!1610, !1611}
!1611 = !DILocation(line: 776, column: 3, scope: !1609)
!1612 = !DILocation(line: 776, column: 3, scope: !1613)
!1613 = !DILexicalBlockFile(scope: !1614, file: !1, discriminator: 2)
!1614 = distinct !DILexicalBlock(scope: !1609, file: !1, line: 776, column: 3)
!1615 = !DILocation(line: 776, column: 3, scope: !1616)
!1616 = !DILexicalBlockFile(scope: !1609, file: !1, discriminator: 3)
!1617 = !DILocation(line: 776, column: 3, scope: !1618)
!1618 = !DILexicalBlockFile(scope: !1595, file: !1, discriminator: 4)
!1619 = !DILocation(line: 777, column: 1, scope: !1595)
