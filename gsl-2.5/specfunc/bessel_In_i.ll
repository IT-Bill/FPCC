; ModuleID = 'bessel_In.ll'
source_filename = "bessel_In.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsl_sf_result_struct = type { double, double }

@.str = private unnamed_addr constant [13 x i8] c"domain error\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"bessel_In.c\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"overflow\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"gsl_sf_bessel_In_scaled_e(n, x, &result)\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"gsl_sf_bessel_In_e(n, x, &result)\00", align 1
@0 = private unnamed_addr constant [26 x i8] c"gsl_sf_bessel_In_scaled_e\00"
@1 = private unnamed_addr constant [13 x i8] c"bessel_In.ll\00"
@2 = private unnamed_addr constant [30 x i8] c"gsl_sf_bessel_In_scaled_array\00"
@3 = private unnamed_addr constant [13 x i8] c"bessel_In.ll\00"
@4 = private unnamed_addr constant [19 x i8] c"gsl_sf_bessel_In_e\00"
@5 = private unnamed_addr constant [13 x i8] c"bessel_In.ll\00"
@6 = private unnamed_addr constant [23 x i8] c"gsl_sf_bessel_In_array\00"
@7 = private unnamed_addr constant [13 x i8] c"bessel_In.ll\00"
@8 = private unnamed_addr constant [24 x i8] c"gsl_sf_bessel_In_scaled\00"
@9 = private unnamed_addr constant [13 x i8] c"bessel_In.ll\00"
@10 = private unnamed_addr constant [17 x i8] c"gsl_sf_bessel_In\00"
@11 = private unnamed_addr constant [13 x i8] c"bessel_In.ll\00"

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_bessel_In_scaled_e(i32, double, %struct.gsl_sf_result_struct*) #0 !dbg !48 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca %struct.gsl_sf_result_struct*, align 8
  %8 = alloca double, align 8
  %9 = alloca %struct.gsl_sf_result_struct, align 8
  %10 = alloca double, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.gsl_sf_result_struct, align 8
  %13 = alloca i32, align 4
  %14 = alloca double, align 8
  %15 = alloca i32, align 4
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.gsl_sf_result_struct, align 8
  %23 = alloca %struct.gsl_sf_result_struct, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca double, align 8
  %27 = alloca double, align 8
  %28 = alloca double, align 8
  %29 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !60, metadata !61), !dbg !62
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !63, metadata !61), !dbg !64
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %7, metadata !65, metadata !61), !dbg !66
  call void @llvm.dbg.declare(metadata double* %8, metadata !67, metadata !61), !dbg !68
  %30 = load double, double* %6, align 8, !dbg !69
  %31 = call double @fabs(double %30) #1, !dbg !70
  store double %31, double* %8, align 8, !dbg !68
  %32 = load i32, i32* %5, align 4, !dbg !71
  %33 = call i32 @abs(i32 %32) #1, !dbg !72
  store i32 %33, i32* %5, align 4, !dbg !73
  %34 = load i32, i32* %5, align 4, !dbg !74
  %35 = icmp eq i32 %34, 0, !dbg !76
  %36 = sext i32 %34 to i64, !dbg !77
  %37 = call i1 @iCmpInstHandler(i64 %36, i64 0, i1 %35, i32 32, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94049490502752, i32 43, i32 8), !dbg !77
  br i1 %37, label %38, label %42, !dbg !77

; <label>:38:                                     ; preds = %3
  %39 = load double, double* %6, align 8, !dbg !78
  %40 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !80
  %41 = call i32 @gsl_sf_bessel_I0_scaled_e(double %39, %struct.gsl_sf_result_struct* %40), !dbg !81
  store i32 %41, i32* %4, align 4, !dbg !82
  br label %362, !dbg !82

; <label>:42:                                     ; preds = %3
  %43 = load i32, i32* %5, align 4, !dbg !83
  %44 = icmp eq i32 %43, 1, !dbg !85
  %45 = sext i32 %43 to i64, !dbg !86
  %46 = call i1 @iCmpInstHandler(i64 %45, i64 1, i1 %44, i32 32, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94049490508128, i32 46, i32 13), !dbg !86
  br i1 %46, label %47, label %51, !dbg !86

; <label>:47:                                     ; preds = %42
  %48 = load double, double* %6, align 8, !dbg !87
  %49 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !89
  %50 = call i32 @gsl_sf_bessel_I1_scaled_e(double %48, %struct.gsl_sf_result_struct* %49), !dbg !90
  store i32 %50, i32* %4, align 4, !dbg !91
  br label %362, !dbg !91

; <label>:51:                                     ; preds = %42
  %52 = load double, double* %6, align 8, !dbg !92
  %53 = fcmp oeq double %52, 0.000000e+00, !dbg !94
  %54 = call i1 @fCmpInstHandler(double %52, double 0.000000e+00, i1 %53, i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94049490515440, i32 49, i32 13), !dbg !95
  br i1 %54, label %55, label %60, !dbg !95

; <label>:55:                                     ; preds = %51
  %56 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !96
  %57 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %56, i32 0, i32 0, !dbg !98
  store double 0.000000e+00, double* %57, align 8, !dbg !99
  %58 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !100
  %59 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %58, i32 0, i32 1, !dbg !101
  store double 0.000000e+00, double* %59, align 8, !dbg !102
  store i32 0, i32* %4, align 4, !dbg !103
  br label %362, !dbg !103

; <label>:60:                                     ; preds = %51
  %61 = load double, double* %6, align 8, !dbg !104
  %62 = load double, double* %6, align 8, !dbg !106
  %63 = fmul double %61, %62, !dbg !107
  call void @fMulHandler(double %61, double %62, double %63, i64 94049490521048, i64 94049490521368, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94049490521776, i32 54, i32 12), !dbg !108
  %64 = load i32, i32* %5, align 4, !dbg !108
  %65 = sitofp i32 %64 to double, !dbg !108
  %66 = fadd double %65, 1.000000e+00, !dbg !109
  call void @fAddHandler(double %65, double 1.000000e+00, double %66, i64 94049490522552, i64 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94049490524320, i32 54, i32 24), !dbg !110
  %67 = fmul double 1.000000e+01, %66, !dbg !110
  call void @fMulHandler(double 1.000000e+01, double %66, double %67, i64 0, i64 94049490524320, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94049490524800, i32 54, i32 21), !dbg !111
  %68 = fdiv double %67, 0x4005BF0A8B145769, !dbg !111
  call void @fDivHandler(double %67, double 0x4005BF0A8B145769, double %68, i64 94049490524800, i64 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94049490525248, i32 54, i32 29), !dbg !112
  %69 = fcmp olt double %63, %68, !dbg !112
  %70 = call i1 @fCmpInstHandler(double %63, double %68, i1 %69, i32 4, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94049490525664, i32 54, i32 15), !dbg !113
  br i1 %70, label %71, label %118, !dbg !113

; <label>:71:                                     ; preds = %60
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %9, metadata !114, metadata !61), !dbg !116
  call void @llvm.dbg.declare(metadata double* %10, metadata !117, metadata !61), !dbg !118
  %72 = load double, double* %8, align 8, !dbg !119
  %73 = fsub double -0.000000e+00, %72, !dbg !120
  call void @fSubHandler(double -0.000000e+00, double %72, double %73, i64 0, i64 94049490530008, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94049490530448, i32 56, i32 23), !dbg !121
  %74 = call double @exp(double %73) #5, !dbg !121
  call void @callOneArgHandler(i32 11, double %73, double %74, i64 94049490530448, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94049490531200, i32 56, i32 19), !dbg !118
  store double %74, double* %10, align 8, !dbg !118
  call void @llvm.dbg.declare(metadata i32* %11, metadata !122, metadata !61), !dbg !123
  %75 = load i32, i32* %5, align 4, !dbg !124
  %76 = sitofp i32 %75 to double, !dbg !125
  %77 = load double, double* %8, align 8, !dbg !126
  %78 = call i32 @gsl_sf_bessel_IJ_taylor_e(double %76, double %77, i32 1, i32 50, double 0x3CB0000000000000, %struct.gsl_sf_result_struct* %9), !dbg !127
  store i32 %78, i32* %11, align 4, !dbg !123
  %79 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %9, i32 0, i32 0, !dbg !128
  %80 = load double, double* %79, align 8, !dbg !128
  %81 = load double, double* %10, align 8, !dbg !129
  %82 = fmul double %80, %81, !dbg !130
  call void @fMulHandler(double %80, double %81, double %82, i64 94049490539336, i64 94049490540984, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94049490541392, i32 58, i32 26), !dbg !131
  %83 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !131
  %84 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %83, i32 0, i32 0, !dbg !132
  store double %82, double* %84, align 8, !dbg !133
  %85 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %9, i32 0, i32 1, !dbg !134
  %86 = load double, double* %85, align 8, !dbg !134
  %87 = load double, double* %10, align 8, !dbg !135
  %88 = fmul double %86, %87, !dbg !136
  call void @fMulHandler(double %86, double %87, double %88, i64 94049490543480, i64 94049490545128, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94049490545536, i32 59, i32 26), !dbg !137
  %89 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !137
  %90 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %89, i32 0, i32 1, !dbg !138
  store double %88, double* %90, align 8, !dbg !139
  %91 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !140
  %92 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %91, i32 0, i32 0, !dbg !141
  %93 = load double, double* %92, align 8, !dbg !141
  %94 = call double @fabs(double %93) #1, !dbg !142
  %95 = fmul double 0x3CC0000000000000, %94, !dbg !143
  call void @fMulHandler(double 0x3CC0000000000000, double %94, double %95, i64 0, i64 94049490549744, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94049490550288, i32 60, i32 42), !dbg !144
  %96 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !144
  %97 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %96, i32 0, i32 1, !dbg !145
  %98 = load double, double* %97, align 8, !dbg !146
  %99 = fadd double %98, %95, !dbg !146
  call void @fAddHandler(double %98, double %95, double %99, i64 94049490551512, i64 94049490550288, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94049490551920, i32 60, i32 17), !dbg !146
  store double %99, double* %97, align 8, !dbg !146
  %100 = load double, double* %6, align 8, !dbg !147
  %101 = fcmp olt double %100, 0.000000e+00, !dbg !149
  %102 = call i1 @fCmpInstHandler(double %100, double 0.000000e+00, i1 %101, i32 4, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94049490554112, i32 61, i32 10), !dbg !150
  br i1 %102, label %103, label %116, !dbg !150

; <label>:103:                                    ; preds = %71
  %104 = load i32, i32* %5, align 4, !dbg !151
  %105 = and i32 %104, 1, !dbg !151
  %106 = icmp ne i32 %105, 0, !dbg !151
  %107 = sext i32 %105 to i64, !dbg !153
  %108 = call i1 @iCmpInstHandler(i64 %107, i64 0, i1 %106, i32 33, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94049490557248, i32 61, i32 19), !dbg !153
  br i1 %108, label %109, label %116, !dbg !153

; <label>:109:                                    ; preds = %103
  %110 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !154
  %111 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %110, i32 0, i32 0, !dbg !156
  %112 = load double, double* %111, align 8, !dbg !156
  %113 = fsub double -0.000000e+00, %112, !dbg !157
  call void @fSubHandler(double -0.000000e+00, double %112, double %113, i64 0, i64 94049490558696, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94049490560368, i32 61, i32 48), !dbg !158
  %114 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !158
  %115 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %114, i32 0, i32 0, !dbg !159
  store double %113, double* %115, align 8, !dbg !160
  br label %116, !dbg !158

; <label>:116:                                    ; preds = %109, %103, %71
  %117 = load i32, i32* %11, align 4, !dbg !161
  store i32 %117, i32* %4, align 4, !dbg !162
  br label %362, !dbg !162

; <label>:118:                                    ; preds = %60
  %119 = load i32, i32* %5, align 4, !dbg !163
  %120 = icmp slt i32 %119, 150, !dbg !165
  %121 = sext i32 %119 to i64, !dbg !166
  %122 = call i1 @iCmpInstHandler(i64 %121, i64 150, i1 %120, i32 40, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94049490566448, i32 64, i32 13), !dbg !166
  br i1 %122, label %123, label %216, !dbg !166

; <label>:123:                                    ; preds = %118
  %124 = load double, double* %8, align 8, !dbg !167
  %125 = fcmp olt double %124, 1.000000e+07, !dbg !169
  %126 = call i1 @fCmpInstHandler(double %124, double 1.000000e+07, i1 %125, i32 4, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94049490568000, i32 64, i32 25), !dbg !170
  br i1 %126, label %127, label %216, !dbg !170

; <label>:127:                                    ; preds = %123
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %12, metadata !171, metadata !61), !dbg !173
  call void @llvm.dbg.declare(metadata i32* %13, metadata !174, metadata !61), !dbg !175
  %128 = load double, double* %8, align 8, !dbg !176
  %129 = call i32 @gsl_sf_bessel_I0_scaled_e(double %128, %struct.gsl_sf_result_struct* %12), !dbg !177
  store i32 %129, i32* %13, align 4, !dbg !175
  call void @llvm.dbg.declare(metadata double* %14, metadata !178, metadata !61), !dbg !179
  call void @llvm.dbg.declare(metadata i32* %15, metadata !180, metadata !61), !dbg !181
  %130 = load i32, i32* %5, align 4, !dbg !182
  %131 = sitofp i32 %130 to double, !dbg !183
  %132 = load double, double* %8, align 8, !dbg !184
  %133 = call i32 @gsl_sf_bessel_I_CF1_ser(double %131, double %132, double* %14), !dbg !185
  store i32 %133, i32* %15, align 4, !dbg !181
  call void @llvm.dbg.declare(metadata double* %16, metadata !186, metadata !61), !dbg !187
  %134 = load double, double* %14, align 8, !dbg !188
  %135 = fmul double %134, 0x2000000000000000, !dbg !189
  call void @fMulHandler(double %134, double 0x2000000000000000, double %135, i64 94049490580776, i64 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94049490581216, i32 69, i32 23), !dbg !187
  store double %135, double* %16, align 8, !dbg !187
  call void @llvm.dbg.declare(metadata double* %17, metadata !190, metadata !61), !dbg !191
  store double 0x2000000000000000, double* %17, align 8, !dbg !191
  call void @llvm.dbg.declare(metadata double* %18, metadata !192, metadata !61), !dbg !193
  call void @llvm.dbg.declare(metadata i32* %19, metadata !194, metadata !61), !dbg !195
  %136 = load i32, i32* %5, align 4, !dbg !196
  store i32 %136, i32* %19, align 4, !dbg !198
  br label %137, !dbg !199

; <label>:137:                                    ; preds = %154, %127
  %138 = load i32, i32* %19, align 4, !dbg !200
  %139 = icmp sge i32 %138, 1, !dbg !203
  %140 = sext i32 %138 to i64, !dbg !204
  %141 = call i1 @iCmpInstHandler(i64 %140, i64 1, i1 %139, i32 39, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94049490589904, i32 73, i32 16), !dbg !204
  br i1 %141, label %142, label %157, !dbg !204

; <label>:142:                                    ; preds = %137
  %143 = load double, double* %16, align 8, !dbg !205
  %144 = load i32, i32* %19, align 4, !dbg !207
  %145 = sitofp i32 %144 to double, !dbg !207
  %146 = fmul double 2.000000e+00, %145, !dbg !208
  call void @fMulHandler(double 2.000000e+00, double %145, double %146, i64 0, i64 94049490593784, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94049490595552, i32 74, i32 24), !dbg !209
  %147 = load double, double* %8, align 8, !dbg !209
  %148 = fdiv double %146, %147, !dbg !210
  call void @fDivHandler(double %146, double %147, double %148, i64 94049490595552, i64 94049490595912, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94049490596320, i32 74, i32 26), !dbg !211
  %149 = load double, double* %17, align 8, !dbg !211
  %150 = fmul double %148, %149, !dbg !212
  call void @fMulHandler(double %148, double %149, double %150, i64 94049490596320, i64 94049490596712, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94049490597120, i32 74, i32 30), !dbg !213
  %151 = fadd double %143, %150, !dbg !213
  call void @fAddHandler(double %143, double %150, double %151, i64 94049490593080, i64 94049490597120, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94049490597536, i32 74, i32 19), !dbg !214
  store double %151, double* %18, align 8, !dbg !214
  %152 = load double, double* %17, align 8, !dbg !215
  store double %152, double* %16, align 8, !dbg !216
  %153 = load double, double* %18, align 8, !dbg !217
  store double %153, double* %17, align 8, !dbg !218
  br label %154, !dbg !219

; <label>:154:                                    ; preds = %142
  %155 = load i32, i32* %19, align 4, !dbg !220
  %156 = add nsw i32 %155, -1, !dbg !220
  store i32 %156, i32* %19, align 4, !dbg !220
  br label %137, !dbg !222, !llvm.loop !223

