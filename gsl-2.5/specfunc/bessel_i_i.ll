; ModuleID = 'bessel_i.ll'
source_filename = "bessel_i.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsl_sf_result_struct = type { double, double }

@.str = private unnamed_addr constant [10 x i8] c"underflow\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"bessel_i.c\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"domain error\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"gsl_sf_bessel_i0_scaled_e(x, &result)\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"gsl_sf_bessel_i1_scaled_e(x, &result)\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"gsl_sf_bessel_i2_scaled_e(x, &result)\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"gsl_sf_bessel_il_scaled_e(l, x, &result)\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@0 = private unnamed_addr constant [26 x i8] c"gsl_sf_bessel_i0_scaled_e\00"
@1 = private unnamed_addr constant [12 x i8] c"bessel_i.ll\00"
@2 = private unnamed_addr constant [26 x i8] c"gsl_sf_bessel_i1_scaled_e\00"
@3 = private unnamed_addr constant [12 x i8] c"bessel_i.ll\00"
@4 = private unnamed_addr constant [26 x i8] c"gsl_sf_bessel_i2_scaled_e\00"
@5 = private unnamed_addr constant [12 x i8] c"bessel_i.ll\00"
@6 = private unnamed_addr constant [26 x i8] c"gsl_sf_bessel_il_scaled_e\00"
@7 = private unnamed_addr constant [12 x i8] c"bessel_i.ll\00"
@8 = private unnamed_addr constant [14 x i8] c"bessel_il_CF1\00"
@9 = private unnamed_addr constant [12 x i8] c"bessel_i.ll\00"
@10 = private unnamed_addr constant [30 x i8] c"gsl_sf_bessel_il_scaled_array\00"
@11 = private unnamed_addr constant [12 x i8] c"bessel_i.ll\00"
@12 = private unnamed_addr constant [24 x i8] c"gsl_sf_bessel_i0_scaled\00"
@13 = private unnamed_addr constant [12 x i8] c"bessel_i.ll\00"
@14 = private unnamed_addr constant [24 x i8] c"gsl_sf_bessel_i1_scaled\00"
@15 = private unnamed_addr constant [12 x i8] c"bessel_i.ll\00"
@16 = private unnamed_addr constant [24 x i8] c"gsl_sf_bessel_i2_scaled\00"
@17 = private unnamed_addr constant [12 x i8] c"bessel_i.ll\00"
@18 = private unnamed_addr constant [24 x i8] c"gsl_sf_bessel_il_scaled\00"
@19 = private unnamed_addr constant [12 x i8] c"bessel_i.ll\00"

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_bessel_i0_scaled_e(double, %struct.gsl_sf_result_struct*) #0 !dbg !47 {
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
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !60, metadata !61), !dbg !62
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %5, metadata !63, metadata !61), !dbg !64
  call void @llvm.dbg.declare(metadata double* %6, metadata !65, metadata !61), !dbg !66
  %15 = load double, double* %4, align 8, !dbg !67
  %16 = call double @fabs(double %15) #1, !dbg !68
  store double %16, double* %6, align 8, !dbg !66
  %17 = load double, double* %4, align 8, !dbg !69
  %18 = fcmp oeq double %17, 0.000000e+00, !dbg !71
  %19 = call i1 @fCmpInstHandler(double %17, double 0.000000e+00, i1 %18, i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94741344644352, i32 70, i32 8), !dbg !72
  br i1 %19, label %20, label %25, !dbg !72

; <label>:20:                                     ; preds = %2
  %21 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !73
  %22 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %21, i32 0, i32 0, !dbg !75
  store double 1.000000e+00, double* %22, align 8, !dbg !76
  %23 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !77
  %24 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %23, i32 0, i32 1, !dbg !78
  store double 0.000000e+00, double* %24, align 8, !dbg !79
  store i32 0, i32* %3, align 4, !dbg !80
  br label %97, !dbg !80

; <label>:25:                                     ; preds = %2
  %26 = load double, double* %6, align 8, !dbg !81
  %27 = fcmp olt double %26, 2.000000e-01, !dbg !83
  %28 = call i1 @fCmpInstHandler(double %26, double 2.000000e-01, i1 %27, i32 4, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94741344650528, i32 75, i32 14), !dbg !84
  br i1 %28, label %29, label %62, !dbg !84

; <label>:29:                                     ; preds = %25
  call void @llvm.dbg.declare(metadata double* %7, metadata !85, metadata !61), !dbg !87
  %30 = load double, double* %6, align 8, !dbg !88
  %31 = fsub double -0.000000e+00, %30, !dbg !89
  call void @fSubHandler(double -0.000000e+00, double %30, double %31, i64 0, i64 94741344652712, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94741344653152, i32 76, i32 28), !dbg !90
  %32 = call double @exp(double %31) #5, !dbg !90
  call void @callOneArgHandler(i32 11, double %31, double %32, i64 94741344653152, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94741344653904, i32 76, i32 24), !dbg !87
  store double %32, double* %7, align 8, !dbg !87
  call void @llvm.dbg.declare(metadata double* %8, metadata !91, metadata !61), !dbg !92
  %33 = load double, double* %6, align 8, !dbg !93
  %34 = load double, double* %6, align 8, !dbg !94
  %35 = fmul double %33, %34, !dbg !95
  call void @fMulHandler(double %33, double %34, double %35, i64 94741344657240, i64 94741344657592, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94741344658528, i32 77, i32 24), !dbg !92
  store double %35, double* %8, align 8, !dbg !92
  call void @llvm.dbg.declare(metadata double* %9, metadata !96, metadata !61), !dbg !97
  store double 0x3FC5555555555555, double* %9, align 8, !dbg !97
  call void @llvm.dbg.declare(metadata double* %10, metadata !98, metadata !61), !dbg !99
  store double 0x3F81111111111111, double* %10, align 8, !dbg !99
  call void @llvm.dbg.declare(metadata double* %11, metadata !100, metadata !61), !dbg !101
  store double 0x3F2A01A01A01A01A, double* %11, align 8, !dbg !101
  call void @llvm.dbg.declare(metadata double* %12, metadata !102, metadata !61), !dbg !103
  store double 0x3EC71DE3A556C734, double* %12, align 8, !dbg !103
  call void @llvm.dbg.declare(metadata double* %13, metadata !104, metadata !61), !dbg !105
  store double 0x3E5AE64567F544E4, double* %13, align 8, !dbg !105
  call void @llvm.dbg.declare(metadata double* %14, metadata !106, metadata !61), !dbg !107
  %36 = load double, double* %8, align 8, !dbg !108
  %37 = load double, double* %8, align 8, !dbg !109
  %38 = load double, double* %8, align 8, !dbg !110
  %39 = load double, double* %8, align 8, !dbg !111
  %40 = load double, double* %8, align 8, !dbg !112
  %41 = fmul double %40, 0x3E5AE64567F544E4, !dbg !113
  call void @fMulHandler(double %40, double 0x3E5AE64567F544E4, double %41, i64 94741344677384, i64 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94741344677792, i32 83, i32 63), !dbg !114
  %42 = fadd double 0x3EC71DE3A556C734, %41, !dbg !114
  call void @fAddHandler(double 0x3EC71DE3A556C734, double %41, double %42, i64 0, i64 94741344677792, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94741344678208, i32 83, i32 60), !dbg !115
  %43 = fmul double %39, %42, !dbg !115
  call void @fMulHandler(double %39, double %42, double %43, i64 94741344677000, i64 94741344678208, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94741344678624, i32 83, i32 55), !dbg !116
  %44 = fadd double 0x3F2A01A01A01A01A, %43, !dbg !116
  call void @fAddHandler(double 0x3F2A01A01A01A01A, double %43, double %44, i64 0, i64 94741344678624, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94741344679040, i32 83, i32 52), !dbg !117
  %45 = fmul double %38, %44, !dbg !117
  call void @fMulHandler(double %38, double %44, double %45, i64 94741344676616, i64 94741344679040, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94741344679456, i32 83, i32 47), !dbg !118
  %46 = fadd double 0x3F81111111111111, %45, !dbg !118
  call void @fAddHandler(double 0x3F81111111111111, double %45, double %46, i64 0, i64 94741344679456, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94741344679872, i32 83, i32 44), !dbg !119
  %47 = fmul double %37, %46, !dbg !119
  call void @fMulHandler(double %37, double %46, double %47, i64 94741344676232, i64 94741344679872, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94741344680288, i32 83, i32 39), !dbg !120
  %48 = fadd double 0x3FC5555555555555, %47, !dbg !120
  call void @fAddHandler(double 0x3FC5555555555555, double %47, double %48, i64 0, i64 94741344680288, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94741344680704, i32 83, i32 36), !dbg !121
  %49 = fmul double %36, %48, !dbg !121
  call void @fMulHandler(double %36, double %48, double %49, i64 94741344675880, i64 94741344680704, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94741344681120, i32 83, i32 31), !dbg !122
  %50 = fadd double 1.000000e+00, %49, !dbg !122
  call void @fAddHandler(double 1.000000e+00, double %49, double %50, i64 0, i64 94741344681120, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94741344681568, i32 83, i32 28), !dbg !107
  store double %50, double* %14, align 8, !dbg !107
  %51 = load double, double* %7, align 8, !dbg !123
  %52 = load double, double* %14, align 8, !dbg !124
  %53 = fmul double %51, %52, !dbg !125
  call void @fMulHandler(double %51, double %52, double %53, i64 94741344683608, i64 94741344683992, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94741344684400, i32 84, i32 23), !dbg !126
  %54 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !126
  %55 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %54, i32 0, i32 0, !dbg !127
  store double %53, double* %55, align 8, !dbg !128
  %56 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !129
  %57 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %56, i32 0, i32 0, !dbg !130
  %58 = load double, double* %57, align 8, !dbg !130
  %59 = fmul double 0x3CC0000000000000, %58, !dbg !131
  call void @fMulHandler(double 0x3CC0000000000000, double %58, double %59, i64 0, i64 94741344686872, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94741344688608, i32 85, i32 41), !dbg !132
  %60 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !132
  %61 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %60, i32 0, i32 1, !dbg !133
  store double %59, double* %61, align 8, !dbg !134
  br label %95, !dbg !135

; <label>:62:                                     ; preds = %25
  %63 = load double, double* %6, align 8, !dbg !136
  %64 = fcmp olt double %63, 0x403205966F2B4F12, !dbg !138
  %65 = call i1 @fCmpInstHandler(double %63, double 0x403205966F2B4F12, i1 %64, i32 4, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94741344691184, i32 87, i32 14), !dbg !139
  br i1 %65, label %66, label %82, !dbg !139

; <label>:66:                                     ; preds = %62
  %67 = load double, double* %6, align 8, !dbg !140
  %68 = fmul double -2.000000e+00, %67, !dbg !142
  call void @fMulHandler(double -2.000000e+00, double %67, double %68, i64 0, i64 94741344692296, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94741344693776, i32 88, i32 34), !dbg !143
  %69 = call double @exp(double %68) #5, !dbg !143
  call void @callOneArgHandler(i32 11, double %68, double %69, i64 94741344693776, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94741344694224, i32 88, i32 26), !dbg !144
  %70 = fsub double 1.000000e+00, %69, !dbg !144
  call void @fSubHandler(double 1.000000e+00, double %69, double %70, i64 0, i64 94741344694224, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94741344694736, i32 88, i32 24), !dbg !145
  %71 = load double, double* %6, align 8, !dbg !145
  %72 = fmul double 2.000000e+00, %71, !dbg !146
  call void @fMulHandler(double 2.000000e+00, double %71, double %72, i64 0, i64 94741344695096, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94741344695600, i32 88, i32 44), !dbg !147
  %73 = fdiv double %70, %72, !dbg !147
  call void @fDivHandler(double %70, double %72, double %73, i64 94741344694736, i64 94741344695600, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94741344695984, i32 88, i32 39), !dbg !148
  %74 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !148
  %75 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %74, i32 0, i32 0, !dbg !149
  store double %73, double* %75, align 8, !dbg !150
  %76 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !151
  %77 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %76, i32 0, i32 0, !dbg !152
  %78 = load double, double* %77, align 8, !dbg !152
  %79 = fmul double 0x3CC0000000000000, %78, !dbg !153
  call void @fMulHandler(double 0x3CC0000000000000, double %78, double %79, i64 0, i64 94741344698456, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94741344700128, i32 89, i32 41), !dbg !154
  %80 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !154
  %81 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %80, i32 0, i32 1, !dbg !155
  store double %79, double* %81, align 8, !dbg !156
  br label %94, !dbg !157

; <label>:82:                                     ; preds = %62
  %83 = load double, double* %6, align 8, !dbg !158
  %84 = fmul double 2.000000e+00, %83, !dbg !160
  call void @fMulHandler(double 2.000000e+00, double %83, double %84, i64 0, i64 94741344702296, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94741344702672, i32 92, i32 27), !dbg !161
  %85 = fdiv double 1.000000e+00, %84, !dbg !161
  call void @fDivHandler(double 1.000000e+00, double %84, double %85, i64 0, i64 94741344702672, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94741344703088, i32 92, i32 22), !dbg !162
  %86 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !162
  %87 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %86, i32 0, i32 0, !dbg !163
  store double %85, double* %87, align 8, !dbg !164
  %88 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !165
  %89 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %88, i32 0, i32 0, !dbg !166
  %90 = load double, double* %89, align 8, !dbg !166
  %91 = fmul double 0x3CC0000000000000, %90, !dbg !167
  call void @fMulHandler(double 0x3CC0000000000000, double %90, double %91, i64 0, i64 94741344705528, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94741344707200, i32 93, i32 41), !dbg !168
  %92 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !168
  %93 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %92, i32 0, i32 1, !dbg !169
  store double %91, double* %93, align 8, !dbg !170
  br label %94

; <label>:94:                                     ; preds = %82, %66
  br label %95

; <label>:95:                                     ; preds = %94, %29
  br label %96

; <label>:96:                                     ; preds = %95
  store i32 0, i32* %3, align 4, !dbg !171
  br label %97, !dbg !171

; <label>:97:                                     ; preds = %96, %20
  %98 = load i32, i32* %3, align 4, !dbg !172
  ret i32 %98, !dbg !172
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readnone
declare double @fabs(double) #2

; Function Attrs: nounwind
declare double @exp(double) #3

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_bessel_i1_scaled_e(double, %struct.gsl_sf_result_struct*) #0 !dbg !173 {
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
  call void @llvm.dbg.declare(metadata double* %4, metadata !174, metadata !61), !dbg !175
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %5, metadata !176, metadata !61), !dbg !177
  call void @llvm.dbg.declare(metadata double* %6, metadata !178, metadata !61), !dbg !179
  %16 = load double, double* %4, align 8, !dbg !180
  %17 = call double @fabs(double %16) #1, !dbg !181
  store double %17, double* %6, align 8, !dbg !179
  %18 = load double, double* %4, align 8, !dbg !182
  %19 = fcmp oeq double %18, 0.000000e+00, !dbg !184
  %20 = call i1 @fCmpInstHandler(double %18, double 0.000000e+00, i1 %19, i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94741344722848, i32 105, i32 8), !dbg !185
  br i1 %20, label %21, label %26, !dbg !185

; <label>:21:                                     ; preds = %2
  %22 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !186
  %23 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %22, i32 0, i32 0, !dbg !188
  store double 0.000000e+00, double* %23, align 8, !dbg !189
  %24 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !190
  %25 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %24, i32 0, i32 1, !dbg !191
  store double 0.000000e+00, double* %25, align 8, !dbg !192
  store i32 0, i32* %3, align 4, !dbg !193
  br label %117, !dbg !193

; <label>:26:                                     ; preds = %2
  %27 = load double, double* %6, align 8, !dbg !194
  %28 = fcmp olt double %27, 0x28000000000000, !dbg !196
  %29 = call i1 @fCmpInstHandler(double %27, double 0x28000000000000, i1 %28, i32 4, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94741344728912, i32 110, i32 14), !dbg !197
  br i1 %29, label %30, label %39, !dbg !197

; <label>:30:                                     ; preds = %26
  br label %31, !dbg !198, !llvm.loop !200

; <label>:31:                                     ; preds = %30
  %32 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !201
  %33 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %32, i32 0, i32 0, !dbg !201
  store double 0.000000e+00, double* %33, align 8, !dbg !201
  %34 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !201
  %35 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %34, i32 0, i32 1, !dbg !201
  store double 0x10000000000000, double* %35, align 8, !dbg !201
  br label %36, !dbg !201, !llvm.loop !204

; <label>:36:                                     ; preds = %31
  call void @gsl_error(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 111, i32 15), !dbg !206
  store i32 15, i32* %3, align 4, !dbg !206
  br label %117, !dbg !206
                                                  ; No predecessors!
  br label %38, !dbg !209

; <label>:38:                                     ; preds = %37
  br label %116, !dbg !211

; <label>:39:                                     ; preds = %26
  %40 = load double, double* %6, align 8, !dbg !212
  %41 = fcmp olt double %40, 2.500000e-01, !dbg !214
  %42 = call i1 @fCmpInstHandler(double %40, double 2.500000e-01, i1 %41, i32 4, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94741344743008, i32 113, i32 14), !dbg !215
  br i1 %42, label %43, label %80, !dbg !215

; <label>:43:                                     ; preds = %39
  call void @llvm.dbg.declare(metadata double* %7, metadata !216, metadata !61), !dbg !218
  %44 = load double, double* %6, align 8, !dbg !219
  %45 = fsub double -0.000000e+00, %44, !dbg !220
  call void @fSubHandler(double -0.000000e+00, double %44, double %45, i64 0, i64 94741344745240, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94741344745616, i32 114, i32 28), !dbg !221
  %46 = call double @exp(double %45) #5, !dbg !221
  call void @callOneArgHandler(i32 11, double %45, double %46, i64 94741344745616, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94741344746096, i32 114, i32 24), !dbg !218
  store double %46, double* %7, align 8, !dbg !218
  call void @llvm.dbg.declare(metadata double* %8, metadata !222, metadata !61), !dbg !223
  %47 = load double, double* %4, align 8, !dbg !224
  %48 = load double, double* %4, align 8, !dbg !225
  %49 = fmul double %47, %48, !dbg !226
  call void @fMulHandler(double %47, double %48, double %49, i64 94741344749352, i64 94741344749704, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94741344750112, i32 115, i32 24), !dbg !223
  store double %49, double* %8, align 8, !dbg !223
  call void @llvm.dbg.declare(metadata double* %9, metadata !227, metadata !61), !dbg !228
  store double 1.000000e-01, double* %9, align 8, !dbg !228
  call void @llvm.dbg.declare(metadata double* %10, metadata !229, metadata !61), !dbg !230
  store double 0x3F6D41D41D41D41D, double* %10, align 8, !dbg !230
  call void @llvm.dbg.declare(metadata double* %11, metadata !231, metadata !61), !dbg !232
  store double 0x3F11566ABC011567, double* %11, align 8, !dbg !232
  call void @llvm.dbg.declare(metadata double* %12, metadata !233, metadata !61), !dbg !234
  store double 0x3EA937E11175F095, double* %12, align 8, !dbg !234
  call void @llvm.dbg.declare(metadata double* %13, metadata !235, metadata !61), !dbg !236
  store double 0x3E38D48ED61D7AAB, double* %13, align 8, !dbg !236
  call void @llvm.dbg.declare(metadata double* %14, metadata !237, metadata !61), !dbg !238
  %50 = load double, double* %8, align 8, !dbg !239
  %51 = load double, double* %8, align 8, !dbg !240
  %52 = load double, double* %8, align 8, !dbg !241
  %53 = load double, double* %8, align 8, !dbg !242
  %54 = load double, double* %8, align 8, !dbg !243
  %55 = fmul double %54, 0x3E38D48ED61D7AAB, !dbg !244
  call void @fMulHandler(double %54, double 0x3E38D48ED61D7AAB, double %55, i64 94741344768968, i64 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94741344769376, i32 121, i32 63), !dbg !245
  %56 = fadd double 0x3EA937E11175F095, %55, !dbg !245
  call void @fAddHandler(double 0x3EA937E11175F095, double %55, double %56, i64 0, i64 94741344769376, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94741344769792, i32 121, i32 60), !dbg !246
  %57 = fmul double %53, %56, !dbg !246
  call void @fMulHandler(double %53, double %56, double %57, i64 94741344768584, i64 94741344769792, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94741344770208, i32 121, i32 55), !dbg !247
  %58 = fadd double 0x3F11566ABC011567, %57, !dbg !247
  call void @fAddHandler(double 0x3F11566ABC011567, double %57, double %58, i64 0, i64 94741344770208, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94741344770624, i32 121, i32 52), !dbg !248
  %59 = fmul double %52, %58, !dbg !248
  call void @fMulHandler(double %52, double %58, double %59, i64 94741344768200, i64 94741344770624, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94741344771040, i32 121, i32 47), !dbg !249
  %60 = fadd double 0x3F6D41D41D41D41D, %59, !dbg !249
  call void @fAddHandler(double 0x3F6D41D41D41D41D, double %59, double %60, i64 0, i64 94741344771040, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94741344771456, i32 121, i32 44), !dbg !250
  %61 = fmul double %51, %60, !dbg !250
  call void @fMulHandler(double %51, double %60, double %61, i64 94741344767816, i64 94741344771456, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94741344771872, i32 121, i32 39), !dbg !251
  %62 = fadd double 1.000000e-01, %61, !dbg !251
  call void @fAddHandler(double 1.000000e-01, double %61, double %62, i64 0, i64 94741344771872, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94741344772320, i32 121, i32 36), !dbg !252
  %63 = fmul double %50, %62, !dbg !252
  call void @fMulHandler(double %50, double %62, double %63, i64 94741344767464, i64 94741344772320, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94741344772704, i32 121, i32 31), !dbg !253
  %64 = fadd double 1.000000e+00, %63, !dbg !253
  call void @fAddHandler(double 1.000000e+00, double %63, double %64, i64 0, i64 94741344772704, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94741344773152, i32 121, i32 28), !dbg !238
  store double %64, double* %14, align 8, !dbg !238
  %65 = load double, double* %7, align 8, !dbg !254
  %66 = load double, double* %4, align 8, !dbg !255
  %67 = fmul double %65, %66, !dbg !256
  call void @fMulHandler(double %65, double %66, double %67, i64 94741344775192, i64 94741344775576, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94741344775984, i32 122, i32 23), !dbg !257
  %68 = fdiv double %67, 3.000000e+00, !dbg !257
  call void @fDivHandler(double %67, double 3.000000e+00, double %68, i64 94741344775984, i64 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94741344776496, i32 122, i32 26), !dbg !258
  %69 = load double, double* %14, align 8, !dbg !258
  %70 = fmul double %68, %69, !dbg !259
  call void @fMulHandler(double %68, double %69, double %70, i64 94741344776496, i64 94741344776856, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94741344777264, i32 122, i32 31), !dbg !260
  %71 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !260
  %72 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %71, i32 0, i32 0, !dbg !261
  store double %70, double* %72, align 8, !dbg !262
  %73 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !263
  %74 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %73, i32 0, i32 0, !dbg !264
  %75 = load double, double* %74, align 8, !dbg !264
  %76 = call double @fabs(double %75) #1, !dbg !265
  %77 = fmul double 0x3CC0000000000000, %76, !dbg !266
  call void @fMulHandler(double 0x3CC0000000000000, double %76, double %77, i64 0, i64 94741344781472, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94741344781952, i32 123, i32 41), !dbg !267
  %78 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !267
  %79 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %78, i32 0, i32 1, !dbg !268
  store double %77, double* %79, align 8, !dbg !269
  store i32 0, i32* %3, align 4, !dbg !270
  br label %117, !dbg !270

