; ModuleID = 'bessel_I0.ll'
source_filename = "bessel_I0.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.cheb_series_struct = type { double*, i32, double, double, i32 }
%struct.gsl_sf_result_struct = type { double, double }

@bi0_cs = internal global %struct.cheb_series_struct { double* getelementptr inbounds ([12 x double], [12 x double]* @bi0_data, i32 0, i32 0), i32 11, double -1.000000e+00, double 1.000000e+00, i32 11 }, align 8
@ai0_cs = internal global %struct.cheb_series_struct { double* getelementptr inbounds ([21 x double], [21 x double]* @ai0_data, i32 0, i32 0), i32 20, double -1.000000e+00, double 1.000000e+00, i32 13 }, align 8
@ai02_cs = internal global %struct.cheb_series_struct { double* getelementptr inbounds ([22 x double], [22 x double]* @ai02_data, i32 0, i32 0), i32 21, double -1.000000e+00, double 1.000000e+00, i32 11 }, align 8
@.str = private unnamed_addr constant [9 x i8] c"overflow\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"bessel_I0.c\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"gsl_sf_bessel_I0_scaled_e(x, &result);\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"gsl_sf_bessel_I0_e(x, &result);\00", align 1
@bi0_data = internal global [12 x double] [double 0xBFB39C6A8F343DC8, double 0x3FFED660528BE329, double 0x3FCD37C51075F0D7, double 0x3F8AB963ADF26D77, double 0x3F3C787A24F735CB, double 0x3EE3C2C03617093B, double 0x3E833F35458DE982, double 0x3E1BB9C8846672F9, double 0x3DAEB670D671AE28, double 9.579451e-14, double 5.333900e-16, double 2.450000e-18], align 16
@ai0_data = internal global [21 x double] [double 0x3FB36500F5DD7610, double 0x3F7F1823C5060387, double 0x3F3B37CC53E1FC02, double 0x3EE670EDE4880950, double 0xBEE091E9E8545094, double 0xBEAA429B27F54A32, double 0x3E92AE9E272332E6, double 0x3E41B8D84435C00F, double 0xBE49DD9C4DE920BD, double 0x3E1ACB6833C29B9B, double 0x3DEF823723C22545, double 0xBDE060A6664CCA7E, double 1.757854e-11, double 1.128220e-12, double -1.146840e-12, double 2.715500e-13, double -2.415000e-14, double -6.080000e-15, double 3.140000e-15, double -7.100000e-16, double 7.000000e-17], align 16
@ai02_data = internal global [22 x double] [double 0x3FABE62ACA809CB5, double 0x3F6B998CA2E5903F, double 0x3F120FA37899A1B5, double 0x3EC8412BC1013D6B, double 0x3E8B8007D9C3A27D, double 0x3E58569280EDF9E5, double 0x3E2D2C64A9C0B0AC, double 0x3E00F9CCB61AB9A0, double 1.188914e-11, double -3.149915e-11, double -1.321580e-11, double -1.794190e-12, double 7.180100e-13, double 3.852900e-13, double 1.539000e-14, double -4.151000e-14, double -9.540000e-15, double 3.820000e-15, double 1.760000e-15, double -3.400000e-16, double -2.700000e-16, double 3.000000e-17], align 16
@0 = private unnamed_addr constant [26 x i8] c"gsl_sf_bessel_I0_scaled_e\00"
@1 = private unnamed_addr constant [13 x i8] c"bessel_I0.ll\00"
@2 = private unnamed_addr constant [12 x i8] c"cheb_eval_e\00"
@3 = private unnamed_addr constant [13 x i8] c"bessel_I0.ll\00"
@4 = private unnamed_addr constant [19 x i8] c"gsl_sf_bessel_I0_e\00"
@5 = private unnamed_addr constant [13 x i8] c"bessel_I0.ll\00"
@6 = private unnamed_addr constant [24 x i8] c"gsl_sf_bessel_I0_scaled\00"
@7 = private unnamed_addr constant [13 x i8] c"bessel_I0.ll\00"
@8 = private unnamed_addr constant [17 x i8] c"gsl_sf_bessel_I0\00"
@9 = private unnamed_addr constant [13 x i8] c"bessel_I0.ll\00"

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_bessel_I0_scaled_e(double, %struct.gsl_sf_result_struct*) #0 !dbg !73 {
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca %struct.gsl_sf_result_struct*, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca %struct.gsl_sf_result_struct, align 8
  %9 = alloca double, align 8
  %10 = alloca %struct.gsl_sf_result_struct, align 8
  %11 = alloca double, align 8
  %12 = alloca %struct.gsl_sf_result_struct, align 8
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !85, metadata !86), !dbg !87
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %5, metadata !88, metadata !86), !dbg !89
  call void @llvm.dbg.declare(metadata double* %6, metadata !90, metadata !86), !dbg !91
  %13 = load double, double* %4, align 8, !dbg !92
  %14 = call double @fabs(double %13) #1, !dbg !93
  store double %14, double* %6, align 8, !dbg !91
  %15 = load double, double* %6, align 8, !dbg !94
  %16 = fcmp olt double %15, 0x3E60000000000000, !dbg !96
  %17 = call i1 @fCmpInstHandler(double %15, double 0x3E60000000000000, i1 %16, i32 4, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 93924384923904, i32 150, i32 8), !dbg !97
  br i1 %17, label %18, label %29, !dbg !97

; <label>:18:                                     ; preds = %2
  %19 = load double, double* %6, align 8, !dbg !98
  %20 = fsub double 1.000000e+00, %19, !dbg !100
  call void @fSubHandler(double 1.000000e+00, double %19, double %20, i64 0, i64 93924384924872, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 93924384925248, i32 151, i32 23), !dbg !101
  %21 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !101
  %22 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %21, i32 0, i32 0, !dbg !102
  store double %20, double* %22, align 8, !dbg !103
  %23 = load double, double* %6, align 8, !dbg !104
  %24 = fmul double 5.000000e-01, %23, !dbg !105
  call void @fMulHandler(double 5.000000e-01, double %23, double %24, i64 0, i64 93924384926856, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 93924384927360, i32 152, i32 22), !dbg !106
  %25 = load double, double* %6, align 8, !dbg !106
  %26 = fmul double %24, %25, !dbg !107
  call void @fMulHandler(double %24, double %25, double %26, i64 93924384927360, i64 93924384927720, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 93924384928128, i32 152, i32 24), !dbg !108
  %27 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !108
  %28 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %27, i32 0, i32 1, !dbg !109
  store double %26, double* %28, align 8, !dbg !110
  store i32 0, i32* %3, align 4, !dbg !111
  br label %147, !dbg !111

; <label>:29:                                     ; preds = %2
  %30 = load double, double* %6, align 8, !dbg !112
  %31 = fcmp ole double %30, 3.000000e+00, !dbg !114
  %32 = call i1 @fCmpInstHandler(double %30, double 3.000000e+00, i1 %31, i32 5, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 93924384932416, i32 155, i32 13), !dbg !115
  br i1 %32, label %33, label %62, !dbg !115

; <label>:33:                                     ; preds = %29
  call void @llvm.dbg.declare(metadata double* %7, metadata !116, metadata !86), !dbg !118
  %34 = load double, double* %6, align 8, !dbg !119
  %35 = fsub double -0.000000e+00, %34, !dbg !120
  call void @fSubHandler(double -0.000000e+00, double %34, double %35, i64 0, i64 93924384934600, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 93924384935568, i32 156, i32 27), !dbg !121
  %36 = call double @exp(double %35) #6, !dbg !121
  call void @callOneArgHandler(i32 11, double %35, double %36, i64 93924384935568, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 93924384936320, i32 156, i32 23), !dbg !118
  store double %36, double* %7, align 8, !dbg !118
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %8, metadata !122, metadata !86), !dbg !123
  %37 = load double, double* %6, align 8, !dbg !124
  %38 = load double, double* %6, align 8, !dbg !125
  %39 = fmul double %37, %38, !dbg !126
  call void @fMulHandler(double %37, double %38, double %39, i64 93924384939656, i64 93924384940008, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 93924384940416, i32 158, i32 27), !dbg !127
  %40 = fdiv double %39, 4.500000e+00, !dbg !127
  call void @fDivHandler(double %39, double 4.500000e+00, double %40, i64 93924384940416, i64 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 93924384940928, i32 158, i32 29), !dbg !128
  %41 = fsub double %40, 1.000000e+00, !dbg !128
  call void @fSubHandler(double %40, double 1.000000e+00, double %41, i64 93924384940928, i64 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 93924384941344, i32 158, i32 33), !dbg !129
  %42 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @bi0_cs, double %41, %struct.gsl_sf_result_struct* %8), !dbg !129
  %43 = load double, double* %7, align 8, !dbg !130
  %44 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 0, !dbg !131
  %45 = load double, double* %44, align 8, !dbg !131
  %46 = fadd double 2.750000e+00, %45, !dbg !132
  call void @fAddHandler(double 2.750000e+00, double %45, double %46, i64 0, i64 93924384943368, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 93924384945136, i32 159, i32 30), !dbg !133
  %47 = fmul double %43, %46, !dbg !133
  call void @fMulHandler(double %43, double %46, double %47, i64 93924384942568, i64 93924384945136, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 93924384945520, i32 159, i32 22), !dbg !134
  %48 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !134
  %49 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %48, i32 0, i32 0, !dbg !135
  store double %47, double* %49, align 8, !dbg !136
  %50 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !137
  %51 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %50, i32 0, i32 0, !dbg !138
  %52 = load double, double* %51, align 8, !dbg !138
  %53 = call double @fabs(double %52) #1, !dbg !139
  %54 = fmul double 0x3CB0000000000000, %53, !dbg !140
  call void @fMulHandler(double 0x3CB0000000000000, double %53, double %54, i64 0, i64 93924384949728, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 93924384950272, i32 160, i32 35), !dbg !141
  %55 = load double, double* %7, align 8, !dbg !141
  %56 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 1, !dbg !142
  %57 = load double, double* %56, align 8, !dbg !142
  %58 = fmul double %55, %57, !dbg !143
  call void @fMulHandler(double %55, double %57, double %58, i64 93924384950664, i64 93924384951496, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 93924384953168, i32 160, i32 60), !dbg !144
  %59 = fadd double %54, %58, !dbg !144
  call void @fAddHandler(double %54, double %58, double %59, i64 93924384950272, i64 93924384953168, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 93924384953584, i32 160, i32 55), !dbg !145
  %60 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !145
  %61 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %60, i32 0, i32 1, !dbg !146
  store double %59, double* %61, align 8, !dbg !147
  store i32 0, i32* %3, align 4, !dbg !148
  br label %147, !dbg !148