; <label>:157:                                    ; preds = %137
  %158 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %12, i32 0, i32 0, !dbg !225
  %159 = load double, double* %158, align 8, !dbg !225
  %160 = load double, double* %17, align 8, !dbg !226
  %161 = fdiv double 0x2000000000000000, %160, !dbg !227
  call void @fDivHandler(double 0x2000000000000000, double %160, double %161, i64 0, i64 94049490609480, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94049490609888, i32 78, i32 54), !dbg !228
  %162 = fmul double %159, %161, !dbg !228
  call void @fMulHandler(double %159, double %161, double %162, i64 94049490607832, i64 94049490609888, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94049490610304, i32 78, i32 34), !dbg !229
  %163 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !229
  %164 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %163, i32 0, i32 0, !dbg !230
  store double %162, double* %164, align 8, !dbg !231
  %165 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %12, i32 0, i32 1, !dbg !232
  %166 = load double, double* %165, align 8, !dbg !232
  %167 = load double, double* %17, align 8, !dbg !233
  %168 = fdiv double 0x2000000000000000, %167, !dbg !234
  call void @fDivHandler(double 0x2000000000000000, double %167, double %168, i64 0, i64 94049490614040, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94049490614448, i32 79, i32 54), !dbg !235
  %169 = fmul double %166, %168, !dbg !235
  call void @fMulHandler(double %166, double %168, double %169, i64 94049490612392, i64 94049490614448, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94049490614864, i32 79, i32 34), !dbg !236
  %170 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !236
  %171 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %170, i32 0, i32 1, !dbg !237
  store double %169, double* %171, align 8, !dbg !238
  %172 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !239
  %173 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %172, i32 0, i32 0, !dbg !240
  %174 = load double, double* %173, align 8, !dbg !240
  %175 = call double @fabs(double %174) #1, !dbg !241
  %176 = fmul double 0x3CC0000000000000, %175, !dbg !242
  call void @fMulHandler(double 0x3CC0000000000000, double %175, double %176, i64 0, i64 94049490619072, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94049490619552, i32 80, i32 42), !dbg !243
  %177 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !243
  %178 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %177, i32 0, i32 1, !dbg !244
  %179 = load double, double* %178, align 8, !dbg !245
  %180 = fadd double %179, %176, !dbg !245
  call void @fAddHandler(double %179, double %176, double %180, i64 94049490620776, i64 94049490619552, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94049490621184, i32 80, i32 17), !dbg !245
  store double %180, double* %178, align 8, !dbg !245
  %181 = load double, double* %6, align 8, !dbg !246
  %182 = fcmp olt double %181, 0.000000e+00, !dbg !248
  %183 = call i1 @fCmpInstHandler(double %181, double 0.000000e+00, i1 %182, i32 4, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94049490623376, i32 81, i32 10), !dbg !249
  br i1 %183, label %184, label %197, !dbg !249

; <label>:184:                                    ; preds = %157
  %185 = load i32, i32* %5, align 4, !dbg !250
  %186 = and i32 %185, 1, !dbg !250
  %187 = icmp ne i32 %186, 0, !dbg !250
  %188 = sext i32 %186 to i64, !dbg !252
  %189 = call i1 @iCmpInstHandler(i64 %188, i64 0, i1 %187, i32 33, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94049490626512, i32 81, i32 19), !dbg !252
  br i1 %189, label %190, label %197, !dbg !252

; <label>:190:                                    ; preds = %184
  %191 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !253
  %192 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %191, i32 0, i32 0, !dbg !255
  %193 = load double, double* %192, align 8, !dbg !255
  %194 = fsub double -0.000000e+00, %193, !dbg !256
  call void @fSubHandler(double -0.000000e+00, double %193, double %194, i64 0, i64 94049490627960, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94049490629632, i32 81, i32 48), !dbg !257
  %195 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !257
  %196 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %195, i32 0, i32 0, !dbg !258
  store double %194, double* %196, align 8, !dbg !259
  br label %197, !dbg !257

; <label>:197:                                    ; preds = %190, %184, %157
  %198 = load i32, i32* %13, align 4, !dbg !260
  %199 = icmp ne i32 %198, 0, !dbg !260
  %200 = sext i32 %198 to i64, !dbg !260
  %201 = call i1 @iCmpInstHandler(i64 %200, i64 0, i1 %199, i32 33, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94049490633264, i32 82, i32 12), !dbg !260
  br i1 %201, label %202, label %204, !dbg !260

; <label>:202:                                    ; preds = %197
  %203 = load i32, i32* %13, align 4, !dbg !261
  br label %214, !dbg !261

; <label>:204:                                    ; preds = %197
  %205 = load i32, i32* %15, align 4, !dbg !263
  %206 = icmp ne i32 %205, 0, !dbg !263
  %207 = sext i32 %205 to i64, !dbg !263
  %208 = call i1 @iCmpInstHandler(i64 %207, i64 0, i1 %206, i32 33, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94049490637808, i32 82, i32 12), !dbg !263
  br i1 %208, label %209, label %211, !dbg !263

; <label>:209:                                    ; preds = %204
  %210 = load i32, i32* %15, align 4, !dbg !265
  br label %212, !dbg !265

; <label>:211:                                    ; preds = %204
  br label %212, !dbg !267

; <label>:212:                                    ; preds = %211, %209
  %213 = phi i32 [ %210, %209 ], [ 0, %211 ], !dbg !269
  br label %214, !dbg !269

; <label>:214:                                    ; preds = %212, %202
  %215 = phi i32 [ %203, %202 ], [ %213, %212 ], !dbg !271
  store i32 %215, i32* %4, align 4, !dbg !273
  br label %362, !dbg !273

; <label>:216:                                    ; preds = %123, %118
  %217 = load i32, i32* %5, align 4, !dbg !274
  %218 = load i32, i32* %5, align 4, !dbg !274
  %219 = mul nsw i32 %217, %218, !dbg !274
  %220 = sitofp i32 %219 to double, !dbg !274
  %221 = fdiv double 2.900000e-01, %220, !dbg !274
  call void @fDivHandler(double 2.900000e-01, double %220, double %221, i64 0, i64 94049490648936, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94049490649152, i32 84, i32 12), !dbg !274
  %222 = load i32, i32* %5, align 4, !dbg !274
  %223 = load i32, i32* %5, align 4, !dbg !274
  %224 = mul nsw i32 %222, %223, !dbg !274
  %225 = sitofp i32 %224 to double, !dbg !274
  %226 = load double, double* %6, align 8, !dbg !274
  %227 = load double, double* %6, align 8, !dbg !274
  %228 = fmul double %226, %227, !dbg !274
  call void @fMulHandler(double %226, double %227, double %228, i64 94049490649672, i64 94049490649768, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94049490649888, i32 84, i32 12), !dbg !274
  %229 = fadd double %225, %228, !dbg !274
  call void @fAddHandler(double %225, double %228, double %229, i64 94049490649576, i64 94049490649888, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94049490650016, i32 84, i32 12), !dbg !274
  %230 = fdiv double 5.000000e-01, %229, !dbg !274
  call void @fDivHandler(double 5.000000e-01, double %229, double %230, i64 0, i64 94049490650016, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94049490650208, i32 84, i32 12), !dbg !274
  %231 = fcmp olt double %221, %230, !dbg !274
  %232 = call i1 @fCmpInstHandler(double %221, double %230, i1 %231, i32 4, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94049490650336, i32 84, i32 12), !dbg !274
  br i1 %232, label %233, label %239, !dbg !274

; <label>:233:                                    ; preds = %216
  %234 = load i32, i32* %5, align 4, !dbg !276
  %235 = load i32, i32* %5, align 4, !dbg !276
  %236 = mul nsw i32 %234, %235, !dbg !276
  %237 = sitofp i32 %236 to double, !dbg !276
  %238 = fdiv double 2.900000e-01, %237, !dbg !276
  call void @fDivHandler(double 2.900000e-01, double %237, double %238, i64 0, i64 94049490652936, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94049490653088, i32 84, i32 12), !dbg !276
  br label %249, !dbg !276

; <label>:239:                                    ; preds = %216
  %240 = load i32, i32* %5, align 4, !dbg !278
  %241 = load i32, i32* %5, align 4, !dbg !278
  %242 = mul nsw i32 %240, %241, !dbg !278
  %243 = sitofp i32 %242 to double, !dbg !278
  %244 = load double, double* %6, align 8, !dbg !278
  %245 = load double, double* %6, align 8, !dbg !278
  %246 = fmul double %244, %245, !dbg !278
  call void @fMulHandler(double %244, double %245, double %246, i64 94049490655592, i64 94049490655688, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94049490655808, i32 84, i32 12), !dbg !278
  %247 = fadd double %243, %246, !dbg !278
  call void @fAddHandler(double %243, double %246, double %247, i64 94049490655496, i64 94049490655808, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94049490655936, i32 84, i32 12), !dbg !278
  %248 = fdiv double 5.000000e-01, %247, !dbg !278
  call void @fDivHandler(double 5.000000e-01, double %247, double %248, i64 0, i64 94049490655936, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94049490656096, i32 84, i32 12), !dbg !278
  br label %249, !dbg !278

; <label>:249:                                    ; preds = %239, %233
  %250 = phi double [ %238, %233 ], [ %248, %239 ], !dbg !280
  %251 = fcmp olt double %250, 0x3EC965FEA53D6E41, !dbg !282
  %252 = call i1 @fCmpInstHandler(double %250, double 0x3EC965FEA53D6E41, i1 %251, i32 4, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94049490656752, i32 84, i32 51), !dbg !280
  br i1 %252, label %253, label %277, !dbg !280

; <label>:253:                                    ; preds = %249
  call void @llvm.dbg.declare(metadata i32* %20, metadata !283, metadata !61), !dbg !285
  %254 = load i32, i32* %5, align 4, !dbg !286
  %255 = sitofp i32 %254 to double, !dbg !287
  %256 = load double, double* %8, align 8, !dbg !288
  %257 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !289
  %258 = call i32 @gsl_sf_bessel_Inu_scaled_asymp_unif_e(double %255, double %256, %struct.gsl_sf_result_struct* %257), !dbg !290
  store i32 %258, i32* %20, align 4, !dbg !285
  %259 = load double, double* %6, align 8, !dbg !291
  %260 = fcmp olt double %259, 0.000000e+00, !dbg !293
  %261 = call i1 @fCmpInstHandler(double %259, double 0.000000e+00, i1 %260, i32 4, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94049490664720, i32 86, i32 10), !dbg !294
  br i1 %261, label %262, label %275, !dbg !294

; <label>:262:                                    ; preds = %253
  %263 = load i32, i32* %5, align 4, !dbg !295
  %264 = and i32 %263, 1, !dbg !295
  %265 = icmp ne i32 %264, 0, !dbg !295
  %266 = sext i32 %264 to i64, !dbg !297
  %267 = call i1 @iCmpInstHandler(i64 %266, i64 0, i1 %265, i32 33, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94049490667856, i32 86, i32 19), !dbg !297
  br i1 %267, label %268, label %275, !dbg !297

; <label>:268:                                    ; preds = %262
  %269 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !298
  %270 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %269, i32 0, i32 0, !dbg !300
  %271 = load double, double* %270, align 8, !dbg !300
  %272 = fsub double -0.000000e+00, %271, !dbg !301
  call void @fSubHandler(double -0.000000e+00, double %271, double %272, i64 0, i64 94049490669304, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94049490670976, i32 86, i32 48), !dbg !302
  %273 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !302
  %274 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %273, i32 0, i32 0, !dbg !303
  store double %272, double* %274, align 8, !dbg !304
  br label %275, !dbg !302

; <label>:275:                                    ; preds = %268, %262, %253
  %276 = load i32, i32* %20, align 4, !dbg !305
  store i32 %276, i32* %4, align 4, !dbg !306
  br label %362, !dbg !306

; <label>:277:                                    ; preds = %249
  call void @llvm.dbg.declare(metadata i32* %21, metadata !307, metadata !61), !dbg !310
  store i32 489, i32* %21, align 4, !dbg !310
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %22, metadata !311, metadata !61), !dbg !312
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %23, metadata !313, metadata !61), !dbg !314
  call void @llvm.dbg.declare(metadata i32* %24, metadata !315, metadata !61), !dbg !316
  %278 = load double, double* %8, align 8, !dbg !317
  %279 = call i32 @gsl_sf_bessel_Inu_scaled_asymp_unif_e(double 4.900000e+02, double %278, %struct.gsl_sf_result_struct* %22), !dbg !318
  store i32 %279, i32* %24, align 4, !dbg !316
  call void @llvm.dbg.declare(metadata i32* %25, metadata !319, metadata !61), !dbg !320
  %280 = load double, double* %8, align 8, !dbg !321
  %281 = call i32 @gsl_sf_bessel_Inu_scaled_asymp_unif_e(double 4.890000e+02, double %280, %struct.gsl_sf_result_struct* %23), !dbg !322
  store i32 %281, i32* %25, align 4, !dbg !320
  call void @llvm.dbg.declare(metadata double* %26, metadata !323, metadata !61), !dbg !324
  %282 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %22, i32 0, i32 0, !dbg !325
  %283 = load double, double* %282, align 8, !dbg !325
  store double %283, double* %26, align 8, !dbg !324
  call void @llvm.dbg.declare(metadata double* %27, metadata !326, metadata !61), !dbg !327
  %284 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %23, i32 0, i32 0, !dbg !328
  %285 = load double, double* %284, align 8, !dbg !328
  store double %285, double* %27, align 8, !dbg !327
  call void @llvm.dbg.declare(metadata double* %28, metadata !329, metadata !61), !dbg !330
  call void @llvm.dbg.declare(metadata i32* %29, metadata !331, metadata !61), !dbg !332
  store i32 489, i32* %29, align 4, !dbg !333
  br label %286, !dbg !335

; <label>:286:                                    ; preds = %305, %277
  %287 = load i32, i32* %29, align 4, !dbg !336
  %288 = load i32, i32* %5, align 4, !dbg !339
  %289 = icmp sgt i32 %287, %288, !dbg !340
  %290 = sext i32 %287 to i64, !dbg !341
  %291 = sext i32 %288 to i64, !dbg !341
  %292 = call i1 @iCmpInstHandler(i64 %290, i64 %291, i1 %289, i32 38, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94049490706880, i32 99, i32 18), !dbg !341
  br i1 %292, label %293, label %308, !dbg !341

; <label>:293:                                    ; preds = %286
  %294 = load double, double* %26, align 8, !dbg !342
  %295 = load i32, i32* %29, align 4, !dbg !344
  %296 = sitofp i32 %295 to double, !dbg !344
  %297 = fmul double 2.000000e+00, %296, !dbg !345
  call void @fMulHandler(double 2.000000e+00, double %296, double %297, i64 0, i64 94049490708696, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94049490710400, i32 100, i32 24), !dbg !346
  %298 = load double, double* %8, align 8, !dbg !346
  %299 = fdiv double %297, %298, !dbg !347
  call void @fDivHandler(double %297, double %298, double %299, i64 94049490710400, i64 94049490710760, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94049490711168, i32 100, i32 26), !dbg !348
  %300 = load double, double* %27, align 8, !dbg !348
  %301 = fmul double %299, %300, !dbg !349
  call void @fMulHandler(double %299, double %300, double %301, i64 94049490711168, i64 94049490711560, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94049490711968, i32 100, i32 30), !dbg !350
  %302 = fadd double %294, %301, !dbg !350
  call void @fAddHandler(double %294, double %301, double %302, i64 94049490707992, i64 94049490711968, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94049490712384, i32 100, i32 19), !dbg !351
  store double %302, double* %28, align 8, !dbg !351
  %303 = load double, double* %27, align 8, !dbg !352
  store double %303, double* %26, align 8, !dbg !353
  %304 = load double, double* %28, align 8, !dbg !354
  store double %304, double* %27, align 8, !dbg !355
  br label %305, !dbg !356

; <label>:305:                                    ; preds = %293
  %306 = load i32, i32* %29, align 4, !dbg !357
  %307 = add nsw i32 %306, -1, !dbg !357
  store i32 %307, i32* %29, align 4, !dbg !357
  br label %286, !dbg !359, !llvm.loop !360