; <label>:80:                                     ; preds = %39
  call void @llvm.dbg.declare(metadata double* %15, metadata !271, metadata !61), !dbg !273
  %81 = load double, double* %6, align 8, !dbg !274
  %82 = fmul double -2.000000e+00, %81, !dbg !275
  call void @fMulHandler(double -2.000000e+00, double %81, double %82, i64 0, i64 94741344786712, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94741344787120, i32 127, i32 25), !dbg !276
  %83 = call double @exp(double %82) #5, !dbg !276
  call void @callOneArgHandler(i32 11, double %82, double %83, i64 94741344787120, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94741344787568, i32 127, i32 17), !dbg !273
  store double %83, double* %15, align 8, !dbg !273
  %84 = load double, double* %6, align 8, !dbg !277
  %85 = load double, double* %15, align 8, !dbg !278
  %86 = fadd double 1.000000e+00, %85, !dbg !279
  call void @fAddHandler(double 1.000000e+00, double %85, double %86, i64 0, i64 94741344790088, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94741344790528, i32 128, i32 33), !dbg !280
  %87 = fmul double %84, %86, !dbg !280
  call void @fMulHandler(double %84, double %86, double %87, i64 94741344789704, i64 94741344790528, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94741344790912, i32 128, i32 28), !dbg !281
  %88 = load double, double* %15, align 8, !dbg !281
  %89 = fsub double 1.000000e+00, %88, !dbg !282
  call void @fSubHandler(double 1.000000e+00, double %88, double %89, i64 0, i64 94741344791304, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94741344791744, i32 128, i32 44), !dbg !283
  %90 = fsub double %87, %89, !dbg !283
  call void @fSubHandler(double %87, double %89, double %90, i64 94741344790912, i64 94741344791744, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94741344792128, i32 128, i32 38), !dbg !284
  %91 = fmul double 5.000000e-01, %90, !dbg !284
  call void @fMulHandler(double 5.000000e-01, double %90, double %91, i64 0, i64 94741344792128, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94741344792640, i32 128, i32 23), !dbg !285
  %92 = load double, double* %6, align 8, !dbg !285
  %93 = load double, double* %6, align 8, !dbg !286
  %94 = fmul double %92, %93, !dbg !287
  call void @fMulHandler(double %92, double %93, double %94, i64 94741344793000, i64 94741344793384, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94741344793792, i32 128, i32 55), !dbg !288
  %95 = fdiv double %91, %94, !dbg !288
  call void @fDivHandler(double %91, double %94, double %95, i64 94741344792640, i64 94741344793792, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94741344794208, i32 128, i32 50), !dbg !289
  %96 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !289
  %97 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %96, i32 0, i32 0, !dbg !290
  store double %95, double* %97, align 8, !dbg !291
  %98 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !292
  %99 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %98, i32 0, i32 0, !dbg !293
  %100 = load double, double* %99, align 8, !dbg !293
  %101 = call double @fabs(double %100) #1, !dbg !294
  %102 = fmul double 0x3CC0000000000000, %101, !dbg !295
  call void @fMulHandler(double 0x3CC0000000000000, double %101, double %102, i64 0, i64 94741344798416, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94741344798896, i32 129, i32 41), !dbg !296
  %103 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !296
  %104 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %103, i32 0, i32 1, !dbg !297
  store double %102, double* %104, align 8, !dbg !298
  %105 = load double, double* %4, align 8, !dbg !299
  %106 = fcmp olt double %105, 0.000000e+00, !dbg !301
  %107 = call i1 @fCmpInstHandler(double %105, double 0.000000e+00, i1 %106, i32 4, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94741344800944, i32 130, i32 10), !dbg !302
  br i1 %107, label %108, label %115, !dbg !302

; <label>:108:                                    ; preds = %80
  %109 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !303
  %110 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %109, i32 0, i32 0, !dbg !305
  %111 = load double, double* %110, align 8, !dbg !305
  %112 = fsub double -0.000000e+00, %111, !dbg !306
  call void @fSubHandler(double -0.000000e+00, double %111, double %112, i64 0, i64 94741344802824, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94741344804496, i32 130, i32 31), !dbg !307
  %113 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !307
  %114 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %113, i32 0, i32 0, !dbg !308
  store double %112, double* %114, align 8, !dbg !309
  br label %115, !dbg !307

; <label>:115:                                    ; preds = %108, %80
  store i32 0, i32* %3, align 4, !dbg !310
  br label %117, !dbg !310

; <label>:116:                                    ; preds = %38
  br label %117

; <label>:117:                                    ; preds = %116, %115, %43, %36, %21
  %118 = load i32, i32* %3, align 4, !dbg !311
  ret i32 %118, !dbg !311
}

declare void @gsl_error(i8*, i8*, i32, i32) #4

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_bessel_i2_scaled_e(double, %struct.gsl_sf_result_struct*) #0 !dbg !312 {
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
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !313, metadata !61), !dbg !314
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %5, metadata !315, metadata !61), !dbg !316
  call void @llvm.dbg.declare(metadata double* %6, metadata !317, metadata !61), !dbg !318
  %17 = load double, double* %4, align 8, !dbg !319
  %18 = call double @fabs(double %17) #1, !dbg !320
  store double %18, double* %6, align 8, !dbg !318
  %19 = load double, double* %4, align 8, !dbg !321
  %20 = fcmp oeq double %19, 0.000000e+00, !dbg !323
  %21 = call i1 @fCmpInstHandler(double %19, double 0.000000e+00, i1 %20, i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94741344823120, i32 142, i32 8), !dbg !324
  br i1 %21, label %22, label %27, !dbg !324

; <label>:22:                                     ; preds = %2
  %23 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !325
  %24 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %23, i32 0, i32 0, !dbg !327
  store double 0.000000e+00, double* %24, align 8, !dbg !328
  %25 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !329
  %26 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %25, i32 0, i32 1, !dbg !330
  store double 0.000000e+00, double* %26, align 8, !dbg !331
  store i32 0, i32* %3, align 4, !dbg !332
  br label %118, !dbg !332

; <label>:27:                                     ; preds = %2
  %28 = load double, double* %6, align 8, !dbg !333
  %29 = fcmp olt double %28, 0x2020000000000000, !dbg !335
  %30 = call i1 @fCmpInstHandler(double %28, double 0x2020000000000000, i1 %29, i32 4, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94741344829280, i32 147, i32 14), !dbg !336
  br i1 %30, label %31, label %40, !dbg !336

; <label>:31:                                     ; preds = %27
  br label %32, !dbg !337, !llvm.loop !339

; <label>:32:                                     ; preds = %31
  %33 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !340
  %34 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %33, i32 0, i32 0, !dbg !340
  store double 0.000000e+00, double* %34, align 8, !dbg !340
  %35 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !340
  %36 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %35, i32 0, i32 1, !dbg !340
  store double 0x10000000000000, double* %36, align 8, !dbg !340
  br label %37, !dbg !340, !llvm.loop !343

; <label>:37:                                     ; preds = %32
  call void @gsl_error(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 148, i32 15), !dbg !345
  store i32 15, i32* %3, align 4, !dbg !345
  br label %118, !dbg !345
                                                  ; No predecessors!
  br label %39, !dbg !348

; <label>:39:                                     ; preds = %38
  br label %117, !dbg !350

; <label>:40:                                     ; preds = %27
  %41 = load double, double* %6, align 8, !dbg !351
  %42 = fcmp olt double %41, 2.500000e-01, !dbg !353
  %43 = call i1 @fCmpInstHandler(double %41, double 2.500000e-01, i1 %42, i32 4, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94741344838016, i32 150, i32 14), !dbg !354
  br i1 %43, label %44, label %83, !dbg !354

; <label>:44:                                     ; preds = %40
  call void @llvm.dbg.declare(metadata double* %7, metadata !355, metadata !61), !dbg !357
  %45 = load double, double* %4, align 8, !dbg !358
  %46 = load double, double* %4, align 8, !dbg !359
  %47 = fmul double %45, %46, !dbg !360
  call void @fMulHandler(double %45, double %46, double %47, i64 94741344840152, i64 94741344840504, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94741344840912, i32 151, i32 23), !dbg !357
  store double %47, double* %7, align 8, !dbg !357
  call void @llvm.dbg.declare(metadata double* %8, metadata !361, metadata !61), !dbg !362
  store double 0x3FB2492492492492, double* %8, align 8, !dbg !362
  call void @llvm.dbg.declare(metadata double* %9, metadata !363, metadata !61), !dbg !364
  store double 0x3F60410410410410, double* %9, align 8, !dbg !364
  call void @llvm.dbg.declare(metadata double* %10, metadata !365, metadata !61), !dbg !366
  store double 0x3EFF85D955D36CBB, double* %10, align 8, !dbg !366
  call void @llvm.dbg.declare(metadata double* %11, metadata !367, metadata !61), !dbg !368
  store double 0x3E93660F974707D5, double* %11, align 8, !dbg !368
  call void @llvm.dbg.declare(metadata double* %12, metadata !369, metadata !61), !dbg !370
  store double 0x3E208DB48EBE51C7, double* %12, align 8, !dbg !370
  call void @llvm.dbg.declare(metadata double* %13, metadata !371, metadata !61), !dbg !372
  %48 = load double, double* %7, align 8, !dbg !373
  %49 = load double, double* %7, align 8, !dbg !374
  %50 = load double, double* %7, align 8, !dbg !375
  %51 = load double, double* %7, align 8, !dbg !376
  %52 = load double, double* %7, align 8, !dbg !377
  %53 = fmul double %52, 0x3E208DB48EBE51C7, !dbg !378
  call void @fMulHandler(double %52, double 0x3E208DB48EBE51C7, double %53, i64 94741344859768, i64 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94741344860176, i32 157, i32 63), !dbg !379
  %54 = fadd double 0x3E93660F974707D5, %53, !dbg !379
  call void @fAddHandler(double 0x3E93660F974707D5, double %53, double %54, i64 0, i64 94741344860176, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94741344860592, i32 157, i32 60), !dbg !380
  %55 = fmul double %51, %54, !dbg !380
  call void @fMulHandler(double %51, double %54, double %55, i64 94741344859384, i64 94741344860592, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94741344861008, i32 157, i32 55), !dbg !381
  %56 = fadd double 0x3EFF85D955D36CBB, %55, !dbg !381
  call void @fAddHandler(double 0x3EFF85D955D36CBB, double %55, double %56, i64 0, i64 94741344861008, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94741344861424, i32 157, i32 52), !dbg !382
  %57 = fmul double %50, %56, !dbg !382
  call void @fMulHandler(double %50, double %56, double %57, i64 94741344859000, i64 94741344861424, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94741344861840, i32 157, i32 47), !dbg !383
  %58 = fadd double 0x3F60410410410410, %57, !dbg !383
  call void @fAddHandler(double 0x3F60410410410410, double %57, double %58, i64 0, i64 94741344861840, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94741344862256, i32 157, i32 44), !dbg !384
  %59 = fmul double %49, %58, !dbg !384
  call void @fMulHandler(double %49, double %58, double %59, i64 94741344858616, i64 94741344862256, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94741344862672, i32 157, i32 39), !dbg !385
  %60 = fadd double 0x3FB2492492492492, %59, !dbg !385
  call void @fAddHandler(double 0x3FB2492492492492, double %59, double %60, i64 0, i64 94741344862672, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94741344863088, i32 157, i32 36), !dbg !386
  %61 = fmul double %48, %60, !dbg !386
  call void @fMulHandler(double %48, double %60, double %61, i64 94741344858264, i64 94741344863088, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94741344863504, i32 157, i32 31), !dbg !387
  %62 = fadd double 1.000000e+00, %61, !dbg !387
  call void @fAddHandler(double 1.000000e+00, double %61, double %62, i64 0, i64 94741344863504, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94741344863952, i32 157, i32 28), !dbg !372
  store double %62, double* %13, align 8, !dbg !372
  call void @llvm.dbg.declare(metadata double* %14, metadata !388, metadata !61), !dbg !389
  %63 = load double, double* %6, align 8, !dbg !390
  %64 = fsub double -0.000000e+00, %63, !dbg !391
  call void @fSubHandler(double -0.000000e+00, double %63, double %64, i64 0, i64 94741344867112, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94741344867488, i32 158, i32 28), !dbg !392
  %65 = call double @exp(double %64) #5, !dbg !392
  call void @callOneArgHandler(i32 11, double %64, double %65, i64 94741344867488, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94741344867968, i32 158, i32 24), !dbg !393
  %66 = load double, double* %4, align 8, !dbg !393
  %67 = fmul double %65, %66, !dbg !394
  call void @fMulHandler(double %65, double %66, double %67, i64 94741344867968, i64 94741344868424, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94741344868832, i32 158, i32 33), !dbg !395
  %68 = load double, double* %4, align 8, !dbg !395
  %69 = fmul double %67, %68, !dbg !396
  call void @fMulHandler(double %67, double %68, double %69, i64 94741344868832, i64 94741344869224, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94741344869632, i32 158, i32 36), !dbg !397
  %70 = fdiv double %69, 1.500000e+01, !dbg !397
  call void @fDivHandler(double %69, double 1.500000e+01, double %70, i64 94741344869632, i64 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94741344870144, i32 158, i32 38), !dbg !389
  store double %70, double* %14, align 8, !dbg !389
  %71 = load double, double* %14, align 8, !dbg !398
  %72 = load double, double* %13, align 8, !dbg !399
  %73 = fmul double %71, %72, !dbg !400
  call void @fMulHandler(double %71, double %72, double %73, i64 94741344872184, i64 94741344872568, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94741344872976, i32 159, i32 23), !dbg !401
  %74 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !401
  %75 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %74, i32 0, i32 0, !dbg !402
  store double %73, double* %75, align 8, !dbg !403
  %76 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !404
  %77 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %76, i32 0, i32 0, !dbg !405
  %78 = load double, double* %77, align 8, !dbg !405
  %79 = call double @fabs(double %78) #1, !dbg !406
  %80 = fmul double 0x3CC0000000000000, %79, !dbg !407
  call void @fMulHandler(double 0x3CC0000000000000, double %79, double %80, i64 0, i64 94741344877184, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94741344877664, i32 160, i32 41), !dbg !408
  %81 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !408
  %82 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %81, i32 0, i32 1, !dbg !409
  store double %80, double* %82, align 8, !dbg !410
  store i32 0, i32* %3, align 4, !dbg !411
  br label %118, !dbg !411

; <label>:83:                                     ; preds = %40
  call void @llvm.dbg.declare(metadata double* %15, metadata !412, metadata !61), !dbg !414
  %84 = load double, double* %6, align 8, !dbg !415
  %85 = fmul double -2.000000e+00, %84, !dbg !416
  call void @fMulHandler(double -2.000000e+00, double %84, double %85, i64 0, i64 94741344882424, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94741344882832, i32 164, i32 25), !dbg !417
  %86 = call double @exp(double %85) #5, !dbg !417
  call void @callOneArgHandler(i32 11, double %85, double %86, i64 94741344882832, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94741344883280, i32 164, i32 17), !dbg !414
  store double %86, double* %15, align 8, !dbg !414
  call void @llvm.dbg.declare(metadata double* %16, metadata !418, metadata !61), !dbg !419
  %87 = load double, double* %4, align 8, !dbg !420
  %88 = load double, double* %4, align 8, !dbg !421
  %89 = fmul double %87, %88, !dbg !422
  call void @fMulHandler(double %87, double %88, double %89, i64 94741344886536, i64 94741344886888, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94741344887296, i32 165, i32 18), !dbg !419
  store double %89, double* %16, align 8, !dbg !419
  %90 = load double, double* %16, align 8, !dbg !423
  %91 = fadd double 3.000000e+00, %90, !dbg !424
  call void @fAddHandler(double 3.000000e+00, double %90, double %91, i64 0, i64 94741344889368, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94741344889808, i32 166, i32 30), !dbg !425
  %92 = load double, double* %15, align 8, !dbg !425
  %93 = fsub double 1.000000e+00, %92, !dbg !426
  call void @fSubHandler(double 1.000000e+00, double %92, double %93, i64 0, i64 94741344890168, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94741344890608, i32 166, i32 39), !dbg !427
  %94 = fmul double %91, %93, !dbg !427
  call void @fMulHandler(double %91, double %93, double %94, i64 94741344889808, i64 94741344890608, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94741344890992, i32 166, i32 34), !dbg !428
  %95 = load double, double* %6, align 8, !dbg !428
  %96 = fmul double 3.000000e+00, %95, !dbg !429
  call void @fMulHandler(double 3.000000e+00, double %95, double %96, i64 0, i64 94741344891384, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94741344891824, i32 166, i32 49), !dbg !430
  %97 = load double, double* %15, align 8, !dbg !430
  %98 = fadd double 1.000000e+00, %97, !dbg !431
  call void @fAddHandler(double 1.000000e+00, double %97, double %98, i64 0, i64 94741344892184, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94741344892624, i32 166, i32 57), !dbg !432
  %99 = fmul double %96, %98, !dbg !432
  call void @fMulHandler(double %96, double %98, double %99, i64 94741344891824, i64 94741344892624, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94741344893008, i32 166, i32 52), !dbg !433
  %100 = fsub double %94, %99, !dbg !433
  call void @fSubHandler(double %94, double %99, double %100, i64 94741344890992, i64 94741344893008, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94741344893424, i32 166, i32 44), !dbg !434
  %101 = fmul double 5.000000e-01, %100, !dbg !434
  call void @fMulHandler(double 5.000000e-01, double %100, double %101, i64 0, i64 94741344893424, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94741344893872, i32 166, i32 23), !dbg !435
  %102 = load double, double* %6, align 8, !dbg !435
  %103 = load double, double* %6, align 8, !dbg !436
  %104 = fmul double %102, %103, !dbg !437
  call void @fMulHandler(double %102, double %103, double %104, i64 94741344894232, i64 94741344894616, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94741344895024, i32 166, i32 66), !dbg !438
  %105 = load double, double* %6, align 8, !dbg !438
  %106 = fmul double %104, %105, !dbg !439
  call void @fMulHandler(double %104, double %105, double %106, i64 94741344895024, i64 94741344895416, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94741344895824, i32 166, i32 69), !dbg !440
  %107 = fdiv double %101, %106, !dbg !440
  call void @fDivHandler(double %101, double %106, double %107, i64 94741344893872, i64 94741344895824, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94741344896240, i32 166, i32 62), !dbg !441
  %108 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !441
  %109 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %108, i32 0, i32 0, !dbg !442
  store double %107, double* %109, align 8, !dbg !443
  %110 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !444
  %111 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %110, i32 0, i32 0, !dbg !445
  %112 = load double, double* %111, align 8, !dbg !445
  %113 = call double @fabs(double %112) #1, !dbg !446
  %114 = fmul double 0x3CC0000000000000, %113, !dbg !447
  call void @fMulHandler(double 0x3CC0000000000000, double %113, double %114, i64 0, i64 94741344900448, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94741344900928, i32 167, i32 41), !dbg !448
  %115 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !448
  %116 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %115, i32 0, i32 1, !dbg !449
  store double %114, double* %116, align 8, !dbg !450
  store i32 0, i32* %3, align 4, !dbg !451
  br label %118, !dbg !451

; <label>:117:                                    ; preds = %39
  br label %118

; <label>:118:                                    ; preds = %117, %83, %44, %37, %22
  %119 = load i32, i32* %3, align 4, !dbg !452
  ret i32 %119, !dbg !452
}

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_bessel_il_scaled_e(i32, double, %struct.gsl_sf_result_struct*) #0 !dbg !453 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca %struct.gsl_sf_result_struct*, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca %struct.gsl_sf_result_struct, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.gsl_sf_result_struct, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.gsl_sf_result_struct, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.gsl_sf_result_struct, align 8
  %17 = alloca i32, align 4
  %18 = alloca double, align 8
  %19 = alloca %struct.gsl_sf_result_struct, align 8
  %20 = alloca i32, align 4
  %21 = alloca double, align 8
  %22 = alloca i32, align 4
  %23 = alloca double, align 8
  %24 = alloca double, align 8
  %25 = alloca double, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca double, align 8
  %29 = alloca double, align 8
  %30 = alloca i32, align 4
  %31 = alloca %struct.gsl_sf_result_struct, align 8
  %32 = alloca %struct.gsl_sf_result_struct, align 8
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca double, align 8
  %36 = alloca double, align 8
  %37 = alloca double, align 8
  %38 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !457, metadata !61), !dbg !458
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !459, metadata !61), !dbg !460
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %7, metadata !461, metadata !61), !dbg !462
  call void @llvm.dbg.declare(metadata double* %8, metadata !463, metadata !61), !dbg !464
  store double 1.000000e+00, double* %8, align 8, !dbg !464
  call void @llvm.dbg.declare(metadata double* %9, metadata !465, metadata !61), !dbg !466
  %39 = load double, double* %6, align 8, !dbg !467
  %40 = call double @fabs(double %39) #1, !dbg !468
  store double %40, double* %9, align 8, !dbg !466
  %41 = load double, double* %6, align 8, !dbg !469
  %42 = fcmp olt double %41, 0.000000e+00, !dbg !471
  %43 = call i1 @fCmpInstHandler(double %41, double 0.000000e+00, i1 %42, i32 4, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94741344922032, i32 178, i32 8), !dbg !472
  br i1 %43, label %44, label %53, !dbg !472

; <label>:44:                                     ; preds = %3
  %45 = load i32, i32* %5, align 4, !dbg !473
  %46 = and i32 %45, 1, !dbg !473
  %47 = icmp ne i32 %46, 0, !dbg !473
  %48 = sext i32 %46 to i64, !dbg !473
  %49 = call i1 @iCmpInstHandler(i64 %48, i64 0, i1 %47, i32 33, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94741344925168, i32 180, i32 13), !dbg !473
  %50 = select i1 %49, double -1.000000e+00, double 1.000000e+00, !dbg !473
  store double %50, double* %8, align 8, !dbg !475
  %51 = load double, double* %6, align 8, !dbg !476
  %52 = fsub double -0.000000e+00, %51, !dbg !477
  call void @fSubHandler(double -0.000000e+00, double %51, double %52, i64 0, i64 94741344925896, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94741344926304, i32 181, i32 9), !dbg !478
  store double %52, double* %6, align 8, !dbg !478
  br label %53, !dbg !479

; <label>:53:                                     ; preds = %44, %3
  %54 = load i32, i32* %5, align 4, !dbg !480
  %55 = icmp slt i32 %54, 0, !dbg !482
  %56 = sext i32 %54 to i64, !dbg !483
  %57 = call i1 @iCmpInstHandler(i64 %56, i64 0, i1 %55, i32 40, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94741344927840, i32 184, i32 8), !dbg !483
  br i1 %57, label %58, label %67, !dbg !483

; <label>:58:                                     ; preds = %53
  br label %59, !dbg !484, !llvm.loop !486

; <label>:59:                                     ; preds = %58
  %60 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !487
  %61 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %60, i32 0, i32 0, !dbg !487
  store double 0x7FF8000000000000, double* %61, align 8, !dbg !487
  %62 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !487
  %63 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %62, i32 0, i32 1, !dbg !487
  store double 0x7FF8000000000000, double* %63, align 8, !dbg !487
  br label %64, !dbg !487, !llvm.loop !490

; <label>:64:                                     ; preds = %59
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 185, i32 1), !dbg !492
  store i32 1, i32* %4, align 4, !dbg !492
  br label %425, !dbg !492
                                                  ; No predecessors!
  br label %66, !dbg !495

; <label>:66:                                     ; preds = %65
  br label %425, !dbg !497

; <label>:67:                                     ; preds = %53
  %68 = load double, double* %6, align 8, !dbg !498
  %69 = fcmp oeq double %68, 0.000000e+00, !dbg !500
  %70 = call i1 @fCmpInstHandler(double %68, double 0.000000e+00, i1 %69, i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94741344936736, i32 187, i32 13), !dbg !501
  br i1 %70, label %71, label %81, !dbg !501

; <label>:71:                                     ; preds = %67
  %72 = load i32, i32* %5, align 4, !dbg !502
  %73 = icmp eq i32 %72, 0, !dbg !504
  %74 = sext i32 %72 to i64, !dbg !502
  %75 = call i1 @iCmpInstHandler(i64 %74, i64 0, i1 %73, i32 32, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94741344938192, i32 188, i32 23), !dbg !502
  %76 = select i1 %75, double 1.000000e+00, double 0.000000e+00, !dbg !502
  %77 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !505
  %78 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %77, i32 0, i32 0, !dbg !506
  store double %76, double* %78, align 8, !dbg !507
  %79 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !508
  %80 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %79, i32 0, i32 1, !dbg !509
  store double 0.000000e+00, double* %80, align 8, !dbg !510
  store i32 0, i32* %4, align 4, !dbg !511
  br label %425, !dbg !511

; <label>:81:                                     ; preds = %67
  %82 = load i32, i32* %5, align 4, !dbg !512
  %83 = icmp eq i32 %82, 0, !dbg !514
  %84 = sext i32 %82 to i64, !dbg !515
  %85 = call i1 @iCmpInstHandler(i64 %84, i64 0, i1 %83, i32 32, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94741344945184, i32 192, i32 13), !dbg !515
  br i1 %85, label %86, label %100, !dbg !515

; <label>:86:                                     ; preds = %81
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %10, metadata !516, metadata !61), !dbg !518
  call void @llvm.dbg.declare(metadata i32* %11, metadata !519, metadata !61), !dbg !520
  %87 = load double, double* %6, align 8, !dbg !521
  %88 = call i32 @gsl_sf_bessel_i0_scaled_e(double %87, %struct.gsl_sf_result_struct* %10), !dbg !522
  store i32 %88, i32* %11, align 4, !dbg !520
  %89 = load double, double* %8, align 8, !dbg !523
  %90 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !524
  %91 = load double, double* %90, align 8, !dbg !524
  %92 = fmul double %89, %91, !dbg !525
  call void @fMulHandler(double %89, double %91, double %92, i64 94741344951032, i64 94741344951832, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94741344953504, i32 195, i32 23), !dbg !526
  %93 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !526
  %94 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %93, i32 0, i32 0, !dbg !527
  store double %92, double* %94, align 8, !dbg !528
  %95 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 1, !dbg !529
  %96 = load double, double* %95, align 8, !dbg !529
  %97 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !530
  %98 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %97, i32 0, i32 1, !dbg !531
  store double %96, double* %98, align 8, !dbg !532
  %99 = load i32, i32* %11, align 4, !dbg !533
  store i32 %99, i32* %4, align 4, !dbg !534
  br label %425, !dbg !534