; <label>:62:                                     ; preds = %29
  %63 = load double, double* %6, align 8, !dbg !149
  %64 = fcmp ole double %63, 8.000000e+00, !dbg !151
  %65 = call i1 @fCmpInstHandler(double %63, double 8.000000e+00, i1 %64, i32 5, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 93924384957728, i32 163, i32 13), !dbg !152
  br i1 %65, label %66, label %107, !dbg !152

; <label>:66:                                     ; preds = %62
  call void @llvm.dbg.declare(metadata double* %9, metadata !153, metadata !86), !dbg !155
  %67 = load double, double* %6, align 8, !dbg !156
  %68 = call double @sqrt(double %67) #6, !dbg !157
  call void @callOneArgHandler(i32 14, double %67, double %68, i64 93924384959960, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 93924384961712, i32 164, i32 23), !dbg !155
  store double %68, double* %9, align 8, !dbg !155
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %10, metadata !158, metadata !86), !dbg !159
  %69 = load double, double* %6, align 8, !dbg !160
  %70 = fdiv double 4.800000e+01, %69, !dbg !161
  call void @fDivHandler(double 4.800000e+01, double %69, double %70, i64 0, i64 93924384965048, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 93924384965520, i32 166, i32 31), !dbg !162
  %71 = fsub double %70, 1.100000e+01, !dbg !162
  call void @fSubHandler(double %70, double 1.100000e+01, double %71, i64 93924384965520, i64 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 93924384966000, i32 166, i32 33), !dbg !163
  %72 = fdiv double %71, 5.000000e+00, !dbg !163
  call void @fDivHandler(double %71, double 5.000000e+00, double %72, i64 93924384966000, i64 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 93924384966480, i32 166, i32 39), !dbg !164
  %73 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @ai0_cs, double %72, %struct.gsl_sf_result_struct* %10), !dbg !164
  %74 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !165
  %75 = load double, double* %74, align 8, !dbg !165
  %76 = fadd double 3.750000e-01, %75, !dbg !166
  call void @fAddHandler(double 3.750000e-01, double %75, double %76, i64 0, i64 93924384967848, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 93924384969616, i32 167, i32 27), !dbg !167
  %77 = load double, double* %9, align 8, !dbg !167
  %78 = fdiv double %76, %77, !dbg !168
  call void @fDivHandler(double %76, double %77, double %78, i64 93924384969616, i64 93924384969976, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 93924384970384, i32 167, i32 36), !dbg !169
  %79 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !169
  %80 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %79, i32 0, i32 0, !dbg !170
  store double %78, double* %80, align 8, !dbg !171
  %81 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !172
  %82 = load double, double* %81, align 8, !dbg !172
  %83 = call double @fabs(double %82) #1, !dbg !173
  %84 = fadd double 3.750000e-01, %83, !dbg !174
  call void @fAddHandler(double 3.750000e-01, double %83, double %84, i64 0, i64 93924384974208, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 93924384974720, i32 168, i32 51), !dbg !175
  %85 = fmul double 0x3CC0000000000000, %84, !dbg !175
  call void @fMulHandler(double 0x3CC0000000000000, double %84, double %85, i64 0, i64 93924384974720, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 93924384975168, i32 168, i32 42), !dbg !176
  %86 = load double, double* %9, align 8, !dbg !176
  %87 = fdiv double %85, %86, !dbg !177
  call void @fDivHandler(double %85, double %86, double %87, i64 93924384975168, i64 93924384975560, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 93924384975968, i32 168, i32 66), !dbg !178
  %88 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !178
  %89 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %88, i32 0, i32 1, !dbg !179
  store double %87, double* %89, align 8, !dbg !180
  %90 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 1, !dbg !181
  %91 = load double, double* %90, align 8, !dbg !181
  %92 = load double, double* %9, align 8, !dbg !182
  %93 = fdiv double %91, %92, !dbg !183
  call void @fDivHandler(double %91, double %92, double %93, i64 93924384978056, i64 93924384979704, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 93924384980112, i32 169, i32 26), !dbg !184
  %94 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !184
  %95 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %94, i32 0, i32 1, !dbg !185
  %96 = load double, double* %95, align 8, !dbg !186
  %97 = fadd double %96, %93, !dbg !186
  call void @fAddHandler(double %96, double %93, double %97, i64 93924384981336, i64 93924384980112, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 93924384981744, i32 169, i32 17), !dbg !186
  store double %97, double* %95, align 8, !dbg !186
  %98 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !187
  %99 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %98, i32 0, i32 0, !dbg !188
  %100 = load double, double* %99, align 8, !dbg !188
  %101 = call double @fabs(double %100) #1, !dbg !189
  %102 = fmul double 0x3CC0000000000000, %101, !dbg !190
  call void @fMulHandler(double 0x3CC0000000000000, double %101, double %102, i64 0, i64 93924384986096, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 93924384986576, i32 170, i32 42), !dbg !191
  %103 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !191
  %104 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %103, i32 0, i32 1, !dbg !192
  %105 = load double, double* %104, align 8, !dbg !193
  %106 = fadd double %105, %102, !dbg !193
  call void @fAddHandler(double %105, double %102, double %106, i64 93924384987800, i64 93924384986576, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 93924384988208, i32 170, i32 17), !dbg !193
  store double %106, double* %104, align 8, !dbg !193
  store i32 0, i32* %3, align 4, !dbg !194
  br label %147, !dbg !194

; <label>:107:                                    ; preds = %62
  call void @llvm.dbg.declare(metadata double* %11, metadata !195, metadata !86), !dbg !197
  %108 = load double, double* %6, align 8, !dbg !198
  %109 = call double @sqrt(double %108) #6, !dbg !199
  call void @callOneArgHandler(i32 14, double %108, double %109, i64 93924384993112, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 93924384993552, i32 174, i32 23), !dbg !197
  store double %109, double* %11, align 8, !dbg !197
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %12, metadata !200, metadata !86), !dbg !201
  %110 = load double, double* %6, align 8, !dbg !202
  %111 = fdiv double 1.600000e+01, %110, !dbg !203
  call void @fDivHandler(double 1.600000e+01, double %110, double %111, i64 0, i64 93924384996808, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 93924384997280, i32 176, i32 31), !dbg !204
  %112 = fsub double %111, 1.000000e+00, !dbg !204
  call void @fSubHandler(double %111, double 1.000000e+00, double %112, i64 93924384997280, i64 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 93924384997696, i32 176, i32 33), !dbg !205
  %113 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @ai02_cs, double %112, %struct.gsl_sf_result_struct* %12), !dbg !205
  %114 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %12, i32 0, i32 0, !dbg !206
  %115 = load double, double* %114, align 8, !dbg !206
  %116 = fadd double 3.750000e-01, %115, !dbg !207
  call void @fAddHandler(double 3.750000e-01, double %115, double %116, i64 0, i64 93924384999064, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 93924385000768, i32 177, i32 26), !dbg !208
  %117 = load double, double* %11, align 8, !dbg !208
  %118 = fdiv double %116, %117, !dbg !209
  call void @fDivHandler(double %116, double %117, double %118, i64 93924385000768, i64 93924385001128, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 93924385001536, i32 177, i32 35), !dbg !210
  %119 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !210
  %120 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %119, i32 0, i32 0, !dbg !211
  store double %118, double* %120, align 8, !dbg !212
  %121 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %12, i32 0, i32 0, !dbg !213
  %122 = load double, double* %121, align 8, !dbg !213
  %123 = call double @fabs(double %122) #1, !dbg !214
  %124 = fadd double 3.750000e-01, %123, !dbg !215
  call void @fAddHandler(double 3.750000e-01, double %123, double %124, i64 0, i64 93924385005360, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 93924385005872, i32 178, i32 51), !dbg !216
  %125 = fmul double 0x3CC0000000000000, %124, !dbg !216
  call void @fMulHandler(double 0x3CC0000000000000, double %124, double %125, i64 0, i64 93924385005872, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 93924385006256, i32 178, i32 42), !dbg !217
  %126 = load double, double* %11, align 8, !dbg !217
  %127 = fdiv double %125, %126, !dbg !218
  call void @fDivHandler(double %125, double %126, double %127, i64 93924385006256, i64 93924385006648, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 93924385007056, i32 178, i32 66), !dbg !219
  %128 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !219
  %129 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %128, i32 0, i32 1, !dbg !220
  store double %127, double* %129, align 8, !dbg !221
  %130 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %12, i32 0, i32 1, !dbg !222
  %131 = load double, double* %130, align 8, !dbg !222
  %132 = load double, double* %11, align 8, !dbg !223
  %133 = fdiv double %131, %132, !dbg !224
  call void @fDivHandler(double %131, double %132, double %133, i64 93924385009144, i64 93924385012856, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 93924385013264, i32 179, i32 26), !dbg !225
  %134 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !225
  %135 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %134, i32 0, i32 1, !dbg !226
  %136 = load double, double* %135, align 8, !dbg !227
  %137 = fadd double %136, %133, !dbg !227
  call void @fAddHandler(double %136, double %133, double %137, i64 93924385014488, i64 93924385013264, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 93924385014896, i32 179, i32 17), !dbg !227
  store double %137, double* %135, align 8, !dbg !227
  %138 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !228
  %139 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %138, i32 0, i32 0, !dbg !229
  %140 = load double, double* %139, align 8, !dbg !229
  %141 = call double @fabs(double %140) #1, !dbg !230
  %142 = fmul double 0x3CC0000000000000, %141, !dbg !231
  call void @fMulHandler(double 0x3CC0000000000000, double %141, double %142, i64 0, i64 93924385019248, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 93924385019728, i32 180, i32 42), !dbg !232
  %143 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !232
  %144 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %143, i32 0, i32 1, !dbg !233
  %145 = load double, double* %144, align 8, !dbg !234
  %146 = fadd double %145, %142, !dbg !234
  call void @fAddHandler(double %145, double %142, double %146, i64 93924385020952, i64 93924385019728, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 93924385021360, i32 180, i32 17), !dbg !234
  store double %146, double* %144, align 8, !dbg !234
  store i32 0, i32* %3, align 4, !dbg !235
  br label %147, !dbg !235

; <label>:147:                                    ; preds = %107, %66, %33, %18
  %148 = load i32, i32* %3, align 4, !dbg !236
  ret i32 %148, !dbg !236
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readnone
declare double @fabs(double) #2