; <label>:308:                                    ; preds = %286
  %309 = load double, double* %27, align 8, !dbg !362
  %310 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !363
  %311 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %310, i32 0, i32 0, !dbg !364
  store double %309, double* %311, align 8, !dbg !365
  %312 = load double, double* %27, align 8, !dbg !366
  %313 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %22, i32 0, i32 1, !dbg !367
  %314 = load double, double* %313, align 8, !dbg !367
  %315 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %22, i32 0, i32 0, !dbg !368
  %316 = load double, double* %315, align 8, !dbg !368
  %317 = fdiv double %314, %316, !dbg !369
  call void @fDivHandler(double %314, double %316, double %317, i64 94049490720520, i64 94049490722616, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94049490724288, i32 105, i32 35), !dbg !370
  %318 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %23, i32 0, i32 1, !dbg !370
  %319 = load double, double* %318, align 8, !dbg !370
  %320 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %23, i32 0, i32 0, !dbg !371
  %321 = load double, double* %320, align 8, !dbg !371
  %322 = fdiv double %319, %321, !dbg !372
  call void @fDivHandler(double %319, double %321, double %322, i64 94049490725128, i64 94049490727224, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94049490728896, i32 105, i32 57), !dbg !373
  %323 = fadd double %317, %322, !dbg !373
  call void @fAddHandler(double %317, double %322, double %323, i64 94049490724288, i64 94049490728896, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94049490729312, i32 105, i32 47), !dbg !374
  %324 = fmul double %312, %323, !dbg !374
  call void @fMulHandler(double %312, double %323, double %324, i64 94049490719688, i64 94049490729312, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94049490729728, i32 105, i32 22), !dbg !375
  %325 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !375
  %326 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %325, i32 0, i32 1, !dbg !376
  store double %324, double* %326, align 8, !dbg !377
  %327 = load double, double* %6, align 8, !dbg !378
  %328 = fcmp olt double %327, 0.000000e+00, !dbg !380
  %329 = call i1 @fCmpInstHandler(double %327, double 0.000000e+00, i1 %328, i32 4, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94049490731776, i32 106, i32 10), !dbg !381
  br i1 %329, label %330, label %343, !dbg !381

; <label>:330:                                    ; preds = %308
  %331 = load i32, i32* %5, align 4, !dbg !382
  %332 = and i32 %331, 1, !dbg !382
  %333 = icmp ne i32 %332, 0, !dbg !382
  %334 = sext i32 %332 to i64, !dbg !384
  %335 = call i1 @iCmpInstHandler(i64 %334, i64 0, i1 %333, i32 33, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94049490734912, i32 106, i32 19), !dbg !384
  br i1 %335, label %336, label %343, !dbg !384

; <label>:336:                                    ; preds = %330
  %337 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !385
  %338 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %337, i32 0, i32 0, !dbg !387
  %339 = load double, double* %338, align 8, !dbg !387
  %340 = fsub double -0.000000e+00, %339, !dbg !388
  call void @fSubHandler(double -0.000000e+00, double %339, double %340, i64 0, i64 94049490736360, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94049490738032, i32 106, i32 48), !dbg !389
  %341 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !389
  %342 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %341, i32 0, i32 0, !dbg !390
  store double %340, double* %342, align 8, !dbg !391
  br label %343, !dbg !389

; <label>:343:                                    ; preds = %336, %330, %308
  %344 = load i32, i32* %24, align 4, !dbg !392
  %345 = icmp ne i32 %344, 0, !dbg !392
  %346 = sext i32 %344 to i64, !dbg !392
  %347 = call i1 @iCmpInstHandler(i64 %346, i64 0, i1 %345, i32 33, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94049490741664, i32 107, i32 12), !dbg !392
  br i1 %347, label %348, label %350, !dbg !392

; <label>:348:                                    ; preds = %343
  %349 = load i32, i32* %24, align 4, !dbg !393
  br label %360, !dbg !393

; <label>:350:                                    ; preds = %343
  %351 = load i32, i32* %25, align 4, !dbg !395
  %352 = icmp ne i32 %351, 0, !dbg !395
  %353 = sext i32 %351 to i64, !dbg !395
  %354 = call i1 @iCmpInstHandler(i64 %353, i64 0, i1 %352, i32 33, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94049490746208, i32 107, i32 12), !dbg !395
  br i1 %354, label %355, label %357, !dbg !395

; <label>:355:                                    ; preds = %350
  %356 = load i32, i32* %25, align 4, !dbg !397
  br label %358, !dbg !397

; <label>:357:                                    ; preds = %350
  br label %358, !dbg !399

; <label>:358:                                    ; preds = %357, %355
  %359 = phi i32 [ %356, %355 ], [ 0, %357 ], !dbg !401
  br label %360, !dbg !401

; <label>:360:                                    ; preds = %358, %348
  %361 = phi i32 [ %349, %348 ], [ %359, %358 ], !dbg !403
  store i32 %361, i32* %4, align 4, !dbg !405
  br label %362, !dbg !405

; <label>:362:                                    ; preds = %360, %275, %214, %116, %55, %47, %38
  %363 = load i32, i32* %4, align 4, !dbg !406
  ret i32 %363, !dbg !406
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readnone
declare double @fabs(double) #2

; Function Attrs: nounwind readnone
declare i32 @abs(i32) #2

declare i32 @gsl_sf_bessel_I0_scaled_e(double, %struct.gsl_sf_result_struct*) #3

declare i32 @gsl_sf_bessel_I1_scaled_e(double, %struct.gsl_sf_result_struct*) #3

; Function Attrs: nounwind
declare double @exp(double) #4

declare i32 @gsl_sf_bessel_IJ_taylor_e(double, double, i32, i32, double, %struct.gsl_sf_result_struct*) #3

declare i32 @gsl_sf_bessel_I_CF1_ser(double, double, double*) #3

declare i32 @gsl_sf_bessel_Inu_scaled_asymp_unif_e(double, double, %struct.gsl_sf_result_struct*) #3

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_bessel_In_scaled_array(i32, i32, double, double*) #0 !dbg !407 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca double*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.gsl_sf_result_struct, align 8
  %13 = alloca i32, align 4
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca %struct.gsl_sf_result_struct, align 8
  %17 = alloca %struct.gsl_sf_result_struct, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  %22 = alloca double, align 8
  %23 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !411, metadata !61), !dbg !412
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !413, metadata !61), !dbg !414
  store double %2, double* %8, align 8
  call void @llvm.dbg.declare(metadata double* %8, metadata !415, metadata !61), !dbg !416
  store double* %3, double** %9, align 8
  call void @llvm.dbg.declare(metadata double** %9, metadata !417, metadata !61), !dbg !418
  %24 = load i32, i32* %7, align 4, !dbg !419
  %25 = load i32, i32* %6, align 4, !dbg !421
  %26 = icmp slt i32 %24, %25, !dbg !422
  %27 = sext i32 %24 to i64, !dbg !423
  %28 = sext i32 %25 to i64, !dbg !423
  %29 = call i1 @iCmpInstHandler(i64 %27, i64 %28, i1 %26, i32 40, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94049490763888, i32 117, i32 11), !dbg !423
  br i1 %29, label %35, label %30, !dbg !423

; <label>:30:                                     ; preds = %4
  %31 = load i32, i32* %6, align 4, !dbg !424
  %32 = icmp slt i32 %31, 0, !dbg !426
  %33 = sext i32 %31 to i64, !dbg !427
  %34 = call i1 @iCmpInstHandler(i64 %33, i64 0, i1 %32, i32 40, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94049490765248, i32 117, i32 26), !dbg !427
  br i1 %34, label %35, label %56, !dbg !427

; <label>:35:                                     ; preds = %30, %4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !428, metadata !61), !dbg !430
  store i32 0, i32* %10, align 4, !dbg !431
  br label %36, !dbg !433

; <label>:36:                                     ; preds = %50, %35
  %37 = load i32, i32* %10, align 4, !dbg !434
  %38 = load i32, i32* %7, align 4, !dbg !437
  %39 = load i32, i32* %6, align 4, !dbg !438
  %40 = sub nsw i32 %38, %39, !dbg !439
  %41 = icmp sle i32 %37, %40, !dbg !440
  %42 = sext i32 %37 to i64, !dbg !441
  %43 = sext i32 %40 to i64, !dbg !441
  %44 = call i1 @iCmpInstHandler(i64 %42, i64 %43, i1 %41, i32 41, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94049490769328, i32 119, i32 15), !dbg !441
  br i1 %44, label %45, label %53, !dbg !441

; <label>:45:                                     ; preds = %36
  %46 = load i32, i32* %10, align 4, !dbg !442
  %47 = sext i32 %46 to i64, !dbg !444
  %48 = load double*, double** %9, align 8, !dbg !444
  %49 = getelementptr inbounds double, double* %48, i64 %47, !dbg !444
  store double 0.000000e+00, double* %49, align 8, !dbg !445
  br label %50, !dbg !444

; <label>:50:                                     ; preds = %45
  %51 = load i32, i32* %10, align 4, !dbg !446
  %52 = add nsw i32 %51, 1, !dbg !446
  store i32 %52, i32* %10, align 4, !dbg !446
  br label %36, !dbg !448, !llvm.loop !449

; <label>:53:                                     ; preds = %36
  br label %54, !dbg !451, !llvm.loop !452

; <label>:54:                                     ; preds = %53
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 120, i32 1), !dbg !453
  store i32 1, i32* %5, align 4, !dbg !453
  br label %203, !dbg !453
                                                  ; No predecessors!
  br label %203, !dbg !456

; <label>:56:                                     ; preds = %30
  %57 = load double, double* %8, align 8, !dbg !457
  %58 = fcmp oeq double %57, 0.000000e+00, !dbg !459
  %59 = call i1 @fCmpInstHandler(double %57, double 0.000000e+00, i1 %58, i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94049490781312, i32 122, i32 13), !dbg !460
  br i1 %59, label %60, label %87, !dbg !460

; <label>:60:                                     ; preds = %56
  call void @llvm.dbg.declare(metadata i32* %11, metadata !461, metadata !61), !dbg !463
  store i32 0, i32* %11, align 4, !dbg !464
  br label %61, !dbg !466

; <label>:61:                                     ; preds = %75, %60
  %62 = load i32, i32* %11, align 4, !dbg !467
  %63 = load i32, i32* %7, align 4, !dbg !470
  %64 = load i32, i32* %6, align 4, !dbg !471
  %65 = sub nsw i32 %63, %64, !dbg !472
  %66 = icmp sle i32 %62, %65, !dbg !473
  %67 = sext i32 %62 to i64, !dbg !474
  %68 = sext i32 %65 to i64, !dbg !474
  %69 = call i1 @iCmpInstHandler(i64 %67, i64 %68, i1 %66, i32 41, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94049490786016, i32 124, i32 15), !dbg !474
  br i1 %69, label %70, label %78, !dbg !474

; <label>:70:                                     ; preds = %61
  %71 = load i32, i32* %11, align 4, !dbg !475
  %72 = sext i32 %71 to i64, !dbg !477
  %73 = load double*, double** %9, align 8, !dbg !477
  %74 = getelementptr inbounds double, double* %73, i64 %72, !dbg !477
  store double 0.000000e+00, double* %74, align 8, !dbg !478
  br label %75, !dbg !477

; <label>:75:                                     ; preds = %70
  %76 = load i32, i32* %11, align 4, !dbg !479
  %77 = add nsw i32 %76, 1, !dbg !479
  store i32 %77, i32* %11, align 4, !dbg !479
  br label %61, !dbg !481, !llvm.loop !482

; <label>:78:                                     ; preds = %61
  %79 = load i32, i32* %6, align 4, !dbg !484
  %80 = icmp eq i32 %79, 0, !dbg !486
  %81 = sext i32 %79 to i64, !dbg !487
  %82 = call i1 @iCmpInstHandler(i64 %81, i64 0, i1 %80, i32 32, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94049490793424, i32 125, i32 13), !dbg !487
  br i1 %82, label %83, label %86, !dbg !487

; <label>:83:                                     ; preds = %78
  %84 = load double*, double** %9, align 8, !dbg !488
  %85 = getelementptr inbounds double, double* %84, i64 0, !dbg !488
  store double 1.000000e+00, double* %85, align 8, !dbg !490
  br label %86, !dbg !488

; <label>:86:                                     ; preds = %83, %78
  store i32 0, i32* %5, align 4, !dbg !491
  br label %203, !dbg !491

; <label>:87:                                     ; preds = %56
  %88 = load i32, i32* %7, align 4, !dbg !492
  %89 = icmp eq i32 %88, 0, !dbg !494
  %90 = sext i32 %88 to i64, !dbg !495
  %91 = call i1 @iCmpInstHandler(i64 %90, i64 0, i1 %89, i32 32, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94049490799472, i32 128, i32 16), !dbg !495
  br i1 %91, label %92, label %100, !dbg !495

; <label>:92:                                     ; preds = %87
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %12, metadata !496, metadata !61), !dbg !498
  call void @llvm.dbg.declare(metadata i32* %13, metadata !499, metadata !61), !dbg !500
  %93 = load double, double* %8, align 8, !dbg !501
  %94 = call i32 @gsl_sf_bessel_I0_scaled_e(double %93, %struct.gsl_sf_result_struct* %12), !dbg !502
  store i32 %94, i32* %13, align 4, !dbg !500
  %95 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %12, i32 0, i32 0, !dbg !503
  %96 = load double, double* %95, align 8, !dbg !503
  %97 = load double*, double** %9, align 8, !dbg !504
  %98 = getelementptr inbounds double, double* %97, i64 0, !dbg !504
  store double %96, double* %98, align 8, !dbg !505
  %99 = load i32, i32* %13, align 4, !dbg !506
  store i32 %99, i32* %5, align 4, !dbg !507
  br label %203, !dbg !507

; <label>:100:                                    ; preds = %87
  call void @llvm.dbg.declare(metadata double* %14, metadata !508, metadata !61), !dbg !510
  %101 = load double, double* %8, align 8, !dbg !511
  %102 = call double @fabs(double %101) #1, !dbg !512
  store double %102, double* %14, align 8, !dbg !510
  call void @llvm.dbg.declare(metadata double* %15, metadata !513, metadata !61), !dbg !514
  %103 = load double, double* %14, align 8, !dbg !515
  %104 = fdiv double 2.000000e+00, %103, !dbg !516
  call void @fDivHandler(double 2.000000e+00, double %103, double %104, i64 0, i64 94049490817080, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94049490817488, i32 136, i32 34), !dbg !514
  store double %104, double* %15, align 8, !dbg !514
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %16, metadata !517, metadata !61), !dbg !518
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %17, metadata !519, metadata !61), !dbg !520
  call void @llvm.dbg.declare(metadata i32* %18, metadata !521, metadata !61), !dbg !522
  %105 = load i32, i32* %7, align 4, !dbg !523
  %106 = add nsw i32 %105, 1, !dbg !524
  %107 = load double, double* %14, align 8, !dbg !525
  %108 = call i32 @gsl_sf_bessel_In_scaled_e(i32 %106, double %107, %struct.gsl_sf_result_struct* %16), !dbg !526
  store i32 %108, i32* %18, align 4, !dbg !522
  call void @llvm.dbg.declare(metadata i32* %19, metadata !527, metadata !61), !dbg !528
  %109 = load i32, i32* %7, align 4, !dbg !529
  %110 = load double, double* %14, align 8, !dbg !530
  %111 = call i32 @gsl_sf_bessel_In_scaled_e(i32 %109, double %110, %struct.gsl_sf_result_struct* %17), !dbg !531
  store i32 %111, i32* %19, align 4, !dbg !528
  call void @llvm.dbg.declare(metadata double* %20, metadata !532, metadata !61), !dbg !533
  %112 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %16, i32 0, i32 0, !dbg !534
  %113 = load double, double* %112, align 8, !dbg !534
  store double %113, double* %20, align 8, !dbg !533
  call void @llvm.dbg.declare(metadata double* %21, metadata !535, metadata !61), !dbg !536
  %114 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %17, i32 0, i32 0, !dbg !537
  %115 = load double, double* %114, align 8, !dbg !537
  store double %115, double* %21, align 8, !dbg !536
  call void @llvm.dbg.declare(metadata double* %22, metadata !538, metadata !61), !dbg !539
  call void @llvm.dbg.declare(metadata i32* %23, metadata !540, metadata !61), !dbg !541
  %116 = load i32, i32* %7, align 4, !dbg !542
  store i32 %116, i32* %23, align 4, !dbg !544
  br label %117, !dbg !545

; <label>:117:                                    ; preds = %142, %100
  %118 = load i32, i32* %23, align 4, !dbg !546
  %119 = load i32, i32* %6, align 4, !dbg !549
  %120 = icmp sge i32 %118, %119, !dbg !550
  %121 = sext i32 %118 to i64, !dbg !551
  %122 = sext i32 %119 to i64, !dbg !551
  %123 = call i1 @iCmpInstHandler(i64 %121, i64 %122, i1 %120, i32 39, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94049490844272, i32 148, i32 18), !dbg !551
  br i1 %123, label %124, label %145, !dbg !551