; <label>:100:                                    ; preds = %81
  %101 = load i32, i32* %5, align 4, !dbg !535
  %102 = icmp eq i32 %101, 1, !dbg !537
  %103 = sext i32 %101 to i64, !dbg !538
  %104 = call i1 @iCmpInstHandler(i64 %103, i64 1, i1 %102, i32 32, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94741344961280, i32 199, i32 13), !dbg !538
  br i1 %104, label %105, label %119, !dbg !538

; <label>:105:                                    ; preds = %100
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %12, metadata !539, metadata !61), !dbg !541
  call void @llvm.dbg.declare(metadata i32* %13, metadata !542, metadata !61), !dbg !543
  %106 = load double, double* %6, align 8, !dbg !544
  %107 = call i32 @gsl_sf_bessel_i1_scaled_e(double %106, %struct.gsl_sf_result_struct* %12), !dbg !545
  store i32 %107, i32* %13, align 4, !dbg !543
  %108 = load double, double* %8, align 8, !dbg !546
  %109 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %12, i32 0, i32 0, !dbg !547
  %110 = load double, double* %109, align 8, !dbg !547
  %111 = fmul double %108, %110, !dbg !548
  call void @fMulHandler(double %108, double %110, double %111, i64 94741344967128, i64 94741344967928, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94741344969600, i32 202, i32 23), !dbg !549
  %112 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !549
  %113 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %112, i32 0, i32 0, !dbg !550
  store double %111, double* %113, align 8, !dbg !551
  %114 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %12, i32 0, i32 1, !dbg !552
  %115 = load double, double* %114, align 8, !dbg !552
  %116 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !553
  %117 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %116, i32 0, i32 1, !dbg !554
  store double %115, double* %117, align 8, !dbg !555
  %118 = load i32, i32* %13, align 4, !dbg !556
  store i32 %118, i32* %4, align 4, !dbg !557
  br label %425, !dbg !557

; <label>:119:                                    ; preds = %100
  %120 = load i32, i32* %5, align 4, !dbg !558
  %121 = icmp eq i32 %120, 2, !dbg !560
  %122 = sext i32 %120 to i64, !dbg !561
  %123 = call i1 @iCmpInstHandler(i64 %122, i64 2, i1 %121, i32 32, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94741344977440, i32 206, i32 13), !dbg !561
  br i1 %123, label %124, label %138, !dbg !561

; <label>:124:                                    ; preds = %119
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %14, metadata !562, metadata !61), !dbg !564
  call void @llvm.dbg.declare(metadata i32* %15, metadata !565, metadata !61), !dbg !566
  %125 = load double, double* %6, align 8, !dbg !567
  %126 = call i32 @gsl_sf_bessel_i2_scaled_e(double %125, %struct.gsl_sf_result_struct* %14), !dbg !568
  store i32 %126, i32* %15, align 4, !dbg !566
  %127 = load double, double* %8, align 8, !dbg !569
  %128 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 0, !dbg !570
  %129 = load double, double* %128, align 8, !dbg !570
  %130 = fmul double %127, %129, !dbg !571
  call void @fMulHandler(double %127, double %129, double %130, i64 94741344983288, i64 94741344984088, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94741344985760, i32 209, i32 23), !dbg !572
  %131 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !572
  %132 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %131, i32 0, i32 0, !dbg !573
  store double %130, double* %132, align 8, !dbg !574
  %133 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 1, !dbg !575
  %134 = load double, double* %133, align 8, !dbg !575
  %135 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !576
  %136 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %135, i32 0, i32 1, !dbg !577
  store double %134, double* %136, align 8, !dbg !578
  %137 = load i32, i32* %15, align 4, !dbg !579
  store i32 %137, i32* %4, align 4, !dbg !580
  br label %425, !dbg !580

; <label>:138:                                    ; preds = %119
  %139 = load double, double* %6, align 8, !dbg !581
  %140 = load double, double* %6, align 8, !dbg !583
  %141 = fmul double %139, %140, !dbg !584
  call void @fMulHandler(double %139, double %140, double %141, i64 94741344993192, i64 94741344993512, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94741344993920, i32 213, i32 12), !dbg !585
  %142 = load i32, i32* %5, align 4, !dbg !585
  %143 = sitofp i32 %142 to double, !dbg !585
  %144 = fadd double %143, 1.500000e+00, !dbg !586
  call void @fAddHandler(double %143, double 1.500000e+00, double %144, i64 94741344996760, i64 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94741344998528, i32 213, i32 24), !dbg !587
  %145 = fmul double 1.000000e+01, %144, !dbg !587
  call void @fMulHandler(double 1.000000e+01, double %144, double %145, i64 0, i64 94741344998528, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94741344999008, i32 213, i32 21), !dbg !588
  %146 = fdiv double %145, 0x4005BF0A8B145769, !dbg !588
  call void @fDivHandler(double %145, double 0x4005BF0A8B145769, double %146, i64 94741344999008, i64 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94741344999456, i32 213, i32 29), !dbg !589
  %147 = fcmp olt double %141, %146, !dbg !589
  %148 = call i1 @fCmpInstHandler(double %141, double %146, i1 %147, i32 4, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94741344999872, i32 213, i32 15), !dbg !590
  br i1 %148, label %149, label %186, !dbg !590

; <label>:149:                                    ; preds = %138
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %16, metadata !591, metadata !61), !dbg !593
  call void @llvm.dbg.declare(metadata i32* %17, metadata !594, metadata !61), !dbg !595
  %150 = load i32, i32* %5, align 4, !dbg !596
  %151 = sitofp i32 %150 to double, !dbg !596
  %152 = fadd double %151, 5.000000e-01, !dbg !597
  call void @fAddHandler(double %151, double 5.000000e-01, double %152, i64 94741345007592, i64 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94741345009296, i32 215, i32 43), !dbg !598
  %153 = load double, double* %6, align 8, !dbg !598
  %154 = call i32 @gsl_sf_bessel_IJ_taylor_e(double %152, double %153, i32 1, i32 50, double 0x3CB0000000000000, %struct.gsl_sf_result_struct* %16), !dbg !599
  store i32 %154, i32* %17, align 4, !dbg !595
  call void @llvm.dbg.declare(metadata double* %18, metadata !600, metadata !61), !dbg !601
  %155 = load double, double* %9, align 8, !dbg !602
  %156 = fsub double -0.000000e+00, %155, !dbg !603
  call void @fSubHandler(double -0.000000e+00, double %155, double %156, i64 0, i64 94741345014024, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94741345014400, i32 216, i32 24), !dbg !604
  %157 = call double @exp(double %156) #5, !dbg !604
  call void @callOneArgHandler(i32 11, double %156, double %157, i64 94741345014400, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94741345014880, i32 216, i32 20), !dbg !605
  %158 = load double, double* %6, align 8, !dbg !605
  %159 = fdiv double 0x3FF921FB54442D18, %158, !dbg !606
  call void @fDivHandler(double 0x3FF921FB54442D18, double %158, double %159, i64 0, i64 94741345015336, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94741345015808, i32 216, i32 46), !dbg !607
  %160 = call double @sqrt(double %159) #5, !dbg !607
  call void @callOneArgHandler(i32 14, double %159, double %160, i64 94741345015808, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94741345016560, i32 216, i32 31), !dbg !609
  %161 = fmul double %157, %160, !dbg !609
  call void @fMulHandler(double %157, double %160, double %161, i64 94741345014880, i64 94741345016560, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94741345017072, i32 216, i32 29), !dbg !601
  store double %161, double* %18, align 8, !dbg !601
  %162 = load double, double* %8, align 8, !dbg !610
  %163 = load double, double* %18, align 8, !dbg !611
  %164 = fmul double %162, %163, !dbg !612
  call void @fMulHandler(double %162, double %163, double %164, i64 94741345019144, i64 94741345019528, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94741345019936, i32 217, i32 24), !dbg !613
  %165 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %16, i32 0, i32 0, !dbg !613
  %166 = load double, double* %165, align 8, !dbg !613
  %167 = fmul double %164, %166, !dbg !614
  call void @fMulHandler(double %164, double %166, double %167, i64 94741345019936, i64 94741345020776, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94741345022448, i32 217, i32 30), !dbg !615
  %168 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !615
  %169 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %168, i32 0, i32 0, !dbg !616
  store double %167, double* %169, align 8, !dbg !617
  %170 = load double, double* %18, align 8, !dbg !618
  %171 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %16, i32 0, i32 1, !dbg !619
  %172 = load double, double* %171, align 8, !dbg !619
  %173 = fmul double %170, %172, !dbg !620
  call void @fMulHandler(double %170, double %172, double %173, i64 94741345024088, i64 94741345024920, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94741345026592, i32 218, i32 24), !dbg !621
  %174 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !621
  %175 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %174, i32 0, i32 1, !dbg !622
  store double %173, double* %175, align 8, !dbg !623
  %176 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !624
  %177 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %176, i32 0, i32 0, !dbg !625
  %178 = load double, double* %177, align 8, !dbg !625
  %179 = call double @fabs(double %178) #1, !dbg !626
  %180 = fmul double 0x3CC0000000000000, %179, !dbg !627
  call void @fMulHandler(double 0x3CC0000000000000, double %179, double %180, i64 0, i64 94741345030800, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94741345031280, i32 219, i32 42), !dbg !628
  %181 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !628
  %182 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %181, i32 0, i32 1, !dbg !629
  %183 = load double, double* %182, align 8, !dbg !630
  %184 = fadd double %183, %180, !dbg !630
  call void @fAddHandler(double %183, double %180, double %184, i64 94741345032504, i64 94741345031280, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94741345032912, i32 219, i32 17), !dbg !630
  store double %184, double* %182, align 8, !dbg !630
  %185 = load i32, i32* %17, align 4, !dbg !631
  store i32 %185, i32* %4, align 4, !dbg !632
  br label %425, !dbg !632

; <label>:186:                                    ; preds = %138
  %187 = load i32, i32* %5, align 4, !dbg !633
  %188 = icmp slt i32 %187, 150, !dbg !635
  %189 = sext i32 %187 to i64, !dbg !636
  %190 = call i1 @iCmpInstHandler(i64 %189, i64 150, i1 %188, i32 40, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94741345037552, i32 222, i32 13), !dbg !636
  br i1 %190, label %191, label %265, !dbg !636

; <label>:191:                                    ; preds = %186
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %19, metadata !637, metadata !61), !dbg !639
  call void @llvm.dbg.declare(metadata i32* %20, metadata !640, metadata !61), !dbg !641
  %192 = load double, double* %9, align 8, !dbg !642
  %193 = call i32 @gsl_sf_bessel_i0_scaled_e(double %192, %struct.gsl_sf_result_struct* %19), !dbg !643
  store i32 %193, i32* %20, align 4, !dbg !641
  call void @llvm.dbg.declare(metadata double* %21, metadata !644, metadata !61), !dbg !645
  call void @llvm.dbg.declare(metadata i32* %22, metadata !646, metadata !61), !dbg !647
  %194 = load i32, i32* %5, align 4, !dbg !648
  %195 = load double, double* %9, align 8, !dbg !649
  %196 = call i32 @bessel_il_CF1(i32 %194, double %195, double 0x3CB0000000000000, double* %21), !dbg !650
  store i32 %196, i32* %22, align 4, !dbg !647
  call void @llvm.dbg.declare(metadata double* %23, metadata !651, metadata !61), !dbg !652
  %197 = load double, double* %21, align 8, !dbg !653
  %198 = fmul double %197, 0x2000000000000000, !dbg !654
  call void @fMulHandler(double %197, double 0x2000000000000000, double %198, i64 94741345050104, i64 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94741345050544, i32 227, i32 25), !dbg !652
  store double %198, double* %23, align 8, !dbg !652
  call void @llvm.dbg.declare(metadata double* %24, metadata !655, metadata !61), !dbg !656
  store double 0x2000000000000000, double* %24, align 8, !dbg !656
  call void @llvm.dbg.declare(metadata double* %25, metadata !657, metadata !61), !dbg !658
  call void @llvm.dbg.declare(metadata i32* %26, metadata !659, metadata !61), !dbg !660
  %199 = load i32, i32* %5, align 4, !dbg !661
  store i32 %199, i32* %26, align 4, !dbg !663
  br label %200, !dbg !664

; <label>:200:                                    ; preds = %218, %191
  %201 = load i32, i32* %26, align 4, !dbg !665
  %202 = icmp sge i32 %201, 1, !dbg !668
  %203 = sext i32 %201 to i64, !dbg !669
  %204 = call i1 @iCmpInstHandler(i64 %203, i64 1, i1 %202, i32 39, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94741345059232, i32 231, i32 22), !dbg !669
  br i1 %204, label %205, label %221, !dbg !669

; <label>:205:                                    ; preds = %200
  %206 = load double, double* %23, align 8, !dbg !670
  %207 = load i32, i32* %26, align 4, !dbg !672
  %208 = mul nsw i32 2, %207, !dbg !673
  %209 = add nsw i32 %208, 1, !dbg !674
  %210 = sitofp i32 %209 to double, !dbg !675
  %211 = load double, double* %6, align 8, !dbg !676
  %212 = fdiv double %210, %211, !dbg !677
  call void @fDivHandler(double %210, double %211, double %212, i64 94741345061880, i64 94741345062264, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94741345062672, i32 232, i32 36), !dbg !678
  %213 = load double, double* %24, align 8, !dbg !678
  %214 = fmul double %212, %213, !dbg !679
  call void @fMulHandler(double %212, double %213, double %214, i64 94741345062672, i64 94741345063064, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94741345063472, i32 232, i32 39), !dbg !680
  %215 = fadd double %206, %214, !dbg !680
  call void @fAddHandler(double %206, double %214, double %215, i64 94741345060344, i64 94741345063472, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94741345063888, i32 232, i32 23), !dbg !681
  store double %215, double* %25, align 8, !dbg !681
  %216 = load double, double* %24, align 8, !dbg !682
  store double %216, double* %23, align 8, !dbg !683
  %217 = load double, double* %25, align 8, !dbg !684
  store double %217, double* %24, align 8, !dbg !685
  br label %218, !dbg !686

; <label>:218:                                    ; preds = %205
  %219 = load i32, i32* %26, align 4, !dbg !687
  %220 = add nsw i32 %219, -1, !dbg !687
  store i32 %220, i32* %26, align 4, !dbg !687
  br label %200, !dbg !689, !llvm.loop !690

; <label>:221:                                    ; preds = %200
  %222 = load double, double* %8, align 8, !dbg !692
  %223 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %19, i32 0, i32 0, !dbg !693
  %224 = load double, double* %223, align 8, !dbg !693
  %225 = fmul double %222, %224, !dbg !694
  call void @fMulHandler(double %222, double %224, double %225, i64 94741345069688, i64 94741345070456, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94741345072128, i32 236, i32 24), !dbg !695
  %226 = load double, double* %24, align 8, !dbg !695
  %227 = fdiv double 0x2000000000000000, %226, !dbg !696
  call void @fDivHandler(double 0x2000000000000000, double %226, double %227, i64 0, i64 94741345072520, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94741345072928, i32 236, i32 60), !dbg !697
  %228 = fmul double %225, %227, !dbg !697
  call void @fMulHandler(double %225, double %227, double %228, i64 94741345072128, i64 94741345072928, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94741345073344, i32 236, i32 40), !dbg !698
  %229 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !698
  %230 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %229, i32 0, i32 0, !dbg !699
  store double %228, double* %230, align 8, !dbg !700
  %231 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %19, i32 0, i32 1, !dbg !701
  %232 = load double, double* %231, align 8, !dbg !701
  %233 = load double, double* %24, align 8, !dbg !702
  %234 = fdiv double 0x2000000000000000, %233, !dbg !703
  call void @fDivHandler(double 0x2000000000000000, double %233, double %234, i64 0, i64 94741345077080, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94741345077488, i32 237, i32 54), !dbg !704
  %235 = fmul double %232, %234, !dbg !704
  call void @fMulHandler(double %232, double %234, double %235, i64 94741345075432, i64 94741345077488, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94741345077904, i32 237, i32 34), !dbg !705
  %236 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !705
  %237 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %236, i32 0, i32 1, !dbg !706
  store double %235, double* %237, align 8, !dbg !707
  %238 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !708
  %239 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %238, i32 0, i32 0, !dbg !709
  %240 = load double, double* %239, align 8, !dbg !709
  %241 = call double @fabs(double %240) #1, !dbg !710
  %242 = fmul double 0x3CC0000000000000, %241, !dbg !711
  call void @fMulHandler(double 0x3CC0000000000000, double %241, double %242, i64 0, i64 94741345082112, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94741345082592, i32 238, i32 42), !dbg !712
  %243 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !712
  %244 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %243, i32 0, i32 1, !dbg !713
  %245 = load double, double* %244, align 8, !dbg !714
  %246 = fadd double %245, %242, !dbg !714
  call void @fAddHandler(double %245, double %242, double %246, i64 94741345083816, i64 94741345082592, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94741345084224, i32 238, i32 17), !dbg !714
  store double %246, double* %244, align 8, !dbg !714
  %247 = load i32, i32* %20, align 4, !dbg !715
  %248 = icmp ne i32 %247, 0, !dbg !715
  %249 = sext i32 %247 to i64, !dbg !715
  %250 = call i1 @iCmpInstHandler(i64 %249, i64 0, i1 %248, i32 33, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94741345086416, i32 239, i32 12), !dbg !715
  br i1 %250, label %251, label %253, !dbg !715

; <label>:251:                                    ; preds = %221
  %252 = load i32, i32* %20, align 4, !dbg !716
  br label %263, !dbg !716

; <label>:253:                                    ; preds = %221
  %254 = load i32, i32* %22, align 4, !dbg !718
  %255 = icmp ne i32 %254, 0, !dbg !718
  %256 = sext i32 %254 to i64, !dbg !718
  %257 = call i1 @iCmpInstHandler(i64 %256, i64 0, i1 %255, i32 33, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94741345090960, i32 239, i32 12), !dbg !718
  br i1 %257, label %258, label %260, !dbg !718

; <label>:258:                                    ; preds = %253
  %259 = load i32, i32* %22, align 4, !dbg !720
  br label %261, !dbg !720

; <label>:260:                                    ; preds = %253
  br label %261, !dbg !722

; <label>:261:                                    ; preds = %260, %258
  %262 = phi i32 [ %259, %258 ], [ 0, %260 ], !dbg !724
  br label %263, !dbg !724

; <label>:263:                                    ; preds = %261, %251
  %264 = phi i32 [ %252, %251 ], [ %262, %261 ], !dbg !726
  store i32 %264, i32* %4, align 4, !dbg !728
  br label %425, !dbg !728

; <label>:265:                                    ; preds = %186
  %266 = load i32, i32* %5, align 4, !dbg !729
  %267 = load i32, i32* %5, align 4, !dbg !729
  %268 = mul nsw i32 %266, %267, !dbg !729
  %269 = sitofp i32 %268 to double, !dbg !729
  %270 = fadd double %269, 1.000000e+00, !dbg !729
  call void @fAddHandler(double %269, double 1.000000e+00, double %270, i64 94741345102088, i64 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94741345102240, i32 241, i32 11), !dbg !729
  %271 = fdiv double 2.900000e-01, %270, !dbg !729
  call void @fDivHandler(double 2.900000e-01, double %270, double %271, i64 0, i64 94741345102240, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94741345102432, i32 241, i32 11), !dbg !729
  %272 = load i32, i32* %5, align 4, !dbg !729
  %273 = load i32, i32* %5, align 4, !dbg !729
  %274 = mul nsw i32 %272, %273, !dbg !729
  %275 = sitofp i32 %274 to double, !dbg !729
  %276 = fadd double %275, 1.000000e+00, !dbg !729
  call void @fAddHandler(double %275, double 1.000000e+00, double %276, i64 94741345102856, i64 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94741345102976, i32 241, i32 11), !dbg !729
  %277 = load double, double* %6, align 8, !dbg !729
  %278 = load double, double* %6, align 8, !dbg !729
  %279 = fmul double %277, %278, !dbg !729
  call void @fMulHandler(double %277, double %278, double %279, i64 94741345103080, i64 94741345103176, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94741345103296, i32 241, i32 11), !dbg !729
  %280 = fadd double %276, %279, !dbg !729
  call void @fAddHandler(double %276, double %279, double %280, i64 94741345102976, i64 94741345103296, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94741344994720, i32 241, i32 11), !dbg !729
  %281 = fdiv double 5.000000e-01, %280, !dbg !729
  call void @fDivHandler(double 5.000000e-01, double %280, double %281, i64 0, i64 94741344994720, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94741344994848, i32 241, i32 11), !dbg !729
  %282 = fcmp olt double %271, %281, !dbg !729
  %283 = call i1 @fCmpInstHandler(double %271, double %281, i1 %282, i32 4, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94741344994976, i32 241, i32 11), !dbg !729
  br i1 %283, label %284, label %291, !dbg !729

; <label>:284:                                    ; preds = %265
  %285 = load i32, i32* %5, align 4, !dbg !731
  %286 = load i32, i32* %5, align 4, !dbg !731
  %287 = mul nsw i32 %285, %286, !dbg !731
  %288 = sitofp i32 %287 to double, !dbg !731
  %289 = fadd double %288, 1.000000e+00, !dbg !731
  call void @fAddHandler(double %288, double 1.000000e+00, double %289, i64 94741344996024, i64 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94741344996176, i32 241, i32 11), !dbg !731
  %290 = fdiv double 2.900000e-01, %289, !dbg !731
  call void @fDivHandler(double 2.900000e-01, double %289, double %290, i64 0, i64 94741344996176, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94741344996304, i32 241, i32 11), !dbg !731
  br label %302, !dbg !731

; <label>:291:                                    ; preds = %265
  %292 = load i32, i32* %5, align 4, !dbg !733
  %293 = load i32, i32* %5, align 4, !dbg !733
  %294 = mul nsw i32 %292, %293, !dbg !733
  %295 = sitofp i32 %294 to double, !dbg !733
  %296 = fadd double %295, 1.000000e+00, !dbg !733
  call void @fAddHandler(double %295, double 1.000000e+00, double %296, i64 94741345111032, i64 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94741345111184, i32 241, i32 11), !dbg !733
  %297 = load double, double* %6, align 8, !dbg !733
  %298 = load double, double* %6, align 8, !dbg !733
  %299 = fmul double %297, %298, !dbg !733
  call void @fMulHandler(double %297, double %298, double %299, i64 94741345111288, i64 94741345111384, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94741345111504, i32 241, i32 11), !dbg !733
  %300 = fadd double %296, %299, !dbg !733
  call void @fAddHandler(double %296, double %299, double %300, i64 94741345111184, i64 94741345111504, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94741345111632, i32 241, i32 11), !dbg !733
  %301 = fdiv double 5.000000e-01, %300, !dbg !733
  call void @fDivHandler(double 5.000000e-01, double %300, double %301, i64 0, i64 94741345111632, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94741345111760, i32 241, i32 11), !dbg !733
  br label %302, !dbg !733

; <label>:302:                                    ; preds = %291, %284
  %303 = phi double [ %290, %284 ], [ %301, %291 ], !dbg !735
  %304 = fcmp olt double %303, 0x3EC965FEA53D6E41, !dbg !737
  %305 = call i1 @fCmpInstHandler(double %303, double 0x3EC965FEA53D6E41, i1 %304, i32 4, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94741345112416, i32 241, i32 54), !dbg !735
  br i1 %305, label %306, label %329, !dbg !735

; <label>:306:                                    ; preds = %302
  call void @llvm.dbg.declare(metadata i32* %27, metadata !738, metadata !61), !dbg !740
  %307 = load i32, i32* %5, align 4, !dbg !741
  %308 = sitofp i32 %307 to double, !dbg !741
  %309 = fadd double %308, 5.000000e-01, !dbg !742
  call void @fAddHandler(double %308, double 5.000000e-01, double %309, i64 94741345116200, i64 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94741345117904, i32 242, i32 58), !dbg !743
  %310 = load double, double* %6, align 8, !dbg !743
  %311 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !744
  %312 = call i32 @gsl_sf_bessel_Inu_scaled_asymp_unif_e(double %309, double %310, %struct.gsl_sf_result_struct* %311), !dbg !745
  store i32 %312, i32* %27, align 4, !dbg !740
  call void @llvm.dbg.declare(metadata double* %28, metadata !746, metadata !61), !dbg !747
  %313 = load double, double* %6, align 8, !dbg !748
  %314 = fdiv double 0x3FF921FB54442D18, %313, !dbg !749
  call void @fDivHandler(double 0x3FF921FB54442D18, double %313, double %314, i64 0, i64 94741345122824, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94741345123200, i32 243, i32 33), !dbg !750
  %315 = call double @sqrt(double %314) #5, !dbg !750
  call void @callOneArgHandler(i32 14, double %314, double %315, i64 94741345123200, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94741345123680, i32 243, i32 18), !dbg !747
  store double %315, double* %28, align 8, !dbg !747
  %316 = load double, double* %8, align 8, !dbg !751
  %317 = load double, double* %28, align 8, !dbg !752
  %318 = fmul double %316, %317, !dbg !753
  call void @fMulHandler(double %316, double %317, double %318, i64 94741345125816, i64 94741345126200, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94741345126608, i32 244, i32 24), !dbg !754
  %319 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !754
  %320 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %319, i32 0, i32 0, !dbg !755
  %321 = load double, double* %320, align 8, !dbg !756
  %322 = fmul double %321, %318, !dbg !756
  call void @fMulHandler(double %321, double %318, double %322, i64 94741345127832, i64 94741345126608, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94741345128240, i32 244, i32 17), !dbg !756
  store double %322, double* %320, align 8, !dbg !756
  %323 = load double, double* %28, align 8, !dbg !757
  %324 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !758
  %325 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %324, i32 0, i32 1, !dbg !759
  %326 = load double, double* %325, align 8, !dbg !760
  %327 = fmul double %326, %323, !dbg !760
  call void @fMulHandler(double %326, double %323, double %327, i64 94741345131240, i64 94741345130024, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94741345131648, i32 245, i32 17), !dbg !760
  store double %327, double* %325, align 8, !dbg !760
  %328 = load i32, i32* %27, align 4, !dbg !761
  store i32 %328, i32* %4, align 4, !dbg !762
  br label %425, !dbg !762