; Function Attrs: nounwind
declare double @exp(double) #3

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @cheb_eval_e(%struct.cheb_series_struct*, double, %struct.gsl_sf_result_struct*) #4 !dbg !237 {
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
  call void @llvm.dbg.declare(metadata %struct.cheb_series_struct** %4, metadata !243, metadata !86), !dbg !244
  store double %1, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !245, metadata !86), !dbg !246
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %6, metadata !247, metadata !86), !dbg !248
  call void @llvm.dbg.declare(metadata i32* %7, metadata !249, metadata !86), !dbg !250
  call void @llvm.dbg.declare(metadata double* %8, metadata !251, metadata !86), !dbg !252
  store double 0.000000e+00, double* %8, align 8, !dbg !252
  call void @llvm.dbg.declare(metadata double* %9, metadata !253, metadata !86), !dbg !254
  store double 0.000000e+00, double* %9, align 8, !dbg !254
  call void @llvm.dbg.declare(metadata double* %10, metadata !255, metadata !86), !dbg !256
  %15 = load double, double* %5, align 8, !dbg !257
  %16 = fmul double 2.000000e+00, %15, !dbg !258
  call void @fMulHandler(double 2.000000e+00, double %15, double %16, i64 0, i64 93924384941944, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 93924385039616, i32 11, i32 19), !dbg !259
  %17 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !259
  %18 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %17, i32 0, i32 2, !dbg !260
  %19 = load double, double* %18, align 8, !dbg !260
  %20 = fsub double %16, %19, !dbg !261
  call void @fSubHandler(double %16, double %19, double %20, i64 93924385039616, i64 93924384788840, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 93924385042352, i32 11, i32 22), !dbg !262
  %21 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !262
  %22 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %21, i32 0, i32 3, !dbg !263
  %23 = load double, double* %22, align 8, !dbg !263
  %24 = fsub double %20, %23, !dbg !264
  call void @fSubHandler(double %20, double %23, double %24, i64 93924385042352, i64 93924385043544, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 93924385045216, i32 11, i32 30), !dbg !265
  %25 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !265
  %26 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %25, i32 0, i32 3, !dbg !266
  %27 = load double, double* %26, align 8, !dbg !266
  %28 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !267
  %29 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %28, i32 0, i32 2, !dbg !268
  %30 = load double, double* %29, align 8, !dbg !268
  %31 = fsub double %27, %30, !dbg !269
  call void @fSubHandler(double %27, double %30, double %31, i64 93924385046440, i64 93924385048920, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 93924385050592, i32 11, i32 48), !dbg !270
  %32 = fdiv double %24, %31, !dbg !270
  call void @fDivHandler(double %24, double %31, double %32, i64 93924385045216, i64 93924385050592, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 93924385051008, i32 11, i32 39), !dbg !256
  store double %32, double* %10, align 8, !dbg !256
  call void @llvm.dbg.declare(metadata double* %11, metadata !271, metadata !86), !dbg !272
  %33 = load double, double* %10, align 8, !dbg !273
  %34 = fmul double 2.000000e+00, %33, !dbg !274
  call void @fMulHandler(double 2.000000e+00, double %33, double %34, i64 0, i64 93924385054056, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 93924385054464, i32 12, i32 19), !dbg !272
  store double %34, double* %11, align 8, !dbg !272
  call void @llvm.dbg.declare(metadata double* %12, metadata !275, metadata !86), !dbg !276
  store double 0.000000e+00, double* %12, align 8, !dbg !276
  %35 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !277
  %36 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %35, i32 0, i32 1, !dbg !279
  %37 = load i32, i32* %36, align 8, !dbg !279
  store i32 %37, i32* %7, align 4, !dbg !280
  br label %38, !dbg !281

; <label>:38:                                     ; preds = %77, %3
  %39 = load i32, i32* %7, align 4, !dbg !282
  %40 = icmp sge i32 %39, 1, !dbg !285
  %41 = sext i32 %39 to i64, !dbg !286
  %42 = call i1 @iCmpInstHandler(i64 %41, i64 1, i1 %40, i32 39, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 93924385063040, i32 16, i32 23), !dbg !286
  br i1 %42, label %43, label %80, !dbg !286

; <label>:43:                                     ; preds = %38
  call void @llvm.dbg.declare(metadata double* %13, metadata !287, metadata !86), !dbg !289
  %44 = load double, double* %8, align 8, !dbg !290
  store double %44, double* %13, align 8, !dbg !289
  %45 = load double, double* %11, align 8, !dbg !291
  %46 = load double, double* %8, align 8, !dbg !292
  %47 = fmul double %45, %46, !dbg !293
  call void @fMulHandler(double %45, double %46, double %47, i64 93924385067240, i64 93924385067624, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 93924385068032, i32 18, i32 11), !dbg !294
  %48 = load double, double* %9, align 8, !dbg !294
  %49 = fsub double %47, %48, !dbg !295
  call void @fSubHandler(double %47, double %48, double %49, i64 93924385068032, i64 93924385068424, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 93924385068832, i32 18, i32 14), !dbg !296
  %50 = load i32, i32* %7, align 4, !dbg !296
  %51 = sext i32 %50 to i64, !dbg !297
  %52 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !297
  %53 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %52, i32 0, i32 0, !dbg !298
  %54 = load double*, double** %53, align 8, !dbg !298
  %55 = getelementptr inbounds double, double* %54, i64 %51, !dbg !297
  %56 = load double, double* %55, align 8, !dbg !297
  %57 = fadd double %49, %56, !dbg !299
  call void @fAddHandler(double %49, double %56, double %57, i64 93924385068832, i64 93924385073880, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 93924385074000, i32 18, i32 19), !dbg !300
  store double %57, double* %8, align 8, !dbg !300
  %58 = load double, double* %11, align 8, !dbg !301
  %59 = load double, double* %13, align 8, !dbg !302
  %60 = fmul double %58, %59, !dbg !303
  call void @fMulHandler(double %58, double %59, double %60, i64 93924385074808, i64 93924385075192, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 93924385075600, i32 19, i32 17), !dbg !304
  %61 = call double @fabs(double %60) #1, !dbg !304
  %62 = load double, double* %9, align 8, !dbg !305
  %63 = call double @fabs(double %62) #1, !dbg !306
  %64 = fadd double %61, %63, !dbg !308
  call void @fAddHandler(double %61, double %63, double %64, i64 93924385076080, i64 93924385077008, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 93924385077488, i32 19, i32 24), !dbg !309
  %65 = load i32, i32* %7, align 4, !dbg !309
  %66 = sext i32 %65 to i64, !dbg !310
  %67 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !310
  %68 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %67, i32 0, i32 0, !dbg !311
  %69 = load double*, double** %68, align 8, !dbg !311
  %70 = getelementptr inbounds double, double* %69, i64 %66, !dbg !310
  %71 = load double, double* %70, align 8, !dbg !310
  %72 = call double @fabs(double %71) #1, !dbg !312
  %73 = fadd double %64, %72, !dbg !314
  call void @fAddHandler(double %64, double %72, double %73, i64 93924385077488, i64 93924385082720, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 93924385083200, i32 19, i32 35), !dbg !315
  %74 = load double, double* %12, align 8, !dbg !315
  %75 = fadd double %74, %73, !dbg !315
  call void @fAddHandler(double %74, double %73, double %75, i64 93924385083592, i64 93924385083200, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 93924385084000, i32 19, i32 7), !dbg !315
  store double %75, double* %12, align 8, !dbg !315
  %76 = load double, double* %13, align 8, !dbg !316
  store double %76, double* %9, align 8, !dbg !317
  br label %77, !dbg !318

; <label>:77:                                     ; preds = %43
  %78 = load i32, i32* %7, align 4, !dbg !319
  %79 = add nsw i32 %78, -1, !dbg !319
  store i32 %79, i32* %7, align 4, !dbg !319
  br label %38, !dbg !321, !llvm.loop !322

; <label>:80:                                     ; preds = %38
  call void @llvm.dbg.declare(metadata double* %14, metadata !324, metadata !86), !dbg !326
  %81 = load double, double* %8, align 8, !dbg !327
  store double %81, double* %14, align 8, !dbg !326
  %82 = load double, double* %10, align 8, !dbg !328
  %83 = load double, double* %8, align 8, !dbg !329
  %84 = fmul double %82, %83, !dbg !330
  call void @fMulHandler(double %82, double %83, double %84, i64 93924385097176, i64 93924385097560, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 93924385097968, i32 25, i32 10), !dbg !331
  %85 = load double, double* %9, align 8, !dbg !331
  %86 = fsub double %84, %85, !dbg !332
  call void @fSubHandler(double %84, double %85, double %86, i64 93924385097968, i64 93924385098360, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 93924385098768, i32 25, i32 13), !dbg !333
  %87 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !333
  %88 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %87, i32 0, i32 0, !dbg !334
  %89 = load double*, double** %88, align 8, !dbg !334
  %90 = getelementptr inbounds double, double* %89, i64 0, !dbg !333
  %91 = load double, double* %90, align 8, !dbg !333
  %92 = fmul double 5.000000e-01, %91, !dbg !335
  call void @fMulHandler(double 5.000000e-01, double %91, double %92, i64 0, i64 93924385103400, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 93924385103552, i32 25, i32 24), !dbg !336
  %93 = fadd double %86, %92, !dbg !336
  call void @fAddHandler(double %86, double %92, double %93, i64 93924385098768, i64 93924385103552, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 93924385103936, i32 25, i32 18), !dbg !337
  store double %93, double* %8, align 8, !dbg !337
  %94 = load double, double* %10, align 8, !dbg !338
  %95 = load double, double* %14, align 8, !dbg !339
  %96 = fmul double %94, %95, !dbg !340
  call void @fMulHandler(double %94, double %95, double %96, i64 93924385104744, i64 93924385105128, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 93924385105536, i32 26, i32 16), !dbg !341
  %97 = call double @fabs(double %96) #1, !dbg !341
  %98 = load double, double* %9, align 8, !dbg !342
  %99 = call double @fabs(double %98) #1, !dbg !343
  %100 = fadd double %97, %99, !dbg !345
  call void @fAddHandler(double %97, double %99, double %100, i64 93924385106016, i64 93924385106944, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 93924385107424, i32 26, i32 23), !dbg !346
  %101 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !346
  %102 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %101, i32 0, i32 0, !dbg !347
  %103 = load double*, double** %102, align 8, !dbg !347
  %104 = getelementptr inbounds double, double* %103, i64 0, !dbg !346
  %105 = load double, double* %104, align 8, !dbg !346
  %106 = call double @fabs(double %105) #1, !dbg !348
  %107 = fmul double 5.000000e-01, %106, !dbg !350
  call void @fMulHandler(double 5.000000e-01, double %106, double %107, i64 0, i64 93924385112176, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 93924385112688, i32 26, i32 40), !dbg !351
  %108 = fadd double %100, %107, !dbg !351
  call void @fAddHandler(double %100, double %107, double %108, i64 93924385107424, i64 93924385112688, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 93924385113072, i32 26, i32 34), !dbg !352
  %109 = load double, double* %12, align 8, !dbg !352
  %110 = fadd double %109, %108, !dbg !352
  call void @fAddHandler(double %109, double %108, double %110, i64 93924385113464, i64 93924385113072, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 93924385113872, i32 26, i32 7), !dbg !352
  store double %110, double* %12, align 8, !dbg !352
  %111 = load double, double* %8, align 8, !dbg !353
  %112 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !354
  %113 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %112, i32 0, i32 0, !dbg !355
  store double %111, double* %113, align 8, !dbg !356
  %114 = load double, double* %12, align 8, !dbg !357
  %115 = fmul double 0x3CB0000000000000, %114, !dbg !358
  call void @fMulHandler(double 0x3CB0000000000000, double %114, double %115, i64 0, i64 93924385117288, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 93924385117696, i32 30, i32 33), !dbg !359
  %116 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !359
  %117 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %116, i32 0, i32 1, !dbg !360
  %118 = load i32, i32* %117, align 8, !dbg !360
  %119 = sext i32 %118 to i64, !dbg !361
  %120 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !361
  %121 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %120, i32 0, i32 0, !dbg !362
  %122 = load double*, double** %121, align 8, !dbg !362
  %123 = getelementptr inbounds double, double* %122, i64 %119, !dbg !361
  %124 = load double, double* %123, align 8, !dbg !361
  %125 = call double @fabs(double %124) #1, !dbg !363
  %126 = fadd double %115, %125, !dbg !364
  call void @fAddHandler(double %115, double %125, double %126, i64 93924385117696, i64 93924385125024, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 93924385125504, i32 30, i32 37), !dbg !365
  %127 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !365
  %128 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %127, i32 0, i32 1, !dbg !366
  store double %126, double* %128, align 8, !dbg !367
  ret i32 0, !dbg !368
}