; <label>:124:                                    ; preds = %117
  %125 = load double, double* %21, align 8, !dbg !552
  %126 = load i32, i32* %23, align 4, !dbg !554
  %127 = load i32, i32* %6, align 4, !dbg !555
  %128 = sub nsw i32 %126, %127, !dbg !556
  %129 = sext i32 %128 to i64, !dbg !557
  %130 = load double*, double** %9, align 8, !dbg !557
  %131 = getelementptr inbounds double, double* %130, i64 %129, !dbg !557
  store double %125, double* %131, align 8, !dbg !558
  %132 = load double, double* %20, align 8, !dbg !559
  %133 = load i32, i32* %23, align 4, !dbg !560
  %134 = sitofp i32 %133 to double, !dbg !560
  %135 = load double, double* %15, align 8, !dbg !561
  %136 = fmul double %134, %135, !dbg !562
  call void @fMulHandler(double %134, double %135, double %136, i64 94049490850248, i64 94049490851896, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94049490852304, i32 150, i32 23), !dbg !563
  %137 = load double, double* %21, align 8, !dbg !563
  %138 = fmul double %136, %137, !dbg !564
  call void @fMulHandler(double %136, double %137, double %138, i64 94049490852304, i64 94049490852696, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94049490853104, i32 150, i32 36), !dbg !565
  %139 = fadd double %132, %138, !dbg !565
  call void @fAddHandler(double %132, double %138, double %139, i64 94049490849480, i64 94049490853104, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94049490853520, i32 150, i32 19), !dbg !566
  store double %139, double* %22, align 8, !dbg !566
  %140 = load double, double* %21, align 8, !dbg !567
  store double %140, double* %20, align 8, !dbg !568
  %141 = load double, double* %22, align 8, !dbg !569
  store double %141, double* %21, align 8, !dbg !570
  br label %142, !dbg !571

; <label>:142:                                    ; preds = %124
  %143 = load i32, i32* %23, align 4, !dbg !572
  %144 = add nsw i32 %143, -1, !dbg !572
  store i32 %144, i32* %23, align 4, !dbg !572
  br label %117, !dbg !574, !llvm.loop !575

; <label>:145:                                    ; preds = %117
  %146 = load double, double* %8, align 8, !dbg !577
  %147 = fcmp olt double %146, 0.000000e+00, !dbg !579
  %148 = call i1 @fCmpInstHandler(double %146, double 0.000000e+00, i1 %147, i32 4, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94049490859600, i32 156, i32 10), !dbg !580
  br i1 %148, label %149, label %184, !dbg !580

; <label>:149:                                    ; preds = %145
  %150 = load i32, i32* %6, align 4, !dbg !581
  store i32 %150, i32* %23, align 4, !dbg !584
  br label %151, !dbg !585

; <label>:151:                                    ; preds = %180, %149
  %152 = load i32, i32* %23, align 4, !dbg !586
  %153 = load i32, i32* %7, align 4, !dbg !589
  %154 = icmp sle i32 %152, %153, !dbg !590
  %155 = sext i32 %152 to i64, !dbg !591
  %156 = sext i32 %153 to i64, !dbg !591
  %157 = call i1 @iCmpInstHandler(i64 %155, i64 %156, i1 %154, i32 41, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94049490864768, i32 157, i32 20), !dbg !591
  br i1 %157, label %158, label %183, !dbg !591

; <label>:158:                                    ; preds = %151
  %159 = load i32, i32* %23, align 4, !dbg !592
  %160 = and i32 %159, 1, !dbg !592
  %161 = icmp ne i32 %160, 0, !dbg !592
  %162 = sext i32 %160 to i64, !dbg !595
  %163 = call i1 @iCmpInstHandler(i64 %162, i64 0, i1 %161, i32 33, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94049490867904, i32 158, i32 12), !dbg !595
  br i1 %163, label %164, label %179, !dbg !595

; <label>:164:                                    ; preds = %158
  %165 = load i32, i32* %23, align 4, !dbg !596
  %166 = load i32, i32* %6, align 4, !dbg !598
  %167 = sub nsw i32 %165, %166, !dbg !599
  %168 = sext i32 %167 to i64, !dbg !600
  %169 = load double*, double** %9, align 8, !dbg !600
  %170 = getelementptr inbounds double, double* %169, i64 %168, !dbg !600
  %171 = load double, double* %170, align 8, !dbg !600
  %172 = fsub double -0.000000e+00, %171, !dbg !601
  call void @fSubHandler(double -0.000000e+00, double %171, double %172, i64 0, i64 94049490872024, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94049490872144, i32 158, i32 50), !dbg !602
  %173 = load i32, i32* %23, align 4, !dbg !602
  %174 = load i32, i32* %6, align 4, !dbg !603
  %175 = sub nsw i32 %173, %174, !dbg !604
  %176 = sext i32 %175 to i64, !dbg !605
  %177 = load double*, double** %9, align 8, !dbg !605
  %178 = getelementptr inbounds double, double* %177, i64 %176, !dbg !605
  store double %172, double* %178, align 8, !dbg !606
  br label %179, !dbg !605

; <label>:179:                                    ; preds = %164, %158
  br label %180, !dbg !607

; <label>:180:                                    ; preds = %179
  %181 = load i32, i32* %23, align 4, !dbg !608
  %182 = add nsw i32 %181, 1, !dbg !608
  store i32 %182, i32* %23, align 4, !dbg !608
  br label %151, !dbg !610, !llvm.loop !611

; <label>:183:                                    ; preds = %151
  br label %184, !dbg !613

; <label>:184:                                    ; preds = %183, %145
  %185 = load i32, i32* %18, align 4, !dbg !614
  %186 = icmp ne i32 %185, 0, !dbg !614
  %187 = sext i32 %185 to i64, !dbg !614
  %188 = call i1 @iCmpInstHandler(i64 %187, i64 0, i1 %186, i32 33, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94049490880336, i32 162, i32 12), !dbg !614
  br i1 %188, label %189, label %191, !dbg !614

; <label>:189:                                    ; preds = %184
  %190 = load i32, i32* %18, align 4, !dbg !615
  br label %201, !dbg !615

; <label>:191:                                    ; preds = %184
  %192 = load i32, i32* %19, align 4, !dbg !617
  %193 = icmp ne i32 %192, 0, !dbg !617
  %194 = sext i32 %192 to i64, !dbg !617
  %195 = call i1 @iCmpInstHandler(i64 %194, i64 0, i1 %193, i32 33, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94049490884880, i32 162, i32 12), !dbg !617
  br i1 %195, label %196, label %198, !dbg !617

; <label>:196:                                    ; preds = %191
  %197 = load i32, i32* %19, align 4, !dbg !619
  br label %199, !dbg !619

; <label>:198:                                    ; preds = %191
  br label %199, !dbg !621

; <label>:199:                                    ; preds = %198, %196
  %200 = phi i32 [ %197, %196 ], [ 0, %198 ], !dbg !623
  br label %201, !dbg !623

; <label>:201:                                    ; preds = %199, %189
  %202 = phi i32 [ %190, %189 ], [ %200, %199 ], !dbg !625
  store i32 %202, i32* %5, align 4, !dbg !627
  br label %203, !dbg !627

; <label>:203:                                    ; preds = %201, %92, %86, %55, %54
  %204 = load i32, i32* %5, align 4, !dbg !628
  ret i32 %204, !dbg !628
}

declare void @gsl_error(i8*, i8*, i32, i32) #3

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_bessel_In_e(i32, double, %struct.gsl_sf_result_struct*) #0 !dbg !629 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca %struct.gsl_sf_result_struct*, align 8
  %8 = alloca double, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.gsl_sf_result_struct, align 8
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !632, metadata !61), !dbg !633
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !634, metadata !61), !dbg !635
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %7, metadata !636, metadata !61), !dbg !637
  call void @llvm.dbg.declare(metadata double* %8, metadata !638, metadata !61), !dbg !639
  %13 = load double, double* %6, align 8, !dbg !640
  %14 = call double @fabs(double %13) #1, !dbg !641
  store double %14, double* %8, align 8, !dbg !639
  call void @llvm.dbg.declare(metadata i32* %9, metadata !642, metadata !61), !dbg !643
  %15 = load i32, i32* %5, align 4, !dbg !644
  %16 = call i32 @abs(i32 %15) #1, !dbg !645
  store i32 %16, i32* %9, align 4, !dbg !643
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %10, metadata !646, metadata !61), !dbg !647
  call void @llvm.dbg.declare(metadata i32* %11, metadata !648, metadata !61), !dbg !649
  %17 = load i32, i32* %9, align 4, !dbg !650
  %18 = load double, double* %8, align 8, !dbg !651
  %19 = call i32 @gsl_sf_bessel_In_scaled_e(i32 %17, double %18, %struct.gsl_sf_result_struct* %10), !dbg !652
  store i32 %19, i32* %11, align 4, !dbg !649
  %20 = load double, double* %8, align 8, !dbg !653
  %21 = fcmp ogt double %20, 0x40862642FEFA39EF, !dbg !655
  %22 = call i1 @fCmpInstHandler(double %20, double 0x40862642FEFA39EF, i1 %21, i32 2, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @5, i32 0, i32 0), i64 94049490916848, i32 178, i32 9), !dbg !656
  br i1 %22, label %23, label %32, !dbg !656

; <label>:23:                                     ; preds = %3
  br label %24, !dbg !657, !llvm.loop !659

; <label>:24:                                     ; preds = %23
  %25 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !660
  %26 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %25, i32 0, i32 0, !dbg !660
  store double 0x7FF0000000000000, double* %26, align 8, !dbg !660
  %27 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !660
  %28 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %27, i32 0, i32 1, !dbg !660
  store double 0x7FF0000000000000, double* %28, align 8, !dbg !660
  br label %29, !dbg !660, !llvm.loop !663

; <label>:29:                                     ; preds = %24
  call void @gsl_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 179, i32 16), !dbg !665
  store i32 16, i32* %4, align 4, !dbg !665
  br label %76, !dbg !665
                                                  ; No predecessors!
  br label %31, !dbg !668

; <label>:31:                                     ; preds = %30
  br label %76, !dbg !670

; <label>:32:                                     ; preds = %3
  call void @llvm.dbg.declare(metadata double* %12, metadata !671, metadata !61), !dbg !673
  %33 = load double, double* %8, align 8, !dbg !674
  %34 = call double @exp(double %33) #5, !dbg !675
  call void @callOneArgHandler(i32 11, double %33, double %34, i64 94049490926520, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @5, i32 0, i32 0), i64 94049490926960, i32 182, i32 23), !dbg !673
  store double %34, double* %12, align 8, !dbg !673
  %35 = load double, double* %12, align 8, !dbg !676
  %36 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !677
  %37 = load double, double* %36, align 8, !dbg !677
  %38 = fmul double %35, %37, !dbg !678
  call void @fMulHandler(double %35, double %37, double %38, i64 94049490929096, i64 94049490929928, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @5, i32 0, i32 0), i64 94049490931600, i32 183, i32 23), !dbg !679
  %39 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !679
  %40 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %39, i32 0, i32 0, !dbg !680
  store double %38, double* %40, align 8, !dbg !681
  %41 = load double, double* %12, align 8, !dbg !682
  %42 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 1, !dbg !683
  %43 = load double, double* %42, align 8, !dbg !683
  %44 = fmul double %41, %43, !dbg !684
  call void @fMulHandler(double %41, double %43, double %44, i64 94049490933240, i64 94049490934072, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @5, i32 0, i32 0), i64 94049490935744, i32 184, i32 23), !dbg !685
  %45 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !685
  %46 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %45, i32 0, i32 1, !dbg !686
  store double %44, double* %46, align 8, !dbg !687
  %47 = load double, double* %8, align 8, !dbg !688
  %48 = fmul double %47, 0x3CB0000000000000, !dbg !689
  call void @fMulHandler(double %47, double 0x3CB0000000000000, double %48, i64 94049490937384, i64 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @5, i32 0, i32 0), i64 94049490937792, i32 185, i32 23), !dbg !690
  %49 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !690
  %50 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %49, i32 0, i32 0, !dbg !691
  %51 = load double, double* %50, align 8, !dbg !691
  %52 = call double @fabs(double %51) #1, !dbg !692
  %53 = fmul double %48, %52, !dbg !693
  call void @fMulHandler(double %48, double %52, double %53, i64 94049490937792, i64 94049490940752, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @5, i32 0, i32 0), i64 94049490941232, i32 185, i32 41), !dbg !694
  %54 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !694
  %55 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %54, i32 0, i32 1, !dbg !695
  %56 = load double, double* %55, align 8, !dbg !696
  %57 = fadd double %56, %53, !dbg !696
  call void @fAddHandler(double %56, double %53, double %57, i64 94049490942456, i64 94049490941232, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @5, i32 0, i32 0), i64 94049490942864, i32 185, i32 17), !dbg !696
  store double %57, double* %55, align 8, !dbg !696
  %58 = load double, double* %6, align 8, !dbg !697
  %59 = fcmp olt double %58, 0.000000e+00, !dbg !699
  %60 = call i1 @fCmpInstHandler(double %58, double 0.000000e+00, i1 %59, i32 4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @5, i32 0, i32 0), i64 94049490945056, i32 186, i32 10), !dbg !700
  br i1 %60, label %61, label %74, !dbg !700

; <label>:61:                                     ; preds = %32
  %62 = load i32, i32* %9, align 4, !dbg !701
  %63 = and i32 %62, 1, !dbg !701
  %64 = icmp ne i32 %63, 0, !dbg !701
  %65 = sext i32 %63 to i64, !dbg !703
  %66 = call i1 @iCmpInstHandler(i64 %65, i64 0, i1 %64, i32 33, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @5, i32 0, i32 0), i64 94049490948192, i32 186, i32 19), !dbg !703
  br i1 %66, label %67, label %74, !dbg !703

; <label>:67:                                     ; preds = %61
  %68 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !704
  %69 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %68, i32 0, i32 0, !dbg !706
  %70 = load double, double* %69, align 8, !dbg !706
  %71 = fsub double -0.000000e+00, %70, !dbg !707
  call void @fSubHandler(double -0.000000e+00, double %70, double %71, i64 0, i64 94049490949640, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @5, i32 0, i32 0), i64 94049490951312, i32 186, i32 48), !dbg !708
  %72 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !708
  %73 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %72, i32 0, i32 0, !dbg !709
  store double %71, double* %73, align 8, !dbg !710
  br label %74, !dbg !708

; <label>:74:                                     ; preds = %67, %61, %32
  %75 = load i32, i32* %11, align 4, !dbg !711
  store i32 %75, i32* %4, align 4, !dbg !712
  br label %76, !dbg !712

; <label>:76:                                     ; preds = %74, %31, %29
  %77 = load i32, i32* %4, align 4, !dbg !713
  ret i32 %77, !dbg !713
}

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_bessel_In_array(i32, i32, double, double*) #0 !dbg !714 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca double*, align 8
  %10 = alloca double, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca double, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !715, metadata !61), !dbg !716
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !717, metadata !61), !dbg !718
  store double %2, double* %8, align 8
  call void @llvm.dbg.declare(metadata double* %8, metadata !719, metadata !61), !dbg !720
  store double* %3, double** %9, align 8
  call void @llvm.dbg.declare(metadata double** %9, metadata !721, metadata !61), !dbg !722
  call void @llvm.dbg.declare(metadata double* %10, metadata !723, metadata !61), !dbg !724
  %15 = load double, double* %8, align 8, !dbg !725
  %16 = call double @fabs(double %15) #1, !dbg !726
  store double %16, double* %10, align 8, !dbg !724
  %17 = load double, double* %10, align 8, !dbg !727
  %18 = fcmp ogt double %17, 0x40862642FEFA39EF, !dbg !729
  %19 = call i1 @fCmpInstHandler(double %17, double 0x40862642FEFA39EF, i1 %18, i32 2, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @7, i32 0, i32 0), i64 94049490970192, i32 199, i32 9), !dbg !730
  br i1 %19, label %20, label %41, !dbg !730

; <label>:20:                                     ; preds = %4
  call void @llvm.dbg.declare(metadata i32* %11, metadata !731, metadata !61), !dbg !733
  store i32 0, i32* %11, align 4, !dbg !734
  br label %21, !dbg !736

; <label>:21:                                     ; preds = %35, %20
  %22 = load i32, i32* %11, align 4, !dbg !737
  %23 = load i32, i32* %7, align 4, !dbg !740
  %24 = load i32, i32* %6, align 4, !dbg !741
  %25 = sub nsw i32 %23, %24, !dbg !742
  %26 = icmp sle i32 %22, %25, !dbg !743
  %27 = sext i32 %22 to i64, !dbg !744
  %28 = sext i32 %25 to i64, !dbg !744
  %29 = call i1 @iCmpInstHandler(i64 %27, i64 %28, i1 %26, i32 41, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @7, i32 0, i32 0), i64 94049490974656, i32 201, i32 15), !dbg !744
  br i1 %29, label %30, label %38, !dbg !744

; <label>:30:                                     ; preds = %21
  %31 = load i32, i32* %11, align 4, !dbg !745
  %32 = sext i32 %31 to i64, !dbg !747
  %33 = load double*, double** %9, align 8, !dbg !747
  %34 = getelementptr inbounds double, double* %33, i64 %32, !dbg !747
  store double 0.000000e+00, double* %34, align 8, !dbg !748
  br label %35, !dbg !747

