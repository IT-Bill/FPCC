; ModuleID = 'trig.ll'
source_filename = "trig.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.cheb_series_struct = type { double*, i32, double, double, i32 }
%struct.gsl_sf_result_struct = type { double, double }

@sin_cs = internal global %struct.cheb_series_struct { double* getelementptr inbounds ([12 x double], [12 x double]* @sin_data, i32 0, i32 0), i32 11, double -1.000000e+00, double 1.000000e+00, i32 11 }, align 8
@cos_cs = internal global %struct.cheb_series_struct { double* getelementptr inbounds ([11 x double], [11 x double]* @cos_data, i32 0, i32 0), i32 10, double -1.000000e+00, double 1.000000e+00, i32 10 }, align 8
@.str = private unnamed_addr constant [9 x i8] c"overflow\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"trig.c\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"domain error\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@sinc_cs = internal global %struct.cheb_series_struct { double* getelementptr inbounds ([17 x double], [17 x double]* @sinc_data, i32 0, i32 0), i32 16, double -1.000000e+00, double 1.000000e+00, i32 10 }, align 8
@.str.4 = private unnamed_addr constant [25 x i8] c"gsl_sf_sin_e(x, &result)\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"gsl_sf_cos_e(x, &result)\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"gsl_sf_hypot_e(x, y, &result)\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"gsl_sf_lnsinh_e(x, &result)\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"gsl_sf_lncosh_e(x, &result)\00", align 1
@.str.9 = private unnamed_addr constant [38 x i8] c"gsl_sf_angle_restrict_symm_e(&result)\00", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c"gsl_sf_angle_restrict_pos_e(&result)\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"gsl_sf_sinc_e(x, &result)\00", align 1
@sin_data = internal global [12 x double] [double 0xBFD516D6ED5A909E, double 0x3F64C95F8909975F, double 0x3F4484E2F770F8F9, double 0xBED3806BE0E5860C, double 0xBEA3192DC15885EE, double 0x3E30035896CBFD12, double 0x3DF4CCB1745F7AEF, double 0xBD7E9CA84CF05BCA, double 0xBD3DB5727EAFF830, double 0x3CC359222F7327B9, double 0x3C7DF529F4EE609B, double 0xBC01720EAB8B78D9], align 16
@cos_data = internal global [11 x double] [double 0x3FC52B8F3111FF6A, double 0xBF4BCDF9CE308462, double 0xBF2B89555B0F99C2, double 0x3EB38F2B9C42CF35, double 0x3E833C6A8FD9C1B5, double 0xBE09B0EA9D1E67BC, double 0xBDD0C261C93AC254, double 0x3D5475A7A2BEFBF3, double 0x3D13F154A7D83B0B, double 0xBC9629F4559019C6, double 0xBC513B0F0BC54B44], align 16
@sinc_data = internal global [17 x double] [double 0x3FF2236C458DF176, double 0xBFE10BB1D1FADB31, double 0xBFB17BA739316447, double 0x3FA11A49A6A2DE0A, double 0x3F585764A3A18F58, double 0xBF4810C5BEB07E26, double 0xBEF1A7B93C444C96, double 0x3EE18836CC9A4A27, double 0x3E7F826FAA026E58, double 0xBE6F5C50282A7513, double 0xBE030FC0EBFC7D02, double 0x3DF2FF14EAC02F28, double 0x3D80AC013C73A0B7, double 0xBD70A0F82E42094C, double -4.900690e-15, double 2.445383e-15, double 9.925000e-18], align 16
@0 = private unnamed_addr constant [13 x i8] c"gsl_sf_sin_e\00"
@1 = private unnamed_addr constant [8 x i8] c"trig.ll\00"
@2 = private unnamed_addr constant [12 x i8] c"cheb_eval_e\00"
@3 = private unnamed_addr constant [8 x i8] c"trig.ll\00"
@4 = private unnamed_addr constant [13 x i8] c"gsl_sf_cos_e\00"
@5 = private unnamed_addr constant [8 x i8] c"trig.ll\00"
@6 = private unnamed_addr constant [15 x i8] c"gsl_sf_hypot_e\00"
@7 = private unnamed_addr constant [8 x i8] c"trig.ll\00"
@8 = private unnamed_addr constant [21 x i8] c"gsl_sf_complex_sin_e\00"
@9 = private unnamed_addr constant [8 x i8] c"trig.ll\00"
@10 = private unnamed_addr constant [12 x i8] c"sinh_series\00"
@11 = private unnamed_addr constant [8 x i8] c"trig.ll\00"
@12 = private unnamed_addr constant [15 x i8] c"cosh_m1_series\00"
@13 = private unnamed_addr constant [8 x i8] c"trig.ll\00"
@14 = private unnamed_addr constant [21 x i8] c"gsl_sf_complex_cos_e\00"
@15 = private unnamed_addr constant [8 x i8] c"trig.ll\00"
@16 = private unnamed_addr constant [24 x i8] c"gsl_sf_complex_logsin_e\00"
@17 = private unnamed_addr constant [8 x i8] c"trig.ll\00"
@18 = private unnamed_addr constant [29 x i8] c"gsl_sf_angle_restrict_symm_e\00"
@19 = private unnamed_addr constant [8 x i8] c"trig.ll\00"
@20 = private unnamed_addr constant [16 x i8] c"gsl_sf_lnsinh_e\00"
@21 = private unnamed_addr constant [8 x i8] c"trig.ll\00"
@22 = private unnamed_addr constant [16 x i8] c"gsl_sf_lncosh_e\00"
@23 = private unnamed_addr constant [8 x i8] c"trig.ll\00"
@24 = private unnamed_addr constant [21 x i8] c"gsl_sf_polar_to_rect\00"
@25 = private unnamed_addr constant [8 x i8] c"trig.ll\00"
@26 = private unnamed_addr constant [21 x i8] c"gsl_sf_rect_to_polar\00"
@27 = private unnamed_addr constant [8 x i8] c"trig.ll\00"
@28 = private unnamed_addr constant [33 x i8] c"gsl_sf_angle_restrict_symm_err_e\00"
@29 = private unnamed_addr constant [8 x i8] c"trig.ll\00"
@30 = private unnamed_addr constant [32 x i8] c"gsl_sf_angle_restrict_pos_err_e\00"
@31 = private unnamed_addr constant [8 x i8] c"trig.ll\00"
@32 = private unnamed_addr constant [28 x i8] c"gsl_sf_angle_restrict_pos_e\00"
@33 = private unnamed_addr constant [8 x i8] c"trig.ll\00"
@34 = private unnamed_addr constant [17 x i8] c"gsl_sf_sin_err_e\00"
@35 = private unnamed_addr constant [8 x i8] c"trig.ll\00"
@36 = private unnamed_addr constant [17 x i8] c"gsl_sf_cos_err_e\00"
@37 = private unnamed_addr constant [8 x i8] c"trig.ll\00"
@38 = private unnamed_addr constant [14 x i8] c"gsl_sf_sinc_e\00"
@39 = private unnamed_addr constant [8 x i8] c"trig.ll\00"
@40 = private unnamed_addr constant [11 x i8] c"gsl_sf_sin\00"
@41 = private unnamed_addr constant [8 x i8] c"trig.ll\00"
@42 = private unnamed_addr constant [11 x i8] c"gsl_sf_cos\00"
@43 = private unnamed_addr constant [8 x i8] c"trig.ll\00"
@44 = private unnamed_addr constant [13 x i8] c"gsl_sf_hypot\00"
@45 = private unnamed_addr constant [8 x i8] c"trig.ll\00"
@46 = private unnamed_addr constant [14 x i8] c"gsl_sf_lnsinh\00"
@47 = private unnamed_addr constant [8 x i8] c"trig.ll\00"
@48 = private unnamed_addr constant [14 x i8] c"gsl_sf_lncosh\00"
@49 = private unnamed_addr constant [8 x i8] c"trig.ll\00"
@50 = private unnamed_addr constant [27 x i8] c"gsl_sf_angle_restrict_symm\00"
@51 = private unnamed_addr constant [8 x i8] c"trig.ll\00"
@52 = private unnamed_addr constant [26 x i8] c"gsl_sf_angle_restrict_pos\00"
@53 = private unnamed_addr constant [8 x i8] c"trig.ll\00"
@54 = private unnamed_addr constant [12 x i8] c"gsl_sf_sinc\00"
@55 = private unnamed_addr constant [8 x i8] c"trig.ll\00"

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_sin_e(double, %struct.gsl_sf_result_struct*) #0 !dbg !73 {
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
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca double, align 8
  %17 = alloca %struct.gsl_sf_result_struct, align 8
  %18 = alloca double, align 8
  %19 = alloca %struct.gsl_sf_result_struct, align 8
  %20 = alloca double, align 8
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !84, metadata !85), !dbg !86
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %5, metadata !87, metadata !85), !dbg !88
  call void @llvm.dbg.declare(metadata double* %6, metadata !89, metadata !85), !dbg !92
  store double 0x3FE921FB40000000, double* %6, align 8, !dbg !92
  call void @llvm.dbg.declare(metadata double* %7, metadata !93, metadata !85), !dbg !94
  store double 0x3E64442D00000000, double* %7, align 8, !dbg !94
  call void @llvm.dbg.declare(metadata double* %8, metadata !95, metadata !85), !dbg !96
  store double 0x3CE8469898CC5170, double* %8, align 8, !dbg !96
  call void @llvm.dbg.declare(metadata double* %9, metadata !97, metadata !85), !dbg !98
  %21 = load double, double* %4, align 8, !dbg !99
  %22 = fcmp oge double %21, 0.000000e+00, !dbg !99
  %23 = call i1 @fCmpInstHandler(double %21, double 0.000000e+00, i1 %22, i32 3, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 94710406088960, i32 172, i32 26), !dbg !99
  %24 = select i1 %23, i32 1, i32 -1, !dbg !99
  %25 = sitofp i32 %24 to double, !dbg !99
  store double %25, double* %9, align 8, !dbg !98
  call void @llvm.dbg.declare(metadata double* %10, metadata !100, metadata !85), !dbg !101
  %26 = load double, double* %4, align 8, !dbg !102
  %27 = call double @fabs(double %26) #1, !dbg !103
  store double %27, double* %10, align 8, !dbg !101
  %28 = load double, double* %10, align 8, !dbg !104
  %29 = fcmp olt double %28, 0x3F20000000000000, !dbg !106
  %30 = call i1 @fCmpInstHandler(double %28, double 0x3F20000000000000, i1 %29, i32 4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 94710406096976, i32 175, i32 14), !dbg !107
  br i1 %30, label %31, label %51, !dbg !107

; <label>:31:                                     ; preds = %2
  call void @llvm.dbg.declare(metadata double* %11, metadata !108, metadata !85), !dbg !110
  %32 = load double, double* %4, align 8, !dbg !111
  %33 = load double, double* %4, align 8, !dbg !112
  %34 = fmul double %32, %33, !dbg !113
  call void @fMulHandler(double %32, double %33, double %34, i64 94710406099192, i64 94710406099544, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 94710406099952, i32 176, i32 26), !dbg !110
  store double %34, double* %11, align 8, !dbg !110
  %35 = load double, double* %4, align 8, !dbg !114
  %36 = load double, double* %11, align 8, !dbg !115
  %37 = fdiv double %36, 6.000000e+00, !dbg !116
  call void @fDivHandler(double %36, double 6.000000e+00, double %37, i64 94710406102936, i64 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 94710406053904, i32 177, i32 34), !dbg !117
  %38 = fsub double 1.000000e+00, %37, !dbg !117
  call void @fSubHandler(double 1.000000e+00, double %37, double %38, i64 0, i64 94710406053904, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 94710406054320, i32 177, i32 30), !dbg !118
  %39 = fmul double %35, %38, !dbg !118
  call void @fMulHandler(double %35, double %38, double %39, i64 94710406102552, i64 94710406054320, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 94710406054704, i32 177, i32 23), !dbg !119
  %40 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !119
  %41 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %40, i32 0, i32 0, !dbg !120
  store double %39, double* %41, align 8, !dbg !121
  %42 = load double, double* %4, align 8, !dbg !122
  %43 = load double, double* %11, align 8, !dbg !123
  %44 = fmul double %42, %43, !dbg !124
  call void @fMulHandler(double %42, double %43, double %44, i64 94710406107944, i64 94710406108328, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 94710406108736, i32 178, i32 27), !dbg !125
  %45 = load double, double* %11, align 8, !dbg !125
  %46 = fmul double %44, %45, !dbg !126
  call void @fMulHandler(double %44, double %45, double %46, i64 94710406108736, i64 94710406109128, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 94710406109536, i32 178, i32 30), !dbg !127
  %47 = fdiv double %46, 1.000000e+02, !dbg !127
  call void @fDivHandler(double %46, double 1.000000e+02, double %47, i64 94710406109536, i64 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 94710406110048, i32 178, i32 34), !dbg !128
  %48 = call double @fabs(double %47) #1, !dbg !128
  %49 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !129
  %50 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %49, i32 0, i32 1, !dbg !130
  store double %48, double* %50, align 8, !dbg !131
  store i32 0, i32* %3, align 4, !dbg !132
  br label %197, !dbg !132

; <label>:51:                                     ; preds = %2
  call void @llvm.dbg.declare(metadata double* %12, metadata !133, metadata !85), !dbg !135
  %52 = load double, double* %9, align 8, !dbg !136
  store double %52, double* %12, align 8, !dbg !135
  call void @llvm.dbg.declare(metadata double* %13, metadata !137, metadata !85), !dbg !138
  %53 = load double, double* %10, align 8, !dbg !139
  %54 = fdiv double %53, 0x3FE921FB54442D18, !dbg !140
  call void @fDivHandler(double %53, double 0x3FE921FB54442D18, double %54, i64 94710406118616, i64 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 94710406119056, i32 183, i32 29), !dbg !141
  %55 = call double @floor(double %54) #1, !dbg !141
  store double %55, double* %13, align 8, !dbg !138
  call void @llvm.dbg.declare(metadata i32* %14, metadata !142, metadata !85), !dbg !143
  %56 = load double, double* %13, align 8, !dbg !144
  %57 = load double, double* %13, align 8, !dbg !145
  %58 = call double @ldexp(double %57, i32 -3) #6, !dbg !146
  %59 = call double @floor(double %58) #1, !dbg !147
  %60 = call double @ldexp(double %59, i32 3) #6, !dbg !149
  %61 = fsub double %56, %60, !dbg !151
  call void @fSubHandler(double %56, double %60, double %61, i64 94710406123144, i64 94710406125560, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 94710406126032, i32 184, i32 22), !dbg !144
  %62 = fptosi double %61 to i32, !dbg !144
  store i32 %62, i32* %14, align 4, !dbg !143
  call void @llvm.dbg.declare(metadata i32* %15, metadata !152, metadata !85), !dbg !153
  call void @llvm.dbg.declare(metadata double* %16, metadata !154, metadata !85), !dbg !155
  %63 = load i32, i32* %14, align 4, !dbg !156
  %64 = and i32 %63, 1, !dbg !156
  %65 = icmp ne i32 %64, 0, !dbg !156
  %66 = sext i32 %64 to i64, !dbg !158
  %67 = call i1 @iCmpInstHandler(i64 %66, i64 0, i1 %65, i32 33, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 94710406134032, i32 188, i32 10), !dbg !158
  br i1 %67, label %68, label %75, !dbg !158

; <label>:68:                                     ; preds = %51
  %69 = load i32, i32* %14, align 4, !dbg !159
  %70 = add nsw i32 %69, 1, !dbg !159
  store i32 %70, i32* %14, align 4, !dbg !159
  %71 = load i32, i32* %14, align 4, !dbg !161
  %72 = and i32 %71, 7, !dbg !161
  store i32 %72, i32* %14, align 4, !dbg !161
  %73 = load double, double* %13, align 8, !dbg !162
  %74 = fadd double %73, 1.000000e+00, !dbg !162
  call void @fAddHandler(double %73, double 1.000000e+00, double %74, i64 94710406140280, i64 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 94710406140720, i32 191, i32 11), !dbg !162
  store double %74, double* %13, align 8, !dbg !162
  br label %75, !dbg !163

; <label>:75:                                     ; preds = %68, %51
  %76 = load i32, i32* %14, align 4, !dbg !164
  %77 = icmp sgt i32 %76, 3, !dbg !166
  %78 = sext i32 %76 to i64, !dbg !167
  %79 = call i1 @iCmpInstHandler(i64 %78, i64 3, i1 %77, i32 38, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 94710406143200, i32 194, i32 17), !dbg !167
  br i1 %79, label %80, label %85, !dbg !167

; <label>:80:                                     ; preds = %75
  %81 = load i32, i32* %14, align 4, !dbg !168
  %82 = sub nsw i32 %81, 4, !dbg !168
  store i32 %82, i32* %14, align 4, !dbg !168
  %83 = load double, double* %12, align 8, !dbg !170
  %84 = fsub double -0.000000e+00, %83, !dbg !171
  call void @fSubHandler(double -0.000000e+00, double %83, double %84, i64 0, i64 94710406146504, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 94710406146976, i32 196, i32 22), !dbg !172
  store double %84, double* %12, align 8, !dbg !172
  br label %85, !dbg !173

; <label>:85:                                     ; preds = %80, %75
  %86 = load double, double* %10, align 8, !dbg !174
  %87 = load double, double* %13, align 8, !dbg !175
  %88 = fmul double %87, 0x3FE921FB40000000, !dbg !176
  call void @fMulHandler(double %87, double 0x3FE921FB40000000, double %88, i64 94710406148488, i64 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 94710406148896, i32 199, i32 23), !dbg !177
  %89 = fsub double %86, %88, !dbg !177
  call void @fSubHandler(double %86, double %88, double %89, i64 94710406148168, i64 94710406148896, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 94710406149312, i32 199, i32 19), !dbg !178
  %90 = load double, double* %13, align 8, !dbg !178
  %91 = fmul double %90, 0x3E64442D00000000, !dbg !179
  call void @fMulHandler(double %90, double 0x3E64442D00000000, double %91, i64 94710406149704, i64 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 94710406150112, i32 199, i32 33), !dbg !180
  %92 = fsub double %89, %91, !dbg !180
  call void @fSubHandler(double %89, double %91, double %92, i64 94710406149312, i64 94710406150112, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 94710406150528, i32 199, i32 29), !dbg !181
  %93 = load double, double* %13, align 8, !dbg !181
  %94 = fmul double %93, 0x3CE8469898CC5170, !dbg !182
  call void @fMulHandler(double %93, double 0x3CE8469898CC5170, double %94, i64 94710406150920, i64 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 94710406151328, i32 199, i32 43), !dbg !183
  %95 = fsub double %92, %94, !dbg !183
  call void @fSubHandler(double %92, double %94, double %95, i64 94710406150528, i64 94710406151328, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 94710406151744, i32 199, i32 39), !dbg !184
  store double %95, double* %16, align 8, !dbg !184
  %96 = load i32, i32* %14, align 4, !dbg !185
  %97 = icmp eq i32 %96, 0, !dbg !187
  %98 = sext i32 %96 to i64, !dbg !188
  %99 = call i1 @iCmpInstHandler(i64 %98, i64 0, i1 %97, i32 32, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 94710406152960, i32 201, i32 17), !dbg !188
  br i1 %99, label %100, label %119, !dbg !188

; <label>:100:                                    ; preds = %85
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %17, metadata !189, metadata !85), !dbg !191
  call void @llvm.dbg.declare(metadata double* %18, metadata !192, metadata !85), !dbg !193
  %101 = load double, double* %16, align 8, !dbg !194
  %102 = call double @fabs(double %101) #1, !dbg !195
  %103 = fmul double 8.000000e+00, %102, !dbg !196
  call void @fMulHandler(double 8.000000e+00, double %102, double %103, i64 0, i64 94710406156656, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 94710406157232, i32 203, i32 29), !dbg !197
  %104 = fdiv double %103, 0x400921FB54442D18, !dbg !197
  call void @fDivHandler(double %103, double 0x400921FB54442D18, double %104, i64 94710406157232, i64 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 94710406157680, i32 203, i32 37), !dbg !198
  %105 = fsub double %104, 1.000000e+00, !dbg !198
  call void @fSubHandler(double %104, double 1.000000e+00, double %105, i64 94710406157680, i64 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 94710406158128, i32 203, i32 43), !dbg !193
  store double %105, double* %18, align 8, !dbg !193
  %106 = load double, double* %18, align 8, !dbg !199
  %107 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @sin_cs, double %106, %struct.gsl_sf_result_struct* %17), !dbg !200
  store i32 %107, i32* %15, align 4, !dbg !201
  %108 = load double, double* %16, align 8, !dbg !202
  %109 = load double, double* %16, align 8, !dbg !203
  %110 = load double, double* %16, align 8, !dbg !204
  %111 = fmul double %109, %110, !dbg !205
  call void @fMulHandler(double %109, double %110, double %111, i64 94710406162184, i64 94710406162568, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 94710406162976, i32 205, i32 35), !dbg !206
  %112 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %17, i32 0, i32 0, !dbg !206
  %113 = load double, double* %112, align 8, !dbg !206
  %114 = fmul double %111, %113, !dbg !207
  call void @fMulHandler(double %111, double %113, double %114, i64 94710406162976, i64 94710406163816, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 94710406165488, i32 205, i32 38), !dbg !208
  %115 = fadd double 1.000000e+00, %114, !dbg !208
  call void @fAddHandler(double 1.000000e+00, double %114, double %115, i64 0, i64 94710406165488, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 94710406165936, i32 205, i32 32), !dbg !209
  %116 = fmul double %108, %115, !dbg !209
  call void @fMulHandler(double %108, double %115, double %116, i64 94710406161800, i64 94710406165936, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 94710406166320, i32 205, i32 25), !dbg !210
  %117 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !210
  %118 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %117, i32 0, i32 0, !dbg !211
  store double %116, double* %118, align 8, !dbg !212
  br label %142, !dbg !213

; <label>:119:                                    ; preds = %85
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %19, metadata !214, metadata !85), !dbg !216
  call void @llvm.dbg.declare(metadata double* %20, metadata !217, metadata !85), !dbg !218
  %120 = load double, double* %16, align 8, !dbg !219
  %121 = call double @fabs(double %120) #1, !dbg !220
  %122 = fmul double 8.000000e+00, %121, !dbg !221
  call void @fMulHandler(double 8.000000e+00, double %121, double %122, i64 0, i64 94710406171168, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 94710406171680, i32 209, i32 29), !dbg !222
  %123 = fdiv double %122, 0x400921FB54442D18, !dbg !222
  call void @fDivHandler(double %122, double 0x400921FB54442D18, double %123, i64 94710406171680, i64 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 94710406172064, i32 209, i32 37), !dbg !223
  %124 = fsub double %123, 1.000000e+00, !dbg !223
  call void @fSubHandler(double %123, double 1.000000e+00, double %124, i64 94710406172064, i64 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 94710406172512, i32 209, i32 43), !dbg !218
  store double %124, double* %20, align 8, !dbg !218
  %125 = load double, double* %20, align 8, !dbg !224
  %126 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @cos_cs, double %125, %struct.gsl_sf_result_struct* %19), !dbg !225
  store i32 %126, i32* %15, align 4, !dbg !226
  %127 = load double, double* %16, align 8, !dbg !227
  %128 = fmul double 5.000000e-01, %127, !dbg !228
  call void @fMulHandler(double 5.000000e-01, double %127, double %128, i64 0, i64 94710406175912, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 94710406176416, i32 211, i32 32), !dbg !229
  %129 = load double, double* %16, align 8, !dbg !229
  %130 = fmul double %128, %129, !dbg !230
  call void @fMulHandler(double %128, double %129, double %130, i64 94710406176416, i64 94710406176776, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 94710406177184, i32 211, i32 34), !dbg !231
  %131 = load double, double* %16, align 8, !dbg !231
  %132 = load double, double* %16, align 8, !dbg !232
  %133 = fmul double %131, %132, !dbg !233
  call void @fMulHandler(double %131, double %132, double %133, i64 94710406177576, i64 94710406177960, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 94710406178368, i32 211, i32 47), !dbg !234
  %134 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %19, i32 0, i32 0, !dbg !234
  %135 = load double, double* %134, align 8, !dbg !234
  %136 = fmul double %133, %135, !dbg !235
  call void @fMulHandler(double %133, double %135, double %136, i64 94710406178368, i64 94710406179208, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 94710406180880, i32 211, i32 50), !dbg !236
  %137 = fsub double 1.000000e+00, %136, !dbg !236
  call void @fSubHandler(double 1.000000e+00, double %136, double %137, i64 0, i64 94710406180880, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 94710406183392, i32 211, i32 44), !dbg !237
  %138 = fmul double %130, %137, !dbg !237
  call void @fMulHandler(double %130, double %137, double %138, i64 94710406177184, i64 94710406183392, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 94710406183776, i32 211, i32 37), !dbg !238
  %139 = fsub double 1.000000e+00, %138, !dbg !238
  call void @fSubHandler(double 1.000000e+00, double %138, double %139, i64 0, i64 94710406183776, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 94710406184224, i32 211, i32 27), !dbg !239
  %140 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !239
  %141 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %140, i32 0, i32 0, !dbg !240
  store double %139, double* %141, align 8, !dbg !241
  br label %142

; <label>:142:                                    ; preds = %119, %100
  %143 = load double, double* %12, align 8, !dbg !242
  %144 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !243
  %145 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %144, i32 0, i32 0, !dbg !244
  %146 = load double, double* %145, align 8, !dbg !245
  %147 = fmul double %146, %143, !dbg !245
  call void @fMulHandler(double %146, double %143, double %147, i64 94710406187080, i64 94710406185928, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 94710406187488, i32 214, i32 19), !dbg !245
  store double %147, double* %145, align 8, !dbg !245
  %148 = load double, double* %10, align 8, !dbg !246
  %149 = fcmp ogt double %148, 0x4330000000000000, !dbg !248
  %150 = call i1 @fCmpInstHandler(double %148, double 0x4330000000000000, i1 %149, i32 2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 94710406189744, i32 216, i32 16), !dbg !249
  br i1 %150, label %151, label %158, !dbg !249

; <label>:151:                                    ; preds = %142
  %152 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !250
  %153 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %152, i32 0, i32 0, !dbg !252
  %154 = load double, double* %153, align 8, !dbg !252
  %155 = call double @fabs(double %154) #1, !dbg !253
  %156 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !254
  %157 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %156, i32 0, i32 1, !dbg !255
  store double %155, double* %157, align 8, !dbg !256
  br label %195, !dbg !257

; <label>:158:                                    ; preds = %142
  %159 = load double, double* %10, align 8, !dbg !258
  %160 = fcmp ogt double %159, 0x41F9000000000000, !dbg !260
  %161 = call i1 @fCmpInstHandler(double %159, double 0x41F9000000000000, i1 %160, i32 2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 94710406196000, i32 219, i32 21), !dbg !261
  br i1 %161, label %162, label %173, !dbg !261

; <label>:162:                                    ; preds = %158
  %163 = load double, double* %10, align 8, !dbg !262
  %164 = fmul double 2.000000e+00, %163, !dbg !264
  call void @fMulHandler(double 2.000000e+00, double %163, double %164, i64 0, i64 94710406197112, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 94710406197552, i32 220, i32 27), !dbg !265
  %165 = fmul double %164, 0x3CB0000000000000, !dbg !265
  call void @fMulHandler(double %164, double 0x3CB0000000000000, double %165, i64 94710406197552, i64 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 94710406198000, i32 220, i32 35), !dbg !266
  %166 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !266
  %167 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %166, i32 0, i32 0, !dbg !267
  %168 = load double, double* %167, align 8, !dbg !267
  %169 = call double @fabs(double %168) #1, !dbg !268
  %170 = fmul double %165, %169, !dbg !269
  call void @fMulHandler(double %165, double %169, double %170, i64 94710406198000, i64 94710406200960, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 94710406201440, i32 220, i32 53), !dbg !270
  %171 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !270
  %172 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %171, i32 0, i32 1, !dbg !271
  store double %170, double* %172, align 8, !dbg !272
  br label %194, !dbg !273

; <label>:173:                                    ; preds = %158
  %174 = load double, double* %10, align 8, !dbg !274
  %175 = fcmp ogt double %174, 0x415999999999999A, !dbg !276
  %176 = call i1 @fCmpInstHandler(double %174, double 0x415999999999999A, i1 %175, i32 2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 94710406204016, i32 222, i32 21), !dbg !277
  br i1 %176, label %177, label %185, !dbg !277

; <label>:177:                                    ; preds = %173
  %178 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !278
  %179 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %178, i32 0, i32 0, !dbg !280
  %180 = load double, double* %179, align 8, !dbg !280
  %181 = call double @fabs(double %180) #1, !dbg !281
  %182 = fmul double 0x3E60000000000000, %181, !dbg !282
  call void @fMulHandler(double 0x3E60000000000000, double %181, double %182, i64 0, i64 94710406207632, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 94710406208176, i32 223, i32 50), !dbg !283
  %183 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !283
  %184 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %183, i32 0, i32 1, !dbg !284
  store double %182, double* %184, align 8, !dbg !285
  br label %193, !dbg !286

; <label>:185:                                    ; preds = %173
  %186 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !287
  %187 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %186, i32 0, i32 0, !dbg !289
  %188 = load double, double* %187, align 8, !dbg !289
  %189 = call double @fabs(double %188) #1, !dbg !290
  %190 = fmul double 0x3CC0000000000000, %189, !dbg !291
  call void @fMulHandler(double 0x3CC0000000000000, double %189, double %190, i64 0, i64 94710406212848, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 94710406213392, i32 226, i32 45), !dbg !292
  %191 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !292
  %192 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %191, i32 0, i32 1, !dbg !293
  store double %190, double* %192, align 8, !dbg !294
  br label %193

; <label>:193:                                    ; preds = %185, %177
  br label %194

; <label>:194:                                    ; preds = %193, %162
  br label %195

; <label>:195:                                    ; preds = %194, %151
  %196 = load i32, i32* %15, align 4, !dbg !295
  store i32 %196, i32* %3, align 4, !dbg !296
  br label %197, !dbg !296

; <label>:197:                                    ; preds = %195, %31
  %198 = load i32, i32* %3, align 4, !dbg !297
  ret i32 %198, !dbg !297
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readnone
declare double @fabs(double) #2

; Function Attrs: nounwind readnone
declare double @floor(double) #2

; Function Attrs: nounwind
declare double @ldexp(double, i32) #3

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @cheb_eval_e(%struct.cheb_series_struct*, double, %struct.gsl_sf_result_struct*) #4 !dbg !298 {
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
  call void @llvm.dbg.declare(metadata %struct.cheb_series_struct** %4, metadata !304, metadata !85), !dbg !305
  store double %1, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !306, metadata !85), !dbg !307
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %6, metadata !308, metadata !85), !dbg !309
  call void @llvm.dbg.declare(metadata i32* %7, metadata !310, metadata !85), !dbg !311
  call void @llvm.dbg.declare(metadata double* %8, metadata !312, metadata !85), !dbg !313
  store double 0.000000e+00, double* %8, align 8, !dbg !313
  call void @llvm.dbg.declare(metadata double* %9, metadata !314, metadata !85), !dbg !315
  store double 0.000000e+00, double* %9, align 8, !dbg !315
  call void @llvm.dbg.declare(metadata double* %10, metadata !316, metadata !85), !dbg !317
  %15 = load double, double* %5, align 8, !dbg !318
  %16 = fmul double 2.000000e+00, %15, !dbg !319
  call void @fMulHandler(double 2.000000e+00, double %15, double %16, i64 0, i64 94710406160792, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94710406234160, i32 11, i32 19), !dbg !320
  %17 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !320
  %18 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %17, i32 0, i32 2, !dbg !321
  %19 = load double, double* %18, align 8, !dbg !321
  %20 = fsub double %16, %19, !dbg !322
  call void @fSubHandler(double %16, double %19, double %20, i64 94710406234160, i64 94710406119688, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94710406236896, i32 11, i32 22), !dbg !323
  %21 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !323
  %22 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %21, i32 0, i32 3, !dbg !324
  %23 = load double, double* %22, align 8, !dbg !324
  %24 = fsub double %20, %23, !dbg !325
  call void @fSubHandler(double %20, double %23, double %24, i64 94710406236896, i64 94710406059096, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94710406239600, i32 11, i32 30), !dbg !326
  %25 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !326
  %26 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %25, i32 0, i32 3, !dbg !327
  %27 = load double, double* %26, align 8, !dbg !327
  %28 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !328
  %29 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %28, i32 0, i32 2, !dbg !329
  %30 = load double, double* %29, align 8, !dbg !329
  %31 = fsub double %27, %30, !dbg !330
  call void @fSubHandler(double %27, double %30, double %31, i64 94710406240824, i64 94710406243304, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94710406244976, i32 11, i32 48), !dbg !331
  %32 = fdiv double %24, %31, !dbg !331
  call void @fDivHandler(double %24, double %31, double %32, i64 94710406239600, i64 94710406244976, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94710406245392, i32 11, i32 39), !dbg !317
  store double %32, double* %10, align 8, !dbg !317
  call void @llvm.dbg.declare(metadata double* %11, metadata !332, metadata !85), !dbg !333
  %33 = load double, double* %10, align 8, !dbg !334
  %34 = fmul double 2.000000e+00, %33, !dbg !335
  call void @fMulHandler(double 2.000000e+00, double %33, double %34, i64 0, i64 94710406248440, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94710406248848, i32 12, i32 19), !dbg !333
  store double %34, double* %11, align 8, !dbg !333
  call void @llvm.dbg.declare(metadata double* %12, metadata !336, metadata !85), !dbg !337
  store double 0.000000e+00, double* %12, align 8, !dbg !337
  %35 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !338
  %36 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %35, i32 0, i32 1, !dbg !340
  %37 = load i32, i32* %36, align 8, !dbg !340
  store i32 %37, i32* %7, align 4, !dbg !341
  br label %38, !dbg !342

; <label>:38:                                     ; preds = %77, %3
  %39 = load i32, i32* %7, align 4, !dbg !343
  %40 = icmp sge i32 %39, 1, !dbg !346
  %41 = sext i32 %39 to i64, !dbg !347
  %42 = call i1 @iCmpInstHandler(i64 %41, i64 1, i1 %40, i32 39, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94710406257424, i32 16, i32 23), !dbg !347
  br i1 %42, label %43, label %80, !dbg !347

; <label>:43:                                     ; preds = %38
  call void @llvm.dbg.declare(metadata double* %13, metadata !348, metadata !85), !dbg !350
  %44 = load double, double* %8, align 8, !dbg !351
  store double %44, double* %13, align 8, !dbg !350
  %45 = load double, double* %11, align 8, !dbg !352
  %46 = load double, double* %8, align 8, !dbg !353
  %47 = fmul double %45, %46, !dbg !354
  call void @fMulHandler(double %45, double %46, double %47, i64 94710406261624, i64 94710406262008, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94710406262416, i32 18, i32 11), !dbg !355
  %48 = load double, double* %9, align 8, !dbg !355
  %49 = fsub double %47, %48, !dbg !356
  call void @fSubHandler(double %47, double %48, double %49, i64 94710406262416, i64 94710406262808, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94710406263216, i32 18, i32 14), !dbg !357
  %50 = load i32, i32* %7, align 4, !dbg !357
  %51 = sext i32 %50 to i64, !dbg !358
  %52 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !358
  %53 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %52, i32 0, i32 0, !dbg !359
  %54 = load double*, double** %53, align 8, !dbg !359
  %55 = getelementptr inbounds double, double* %54, i64 %51, !dbg !358
  %56 = load double, double* %55, align 8, !dbg !358
  %57 = fadd double %49, %56, !dbg !360
  call void @fAddHandler(double %49, double %56, double %57, i64 94710406263216, i64 94710406268264, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94710406268384, i32 18, i32 19), !dbg !361
  store double %57, double* %8, align 8, !dbg !361
  %58 = load double, double* %11, align 8, !dbg !362
  %59 = load double, double* %13, align 8, !dbg !363
  %60 = fmul double %58, %59, !dbg !364
  call void @fMulHandler(double %58, double %59, double %60, i64 94710406269192, i64 94710406269576, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94710406269984, i32 19, i32 17), !dbg !365
  %61 = call double @fabs(double %60) #1, !dbg !365
  %62 = load double, double* %9, align 8, !dbg !366
  %63 = call double @fabs(double %62) #1, !dbg !367
  %64 = fadd double %61, %63, !dbg !369
  call void @fAddHandler(double %61, double %63, double %64, i64 94710406270464, i64 94710406271392, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94710406271872, i32 19, i32 24), !dbg !370
  %65 = load i32, i32* %7, align 4, !dbg !370
  %66 = sext i32 %65 to i64, !dbg !371
  %67 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !371
  %68 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %67, i32 0, i32 0, !dbg !372
  %69 = load double*, double** %68, align 8, !dbg !372
  %70 = getelementptr inbounds double, double* %69, i64 %66, !dbg !371
  %71 = load double, double* %70, align 8, !dbg !371
  %72 = call double @fabs(double %71) #1, !dbg !373
  %73 = fadd double %64, %72, !dbg !375
  call void @fAddHandler(double %64, double %72, double %73, i64 94710406271872, i64 94710406277104, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94710406277584, i32 19, i32 35), !dbg !376
  %74 = load double, double* %12, align 8, !dbg !376
  %75 = fadd double %74, %73, !dbg !376
  call void @fAddHandler(double %74, double %73, double %75, i64 94710406277976, i64 94710406277584, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94710406278384, i32 19, i32 7), !dbg !376
  store double %75, double* %12, align 8, !dbg !376
  %76 = load double, double* %13, align 8, !dbg !377
  store double %76, double* %9, align 8, !dbg !378
  br label %77, !dbg !379

; <label>:77:                                     ; preds = %43
  %78 = load i32, i32* %7, align 4, !dbg !380
  %79 = add nsw i32 %78, -1, !dbg !380
  store i32 %79, i32* %7, align 4, !dbg !380
  br label %38, !dbg !382, !llvm.loop !383

; <label>:80:                                     ; preds = %38
  call void @llvm.dbg.declare(metadata double* %14, metadata !385, metadata !85), !dbg !387
  %81 = load double, double* %8, align 8, !dbg !388
  store double %81, double* %14, align 8, !dbg !387
  %82 = load double, double* %10, align 8, !dbg !389
  %83 = load double, double* %8, align 8, !dbg !390
  %84 = fmul double %82, %83, !dbg !391
  call void @fMulHandler(double %82, double %83, double %84, i64 94710406291496, i64 94710406291880, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94710406292288, i32 25, i32 10), !dbg !392
  %85 = load double, double* %9, align 8, !dbg !392
  %86 = fsub double %84, %85, !dbg !393
  call void @fSubHandler(double %84, double %85, double %86, i64 94710406292288, i64 94710406292680, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94710406293088, i32 25, i32 13), !dbg !394
  %87 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !394
  %88 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %87, i32 0, i32 0, !dbg !395
  %89 = load double*, double** %88, align 8, !dbg !395
  %90 = getelementptr inbounds double, double* %89, i64 0, !dbg !394
  %91 = load double, double* %90, align 8, !dbg !394
  %92 = fmul double 5.000000e-01, %91, !dbg !396
  call void @fMulHandler(double 5.000000e-01, double %91, double %92, i64 0, i64 94710406297720, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94710406297872, i32 25, i32 24), !dbg !397
  %93 = fadd double %86, %92, !dbg !397
  call void @fAddHandler(double %86, double %92, double %93, i64 94710406293088, i64 94710406297872, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94710406298256, i32 25, i32 18), !dbg !398
  store double %93, double* %8, align 8, !dbg !398
  %94 = load double, double* %10, align 8, !dbg !399
  %95 = load double, double* %14, align 8, !dbg !400
  %96 = fmul double %94, %95, !dbg !401
  call void @fMulHandler(double %94, double %95, double %96, i64 94710406299064, i64 94710406299448, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94710406299856, i32 26, i32 16), !dbg !402
  %97 = call double @fabs(double %96) #1, !dbg !402
  %98 = load double, double* %9, align 8, !dbg !403
  %99 = call double @fabs(double %98) #1, !dbg !404
  %100 = fadd double %97, %99, !dbg !406
  call void @fAddHandler(double %97, double %99, double %100, i64 94710406300336, i64 94710406301264, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94710406301744, i32 26, i32 23), !dbg !407
  %101 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !407
  %102 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %101, i32 0, i32 0, !dbg !408
  %103 = load double*, double** %102, align 8, !dbg !408
  %104 = getelementptr inbounds double, double* %103, i64 0, !dbg !407
  %105 = load double, double* %104, align 8, !dbg !407
  %106 = call double @fabs(double %105) #1, !dbg !409
  %107 = fmul double 5.000000e-01, %106, !dbg !411
  call void @fMulHandler(double 5.000000e-01, double %106, double %107, i64 0, i64 94710406306496, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94710406307008, i32 26, i32 40), !dbg !412
  %108 = fadd double %100, %107, !dbg !412
  call void @fAddHandler(double %100, double %107, double %108, i64 94710406301744, i64 94710406307008, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94710406307392, i32 26, i32 34), !dbg !413
  %109 = load double, double* %12, align 8, !dbg !413
  %110 = fadd double %109, %108, !dbg !413
  call void @fAddHandler(double %109, double %108, double %110, i64 94710406307784, i64 94710406307392, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94710406308192, i32 26, i32 7), !dbg !413
  store double %110, double* %12, align 8, !dbg !413
  %111 = load double, double* %8, align 8, !dbg !414
  %112 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !415
  %113 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %112, i32 0, i32 0, !dbg !416
  store double %111, double* %113, align 8, !dbg !417
  %114 = load double, double* %12, align 8, !dbg !418
  %115 = fmul double 0x3CB0000000000000, %114, !dbg !419
  call void @fMulHandler(double 0x3CB0000000000000, double %114, double %115, i64 0, i64 94710406311608, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94710406312016, i32 30, i32 33), !dbg !420
  %116 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !420
  %117 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %116, i32 0, i32 1, !dbg !421
  %118 = load i32, i32* %117, align 8, !dbg !421
  %119 = sext i32 %118 to i64, !dbg !422
  %120 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !422
  %121 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %120, i32 0, i32 0, !dbg !423
  %122 = load double*, double** %121, align 8, !dbg !423
  %123 = getelementptr inbounds double, double* %122, i64 %119, !dbg !422
  %124 = load double, double* %123, align 8, !dbg !422
  %125 = call double @fabs(double %124) #1, !dbg !424
  %126 = fadd double %115, %125, !dbg !425
  call void @fAddHandler(double %115, double %125, double %126, i64 94710406312016, i64 94710406319344, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94710406319824, i32 30, i32 37), !dbg !426
  %127 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !426
  %128 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %127, i32 0, i32 1, !dbg !427
  store double %126, double* %128, align 8, !dbg !428
  ret i32 0, !dbg !429
}

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_cos_e(double, %struct.gsl_sf_result_struct*) #0 !dbg !430 {
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
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca double, align 8
  %16 = alloca %struct.gsl_sf_result_struct, align 8
  %17 = alloca double, align 8
  %18 = alloca %struct.gsl_sf_result_struct, align 8
  %19 = alloca double, align 8
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !431, metadata !85), !dbg !432
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %5, metadata !433, metadata !85), !dbg !434
  call void @llvm.dbg.declare(metadata double* %6, metadata !435, metadata !85), !dbg !437
  store double 0x3FE921FB40000000, double* %6, align 8, !dbg !437
  call void @llvm.dbg.declare(metadata double* %7, metadata !438, metadata !85), !dbg !439
  store double 0x3E64442D00000000, double* %7, align 8, !dbg !439
  call void @llvm.dbg.declare(metadata double* %8, metadata !440, metadata !85), !dbg !441
  store double 0x3CE8469898CC5170, double* %8, align 8, !dbg !441
  call void @llvm.dbg.declare(metadata double* %9, metadata !442, metadata !85), !dbg !443
  %20 = load double, double* %4, align 8, !dbg !444
  %21 = call double @fabs(double %20) #1, !dbg !445
  store double %21, double* %9, align 8, !dbg !443
  %22 = load double, double* %9, align 8, !dbg !446
  %23 = fcmp olt double %22, 0x3F20000000000000, !dbg !448
  %24 = call i1 @fCmpInstHandler(double %22, double 0x3F20000000000000, i1 %23, i32 4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94710406340272, i32 247, i32 14), !dbg !449
  br i1 %24, label %25, label %41, !dbg !449

; <label>:25:                                     ; preds = %2
  call void @llvm.dbg.declare(metadata double* %10, metadata !450, metadata !85), !dbg !452
  %26 = load double, double* %4, align 8, !dbg !453
  %27 = load double, double* %4, align 8, !dbg !454
  %28 = fmul double %26, %27, !dbg !455
  call void @fMulHandler(double %26, double %27, double %28, i64 94710406342440, i64 94710406342792, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94710406343200, i32 248, i32 26), !dbg !452
  store double %28, double* %10, align 8, !dbg !452
  %29 = load double, double* %10, align 8, !dbg !456
  %30 = fmul double 5.000000e-01, %29, !dbg !457
  call void @fMulHandler(double 5.000000e-01, double %29, double %30, i64 0, i64 94710406345272, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94710406345712, i32 249, i32 30), !dbg !458
  %31 = fsub double 1.000000e+00, %30, !dbg !458
  call void @fSubHandler(double 1.000000e+00, double %30, double %31, i64 0, i64 94710406345712, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94710406346128, i32 249, i32 25), !dbg !459
  %32 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !459
  %33 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %32, i32 0, i32 0, !dbg !460
  store double %31, double* %33, align 8, !dbg !461
  %34 = load double, double* %10, align 8, !dbg !462
  %35 = load double, double* %10, align 8, !dbg !463
  %36 = fmul double %34, %35, !dbg !464
  call void @fMulHandler(double %34, double %35, double %36, i64 94710406347736, i64 94710406348120, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94710406348528, i32 250, i32 28), !dbg !465
  %37 = fdiv double %36, 1.200000e+01, !dbg !465
  call void @fDivHandler(double %36, double 1.200000e+01, double %37, i64 94710406348528, i64 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94710406349040, i32 250, i32 31), !dbg !466
  %38 = call double @fabs(double %37) #1, !dbg !466
  %39 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !467
  %40 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %39, i32 0, i32 1, !dbg !468
  store double %38, double* %40, align 8, !dbg !469
  store i32 0, i32* %3, align 4, !dbg !470
  br label %194, !dbg !470

; <label>:41:                                     ; preds = %2
  call void @llvm.dbg.declare(metadata double* %11, metadata !471, metadata !85), !dbg !473
  store double 1.000000e+00, double* %11, align 8, !dbg !473
  call void @llvm.dbg.declare(metadata double* %12, metadata !474, metadata !85), !dbg !475
  %42 = load double, double* %9, align 8, !dbg !476
  %43 = fdiv double %42, 0x3FE921FB54442D18, !dbg !477
  call void @fDivHandler(double %42, double 0x3FE921FB54442D18, double %43, i64 94710406357224, i64 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94710406357600, i32 255, i32 29), !dbg !478
  %44 = call double @floor(double %43) #1, !dbg !478
  store double %44, double* %12, align 8, !dbg !475
  call void @llvm.dbg.declare(metadata i32* %13, metadata !479, metadata !85), !dbg !480
  %45 = load double, double* %12, align 8, !dbg !481
  %46 = load double, double* %12, align 8, !dbg !482
  %47 = call double @ldexp(double %46, i32 -3) #6, !dbg !483
  %48 = call double @floor(double %47) #1, !dbg !484
  %49 = call double @ldexp(double %48, i32 3) #6, !dbg !486
  %50 = fsub double %45, %49, !dbg !488
  call void @fSubHandler(double %45, double %49, double %50, i64 94710406361336, i64 94710406363320, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94710406363792, i32 256, i32 22), !dbg !481
  %51 = fptosi double %50 to i32, !dbg !481
  store i32 %51, i32* %13, align 4, !dbg !480
  call void @llvm.dbg.declare(metadata i32* %14, metadata !489, metadata !85), !dbg !490
  call void @llvm.dbg.declare(metadata double* %15, metadata !491, metadata !85), !dbg !492
  %52 = load i32, i32* %13, align 4, !dbg !493
  %53 = and i32 %52, 1, !dbg !493
  %54 = icmp ne i32 %53, 0, !dbg !493
  %55 = sext i32 %53 to i64, !dbg !495
  %56 = call i1 @iCmpInstHandler(i64 %55, i64 0, i1 %54, i32 33, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94710406371744, i32 260, i32 10), !dbg !495
  br i1 %56, label %57, label %64, !dbg !495

; <label>:57:                                     ; preds = %41
  %58 = load i32, i32* %13, align 4, !dbg !496
  %59 = add nsw i32 %58, 1, !dbg !496
  store i32 %59, i32* %13, align 4, !dbg !496
  %60 = load i32, i32* %13, align 4, !dbg !498
  %61 = and i32 %60, 7, !dbg !498
  store i32 %61, i32* %13, align 4, !dbg !498
  %62 = load double, double* %12, align 8, !dbg !499
  %63 = fadd double %62, 1.000000e+00, !dbg !499
  call void @fAddHandler(double %62, double 1.000000e+00, double %63, i64 94710406376888, i64 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94710406377328, i32 263, i32 11), !dbg !499
  store double %63, double* %12, align 8, !dbg !499
  br label %64, !dbg !500

; <label>:64:                                     ; preds = %57, %41
  %65 = load i32, i32* %13, align 4, !dbg !501
  %66 = icmp sgt i32 %65, 3, !dbg !503
  %67 = sext i32 %65 to i64, !dbg !504
  %68 = call i1 @iCmpInstHandler(i64 %67, i64 3, i1 %66, i32 38, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94710406379808, i32 266, i32 17), !dbg !504
  br i1 %68, label %69, label %74, !dbg !504

; <label>:69:                                     ; preds = %64
  %70 = load i32, i32* %13, align 4, !dbg !505
  %71 = sub nsw i32 %70, 4, !dbg !505
  store i32 %71, i32* %13, align 4, !dbg !505
  %72 = load double, double* %11, align 8, !dbg !507
  %73 = fsub double -0.000000e+00, %72, !dbg !508
  call void @fSubHandler(double -0.000000e+00, double %72, double %73, i64 0, i64 94710406383048, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94710406383456, i32 268, i32 22), !dbg !509
  store double %73, double* %11, align 8, !dbg !509
  br label %74, !dbg !510

; <label>:74:                                     ; preds = %69, %64
  %75 = load i32, i32* %13, align 4, !dbg !511
  %76 = icmp sgt i32 %75, 1, !dbg !513
  %77 = sext i32 %75 to i64, !dbg !514
  %78 = call i1 @iCmpInstHandler(i64 %77, i64 1, i1 %76, i32 38, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94710406384992, i32 271, i32 17), !dbg !514
  br i1 %78, label %79, label %82, !dbg !514

; <label>:79:                                     ; preds = %74
  %80 = load double, double* %11, align 8, !dbg !515
  %81 = fsub double -0.000000e+00, %80, !dbg !517
  call void @fSubHandler(double -0.000000e+00, double %80, double %81, i64 0, i64 94710406386104, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94710406386448, i32 272, i32 22), !dbg !518
  store double %81, double* %11, align 8, !dbg !518
  br label %82, !dbg !519

; <label>:82:                                     ; preds = %79, %74
  %83 = load double, double* %9, align 8, !dbg !520
  %84 = load double, double* %12, align 8, !dbg !521
  %85 = fmul double %84, 0x3FE921FB40000000, !dbg !522
  call void @fMulHandler(double %84, double 0x3FE921FB40000000, double %85, i64 94710406387960, i64 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94710406388368, i32 275, i32 23), !dbg !523
  %86 = fsub double %83, %85, !dbg !523
  call void @fSubHandler(double %83, double %85, double %86, i64 94710406387640, i64 94710406388368, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94710406388784, i32 275, i32 19), !dbg !524
  %87 = load double, double* %12, align 8, !dbg !524
  %88 = fmul double %87, 0x3E64442D00000000, !dbg !525
  call void @fMulHandler(double %87, double 0x3E64442D00000000, double %88, i64 94710406389176, i64 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94710406389584, i32 275, i32 33), !dbg !526
  %89 = fsub double %86, %88, !dbg !526
  call void @fSubHandler(double %86, double %88, double %89, i64 94710406388784, i64 94710406389584, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94710406390000, i32 275, i32 29), !dbg !527
  %90 = load double, double* %12, align 8, !dbg !527
  %91 = fmul double %90, 0x3CE8469898CC5170, !dbg !528
  call void @fMulHandler(double %90, double 0x3CE8469898CC5170, double %91, i64 94710406390392, i64 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94710406390800, i32 275, i32 43), !dbg !529
  %92 = fsub double %89, %91, !dbg !529
  call void @fSubHandler(double %89, double %91, double %92, i64 94710406390000, i64 94710406390800, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94710406391216, i32 275, i32 39), !dbg !530
  store double %92, double* %15, align 8, !dbg !530
  %93 = load i32, i32* %13, align 4, !dbg !531
  %94 = icmp eq i32 %93, 0, !dbg !533
  %95 = sext i32 %93 to i64, !dbg !534
  %96 = call i1 @iCmpInstHandler(i64 %95, i64 0, i1 %94, i32 32, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94710406392432, i32 277, i32 17), !dbg !534
  br i1 %96, label %97, label %120, !dbg !534

; <label>:97:                                     ; preds = %82
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %16, metadata !535, metadata !85), !dbg !537
  call void @llvm.dbg.declare(metadata double* %17, metadata !538, metadata !85), !dbg !539
  %98 = load double, double* %15, align 8, !dbg !540
  %99 = call double @fabs(double %98) #1, !dbg !541
  %100 = fmul double 8.000000e+00, %99, !dbg !542
  call void @fMulHandler(double 8.000000e+00, double %99, double %100, i64 0, i64 94710406396128, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94710406396640, i32 279, i32 29), !dbg !543
  %101 = fdiv double %100, 0x400921FB54442D18, !dbg !543
  call void @fDivHandler(double %100, double 0x400921FB54442D18, double %101, i64 94710406396640, i64 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94710406397024, i32 279, i32 37), !dbg !544
  %102 = fsub double %101, 1.000000e+00, !dbg !544
  call void @fSubHandler(double %101, double 1.000000e+00, double %102, i64 94710406397024, i64 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94710406397472, i32 279, i32 43), !dbg !539
  store double %102, double* %17, align 8, !dbg !539
  %103 = load double, double* %17, align 8, !dbg !545
  %104 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @cos_cs, double %103, %struct.gsl_sf_result_struct* %16), !dbg !546
  store i32 %104, i32* %14, align 4, !dbg !547
  %105 = load double, double* %15, align 8, !dbg !548
  %106 = fmul double 5.000000e-01, %105, !dbg !549
  call void @fMulHandler(double 5.000000e-01, double %105, double %106, i64 0, i64 94710406400872, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94710406401312, i32 281, i32 32), !dbg !550
  %107 = load double, double* %15, align 8, !dbg !550
  %108 = fmul double %106, %107, !dbg !551
  call void @fMulHandler(double %106, double %107, double %108, i64 94710406401312, i64 94710406401672, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94710406402080, i32 281, i32 34), !dbg !552
  %109 = load double, double* %15, align 8, !dbg !552
  %110 = load double, double* %15, align 8, !dbg !553
  %111 = fmul double %109, %110, !dbg !554
  call void @fMulHandler(double %109, double %110, double %111, i64 94710406402472, i64 94710406402856, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94710406403264, i32 281, i32 47), !dbg !555
  %112 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %16, i32 0, i32 0, !dbg !555
  %113 = load double, double* %112, align 8, !dbg !555
  %114 = fmul double %111, %113, !dbg !556
  call void @fMulHandler(double %111, double %113, double %114, i64 94710406403264, i64 94710406404104, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94710406405776, i32 281, i32 50), !dbg !557
  %115 = fsub double 1.000000e+00, %114, !dbg !557
  call void @fSubHandler(double 1.000000e+00, double %114, double %115, i64 0, i64 94710406405776, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94710406406224, i32 281, i32 44), !dbg !558
  %116 = fmul double %108, %115, !dbg !558
  call void @fMulHandler(double %108, double %115, double %116, i64 94710406402080, i64 94710406406224, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94710406406608, i32 281, i32 37), !dbg !559
  %117 = fsub double 1.000000e+00, %116, !dbg !559
  call void @fSubHandler(double 1.000000e+00, double %116, double %117, i64 0, i64 94710406406608, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94710406407056, i32 281, i32 27), !dbg !560
  %118 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !560
  %119 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %118, i32 0, i32 0, !dbg !561
  store double %117, double* %119, align 8, !dbg !562
  br label %139, !dbg !563

; <label>:120:                                    ; preds = %82
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %18, metadata !564, metadata !85), !dbg !566
  call void @llvm.dbg.declare(metadata double* %19, metadata !567, metadata !85), !dbg !568
  %121 = load double, double* %15, align 8, !dbg !569
  %122 = call double @fabs(double %121) #1, !dbg !570
  %123 = fmul double 8.000000e+00, %122, !dbg !571
  call void @fMulHandler(double 8.000000e+00, double %122, double %123, i64 0, i64 94710406411776, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94710406412288, i32 285, i32 29), !dbg !572
  %124 = fdiv double %123, 0x400921FB54442D18, !dbg !572
  call void @fDivHandler(double %123, double 0x400921FB54442D18, double %124, i64 94710406412288, i64 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94710406412672, i32 285, i32 37), !dbg !573
  %125 = fsub double %124, 1.000000e+00, !dbg !573
  call void @fSubHandler(double %124, double 1.000000e+00, double %125, i64 94710406412672, i64 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94710406413120, i32 285, i32 43), !dbg !568
  store double %125, double* %19, align 8, !dbg !568
  %126 = load double, double* %19, align 8, !dbg !574
  %127 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @sin_cs, double %126, %struct.gsl_sf_result_struct* %18), !dbg !575
  store i32 %127, i32* %14, align 4, !dbg !576
  %128 = load double, double* %15, align 8, !dbg !577
  %129 = load double, double* %15, align 8, !dbg !578
  %130 = load double, double* %15, align 8, !dbg !579
  %131 = fmul double %129, %130, !dbg !580
  call void @fMulHandler(double %129, double %130, double %131, i64 94710406416904, i64 94710406417288, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94710406417696, i32 287, i32 35), !dbg !581
  %132 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %18, i32 0, i32 0, !dbg !581
  %133 = load double, double* %132, align 8, !dbg !581
  %134 = fmul double %131, %133, !dbg !582
  call void @fMulHandler(double %131, double %133, double %134, i64 94710406417696, i64 94710406418536, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94710406420208, i32 287, i32 38), !dbg !583
  %135 = fadd double 1.000000e+00, %134, !dbg !583
  call void @fAddHandler(double 1.000000e+00, double %134, double %135, i64 0, i64 94710406420208, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94710406420656, i32 287, i32 32), !dbg !584
  %136 = fmul double %128, %135, !dbg !584
  call void @fMulHandler(double %128, double %135, double %136, i64 94710406416520, i64 94710406420656, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94710406421040, i32 287, i32 25), !dbg !585
  %137 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !585
  %138 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %137, i32 0, i32 0, !dbg !586
  store double %136, double* %138, align 8, !dbg !587
  br label %139

; <label>:139:                                    ; preds = %120, %97
  %140 = load double, double* %11, align 8, !dbg !588
  %141 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !589
  %142 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %141, i32 0, i32 0, !dbg !590
  %143 = load double, double* %142, align 8, !dbg !591
  %144 = fmul double %143, %140, !dbg !591
  call void @fMulHandler(double %143, double %140, double %144, i64 94710406425992, i64 94710406424840, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94710406426400, i32 290, i32 19), !dbg !591
  store double %144, double* %142, align 8, !dbg !591
  %145 = load double, double* %9, align 8, !dbg !592
  %146 = fcmp ogt double %145, 0x4330000000000000, !dbg !594
  %147 = call i1 @fCmpInstHandler(double %145, double 0x4330000000000000, i1 %146, i32 2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94710406428592, i32 292, i32 16), !dbg !595
  br i1 %147, label %148, label %155, !dbg !595

; <label>:148:                                    ; preds = %139
  %149 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !596
  %150 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %149, i32 0, i32 0, !dbg !598
  %151 = load double, double* %150, align 8, !dbg !598
  %152 = call double @fabs(double %151) #1, !dbg !599
  %153 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !600
  %154 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %153, i32 0, i32 1, !dbg !601
  store double %152, double* %154, align 8, !dbg !602
  br label %192, !dbg !603

; <label>:155:                                    ; preds = %139
  %156 = load double, double* %9, align 8, !dbg !604
  %157 = fcmp ogt double %156, 0x41F9000000000000, !dbg !606
  %158 = call i1 @fCmpInstHandler(double %156, double 0x41F9000000000000, i1 %157, i32 2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94710406434784, i32 295, i32 21), !dbg !607
  br i1 %158, label %159, label %170, !dbg !607

; <label>:159:                                    ; preds = %155
  %160 = load double, double* %9, align 8, !dbg !608
  %161 = fmul double 2.000000e+00, %160, !dbg !610
  call void @fMulHandler(double 2.000000e+00, double %160, double %161, i64 0, i64 94710406435896, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94710406436272, i32 296, i32 27), !dbg !611
  %162 = fmul double %161, 0x3CB0000000000000, !dbg !611
  call void @fMulHandler(double %161, double 0x3CB0000000000000, double %162, i64 94710406436272, i64 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94710406436656, i32 296, i32 35), !dbg !612
  %163 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !612
  %164 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %163, i32 0, i32 0, !dbg !613
  %165 = load double, double* %164, align 8, !dbg !613
  %166 = call double @fabs(double %165) #1, !dbg !614
  %167 = fmul double %162, %166, !dbg !615
  call void @fMulHandler(double %162, double %166, double %167, i64 94710406436656, i64 94710406439616, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94710406440096, i32 296, i32 53), !dbg !616
  %168 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !616
  %169 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %168, i32 0, i32 1, !dbg !617
  store double %167, double* %169, align 8, !dbg !618
  br label %191, !dbg !619

; <label>:170:                                    ; preds = %155
  %171 = load double, double* %9, align 8, !dbg !620
  %172 = fcmp ogt double %171, 0x415999999999999A, !dbg !622
  %173 = call i1 @fCmpInstHandler(double %171, double 0x415999999999999A, i1 %172, i32 2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94710406442608, i32 298, i32 21), !dbg !623
  br i1 %173, label %174, label %182, !dbg !623

; <label>:174:                                    ; preds = %170
  %175 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !624
  %176 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %175, i32 0, i32 0, !dbg !626
  %177 = load double, double* %176, align 8, !dbg !626
  %178 = call double @fabs(double %177) #1, !dbg !627
  %179 = fmul double 0x3E60000000000000, %178, !dbg !628
  call void @fMulHandler(double 0x3E60000000000000, double %178, double %179, i64 0, i64 94710406446224, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94710406446704, i32 299, i32 50), !dbg !629
  %180 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !629
  %181 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %180, i32 0, i32 1, !dbg !630
  store double %179, double* %181, align 8, !dbg !631
  br label %190, !dbg !632

; <label>:182:                                    ; preds = %170
  %183 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !633
  %184 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %183, i32 0, i32 0, !dbg !635
  %185 = load double, double* %184, align 8, !dbg !635
  %186 = call double @fabs(double %185) #1, !dbg !636
  %187 = fmul double 0x3CC0000000000000, %186, !dbg !637
  call void @fMulHandler(double 0x3CC0000000000000, double %186, double %187, i64 0, i64 94710406451376, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94710406451856, i32 302, i32 45), !dbg !638
  %188 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !638
  %189 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %188, i32 0, i32 1, !dbg !639
  store double %187, double* %189, align 8, !dbg !640
  br label %190

; <label>:190:                                    ; preds = %182, %174
  br label %191

; <label>:191:                                    ; preds = %190, %159
  br label %192

; <label>:192:                                    ; preds = %191, %148
  %193 = load i32, i32* %14, align 4, !dbg !641
  store i32 %193, i32* %3, align 4, !dbg !642
  br label %194, !dbg !642

; <label>:194:                                    ; preds = %192, %25
  %195 = load i32, i32* %3, align 4, !dbg !643
  ret i32 %195, !dbg !643
}

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_hypot_e(double, double, %struct.gsl_sf_result_struct*) #0 !dbg !644 {
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca %struct.gsl_sf_result_struct*, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  store double %0, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !647, metadata !85), !dbg !648
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !649, metadata !85), !dbg !650
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %7, metadata !651, metadata !85), !dbg !652
  %14 = load double, double* %5, align 8, !dbg !653
  %15 = fcmp oeq double %14, 0.000000e+00, !dbg !655
  %16 = call i1 @fCmpInstHandler(double %14, double 0.000000e+00, i1 %15, i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @7, i32 0, i32 0), i64 94710406462208, i32 316, i32 8), !dbg !656
  br i1 %16, label %17, label %26, !dbg !656

; <label>:17:                                     ; preds = %3
  %18 = load double, double* %6, align 8, !dbg !657
  %19 = fcmp oeq double %18, 0.000000e+00, !dbg !659
  %20 = call i1 @fCmpInstHandler(double %18, double 0.000000e+00, i1 %19, i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @7, i32 0, i32 0), i64 94710406463664, i32 316, i32 20), !dbg !660
  br i1 %20, label %21, label %26, !dbg !660

; <label>:21:                                     ; preds = %17
  %22 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !661
  %23 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %22, i32 0, i32 0, !dbg !663
  store double 0.000000e+00, double* %23, align 8, !dbg !664
  %24 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !665
  %25 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %24, i32 0, i32 1, !dbg !666
  store double 0.000000e+00, double* %25, align 8, !dbg !667
  store i32 0, i32* %4, align 4, !dbg !668
  br label %73, !dbg !668

; <label>:26:                                     ; preds = %17, %3
  call void @llvm.dbg.declare(metadata double* %8, metadata !669, metadata !85), !dbg !671
  %27 = load double, double* %5, align 8, !dbg !672
  %28 = call double @fabs(double %27) #1, !dbg !673
  store double %28, double* %8, align 8, !dbg !671
  call void @llvm.dbg.declare(metadata double* %9, metadata !674, metadata !85), !dbg !675
  %29 = load double, double* %6, align 8, !dbg !676
  %30 = call double @fabs(double %29) #1, !dbg !677
  store double %30, double* %9, align 8, !dbg !675
  call void @llvm.dbg.declare(metadata double* %10, metadata !678, metadata !85), !dbg !679
  %31 = load double, double* %8, align 8, !dbg !680
  %32 = load double, double* %9, align 8, !dbg !681
  %33 = call double @GSL_MIN_DBL(double %31, double %32), !dbg !682
  store double %33, double* %10, align 8, !dbg !679
  call void @llvm.dbg.declare(metadata double* %11, metadata !683, metadata !85), !dbg !684
  %34 = load double, double* %8, align 8, !dbg !685
  %35 = load double, double* %9, align 8, !dbg !686
  %36 = call double @GSL_MAX_DBL(double %34, double %35), !dbg !687
  store double %36, double* %11, align 8, !dbg !684
  call void @llvm.dbg.declare(metadata double* %12, metadata !688, metadata !85), !dbg !689
  %37 = load double, double* %10, align 8, !dbg !690
  %38 = load double, double* %11, align 8, !dbg !691
  %39 = fdiv double %37, %38, !dbg !692
  call void @fDivHandler(double %37, double %38, double %39, i64 94710406490552, i64 94710406490904, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @7, i32 0, i32 0), i64 94710406491312, i32 326, i32 27), !dbg !689
  store double %39, double* %12, align 8, !dbg !689
  call void @llvm.dbg.declare(metadata double* %13, metadata !693, metadata !85), !dbg !694
  %40 = load double, double* %12, align 8, !dbg !695
  %41 = load double, double* %12, align 8, !dbg !696
  %42 = fmul double %40, %41, !dbg !697
  call void @fMulHandler(double %40, double %41, double %42, i64 94710406494504, i64 94710406494856, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @7, i32 0, i32 0), i64 94710406495264, i32 327, i32 44), !dbg !698
  %43 = fadd double 1.000000e+00, %42, !dbg !698
  call void @fAddHandler(double 1.000000e+00, double %42, double %43, i64 0, i64 94710406495264, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @7, i32 0, i32 0), i64 94710406495712, i32 327, i32 39), !dbg !699
  %44 = call double @sqrt(double %43) #6, !dbg !699
  call void @callOneArgHandler(i32 14, double %43, double %44, i64 94710406495712, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @7, i32 0, i32 0), i64 94710406496432, i32 327, i32 30), !dbg !694
  store double %44, double* %13, align 8, !dbg !694
  %45 = load double, double* %11, align 8, !dbg !700
  %46 = load double, double* %13, align 8, !dbg !702
  %47 = fdiv double 0x7FEFFFFFFFFFFFFF, %46, !dbg !703
  call void @fDivHandler(double 0x7FEFFFFFFFFFFFFF, double %46, double %47, i64 0, i64 94710406498984, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @7, i32 0, i32 0), i64 94710406499456, i32 329, i32 25), !dbg !704
  %48 = fcmp olt double %45, %47, !dbg !704
  %49 = call i1 @fCmpInstHandler(double %45, double %47, i1 %48, i32 4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @7, i32 0, i32 0), i64 94710406499872, i32 329, i32 12), !dbg !705
  br i1 %49, label %50, label %63, !dbg !705

; <label>:50:                                     ; preds = %26
  %51 = load double, double* %11, align 8, !dbg !706
  %52 = load double, double* %13, align 8, !dbg !708
  %53 = fmul double %51, %52, !dbg !709
  call void @fMulHandler(double %51, double %52, double %53, i64 94710406500984, i64 94710406501304, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @7, i32 0, i32 0), i64 94710406501712, i32 330, i32 25), !dbg !710
  %54 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !710
  %55 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %54, i32 0, i32 0, !dbg !711
  store double %53, double* %55, align 8, !dbg !712
  %56 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !713
  %57 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %56, i32 0, i32 0, !dbg !714
  %58 = load double, double* %57, align 8, !dbg !714
  %59 = call double @fabs(double %58) #1, !dbg !715
  %60 = fmul double 0x3CC0000000000000, %59, !dbg !716
  call void @fMulHandler(double 0x3CC0000000000000, double %59, double %60, i64 0, i64 94710406505920, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @7, i32 0, i32 0), i64 94710406506400, i32 331, i32 43), !dbg !717
  %61 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !717
  %62 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %61, i32 0, i32 1, !dbg !718
  store double %60, double* %62, align 8, !dbg !719
  store i32 0, i32* %4, align 4, !dbg !720
  br label %73, !dbg !720

; <label>:63:                                     ; preds = %26
  br label %64, !dbg !721, !llvm.loop !723

; <label>:64:                                     ; preds = %63
  %65 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !724
  %66 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %65, i32 0, i32 0, !dbg !724
  store double 0x7FF0000000000000, double* %66, align 8, !dbg !724
  %67 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !724
  %68 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %67, i32 0, i32 1, !dbg !724
  store double 0x7FF0000000000000, double* %68, align 8, !dbg !724
  br label %69, !dbg !724, !llvm.loop !727

; <label>:69:                                     ; preds = %64
  call void @gsl_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 335, i32 16), !dbg !729
  store i32 16, i32* %4, align 4, !dbg !729
  br label %73, !dbg !729
                                                  ; No predecessors!
  br label %71, !dbg !732

; <label>:71:                                     ; preds = %70
  br label %72

; <label>:72:                                     ; preds = %71
  br label %73

; <label>:73:                                     ; preds = %72, %69, %50, %21
  %74 = load i32, i32* %4, align 4, !dbg !734
  ret i32 %74, !dbg !734
}

declare double @GSL_MIN_DBL(double, double) #5

declare double @GSL_MAX_DBL(double, double) #5

; Function Attrs: nounwind
declare double @sqrt(double) #3

declare void @gsl_error(i8*, i8*, i32, i32) #5

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_complex_sin_e(double, double, %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct*) #0 !dbg !735 {
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
  store double %0, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !738, metadata !85), !dbg !739
  store double %1, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !740, metadata !85), !dbg !741
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %8, metadata !742, metadata !85), !dbg !743
  store %struct.gsl_sf_result_struct* %3, %struct.gsl_sf_result_struct** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %9, metadata !744, metadata !85), !dbg !745
  %15 = load double, double* %7, align 8, !dbg !746
  %16 = call double @fabs(double %15) #1, !dbg !748
  %17 = fcmp olt double %16, 1.000000e+00, !dbg !749
  %18 = call i1 @fCmpInstHandler(double %16, double 1.000000e+00, i1 %17, i32 4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @9, i32 0, i32 0), i64 94710406528848, i32 348, i32 15), !dbg !750
  br i1 %18, label %19, label %51, !dbg !750

; <label>:19:                                     ; preds = %4
  call void @llvm.dbg.declare(metadata double* %10, metadata !751, metadata !85), !dbg !753
  call void @llvm.dbg.declare(metadata double* %11, metadata !754, metadata !85), !dbg !755
  %20 = load double, double* %7, align 8, !dbg !756
  %21 = call i32 @sinh_series(double %20, double* %11), !dbg !757
  %22 = load double, double* %7, align 8, !dbg !758
  %23 = call i32 @cosh_m1_series(double %22, double* %10), !dbg !759
  %24 = load double, double* %6, align 8, !dbg !760
  %25 = call double @sin(double %24) #6, !dbg !761
  call void @callOneArgHandler(i32 1, double %24, double %25, i64 94710406534104, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @9, i32 0, i32 0), i64 94710406534864, i32 352, i32 16), !dbg !762
  %26 = load double, double* %10, align 8, !dbg !762
  %27 = fadd double %26, 1.000000e+00, !dbg !763
  call void @fAddHandler(double %26, double 1.000000e+00, double %27, i64 94710406535352, i64 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @9, i32 0, i32 0), i64 94710406535792, i32 352, i32 31), !dbg !764
  %28 = fmul double %25, %27, !dbg !764
  call void @fMulHandler(double %25, double %27, double %28, i64 94710406534864, i64 94710406535792, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @9, i32 0, i32 0), i64 94710406536176, i32 352, i32 23), !dbg !765
  %29 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !765
  %30 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %29, i32 0, i32 0, !dbg !766
  store double %28, double* %30, align 8, !dbg !767
  %31 = load double, double* %6, align 8, !dbg !768
  %32 = call double @cos(double %31) #6, !dbg !769
  call void @callOneArgHandler(i32 2, double %31, double %32, i64 94710406537816, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @9, i32 0, i32 0), i64 94710406538608, i32 353, i32 16), !dbg !770
  %33 = load double, double* %11, align 8, !dbg !770
  %34 = fmul double %32, %33, !dbg !771
  call void @fMulHandler(double %32, double %33, double %34, i64 94710406538608, i64 94710406539096, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @9, i32 0, i32 0), i64 94710406539504, i32 353, i32 23), !dbg !772
  %35 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !772
  %36 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %35, i32 0, i32 0, !dbg !773
  store double %34, double* %36, align 8, !dbg !774
  %37 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !775
  %38 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %37, i32 0, i32 0, !dbg !776
  %39 = load double, double* %38, align 8, !dbg !776
  %40 = call double @fabs(double %39) #1, !dbg !777
  %41 = fmul double 0x3CC0000000000000, %40, !dbg !778
  call void @fMulHandler(double 0x3CC0000000000000, double %40, double %41, i64 0, i64 94710406543712, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @9, i32 0, i32 0), i64 94710406544192, i32 354, i32 38), !dbg !779
  %42 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !779
  %43 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %42, i32 0, i32 1, !dbg !780
  store double %41, double* %43, align 8, !dbg !781
  %44 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !782
  %45 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %44, i32 0, i32 0, !dbg !783
  %46 = load double, double* %45, align 8, !dbg !783
  %47 = call double @fabs(double %46) #1, !dbg !784
  %48 = fmul double 0x3CC0000000000000, %47, !dbg !785
  call void @fMulHandler(double 0x3CC0000000000000, double %47, double %48, i64 0, i64 94710406548400, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @9, i32 0, i32 0), i64 94710406548880, i32 355, i32 38), !dbg !786
  %49 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !786
  %50 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %49, i32 0, i32 1, !dbg !787
  store double %48, double* %50, align 8, !dbg !788
  store i32 0, i32* %5, align 4, !dbg !789
  br label %109, !dbg !789

; <label>:51:                                     ; preds = %4
  %52 = load double, double* %7, align 8, !dbg !790
  %53 = call double @fabs(double %52) #1, !dbg !792
  %54 = fcmp olt double %53, 0x40862E42FEFA39EF, !dbg !793
  %55 = call i1 @fCmpInstHandler(double %53, double 0x40862E42FEFA39EF, i1 %54, i32 4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @9, i32 0, i32 0), i64 94710406553680, i32 358, i32 20), !dbg !794
  br i1 %55, label %56, label %95, !dbg !794

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.declare(metadata double* %12, metadata !795, metadata !85), !dbg !797
  %57 = load double, double* %7, align 8, !dbg !798
  %58 = call double @exp(double %57) #6, !dbg !799
  call void @callOneArgHandler(i32 11, double %57, double %58, i64 94710406555944, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @9, i32 0, i32 0), i64 94710406556656, i32 359, i32 17), !dbg !797
  store double %58, double* %12, align 8, !dbg !797
  call void @llvm.dbg.declare(metadata double* %13, metadata !800, metadata !85), !dbg !801
  %59 = load double, double* %12, align 8, !dbg !802
  %60 = load double, double* %12, align 8, !dbg !803
  %61 = fdiv double 1.000000e+00, %60, !dbg !804
  call void @fDivHandler(double 1.000000e+00, double %60, double %61, i64 0, i64 94710406560344, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @9, i32 0, i32 0), i64 94710406560784, i32 360, i32 28), !dbg !805
  %62 = fadd double %59, %61, !dbg !805
  call void @fAddHandler(double %59, double %61, double %62, i64 94710406559992, i64 94710406560784, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @9, i32 0, i32 0), i64 94710406561168, i32 360, i32 24), !dbg !806
  %63 = fmul double 5.000000e-01, %62, !dbg !806
  call void @fMulHandler(double 5.000000e-01, double %62, double %63, i64 0, i64 94710406561168, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @9, i32 0, i32 0), i64 94710406561616, i32 360, i32 20), !dbg !801
  store double %63, double* %13, align 8, !dbg !801
  call void @llvm.dbg.declare(metadata double* %14, metadata !807, metadata !85), !dbg !808
  %64 = load double, double* %12, align 8, !dbg !809
  %65 = load double, double* %12, align 8, !dbg !810
  %66 = fdiv double 1.000000e+00, %65, !dbg !811
  call void @fDivHandler(double 1.000000e+00, double %65, double %66, i64 0, i64 94710406565128, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @9, i32 0, i32 0), i64 94710406565568, i32 361, i32 28), !dbg !812
  %67 = fsub double %64, %66, !dbg !812
  call void @fSubHandler(double %64, double %66, double %67, i64 94710406564776, i64 94710406565568, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @9, i32 0, i32 0), i64 94710406565952, i32 361, i32 24), !dbg !813
  %68 = fmul double 5.000000e-01, %67, !dbg !813
  call void @fMulHandler(double 5.000000e-01, double %67, double %68, i64 0, i64 94710406565952, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @9, i32 0, i32 0), i64 94710406566400, i32 361, i32 20), !dbg !808
  store double %68, double* %14, align 8, !dbg !808
  %69 = load double, double* %6, align 8, !dbg !814
  %70 = call double @sin(double %69) #6, !dbg !815
  call void @callOneArgHandler(i32 1, double %69, double %70, i64 94710406568440, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @9, i32 0, i32 0), i64 94710406568912, i32 362, i32 16), !dbg !816
  %71 = load double, double* %13, align 8, !dbg !816
  %72 = fmul double %70, %71, !dbg !817
  call void @fMulHandler(double %70, double %71, double %72, i64 94710406568912, i64 94710406569368, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @9, i32 0, i32 0), i64 94710406569776, i32 362, i32 23), !dbg !818
  %73 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !818
  %74 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %73, i32 0, i32 0, !dbg !819
  store double %72, double* %74, align 8, !dbg !820
  %75 = load double, double* %6, align 8, !dbg !821
  %76 = call double @cos(double %75) #6, !dbg !822
  call void @callOneArgHandler(i32 2, double %75, double %76, i64 94710406571416, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @9, i32 0, i32 0), i64 94710406571888, i32 363, i32 16), !dbg !823
  %77 = load double, double* %14, align 8, !dbg !823
  %78 = fmul double %76, %77, !dbg !824
  call void @fMulHandler(double %76, double %77, double %78, i64 94710406571888, i64 94710406572344, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @9, i32 0, i32 0), i64 94710406572752, i32 363, i32 23), !dbg !825
  %79 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !825
  %80 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %79, i32 0, i32 0, !dbg !826
  store double %78, double* %80, align 8, !dbg !827
  %81 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !828
  %82 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %81, i32 0, i32 0, !dbg !829
  %83 = load double, double* %82, align 8, !dbg !829
  %84 = call double @fabs(double %83) #1, !dbg !830
  %85 = fmul double 0x3CC0000000000000, %84, !dbg !831
  call void @fMulHandler(double 0x3CC0000000000000, double %84, double %85, i64 0, i64 94710406576960, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @9, i32 0, i32 0), i64 94710406577440, i32 364, i32 38), !dbg !832
  %86 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !832
  %87 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %86, i32 0, i32 1, !dbg !833
  store double %85, double* %87, align 8, !dbg !834
  %88 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !835
  %89 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %88, i32 0, i32 0, !dbg !836
  %90 = load double, double* %89, align 8, !dbg !836
  %91 = call double @fabs(double %90) #1, !dbg !837
  %92 = fmul double 0x3CC0000000000000, %91, !dbg !838
  call void @fMulHandler(double 0x3CC0000000000000, double %91, double %92, i64 0, i64 94710406581648, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @9, i32 0, i32 0), i64 94710406582128, i32 365, i32 38), !dbg !839
  %93 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !839
  %94 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %93, i32 0, i32 1, !dbg !840
  store double %92, double* %94, align 8, !dbg !841
  store i32 0, i32* %5, align 4, !dbg !842
  br label %109, !dbg !842

; <label>:95:                                     ; preds = %51
  br label %96, !dbg !843, !llvm.loop !845

; <label>:96:                                     ; preds = %95
  %97 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !846
  %98 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %97, i32 0, i32 0, !dbg !846
  store double 0x7FF0000000000000, double* %98, align 8, !dbg !846
  %99 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !846
  %100 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %99, i32 0, i32 1, !dbg !846
  store double 0x7FF0000000000000, double* %100, align 8, !dbg !846
  %101 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !846
  %102 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %101, i32 0, i32 0, !dbg !846
  store double 0x7FF0000000000000, double* %102, align 8, !dbg !846
  %103 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !846
  %104 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %103, i32 0, i32 1, !dbg !846
  store double 0x7FF0000000000000, double* %104, align 8, !dbg !846
  br label %105, !dbg !846, !llvm.loop !849

; <label>:105:                                    ; preds = %96
  call void @gsl_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 369, i32 16), !dbg !851
  store i32 16, i32* %5, align 4, !dbg !851
  br label %109, !dbg !851
                                                  ; No predecessors!
  br label %107, !dbg !854

; <label>:107:                                    ; preds = %106
  br label %108

; <label>:108:                                    ; preds = %107
  br label %109

; <label>:109:                                    ; preds = %108, %105, %56, %19
  %110 = load i32, i32* %5, align 4, !dbg !856
  ret i32 %110, !dbg !856
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @sinh_series(double, double*) #4 !dbg !857 {
  %3 = alloca double, align 8
  %4 = alloca double*, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !860, metadata !85), !dbg !861
  store double* %1, double** %4, align 8
  call void @llvm.dbg.declare(metadata double** %4, metadata !862, metadata !85), !dbg !863
  call void @llvm.dbg.declare(metadata double* %5, metadata !864, metadata !85), !dbg !865
  %14 = load double, double* %3, align 8, !dbg !866
  %15 = load double, double* %3, align 8, !dbg !867
  %16 = fmul double %14, %15, !dbg !868
  call void @fMulHandler(double %14, double %15, double %16, i64 94710406487096, i64 94710406601352, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @11, i32 0, i32 0), i64 94710406601760, i32 41, i32 21), !dbg !865
  store double %16, double* %5, align 8, !dbg !865
  call void @llvm.dbg.declare(metadata double* %6, metadata !869, metadata !85), !dbg !870
  store double 0x3FC5555555555555, double* %6, align 8, !dbg !870
  call void @llvm.dbg.declare(metadata double* %7, metadata !871, metadata !85), !dbg !872
  store double 0x3F81111111111111, double* %7, align 8, !dbg !872
  call void @llvm.dbg.declare(metadata double* %8, metadata !873, metadata !85), !dbg !874
  store double 0x3F2A01A01A01A01A, double* %8, align 8, !dbg !874
  call void @llvm.dbg.declare(metadata double* %9, metadata !875, metadata !85), !dbg !876
  store double 0x3EC71DE3A556C734, double* %9, align 8, !dbg !876
  call void @llvm.dbg.declare(metadata double* %10, metadata !877, metadata !85), !dbg !878
  store double 0x3E5AE64567F544E4, double* %10, align 8, !dbg !878
  call void @llvm.dbg.declare(metadata double* %11, metadata !879, metadata !85), !dbg !880
  store double 0x3DE6124613A86D09, double* %11, align 8, !dbg !880
  call void @llvm.dbg.declare(metadata double* %12, metadata !881, metadata !85), !dbg !882
  store double 0x3D6AE7F3E733B81F, double* %12, align 8, !dbg !882
  call void @llvm.dbg.declare(metadata double* %13, metadata !883, metadata !85), !dbg !884
  store double 0x3CE952C77030AD4A, double* %13, align 8, !dbg !884
  %17 = load double, double* %3, align 8, !dbg !885
  %18 = load double, double* %5, align 8, !dbg !886
  %19 = load double, double* %5, align 8, !dbg !887
  %20 = load double, double* %5, align 8, !dbg !888
  %21 = load double, double* %5, align 8, !dbg !889
  %22 = load double, double* %5, align 8, !dbg !890
  %23 = load double, double* %5, align 8, !dbg !891
  %24 = load double, double* %5, align 8, !dbg !892
  %25 = load double, double* %5, align 8, !dbg !893
  %26 = fmul double %25, 0x3CE952C77030AD4A, !dbg !894
  call void @fMulHandler(double %25, double 0x3CE952C77030AD4A, double %26, i64 94710406629416, i64 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @11, i32 0, i32 0), i64 94710406629824, i32 50, i32 65), !dbg !895
  %27 = fadd double 0x3D6AE7F3E733B81F, %26, !dbg !895
  call void @fAddHandler(double 0x3D6AE7F3E733B81F, double %26, double %27, i64 0, i64 94710406629824, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @11, i32 0, i32 0), i64 94710406630240, i32 50, i32 63), !dbg !896
  %28 = fmul double %24, %27, !dbg !896
  call void @fMulHandler(double %24, double %27, double %28, i64 94710406629032, i64 94710406630240, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @11, i32 0, i32 0), i64 94710406630656, i32 50, i32 59), !dbg !897
  %29 = fadd double 0x3DE6124613A86D09, %28, !dbg !897
  call void @fAddHandler(double 0x3DE6124613A86D09, double %28, double %29, i64 0, i64 94710406630656, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @11, i32 0, i32 0), i64 94710406631072, i32 50, i32 57), !dbg !898
  %30 = fmul double %23, %29, !dbg !898
  call void @fMulHandler(double %23, double %29, double %30, i64 94710406628648, i64 94710406631072, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @11, i32 0, i32 0), i64 94710406631488, i32 50, i32 53), !dbg !899
  %31 = fadd double 0x3E5AE64567F544E4, %30, !dbg !899
  call void @fAddHandler(double 0x3E5AE64567F544E4, double %30, double %31, i64 0, i64 94710406631488, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @11, i32 0, i32 0), i64 94710406631904, i32 50, i32 51), !dbg !900
  %32 = fmul double %22, %31, !dbg !900
  call void @fMulHandler(double %22, double %31, double %32, i64 94710406628264, i64 94710406631904, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @11, i32 0, i32 0), i64 94710406632320, i32 50, i32 47), !dbg !901
  %33 = fadd double 0x3EC71DE3A556C734, %32, !dbg !901
  call void @fAddHandler(double 0x3EC71DE3A556C734, double %32, double %33, i64 0, i64 94710406632320, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @11, i32 0, i32 0), i64 94710406632736, i32 50, i32 45), !dbg !902
  %34 = fmul double %21, %33, !dbg !902
  call void @fMulHandler(double %21, double %33, double %34, i64 94710406627880, i64 94710406632736, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @11, i32 0, i32 0), i64 94710406633152, i32 50, i32 41), !dbg !903
  %35 = fadd double 0x3F2A01A01A01A01A, %34, !dbg !903
  call void @fAddHandler(double 0x3F2A01A01A01A01A, double %34, double %35, i64 0, i64 94710406633152, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @11, i32 0, i32 0), i64 94710406633568, i32 50, i32 39), !dbg !904
  %36 = fmul double %20, %35, !dbg !904
  call void @fMulHandler(double %20, double %35, double %36, i64 94710406627496, i64 94710406633568, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @11, i32 0, i32 0), i64 94710406633984, i32 50, i32 35), !dbg !905
  %37 = fadd double 0x3F81111111111111, %36, !dbg !905
  call void @fAddHandler(double 0x3F81111111111111, double %36, double %37, i64 0, i64 94710406633984, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @11, i32 0, i32 0), i64 94710406634400, i32 50, i32 33), !dbg !906
  %38 = fmul double %19, %37, !dbg !906
  call void @fMulHandler(double %19, double %37, double %38, i64 94710406627112, i64 94710406634400, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @11, i32 0, i32 0), i64 94710406634816, i32 50, i32 29), !dbg !907
  %39 = fadd double 0x3FC5555555555555, %38, !dbg !907
  call void @fAddHandler(double 0x3FC5555555555555, double %38, double %39, i64 0, i64 94710406634816, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @11, i32 0, i32 0), i64 94710406635232, i32 50, i32 27), !dbg !908
  %40 = fmul double %18, %39, !dbg !908
  call void @fMulHandler(double %18, double %39, double %40, i64 94710406626728, i64 94710406635232, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @11, i32 0, i32 0), i64 94710406635648, i32 50, i32 23), !dbg !909
  %41 = fadd double 1.000000e+00, %40, !dbg !909
  call void @fAddHandler(double 1.000000e+00, double %40, double %41, i64 0, i64 94710406635648, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @11, i32 0, i32 0), i64 94710406636096, i32 50, i32 20), !dbg !910
  %42 = fmul double %17, %41, !dbg !910
  call void @fMulHandler(double %17, double %41, double %42, i64 94710406626376, i64 94710406636096, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @11, i32 0, i32 0), i64 94710406636480, i32 50, i32 14), !dbg !911
  %43 = load double*, double** %4, align 8, !dbg !911
  store double %42, double* %43, align 8, !dbg !912
  ret i32 0, !dbg !913
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @cosh_m1_series(double, double*) #4 !dbg !914 {
  %3 = alloca double, align 8
  %4 = alloca double*, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !915, metadata !85), !dbg !916
  store double* %1, double** %4, align 8
  call void @llvm.dbg.declare(metadata double** %4, metadata !917, metadata !85), !dbg !918
  call void @llvm.dbg.declare(metadata double* %5, metadata !919, metadata !85), !dbg !920
  %15 = load double, double* %3, align 8, !dbg !921
  %16 = load double, double* %3, align 8, !dbg !922
  %17 = fmul double %15, %16, !dbg !923
  call void @fMulHandler(double %15, double %16, double %17, i64 94710406533512, i64 94710406643960, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @13, i32 0, i32 0), i64 94710406644368, i32 63, i32 21), !dbg !920
  store double %17, double* %5, align 8, !dbg !920
  call void @llvm.dbg.declare(metadata double* %6, metadata !924, metadata !85), !dbg !925
  store double 5.000000e-01, double* %6, align 8, !dbg !925
  call void @llvm.dbg.declare(metadata double* %7, metadata !926, metadata !85), !dbg !927
  store double 0x3FA5555555555555, double* %7, align 8, !dbg !927
  call void @llvm.dbg.declare(metadata double* %8, metadata !928, metadata !85), !dbg !929
  store double 0x3F56C16C16C16C17, double* %8, align 8, !dbg !929
  call void @llvm.dbg.declare(metadata double* %9, metadata !930, metadata !85), !dbg !931
  store double 0x3EFA01A01A01A01A, double* %9, align 8, !dbg !931
  call void @llvm.dbg.declare(metadata double* %10, metadata !932, metadata !85), !dbg !933
  store double 0x3E927E4FB7789F5C, double* %10, align 8, !dbg !933
  call void @llvm.dbg.declare(metadata double* %11, metadata !934, metadata !85), !dbg !935
  store double 0x3E21EED8EFF8D898, double* %11, align 8, !dbg !935
  call void @llvm.dbg.declare(metadata double* %12, metadata !936, metadata !85), !dbg !937
  store double 0x3DA93974A8C07C9D, double* %12, align 8, !dbg !937
  call void @llvm.dbg.declare(metadata double* %13, metadata !938, metadata !85), !dbg !939
  store double 0x3D2AE7F3E733B81F, double* %13, align 8, !dbg !939
  call void @llvm.dbg.declare(metadata double* %14, metadata !940, metadata !85), !dbg !941
  store double 0x3CA6827863B97D97, double* %14, align 8, !dbg !941
  %18 = load double, double* %5, align 8, !dbg !942
  %19 = load double, double* %5, align 8, !dbg !943
  %20 = load double, double* %5, align 8, !dbg !944
  %21 = load double, double* %5, align 8, !dbg !945
  %22 = load double, double* %5, align 8, !dbg !946
  %23 = load double, double* %5, align 8, !dbg !947
  %24 = load double, double* %5, align 8, !dbg !948
  %25 = load double, double* %5, align 8, !dbg !949
  %26 = load double, double* %5, align 8, !dbg !950
  %27 = fmul double %26, 0x3CA6827863B97D97, !dbg !951
  call void @fMulHandler(double %26, double 0x3CA6827863B97D97, double %27, i64 94710406674792, i64 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @13, i32 0, i32 0), i64 94710406675200, i32 73, i32 62), !dbg !952
  %28 = fadd double 0x3D2AE7F3E733B81F, %27, !dbg !952
  call void @fAddHandler(double 0x3D2AE7F3E733B81F, double %27, double %28, i64 0, i64 94710406675200, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @13, i32 0, i32 0), i64 94710406675616, i32 73, i32 60), !dbg !953
  %29 = fmul double %25, %28, !dbg !953
  call void @fMulHandler(double %25, double %28, double %29, i64 94710406674408, i64 94710406675616, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @13, i32 0, i32 0), i64 94710406676032, i32 73, i32 56), !dbg !954
  %30 = fadd double 0x3DA93974A8C07C9D, %29, !dbg !954
  call void @fAddHandler(double 0x3DA93974A8C07C9D, double %29, double %30, i64 0, i64 94710406676032, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @13, i32 0, i32 0), i64 94710406676448, i32 73, i32 54), !dbg !955
  %31 = fmul double %24, %30, !dbg !955
  call void @fMulHandler(double %24, double %30, double %31, i64 94710406674024, i64 94710406676448, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @13, i32 0, i32 0), i64 94710406676864, i32 73, i32 50), !dbg !956
  %32 = fadd double 0x3E21EED8EFF8D898, %31, !dbg !956
  call void @fAddHandler(double 0x3E21EED8EFF8D898, double %31, double %32, i64 0, i64 94710406676864, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @13, i32 0, i32 0), i64 94710406677280, i32 73, i32 48), !dbg !957
  %33 = fmul double %23, %32, !dbg !957
  call void @fMulHandler(double %23, double %32, double %33, i64 94710406673640, i64 94710406677280, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @13, i32 0, i32 0), i64 94710406677696, i32 73, i32 44), !dbg !958
  %34 = fadd double 0x3E927E4FB7789F5C, %33, !dbg !958
  call void @fAddHandler(double 0x3E927E4FB7789F5C, double %33, double %34, i64 0, i64 94710406677696, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @13, i32 0, i32 0), i64 94710406678112, i32 73, i32 42), !dbg !959
  %35 = fmul double %22, %34, !dbg !959
  call void @fMulHandler(double %22, double %34, double %35, i64 94710406673256, i64 94710406678112, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @13, i32 0, i32 0), i64 94710406678528, i32 73, i32 38), !dbg !960
  %36 = fadd double 0x3EFA01A01A01A01A, %35, !dbg !960
  call void @fAddHandler(double 0x3EFA01A01A01A01A, double %35, double %36, i64 0, i64 94710406678528, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @13, i32 0, i32 0), i64 94710406678944, i32 73, i32 36), !dbg !961
  %37 = fmul double %21, %36, !dbg !961
  call void @fMulHandler(double %21, double %36, double %37, i64 94710406672872, i64 94710406678944, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @13, i32 0, i32 0), i64 94710406679360, i32 73, i32 32), !dbg !962
  %38 = fadd double 0x3F56C16C16C16C17, %37, !dbg !962
  call void @fAddHandler(double 0x3F56C16C16C16C17, double %37, double %38, i64 0, i64 94710406679360, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @13, i32 0, i32 0), i64 94710406679776, i32 73, i32 30), !dbg !963
  %39 = fmul double %20, %38, !dbg !963
  call void @fMulHandler(double %20, double %38, double %39, i64 94710406672488, i64 94710406679776, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @13, i32 0, i32 0), i64 94710406680192, i32 73, i32 26), !dbg !964
  %40 = fadd double 0x3FA5555555555555, %39, !dbg !964
  call void @fAddHandler(double 0x3FA5555555555555, double %39, double %40, i64 0, i64 94710406680192, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @13, i32 0, i32 0), i64 94710406680608, i32 73, i32 24), !dbg !965
  %41 = fmul double %19, %40, !dbg !965
  call void @fMulHandler(double %19, double %40, double %41, i64 94710406672104, i64 94710406680608, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @13, i32 0, i32 0), i64 94710406681024, i32 73, i32 20), !dbg !966
  %42 = fadd double 5.000000e-01, %41, !dbg !966
  call void @fAddHandler(double 5.000000e-01, double %41, double %42, i64 0, i64 94710406681024, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @13, i32 0, i32 0), i64 94710406681472, i32 73, i32 18), !dbg !967
  %43 = fmul double %18, %42, !dbg !967
  call void @fMulHandler(double %18, double %42, double %43, i64 94710406671752, i64 94710406681472, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @13, i32 0, i32 0), i64 94710406681856, i32 73, i32 14), !dbg !968
  %44 = load double*, double** %4, align 8, !dbg !968
  store double %43, double* %44, align 8, !dbg !969
  ret i32 0, !dbg !970
}

; Function Attrs: nounwind
declare double @sin(double) #3

; Function Attrs: nounwind
declare double @cos(double) #3

; Function Attrs: nounwind
declare double @exp(double) #3

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_complex_cos_e(double, double, %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct*) #0 !dbg !971 {
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
  store double %0, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !972, metadata !85), !dbg !973
  store double %1, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !974, metadata !85), !dbg !975
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %8, metadata !976, metadata !85), !dbg !977
  store %struct.gsl_sf_result_struct* %3, %struct.gsl_sf_result_struct** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %9, metadata !978, metadata !85), !dbg !979
  %15 = load double, double* %7, align 8, !dbg !980
  %16 = call double @fabs(double %15) #1, !dbg !982
  %17 = fcmp olt double %16, 1.000000e+00, !dbg !983
  %18 = call i1 @fCmpInstHandler(double %16, double 1.000000e+00, i1 %17, i32 4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @15, i32 0, i32 0), i64 94710406691984, i32 381, i32 15), !dbg !984
  br i1 %18, label %19, label %52, !dbg !984

; <label>:19:                                     ; preds = %4
  call void @llvm.dbg.declare(metadata double* %10, metadata !985, metadata !85), !dbg !987
  call void @llvm.dbg.declare(metadata double* %11, metadata !988, metadata !85), !dbg !989
  %20 = load double, double* %7, align 8, !dbg !990
  %21 = call i32 @sinh_series(double %20, double* %11), !dbg !991
  %22 = load double, double* %7, align 8, !dbg !992
  %23 = call i32 @cosh_m1_series(double %22, double* %10), !dbg !993
  %24 = load double, double* %6, align 8, !dbg !994
  %25 = call double @cos(double %24) #6, !dbg !995
  call void @callOneArgHandler(i32 2, double %24, double %25, i64 94710406696696, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @15, i32 0, i32 0), i64 94710406697136, i32 385, i32 17), !dbg !996
  %26 = load double, double* %10, align 8, !dbg !996
  %27 = fadd double %26, 1.000000e+00, !dbg !997
  call void @fAddHandler(double %26, double 1.000000e+00, double %27, i64 94710406697592, i64 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @15, i32 0, i32 0), i64 94710406698032, i32 385, i32 32), !dbg !998
  %28 = fmul double %25, %27, !dbg !998
  call void @fMulHandler(double %25, double %27, double %28, i64 94710406697136, i64 94710406698032, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @15, i32 0, i32 0), i64 94710406698416, i32 385, i32 24), !dbg !999
  %29 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !999
  %30 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %29, i32 0, i32 0, !dbg !1000
  store double %28, double* %30, align 8, !dbg !1001
  %31 = load double, double* %6, align 8, !dbg !1002
  %32 = call double @sin(double %31) #6, !dbg !1003
  call void @callOneArgHandler(i32 1, double %31, double %32, i64 94710406700056, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @15, i32 0, i32 0), i64 94710406700528, i32 386, i32 17), !dbg !1004
  %33 = fsub double -0.000000e+00, %32, !dbg !1004
  call void @fSubHandler(double -0.000000e+00, double %32, double %33, i64 0, i64 94710406700528, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @15, i32 0, i32 0), i64 94710406701008, i32 386, i32 16), !dbg !1005
  %34 = load double, double* %11, align 8, !dbg !1005
  %35 = fmul double %33, %34, !dbg !1006
  call void @fMulHandler(double %33, double %34, double %35, i64 94710406701008, i64 94710406701400, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @15, i32 0, i32 0), i64 94710406701808, i32 386, i32 24), !dbg !1007
  %36 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1007
  %37 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %36, i32 0, i32 0, !dbg !1008
  store double %35, double* %37, align 8, !dbg !1009
  %38 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !1010
  %39 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %38, i32 0, i32 0, !dbg !1011
  %40 = load double, double* %39, align 8, !dbg !1011
  %41 = call double @fabs(double %40) #1, !dbg !1012
  %42 = fmul double 0x3CC0000000000000, %41, !dbg !1013
  call void @fMulHandler(double 0x3CC0000000000000, double %41, double %42, i64 0, i64 94710406706016, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @15, i32 0, i32 0), i64 94710406706496, i32 387, i32 38), !dbg !1014
  %43 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !1014
  %44 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %43, i32 0, i32 1, !dbg !1015
  store double %42, double* %44, align 8, !dbg !1016
  %45 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1017
  %46 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %45, i32 0, i32 0, !dbg !1018
  %47 = load double, double* %46, align 8, !dbg !1018
  %48 = call double @fabs(double %47) #1, !dbg !1019
  %49 = fmul double 0x3CC0000000000000, %48, !dbg !1020
  call void @fMulHandler(double 0x3CC0000000000000, double %48, double %49, i64 0, i64 94710406710704, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @15, i32 0, i32 0), i64 94710406711184, i32 388, i32 38), !dbg !1021
  %50 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1021
  %51 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %50, i32 0, i32 1, !dbg !1022
  store double %49, double* %51, align 8, !dbg !1023
  store i32 0, i32* %5, align 4, !dbg !1024
  br label %111, !dbg !1024

; <label>:52:                                     ; preds = %4
  %53 = load double, double* %7, align 8, !dbg !1025
  %54 = call double @fabs(double %53) #1, !dbg !1027
  %55 = fcmp olt double %54, 0x40862E42FEFA39EF, !dbg !1028
  %56 = call i1 @fCmpInstHandler(double %54, double 0x40862E42FEFA39EF, i1 %55, i32 4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @15, i32 0, i32 0), i64 94710406715920, i32 391, i32 20), !dbg !1029
  br i1 %56, label %57, label %97, !dbg !1029

; <label>:57:                                     ; preds = %52
  call void @llvm.dbg.declare(metadata double* %12, metadata !1030, metadata !85), !dbg !1032
  %58 = load double, double* %7, align 8, !dbg !1033
  %59 = call double @exp(double %58) #6, !dbg !1034
  call void @callOneArgHandler(i32 11, double %58, double %59, i64 94710406718088, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @15, i32 0, i32 0), i64 94710406718528, i32 392, i32 17), !dbg !1032
  store double %59, double* %12, align 8, !dbg !1032
  call void @llvm.dbg.declare(metadata double* %13, metadata !1035, metadata !85), !dbg !1036
  %60 = load double, double* %12, align 8, !dbg !1037
  %61 = load double, double* %12, align 8, !dbg !1038
  %62 = fdiv double 1.000000e+00, %61, !dbg !1039
  call void @fDivHandler(double 1.000000e+00, double %61, double %62, i64 0, i64 94710406722136, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @15, i32 0, i32 0), i64 94710406722576, i32 393, i32 28), !dbg !1040
  %63 = fadd double %60, %62, !dbg !1040
  call void @fAddHandler(double %60, double %62, double %63, i64 94710406721784, i64 94710406722576, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @15, i32 0, i32 0), i64 94710406722960, i32 393, i32 24), !dbg !1041
  %64 = fmul double 5.000000e-01, %63, !dbg !1041
  call void @fMulHandler(double 5.000000e-01, double %63, double %64, i64 0, i64 94710406722960, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @15, i32 0, i32 0), i64 94710406723408, i32 393, i32 20), !dbg !1036
  store double %64, double* %13, align 8, !dbg !1036
  call void @llvm.dbg.declare(metadata double* %14, metadata !1042, metadata !85), !dbg !1043
  %65 = load double, double* %12, align 8, !dbg !1044
  %66 = load double, double* %12, align 8, !dbg !1045
  %67 = fdiv double 1.000000e+00, %66, !dbg !1046
  call void @fDivHandler(double 1.000000e+00, double %66, double %67, i64 0, i64 94710406726920, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @15, i32 0, i32 0), i64 94710406727360, i32 394, i32 28), !dbg !1047
  %68 = fsub double %65, %67, !dbg !1047
  call void @fSubHandler(double %65, double %67, double %68, i64 94710406726568, i64 94710406727360, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @15, i32 0, i32 0), i64 94710406727744, i32 394, i32 24), !dbg !1048
  %69 = fmul double 5.000000e-01, %68, !dbg !1048
  call void @fMulHandler(double 5.000000e-01, double %68, double %69, i64 0, i64 94710406727744, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @15, i32 0, i32 0), i64 94710406728192, i32 394, i32 20), !dbg !1043
  store double %69, double* %14, align 8, !dbg !1043
  %70 = load double, double* %6, align 8, !dbg !1049
  %71 = call double @cos(double %70) #6, !dbg !1050
  call void @callOneArgHandler(i32 2, double %70, double %71, i64 94710406730232, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @15, i32 0, i32 0), i64 94710406730704, i32 395, i32 17), !dbg !1051
  %72 = load double, double* %13, align 8, !dbg !1051
  %73 = fmul double %71, %72, !dbg !1052
  call void @fMulHandler(double %71, double %72, double %73, i64 94710406730704, i64 94710406731160, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @15, i32 0, i32 0), i64 94710406731568, i32 395, i32 24), !dbg !1053
  %74 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !1053
  %75 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %74, i32 0, i32 0, !dbg !1054
  store double %73, double* %75, align 8, !dbg !1055
  %76 = load double, double* %6, align 8, !dbg !1056
  %77 = call double @sin(double %76) #6, !dbg !1057
  call void @callOneArgHandler(i32 1, double %76, double %77, i64 94710406733208, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @15, i32 0, i32 0), i64 94710406733680, i32 396, i32 17), !dbg !1058
  %78 = fsub double -0.000000e+00, %77, !dbg !1058
  call void @fSubHandler(double -0.000000e+00, double %77, double %78, i64 0, i64 94710406733680, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @15, i32 0, i32 0), i64 94710406734160, i32 396, i32 16), !dbg !1059
  %79 = load double, double* %14, align 8, !dbg !1059
  %80 = fmul double %78, %79, !dbg !1060
  call void @fMulHandler(double %78, double %79, double %80, i64 94710406734160, i64 94710406734552, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @15, i32 0, i32 0), i64 94710406734960, i32 396, i32 24), !dbg !1061
  %81 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1061
  %82 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %81, i32 0, i32 0, !dbg !1062
  store double %80, double* %82, align 8, !dbg !1063
  %83 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !1064
  %84 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %83, i32 0, i32 0, !dbg !1065
  %85 = load double, double* %84, align 8, !dbg !1065
  %86 = call double @fabs(double %85) #1, !dbg !1066
  %87 = fmul double 0x3CC0000000000000, %86, !dbg !1067
  call void @fMulHandler(double 0x3CC0000000000000, double %86, double %87, i64 0, i64 94710406739168, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @15, i32 0, i32 0), i64 94710406739648, i32 397, i32 38), !dbg !1068
  %88 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !1068
  %89 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %88, i32 0, i32 1, !dbg !1069
  store double %87, double* %89, align 8, !dbg !1070
  %90 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1071
  %91 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %90, i32 0, i32 0, !dbg !1072
  %92 = load double, double* %91, align 8, !dbg !1072
  %93 = call double @fabs(double %92) #1, !dbg !1073
  %94 = fmul double 0x3CC0000000000000, %93, !dbg !1074
  call void @fMulHandler(double 0x3CC0000000000000, double %93, double %94, i64 0, i64 94710406743856, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @15, i32 0, i32 0), i64 94710406744336, i32 398, i32 38), !dbg !1075
  %95 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1075
  %96 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %95, i32 0, i32 1, !dbg !1076
  store double %94, double* %96, align 8, !dbg !1077
  store i32 0, i32* %5, align 4, !dbg !1078
  br label %111, !dbg !1078

; <label>:97:                                     ; preds = %52
  br label %98, !dbg !1079, !llvm.loop !1081

; <label>:98:                                     ; preds = %97
  %99 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !1082
  %100 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %99, i32 0, i32 0, !dbg !1082
  store double 0x7FF0000000000000, double* %100, align 8, !dbg !1082
  %101 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !1082
  %102 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %101, i32 0, i32 1, !dbg !1082
  store double 0x7FF0000000000000, double* %102, align 8, !dbg !1082
  %103 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1082
  %104 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %103, i32 0, i32 0, !dbg !1082
  store double 0x7FF0000000000000, double* %104, align 8, !dbg !1082
  %105 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1082
  %106 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %105, i32 0, i32 1, !dbg !1082
  store double 0x7FF0000000000000, double* %106, align 8, !dbg !1082
  br label %107, !dbg !1082, !llvm.loop !1085

; <label>:107:                                    ; preds = %98
  call void @gsl_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 402, i32 16), !dbg !1087
  store i32 16, i32* %5, align 4, !dbg !1087
  br label %111, !dbg !1087
                                                  ; No predecessors!
  br label %109, !dbg !1090

; <label>:109:                                    ; preds = %108
  br label %110

; <label>:110:                                    ; preds = %109
  br label %111

; <label>:111:                                    ; preds = %110, %107, %57, %19
  %112 = load i32, i32* %5, align 4, !dbg !1092
  ret i32 %112, !dbg !1092
}

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_complex_logsin_e(double, double, %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct*) #0 !dbg !1093 {
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca %struct.gsl_sf_result_struct*, align 8
  %9 = alloca %struct.gsl_sf_result_struct*, align 8
  %10 = alloca %struct.gsl_sf_result_struct, align 8
  %11 = alloca %struct.gsl_sf_result_struct, align 8
  %12 = alloca i32, align 4
  store double %0, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !1094, metadata !85), !dbg !1095
  store double %1, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !1096, metadata !85), !dbg !1097
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %8, metadata !1098, metadata !85), !dbg !1099
  store %struct.gsl_sf_result_struct* %3, %struct.gsl_sf_result_struct** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %9, metadata !1100, metadata !85), !dbg !1101
  %13 = load double, double* %7, align 8, !dbg !1102
  %14 = fcmp ogt double %13, 6.000000e+01, !dbg !1104
  %15 = call i1 @fCmpInstHandler(double %13, double 6.000000e+01, i1 %14, i32 2, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @17, i32 0, i32 0), i64 94710406473280, i32 414, i32 9), !dbg !1105
  br i1 %15, label %16, label %39, !dbg !1105

; <label>:16:                                     ; preds = %4
  %17 = load double, double* %7, align 8, !dbg !1106
  %18 = fadd double 0xBFE62E42FEFA39EF, %17, !dbg !1108
  call void @fAddHandler(double 0xBFE62E42FEFA39EF, double %17, double %18, i64 0, i64 94710406474360, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @17, i32 0, i32 0), i64 94710406474768, i32 415, i32 24), !dbg !1109
  %19 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !1109
  %20 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %19, i32 0, i32 0, !dbg !1110
  store double %18, double* %20, align 8, !dbg !1111
  %21 = load double, double* %6, align 8, !dbg !1112
  %22 = fsub double 0x3FF921FB54442D18, %21, !dbg !1113
  call void @fSubHandler(double 0x3FF921FB54442D18, double %21, double %22, i64 0, i64 94710406774472, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @17, i32 0, i32 0), i64 94710406774944, i32 416, i32 27), !dbg !1114
  %23 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1114
  %24 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %23, i32 0, i32 0, !dbg !1115
  store double %22, double* %24, align 8, !dbg !1116
  %25 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !1117
  %26 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %25, i32 0, i32 0, !dbg !1118
  %27 = load double, double* %26, align 8, !dbg !1118
  %28 = call double @fabs(double %27) #1, !dbg !1119
  %29 = fmul double 0x3CC0000000000000, %28, !dbg !1120
  call void @fMulHandler(double 0x3CC0000000000000, double %28, double %29, i64 0, i64 94710406759456, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @17, i32 0, i32 0), i64 94710406779488, i32 417, i32 39), !dbg !1121
  %30 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !1121
  %31 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %30, i32 0, i32 1, !dbg !1122
  store double %29, double* %31, align 8, !dbg !1123
  %32 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1124
  %33 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %32, i32 0, i32 0, !dbg !1125
  %34 = load double, double* %33, align 8, !dbg !1125
  %35 = call double @fabs(double %34) #1, !dbg !1126
  %36 = fmul double 0x3CC0000000000000, %35, !dbg !1127
  call void @fMulHandler(double 0x3CC0000000000000, double %35, double %36, i64 0, i64 94710406783696, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @17, i32 0, i32 0), i64 94710406784176, i32 418, i32 39), !dbg !1128
  %37 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1128
  %38 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %37, i32 0, i32 1, !dbg !1129
  store double %36, double* %38, align 8, !dbg !1130
  br label %96, !dbg !1131

; <label>:39:                                     ; preds = %4
  %40 = load double, double* %7, align 8, !dbg !1132
  %41 = fcmp olt double %40, -6.000000e+01, !dbg !1134
  %42 = call i1 @fCmpInstHandler(double %40, double -6.000000e+01, i1 %41, i32 4, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @17, i32 0, i32 0), i64 94710406786784, i32 420, i32 14), !dbg !1135
  br i1 %42, label %43, label %66, !dbg !1135

; <label>:43:                                     ; preds = %39
  %44 = load double, double* %7, align 8, !dbg !1136
  %45 = fsub double 0xBFE62E42FEFA39EF, %44, !dbg !1138
  call void @fSubHandler(double 0xBFE62E42FEFA39EF, double %44, double %45, i64 0, i64 94710406787864, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @17, i32 0, i32 0), i64 94710406788208, i32 421, i32 24), !dbg !1139
  %46 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !1139
  %47 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %46, i32 0, i32 0, !dbg !1140
  store double %45, double* %47, align 8, !dbg !1141
  %48 = load double, double* %6, align 8, !dbg !1142
  %49 = fadd double 0xBFF921FB54442D18, %48, !dbg !1143
  call void @fAddHandler(double 0xBFF921FB54442D18, double %48, double %49, i64 0, i64 94710406789848, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @17, i32 0, i32 0), i64 94710406790320, i32 422, i32 27), !dbg !1144
  %50 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1144
  %51 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %50, i32 0, i32 0, !dbg !1145
  store double %49, double* %51, align 8, !dbg !1146
  %52 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !1147
  %53 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %52, i32 0, i32 0, !dbg !1148
  %54 = load double, double* %53, align 8, !dbg !1148
  %55 = call double @fabs(double %54) #1, !dbg !1149
  %56 = fmul double 0x3CC0000000000000, %55, !dbg !1150
  call void @fMulHandler(double 0x3CC0000000000000, double %55, double %56, i64 0, i64 94710406794528, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @17, i32 0, i32 0), i64 94710406795008, i32 423, i32 39), !dbg !1151
  %57 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !1151
  %58 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %57, i32 0, i32 1, !dbg !1152
  store double %56, double* %58, align 8, !dbg !1153
  %59 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1154
  %60 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %59, i32 0, i32 0, !dbg !1155
  %61 = load double, double* %60, align 8, !dbg !1155
  %62 = call double @fabs(double %61) #1, !dbg !1156
  %63 = fmul double 0x3CC0000000000000, %62, !dbg !1157
  call void @fMulHandler(double 0x3CC0000000000000, double %62, double %63, i64 0, i64 94710406799216, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @17, i32 0, i32 0), i64 94710406799696, i32 424, i32 39), !dbg !1158
  %64 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1158
  %65 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %64, i32 0, i32 1, !dbg !1159
  store double %63, double* %65, align 8, !dbg !1160
  br label %95, !dbg !1161

; <label>:66:                                     ; preds = %39
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %10, metadata !1162, metadata !85), !dbg !1164
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %11, metadata !1165, metadata !85), !dbg !1166
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1167, metadata !85), !dbg !1168
  %67 = load double, double* %6, align 8, !dbg !1169
  %68 = load double, double* %7, align 8, !dbg !1170
  %69 = call i32 @gsl_sf_complex_sin_e(double %67, double %68, %struct.gsl_sf_result_struct* %10, %struct.gsl_sf_result_struct* %11), !dbg !1171
  %70 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !1172
  %71 = load double, double* %70, align 8, !dbg !1172
  %72 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 0, !dbg !1173
  %73 = load double, double* %72, align 8, !dbg !1173
  %74 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !1174
  %75 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1175
  %76 = call i32 @gsl_sf_complex_log_e(double %71, double %73, %struct.gsl_sf_result_struct* %74, %struct.gsl_sf_result_struct* %75), !dbg !1176
  store i32 %76, i32* %12, align 4, !dbg !1177
  %77 = load i32, i32* %12, align 4, !dbg !1178
  %78 = icmp eq i32 %77, 1, !dbg !1180
  %79 = sext i32 %77 to i64, !dbg !1181
  %80 = call i1 @iCmpInstHandler(i64 %79, i64 1, i1 %78, i32 32, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @17, i32 0, i32 0), i64 94710406813120, i32 431, i32 15), !dbg !1181
  br i1 %80, label %81, label %94, !dbg !1181

; <label>:81:                                     ; preds = %66
  br label %82, !dbg !1182, !llvm.loop !1184

; <label>:82:                                     ; preds = %81
  %83 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !1185
  %84 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %83, i32 0, i32 0, !dbg !1185
  store double 0x7FF8000000000000, double* %84, align 8, !dbg !1185
  %85 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !1185
  %86 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %85, i32 0, i32 1, !dbg !1185
  store double 0x7FF8000000000000, double* %86, align 8, !dbg !1185
  %87 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1185
  %88 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %87, i32 0, i32 0, !dbg !1185
  store double 0x7FF8000000000000, double* %88, align 8, !dbg !1185
  %89 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1185
  %90 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %89, i32 0, i32 1, !dbg !1185
  store double 0x7FF8000000000000, double* %90, align 8, !dbg !1185
  br label %91, !dbg !1185, !llvm.loop !1188

; <label>:91:                                     ; preds = %82
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 432, i32 1), !dbg !1190
  store i32 1, i32* %5, align 4, !dbg !1190
  br label %100, !dbg !1190
                                                  ; No predecessors!
  br label %93, !dbg !1193

; <label>:93:                                     ; preds = %92
  br label %94, !dbg !1195

; <label>:94:                                     ; preds = %93, %66
  br label %95

; <label>:95:                                     ; preds = %94, %43
  br label %96

; <label>:96:                                     ; preds = %95, %16
  %97 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1196
  %98 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %97, i32 0, i32 0, !dbg !1197
  %99 = call i32 @gsl_sf_angle_restrict_symm_e(double* %98), !dbg !1198
  store i32 %99, i32* %5, align 4, !dbg !1199
  br label %100, !dbg !1199

; <label>:100:                                    ; preds = %96, %91
  %101 = load i32, i32* %5, align 4, !dbg !1200
  ret i32 %101, !dbg !1200
}

declare i32 @gsl_sf_complex_log_e(double, double, %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct*) #5

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_angle_restrict_symm_e(double*) #0 !dbg !1201 {
  %2 = alloca double*, align 8
  %3 = alloca %struct.gsl_sf_result_struct, align 8
  %4 = alloca i32, align 4
  store double* %0, double** %2, align 8
  call void @llvm.dbg.declare(metadata double** %2, metadata !1204, metadata !85), !dbg !1205
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %3, metadata !1206, metadata !85), !dbg !1207
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1208, metadata !85), !dbg !1209
  %5 = load double*, double** %2, align 8, !dbg !1210
  %6 = load double, double* %5, align 8, !dbg !1211
  %7 = call i32 @gsl_sf_angle_restrict_symm_err_e(double %6, %struct.gsl_sf_result_struct* %3), !dbg !1212
  store i32 %7, i32* %4, align 4, !dbg !1209
  %8 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %3, i32 0, i32 0, !dbg !1213
  %9 = load double, double* %8, align 8, !dbg !1213
  %10 = load double*, double** %2, align 8, !dbg !1214
  store double %9, double* %10, align 8, !dbg !1215
  %11 = load i32, i32* %4, align 4, !dbg !1216
  ret i32 %11, !dbg !1217
}

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_lnsinh_e(double, %struct.gsl_sf_result_struct*) #0 !dbg !1218 {
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca %struct.gsl_sf_result_struct*, align 8
  %6 = alloca double, align 8
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !1221, metadata !85), !dbg !1222
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %5, metadata !1223, metadata !85), !dbg !1224
  %7 = load double, double* %4, align 8, !dbg !1225
  %8 = fcmp ole double %7, 0.000000e+00, !dbg !1227
  %9 = call i1 @fCmpInstHandler(double %7, double 0.000000e+00, i1 %8, i32 5, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @21, i32 0, i32 0), i64 94710406843984, i32 444, i32 8), !dbg !1228
  br i1 %9, label %10, label %19, !dbg !1228

; <label>:10:                                     ; preds = %2
  br label %11, !dbg !1229, !llvm.loop !1231

; <label>:11:                                     ; preds = %10
  %12 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1232
  %13 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %12, i32 0, i32 0, !dbg !1232
  store double 0x7FF8000000000000, double* %13, align 8, !dbg !1232
  %14 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1232
  %15 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 1, !dbg !1232
  store double 0x7FF8000000000000, double* %15, align 8, !dbg !1232
  br label %16, !dbg !1232, !llvm.loop !1235

; <label>:16:                                     ; preds = %11
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 445, i32 1), !dbg !1237
  store i32 1, i32* %3, align 4, !dbg !1237
  br label %72, !dbg !1237
                                                  ; No predecessors!
  br label %18, !dbg !1240

; <label>:18:                                     ; preds = %17
  br label %72, !dbg !1242

; <label>:19:                                     ; preds = %2
  %20 = load double, double* %4, align 8, !dbg !1243
  %21 = call double @fabs(double %20) #1, !dbg !1245
  %22 = fcmp olt double %21, 1.000000e+00, !dbg !1246
  %23 = call i1 @fCmpInstHandler(double %21, double 1.000000e+00, i1 %22, i32 4, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @21, i32 0, i32 0), i64 94710406853184, i32 447, i32 19), !dbg !1247
  br i1 %23, label %24, label %38, !dbg !1247

; <label>:24:                                     ; preds = %19
  call void @llvm.dbg.declare(metadata double* %6, metadata !1248, metadata !85), !dbg !1250
  %25 = load double, double* %4, align 8, !dbg !1251
  %26 = call i32 @sinh_series(double %25, double* %6), !dbg !1252
  %27 = load double, double* %6, align 8, !dbg !1253
  %28 = call double @log(double %27) #6, !dbg !1254
  call void @callOneArgHandler(i32 12, double %27, double %28, i64 94710406856232, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @21, i32 0, i32 0), i64 94710406856944, i32 450, i32 19), !dbg !1255
  %29 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1255
  %30 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %29, i32 0, i32 0, !dbg !1256
  store double %28, double* %30, align 8, !dbg !1257
  %31 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1258
  %32 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %31, i32 0, i32 0, !dbg !1259
  %33 = load double, double* %32, align 8, !dbg !1259
  %34 = call double @fabs(double %33) #1, !dbg !1260
  %35 = fmul double 0x3CC0000000000000, %34, !dbg !1261
  call void @fMulHandler(double 0x3CC0000000000000, double %34, double %35, i64 0, i64 94710406861248, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @21, i32 0, i32 0), i64 94710406861728, i32 451, i32 41), !dbg !1262
  %36 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1262
  %37 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %36, i32 0, i32 1, !dbg !1263
  store double %35, double* %37, align 8, !dbg !1264
  store i32 0, i32* %3, align 4, !dbg !1265
  br label %72, !dbg !1265

; <label>:38:                                     ; preds = %19
  %39 = load double, double* %4, align 8, !dbg !1266
  %40 = fcmp olt double %39, 0x403205966F2B4F12, !dbg !1268
  %41 = call i1 @fCmpInstHandler(double %39, double 0x403205966F2B4F12, i1 %40, i32 4, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @21, i32 0, i32 0), i64 94710406865840, i32 454, i32 13), !dbg !1269
  br i1 %41, label %42, label %60, !dbg !1269

; <label>:42:                                     ; preds = %38
  %43 = load double, double* %4, align 8, !dbg !1270
  %44 = load double, double* %4, align 8, !dbg !1272
  %45 = fmul double -2.000000e+00, %44, !dbg !1273
  call void @fMulHandler(double -2.000000e+00, double %44, double %45, i64 0, i64 94710406867272, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @21, i32 0, i32 0), i64 94710406867776, i32 455, i32 46), !dbg !1274
  %46 = call double @exp(double %45) #6, !dbg !1274
  call void @callOneArgHandler(i32 11, double %45, double %46, i64 94710406867776, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @21, i32 0, i32 0), i64 94710406868224, i32 455, i32 38), !dbg !1275
  %47 = fsub double 1.000000e+00, %46, !dbg !1275
  call void @fSubHandler(double 1.000000e+00, double %46, double %47, i64 0, i64 94710406868224, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @21, i32 0, i32 0), i64 94710406868736, i32 455, i32 36), !dbg !1276
  %48 = fmul double 5.000000e-01, %47, !dbg !1276
  call void @fMulHandler(double 5.000000e-01, double %47, double %48, i64 0, i64 94710406868736, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @21, i32 0, i32 0), i64 94710406869152, i32 455, i32 30), !dbg !1277
  %49 = call double @log(double %48) #6, !dbg !1277
  call void @callOneArgHandler(i32 12, double %48, double %49, i64 94710406869152, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @21, i32 0, i32 0), i64 94710406869600, i32 455, i32 23), !dbg !1279
  %50 = fadd double %43, %49, !dbg !1279
  call void @fAddHandler(double %43, double %49, double %50, i64 94710406866952, i64 94710406869600, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @21, i32 0, i32 0), i64 94710406870080, i32 455, i32 21), !dbg !1280
  %51 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1280
  %52 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %51, i32 0, i32 0, !dbg !1281
  store double %50, double* %52, align 8, !dbg !1282
  %53 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1283
  %54 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %53, i32 0, i32 0, !dbg !1284
  %55 = load double, double* %54, align 8, !dbg !1284
  %56 = call double @fabs(double %55) #1, !dbg !1285
  %57 = fmul double 0x3CC0000000000000, %56, !dbg !1286
  call void @fMulHandler(double 0x3CC0000000000000, double %56, double %57, i64 0, i64 94710406874288, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @21, i32 0, i32 0), i64 94710406874768, i32 456, i32 41), !dbg !1287
  %58 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1287
  %59 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %58, i32 0, i32 1, !dbg !1288
  store double %57, double* %59, align 8, !dbg !1289
  store i32 0, i32* %3, align 4, !dbg !1290
  br label %72, !dbg !1290

; <label>:60:                                     ; preds = %38
  %61 = load double, double* %4, align 8, !dbg !1291
  %62 = fadd double 0xBFE62E42FEFA39EF, %61, !dbg !1293
  call void @fAddHandler(double 0xBFE62E42FEFA39EF, double %61, double %62, i64 0, i64 94710406878472, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @21, i32 0, i32 0), i64 94710406878816, i32 460, i32 26), !dbg !1294
  %63 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1294
  %64 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %63, i32 0, i32 0, !dbg !1295
  store double %62, double* %64, align 8, !dbg !1296
  %65 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1297
  %66 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %65, i32 0, i32 0, !dbg !1298
  %67 = load double, double* %66, align 8, !dbg !1298
  %68 = call double @fabs(double %67) #1, !dbg !1299
  %69 = fmul double 0x3CC0000000000000, %68, !dbg !1300
  call void @fMulHandler(double 0x3CC0000000000000, double %68, double %69, i64 0, i64 94710406883024, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @21, i32 0, i32 0), i64 94710406883504, i32 461, i32 41), !dbg !1301
  %70 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1301
  %71 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %70, i32 0, i32 1, !dbg !1302
  store double %69, double* %71, align 8, !dbg !1303
  store i32 0, i32* %3, align 4, !dbg !1304
  br label %72, !dbg !1304

; <label>:72:                                     ; preds = %60, %42, %24, %18, %16
  %73 = load i32, i32* %3, align 4, !dbg !1305
  ret i32 %73, !dbg !1305
}

; Function Attrs: nounwind
declare double @log(double) #3

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_lncosh_e(double, %struct.gsl_sf_result_struct*) #0 !dbg !1306 {
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca %struct.gsl_sf_result_struct*, align 8
  %6 = alloca double, align 8
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !1307, metadata !85), !dbg !1308
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %5, metadata !1309, metadata !85), !dbg !1310
  %7 = load double, double* %4, align 8, !dbg !1311
  %8 = call double @fabs(double %7) #1, !dbg !1313
  %9 = fcmp olt double %8, 1.000000e+00, !dbg !1314
  %10 = call i1 @fCmpInstHandler(double %8, double 1.000000e+00, i1 %9, i32 4, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @23, i32 0, i32 0), i64 94710406894272, i32 471, i32 14), !dbg !1315
  br i1 %10, label %11, label %17, !dbg !1315

; <label>:11:                                     ; preds = %2
  call void @llvm.dbg.declare(metadata double* %6, metadata !1316, metadata !85), !dbg !1318
  %12 = load double, double* %4, align 8, !dbg !1319
  %13 = call i32 @cosh_m1_series(double %12, double* %6), !dbg !1320
  %14 = load double, double* %6, align 8, !dbg !1321
  %15 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1322
  %16 = call i32 @gsl_sf_log_1plusx_e(double %14, %struct.gsl_sf_result_struct* %15), !dbg !1323
  store i32 %16, i32* %3, align 4, !dbg !1324
  br label %55, !dbg !1324

; <label>:17:                                     ; preds = %2
  %18 = load double, double* %4, align 8, !dbg !1325
  %19 = call double @fabs(double %18) #1, !dbg !1327
  %20 = fcmp olt double %19, 0x403205966F2B4F12, !dbg !1328
  %21 = call i1 @fCmpInstHandler(double %19, double 0x403205966F2B4F12, i1 %20, i32 4, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @23, i32 0, i32 0), i64 94710406901808, i32 476, i32 19), !dbg !1329
  br i1 %21, label %22, label %42, !dbg !1329

; <label>:22:                                     ; preds = %17
  %23 = load double, double* %4, align 8, !dbg !1330
  %24 = call double @fabs(double %23) #1, !dbg !1332
  %25 = load double, double* %4, align 8, !dbg !1333
  %26 = call double @fabs(double %25) #1, !dbg !1334
  %27 = fmul double -2.000000e+00, %26, !dbg !1336
  call void @fMulHandler(double -2.000000e+00, double %26, double %27, i64 0, i64 94710406904256, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @23, i32 0, i32 0), i64 94710406904768, i32 477, i32 52), !dbg !1337
  %28 = call double @exp(double %27) #6, !dbg !1337
  call void @callOneArgHandler(i32 11, double %27, double %28, i64 94710406904768, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @23, i32 0, i32 0), i64 94710406905216, i32 477, i32 44), !dbg !1339
  %29 = fadd double 1.000000e+00, %28, !dbg !1339
  call void @fAddHandler(double 1.000000e+00, double %28, double %29, i64 0, i64 94710406905216, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @23, i32 0, i32 0), i64 94710406905728, i32 477, i32 42), !dbg !1340
  %30 = fmul double 5.000000e-01, %29, !dbg !1340
  call void @fMulHandler(double 5.000000e-01, double %29, double %30, i64 0, i64 94710406905728, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @23, i32 0, i32 0), i64 94710406906144, i32 477, i32 36), !dbg !1341
  %31 = call double @log(double %30) #6, !dbg !1341
  call void @callOneArgHandler(i32 12, double %30, double %31, i64 94710406906144, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @23, i32 0, i32 0), i64 94710406906592, i32 477, i32 29), !dbg !1343
  %32 = fadd double %24, %31, !dbg !1343
  call void @fAddHandler(double %24, double %31, double %32, i64 94710406903328, i64 94710406906592, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @23, i32 0, i32 0), i64 94710406907072, i32 477, i32 27), !dbg !1344
  %33 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1344
  %34 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %33, i32 0, i32 0, !dbg !1345
  store double %32, double* %34, align 8, !dbg !1346
  %35 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1347
  %36 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %35, i32 0, i32 0, !dbg !1348
  %37 = load double, double* %36, align 8, !dbg !1348
  %38 = call double @fabs(double %37) #1, !dbg !1349
  %39 = fmul double 0x3CC0000000000000, %38, !dbg !1350
  call void @fMulHandler(double 0x3CC0000000000000, double %38, double %39, i64 0, i64 94710406911280, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @23, i32 0, i32 0), i64 94710406911760, i32 478, i32 41), !dbg !1351
  %40 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1351
  %41 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %40, i32 0, i32 1, !dbg !1352
  store double %39, double* %41, align 8, !dbg !1353
  store i32 0, i32* %3, align 4, !dbg !1354
  br label %55, !dbg !1354

; <label>:42:                                     ; preds = %17
  %43 = load double, double* %4, align 8, !dbg !1355
  %44 = call double @fabs(double %43) #1, !dbg !1357
  %45 = fadd double 0xBFE62E42FEFA39EF, %44, !dbg !1358
  call void @fAddHandler(double 0xBFE62E42FEFA39EF, double %44, double %45, i64 0, i64 94710406915872, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @23, i32 0, i32 0), i64 94710406916352, i32 482, i32 26), !dbg !1359
  %46 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1359
  %47 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %46, i32 0, i32 0, !dbg !1360
  store double %45, double* %47, align 8, !dbg !1361
  %48 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1362
  %49 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %48, i32 0, i32 0, !dbg !1363
  %50 = load double, double* %49, align 8, !dbg !1363
  %51 = call double @fabs(double %50) #1, !dbg !1364
  %52 = fmul double 0x3CC0000000000000, %51, !dbg !1365
  call void @fMulHandler(double 0x3CC0000000000000, double %51, double %52, i64 0, i64 94710406920560, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @23, i32 0, i32 0), i64 94710406921040, i32 483, i32 41), !dbg !1366
  %53 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1366
  %54 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %53, i32 0, i32 1, !dbg !1367
  store double %52, double* %54, align 8, !dbg !1368
  store i32 0, i32* %3, align 4, !dbg !1369
  br label %55, !dbg !1369

; <label>:55:                                     ; preds = %42, %22, %11
  %56 = load i32, i32* %3, align 4, !dbg !1370
  ret i32 %56, !dbg !1370
}

declare i32 @gsl_sf_log_1plusx_e(double, %struct.gsl_sf_result_struct*) #5

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_polar_to_rect(double, double, %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct*) #0 !dbg !1371 {
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca %struct.gsl_sf_result_struct*, align 8
  %8 = alloca %struct.gsl_sf_result_struct*, align 8
  %9 = alloca double, align 8
  %10 = alloca i32, align 4
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  store double %0, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !1372, metadata !85), !dbg !1373
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !1374, metadata !85), !dbg !1375
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %7, metadata !1376, metadata !85), !dbg !1377
  store %struct.gsl_sf_result_struct* %3, %struct.gsl_sf_result_struct** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %8, metadata !1378, metadata !85), !dbg !1379
  call void @llvm.dbg.declare(metadata double* %9, metadata !1380, metadata !85), !dbg !1381
  %13 = load double, double* %6, align 8, !dbg !1382
  store double %13, double* %9, align 8, !dbg !1381
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1383, metadata !85), !dbg !1384
  %14 = call i32 @gsl_sf_angle_restrict_symm_e(double* %9), !dbg !1385
  store i32 %14, i32* %10, align 4, !dbg !1384
  call void @llvm.dbg.declare(metadata double* %11, metadata !1386, metadata !85), !dbg !1387
  %15 = load double, double* %9, align 8, !dbg !1388
  %16 = call double @cos(double %15) #6, !dbg !1389
  call void @callOneArgHandler(i32 2, double %15, double %16, i64 94710406941336, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @25, i32 0, i32 0), i64 94710406941776, i32 505, i32 14), !dbg !1387
  store double %16, double* %11, align 8, !dbg !1387
  call void @llvm.dbg.declare(metadata double* %12, metadata !1390, metadata !85), !dbg !1391
  %17 = load double, double* %9, align 8, !dbg !1392
  %18 = call double @sin(double %17) #6, !dbg !1393
  call void @callOneArgHandler(i32 1, double %17, double %18, i64 94710406944888, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @25, i32 0, i32 0), i64 94710406945328, i32 506, i32 14), !dbg !1391
  store double %18, double* %12, align 8, !dbg !1391
  %19 = load double, double* %5, align 8, !dbg !1394
  %20 = load double, double* %9, align 8, !dbg !1395
  %21 = call double @cos(double %20) #6, !dbg !1396
  call void @callOneArgHandler(i32 2, double %20, double %21, i64 94710406947848, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @25, i32 0, i32 0), i64 94710406948320, i32 507, i32 16), !dbg !1397
  %22 = fmul double %19, %21, !dbg !1397
  call void @fMulHandler(double %19, double %21, double %22, i64 94710406947464, i64 94710406948320, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @25, i32 0, i32 0), i64 94710406948800, i32 507, i32 14), !dbg !1398
  %23 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1398
  %24 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %23, i32 0, i32 0, !dbg !1399
  store double %22, double* %24, align 8, !dbg !1400
  %25 = load double, double* %5, align 8, !dbg !1401
  %26 = load double, double* %9, align 8, !dbg !1402
  %27 = call double @sin(double %26) #6, !dbg !1403
  call void @callOneArgHandler(i32 1, double %26, double %27, i64 94710406950824, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @25, i32 0, i32 0), i64 94710406951296, i32 508, i32 16), !dbg !1404
  %28 = fmul double %25, %27, !dbg !1404
  call void @fMulHandler(double %25, double %27, double %28, i64 94710406950440, i64 94710406951296, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @25, i32 0, i32 0), i64 94710406951776, i32 508, i32 14), !dbg !1405
  %29 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !1405
  %30 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %29, i32 0, i32 0, !dbg !1406
  store double %28, double* %30, align 8, !dbg !1407
  %31 = load double, double* %5, align 8, !dbg !1408
  %32 = load double, double* %12, align 8, !dbg !1409
  %33 = fmul double %32, 0x3CB0000000000000, !dbg !1410
  call void @fMulHandler(double %32, double 0x3CB0000000000000, double %33, i64 94710406953800, i64 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @25, i32 0, i32 0), i64 94710406954208, i32 509, i32 24), !dbg !1411
  %34 = load double, double* %9, align 8, !dbg !1411
  %35 = fmul double %33, %34, !dbg !1412
  call void @fMulHandler(double %33, double %34, double %35, i64 94710406954208, i64 94710406954600, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @25, i32 0, i32 0), i64 94710406955008, i32 509, i32 42), !dbg !1413
  %36 = call double @fabs(double %35) #1, !dbg !1413
  %37 = fmul double %31, %36, !dbg !1414
  call void @fMulHandler(double %31, double %36, double %37, i64 94710406953416, i64 94710406955488, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @25, i32 0, i32 0), i64 94710406955968, i32 509, i32 15), !dbg !1415
  %38 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1415
  %39 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %38, i32 0, i32 1, !dbg !1416
  store double %37, double* %39, align 8, !dbg !1417
  %40 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1418
  %41 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %40, i32 0, i32 0, !dbg !1419
  %42 = load double, double* %41, align 8, !dbg !1419
  %43 = call double @fabs(double %42) #1, !dbg !1420
  %44 = fmul double 0x3CC0000000000000, %43, !dbg !1421
  call void @fMulHandler(double 0x3CC0000000000000, double %43, double %44, i64 0, i64 94710406960176, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @25, i32 0, i32 0), i64 94710406960656, i32 510, i32 35), !dbg !1422
  %45 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1422
  %46 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %45, i32 0, i32 1, !dbg !1423
  %47 = load double, double* %46, align 8, !dbg !1424
  %48 = fadd double %47, %44, !dbg !1424
  call void @fAddHandler(double %47, double %44, double %48, i64 94710406961880, i64 94710406960656, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @25, i32 0, i32 0), i64 94710406962288, i32 510, i32 10), !dbg !1424
  store double %48, double* %46, align 8, !dbg !1424
  %49 = load double, double* %5, align 8, !dbg !1425
  %50 = load double, double* %11, align 8, !dbg !1426
  %51 = fmul double %50, 0x3CB0000000000000, !dbg !1427
  call void @fMulHandler(double %50, double 0x3CB0000000000000, double %51, i64 94710406964456, i64 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @25, i32 0, i32 0), i64 94710406964864, i32 511, i32 24), !dbg !1428
  %52 = load double, double* %9, align 8, !dbg !1428
  %53 = fmul double %51, %52, !dbg !1429
  call void @fMulHandler(double %51, double %52, double %53, i64 94710406964864, i64 94710406965256, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @25, i32 0, i32 0), i64 94710406965664, i32 511, i32 42), !dbg !1430
  %54 = call double @fabs(double %53) #1, !dbg !1430
  %55 = fmul double %49, %54, !dbg !1431
  call void @fMulHandler(double %49, double %54, double %55, i64 94710406964072, i64 94710406966144, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @25, i32 0, i32 0), i64 94710406966624, i32 511, i32 15), !dbg !1432
  %56 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !1432
  %57 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %56, i32 0, i32 1, !dbg !1433
  store double %55, double* %57, align 8, !dbg !1434
  %58 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !1435
  %59 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %58, i32 0, i32 0, !dbg !1436
  %60 = load double, double* %59, align 8, !dbg !1436
  %61 = call double @fabs(double %60) #1, !dbg !1437
  %62 = fmul double 0x3CC0000000000000, %61, !dbg !1438
  call void @fMulHandler(double 0x3CC0000000000000, double %61, double %62, i64 0, i64 94710406970832, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @25, i32 0, i32 0), i64 94710406971312, i32 512, i32 35), !dbg !1439
  %63 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !1439
  %64 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %63, i32 0, i32 1, !dbg !1440
  %65 = load double, double* %64, align 8, !dbg !1441
  %66 = fadd double %65, %62, !dbg !1441
  call void @fAddHandler(double %65, double %62, double %66, i64 94710406972536, i64 94710406971312, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @25, i32 0, i32 0), i64 94710406972944, i32 512, i32 10), !dbg !1441
  store double %66, double* %64, align 8, !dbg !1441
  %67 = load i32, i32* %10, align 4, !dbg !1442
  ret i32 %67, !dbg !1443
}

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_rect_to_polar(double, double, %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct*) #0 !dbg !1444 {
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca %struct.gsl_sf_result_struct*, align 8
  %9 = alloca %struct.gsl_sf_result_struct*, align 8
  %10 = alloca i32, align 4
  store double %0, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !1445, metadata !85), !dbg !1446
  store double %1, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !1447, metadata !85), !dbg !1448
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %8, metadata !1449, metadata !85), !dbg !1450
  store %struct.gsl_sf_result_struct* %3, %struct.gsl_sf_result_struct** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %9, metadata !1451, metadata !85), !dbg !1452
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1453, metadata !85), !dbg !1454
  %11 = load double, double* %6, align 8, !dbg !1455
  %12 = load double, double* %7, align 8, !dbg !1456
  %13 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !1457
  %14 = call i32 @gsl_sf_hypot_e(double %11, double %12, %struct.gsl_sf_result_struct* %13), !dbg !1458
  store i32 %14, i32* %10, align 4, !dbg !1454
  %15 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !1459
  %16 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %15, i32 0, i32 0, !dbg !1461
  %17 = load double, double* %16, align 8, !dbg !1461
  %18 = fcmp ogt double %17, 0.000000e+00, !dbg !1462
  %19 = call i1 @fCmpInstHandler(double %17, double 0.000000e+00, i1 %18, i32 2, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @27, i32 0, i32 0), i64 94710406989168, i32 522, i32 13), !dbg !1463
  br i1 %19, label %20, label %34, !dbg !1463

; <label>:20:                                     ; preds = %4
  %21 = load double, double* %7, align 8, !dbg !1464
  %22 = load double, double* %6, align 8, !dbg !1466
  %23 = call double @atan2(double %21, double %22) #6, !dbg !1467
  call void @callTwoArgsHandler(i32 7, double %21, double %22, double %23, i64 94710406990136, i64 94710406990456, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @27, i32 0, i32 0), i64 94710406993320, i32 523, i32 18), !dbg !1468
  %24 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1468
  %25 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %24, i32 0, i32 0, !dbg !1469
  store double %23, double* %25, align 8, !dbg !1470
  %26 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1471
  %27 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %26, i32 0, i32 0, !dbg !1472
  %28 = load double, double* %27, align 8, !dbg !1472
  %29 = call double @fabs(double %28) #1, !dbg !1473
  %30 = fmul double 0x3CC0000000000000, %29, !dbg !1474
  call void @fMulHandler(double 0x3CC0000000000000, double %29, double %30, i64 0, i64 94710406997584, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @27, i32 0, i32 0), i64 94710406998064, i32 524, i32 40), !dbg !1475
  %31 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1475
  %32 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %31, i32 0, i32 1, !dbg !1476
  store double %30, double* %32, align 8, !dbg !1477
  %33 = load i32, i32* %10, align 4, !dbg !1478
  store i32 %33, i32* %5, align 4, !dbg !1479
  br label %43, !dbg !1479

; <label>:34:                                     ; preds = %4
  br label %35, !dbg !1480, !llvm.loop !1482

; <label>:35:                                     ; preds = %34
  %36 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1483
  %37 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %36, i32 0, i32 0, !dbg !1483
  store double 0x7FF8000000000000, double* %37, align 8, !dbg !1483
  %38 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1483
  %39 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %38, i32 0, i32 1, !dbg !1483
  store double 0x7FF8000000000000, double* %39, align 8, !dbg !1483
  br label %40, !dbg !1483, !llvm.loop !1486

; <label>:40:                                     ; preds = %35
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 528, i32 1), !dbg !1488
  store i32 1, i32* %5, align 4, !dbg !1488
  br label %43, !dbg !1488
                                                  ; No predecessors!
  br label %42, !dbg !1491

; <label>:42:                                     ; preds = %41
  br label %43

; <label>:43:                                     ; preds = %42, %40, %20
  %44 = load i32, i32* %5, align 4, !dbg !1493
  ret i32 %44, !dbg !1493
}

; Function Attrs: nounwind
declare double @atan2(double, double) #3

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_angle_restrict_symm_err_e(double, %struct.gsl_sf_result_struct*) #0 !dbg !1494 {
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
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !1495, metadata !85), !dbg !1496
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %5, metadata !1497, metadata !85), !dbg !1498
  call void @llvm.dbg.declare(metadata double* %6, metadata !1499, metadata !85), !dbg !1500
  store double 0x400921FB40000000, double* %6, align 8, !dbg !1500
  call void @llvm.dbg.declare(metadata double* %7, metadata !1501, metadata !85), !dbg !1502
  store double 0x3E84442D00000000, double* %7, align 8, !dbg !1502
  call void @llvm.dbg.declare(metadata double* %8, metadata !1503, metadata !85), !dbg !1504
  store double 0x3D08469898CC5170, double* %8, align 8, !dbg !1504
  call void @llvm.dbg.declare(metadata double* %9, metadata !1505, metadata !85), !dbg !1506
  store double 0x401921FB54442D18, double* %9, align 8, !dbg !1506
  call void @llvm.dbg.declare(metadata double* %10, metadata !1507, metadata !85), !dbg !1508
  %13 = load double, double* %4, align 8, !dbg !1509
  %14 = fcmp oge double %13, 0.000000e+00, !dbg !1509
  %15 = call i1 @fCmpInstHandler(double %13, double 0.000000e+00, i1 %14, i32 3, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @29, i32 0, i32 0), i64 94710407028352, i32 541, i32 20), !dbg !1509
  %16 = select i1 %15, i32 1, i32 -1, !dbg !1509
  %17 = mul nsw i32 %16, 2, !dbg !1510
  %18 = sitofp i32 %17 to double, !dbg !1509
  %19 = load double, double* %4, align 8, !dbg !1511
  %20 = call double @fabs(double %19) #1, !dbg !1512
  %21 = fdiv double %20, 0x401921FB54442D18, !dbg !1513
  call void @fDivHandler(double %20, double 0x401921FB54442D18, double %21, i64 94710407012832, i64 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @29, i32 0, i32 0), i64 94710407031376, i32 541, i32 59), !dbg !1514
  %22 = call double @floor(double %21) #1, !dbg !1514
  %23 = fmul double %18, %22, !dbg !1516
  call void @fMulHandler(double %18, double %22, double %23, i64 94710406993176, i64 94710407031856, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @29, i32 0, i32 0), i64 94710407032336, i32 541, i32 40), !dbg !1508
  store double %23, double* %10, align 8, !dbg !1508
  call void @llvm.dbg.declare(metadata double* %11, metadata !1517, metadata !85), !dbg !1518
  %24 = load double, double* %4, align 8, !dbg !1519
  %25 = load double, double* %10, align 8, !dbg !1520
  %26 = fmul double %25, 0x400921FB40000000, !dbg !1521
  call void @fMulHandler(double %25, double 0x400921FB40000000, double %26, i64 94710407035880, i64 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @29, i32 0, i32 0), i64 94710407036288, i32 542, i32 25), !dbg !1522
  %27 = fsub double %24, %26, !dbg !1522
  call void @fSubHandler(double %24, double %26, double %27, i64 94710407035528, i64 94710407036288, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @29, i32 0, i32 0), i64 94710407036704, i32 542, i32 22), !dbg !1523
  %28 = load double, double* %10, align 8, !dbg !1523
  %29 = fmul double %28, 0x3E84442D00000000, !dbg !1524
  call void @fMulHandler(double %28, double 0x3E84442D00000000, double %29, i64 94710407037096, i64 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @29, i32 0, i32 0), i64 94710407037504, i32 542, i32 33), !dbg !1525
  %30 = fsub double %27, %29, !dbg !1525
  call void @fSubHandler(double %27, double %29, double %30, i64 94710407036704, i64 94710407037504, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @29, i32 0, i32 0), i64 94710407037920, i32 542, i32 30), !dbg !1526
  %31 = load double, double* %10, align 8, !dbg !1526
  %32 = fmul double %31, 0x3D08469898CC5170, !dbg !1527
  call void @fMulHandler(double %31, double 0x3D08469898CC5170, double %32, i64 94710407038312, i64 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @29, i32 0, i32 0), i64 94710407038720, i32 542, i32 41), !dbg !1528
  %33 = fsub double %30, %32, !dbg !1528
  call void @fSubHandler(double %30, double %32, double %33, i64 94710407037920, i64 94710407038720, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @29, i32 0, i32 0), i64 94710407039136, i32 542, i32 38), !dbg !1518
  store double %33, double* %11, align 8, !dbg !1518
  %34 = load double, double* %11, align 8, !dbg !1529
  %35 = fcmp ogt double %34, 0x400921FB54442D18, !dbg !1531
  %36 = call i1 @fCmpInstHandler(double %34, double 0x400921FB54442D18, i1 %35, i32 2, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @29, i32 0, i32 0), i64 94710407041616, i32 544, i32 8), !dbg !1532
  br i1 %36, label %37, label %42, !dbg !1532

; <label>:37:                                     ; preds = %2
  %38 = load double, double* %11, align 8, !dbg !1533
  %39 = fsub double %38, 0x401921FB40000000, !dbg !1536
  call void @fSubHandler(double %38, double 0x401921FB40000000, double %39, i64 94710407042728, i64 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @29, i32 0, i32 0), i64 94710407043136, i32 544, i32 27), !dbg !1537
  %40 = fsub double %39, 0x3E94442D00000000, !dbg !1537
  call void @fSubHandler(double %39, double 0x3E94442D00000000, double %40, i64 94710407043136, i64 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @29, i32 0, i32 0), i64 94710407043616, i32 544, i32 33), !dbg !1538
  %41 = fsub double %40, 0x3D18469898CC5170, !dbg !1538
  call void @fSubHandler(double %40, double 0x3D18469898CC5170, double %41, i64 94710407043616, i64 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @29, i32 0, i32 0), i64 94710406103440, i32 544, i32 39), !dbg !1539
  store double %41, double* %11, align 8, !dbg !1539
  br label %52, !dbg !1540

; <label>:42:                                     ; preds = %2
  %43 = load double, double* %11, align 8, !dbg !1541
  %44 = fcmp olt double %43, 0xC00921FB54442D18, !dbg !1543
  %45 = call i1 @fCmpInstHandler(double %43, double 0xC00921FB54442D18, i1 %44, i32 4, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @29, i32 0, i32 0), i64 94710406105184, i32 545, i32 14), !dbg !1544
  br i1 %45, label %46, label %51, !dbg !1544

; <label>:46:                                     ; preds = %42
  %47 = load double, double* %11, align 8, !dbg !1545
  %48 = fadd double %47, 0x401921FB40000000, !dbg !1547
  call void @fAddHandler(double %47, double 0x401921FB40000000, double %48, i64 94710406106296, i64 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @29, i32 0, i32 0), i64 94710406106640, i32 545, i32 31), !dbg !1548
  %49 = fadd double %48, 0x3E94442D00000000, !dbg !1548
  call void @fAddHandler(double %48, double 0x3E94442D00000000, double %49, i64 94710406106640, i64 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @29, i32 0, i32 0), i64 94710406107056, i32 545, i32 37), !dbg !1549
  %50 = fadd double %49, 0x3D18469898CC5170, !dbg !1549
  call void @fAddHandler(double %49, double 0x3D18469898CC5170, double %50, i64 94710406107056, i64 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @29, i32 0, i32 0), i64 94710407052240, i32 545, i32 43), !dbg !1550
  store double %50, double* %11, align 8, !dbg !1550
  br label %51, !dbg !1551

; <label>:51:                                     ; preds = %46, %42
  br label %52

; <label>:52:                                     ; preds = %51, %37
  %53 = load double, double* %11, align 8, !dbg !1552
  %54 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1553
  %55 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %54, i32 0, i32 0, !dbg !1554
  store double %53, double* %55, align 8, !dbg !1555
  %56 = load double, double* %4, align 8, !dbg !1556
  %57 = call double @fabs(double %56) #1, !dbg !1558
  %58 = fcmp ogt double %57, 0x42F0000000000000, !dbg !1559
  %59 = call i1 @fCmpInstHandler(double %57, double 0x42F0000000000000, i1 %58, i32 2, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @29, i32 0, i32 0), i64 94710407056048, i32 549, i32 18), !dbg !1560
  br i1 %59, label %60, label %67, !dbg !1560

; <label>:60:                                     ; preds = %52
  %61 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1561
  %62 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %61, i32 0, i32 0, !dbg !1563
  store double 0x7FF8000000000000, double* %62, align 8, !dbg !1564
  %63 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1565
  %64 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %63, i32 0, i32 1, !dbg !1566
  store double 0x7FF8000000000000, double* %64, align 8, !dbg !1567
  br label %65, !dbg !1568, !llvm.loop !1569

; <label>:65:                                     ; preds = %60
  call void @gsl_error(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 552, i32 17), !dbg !1570
  store i32 17, i32* %3, align 4, !dbg !1570
  br label %100, !dbg !1570
                                                  ; No predecessors!
  br label %100, !dbg !1573

; <label>:67:                                     ; preds = %52
  %68 = load double, double* %4, align 8, !dbg !1574
  %69 = call double @fabs(double %68) #1, !dbg !1576
  %70 = fcmp ogt double %69, 4.194304e+06, !dbg !1577
  %71 = call i1 @fCmpInstHandler(double %69, double 4.194304e+06, i1 %70, i32 2, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @29, i32 0, i32 0), i64 94710407064544, i32 554, i32 23), !dbg !1578
  br i1 %71, label %72, label %82, !dbg !1578

; <label>:72:                                     ; preds = %67
  %73 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1579
  %74 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %73, i32 0, i32 0, !dbg !1581
  %75 = load double, double* %74, align 8, !dbg !1581
  %76 = load double, double* %4, align 8, !dbg !1582
  %77 = fsub double %75, %76, !dbg !1583
  call void @fSubHandler(double %75, double %76, double %77, i64 94710407066392, i64 94710407068040, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @29, i32 0, i32 0), i64 94710407068448, i32 555, i32 60), !dbg !1584
  %78 = call double @fabs(double %77) #1, !dbg !1584
  %79 = fmul double 0x3CC0000000000000, %78, !dbg !1585
  call void @fMulHandler(double 0x3CC0000000000000, double %78, double %79, i64 0, i64 94710407068928, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @29, i32 0, i32 0), i64 94710407069408, i32 555, i32 41), !dbg !1586
  %80 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1586
  %81 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %80, i32 0, i32 1, !dbg !1587
  store double %79, double* %81, align 8, !dbg !1588
  store i32 0, i32* %3, align 4, !dbg !1589
  br label %100, !dbg !1589

; <label>:82:                                     ; preds = %67
  call void @llvm.dbg.declare(metadata double* %12, metadata !1590, metadata !85), !dbg !1592
  %83 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1593
  %84 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %83, i32 0, i32 0, !dbg !1594
  %85 = load double, double* %84, align 8, !dbg !1594
  %86 = load double, double* %4, align 8, !dbg !1595
  %87 = fsub double %85, %86, !dbg !1596
  call void @fSubHandler(double %85, double %86, double %87, i64 94710407074968, i64 94710407076616, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @29, i32 0, i32 0), i64 94710407077024, i32 559, i32 37), !dbg !1597
  %88 = call double @fabs(double %87) #1, !dbg !1597
  store double %88, double* %12, align 8, !dbg !1592
  %89 = load double, double* %12, align 8, !dbg !1598
  %90 = fcmp olt double %89, 0x400921FB54442D18, !dbg !1599
  %91 = call i1 @fCmpInstHandler(double %89, double 0x400921FB54442D18, i1 %90, i32 4, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @29, i32 0, i32 0), i64 94710407080048, i32 560, i32 51), !dbg !1600
  br i1 %91, label %92, label %94, !dbg !1600

; <label>:92:                                     ; preds = %82
  %93 = load double, double* %12, align 8, !dbg !1601
  br label %95, !dbg !1603

; <label>:94:                                     ; preds = %82
  br label %95, !dbg !1604

; <label>:95:                                     ; preds = %94, %92
  %96 = phi double [ %93, %92 ], [ 0x400921FB54442D18, %94 ], !dbg !1606
  %97 = fmul double 0x3CC0000000000000, %96, !dbg !1608
  call void @fMulHandler(double 0x3CC0000000000000, double %96, double %97, i64 0, i64 94710407082312, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @29, i32 0, i32 0), i64 94710407082752, i32 560, i32 41), !dbg !1609
  %98 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1609
  %99 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %98, i32 0, i32 1, !dbg !1610
  store double %97, double* %99, align 8, !dbg !1611
  store i32 0, i32* %3, align 4, !dbg !1612
  br label %100, !dbg !1612

; <label>:100:                                    ; preds = %95, %72, %66, %65
  %101 = load i32, i32* %3, align 4, !dbg !1613
  ret i32 %101, !dbg !1613
}

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_angle_restrict_pos_err_e(double, %struct.gsl_sf_result_struct*) #0 !dbg !1614 {
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
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !1615, metadata !85), !dbg !1616
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %5, metadata !1617, metadata !85), !dbg !1618
  call void @llvm.dbg.declare(metadata double* %6, metadata !1619, metadata !85), !dbg !1620
  store double 0x400921FB40000000, double* %6, align 8, !dbg !1620
  call void @llvm.dbg.declare(metadata double* %7, metadata !1621, metadata !85), !dbg !1622
  store double 0x3E84442D00000000, double* %7, align 8, !dbg !1622
  call void @llvm.dbg.declare(metadata double* %8, metadata !1623, metadata !85), !dbg !1624
  store double 0x3D08469898CC5170, double* %8, align 8, !dbg !1624
  call void @llvm.dbg.declare(metadata double* %9, metadata !1625, metadata !85), !dbg !1626
  store double 0x401921FB54442D18, double* %9, align 8, !dbg !1626
  call void @llvm.dbg.declare(metadata double* %10, metadata !1627, metadata !85), !dbg !1628
  %13 = load double, double* %4, align 8, !dbg !1629
  %14 = fdiv double %13, 0x401921FB54442D18, !dbg !1630
  call void @fDivHandler(double %13, double 0x401921FB54442D18, double %14, i64 94710407106776, i64 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @30, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @31, i32 0, i32 0), i64 94710407107152, i32 574, i32 33), !dbg !1631
  %15 = call double @floor(double %14) #1, !dbg !1631
  %16 = fmul double 2.000000e+00, %15, !dbg !1632
  call void @fMulHandler(double 2.000000e+00, double %15, double %16, i64 0, i64 94710407107632, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @30, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @31, i32 0, i32 0), i64 94710407108144, i32 574, i32 21), !dbg !1628
  store double %16, double* %10, align 8, !dbg !1628
  call void @llvm.dbg.declare(metadata double* %11, metadata !1633, metadata !85), !dbg !1634
  %17 = load double, double* %4, align 8, !dbg !1635
  %18 = load double, double* %10, align 8, !dbg !1636
  %19 = fmul double %18, 0x400921FB40000000, !dbg !1637
  call void @fMulHandler(double %18, double 0x400921FB40000000, double %19, i64 94710407111512, i64 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @30, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @31, i32 0, i32 0), i64 94710407111920, i32 576, i32 25), !dbg !1638
  %20 = fsub double %17, %19, !dbg !1638
  call void @fSubHandler(double %17, double %19, double %20, i64 94710407111160, i64 94710407111920, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @30, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @31, i32 0, i32 0), i64 94710407112336, i32 576, i32 22), !dbg !1639
  %21 = load double, double* %10, align 8, !dbg !1639
  %22 = fmul double %21, 0x3E84442D00000000, !dbg !1640
  call void @fMulHandler(double %21, double 0x3E84442D00000000, double %22, i64 94710407112728, i64 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @30, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @31, i32 0, i32 0), i64 94710407113136, i32 576, i32 33), !dbg !1641
  %23 = fsub double %20, %22, !dbg !1641
  call void @fSubHandler(double %20, double %22, double %23, i64 94710407112336, i64 94710407113136, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @30, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @31, i32 0, i32 0), i64 94710407113552, i32 576, i32 30), !dbg !1642
  %24 = load double, double* %10, align 8, !dbg !1642
  %25 = fmul double %24, 0x3D08469898CC5170, !dbg !1643
  call void @fMulHandler(double %24, double 0x3D08469898CC5170, double %25, i64 94710407113944, i64 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @30, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @31, i32 0, i32 0), i64 94710407114352, i32 576, i32 41), !dbg !1644
  %26 = fsub double %23, %25, !dbg !1644
  call void @fSubHandler(double %23, double %25, double %26, i64 94710407113552, i64 94710407114352, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @30, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @31, i32 0, i32 0), i64 94710407114768, i32 576, i32 38), !dbg !1634
  store double %26, double* %11, align 8, !dbg !1634
  %27 = load double, double* %11, align 8, !dbg !1645
  %28 = fcmp ogt double %27, 0x401921FB54442D18, !dbg !1647
  %29 = call i1 @fCmpInstHandler(double %27, double 0x401921FB54442D18, i1 %28, i32 2, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @30, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @31, i32 0, i32 0), i64 94710407117248, i32 578, i32 8), !dbg !1648
  br i1 %29, label %30, label %35, !dbg !1648

; <label>:30:                                     ; preds = %2
  %31 = load double, double* %11, align 8, !dbg !1649
  %32 = fsub double %31, 0x401921FB40000000, !dbg !1652
  call void @fSubHandler(double %31, double 0x401921FB40000000, double %32, i64 94710407118360, i64 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @30, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @31, i32 0, i32 0), i64 94710407118704, i32 578, i32 26), !dbg !1653
  %33 = fsub double %32, 0x3E94442D00000000, !dbg !1653
  call void @fSubHandler(double %32, double 0x3E94442D00000000, double %33, i64 94710407118704, i64 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @30, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @31, i32 0, i32 0), i64 94710407119120, i32 578, i32 32), !dbg !1654
  %34 = fsub double %33, 0x3D18469898CC5170, !dbg !1654
  call void @fSubHandler(double %33, double 0x3D18469898CC5170, double %34, i64 94710407119120, i64 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @30, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @31, i32 0, i32 0), i64 94710407119536, i32 578, i32 38), !dbg !1655
  store double %34, double* %11, align 8, !dbg !1655
  br label %45, !dbg !1656

; <label>:35:                                     ; preds = %2
  %36 = load double, double* %11, align 8, !dbg !1657
  %37 = fcmp olt double %36, 0.000000e+00, !dbg !1659
  %38 = call i1 @fCmpInstHandler(double %36, double 0.000000e+00, i1 %37, i32 4, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @30, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @31, i32 0, i32 0), i64 94710407121216, i32 579, i32 14), !dbg !1660
  br i1 %38, label %39, label %44, !dbg !1660

; <label>:39:                                     ; preds = %35
  %40 = load double, double* %11, align 8, !dbg !1661
  %41 = fadd double %40, 0x401921FB40000000, !dbg !1663
  call void @fAddHandler(double %40, double 0x401921FB40000000, double %41, i64 94710407122328, i64 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @30, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @31, i32 0, i32 0), i64 94710407122672, i32 580, i32 13), !dbg !1664
  %42 = fadd double %41, 0x3E94442D00000000, !dbg !1664
  call void @fAddHandler(double %41, double 0x3E94442D00000000, double %42, i64 94710407122672, i64 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @30, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @31, i32 0, i32 0), i64 94710407123088, i32 580, i32 19), !dbg !1665
  %43 = fadd double %42, 0x3D18469898CC5170, !dbg !1665
  call void @fAddHandler(double %42, double 0x3D18469898CC5170, double %43, i64 94710407123088, i64 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @30, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @31, i32 0, i32 0), i64 94710407123504, i32 580, i32 25), !dbg !1666
  store double %43, double* %11, align 8, !dbg !1666
  br label %44, !dbg !1667

; <label>:44:                                     ; preds = %39, %35
  br label %45

; <label>:45:                                     ; preds = %44, %30
  %46 = load double, double* %11, align 8, !dbg !1668
  %47 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1669
  %48 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %47, i32 0, i32 0, !dbg !1670
  store double %46, double* %48, align 8, !dbg !1671
  %49 = load double, double* %4, align 8, !dbg !1672
  %50 = call double @fabs(double %49) #1, !dbg !1674
  %51 = fcmp ogt double %50, 0x42F0000000000000, !dbg !1675
  %52 = call i1 @fCmpInstHandler(double %50, double 0x42F0000000000000, i1 %51, i32 2, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @30, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @31, i32 0, i32 0), i64 94710407127248, i32 585, i32 18), !dbg !1676
  br i1 %52, label %53, label %64, !dbg !1676

; <label>:53:                                     ; preds = %45
  %54 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1677
  %55 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %54, i32 0, i32 0, !dbg !1679
  store double 0x7FF8000000000000, double* %55, align 8, !dbg !1680
  %56 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1681
  %57 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %56, i32 0, i32 0, !dbg !1682
  %58 = load double, double* %57, align 8, !dbg !1682
  %59 = call double @fabs(double %58) #1, !dbg !1683
  %60 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1684
  %61 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %60, i32 0, i32 1, !dbg !1685
  store double %59, double* %61, align 8, !dbg !1686
  br label %62, !dbg !1687, !llvm.loop !1688

; <label>:62:                                     ; preds = %53
  call void @gsl_error(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 588, i32 17), !dbg !1689
  store i32 17, i32* %3, align 4, !dbg !1689
  br label %97, !dbg !1689
                                                  ; No predecessors!
  br label %97, !dbg !1692

; <label>:64:                                     ; preds = %45
  %65 = load double, double* %4, align 8, !dbg !1693
  %66 = call double @fabs(double %65) #1, !dbg !1695
  %67 = fcmp ogt double %66, 4.194304e+06, !dbg !1696
  %68 = call i1 @fCmpInstHandler(double %66, double 4.194304e+06, i1 %67, i32 2, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @30, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @31, i32 0, i32 0), i64 94710407138512, i32 590, i32 23), !dbg !1697
  br i1 %68, label %69, label %79, !dbg !1697

; <label>:69:                                     ; preds = %64
  %70 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1698
  %71 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %70, i32 0, i32 0, !dbg !1700
  %72 = load double, double* %71, align 8, !dbg !1700
  %73 = load double, double* %4, align 8, !dbg !1701
  %74 = fsub double %72, %73, !dbg !1702
  call void @fSubHandler(double %72, double %73, double %74, i64 94710407140360, i64 94710407142008, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @30, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @31, i32 0, i32 0), i64 94710407142416, i32 591, i32 54), !dbg !1703
  %75 = call double @fabs(double %74) #1, !dbg !1703
  %76 = fmul double 0x3CB0000000000000, %75, !dbg !1704
  call void @fMulHandler(double 0x3CB0000000000000, double %75, double %76, i64 0, i64 94710407142896, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @30, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @31, i32 0, i32 0), i64 94710407143376, i32 591, i32 35), !dbg !1705
  %77 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1705
  %78 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %77, i32 0, i32 1, !dbg !1706
  store double %76, double* %78, align 8, !dbg !1707
  store i32 0, i32* %3, align 4, !dbg !1708
  br label %97, !dbg !1708

; <label>:79:                                     ; preds = %64
  call void @llvm.dbg.declare(metadata double* %12, metadata !1709, metadata !85), !dbg !1711
  %80 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1712
  %81 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %80, i32 0, i32 0, !dbg !1713
  %82 = load double, double* %81, align 8, !dbg !1713
  %83 = load double, double* %4, align 8, !dbg !1714
  %84 = fsub double %82, %83, !dbg !1715
  call void @fSubHandler(double %82, double %83, double %84, i64 94710407148936, i64 94710407150584, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @30, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @31, i32 0, i32 0), i64 94710407150992, i32 595, i32 37), !dbg !1716
  %85 = call double @fabs(double %84) #1, !dbg !1716
  store double %85, double* %12, align 8, !dbg !1711
  %86 = load double, double* %12, align 8, !dbg !1717
  %87 = fcmp olt double %86, 0x400921FB54442D18, !dbg !1718
  %88 = call i1 @fCmpInstHandler(double %86, double 0x400921FB54442D18, i1 %87, i32 4, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @30, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @31, i32 0, i32 0), i64 94710407154016, i32 596, i32 51), !dbg !1719
  br i1 %88, label %89, label %91, !dbg !1719

; <label>:89:                                     ; preds = %79
  %90 = load double, double* %12, align 8, !dbg !1720
  br label %92, !dbg !1722

; <label>:91:                                     ; preds = %79
  br label %92, !dbg !1723

; <label>:92:                                     ; preds = %91, %89
  %93 = phi double [ %90, %89 ], [ 0x400921FB54442D18, %91 ], !dbg !1725
  %94 = fmul double 0x3CC0000000000000, %93, !dbg !1727
  call void @fMulHandler(double 0x3CC0000000000000, double %93, double %94, i64 0, i64 94710407156280, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @30, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @31, i32 0, i32 0), i64 94710407156720, i32 596, i32 41), !dbg !1728
  %95 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1728
  %96 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %95, i32 0, i32 1, !dbg !1729
  store double %94, double* %96, align 8, !dbg !1730
  store i32 0, i32* %3, align 4, !dbg !1731
  br label %97, !dbg !1731

; <label>:97:                                     ; preds = %92, %69, %63, %62
  %98 = load i32, i32* %3, align 4, !dbg !1732
  ret i32 %98, !dbg !1732
}

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_angle_restrict_pos_e(double*) #0 !dbg !1733 {
  %2 = alloca double*, align 8
  %3 = alloca %struct.gsl_sf_result_struct, align 8
  %4 = alloca i32, align 4
  store double* %0, double** %2, align 8
  call void @llvm.dbg.declare(metadata double** %2, metadata !1734, metadata !85), !dbg !1735
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %3, metadata !1736, metadata !85), !dbg !1737
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1738, metadata !85), !dbg !1739
  %5 = load double*, double** %2, align 8, !dbg !1740
  %6 = load double, double* %5, align 8, !dbg !1741
  %7 = call i32 @gsl_sf_angle_restrict_pos_err_e(double %6, %struct.gsl_sf_result_struct* %3), !dbg !1742
  store i32 %7, i32* %4, align 4, !dbg !1739
  %8 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %3, i32 0, i32 0, !dbg !1743
  %9 = load double, double* %8, align 8, !dbg !1743
  %10 = load double*, double** %2, align 8, !dbg !1744
  store double %9, double* %10, align 8, !dbg !1745
  %11 = load i32, i32* %4, align 4, !dbg !1746
  ret i32 %11, !dbg !1747
}

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_sin_err_e(double, double, %struct.gsl_sf_result_struct*) #0 !dbg !1748 {
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca %struct.gsl_sf_result_struct*, align 8
  %7 = alloca i32, align 4
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !1749, metadata !85), !dbg !1750
  store double %1, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !1751, metadata !85), !dbg !1752
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %6, metadata !1753, metadata !85), !dbg !1754
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1755, metadata !85), !dbg !1756
  %8 = load double, double* %4, align 8, !dbg !1757
  %9 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !1758
  %10 = call i32 @gsl_sf_sin_e(double %8, %struct.gsl_sf_result_struct* %9), !dbg !1759
  store i32 %10, i32* %7, align 4, !dbg !1756
  %11 = load double, double* %4, align 8, !dbg !1760
  %12 = call double @cos(double %11) #6, !dbg !1761
  call void @callOneArgHandler(i32 2, double %11, double %12, i64 94710407182872, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @34, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @35, i32 0, i32 0), i64 94710407183312, i32 623, i32 23), !dbg !1762
  %13 = load double, double* %5, align 8, !dbg !1762
  %14 = fmul double %12, %13, !dbg !1763
  call void @fMulHandler(double %12, double %13, double %14, i64 94710407183312, i64 94710407183768, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @34, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @35, i32 0, i32 0), i64 94710407184176, i32 623, i32 30), !dbg !1764
  %15 = call double @fabs(double %14) #1, !dbg !1764
  %16 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !1766
  %17 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %16, i32 0, i32 1, !dbg !1767
  %18 = load double, double* %17, align 8, !dbg !1768
  %19 = fadd double %18, %15, !dbg !1768
  call void @fAddHandler(double %18, double %15, double %19, i64 94710407185944, i64 94710407184656, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @34, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @35, i32 0, i32 0), i64 94710407186352, i32 623, i32 15), !dbg !1768
  store double %19, double* %17, align 8, !dbg !1768
  %20 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !1769
  %21 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %20, i32 0, i32 0, !dbg !1770
  %22 = load double, double* %21, align 8, !dbg !1770
  %23 = call double @fabs(double %22) #1, !dbg !1771
  %24 = fmul double 0x3CB0000000000000, %23, !dbg !1772
  call void @fMulHandler(double 0x3CB0000000000000, double %23, double %24, i64 0, i64 94710407180208, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @34, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @35, i32 0, i32 0), i64 94710407191040, i32 624, i32 34), !dbg !1773
  %25 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !1773
  %26 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %25, i32 0, i32 1, !dbg !1774
  %27 = load double, double* %26, align 8, !dbg !1775
  %28 = fadd double %27, %24, !dbg !1775
  call void @fAddHandler(double %27, double %24, double %28, i64 94710407192264, i64 94710407191040, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @34, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @35, i32 0, i32 0), i64 94710407192672, i32 624, i32 15), !dbg !1775
  store double %28, double* %26, align 8, !dbg !1775
  %29 = load i32, i32* %7, align 4, !dbg !1776
  ret i32 %29, !dbg !1777
}

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_cos_err_e(double, double, %struct.gsl_sf_result_struct*) #0 !dbg !1778 {
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca %struct.gsl_sf_result_struct*, align 8
  %7 = alloca i32, align 4
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !1779, metadata !85), !dbg !1780
  store double %1, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !1781, metadata !85), !dbg !1782
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %6, metadata !1783, metadata !85), !dbg !1784
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1785, metadata !85), !dbg !1786
  %8 = load double, double* %4, align 8, !dbg !1787
  %9 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !1788
  %10 = call i32 @gsl_sf_cos_e(double %8, %struct.gsl_sf_result_struct* %9), !dbg !1789
  store i32 %10, i32* %7, align 4, !dbg !1786
  %11 = load double, double* %4, align 8, !dbg !1790
  %12 = call double @sin(double %11) #6, !dbg !1791
  call void @callOneArgHandler(i32 1, double %11, double %12, i64 94710407204504, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @36, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @37, i32 0, i32 0), i64 94710407204944, i32 632, i32 23), !dbg !1792
  %13 = load double, double* %5, align 8, !dbg !1792
  %14 = fmul double %12, %13, !dbg !1793
  call void @fMulHandler(double %12, double %13, double %14, i64 94710407204944, i64 94710407205400, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @36, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @37, i32 0, i32 0), i64 94710407205808, i32 632, i32 30), !dbg !1794
  %15 = call double @fabs(double %14) #1, !dbg !1794
  %16 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !1796
  %17 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %16, i32 0, i32 1, !dbg !1797
  %18 = load double, double* %17, align 8, !dbg !1798
  %19 = fadd double %18, %15, !dbg !1798
  call void @fAddHandler(double %18, double %15, double %19, i64 94710407207576, i64 94710407206288, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @36, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @37, i32 0, i32 0), i64 94710407207984, i32 632, i32 15), !dbg !1798
  store double %19, double* %17, align 8, !dbg !1798
  %20 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !1799
  %21 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %20, i32 0, i32 0, !dbg !1800
  %22 = load double, double* %21, align 8, !dbg !1800
  %23 = call double @fabs(double %22) #1, !dbg !1801
  %24 = fmul double 0x3CB0000000000000, %23, !dbg !1802
  call void @fMulHandler(double 0x3CB0000000000000, double %23, double %24, i64 0, i64 94710407201840, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @36, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @37, i32 0, i32 0), i64 94710407212672, i32 633, i32 34), !dbg !1803
  %25 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !1803
  %26 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %25, i32 0, i32 1, !dbg !1804
  %27 = load double, double* %26, align 8, !dbg !1805
  %28 = fadd double %27, %24, !dbg !1805
  call void @fAddHandler(double %27, double %24, double %28, i64 94710407213896, i64 94710407212672, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @36, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @37, i32 0, i32 0), i64 94710407214304, i32 633, i32 15), !dbg !1805
  store double %28, double* %26, align 8, !dbg !1805
  %29 = load i32, i32* %7, align 4, !dbg !1806
  ret i32 %29, !dbg !1807
}

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_sinc_e(double, %struct.gsl_sf_result_struct*) #0 !dbg !1808 {
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca %struct.gsl_sf_result_struct*, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca %struct.gsl_sf_result_struct, align 8
  %9 = alloca i32, align 4
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !1809, metadata !85), !dbg !1810
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %5, metadata !1811, metadata !85), !dbg !1812
  call void @llvm.dbg.declare(metadata double* %6, metadata !1813, metadata !85), !dbg !1815
  %10 = load double, double* %4, align 8, !dbg !1816
  %11 = call double @fabs(double %10) #1, !dbg !1817
  store double %11, double* %6, align 8, !dbg !1815
  %12 = load double, double* %6, align 8, !dbg !1818
  %13 = fcmp olt double %12, 8.000000e-01, !dbg !1820
  %14 = call i1 @fCmpInstHandler(double %12, double 8.000000e-01, i1 %13, i32 4, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @38, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @39, i32 0, i32 0), i64 94710407225296, i32 689, i32 11), !dbg !1821
  br i1 %14, label %15, label %21, !dbg !1821

; <label>:15:                                     ; preds = %2
  %16 = load double, double* %6, align 8, !dbg !1822
  %17 = fmul double 2.000000e+00, %16, !dbg !1824
  call void @fMulHandler(double 2.000000e+00, double %16, double %17, i64 0, i64 94710407226376, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @38, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @39, i32 0, i32 0), i64 94710407226752, i32 694, i32 39), !dbg !1825
  %18 = fsub double %17, 1.000000e+00, !dbg !1825
  call void @fSubHandler(double %17, double 1.000000e+00, double %18, i64 94710407226752, i64 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @38, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @39, i32 0, i32 0), i64 94710407227168, i32 694, i32 42), !dbg !1826
  %19 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1826
  %20 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @sinc_cs, double %18, %struct.gsl_sf_result_struct* %19), !dbg !1827
  store i32 %20, i32* %3, align 4, !dbg !1828
  br label %65, !dbg !1828

; <label>:21:                                     ; preds = %2
  %22 = load double, double* %6, align 8, !dbg !1829
  %23 = fcmp olt double %22, 1.000000e+02, !dbg !1831
  %24 = call i1 @fCmpInstHandler(double %22, double 1.000000e+02, i1 %23, i32 4, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @38, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @39, i32 0, i32 0), i64 94710407231056, i32 696, i32 16), !dbg !1832
  br i1 %24, label %25, label %41, !dbg !1832

; <label>:25:                                     ; preds = %21
  %26 = load double, double* %6, align 8, !dbg !1833
  %27 = fmul double 0x400921FB54442D18, %26, !dbg !1835
  call void @fMulHandler(double 0x400921FB54442D18, double %26, double %27, i64 0, i64 94710407231992, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @38, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @39, i32 0, i32 0), i64 94710407232336, i32 701, i32 30), !dbg !1836
  %28 = call double @sin(double %27) #6, !dbg !1836
  call void @callOneArgHandler(i32 1, double %27, double %28, i64 94710407232336, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @38, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @39, i32 0, i32 0), i64 94710407232816, i32 701, i32 21), !dbg !1837
  %29 = load double, double* %6, align 8, !dbg !1837
  %30 = fmul double 0x400921FB54442D18, %29, !dbg !1838
  call void @fMulHandler(double 0x400921FB54442D18, double %29, double %30, i64 0, i64 94710407233272, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @38, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @39, i32 0, i32 0), i64 94710407233680, i32 701, i32 42), !dbg !1839
  %31 = fdiv double %28, %30, !dbg !1839
  call void @fDivHandler(double %28, double %30, double %31, i64 94710407232816, i64 94710407233680, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @38, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @39, i32 0, i32 0), i64 94710407234096, i32 701, i32 35), !dbg !1840
  %32 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1840
  %33 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %32, i32 0, i32 0, !dbg !1841
  store double %31, double* %33, align 8, !dbg !1842
  %34 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1843
  %35 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %34, i32 0, i32 0, !dbg !1844
  %36 = load double, double* %35, align 8, !dbg !1844
  %37 = call double @fabs(double %36) #1, !dbg !1845
  %38 = fmul double 0x3CC0000000000000, %37, !dbg !1846
  call void @fMulHandler(double 0x3CC0000000000000, double %37, double %38, i64 0, i64 94710407238304, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @38, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @39, i32 0, i32 0), i64 94710407238784, i32 702, i32 43), !dbg !1847
  %39 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1847
  %40 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %39, i32 0, i32 1, !dbg !1848
  store double %38, double* %40, align 8, !dbg !1849
  store i32 0, i32* %3, align 4, !dbg !1850
  br label %65, !dbg !1850

; <label>:41:                                     ; preds = %21
  call void @llvm.dbg.declare(metadata double* %7, metadata !1851, metadata !85), !dbg !1853
  %42 = load double, double* %6, align 8, !dbg !1854
  %43 = fmul double 0x400921FB54442D18, %42, !dbg !1855
  call void @fMulHandler(double 0x400921FB54442D18, double %42, double %43, i64 0, i64 94710407243544, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @38, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @39, i32 0, i32 0), i64 94710407243920, i32 708, i32 28), !dbg !1853
  store double %43, double* %7, align 8, !dbg !1853
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %8, metadata !1856, metadata !85), !dbg !1857
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1858, metadata !85), !dbg !1859
  %44 = load double, double* %7, align 8, !dbg !1860
  %45 = call i32 @gsl_sf_sin_e(double %44, %struct.gsl_sf_result_struct* %8), !dbg !1861
  store i32 %45, i32* %9, align 4, !dbg !1859
  %46 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 0, !dbg !1862
  %47 = load double, double* %46, align 8, !dbg !1862
  %48 = load double, double* %7, align 8, !dbg !1863
  %49 = fdiv double %47, %48, !dbg !1864
  call void @fDivHandler(double %47, double %48, double %49, i64 94710407251208, i64 94710407252856, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @38, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @39, i32 0, i32 0), i64 94710407253264, i32 711, i32 26), !dbg !1865
  %50 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1865
  %51 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %50, i32 0, i32 0, !dbg !1866
  store double %49, double* %51, align 8, !dbg !1867
  %52 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 1, !dbg !1868
  %53 = load double, double* %52, align 8, !dbg !1868
  %54 = load double, double* %7, align 8, !dbg !1869
  %55 = fdiv double %53, %54, !dbg !1870
  call void @fDivHandler(double %53, double %54, double %55, i64 94710407255352, i64 94710407257000, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @38, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @39, i32 0, i32 0), i64 94710407257408, i32 712, i32 26), !dbg !1871
  %56 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1871
  %57 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %56, i32 0, i32 0, !dbg !1872
  %58 = load double, double* %57, align 8, !dbg !1872
  %59 = call double @fabs(double %58) #1, !dbg !1873
  %60 = fmul double 0x3CC0000000000000, %59, !dbg !1874
  call void @fMulHandler(double 0x3CC0000000000000, double %59, double %60, i64 0, i64 94710407260368, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @38, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @39, i32 0, i32 0), i64 94710407260848, i32 712, i32 53), !dbg !1875
  %61 = fadd double %55, %60, !dbg !1875
  call void @fAddHandler(double %55, double %60, double %61, i64 94710407257408, i64 94710407260848, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @38, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @39, i32 0, i32 0), i64 94710407261264, i32 712, i32 29), !dbg !1876
  %62 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1876
  %63 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %62, i32 0, i32 1, !dbg !1877
  store double %61, double* %63, align 8, !dbg !1878
  %64 = load i32, i32* %9, align 4, !dbg !1879
  store i32 %64, i32* %3, align 4, !dbg !1880
  br label %65, !dbg !1880

; <label>:65:                                     ; preds = %41, %25, %15
  %66 = load i32, i32* %3, align 4, !dbg !1881
  ret i32 %66, !dbg !1881
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_sin(double) #0 !dbg !1882 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct, align 8
  %5 = alloca i32, align 4
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !1885, metadata !85), !dbg !1886
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %4, metadata !1887, metadata !85), !dbg !1888
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1889, metadata !85), !dbg !1888
  %6 = load double, double* %3, align 8, !dbg !1888
  %7 = call i32 @gsl_sf_sin_e(double %6, %struct.gsl_sf_result_struct* %4), !dbg !1888
  store i32 %7, i32* %5, align 4, !dbg !1888
  %8 = load i32, i32* %5, align 4, !dbg !1890
  %9 = icmp ne i32 %8, 0, !dbg !1890
  %10 = sext i32 %8 to i64, !dbg !1888
  %11 = call i1 @iCmpInstHandler(i64 %10, i64 0, i1 %9, i32 33, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @40, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @41, i32 0, i32 0), i64 94710407274368, i32 726, i32 3), !dbg !1888
  br i1 %11, label %12, label %18, !dbg !1888

; <label>:12:                                     ; preds = %1
  br label %13, !dbg !1892, !llvm.loop !1895

; <label>:13:                                     ; preds = %12
  %14 = load i32, i32* %5, align 4, !dbg !1897
  call void @gsl_error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 726, i32 %14), !dbg !1897
  %15 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !1897
  %16 = load double, double* %15, align 8, !dbg !1897
  store double %16, double* %2, align 8, !dbg !1897
  br label %21, !dbg !1897
                                                  ; No predecessors!
  br label %18, !dbg !1900

; <label>:18:                                     ; preds = %17, %1
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !1902
  %20 = load double, double* %19, align 8, !dbg !1902
  store double %20, double* %2, align 8, !dbg !1902
  br label %21, !dbg !1902

; <label>:21:                                     ; preds = %18, %13
  %22 = load double, double* %2, align 8, !dbg !1904
  ret double %22, !dbg !1904
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_cos(double) #0 !dbg !1905 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct, align 8
  %5 = alloca i32, align 4
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !1906, metadata !85), !dbg !1907
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %4, metadata !1908, metadata !85), !dbg !1909
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1910, metadata !85), !dbg !1909
  %6 = load double, double* %3, align 8, !dbg !1909
  %7 = call i32 @gsl_sf_cos_e(double %6, %struct.gsl_sf_result_struct* %4), !dbg !1909
  store i32 %7, i32* %5, align 4, !dbg !1909
  %8 = load i32, i32* %5, align 4, !dbg !1911
  %9 = icmp ne i32 %8, 0, !dbg !1911
  %10 = sext i32 %8 to i64, !dbg !1909
  %11 = call i1 @iCmpInstHandler(i64 %10, i64 0, i1 %9, i32 33, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @42, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @43, i32 0, i32 0), i64 94710407291664, i32 731, i32 3), !dbg !1909
  br i1 %11, label %12, label %18, !dbg !1909

; <label>:12:                                     ; preds = %1
  br label %13, !dbg !1913, !llvm.loop !1916

; <label>:13:                                     ; preds = %12
  %14 = load i32, i32* %5, align 4, !dbg !1918
  call void @gsl_error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 731, i32 %14), !dbg !1918
  %15 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !1918
  %16 = load double, double* %15, align 8, !dbg !1918
  store double %16, double* %2, align 8, !dbg !1918
  br label %21, !dbg !1918
                                                  ; No predecessors!
  br label %18, !dbg !1921

; <label>:18:                                     ; preds = %17, %1
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !1923
  %20 = load double, double* %19, align 8, !dbg !1923
  store double %20, double* %2, align 8, !dbg !1923
  br label %21, !dbg !1923

; <label>:21:                                     ; preds = %18, %13
  %22 = load double, double* %2, align 8, !dbg !1925
  ret double %22, !dbg !1925
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_hypot(double, double) #0 !dbg !1926 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca %struct.gsl_sf_result_struct, align 8
  %7 = alloca i32, align 4
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !1929, metadata !85), !dbg !1930
  store double %1, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !1931, metadata !85), !dbg !1932
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %6, metadata !1933, metadata !85), !dbg !1934
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1935, metadata !85), !dbg !1934
  %8 = load double, double* %4, align 8, !dbg !1934
  %9 = load double, double* %5, align 8, !dbg !1934
  %10 = call i32 @gsl_sf_hypot_e(double %8, double %9, %struct.gsl_sf_result_struct* %6), !dbg !1934
  store i32 %10, i32* %7, align 4, !dbg !1934
  %11 = load i32, i32* %7, align 4, !dbg !1936
  %12 = icmp ne i32 %11, 0, !dbg !1936
  %13 = sext i32 %11 to i64, !dbg !1934
  %14 = call i1 @iCmpInstHandler(i64 %13, i64 0, i1 %12, i32 33, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @44, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @45, i32 0, i32 0), i64 94710407310400, i32 736, i32 3), !dbg !1934
  br i1 %14, label %15, label %21, !dbg !1934

; <label>:15:                                     ; preds = %2
  br label %16, !dbg !1938, !llvm.loop !1941

; <label>:16:                                     ; preds = %15
  %17 = load i32, i32* %7, align 4, !dbg !1943
  call void @gsl_error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 736, i32 %17), !dbg !1943
  %18 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !1943
  %19 = load double, double* %18, align 8, !dbg !1943
  store double %19, double* %3, align 8, !dbg !1943
  br label %24, !dbg !1943
                                                  ; No predecessors!
  br label %21, !dbg !1946

; <label>:21:                                     ; preds = %20, %2
  %22 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !1948
  %23 = load double, double* %22, align 8, !dbg !1948
  store double %23, double* %3, align 8, !dbg !1948
  br label %24, !dbg !1948

; <label>:24:                                     ; preds = %21, %16
  %25 = load double, double* %3, align 8, !dbg !1950
  ret double %25, !dbg !1950
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_lnsinh(double) #0 !dbg !1951 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct, align 8
  %5 = alloca i32, align 4
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !1952, metadata !85), !dbg !1953
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %4, metadata !1954, metadata !85), !dbg !1955
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1956, metadata !85), !dbg !1955
  %6 = load double, double* %3, align 8, !dbg !1955
  %7 = call i32 @gsl_sf_lnsinh_e(double %6, %struct.gsl_sf_result_struct* %4), !dbg !1955
  store i32 %7, i32* %5, align 4, !dbg !1955
  %8 = load i32, i32* %5, align 4, !dbg !1957
  %9 = icmp ne i32 %8, 0, !dbg !1957
  %10 = sext i32 %8 to i64, !dbg !1955
  %11 = call i1 @iCmpInstHandler(i64 %10, i64 0, i1 %9, i32 33, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @46, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @47, i32 0, i32 0), i64 94710407327776, i32 741, i32 3), !dbg !1955
  br i1 %11, label %12, label %18, !dbg !1955

; <label>:12:                                     ; preds = %1
  br label %13, !dbg !1959, !llvm.loop !1962

; <label>:13:                                     ; preds = %12
  %14 = load i32, i32* %5, align 4, !dbg !1964
  call void @gsl_error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 741, i32 %14), !dbg !1964
  %15 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !1964
  %16 = load double, double* %15, align 8, !dbg !1964
  store double %16, double* %2, align 8, !dbg !1964
  br label %21, !dbg !1964
                                                  ; No predecessors!
  br label %18, !dbg !1967

; <label>:18:                                     ; preds = %17, %1
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !1969
  %20 = load double, double* %19, align 8, !dbg !1969
  store double %20, double* %2, align 8, !dbg !1969
  br label %21, !dbg !1969

; <label>:21:                                     ; preds = %18, %13
  %22 = load double, double* %2, align 8, !dbg !1971
  ret double %22, !dbg !1971
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_lncosh(double) #0 !dbg !1972 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct, align 8
  %5 = alloca i32, align 4
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !1973, metadata !85), !dbg !1974
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %4, metadata !1975, metadata !85), !dbg !1976
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1977, metadata !85), !dbg !1976
  %6 = load double, double* %3, align 8, !dbg !1976
  %7 = call i32 @gsl_sf_lncosh_e(double %6, %struct.gsl_sf_result_struct* %4), !dbg !1976
  store i32 %7, i32* %5, align 4, !dbg !1976
  %8 = load i32, i32* %5, align 4, !dbg !1978
  %9 = icmp ne i32 %8, 0, !dbg !1978
  %10 = sext i32 %8 to i64, !dbg !1976
  %11 = call i1 @iCmpInstHandler(i64 %10, i64 0, i1 %9, i32 33, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @48, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @49, i32 0, i32 0), i64 94710407345072, i32 746, i32 3), !dbg !1976
  br i1 %11, label %12, label %18, !dbg !1976

; <label>:12:                                     ; preds = %1
  br label %13, !dbg !1980, !llvm.loop !1983

; <label>:13:                                     ; preds = %12
  %14 = load i32, i32* %5, align 4, !dbg !1985
  call void @gsl_error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 746, i32 %14), !dbg !1985
  %15 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !1985
  %16 = load double, double* %15, align 8, !dbg !1985
  store double %16, double* %2, align 8, !dbg !1985
  br label %21, !dbg !1985
                                                  ; No predecessors!
  br label %18, !dbg !1988

; <label>:18:                                     ; preds = %17, %1
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !1990
  %20 = load double, double* %19, align 8, !dbg !1990
  store double %20, double* %2, align 8, !dbg !1990
  br label %21, !dbg !1990

; <label>:21:                                     ; preds = %18, %13
  %22 = load double, double* %2, align 8, !dbg !1992
  ret double %22, !dbg !1992
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_angle_restrict_symm(double) #0 !dbg !1993 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !1994, metadata !85), !dbg !1995
  call void @llvm.dbg.declare(metadata double* %4, metadata !1996, metadata !85), !dbg !1997
  %6 = load double, double* %3, align 8, !dbg !1998
  store double %6, double* %4, align 8, !dbg !1997
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1999, metadata !85), !dbg !2000
  %7 = call i32 @gsl_sf_angle_restrict_symm_e(double* %4), !dbg !2000
  store i32 %7, i32* %5, align 4, !dbg !2000
  %8 = load i32, i32* %5, align 4, !dbg !2001
  %9 = icmp ne i32 %8, 0, !dbg !2001
  %10 = sext i32 %8 to i64, !dbg !2000
  %11 = call i1 @iCmpInstHandler(i64 %10, i64 0, i1 %9, i32 33, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @50, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @51, i32 0, i32 0), i64 94710407364592, i32 752, i32 3), !dbg !2000
  br i1 %11, label %12, label %17, !dbg !2000

; <label>:12:                                     ; preds = %1
  br label %13, !dbg !2003, !llvm.loop !2006

; <label>:13:                                     ; preds = %12
  %14 = load i32, i32* %5, align 4, !dbg !2008
  call void @gsl_error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 752, i32 %14), !dbg !2008
  %15 = load double, double* %4, align 8, !dbg !2008
  store double %15, double* %2, align 8, !dbg !2008
  br label %19, !dbg !2008
                                                  ; No predecessors!
  br label %17, !dbg !2011

; <label>:17:                                     ; preds = %16, %1
  %18 = load double, double* %4, align 8, !dbg !2013
  store double %18, double* %2, align 8, !dbg !2013
  br label %19, !dbg !2013

; <label>:19:                                     ; preds = %17, %13
  %20 = load double, double* %2, align 8, !dbg !2015
  ret double %20, !dbg !2015
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_angle_restrict_pos(double) #0 !dbg !2016 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !2017, metadata !85), !dbg !2018
  call void @llvm.dbg.declare(metadata double* %4, metadata !2019, metadata !85), !dbg !2020
  %6 = load double, double* %3, align 8, !dbg !2021
  store double %6, double* %4, align 8, !dbg !2020
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2022, metadata !85), !dbg !2023
  %7 = call i32 @gsl_sf_angle_restrict_pos_e(double* %4), !dbg !2023
  store i32 %7, i32* %5, align 4, !dbg !2023
  %8 = load i32, i32* %5, align 4, !dbg !2024
  %9 = icmp ne i32 %8, 0, !dbg !2024
  %10 = sext i32 %8 to i64, !dbg !2023
  %11 = call i1 @iCmpInstHandler(i64 %10, i64 0, i1 %9, i32 33, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @52, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @53, i32 0, i32 0), i64 94710407383824, i32 758, i32 3), !dbg !2023
  br i1 %11, label %12, label %17, !dbg !2023

; <label>:12:                                     ; preds = %1
  br label %13, !dbg !2026, !llvm.loop !2029

; <label>:13:                                     ; preds = %12
  %14 = load i32, i32* %5, align 4, !dbg !2031
  call void @gsl_error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 758, i32 %14), !dbg !2031
  %15 = load double, double* %4, align 8, !dbg !2031
  store double %15, double* %2, align 8, !dbg !2031
  br label %19, !dbg !2031
                                                  ; No predecessors!
  br label %17, !dbg !2034

; <label>:17:                                     ; preds = %16, %1
  %18 = load double, double* %4, align 8, !dbg !2036
  store double %18, double* %2, align 8, !dbg !2036
  br label %19, !dbg !2036

; <label>:19:                                     ; preds = %17, %13
  %20 = load double, double* %2, align 8, !dbg !2038
  ret double %20, !dbg !2038
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_sinc(double) #0 !dbg !2039 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct, align 8
  %5 = alloca i32, align 4
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !2040, metadata !85), !dbg !2041
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %4, metadata !2042, metadata !85), !dbg !2043
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2044, metadata !85), !dbg !2043
  %6 = load double, double* %3, align 8, !dbg !2043
  %7 = call i32 @gsl_sf_sinc_e(double %6, %struct.gsl_sf_result_struct* %4), !dbg !2043
  store i32 %7, i32* %5, align 4, !dbg !2043
  %8 = load i32, i32* %5, align 4, !dbg !2045
  %9 = icmp ne i32 %8, 0, !dbg !2045
  %10 = sext i32 %8 to i64, !dbg !2043
  %11 = call i1 @iCmpInstHandler(i64 %10, i64 0, i1 %9, i32 33, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @54, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @55, i32 0, i32 0), i64 94710407400832, i32 770, i32 3), !dbg !2043
  br i1 %11, label %12, label %18, !dbg !2043

; <label>:12:                                     ; preds = %1
  br label %13, !dbg !2047, !llvm.loop !2050

; <label>:13:                                     ; preds = %12
  %14 = load i32, i32* %5, align 4, !dbg !2052
  call void @gsl_error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 770, i32 %14), !dbg !2052
  %15 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !2052
  %16 = load double, double* %15, align 8, !dbg !2052
  store double %16, double* %2, align 8, !dbg !2052
  br label %21, !dbg !2052
                                                  ; No predecessors!
  br label %18, !dbg !2055

; <label>:18:                                     ; preds = %17, %1
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !2057
  %20 = load double, double* %19, align 8, !dbg !2057
  store double %20, double* %2, align 8, !dbg !2057
  br label %21, !dbg !2057

; <label>:21:                                     ; preds = %18, %13
  %22 = load double, double* %2, align 8, !dbg !2059
  ret double %22, !dbg !2059
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
attributes #4 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!69, !70, !71}
!llvm.ident = !{!72}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, globals: !41)
!1 = !DIFile(filename: "trig.c", directory: "/fpcc/gsl-2.5/specfunc")
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
!41 = !{!42, !55, !59, !60, !64, !65}
!42 = distinct !DIGlobalVariable(name: "sin_cs", scope: !0, file: !1, line: 124, type: !43, isLocal: true, isDefinition: true, variable: %struct.cheb_series_struct* @sin_cs)
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
!55 = distinct !DIGlobalVariable(name: "sin_data", scope: !0, file: !1, line: 110, type: !56, isLocal: true, isDefinition: true, variable: [12 x double]* @sin_data)
!56 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 768, align: 64, elements: !57)
!57 = !{!58}
!58 = !DISubrange(count: 12)
!59 = distinct !DIGlobalVariable(name: "cos_cs", scope: !0, file: !1, line: 147, type: !43, isLocal: true, isDefinition: true, variable: %struct.cheb_series_struct* @cos_cs)
!60 = distinct !DIGlobalVariable(name: "cos_data", scope: !0, file: !1, line: 134, type: !61, isLocal: true, isDefinition: true, variable: [11 x double]* @cos_data)
!61 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 704, align: 64, elements: !62)
!62 = !{!63}
!63 = !DISubrange(count: 11)
!64 = distinct !DIGlobalVariable(name: "sinc_cs", scope: !0, file: !1, line: 99, type: !43, isLocal: true, isDefinition: true, variable: %struct.cheb_series_struct* @sinc_cs)
!65 = distinct !DIGlobalVariable(name: "sinc_data", scope: !0, file: !1, line: 80, type: !66, isLocal: true, isDefinition: true, variable: [17 x double]* @sinc_data)
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 1088, align: 64, elements: !67)
!67 = !{!68}
!68 = !DISubrange(count: 17)
!69 = !{i32 2, !"Dwarf Version", i32 4}
!70 = !{i32 2, !"Debug Info Version", i32 3}
!71 = !{i32 1, !"PIC Level", i32 2}
!72 = !{!"clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)"}
!73 = distinct !DISubprogram(name: "gsl_sf_sin_e", scope: !1, file: !1, line: 163, type: !74, isLocal: false, isDefinition: true, scopeLine: 164, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !83)
!74 = !DISubroutineType(types: !75)
!75 = !{!51, !49, !76}
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64, align: 64)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !78, line: 41, baseType: !79)
!78 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/fpcc/gsl-2.5/specfunc")
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !78, line: 37, size: 128, align: 64, elements: !80)
!80 = !{!81, !82}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !79, file: !78, line: 38, baseType: !49, size: 64, align: 64)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !79, file: !78, line: 39, baseType: !49, size: 64, align: 64, offset: 64)
!83 = !{}
!84 = !DILocalVariable(name: "x", arg: 1, scope: !73, file: !1, line: 163, type: !49)
!85 = !DIExpression()
!86 = !DILocation(line: 163, column: 21, scope: !73)
!87 = !DILocalVariable(name: "result", arg: 2, scope: !73, file: !1, line: 163, type: !76)
!88 = !DILocation(line: 163, column: 40, scope: !73)
!89 = !DILocalVariable(name: "P1", scope: !90, file: !1, line: 168, type: !91)
!90 = distinct !DILexicalBlock(scope: !73, file: !1, line: 167, column: 3)
!91 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !49)
!92 = !DILocation(line: 168, column: 18, scope: !90)
!93 = !DILocalVariable(name: "P2", scope: !90, file: !1, line: 169, type: !91)
!94 = !DILocation(line: 169, column: 18, scope: !90)
!95 = !DILocalVariable(name: "P3", scope: !90, file: !1, line: 170, type: !91)
!96 = !DILocation(line: 170, column: 18, scope: !90)
!97 = !DILocalVariable(name: "sgn_x", scope: !90, file: !1, line: 172, type: !91)
!98 = !DILocation(line: 172, column: 18, scope: !90)
!99 = !DILocation(line: 172, column: 26, scope: !90)
!100 = !DILocalVariable(name: "abs_x", scope: !90, file: !1, line: 173, type: !91)
!101 = !DILocation(line: 173, column: 18, scope: !90)
!102 = !DILocation(line: 173, column: 31, scope: !90)
!103 = !DILocation(line: 173, column: 26, scope: !90)
!104 = !DILocation(line: 175, column: 8, scope: !105)
!105 = distinct !DILexicalBlock(scope: !90, file: !1, line: 175, column: 8)
!106 = !DILocation(line: 175, column: 14, scope: !105)
!107 = !DILocation(line: 175, column: 8, scope: !90)
!108 = !DILocalVariable(name: "x2", scope: !109, file: !1, line: 176, type: !91)
!109 = distinct !DILexicalBlock(scope: !105, file: !1, line: 175, column: 39)
!110 = !DILocation(line: 176, column: 20, scope: !109)
!111 = !DILocation(line: 176, column: 25, scope: !109)
!112 = !DILocation(line: 176, column: 27, scope: !109)
!113 = !DILocation(line: 176, column: 26, scope: !109)
!114 = !DILocation(line: 177, column: 21, scope: !109)
!115 = !DILocation(line: 177, column: 32, scope: !109)
!116 = !DILocation(line: 177, column: 34, scope: !109)
!117 = !DILocation(line: 177, column: 30, scope: !109)
!118 = !DILocation(line: 177, column: 23, scope: !109)
!119 = !DILocation(line: 177, column: 7, scope: !109)
!120 = !DILocation(line: 177, column: 15, scope: !109)
!121 = !DILocation(line: 177, column: 19, scope: !109)
!122 = !DILocation(line: 178, column: 26, scope: !109)
!123 = !DILocation(line: 178, column: 28, scope: !109)
!124 = !DILocation(line: 178, column: 27, scope: !109)
!125 = !DILocation(line: 178, column: 31, scope: !109)
!126 = !DILocation(line: 178, column: 30, scope: !109)
!127 = !DILocation(line: 178, column: 34, scope: !109)
!128 = !DILocation(line: 178, column: 21, scope: !109)
!129 = !DILocation(line: 178, column: 7, scope: !109)
!130 = !DILocation(line: 178, column: 15, scope: !109)
!131 = !DILocation(line: 178, column: 19, scope: !109)
!132 = !DILocation(line: 179, column: 7, scope: !109)
!133 = !DILocalVariable(name: "sgn_result", scope: !134, file: !1, line: 182, type: !49)
!134 = distinct !DILexicalBlock(scope: !105, file: !1, line: 181, column: 10)
!135 = !DILocation(line: 182, column: 14, scope: !134)
!136 = !DILocation(line: 182, column: 27, scope: !134)
!137 = !DILocalVariable(name: "y", scope: !134, file: !1, line: 183, type: !49)
!138 = !DILocation(line: 183, column: 14, scope: !134)
!139 = !DILocation(line: 183, column: 24, scope: !134)
!140 = !DILocation(line: 183, column: 29, scope: !134)
!141 = !DILocation(line: 183, column: 18, scope: !134)
!142 = !DILocalVariable(name: "octant", scope: !134, file: !1, line: 184, type: !51)
!143 = !DILocation(line: 184, column: 11, scope: !134)
!144 = !DILocation(line: 184, column: 20, scope: !134)
!145 = !DILocation(line: 184, column: 42, scope: !134)
!146 = !DILocation(line: 184, column: 36, scope: !134)
!147 = !DILocation(line: 184, column: 30, scope: !148)
!148 = !DILexicalBlockFile(scope: !134, file: !1, discriminator: 1)
!149 = !DILocation(line: 184, column: 24, scope: !150)
!150 = !DILexicalBlockFile(scope: !134, file: !1, discriminator: 2)
!151 = !DILocation(line: 184, column: 22, scope: !134)
!152 = !DILocalVariable(name: "stat_cs", scope: !134, file: !1, line: 185, type: !51)
!153 = !DILocation(line: 185, column: 11, scope: !134)
!154 = !DILocalVariable(name: "z", scope: !134, file: !1, line: 186, type: !49)
!155 = !DILocation(line: 186, column: 14, scope: !134)
!156 = !DILocation(line: 188, column: 10, scope: !157)
!157 = distinct !DILexicalBlock(scope: !134, file: !1, line: 188, column: 10)
!158 = !DILocation(line: 188, column: 10, scope: !134)
!159 = !DILocation(line: 189, column: 16, scope: !160)
!160 = distinct !DILexicalBlock(scope: !157, file: !1, line: 188, column: 30)
!161 = !DILocation(line: 190, column: 16, scope: !160)
!162 = !DILocation(line: 191, column: 11, scope: !160)
!163 = !DILocation(line: 192, column: 7, scope: !160)
!164 = !DILocation(line: 194, column: 10, scope: !165)
!165 = distinct !DILexicalBlock(scope: !134, file: !1, line: 194, column: 10)
!166 = !DILocation(line: 194, column: 17, scope: !165)
!167 = !DILocation(line: 194, column: 10, scope: !134)
!168 = !DILocation(line: 195, column: 16, scope: !169)
!169 = distinct !DILexicalBlock(scope: !165, file: !1, line: 194, column: 22)
!170 = !DILocation(line: 196, column: 23, scope: !169)
!171 = !DILocation(line: 196, column: 22, scope: !169)
!172 = !DILocation(line: 196, column: 20, scope: !169)
!173 = !DILocation(line: 197, column: 7, scope: !169)
!174 = !DILocation(line: 199, column: 13, scope: !134)
!175 = !DILocation(line: 199, column: 21, scope: !134)
!176 = !DILocation(line: 199, column: 23, scope: !134)
!177 = !DILocation(line: 199, column: 19, scope: !134)
!178 = !DILocation(line: 199, column: 31, scope: !134)
!179 = !DILocation(line: 199, column: 33, scope: !134)
!180 = !DILocation(line: 199, column: 29, scope: !134)
!181 = !DILocation(line: 199, column: 41, scope: !134)
!182 = !DILocation(line: 199, column: 43, scope: !134)
!183 = !DILocation(line: 199, column: 39, scope: !134)
!184 = !DILocation(line: 199, column: 9, scope: !134)
!185 = !DILocation(line: 201, column: 10, scope: !186)
!186 = distinct !DILexicalBlock(scope: !134, file: !1, line: 201, column: 10)
!187 = !DILocation(line: 201, column: 17, scope: !186)
!188 = !DILocation(line: 201, column: 10, scope: !134)
!189 = !DILocalVariable(name: "sin_cs_result", scope: !190, file: !1, line: 202, type: !77)
!190 = distinct !DILexicalBlock(scope: !186, file: !1, line: 201, column: 23)
!191 = !DILocation(line: 202, column: 23, scope: !190)
!192 = !DILocalVariable(name: "t", scope: !190, file: !1, line: 203, type: !91)
!193 = !DILocation(line: 203, column: 22, scope: !190)
!194 = !DILocation(line: 203, column: 35, scope: !190)
!195 = !DILocation(line: 203, column: 30, scope: !190)
!196 = !DILocation(line: 203, column: 29, scope: !190)
!197 = !DILocation(line: 203, column: 37, scope: !190)
!198 = !DILocation(line: 203, column: 43, scope: !190)
!199 = !DILocation(line: 204, column: 40, scope: !190)
!200 = !DILocation(line: 204, column: 19, scope: !190)
!201 = !DILocation(line: 204, column: 17, scope: !190)
!202 = !DILocation(line: 205, column: 23, scope: !190)
!203 = !DILocation(line: 205, column: 34, scope: !190)
!204 = !DILocation(line: 205, column: 36, scope: !190)
!205 = !DILocation(line: 205, column: 35, scope: !190)
!206 = !DILocation(line: 205, column: 54, scope: !190)
!207 = !DILocation(line: 205, column: 38, scope: !190)
!208 = !DILocation(line: 205, column: 32, scope: !190)
!209 = !DILocation(line: 205, column: 25, scope: !190)
!210 = !DILocation(line: 205, column: 9, scope: !190)
!211 = !DILocation(line: 205, column: 17, scope: !190)
!212 = !DILocation(line: 205, column: 21, scope: !190)
!213 = !DILocation(line: 206, column: 7, scope: !190)
!214 = !DILocalVariable(name: "cos_cs_result", scope: !215, file: !1, line: 208, type: !77)
!215 = distinct !DILexicalBlock(scope: !186, file: !1, line: 207, column: 12)
!216 = !DILocation(line: 208, column: 23, scope: !215)
!217 = !DILocalVariable(name: "t", scope: !215, file: !1, line: 209, type: !91)
!218 = !DILocation(line: 209, column: 22, scope: !215)
!219 = !DILocation(line: 209, column: 35, scope: !215)
!220 = !DILocation(line: 209, column: 30, scope: !215)
!221 = !DILocation(line: 209, column: 29, scope: !215)
!222 = !DILocation(line: 209, column: 37, scope: !215)
!223 = !DILocation(line: 209, column: 43, scope: !215)
!224 = !DILocation(line: 210, column: 40, scope: !215)
!225 = !DILocation(line: 210, column: 19, scope: !215)
!226 = !DILocation(line: 210, column: 17, scope: !215)
!227 = !DILocation(line: 211, column: 33, scope: !215)
!228 = !DILocation(line: 211, column: 32, scope: !215)
!229 = !DILocation(line: 211, column: 35, scope: !215)
!230 = !DILocation(line: 211, column: 34, scope: !215)
!231 = !DILocation(line: 211, column: 46, scope: !215)
!232 = !DILocation(line: 211, column: 48, scope: !215)
!233 = !DILocation(line: 211, column: 47, scope: !215)
!234 = !DILocation(line: 211, column: 66, scope: !215)
!235 = !DILocation(line: 211, column: 50, scope: !215)
!236 = !DILocation(line: 211, column: 44, scope: !215)
!237 = !DILocation(line: 211, column: 37, scope: !215)
!238 = !DILocation(line: 211, column: 27, scope: !215)
!239 = !DILocation(line: 211, column: 9, scope: !215)
!240 = !DILocation(line: 211, column: 17, scope: !215)
!241 = !DILocation(line: 211, column: 21, scope: !215)
!242 = !DILocation(line: 214, column: 22, scope: !134)
!243 = !DILocation(line: 214, column: 7, scope: !134)
!244 = !DILocation(line: 214, column: 15, scope: !134)
!245 = !DILocation(line: 214, column: 19, scope: !134)
!246 = !DILocation(line: 216, column: 10, scope: !247)
!247 = distinct !DILexicalBlock(scope: !134, file: !1, line: 216, column: 10)
!248 = !DILocation(line: 216, column: 16, scope: !247)
!249 = !DILocation(line: 216, column: 10, scope: !134)
!250 = !DILocation(line: 217, column: 28, scope: !251)
!251 = distinct !DILexicalBlock(scope: !247, file: !1, line: 216, column: 39)
!252 = !DILocation(line: 217, column: 36, scope: !251)
!253 = !DILocation(line: 217, column: 23, scope: !251)
!254 = !DILocation(line: 217, column: 9, scope: !251)
!255 = !DILocation(line: 217, column: 17, scope: !251)
!256 = !DILocation(line: 217, column: 21, scope: !251)
!257 = !DILocation(line: 218, column: 7, scope: !251)
!258 = !DILocation(line: 219, column: 15, scope: !259)
!259 = distinct !DILexicalBlock(scope: !247, file: !1, line: 219, column: 15)
!260 = !DILocation(line: 219, column: 21, scope: !259)
!261 = !DILocation(line: 219, column: 15, scope: !247)
!262 = !DILocation(line: 220, column: 29, scope: !263)
!263 = distinct !DILexicalBlock(scope: !259, file: !1, line: 219, column: 51)
!264 = !DILocation(line: 220, column: 27, scope: !263)
!265 = !DILocation(line: 220, column: 35, scope: !263)
!266 = !DILocation(line: 220, column: 60, scope: !263)
!267 = !DILocation(line: 220, column: 68, scope: !263)
!268 = !DILocation(line: 220, column: 55, scope: !263)
!269 = !DILocation(line: 220, column: 53, scope: !263)
!270 = !DILocation(line: 220, column: 9, scope: !263)
!271 = !DILocation(line: 220, column: 17, scope: !263)
!272 = !DILocation(line: 220, column: 21, scope: !263)
!273 = !DILocation(line: 221, column: 7, scope: !263)
!274 = !DILocation(line: 222, column: 15, scope: !275)
!275 = distinct !DILexicalBlock(scope: !259, file: !1, line: 222, column: 15)
!276 = !DILocation(line: 222, column: 21, scope: !275)
!277 = !DILocation(line: 222, column: 15, scope: !259)
!278 = !DILocation(line: 223, column: 57, scope: !279)
!279 = distinct !DILexicalBlock(scope: !275, file: !1, line: 222, column: 49)
!280 = !DILocation(line: 223, column: 65, scope: !279)
!281 = !DILocation(line: 223, column: 52, scope: !279)
!282 = !DILocation(line: 223, column: 50, scope: !279)
!283 = !DILocation(line: 223, column: 9, scope: !279)
!284 = !DILocation(line: 223, column: 17, scope: !279)
!285 = !DILocation(line: 223, column: 21, scope: !279)
!286 = !DILocation(line: 224, column: 7, scope: !279)
!287 = !DILocation(line: 226, column: 52, scope: !288)
!288 = distinct !DILexicalBlock(scope: !275, file: !1, line: 225, column: 12)
!289 = !DILocation(line: 226, column: 60, scope: !288)
!290 = !DILocation(line: 226, column: 47, scope: !288)
!291 = !DILocation(line: 226, column: 45, scope: !288)
!292 = !DILocation(line: 226, column: 9, scope: !288)
!293 = !DILocation(line: 226, column: 17, scope: !288)
!294 = !DILocation(line: 226, column: 21, scope: !288)
!295 = !DILocation(line: 229, column: 14, scope: !134)
!296 = !DILocation(line: 229, column: 7, scope: !134)
!297 = !DILocation(line: 232, column: 1, scope: !73)
!298 = distinct !DISubprogram(name: "cheb_eval_e", scope: !299, file: !299, line: 3, type: !300, isLocal: true, isDefinition: true, scopeLine: 6, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !83)
!299 = !DIFile(filename: "./cheb_eval.c", directory: "/fpcc/gsl-2.5/specfunc")
!300 = !DISubroutineType(types: !301)
!301 = !{!51, !302, !91, !76}
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64, align: 64)
!303 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!304 = !DILocalVariable(name: "cs", arg: 1, scope: !298, file: !299, line: 3, type: !302)
!305 = !DILocation(line: 3, column: 33, scope: !298)
!306 = !DILocalVariable(name: "x", arg: 2, scope: !298, file: !299, line: 4, type: !91)
!307 = !DILocation(line: 4, column: 26, scope: !298)
!308 = !DILocalVariable(name: "result", arg: 3, scope: !298, file: !299, line: 5, type: !76)
!309 = !DILocation(line: 5, column: 29, scope: !298)
!310 = !DILocalVariable(name: "j", scope: !298, file: !299, line: 7, type: !51)
!311 = !DILocation(line: 7, column: 7, scope: !298)
!312 = !DILocalVariable(name: "d", scope: !298, file: !299, line: 8, type: !49)
!313 = !DILocation(line: 8, column: 10, scope: !298)
!314 = !DILocalVariable(name: "dd", scope: !298, file: !299, line: 9, type: !49)
!315 = !DILocation(line: 9, column: 10, scope: !298)
!316 = !DILocalVariable(name: "y", scope: !298, file: !299, line: 11, type: !49)
!317 = !DILocation(line: 11, column: 10, scope: !298)
!318 = !DILocation(line: 11, column: 20, scope: !298)
!319 = !DILocation(line: 11, column: 19, scope: !298)
!320 = !DILocation(line: 11, column: 24, scope: !298)
!321 = !DILocation(line: 11, column: 28, scope: !298)
!322 = !DILocation(line: 11, column: 22, scope: !298)
!323 = !DILocation(line: 11, column: 32, scope: !298)
!324 = !DILocation(line: 11, column: 36, scope: !298)
!325 = !DILocation(line: 11, column: 30, scope: !298)
!326 = !DILocation(line: 11, column: 42, scope: !298)
!327 = !DILocation(line: 11, column: 46, scope: !298)
!328 = !DILocation(line: 11, column: 50, scope: !298)
!329 = !DILocation(line: 11, column: 54, scope: !298)
!330 = !DILocation(line: 11, column: 48, scope: !298)
!331 = !DILocation(line: 11, column: 39, scope: !298)
!332 = !DILocalVariable(name: "y2", scope: !298, file: !299, line: 12, type: !49)
!333 = !DILocation(line: 12, column: 10, scope: !298)
!334 = !DILocation(line: 12, column: 21, scope: !298)
!335 = !DILocation(line: 12, column: 19, scope: !298)
!336 = !DILocalVariable(name: "e", scope: !298, file: !299, line: 14, type: !49)
!337 = !DILocation(line: 14, column: 10, scope: !298)
!338 = !DILocation(line: 16, column: 11, scope: !339)
!339 = distinct !DILexicalBlock(scope: !298, file: !299, line: 16, column: 3)
!340 = !DILocation(line: 16, column: 15, scope: !339)
!341 = !DILocation(line: 16, column: 9, scope: !339)
!342 = !DILocation(line: 16, column: 7, scope: !339)
!343 = !DILocation(line: 16, column: 22, scope: !344)
!344 = !DILexicalBlockFile(scope: !345, file: !299, discriminator: 1)
!345 = distinct !DILexicalBlock(scope: !339, file: !299, line: 16, column: 3)
!346 = !DILocation(line: 16, column: 23, scope: !344)
!347 = !DILocation(line: 16, column: 3, scope: !344)
!348 = !DILocalVariable(name: "temp", scope: !349, file: !299, line: 17, type: !49)
!349 = distinct !DILexicalBlock(scope: !345, file: !299, line: 16, column: 33)
!350 = !DILocation(line: 17, column: 12, scope: !349)
!351 = !DILocation(line: 17, column: 19, scope: !349)
!352 = !DILocation(line: 18, column: 9, scope: !349)
!353 = !DILocation(line: 18, column: 12, scope: !349)
!354 = !DILocation(line: 18, column: 11, scope: !349)
!355 = !DILocation(line: 18, column: 16, scope: !349)
!356 = !DILocation(line: 18, column: 14, scope: !349)
!357 = !DILocation(line: 18, column: 27, scope: !349)
!358 = !DILocation(line: 18, column: 21, scope: !349)
!359 = !DILocation(line: 18, column: 25, scope: !349)
!360 = !DILocation(line: 18, column: 19, scope: !349)
!361 = !DILocation(line: 18, column: 7, scope: !349)
!362 = !DILocation(line: 19, column: 15, scope: !349)
!363 = !DILocation(line: 19, column: 18, scope: !349)
!364 = !DILocation(line: 19, column: 17, scope: !349)
!365 = !DILocation(line: 19, column: 10, scope: !349)
!366 = !DILocation(line: 19, column: 31, scope: !349)
!367 = !DILocation(line: 19, column: 26, scope: !368)
!368 = !DILexicalBlockFile(scope: !349, file: !299, discriminator: 1)
!369 = !DILocation(line: 19, column: 24, scope: !349)
!370 = !DILocation(line: 19, column: 48, scope: !349)
!371 = !DILocation(line: 19, column: 42, scope: !349)
!372 = !DILocation(line: 19, column: 46, scope: !349)
!373 = !DILocation(line: 19, column: 37, scope: !374)
!374 = !DILexicalBlockFile(scope: !349, file: !299, discriminator: 2)
!375 = !DILocation(line: 19, column: 35, scope: !349)
!376 = !DILocation(line: 19, column: 7, scope: !349)
!377 = !DILocation(line: 20, column: 10, scope: !349)
!378 = !DILocation(line: 20, column: 8, scope: !349)
!379 = !DILocation(line: 21, column: 3, scope: !349)
!380 = !DILocation(line: 16, column: 29, scope: !381)
!381 = !DILexicalBlockFile(scope: !345, file: !299, discriminator: 2)
!382 = !DILocation(line: 16, column: 3, scope: !381)
!383 = distinct !{!383, !384}
!384 = !DILocation(line: 16, column: 3, scope: !298)
!385 = !DILocalVariable(name: "temp", scope: !386, file: !299, line: 24, type: !49)
!386 = distinct !DILexicalBlock(scope: !298, file: !299, line: 23, column: 3)
!387 = !DILocation(line: 24, column: 12, scope: !386)
!388 = !DILocation(line: 24, column: 19, scope: !386)
!389 = !DILocation(line: 25, column: 9, scope: !386)
!390 = !DILocation(line: 25, column: 11, scope: !386)
!391 = !DILocation(line: 25, column: 10, scope: !386)
!392 = !DILocation(line: 25, column: 15, scope: !386)
!393 = !DILocation(line: 25, column: 13, scope: !386)
!394 = !DILocation(line: 25, column: 26, scope: !386)
!395 = !DILocation(line: 25, column: 30, scope: !386)
!396 = !DILocation(line: 25, column: 24, scope: !386)
!397 = !DILocation(line: 25, column: 18, scope: !386)
!398 = !DILocation(line: 25, column: 7, scope: !386)
!399 = !DILocation(line: 26, column: 15, scope: !386)
!400 = !DILocation(line: 26, column: 17, scope: !386)
!401 = !DILocation(line: 26, column: 16, scope: !386)
!402 = !DILocation(line: 26, column: 10, scope: !386)
!403 = !DILocation(line: 26, column: 30, scope: !386)
!404 = !DILocation(line: 26, column: 25, scope: !405)
!405 = !DILexicalBlockFile(scope: !386, file: !299, discriminator: 1)
!406 = !DILocation(line: 26, column: 23, scope: !386)
!407 = !DILocation(line: 26, column: 47, scope: !386)
!408 = !DILocation(line: 26, column: 51, scope: !386)
!409 = !DILocation(line: 26, column: 42, scope: !410)
!410 = !DILexicalBlockFile(scope: !386, file: !299, discriminator: 2)
!411 = !DILocation(line: 26, column: 40, scope: !386)
!412 = !DILocation(line: 26, column: 34, scope: !386)
!413 = !DILocation(line: 26, column: 7, scope: !386)
!414 = !DILocation(line: 29, column: 17, scope: !298)
!415 = !DILocation(line: 29, column: 3, scope: !298)
!416 = !DILocation(line: 29, column: 11, scope: !298)
!417 = !DILocation(line: 29, column: 15, scope: !298)
!418 = !DILocation(line: 30, column: 35, scope: !298)
!419 = !DILocation(line: 30, column: 33, scope: !298)
!420 = !DILocation(line: 30, column: 50, scope: !298)
!421 = !DILocation(line: 30, column: 54, scope: !298)
!422 = !DILocation(line: 30, column: 44, scope: !298)
!423 = !DILocation(line: 30, column: 48, scope: !298)
!424 = !DILocation(line: 30, column: 39, scope: !298)
!425 = !DILocation(line: 30, column: 37, scope: !298)
!426 = !DILocation(line: 30, column: 3, scope: !298)
!427 = !DILocation(line: 30, column: 11, scope: !298)
!428 = !DILocation(line: 30, column: 15, scope: !298)
!429 = !DILocation(line: 32, column: 3, scope: !298)
!430 = distinct !DISubprogram(name: "gsl_sf_cos_e", scope: !1, file: !1, line: 236, type: !74, isLocal: false, isDefinition: true, scopeLine: 237, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !83)
!431 = !DILocalVariable(name: "x", arg: 1, scope: !430, file: !1, line: 236, type: !49)
!432 = !DILocation(line: 236, column: 21, scope: !430)
!433 = !DILocalVariable(name: "result", arg: 2, scope: !430, file: !1, line: 236, type: !76)
!434 = !DILocation(line: 236, column: 40, scope: !430)
!435 = !DILocalVariable(name: "P1", scope: !436, file: !1, line: 241, type: !91)
!436 = distinct !DILexicalBlock(scope: !430, file: !1, line: 240, column: 3)
!437 = !DILocation(line: 241, column: 18, scope: !436)
!438 = !DILocalVariable(name: "P2", scope: !436, file: !1, line: 242, type: !91)
!439 = !DILocation(line: 242, column: 18, scope: !436)
!440 = !DILocalVariable(name: "P3", scope: !436, file: !1, line: 243, type: !91)
!441 = !DILocation(line: 243, column: 18, scope: !436)
!442 = !DILocalVariable(name: "abs_x", scope: !436, file: !1, line: 245, type: !91)
!443 = !DILocation(line: 245, column: 18, scope: !436)
!444 = !DILocation(line: 245, column: 31, scope: !436)
!445 = !DILocation(line: 245, column: 26, scope: !436)
!446 = !DILocation(line: 247, column: 8, scope: !447)
!447 = distinct !DILexicalBlock(scope: !436, file: !1, line: 247, column: 8)
!448 = !DILocation(line: 247, column: 14, scope: !447)
!449 = !DILocation(line: 247, column: 8, scope: !436)
!450 = !DILocalVariable(name: "x2", scope: !451, file: !1, line: 248, type: !91)
!451 = distinct !DILexicalBlock(scope: !447, file: !1, line: 247, column: 39)
!452 = !DILocation(line: 248, column: 20, scope: !451)
!453 = !DILocation(line: 248, column: 25, scope: !451)
!454 = !DILocation(line: 248, column: 27, scope: !451)
!455 = !DILocation(line: 248, column: 26, scope: !451)
!456 = !DILocation(line: 249, column: 31, scope: !451)
!457 = !DILocation(line: 249, column: 30, scope: !451)
!458 = !DILocation(line: 249, column: 25, scope: !451)
!459 = !DILocation(line: 249, column: 7, scope: !451)
!460 = !DILocation(line: 249, column: 15, scope: !451)
!461 = !DILocation(line: 249, column: 19, scope: !451)
!462 = !DILocation(line: 250, column: 26, scope: !451)
!463 = !DILocation(line: 250, column: 29, scope: !451)
!464 = !DILocation(line: 250, column: 28, scope: !451)
!465 = !DILocation(line: 250, column: 31, scope: !451)
!466 = !DILocation(line: 250, column: 21, scope: !451)
!467 = !DILocation(line: 250, column: 7, scope: !451)
!468 = !DILocation(line: 250, column: 15, scope: !451)
!469 = !DILocation(line: 250, column: 19, scope: !451)
!470 = !DILocation(line: 251, column: 7, scope: !451)
!471 = !DILocalVariable(name: "sgn_result", scope: !472, file: !1, line: 254, type: !49)
!472 = distinct !DILexicalBlock(scope: !447, file: !1, line: 253, column: 10)
!473 = !DILocation(line: 254, column: 14, scope: !472)
!474 = !DILocalVariable(name: "y", scope: !472, file: !1, line: 255, type: !49)
!475 = !DILocation(line: 255, column: 14, scope: !472)
!476 = !DILocation(line: 255, column: 24, scope: !472)
!477 = !DILocation(line: 255, column: 29, scope: !472)
!478 = !DILocation(line: 255, column: 18, scope: !472)
!479 = !DILocalVariable(name: "octant", scope: !472, file: !1, line: 256, type: !51)
!480 = !DILocation(line: 256, column: 11, scope: !472)
!481 = !DILocation(line: 256, column: 20, scope: !472)
!482 = !DILocation(line: 256, column: 42, scope: !472)
!483 = !DILocation(line: 256, column: 36, scope: !472)
!484 = !DILocation(line: 256, column: 30, scope: !485)
!485 = !DILexicalBlockFile(scope: !472, file: !1, discriminator: 1)
!486 = !DILocation(line: 256, column: 24, scope: !487)
!487 = !DILexicalBlockFile(scope: !472, file: !1, discriminator: 2)
!488 = !DILocation(line: 256, column: 22, scope: !472)
!489 = !DILocalVariable(name: "stat_cs", scope: !472, file: !1, line: 257, type: !51)
!490 = !DILocation(line: 257, column: 11, scope: !472)
!491 = !DILocalVariable(name: "z", scope: !472, file: !1, line: 258, type: !49)
!492 = !DILocation(line: 258, column: 14, scope: !472)
!493 = !DILocation(line: 260, column: 10, scope: !494)
!494 = distinct !DILexicalBlock(scope: !472, file: !1, line: 260, column: 10)
!495 = !DILocation(line: 260, column: 10, scope: !472)
!496 = !DILocation(line: 261, column: 16, scope: !497)
!497 = distinct !DILexicalBlock(scope: !494, file: !1, line: 260, column: 30)
!498 = !DILocation(line: 262, column: 16, scope: !497)
!499 = !DILocation(line: 263, column: 11, scope: !497)
!500 = !DILocation(line: 264, column: 7, scope: !497)
!501 = !DILocation(line: 266, column: 10, scope: !502)
!502 = distinct !DILexicalBlock(scope: !472, file: !1, line: 266, column: 10)
!503 = !DILocation(line: 266, column: 17, scope: !502)
!504 = !DILocation(line: 266, column: 10, scope: !472)
!505 = !DILocation(line: 267, column: 16, scope: !506)
!506 = distinct !DILexicalBlock(scope: !502, file: !1, line: 266, column: 22)
!507 = !DILocation(line: 268, column: 23, scope: !506)
!508 = !DILocation(line: 268, column: 22, scope: !506)
!509 = !DILocation(line: 268, column: 20, scope: !506)
!510 = !DILocation(line: 269, column: 7, scope: !506)
!511 = !DILocation(line: 271, column: 10, scope: !512)
!512 = distinct !DILexicalBlock(scope: !472, file: !1, line: 271, column: 10)
!513 = !DILocation(line: 271, column: 17, scope: !512)
!514 = !DILocation(line: 271, column: 10, scope: !472)
!515 = !DILocation(line: 272, column: 23, scope: !516)
!516 = distinct !DILexicalBlock(scope: !512, file: !1, line: 271, column: 22)
!517 = !DILocation(line: 272, column: 22, scope: !516)
!518 = !DILocation(line: 272, column: 20, scope: !516)
!519 = !DILocation(line: 273, column: 7, scope: !516)
!520 = !DILocation(line: 275, column: 13, scope: !472)
!521 = !DILocation(line: 275, column: 21, scope: !472)
!522 = !DILocation(line: 275, column: 23, scope: !472)
!523 = !DILocation(line: 275, column: 19, scope: !472)
!524 = !DILocation(line: 275, column: 31, scope: !472)
!525 = !DILocation(line: 275, column: 33, scope: !472)
!526 = !DILocation(line: 275, column: 29, scope: !472)
!527 = !DILocation(line: 275, column: 41, scope: !472)
!528 = !DILocation(line: 275, column: 43, scope: !472)
!529 = !DILocation(line: 275, column: 39, scope: !472)
!530 = !DILocation(line: 275, column: 9, scope: !472)
!531 = !DILocation(line: 277, column: 10, scope: !532)
!532 = distinct !DILexicalBlock(scope: !472, file: !1, line: 277, column: 10)
!533 = !DILocation(line: 277, column: 17, scope: !532)
!534 = !DILocation(line: 277, column: 10, scope: !472)
!535 = !DILocalVariable(name: "cos_cs_result", scope: !536, file: !1, line: 278, type: !77)
!536 = distinct !DILexicalBlock(scope: !532, file: !1, line: 277, column: 23)
!537 = !DILocation(line: 278, column: 23, scope: !536)
!538 = !DILocalVariable(name: "t", scope: !536, file: !1, line: 279, type: !91)
!539 = !DILocation(line: 279, column: 22, scope: !536)
!540 = !DILocation(line: 279, column: 35, scope: !536)
!541 = !DILocation(line: 279, column: 30, scope: !536)
!542 = !DILocation(line: 279, column: 29, scope: !536)
!543 = !DILocation(line: 279, column: 37, scope: !536)
!544 = !DILocation(line: 279, column: 43, scope: !536)
!545 = !DILocation(line: 280, column: 40, scope: !536)
!546 = !DILocation(line: 280, column: 19, scope: !536)
!547 = !DILocation(line: 280, column: 17, scope: !536)
!548 = !DILocation(line: 281, column: 33, scope: !536)
!549 = !DILocation(line: 281, column: 32, scope: !536)
!550 = !DILocation(line: 281, column: 35, scope: !536)
!551 = !DILocation(line: 281, column: 34, scope: !536)
!552 = !DILocation(line: 281, column: 46, scope: !536)
!553 = !DILocation(line: 281, column: 48, scope: !536)
!554 = !DILocation(line: 281, column: 47, scope: !536)
!555 = !DILocation(line: 281, column: 66, scope: !536)
!556 = !DILocation(line: 281, column: 50, scope: !536)
!557 = !DILocation(line: 281, column: 44, scope: !536)
!558 = !DILocation(line: 281, column: 37, scope: !536)
!559 = !DILocation(line: 281, column: 27, scope: !536)
!560 = !DILocation(line: 281, column: 9, scope: !536)
!561 = !DILocation(line: 281, column: 17, scope: !536)
!562 = !DILocation(line: 281, column: 21, scope: !536)
!563 = !DILocation(line: 282, column: 7, scope: !536)
!564 = !DILocalVariable(name: "sin_cs_result", scope: !565, file: !1, line: 284, type: !77)
!565 = distinct !DILexicalBlock(scope: !532, file: !1, line: 283, column: 12)
!566 = !DILocation(line: 284, column: 23, scope: !565)
!567 = !DILocalVariable(name: "t", scope: !565, file: !1, line: 285, type: !91)
!568 = !DILocation(line: 285, column: 22, scope: !565)
!569 = !DILocation(line: 285, column: 35, scope: !565)
!570 = !DILocation(line: 285, column: 30, scope: !565)
!571 = !DILocation(line: 285, column: 29, scope: !565)
!572 = !DILocation(line: 285, column: 37, scope: !565)
!573 = !DILocation(line: 285, column: 43, scope: !565)
!574 = !DILocation(line: 286, column: 40, scope: !565)
!575 = !DILocation(line: 286, column: 19, scope: !565)
!576 = !DILocation(line: 286, column: 17, scope: !565)
!577 = !DILocation(line: 287, column: 23, scope: !565)
!578 = !DILocation(line: 287, column: 34, scope: !565)
!579 = !DILocation(line: 287, column: 36, scope: !565)
!580 = !DILocation(line: 287, column: 35, scope: !565)
!581 = !DILocation(line: 287, column: 54, scope: !565)
!582 = !DILocation(line: 287, column: 38, scope: !565)
!583 = !DILocation(line: 287, column: 32, scope: !565)
!584 = !DILocation(line: 287, column: 25, scope: !565)
!585 = !DILocation(line: 287, column: 9, scope: !565)
!586 = !DILocation(line: 287, column: 17, scope: !565)
!587 = !DILocation(line: 287, column: 21, scope: !565)
!588 = !DILocation(line: 290, column: 22, scope: !472)
!589 = !DILocation(line: 290, column: 7, scope: !472)
!590 = !DILocation(line: 290, column: 15, scope: !472)
!591 = !DILocation(line: 290, column: 19, scope: !472)
!592 = !DILocation(line: 292, column: 10, scope: !593)
!593 = distinct !DILexicalBlock(scope: !472, file: !1, line: 292, column: 10)
!594 = !DILocation(line: 292, column: 16, scope: !593)
!595 = !DILocation(line: 292, column: 10, scope: !472)
!596 = !DILocation(line: 293, column: 28, scope: !597)
!597 = distinct !DILexicalBlock(scope: !593, file: !1, line: 292, column: 39)
!598 = !DILocation(line: 293, column: 36, scope: !597)
!599 = !DILocation(line: 293, column: 23, scope: !597)
!600 = !DILocation(line: 293, column: 9, scope: !597)
!601 = !DILocation(line: 293, column: 17, scope: !597)
!602 = !DILocation(line: 293, column: 21, scope: !597)
!603 = !DILocation(line: 294, column: 7, scope: !597)
!604 = !DILocation(line: 295, column: 15, scope: !605)
!605 = distinct !DILexicalBlock(scope: !593, file: !1, line: 295, column: 15)
!606 = !DILocation(line: 295, column: 21, scope: !605)
!607 = !DILocation(line: 295, column: 15, scope: !593)
!608 = !DILocation(line: 296, column: 29, scope: !609)
!609 = distinct !DILexicalBlock(scope: !605, file: !1, line: 295, column: 51)
!610 = !DILocation(line: 296, column: 27, scope: !609)
!611 = !DILocation(line: 296, column: 35, scope: !609)
!612 = !DILocation(line: 296, column: 60, scope: !609)
!613 = !DILocation(line: 296, column: 68, scope: !609)
!614 = !DILocation(line: 296, column: 55, scope: !609)
!615 = !DILocation(line: 296, column: 53, scope: !609)
!616 = !DILocation(line: 296, column: 9, scope: !609)
!617 = !DILocation(line: 296, column: 17, scope: !609)
!618 = !DILocation(line: 296, column: 21, scope: !609)
!619 = !DILocation(line: 297, column: 7, scope: !609)
!620 = !DILocation(line: 298, column: 15, scope: !621)
!621 = distinct !DILexicalBlock(scope: !605, file: !1, line: 298, column: 15)
!622 = !DILocation(line: 298, column: 21, scope: !621)
!623 = !DILocation(line: 298, column: 15, scope: !605)
!624 = !DILocation(line: 299, column: 57, scope: !625)
!625 = distinct !DILexicalBlock(scope: !621, file: !1, line: 298, column: 49)
!626 = !DILocation(line: 299, column: 65, scope: !625)
!627 = !DILocation(line: 299, column: 52, scope: !625)
!628 = !DILocation(line: 299, column: 50, scope: !625)
!629 = !DILocation(line: 299, column: 9, scope: !625)
!630 = !DILocation(line: 299, column: 17, scope: !625)
!631 = !DILocation(line: 299, column: 21, scope: !625)
!632 = !DILocation(line: 300, column: 7, scope: !625)
!633 = !DILocation(line: 302, column: 52, scope: !634)
!634 = distinct !DILexicalBlock(scope: !621, file: !1, line: 301, column: 12)
!635 = !DILocation(line: 302, column: 60, scope: !634)
!636 = !DILocation(line: 302, column: 47, scope: !634)
!637 = !DILocation(line: 302, column: 45, scope: !634)
!638 = !DILocation(line: 302, column: 9, scope: !634)
!639 = !DILocation(line: 302, column: 17, scope: !634)
!640 = !DILocation(line: 302, column: 21, scope: !634)
!641 = !DILocation(line: 305, column: 14, scope: !472)
!642 = !DILocation(line: 305, column: 7, scope: !472)
!643 = !DILocation(line: 308, column: 1, scope: !430)
!644 = distinct !DISubprogram(name: "gsl_sf_hypot_e", scope: !1, file: !1, line: 312, type: !645, isLocal: false, isDefinition: true, scopeLine: 313, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !83)
!645 = !DISubroutineType(types: !646)
!646 = !{!51, !91, !91, !76}
!647 = !DILocalVariable(name: "x", arg: 1, scope: !644, file: !1, line: 312, type: !91)
!648 = !DILocation(line: 312, column: 29, scope: !644)
!649 = !DILocalVariable(name: "y", arg: 2, scope: !644, file: !1, line: 312, type: !91)
!650 = !DILocation(line: 312, column: 45, scope: !644)
!651 = !DILocalVariable(name: "result", arg: 3, scope: !644, file: !1, line: 312, type: !76)
!652 = !DILocation(line: 312, column: 64, scope: !644)
!653 = !DILocation(line: 316, column: 6, scope: !654)
!654 = distinct !DILexicalBlock(scope: !644, file: !1, line: 316, column: 6)
!655 = !DILocation(line: 316, column: 8, scope: !654)
!656 = !DILocation(line: 316, column: 15, scope: !654)
!657 = !DILocation(line: 316, column: 18, scope: !658)
!658 = !DILexicalBlockFile(scope: !654, file: !1, discriminator: 1)
!659 = !DILocation(line: 316, column: 20, scope: !658)
!660 = !DILocation(line: 316, column: 6, scope: !658)
!661 = !DILocation(line: 317, column: 5, scope: !662)
!662 = distinct !DILexicalBlock(scope: !654, file: !1, line: 316, column: 28)
!663 = !DILocation(line: 317, column: 13, scope: !662)
!664 = !DILocation(line: 317, column: 17, scope: !662)
!665 = !DILocation(line: 318, column: 5, scope: !662)
!666 = !DILocation(line: 318, column: 13, scope: !662)
!667 = !DILocation(line: 318, column: 17, scope: !662)
!668 = !DILocation(line: 319, column: 5, scope: !662)
!669 = !DILocalVariable(name: "a", scope: !670, file: !1, line: 322, type: !91)
!670 = distinct !DILexicalBlock(scope: !654, file: !1, line: 321, column: 8)
!671 = !DILocation(line: 322, column: 18, scope: !670)
!672 = !DILocation(line: 322, column: 27, scope: !670)
!673 = !DILocation(line: 322, column: 22, scope: !670)
!674 = !DILocalVariable(name: "b", scope: !670, file: !1, line: 323, type: !91)
!675 = !DILocation(line: 323, column: 18, scope: !670)
!676 = !DILocation(line: 323, column: 27, scope: !670)
!677 = !DILocation(line: 323, column: 22, scope: !670)
!678 = !DILocalVariable(name: "min", scope: !670, file: !1, line: 324, type: !91)
!679 = !DILocation(line: 324, column: 18, scope: !670)
!680 = !DILocation(line: 324, column: 36, scope: !670)
!681 = !DILocation(line: 324, column: 38, scope: !670)
!682 = !DILocation(line: 324, column: 24, scope: !670)
!683 = !DILocalVariable(name: "max", scope: !670, file: !1, line: 325, type: !91)
!684 = !DILocation(line: 325, column: 18, scope: !670)
!685 = !DILocation(line: 325, column: 36, scope: !670)
!686 = !DILocation(line: 325, column: 38, scope: !670)
!687 = !DILocation(line: 325, column: 24, scope: !670)
!688 = !DILocalVariable(name: "rat", scope: !670, file: !1, line: 326, type: !91)
!689 = !DILocation(line: 326, column: 18, scope: !670)
!690 = !DILocation(line: 326, column: 24, scope: !670)
!691 = !DILocation(line: 326, column: 28, scope: !670)
!692 = !DILocation(line: 326, column: 27, scope: !670)
!693 = !DILocalVariable(name: "root_term", scope: !670, file: !1, line: 327, type: !91)
!694 = !DILocation(line: 327, column: 18, scope: !670)
!695 = !DILocation(line: 327, column: 41, scope: !670)
!696 = !DILocation(line: 327, column: 45, scope: !670)
!697 = !DILocation(line: 327, column: 44, scope: !670)
!698 = !DILocation(line: 327, column: 39, scope: !670)
!699 = !DILocation(line: 327, column: 30, scope: !670)
!700 = !DILocation(line: 329, column: 8, scope: !701)
!701 = distinct !DILexicalBlock(scope: !670, file: !1, line: 329, column: 8)
!702 = !DILocation(line: 329, column: 26, scope: !701)
!703 = !DILocation(line: 329, column: 25, scope: !701)
!704 = !DILocation(line: 329, column: 12, scope: !701)
!705 = !DILocation(line: 329, column: 8, scope: !670)
!706 = !DILocation(line: 330, column: 21, scope: !707)
!707 = distinct !DILexicalBlock(scope: !701, file: !1, line: 329, column: 37)
!708 = !DILocation(line: 330, column: 27, scope: !707)
!709 = !DILocation(line: 330, column: 25, scope: !707)
!710 = !DILocation(line: 330, column: 7, scope: !707)
!711 = !DILocation(line: 330, column: 15, scope: !707)
!712 = !DILocation(line: 330, column: 19, scope: !707)
!713 = !DILocation(line: 331, column: 50, scope: !707)
!714 = !DILocation(line: 331, column: 58, scope: !707)
!715 = !DILocation(line: 331, column: 45, scope: !707)
!716 = !DILocation(line: 331, column: 43, scope: !707)
!717 = !DILocation(line: 331, column: 7, scope: !707)
!718 = !DILocation(line: 331, column: 15, scope: !707)
!719 = !DILocation(line: 331, column: 19, scope: !707)
!720 = !DILocation(line: 332, column: 7, scope: !707)
!721 = !DILocation(line: 335, column: 7, scope: !722)
!722 = distinct !DILexicalBlock(scope: !701, file: !1, line: 334, column: 10)
!723 = distinct !{!723, !721}
!724 = !DILocation(line: 335, column: 7, scope: !725)
!725 = !DILexicalBlockFile(scope: !726, file: !1, discriminator: 1)
!726 = distinct !DILexicalBlock(scope: !722, file: !1, line: 335, column: 7)
!727 = distinct !{!727, !728}
!728 = !DILocation(line: 335, column: 7, scope: !726)
!729 = !DILocation(line: 335, column: 7, scope: !730)
!730 = !DILexicalBlockFile(scope: !731, file: !1, discriminator: 2)
!731 = distinct !DILexicalBlock(scope: !726, file: !1, line: 335, column: 7)
!732 = !DILocation(line: 335, column: 7, scope: !733)
!733 = !DILexicalBlockFile(scope: !726, file: !1, discriminator: 3)
!734 = !DILocation(line: 338, column: 1, scope: !644)
!735 = distinct !DISubprogram(name: "gsl_sf_complex_sin_e", scope: !1, file: !1, line: 342, type: !736, isLocal: false, isDefinition: true, scopeLine: 344, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !83)
!736 = !DISubroutineType(types: !737)
!737 = !{!51, !91, !91, !76, !76}
!738 = !DILocalVariable(name: "zr", arg: 1, scope: !735, file: !1, line: 342, type: !91)
!739 = !DILocation(line: 342, column: 35, scope: !735)
!740 = !DILocalVariable(name: "zi", arg: 2, scope: !735, file: !1, line: 342, type: !91)
!741 = !DILocation(line: 342, column: 52, scope: !735)
!742 = !DILocalVariable(name: "szr", arg: 3, scope: !735, file: !1, line: 343, type: !76)
!743 = !DILocation(line: 343, column: 41, scope: !735)
!744 = !DILocalVariable(name: "szi", arg: 4, scope: !735, file: !1, line: 343, type: !76)
!745 = !DILocation(line: 343, column: 62, scope: !735)
!746 = !DILocation(line: 348, column: 11, scope: !747)
!747 = distinct !DILexicalBlock(scope: !735, file: !1, line: 348, column: 6)
!748 = !DILocation(line: 348, column: 6, scope: !747)
!749 = !DILocation(line: 348, column: 15, scope: !747)
!750 = !DILocation(line: 348, column: 6, scope: !735)
!751 = !DILocalVariable(name: "ch_m1", scope: !752, file: !1, line: 349, type: !49)
!752 = distinct !DILexicalBlock(scope: !747, file: !1, line: 348, column: 22)
!753 = !DILocation(line: 349, column: 12, scope: !752)
!754 = !DILocalVariable(name: "sh", scope: !752, file: !1, line: 349, type: !49)
!755 = !DILocation(line: 349, column: 19, scope: !752)
!756 = !DILocation(line: 350, column: 17, scope: !752)
!757 = !DILocation(line: 350, column: 5, scope: !752)
!758 = !DILocation(line: 351, column: 20, scope: !752)
!759 = !DILocation(line: 351, column: 5, scope: !752)
!760 = !DILocation(line: 352, column: 20, scope: !752)
!761 = !DILocation(line: 352, column: 16, scope: !752)
!762 = !DILocation(line: 352, column: 25, scope: !752)
!763 = !DILocation(line: 352, column: 31, scope: !752)
!764 = !DILocation(line: 352, column: 23, scope: !752)
!765 = !DILocation(line: 352, column: 5, scope: !752)
!766 = !DILocation(line: 352, column: 10, scope: !752)
!767 = !DILocation(line: 352, column: 14, scope: !752)
!768 = !DILocation(line: 353, column: 20, scope: !752)
!769 = !DILocation(line: 353, column: 16, scope: !752)
!770 = !DILocation(line: 353, column: 24, scope: !752)
!771 = !DILocation(line: 353, column: 23, scope: !752)
!772 = !DILocation(line: 353, column: 5, scope: !752)
!773 = !DILocation(line: 353, column: 10, scope: !752)
!774 = !DILocation(line: 353, column: 14, scope: !752)
!775 = !DILocation(line: 354, column: 45, scope: !752)
!776 = !DILocation(line: 354, column: 50, scope: !752)
!777 = !DILocation(line: 354, column: 40, scope: !752)
!778 = !DILocation(line: 354, column: 38, scope: !752)
!779 = !DILocation(line: 354, column: 5, scope: !752)
!780 = !DILocation(line: 354, column: 10, scope: !752)
!781 = !DILocation(line: 354, column: 14, scope: !752)
!782 = !DILocation(line: 355, column: 45, scope: !752)
!783 = !DILocation(line: 355, column: 50, scope: !752)
!784 = !DILocation(line: 355, column: 40, scope: !752)
!785 = !DILocation(line: 355, column: 38, scope: !752)
!786 = !DILocation(line: 355, column: 5, scope: !752)
!787 = !DILocation(line: 355, column: 10, scope: !752)
!788 = !DILocation(line: 355, column: 14, scope: !752)
!789 = !DILocation(line: 356, column: 5, scope: !752)
!790 = !DILocation(line: 358, column: 16, scope: !791)
!791 = distinct !DILexicalBlock(scope: !747, file: !1, line: 358, column: 11)
!792 = !DILocation(line: 358, column: 11, scope: !791)
!793 = !DILocation(line: 358, column: 20, scope: !791)
!794 = !DILocation(line: 358, column: 11, scope: !747)
!795 = !DILocalVariable(name: "ex", scope: !796, file: !1, line: 359, type: !49)
!796 = distinct !DILexicalBlock(scope: !791, file: !1, line: 358, column: 39)
!797 = !DILocation(line: 359, column: 12, scope: !796)
!798 = !DILocation(line: 359, column: 21, scope: !796)
!799 = !DILocation(line: 359, column: 17, scope: !796)
!800 = !DILocalVariable(name: "ch", scope: !796, file: !1, line: 360, type: !49)
!801 = !DILocation(line: 360, column: 12, scope: !796)
!802 = !DILocation(line: 360, column: 22, scope: !796)
!803 = !DILocation(line: 360, column: 29, scope: !796)
!804 = !DILocation(line: 360, column: 28, scope: !796)
!805 = !DILocation(line: 360, column: 24, scope: !796)
!806 = !DILocation(line: 360, column: 20, scope: !796)
!807 = !DILocalVariable(name: "sh", scope: !796, file: !1, line: 361, type: !49)
!808 = !DILocation(line: 361, column: 12, scope: !796)
!809 = !DILocation(line: 361, column: 22, scope: !796)
!810 = !DILocation(line: 361, column: 29, scope: !796)
!811 = !DILocation(line: 361, column: 28, scope: !796)
!812 = !DILocation(line: 361, column: 24, scope: !796)
!813 = !DILocation(line: 361, column: 20, scope: !796)
!814 = !DILocation(line: 362, column: 20, scope: !796)
!815 = !DILocation(line: 362, column: 16, scope: !796)
!816 = !DILocation(line: 362, column: 24, scope: !796)
!817 = !DILocation(line: 362, column: 23, scope: !796)
!818 = !DILocation(line: 362, column: 5, scope: !796)
!819 = !DILocation(line: 362, column: 10, scope: !796)
!820 = !DILocation(line: 362, column: 14, scope: !796)
!821 = !DILocation(line: 363, column: 20, scope: !796)
!822 = !DILocation(line: 363, column: 16, scope: !796)
!823 = !DILocation(line: 363, column: 24, scope: !796)
!824 = !DILocation(line: 363, column: 23, scope: !796)
!825 = !DILocation(line: 363, column: 5, scope: !796)
!826 = !DILocation(line: 363, column: 10, scope: !796)
!827 = !DILocation(line: 363, column: 14, scope: !796)
!828 = !DILocation(line: 364, column: 45, scope: !796)
!829 = !DILocation(line: 364, column: 50, scope: !796)
!830 = !DILocation(line: 364, column: 40, scope: !796)
!831 = !DILocation(line: 364, column: 38, scope: !796)
!832 = !DILocation(line: 364, column: 5, scope: !796)
!833 = !DILocation(line: 364, column: 10, scope: !796)
!834 = !DILocation(line: 364, column: 14, scope: !796)
!835 = !DILocation(line: 365, column: 45, scope: !796)
!836 = !DILocation(line: 365, column: 50, scope: !796)
!837 = !DILocation(line: 365, column: 40, scope: !796)
!838 = !DILocation(line: 365, column: 38, scope: !796)
!839 = !DILocation(line: 365, column: 5, scope: !796)
!840 = !DILocation(line: 365, column: 10, scope: !796)
!841 = !DILocation(line: 365, column: 14, scope: !796)
!842 = !DILocation(line: 366, column: 5, scope: !796)
!843 = !DILocation(line: 369, column: 5, scope: !844)
!844 = distinct !DILexicalBlock(scope: !791, file: !1, line: 368, column: 8)
!845 = distinct !{!845, !843}
!846 = !DILocation(line: 369, column: 5, scope: !847)
!847 = !DILexicalBlockFile(scope: !848, file: !1, discriminator: 1)
!848 = distinct !DILexicalBlock(scope: !844, file: !1, line: 369, column: 5)
!849 = distinct !{!849, !850}
!850 = !DILocation(line: 369, column: 5, scope: !848)
!851 = !DILocation(line: 369, column: 5, scope: !852)
!852 = !DILexicalBlockFile(scope: !853, file: !1, discriminator: 2)
!853 = distinct !DILexicalBlock(scope: !848, file: !1, line: 369, column: 5)
!854 = !DILocation(line: 369, column: 5, scope: !855)
!855 = !DILexicalBlockFile(scope: !848, file: !1, discriminator: 3)
!856 = !DILocation(line: 371, column: 1, scope: !735)
!857 = distinct !DISubprogram(name: "sinh_series", scope: !1, file: !1, line: 39, type: !858, isLocal: true, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !83)
!858 = !DISubroutineType(types: !859)
!859 = !{!51, !91, !48}
!860 = !DILocalVariable(name: "x", arg: 1, scope: !857, file: !1, line: 39, type: !91)
!861 = !DILocation(line: 39, column: 26, scope: !857)
!862 = !DILocalVariable(name: "result", arg: 2, scope: !857, file: !1, line: 39, type: !48)
!863 = !DILocation(line: 39, column: 38, scope: !857)
!864 = !DILocalVariable(name: "y", scope: !857, file: !1, line: 41, type: !91)
!865 = !DILocation(line: 41, column: 16, scope: !857)
!866 = !DILocation(line: 41, column: 20, scope: !857)
!867 = !DILocation(line: 41, column: 22, scope: !857)
!868 = !DILocation(line: 41, column: 21, scope: !857)
!869 = !DILocalVariable(name: "c0", scope: !857, file: !1, line: 42, type: !91)
!870 = !DILocation(line: 42, column: 16, scope: !857)
!871 = !DILocalVariable(name: "c1", scope: !857, file: !1, line: 43, type: !91)
!872 = !DILocation(line: 43, column: 16, scope: !857)
!873 = !DILocalVariable(name: "c2", scope: !857, file: !1, line: 44, type: !91)
!874 = !DILocation(line: 44, column: 16, scope: !857)
!875 = !DILocalVariable(name: "c3", scope: !857, file: !1, line: 45, type: !91)
!876 = !DILocation(line: 45, column: 16, scope: !857)
!877 = !DILocalVariable(name: "c4", scope: !857, file: !1, line: 46, type: !91)
!878 = !DILocation(line: 46, column: 16, scope: !857)
!879 = !DILocalVariable(name: "c5", scope: !857, file: !1, line: 47, type: !91)
!880 = !DILocation(line: 47, column: 16, scope: !857)
!881 = !DILocalVariable(name: "c6", scope: !857, file: !1, line: 48, type: !91)
!882 = !DILocation(line: 48, column: 16, scope: !857)
!883 = !DILocalVariable(name: "c7", scope: !857, file: !1, line: 49, type: !91)
!884 = !DILocation(line: 49, column: 16, scope: !857)
!885 = !DILocation(line: 50, column: 13, scope: !857)
!886 = !DILocation(line: 50, column: 22, scope: !857)
!887 = !DILocation(line: 50, column: 28, scope: !857)
!888 = !DILocation(line: 50, column: 34, scope: !857)
!889 = !DILocation(line: 50, column: 40, scope: !857)
!890 = !DILocation(line: 50, column: 46, scope: !857)
!891 = !DILocation(line: 50, column: 52, scope: !857)
!892 = !DILocation(line: 50, column: 58, scope: !857)
!893 = !DILocation(line: 50, column: 64, scope: !857)
!894 = !DILocation(line: 50, column: 65, scope: !857)
!895 = !DILocation(line: 50, column: 63, scope: !857)
!896 = !DILocation(line: 50, column: 59, scope: !857)
!897 = !DILocation(line: 50, column: 57, scope: !857)
!898 = !DILocation(line: 50, column: 53, scope: !857)
!899 = !DILocation(line: 50, column: 51, scope: !857)
!900 = !DILocation(line: 50, column: 47, scope: !857)
!901 = !DILocation(line: 50, column: 45, scope: !857)
!902 = !DILocation(line: 50, column: 41, scope: !857)
!903 = !DILocation(line: 50, column: 39, scope: !857)
!904 = !DILocation(line: 50, column: 35, scope: !857)
!905 = !DILocation(line: 50, column: 33, scope: !857)
!906 = !DILocation(line: 50, column: 29, scope: !857)
!907 = !DILocation(line: 50, column: 27, scope: !857)
!908 = !DILocation(line: 50, column: 23, scope: !857)
!909 = !DILocation(line: 50, column: 20, scope: !857)
!910 = !DILocation(line: 50, column: 14, scope: !857)
!911 = !DILocation(line: 50, column: 4, scope: !857)
!912 = !DILocation(line: 50, column: 11, scope: !857)
!913 = !DILocation(line: 51, column: 3, scope: !857)
!914 = distinct !DISubprogram(name: "cosh_m1_series", scope: !1, file: !1, line: 61, type: !858, isLocal: true, isDefinition: true, scopeLine: 62, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !83)
!915 = !DILocalVariable(name: "x", arg: 1, scope: !914, file: !1, line: 61, type: !91)
!916 = !DILocation(line: 61, column: 29, scope: !914)
!917 = !DILocalVariable(name: "result", arg: 2, scope: !914, file: !1, line: 61, type: !48)
!918 = !DILocation(line: 61, column: 41, scope: !914)
!919 = !DILocalVariable(name: "y", scope: !914, file: !1, line: 63, type: !91)
!920 = !DILocation(line: 63, column: 16, scope: !914)
!921 = !DILocation(line: 63, column: 20, scope: !914)
!922 = !DILocation(line: 63, column: 22, scope: !914)
!923 = !DILocation(line: 63, column: 21, scope: !914)
!924 = !DILocalVariable(name: "c0", scope: !914, file: !1, line: 64, type: !91)
!925 = !DILocation(line: 64, column: 16, scope: !914)
!926 = !DILocalVariable(name: "c1", scope: !914, file: !1, line: 65, type: !91)
!927 = !DILocation(line: 65, column: 16, scope: !914)
!928 = !DILocalVariable(name: "c2", scope: !914, file: !1, line: 66, type: !91)
!929 = !DILocation(line: 66, column: 16, scope: !914)
!930 = !DILocalVariable(name: "c3", scope: !914, file: !1, line: 67, type: !91)
!931 = !DILocation(line: 67, column: 16, scope: !914)
!932 = !DILocalVariable(name: "c4", scope: !914, file: !1, line: 68, type: !91)
!933 = !DILocation(line: 68, column: 16, scope: !914)
!934 = !DILocalVariable(name: "c5", scope: !914, file: !1, line: 69, type: !91)
!935 = !DILocation(line: 69, column: 16, scope: !914)
!936 = !DILocalVariable(name: "c6", scope: !914, file: !1, line: 70, type: !91)
!937 = !DILocation(line: 70, column: 16, scope: !914)
!938 = !DILocalVariable(name: "c7", scope: !914, file: !1, line: 71, type: !91)
!939 = !DILocation(line: 71, column: 16, scope: !914)
!940 = !DILocalVariable(name: "c8", scope: !914, file: !1, line: 72, type: !91)
!941 = !DILocation(line: 72, column: 16, scope: !914)
!942 = !DILocation(line: 73, column: 13, scope: !914)
!943 = !DILocation(line: 73, column: 19, scope: !914)
!944 = !DILocation(line: 73, column: 25, scope: !914)
!945 = !DILocation(line: 73, column: 31, scope: !914)
!946 = !DILocation(line: 73, column: 37, scope: !914)
!947 = !DILocation(line: 73, column: 43, scope: !914)
!948 = !DILocation(line: 73, column: 49, scope: !914)
!949 = !DILocation(line: 73, column: 55, scope: !914)
!950 = !DILocation(line: 73, column: 61, scope: !914)
!951 = !DILocation(line: 73, column: 62, scope: !914)
!952 = !DILocation(line: 73, column: 60, scope: !914)
!953 = !DILocation(line: 73, column: 56, scope: !914)
!954 = !DILocation(line: 73, column: 54, scope: !914)
!955 = !DILocation(line: 73, column: 50, scope: !914)
!956 = !DILocation(line: 73, column: 48, scope: !914)
!957 = !DILocation(line: 73, column: 44, scope: !914)
!958 = !DILocation(line: 73, column: 42, scope: !914)
!959 = !DILocation(line: 73, column: 38, scope: !914)
!960 = !DILocation(line: 73, column: 36, scope: !914)
!961 = !DILocation(line: 73, column: 32, scope: !914)
!962 = !DILocation(line: 73, column: 30, scope: !914)
!963 = !DILocation(line: 73, column: 26, scope: !914)
!964 = !DILocation(line: 73, column: 24, scope: !914)
!965 = !DILocation(line: 73, column: 20, scope: !914)
!966 = !DILocation(line: 73, column: 18, scope: !914)
!967 = !DILocation(line: 73, column: 14, scope: !914)
!968 = !DILocation(line: 73, column: 4, scope: !914)
!969 = !DILocation(line: 73, column: 11, scope: !914)
!970 = !DILocation(line: 74, column: 3, scope: !914)
!971 = distinct !DISubprogram(name: "gsl_sf_complex_cos_e", scope: !1, file: !1, line: 375, type: !736, isLocal: false, isDefinition: true, scopeLine: 377, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !83)
!972 = !DILocalVariable(name: "zr", arg: 1, scope: !971, file: !1, line: 375, type: !91)
!973 = !DILocation(line: 375, column: 35, scope: !971)
!974 = !DILocalVariable(name: "zi", arg: 2, scope: !971, file: !1, line: 375, type: !91)
!975 = !DILocation(line: 375, column: 52, scope: !971)
!976 = !DILocalVariable(name: "czr", arg: 3, scope: !971, file: !1, line: 376, type: !76)
!977 = !DILocation(line: 376, column: 41, scope: !971)
!978 = !DILocalVariable(name: "czi", arg: 4, scope: !971, file: !1, line: 376, type: !76)
!979 = !DILocation(line: 376, column: 62, scope: !971)
!980 = !DILocation(line: 381, column: 11, scope: !981)
!981 = distinct !DILexicalBlock(scope: !971, file: !1, line: 381, column: 6)
!982 = !DILocation(line: 381, column: 6, scope: !981)
!983 = !DILocation(line: 381, column: 15, scope: !981)
!984 = !DILocation(line: 381, column: 6, scope: !971)
!985 = !DILocalVariable(name: "ch_m1", scope: !986, file: !1, line: 382, type: !49)
!986 = distinct !DILexicalBlock(scope: !981, file: !1, line: 381, column: 22)
!987 = !DILocation(line: 382, column: 12, scope: !986)
!988 = !DILocalVariable(name: "sh", scope: !986, file: !1, line: 382, type: !49)
!989 = !DILocation(line: 382, column: 19, scope: !986)
!990 = !DILocation(line: 383, column: 17, scope: !986)
!991 = !DILocation(line: 383, column: 5, scope: !986)
!992 = !DILocation(line: 384, column: 20, scope: !986)
!993 = !DILocation(line: 384, column: 5, scope: !986)
!994 = !DILocation(line: 385, column: 21, scope: !986)
!995 = !DILocation(line: 385, column: 17, scope: !986)
!996 = !DILocation(line: 385, column: 26, scope: !986)
!997 = !DILocation(line: 385, column: 32, scope: !986)
!998 = !DILocation(line: 385, column: 24, scope: !986)
!999 = !DILocation(line: 385, column: 5, scope: !986)
!1000 = !DILocation(line: 385, column: 10, scope: !986)
!1001 = !DILocation(line: 385, column: 14, scope: !986)
!1002 = !DILocation(line: 386, column: 21, scope: !986)
!1003 = !DILocation(line: 386, column: 17, scope: !986)
!1004 = !DILocation(line: 386, column: 16, scope: !986)
!1005 = !DILocation(line: 386, column: 25, scope: !986)
!1006 = !DILocation(line: 386, column: 24, scope: !986)
!1007 = !DILocation(line: 386, column: 5, scope: !986)
!1008 = !DILocation(line: 386, column: 10, scope: !986)
!1009 = !DILocation(line: 386, column: 14, scope: !986)
!1010 = !DILocation(line: 387, column: 45, scope: !986)
!1011 = !DILocation(line: 387, column: 50, scope: !986)
!1012 = !DILocation(line: 387, column: 40, scope: !986)
!1013 = !DILocation(line: 387, column: 38, scope: !986)
!1014 = !DILocation(line: 387, column: 5, scope: !986)
!1015 = !DILocation(line: 387, column: 10, scope: !986)
!1016 = !DILocation(line: 387, column: 14, scope: !986)
!1017 = !DILocation(line: 388, column: 45, scope: !986)
!1018 = !DILocation(line: 388, column: 50, scope: !986)
!1019 = !DILocation(line: 388, column: 40, scope: !986)
!1020 = !DILocation(line: 388, column: 38, scope: !986)
!1021 = !DILocation(line: 388, column: 5, scope: !986)
!1022 = !DILocation(line: 388, column: 10, scope: !986)
!1023 = !DILocation(line: 388, column: 14, scope: !986)
!1024 = !DILocation(line: 389, column: 5, scope: !986)
!1025 = !DILocation(line: 391, column: 16, scope: !1026)
!1026 = distinct !DILexicalBlock(scope: !981, file: !1, line: 391, column: 11)
!1027 = !DILocation(line: 391, column: 11, scope: !1026)
!1028 = !DILocation(line: 391, column: 20, scope: !1026)
!1029 = !DILocation(line: 391, column: 11, scope: !981)
!1030 = !DILocalVariable(name: "ex", scope: !1031, file: !1, line: 392, type: !49)
!1031 = distinct !DILexicalBlock(scope: !1026, file: !1, line: 391, column: 39)
!1032 = !DILocation(line: 392, column: 12, scope: !1031)
!1033 = !DILocation(line: 392, column: 21, scope: !1031)
!1034 = !DILocation(line: 392, column: 17, scope: !1031)
!1035 = !DILocalVariable(name: "ch", scope: !1031, file: !1, line: 393, type: !49)
!1036 = !DILocation(line: 393, column: 12, scope: !1031)
!1037 = !DILocation(line: 393, column: 22, scope: !1031)
!1038 = !DILocation(line: 393, column: 29, scope: !1031)
!1039 = !DILocation(line: 393, column: 28, scope: !1031)
!1040 = !DILocation(line: 393, column: 24, scope: !1031)
!1041 = !DILocation(line: 393, column: 20, scope: !1031)
!1042 = !DILocalVariable(name: "sh", scope: !1031, file: !1, line: 394, type: !49)
!1043 = !DILocation(line: 394, column: 12, scope: !1031)
!1044 = !DILocation(line: 394, column: 22, scope: !1031)
!1045 = !DILocation(line: 394, column: 29, scope: !1031)
!1046 = !DILocation(line: 394, column: 28, scope: !1031)
!1047 = !DILocation(line: 394, column: 24, scope: !1031)
!1048 = !DILocation(line: 394, column: 20, scope: !1031)
!1049 = !DILocation(line: 395, column: 21, scope: !1031)
!1050 = !DILocation(line: 395, column: 17, scope: !1031)
!1051 = !DILocation(line: 395, column: 25, scope: !1031)
!1052 = !DILocation(line: 395, column: 24, scope: !1031)
!1053 = !DILocation(line: 395, column: 5, scope: !1031)
!1054 = !DILocation(line: 395, column: 10, scope: !1031)
!1055 = !DILocation(line: 395, column: 14, scope: !1031)
!1056 = !DILocation(line: 396, column: 21, scope: !1031)
!1057 = !DILocation(line: 396, column: 17, scope: !1031)
!1058 = !DILocation(line: 396, column: 16, scope: !1031)
!1059 = !DILocation(line: 396, column: 25, scope: !1031)
!1060 = !DILocation(line: 396, column: 24, scope: !1031)
!1061 = !DILocation(line: 396, column: 5, scope: !1031)
!1062 = !DILocation(line: 396, column: 10, scope: !1031)
!1063 = !DILocation(line: 396, column: 14, scope: !1031)
!1064 = !DILocation(line: 397, column: 45, scope: !1031)
!1065 = !DILocation(line: 397, column: 50, scope: !1031)
!1066 = !DILocation(line: 397, column: 40, scope: !1031)
!1067 = !DILocation(line: 397, column: 38, scope: !1031)
!1068 = !DILocation(line: 397, column: 5, scope: !1031)
!1069 = !DILocation(line: 397, column: 10, scope: !1031)
!1070 = !DILocation(line: 397, column: 14, scope: !1031)
!1071 = !DILocation(line: 398, column: 45, scope: !1031)
!1072 = !DILocation(line: 398, column: 50, scope: !1031)
!1073 = !DILocation(line: 398, column: 40, scope: !1031)
!1074 = !DILocation(line: 398, column: 38, scope: !1031)
!1075 = !DILocation(line: 398, column: 5, scope: !1031)
!1076 = !DILocation(line: 398, column: 10, scope: !1031)
!1077 = !DILocation(line: 398, column: 14, scope: !1031)
!1078 = !DILocation(line: 399, column: 5, scope: !1031)
!1079 = !DILocation(line: 402, column: 5, scope: !1080)
!1080 = distinct !DILexicalBlock(scope: !1026, file: !1, line: 401, column: 8)
!1081 = distinct !{!1081, !1079}
!1082 = !DILocation(line: 402, column: 5, scope: !1083)
!1083 = !DILexicalBlockFile(scope: !1084, file: !1, discriminator: 1)
!1084 = distinct !DILexicalBlock(scope: !1080, file: !1, line: 402, column: 5)
!1085 = distinct !{!1085, !1086}
!1086 = !DILocation(line: 402, column: 5, scope: !1084)
!1087 = !DILocation(line: 402, column: 5, scope: !1088)
!1088 = !DILexicalBlockFile(scope: !1089, file: !1, discriminator: 2)
!1089 = distinct !DILexicalBlock(scope: !1084, file: !1, line: 402, column: 5)
!1090 = !DILocation(line: 402, column: 5, scope: !1091)
!1091 = !DILexicalBlockFile(scope: !1084, file: !1, discriminator: 3)
!1092 = !DILocation(line: 404, column: 1, scope: !971)
!1093 = distinct !DISubprogram(name: "gsl_sf_complex_logsin_e", scope: !1, file: !1, line: 408, type: !736, isLocal: false, isDefinition: true, scopeLine: 410, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !83)
!1094 = !DILocalVariable(name: "zr", arg: 1, scope: !1093, file: !1, line: 408, type: !91)
!1095 = !DILocation(line: 408, column: 38, scope: !1093)
!1096 = !DILocalVariable(name: "zi", arg: 2, scope: !1093, file: !1, line: 408, type: !91)
!1097 = !DILocation(line: 408, column: 55, scope: !1093)
!1098 = !DILocalVariable(name: "lszr", arg: 3, scope: !1093, file: !1, line: 409, type: !76)
!1099 = !DILocation(line: 409, column: 44, scope: !1093)
!1100 = !DILocalVariable(name: "lszi", arg: 4, scope: !1093, file: !1, line: 409, type: !76)
!1101 = !DILocation(line: 409, column: 66, scope: !1093)
!1102 = !DILocation(line: 414, column: 6, scope: !1103)
!1103 = distinct !DILexicalBlock(scope: !1093, file: !1, line: 414, column: 6)
!1104 = !DILocation(line: 414, column: 9, scope: !1103)
!1105 = !DILocation(line: 414, column: 6, scope: !1093)
!1106 = !DILocation(line: 415, column: 26, scope: !1107)
!1107 = distinct !DILexicalBlock(scope: !1103, file: !1, line: 414, column: 17)
!1108 = !DILocation(line: 415, column: 24, scope: !1107)
!1109 = !DILocation(line: 415, column: 5, scope: !1107)
!1110 = !DILocation(line: 415, column: 11, scope: !1107)
!1111 = !DILocation(line: 415, column: 15, scope: !1107)
!1112 = !DILocation(line: 416, column: 29, scope: !1107)
!1113 = !DILocation(line: 416, column: 27, scope: !1107)
!1114 = !DILocation(line: 416, column: 5, scope: !1107)
!1115 = !DILocation(line: 416, column: 11, scope: !1107)
!1116 = !DILocation(line: 416, column: 15, scope: !1107)
!1117 = !DILocation(line: 417, column: 46, scope: !1107)
!1118 = !DILocation(line: 417, column: 52, scope: !1107)
!1119 = !DILocation(line: 417, column: 41, scope: !1107)
!1120 = !DILocation(line: 417, column: 39, scope: !1107)
!1121 = !DILocation(line: 417, column: 5, scope: !1107)
!1122 = !DILocation(line: 417, column: 11, scope: !1107)
!1123 = !DILocation(line: 417, column: 15, scope: !1107)
!1124 = !DILocation(line: 418, column: 46, scope: !1107)
!1125 = !DILocation(line: 418, column: 52, scope: !1107)
!1126 = !DILocation(line: 418, column: 41, scope: !1107)
!1127 = !DILocation(line: 418, column: 39, scope: !1107)
!1128 = !DILocation(line: 418, column: 5, scope: !1107)
!1129 = !DILocation(line: 418, column: 11, scope: !1107)
!1130 = !DILocation(line: 418, column: 15, scope: !1107)
!1131 = !DILocation(line: 419, column: 3, scope: !1107)
!1132 = !DILocation(line: 420, column: 11, scope: !1133)
!1133 = distinct !DILexicalBlock(scope: !1103, file: !1, line: 420, column: 11)
!1134 = !DILocation(line: 420, column: 14, scope: !1133)
!1135 = !DILocation(line: 420, column: 11, scope: !1103)
!1136 = !DILocation(line: 421, column: 26, scope: !1137)
!1137 = distinct !DILexicalBlock(scope: !1133, file: !1, line: 420, column: 23)
!1138 = !DILocation(line: 421, column: 24, scope: !1137)
!1139 = !DILocation(line: 421, column: 5, scope: !1137)
!1140 = !DILocation(line: 421, column: 11, scope: !1137)
!1141 = !DILocation(line: 421, column: 15, scope: !1137)
!1142 = !DILocation(line: 422, column: 29, scope: !1137)
!1143 = !DILocation(line: 422, column: 27, scope: !1137)
!1144 = !DILocation(line: 422, column: 5, scope: !1137)
!1145 = !DILocation(line: 422, column: 11, scope: !1137)
!1146 = !DILocation(line: 422, column: 15, scope: !1137)
!1147 = !DILocation(line: 423, column: 46, scope: !1137)
!1148 = !DILocation(line: 423, column: 52, scope: !1137)
!1149 = !DILocation(line: 423, column: 41, scope: !1137)
!1150 = !DILocation(line: 423, column: 39, scope: !1137)
!1151 = !DILocation(line: 423, column: 5, scope: !1137)
!1152 = !DILocation(line: 423, column: 11, scope: !1137)
!1153 = !DILocation(line: 423, column: 15, scope: !1137)
!1154 = !DILocation(line: 424, column: 46, scope: !1137)
!1155 = !DILocation(line: 424, column: 52, scope: !1137)
!1156 = !DILocation(line: 424, column: 41, scope: !1137)
!1157 = !DILocation(line: 424, column: 39, scope: !1137)
!1158 = !DILocation(line: 424, column: 5, scope: !1137)
!1159 = !DILocation(line: 424, column: 11, scope: !1137)
!1160 = !DILocation(line: 424, column: 15, scope: !1137)
!1161 = !DILocation(line: 425, column: 3, scope: !1137)
!1162 = !DILocalVariable(name: "sin_r", scope: !1163, file: !1, line: 427, type: !77)
!1163 = distinct !DILexicalBlock(scope: !1133, file: !1, line: 426, column: 8)
!1164 = !DILocation(line: 427, column: 19, scope: !1163)
!1165 = !DILocalVariable(name: "sin_i", scope: !1163, file: !1, line: 427, type: !77)
!1166 = !DILocation(line: 427, column: 26, scope: !1163)
!1167 = !DILocalVariable(name: "status", scope: !1163, file: !1, line: 428, type: !51)
!1168 = !DILocation(line: 428, column: 9, scope: !1163)
!1169 = !DILocation(line: 429, column: 26, scope: !1163)
!1170 = !DILocation(line: 429, column: 30, scope: !1163)
!1171 = !DILocation(line: 429, column: 5, scope: !1163)
!1172 = !DILocation(line: 430, column: 41, scope: !1163)
!1173 = !DILocation(line: 430, column: 52, scope: !1163)
!1174 = !DILocation(line: 430, column: 57, scope: !1163)
!1175 = !DILocation(line: 430, column: 63, scope: !1163)
!1176 = !DILocation(line: 430, column: 14, scope: !1163)
!1177 = !DILocation(line: 430, column: 12, scope: !1163)
!1178 = !DILocation(line: 431, column: 8, scope: !1179)
!1179 = distinct !DILexicalBlock(scope: !1163, file: !1, line: 431, column: 8)
!1180 = !DILocation(line: 431, column: 15, scope: !1179)
!1181 = !DILocation(line: 431, column: 8, scope: !1163)
!1182 = !DILocation(line: 432, column: 7, scope: !1183)
!1183 = distinct !DILexicalBlock(scope: !1179, file: !1, line: 431, column: 28)
!1184 = distinct !{!1184, !1182}
!1185 = !DILocation(line: 432, column: 7, scope: !1186)
!1186 = !DILexicalBlockFile(scope: !1187, file: !1, discriminator: 1)
!1187 = distinct !DILexicalBlock(scope: !1183, file: !1, line: 432, column: 7)
!1188 = distinct !{!1188, !1189}
!1189 = !DILocation(line: 432, column: 7, scope: !1187)
!1190 = !DILocation(line: 432, column: 7, scope: !1191)
!1191 = !DILexicalBlockFile(scope: !1192, file: !1, discriminator: 2)
!1192 = distinct !DILexicalBlock(scope: !1187, file: !1, line: 432, column: 7)
!1193 = !DILocation(line: 432, column: 7, scope: !1194)
!1194 = !DILexicalBlockFile(scope: !1187, file: !1, discriminator: 3)
!1195 = !DILocation(line: 433, column: 5, scope: !1183)
!1196 = !DILocation(line: 435, column: 41, scope: !1093)
!1197 = !DILocation(line: 435, column: 47, scope: !1093)
!1198 = !DILocation(line: 435, column: 10, scope: !1093)
!1199 = !DILocation(line: 435, column: 3, scope: !1093)
!1200 = !DILocation(line: 436, column: 1, scope: !1093)
!1201 = distinct !DISubprogram(name: "gsl_sf_angle_restrict_symm_e", scope: !1, file: !1, line: 602, type: !1202, isLocal: false, isDefinition: true, scopeLine: 603, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !83)
!1202 = !DISubroutineType(types: !1203)
!1203 = !{!51, !48}
!1204 = !DILocalVariable(name: "theta", arg: 1, scope: !1201, file: !1, line: 602, type: !48)
!1205 = !DILocation(line: 602, column: 43, scope: !1201)
!1206 = !DILocalVariable(name: "r", scope: !1201, file: !1, line: 604, type: !77)
!1207 = !DILocation(line: 604, column: 17, scope: !1201)
!1208 = !DILocalVariable(name: "stat", scope: !1201, file: !1, line: 605, type: !51)
!1209 = !DILocation(line: 605, column: 7, scope: !1201)
!1210 = !DILocation(line: 605, column: 48, scope: !1201)
!1211 = !DILocation(line: 605, column: 47, scope: !1201)
!1212 = !DILocation(line: 605, column: 14, scope: !1201)
!1213 = !DILocation(line: 606, column: 14, scope: !1201)
!1214 = !DILocation(line: 606, column: 4, scope: !1201)
!1215 = !DILocation(line: 606, column: 10, scope: !1201)
!1216 = !DILocation(line: 607, column: 10, scope: !1201)
!1217 = !DILocation(line: 607, column: 3, scope: !1201)
!1218 = distinct !DISubprogram(name: "gsl_sf_lnsinh_e", scope: !1, file: !1, line: 440, type: !1219, isLocal: false, isDefinition: true, scopeLine: 441, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !83)
!1219 = !DISubroutineType(types: !1220)
!1220 = !{!51, !91, !76}
!1221 = !DILocalVariable(name: "x", arg: 1, scope: !1218, file: !1, line: 440, type: !91)
!1222 = !DILocation(line: 440, column: 30, scope: !1218)
!1223 = !DILocalVariable(name: "result", arg: 2, scope: !1218, file: !1, line: 440, type: !76)
!1224 = !DILocation(line: 440, column: 49, scope: !1218)
!1225 = !DILocation(line: 444, column: 6, scope: !1226)
!1226 = distinct !DILexicalBlock(scope: !1218, file: !1, line: 444, column: 6)
!1227 = !DILocation(line: 444, column: 8, scope: !1226)
!1228 = !DILocation(line: 444, column: 6, scope: !1218)
!1229 = !DILocation(line: 445, column: 5, scope: !1230)
!1230 = distinct !DILexicalBlock(scope: !1226, file: !1, line: 444, column: 16)
!1231 = distinct !{!1231, !1229}
!1232 = !DILocation(line: 445, column: 5, scope: !1233)
!1233 = !DILexicalBlockFile(scope: !1234, file: !1, discriminator: 1)
!1234 = distinct !DILexicalBlock(scope: !1230, file: !1, line: 445, column: 5)
!1235 = distinct !{!1235, !1236}
!1236 = !DILocation(line: 445, column: 5, scope: !1234)
!1237 = !DILocation(line: 445, column: 5, scope: !1238)
!1238 = !DILexicalBlockFile(scope: !1239, file: !1, discriminator: 2)
!1239 = distinct !DILexicalBlock(scope: !1234, file: !1, line: 445, column: 5)
!1240 = !DILocation(line: 445, column: 5, scope: !1241)
!1241 = !DILexicalBlockFile(scope: !1234, file: !1, discriminator: 3)
!1242 = !DILocation(line: 446, column: 3, scope: !1230)
!1243 = !DILocation(line: 447, column: 16, scope: !1244)
!1244 = distinct !DILexicalBlock(scope: !1226, file: !1, line: 447, column: 11)
!1245 = !DILocation(line: 447, column: 11, scope: !1244)
!1246 = !DILocation(line: 447, column: 19, scope: !1244)
!1247 = !DILocation(line: 447, column: 11, scope: !1226)
!1248 = !DILocalVariable(name: "eps", scope: !1249, file: !1, line: 448, type: !49)
!1249 = distinct !DILexicalBlock(scope: !1244, file: !1, line: 447, column: 26)
!1250 = !DILocation(line: 448, column: 12, scope: !1249)
!1251 = !DILocation(line: 449, column: 17, scope: !1249)
!1252 = !DILocation(line: 449, column: 5, scope: !1249)
!1253 = !DILocation(line: 450, column: 23, scope: !1249)
!1254 = !DILocation(line: 450, column: 19, scope: !1249)
!1255 = !DILocation(line: 450, column: 5, scope: !1249)
!1256 = !DILocation(line: 450, column: 13, scope: !1249)
!1257 = !DILocation(line: 450, column: 17, scope: !1249)
!1258 = !DILocation(line: 451, column: 48, scope: !1249)
!1259 = !DILocation(line: 451, column: 56, scope: !1249)
!1260 = !DILocation(line: 451, column: 43, scope: !1249)
!1261 = !DILocation(line: 451, column: 41, scope: !1249)
!1262 = !DILocation(line: 451, column: 5, scope: !1249)
!1263 = !DILocation(line: 451, column: 13, scope: !1249)
!1264 = !DILocation(line: 451, column: 17, scope: !1249)
!1265 = !DILocation(line: 452, column: 5, scope: !1249)
!1266 = !DILocation(line: 454, column: 11, scope: !1267)
!1267 = distinct !DILexicalBlock(scope: !1244, file: !1, line: 454, column: 11)
!1268 = !DILocation(line: 454, column: 13, scope: !1267)
!1269 = !DILocation(line: 454, column: 11, scope: !1244)
!1270 = !DILocation(line: 455, column: 19, scope: !1271)
!1271 = distinct !DILexicalBlock(scope: !1267, file: !1, line: 454, column: 41)
!1272 = !DILocation(line: 455, column: 47, scope: !1271)
!1273 = !DILocation(line: 455, column: 46, scope: !1271)
!1274 = !DILocation(line: 455, column: 38, scope: !1271)
!1275 = !DILocation(line: 455, column: 36, scope: !1271)
!1276 = !DILocation(line: 455, column: 30, scope: !1271)
!1277 = !DILocation(line: 455, column: 23, scope: !1278)
!1278 = !DILexicalBlockFile(scope: !1271, file: !1, discriminator: 1)
!1279 = !DILocation(line: 455, column: 21, scope: !1271)
!1280 = !DILocation(line: 455, column: 5, scope: !1271)
!1281 = !DILocation(line: 455, column: 13, scope: !1271)
!1282 = !DILocation(line: 455, column: 17, scope: !1271)
!1283 = !DILocation(line: 456, column: 48, scope: !1271)
!1284 = !DILocation(line: 456, column: 56, scope: !1271)
!1285 = !DILocation(line: 456, column: 43, scope: !1271)
!1286 = !DILocation(line: 456, column: 41, scope: !1271)
!1287 = !DILocation(line: 456, column: 5, scope: !1271)
!1288 = !DILocation(line: 456, column: 13, scope: !1271)
!1289 = !DILocation(line: 456, column: 17, scope: !1271)
!1290 = !DILocation(line: 457, column: 5, scope: !1271)
!1291 = !DILocation(line: 460, column: 28, scope: !1292)
!1292 = distinct !DILexicalBlock(scope: !1267, file: !1, line: 459, column: 8)
!1293 = !DILocation(line: 460, column: 26, scope: !1292)
!1294 = !DILocation(line: 460, column: 5, scope: !1292)
!1295 = !DILocation(line: 460, column: 13, scope: !1292)
!1296 = !DILocation(line: 460, column: 17, scope: !1292)
!1297 = !DILocation(line: 461, column: 48, scope: !1292)
!1298 = !DILocation(line: 461, column: 56, scope: !1292)
!1299 = !DILocation(line: 461, column: 43, scope: !1292)
!1300 = !DILocation(line: 461, column: 41, scope: !1292)
!1301 = !DILocation(line: 461, column: 5, scope: !1292)
!1302 = !DILocation(line: 461, column: 13, scope: !1292)
!1303 = !DILocation(line: 461, column: 17, scope: !1292)
!1304 = !DILocation(line: 462, column: 5, scope: !1292)
!1305 = !DILocation(line: 464, column: 1, scope: !1218)
!1306 = distinct !DISubprogram(name: "gsl_sf_lncosh_e", scope: !1, file: !1, line: 467, type: !1219, isLocal: false, isDefinition: true, scopeLine: 468, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !83)
!1307 = !DILocalVariable(name: "x", arg: 1, scope: !1306, file: !1, line: 467, type: !91)
!1308 = !DILocation(line: 467, column: 34, scope: !1306)
!1309 = !DILocalVariable(name: "result", arg: 2, scope: !1306, file: !1, line: 467, type: !76)
!1310 = !DILocation(line: 467, column: 53, scope: !1306)
!1311 = !DILocation(line: 471, column: 11, scope: !1312)
!1312 = distinct !DILexicalBlock(scope: !1306, file: !1, line: 471, column: 6)
!1313 = !DILocation(line: 471, column: 6, scope: !1312)
!1314 = !DILocation(line: 471, column: 14, scope: !1312)
!1315 = !DILocation(line: 471, column: 6, scope: !1306)
!1316 = !DILocalVariable(name: "eps", scope: !1317, file: !1, line: 472, type: !49)
!1317 = distinct !DILexicalBlock(scope: !1312, file: !1, line: 471, column: 21)
!1318 = !DILocation(line: 472, column: 12, scope: !1317)
!1319 = !DILocation(line: 473, column: 20, scope: !1317)
!1320 = !DILocation(line: 473, column: 5, scope: !1317)
!1321 = !DILocation(line: 474, column: 32, scope: !1317)
!1322 = !DILocation(line: 474, column: 37, scope: !1317)
!1323 = !DILocation(line: 474, column: 12, scope: !1317)
!1324 = !DILocation(line: 474, column: 5, scope: !1317)
!1325 = !DILocation(line: 476, column: 16, scope: !1326)
!1326 = distinct !DILexicalBlock(scope: !1312, file: !1, line: 476, column: 11)
!1327 = !DILocation(line: 476, column: 11, scope: !1326)
!1328 = !DILocation(line: 476, column: 19, scope: !1326)
!1329 = !DILocation(line: 476, column: 11, scope: !1312)
!1330 = !DILocation(line: 477, column: 24, scope: !1331)
!1331 = distinct !DILexicalBlock(scope: !1326, file: !1, line: 476, column: 47)
!1332 = !DILocation(line: 477, column: 19, scope: !1331)
!1333 = !DILocation(line: 477, column: 58, scope: !1331)
!1334 = !DILocation(line: 477, column: 53, scope: !1335)
!1335 = !DILexicalBlockFile(scope: !1331, file: !1, discriminator: 1)
!1336 = !DILocation(line: 477, column: 52, scope: !1331)
!1337 = !DILocation(line: 477, column: 44, scope: !1338)
!1338 = !DILexicalBlockFile(scope: !1331, file: !1, discriminator: 2)
!1339 = !DILocation(line: 477, column: 42, scope: !1331)
!1340 = !DILocation(line: 477, column: 36, scope: !1331)
!1341 = !DILocation(line: 477, column: 29, scope: !1342)
!1342 = !DILexicalBlockFile(scope: !1331, file: !1, discriminator: 3)
!1343 = !DILocation(line: 477, column: 27, scope: !1331)
!1344 = !DILocation(line: 477, column: 5, scope: !1331)
!1345 = !DILocation(line: 477, column: 13, scope: !1331)
!1346 = !DILocation(line: 477, column: 17, scope: !1331)
!1347 = !DILocation(line: 478, column: 48, scope: !1331)
!1348 = !DILocation(line: 478, column: 56, scope: !1331)
!1349 = !DILocation(line: 478, column: 43, scope: !1331)
!1350 = !DILocation(line: 478, column: 41, scope: !1331)
!1351 = !DILocation(line: 478, column: 5, scope: !1331)
!1352 = !DILocation(line: 478, column: 13, scope: !1331)
!1353 = !DILocation(line: 478, column: 17, scope: !1331)
!1354 = !DILocation(line: 479, column: 5, scope: !1331)
!1355 = !DILocation(line: 482, column: 33, scope: !1356)
!1356 = distinct !DILexicalBlock(scope: !1326, file: !1, line: 481, column: 8)
!1357 = !DILocation(line: 482, column: 28, scope: !1356)
!1358 = !DILocation(line: 482, column: 26, scope: !1356)
!1359 = !DILocation(line: 482, column: 5, scope: !1356)
!1360 = !DILocation(line: 482, column: 13, scope: !1356)
!1361 = !DILocation(line: 482, column: 17, scope: !1356)
!1362 = !DILocation(line: 483, column: 48, scope: !1356)
!1363 = !DILocation(line: 483, column: 56, scope: !1356)
!1364 = !DILocation(line: 483, column: 43, scope: !1356)
!1365 = !DILocation(line: 483, column: 41, scope: !1356)
!1366 = !DILocation(line: 483, column: 5, scope: !1356)
!1367 = !DILocation(line: 483, column: 13, scope: !1356)
!1368 = !DILocation(line: 483, column: 17, scope: !1356)
!1369 = !DILocation(line: 484, column: 5, scope: !1356)
!1370 = !DILocation(line: 486, column: 1, scope: !1306)
!1371 = distinct !DISubprogram(name: "gsl_sf_polar_to_rect", scope: !1, file: !1, line: 500, type: !736, isLocal: false, isDefinition: true, scopeLine: 502, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !83)
!1372 = !DILocalVariable(name: "r", arg: 1, scope: !1371, file: !1, line: 500, type: !91)
!1373 = !DILocation(line: 500, column: 35, scope: !1371)
!1374 = !DILocalVariable(name: "theta", arg: 2, scope: !1371, file: !1, line: 500, type: !91)
!1375 = !DILocation(line: 500, column: 51, scope: !1371)
!1376 = !DILocalVariable(name: "x", arg: 3, scope: !1371, file: !1, line: 501, type: !76)
!1377 = !DILocation(line: 501, column: 43, scope: !1371)
!1378 = !DILocalVariable(name: "y", arg: 4, scope: !1371, file: !1, line: 501, type: !76)
!1379 = !DILocation(line: 501, column: 62, scope: !1371)
!1380 = !DILocalVariable(name: "t", scope: !1371, file: !1, line: 503, type: !49)
!1381 = !DILocation(line: 503, column: 10, scope: !1371)
!1382 = !DILocation(line: 503, column: 16, scope: !1371)
!1383 = !DILocalVariable(name: "status", scope: !1371, file: !1, line: 504, type: !51)
!1384 = !DILocation(line: 504, column: 7, scope: !1371)
!1385 = !DILocation(line: 504, column: 16, scope: !1371)
!1386 = !DILocalVariable(name: "c", scope: !1371, file: !1, line: 505, type: !49)
!1387 = !DILocation(line: 505, column: 10, scope: !1371)
!1388 = !DILocation(line: 505, column: 18, scope: !1371)
!1389 = !DILocation(line: 505, column: 14, scope: !1371)
!1390 = !DILocalVariable(name: "s", scope: !1371, file: !1, line: 506, type: !49)
!1391 = !DILocation(line: 506, column: 10, scope: !1371)
!1392 = !DILocation(line: 506, column: 18, scope: !1371)
!1393 = !DILocation(line: 506, column: 14, scope: !1371)
!1394 = !DILocation(line: 507, column: 12, scope: !1371)
!1395 = !DILocation(line: 507, column: 20, scope: !1371)
!1396 = !DILocation(line: 507, column: 16, scope: !1371)
!1397 = !DILocation(line: 507, column: 14, scope: !1371)
!1398 = !DILocation(line: 507, column: 3, scope: !1371)
!1399 = !DILocation(line: 507, column: 6, scope: !1371)
!1400 = !DILocation(line: 507, column: 10, scope: !1371)
!1401 = !DILocation(line: 508, column: 12, scope: !1371)
!1402 = !DILocation(line: 508, column: 20, scope: !1371)
!1403 = !DILocation(line: 508, column: 16, scope: !1371)
!1404 = !DILocation(line: 508, column: 14, scope: !1371)
!1405 = !DILocation(line: 508, column: 3, scope: !1371)
!1406 = !DILocation(line: 508, column: 6, scope: !1371)
!1407 = !DILocation(line: 508, column: 10, scope: !1371)
!1408 = !DILocation(line: 509, column: 13, scope: !1371)
!1409 = !DILocation(line: 509, column: 22, scope: !1371)
!1410 = !DILocation(line: 509, column: 24, scope: !1371)
!1411 = !DILocation(line: 509, column: 44, scope: !1371)
!1412 = !DILocation(line: 509, column: 42, scope: !1371)
!1413 = !DILocation(line: 509, column: 17, scope: !1371)
!1414 = !DILocation(line: 509, column: 15, scope: !1371)
!1415 = !DILocation(line: 509, column: 3, scope: !1371)
!1416 = !DILocation(line: 509, column: 6, scope: !1371)
!1417 = !DILocation(line: 509, column: 11, scope: !1371)
!1418 = !DILocation(line: 510, column: 42, scope: !1371)
!1419 = !DILocation(line: 510, column: 45, scope: !1371)
!1420 = !DILocation(line: 510, column: 37, scope: !1371)
!1421 = !DILocation(line: 510, column: 35, scope: !1371)
!1422 = !DILocation(line: 510, column: 3, scope: !1371)
!1423 = !DILocation(line: 510, column: 6, scope: !1371)
!1424 = !DILocation(line: 510, column: 10, scope: !1371)
!1425 = !DILocation(line: 511, column: 13, scope: !1371)
!1426 = !DILocation(line: 511, column: 22, scope: !1371)
!1427 = !DILocation(line: 511, column: 24, scope: !1371)
!1428 = !DILocation(line: 511, column: 44, scope: !1371)
!1429 = !DILocation(line: 511, column: 42, scope: !1371)
!1430 = !DILocation(line: 511, column: 17, scope: !1371)
!1431 = !DILocation(line: 511, column: 15, scope: !1371)
!1432 = !DILocation(line: 511, column: 3, scope: !1371)
!1433 = !DILocation(line: 511, column: 6, scope: !1371)
!1434 = !DILocation(line: 511, column: 11, scope: !1371)
!1435 = !DILocation(line: 512, column: 42, scope: !1371)
!1436 = !DILocation(line: 512, column: 45, scope: !1371)
!1437 = !DILocation(line: 512, column: 37, scope: !1371)
!1438 = !DILocation(line: 512, column: 35, scope: !1371)
!1439 = !DILocation(line: 512, column: 3, scope: !1371)
!1440 = !DILocation(line: 512, column: 6, scope: !1371)
!1441 = !DILocation(line: 512, column: 10, scope: !1371)
!1442 = !DILocation(line: 513, column: 10, scope: !1371)
!1443 = !DILocation(line: 513, column: 3, scope: !1371)
!1444 = distinct !DISubprogram(name: "gsl_sf_rect_to_polar", scope: !1, file: !1, line: 518, type: !736, isLocal: false, isDefinition: true, scopeLine: 520, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !83)
!1445 = !DILocalVariable(name: "x", arg: 1, scope: !1444, file: !1, line: 518, type: !91)
!1446 = !DILocation(line: 518, column: 35, scope: !1444)
!1447 = !DILocalVariable(name: "y", arg: 2, scope: !1444, file: !1, line: 518, type: !91)
!1448 = !DILocation(line: 518, column: 51, scope: !1444)
!1449 = !DILocalVariable(name: "r", arg: 3, scope: !1444, file: !1, line: 519, type: !76)
!1450 = !DILocation(line: 519, column: 43, scope: !1444)
!1451 = !DILocalVariable(name: "theta", arg: 4, scope: !1444, file: !1, line: 519, type: !76)
!1452 = !DILocation(line: 519, column: 62, scope: !1444)
!1453 = !DILocalVariable(name: "stat_h", scope: !1444, file: !1, line: 521, type: !51)
!1454 = !DILocation(line: 521, column: 7, scope: !1444)
!1455 = !DILocation(line: 521, column: 31, scope: !1444)
!1456 = !DILocation(line: 521, column: 34, scope: !1444)
!1457 = !DILocation(line: 521, column: 37, scope: !1444)
!1458 = !DILocation(line: 521, column: 16, scope: !1444)
!1459 = !DILocation(line: 522, column: 6, scope: !1460)
!1460 = distinct !DILexicalBlock(scope: !1444, file: !1, line: 522, column: 6)
!1461 = !DILocation(line: 522, column: 9, scope: !1460)
!1462 = !DILocation(line: 522, column: 13, scope: !1460)
!1463 = !DILocation(line: 522, column: 6, scope: !1444)
!1464 = !DILocation(line: 523, column: 24, scope: !1465)
!1465 = distinct !DILexicalBlock(scope: !1460, file: !1, line: 522, column: 20)
!1466 = !DILocation(line: 523, column: 27, scope: !1465)
!1467 = !DILocation(line: 523, column: 18, scope: !1465)
!1468 = !DILocation(line: 523, column: 5, scope: !1465)
!1469 = !DILocation(line: 523, column: 12, scope: !1465)
!1470 = !DILocation(line: 523, column: 16, scope: !1465)
!1471 = !DILocation(line: 524, column: 47, scope: !1465)
!1472 = !DILocation(line: 524, column: 54, scope: !1465)
!1473 = !DILocation(line: 524, column: 42, scope: !1465)
!1474 = !DILocation(line: 524, column: 40, scope: !1465)
!1475 = !DILocation(line: 524, column: 5, scope: !1465)
!1476 = !DILocation(line: 524, column: 12, scope: !1465)
!1477 = !DILocation(line: 524, column: 16, scope: !1465)
!1478 = !DILocation(line: 525, column: 12, scope: !1465)
!1479 = !DILocation(line: 525, column: 5, scope: !1465)
!1480 = !DILocation(line: 528, column: 5, scope: !1481)
!1481 = distinct !DILexicalBlock(scope: !1460, file: !1, line: 527, column: 8)
!1482 = distinct !{!1482, !1480}
!1483 = !DILocation(line: 528, column: 5, scope: !1484)
!1484 = !DILexicalBlockFile(scope: !1485, file: !1, discriminator: 1)
!1485 = distinct !DILexicalBlock(scope: !1481, file: !1, line: 528, column: 5)
!1486 = distinct !{!1486, !1487}
!1487 = !DILocation(line: 528, column: 5, scope: !1485)
!1488 = !DILocation(line: 528, column: 5, scope: !1489)
!1489 = !DILexicalBlockFile(scope: !1490, file: !1, discriminator: 2)
!1490 = distinct !DILexicalBlock(scope: !1485, file: !1, line: 528, column: 5)
!1491 = !DILocation(line: 528, column: 5, scope: !1492)
!1492 = !DILexicalBlockFile(scope: !1485, file: !1, discriminator: 3)
!1493 = !DILocation(line: 530, column: 1, scope: !1444)
!1494 = distinct !DISubprogram(name: "gsl_sf_angle_restrict_symm_err_e", scope: !1, file: !1, line: 533, type: !1219, isLocal: false, isDefinition: true, scopeLine: 534, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !83)
!1495 = !DILocalVariable(name: "theta", arg: 1, scope: !1494, file: !1, line: 533, type: !91)
!1496 = !DILocation(line: 533, column: 51, scope: !1494)
!1497 = !DILocalVariable(name: "result", arg: 2, scope: !1494, file: !1, line: 533, type: !76)
!1498 = !DILocation(line: 533, column: 74, scope: !1494)
!1499 = !DILocalVariable(name: "P1", scope: !1494, file: !1, line: 536, type: !91)
!1500 = !DILocation(line: 536, column: 16, scope: !1494)
!1501 = !DILocalVariable(name: "P2", scope: !1494, file: !1, line: 537, type: !91)
!1502 = !DILocation(line: 537, column: 16, scope: !1494)
!1503 = !DILocalVariable(name: "P3", scope: !1494, file: !1, line: 538, type: !91)
!1504 = !DILocation(line: 538, column: 16, scope: !1494)
!1505 = !DILocalVariable(name: "TwoPi", scope: !1494, file: !1, line: 539, type: !91)
!1506 = !DILocation(line: 539, column: 16, scope: !1494)
!1507 = !DILocalVariable(name: "y", scope: !1494, file: !1, line: 541, type: !91)
!1508 = !DILocation(line: 541, column: 16, scope: !1494)
!1509 = !DILocation(line: 541, column: 20, scope: !1494)
!1510 = !DILocation(line: 541, column: 36, scope: !1494)
!1511 = !DILocation(line: 541, column: 53, scope: !1494)
!1512 = !DILocation(line: 541, column: 48, scope: !1494)
!1513 = !DILocation(line: 541, column: 59, scope: !1494)
!1514 = !DILocation(line: 541, column: 42, scope: !1515)
!1515 = !DILexicalBlockFile(scope: !1494, file: !1, discriminator: 1)
!1516 = !DILocation(line: 541, column: 40, scope: !1494)
!1517 = !DILocalVariable(name: "r", scope: !1494, file: !1, line: 542, type: !49)
!1518 = !DILocation(line: 542, column: 10, scope: !1494)
!1519 = !DILocation(line: 542, column: 16, scope: !1494)
!1520 = !DILocation(line: 542, column: 24, scope: !1494)
!1521 = !DILocation(line: 542, column: 25, scope: !1494)
!1522 = !DILocation(line: 542, column: 22, scope: !1494)
!1523 = !DILocation(line: 542, column: 32, scope: !1494)
!1524 = !DILocation(line: 542, column: 33, scope: !1494)
!1525 = !DILocation(line: 542, column: 30, scope: !1494)
!1526 = !DILocation(line: 542, column: 40, scope: !1494)
!1527 = !DILocation(line: 542, column: 41, scope: !1494)
!1528 = !DILocation(line: 542, column: 38, scope: !1494)
!1529 = !DILocation(line: 544, column: 6, scope: !1530)
!1530 = distinct !DILexicalBlock(scope: !1494, file: !1, line: 544, column: 6)
!1531 = !DILocation(line: 544, column: 8, scope: !1530)
!1532 = !DILocation(line: 544, column: 6, scope: !1494)
!1533 = !DILocation(line: 544, column: 26, scope: !1534)
!1534 = !DILexicalBlockFile(scope: !1535, file: !1, discriminator: 1)
!1535 = distinct !DILexicalBlock(scope: !1530, file: !1, line: 544, column: 17)
!1536 = !DILocation(line: 544, column: 27, scope: !1534)
!1537 = !DILocation(line: 544, column: 33, scope: !1534)
!1538 = !DILocation(line: 544, column: 39, scope: !1534)
!1539 = !DILocation(line: 544, column: 21, scope: !1534)
!1540 = !DILocation(line: 544, column: 47, scope: !1534)
!1541 = !DILocation(line: 545, column: 12, scope: !1542)
!1542 = distinct !DILexicalBlock(scope: !1530, file: !1, line: 545, column: 12)
!1543 = !DILocation(line: 545, column: 14, scope: !1542)
!1544 = !DILocation(line: 545, column: 12, scope: !1530)
!1545 = !DILocation(line: 545, column: 30, scope: !1546)
!1546 = !DILexicalBlockFile(scope: !1542, file: !1, discriminator: 1)
!1547 = !DILocation(line: 545, column: 31, scope: !1546)
!1548 = !DILocation(line: 545, column: 37, scope: !1546)
!1549 = !DILocation(line: 545, column: 43, scope: !1546)
!1550 = !DILocation(line: 545, column: 25, scope: !1546)
!1551 = !DILocation(line: 545, column: 23, scope: !1546)
!1552 = !DILocation(line: 547, column: 17, scope: !1494)
!1553 = !DILocation(line: 547, column: 3, scope: !1494)
!1554 = !DILocation(line: 547, column: 11, scope: !1494)
!1555 = !DILocation(line: 547, column: 15, scope: !1494)
!1556 = !DILocation(line: 549, column: 11, scope: !1557)
!1557 = distinct !DILexicalBlock(scope: !1494, file: !1, line: 549, column: 6)
!1558 = !DILocation(line: 549, column: 6, scope: !1557)
!1559 = !DILocation(line: 549, column: 18, scope: !1557)
!1560 = !DILocation(line: 549, column: 6, scope: !1494)
!1561 = !DILocation(line: 550, column: 5, scope: !1562)
!1562 = distinct !DILexicalBlock(scope: !1557, file: !1, line: 549, column: 44)
!1563 = !DILocation(line: 550, column: 13, scope: !1562)
!1564 = !DILocation(line: 550, column: 17, scope: !1562)
!1565 = !DILocation(line: 551, column: 5, scope: !1562)
!1566 = !DILocation(line: 551, column: 13, scope: !1562)
!1567 = !DILocation(line: 551, column: 17, scope: !1562)
!1568 = !DILocation(line: 552, column: 5, scope: !1562)
!1569 = distinct !{!1569, !1568}
!1570 = !DILocation(line: 552, column: 5, scope: !1571)
!1571 = !DILexicalBlockFile(scope: !1572, file: !1, discriminator: 1)
!1572 = distinct !DILexicalBlock(scope: !1562, file: !1, line: 552, column: 5)
!1573 = !DILocation(line: 553, column: 3, scope: !1562)
!1574 = !DILocation(line: 554, column: 16, scope: !1575)
!1575 = distinct !DILexicalBlock(scope: !1557, file: !1, line: 554, column: 11)
!1576 = !DILocation(line: 554, column: 11, scope: !1575)
!1577 = !DILocation(line: 554, column: 23, scope: !1575)
!1578 = !DILocation(line: 554, column: 11, scope: !1557)
!1579 = !DILocation(line: 555, column: 48, scope: !1580)
!1580 = distinct !DILexicalBlock(scope: !1575, file: !1, line: 554, column: 54)
!1581 = !DILocation(line: 555, column: 56, scope: !1580)
!1582 = !DILocation(line: 555, column: 62, scope: !1580)
!1583 = !DILocation(line: 555, column: 60, scope: !1580)
!1584 = !DILocation(line: 555, column: 43, scope: !1580)
!1585 = !DILocation(line: 555, column: 41, scope: !1580)
!1586 = !DILocation(line: 555, column: 5, scope: !1580)
!1587 = !DILocation(line: 555, column: 13, scope: !1580)
!1588 = !DILocation(line: 555, column: 17, scope: !1580)
!1589 = !DILocation(line: 556, column: 5, scope: !1580)
!1590 = !DILocalVariable(name: "delta", scope: !1591, file: !1, line: 559, type: !49)
!1591 = distinct !DILexicalBlock(scope: !1575, file: !1, line: 558, column: 8)
!1592 = !DILocation(line: 559, column: 12, scope: !1591)
!1593 = !DILocation(line: 559, column: 25, scope: !1591)
!1594 = !DILocation(line: 559, column: 33, scope: !1591)
!1595 = !DILocation(line: 559, column: 39, scope: !1591)
!1596 = !DILocation(line: 559, column: 37, scope: !1591)
!1597 = !DILocation(line: 559, column: 20, scope: !1591)
!1598 = !DILocation(line: 560, column: 45, scope: !1591)
!1599 = !DILocation(line: 560, column: 51, scope: !1591)
!1600 = !DILocation(line: 560, column: 44, scope: !1591)
!1601 = !DILocation(line: 560, column: 61, scope: !1602)
!1602 = !DILexicalBlockFile(scope: !1591, file: !1, discriminator: 1)
!1603 = !DILocation(line: 560, column: 44, scope: !1602)
!1604 = !DILocation(line: 560, column: 44, scope: !1605)
!1605 = !DILexicalBlockFile(scope: !1591, file: !1, discriminator: 2)
!1606 = !DILocation(line: 560, column: 44, scope: !1607)
!1607 = !DILexicalBlockFile(scope: !1591, file: !1, discriminator: 3)
!1608 = !DILocation(line: 560, column: 41, scope: !1607)
!1609 = !DILocation(line: 560, column: 5, scope: !1607)
!1610 = !DILocation(line: 560, column: 13, scope: !1607)
!1611 = !DILocation(line: 560, column: 17, scope: !1607)
!1612 = !DILocation(line: 561, column: 5, scope: !1591)
!1613 = !DILocation(line: 563, column: 1, scope: !1494)
!1614 = distinct !DISubprogram(name: "gsl_sf_angle_restrict_pos_err_e", scope: !1, file: !1, line: 566, type: !1219, isLocal: false, isDefinition: true, scopeLine: 567, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !83)
!1615 = !DILocalVariable(name: "theta", arg: 1, scope: !1614, file: !1, line: 566, type: !91)
!1616 = !DILocation(line: 566, column: 50, scope: !1614)
!1617 = !DILocalVariable(name: "result", arg: 2, scope: !1614, file: !1, line: 566, type: !76)
!1618 = !DILocation(line: 566, column: 73, scope: !1614)
!1619 = !DILocalVariable(name: "P1", scope: !1614, file: !1, line: 569, type: !91)
!1620 = !DILocation(line: 569, column: 16, scope: !1614)
!1621 = !DILocalVariable(name: "P2", scope: !1614, file: !1, line: 570, type: !91)
!1622 = !DILocation(line: 570, column: 16, scope: !1614)
!1623 = !DILocalVariable(name: "P3", scope: !1614, file: !1, line: 571, type: !91)
!1624 = !DILocation(line: 571, column: 16, scope: !1614)
!1625 = !DILocalVariable(name: "TwoPi", scope: !1614, file: !1, line: 572, type: !91)
!1626 = !DILocation(line: 572, column: 16, scope: !1614)
!1627 = !DILocalVariable(name: "y", scope: !1614, file: !1, line: 574, type: !91)
!1628 = !DILocation(line: 574, column: 16, scope: !1614)
!1629 = !DILocation(line: 574, column: 28, scope: !1614)
!1630 = !DILocation(line: 574, column: 33, scope: !1614)
!1631 = !DILocation(line: 574, column: 22, scope: !1614)
!1632 = !DILocation(line: 574, column: 21, scope: !1614)
!1633 = !DILocalVariable(name: "r", scope: !1614, file: !1, line: 576, type: !49)
!1634 = !DILocation(line: 576, column: 10, scope: !1614)
!1635 = !DILocation(line: 576, column: 16, scope: !1614)
!1636 = !DILocation(line: 576, column: 24, scope: !1614)
!1637 = !DILocation(line: 576, column: 25, scope: !1614)
!1638 = !DILocation(line: 576, column: 22, scope: !1614)
!1639 = !DILocation(line: 576, column: 32, scope: !1614)
!1640 = !DILocation(line: 576, column: 33, scope: !1614)
!1641 = !DILocation(line: 576, column: 30, scope: !1614)
!1642 = !DILocation(line: 576, column: 40, scope: !1614)
!1643 = !DILocation(line: 576, column: 41, scope: !1614)
!1644 = !DILocation(line: 576, column: 38, scope: !1614)
!1645 = !DILocation(line: 578, column: 6, scope: !1646)
!1646 = distinct !DILexicalBlock(scope: !1614, file: !1, line: 578, column: 6)
!1647 = !DILocation(line: 578, column: 8, scope: !1646)
!1648 = !DILocation(line: 578, column: 6, scope: !1614)
!1649 = !DILocation(line: 578, column: 25, scope: !1650)
!1650 = !DILexicalBlockFile(scope: !1651, file: !1, discriminator: 1)
!1651 = distinct !DILexicalBlock(scope: !1646, file: !1, line: 578, column: 17)
!1652 = !DILocation(line: 578, column: 26, scope: !1650)
!1653 = !DILocation(line: 578, column: 32, scope: !1650)
!1654 = !DILocation(line: 578, column: 38, scope: !1650)
!1655 = !DILocation(line: 578, column: 20, scope: !1650)
!1656 = !DILocation(line: 578, column: 46, scope: !1650)
!1657 = !DILocation(line: 579, column: 12, scope: !1658)
!1658 = distinct !DILexicalBlock(scope: !1646, file: !1, line: 579, column: 12)
!1659 = !DILocation(line: 579, column: 14, scope: !1658)
!1660 = !DILocation(line: 579, column: 12, scope: !1646)
!1661 = !DILocation(line: 580, column: 12, scope: !1662)
!1662 = distinct !DILexicalBlock(scope: !1658, file: !1, line: 579, column: 19)
!1663 = !DILocation(line: 580, column: 13, scope: !1662)
!1664 = !DILocation(line: 580, column: 19, scope: !1662)
!1665 = !DILocation(line: 580, column: 25, scope: !1662)
!1666 = !DILocation(line: 580, column: 7, scope: !1662)
!1667 = !DILocation(line: 581, column: 3, scope: !1662)
!1668 = !DILocation(line: 583, column: 17, scope: !1614)
!1669 = !DILocation(line: 583, column: 3, scope: !1614)
!1670 = !DILocation(line: 583, column: 11, scope: !1614)
!1671 = !DILocation(line: 583, column: 15, scope: !1614)
!1672 = !DILocation(line: 585, column: 11, scope: !1673)
!1673 = distinct !DILexicalBlock(scope: !1614, file: !1, line: 585, column: 6)
!1674 = !DILocation(line: 585, column: 6, scope: !1673)
!1675 = !DILocation(line: 585, column: 18, scope: !1673)
!1676 = !DILocation(line: 585, column: 6, scope: !1614)
!1677 = !DILocation(line: 586, column: 5, scope: !1678)
!1678 = distinct !DILexicalBlock(scope: !1673, file: !1, line: 585, column: 44)
!1679 = !DILocation(line: 586, column: 13, scope: !1678)
!1680 = !DILocation(line: 586, column: 17, scope: !1678)
!1681 = !DILocation(line: 587, column: 24, scope: !1678)
!1682 = !DILocation(line: 587, column: 32, scope: !1678)
!1683 = !DILocation(line: 587, column: 19, scope: !1678)
!1684 = !DILocation(line: 587, column: 5, scope: !1678)
!1685 = !DILocation(line: 587, column: 13, scope: !1678)
!1686 = !DILocation(line: 587, column: 17, scope: !1678)
!1687 = !DILocation(line: 588, column: 5, scope: !1678)
!1688 = distinct !{!1688, !1687}
!1689 = !DILocation(line: 588, column: 5, scope: !1690)
!1690 = !DILexicalBlockFile(scope: !1691, file: !1, discriminator: 1)
!1691 = distinct !DILexicalBlock(scope: !1678, file: !1, line: 588, column: 5)
!1692 = !DILocation(line: 589, column: 3, scope: !1678)
!1693 = !DILocation(line: 590, column: 16, scope: !1694)
!1694 = distinct !DILexicalBlock(scope: !1673, file: !1, line: 590, column: 11)
!1695 = !DILocation(line: 590, column: 11, scope: !1694)
!1696 = !DILocation(line: 590, column: 23, scope: !1694)
!1697 = !DILocation(line: 590, column: 11, scope: !1673)
!1698 = !DILocation(line: 591, column: 42, scope: !1699)
!1699 = distinct !DILexicalBlock(scope: !1694, file: !1, line: 590, column: 54)
!1700 = !DILocation(line: 591, column: 50, scope: !1699)
!1701 = !DILocation(line: 591, column: 56, scope: !1699)
!1702 = !DILocation(line: 591, column: 54, scope: !1699)
!1703 = !DILocation(line: 591, column: 37, scope: !1699)
!1704 = !DILocation(line: 591, column: 35, scope: !1699)
!1705 = !DILocation(line: 591, column: 5, scope: !1699)
!1706 = !DILocation(line: 591, column: 13, scope: !1699)
!1707 = !DILocation(line: 591, column: 17, scope: !1699)
!1708 = !DILocation(line: 592, column: 5, scope: !1699)
!1709 = !DILocalVariable(name: "delta", scope: !1710, file: !1, line: 595, type: !49)
!1710 = distinct !DILexicalBlock(scope: !1694, file: !1, line: 594, column: 8)
!1711 = !DILocation(line: 595, column: 12, scope: !1710)
!1712 = !DILocation(line: 595, column: 25, scope: !1710)
!1713 = !DILocation(line: 595, column: 33, scope: !1710)
!1714 = !DILocation(line: 595, column: 39, scope: !1710)
!1715 = !DILocation(line: 595, column: 37, scope: !1710)
!1716 = !DILocation(line: 595, column: 20, scope: !1710)
!1717 = !DILocation(line: 596, column: 45, scope: !1710)
!1718 = !DILocation(line: 596, column: 51, scope: !1710)
!1719 = !DILocation(line: 596, column: 44, scope: !1710)
!1720 = !DILocation(line: 596, column: 61, scope: !1721)
!1721 = !DILexicalBlockFile(scope: !1710, file: !1, discriminator: 1)
!1722 = !DILocation(line: 596, column: 44, scope: !1721)
!1723 = !DILocation(line: 596, column: 44, scope: !1724)
!1724 = !DILexicalBlockFile(scope: !1710, file: !1, discriminator: 2)
!1725 = !DILocation(line: 596, column: 44, scope: !1726)
!1726 = !DILexicalBlockFile(scope: !1710, file: !1, discriminator: 3)
!1727 = !DILocation(line: 596, column: 41, scope: !1726)
!1728 = !DILocation(line: 596, column: 5, scope: !1726)
!1729 = !DILocation(line: 596, column: 13, scope: !1726)
!1730 = !DILocation(line: 596, column: 17, scope: !1726)
!1731 = !DILocation(line: 597, column: 5, scope: !1710)
!1732 = !DILocation(line: 599, column: 1, scope: !1614)
!1733 = distinct !DISubprogram(name: "gsl_sf_angle_restrict_pos_e", scope: !1, file: !1, line: 611, type: !1202, isLocal: false, isDefinition: true, scopeLine: 612, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !83)
!1734 = !DILocalVariable(name: "theta", arg: 1, scope: !1733, file: !1, line: 611, type: !48)
!1735 = !DILocation(line: 611, column: 42, scope: !1733)
!1736 = !DILocalVariable(name: "r", scope: !1733, file: !1, line: 613, type: !77)
!1737 = !DILocation(line: 613, column: 17, scope: !1733)
!1738 = !DILocalVariable(name: "stat", scope: !1733, file: !1, line: 614, type: !51)
!1739 = !DILocation(line: 614, column: 7, scope: !1733)
!1740 = !DILocation(line: 614, column: 47, scope: !1733)
!1741 = !DILocation(line: 614, column: 46, scope: !1733)
!1742 = !DILocation(line: 614, column: 14, scope: !1733)
!1743 = !DILocation(line: 615, column: 14, scope: !1733)
!1744 = !DILocation(line: 615, column: 4, scope: !1733)
!1745 = !DILocation(line: 615, column: 10, scope: !1733)
!1746 = !DILocation(line: 616, column: 10, scope: !1733)
!1747 = !DILocation(line: 616, column: 3, scope: !1733)
!1748 = distinct !DISubprogram(name: "gsl_sf_sin_err_e", scope: !1, file: !1, line: 620, type: !645, isLocal: false, isDefinition: true, scopeLine: 621, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !83)
!1749 = !DILocalVariable(name: "x", arg: 1, scope: !1748, file: !1, line: 620, type: !91)
!1750 = !DILocation(line: 620, column: 35, scope: !1748)
!1751 = !DILocalVariable(name: "dx", arg: 2, scope: !1748, file: !1, line: 620, type: !91)
!1752 = !DILocation(line: 620, column: 51, scope: !1748)
!1753 = !DILocalVariable(name: "result", arg: 3, scope: !1748, file: !1, line: 620, type: !76)
!1754 = !DILocation(line: 620, column: 71, scope: !1748)
!1755 = !DILocalVariable(name: "stat_s", scope: !1748, file: !1, line: 622, type: !51)
!1756 = !DILocation(line: 622, column: 7, scope: !1748)
!1757 = !DILocation(line: 622, column: 29, scope: !1748)
!1758 = !DILocation(line: 622, column: 32, scope: !1748)
!1759 = !DILocation(line: 622, column: 16, scope: !1748)
!1760 = !DILocation(line: 623, column: 27, scope: !1748)
!1761 = !DILocation(line: 623, column: 23, scope: !1748)
!1762 = !DILocation(line: 623, column: 32, scope: !1748)
!1763 = !DILocation(line: 623, column: 30, scope: !1748)
!1764 = !DILocation(line: 623, column: 18, scope: !1765)
!1765 = !DILexicalBlockFile(scope: !1748, file: !1, discriminator: 1)
!1766 = !DILocation(line: 623, column: 3, scope: !1748)
!1767 = !DILocation(line: 623, column: 11, scope: !1748)
!1768 = !DILocation(line: 623, column: 15, scope: !1748)
!1769 = !DILocation(line: 624, column: 41, scope: !1748)
!1770 = !DILocation(line: 624, column: 49, scope: !1748)
!1771 = !DILocation(line: 624, column: 36, scope: !1748)
!1772 = !DILocation(line: 624, column: 34, scope: !1748)
!1773 = !DILocation(line: 624, column: 3, scope: !1748)
!1774 = !DILocation(line: 624, column: 11, scope: !1748)
!1775 = !DILocation(line: 624, column: 15, scope: !1748)
!1776 = !DILocation(line: 625, column: 10, scope: !1748)
!1777 = !DILocation(line: 625, column: 3, scope: !1748)
!1778 = distinct !DISubprogram(name: "gsl_sf_cos_err_e", scope: !1, file: !1, line: 629, type: !645, isLocal: false, isDefinition: true, scopeLine: 630, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !83)
!1779 = !DILocalVariable(name: "x", arg: 1, scope: !1778, file: !1, line: 629, type: !91)
!1780 = !DILocation(line: 629, column: 35, scope: !1778)
!1781 = !DILocalVariable(name: "dx", arg: 2, scope: !1778, file: !1, line: 629, type: !91)
!1782 = !DILocation(line: 629, column: 51, scope: !1778)
!1783 = !DILocalVariable(name: "result", arg: 3, scope: !1778, file: !1, line: 629, type: !76)
!1784 = !DILocation(line: 629, column: 71, scope: !1778)
!1785 = !DILocalVariable(name: "stat_c", scope: !1778, file: !1, line: 631, type: !51)
!1786 = !DILocation(line: 631, column: 7, scope: !1778)
!1787 = !DILocation(line: 631, column: 29, scope: !1778)
!1788 = !DILocation(line: 631, column: 32, scope: !1778)
!1789 = !DILocation(line: 631, column: 16, scope: !1778)
!1790 = !DILocation(line: 632, column: 27, scope: !1778)
!1791 = !DILocation(line: 632, column: 23, scope: !1778)
!1792 = !DILocation(line: 632, column: 32, scope: !1778)
!1793 = !DILocation(line: 632, column: 30, scope: !1778)
!1794 = !DILocation(line: 632, column: 18, scope: !1795)
!1795 = !DILexicalBlockFile(scope: !1778, file: !1, discriminator: 1)
!1796 = !DILocation(line: 632, column: 3, scope: !1778)
!1797 = !DILocation(line: 632, column: 11, scope: !1778)
!1798 = !DILocation(line: 632, column: 15, scope: !1778)
!1799 = !DILocation(line: 633, column: 41, scope: !1778)
!1800 = !DILocation(line: 633, column: 49, scope: !1778)
!1801 = !DILocation(line: 633, column: 36, scope: !1778)
!1802 = !DILocation(line: 633, column: 34, scope: !1778)
!1803 = !DILocation(line: 633, column: 3, scope: !1778)
!1804 = !DILocation(line: 633, column: 11, scope: !1778)
!1805 = !DILocation(line: 633, column: 15, scope: !1778)
!1806 = !DILocation(line: 634, column: 10, scope: !1778)
!1807 = !DILocation(line: 634, column: 3, scope: !1778)
!1808 = distinct !DISubprogram(name: "gsl_sf_sinc_e", scope: !1, file: !1, line: 682, type: !74, isLocal: false, isDefinition: true, scopeLine: 683, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !83)
!1809 = !DILocalVariable(name: "x", arg: 1, scope: !1808, file: !1, line: 682, type: !49)
!1810 = !DILocation(line: 682, column: 26, scope: !1808)
!1811 = !DILocalVariable(name: "result", arg: 2, scope: !1808, file: !1, line: 682, type: !76)
!1812 = !DILocation(line: 682, column: 45, scope: !1808)
!1813 = !DILocalVariable(name: "ax", scope: !1814, file: !1, line: 687, type: !91)
!1814 = distinct !DILexicalBlock(scope: !1808, file: !1, line: 686, column: 3)
!1815 = !DILocation(line: 687, column: 18, scope: !1814)
!1816 = !DILocation(line: 687, column: 28, scope: !1814)
!1817 = !DILocation(line: 687, column: 23, scope: !1814)
!1818 = !DILocation(line: 689, column: 8, scope: !1819)
!1819 = distinct !DILexicalBlock(scope: !1814, file: !1, line: 689, column: 8)
!1820 = !DILocation(line: 689, column: 11, scope: !1819)
!1821 = !DILocation(line: 689, column: 8, scope: !1814)
!1822 = !DILocation(line: 694, column: 40, scope: !1823)
!1823 = distinct !DILexicalBlock(scope: !1819, file: !1, line: 689, column: 18)
!1824 = !DILocation(line: 694, column: 39, scope: !1823)
!1825 = !DILocation(line: 694, column: 42, scope: !1823)
!1826 = !DILocation(line: 694, column: 48, scope: !1823)
!1827 = !DILocation(line: 694, column: 14, scope: !1823)
!1828 = !DILocation(line: 694, column: 7, scope: !1823)
!1829 = !DILocation(line: 696, column: 13, scope: !1830)
!1830 = distinct !DILexicalBlock(scope: !1819, file: !1, line: 696, column: 13)
!1831 = !DILocation(line: 696, column: 16, scope: !1830)
!1832 = !DILocation(line: 696, column: 13, scope: !1819)
!1833 = !DILocation(line: 701, column: 32, scope: !1834)
!1834 = distinct !DILexicalBlock(scope: !1830, file: !1, line: 696, column: 25)
!1835 = !DILocation(line: 701, column: 30, scope: !1834)
!1836 = !DILocation(line: 701, column: 21, scope: !1834)
!1837 = !DILocation(line: 701, column: 44, scope: !1834)
!1838 = !DILocation(line: 701, column: 42, scope: !1834)
!1839 = !DILocation(line: 701, column: 35, scope: !1834)
!1840 = !DILocation(line: 701, column: 7, scope: !1834)
!1841 = !DILocation(line: 701, column: 15, scope: !1834)
!1842 = !DILocation(line: 701, column: 19, scope: !1834)
!1843 = !DILocation(line: 702, column: 50, scope: !1834)
!1844 = !DILocation(line: 702, column: 58, scope: !1834)
!1845 = !DILocation(line: 702, column: 45, scope: !1834)
!1846 = !DILocation(line: 702, column: 43, scope: !1834)
!1847 = !DILocation(line: 702, column: 7, scope: !1834)
!1848 = !DILocation(line: 702, column: 15, scope: !1834)
!1849 = !DILocation(line: 702, column: 19, scope: !1834)
!1850 = !DILocation(line: 703, column: 7, scope: !1834)
!1851 = !DILocalVariable(name: "r", scope: !1852, file: !1, line: 708, type: !91)
!1852 = distinct !DILexicalBlock(scope: !1830, file: !1, line: 705, column: 10)
!1853 = !DILocation(line: 708, column: 20, scope: !1852)
!1854 = !DILocation(line: 708, column: 29, scope: !1852)
!1855 = !DILocation(line: 708, column: 28, scope: !1852)
!1856 = !DILocalVariable(name: "s", scope: !1852, file: !1, line: 709, type: !77)
!1857 = !DILocation(line: 709, column: 21, scope: !1852)
!1858 = !DILocalVariable(name: "stat_s", scope: !1852, file: !1, line: 710, type: !51)
!1859 = !DILocation(line: 710, column: 11, scope: !1852)
!1860 = !DILocation(line: 710, column: 33, scope: !1852)
!1861 = !DILocation(line: 710, column: 20, scope: !1852)
!1862 = !DILocation(line: 711, column: 23, scope: !1852)
!1863 = !DILocation(line: 711, column: 27, scope: !1852)
!1864 = !DILocation(line: 711, column: 26, scope: !1852)
!1865 = !DILocation(line: 711, column: 7, scope: !1852)
!1866 = !DILocation(line: 711, column: 15, scope: !1852)
!1867 = !DILocation(line: 711, column: 19, scope: !1852)
!1868 = !DILocation(line: 712, column: 23, scope: !1852)
!1869 = !DILocation(line: 712, column: 27, scope: !1852)
!1870 = !DILocation(line: 712, column: 26, scope: !1852)
!1871 = !DILocation(line: 712, column: 60, scope: !1852)
!1872 = !DILocation(line: 712, column: 68, scope: !1852)
!1873 = !DILocation(line: 712, column: 55, scope: !1852)
!1874 = !DILocation(line: 712, column: 53, scope: !1852)
!1875 = !DILocation(line: 712, column: 29, scope: !1852)
!1876 = !DILocation(line: 712, column: 7, scope: !1852)
!1877 = !DILocation(line: 712, column: 15, scope: !1852)
!1878 = !DILocation(line: 712, column: 19, scope: !1852)
!1879 = !DILocation(line: 713, column: 14, scope: !1852)
!1880 = !DILocation(line: 713, column: 7, scope: !1852)
!1881 = !DILocation(line: 716, column: 1, scope: !1808)
!1882 = distinct !DISubprogram(name: "gsl_sf_sin", scope: !1, file: !1, line: 724, type: !1883, isLocal: false, isDefinition: true, scopeLine: 725, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !83)
!1883 = !DISubroutineType(types: !1884)
!1884 = !{!49, !91}
!1885 = !DILocalVariable(name: "x", arg: 1, scope: !1882, file: !1, line: 724, type: !91)
!1886 = !DILocation(line: 724, column: 32, scope: !1882)
!1887 = !DILocalVariable(name: "result", scope: !1882, file: !1, line: 726, type: !77)
!1888 = !DILocation(line: 726, column: 3, scope: !1882)
!1889 = !DILocalVariable(name: "status", scope: !1882, file: !1, line: 726, type: !51)
!1890 = !DILocation(line: 726, column: 3, scope: !1891)
!1891 = distinct !DILexicalBlock(scope: !1882, file: !1, line: 726, column: 3)
!1892 = !DILocation(line: 726, column: 3, scope: !1893)
!1893 = !DILexicalBlockFile(scope: !1894, file: !1, discriminator: 1)
!1894 = distinct !DILexicalBlock(scope: !1891, file: !1, line: 726, column: 3)
!1895 = distinct !{!1895, !1896}
!1896 = !DILocation(line: 726, column: 3, scope: !1894)
!1897 = !DILocation(line: 726, column: 3, scope: !1898)
!1898 = !DILexicalBlockFile(scope: !1899, file: !1, discriminator: 2)
!1899 = distinct !DILexicalBlock(scope: !1894, file: !1, line: 726, column: 3)
!1900 = !DILocation(line: 726, column: 3, scope: !1901)
!1901 = !DILexicalBlockFile(scope: !1894, file: !1, discriminator: 3)
!1902 = !DILocation(line: 726, column: 3, scope: !1903)
!1903 = !DILexicalBlockFile(scope: !1882, file: !1, discriminator: 4)
!1904 = !DILocation(line: 727, column: 1, scope: !1882)
!1905 = distinct !DISubprogram(name: "gsl_sf_cos", scope: !1, file: !1, line: 729, type: !1883, isLocal: false, isDefinition: true, scopeLine: 730, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !83)
!1906 = !DILocalVariable(name: "x", arg: 1, scope: !1905, file: !1, line: 729, type: !91)
!1907 = !DILocation(line: 729, column: 32, scope: !1905)
!1908 = !DILocalVariable(name: "result", scope: !1905, file: !1, line: 731, type: !77)
!1909 = !DILocation(line: 731, column: 3, scope: !1905)
!1910 = !DILocalVariable(name: "status", scope: !1905, file: !1, line: 731, type: !51)
!1911 = !DILocation(line: 731, column: 3, scope: !1912)
!1912 = distinct !DILexicalBlock(scope: !1905, file: !1, line: 731, column: 3)
!1913 = !DILocation(line: 731, column: 3, scope: !1914)
!1914 = !DILexicalBlockFile(scope: !1915, file: !1, discriminator: 1)
!1915 = distinct !DILexicalBlock(scope: !1912, file: !1, line: 731, column: 3)
!1916 = distinct !{!1916, !1917}
!1917 = !DILocation(line: 731, column: 3, scope: !1915)
!1918 = !DILocation(line: 731, column: 3, scope: !1919)
!1919 = !DILexicalBlockFile(scope: !1920, file: !1, discriminator: 2)
!1920 = distinct !DILexicalBlock(scope: !1915, file: !1, line: 731, column: 3)
!1921 = !DILocation(line: 731, column: 3, scope: !1922)
!1922 = !DILexicalBlockFile(scope: !1915, file: !1, discriminator: 3)
!1923 = !DILocation(line: 731, column: 3, scope: !1924)
!1924 = !DILexicalBlockFile(scope: !1905, file: !1, discriminator: 4)
!1925 = !DILocation(line: 732, column: 1, scope: !1905)
!1926 = distinct !DISubprogram(name: "gsl_sf_hypot", scope: !1, file: !1, line: 734, type: !1927, isLocal: false, isDefinition: true, scopeLine: 735, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !83)
!1927 = !DISubroutineType(types: !1928)
!1928 = !{!49, !91, !91}
!1929 = !DILocalVariable(name: "x", arg: 1, scope: !1926, file: !1, line: 734, type: !91)
!1930 = !DILocation(line: 734, column: 34, scope: !1926)
!1931 = !DILocalVariable(name: "y", arg: 2, scope: !1926, file: !1, line: 734, type: !91)
!1932 = !DILocation(line: 734, column: 50, scope: !1926)
!1933 = !DILocalVariable(name: "result", scope: !1926, file: !1, line: 736, type: !77)
!1934 = !DILocation(line: 736, column: 3, scope: !1926)
!1935 = !DILocalVariable(name: "status", scope: !1926, file: !1, line: 736, type: !51)
!1936 = !DILocation(line: 736, column: 3, scope: !1937)
!1937 = distinct !DILexicalBlock(scope: !1926, file: !1, line: 736, column: 3)
!1938 = !DILocation(line: 736, column: 3, scope: !1939)
!1939 = !DILexicalBlockFile(scope: !1940, file: !1, discriminator: 1)
!1940 = distinct !DILexicalBlock(scope: !1937, file: !1, line: 736, column: 3)
!1941 = distinct !{!1941, !1942}
!1942 = !DILocation(line: 736, column: 3, scope: !1940)
!1943 = !DILocation(line: 736, column: 3, scope: !1944)
!1944 = !DILexicalBlockFile(scope: !1945, file: !1, discriminator: 2)
!1945 = distinct !DILexicalBlock(scope: !1940, file: !1, line: 736, column: 3)
!1946 = !DILocation(line: 736, column: 3, scope: !1947)
!1947 = !DILexicalBlockFile(scope: !1940, file: !1, discriminator: 3)
!1948 = !DILocation(line: 736, column: 3, scope: !1949)
!1949 = !DILexicalBlockFile(scope: !1926, file: !1, discriminator: 4)
!1950 = !DILocation(line: 737, column: 1, scope: !1926)
!1951 = distinct !DISubprogram(name: "gsl_sf_lnsinh", scope: !1, file: !1, line: 739, type: !1883, isLocal: false, isDefinition: true, scopeLine: 740, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !83)
!1952 = !DILocalVariable(name: "x", arg: 1, scope: !1951, file: !1, line: 739, type: !91)
!1953 = !DILocation(line: 739, column: 35, scope: !1951)
!1954 = !DILocalVariable(name: "result", scope: !1951, file: !1, line: 741, type: !77)
!1955 = !DILocation(line: 741, column: 3, scope: !1951)
!1956 = !DILocalVariable(name: "status", scope: !1951, file: !1, line: 741, type: !51)
!1957 = !DILocation(line: 741, column: 3, scope: !1958)
!1958 = distinct !DILexicalBlock(scope: !1951, file: !1, line: 741, column: 3)
!1959 = !DILocation(line: 741, column: 3, scope: !1960)
!1960 = !DILexicalBlockFile(scope: !1961, file: !1, discriminator: 1)
!1961 = distinct !DILexicalBlock(scope: !1958, file: !1, line: 741, column: 3)
!1962 = distinct !{!1962, !1963}
!1963 = !DILocation(line: 741, column: 3, scope: !1961)
!1964 = !DILocation(line: 741, column: 3, scope: !1965)
!1965 = !DILexicalBlockFile(scope: !1966, file: !1, discriminator: 2)
!1966 = distinct !DILexicalBlock(scope: !1961, file: !1, line: 741, column: 3)
!1967 = !DILocation(line: 741, column: 3, scope: !1968)
!1968 = !DILexicalBlockFile(scope: !1961, file: !1, discriminator: 3)
!1969 = !DILocation(line: 741, column: 3, scope: !1970)
!1970 = !DILexicalBlockFile(scope: !1951, file: !1, discriminator: 4)
!1971 = !DILocation(line: 742, column: 1, scope: !1951)
!1972 = distinct !DISubprogram(name: "gsl_sf_lncosh", scope: !1, file: !1, line: 744, type: !1883, isLocal: false, isDefinition: true, scopeLine: 745, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !83)
!1973 = !DILocalVariable(name: "x", arg: 1, scope: !1972, file: !1, line: 744, type: !91)
!1974 = !DILocation(line: 744, column: 35, scope: !1972)
!1975 = !DILocalVariable(name: "result", scope: !1972, file: !1, line: 746, type: !77)
!1976 = !DILocation(line: 746, column: 3, scope: !1972)
!1977 = !DILocalVariable(name: "status", scope: !1972, file: !1, line: 746, type: !51)
!1978 = !DILocation(line: 746, column: 3, scope: !1979)
!1979 = distinct !DILexicalBlock(scope: !1972, file: !1, line: 746, column: 3)
!1980 = !DILocation(line: 746, column: 3, scope: !1981)
!1981 = !DILexicalBlockFile(scope: !1982, file: !1, discriminator: 1)
!1982 = distinct !DILexicalBlock(scope: !1979, file: !1, line: 746, column: 3)
!1983 = distinct !{!1983, !1984}
!1984 = !DILocation(line: 746, column: 3, scope: !1982)
!1985 = !DILocation(line: 746, column: 3, scope: !1986)
!1986 = !DILexicalBlockFile(scope: !1987, file: !1, discriminator: 2)
!1987 = distinct !DILexicalBlock(scope: !1982, file: !1, line: 746, column: 3)
!1988 = !DILocation(line: 746, column: 3, scope: !1989)
!1989 = !DILexicalBlockFile(scope: !1982, file: !1, discriminator: 3)
!1990 = !DILocation(line: 746, column: 3, scope: !1991)
!1991 = !DILexicalBlockFile(scope: !1972, file: !1, discriminator: 4)
!1992 = !DILocation(line: 747, column: 1, scope: !1972)
!1993 = distinct !DISubprogram(name: "gsl_sf_angle_restrict_symm", scope: !1, file: !1, line: 749, type: !1883, isLocal: false, isDefinition: true, scopeLine: 750, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !83)
!1994 = !DILocalVariable(name: "theta", arg: 1, scope: !1993, file: !1, line: 749, type: !91)
!1995 = !DILocation(line: 749, column: 48, scope: !1993)
!1996 = !DILocalVariable(name: "result", scope: !1993, file: !1, line: 751, type: !49)
!1997 = !DILocation(line: 751, column: 10, scope: !1993)
!1998 = !DILocation(line: 751, column: 19, scope: !1993)
!1999 = !DILocalVariable(name: "status", scope: !1993, file: !1, line: 752, type: !51)
!2000 = !DILocation(line: 752, column: 3, scope: !1993)
!2001 = !DILocation(line: 752, column: 3, scope: !2002)
!2002 = distinct !DILexicalBlock(scope: !1993, file: !1, line: 752, column: 3)
!2003 = !DILocation(line: 752, column: 3, scope: !2004)
!2004 = !DILexicalBlockFile(scope: !2005, file: !1, discriminator: 1)
!2005 = distinct !DILexicalBlock(scope: !2002, file: !1, line: 752, column: 3)
!2006 = distinct !{!2006, !2007}
!2007 = !DILocation(line: 752, column: 3, scope: !2005)
!2008 = !DILocation(line: 752, column: 3, scope: !2009)
!2009 = !DILexicalBlockFile(scope: !2010, file: !1, discriminator: 2)
!2010 = distinct !DILexicalBlock(scope: !2005, file: !1, line: 752, column: 3)
!2011 = !DILocation(line: 752, column: 3, scope: !2012)
!2012 = !DILexicalBlockFile(scope: !2005, file: !1, discriminator: 3)
!2013 = !DILocation(line: 752, column: 3, scope: !2014)
!2014 = !DILexicalBlockFile(scope: !1993, file: !1, discriminator: 4)
!2015 = !DILocation(line: 753, column: 1, scope: !1993)
!2016 = distinct !DISubprogram(name: "gsl_sf_angle_restrict_pos", scope: !1, file: !1, line: 755, type: !1883, isLocal: false, isDefinition: true, scopeLine: 756, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !83)
!2017 = !DILocalVariable(name: "theta", arg: 1, scope: !2016, file: !1, line: 755, type: !91)
!2018 = !DILocation(line: 755, column: 47, scope: !2016)
!2019 = !DILocalVariable(name: "result", scope: !2016, file: !1, line: 757, type: !49)
!2020 = !DILocation(line: 757, column: 10, scope: !2016)
!2021 = !DILocation(line: 757, column: 19, scope: !2016)
!2022 = !DILocalVariable(name: "status", scope: !2016, file: !1, line: 758, type: !51)
!2023 = !DILocation(line: 758, column: 3, scope: !2016)
!2024 = !DILocation(line: 758, column: 3, scope: !2025)
!2025 = distinct !DILexicalBlock(scope: !2016, file: !1, line: 758, column: 3)
!2026 = !DILocation(line: 758, column: 3, scope: !2027)
!2027 = !DILexicalBlockFile(scope: !2028, file: !1, discriminator: 1)
!2028 = distinct !DILexicalBlock(scope: !2025, file: !1, line: 758, column: 3)
!2029 = distinct !{!2029, !2030}
!2030 = !DILocation(line: 758, column: 3, scope: !2028)
!2031 = !DILocation(line: 758, column: 3, scope: !2032)
!2032 = !DILexicalBlockFile(scope: !2033, file: !1, discriminator: 2)
!2033 = distinct !DILexicalBlock(scope: !2028, file: !1, line: 758, column: 3)
!2034 = !DILocation(line: 758, column: 3, scope: !2035)
!2035 = !DILexicalBlockFile(scope: !2028, file: !1, discriminator: 3)
!2036 = !DILocation(line: 758, column: 3, scope: !2037)
!2037 = !DILexicalBlockFile(scope: !2016, file: !1, discriminator: 4)
!2038 = !DILocation(line: 759, column: 1, scope: !2016)
!2039 = distinct !DISubprogram(name: "gsl_sf_sinc", scope: !1, file: !1, line: 768, type: !1883, isLocal: false, isDefinition: true, scopeLine: 769, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !83)
!2040 = !DILocalVariable(name: "x", arg: 1, scope: !2039, file: !1, line: 768, type: !91)
!2041 = !DILocation(line: 768, column: 33, scope: !2039)
!2042 = !DILocalVariable(name: "result", scope: !2039, file: !1, line: 770, type: !77)
!2043 = !DILocation(line: 770, column: 3, scope: !2039)
!2044 = !DILocalVariable(name: "status", scope: !2039, file: !1, line: 770, type: !51)
!2045 = !DILocation(line: 770, column: 3, scope: !2046)
!2046 = distinct !DILexicalBlock(scope: !2039, file: !1, line: 770, column: 3)
!2047 = !DILocation(line: 770, column: 3, scope: !2048)
!2048 = !DILexicalBlockFile(scope: !2049, file: !1, discriminator: 1)
!2049 = distinct !DILexicalBlock(scope: !2046, file: !1, line: 770, column: 3)
!2050 = distinct !{!2050, !2051}
!2051 = !DILocation(line: 770, column: 3, scope: !2049)
!2052 = !DILocation(line: 770, column: 3, scope: !2053)
!2053 = !DILexicalBlockFile(scope: !2054, file: !1, discriminator: 2)
!2054 = distinct !DILexicalBlock(scope: !2049, file: !1, line: 770, column: 3)
!2055 = !DILocation(line: 770, column: 3, scope: !2056)
!2056 = !DILexicalBlockFile(scope: !2049, file: !1, discriminator: 3)
!2057 = !DILocation(line: 770, column: 3, scope: !2058)
!2058 = !DILexicalBlockFile(scope: !2039, file: !1, discriminator: 4)
!2059 = !DILocation(line: 771, column: 1, scope: !2039)