; Function Attrs: nounwind
declare double @sqrt(double) #3

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_bessel_I0_e(double, %struct.gsl_sf_result_struct*) #0 !dbg !369 {
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca %struct.gsl_sf_result_struct*, align 8
  %6 = alloca double, align 8
  %7 = alloca %struct.gsl_sf_result_struct, align 8
  %8 = alloca double, align 8
  %9 = alloca %struct.gsl_sf_result_struct, align 8
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !370, metadata !86), !dbg !371
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %5, metadata !372, metadata !86), !dbg !373
  call void @llvm.dbg.declare(metadata double* %6, metadata !374, metadata !86), !dbg !375
  %10 = load double, double* %4, align 8, !dbg !376
  %11 = call double @fabs(double %10) #1, !dbg !377
  store double %11, double* %6, align 8, !dbg !375
  %12 = load double, double* %6, align 8, !dbg !378
  %13 = fcmp olt double %12, 0x3E60000000000000, !dbg !380
  %14 = call i1 @fCmpInstHandler(double %12, double 0x3E60000000000000, i1 %13, i32 4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @5, i32 0, i32 0), i64 93924385135952, i32 192, i32 8), !dbg !381
  br i1 %14, label %15, label %24, !dbg !381

; <label>:15:                                     ; preds = %2
  %16 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !382
  %17 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %16, i32 0, i32 0, !dbg !384
  store double 1.000000e+00, double* %17, align 8, !dbg !385
  %18 = load double, double* %6, align 8, !dbg !386
  %19 = fmul double 5.000000e-01, %18, !dbg !387
  call void @fMulHandler(double 5.000000e-01, double %18, double %19, i64 0, i64 93924385138248, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @5, i32 0, i32 0), i64 93924385138688, i32 194, i32 22), !dbg !388
  %20 = load double, double* %6, align 8, !dbg !388
  %21 = fmul double %19, %20, !dbg !389
  call void @fMulHandler(double %19, double %20, double %21, i64 93924385138688, i64 93924385139048, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @5, i32 0, i32 0), i64 93924385139456, i32 194, i32 24), !dbg !390
  %22 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !390
  %23 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %22, i32 0, i32 1, !dbg !391
  store double %21, double* %23, align 8, !dbg !392
  store i32 0, i32* %3, align 4, !dbg !393
  br label %111, !dbg !393

; <label>:24:                                     ; preds = %2
  %25 = load double, double* %6, align 8, !dbg !394
  %26 = fcmp ole double %25, 3.000000e+00, !dbg !396
  %27 = call i1 @fCmpInstHandler(double %25, double 3.000000e+00, i1 %26, i32 5, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @5, i32 0, i32 0), i64 93924385143680, i32 197, i32 13), !dbg !397
  br i1 %27, label %28, label %62, !dbg !397

; <label>:28:                                     ; preds = %24
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %7, metadata !398, metadata !86), !dbg !400
  %29 = load double, double* %6, align 8, !dbg !401
  %30 = load double, double* %6, align 8, !dbg !402
  %31 = fmul double %29, %30, !dbg !403
  call void @fMulHandler(double %29, double %30, double %31, i64 93924385147736, i64 93924385148088, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @5, i32 0, i32 0), i64 93924385148496, i32 199, i32 27), !dbg !404
  %32 = fdiv double %31, 4.500000e+00, !dbg !404
  call void @fDivHandler(double %31, double 4.500000e+00, double %32, i64 93924385148496, i64 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @5, i32 0, i32 0), i64 93924385148944, i32 199, i32 29), !dbg !405
  %33 = fsub double %32, 1.000000e+00, !dbg !405
  call void @fSubHandler(double %32, double 1.000000e+00, double %33, i64 93924385148944, i64 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @5, i32 0, i32 0), i64 93924385149360, i32 199, i32 33), !dbg !406
  %34 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @bi0_cs, double %33, %struct.gsl_sf_result_struct* %7), !dbg !406
  %35 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %7, i32 0, i32 0, !dbg !407
  %36 = load double, double* %35, align 8, !dbg !407
  %37 = fadd double 2.750000e+00, %36, !dbg !408
  call void @fAddHandler(double 2.750000e+00, double %36, double %37, i64 0, i64 93924385150728, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @5, i32 0, i32 0), i64 93924385152432, i32 200, i32 25), !dbg !409
  %38 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !409
  %39 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %38, i32 0, i32 0, !dbg !410
  store double %37, double* %39, align 8, !dbg !411
  %40 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %7, i32 0, i32 0, !dbg !412
  %41 = load double, double* %40, align 8, !dbg !412
  %42 = call double @fabs(double %41) #1, !dbg !413
  %43 = fadd double 2.750000e+00, %42, !dbg !414
  call void @fAddHandler(double 2.750000e+00, double %42, double %43, i64 0, i64 93924385156224, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @5, i32 0, i32 0), i64 93924385156736, i32 201, i32 44), !dbg !415
  %44 = fmul double 0x3CB0000000000000, %43, !dbg !415
  call void @fMulHandler(double 0x3CB0000000000000, double %43, double %44, i64 0, i64 93924385156736, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @5, i32 0, i32 0), i64 93924385157120, i32 201, i32 36), !dbg !416
  %45 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !416
  %46 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %45, i32 0, i32 1, !dbg !417
  store double %44, double* %46, align 8, !dbg !418
  %47 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %7, i32 0, i32 1, !dbg !419
  %48 = load double, double* %47, align 8, !dbg !419
  %49 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !420
  %50 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %49, i32 0, i32 1, !dbg !421
  %51 = load double, double* %50, align 8, !dbg !422
  %52 = fadd double %51, %48, !dbg !422
  call void @fAddHandler(double %51, double %48, double %52, i64 93924385161688, i64 93924385159208, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @5, i32 0, i32 0), i64 93924385162096, i32 202, i32 17), !dbg !422
  store double %52, double* %50, align 8, !dbg !422
  %53 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !423
  %54 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %53, i32 0, i32 0, !dbg !424
  %55 = load double, double* %54, align 8, !dbg !424
  %56 = call double @fabs(double %55) #1, !dbg !425
  %57 = fmul double 0x3CC0000000000000, %56, !dbg !426
  call void @fMulHandler(double 0x3CC0000000000000, double %56, double %57, i64 0, i64 93924385166448, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @5, i32 0, i32 0), i64 93924385166928, i32 203, i32 42), !dbg !427
  %58 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !427
  %59 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %58, i32 0, i32 1, !dbg !428
  %60 = load double, double* %59, align 8, !dbg !429
  %61 = fadd double %60, %57, !dbg !429
  call void @fAddHandler(double %60, double %57, double %61, i64 93924385168152, i64 93924385166928, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @5, i32 0, i32 0), i64 93924385168560, i32 203, i32 17), !dbg !429
  store double %61, double* %59, align 8, !dbg !429
  store i32 0, i32* %3, align 4, !dbg !430
  br label %111, !dbg !430

; <label>:62:                                     ; preds = %24
  %63 = load double, double* %6, align 8, !dbg !431
  %64 = fcmp olt double %63, 0x40862642FEFA39EF, !dbg !433
  %65 = call i1 @fCmpInstHandler(double %63, double 0x40862642FEFA39EF, i1 %64, i32 4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @5, i32 0, i32 0), i64 93924385172816, i32 206, i32 13), !dbg !434
  br i1 %65, label %66, label %100, !dbg !434