; <label>:35:                                     ; preds = %30
  %36 = load i32, i32* %11, align 4, !dbg !749
  %37 = add nsw i32 %36, 1, !dbg !749
  store i32 %37, i32* %11, align 4, !dbg !749
  br label %21, !dbg !751, !llvm.loop !752

; <label>:38:                                     ; preds = %21
  br label %39, !dbg !754, !llvm.loop !755

; <label>:39:                                     ; preds = %38
  call void @gsl_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 202, i32 16), !dbg !756
  store i32 16, i32* %5, align 4, !dbg !756
  br label %71, !dbg !756
                                                  ; No predecessors!
  br label %71, !dbg !759

; <label>:41:                                     ; preds = %4
  call void @llvm.dbg.declare(metadata i32* %12, metadata !760, metadata !61), !dbg !762
  call void @llvm.dbg.declare(metadata double* %13, metadata !763, metadata !61), !dbg !764
  %42 = load double, double* %10, align 8, !dbg !765
  %43 = call double @exp(double %42) #5, !dbg !766
  call void @callOneArgHandler(i32 11, double %42, double %43, i64 94049490987576, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @7, i32 0, i32 0), i64 94049490988016, i32 206, i32 18), !dbg !764
  store double %43, double* %13, align 8, !dbg !764
  call void @llvm.dbg.declare(metadata i32* %14, metadata !767, metadata !61), !dbg !768
  %44 = load i32, i32* %6, align 4, !dbg !769
  %45 = load i32, i32* %7, align 4, !dbg !770
  %46 = load double, double* %8, align 8, !dbg !771
  %47 = load double*, double** %9, align 8, !dbg !772
  %48 = call i32 @gsl_sf_bessel_In_scaled_array(i32 %44, i32 %45, double %46, double* %47), !dbg !773
  store i32 %48, i32* %14, align 4, !dbg !768
  store i32 0, i32* %12, align 4, !dbg !774
  br label %49, !dbg !776

; <label>:49:                                     ; preds = %66, %41
  %50 = load i32, i32* %12, align 4, !dbg !777
  %51 = load i32, i32* %7, align 4, !dbg !780
  %52 = load i32, i32* %6, align 4, !dbg !781
  %53 = sub nsw i32 %51, %52, !dbg !782
  %54 = icmp sle i32 %50, %53, !dbg !783
  %55 = sext i32 %50 to i64, !dbg !784
  %56 = sext i32 %53 to i64, !dbg !784
  %57 = call i1 @iCmpInstHandler(i64 %55, i64 %56, i1 %54, i32 41, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @7, i32 0, i32 0), i64 94049490997504, i32 208, i32 15), !dbg !784
  br i1 %57, label %58, label %69, !dbg !784

; <label>:58:                                     ; preds = %49
  %59 = load double, double* %13, align 8, !dbg !785
  %60 = load i32, i32* %12, align 4, !dbg !787
  %61 = sext i32 %60 to i64, !dbg !788
  %62 = load double*, double** %9, align 8, !dbg !788
  %63 = getelementptr inbounds double, double* %62, i64 %61, !dbg !788
  %64 = load double, double* %63, align 8, !dbg !789
  %65 = fmul double %64, %59, !dbg !789
  call void @fMulHandler(double %64, double %59, double %65, i64 94049491001496, i64 94049490998616, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @7, i32 0, i32 0), i64 94049491001904, i32 208, i32 49), !dbg !789
  store double %65, double* %63, align 8, !dbg !789
  br label %66, !dbg !788

; <label>:66:                                     ; preds = %58
  %67 = load i32, i32* %12, align 4, !dbg !790
  %68 = add nsw i32 %67, 1, !dbg !790
  store i32 %68, i32* %12, align 4, !dbg !790
  br label %49, !dbg !792, !llvm.loop !793

; <label>:69:                                     ; preds = %49
  %70 = load i32, i32* %14, align 4, !dbg !795
  store i32 %70, i32* %5, align 4, !dbg !796
  br label %71, !dbg !796

; <label>:71:                                     ; preds = %69, %40, %39
  %72 = load i32, i32* %5, align 4, !dbg !797
  ret i32 %72, !dbg !797
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_bessel_In_scaled(i32, double) #0 !dbg !798 {
  %3 = alloca double, align 8
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca %struct.gsl_sf_result_struct, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !801, metadata !61), !dbg !802
  store double %1, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !803, metadata !61), !dbg !804
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %6, metadata !805, metadata !61), !dbg !806
  call void @llvm.dbg.declare(metadata i32* %7, metadata !807, metadata !61), !dbg !806
  %8 = load i32, i32* %4, align 4, !dbg !806
  %9 = load double, double* %5, align 8, !dbg !806
  %10 = call i32 @gsl_sf_bessel_In_scaled_e(i32 %8, double %9, %struct.gsl_sf_result_struct* %6), !dbg !806
  store i32 %10, i32* %7, align 4, !dbg !806
  %11 = load i32, i32* %7, align 4, !dbg !808
  %12 = icmp ne i32 %11, 0, !dbg !808
  %13 = sext i32 %11 to i64, !dbg !806
  %14 = call i1 @iCmpInstHandler(i64 %13, i64 0, i1 %12, i32 33, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @9, i32 0, i32 0), i64 94049491019568, i32 219, i32 3), !dbg !806
  br i1 %14, label %15, label %21, !dbg !806

; <label>:15:                                     ; preds = %2
  br label %16, !dbg !810, !llvm.loop !813

; <label>:16:                                     ; preds = %15
  %17 = load i32, i32* %7, align 4, !dbg !815
  call void @gsl_error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 219, i32 %17), !dbg !815
  %18 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !815
  %19 = load double, double* %18, align 8, !dbg !815
  store double %19, double* %3, align 8, !dbg !815
  br label %24, !dbg !815
                                                  ; No predecessors!
  br label %21, !dbg !818

; <label>:21:                                     ; preds = %20, %2
  %22 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !820
  %23 = load double, double* %22, align 8, !dbg !820
  store double %23, double* %3, align 8, !dbg !820
  br label %24, !dbg !820

; <label>:24:                                     ; preds = %21, %16
  %25 = load double, double* %3, align 8, !dbg !822
  ret double %25, !dbg !822
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_bessel_In(i32, double) #0 !dbg !823 {
  %3 = alloca double, align 8
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca %struct.gsl_sf_result_struct, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !824, metadata !61), !dbg !825
  store double %1, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !826, metadata !61), !dbg !827
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %6, metadata !828, metadata !61), !dbg !829
  call void @llvm.dbg.declare(metadata i32* %7, metadata !830, metadata !61), !dbg !829
  %8 = load i32, i32* %4, align 4, !dbg !829
  %9 = load double, double* %5, align 8, !dbg !829
  %10 = call i32 @gsl_sf_bessel_In_e(i32 %8, double %9, %struct.gsl_sf_result_struct* %6), !dbg !829
  store i32 %10, i32* %7, align 4, !dbg !829
  %11 = load i32, i32* %7, align 4, !dbg !831
  %12 = icmp ne i32 %11, 0, !dbg !831
  %13 = sext i32 %11 to i64, !dbg !829
  %14 = call i1 @iCmpInstHandler(i64 %13, i64 0, i1 %12, i32 33, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @11, i32 0, i32 0), i64 94049491038384, i32 224, i32 3), !dbg !829
  br i1 %14, label %15, label %21, !dbg !829

; <label>:15:                                     ; preds = %2
  br label %16, !dbg !833, !llvm.loop !836

; <label>:16:                                     ; preds = %15
  %17 = load i32, i32* %7, align 4, !dbg !838
  call void @gsl_error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 224, i32 %17), !dbg !838
  %18 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !838
  %19 = load double, double* %18, align 8, !dbg !838
  store double %19, double* %3, align 8, !dbg !838
  br label %24, !dbg !838
                                                  ; No predecessors!
  br label %21, !dbg !841

; <label>:21:                                     ; preds = %20, %2
  %22 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !843
  %23 = load double, double* %22, align 8, !dbg !843
  store double %23, double* %3, align 8, !dbg !843
  br label %24, !dbg !843