; <label>:329:                                    ; preds = %302
  call void @llvm.dbg.declare(metadata double* %29, metadata !763, metadata !61), !dbg !765
  %330 = load double, double* %6, align 8, !dbg !766
  %331 = fdiv double 0x3FF921FB54442D18, %330, !dbg !767
  call void @fDivHandler(double 0x3FF921FB54442D18, double %330, double %331, i64 0, i64 94741345136936, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94741345137312, i32 250, i32 37), !dbg !768
  %332 = call double @sqrt(double %331) #5, !dbg !768
  call void @callOneArgHandler(i32 14, double %331, double %332, i64 94741345137312, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94741345137792, i32 250, i32 22), !dbg !765
  store double %332, double* %29, align 8, !dbg !765
  call void @llvm.dbg.declare(metadata i32* %30, metadata !769, metadata !61), !dbg !770
  store i32 489, i32* %30, align 4, !dbg !770
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %31, metadata !771, metadata !61), !dbg !772
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %32, metadata !773, metadata !61), !dbg !774
  call void @llvm.dbg.declare(metadata i32* %33, metadata !775, metadata !61), !dbg !776
  %333 = load double, double* %6, align 8, !dbg !777
  %334 = call i32 @gsl_sf_bessel_Inu_scaled_asymp_unif_e(double 4.905000e+02, double %333, %struct.gsl_sf_result_struct* %31), !dbg !778
  store i32 %334, i32* %33, align 4, !dbg !776
  call void @llvm.dbg.declare(metadata i32* %34, metadata !779, metadata !61), !dbg !780
  %335 = load double, double* %6, align 8, !dbg !781
  %336 = call i32 @gsl_sf_bessel_Inu_scaled_asymp_unif_e(double 4.895000e+02, double %335, %struct.gsl_sf_result_struct* %32), !dbg !782
  store i32 %336, i32* %34, align 4, !dbg !780
  call void @llvm.dbg.declare(metadata double* %35, metadata !783, metadata !61), !dbg !784
  %337 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %31, i32 0, i32 0, !dbg !785
  %338 = load double, double* %337, align 8, !dbg !785
  store double %338, double* %35, align 8, !dbg !784
  call void @llvm.dbg.declare(metadata double* %36, metadata !786, metadata !61), !dbg !787
  %339 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %32, i32 0, i32 0, !dbg !788
  %340 = load double, double* %339, align 8, !dbg !788
  store double %340, double* %36, align 8, !dbg !787
  call void @llvm.dbg.declare(metadata double* %37, metadata !789, metadata !61), !dbg !790
  store double 0.000000e+00, double* %37, align 8, !dbg !790
  call void @llvm.dbg.declare(metadata i32* %38, metadata !791, metadata !61), !dbg !792
  %341 = load double, double* %29, align 8, !dbg !793
  %342 = load double, double* %35, align 8, !dbg !794
  %343 = fmul double %342, %341, !dbg !794
  call void @fMulHandler(double %342, double %341, double %343, i64 94741345166456, i64 94741345166104, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94741345166864, i32 260, i32 12), !dbg !794
  store double %343, double* %35, align 8, !dbg !794
  %344 = load double, double* %29, align 8, !dbg !795
  %345 = load double, double* %36, align 8, !dbg !796
  %346 = fmul double %345, %344, !dbg !796
  call void @fMulHandler(double %345, double %344, double %346, i64 94741345169032, i64 94741345168648, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94741345169440, i32 261, i32 12), !dbg !796
  store double %346, double* %36, align 8, !dbg !796
  store i32 489, i32* %38, align 4, !dbg !797
  br label %347, !dbg !799

; <label>:347:                                    ; preds = %368, %329
  %348 = load i32, i32* %38, align 4, !dbg !800
  %349 = load i32, i32* %5, align 4, !dbg !803
  %350 = add nsw i32 %349, 1, !dbg !804
  %351 = icmp sge i32 %348, %350, !dbg !805
  %352 = sext i32 %348 to i64, !dbg !806
  %353 = sext i32 %350 to i64, !dbg !806
  %354 = call i1 @iCmpInstHandler(i64 %352, i64 %353, i1 %351, i32 39, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94741345173312, i32 262, i32 25), !dbg !806
  br i1 %354, label %355, label %371, !dbg !806

; <label>:355:                                    ; preds = %347
  %356 = load double, double* %35, align 8, !dbg !807
  %357 = load i32, i32* %38, align 4, !dbg !809
  %358 = mul nsw i32 2, %357, !dbg !810
  %359 = add nsw i32 %358, 1, !dbg !811
  %360 = sitofp i32 %359 to double, !dbg !812
  %361 = load double, double* %6, align 8, !dbg !813
  %362 = fdiv double %360, %361, !dbg !814
  call void @fDivHandler(double %360, double %361, double %362, i64 94741345175960, i64 94741345176344, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94741345176752, i32 263, i32 36), !dbg !815
  %363 = load double, double* %36, align 8, !dbg !815
  %364 = fmul double %362, %363, !dbg !816
  call void @fMulHandler(double %362, double %363, double %364, i64 94741345176752, i64 94741345177144, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94741345177552, i32 263, i32 39), !dbg !817
  %365 = fadd double %356, %364, !dbg !817
  call void @fAddHandler(double %356, double %364, double %365, i64 94741345174424, i64 94741345177552, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94741345177968, i32 263, i32 23), !dbg !818
  store double %365, double* %37, align 8, !dbg !818
  %366 = load double, double* %36, align 8, !dbg !819
  store double %366, double* %35, align 8, !dbg !820
  %367 = load double, double* %37, align 8, !dbg !821
  store double %367, double* %36, align 8, !dbg !822
  br label %368, !dbg !823

; <label>:368:                                    ; preds = %355
  %369 = load i32, i32* %38, align 4, !dbg !824
  %370 = add nsw i32 %369, -1, !dbg !824
  store i32 %370, i32* %38, align 4, !dbg !824
  br label %347, !dbg !826, !llvm.loop !827

; <label>:371:                                    ; preds = %347
  %372 = load double, double* %8, align 8, !dbg !829
  %373 = load double, double* %37, align 8, !dbg !830
  %374 = fmul double %372, %373, !dbg !831
  call void @fMulHandler(double %372, double %373, double %374, i64 94741345183704, i64 94741345184024, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94741345184432, i32 267, i32 24), !dbg !832
  %375 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !832
  %376 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %375, i32 0, i32 0, !dbg !833
  store double %374, double* %376, align 8, !dbg !834
  %377 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !835
  %378 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %377, i32 0, i32 0, !dbg !836
  %379 = load double, double* %378, align 8, !dbg !836
  %380 = call double @fabs(double %379) #1, !dbg !837
  %381 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %31, i32 0, i32 1, !dbg !838
  %382 = load double, double* %381, align 8, !dbg !838
  %383 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %31, i32 0, i32 0, !dbg !839
  %384 = load double, double* %383, align 8, !dbg !839
  %385 = fdiv double %382, %384, !dbg !840
  call void @fDivHandler(double %382, double %384, double %385, i64 94741345189544, i64 94741345191640, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94741345193312, i32 268, i32 74), !dbg !841
  %386 = call double @fabs(double %385) #1, !dbg !841
  %387 = fadd double 0x3CB0000000000000, %386, !dbg !843
  call void @fAddHandler(double 0x3CB0000000000000, double %386, double %387, i64 0, i64 94741345193792, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94741345194272, i32 268, i32 55), !dbg !844
  %388 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %32, i32 0, i32 1, !dbg !844
  %389 = load double, double* %388, align 8, !dbg !844
  %390 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %32, i32 0, i32 0, !dbg !845
  %391 = load double, double* %390, align 8, !dbg !845
  %392 = fdiv double %389, %391, !dbg !846
  call void @fDivHandler(double %389, double %391, double %392, i64 94741345195112, i64 94741345197208, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94741345198880, i32 268, i32 106), !dbg !847
  %393 = call double @fabs(double %392) #1, !dbg !847
  %394 = fadd double %387, %393, !dbg !849
  call void @fAddHandler(double %387, double %393, double %394, i64 94741345194272, i64 94741345199360, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94741345199840, i32 268, i32 89), !dbg !850
  %395 = fmul double %380, %394, !dbg !850
  call void @fMulHandler(double %380, double %394, double %395, i64 94741345188640, i64 94741345199840, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94741345200256, i32 268, i32 37), !dbg !851
  %396 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !851
  %397 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %396, i32 0, i32 1, !dbg !852
  store double %395, double* %397, align 8, !dbg !853
  %398 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !854
  %399 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %398, i32 0, i32 0, !dbg !855
  %400 = load double, double* %399, align 8, !dbg !855
  %401 = call double @fabs(double %400) #1, !dbg !856
  %402 = fmul double 0x3CC0000000000000, %401, !dbg !857
  call void @fMulHandler(double 0x3CC0000000000000, double %401, double %402, i64 0, i64 94741345204464, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94741345204944, i32 269, i32 42), !dbg !858
  %403 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !858
  %404 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %403, i32 0, i32 1, !dbg !859
  %405 = load double, double* %404, align 8, !dbg !860
  %406 = fadd double %405, %402, !dbg !860
  call void @fAddHandler(double %405, double %402, double %406, i64 94741345206168, i64 94741345204944, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94741345206576, i32 269, i32 17), !dbg !860
  store double %406, double* %404, align 8, !dbg !860
  %407 = load i32, i32* %33, align 4, !dbg !861
  %408 = icmp ne i32 %407, 0, !dbg !861
  %409 = sext i32 %407 to i64, !dbg !861
  %410 = call i1 @iCmpInstHandler(i64 %409, i64 0, i1 %408, i32 33, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94741345208768, i32 271, i32 12), !dbg !861
  br i1 %410, label %411, label %413, !dbg !861

; <label>:411:                                    ; preds = %371
  %412 = load i32, i32* %33, align 4, !dbg !862
  br label %423, !dbg !862

; <label>:413:                                    ; preds = %371
  %414 = load i32, i32* %34, align 4, !dbg !863
  %415 = icmp ne i32 %414, 0, !dbg !863
  %416 = sext i32 %414 to i64, !dbg !863
  %417 = call i1 @iCmpInstHandler(i64 %416, i64 0, i1 %415, i32 33, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94741345213312, i32 271, i32 12), !dbg !863
  br i1 %417, label %418, label %420, !dbg !863

; <label>:418:                                    ; preds = %413
  %419 = load i32, i32* %34, align 4, !dbg !864
  br label %421, !dbg !864

; <label>:420:                                    ; preds = %413
  br label %421, !dbg !866

; <label>:421:                                    ; preds = %420, %418
  %422 = phi i32 [ %419, %418 ], [ 0, %420 ], !dbg !868
  br label %423, !dbg !868

; <label>:423:                                    ; preds = %421, %411
  %424 = phi i32 [ %412, %411 ], [ %422, %421 ], !dbg !870
  store i32 %424, i32* %4, align 4, !dbg !872
  br label %425, !dbg !872

; <label>:425:                                    ; preds = %423, %306, %263, %149, %124, %105, %86, %71, %66, %64
  %426 = load i32, i32* %4, align 4, !dbg !873
  ret i32 %426, !dbg !873
}

declare i32 @gsl_sf_bessel_IJ_taylor_e(double, double, i32, i32, double, %struct.gsl_sf_result_struct*) #4

; Function Attrs: nounwind
declare double @sqrt(double) #3

; Function Attrs: nounwind uwtable
define internal i32 @bessel_il_CF1(i32, double, double, double*) #0 !dbg !874 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double*, align 8
  %10 = alloca i32, align 4
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca i32, align 4
  %15 = alloca double, align 8
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !878, metadata !61), !dbg !879
  store double %1, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !880, metadata !61), !dbg !881
  store double %2, double* %8, align 8
  call void @llvm.dbg.declare(metadata double* %8, metadata !882, metadata !61), !dbg !883
  store double* %3, double** %9, align 8
  call void @llvm.dbg.declare(metadata double** %9, metadata !884, metadata !61), !dbg !885
  call void @llvm.dbg.declare(metadata i32* %10, metadata !886, metadata !61), !dbg !887
  store i32 2000, i32* %10, align 4, !dbg !887
  call void @llvm.dbg.declare(metadata double* %11, metadata !888, metadata !61), !dbg !889
  store double 1.000000e+00, double* %11, align 8, !dbg !889
  call void @llvm.dbg.declare(metadata double* %12, metadata !890, metadata !61), !dbg !891
  store double 1.000000e+00, double* %12, align 8, !dbg !891
  call void @llvm.dbg.declare(metadata double* %13, metadata !892, metadata !61), !dbg !893
  store double 0.000000e+00, double* %13, align 8, !dbg !893
  call void @llvm.dbg.declare(metadata i32* %14, metadata !894, metadata !61), !dbg !895
  store i32 1, i32* %14, align 4, !dbg !896
  br label %16, !dbg !898

; <label>:16:                                     ; preds = %69, %4
  %17 = load i32, i32* %14, align 4, !dbg !899
  %18 = icmp sle i32 %17, 2000, !dbg !902
  %19 = sext i32 %17 to i64, !dbg !903
  %20 = call i1 @iCmpInstHandler(i64 %19, i64 2000, i1 %18, i32 41, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94741345241120, i32 45, i32 13), !dbg !903
  br i1 %20, label %21, label %72, !dbg !903

; <label>:21:                                     ; preds = %16
  call void @llvm.dbg.declare(metadata double* %15, metadata !904, metadata !61), !dbg !906
  %22 = load double, double* %7, align 8, !dbg !907
  %23 = load i32, i32* %6, align 4, !dbg !908
  %24 = sitofp i32 %23 to double, !dbg !908
  %25 = fmul double 2.000000e+00, %24, !dbg !909
  call void @fMulHandler(double 2.000000e+00, double %24, double %25, i64 0, i64 94741345243784, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94741345245488, i32 46, i32 24), !dbg !910
  %26 = fadd double %25, 1.000000e+00, !dbg !910
  call void @fAddHandler(double %25, double 1.000000e+00, double %26, i64 94741345245488, i64 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94741345245904, i32 46, i32 26), !dbg !911
  %27 = load i32, i32* %14, align 4, !dbg !911
  %28 = sitofp i32 %27 to double, !dbg !911
  %29 = fmul double 2.000000e+00, %28, !dbg !912
  call void @fMulHandler(double 2.000000e+00, double %28, double %29, i64 0, i64 94741345246648, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94741345248352, i32 46, i32 34), !dbg !913
  %30 = fadd double %26, %29, !dbg !913
  call void @fAddHandler(double %26, double %29, double %30, i64 94741345245904, i64 94741345248352, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94741345248736, i32 46, i32 30), !dbg !914
  %31 = fdiv double %22, %30, !dbg !914
  call void @fDivHandler(double %22, double %30, double %31, i64 94741345010552, i64 94741345248736, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94741345249152, i32 46, i32 19), !dbg !915
  %32 = load double, double* %7, align 8, !dbg !915
  %33 = load i32, i32* %6, align 4, !dbg !916
  %34 = sitofp i32 %33 to double, !dbg !916
  %35 = fmul double 2.000000e+00, %34, !dbg !917
  call void @fMulHandler(double 2.000000e+00, double %34, double %35, i64 0, i64 94741345250312, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94741345252016, i32 46, i32 48), !dbg !918
  %36 = fadd double %35, 3.000000e+00, !dbg !918
  call void @fAddHandler(double %35, double 3.000000e+00, double %36, i64 94741345252016, i64 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94741345252432, i32 46, i32 50), !dbg !919
  %37 = load i32, i32* %14, align 4, !dbg !919
  %38 = sitofp i32 %37 to double, !dbg !919
  %39 = fmul double 2.000000e+00, %38, !dbg !920
  call void @fMulHandler(double 2.000000e+00, double %38, double %39, i64 0, i64 94741345253176, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94741345254880, i32 46, i32 58), !dbg !921
  %40 = fadd double %36, %39, !dbg !921
  call void @fAddHandler(double %36, double %39, double %40, i64 94741345252432, i64 94741345254880, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94741345255264, i32 46, i32 54), !dbg !922
  %41 = fdiv double %32, %40, !dbg !922
  call void @fDivHandler(double %32, double %40, double %41, i64 94741345249544, i64 94741345255264, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94741345255680, i32 46, i32 43), !dbg !923
  %42 = fmul double %31, %41, !dbg !923
  call void @fMulHandler(double %31, double %41, double %42, i64 94741345249152, i64 94741345255680, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94741345256096, i32 46, i32 39), !dbg !906
  store double %42, double* %15, align 8, !dbg !906
  %43 = load double, double* %15, align 8, !dbg !924
  %44 = fsub double -0.000000e+00, %43, !dbg !925
  call void @fSubHandler(double -0.000000e+00, double %43, double %44, i64 0, i64 94741345258168, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94741345258576, i32 47, i32 12), !dbg !926
  %45 = load double, double* %13, align 8, !dbg !926
  %46 = fadd double 1.000000e+00, %45, !dbg !927
  call void @fAddHandler(double 1.000000e+00, double %45, double %46, i64 0, i64 94741345258968, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94741345259408, i32 47, i32 21), !dbg !928
  %47 = fmul double %44, %46, !dbg !928
  call void @fMulHandler(double %44, double %46, double %47, i64 94741345258576, i64 94741345259408, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94741345259792, i32 47, i32 15), !dbg !929
  %48 = load double, double* %15, align 8, !dbg !929
  %49 = load double, double* %13, align 8, !dbg !930
  %50 = fadd double 1.000000e+00, %49, !dbg !931
  call void @fAddHandler(double 1.000000e+00, double %49, double %50, i64 0, i64 94741345260568, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94741345261008, i32 47, i32 44), !dbg !932
  %51 = fmul double %48, %50, !dbg !932
  call void @fMulHandler(double %48, double %50, double %51, i64 94741345260184, i64 94741345261008, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94741345261392, i32 47, i32 38), !dbg !933
  %52 = fadd double 1.000000e+00, %51, !dbg !933
  call void @fAddHandler(double 1.000000e+00, double %51, double %52, i64 0, i64 94741345261392, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94741345261840, i32 47, i32 34), !dbg !934
  %53 = fdiv double %47, %52, !dbg !934
  call void @fDivHandler(double %47, double %52, double %53, i64 94741345259792, i64 94741345261840, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94741345262224, i32 47, i32 28), !dbg !935
  store double %53, double* %13, align 8, !dbg !935
  %54 = load double, double* %13, align 8, !dbg !936
  %55 = load double, double* %11, align 8, !dbg !937
  %56 = fmul double %55, %54, !dbg !937
  call void @fMulHandler(double %55, double %54, double %56, i64 94741345263416, i64 94741345263032, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94741345263824, i32 48, i32 9), !dbg !937
  store double %56, double* %11, align 8, !dbg !937
  %57 = load double, double* %11, align 8, !dbg !938
  %58 = load double, double* %12, align 8, !dbg !939
  %59 = fadd double %58, %57, !dbg !939
  call void @fAddHandler(double %58, double %57, double %59, i64 94741345265992, i64 94741345265608, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94741345266400, i32 49, i32 9), !dbg !939
  store double %59, double* %12, align 8, !dbg !939
  %60 = load double, double* %11, align 8, !dbg !940
  %61 = load double, double* %12, align 8, !dbg !942
  %62 = fdiv double %60, %61, !dbg !943
  call void @fDivHandler(double %60, double %61, double %62, i64 94741345268184, i64 94741345268568, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94741345268976, i32 50, i32 15), !dbg !944
  %63 = call double @fabs(double %62) #1, !dbg !944
  %64 = load double, double* %8, align 8, !dbg !945
  %65 = fcmp olt double %63, %64, !dbg !946
  %66 = call i1 @fCmpInstHandler(double %63, double %64, i1 %65, i32 4, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94741345270320, i32 50, i32 21), !dbg !947
  br i1 %66, label %67, label %68, !dbg !947

; <label>:67:                                     ; preds = %21
  br label %72, !dbg !948

; <label>:68:                                     ; preds = %21
  br label %69, !dbg !950

; <label>:69:                                     ; preds = %68
  %70 = load i32, i32* %14, align 4, !dbg !951
  %71 = add nsw i32 %70, 1, !dbg !951
  store i32 %71, i32* %14, align 4, !dbg !951
  br label %16, !dbg !953, !llvm.loop !954

; <label>:72:                                     ; preds = %67, %16
  %73 = load double, double* %7, align 8, !dbg !956
  %74 = load i32, i32* %6, align 4, !dbg !957
  %75 = sitofp i32 %74 to double, !dbg !957
  %76 = fmul double 2.000000e+00, %75, !dbg !958
  call void @fMulHandler(double 2.000000e+00, double %75, double %76, i64 0, i64 94741345275720, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94741345277424, i32 53, i32 18), !dbg !959
  %77 = fadd double %76, 3.000000e+00, !dbg !959
  call void @fAddHandler(double %76, double 3.000000e+00, double %77, i64 94741345277424, i64 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94741345277840, i32 53, i32 20), !dbg !960
  %78 = fdiv double %73, %77, !dbg !960
  call void @fDivHandler(double %73, double %77, double %78, i64 94741345275016, i64 94741345277840, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94741345278224, i32 53, i32 13), !dbg !961
  %79 = load double, double* %12, align 8, !dbg !961
  %80 = fmul double %78, %79, !dbg !962
  call void @fMulHandler(double %78, double %79, double %80, i64 94741345278224, i64 94741345278616, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94741345279024, i32 53, i32 26), !dbg !963
  %81 = load double*, double** %9, align 8, !dbg !963
  store double %80, double* %81, align 8, !dbg !964
  %82 = load i32, i32* %14, align 4, !dbg !965
  %83 = icmp eq i32 %82, 2000, !dbg !967
  %84 = sext i32 %82 to i64, !dbg !968
  %85 = call i1 @iCmpInstHandler(i64 %84, i64 2000, i1 %83, i32 32, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94741345280624, i32 55, i32 8), !dbg !968
  br i1 %85, label %86, label %89, !dbg !968

; <label>:86:                                     ; preds = %72
  br label %87, !dbg !969, !llvm.loop !970

; <label>:87:                                     ; preds = %86
  call void @gsl_error(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 56, i32 11), !dbg !971
  store i32 11, i32* %5, align 4, !dbg !971
  br label %90, !dbg !971
                                                  ; No predecessors!
  br label %90, !dbg !974

; <label>:89:                                     ; preds = %72
  store i32 0, i32* %5, align 4, !dbg !976
  br label %90, !dbg !976

; <label>:90:                                     ; preds = %89, %88, %87
  %91 = load i32, i32* %5, align 4, !dbg !977
  ret i32 %91, !dbg !977
}

declare i32 @gsl_sf_bessel_Inu_scaled_asymp_unif_e(double, double, %struct.gsl_sf_result_struct*) #4

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_bessel_il_scaled_array(i32, double, double*) #0 !dbg !978 {
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
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !981, metadata !61), !dbg !982
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !983, metadata !61), !dbg !984
  store double* %2, double** %7, align 8
  call void @llvm.dbg.declare(metadata double** %7, metadata !985, metadata !61), !dbg !986
  %17 = load double, double* %6, align 8, !dbg !987
  %18 = fcmp oeq double %17, 0.000000e+00, !dbg !989
  %19 = call i1 @fCmpInstHandler(double %17, double 0.000000e+00, i1 %18, i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94741345296240, i32 278, i32 8), !dbg !990
  br i1 %19, label %20, label %38, !dbg !990

; <label>:20:                                     ; preds = %3
  call void @llvm.dbg.declare(metadata i32* %8, metadata !991, metadata !61), !dbg !993
  %21 = load double*, double** %7, align 8, !dbg !994
  %22 = getelementptr inbounds double, double* %21, i64 0, !dbg !994
  store double 1.000000e+00, double* %22, align 8, !dbg !995
  %23 = load i32, i32* %5, align 4, !dbg !996
  store i32 %23, i32* %8, align 4, !dbg !998
  br label %24, !dbg !999