; <label>:66:                                     ; preds = %62
  call void @llvm.dbg.declare(metadata double* %8, metadata !435, metadata !86), !dbg !437
  %67 = load double, double* %6, align 8, !dbg !438
  %68 = call double @exp(double %67) #6, !dbg !439
  call void @callOneArgHandler(i32 11, double %67, double %68, i64 93924385174984, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @5, i32 0, i32 0), i64 93924385175424, i32 207, i32 23), !dbg !437
  store double %68, double* %8, align 8, !dbg !437
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %9, metadata !440, metadata !86), !dbg !441
  %69 = load double, double* %4, align 8, !dbg !442
  %70 = call i32 @gsl_sf_bessel_I0_scaled_e(double %69, %struct.gsl_sf_result_struct* %9), !dbg !443
  %71 = load double, double* %8, align 8, !dbg !444
  %72 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %9, i32 0, i32 0, !dbg !445
  %73 = load double, double* %72, align 8, !dbg !445
  %74 = fmul double %71, %73, !dbg !446
  call void @fMulHandler(double %71, double %73, double %74, i64 93924385179592, i64 93924385180392, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @5, i32 0, i32 0), i64 93924385182064, i32 210, i32 23), !dbg !447
  %75 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !447
  %76 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %75, i32 0, i32 0, !dbg !448
  store double %74, double* %76, align 8, !dbg !449
  %77 = load double, double* %8, align 8, !dbg !450
  %78 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %9, i32 0, i32 1, !dbg !451
  %79 = load double, double* %78, align 8, !dbg !451
  %80 = fmul double %77, %79, !dbg !452
  call void @fMulHandler(double %77, double %79, double %80, i64 93924385183704, i64 93924385184536, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @5, i32 0, i32 0), i64 93924385186208, i32 211, i32 23), !dbg !453
  %81 = load double, double* %6, align 8, !dbg !453
  %82 = fmul double %81, 0x3CB0000000000000, !dbg !454
  call void @fMulHandler(double %81, double 0x3CB0000000000000, double %82, i64 93924385186600, i64 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @5, i32 0, i32 0), i64 93924385187008, i32 211, i32 41), !dbg !455
  %83 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !455
  %84 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %83, i32 0, i32 0, !dbg !456
  %85 = load double, double* %84, align 8, !dbg !456
  %86 = call double @fabs(double %85) #1, !dbg !457
  %87 = fmul double %82, %86, !dbg !458
  call void @fMulHandler(double %82, double %86, double %87, i64 93924385187008, i64 93924385189968, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @5, i32 0, i32 0), i64 93924385190448, i32 211, i32 57), !dbg !459
  %88 = fadd double %80, %87, !dbg !459
  call void @fAddHandler(double %80, double %87, double %88, i64 93924385186208, i64 93924385190448, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @5, i32 0, i32 0), i64 93924385190864, i32 211, i32 38), !dbg !460
  %89 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !460
  %90 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %89, i32 0, i32 1, !dbg !461
  store double %88, double* %90, align 8, !dbg !462
  %91 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !463
  %92 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %91, i32 0, i32 0, !dbg !464
  %93 = load double, double* %92, align 8, !dbg !464
  %94 = call double @fabs(double %93) #1, !dbg !465
  %95 = fmul double 0x3CC0000000000000, %94, !dbg !466
  call void @fMulHandler(double 0x3CC0000000000000, double %94, double %95, i64 0, i64 93924385195072, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @5, i32 0, i32 0), i64 93924385195552, i32 212, i32 42), !dbg !467
  %96 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !467
  %97 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %96, i32 0, i32 1, !dbg !468
  %98 = load double, double* %97, align 8, !dbg !469
  %99 = fadd double %98, %95, !dbg !469
  call void @fAddHandler(double %98, double %95, double %99, i64 93924385196776, i64 93924385195552, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @5, i32 0, i32 0), i64 93924385197184, i32 212, i32 17), !dbg !469
  store double %99, double* %97, align 8, !dbg !469
  store i32 0, i32* %3, align 4, !dbg !470
  br label %111, !dbg !470

; <label>:100:                                    ; preds = %62
  br label %101, !dbg !471, !llvm.loop !473

; <label>:101:                                    ; preds = %100
  %102 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !474
  %103 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %102, i32 0, i32 0, !dbg !474
  store double 0x7FF0000000000000, double* %103, align 8, !dbg !474
  %104 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !474
  %105 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %104, i32 0, i32 1, !dbg !474
  store double 0x7FF0000000000000, double* %105, align 8, !dbg !474
  br label %106, !dbg !474, !llvm.loop !477

; <label>:106:                                    ; preds = %101
  call void @gsl_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 216, i32 16), !dbg !479
  store i32 16, i32* %3, align 4, !dbg !479
  br label %111, !dbg !479
                                                  ; No predecessors!
  br label %108, !dbg !482

; <label>:108:                                    ; preds = %107
  br label %109

; <label>:109:                                    ; preds = %108
  br label %110

; <label>:110:                                    ; preds = %109
  br label %111

; <label>:111:                                    ; preds = %110, %106, %66, %28, %15
  %112 = load i32, i32* %3, align 4, !dbg !484
  ret i32 %112, !dbg !484
}

declare void @gsl_error(i8*, i8*, i32, i32) #5

; Function Attrs: nounwind uwtable
define double @gsl_sf_bessel_I0_scaled(double) #0 !dbg !485 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct, align 8
  %5 = alloca i32, align 4
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !488, metadata !86), !dbg !489
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %4, metadata !490, metadata !86), !dbg !491
  call void @llvm.dbg.declare(metadata i32* %5, metadata !492, metadata !86), !dbg !491
  %6 = load double, double* %3, align 8, !dbg !491
  %7 = call i32 @gsl_sf_bessel_I0_scaled_e(double %6, %struct.gsl_sf_result_struct* %4), !dbg !491
  store i32 %7, i32* %5, align 4, !dbg !491
  %8 = load i32, i32* %5, align 4, !dbg !493
  %9 = icmp ne i32 %8, 0, !dbg !493
  %10 = sext i32 %8 to i64, !dbg !491
  %11 = call i1 @iCmpInstHandler(i64 %10, i64 0, i1 %9, i32 33, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @7, i32 0, i32 0), i64 93924385218240, i32 226, i32 3), !dbg !491
  br i1 %11, label %12, label %18, !dbg !491

; <label>:12:                                     ; preds = %1
  br label %13, !dbg !495, !llvm.loop !498

; <label>:13:                                     ; preds = %12
  %14 = load i32, i32* %5, align 4, !dbg !500
  call void @gsl_error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 226, i32 %14), !dbg !500
  %15 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !500
  %16 = load double, double* %15, align 8, !dbg !500
  store double %16, double* %2, align 8, !dbg !500
  br label %21, !dbg !500
                                                  ; No predecessors!
  br label %18, !dbg !503

; <label>:18:                                     ; preds = %17, %1
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !505
  %20 = load double, double* %19, align 8, !dbg !505
  store double %20, double* %2, align 8, !dbg !505
  br label %21, !dbg !505

; <label>:21:                                     ; preds = %18, %13
  %22 = load double, double* %2, align 8, !dbg !507
  ret double %22, !dbg !507
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_bessel_I0(double) #0 !dbg !508 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct, align 8
  %5 = alloca i32, align 4
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !509, metadata !86), !dbg !510
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %4, metadata !511, metadata !86), !dbg !512
  call void @llvm.dbg.declare(metadata i32* %5, metadata !513, metadata !86), !dbg !512
  %6 = load double, double* %3, align 8, !dbg !512
  %7 = call i32 @gsl_sf_bessel_I0_e(double %6, %struct.gsl_sf_result_struct* %4), !dbg !512
  store i32 %7, i32* %5, align 4, !dbg !512
  %8 = load i32, i32* %5, align 4, !dbg !514
  %9 = icmp ne i32 %8, 0, !dbg !514
  %10 = sext i32 %8 to i64, !dbg !512
  %11 = call i1 @iCmpInstHandler(i64 %10, i64 0, i1 %9, i32 33, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @9, i32 0, i32 0), i64 93924385235536, i32 231, i32 3), !dbg !512
  br i1 %11, label %12, label %18, !dbg !512

; <label>:12:                                     ; preds = %1
  br label %13, !dbg !516, !llvm.loop !519

; <label>:13:                                     ; preds = %12
  %14 = load i32, i32* %5, align 4, !dbg !521
  call void @gsl_error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 231, i32 %14), !dbg !521
  %15 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !521
  %16 = load double, double* %15, align 8, !dbg !521
  store double %16, double* %2, align 8, !dbg !521
  br label %21, !dbg !521
                                                  ; No predecessors!
  br label %18, !dbg !524

; <label>:18:                                     ; preds = %17, %1
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !526
  %20 = load double, double* %19, align 8, !dbg !526
  store double %20, double* %2, align 8, !dbg !526
  br label %21, !dbg !526