; <label>:24:                                     ; preds = %21, %16
  %25 = load double, double* %3, align 8, !dbg !845
  ret double %25, !dbg !845
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
!llvm.module.flags = !{!44, !45, !46}
!llvm.ident = !{!47}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !41)
!1 = !DIFile(filename: "bessel_In.c", directory: "/fpcc/gsl-2.5/specfunc")
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
!42 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!43 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!44 = !{i32 2, !"Dwarf Version", i32 4}
!45 = !{i32 2, !"Debug Info Version", i32 3}
!46 = !{i32 1, !"PIC Level", i32 2}
!47 = !{!"clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)"}
!48 = distinct !DISubprogram(name: "gsl_sf_bessel_In_scaled_e", scope: !1, file: !1, line: 35, type: !49, isLocal: false, isDefinition: true, scopeLine: 36, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !59)
!49 = !DISubroutineType(types: !50)
!50 = !{!43, !43, !51, !52}
!51 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64, align: 64)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !54, line: 41, baseType: !55)
!54 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/fpcc/gsl-2.5/specfunc")
!55 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !54, line: 37, size: 128, align: 64, elements: !56)
!56 = !{!57, !58}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !55, file: !54, line: 38, baseType: !42, size: 64, align: 64)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !55, file: !54, line: 39, baseType: !42, size: 64, align: 64, offset: 64)
!59 = !{}
!60 = !DILocalVariable(name: "n", arg: 1, scope: !48, file: !1, line: 35, type: !43)
!61 = !DIExpression()
!62 = !DILocation(line: 35, column: 31, scope: !48)
!63 = !DILocalVariable(name: "x", arg: 2, scope: !48, file: !1, line: 35, type: !51)
!64 = !DILocation(line: 35, column: 47, scope: !48)
!65 = !DILocalVariable(name: "result", arg: 3, scope: !48, file: !1, line: 35, type: !52)
!66 = !DILocation(line: 35, column: 66, scope: !48)
!67 = !DILocalVariable(name: "ax", scope: !48, file: !1, line: 37, type: !51)
!68 = !DILocation(line: 37, column: 16, scope: !48)
!69 = !DILocation(line: 37, column: 26, scope: !48)
!70 = !DILocation(line: 37, column: 21, scope: !48)
!71 = !DILocation(line: 39, column: 11, scope: !48)
!72 = !DILocation(line: 39, column: 7, scope: !48)
!73 = !DILocation(line: 39, column: 5, scope: !48)
!74 = !DILocation(line: 43, column: 6, scope: !75)
!75 = distinct !DILexicalBlock(scope: !48, file: !1, line: 43, column: 6)
!76 = !DILocation(line: 43, column: 8, scope: !75)
!77 = !DILocation(line: 43, column: 6, scope: !48)
!78 = !DILocation(line: 44, column: 38, scope: !79)
!79 = distinct !DILexicalBlock(scope: !75, file: !1, line: 43, column: 14)
!80 = !DILocation(line: 44, column: 41, scope: !79)
!81 = !DILocation(line: 44, column: 12, scope: !79)
!82 = !DILocation(line: 44, column: 5, scope: !79)
!83 = !DILocation(line: 46, column: 11, scope: !84)
!84 = distinct !DILexicalBlock(scope: !75, file: !1, line: 46, column: 11)
!85 = !DILocation(line: 46, column: 13, scope: !84)
!86 = !DILocation(line: 46, column: 11, scope: !75)
!87 = !DILocation(line: 47, column: 38, scope: !88)
!88 = distinct !DILexicalBlock(scope: !84, file: !1, line: 46, column: 19)
!89 = !DILocation(line: 47, column: 41, scope: !88)
!90 = !DILocation(line: 47, column: 12, scope: !88)
!91 = !DILocation(line: 47, column: 5, scope: !88)
!92 = !DILocation(line: 49, column: 11, scope: !93)
!93 = distinct !DILexicalBlock(scope: !84, file: !1, line: 49, column: 11)
!94 = !DILocation(line: 49, column: 13, scope: !93)
!95 = !DILocation(line: 49, column: 11, scope: !84)
!96 = !DILocation(line: 50, column: 5, scope: !97)
!97 = distinct !DILexicalBlock(scope: !93, file: !1, line: 49, column: 21)
!98 = !DILocation(line: 50, column: 13, scope: !97)
!99 = !DILocation(line: 50, column: 17, scope: !97)
!100 = !DILocation(line: 51, column: 5, scope: !97)
!101 = !DILocation(line: 51, column: 13, scope: !97)
!102 = !DILocation(line: 51, column: 17, scope: !97)
!103 = !DILocation(line: 52, column: 5, scope: !97)
!104 = !DILocation(line: 54, column: 11, scope: !105)
!105 = distinct !DILexicalBlock(scope: !93, file: !1, line: 54, column: 11)
!106 = !DILocation(line: 54, column: 13, scope: !105)
!107 = !DILocation(line: 54, column: 12, scope: !105)
!108 = !DILocation(line: 54, column: 23, scope: !105)
!109 = !DILocation(line: 54, column: 24, scope: !105)
!110 = !DILocation(line: 54, column: 21, scope: !105)
!111 = !DILocation(line: 54, column: 29, scope: !105)
!112 = !DILocation(line: 54, column: 15, scope: !105)
!113 = !DILocation(line: 54, column: 11, scope: !93)
!114 = !DILocalVariable(name: "t", scope: !115, file: !1, line: 55, type: !53)
!115 = distinct !DILexicalBlock(scope: !105, file: !1, line: 54, column: 35)
!116 = !DILocation(line: 55, column: 19, scope: !115)
!117 = !DILocalVariable(name: "ex", scope: !115, file: !1, line: 56, type: !42)
!118 = !DILocation(line: 56, column: 12, scope: !115)
!119 = !DILocation(line: 56, column: 24, scope: !115)
!120 = !DILocation(line: 56, column: 23, scope: !115)
!121 = !DILocation(line: 56, column: 19, scope: !115)
!122 = !DILocalVariable(name: "stat_In", scope: !115, file: !1, line: 57, type: !43)
!123 = !DILocation(line: 57, column: 9, scope: !115)
!124 = !DILocation(line: 57, column: 53, scope: !115)
!125 = !DILocation(line: 57, column: 45, scope: !115)
!126 = !DILocation(line: 57, column: 56, scope: !115)
!127 = !DILocation(line: 57, column: 19, scope: !115)
!128 = !DILocation(line: 58, column: 22, scope: !115)
!129 = !DILocation(line: 58, column: 28, scope: !115)
!130 = !DILocation(line: 58, column: 26, scope: !115)
!131 = !DILocation(line: 58, column: 5, scope: !115)
!132 = !DILocation(line: 58, column: 13, scope: !115)
!133 = !DILocation(line: 58, column: 18, scope: !115)
!134 = !DILocation(line: 59, column: 22, scope: !115)
!135 = !DILocation(line: 59, column: 28, scope: !115)
!136 = !DILocation(line: 59, column: 26, scope: !115)
!137 = !DILocation(line: 59, column: 5, scope: !115)
!138 = !DILocation(line: 59, column: 13, scope: !115)
!139 = !DILocation(line: 59, column: 18, scope: !115)
!140 = !DILocation(line: 60, column: 49, scope: !115)
!141 = !DILocation(line: 60, column: 57, scope: !115)
!142 = !DILocation(line: 60, column: 44, scope: !115)
!143 = !DILocation(line: 60, column: 42, scope: !115)
!144 = !DILocation(line: 60, column: 5, scope: !115)
!145 = !DILocation(line: 60, column: 13, scope: !115)
!146 = !DILocation(line: 60, column: 17, scope: !115)
!147 = !DILocation(line: 61, column: 8, scope: !148)
!148 = distinct !DILexicalBlock(scope: !115, file: !1, line: 61, column: 8)
!149 = !DILocation(line: 61, column: 10, scope: !148)
!150 = !DILocation(line: 61, column: 16, scope: !148)
!151 = !DILocation(line: 61, column: 19, scope: !152)
!152 = !DILexicalBlockFile(scope: !148, file: !1, discriminator: 1)
!153 = !DILocation(line: 61, column: 8, scope: !152)
!154 = !DILocation(line: 61, column: 49, scope: !155)
!155 = !DILexicalBlockFile(scope: !148, file: !1, discriminator: 2)
!156 = !DILocation(line: 61, column: 57, scope: !155)
!157 = !DILocation(line: 61, column: 48, scope: !155)
!158 = !DILocation(line: 61, column: 34, scope: !155)
!159 = !DILocation(line: 61, column: 42, scope: !155)
!160 = !DILocation(line: 61, column: 46, scope: !155)
!161 = !DILocation(line: 62, column: 12, scope: !115)
!162 = !DILocation(line: 62, column: 5, scope: !115)
!163 = !DILocation(line: 64, column: 11, scope: !164)
!164 = distinct !DILexicalBlock(scope: !105, file: !1, line: 64, column: 11)
!165 = !DILocation(line: 64, column: 13, scope: !164)
!166 = !DILocation(line: 64, column: 19, scope: !164)
!167 = !DILocation(line: 64, column: 22, scope: !168)
!168 = !DILexicalBlockFile(scope: !164, file: !1, discriminator: 1)
!169 = !DILocation(line: 64, column: 25, scope: !168)
!170 = !DILocation(line: 64, column: 11, scope: !168)
!171 = !DILocalVariable(name: "I0_scaled", scope: !172, file: !1, line: 65, type: !53)
!172 = distinct !DILexicalBlock(scope: !164, file: !1, line: 64, column: 32)
!173 = !DILocation(line: 65, column: 19, scope: !172)
!174 = !DILocalVariable(name: "stat_I0", scope: !172, file: !1, line: 66, type: !43)
!175 = !DILocation(line: 66, column: 9, scope: !172)
!176 = !DILocation(line: 66, column: 45, scope: !172)
!177 = !DILocation(line: 66, column: 19, scope: !172)
!178 = !DILocalVariable(name: "rat", scope: !172, file: !1, line: 67, type: !42)
!179 = !DILocation(line: 67, column: 12, scope: !172)
!180 = !DILocalVariable(name: "stat_CF1", scope: !172, file: !1, line: 68, type: !43)
!181 = !DILocation(line: 68, column: 9, scope: !172)
!182 = !DILocation(line: 68, column: 52, scope: !172)
!183 = !DILocation(line: 68, column: 44, scope: !172)
!184 = !DILocation(line: 68, column: 55, scope: !172)
!185 = !DILocation(line: 68, column: 20, scope: !172)
!186 = !DILocalVariable(name: "Ikp1", scope: !172, file: !1, line: 69, type: !42)
!187 = !DILocation(line: 69, column: 12, scope: !172)
!188 = !DILocation(line: 69, column: 19, scope: !172)
!189 = !DILocation(line: 69, column: 23, scope: !172)
!190 = !DILocalVariable(name: "Ik", scope: !172, file: !1, line: 70, type: !42)
!191 = !DILocation(line: 70, column: 12, scope: !172)
!192 = !DILocalVariable(name: "Ikm1", scope: !172, file: !1, line: 71, type: !42)
!193 = !DILocation(line: 71, column: 12, scope: !172)
!194 = !DILocalVariable(name: "k", scope: !172, file: !1, line: 72, type: !43)
!195 = !DILocation(line: 72, column: 9, scope: !172)
!196 = !DILocation(line: 73, column: 11, scope: !197)
!197 = distinct !DILexicalBlock(scope: !172, file: !1, line: 73, column: 5)
!198 = !DILocation(line: 73, column: 10, scope: !197)
!199 = !DILocation(line: 73, column: 9, scope: !197)
!200 = !DILocation(line: 73, column: 14, scope: !201)
!201 = !DILexicalBlockFile(scope: !202, file: !1, discriminator: 1)
!202 = distinct !DILexicalBlock(scope: !197, file: !1, line: 73, column: 5)
!203 = !DILocation(line: 73, column: 16, scope: !201)
!204 = !DILocation(line: 73, column: 5, scope: !201)
!205 = !DILocation(line: 74, column: 14, scope: !206)
!206 = distinct !DILexicalBlock(scope: !202, file: !1, line: 73, column: 27)
!207 = !DILocation(line: 74, column: 25, scope: !206)
!208 = !DILocation(line: 74, column: 24, scope: !206)
!209 = !DILocation(line: 74, column: 27, scope: !206)
!210 = !DILocation(line: 74, column: 26, scope: !206)
!211 = !DILocation(line: 74, column: 32, scope: !206)
!212 = !DILocation(line: 74, column: 30, scope: !206)
!213 = !DILocation(line: 74, column: 19, scope: !206)
!214 = !DILocation(line: 74, column: 12, scope: !206)
!215 = !DILocation(line: 75, column: 14, scope: !206)
!216 = !DILocation(line: 75, column: 12, scope: !206)
!217 = !DILocation(line: 76, column: 14, scope: !206)
!218 = !DILocation(line: 76, column: 12, scope: !206)
!219 = !DILocation(line: 77, column: 5, scope: !206)
!220 = !DILocation(line: 73, column: 23, scope: !221)
!221 = !DILexicalBlockFile(scope: !202, file: !1, discriminator: 2)
!222 = !DILocation(line: 73, column: 5, scope: !221)
!223 = distinct !{!223, !224}
!224 = !DILocation(line: 73, column: 5, scope: !172)
!225 = !DILocation(line: 78, column: 30, scope: !172)
!226 = !DILocation(line: 78, column: 56, scope: !172)
!227 = !DILocation(line: 78, column: 54, scope: !172)
!228 = !DILocation(line: 78, column: 34, scope: !172)
!229 = !DILocation(line: 78, column: 5, scope: !172)
!230 = !DILocation(line: 78, column: 13, scope: !172)
!231 = !DILocation(line: 78, column: 18, scope: !172)
!232 = !DILocation(line: 79, column: 30, scope: !172)
!233 = !DILocation(line: 79, column: 56, scope: !172)
!234 = !DILocation(line: 79, column: 54, scope: !172)
!235 = !DILocation(line: 79, column: 34, scope: !172)
!236 = !DILocation(line: 79, column: 5, scope: !172)
!237 = !DILocation(line: 79, column: 13, scope: !172)
!238 = !DILocation(line: 79, column: 18, scope: !172)
!239 = !DILocation(line: 80, column: 49, scope: !172)
!240 = !DILocation(line: 80, column: 57, scope: !172)
!241 = !DILocation(line: 80, column: 44, scope: !172)
!242 = !DILocation(line: 80, column: 42, scope: !172)
!243 = !DILocation(line: 80, column: 5, scope: !172)
!244 = !DILocation(line: 80, column: 13, scope: !172)
!245 = !DILocation(line: 80, column: 17, scope: !172)
!246 = !DILocation(line: 81, column: 8, scope: !247)
!247 = distinct !DILexicalBlock(scope: !172, file: !1, line: 81, column: 8)
!248 = !DILocation(line: 81, column: 10, scope: !247)
!249 = !DILocation(line: 81, column: 16, scope: !247)
!250 = !DILocation(line: 81, column: 19, scope: !251)
!251 = !DILexicalBlockFile(scope: !247, file: !1, discriminator: 1)
!252 = !DILocation(line: 81, column: 8, scope: !251)
!253 = !DILocation(line: 81, column: 49, scope: !254)
!254 = !DILexicalBlockFile(scope: !247, file: !1, discriminator: 2)
!255 = !DILocation(line: 81, column: 57, scope: !254)
!256 = !DILocation(line: 81, column: 48, scope: !254)
!257 = !DILocation(line: 81, column: 34, scope: !254)
!258 = !DILocation(line: 81, column: 42, scope: !254)
!259 = !DILocation(line: 81, column: 46, scope: !254)
!260 = !DILocation(line: 82, column: 12, scope: !172)
!261 = !DILocation(line: 82, column: 12, scope: !262)
!262 = !DILexicalBlockFile(scope: !172, file: !1, discriminator: 1)
!263 = !DILocation(line: 82, column: 12, scope: !264)
!264 = !DILexicalBlockFile(scope: !172, file: !1, discriminator: 2)
!265 = !DILocation(line: 82, column: 12, scope: !266)
!266 = !DILexicalBlockFile(scope: !172, file: !1, discriminator: 3)
!267 = !DILocation(line: 82, column: 12, scope: !268)
!268 = !DILexicalBlockFile(scope: !172, file: !1, discriminator: 4)
!269 = !DILocation(line: 82, column: 12, scope: !270)
!270 = !DILexicalBlockFile(scope: !172, file: !1, discriminator: 5)
!271 = !DILocation(line: 82, column: 12, scope: !272)
!272 = !DILexicalBlockFile(scope: !172, file: !1, discriminator: 6)
!273 = !DILocation(line: 82, column: 5, scope: !272)
!274 = !DILocation(line: 84, column: 12, scope: !275)
!275 = distinct !DILexicalBlock(scope: !164, file: !1, line: 84, column: 12)
!276 = !DILocation(line: 84, column: 12, scope: !277)
!277 = !DILexicalBlockFile(scope: !275, file: !1, discriminator: 1)
!278 = !DILocation(line: 84, column: 12, scope: !279)
!279 = !DILexicalBlockFile(scope: !275, file: !1, discriminator: 2)
!280 = !DILocation(line: 84, column: 12, scope: !281)
!281 = !DILexicalBlockFile(scope: !275, file: !1, discriminator: 3)
!282 = !DILocation(line: 84, column: 51, scope: !281)
!283 = !DILocalVariable(name: "stat_as", scope: !284, file: !1, line: 85, type: !43)
!284 = distinct !DILexicalBlock(scope: !275, file: !1, line: 84, column: 80)
!285 = !DILocation(line: 85, column: 9, scope: !284)
!286 = !DILocation(line: 85, column: 65, scope: !284)
!287 = !DILocation(line: 85, column: 57, scope: !284)
!288 = !DILocation(line: 85, column: 68, scope: !284)
!289 = !DILocation(line: 85, column: 72, scope: !284)
!290 = !DILocation(line: 85, column: 19, scope: !284)
!291 = !DILocation(line: 86, column: 8, scope: !292)
!292 = distinct !DILexicalBlock(scope: !284, file: !1, line: 86, column: 8)
!293 = !DILocation(line: 86, column: 10, scope: !292)
!294 = !DILocation(line: 86, column: 16, scope: !292)
!295 = !DILocation(line: 86, column: 19, scope: !296)
!296 = !DILexicalBlockFile(scope: !292, file: !1, discriminator: 1)
!297 = !DILocation(line: 86, column: 8, scope: !296)
!298 = !DILocation(line: 86, column: 49, scope: !299)
!299 = !DILexicalBlockFile(scope: !292, file: !1, discriminator: 2)
!300 = !DILocation(line: 86, column: 57, scope: !299)
!301 = !DILocation(line: 86, column: 48, scope: !299)
!302 = !DILocation(line: 86, column: 34, scope: !299)
!303 = !DILocation(line: 86, column: 42, scope: !299)
!304 = !DILocation(line: 86, column: 46, scope: !299)
!305 = !DILocation(line: 87, column: 12, scope: !284)
!306 = !DILocation(line: 87, column: 5, scope: !284)
!307 = !DILocalVariable(name: "nhi", scope: !308, file: !1, line: 90, type: !309)
!308 = distinct !DILexicalBlock(scope: !275, file: !1, line: 89, column: 8)
!309 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!310 = !DILocation(line: 90, column: 15, scope: !308)
!311 = !DILocalVariable(name: "r_Ikp1", scope: !308, file: !1, line: 91, type: !53)
!312 = !DILocation(line: 91, column: 19, scope: !308)
!313 = !DILocalVariable(name: "r_Ik", scope: !308, file: !1, line: 92, type: !53)
!314 = !DILocation(line: 92, column: 19, scope: !308)
!315 = !DILocalVariable(name: "stat_a1", scope: !308, file: !1, line: 93, type: !43)
!316 = !DILocation(line: 93, column: 9, scope: !308)
!317 = !DILocation(line: 93, column: 70, scope: !308)
!318 = !DILocation(line: 93, column: 19, scope: !308)
!319 = !DILocalVariable(name: "stat_a2", scope: !308, file: !1, line: 94, type: !43)
!320 = !DILocation(line: 94, column: 9, scope: !308)
!321 = !DILocation(line: 94, column: 70, scope: !308)
!322 = !DILocation(line: 94, column: 19, scope: !308)
!323 = !DILocalVariable(name: "Ikp1", scope: !308, file: !1, line: 95, type: !42)
!324 = !DILocation(line: 95, column: 12, scope: !308)
!325 = !DILocation(line: 95, column: 26, scope: !308)
!326 = !DILocalVariable(name: "Ik", scope: !308, file: !1, line: 96, type: !42)
!327 = !DILocation(line: 96, column: 12, scope: !308)
!328 = !DILocation(line: 96, column: 24, scope: !308)
!329 = !DILocalVariable(name: "Ikm1", scope: !308, file: !1, line: 97, type: !42)
!330 = !DILocation(line: 97, column: 12, scope: !308)
!331 = !DILocalVariable(name: "k", scope: !308, file: !1, line: 98, type: !43)
!332 = !DILocation(line: 98, column: 9, scope: !308)
!333 = !DILocation(line: 99, column: 10, scope: !334)
!334 = distinct !DILexicalBlock(scope: !308, file: !1, line: 99, column: 5)
!335 = !DILocation(line: 99, column: 9, scope: !334)
!336 = !DILocation(line: 99, column: 16, scope: !337)
!337 = !DILexicalBlockFile(scope: !338, file: !1, discriminator: 1)
!338 = distinct !DILexicalBlock(scope: !334, file: !1, line: 99, column: 5)
!339 = !DILocation(line: 99, column: 20, scope: !337)
!340 = !DILocation(line: 99, column: 18, scope: !337)
!341 = !DILocation(line: 99, column: 5, scope: !337)
!342 = !DILocation(line: 100, column: 14, scope: !343)
!343 = distinct !DILexicalBlock(scope: !338, file: !1, line: 99, column: 28)
!344 = !DILocation(line: 100, column: 25, scope: !343)
!345 = !DILocation(line: 100, column: 24, scope: !343)
!346 = !DILocation(line: 100, column: 27, scope: !343)
!347 = !DILocation(line: 100, column: 26, scope: !343)
!348 = !DILocation(line: 100, column: 32, scope: !343)
!349 = !DILocation(line: 100, column: 30, scope: !343)
!350 = !DILocation(line: 100, column: 19, scope: !343)
!351 = !DILocation(line: 100, column: 12, scope: !343)
!352 = !DILocation(line: 101, column: 14, scope: !343)
!353 = !DILocation(line: 101, column: 12, scope: !343)
!354 = !DILocation(line: 102, column: 14, scope: !343)
!355 = !DILocation(line: 102, column: 12, scope: !343)
!356 = !DILocation(line: 103, column: 5, scope: !343)
!357 = !DILocation(line: 99, column: 24, scope: !358)
!358 = !DILexicalBlockFile(scope: !338, file: !1, discriminator: 2)
!359 = !DILocation(line: 99, column: 5, scope: !358)
!360 = distinct !{!360, !361}
!361 = !DILocation(line: 99, column: 5, scope: !308)
!362 = !DILocation(line: 104, column: 19, scope: !308)
!363 = !DILocation(line: 104, column: 5, scope: !308)
!364 = !DILocation(line: 104, column: 13, scope: !308)
!365 = !DILocation(line: 104, column: 17, scope: !308)
!366 = !DILocation(line: 105, column: 19, scope: !308)
!367 = !DILocation(line: 105, column: 32, scope: !308)
!368 = !DILocation(line: 105, column: 43, scope: !308)
!369 = !DILocation(line: 105, column: 35, scope: !308)
!370 = !DILocation(line: 105, column: 54, scope: !308)
!371 = !DILocation(line: 105, column: 63, scope: !308)
!372 = !DILocation(line: 105, column: 57, scope: !308)
!373 = !DILocation(line: 105, column: 47, scope: !308)
!374 = !DILocation(line: 105, column: 22, scope: !308)
!375 = !DILocation(line: 105, column: 5, scope: !308)
!376 = !DILocation(line: 105, column: 13, scope: !308)
!377 = !DILocation(line: 105, column: 17, scope: !308)
!378 = !DILocation(line: 106, column: 8, scope: !379)
!379 = distinct !DILexicalBlock(scope: !308, file: !1, line: 106, column: 8)
!380 = !DILocation(line: 106, column: 10, scope: !379)
!381 = !DILocation(line: 106, column: 16, scope: !379)
!382 = !DILocation(line: 106, column: 19, scope: !383)
!383 = !DILexicalBlockFile(scope: !379, file: !1, discriminator: 1)
!384 = !DILocation(line: 106, column: 8, scope: !383)
!385 = !DILocation(line: 106, column: 49, scope: !386)
!386 = !DILexicalBlockFile(scope: !379, file: !1, discriminator: 2)
!387 = !DILocation(line: 106, column: 57, scope: !386)
!388 = !DILocation(line: 106, column: 48, scope: !386)
!389 = !DILocation(line: 106, column: 34, scope: !386)
!390 = !DILocation(line: 106, column: 42, scope: !386)
!391 = !DILocation(line: 106, column: 46, scope: !386)
!392 = !DILocation(line: 107, column: 12, scope: !308)
!393 = !DILocation(line: 107, column: 12, scope: !394)
!394 = !DILexicalBlockFile(scope: !308, file: !1, discriminator: 1)
!395 = !DILocation(line: 107, column: 12, scope: !396)
!396 = !DILexicalBlockFile(scope: !308, file: !1, discriminator: 2)
!397 = !DILocation(line: 107, column: 12, scope: !398)
!398 = !DILexicalBlockFile(scope: !308, file: !1, discriminator: 3)
!399 = !DILocation(line: 107, column: 12, scope: !400)
!400 = !DILexicalBlockFile(scope: !308, file: !1, discriminator: 4)
!401 = !DILocation(line: 107, column: 12, scope: !402)
!402 = !DILexicalBlockFile(scope: !308, file: !1, discriminator: 5)
!403 = !DILocation(line: 107, column: 12, scope: !404)
!404 = !DILexicalBlockFile(scope: !308, file: !1, discriminator: 6)
!405 = !DILocation(line: 107, column: 5, scope: !404)
!406 = !DILocation(line: 109, column: 1, scope: !48)
!407 = distinct !DISubprogram(name: "gsl_sf_bessel_In_scaled_array", scope: !1, file: !1, line: 113, type: !408, isLocal: false, isDefinition: true, scopeLine: 114, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !59)
!408 = !DISubroutineType(types: !409)
!409 = !{!43, !309, !309, !51, !410}
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64, align: 64)
!411 = !DILocalVariable(name: "nmin", arg: 1, scope: !407, file: !1, line: 113, type: !309)
!412 = !DILocation(line: 113, column: 41, scope: !407)
!413 = !DILocalVariable(name: "nmax", arg: 2, scope: !407, file: !1, line: 113, type: !309)
!414 = !DILocation(line: 113, column: 57, scope: !407)
!415 = !DILocalVariable(name: "x", arg: 3, scope: !407, file: !1, line: 113, type: !51)
!416 = !DILocation(line: 113, column: 76, scope: !407)
!417 = !DILocalVariable(name: "result_array", arg: 4, scope: !407, file: !1, line: 113, type: !410)
!418 = !DILocation(line: 113, column: 88, scope: !407)
!419 = !DILocation(line: 117, column: 6, scope: !420)
!420 = distinct !DILexicalBlock(scope: !407, file: !1, line: 117, column: 6)
!421 = !DILocation(line: 117, column: 13, scope: !420)
!422 = !DILocation(line: 117, column: 11, scope: !420)
!423 = !DILocation(line: 117, column: 18, scope: !420)
!424 = !DILocation(line: 117, column: 21, scope: !425)
!425 = !DILexicalBlockFile(scope: !420, file: !1, discriminator: 1)
!426 = !DILocation(line: 117, column: 26, scope: !425)
!427 = !DILocation(line: 117, column: 6, scope: !425)
!428 = !DILocalVariable(name: "j", scope: !429, file: !1, line: 118, type: !43)
!429 = distinct !DILexicalBlock(scope: !420, file: !1, line: 117, column: 31)
!430 = !DILocation(line: 118, column: 9, scope: !429)
!431 = !DILocation(line: 119, column: 10, scope: !432)
!432 = distinct !DILexicalBlock(scope: !429, file: !1, line: 119, column: 5)
!433 = !DILocation(line: 119, column: 9, scope: !432)
!434 = !DILocation(line: 119, column: 14, scope: !435)
!435 = !DILexicalBlockFile(scope: !436, file: !1, discriminator: 1)
!436 = distinct !DILexicalBlock(scope: !432, file: !1, line: 119, column: 5)
!437 = !DILocation(line: 119, column: 17, scope: !435)
!438 = !DILocation(line: 119, column: 22, scope: !435)
!439 = !DILocation(line: 119, column: 21, scope: !435)
!440 = !DILocation(line: 119, column: 15, scope: !435)
!441 = !DILocation(line: 119, column: 5, scope: !435)
!442 = !DILocation(line: 119, column: 46, scope: !443)
!443 = !DILexicalBlockFile(scope: !436, file: !1, discriminator: 2)
!444 = !DILocation(line: 119, column: 33, scope: !443)
!445 = !DILocation(line: 119, column: 49, scope: !443)
!446 = !DILocation(line: 119, column: 29, scope: !447)
!447 = !DILexicalBlockFile(scope: !436, file: !1, discriminator: 3)
!448 = !DILocation(line: 119, column: 5, scope: !447)
!449 = distinct !{!449, !450}
!450 = !DILocation(line: 119, column: 5, scope: !429)
!451 = !DILocation(line: 120, column: 5, scope: !429)
!452 = distinct !{!452, !451}
!453 = !DILocation(line: 120, column: 5, scope: !454)
!454 = !DILexicalBlockFile(scope: !455, file: !1, discriminator: 1)
!455 = distinct !DILexicalBlock(scope: !429, file: !1, line: 120, column: 5)
!456 = !DILocation(line: 121, column: 3, scope: !429)
!457 = !DILocation(line: 122, column: 11, scope: !458)
!458 = distinct !DILexicalBlock(scope: !420, file: !1, line: 122, column: 11)
!459 = !DILocation(line: 122, column: 13, scope: !458)
!460 = !DILocation(line: 122, column: 11, scope: !420)
!461 = !DILocalVariable(name: "j", scope: !462, file: !1, line: 123, type: !43)
!462 = distinct !DILexicalBlock(scope: !458, file: !1, line: 122, column: 21)
!463 = !DILocation(line: 123, column: 9, scope: !462)
!464 = !DILocation(line: 124, column: 10, scope: !465)
!465 = distinct !DILexicalBlock(scope: !462, file: !1, line: 124, column: 5)
!466 = !DILocation(line: 124, column: 9, scope: !465)
!467 = !DILocation(line: 124, column: 14, scope: !468)
!468 = !DILexicalBlockFile(scope: !469, file: !1, discriminator: 1)
!469 = distinct !DILexicalBlock(scope: !465, file: !1, line: 124, column: 5)
!470 = !DILocation(line: 124, column: 17, scope: !468)
!471 = !DILocation(line: 124, column: 22, scope: !468)
!472 = !DILocation(line: 124, column: 21, scope: !468)
!473 = !DILocation(line: 124, column: 15, scope: !468)
!474 = !DILocation(line: 124, column: 5, scope: !468)
!475 = !DILocation(line: 124, column: 46, scope: !476)
!476 = !DILexicalBlockFile(scope: !469, file: !1, discriminator: 2)
!477 = !DILocation(line: 124, column: 33, scope: !476)
!478 = !DILocation(line: 124, column: 49, scope: !476)
!479 = !DILocation(line: 124, column: 29, scope: !480)
!480 = !DILexicalBlockFile(scope: !469, file: !1, discriminator: 3)
!481 = !DILocation(line: 124, column: 5, scope: !480)
!482 = distinct !{!482, !483}
!483 = !DILocation(line: 124, column: 5, scope: !462)
!484 = !DILocation(line: 125, column: 8, scope: !485)
!485 = distinct !DILexicalBlock(scope: !462, file: !1, line: 125, column: 8)
!486 = !DILocation(line: 125, column: 13, scope: !485)
!487 = !DILocation(line: 125, column: 8, scope: !462)
!488 = !DILocation(line: 125, column: 19, scope: !489)
!489 = !DILexicalBlockFile(scope: !485, file: !1, discriminator: 1)
!490 = !DILocation(line: 125, column: 35, scope: !489)
!491 = !DILocation(line: 126, column: 5, scope: !462)
!492 = !DILocation(line: 128, column: 11, scope: !493)
!493 = distinct !DILexicalBlock(scope: !458, file: !1, line: 128, column: 11)
!494 = !DILocation(line: 128, column: 16, scope: !493)
!495 = !DILocation(line: 128, column: 11, scope: !458)
!496 = !DILocalVariable(name: "I0_scaled", scope: !497, file: !1, line: 129, type: !53)
!497 = distinct !DILexicalBlock(scope: !493, file: !1, line: 128, column: 22)
!498 = !DILocation(line: 129, column: 19, scope: !497)
!499 = !DILocalVariable(name: "stat", scope: !497, file: !1, line: 130, type: !43)
!500 = !DILocation(line: 130, column: 9, scope: !497)
!501 = !DILocation(line: 130, column: 42, scope: !497)
!502 = !DILocation(line: 130, column: 16, scope: !497)
!503 = !DILocation(line: 131, column: 33, scope: !497)
!504 = !DILocation(line: 131, column: 5, scope: !497)
!505 = !DILocation(line: 131, column: 21, scope: !497)
!506 = !DILocation(line: 132, column: 12, scope: !497)
!507 = !DILocation(line: 132, column: 5, scope: !497)
!508 = !DILocalVariable(name: "ax", scope: !509, file: !1, line: 135, type: !51)
!509 = distinct !DILexicalBlock(scope: !493, file: !1, line: 134, column: 8)
!510 = !DILocation(line: 135, column: 18, scope: !509)
!511 = !DILocation(line: 135, column: 28, scope: !509)
!512 = !DILocation(line: 135, column: 23, scope: !509)
!513 = !DILocalVariable(name: "two_over_x", scope: !509, file: !1, line: 136, type: !51)
!514 = !DILocation(line: 136, column: 18, scope: !509)
!515 = !DILocation(line: 136, column: 35, scope: !509)
!516 = !DILocation(line: 136, column: 34, scope: !509)
!517 = !DILocalVariable(name: "r_Inp1", scope: !509, file: !1, line: 139, type: !53)
!518 = !DILocation(line: 139, column: 19, scope: !509)
!519 = !DILocalVariable(name: "r_In", scope: !509, file: !1, line: 140, type: !53)
!520 = !DILocation(line: 140, column: 19, scope: !509)
!521 = !DILocalVariable(name: "stat_0", scope: !509, file: !1, line: 141, type: !43)
!522 = !DILocation(line: 141, column: 9, scope: !509)
!523 = !DILocation(line: 141, column: 44, scope: !509)
!524 = !DILocation(line: 141, column: 48, scope: !509)
!525 = !DILocation(line: 141, column: 52, scope: !509)
!526 = !DILocation(line: 141, column: 18, scope: !509)
!527 = !DILocalVariable(name: "stat_1", scope: !509, file: !1, line: 142, type: !43)
!528 = !DILocation(line: 142, column: 9, scope: !509)
!529 = !DILocation(line: 142, column: 44, scope: !509)
!530 = !DILocation(line: 142, column: 52, scope: !509)
!531 = !DILocation(line: 142, column: 18, scope: !509)
!532 = !DILocalVariable(name: "Inp1", scope: !509, file: !1, line: 143, type: !42)
!533 = !DILocation(line: 143, column: 12, scope: !509)
!534 = !DILocation(line: 143, column: 26, scope: !509)
!535 = !DILocalVariable(name: "In", scope: !509, file: !1, line: 144, type: !42)
!536 = !DILocation(line: 144, column: 12, scope: !509)
!537 = !DILocation(line: 144, column: 24, scope: !509)
!538 = !DILocalVariable(name: "Inm1", scope: !509, file: !1, line: 145, type: !42)
!539 = !DILocation(line: 145, column: 12, scope: !509)
!540 = !DILocalVariable(name: "n", scope: !509, file: !1, line: 146, type: !43)
!541 = !DILocation(line: 146, column: 9, scope: !509)
!542 = !DILocation(line: 148, column: 11, scope: !543)
!543 = distinct !DILexicalBlock(scope: !509, file: !1, line: 148, column: 5)
!544 = !DILocation(line: 148, column: 10, scope: !543)
!545 = !DILocation(line: 148, column: 9, scope: !543)
!546 = !DILocation(line: 148, column: 17, scope: !547)
!547 = !DILexicalBlockFile(scope: !548, file: !1, discriminator: 1)
!548 = distinct !DILexicalBlock(scope: !543, file: !1, line: 148, column: 5)
!549 = !DILocation(line: 148, column: 20, scope: !547)
!550 = !DILocation(line: 148, column: 18, scope: !547)
!551 = !DILocation(line: 148, column: 5, scope: !547)
!552 = !DILocation(line: 149, column: 30, scope: !553)
!553 = distinct !DILexicalBlock(scope: !548, file: !1, line: 148, column: 31)
!554 = !DILocation(line: 149, column: 20, scope: !553)
!555 = !DILocation(line: 149, column: 22, scope: !553)
!556 = !DILocation(line: 149, column: 21, scope: !553)
!557 = !DILocation(line: 149, column: 7, scope: !553)
!558 = !DILocation(line: 149, column: 28, scope: !553)
!559 = !DILocation(line: 150, column: 14, scope: !553)
!560 = !DILocation(line: 150, column: 21, scope: !553)
!561 = !DILocation(line: 150, column: 25, scope: !553)
!562 = !DILocation(line: 150, column: 23, scope: !553)
!563 = !DILocation(line: 150, column: 38, scope: !553)
!564 = !DILocation(line: 150, column: 36, scope: !553)
!565 = !DILocation(line: 150, column: 19, scope: !553)
!566 = !DILocation(line: 150, column: 12, scope: !553)
!567 = !DILocation(line: 151, column: 14, scope: !553)
!568 = !DILocation(line: 151, column: 12, scope: !553)
!569 = !DILocation(line: 152, column: 14, scope: !553)
!570 = !DILocation(line: 152, column: 12, scope: !553)
!571 = !DILocation(line: 153, column: 5, scope: !553)
!572 = !DILocation(line: 148, column: 27, scope: !573)
!573 = !DILexicalBlockFile(scope: !548, file: !1, discriminator: 2)
!574 = !DILocation(line: 148, column: 5, scope: !573)
!575 = distinct !{!575, !576}
!576 = !DILocation(line: 148, column: 5, scope: !509)
!577 = !DILocation(line: 156, column: 8, scope: !578)
!578 = distinct !DILexicalBlock(scope: !509, file: !1, line: 156, column: 8)
!579 = !DILocation(line: 156, column: 10, scope: !578)
!580 = !DILocation(line: 156, column: 8, scope: !509)
!581 = !DILocation(line: 157, column: 13, scope: !582)
!582 = distinct !DILexicalBlock(scope: !583, file: !1, line: 157, column: 7)
!583 = distinct !DILexicalBlock(scope: !578, file: !1, line: 156, column: 17)
!584 = !DILocation(line: 157, column: 12, scope: !582)
!585 = !DILocation(line: 157, column: 11, scope: !582)
!586 = !DILocation(line: 157, column: 19, scope: !587)
!587 = !DILexicalBlockFile(scope: !588, file: !1, discriminator: 1)
!588 = distinct !DILexicalBlock(scope: !582, file: !1, line: 157, column: 7)
!589 = !DILocation(line: 157, column: 22, scope: !587)
!590 = !DILocation(line: 157, column: 20, scope: !587)
!591 = !DILocation(line: 157, column: 7, scope: !587)
!592 = !DILocation(line: 158, column: 12, scope: !593)
!593 = distinct !DILexicalBlock(scope: !594, file: !1, line: 158, column: 12)
!594 = distinct !DILexicalBlock(scope: !588, file: !1, line: 157, column: 33)
!595 = !DILocation(line: 158, column: 12, scope: !594)
!596 = !DILocation(line: 158, column: 64, scope: !597)
!597 = !DILexicalBlockFile(scope: !593, file: !1, discriminator: 1)
!598 = !DILocation(line: 158, column: 66, scope: !597)
!599 = !DILocation(line: 158, column: 65, scope: !597)
!600 = !DILocation(line: 158, column: 51, scope: !597)
!601 = !DILocation(line: 158, column: 50, scope: !597)
!602 = !DILocation(line: 158, column: 40, scope: !597)
!603 = !DILocation(line: 158, column: 42, scope: !597)
!604 = !DILocation(line: 158, column: 41, scope: !597)
!605 = !DILocation(line: 158, column: 27, scope: !597)
!606 = !DILocation(line: 158, column: 48, scope: !597)
!607 = !DILocation(line: 159, column: 7, scope: !594)
!608 = !DILocation(line: 157, column: 29, scope: !609)
!609 = !DILexicalBlockFile(scope: !588, file: !1, discriminator: 2)
!610 = !DILocation(line: 157, column: 7, scope: !609)
!611 = distinct !{!611, !612}
!612 = !DILocation(line: 157, column: 7, scope: !583)
!613 = !DILocation(line: 160, column: 5, scope: !583)
!614 = !DILocation(line: 162, column: 12, scope: !509)
!615 = !DILocation(line: 162, column: 12, scope: !616)
!616 = !DILexicalBlockFile(scope: !509, file: !1, discriminator: 1)
!617 = !DILocation(line: 162, column: 12, scope: !618)
!618 = !DILexicalBlockFile(scope: !509, file: !1, discriminator: 2)
!619 = !DILocation(line: 162, column: 12, scope: !620)
!620 = !DILexicalBlockFile(scope: !509, file: !1, discriminator: 3)
!621 = !DILocation(line: 162, column: 12, scope: !622)
!622 = !DILexicalBlockFile(scope: !509, file: !1, discriminator: 4)
!623 = !DILocation(line: 162, column: 12, scope: !624)
!624 = !DILexicalBlockFile(scope: !509, file: !1, discriminator: 5)
!625 = !DILocation(line: 162, column: 12, scope: !626)
!626 = !DILexicalBlockFile(scope: !509, file: !1, discriminator: 6)
!627 = !DILocation(line: 162, column: 5, scope: !626)
!628 = !DILocation(line: 164, column: 1, scope: !407)
!629 = distinct !DISubprogram(name: "gsl_sf_bessel_In_e", scope: !1, file: !1, line: 168, type: !630, isLocal: false, isDefinition: true, scopeLine: 169, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !59)
!630 = !DISubroutineType(types: !631)
!631 = !{!43, !309, !51, !52}
!632 = !DILocalVariable(name: "n_in", arg: 1, scope: !629, file: !1, line: 168, type: !309)
!633 = !DILocation(line: 168, column: 30, scope: !629)
!634 = !DILocalVariable(name: "x", arg: 2, scope: !629, file: !1, line: 168, type: !51)
!635 = !DILocation(line: 168, column: 49, scope: !629)
!636 = !DILocalVariable(name: "result", arg: 3, scope: !629, file: !1, line: 168, type: !52)
!637 = !DILocation(line: 168, column: 68, scope: !629)
!638 = !DILocalVariable(name: "ax", scope: !629, file: !1, line: 170, type: !51)
!639 = !DILocation(line: 170, column: 16, scope: !629)
!640 = !DILocation(line: 170, column: 26, scope: !629)
!641 = !DILocation(line: 170, column: 21, scope: !629)
!642 = !DILocalVariable(name: "n", scope: !629, file: !1, line: 171, type: !309)
!643 = !DILocation(line: 171, column: 13, scope: !629)
!644 = !DILocation(line: 171, column: 21, scope: !629)
!645 = !DILocation(line: 171, column: 17, scope: !629)
!646 = !DILocalVariable(name: "In_scaled", scope: !629, file: !1, line: 172, type: !53)
!647 = !DILocation(line: 172, column: 17, scope: !629)
!648 = !DILocalVariable(name: "stat_In_scaled", scope: !629, file: !1, line: 173, type: !309)
!649 = !DILocation(line: 173, column: 13, scope: !629)
!650 = !DILocation(line: 173, column: 56, scope: !629)
!651 = !DILocation(line: 173, column: 59, scope: !629)
!652 = !DILocation(line: 173, column: 30, scope: !629)
!653 = !DILocation(line: 178, column: 6, scope: !654)
!654 = distinct !DILexicalBlock(scope: !629, file: !1, line: 178, column: 6)
!655 = !DILocation(line: 178, column: 9, scope: !654)
!656 = !DILocation(line: 178, column: 6, scope: !629)
!657 = !DILocation(line: 179, column: 5, scope: !658)
!658 = distinct !DILexicalBlock(scope: !654, file: !1, line: 178, column: 34)
!659 = distinct !{!659, !657}
!660 = !DILocation(line: 179, column: 5, scope: !661)
!661 = !DILexicalBlockFile(scope: !662, file: !1, discriminator: 1)
!662 = distinct !DILexicalBlock(scope: !658, file: !1, line: 179, column: 5)
!663 = distinct !{!663, !664}
!664 = !DILocation(line: 179, column: 5, scope: !662)
!665 = !DILocation(line: 179, column: 5, scope: !666)
!666 = !DILexicalBlockFile(scope: !667, file: !1, discriminator: 2)
!667 = distinct !DILexicalBlock(scope: !662, file: !1, line: 179, column: 5)
!668 = !DILocation(line: 179, column: 5, scope: !669)
!669 = !DILexicalBlockFile(scope: !662, file: !1, discriminator: 3)
!670 = !DILocation(line: 180, column: 3, scope: !658)
!671 = !DILocalVariable(name: "ex", scope: !672, file: !1, line: 182, type: !51)
!672 = distinct !DILexicalBlock(scope: !654, file: !1, line: 181, column: 8)
!673 = !DILocation(line: 182, column: 18, scope: !672)
!674 = !DILocation(line: 182, column: 27, scope: !672)
!675 = !DILocation(line: 182, column: 23, scope: !672)
!676 = !DILocation(line: 183, column: 20, scope: !672)
!677 = !DILocation(line: 183, column: 35, scope: !672)
!678 = !DILocation(line: 183, column: 23, scope: !672)
!679 = !DILocation(line: 183, column: 5, scope: !672)
!680 = !DILocation(line: 183, column: 13, scope: !672)
!681 = !DILocation(line: 183, column: 18, scope: !672)
!682 = !DILocation(line: 184, column: 20, scope: !672)
!683 = !DILocation(line: 184, column: 35, scope: !672)
!684 = !DILocation(line: 184, column: 23, scope: !672)
!685 = !DILocation(line: 184, column: 5, scope: !672)
!686 = !DILocation(line: 184, column: 13, scope: !672)
!687 = !DILocation(line: 184, column: 18, scope: !672)
!688 = !DILocation(line: 185, column: 20, scope: !672)
!689 = !DILocation(line: 185, column: 23, scope: !672)
!690 = !DILocation(line: 185, column: 48, scope: !672)
!691 = !DILocation(line: 185, column: 56, scope: !672)
!692 = !DILocation(line: 185, column: 43, scope: !672)
!693 = !DILocation(line: 185, column: 41, scope: !672)
!694 = !DILocation(line: 185, column: 5, scope: !672)
!695 = !DILocation(line: 185, column: 13, scope: !672)
!696 = !DILocation(line: 185, column: 17, scope: !672)
!697 = !DILocation(line: 186, column: 8, scope: !698)
!698 = distinct !DILexicalBlock(scope: !672, file: !1, line: 186, column: 8)
!699 = !DILocation(line: 186, column: 10, scope: !698)
!700 = !DILocation(line: 186, column: 16, scope: !698)
!701 = !DILocation(line: 186, column: 19, scope: !702)
!702 = !DILexicalBlockFile(scope: !698, file: !1, discriminator: 1)
!703 = !DILocation(line: 186, column: 8, scope: !702)
!704 = !DILocation(line: 186, column: 49, scope: !705)
!705 = !DILexicalBlockFile(scope: !698, file: !1, discriminator: 2)
!706 = !DILocation(line: 186, column: 57, scope: !705)
!707 = !DILocation(line: 186, column: 48, scope: !705)
!708 = !DILocation(line: 186, column: 34, scope: !705)
!709 = !DILocation(line: 186, column: 42, scope: !705)
!710 = !DILocation(line: 186, column: 46, scope: !705)
!711 = !DILocation(line: 187, column: 12, scope: !672)
!712 = !DILocation(line: 187, column: 5, scope: !672)
!713 = !DILocation(line: 189, column: 1, scope: !629)
!714 = distinct !DISubprogram(name: "gsl_sf_bessel_In_array", scope: !1, file: !1, line: 193, type: !408, isLocal: false, isDefinition: true, scopeLine: 194, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !59)
!715 = !DILocalVariable(name: "nmin", arg: 1, scope: !714, file: !1, line: 193, type: !309)
!716 = !DILocation(line: 193, column: 34, scope: !714)
!717 = !DILocalVariable(name: "nmax", arg: 2, scope: !714, file: !1, line: 193, type: !309)
!718 = !DILocation(line: 193, column: 50, scope: !714)
!719 = !DILocalVariable(name: "x", arg: 3, scope: !714, file: !1, line: 193, type: !51)
!720 = !DILocation(line: 193, column: 69, scope: !714)
!721 = !DILocalVariable(name: "result_array", arg: 4, scope: !714, file: !1, line: 193, type: !410)
!722 = !DILocation(line: 193, column: 81, scope: !714)
!723 = !DILocalVariable(name: "ax", scope: !714, file: !1, line: 195, type: !42)
!724 = !DILocation(line: 195, column: 10, scope: !714)
!725 = !DILocation(line: 195, column: 20, scope: !714)
!726 = !DILocation(line: 195, column: 15, scope: !714)
!727 = !DILocation(line: 199, column: 6, scope: !728)
!728 = distinct !DILexicalBlock(scope: !714, file: !1, line: 199, column: 6)
!729 = !DILocation(line: 199, column: 9, scope: !728)
!730 = !DILocation(line: 199, column: 6, scope: !714)
!731 = !DILocalVariable(name: "j", scope: !732, file: !1, line: 200, type: !43)
!732 = distinct !DILexicalBlock(scope: !728, file: !1, line: 199, column: 34)
!733 = !DILocation(line: 200, column: 9, scope: !732)
!734 = !DILocation(line: 201, column: 10, scope: !735)
!735 = distinct !DILexicalBlock(scope: !732, file: !1, line: 201, column: 5)
!736 = !DILocation(line: 201, column: 9, scope: !735)
!737 = !DILocation(line: 201, column: 14, scope: !738)
!738 = !DILexicalBlockFile(scope: !739, file: !1, discriminator: 1)
!739 = distinct !DILexicalBlock(scope: !735, file: !1, line: 201, column: 5)
!740 = !DILocation(line: 201, column: 17, scope: !738)
!741 = !DILocation(line: 201, column: 22, scope: !738)
!742 = !DILocation(line: 201, column: 21, scope: !738)
!743 = !DILocation(line: 201, column: 15, scope: !738)
!744 = !DILocation(line: 201, column: 5, scope: !738)
!745 = !DILocation(line: 201, column: 46, scope: !746)
!746 = !DILexicalBlockFile(scope: !739, file: !1, discriminator: 2)
!747 = !DILocation(line: 201, column: 33, scope: !746)
!748 = !DILocation(line: 201, column: 49, scope: !746)
!749 = !DILocation(line: 201, column: 29, scope: !750)
!750 = !DILexicalBlockFile(scope: !739, file: !1, discriminator: 3)
!751 = !DILocation(line: 201, column: 5, scope: !750)
!752 = distinct !{!752, !753}
!753 = !DILocation(line: 201, column: 5, scope: !732)
!754 = !DILocation(line: 202, column: 5, scope: !732)
!755 = distinct !{!755, !754}
!756 = !DILocation(line: 202, column: 5, scope: !757)
!757 = !DILexicalBlockFile(scope: !758, file: !1, discriminator: 1)
!758 = distinct !DILexicalBlock(scope: !732, file: !1, line: 202, column: 5)
!759 = !DILocation(line: 203, column: 3, scope: !732)
!760 = !DILocalVariable(name: "j", scope: !761, file: !1, line: 205, type: !43)
!761 = distinct !DILexicalBlock(scope: !728, file: !1, line: 204, column: 8)
!762 = !DILocation(line: 205, column: 9, scope: !761)
!763 = !DILocalVariable(name: "eax", scope: !761, file: !1, line: 206, type: !42)
!764 = !DILocation(line: 206, column: 12, scope: !761)
!765 = !DILocation(line: 206, column: 22, scope: !761)
!766 = !DILocation(line: 206, column: 18, scope: !761)
!767 = !DILocalVariable(name: "status", scope: !761, file: !1, line: 207, type: !43)
!768 = !DILocation(line: 207, column: 9, scope: !761)
!769 = !DILocation(line: 207, column: 48, scope: !761)
!770 = !DILocation(line: 207, column: 54, scope: !761)
!771 = !DILocation(line: 207, column: 60, scope: !761)
!772 = !DILocation(line: 207, column: 63, scope: !761)
!773 = !DILocation(line: 207, column: 18, scope: !761)
!774 = !DILocation(line: 208, column: 10, scope: !775)
!775 = distinct !DILexicalBlock(scope: !761, file: !1, line: 208, column: 5)
!776 = !DILocation(line: 208, column: 9, scope: !775)
!777 = !DILocation(line: 208, column: 14, scope: !778)
!778 = !DILexicalBlockFile(scope: !779, file: !1, discriminator: 1)
!779 = distinct !DILexicalBlock(scope: !775, file: !1, line: 208, column: 5)
!780 = !DILocation(line: 208, column: 17, scope: !778)
!781 = !DILocation(line: 208, column: 22, scope: !778)
!782 = !DILocation(line: 208, column: 21, scope: !778)
!783 = !DILocation(line: 208, column: 15, scope: !778)
!784 = !DILocation(line: 208, column: 5, scope: !778)
!785 = !DILocation(line: 208, column: 52, scope: !786)
!786 = !DILexicalBlockFile(scope: !779, file: !1, discriminator: 2)
!787 = !DILocation(line: 208, column: 46, scope: !786)
!788 = !DILocation(line: 208, column: 33, scope: !786)
!789 = !DILocation(line: 208, column: 49, scope: !786)
!790 = !DILocation(line: 208, column: 29, scope: !791)
!791 = !DILexicalBlockFile(scope: !779, file: !1, discriminator: 3)
!792 = !DILocation(line: 208, column: 5, scope: !791)
!793 = distinct !{!793, !794}
!794 = !DILocation(line: 208, column: 5, scope: !761)
!795 = !DILocation(line: 209, column: 12, scope: !761)
!796 = !DILocation(line: 209, column: 5, scope: !761)
!797 = !DILocation(line: 211, column: 1, scope: !714)
!798 = distinct !DISubprogram(name: "gsl_sf_bessel_In_scaled", scope: !1, file: !1, line: 217, type: !799, isLocal: false, isDefinition: true, scopeLine: 218, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !59)
!799 = !DISubroutineType(types: !800)
!800 = !{!42, !309, !51}
!801 = !DILocalVariable(name: "n", arg: 1, scope: !798, file: !1, line: 217, type: !309)
!802 = !DILocation(line: 217, column: 42, scope: !798)
!803 = !DILocalVariable(name: "x", arg: 2, scope: !798, file: !1, line: 217, type: !51)
!804 = !DILocation(line: 217, column: 58, scope: !798)
!805 = !DILocalVariable(name: "result", scope: !798, file: !1, line: 219, type: !53)
!806 = !DILocation(line: 219, column: 3, scope: !798)
!807 = !DILocalVariable(name: "status", scope: !798, file: !1, line: 219, type: !43)
!808 = !DILocation(line: 219, column: 3, scope: !809)
!809 = distinct !DILexicalBlock(scope: !798, file: !1, line: 219, column: 3)
!810 = !DILocation(line: 219, column: 3, scope: !811)
!811 = !DILexicalBlockFile(scope: !812, file: !1, discriminator: 1)
!812 = distinct !DILexicalBlock(scope: !809, file: !1, line: 219, column: 3)
!813 = distinct !{!813, !814}
!814 = !DILocation(line: 219, column: 3, scope: !812)
!815 = !DILocation(line: 219, column: 3, scope: !816)
!816 = !DILexicalBlockFile(scope: !817, file: !1, discriminator: 2)
!817 = distinct !DILexicalBlock(scope: !812, file: !1, line: 219, column: 3)
!818 = !DILocation(line: 219, column: 3, scope: !819)
!819 = !DILexicalBlockFile(scope: !812, file: !1, discriminator: 3)
!820 = !DILocation(line: 219, column: 3, scope: !821)
!821 = !DILexicalBlockFile(scope: !798, file: !1, discriminator: 4)
!822 = !DILocation(line: 220, column: 1, scope: !798)
!823 = distinct !DISubprogram(name: "gsl_sf_bessel_In", scope: !1, file: !1, line: 222, type: !799, isLocal: false, isDefinition: true, scopeLine: 223, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !59)
!824 = !DILocalVariable(name: "n", arg: 1, scope: !823, file: !1, line: 222, type: !309)
!825 = !DILocation(line: 222, column: 35, scope: !823)
!826 = !DILocalVariable(name: "x", arg: 2, scope: !823, file: !1, line: 222, type: !51)
!827 = !DILocation(line: 222, column: 51, scope: !823)
!828 = !DILocalVariable(name: "result", scope: !823, file: !1, line: 224, type: !53)
!829 = !DILocation(line: 224, column: 3, scope: !823)
!830 = !DILocalVariable(name: "status", scope: !823, file: !1, line: 224, type: !43)
!831 = !DILocation(line: 224, column: 3, scope: !832)
!832 = distinct !DILexicalBlock(scope: !823, file: !1, line: 224, column: 3)
!833 = !DILocation(line: 224, column: 3, scope: !834)
!834 = !DILexicalBlockFile(scope: !835, file: !1, discriminator: 1)
!835 = distinct !DILexicalBlock(scope: !832, file: !1, line: 224, column: 3)
!836 = distinct !{!836, !837}
!837 = !DILocation(line: 224, column: 3, scope: !835)
!838 = !DILocation(line: 224, column: 3, scope: !839)
!839 = !DILexicalBlockFile(scope: !840, file: !1, discriminator: 2)
!840 = distinct !DILexicalBlock(scope: !835, file: !1, line: 224, column: 3)
!841 = !DILocation(line: 224, column: 3, scope: !842)
!842 = !DILexicalBlockFile(scope: !835, file: !1, discriminator: 3)
!843 = !DILocation(line: 224, column: 3, scope: !844)
!844 = !DILexicalBlockFile(scope: !823, file: !1, discriminator: 4)
!845 = !DILocation(line: 225, column: 1, scope: !823)