; <label>:24:                                     ; preds = %34, %20
  %25 = load i32, i32* %8, align 4, !dbg !1000
  %26 = icmp sge i32 %25, 1, !dbg !1003
  %27 = sext i32 %25 to i64, !dbg !1004
  %28 = call i1 @iCmpInstHandler(i64 %27, i64 1, i1 %26, i32 39, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94741345302608, i32 281, i32 26), !dbg !1004
  br i1 %28, label %29, label %37, !dbg !1004

; <label>:29:                                     ; preds = %24
  %30 = load i32, i32* %8, align 4, !dbg !1005
  %31 = sext i32 %30 to i64, !dbg !1007
  %32 = load double*, double** %7, align 8, !dbg !1007
  %33 = getelementptr inbounds double, double* %32, i64 %31, !dbg !1007
  store double 0.000000e+00, double* %33, align 8, !dbg !1008
  br label %34, !dbg !1009

; <label>:34:                                     ; preds = %29
  %35 = load i32, i32* %8, align 4, !dbg !1010
  %36 = add nsw i32 %35, -1, !dbg !1010
  store i32 %36, i32* %8, align 4, !dbg !1010
  br label %24, !dbg !1012, !llvm.loop !1013

; <label>:37:                                     ; preds = %24
  store i32 0, i32* %4, align 4, !dbg !1015
  br label %102, !dbg !1015

; <label>:38:                                     ; preds = %3
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1016, metadata !61), !dbg !1018
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %10, metadata !1019, metadata !61), !dbg !1020
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %11, metadata !1021, metadata !61), !dbg !1022
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1023, metadata !61), !dbg !1024
  %39 = load i32, i32* %5, align 4, !dbg !1025
  %40 = add nsw i32 %39, 1, !dbg !1026
  %41 = load double, double* %6, align 8, !dbg !1027
  %42 = call i32 @gsl_sf_bessel_il_scaled_e(i32 %40, double %41, %struct.gsl_sf_result_struct* %10), !dbg !1028
  store i32 %42, i32* %12, align 4, !dbg !1024
  call void @llvm.dbg.declare(metadata i32* %13, metadata !1029, metadata !61), !dbg !1030
  %43 = load i32, i32* %5, align 4, !dbg !1031
  %44 = load double, double* %6, align 8, !dbg !1032
  %45 = call i32 @gsl_sf_bessel_il_scaled_e(i32 %43, double %44, %struct.gsl_sf_result_struct* %11), !dbg !1033
  store i32 %45, i32* %13, align 4, !dbg !1030
  call void @llvm.dbg.declare(metadata double* %14, metadata !1034, metadata !61), !dbg !1035
  %46 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !1036
  %47 = load double, double* %46, align 8, !dbg !1036
  store double %47, double* %14, align 8, !dbg !1035
  call void @llvm.dbg.declare(metadata double* %15, metadata !1037, metadata !61), !dbg !1038
  %48 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 0, !dbg !1039
  %49 = load double, double* %48, align 8, !dbg !1039
  store double %49, double* %15, align 8, !dbg !1038
  call void @llvm.dbg.declare(metadata double* %16, metadata !1040, metadata !61), !dbg !1041
  %50 = load double, double* %15, align 8, !dbg !1042
  %51 = load i32, i32* %5, align 4, !dbg !1043
  %52 = sext i32 %51 to i64, !dbg !1044
  %53 = load double*, double** %7, align 8, !dbg !1044
  %54 = getelementptr inbounds double, double* %53, i64 %52, !dbg !1044
  store double %50, double* %54, align 8, !dbg !1045
  %55 = load i32, i32* %5, align 4, !dbg !1046
  store i32 %55, i32* %9, align 4, !dbg !1048
  br label %56, !dbg !1049

; <label>:56:                                     ; preds = %80, %38
  %57 = load i32, i32* %9, align 4, !dbg !1050
  %58 = icmp sge i32 %57, 1, !dbg !1053
  %59 = sext i32 %57 to i64, !dbg !1054
  %60 = call i1 @iCmpInstHandler(i64 %59, i64 1, i1 %58, i32 39, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94741345339760, i32 295, i32 25), !dbg !1054
  br i1 %60, label %61, label %83, !dbg !1054

; <label>:61:                                     ; preds = %56
  %62 = load double, double* %14, align 8, !dbg !1055
  %63 = load i32, i32* %9, align 4, !dbg !1057
  %64 = mul nsw i32 2, %63, !dbg !1058
  %65 = add nsw i32 %64, 1, !dbg !1059
  %66 = sitofp i32 %65 to double, !dbg !1060
  %67 = load double, double* %6, align 8, !dbg !1061
  %68 = fdiv double %66, %67, !dbg !1062
  call void @fDivHandler(double %66, double %67, double %68, i64 94741345342408, i64 94741345342792, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94741345343200, i32 296, i32 36), !dbg !1063
  %69 = load double, double* %15, align 8, !dbg !1063
  %70 = fmul double %68, %69, !dbg !1064
  call void @fMulHandler(double %68, double %69, double %70, i64 94741345343200, i64 94741345343592, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94741345344000, i32 296, i32 39), !dbg !1065
  %71 = fadd double %62, %70, !dbg !1065
  call void @fAddHandler(double %62, double %70, double %71, i64 94741345340872, i64 94741345344000, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94741345344416, i32 296, i32 23), !dbg !1066
  store double %71, double* %16, align 8, !dbg !1066
  %72 = load double, double* %15, align 8, !dbg !1067
  store double %72, double* %14, align 8, !dbg !1068
  %73 = load double, double* %16, align 8, !dbg !1069
  store double %73, double* %15, align 8, !dbg !1070
  %74 = load double, double* %16, align 8, !dbg !1071
  %75 = load i32, i32* %9, align 4, !dbg !1072
  %76 = sub nsw i32 %75, 1, !dbg !1073
  %77 = sext i32 %76 to i64, !dbg !1074
  %78 = load double*, double** %7, align 8, !dbg !1074
  %79 = getelementptr inbounds double, double* %78, i64 %77, !dbg !1074
  store double %74, double* %79, align 8, !dbg !1075
  br label %80, !dbg !1076

; <label>:80:                                     ; preds = %61
  %81 = load i32, i32* %9, align 4, !dbg !1077
  %82 = add nsw i32 %81, -1, !dbg !1077
  store i32 %82, i32* %9, align 4, !dbg !1077
  br label %56, !dbg !1079, !llvm.loop !1080

; <label>:83:                                     ; preds = %56
  %84 = load i32, i32* %12, align 4, !dbg !1082
  %85 = icmp ne i32 %84, 0, !dbg !1082
  %86 = sext i32 %84 to i64, !dbg !1082
  %87 = call i1 @iCmpInstHandler(i64 %86, i64 0, i1 %85, i32 33, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94741345354272, i32 301, i32 12), !dbg !1082
  br i1 %87, label %88, label %90, !dbg !1082

; <label>:88:                                     ; preds = %83
  %89 = load i32, i32* %12, align 4, !dbg !1083
  br label %100, !dbg !1083

; <label>:90:                                     ; preds = %83
  %91 = load i32, i32* %13, align 4, !dbg !1085
  %92 = icmp ne i32 %91, 0, !dbg !1085
  %93 = sext i32 %91 to i64, !dbg !1085
  %94 = call i1 @iCmpInstHandler(i64 %93, i64 0, i1 %92, i32 33, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94741345358816, i32 301, i32 12), !dbg !1085
  br i1 %94, label %95, label %97, !dbg !1085

; <label>:95:                                     ; preds = %90
  %96 = load i32, i32* %13, align 4, !dbg !1087
  br label %98, !dbg !1087

; <label>:97:                                     ; preds = %90
  br label %98, !dbg !1089

; <label>:98:                                     ; preds = %97, %95
  %99 = phi i32 [ %96, %95 ], [ 0, %97 ], !dbg !1091
  br label %100, !dbg !1091

; <label>:100:                                    ; preds = %98, %88
  %101 = phi i32 [ %89, %88 ], [ %99, %98 ], !dbg !1093
  store i32 %101, i32* %4, align 4, !dbg !1095
  br label %102, !dbg !1095

; <label>:102:                                    ; preds = %100, %37
  %103 = load i32, i32* %4, align 4, !dbg !1096
  ret i32 %103, !dbg !1096
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_bessel_i0_scaled(double) #0 !dbg !1097 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct, align 8
  %5 = alloca i32, align 4
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !1100, metadata !61), !dbg !1101
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %4, metadata !1102, metadata !61), !dbg !1103
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1104, metadata !61), !dbg !1103
  %6 = load double, double* %3, align 8, !dbg !1103
  %7 = call i32 @gsl_sf_bessel_i0_scaled_e(double %6, %struct.gsl_sf_result_struct* %4), !dbg !1103
  store i32 %7, i32* %5, align 4, !dbg !1103
  %8 = load i32, i32* %5, align 4, !dbg !1105
  %9 = icmp ne i32 %8, 0, !dbg !1105
  %10 = sext i32 %8 to i64, !dbg !1103
  %11 = call i1 @iCmpInstHandler(i64 %10, i64 0, i1 %9, i32 33, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @13, i32 0, i32 0), i64 94741345376864, i32 312, i32 3), !dbg !1103
  br i1 %11, label %12, label %18, !dbg !1103

; <label>:12:                                     ; preds = %1
  br label %13, !dbg !1107, !llvm.loop !1110

; <label>:13:                                     ; preds = %12
  %14 = load i32, i32* %5, align 4, !dbg !1112
  call void @gsl_error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 312, i32 %14), !dbg !1112
  %15 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !1112
  %16 = load double, double* %15, align 8, !dbg !1112
  store double %16, double* %2, align 8, !dbg !1112
  br label %21, !dbg !1112
                                                  ; No predecessors!
  br label %18, !dbg !1115

; <label>:18:                                     ; preds = %17, %1
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !1117
  %20 = load double, double* %19, align 8, !dbg !1117
  store double %20, double* %2, align 8, !dbg !1117
  br label %21, !dbg !1117

; <label>:21:                                     ; preds = %18, %13
  %22 = load double, double* %2, align 8, !dbg !1119
  ret double %22, !dbg !1119
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_bessel_i1_scaled(double) #0 !dbg !1120 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct, align 8
  %5 = alloca i32, align 4
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !1121, metadata !61), !dbg !1122
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %4, metadata !1123, metadata !61), !dbg !1124
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1125, metadata !61), !dbg !1124
  %6 = load double, double* %3, align 8, !dbg !1124
  %7 = call i32 @gsl_sf_bessel_i1_scaled_e(double %6, %struct.gsl_sf_result_struct* %4), !dbg !1124
  store i32 %7, i32* %5, align 4, !dbg !1124
  %8 = load i32, i32* %5, align 4, !dbg !1126
  %9 = icmp ne i32 %8, 0, !dbg !1126
  %10 = sext i32 %8 to i64, !dbg !1124
  %11 = call i1 @iCmpInstHandler(i64 %10, i64 0, i1 %9, i32 33, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @15, i32 0, i32 0), i64 94741345006480, i32 317, i32 3), !dbg !1124
  br i1 %11, label %12, label %18, !dbg !1124

; <label>:12:                                     ; preds = %1
  br label %13, !dbg !1128, !llvm.loop !1131

; <label>:13:                                     ; preds = %12
  %14 = load i32, i32* %5, align 4, !dbg !1133
  call void @gsl_error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 317, i32 %14), !dbg !1133
  %15 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !1133
  %16 = load double, double* %15, align 8, !dbg !1133
  store double %16, double* %2, align 8, !dbg !1133
  br label %21, !dbg !1133
                                                  ; No predecessors!
  br label %18, !dbg !1136

; <label>:18:                                     ; preds = %17, %1
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !1138
  %20 = load double, double* %19, align 8, !dbg !1138
  store double %20, double* %2, align 8, !dbg !1138
  br label %21, !dbg !1138

; <label>:21:                                     ; preds = %18, %13
  %22 = load double, double* %2, align 8, !dbg !1140
  ret double %22, !dbg !1140
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_bessel_i2_scaled(double) #0 !dbg !1141 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct, align 8
  %5 = alloca i32, align 4
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !1142, metadata !61), !dbg !1143
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %4, metadata !1144, metadata !61), !dbg !1145
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1146, metadata !61), !dbg !1145
  %6 = load double, double* %3, align 8, !dbg !1145
  %7 = call i32 @gsl_sf_bessel_i2_scaled_e(double %6, %struct.gsl_sf_result_struct* %4), !dbg !1145
  store i32 %7, i32* %5, align 4, !dbg !1145
  %8 = load i32, i32* %5, align 4, !dbg !1147
  %9 = icmp ne i32 %8, 0, !dbg !1147
  %10 = sext i32 %8 to i64, !dbg !1145
  %11 = call i1 @iCmpInstHandler(i64 %10, i64 0, i1 %9, i32 33, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @17, i32 0, i32 0), i64 94741345417600, i32 322, i32 3), !dbg !1145
  br i1 %11, label %12, label %18, !dbg !1145

; <label>:12:                                     ; preds = %1
  br label %13, !dbg !1149, !llvm.loop !1152

; <label>:13:                                     ; preds = %12
  %14 = load i32, i32* %5, align 4, !dbg !1154
  call void @gsl_error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 322, i32 %14), !dbg !1154
  %15 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !1154
  %16 = load double, double* %15, align 8, !dbg !1154
  store double %16, double* %2, align 8, !dbg !1154
  br label %21, !dbg !1154
                                                  ; No predecessors!
  br label %18, !dbg !1157

; <label>:18:                                     ; preds = %17, %1
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !1159
  %20 = load double, double* %19, align 8, !dbg !1159
  store double %20, double* %2, align 8, !dbg !1159
  br label %21, !dbg !1159

; <label>:21:                                     ; preds = %18, %13
  %22 = load double, double* %2, align 8, !dbg !1161
  ret double %22, !dbg !1161
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_bessel_il_scaled(i32, double) #0 !dbg !1162 {
  %3 = alloca double, align 8
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca %struct.gsl_sf_result_struct, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1165, metadata !61), !dbg !1166
  store double %1, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !1167, metadata !61), !dbg !1168
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %6, metadata !1169, metadata !61), !dbg !1170
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1171, metadata !61), !dbg !1170
  %8 = load i32, i32* %4, align 4, !dbg !1170
  %9 = load double, double* %5, align 8, !dbg !1170
  %10 = call i32 @gsl_sf_bessel_il_scaled_e(i32 %8, double %9, %struct.gsl_sf_result_struct* %6), !dbg !1170
  store i32 %10, i32* %7, align 4, !dbg !1170
  %11 = load i32, i32* %7, align 4, !dbg !1172
  %12 = icmp ne i32 %11, 0, !dbg !1172
  %13 = sext i32 %11 to i64, !dbg !1170
  %14 = call i1 @iCmpInstHandler(i64 %13, i64 0, i1 %12, i32 33, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @19, i32 0, i32 0), i64 94741345437136, i32 327, i32 3), !dbg !1170
  br i1 %14, label %15, label %21, !dbg !1170

; <label>:15:                                     ; preds = %2
  br label %16, !dbg !1174, !llvm.loop !1177

; <label>:16:                                     ; preds = %15
  %17 = load i32, i32* %7, align 4, !dbg !1179
  call void @gsl_error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 327, i32 %17), !dbg !1179
  %18 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !1179
  %19 = load double, double* %18, align 8, !dbg !1179
  store double %19, double* %3, align 8, !dbg !1179
  br label %24, !dbg !1179
                                                  ; No predecessors!
  br label %21, !dbg !1182

; <label>:21:                                     ; preds = %20, %2
  %22 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !1184
  %23 = load double, double* %22, align 8, !dbg !1184
  store double %23, double* %3, align 8, !dbg !1184
  br label %24, !dbg !1184