; <label>:21:                                     ; preds = %18, %13
  %22 = load double, double* %2, align 8, !dbg !528
  ret double %22, !dbg !528
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
!1 = !DIFile(filename: "bessel_I0.c", directory: "/fpcc/gsl-2.5/specfunc")
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
!42 = distinct !DIGlobalVariable(name: "bi0_cs", scope: !0, file: !1, line: 73, type: !43, isLocal: true, isDefinition: true, variable: %struct.cheb_series_struct* @bi0_cs)
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
!55 = distinct !DIGlobalVariable(name: "bi0_data", scope: !0, file: !1, line: 59, type: !56, isLocal: true, isDefinition: true, variable: [12 x double]* @bi0_data)
!56 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 768, align: 64, elements: !57)
!57 = !{!58}
!58 = !DISubrange(count: 12)
!59 = distinct !DIGlobalVariable(name: "ai0_cs", scope: !0, file: !1, line: 103, type: !43, isLocal: true, isDefinition: true, variable: %struct.cheb_series_struct* @ai0_cs)
!60 = distinct !DIGlobalVariable(name: "ai0_data", scope: !0, file: !1, line: 80, type: !61, isLocal: true, isDefinition: true, variable: [21 x double]* @ai0_data)
!61 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 1344, align: 64, elements: !62)
!62 = !{!63}
!63 = !DISubrange(count: 21)
!64 = distinct !DIGlobalVariable(name: "ai02_cs", scope: !0, file: !1, line: 134, type: !43, isLocal: true, isDefinition: true, variable: %struct.cheb_series_struct* @ai02_cs)
!65 = distinct !DIGlobalVariable(name: "ai02_data", scope: !0, file: !1, line: 110, type: !66, isLocal: true, isDefinition: true, variable: [22 x double]* @ai02_data)
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 1408, align: 64, elements: !67)
!67 = !{!68}
!68 = !DISubrange(count: 22)
!69 = !{i32 2, !"Dwarf Version", i32 4}
!70 = !{i32 2, !"Debug Info Version", i32 3}
!71 = !{i32 1, !"PIC Level", i32 2}
!72 = !{!"clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)"}
!73 = distinct !DISubprogram(name: "gsl_sf_bessel_I0_scaled_e", scope: !1, file: !1, line: 144, type: !74, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !84)
!74 = !DISubroutineType(types: !75)
!75 = !{!51, !76, !77}
!76 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !49)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64, align: 64)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !79, line: 41, baseType: !80)
!79 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/fpcc/gsl-2.5/specfunc")
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !79, line: 37, size: 128, align: 64, elements: !81)
!81 = !{!82, !83}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !80, file: !79, line: 38, baseType: !49, size: 64, align: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !80, file: !79, line: 39, baseType: !49, size: 64, align: 64, offset: 64)
!84 = !{}
!85 = !DILocalVariable(name: "x", arg: 1, scope: !73, file: !1, line: 144, type: !76)
!86 = !DIExpression()
!87 = !DILocation(line: 144, column: 44, scope: !73)
!88 = !DILocalVariable(name: "result", arg: 2, scope: !73, file: !1, line: 144, type: !77)
!89 = !DILocation(line: 144, column: 63, scope: !73)
!90 = !DILocalVariable(name: "y", scope: !73, file: !1, line: 146, type: !49)
!91 = !DILocation(line: 146, column: 10, scope: !73)
!92 = !DILocation(line: 146, column: 19, scope: !73)
!93 = !DILocation(line: 146, column: 14, scope: !73)
!94 = !DILocation(line: 150, column: 6, scope: !95)
!95 = distinct !DILexicalBlock(scope: !73, file: !1, line: 150, column: 6)
!96 = !DILocation(line: 150, column: 8, scope: !95)
!97 = !DILocation(line: 150, column: 6, scope: !73)
!98 = !DILocation(line: 151, column: 25, scope: !99)
!99 = distinct !DILexicalBlock(scope: !95, file: !1, line: 150, column: 38)
!100 = !DILocation(line: 151, column: 23, scope: !99)
!101 = !DILocation(line: 151, column: 5, scope: !99)
!102 = !DILocation(line: 151, column: 13, scope: !99)
!103 = !DILocation(line: 151, column: 17, scope: !99)
!104 = !DILocation(line: 152, column: 23, scope: !99)
!105 = !DILocation(line: 152, column: 22, scope: !99)
!106 = !DILocation(line: 152, column: 25, scope: !99)
!107 = !DILocation(line: 152, column: 24, scope: !99)
!108 = !DILocation(line: 152, column: 5, scope: !99)
!109 = !DILocation(line: 152, column: 13, scope: !99)
!110 = !DILocation(line: 152, column: 17, scope: !99)
!111 = !DILocation(line: 153, column: 5, scope: !99)
!112 = !DILocation(line: 155, column: 11, scope: !113)
!113 = distinct !DILexicalBlock(scope: !95, file: !1, line: 155, column: 11)
!114 = !DILocation(line: 155, column: 13, scope: !113)
!115 = !DILocation(line: 155, column: 11, scope: !95)
!116 = !DILocalVariable(name: "ey", scope: !117, file: !1, line: 156, type: !76)
!117 = distinct !DILexicalBlock(scope: !113, file: !1, line: 155, column: 21)
!118 = !DILocation(line: 156, column: 18, scope: !117)
!119 = !DILocation(line: 156, column: 28, scope: !117)
!120 = !DILocation(line: 156, column: 27, scope: !117)
!121 = !DILocation(line: 156, column: 23, scope: !117)
!122 = !DILocalVariable(name: "c", scope: !117, file: !1, line: 157, type: !78)
!123 = !DILocation(line: 157, column: 19, scope: !117)
!124 = !DILocation(line: 158, column: 26, scope: !117)
!125 = !DILocation(line: 158, column: 28, scope: !117)
!126 = !DILocation(line: 158, column: 27, scope: !117)
!127 = !DILocation(line: 158, column: 29, scope: !117)
!128 = !DILocation(line: 158, column: 33, scope: !117)
!129 = !DILocation(line: 158, column: 5, scope: !117)
!130 = !DILocation(line: 159, column: 19, scope: !117)
!131 = !DILocation(line: 159, column: 34, scope: !117)
!132 = !DILocation(line: 159, column: 30, scope: !117)
!133 = !DILocation(line: 159, column: 22, scope: !117)
!134 = !DILocation(line: 159, column: 5, scope: !117)
!135 = !DILocation(line: 159, column: 13, scope: !117)
!136 = !DILocation(line: 159, column: 17, scope: !117)
!137 = !DILocation(line: 160, column: 42, scope: !117)
!138 = !DILocation(line: 160, column: 50, scope: !117)
!139 = !DILocation(line: 160, column: 37, scope: !117)
!140 = !DILocation(line: 160, column: 35, scope: !117)
!141 = !DILocation(line: 160, column: 57, scope: !117)
!142 = !DILocation(line: 160, column: 64, scope: !117)
!143 = !DILocation(line: 160, column: 60, scope: !117)
!144 = !DILocation(line: 160, column: 55, scope: !117)
!145 = !DILocation(line: 160, column: 5, scope: !117)
!146 = !DILocation(line: 160, column: 13, scope: !117)
!147 = !DILocation(line: 160, column: 17, scope: !117)
!148 = !DILocation(line: 161, column: 5, scope: !117)
!149 = !DILocation(line: 163, column: 11, scope: !150)
!150 = distinct !DILexicalBlock(scope: !113, file: !1, line: 163, column: 11)
!151 = !DILocation(line: 163, column: 13, scope: !150)
!152 = !DILocation(line: 163, column: 11, scope: !113)
!153 = !DILocalVariable(name: "sy", scope: !154, file: !1, line: 164, type: !76)
!154 = distinct !DILexicalBlock(scope: !150, file: !1, line: 163, column: 21)
!155 = !DILocation(line: 164, column: 18, scope: !154)
!156 = !DILocation(line: 164, column: 28, scope: !154)
!157 = !DILocation(line: 164, column: 23, scope: !154)
!158 = !DILocalVariable(name: "c", scope: !154, file: !1, line: 165, type: !78)
!159 = !DILocation(line: 165, column: 19, scope: !154)
!160 = !DILocation(line: 166, column: 32, scope: !154)
!161 = !DILocation(line: 166, column: 31, scope: !154)
!162 = !DILocation(line: 166, column: 33, scope: !154)
!163 = !DILocation(line: 166, column: 39, scope: !154)
!164 = !DILocation(line: 166, column: 5, scope: !154)
!165 = !DILocation(line: 167, column: 31, scope: !154)
!166 = !DILocation(line: 167, column: 27, scope: !154)
!167 = !DILocation(line: 167, column: 38, scope: !154)
!168 = !DILocation(line: 167, column: 36, scope: !154)
!169 = !DILocation(line: 167, column: 5, scope: !154)
!170 = !DILocation(line: 167, column: 13, scope: !154)
!171 = !DILocation(line: 167, column: 18, scope: !154)
!172 = !DILocation(line: 168, column: 60, scope: !154)
!173 = !DILocation(line: 168, column: 53, scope: !154)
!174 = !DILocation(line: 168, column: 51, scope: !154)
!175 = !DILocation(line: 168, column: 42, scope: !154)
!176 = !DILocation(line: 168, column: 68, scope: !154)
!177 = !DILocation(line: 168, column: 66, scope: !154)
!178 = !DILocation(line: 168, column: 5, scope: !154)
!179 = !DILocation(line: 168, column: 13, scope: !154)
!180 = !DILocation(line: 168, column: 18, scope: !154)
!181 = !DILocation(line: 169, column: 22, scope: !154)
!182 = !DILocation(line: 169, column: 28, scope: !154)
!183 = !DILocation(line: 169, column: 26, scope: !154)
!184 = !DILocation(line: 169, column: 5, scope: !154)
!185 = !DILocation(line: 169, column: 13, scope: !154)
!186 = !DILocation(line: 169, column: 17, scope: !154)
!187 = !DILocation(line: 170, column: 49, scope: !154)
!188 = !DILocation(line: 170, column: 57, scope: !154)
!189 = !DILocation(line: 170, column: 44, scope: !154)
!190 = !DILocation(line: 170, column: 42, scope: !154)
!191 = !DILocation(line: 170, column: 5, scope: !154)
!192 = !DILocation(line: 170, column: 13, scope: !154)
!193 = !DILocation(line: 170, column: 17, scope: !154)
!194 = !DILocation(line: 171, column: 5, scope: !154)
!195 = !DILocalVariable(name: "sy", scope: !196, file: !1, line: 174, type: !76)
!196 = distinct !DILexicalBlock(scope: !150, file: !1, line: 173, column: 8)
!197 = !DILocation(line: 174, column: 18, scope: !196)
!198 = !DILocation(line: 174, column: 28, scope: !196)
!199 = !DILocation(line: 174, column: 23, scope: !196)
!200 = !DILocalVariable(name: "c", scope: !196, file: !1, line: 175, type: !78)
!201 = !DILocation(line: 175, column: 19, scope: !196)
!202 = !DILocation(line: 176, column: 32, scope: !196)
!203 = !DILocation(line: 176, column: 31, scope: !196)
!204 = !DILocation(line: 176, column: 33, scope: !196)
!205 = !DILocation(line: 176, column: 5, scope: !196)
!206 = !DILocation(line: 177, column: 30, scope: !196)
!207 = !DILocation(line: 177, column: 26, scope: !196)
!208 = !DILocation(line: 177, column: 37, scope: !196)
!209 = !DILocation(line: 177, column: 35, scope: !196)
!210 = !DILocation(line: 177, column: 5, scope: !196)
!211 = !DILocation(line: 177, column: 13, scope: !196)
!212 = !DILocation(line: 177, column: 17, scope: !196)
!213 = !DILocation(line: 178, column: 60, scope: !196)
!214 = !DILocation(line: 178, column: 53, scope: !196)
!215 = !DILocation(line: 178, column: 51, scope: !196)
!216 = !DILocation(line: 178, column: 42, scope: !196)
!217 = !DILocation(line: 178, column: 68, scope: !196)
!218 = !DILocation(line: 178, column: 66, scope: !196)
!219 = !DILocation(line: 178, column: 5, scope: !196)
!220 = !DILocation(line: 178, column: 13, scope: !196)
!221 = !DILocation(line: 178, column: 18, scope: !196)
!222 = !DILocation(line: 179, column: 22, scope: !196)
!223 = !DILocation(line: 179, column: 28, scope: !196)
!224 = !DILocation(line: 179, column: 26, scope: !196)
!225 = !DILocation(line: 179, column: 5, scope: !196)
!226 = !DILocation(line: 179, column: 13, scope: !196)
!227 = !DILocation(line: 179, column: 17, scope: !196)
!228 = !DILocation(line: 180, column: 49, scope: !196)
!229 = !DILocation(line: 180, column: 57, scope: !196)
!230 = !DILocation(line: 180, column: 44, scope: !196)
!231 = !DILocation(line: 180, column: 42, scope: !196)
!232 = !DILocation(line: 180, column: 5, scope: !196)
!233 = !DILocation(line: 180, column: 13, scope: !196)
!234 = !DILocation(line: 180, column: 17, scope: !196)
!235 = !DILocation(line: 181, column: 5, scope: !196)
!236 = !DILocation(line: 183, column: 1, scope: !73)
!237 = distinct !DISubprogram(name: "cheb_eval_e", scope: !238, file: !238, line: 3, type: !239, isLocal: true, isDefinition: true, scopeLine: 6, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !84)
!238 = !DIFile(filename: "./cheb_eval.c", directory: "/fpcc/gsl-2.5/specfunc")
!239 = !DISubroutineType(types: !240)
!240 = !{!51, !241, !76, !77}
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64, align: 64)
!242 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!243 = !DILocalVariable(name: "cs", arg: 1, scope: !237, file: !238, line: 3, type: !241)
!244 = !DILocation(line: 3, column: 33, scope: !237)
!245 = !DILocalVariable(name: "x", arg: 2, scope: !237, file: !238, line: 4, type: !76)
!246 = !DILocation(line: 4, column: 26, scope: !237)
!247 = !DILocalVariable(name: "result", arg: 3, scope: !237, file: !238, line: 5, type: !77)
!248 = !DILocation(line: 5, column: 29, scope: !237)
!249 = !DILocalVariable(name: "j", scope: !237, file: !238, line: 7, type: !51)
!250 = !DILocation(line: 7, column: 7, scope: !237)
!251 = !DILocalVariable(name: "d", scope: !237, file: !238, line: 8, type: !49)
!252 = !DILocation(line: 8, column: 10, scope: !237)
!253 = !DILocalVariable(name: "dd", scope: !237, file: !238, line: 9, type: !49)
!254 = !DILocation(line: 9, column: 10, scope: !237)
!255 = !DILocalVariable(name: "y", scope: !237, file: !238, line: 11, type: !49)
!256 = !DILocation(line: 11, column: 10, scope: !237)
!257 = !DILocation(line: 11, column: 20, scope: !237)
!258 = !DILocation(line: 11, column: 19, scope: !237)
!259 = !DILocation(line: 11, column: 24, scope: !237)
!260 = !DILocation(line: 11, column: 28, scope: !237)
!261 = !DILocation(line: 11, column: 22, scope: !237)
!262 = !DILocation(line: 11, column: 32, scope: !237)
!263 = !DILocation(line: 11, column: 36, scope: !237)
!264 = !DILocation(line: 11, column: 30, scope: !237)
!265 = !DILocation(line: 11, column: 42, scope: !237)
!266 = !DILocation(line: 11, column: 46, scope: !237)
!267 = !DILocation(line: 11, column: 50, scope: !237)
!268 = !DILocation(line: 11, column: 54, scope: !237)
!269 = !DILocation(line: 11, column: 48, scope: !237)
!270 = !DILocation(line: 11, column: 39, scope: !237)
!271 = !DILocalVariable(name: "y2", scope: !237, file: !238, line: 12, type: !49)
!272 = !DILocation(line: 12, column: 10, scope: !237)
!273 = !DILocation(line: 12, column: 21, scope: !237)
!274 = !DILocation(line: 12, column: 19, scope: !237)
!275 = !DILocalVariable(name: "e", scope: !237, file: !238, line: 14, type: !49)
!276 = !DILocation(line: 14, column: 10, scope: !237)
!277 = !DILocation(line: 16, column: 11, scope: !278)
!278 = distinct !DILexicalBlock(scope: !237, file: !238, line: 16, column: 3)
!279 = !DILocation(line: 16, column: 15, scope: !278)
!280 = !DILocation(line: 16, column: 9, scope: !278)
!281 = !DILocation(line: 16, column: 7, scope: !278)
!282 = !DILocation(line: 16, column: 22, scope: !283)
!283 = !DILexicalBlockFile(scope: !284, file: !238, discriminator: 1)
!284 = distinct !DILexicalBlock(scope: !278, file: !238, line: 16, column: 3)
!285 = !DILocation(line: 16, column: 23, scope: !283)
!286 = !DILocation(line: 16, column: 3, scope: !283)
!287 = !DILocalVariable(name: "temp", scope: !288, file: !238, line: 17, type: !49)
!288 = distinct !DILexicalBlock(scope: !284, file: !238, line: 16, column: 33)
!289 = !DILocation(line: 17, column: 12, scope: !288)
!290 = !DILocation(line: 17, column: 19, scope: !288)
!291 = !DILocation(line: 18, column: 9, scope: !288)
!292 = !DILocation(line: 18, column: 12, scope: !288)
!293 = !DILocation(line: 18, column: 11, scope: !288)
!294 = !DILocation(line: 18, column: 16, scope: !288)
!295 = !DILocation(line: 18, column: 14, scope: !288)
!296 = !DILocation(line: 18, column: 27, scope: !288)
!297 = !DILocation(line: 18, column: 21, scope: !288)
!298 = !DILocation(line: 18, column: 25, scope: !288)
!299 = !DILocation(line: 18, column: 19, scope: !288)
!300 = !DILocation(line: 18, column: 7, scope: !288)
!301 = !DILocation(line: 19, column: 15, scope: !288)
!302 = !DILocation(line: 19, column: 18, scope: !288)
!303 = !DILocation(line: 19, column: 17, scope: !288)
!304 = !DILocation(line: 19, column: 10, scope: !288)
!305 = !DILocation(line: 19, column: 31, scope: !288)
!306 = !DILocation(line: 19, column: 26, scope: !307)
!307 = !DILexicalBlockFile(scope: !288, file: !238, discriminator: 1)
!308 = !DILocation(line: 19, column: 24, scope: !288)
!309 = !DILocation(line: 19, column: 48, scope: !288)
!310 = !DILocation(line: 19, column: 42, scope: !288)
!311 = !DILocation(line: 19, column: 46, scope: !288)
!312 = !DILocation(line: 19, column: 37, scope: !313)
!313 = !DILexicalBlockFile(scope: !288, file: !238, discriminator: 2)
!314 = !DILocation(line: 19, column: 35, scope: !288)
!315 = !DILocation(line: 19, column: 7, scope: !288)
!316 = !DILocation(line: 20, column: 10, scope: !288)
!317 = !DILocation(line: 20, column: 8, scope: !288)
!318 = !DILocation(line: 21, column: 3, scope: !288)
!319 = !DILocation(line: 16, column: 29, scope: !320)
!320 = !DILexicalBlockFile(scope: !284, file: !238, discriminator: 2)
!321 = !DILocation(line: 16, column: 3, scope: !320)
!322 = distinct !{!322, !323}
!323 = !DILocation(line: 16, column: 3, scope: !237)
!324 = !DILocalVariable(name: "temp", scope: !325, file: !238, line: 24, type: !49)
!325 = distinct !DILexicalBlock(scope: !237, file: !238, line: 23, column: 3)
!326 = !DILocation(line: 24, column: 12, scope: !325)
!327 = !DILocation(line: 24, column: 19, scope: !325)
!328 = !DILocation(line: 25, column: 9, scope: !325)
!329 = !DILocation(line: 25, column: 11, scope: !325)
!330 = !DILocation(line: 25, column: 10, scope: !325)
!331 = !DILocation(line: 25, column: 15, scope: !325)
!332 = !DILocation(line: 25, column: 13, scope: !325)
!333 = !DILocation(line: 25, column: 26, scope: !325)
!334 = !DILocation(line: 25, column: 30, scope: !325)
!335 = !DILocation(line: 25, column: 24, scope: !325)
!336 = !DILocation(line: 25, column: 18, scope: !325)
!337 = !DILocation(line: 25, column: 7, scope: !325)
!338 = !DILocation(line: 26, column: 15, scope: !325)
!339 = !DILocation(line: 26, column: 17, scope: !325)
!340 = !DILocation(line: 26, column: 16, scope: !325)
!341 = !DILocation(line: 26, column: 10, scope: !325)
!342 = !DILocation(line: 26, column: 30, scope: !325)
!343 = !DILocation(line: 26, column: 25, scope: !344)
!344 = !DILexicalBlockFile(scope: !325, file: !238, discriminator: 1)
!345 = !DILocation(line: 26, column: 23, scope: !325)
!346 = !DILocation(line: 26, column: 47, scope: !325)
!347 = !DILocation(line: 26, column: 51, scope: !325)
!348 = !DILocation(line: 26, column: 42, scope: !349)
!349 = !DILexicalBlockFile(scope: !325, file: !238, discriminator: 2)
!350 = !DILocation(line: 26, column: 40, scope: !325)
!351 = !DILocation(line: 26, column: 34, scope: !325)
!352 = !DILocation(line: 26, column: 7, scope: !325)
!353 = !DILocation(line: 29, column: 17, scope: !237)
!354 = !DILocation(line: 29, column: 3, scope: !237)
!355 = !DILocation(line: 29, column: 11, scope: !237)
!356 = !DILocation(line: 29, column: 15, scope: !237)
!357 = !DILocation(line: 30, column: 35, scope: !237)
!358 = !DILocation(line: 30, column: 33, scope: !237)
!359 = !DILocation(line: 30, column: 50, scope: !237)
!360 = !DILocation(line: 30, column: 54, scope: !237)
!361 = !DILocation(line: 30, column: 44, scope: !237)
!362 = !DILocation(line: 30, column: 48, scope: !237)
!363 = !DILocation(line: 30, column: 39, scope: !237)
!364 = !DILocation(line: 30, column: 37, scope: !237)
!365 = !DILocation(line: 30, column: 3, scope: !237)
!366 = !DILocation(line: 30, column: 11, scope: !237)
!367 = !DILocation(line: 30, column: 15, scope: !237)
!368 = !DILocation(line: 32, column: 3, scope: !237)
!369 = distinct !DISubprogram(name: "gsl_sf_bessel_I0_e", scope: !1, file: !1, line: 186, type: !74, isLocal: false, isDefinition: true, scopeLine: 187, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !84)
!370 = !DILocalVariable(name: "x", arg: 1, scope: !369, file: !1, line: 186, type: !76)
!371 = !DILocation(line: 186, column: 37, scope: !369)
!372 = !DILocalVariable(name: "result", arg: 2, scope: !369, file: !1, line: 186, type: !77)
!373 = !DILocation(line: 186, column: 56, scope: !369)
!374 = !DILocalVariable(name: "y", scope: !369, file: !1, line: 188, type: !49)
!375 = !DILocation(line: 188, column: 10, scope: !369)
!376 = !DILocation(line: 188, column: 19, scope: !369)
!377 = !DILocation(line: 188, column: 14, scope: !369)
!378 = !DILocation(line: 192, column: 6, scope: !379)
!379 = distinct !DILexicalBlock(scope: !369, file: !1, line: 192, column: 6)
!380 = !DILocation(line: 192, column: 8, scope: !379)
!381 = !DILocation(line: 192, column: 6, scope: !369)
!382 = !DILocation(line: 193, column: 5, scope: !383)
!383 = distinct !DILexicalBlock(scope: !379, file: !1, line: 192, column: 38)
!384 = !DILocation(line: 193, column: 13, scope: !383)
!385 = !DILocation(line: 193, column: 17, scope: !383)
!386 = !DILocation(line: 194, column: 23, scope: !383)
!387 = !DILocation(line: 194, column: 22, scope: !383)
!388 = !DILocation(line: 194, column: 25, scope: !383)
!389 = !DILocation(line: 194, column: 24, scope: !383)
!390 = !DILocation(line: 194, column: 5, scope: !383)
!391 = !DILocation(line: 194, column: 13, scope: !383)
!392 = !DILocation(line: 194, column: 17, scope: !383)
!393 = !DILocation(line: 195, column: 5, scope: !383)
!394 = !DILocation(line: 197, column: 11, scope: !395)
!395 = distinct !DILexicalBlock(scope: !379, file: !1, line: 197, column: 11)
!396 = !DILocation(line: 197, column: 13, scope: !395)
!397 = !DILocation(line: 197, column: 11, scope: !379)
!398 = !DILocalVariable(name: "c", scope: !399, file: !1, line: 198, type: !78)
!399 = distinct !DILexicalBlock(scope: !395, file: !1, line: 197, column: 21)
!400 = !DILocation(line: 198, column: 19, scope: !399)
!401 = !DILocation(line: 199, column: 26, scope: !399)
!402 = !DILocation(line: 199, column: 28, scope: !399)
!403 = !DILocation(line: 199, column: 27, scope: !399)
!404 = !DILocation(line: 199, column: 29, scope: !399)
!405 = !DILocation(line: 199, column: 33, scope: !399)
!406 = !DILocation(line: 199, column: 5, scope: !399)
!407 = !DILocation(line: 200, column: 29, scope: !399)
!408 = !DILocation(line: 200, column: 25, scope: !399)
!409 = !DILocation(line: 200, column: 5, scope: !399)
!410 = !DILocation(line: 200, column: 13, scope: !399)
!411 = !DILocation(line: 200, column: 18, scope: !399)
!412 = !DILocation(line: 201, column: 53, scope: !399)
!413 = !DILocation(line: 201, column: 46, scope: !399)
!414 = !DILocation(line: 201, column: 44, scope: !399)
!415 = !DILocation(line: 201, column: 36, scope: !399)
!416 = !DILocation(line: 201, column: 5, scope: !399)
!417 = !DILocation(line: 201, column: 13, scope: !399)
!418 = !DILocation(line: 201, column: 18, scope: !399)
!419 = !DILocation(line: 202, column: 22, scope: !399)
!420 = !DILocation(line: 202, column: 5, scope: !399)
!421 = !DILocation(line: 202, column: 13, scope: !399)
!422 = !DILocation(line: 202, column: 17, scope: !399)
!423 = !DILocation(line: 203, column: 49, scope: !399)
!424 = !DILocation(line: 203, column: 57, scope: !399)
!425 = !DILocation(line: 203, column: 44, scope: !399)
!426 = !DILocation(line: 203, column: 42, scope: !399)
!427 = !DILocation(line: 203, column: 5, scope: !399)
!428 = !DILocation(line: 203, column: 13, scope: !399)
!429 = !DILocation(line: 203, column: 17, scope: !399)
!430 = !DILocation(line: 204, column: 5, scope: !399)
!431 = !DILocation(line: 206, column: 11, scope: !432)
!432 = distinct !DILexicalBlock(scope: !395, file: !1, line: 206, column: 11)
!433 = !DILocation(line: 206, column: 13, scope: !432)
!434 = !DILocation(line: 206, column: 11, scope: !395)
!435 = !DILocalVariable(name: "ey", scope: !436, file: !1, line: 207, type: !76)
!436 = distinct !DILexicalBlock(scope: !432, file: !1, line: 206, column: 38)
!437 = !DILocation(line: 207, column: 18, scope: !436)
!438 = !DILocation(line: 207, column: 27, scope: !436)
!439 = !DILocation(line: 207, column: 23, scope: !436)
!440 = !DILocalVariable(name: "b_scaled", scope: !436, file: !1, line: 208, type: !78)
!441 = !DILocation(line: 208, column: 19, scope: !436)
!442 = !DILocation(line: 209, column: 31, scope: !436)
!443 = !DILocation(line: 209, column: 5, scope: !436)
!444 = !DILocation(line: 210, column: 20, scope: !436)
!445 = !DILocation(line: 210, column: 34, scope: !436)
!446 = !DILocation(line: 210, column: 23, scope: !436)
!447 = !DILocation(line: 210, column: 5, scope: !436)
!448 = !DILocation(line: 210, column: 13, scope: !436)
!449 = !DILocation(line: 210, column: 18, scope: !436)
!450 = !DILocation(line: 211, column: 20, scope: !436)
!451 = !DILocation(line: 211, column: 34, scope: !436)
!452 = !DILocation(line: 211, column: 23, scope: !436)
!453 = !DILocation(line: 211, column: 40, scope: !436)
!454 = !DILocation(line: 211, column: 41, scope: !436)
!455 = !DILocation(line: 211, column: 63, scope: !436)
!456 = !DILocation(line: 211, column: 71, scope: !436)
!457 = !DILocation(line: 211, column: 58, scope: !436)
!458 = !DILocation(line: 211, column: 57, scope: !436)
!459 = !DILocation(line: 211, column: 38, scope: !436)
!460 = !DILocation(line: 211, column: 5, scope: !436)
!461 = !DILocation(line: 211, column: 13, scope: !436)
!462 = !DILocation(line: 211, column: 18, scope: !436)
!463 = !DILocation(line: 212, column: 49, scope: !436)
!464 = !DILocation(line: 212, column: 57, scope: !436)
!465 = !DILocation(line: 212, column: 44, scope: !436)
!466 = !DILocation(line: 212, column: 42, scope: !436)
!467 = !DILocation(line: 212, column: 5, scope: !436)
!468 = !DILocation(line: 212, column: 13, scope: !436)
!469 = !DILocation(line: 212, column: 17, scope: !436)
!470 = !DILocation(line: 213, column: 5, scope: !436)
!471 = !DILocation(line: 216, column: 5, scope: !472)
!472 = distinct !DILexicalBlock(scope: !432, file: !1, line: 215, column: 8)
!473 = distinct !{!473, !471}
!474 = !DILocation(line: 216, column: 5, scope: !475)
!475 = !DILexicalBlockFile(scope: !476, file: !1, discriminator: 1)
!476 = distinct !DILexicalBlock(scope: !472, file: !1, line: 216, column: 5)
!477 = distinct !{!477, !478}
!478 = !DILocation(line: 216, column: 5, scope: !476)
!479 = !DILocation(line: 216, column: 5, scope: !480)
!480 = !DILexicalBlockFile(scope: !481, file: !1, discriminator: 2)
!481 = distinct !DILexicalBlock(scope: !476, file: !1, line: 216, column: 5)
!482 = !DILocation(line: 216, column: 5, scope: !483)
!483 = !DILexicalBlockFile(scope: !476, file: !1, discriminator: 3)
!484 = !DILocation(line: 218, column: 1, scope: !369)
!485 = distinct !DISubprogram(name: "gsl_sf_bessel_I0_scaled", scope: !1, file: !1, line: 224, type: !486, isLocal: false, isDefinition: true, scopeLine: 225, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !84)
!486 = !DISubroutineType(types: !487)
!487 = !{!49, !76}
!488 = !DILocalVariable(name: "x", arg: 1, scope: !485, file: !1, line: 224, type: !76)
!489 = !DILocation(line: 224, column: 45, scope: !485)
!490 = !DILocalVariable(name: "result", scope: !485, file: !1, line: 226, type: !78)
!491 = !DILocation(line: 226, column: 3, scope: !485)
!492 = !DILocalVariable(name: "status", scope: !485, file: !1, line: 226, type: !51)
!493 = !DILocation(line: 226, column: 3, scope: !494)
!494 = distinct !DILexicalBlock(scope: !485, file: !1, line: 226, column: 3)
!495 = !DILocation(line: 226, column: 3, scope: !496)
!496 = !DILexicalBlockFile(scope: !497, file: !1, discriminator: 1)
!497 = distinct !DILexicalBlock(scope: !494, file: !1, line: 226, column: 3)
!498 = distinct !{!498, !499}
!499 = !DILocation(line: 226, column: 3, scope: !497)
!500 = !DILocation(line: 226, column: 3, scope: !501)
!501 = !DILexicalBlockFile(scope: !502, file: !1, discriminator: 2)
!502 = distinct !DILexicalBlock(scope: !497, file: !1, line: 226, column: 3)
!503 = !DILocation(line: 226, column: 3, scope: !504)
!504 = !DILexicalBlockFile(scope: !497, file: !1, discriminator: 3)
!505 = !DILocation(line: 226, column: 3, scope: !506)
!506 = !DILexicalBlockFile(scope: !485, file: !1, discriminator: 4)
!507 = !DILocation(line: 227, column: 1, scope: !485)
!508 = distinct !DISubprogram(name: "gsl_sf_bessel_I0", scope: !1, file: !1, line: 229, type: !486, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !84)
!509 = !DILocalVariable(name: "x", arg: 1, scope: !508, file: !1, line: 229, type: !76)
!510 = !DILocation(line: 229, column: 38, scope: !508)
!511 = !DILocalVariable(name: "result", scope: !508, file: !1, line: 231, type: !78)
!512 = !DILocation(line: 231, column: 3, scope: !508)
!513 = !DILocalVariable(name: "status", scope: !508, file: !1, line: 231, type: !51)
!514 = !DILocation(line: 231, column: 3, scope: !515)
!515 = distinct !DILexicalBlock(scope: !508, file: !1, line: 231, column: 3)
!516 = !DILocation(line: 231, column: 3, scope: !517)
!517 = !DILexicalBlockFile(scope: !518, file: !1, discriminator: 1)
!518 = distinct !DILexicalBlock(scope: !515, file: !1, line: 231, column: 3)
!519 = distinct !{!519, !520}
!520 = !DILocation(line: 231, column: 3, scope: !518)
!521 = !DILocation(line: 231, column: 3, scope: !522)
!522 = !DILexicalBlockFile(scope: !523, file: !1, discriminator: 2)
!523 = distinct !DILexicalBlock(scope: !518, file: !1, line: 231, column: 3)
!524 = !DILocation(line: 231, column: 3, scope: !525)
!525 = !DILexicalBlockFile(scope: !518, file: !1, discriminator: 3)
!526 = !DILocation(line: 231, column: 3, scope: !527)
!527 = !DILexicalBlockFile(scope: !508, file: !1, discriminator: 4)
!528 = !DILocation(line: 232, column: 1, scope: !508)