; <label>:24:                                     ; preds = %21, %16
  %25 = load double, double* %3, align 8, !dbg !1186
  ret double %25, !dbg !1186
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
!llvm.module.flags = !{!43, !44, !45}
!llvm.ident = !{!46}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !41)
!1 = !DIFile(filename: "bessel_i.c", directory: "/fpcc/gsl-2.5/specfunc")
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
!43 = !{i32 2, !"Dwarf Version", i32 4}
!44 = !{i32 2, !"Debug Info Version", i32 3}
!45 = !{i32 1, !"PIC Level", i32 2}
!46 = !{!"clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)"}
!47 = distinct !DISubprogram(name: "gsl_sf_bessel_i0_scaled_e", scope: !1, file: !1, line: 64, type: !48, isLocal: false, isDefinition: true, scopeLine: 65, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !59)
!48 = !DISubroutineType(types: !49)
!49 = !{!42, !50, !52}
!50 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !51)
!51 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64, align: 64)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !54, line: 41, baseType: !55)
!54 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/fpcc/gsl-2.5/specfunc")
!55 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !54, line: 37, size: 128, align: 64, elements: !56)
!56 = !{!57, !58}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !55, file: !54, line: 38, baseType: !51, size: 64, align: 64)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !55, file: !54, line: 39, baseType: !51, size: 64, align: 64, offset: 64)
!59 = !{}
!60 = !DILocalVariable(name: "x", arg: 1, scope: !47, file: !1, line: 64, type: !50)
!61 = !DIExpression()
!62 = !DILocation(line: 64, column: 44, scope: !47)
!63 = !DILocalVariable(name: "result", arg: 2, scope: !47, file: !1, line: 64, type: !52)
!64 = !DILocation(line: 64, column: 63, scope: !47)
!65 = !DILocalVariable(name: "ax", scope: !47, file: !1, line: 66, type: !51)
!66 = !DILocation(line: 66, column: 10, scope: !47)
!67 = !DILocation(line: 66, column: 20, scope: !47)
!68 = !DILocation(line: 66, column: 15, scope: !47)
!69 = !DILocation(line: 70, column: 6, scope: !70)
!70 = distinct !DILexicalBlock(scope: !47, file: !1, line: 70, column: 6)
!71 = !DILocation(line: 70, column: 8, scope: !70)
!72 = !DILocation(line: 70, column: 6, scope: !47)
!73 = !DILocation(line: 71, column: 5, scope: !74)
!74 = distinct !DILexicalBlock(scope: !70, file: !1, line: 70, column: 16)
!75 = !DILocation(line: 71, column: 13, scope: !74)
!76 = !DILocation(line: 71, column: 17, scope: !74)
!77 = !DILocation(line: 72, column: 5, scope: !74)
!78 = !DILocation(line: 72, column: 13, scope: !74)
!79 = !DILocation(line: 72, column: 17, scope: !74)
!80 = !DILocation(line: 73, column: 5, scope: !74)
!81 = !DILocation(line: 75, column: 11, scope: !82)
!82 = distinct !DILexicalBlock(scope: !70, file: !1, line: 75, column: 11)
!83 = !DILocation(line: 75, column: 14, scope: !82)
!84 = !DILocation(line: 75, column: 11, scope: !70)
!85 = !DILocalVariable(name: "eax", scope: !86, file: !1, line: 76, type: !50)
!86 = distinct !DILexicalBlock(scope: !82, file: !1, line: 75, column: 21)
!87 = !DILocation(line: 76, column: 18, scope: !86)
!88 = !DILocation(line: 76, column: 29, scope: !86)
!89 = !DILocation(line: 76, column: 28, scope: !86)
!90 = !DILocation(line: 76, column: 24, scope: !86)
!91 = !DILocalVariable(name: "y", scope: !86, file: !1, line: 77, type: !50)
!92 = !DILocation(line: 77, column: 18, scope: !86)
!93 = !DILocation(line: 77, column: 22, scope: !86)
!94 = !DILocation(line: 77, column: 25, scope: !86)
!95 = !DILocation(line: 77, column: 24, scope: !86)
!96 = !DILocalVariable(name: "c1", scope: !86, file: !1, line: 78, type: !50)
!97 = !DILocation(line: 78, column: 18, scope: !86)
!98 = !DILocalVariable(name: "c2", scope: !86, file: !1, line: 79, type: !50)
!99 = !DILocation(line: 79, column: 18, scope: !86)
!100 = !DILocalVariable(name: "c3", scope: !86, file: !1, line: 80, type: !50)
!101 = !DILocation(line: 80, column: 18, scope: !86)
!102 = !DILocalVariable(name: "c4", scope: !86, file: !1, line: 81, type: !50)
!103 = !DILocation(line: 81, column: 18, scope: !86)
!104 = !DILocalVariable(name: "c5", scope: !86, file: !1, line: 82, type: !50)
!105 = !DILocation(line: 82, column: 18, scope: !86)
!106 = !DILocalVariable(name: "sum", scope: !86, file: !1, line: 83, type: !50)
!107 = !DILocation(line: 83, column: 18, scope: !86)
!108 = !DILocation(line: 83, column: 30, scope: !86)
!109 = !DILocation(line: 83, column: 38, scope: !86)
!110 = !DILocation(line: 83, column: 46, scope: !86)
!111 = !DILocation(line: 83, column: 54, scope: !86)
!112 = !DILocation(line: 83, column: 62, scope: !86)
!113 = !DILocation(line: 83, column: 63, scope: !86)
!114 = !DILocation(line: 83, column: 60, scope: !86)
!115 = !DILocation(line: 83, column: 55, scope: !86)
!116 = !DILocation(line: 83, column: 52, scope: !86)
!117 = !DILocation(line: 83, column: 47, scope: !86)
!118 = !DILocation(line: 83, column: 44, scope: !86)
!119 = !DILocation(line: 83, column: 39, scope: !86)
!120 = !DILocation(line: 83, column: 36, scope: !86)
!121 = !DILocation(line: 83, column: 31, scope: !86)
!122 = !DILocation(line: 83, column: 28, scope: !86)
!123 = !DILocation(line: 84, column: 19, scope: !86)
!124 = !DILocation(line: 84, column: 25, scope: !86)
!125 = !DILocation(line: 84, column: 23, scope: !86)
!126 = !DILocation(line: 84, column: 5, scope: !86)
!127 = !DILocation(line: 84, column: 13, scope: !86)
!128 = !DILocation(line: 84, column: 17, scope: !86)
!129 = !DILocation(line: 85, column: 43, scope: !86)
!130 = !DILocation(line: 85, column: 51, scope: !86)
!131 = !DILocation(line: 85, column: 41, scope: !86)
!132 = !DILocation(line: 85, column: 5, scope: !86)
!133 = !DILocation(line: 85, column: 13, scope: !86)
!134 = !DILocation(line: 85, column: 17, scope: !86)
!135 = !DILocation(line: 86, column: 3, scope: !86)
!136 = !DILocation(line: 87, column: 11, scope: !137)
!137 = distinct !DILexicalBlock(scope: !82, file: !1, line: 87, column: 11)
!138 = !DILocation(line: 87, column: 14, scope: !137)
!139 = !DILocation(line: 87, column: 11, scope: !82)
!140 = !DILocation(line: 88, column: 35, scope: !141)
!141 = distinct !DILexicalBlock(scope: !137, file: !1, line: 87, column: 42)
!142 = !DILocation(line: 88, column: 34, scope: !141)
!143 = !DILocation(line: 88, column: 26, scope: !141)
!144 = !DILocation(line: 88, column: 24, scope: !141)
!145 = !DILocation(line: 88, column: 45, scope: !141)
!146 = !DILocation(line: 88, column: 44, scope: !141)
!147 = !DILocation(line: 88, column: 39, scope: !141)
!148 = !DILocation(line: 88, column: 5, scope: !141)
!149 = !DILocation(line: 88, column: 13, scope: !141)
!150 = !DILocation(line: 88, column: 17, scope: !141)
!151 = !DILocation(line: 89, column: 43, scope: !141)
!152 = !DILocation(line: 89, column: 51, scope: !141)
!153 = !DILocation(line: 89, column: 41, scope: !141)
!154 = !DILocation(line: 89, column: 5, scope: !141)
!155 = !DILocation(line: 89, column: 13, scope: !141)
!156 = !DILocation(line: 89, column: 17, scope: !141)
!157 = !DILocation(line: 90, column: 3, scope: !141)
!158 = !DILocation(line: 92, column: 28, scope: !159)
!159 = distinct !DILexicalBlock(scope: !137, file: !1, line: 91, column: 8)
!160 = !DILocation(line: 92, column: 27, scope: !159)
!161 = !DILocation(line: 92, column: 22, scope: !159)
!162 = !DILocation(line: 92, column: 5, scope: !159)
!163 = !DILocation(line: 92, column: 13, scope: !159)
!164 = !DILocation(line: 92, column: 17, scope: !159)
!165 = !DILocation(line: 93, column: 43, scope: !159)
!166 = !DILocation(line: 93, column: 51, scope: !159)
!167 = !DILocation(line: 93, column: 41, scope: !159)
!168 = !DILocation(line: 93, column: 5, scope: !159)
!169 = !DILocation(line: 93, column: 13, scope: !159)
!170 = !DILocation(line: 93, column: 17, scope: !159)
!171 = !DILocation(line: 95, column: 3, scope: !47)
!172 = !DILocation(line: 96, column: 1, scope: !47)
!173 = distinct !DISubprogram(name: "gsl_sf_bessel_i1_scaled_e", scope: !1, file: !1, line: 99, type: !48, isLocal: false, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !59)
!174 = !DILocalVariable(name: "x", arg: 1, scope: !173, file: !1, line: 99, type: !50)
!175 = !DILocation(line: 99, column: 44, scope: !173)
!176 = !DILocalVariable(name: "result", arg: 2, scope: !173, file: !1, line: 99, type: !52)
!177 = !DILocation(line: 99, column: 63, scope: !173)
!178 = !DILocalVariable(name: "ax", scope: !173, file: !1, line: 101, type: !51)
!179 = !DILocation(line: 101, column: 10, scope: !173)
!180 = !DILocation(line: 101, column: 20, scope: !173)
!181 = !DILocation(line: 101, column: 15, scope: !173)
!182 = !DILocation(line: 105, column: 6, scope: !183)
!183 = distinct !DILexicalBlock(scope: !173, file: !1, line: 105, column: 6)
!184 = !DILocation(line: 105, column: 8, scope: !183)
!185 = !DILocation(line: 105, column: 6, scope: !173)
!186 = !DILocation(line: 106, column: 5, scope: !187)
!187 = distinct !DILexicalBlock(scope: !183, file: !1, line: 105, column: 16)
!188 = !DILocation(line: 106, column: 13, scope: !187)
!189 = !DILocation(line: 106, column: 17, scope: !187)
!190 = !DILocation(line: 107, column: 5, scope: !187)
!191 = !DILocation(line: 107, column: 13, scope: !187)
!192 = !DILocation(line: 107, column: 17, scope: !187)
!193 = !DILocation(line: 108, column: 5, scope: !187)
!194 = !DILocation(line: 110, column: 11, scope: !195)
!195 = distinct !DILexicalBlock(scope: !183, file: !1, line: 110, column: 11)
!196 = !DILocation(line: 110, column: 14, scope: !195)
!197 = !DILocation(line: 110, column: 11, scope: !183)
!198 = !DILocation(line: 111, column: 5, scope: !199)
!199 = distinct !DILexicalBlock(scope: !195, file: !1, line: 110, column: 33)
!200 = distinct !{!200, !198}
!201 = !DILocation(line: 111, column: 5, scope: !202)
!202 = !DILexicalBlockFile(scope: !203, file: !1, discriminator: 1)
!203 = distinct !DILexicalBlock(scope: !199, file: !1, line: 111, column: 5)
!204 = distinct !{!204, !205}
!205 = !DILocation(line: 111, column: 5, scope: !203)
!206 = !DILocation(line: 111, column: 5, scope: !207)
!207 = !DILexicalBlockFile(scope: !208, file: !1, discriminator: 2)
!208 = distinct !DILexicalBlock(scope: !203, file: !1, line: 111, column: 5)
!209 = !DILocation(line: 111, column: 5, scope: !210)
!210 = !DILexicalBlockFile(scope: !203, file: !1, discriminator: 3)
!211 = !DILocation(line: 112, column: 3, scope: !199)
!212 = !DILocation(line: 113, column: 11, scope: !213)
!213 = distinct !DILexicalBlock(scope: !195, file: !1, line: 113, column: 11)
!214 = !DILocation(line: 113, column: 14, scope: !213)
!215 = !DILocation(line: 113, column: 11, scope: !195)
!216 = !DILocalVariable(name: "eax", scope: !217, file: !1, line: 114, type: !50)
!217 = distinct !DILexicalBlock(scope: !213, file: !1, line: 113, column: 22)
!218 = !DILocation(line: 114, column: 18, scope: !217)
!219 = !DILocation(line: 114, column: 29, scope: !217)
!220 = !DILocation(line: 114, column: 28, scope: !217)
!221 = !DILocation(line: 114, column: 24, scope: !217)
!222 = !DILocalVariable(name: "y", scope: !217, file: !1, line: 115, type: !50)
!223 = !DILocation(line: 115, column: 18, scope: !217)
!224 = !DILocation(line: 115, column: 23, scope: !217)
!225 = !DILocation(line: 115, column: 25, scope: !217)
!226 = !DILocation(line: 115, column: 24, scope: !217)
!227 = !DILocalVariable(name: "c1", scope: !217, file: !1, line: 116, type: !50)
!228 = !DILocation(line: 116, column: 18, scope: !217)
!229 = !DILocalVariable(name: "c2", scope: !217, file: !1, line: 117, type: !50)
!230 = !DILocation(line: 117, column: 18, scope: !217)
!231 = !DILocalVariable(name: "c3", scope: !217, file: !1, line: 118, type: !50)
!232 = !DILocation(line: 118, column: 18, scope: !217)
!233 = !DILocalVariable(name: "c4", scope: !217, file: !1, line: 119, type: !50)
!234 = !DILocation(line: 119, column: 18, scope: !217)
!235 = !DILocalVariable(name: "c5", scope: !217, file: !1, line: 120, type: !50)
!236 = !DILocation(line: 120, column: 18, scope: !217)
!237 = !DILocalVariable(name: "sum", scope: !217, file: !1, line: 121, type: !50)
!238 = !DILocation(line: 121, column: 18, scope: !217)
!239 = !DILocation(line: 121, column: 30, scope: !217)
!240 = !DILocation(line: 121, column: 38, scope: !217)
!241 = !DILocation(line: 121, column: 46, scope: !217)
!242 = !DILocation(line: 121, column: 54, scope: !217)
!243 = !DILocation(line: 121, column: 62, scope: !217)
!244 = !DILocation(line: 121, column: 63, scope: !217)
!245 = !DILocation(line: 121, column: 60, scope: !217)
!246 = !DILocation(line: 121, column: 55, scope: !217)
!247 = !DILocation(line: 121, column: 52, scope: !217)
!248 = !DILocation(line: 121, column: 47, scope: !217)
!249 = !DILocation(line: 121, column: 44, scope: !217)
!250 = !DILocation(line: 121, column: 39, scope: !217)
!251 = !DILocation(line: 121, column: 36, scope: !217)
!252 = !DILocation(line: 121, column: 31, scope: !217)
!253 = !DILocation(line: 121, column: 28, scope: !217)
!254 = !DILocation(line: 122, column: 19, scope: !217)
!255 = !DILocation(line: 122, column: 25, scope: !217)
!256 = !DILocation(line: 122, column: 23, scope: !217)
!257 = !DILocation(line: 122, column: 26, scope: !217)
!258 = !DILocation(line: 122, column: 33, scope: !217)
!259 = !DILocation(line: 122, column: 31, scope: !217)
!260 = !DILocation(line: 122, column: 5, scope: !217)
!261 = !DILocation(line: 122, column: 13, scope: !217)
!262 = !DILocation(line: 122, column: 17, scope: !217)
!263 = !DILocation(line: 123, column: 48, scope: !217)
!264 = !DILocation(line: 123, column: 56, scope: !217)
!265 = !DILocation(line: 123, column: 43, scope: !217)
!266 = !DILocation(line: 123, column: 41, scope: !217)
!267 = !DILocation(line: 123, column: 5, scope: !217)
!268 = !DILocation(line: 123, column: 13, scope: !217)
!269 = !DILocation(line: 123, column: 17, scope: !217)
!270 = !DILocation(line: 124, column: 5, scope: !217)
!271 = !DILocalVariable(name: "ex", scope: !272, file: !1, line: 127, type: !51)
!272 = distinct !DILexicalBlock(scope: !213, file: !1, line: 126, column: 8)
!273 = !DILocation(line: 127, column: 12, scope: !272)
!274 = !DILocation(line: 127, column: 26, scope: !272)
!275 = !DILocation(line: 127, column: 25, scope: !272)
!276 = !DILocation(line: 127, column: 17, scope: !272)
!277 = !DILocation(line: 128, column: 26, scope: !272)
!278 = !DILocation(line: 128, column: 34, scope: !272)
!279 = !DILocation(line: 128, column: 33, scope: !272)
!280 = !DILocation(line: 128, column: 28, scope: !272)
!281 = !DILocation(line: 128, column: 45, scope: !272)
!282 = !DILocation(line: 128, column: 44, scope: !272)
!283 = !DILocation(line: 128, column: 38, scope: !272)
!284 = !DILocation(line: 128, column: 23, scope: !272)
!285 = !DILocation(line: 128, column: 53, scope: !272)
!286 = !DILocation(line: 128, column: 56, scope: !272)
!287 = !DILocation(line: 128, column: 55, scope: !272)
!288 = !DILocation(line: 128, column: 50, scope: !272)
!289 = !DILocation(line: 128, column: 5, scope: !272)
!290 = !DILocation(line: 128, column: 13, scope: !272)
!291 = !DILocation(line: 128, column: 17, scope: !272)
!292 = !DILocation(line: 129, column: 48, scope: !272)
!293 = !DILocation(line: 129, column: 56, scope: !272)
!294 = !DILocation(line: 129, column: 43, scope: !272)
!295 = !DILocation(line: 129, column: 41, scope: !272)
!296 = !DILocation(line: 129, column: 5, scope: !272)
!297 = !DILocation(line: 129, column: 13, scope: !272)
!298 = !DILocation(line: 129, column: 17, scope: !272)
!299 = !DILocation(line: 130, column: 8, scope: !300)
!300 = distinct !DILexicalBlock(scope: !272, file: !1, line: 130, column: 8)
!301 = !DILocation(line: 130, column: 10, scope: !300)
!302 = !DILocation(line: 130, column: 8, scope: !272)
!303 = !DILocation(line: 130, column: 32, scope: !304)
!304 = !DILexicalBlockFile(scope: !300, file: !1, discriminator: 1)
!305 = !DILocation(line: 130, column: 40, scope: !304)
!306 = !DILocation(line: 130, column: 31, scope: !304)
!307 = !DILocation(line: 130, column: 17, scope: !304)
!308 = !DILocation(line: 130, column: 25, scope: !304)
!309 = !DILocation(line: 130, column: 29, scope: !304)
!310 = !DILocation(line: 131, column: 5, scope: !272)
!311 = !DILocation(line: 133, column: 1, scope: !173)
!312 = distinct !DISubprogram(name: "gsl_sf_bessel_i2_scaled_e", scope: !1, file: !1, line: 136, type: !48, isLocal: false, isDefinition: true, scopeLine: 137, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !59)
!313 = !DILocalVariable(name: "x", arg: 1, scope: !312, file: !1, line: 136, type: !50)
!314 = !DILocation(line: 136, column: 44, scope: !312)
!315 = !DILocalVariable(name: "result", arg: 2, scope: !312, file: !1, line: 136, type: !52)
!316 = !DILocation(line: 136, column: 63, scope: !312)
!317 = !DILocalVariable(name: "ax", scope: !312, file: !1, line: 138, type: !51)
!318 = !DILocation(line: 138, column: 10, scope: !312)
!319 = !DILocation(line: 138, column: 20, scope: !312)
!320 = !DILocation(line: 138, column: 15, scope: !312)
!321 = !DILocation(line: 142, column: 6, scope: !322)
!322 = distinct !DILexicalBlock(scope: !312, file: !1, line: 142, column: 6)
!323 = !DILocation(line: 142, column: 8, scope: !322)
!324 = !DILocation(line: 142, column: 6, scope: !312)
!325 = !DILocation(line: 143, column: 5, scope: !326)
!326 = distinct !DILexicalBlock(scope: !322, file: !1, line: 142, column: 16)
!327 = !DILocation(line: 143, column: 13, scope: !326)
!328 = !DILocation(line: 143, column: 17, scope: !326)
!329 = !DILocation(line: 144, column: 5, scope: !326)
!330 = !DILocation(line: 144, column: 13, scope: !326)
!331 = !DILocation(line: 144, column: 17, scope: !326)
!332 = !DILocation(line: 145, column: 5, scope: !326)
!333 = !DILocation(line: 147, column: 11, scope: !334)
!334 = distinct !DILexicalBlock(scope: !322, file: !1, line: 147, column: 11)
!335 = !DILocation(line: 147, column: 14, scope: !334)
!336 = !DILocation(line: 147, column: 11, scope: !322)
!337 = !DILocation(line: 148, column: 5, scope: !338)
!338 = distinct !DILexicalBlock(scope: !334, file: !1, line: 147, column: 38)
!339 = distinct !{!339, !337}
!340 = !DILocation(line: 148, column: 5, scope: !341)
!341 = !DILexicalBlockFile(scope: !342, file: !1, discriminator: 1)
!342 = distinct !DILexicalBlock(scope: !338, file: !1, line: 148, column: 5)
!343 = distinct !{!343, !344}
!344 = !DILocation(line: 148, column: 5, scope: !342)
!345 = !DILocation(line: 148, column: 5, scope: !346)
!346 = !DILexicalBlockFile(scope: !347, file: !1, discriminator: 2)
!347 = distinct !DILexicalBlock(scope: !342, file: !1, line: 148, column: 5)
!348 = !DILocation(line: 148, column: 5, scope: !349)
!349 = !DILexicalBlockFile(scope: !342, file: !1, discriminator: 3)
!350 = !DILocation(line: 149, column: 3, scope: !338)
!351 = !DILocation(line: 150, column: 11, scope: !352)
!352 = distinct !DILexicalBlock(scope: !334, file: !1, line: 150, column: 11)
!353 = !DILocation(line: 150, column: 14, scope: !352)
!354 = !DILocation(line: 150, column: 11, scope: !334)
!355 = !DILocalVariable(name: "y", scope: !356, file: !1, line: 151, type: !50)
!356 = distinct !DILexicalBlock(scope: !352, file: !1, line: 150, column: 22)
!357 = !DILocation(line: 151, column: 18, scope: !356)
!358 = !DILocation(line: 151, column: 22, scope: !356)
!359 = !DILocation(line: 151, column: 24, scope: !356)
!360 = !DILocation(line: 151, column: 23, scope: !356)
!361 = !DILocalVariable(name: "c1", scope: !356, file: !1, line: 152, type: !50)
!362 = !DILocation(line: 152, column: 18, scope: !356)
!363 = !DILocalVariable(name: "c2", scope: !356, file: !1, line: 153, type: !50)
!364 = !DILocation(line: 153, column: 18, scope: !356)
!365 = !DILocalVariable(name: "c3", scope: !356, file: !1, line: 154, type: !50)
!366 = !DILocation(line: 154, column: 18, scope: !356)
!367 = !DILocalVariable(name: "c4", scope: !356, file: !1, line: 155, type: !50)
!368 = !DILocation(line: 155, column: 18, scope: !356)
!369 = !DILocalVariable(name: "c5", scope: !356, file: !1, line: 156, type: !50)
!370 = !DILocation(line: 156, column: 18, scope: !356)
!371 = !DILocalVariable(name: "sum", scope: !356, file: !1, line: 157, type: !50)
!372 = !DILocation(line: 157, column: 18, scope: !356)
!373 = !DILocation(line: 157, column: 30, scope: !356)
!374 = !DILocation(line: 157, column: 38, scope: !356)
!375 = !DILocation(line: 157, column: 46, scope: !356)
!376 = !DILocation(line: 157, column: 54, scope: !356)
!377 = !DILocation(line: 157, column: 62, scope: !356)
!378 = !DILocation(line: 157, column: 63, scope: !356)
!379 = !DILocation(line: 157, column: 60, scope: !356)
!380 = !DILocation(line: 157, column: 55, scope: !356)
!381 = !DILocation(line: 157, column: 52, scope: !356)
!382 = !DILocation(line: 157, column: 47, scope: !356)
!383 = !DILocation(line: 157, column: 44, scope: !356)
!384 = !DILocation(line: 157, column: 39, scope: !356)
!385 = !DILocation(line: 157, column: 36, scope: !356)
!386 = !DILocation(line: 157, column: 31, scope: !356)
!387 = !DILocation(line: 157, column: 28, scope: !356)
!388 = !DILocalVariable(name: "pre", scope: !356, file: !1, line: 158, type: !50)
!389 = !DILocation(line: 158, column: 18, scope: !356)
!390 = !DILocation(line: 158, column: 29, scope: !356)
!391 = !DILocation(line: 158, column: 28, scope: !356)
!392 = !DILocation(line: 158, column: 24, scope: !356)
!393 = !DILocation(line: 158, column: 35, scope: !356)
!394 = !DILocation(line: 158, column: 33, scope: !356)
!395 = !DILocation(line: 158, column: 37, scope: !356)
!396 = !DILocation(line: 158, column: 36, scope: !356)
!397 = !DILocation(line: 158, column: 38, scope: !356)
!398 = !DILocation(line: 159, column: 19, scope: !356)
!399 = !DILocation(line: 159, column: 25, scope: !356)
!400 = !DILocation(line: 159, column: 23, scope: !356)
!401 = !DILocation(line: 159, column: 5, scope: !356)
!402 = !DILocation(line: 159, column: 13, scope: !356)
!403 = !DILocation(line: 159, column: 17, scope: !356)
!404 = !DILocation(line: 160, column: 48, scope: !356)
!405 = !DILocation(line: 160, column: 56, scope: !356)
!406 = !DILocation(line: 160, column: 43, scope: !356)
!407 = !DILocation(line: 160, column: 41, scope: !356)
!408 = !DILocation(line: 160, column: 5, scope: !356)
!409 = !DILocation(line: 160, column: 13, scope: !356)
!410 = !DILocation(line: 160, column: 17, scope: !356)
!411 = !DILocation(line: 161, column: 5, scope: !356)
!412 = !DILocalVariable(name: "ex", scope: !413, file: !1, line: 164, type: !51)
!413 = distinct !DILexicalBlock(scope: !352, file: !1, line: 163, column: 8)
!414 = !DILocation(line: 164, column: 12, scope: !413)
!415 = !DILocation(line: 164, column: 26, scope: !413)
!416 = !DILocation(line: 164, column: 25, scope: !413)
!417 = !DILocation(line: 164, column: 17, scope: !413)
!418 = !DILocalVariable(name: "x2", scope: !413, file: !1, line: 165, type: !51)
!419 = !DILocation(line: 165, column: 12, scope: !413)
!420 = !DILocation(line: 165, column: 17, scope: !413)
!421 = !DILocation(line: 165, column: 19, scope: !413)
!422 = !DILocation(line: 165, column: 18, scope: !413)
!423 = !DILocation(line: 166, column: 31, scope: !413)
!424 = !DILocation(line: 166, column: 30, scope: !413)
!425 = !DILocation(line: 166, column: 40, scope: !413)
!426 = !DILocation(line: 166, column: 39, scope: !413)
!427 = !DILocation(line: 166, column: 34, scope: !413)
!428 = !DILocation(line: 166, column: 50, scope: !413)
!429 = !DILocation(line: 166, column: 49, scope: !413)
!430 = !DILocation(line: 166, column: 58, scope: !413)
!431 = !DILocation(line: 166, column: 57, scope: !413)
!432 = !DILocation(line: 166, column: 52, scope: !413)
!433 = !DILocation(line: 166, column: 44, scope: !413)
!434 = !DILocation(line: 166, column: 23, scope: !413)
!435 = !DILocation(line: 166, column: 64, scope: !413)
!436 = !DILocation(line: 166, column: 67, scope: !413)
!437 = !DILocation(line: 166, column: 66, scope: !413)
!438 = !DILocation(line: 166, column: 70, scope: !413)
!439 = !DILocation(line: 166, column: 69, scope: !413)
!440 = !DILocation(line: 166, column: 62, scope: !413)
!441 = !DILocation(line: 166, column: 5, scope: !413)
!442 = !DILocation(line: 166, column: 13, scope: !413)
!443 = !DILocation(line: 166, column: 17, scope: !413)
!444 = !DILocation(line: 167, column: 48, scope: !413)
!445 = !DILocation(line: 167, column: 56, scope: !413)
!446 = !DILocation(line: 167, column: 43, scope: !413)
!447 = !DILocation(line: 167, column: 41, scope: !413)
!448 = !DILocation(line: 167, column: 5, scope: !413)
!449 = !DILocation(line: 167, column: 13, scope: !413)
!450 = !DILocation(line: 167, column: 17, scope: !413)
!451 = !DILocation(line: 168, column: 5, scope: !413)
!452 = !DILocation(line: 170, column: 1, scope: !312)
!453 = distinct !DISubprogram(name: "gsl_sf_bessel_il_scaled_e", scope: !1, file: !1, line: 173, type: !454, isLocal: false, isDefinition: true, scopeLine: 174, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !59)
!454 = !DISubroutineType(types: !455)
!455 = !{!42, !456, !51, !52}
!456 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!457 = !DILocalVariable(name: "l", arg: 1, scope: !453, file: !1, line: 173, type: !456)
!458 = !DILocation(line: 173, column: 41, scope: !453)
!459 = !DILocalVariable(name: "x", arg: 2, scope: !453, file: !1, line: 173, type: !51)
!460 = !DILocation(line: 173, column: 51, scope: !453)
!461 = !DILocalVariable(name: "result", arg: 3, scope: !453, file: !1, line: 173, type: !52)
!462 = !DILocation(line: 173, column: 70, scope: !453)
!463 = !DILocalVariable(name: "sgn", scope: !453, file: !1, line: 175, type: !51)
!464 = !DILocation(line: 175, column: 10, scope: !453)
!465 = !DILocalVariable(name: "ax", scope: !453, file: !1, line: 176, type: !51)
!466 = !DILocation(line: 176, column: 10, scope: !453)
!467 = !DILocation(line: 176, column: 21, scope: !453)
!468 = !DILocation(line: 176, column: 16, scope: !453)
!469 = !DILocation(line: 178, column: 6, scope: !470)
!470 = distinct !DILexicalBlock(scope: !453, file: !1, line: 178, column: 6)
!471 = !DILocation(line: 178, column: 8, scope: !470)
!472 = !DILocation(line: 178, column: 6, scope: !453)
!473 = !DILocation(line: 180, column: 13, scope: !474)
!474 = distinct !DILexicalBlock(scope: !470, file: !1, line: 178, column: 15)
!475 = !DILocation(line: 180, column: 9, scope: !474)
!476 = !DILocation(line: 181, column: 10, scope: !474)
!477 = !DILocation(line: 181, column: 9, scope: !474)
!478 = !DILocation(line: 181, column: 7, scope: !474)
!479 = !DILocation(line: 182, column: 3, scope: !474)
!480 = !DILocation(line: 184, column: 6, scope: !481)
!481 = distinct !DILexicalBlock(scope: !453, file: !1, line: 184, column: 6)
!482 = !DILocation(line: 184, column: 8, scope: !481)
!483 = !DILocation(line: 184, column: 6, scope: !453)
!484 = !DILocation(line: 185, column: 5, scope: !485)
!485 = distinct !DILexicalBlock(scope: !481, file: !1, line: 184, column: 13)
!486 = distinct !{!486, !484}
!487 = !DILocation(line: 185, column: 5, scope: !488)
!488 = !DILexicalBlockFile(scope: !489, file: !1, discriminator: 1)
!489 = distinct !DILexicalBlock(scope: !485, file: !1, line: 185, column: 5)
!490 = distinct !{!490, !491}
!491 = !DILocation(line: 185, column: 5, scope: !489)
!492 = !DILocation(line: 185, column: 5, scope: !493)
!493 = !DILexicalBlockFile(scope: !494, file: !1, discriminator: 2)
!494 = distinct !DILexicalBlock(scope: !489, file: !1, line: 185, column: 5)
!495 = !DILocation(line: 185, column: 5, scope: !496)
!496 = !DILexicalBlockFile(scope: !489, file: !1, discriminator: 3)
!497 = !DILocation(line: 186, column: 3, scope: !485)
!498 = !DILocation(line: 187, column: 11, scope: !499)
!499 = distinct !DILexicalBlock(scope: !481, file: !1, line: 187, column: 11)
!500 = !DILocation(line: 187, column: 13, scope: !499)
!501 = !DILocation(line: 187, column: 11, scope: !481)
!502 = !DILocation(line: 188, column: 21, scope: !503)
!503 = distinct !DILexicalBlock(scope: !499, file: !1, line: 187, column: 21)
!504 = !DILocation(line: 188, column: 23, scope: !503)
!505 = !DILocation(line: 188, column: 5, scope: !503)
!506 = !DILocation(line: 188, column: 13, scope: !503)
!507 = !DILocation(line: 188, column: 17, scope: !503)
!508 = !DILocation(line: 189, column: 5, scope: !503)
!509 = !DILocation(line: 189, column: 13, scope: !503)
!510 = !DILocation(line: 189, column: 17, scope: !503)
!511 = !DILocation(line: 190, column: 5, scope: !503)
!512 = !DILocation(line: 192, column: 11, scope: !513)
!513 = distinct !DILexicalBlock(scope: !499, file: !1, line: 192, column: 11)
!514 = !DILocation(line: 192, column: 13, scope: !513)
!515 = !DILocation(line: 192, column: 11, scope: !499)
!516 = !DILocalVariable(name: "il", scope: !517, file: !1, line: 193, type: !53)
!517 = distinct !DILexicalBlock(scope: !513, file: !1, line: 192, column: 19)
!518 = !DILocation(line: 193, column: 19, scope: !517)
!519 = !DILocalVariable(name: "stat_il", scope: !517, file: !1, line: 194, type: !42)
!520 = !DILocation(line: 194, column: 9, scope: !517)
!521 = !DILocation(line: 194, column: 45, scope: !517)
!522 = !DILocation(line: 194, column: 19, scope: !517)
!523 = !DILocation(line: 195, column: 19, scope: !517)
!524 = !DILocation(line: 195, column: 28, scope: !517)
!525 = !DILocation(line: 195, column: 23, scope: !517)
!526 = !DILocation(line: 195, column: 5, scope: !517)
!527 = !DILocation(line: 195, column: 13, scope: !517)
!528 = !DILocation(line: 195, column: 17, scope: !517)
!529 = !DILocation(line: 196, column: 22, scope: !517)
!530 = !DILocation(line: 196, column: 5, scope: !517)
!531 = !DILocation(line: 196, column: 13, scope: !517)
!532 = !DILocation(line: 196, column: 17, scope: !517)
!533 = !DILocation(line: 197, column: 12, scope: !517)
!534 = !DILocation(line: 197, column: 5, scope: !517)
!535 = !DILocation(line: 199, column: 11, scope: !536)
!536 = distinct !DILexicalBlock(scope: !513, file: !1, line: 199, column: 11)
!537 = !DILocation(line: 199, column: 13, scope: !536)
!538 = !DILocation(line: 199, column: 11, scope: !513)
!539 = !DILocalVariable(name: "il", scope: !540, file: !1, line: 200, type: !53)
!540 = distinct !DILexicalBlock(scope: !536, file: !1, line: 199, column: 19)
!541 = !DILocation(line: 200, column: 19, scope: !540)
!542 = !DILocalVariable(name: "stat_il", scope: !540, file: !1, line: 201, type: !42)
!543 = !DILocation(line: 201, column: 9, scope: !540)
!544 = !DILocation(line: 201, column: 45, scope: !540)
!545 = !DILocation(line: 201, column: 19, scope: !540)
!546 = !DILocation(line: 202, column: 19, scope: !540)
!547 = !DILocation(line: 202, column: 28, scope: !540)
!548 = !DILocation(line: 202, column: 23, scope: !540)
!549 = !DILocation(line: 202, column: 5, scope: !540)
!550 = !DILocation(line: 202, column: 13, scope: !540)
!551 = !DILocation(line: 202, column: 17, scope: !540)
!552 = !DILocation(line: 203, column: 22, scope: !540)
!553 = !DILocation(line: 203, column: 5, scope: !540)
!554 = !DILocation(line: 203, column: 13, scope: !540)
!555 = !DILocation(line: 203, column: 17, scope: !540)
!556 = !DILocation(line: 204, column: 12, scope: !540)
!557 = !DILocation(line: 204, column: 5, scope: !540)
!558 = !DILocation(line: 206, column: 11, scope: !559)
!559 = distinct !DILexicalBlock(scope: !536, file: !1, line: 206, column: 11)
!560 = !DILocation(line: 206, column: 13, scope: !559)
!561 = !DILocation(line: 206, column: 11, scope: !536)
!562 = !DILocalVariable(name: "il", scope: !563, file: !1, line: 207, type: !53)
!563 = distinct !DILexicalBlock(scope: !559, file: !1, line: 206, column: 19)
!564 = !DILocation(line: 207, column: 19, scope: !563)
!565 = !DILocalVariable(name: "stat_il", scope: !563, file: !1, line: 208, type: !42)
!566 = !DILocation(line: 208, column: 9, scope: !563)
!567 = !DILocation(line: 208, column: 45, scope: !563)
!568 = !DILocation(line: 208, column: 19, scope: !563)
!569 = !DILocation(line: 209, column: 19, scope: !563)
!570 = !DILocation(line: 209, column: 28, scope: !563)
!571 = !DILocation(line: 209, column: 23, scope: !563)
!572 = !DILocation(line: 209, column: 5, scope: !563)
!573 = !DILocation(line: 209, column: 13, scope: !563)
!574 = !DILocation(line: 209, column: 17, scope: !563)
!575 = !DILocation(line: 210, column: 22, scope: !563)
!576 = !DILocation(line: 210, column: 5, scope: !563)
!577 = !DILocation(line: 210, column: 13, scope: !563)
!578 = !DILocation(line: 210, column: 17, scope: !563)
!579 = !DILocation(line: 211, column: 12, scope: !563)
!580 = !DILocation(line: 211, column: 5, scope: !563)
!581 = !DILocation(line: 213, column: 11, scope: !582)
!582 = distinct !DILexicalBlock(scope: !559, file: !1, line: 213, column: 11)
!583 = !DILocation(line: 213, column: 13, scope: !582)
!584 = !DILocation(line: 213, column: 12, scope: !582)
!585 = !DILocation(line: 213, column: 23, scope: !582)
!586 = !DILocation(line: 213, column: 24, scope: !582)
!587 = !DILocation(line: 213, column: 21, scope: !582)
!588 = !DILocation(line: 213, column: 29, scope: !582)
!589 = !DILocation(line: 213, column: 15, scope: !582)
!590 = !DILocation(line: 213, column: 11, scope: !559)
!591 = !DILocalVariable(name: "b", scope: !592, file: !1, line: 214, type: !53)
!592 = distinct !DILexicalBlock(scope: !582, file: !1, line: 213, column: 35)
!593 = !DILocation(line: 214, column: 19, scope: !592)
!594 = !DILocalVariable(name: "stat", scope: !592, file: !1, line: 215, type: !42)
!595 = !DILocation(line: 215, column: 9, scope: !592)
!596 = !DILocation(line: 215, column: 42, scope: !592)
!597 = !DILocation(line: 215, column: 43, scope: !592)
!598 = !DILocation(line: 215, column: 49, scope: !592)
!599 = !DILocation(line: 215, column: 16, scope: !592)
!600 = !DILocalVariable(name: "pre", scope: !592, file: !1, line: 216, type: !51)
!601 = !DILocation(line: 216, column: 12, scope: !592)
!602 = !DILocation(line: 216, column: 25, scope: !592)
!603 = !DILocation(line: 216, column: 24, scope: !592)
!604 = !DILocation(line: 216, column: 20, scope: !592)
!605 = !DILocation(line: 216, column: 47, scope: !592)
!606 = !DILocation(line: 216, column: 46, scope: !592)
!607 = !DILocation(line: 216, column: 31, scope: !608)
!608 = !DILexicalBlockFile(scope: !592, file: !1, discriminator: 1)
!609 = !DILocation(line: 216, column: 29, scope: !592)
!610 = !DILocation(line: 217, column: 20, scope: !592)
!611 = !DILocation(line: 217, column: 26, scope: !592)
!612 = !DILocation(line: 217, column: 24, scope: !592)
!613 = !DILocation(line: 217, column: 34, scope: !592)
!614 = !DILocation(line: 217, column: 30, scope: !592)
!615 = !DILocation(line: 217, column: 5, scope: !592)
!616 = !DILocation(line: 217, column: 13, scope: !592)
!617 = !DILocation(line: 217, column: 18, scope: !592)
!618 = !DILocation(line: 218, column: 20, scope: !592)
!619 = !DILocation(line: 218, column: 28, scope: !592)
!620 = !DILocation(line: 218, column: 24, scope: !592)
!621 = !DILocation(line: 218, column: 5, scope: !592)
!622 = !DILocation(line: 218, column: 13, scope: !592)
!623 = !DILocation(line: 218, column: 18, scope: !592)
!624 = !DILocation(line: 219, column: 49, scope: !592)
!625 = !DILocation(line: 219, column: 57, scope: !592)
!626 = !DILocation(line: 219, column: 44, scope: !592)
!627 = !DILocation(line: 219, column: 42, scope: !592)
!628 = !DILocation(line: 219, column: 5, scope: !592)
!629 = !DILocation(line: 219, column: 13, scope: !592)
!630 = !DILocation(line: 219, column: 17, scope: !592)
!631 = !DILocation(line: 220, column: 12, scope: !592)
!632 = !DILocation(line: 220, column: 5, scope: !592)
!633 = !DILocation(line: 222, column: 11, scope: !634)
!634 = distinct !DILexicalBlock(scope: !582, file: !1, line: 222, column: 11)
!635 = !DILocation(line: 222, column: 13, scope: !634)
!636 = !DILocation(line: 222, column: 11, scope: !582)
!637 = !DILocalVariable(name: "i0_scaled", scope: !638, file: !1, line: 223, type: !53)
!638 = distinct !DILexicalBlock(scope: !634, file: !1, line: 222, column: 20)
!639 = !DILocation(line: 223, column: 19, scope: !638)
!640 = !DILocalVariable(name: "stat_i0", scope: !638, file: !1, line: 224, type: !42)
!641 = !DILocation(line: 224, column: 9, scope: !638)
!642 = !DILocation(line: 224, column: 46, scope: !638)
!643 = !DILocation(line: 224, column: 20, scope: !638)
!644 = !DILocalVariable(name: "rat", scope: !638, file: !1, line: 225, type: !51)
!645 = !DILocation(line: 225, column: 12, scope: !638)
!646 = !DILocalVariable(name: "stat_CF1", scope: !638, file: !1, line: 226, type: !42)
!647 = !DILocation(line: 226, column: 9, scope: !638)
!648 = !DILocation(line: 226, column: 34, scope: !638)
!649 = !DILocation(line: 226, column: 37, scope: !638)
!650 = !DILocation(line: 226, column: 20, scope: !638)
!651 = !DILocalVariable(name: "iellp1", scope: !638, file: !1, line: 227, type: !51)
!652 = !DILocation(line: 227, column: 12, scope: !638)
!653 = !DILocation(line: 227, column: 21, scope: !638)
!654 = !DILocation(line: 227, column: 25, scope: !638)
!655 = !DILocalVariable(name: "iell", scope: !638, file: !1, line: 228, type: !51)
!656 = !DILocation(line: 228, column: 12, scope: !638)
!657 = !DILocalVariable(name: "iellm1", scope: !638, file: !1, line: 229, type: !51)
!658 = !DILocation(line: 229, column: 12, scope: !638)
!659 = !DILocalVariable(name: "ell", scope: !638, file: !1, line: 230, type: !42)
!660 = !DILocation(line: 230, column: 9, scope: !638)
!661 = !DILocation(line: 231, column: 15, scope: !662)
!662 = distinct !DILexicalBlock(scope: !638, file: !1, line: 231, column: 5)
!663 = !DILocation(line: 231, column: 13, scope: !662)
!664 = !DILocation(line: 231, column: 9, scope: !662)
!665 = !DILocation(line: 231, column: 18, scope: !666)
!666 = !DILexicalBlockFile(scope: !667, file: !1, discriminator: 1)
!667 = distinct !DILexicalBlock(scope: !662, file: !1, line: 231, column: 5)
!668 = !DILocation(line: 231, column: 22, scope: !666)
!669 = !DILocation(line: 231, column: 5, scope: !666)
!670 = !DILocation(line: 232, column: 16, scope: !671)
!671 = distinct !DILexicalBlock(scope: !667, file: !1, line: 231, column: 35)
!672 = !DILocation(line: 232, column: 28, scope: !671)
!673 = !DILocation(line: 232, column: 27, scope: !671)
!674 = !DILocation(line: 232, column: 32, scope: !671)
!675 = !DILocation(line: 232, column: 25, scope: !671)
!676 = !DILocation(line: 232, column: 37, scope: !671)
!677 = !DILocation(line: 232, column: 36, scope: !671)
!678 = !DILocation(line: 232, column: 41, scope: !671)
!679 = !DILocation(line: 232, column: 39, scope: !671)
!680 = !DILocation(line: 232, column: 23, scope: !671)
!681 = !DILocation(line: 232, column: 14, scope: !671)
!682 = !DILocation(line: 233, column: 16, scope: !671)
!683 = !DILocation(line: 233, column: 14, scope: !671)
!684 = !DILocation(line: 234, column: 16, scope: !671)
!685 = !DILocation(line: 234, column: 14, scope: !671)
!686 = !DILocation(line: 235, column: 5, scope: !671)
!687 = !DILocation(line: 231, column: 31, scope: !688)
!688 = !DILexicalBlockFile(scope: !667, file: !1, discriminator: 2)
!689 = !DILocation(line: 231, column: 5, scope: !688)
!690 = distinct !{!690, !691}
!691 = !DILocation(line: 231, column: 5, scope: !638)
!692 = !DILocation(line: 236, column: 20, scope: !638)
!693 = !DILocation(line: 236, column: 36, scope: !638)
!694 = !DILocation(line: 236, column: 24, scope: !638)
!695 = !DILocation(line: 236, column: 62, scope: !638)
!696 = !DILocation(line: 236, column: 60, scope: !638)
!697 = !DILocation(line: 236, column: 40, scope: !638)
!698 = !DILocation(line: 236, column: 5, scope: !638)
!699 = !DILocation(line: 236, column: 13, scope: !638)
!700 = !DILocation(line: 236, column: 18, scope: !638)
!701 = !DILocation(line: 237, column: 30, scope: !638)
!702 = !DILocation(line: 237, column: 56, scope: !638)
!703 = !DILocation(line: 237, column: 54, scope: !638)
!704 = !DILocation(line: 237, column: 34, scope: !638)
!705 = !DILocation(line: 237, column: 5, scope: !638)
!706 = !DILocation(line: 237, column: 13, scope: !638)
!707 = !DILocation(line: 237, column: 18, scope: !638)
!708 = !DILocation(line: 238, column: 49, scope: !638)
!709 = !DILocation(line: 238, column: 57, scope: !638)
!710 = !DILocation(line: 238, column: 44, scope: !638)
!711 = !DILocation(line: 238, column: 42, scope: !638)
!712 = !DILocation(line: 238, column: 5, scope: !638)
!713 = !DILocation(line: 238, column: 13, scope: !638)
!714 = !DILocation(line: 238, column: 17, scope: !638)
!715 = !DILocation(line: 239, column: 12, scope: !638)
!716 = !DILocation(line: 239, column: 12, scope: !717)
!717 = !DILexicalBlockFile(scope: !638, file: !1, discriminator: 1)
!718 = !DILocation(line: 239, column: 12, scope: !719)
!719 = !DILexicalBlockFile(scope: !638, file: !1, discriminator: 2)
!720 = !DILocation(line: 239, column: 12, scope: !721)
!721 = !DILexicalBlockFile(scope: !638, file: !1, discriminator: 3)
!722 = !DILocation(line: 239, column: 12, scope: !723)
!723 = !DILexicalBlockFile(scope: !638, file: !1, discriminator: 4)
!724 = !DILocation(line: 239, column: 12, scope: !725)
!725 = !DILexicalBlockFile(scope: !638, file: !1, discriminator: 5)
!726 = !DILocation(line: 239, column: 12, scope: !727)
!727 = !DILexicalBlockFile(scope: !638, file: !1, discriminator: 6)
!728 = !DILocation(line: 239, column: 5, scope: !727)
!729 = !DILocation(line: 241, column: 11, scope: !730)
!730 = distinct !DILexicalBlock(scope: !634, file: !1, line: 241, column: 11)
!731 = !DILocation(line: 241, column: 11, scope: !732)
!732 = !DILexicalBlockFile(scope: !730, file: !1, discriminator: 1)
!733 = !DILocation(line: 241, column: 11, scope: !734)
!734 = !DILexicalBlockFile(scope: !730, file: !1, discriminator: 2)
!735 = !DILocation(line: 241, column: 11, scope: !736)
!736 = !DILexicalBlockFile(scope: !730, file: !1, discriminator: 3)
!737 = !DILocation(line: 241, column: 54, scope: !736)
!738 = !DILocalVariable(name: "status", scope: !739, file: !1, line: 242, type: !42)
!739 = distinct !DILexicalBlock(scope: !730, file: !1, line: 241, column: 83)
!740 = !DILocation(line: 242, column: 9, scope: !739)
!741 = !DILocation(line: 242, column: 56, scope: !739)
!742 = !DILocation(line: 242, column: 58, scope: !739)
!743 = !DILocation(line: 242, column: 65, scope: !739)
!744 = !DILocation(line: 242, column: 68, scope: !739)
!745 = !DILocation(line: 242, column: 18, scope: !739)
!746 = !DILocalVariable(name: "pre", scope: !739, file: !1, line: 243, type: !51)
!747 = !DILocation(line: 243, column: 12, scope: !739)
!748 = !DILocation(line: 243, column: 34, scope: !739)
!749 = !DILocation(line: 243, column: 33, scope: !739)
!750 = !DILocation(line: 243, column: 18, scope: !739)
!751 = !DILocation(line: 244, column: 20, scope: !739)
!752 = !DILocation(line: 244, column: 26, scope: !739)
!753 = !DILocation(line: 244, column: 24, scope: !739)
!754 = !DILocation(line: 244, column: 5, scope: !739)
!755 = !DILocation(line: 244, column: 13, scope: !739)
!756 = !DILocation(line: 244, column: 17, scope: !739)
!757 = !DILocation(line: 245, column: 20, scope: !739)
!758 = !DILocation(line: 245, column: 5, scope: !739)
!759 = !DILocation(line: 245, column: 13, scope: !739)
!760 = !DILocation(line: 245, column: 17, scope: !739)
!761 = !DILocation(line: 246, column: 12, scope: !739)
!762 = !DILocation(line: 246, column: 5, scope: !739)
!763 = !DILocalVariable(name: "rt_term", scope: !764, file: !1, line: 250, type: !51)
!764 = distinct !DILexicalBlock(scope: !730, file: !1, line: 248, column: 8)
!765 = !DILocation(line: 250, column: 12, scope: !764)
!766 = !DILocation(line: 250, column: 38, scope: !764)
!767 = !DILocation(line: 250, column: 37, scope: !764)
!768 = !DILocation(line: 250, column: 22, scope: !764)
!769 = !DILocalVariable(name: "LMAX", scope: !764, file: !1, line: 251, type: !456)
!770 = !DILocation(line: 251, column: 15, scope: !764)
!771 = !DILocalVariable(name: "r_iellp1", scope: !764, file: !1, line: 252, type: !53)
!772 = !DILocation(line: 252, column: 19, scope: !764)
!773 = !DILocalVariable(name: "r_iell", scope: !764, file: !1, line: 253, type: !53)
!774 = !DILocation(line: 253, column: 19, scope: !764)
!775 = !DILocalVariable(name: "stat_a1", scope: !764, file: !1, line: 254, type: !42)
!776 = !DILocation(line: 254, column: 9, scope: !764)
!777 = !DILocation(line: 254, column: 73, scope: !764)
!778 = !DILocation(line: 254, column: 19, scope: !764)
!779 = !DILocalVariable(name: "stat_a2", scope: !764, file: !1, line: 255, type: !42)
!780 = !DILocation(line: 255, column: 9, scope: !764)
!781 = !DILocation(line: 255, column: 73, scope: !764)
!782 = !DILocation(line: 255, column: 19, scope: !764)
!783 = !DILocalVariable(name: "iellp1", scope: !764, file: !1, line: 256, type: !51)
!784 = !DILocation(line: 256, column: 12, scope: !764)
!785 = !DILocation(line: 256, column: 30, scope: !764)
!786 = !DILocalVariable(name: "iell", scope: !764, file: !1, line: 257, type: !51)
!787 = !DILocation(line: 257, column: 12, scope: !764)
!788 = !DILocation(line: 257, column: 28, scope: !764)
!789 = !DILocalVariable(name: "iellm1", scope: !764, file: !1, line: 258, type: !51)
!790 = !DILocation(line: 258, column: 12, scope: !764)
!791 = !DILocalVariable(name: "ell", scope: !764, file: !1, line: 259, type: !42)
!792 = !DILocation(line: 259, column: 9, scope: !764)
!793 = !DILocation(line: 260, column: 15, scope: !764)
!794 = !DILocation(line: 260, column: 12, scope: !764)
!795 = !DILocation(line: 261, column: 15, scope: !764)
!796 = !DILocation(line: 261, column: 12, scope: !764)
!797 = !DILocation(line: 262, column: 13, scope: !798)
!798 = distinct !DILexicalBlock(scope: !764, file: !1, line: 262, column: 5)
!799 = !DILocation(line: 262, column: 9, scope: !798)
!800 = !DILocation(line: 262, column: 21, scope: !801)
!801 = !DILexicalBlockFile(scope: !802, file: !1, discriminator: 1)
!802 = distinct !DILexicalBlock(scope: !798, file: !1, line: 262, column: 5)
!803 = !DILocation(line: 262, column: 28, scope: !801)
!804 = !DILocation(line: 262, column: 29, scope: !801)
!805 = !DILocation(line: 262, column: 25, scope: !801)
!806 = !DILocation(line: 262, column: 5, scope: !801)
!807 = !DILocation(line: 263, column: 16, scope: !808)
!808 = distinct !DILexicalBlock(scope: !802, file: !1, line: 262, column: 40)
!809 = !DILocation(line: 263, column: 28, scope: !808)
!810 = !DILocation(line: 263, column: 27, scope: !808)
!811 = !DILocation(line: 263, column: 32, scope: !808)
!812 = !DILocation(line: 263, column: 25, scope: !808)
!813 = !DILocation(line: 263, column: 37, scope: !808)
!814 = !DILocation(line: 263, column: 36, scope: !808)
!815 = !DILocation(line: 263, column: 41, scope: !808)
!816 = !DILocation(line: 263, column: 39, scope: !808)
!817 = !DILocation(line: 263, column: 23, scope: !808)
!818 = !DILocation(line: 263, column: 14, scope: !808)
!819 = !DILocation(line: 264, column: 16, scope: !808)
!820 = !DILocation(line: 264, column: 14, scope: !808)
!821 = !DILocation(line: 265, column: 16, scope: !808)
!822 = !DILocation(line: 265, column: 14, scope: !808)
!823 = !DILocation(line: 266, column: 5, scope: !808)
!824 = !DILocation(line: 262, column: 36, scope: !825)
!825 = !DILexicalBlockFile(scope: !802, file: !1, discriminator: 2)
!826 = !DILocation(line: 262, column: 5, scope: !825)
!827 = distinct !{!827, !828}
!828 = !DILocation(line: 262, column: 5, scope: !764)
!829 = !DILocation(line: 267, column: 20, scope: !764)
!830 = !DILocation(line: 267, column: 26, scope: !764)
!831 = !DILocation(line: 267, column: 24, scope: !764)
!832 = !DILocation(line: 267, column: 5, scope: !764)
!833 = !DILocation(line: 267, column: 13, scope: !764)
!834 = !DILocation(line: 267, column: 18, scope: !764)
!835 = !DILocation(line: 268, column: 25, scope: !764)
!836 = !DILocation(line: 268, column: 33, scope: !764)
!837 = !DILocation(line: 268, column: 20, scope: !764)
!838 = !DILocation(line: 268, column: 71, scope: !764)
!839 = !DILocation(line: 268, column: 84, scope: !764)
!840 = !DILocation(line: 268, column: 74, scope: !764)
!841 = !DILocation(line: 268, column: 57, scope: !842)
!842 = !DILexicalBlockFile(scope: !764, file: !1, discriminator: 1)
!843 = !DILocation(line: 268, column: 55, scope: !764)
!844 = !DILocation(line: 268, column: 103, scope: !764)
!845 = !DILocation(line: 268, column: 114, scope: !764)
!846 = !DILocation(line: 268, column: 106, scope: !764)
!847 = !DILocation(line: 268, column: 91, scope: !848)
!848 = !DILexicalBlockFile(scope: !764, file: !1, discriminator: 2)
!849 = !DILocation(line: 268, column: 89, scope: !764)
!850 = !DILocation(line: 268, column: 37, scope: !764)
!851 = !DILocation(line: 268, column: 5, scope: !764)
!852 = !DILocation(line: 268, column: 13, scope: !764)
!853 = !DILocation(line: 268, column: 18, scope: !764)
!854 = !DILocation(line: 269, column: 49, scope: !764)
!855 = !DILocation(line: 269, column: 57, scope: !764)
!856 = !DILocation(line: 269, column: 44, scope: !764)
!857 = !DILocation(line: 269, column: 42, scope: !764)
!858 = !DILocation(line: 269, column: 5, scope: !764)
!859 = !DILocation(line: 269, column: 13, scope: !764)
!860 = !DILocation(line: 269, column: 17, scope: !764)
!861 = !DILocation(line: 271, column: 12, scope: !764)
!862 = !DILocation(line: 271, column: 12, scope: !842)
!863 = !DILocation(line: 271, column: 12, scope: !848)
!864 = !DILocation(line: 271, column: 12, scope: !865)
!865 = !DILexicalBlockFile(scope: !764, file: !1, discriminator: 3)
!866 = !DILocation(line: 271, column: 12, scope: !867)
!867 = !DILexicalBlockFile(scope: !764, file: !1, discriminator: 4)
!868 = !DILocation(line: 271, column: 12, scope: !869)
!869 = !DILexicalBlockFile(scope: !764, file: !1, discriminator: 5)
!870 = !DILocation(line: 271, column: 12, scope: !871)
!871 = !DILexicalBlockFile(scope: !764, file: !1, discriminator: 6)
!872 = !DILocation(line: 271, column: 5, scope: !871)
!873 = !DILocation(line: 273, column: 1, scope: !453)
!874 = distinct !DISubprogram(name: "bessel_il_CF1", scope: !1, file: !1, line: 37, type: !875, isLocal: true, isDefinition: true, scopeLine: 38, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !59)
!875 = !DISubroutineType(types: !876)
!876 = !{!42, !456, !50, !50, !877}
!877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64, align: 64)
!878 = !DILocalVariable(name: "l", arg: 1, scope: !874, file: !1, line: 37, type: !456)
!879 = !DILocation(line: 37, column: 25, scope: !874)
!880 = !DILocalVariable(name: "x", arg: 2, scope: !874, file: !1, line: 37, type: !50)
!881 = !DILocation(line: 37, column: 41, scope: !874)
!882 = !DILocalVariable(name: "threshold", arg: 3, scope: !874, file: !1, line: 37, type: !50)
!883 = !DILocation(line: 37, column: 57, scope: !874)
!884 = !DILocalVariable(name: "ratio", arg: 4, scope: !874, file: !1, line: 37, type: !877)
!885 = !DILocation(line: 37, column: 77, scope: !874)
!886 = !DILocalVariable(name: "kmax", scope: !874, file: !1, line: 39, type: !456)
!887 = !DILocation(line: 39, column: 13, scope: !874)
!888 = !DILocalVariable(name: "tk", scope: !874, file: !1, line: 40, type: !51)
!889 = !DILocation(line: 40, column: 10, scope: !874)
!890 = !DILocalVariable(name: "sum", scope: !874, file: !1, line: 41, type: !51)
!891 = !DILocation(line: 41, column: 10, scope: !874)
!892 = !DILocalVariable(name: "rhok", scope: !874, file: !1, line: 42, type: !51)
!893 = !DILocation(line: 42, column: 10, scope: !874)
!894 = !DILocalVariable(name: "k", scope: !874, file: !1, line: 43, type: !42)
!895 = !DILocation(line: 43, column: 7, scope: !874)
!896 = !DILocation(line: 45, column: 8, scope: !897)
!897 = distinct !DILexicalBlock(scope: !874, file: !1, line: 45, column: 3)
!898 = !DILocation(line: 45, column: 7, scope: !897)
!899 = !DILocation(line: 45, column: 12, scope: !900)
!900 = !DILexicalBlockFile(scope: !901, file: !1, discriminator: 1)
!901 = distinct !DILexicalBlock(scope: !897, file: !1, line: 45, column: 3)
!902 = !DILocation(line: 45, column: 13, scope: !900)
!903 = !DILocation(line: 45, column: 3, scope: !900)
!904 = !DILocalVariable(name: "ak", scope: !905, file: !1, line: 46, type: !51)
!905 = distinct !DILexicalBlock(scope: !901, file: !1, line: 45, column: 26)
!906 = !DILocation(line: 46, column: 12, scope: !905)
!907 = !DILocation(line: 46, column: 18, scope: !905)
!908 = !DILocation(line: 46, column: 25, scope: !905)
!909 = !DILocation(line: 46, column: 24, scope: !905)
!910 = !DILocation(line: 46, column: 26, scope: !905)
!911 = !DILocation(line: 46, column: 35, scope: !905)
!912 = !DILocation(line: 46, column: 34, scope: !905)
!913 = !DILocation(line: 46, column: 30, scope: !905)
!914 = !DILocation(line: 46, column: 19, scope: !905)
!915 = !DILocation(line: 46, column: 42, scope: !905)
!916 = !DILocation(line: 46, column: 49, scope: !905)
!917 = !DILocation(line: 46, column: 48, scope: !905)
!918 = !DILocation(line: 46, column: 50, scope: !905)
!919 = !DILocation(line: 46, column: 59, scope: !905)
!920 = !DILocation(line: 46, column: 58, scope: !905)
!921 = !DILocation(line: 46, column: 54, scope: !905)
!922 = !DILocation(line: 46, column: 43, scope: !905)
!923 = !DILocation(line: 46, column: 39, scope: !905)
!924 = !DILocation(line: 47, column: 13, scope: !905)
!925 = !DILocation(line: 47, column: 12, scope: !905)
!926 = !DILocation(line: 47, column: 23, scope: !905)
!927 = !DILocation(line: 47, column: 21, scope: !905)
!928 = !DILocation(line: 47, column: 15, scope: !905)
!929 = !DILocation(line: 47, column: 36, scope: !905)
!930 = !DILocation(line: 47, column: 46, scope: !905)
!931 = !DILocation(line: 47, column: 44, scope: !905)
!932 = !DILocation(line: 47, column: 38, scope: !905)
!933 = !DILocation(line: 47, column: 34, scope: !905)
!934 = !DILocation(line: 47, column: 28, scope: !905)
!935 = !DILocation(line: 47, column: 10, scope: !905)
!936 = !DILocation(line: 48, column: 12, scope: !905)
!937 = !DILocation(line: 48, column: 9, scope: !905)
!938 = !DILocation(line: 49, column: 12, scope: !905)
!939 = !DILocation(line: 49, column: 9, scope: !905)
!940 = !DILocation(line: 50, column: 13, scope: !941)
!941 = distinct !DILexicalBlock(scope: !905, file: !1, line: 50, column: 8)
!942 = !DILocation(line: 50, column: 16, scope: !941)
!943 = !DILocation(line: 50, column: 15, scope: !941)
!944 = !DILocation(line: 50, column: 8, scope: !941)
!945 = !DILocation(line: 50, column: 23, scope: !941)
!946 = !DILocation(line: 50, column: 21, scope: !941)
!947 = !DILocation(line: 50, column: 8, scope: !905)
!948 = !DILocation(line: 50, column: 34, scope: !949)
!949 = !DILexicalBlockFile(scope: !941, file: !1, discriminator: 1)
!950 = !DILocation(line: 51, column: 3, scope: !905)
!951 = !DILocation(line: 45, column: 22, scope: !952)
!952 = !DILexicalBlockFile(scope: !901, file: !1, discriminator: 2)
!953 = !DILocation(line: 45, column: 3, scope: !952)
!954 = distinct !{!954, !955}
!955 = !DILocation(line: 45, column: 3, scope: !874)
!956 = !DILocation(line: 53, column: 12, scope: !874)
!957 = !DILocation(line: 53, column: 19, scope: !874)
!958 = !DILocation(line: 53, column: 18, scope: !874)
!959 = !DILocation(line: 53, column: 20, scope: !874)
!960 = !DILocation(line: 53, column: 13, scope: !874)
!961 = !DILocation(line: 53, column: 28, scope: !874)
!962 = !DILocation(line: 53, column: 26, scope: !874)
!963 = !DILocation(line: 53, column: 4, scope: !874)
!964 = !DILocation(line: 53, column: 10, scope: !874)
!965 = !DILocation(line: 55, column: 6, scope: !966)
!966 = distinct !DILexicalBlock(scope: !874, file: !1, line: 55, column: 6)
!967 = !DILocation(line: 55, column: 8, scope: !966)
!968 = !DILocation(line: 55, column: 6, scope: !874)
!969 = !DILocation(line: 56, column: 5, scope: !966)
!970 = distinct !{!970, !969}
!971 = !DILocation(line: 56, column: 5, scope: !972)
!972 = !DILexicalBlockFile(scope: !973, file: !1, discriminator: 1)
!973 = distinct !DILexicalBlock(scope: !966, file: !1, line: 56, column: 5)
!974 = !DILocation(line: 56, column: 5, scope: !975)
!975 = !DILexicalBlockFile(scope: !973, file: !1, discriminator: 2)
!976 = !DILocation(line: 58, column: 5, scope: !966)
!977 = !DILocation(line: 59, column: 1, scope: !874)
!978 = distinct !DISubprogram(name: "gsl_sf_bessel_il_scaled_array", scope: !1, file: !1, line: 276, type: !979, isLocal: false, isDefinition: true, scopeLine: 277, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !59)
!979 = !DISubroutineType(types: !980)
!980 = !{!42, !456, !50, !877}
!981 = !DILocalVariable(name: "lmax", arg: 1, scope: !978, file: !1, line: 276, type: !456)
!982 = !DILocation(line: 276, column: 45, scope: !978)
!983 = !DILocalVariable(name: "x", arg: 2, scope: !978, file: !1, line: 276, type: !50)
!984 = !DILocation(line: 276, column: 64, scope: !978)
!985 = !DILocalVariable(name: "result_array", arg: 3, scope: !978, file: !1, line: 276, type: !877)
!986 = !DILocation(line: 276, column: 76, scope: !978)
!987 = !DILocation(line: 278, column: 6, scope: !988)
!988 = distinct !DILexicalBlock(scope: !978, file: !1, line: 278, column: 6)
!989 = !DILocation(line: 278, column: 8, scope: !988)
!990 = !DILocation(line: 278, column: 6, scope: !978)
!991 = !DILocalVariable(name: "ell", scope: !992, file: !1, line: 279, type: !42)
!992 = distinct !DILexicalBlock(scope: !988, file: !1, line: 278, column: 16)
!993 = !DILocation(line: 279, column: 9, scope: !992)
!994 = !DILocation(line: 280, column: 5, scope: !992)
!995 = !DILocation(line: 280, column: 21, scope: !992)
!996 = !DILocation(line: 281, column: 16, scope: !997)
!997 = distinct !DILexicalBlock(scope: !992, file: !1, line: 281, column: 5)
!998 = !DILocation(line: 281, column: 14, scope: !997)
!999 = !DILocation(line: 281, column: 10, scope: !997)
!1000 = !DILocation(line: 281, column: 22, scope: !1001)
!1001 = !DILexicalBlockFile(scope: !1002, file: !1, discriminator: 1)
!1002 = distinct !DILexicalBlock(scope: !997, file: !1, line: 281, column: 5)
!1003 = !DILocation(line: 281, column: 26, scope: !1001)
!1004 = !DILocation(line: 281, column: 5, scope: !1001)
!1005 = !DILocation(line: 282, column: 20, scope: !1006)
!1006 = distinct !DILexicalBlock(scope: !1002, file: !1, line: 281, column: 39)
!1007 = !DILocation(line: 282, column: 7, scope: !1006)
!1008 = !DILocation(line: 282, column: 25, scope: !1006)
!1009 = !DILocation(line: 283, column: 5, scope: !1006)
!1010 = !DILocation(line: 281, column: 35, scope: !1011)
!1011 = !DILexicalBlockFile(scope: !1002, file: !1, discriminator: 2)
!1012 = !DILocation(line: 281, column: 5, scope: !1011)
!1013 = distinct !{!1013, !1014}
!1014 = !DILocation(line: 281, column: 5, scope: !992)
!1015 = !DILocation(line: 284, column: 5, scope: !992)
!1016 = !DILocalVariable(name: "ell", scope: !1017, file: !1, line: 286, type: !42)
!1017 = distinct !DILexicalBlock(scope: !988, file: !1, line: 285, column: 10)
!1018 = !DILocation(line: 286, column: 9, scope: !1017)
!1019 = !DILocalVariable(name: "r_iellp1", scope: !1017, file: !1, line: 287, type: !53)
!1020 = !DILocation(line: 287, column: 19, scope: !1017)
!1021 = !DILocalVariable(name: "r_iell", scope: !1017, file: !1, line: 288, type: !53)
!1022 = !DILocation(line: 288, column: 19, scope: !1017)
!1023 = !DILocalVariable(name: "stat_0", scope: !1017, file: !1, line: 289, type: !42)
!1024 = !DILocation(line: 289, column: 9, scope: !1017)
!1025 = !DILocation(line: 289, column: 44, scope: !1017)
!1026 = !DILocation(line: 289, column: 48, scope: !1017)
!1027 = !DILocation(line: 289, column: 52, scope: !1017)
!1028 = !DILocation(line: 289, column: 18, scope: !1017)
!1029 = !DILocalVariable(name: "stat_1", scope: !1017, file: !1, line: 290, type: !42)
!1030 = !DILocation(line: 290, column: 9, scope: !1017)
!1031 = !DILocation(line: 290, column: 44, scope: !1017)
!1032 = !DILocation(line: 290, column: 52, scope: !1017)
!1033 = !DILocation(line: 290, column: 18, scope: !1017)
!1034 = !DILocalVariable(name: "iellp1", scope: !1017, file: !1, line: 291, type: !51)
!1035 = !DILocation(line: 291, column: 12, scope: !1017)
!1036 = !DILocation(line: 291, column: 30, scope: !1017)
!1037 = !DILocalVariable(name: "iell", scope: !1017, file: !1, line: 292, type: !51)
!1038 = !DILocation(line: 292, column: 12, scope: !1017)
!1039 = !DILocation(line: 292, column: 28, scope: !1017)
!1040 = !DILocalVariable(name: "iellm1", scope: !1017, file: !1, line: 293, type: !51)
!1041 = !DILocation(line: 293, column: 12, scope: !1017)
!1042 = !DILocation(line: 294, column: 26, scope: !1017)
!1043 = !DILocation(line: 294, column: 18, scope: !1017)
!1044 = !DILocation(line: 294, column: 5, scope: !1017)
!1045 = !DILocation(line: 294, column: 24, scope: !1017)
!1046 = !DILocation(line: 295, column: 15, scope: !1047)
!1047 = distinct !DILexicalBlock(scope: !1017, file: !1, line: 295, column: 5)
!1048 = !DILocation(line: 295, column: 13, scope: !1047)
!1049 = !DILocation(line: 295, column: 9, scope: !1047)
!1050 = !DILocation(line: 295, column: 21, scope: !1051)
!1051 = !DILexicalBlockFile(scope: !1052, file: !1, discriminator: 1)
!1052 = distinct !DILexicalBlock(scope: !1047, file: !1, line: 295, column: 5)
!1053 = !DILocation(line: 295, column: 25, scope: !1051)
!1054 = !DILocation(line: 295, column: 5, scope: !1051)
!1055 = !DILocation(line: 296, column: 16, scope: !1056)
!1056 = distinct !DILexicalBlock(scope: !1052, file: !1, line: 295, column: 38)
!1057 = !DILocation(line: 296, column: 28, scope: !1056)
!1058 = !DILocation(line: 296, column: 27, scope: !1056)
!1059 = !DILocation(line: 296, column: 32, scope: !1056)
!1060 = !DILocation(line: 296, column: 25, scope: !1056)
!1061 = !DILocation(line: 296, column: 37, scope: !1056)
!1062 = !DILocation(line: 296, column: 36, scope: !1056)
!1063 = !DILocation(line: 296, column: 41, scope: !1056)
!1064 = !DILocation(line: 296, column: 39, scope: !1056)
!1065 = !DILocation(line: 296, column: 23, scope: !1056)
!1066 = !DILocation(line: 296, column: 14, scope: !1056)
!1067 = !DILocation(line: 297, column: 16, scope: !1056)
!1068 = !DILocation(line: 297, column: 14, scope: !1056)
!1069 = !DILocation(line: 298, column: 16, scope: !1056)
!1070 = !DILocation(line: 298, column: 14, scope: !1056)
!1071 = !DILocation(line: 299, column: 29, scope: !1056)
!1072 = !DILocation(line: 299, column: 20, scope: !1056)
!1073 = !DILocation(line: 299, column: 23, scope: !1056)
!1074 = !DILocation(line: 299, column: 7, scope: !1056)
!1075 = !DILocation(line: 299, column: 27, scope: !1056)
!1076 = !DILocation(line: 300, column: 5, scope: !1056)
!1077 = !DILocation(line: 295, column: 34, scope: !1078)
!1078 = !DILexicalBlockFile(scope: !1052, file: !1, discriminator: 2)
!1079 = !DILocation(line: 295, column: 5, scope: !1078)
!1080 = distinct !{!1080, !1081}
!1081 = !DILocation(line: 295, column: 5, scope: !1017)
!1082 = !DILocation(line: 301, column: 12, scope: !1017)
!1083 = !DILocation(line: 301, column: 12, scope: !1084)
!1084 = !DILexicalBlockFile(scope: !1017, file: !1, discriminator: 1)
!1085 = !DILocation(line: 301, column: 12, scope: !1086)
!1086 = !DILexicalBlockFile(scope: !1017, file: !1, discriminator: 2)
!1087 = !DILocation(line: 301, column: 12, scope: !1088)
!1088 = !DILexicalBlockFile(scope: !1017, file: !1, discriminator: 3)
!1089 = !DILocation(line: 301, column: 12, scope: !1090)
!1090 = !DILexicalBlockFile(scope: !1017, file: !1, discriminator: 4)
!1091 = !DILocation(line: 301, column: 12, scope: !1092)
!1092 = !DILexicalBlockFile(scope: !1017, file: !1, discriminator: 5)
!1093 = !DILocation(line: 301, column: 12, scope: !1094)
!1094 = !DILexicalBlockFile(scope: !1017, file: !1, discriminator: 6)
!1095 = !DILocation(line: 301, column: 5, scope: !1094)
!1096 = !DILocation(line: 303, column: 1, scope: !978)
!1097 = distinct !DISubprogram(name: "gsl_sf_bessel_i0_scaled", scope: !1, file: !1, line: 310, type: !1098, isLocal: false, isDefinition: true, scopeLine: 311, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !59)
!1098 = !DISubroutineType(types: !1099)
!1099 = !{!51, !50}
!1100 = !DILocalVariable(name: "x", arg: 1, scope: !1097, file: !1, line: 310, type: !50)
!1101 = !DILocation(line: 310, column: 45, scope: !1097)
!1102 = !DILocalVariable(name: "result", scope: !1097, file: !1, line: 312, type: !53)
!1103 = !DILocation(line: 312, column: 3, scope: !1097)
!1104 = !DILocalVariable(name: "status", scope: !1097, file: !1, line: 312, type: !42)
!1105 = !DILocation(line: 312, column: 3, scope: !1106)
!1106 = distinct !DILexicalBlock(scope: !1097, file: !1, line: 312, column: 3)
!1107 = !DILocation(line: 312, column: 3, scope: !1108)
!1108 = !DILexicalBlockFile(scope: !1109, file: !1, discriminator: 1)
!1109 = distinct !DILexicalBlock(scope: !1106, file: !1, line: 312, column: 3)
!1110 = distinct !{!1110, !1111}
!1111 = !DILocation(line: 312, column: 3, scope: !1109)
!1112 = !DILocation(line: 312, column: 3, scope: !1113)
!1113 = !DILexicalBlockFile(scope: !1114, file: !1, discriminator: 2)
!1114 = distinct !DILexicalBlock(scope: !1109, file: !1, line: 312, column: 3)
!1115 = !DILocation(line: 312, column: 3, scope: !1116)
!1116 = !DILexicalBlockFile(scope: !1109, file: !1, discriminator: 3)
!1117 = !DILocation(line: 312, column: 3, scope: !1118)
!1118 = !DILexicalBlockFile(scope: !1097, file: !1, discriminator: 4)
!1119 = !DILocation(line: 313, column: 1, scope: !1097)
!1120 = distinct !DISubprogram(name: "gsl_sf_bessel_i1_scaled", scope: !1, file: !1, line: 315, type: !1098, isLocal: false, isDefinition: true, scopeLine: 316, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !59)
!1121 = !DILocalVariable(name: "x", arg: 1, scope: !1120, file: !1, line: 315, type: !50)
!1122 = !DILocation(line: 315, column: 45, scope: !1120)
!1123 = !DILocalVariable(name: "result", scope: !1120, file: !1, line: 317, type: !53)
!1124 = !DILocation(line: 317, column: 3, scope: !1120)
!1125 = !DILocalVariable(name: "status", scope: !1120, file: !1, line: 317, type: !42)
!1126 = !DILocation(line: 317, column: 3, scope: !1127)
!1127 = distinct !DILexicalBlock(scope: !1120, file: !1, line: 317, column: 3)
!1128 = !DILocation(line: 317, column: 3, scope: !1129)
!1129 = !DILexicalBlockFile(scope: !1130, file: !1, discriminator: 1)
!1130 = distinct !DILexicalBlock(scope: !1127, file: !1, line: 317, column: 3)
!1131 = distinct !{!1131, !1132}
!1132 = !DILocation(line: 317, column: 3, scope: !1130)
!1133 = !DILocation(line: 317, column: 3, scope: !1134)
!1134 = !DILexicalBlockFile(scope: !1135, file: !1, discriminator: 2)
!1135 = distinct !DILexicalBlock(scope: !1130, file: !1, line: 317, column: 3)
!1136 = !DILocation(line: 317, column: 3, scope: !1137)
!1137 = !DILexicalBlockFile(scope: !1130, file: !1, discriminator: 3)
!1138 = !DILocation(line: 317, column: 3, scope: !1139)
!1139 = !DILexicalBlockFile(scope: !1120, file: !1, discriminator: 4)
!1140 = !DILocation(line: 318, column: 1, scope: !1120)
!1141 = distinct !DISubprogram(name: "gsl_sf_bessel_i2_scaled", scope: !1, file: !1, line: 320, type: !1098, isLocal: false, isDefinition: true, scopeLine: 321, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !59)
!1142 = !DILocalVariable(name: "x", arg: 1, scope: !1141, file: !1, line: 320, type: !50)
!1143 = !DILocation(line: 320, column: 45, scope: !1141)
!1144 = !DILocalVariable(name: "result", scope: !1141, file: !1, line: 322, type: !53)
!1145 = !DILocation(line: 322, column: 3, scope: !1141)
!1146 = !DILocalVariable(name: "status", scope: !1141, file: !1, line: 322, type: !42)
!1147 = !DILocation(line: 322, column: 3, scope: !1148)
!1148 = distinct !DILexicalBlock(scope: !1141, file: !1, line: 322, column: 3)
!1149 = !DILocation(line: 322, column: 3, scope: !1150)
!1150 = !DILexicalBlockFile(scope: !1151, file: !1, discriminator: 1)
!1151 = distinct !DILexicalBlock(scope: !1148, file: !1, line: 322, column: 3)
!1152 = distinct !{!1152, !1153}
!1153 = !DILocation(line: 322, column: 3, scope: !1151)
!1154 = !DILocation(line: 322, column: 3, scope: !1155)
!1155 = !DILexicalBlockFile(scope: !1156, file: !1, discriminator: 2)
!1156 = distinct !DILexicalBlock(scope: !1151, file: !1, line: 322, column: 3)
!1157 = !DILocation(line: 322, column: 3, scope: !1158)
!1158 = !DILexicalBlockFile(scope: !1151, file: !1, discriminator: 3)
!1159 = !DILocation(line: 322, column: 3, scope: !1160)
!1160 = !DILexicalBlockFile(scope: !1141, file: !1, discriminator: 4)
!1161 = !DILocation(line: 323, column: 1, scope: !1141)
!1162 = distinct !DISubprogram(name: "gsl_sf_bessel_il_scaled", scope: !1, file: !1, line: 325, type: !1163, isLocal: false, isDefinition: true, scopeLine: 326, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !59)
!1163 = !DISubroutineType(types: !1164)
!1164 = !{!51, !456, !50}
!1165 = !DILocalVariable(name: "l", arg: 1, scope: !1162, file: !1, line: 325, type: !456)
!1166 = !DILocation(line: 325, column: 42, scope: !1162)
!1167 = !DILocalVariable(name: "x", arg: 2, scope: !1162, file: !1, line: 325, type: !50)
!1168 = !DILocation(line: 325, column: 58, scope: !1162)
!1169 = !DILocalVariable(name: "result", scope: !1162, file: !1, line: 327, type: !53)
!1170 = !DILocation(line: 327, column: 3, scope: !1162)
!1171 = !DILocalVariable(name: "status", scope: !1162, file: !1, line: 327, type: !42)
!1172 = !DILocation(line: 327, column: 3, scope: !1173)
!1173 = distinct !DILexicalBlock(scope: !1162, file: !1, line: 327, column: 3)
!1174 = !DILocation(line: 327, column: 3, scope: !1175)
!1175 = !DILexicalBlockFile(scope: !1176, file: !1, discriminator: 1)
!1176 = distinct !DILexicalBlock(scope: !1173, file: !1, line: 327, column: 3)
!1177 = distinct !{!1177, !1178}
!1178 = !DILocation(line: 327, column: 3, scope: !1176)
!1179 = !DILocation(line: 327, column: 3, scope: !1180)
!1180 = !DILexicalBlockFile(scope: !1181, file: !1, discriminator: 2)
!1181 = distinct !DILexicalBlock(scope: !1176, file: !1, line: 327, column: 3)
!1182 = !DILocation(line: 327, column: 3, scope: !1183)
!1183 = !DILexicalBlockFile(scope: !1176, file: !1, discriminator: 3)
!1184 = !DILocation(line: 327, column: 3, scope: !1185)
!1185 = !DILexicalBlockFile(scope: !1162, file: !1, discriminator: 4)
!1186 = !DILocation(line: 328, column: 1, scope: !1162)
