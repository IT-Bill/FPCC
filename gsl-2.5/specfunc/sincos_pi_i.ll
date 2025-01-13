; ModuleID = 'sincos_pi.ll'
source_filename = "sincos_pi.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsl_sf_result_struct = type { double, double }

@.str = private unnamed_addr constant [28 x i8] c"gsl_sf_sin_pi_e(x, &result)\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"sincos_pi.c\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"gsl_sf_cos_pi_e(x, &result)\00", align 1
@0 = private unnamed_addr constant [16 x i8] c"gsl_sf_sin_pi_e\00"
@1 = private unnamed_addr constant [13 x i8] c"sincos_pi.ll\00"
@2 = private unnamed_addr constant [14 x i8] c"cos_pi_taylor\00"
@3 = private unnamed_addr constant [13 x i8] c"sincos_pi.ll\00"
@4 = private unnamed_addr constant [14 x i8] c"sin_pi_taylor\00"
@5 = private unnamed_addr constant [13 x i8] c"sincos_pi.ll\00"
@6 = private unnamed_addr constant [16 x i8] c"gsl_sf_cos_pi_e\00"
@7 = private unnamed_addr constant [13 x i8] c"sincos_pi.ll\00"
@8 = private unnamed_addr constant [14 x i8] c"gsl_sf_sin_pi\00"
@9 = private unnamed_addr constant [13 x i8] c"sincos_pi.ll\00"
@10 = private unnamed_addr constant [14 x i8] c"gsl_sf_cos_pi\00"
@11 = private unnamed_addr constant [13 x i8] c"sincos_pi.ll\00"

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_sin_pi_e(double, %struct.gsl_sf_result_struct*) #0 !dbg !45 {
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca %struct.gsl_sf_result_struct*, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !59, metadata !60), !dbg !61
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %5, metadata !62, metadata !60), !dbg !63
  call void @llvm.dbg.declare(metadata double* %6, metadata !64, metadata !60), !dbg !65
  store double 0.000000e+00, double* %6, align 8, !dbg !65
  call void @llvm.dbg.declare(metadata double* %7, metadata !66, metadata !60), !dbg !67
  store double 0.000000e+00, double* %7, align 8, !dbg !67
  call void @llvm.dbg.declare(metadata i64* %8, metadata !68, metadata !60), !dbg !70
  call void @llvm.dbg.declare(metadata i32* %9, metadata !71, metadata !60), !dbg !72
  store i32 1, i32* %9, align 4, !dbg !72
  call void @llvm.dbg.declare(metadata i32* %10, metadata !73, metadata !60), !dbg !74
  %11 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !75
  %12 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 0, !dbg !76
  store double 0.000000e+00, double* %12, align 8, !dbg !77
  %13 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !78
  %14 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %13, i32 0, i32 1, !dbg !79
  store double 0.000000e+00, double* %14, align 8, !dbg !80
  %15 = load double, double* %4, align 8, !dbg !81
  %16 = call double @modf(double %15, double* %6) #5, !dbg !82
  store double %16, double* %7, align 8, !dbg !83
  %17 = load double, double* %7, align 8, !dbg !84
  %18 = fcmp oeq double %17, 0.000000e+00, !dbg !86
  %19 = call i1 @fCmpInstHandler(double %17, double 0.000000e+00, i1 %18, i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94604332592832, i32 151, i32 13), !dbg !87
  br i1 %19, label %20, label %21, !dbg !87

; <label>:20:                                     ; preds = %2
  store i32 0, i32* %3, align 4, !dbg !88
  br label %125, !dbg !88

; <label>:21:                                     ; preds = %2
  %22 = load double, double* %6, align 8, !dbg !90
  %23 = call double @fabs(double %22) #1, !dbg !92
  %24 = fcmp oge double %23, 0x4340000000000000, !dbg !93
  %25 = call i1 @fCmpInstHandler(double %23, double 0x4340000000000000, i1 %24, i32 3, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94604332597200, i32 152, i32 17), !dbg !94
  br i1 %25, label %26, label %27, !dbg !94

; <label>:26:                                     ; preds = %21
  store i32 0, i32* %3, align 4, !dbg !95
  br label %125, !dbg !95

; <label>:27:                                     ; preds = %21
  %28 = load double, double* %6, align 8, !dbg !97
  %29 = fcmp oge double %28, 0xC3E0000000000000, !dbg !98
  %30 = call i1 @fCmpInstHandler(double %28, double 0xC3E0000000000000, i1 %29, i32 3, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94604332600720, i32 154, i32 17), !dbg !99
  br i1 %30, label %31, label %37, !dbg !99

; <label>:31:                                     ; preds = %27
  %32 = load double, double* %6, align 8, !dbg !100
  %33 = fcmp ole double %32, 0x43E0000000000000, !dbg !102
  %34 = call i1 @fCmpInstHandler(double %32, double 0x43E0000000000000, i1 %33, i32 5, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94604332602240, i32 154, i32 39), !dbg !103
  br i1 %34, label %35, label %37, !dbg !103

; <label>:35:                                     ; preds = %31
  %36 = load double, double* %6, align 8, !dbg !104
  br label %40, !dbg !106

; <label>:37:                                     ; preds = %31, %27
  %38 = load double, double* %6, align 8, !dbg !107
  %39 = call double @fmod(double %38, double 2.000000e+00) #5, !dbg !109
  br label %40, !dbg !110

; <label>:40:                                     ; preds = %37, %35
  %41 = phi double [ %36, %35 ], [ %39, %37 ], !dbg !111
  %42 = fptosi double %41 to i64, !dbg !113
  store i64 %42, i64* %8, align 8, !dbg !114
  %43 = load i64, i64* %8, align 8, !dbg !115
  %44 = srem i64 %43, 2, !dbg !116
  %45 = icmp ne i64 %44, 0, !dbg !115
  %46 = call i1 @iCmpInstHandler(i64 %44, i64 0, i1 %45, i32 33, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94604332608416, i32 155, i32 12), !dbg !115
  %47 = select i1 %46, i32 -1, i32 1, !dbg !115
  store i32 %47, i32* %9, align 4, !dbg !117
  %48 = load double, double* %7, align 8, !dbg !118
  %49 = call double @fabs(double %48) #1, !dbg !120
  %50 = fcmp oeq double %49, 5.000000e-01, !dbg !121
  %51 = call i1 @fCmpInstHandler(double %49, double 5.000000e-01, i1 %50, i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94604332611744, i32 158, i32 19), !dbg !122
  br i1 %51, label %52, label %67, !dbg !122

; <label>:52:                                     ; preds = %40
  %53 = load double, double* %7, align 8, !dbg !123
  %54 = fcmp olt double %53, 0.000000e+00, !dbg !126
  %55 = call i1 @fCmpInstHandler(double %53, double 0.000000e+00, i1 %54, i32 4, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94604332613168, i32 159, i32 15), !dbg !127
  br i1 %55, label %56, label %59, !dbg !127

; <label>:56:                                     ; preds = %52
  %57 = load i32, i32* %9, align 4, !dbg !128
  %58 = sub nsw i32 0, %57, !dbg !130
  store i32 %58, i32* %9, align 4, !dbg !131
  br label %59, !dbg !132

; <label>:59:                                     ; preds = %56, %52
  %60 = load i32, i32* %9, align 4, !dbg !133
  %61 = icmp ne i32 %60, 1, !dbg !134
  %62 = sext i32 %60 to i64, !dbg !133
  %63 = call i1 @iCmpInstHandler(i64 %62, i64 1, i1 %61, i32 33, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94604332616160, i32 160, i32 26), !dbg !133
  %64 = select i1 %63, double -1.000000e+00, double 1.000000e+00, !dbg !133
  %65 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !135
  %66 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %65, i32 0, i32 0, !dbg !136
  store double %64, double* %66, align 8, !dbg !137
  store i32 0, i32* %3, align 4, !dbg !138
  br label %125, !dbg !138

; <label>:67:                                     ; preds = %40
  %68 = load double, double* %7, align 8, !dbg !139
  %69 = call double @fabs(double %68) #1, !dbg !141
  %70 = fcmp ogt double %69, 5.000000e-01, !dbg !142
  %71 = call i1 @fCmpInstHandler(double %69, double 5.000000e-01, i1 %70, i32 2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94604332622608, i32 163, i32 19), !dbg !143
  br i1 %71, label %72, label %86, !dbg !143

; <label>:72:                                     ; preds = %67
  %73 = load i32, i32* %9, align 4, !dbg !144
  %74 = sub nsw i32 0, %73, !dbg !146
  store i32 %74, i32* %9, align 4, !dbg !147
  %75 = load double, double* %7, align 8, !dbg !148
  %76 = fcmp ogt double %75, 0.000000e+00, !dbg !149
  %77 = call i1 @fCmpInstHandler(double %75, double 0.000000e+00, i1 %76, i32 2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94604332626288, i32 165, i32 21), !dbg !148
  br i1 %77, label %78, label %81, !dbg !148

; <label>:78:                                     ; preds = %72
  %79 = load double, double* %7, align 8, !dbg !150
  %80 = fsub double %79, 1.000000e+00, !dbg !152
  call void @fSubHandler(double %79, double 1.000000e+00, double %80, i64 94604332628664, i64 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94604332629040, i32 165, i32 34), !dbg !153
  br label %84, !dbg !153

; <label>:81:                                     ; preds = %72
  %82 = load double, double* %7, align 8, !dbg !154
  %83 = fadd double %82, 1.000000e+00, !dbg !156
  call void @fAddHandler(double %82, double 1.000000e+00, double %83, i64 94604332629928, i64 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94604332630304, i32 165, i32 46), !dbg !157
  br label %84, !dbg !157

; <label>:84:                                     ; preds = %81, %78
  %85 = phi double [ %80, %78 ], [ %83, %81 ], !dbg !158
  store double %85, double* %7, align 8, !dbg !160
  br label %86, !dbg !161

; <label>:86:                                     ; preds = %84, %67
  store i32 0, i32* %10, align 4, !dbg !162
  %87 = load double, double* %7, align 8, !dbg !163
  %88 = fcmp ogt double %87, 2.500000e-01, !dbg !165
  %89 = call i1 @fCmpInstHandler(double %87, double 2.500000e-01, i1 %88, i32 2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94604332633104, i32 169, i32 13), !dbg !166
  br i1 %89, label %90, label %95, !dbg !166

; <label>:90:                                     ; preds = %86
  %91 = load double, double* %7, align 8, !dbg !167
  %92 = fsub double %91, 5.000000e-01, !dbg !169
  call void @fSubHandler(double %91, double 5.000000e-01, double %92, i64 94604332634184, i64 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94604332634560, i32 170, i32 34), !dbg !170
  %93 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !170
  %94 = call i32 @cos_pi_taylor(double %92, %struct.gsl_sf_result_struct* %93), !dbg !171
  store i32 %94, i32* %10, align 4, !dbg !172
  br label %111, !dbg !173

; <label>:95:                                     ; preds = %86
  %96 = load double, double* %7, align 8, !dbg !174
  %97 = fcmp olt double %96, -2.500000e-01, !dbg !176
  %98 = call i1 @fCmpInstHandler(double %96, double -2.500000e-01, i1 %97, i32 4, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94604332637584, i32 172, i32 18), !dbg !177
  br i1 %98, label %99, label %106, !dbg !177

; <label>:99:                                     ; preds = %95
  %100 = load double, double* %7, align 8, !dbg !178
  %101 = fadd double %100, 5.000000e-01, !dbg !180
  call void @fAddHandler(double %100, double 5.000000e-01, double %101, i64 94604332638664, i64 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94604332639040, i32 173, i32 34), !dbg !181
  %102 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !181
  %103 = call i32 @cos_pi_taylor(double %101, %struct.gsl_sf_result_struct* %102), !dbg !182
  store i32 %103, i32* %10, align 4, !dbg !183
  %104 = load i32, i32* %9, align 4, !dbg !184
  %105 = sub nsw i32 0, %104, !dbg !185
  store i32 %105, i32* %9, align 4, !dbg !186
  br label %110, !dbg !187

; <label>:106:                                    ; preds = %95
  %107 = load double, double* %7, align 8, !dbg !188
  %108 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !190
  %109 = call i32 @sin_pi_taylor(double %107, %struct.gsl_sf_result_struct* %108), !dbg !191
  store i32 %109, i32* %10, align 4, !dbg !192
  br label %110

; <label>:110:                                    ; preds = %106, %99
  br label %111

; <label>:111:                                    ; preds = %110, %90
  %112 = load i32, i32* %9, align 4, !dbg !193
  %113 = icmp ne i32 %112, 1, !dbg !195
  %114 = sext i32 %112 to i64, !dbg !196
  %115 = call i1 @iCmpInstHandler(i64 %114, i64 1, i1 %113, i32 33, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94604332644960, i32 179, i32 12), !dbg !196
  br i1 %115, label %116, label %123, !dbg !196

; <label>:116:                                    ; preds = %111
  %117 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !197
  %118 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %117, i32 0, i32 0, !dbg !199
  %119 = load double, double* %118, align 8, !dbg !199
  %120 = fsub double -0.000000e+00, %119, !dbg !200
  call void @fSubHandler(double -0.000000e+00, double %119, double %120, i64 0, i64 94604332646840, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94604332648576, i32 179, i32 32), !dbg !201
  %121 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !201
  %122 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %121, i32 0, i32 0, !dbg !202
  store double %120, double* %122, align 8, !dbg !203
  br label %123, !dbg !201

; <label>:123:                                    ; preds = %116, %111
  %124 = load i32, i32* %10, align 4, !dbg !204
  store i32 %124, i32* %3, align 4, !dbg !205
  br label %125, !dbg !205

; <label>:125:                                    ; preds = %123, %59, %26, %20
  %126 = load i32, i32* %3, align 4, !dbg !206
  ret i32 %126, !dbg !206
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare double @modf(double, double*) #2

; Function Attrs: nounwind readnone
declare double @fabs(double) #3

; Function Attrs: nounwind
declare double @fmod(double, double) #2

; Function Attrs: nounwind uwtable
define internal i32 @cos_pi_taylor(double, %struct.gsl_sf_result_struct*) #0 !dbg !207 {
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct*, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !208, metadata !60), !dbg !209
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %4, metadata !210, metadata !60), !dbg !211
  %7 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %4, align 8, !dbg !212
  %8 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %7, i32 0, i32 0, !dbg !213
  store double 0.000000e+00, double* %8, align 8, !dbg !214
  %9 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %4, align 8, !dbg !215
  %10 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %9, i32 0, i32 1, !dbg !216
  store double 0.000000e+00, double* %10, align 8, !dbg !217
  %11 = load double, double* %3, align 8, !dbg !218
  %12 = call double @fabs(double %11) #1, !dbg !220
  %13 = fmul double 2.000000e+01, %12, !dbg !221
  call void @fMulHandler(double 2.000000e+01, double %12, double %13, i64 0, i64 94604332663632, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94604332664128, i32 127, i32 11), !dbg !222
  %14 = fcmp olt double %13, 1.000000e+00, !dbg !222
  %15 = call i1 @fCmpInstHandler(double %13, double 1.000000e+00, i1 %14, i32 4, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94604332664544, i32 127, i32 20), !dbg !223
  br i1 %15, label %16, label %43, !dbg !223

; <label>:16:                                     ; preds = %2
  call void @llvm.dbg.declare(metadata double* %5, metadata !224, metadata !60), !dbg !226
  %17 = load double, double* %3, align 8, !dbg !227
  %18 = fmul double 0x400921FB54442D18, %17, !dbg !228
  call void @fMulHandler(double 0x400921FB54442D18, double %17, double %18, i64 0, i64 94604332591416, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94604332667024, i32 128, i32 27), !dbg !226
  store double %18, double* %5, align 8, !dbg !226
  call void @llvm.dbg.declare(metadata double* %6, metadata !229, metadata !60), !dbg !230
  %19 = load double, double* %5, align 8, !dbg !231
  %20 = load double, double* %5, align 8, !dbg !232
  %21 = fmul double %19, %20, !dbg !233
  call void @fMulHandler(double %19, double %20, double %21, i64 94604332573720, i64 94604332670328, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94604332670736, i32 129, i32 23), !dbg !230
  store double %21, double* %6, align 8, !dbg !230
  %22 = load double, double* %6, align 8, !dbg !234
  %23 = fmul double 5.000000e-01, %22, !dbg !235
  call void @fMulHandler(double 5.000000e-01, double %22, double %23, i64 0, i64 94604332672808, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94604332673248, i32 130, i32 28), !dbg !236
  %24 = load double, double* %6, align 8, !dbg !236
  %25 = load double, double* %6, align 8, !dbg !237
  %26 = load double, double* %6, align 8, !dbg !238
  %27 = load double, double* %6, align 8, !dbg !239
  %28 = fdiv double %27, 9.000000e+01, !dbg !240
  call void @fDivHandler(double %27, double 9.000000e+01, double %28, i64 94604332674760, i64 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94604332675264, i32 130, i32 66), !dbg !241
  %29 = fsub double 1.000000e+00, %28, !dbg !241
  call void @fSubHandler(double 1.000000e+00, double %28, double %29, i64 0, i64 94604332675264, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94604332675680, i32 130, i32 63), !dbg !242
  %30 = fmul double %26, %29, !dbg !242
  call void @fMulHandler(double %26, double %29, double %30, i64 94604332674376, i64 94604332675680, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94604332676064, i32 130, i32 57), !dbg !243
  %31 = fdiv double %30, 5.600000e+01, !dbg !243
  call void @fDivHandler(double %30, double 5.600000e+01, double %31, i64 94604332676064, i64 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94604332676576, i32 130, i32 72), !dbg !244
  %32 = fsub double 1.000000e+00, %31, !dbg !244
  call void @fSubHandler(double 1.000000e+00, double %31, double %32, i64 0, i64 94604332676576, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94604332676992, i32 130, i32 54), !dbg !245
  %33 = fmul double %25, %32, !dbg !245
  call void @fMulHandler(double %25, double %32, double %33, i64 94604332673992, i64 94604332676992, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94604332677376, i32 130, i32 48), !dbg !246
  %34 = fdiv double %33, 3.000000e+01, !dbg !246
  call void @fDivHandler(double %33, double 3.000000e+01, double %34, i64 94604332677376, i64 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94604332677888, i32 130, i32 78), !dbg !247
  %35 = fsub double 1.000000e+00, %34, !dbg !247
  call void @fSubHandler(double 1.000000e+00, double %34, double %35, i64 0, i64 94604332677888, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94604332678304, i32 130, i32 45), !dbg !248
  %36 = fmul double %24, %35, !dbg !248
  call void @fMulHandler(double %24, double %35, double %36, i64 94604332673608, i64 94604332678304, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94604332678688, i32 130, i32 39), !dbg !249
  %37 = fdiv double %36, 1.200000e+01, !dbg !249
  call void @fDivHandler(double %36, double 1.200000e+01, double %37, i64 94604332678688, i64 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94604332679200, i32 130, i32 84), !dbg !250
  %38 = fsub double 1.000000e+00, %37, !dbg !250
  call void @fSubHandler(double 1.000000e+00, double %37, double %38, i64 0, i64 94604332679200, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94604332679616, i32 130, i32 36), !dbg !251
  %39 = fmul double %23, %38, !dbg !251
  call void @fMulHandler(double %23, double %38, double %39, i64 94604332673248, i64 94604332679616, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94604332680000, i32 130, i32 30), !dbg !252
  %40 = fsub double 1.000000e+00, %39, !dbg !252
  call void @fSubHandler(double 1.000000e+00, double %39, double %40, i64 0, i64 94604332680000, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94604332680448, i32 130, i32 23), !dbg !253
  %41 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %4, align 8, !dbg !253
  %42 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %41, i32 0, i32 0, !dbg !254
  store double %40, double* %42, align 8, !dbg !255
  br label %49, !dbg !256

; <label>:43:                                     ; preds = %2
  %44 = load double, double* %3, align 8, !dbg !257
  %45 = fmul double 0x400921FB54442D18, %44, !dbg !259
  call void @fMulHandler(double 0x400921FB54442D18, double %44, double %45, i64 0, i64 94604332682584, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94604332682928, i32 133, i32 27), !dbg !260
  %46 = call double @cos(double %45) #5, !dbg !260
  call void @callOneArgHandler(i32 2, double %45, double %46, i64 94604332682928, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94604332683680, i32 133, i32 19), !dbg !261
  %47 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %4, align 8, !dbg !261
  %48 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %47, i32 0, i32 0, !dbg !262
  store double %46, double* %48, align 8, !dbg !263
  br label %49

; <label>:49:                                     ; preds = %43, %16
  %50 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %4, align 8, !dbg !264
  %51 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %50, i32 0, i32 0, !dbg !265
  %52 = load double, double* %51, align 8, !dbg !265
  %53 = call double @fabs(double %52) #1, !dbg !266
  %54 = fmul double 0x3CB0000000000000, %53, !dbg !267
  call void @fMulHandler(double 0x3CB0000000000000, double %53, double %54, i64 0, i64 94604332688016, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94604332688560, i32 136, i32 32), !dbg !268
  %55 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %4, align 8, !dbg !268
  %56 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %55, i32 0, i32 1, !dbg !269
  store double %54, double* %56, align 8, !dbg !270
  ret i32 0, !dbg !271
}

; Function Attrs: nounwind uwtable
define internal i32 @sin_pi_taylor(double, %struct.gsl_sf_result_struct*) #0 !dbg !272 {
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct*, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !273, metadata !60), !dbg !274
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %4, metadata !275, metadata !60), !dbg !276
  %7 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %4, align 8, !dbg !277
  %8 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %7, i32 0, i32 0, !dbg !278
  store double 0.000000e+00, double* %8, align 8, !dbg !279
  %9 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %4, align 8, !dbg !280
  %10 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %9, i32 0, i32 1, !dbg !281
  store double 0.000000e+00, double* %10, align 8, !dbg !282
  %11 = load double, double* %3, align 8, !dbg !283
  %12 = call double @fabs(double %11) #1, !dbg !285
  %13 = fmul double 1.600000e+01, %12, !dbg !286
  call void @fMulHandler(double 1.600000e+01, double %12, double %13, i64 0, i64 94604332697216, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @5, i32 0, i32 0), i64 94604332697712, i32 107, i32 11), !dbg !287
  %14 = fcmp olt double %13, 1.000000e+00, !dbg !287
  %15 = call i1 @fCmpInstHandler(double %13, double 1.000000e+00, i1 %14, i32 4, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @5, i32 0, i32 0), i64 94604332698128, i32 107, i32 20), !dbg !288
  br i1 %15, label %16, label %45, !dbg !288

; <label>:16:                                     ; preds = %2
  call void @llvm.dbg.declare(metadata double* %5, metadata !289, metadata !60), !dbg !291
  %17 = load double, double* %3, align 8, !dbg !292
  %18 = fmul double 0x400921FB54442D18, %17, !dbg !293
  call void @fMulHandler(double 0x400921FB54442D18, double %17, double %18, i64 0, i64 94604332700264, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @5, i32 0, i32 0), i64 94604332700640, i32 108, i32 27), !dbg !291
  store double %18, double* %5, align 8, !dbg !291
  call void @llvm.dbg.declare(metadata double* %6, metadata !294, metadata !60), !dbg !295
  %19 = load double, double* %5, align 8, !dbg !296
  %20 = load double, double* %5, align 8, !dbg !297
  %21 = fmul double %19, %20, !dbg !298
  call void @fMulHandler(double %19, double %20, double %21, i64 94604332703688, i64 94604332704040, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @5, i32 0, i32 0), i64 94604332704448, i32 109, i32 23), !dbg !295
  store double %21, double* %6, align 8, !dbg !295
  %22 = load double, double* %5, align 8, !dbg !299
  %23 = load double, double* %6, align 8, !dbg !300
  %24 = load double, double* %6, align 8, !dbg !301
  %25 = load double, double* %6, align 8, !dbg !302
  %26 = load double, double* %6, align 8, !dbg !303
  %27 = load double, double* %6, align 8, !dbg !304
  %28 = fdiv double %27, 1.100000e+02, !dbg !305
  call void @fDivHandler(double %27, double 1.100000e+02, double %28, i64 94604332708440, i64 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @5, i32 0, i32 0), i64 94604332708944, i32 110, i32 65), !dbg !306
  %29 = fsub double 1.000000e+00, %28, !dbg !306
  call void @fSubHandler(double 1.000000e+00, double %28, double %29, i64 0, i64 94604332708944, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @5, i32 0, i32 0), i64 94604332709360, i32 110, i32 62), !dbg !307
  %30 = fmul double %26, %29, !dbg !307
  call void @fMulHandler(double %26, double %29, double %30, i64 94604332708056, i64 94604332709360, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @5, i32 0, i32 0), i64 94604332709744, i32 110, i32 56), !dbg !308
  %31 = fdiv double %30, 7.200000e+01, !dbg !308
  call void @fDivHandler(double %30, double 7.200000e+01, double %31, i64 94604332709744, i64 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @5, i32 0, i32 0), i64 94604332710256, i32 110, i32 72), !dbg !309
  %32 = fsub double 1.000000e+00, %31, !dbg !309
  call void @fSubHandler(double 1.000000e+00, double %31, double %32, i64 0, i64 94604332710256, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @5, i32 0, i32 0), i64 94604332710672, i32 110, i32 53), !dbg !310
  %33 = fmul double %25, %32, !dbg !310
  call void @fMulHandler(double %25, double %32, double %33, i64 94604332707672, i64 94604332710672, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @5, i32 0, i32 0), i64 94604332711056, i32 110, i32 47), !dbg !311
  %34 = fdiv double %33, 4.200000e+01, !dbg !311
  call void @fDivHandler(double %33, double 4.200000e+01, double %34, i64 94604332711056, i64 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @5, i32 0, i32 0), i64 94604332711568, i32 110, i32 78), !dbg !312
  %35 = fsub double 1.000000e+00, %34, !dbg !312
  call void @fSubHandler(double 1.000000e+00, double %34, double %35, i64 0, i64 94604332711568, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @5, i32 0, i32 0), i64 94604332711984, i32 110, i32 44), !dbg !313
  %36 = fmul double %24, %35, !dbg !313
  call void @fMulHandler(double %24, double %35, double %36, i64 94604332707288, i64 94604332711984, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @5, i32 0, i32 0), i64 94604332712368, i32 110, i32 38), !dbg !314
  %37 = fdiv double %36, 2.000000e+01, !dbg !314
  call void @fDivHandler(double %36, double 2.000000e+01, double %37, i64 94604332712368, i64 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @5, i32 0, i32 0), i64 94604332712816, i32 110, i32 84), !dbg !315
  %38 = fsub double 1.000000e+00, %37, !dbg !315
  call void @fSubHandler(double 1.000000e+00, double %37, double %38, i64 0, i64 94604332712816, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @5, i32 0, i32 0), i64 94604332713232, i32 110, i32 35), !dbg !316
  %39 = fmul double %23, %38, !dbg !316
  call void @fMulHandler(double %23, double %38, double %39, i64 94604332706904, i64 94604332713232, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @5, i32 0, i32 0), i64 94604332713616, i32 110, i32 29), !dbg !317
  %40 = fdiv double %39, 6.000000e+00, !dbg !317
  call void @fDivHandler(double %39, double 6.000000e+00, double %40, i64 94604332713616, i64 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @5, i32 0, i32 0), i64 94604332714128, i32 110, i32 90), !dbg !318
  %41 = fsub double 1.000000e+00, %40, !dbg !318
  call void @fSubHandler(double 1.000000e+00, double %40, double %41, i64 0, i64 94604332714128, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @5, i32 0, i32 0), i64 94604332714544, i32 110, i32 26), !dbg !319
  %42 = fmul double %22, %41, !dbg !319
  call void @fMulHandler(double %22, double %41, double %42, i64 94604332706520, i64 94604332714544, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @5, i32 0, i32 0), i64 94604332714928, i32 110, i32 20), !dbg !320
  %43 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %4, align 8, !dbg !320
  %44 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %43, i32 0, i32 0, !dbg !321
  store double %42, double* %44, align 8, !dbg !322
  br label %51, !dbg !323

; <label>:45:                                     ; preds = %2
  %46 = load double, double* %3, align 8, !dbg !324
  %47 = fmul double 0x400921FB54442D18, %46, !dbg !326
  call void @fMulHandler(double 0x400921FB54442D18, double %46, double %47, i64 0, i64 94604332717096, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @5, i32 0, i32 0), i64 94604332717440, i32 113, i32 27), !dbg !327
  %48 = call double @sin(double %47) #5, !dbg !327
  call void @callOneArgHandler(i32 1, double %47, double %48, i64 94604332717440, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @5, i32 0, i32 0), i64 94604332718192, i32 113, i32 19), !dbg !328
  %49 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %4, align 8, !dbg !328
  %50 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %49, i32 0, i32 0, !dbg !329
  store double %48, double* %50, align 8, !dbg !330
  br label %51

; <label>:51:                                     ; preds = %45, %16
  %52 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %4, align 8, !dbg !331
  %53 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %52, i32 0, i32 0, !dbg !332
  %54 = load double, double* %53, align 8, !dbg !332
  %55 = call double @fabs(double %54) #1, !dbg !333
  %56 = fmul double 0x3CB0000000000000, %55, !dbg !334
  call void @fMulHandler(double 0x3CB0000000000000, double %55, double %56, i64 0, i64 94604332722528, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @5, i32 0, i32 0), i64 94604332723008, i32 116, i32 32), !dbg !335
  %57 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %4, align 8, !dbg !335
  %58 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %57, i32 0, i32 1, !dbg !336
  store double %56, double* %58, align 8, !dbg !337
  ret i32 0, !dbg !338
}

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_cos_pi_e(double, %struct.gsl_sf_result_struct*) #0 !dbg !339 {
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca %struct.gsl_sf_result_struct*, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !340, metadata !60), !dbg !341
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %5, metadata !342, metadata !60), !dbg !343
  call void @llvm.dbg.declare(metadata double* %6, metadata !344, metadata !60), !dbg !345
  store double 0.000000e+00, double* %6, align 8, !dbg !345
  call void @llvm.dbg.declare(metadata double* %7, metadata !346, metadata !60), !dbg !347
  store double 0.000000e+00, double* %7, align 8, !dbg !347
  call void @llvm.dbg.declare(metadata i64* %8, metadata !348, metadata !60), !dbg !349
  call void @llvm.dbg.declare(metadata i32* %9, metadata !350, metadata !60), !dbg !351
  store i32 1, i32* %9, align 4, !dbg !351
  call void @llvm.dbg.declare(metadata i32* %10, metadata !352, metadata !60), !dbg !353
  %11 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !354
  %12 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 0, !dbg !355
  store double 0.000000e+00, double* %12, align 8, !dbg !356
  %13 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !357
  %14 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %13, i32 0, i32 1, !dbg !358
  store double 0.000000e+00, double* %14, align 8, !dbg !359
  %15 = load double, double* %4, align 8, !dbg !360
  %16 = call double @modf(double %15, double* %6) #5, !dbg !361
  store double %16, double* %7, align 8, !dbg !362
  %17 = load double, double* %7, align 8, !dbg !363
  %18 = call double @fabs(double %17) #1, !dbg !365
  %19 = fcmp oeq double %18, 5.000000e-01, !dbg !366
  %20 = call i1 @fCmpInstHandler(double %18, double 5.000000e-01, i1 %19, i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @7, i32 0, i32 0), i64 94604332745024, i32 193, i32 19), !dbg !367
  br i1 %20, label %21, label %22, !dbg !367

; <label>:21:                                     ; preds = %2
  store i32 0, i32* %3, align 4, !dbg !368
  br label %120, !dbg !368

; <label>:22:                                     ; preds = %2
  %23 = load double, double* %6, align 8, !dbg !370
  %24 = call double @fabs(double %23) #1, !dbg !372
  %25 = fcmp oge double %24, 0x4340000000000000, !dbg !373
  %26 = call i1 @fCmpInstHandler(double %24, double 0x4340000000000000, i1 %25, i32 3, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @7, i32 0, i32 0), i64 94604332749136, i32 195, i32 17), !dbg !374
  br i1 %26, label %27, label %30, !dbg !374

; <label>:27:                                     ; preds = %22
  %28 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !375
  %29 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %28, i32 0, i32 0, !dbg !377
  store double 1.000000e+00, double* %29, align 8, !dbg !378
  store i32 0, i32* %3, align 4, !dbg !379
  br label %120, !dbg !379

; <label>:30:                                     ; preds = %22
  %31 = load double, double* %6, align 8, !dbg !380
  %32 = fcmp oge double %31, 0xC3E0000000000000, !dbg !381
  %33 = call i1 @fCmpInstHandler(double %31, double 0xC3E0000000000000, i1 %32, i32 3, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @7, i32 0, i32 0), i64 94604332753840, i32 200, i32 17), !dbg !382
  br i1 %33, label %34, label %40, !dbg !382

; <label>:34:                                     ; preds = %30
  %35 = load double, double* %6, align 8, !dbg !383
  %36 = fcmp ole double %35, 0x43E0000000000000, !dbg !385
  %37 = call i1 @fCmpInstHandler(double %35, double 0x43E0000000000000, i1 %36, i32 5, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @7, i32 0, i32 0), i64 94604332755296, i32 200, i32 39), !dbg !386
  br i1 %37, label %38, label %40, !dbg !386

; <label>:38:                                     ; preds = %34
  %39 = load double, double* %6, align 8, !dbg !387
  br label %43, !dbg !389

; <label>:40:                                     ; preds = %34, %30
  %41 = load double, double* %6, align 8, !dbg !390
  %42 = call double @fmod(double %41, double 2.000000e+00) #5, !dbg !392
  br label %43, !dbg !393

; <label>:43:                                     ; preds = %40, %38
  %44 = phi double [ %39, %38 ], [ %42, %40 ], !dbg !394
  %45 = fptosi double %44 to i64, !dbg !396
  store i64 %45, i64* %8, align 8, !dbg !397
  %46 = load i64, i64* %8, align 8, !dbg !398
  %47 = srem i64 %46, 2, !dbg !399
  %48 = icmp ne i64 %47, 0, !dbg !398
  %49 = call i1 @iCmpInstHandler(i64 %47, i64 0, i1 %48, i32 33, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @7, i32 0, i32 0), i64 94604332760400, i32 201, i32 12), !dbg !398
  %50 = select i1 %49, i32 -1, i32 1, !dbg !398
  store i32 %50, i32* %9, align 4, !dbg !400
  %51 = load double, double* %7, align 8, !dbg !401
  %52 = fcmp oeq double %51, 0.000000e+00, !dbg !403
  %53 = call i1 @fCmpInstHandler(double %51, double 0.000000e+00, i1 %52, i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @7, i32 0, i32 0), i64 94604332763024, i32 204, i32 13), !dbg !404
  br i1 %53, label %54, label %62, !dbg !404

; <label>:54:                                     ; preds = %43
  %55 = load i32, i32* %9, align 4, !dbg !405
  %56 = icmp ne i32 %55, 1, !dbg !407
  %57 = sext i32 %55 to i64, !dbg !405
  %58 = call i1 @iCmpInstHandler(i64 %57, i64 1, i1 %56, i32 33, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @7, i32 0, i32 0), i64 94604332764480, i32 205, i32 26), !dbg !405
  %59 = select i1 %58, double -1.000000e+00, double 1.000000e+00, !dbg !405
  %60 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !408
  %61 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %60, i32 0, i32 0, !dbg !409
  store double %59, double* %61, align 8, !dbg !410
  store i32 0, i32* %3, align 4, !dbg !411
  br label %120, !dbg !411

; <label>:62:                                     ; preds = %43
  %63 = load double, double* %7, align 8, !dbg !412
  %64 = call double @fabs(double %63) #1, !dbg !414
  %65 = fcmp ogt double %64, 5.000000e-01, !dbg !415
  %66 = call i1 @fCmpInstHandler(double %64, double 5.000000e-01, i1 %65, i32 2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @7, i32 0, i32 0), i64 94604332770800, i32 208, i32 19), !dbg !416
  br i1 %66, label %67, label %81, !dbg !416

; <label>:67:                                     ; preds = %62
  %68 = load i32, i32* %9, align 4, !dbg !417
  %69 = sub nsw i32 0, %68, !dbg !419
  store i32 %69, i32* %9, align 4, !dbg !420
  %70 = load double, double* %7, align 8, !dbg !421
  %71 = fcmp ogt double %70, 0.000000e+00, !dbg !422
  %72 = call i1 @fCmpInstHandler(double %70, double 0.000000e+00, i1 %71, i32 2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @7, i32 0, i32 0), i64 94604332773440, i32 210, i32 21), !dbg !421
  br i1 %72, label %73, label %76, !dbg !421

; <label>:73:                                     ; preds = %67
  %74 = load double, double* %7, align 8, !dbg !423
  %75 = fsub double %74, 1.000000e+00, !dbg !425
  call void @fSubHandler(double %74, double 1.000000e+00, double %75, i64 94604332775816, i64 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @7, i32 0, i32 0), i64 94604332776192, i32 210, i32 34), !dbg !426
  br label %79, !dbg !426

; <label>:76:                                     ; preds = %67
  %77 = load double, double* %7, align 8, !dbg !427
  %78 = fadd double %77, 1.000000e+00, !dbg !429
  call void @fAddHandler(double %77, double 1.000000e+00, double %78, i64 94604332777080, i64 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @7, i32 0, i32 0), i64 94604332777456, i32 210, i32 46), !dbg !430
  br label %79, !dbg !430

; <label>:79:                                     ; preds = %76, %73
  %80 = phi double [ %75, %73 ], [ %78, %76 ], !dbg !431
  store double %80, double* %7, align 8, !dbg !433
  br label %81, !dbg !434

; <label>:81:                                     ; preds = %79, %62
  store i32 0, i32* %10, align 4, !dbg !435
  %82 = load double, double* %7, align 8, !dbg !436
  %83 = fcmp ogt double %82, 2.500000e-01, !dbg !438
  %84 = call i1 @fCmpInstHandler(double %82, double 2.500000e-01, i1 %83, i32 2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @7, i32 0, i32 0), i64 94604332780192, i32 214, i32 13), !dbg !439
  br i1 %84, label %85, label %92, !dbg !439

; <label>:85:                                     ; preds = %81
  %86 = load double, double* %7, align 8, !dbg !440
  %87 = fsub double %86, 5.000000e-01, !dbg !442
  call void @fSubHandler(double %86, double 5.000000e-01, double %87, i64 94604332781272, i64 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @7, i32 0, i32 0), i64 94604332781648, i32 215, i32 34), !dbg !443
  %88 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !443
  %89 = call i32 @sin_pi_taylor(double %87, %struct.gsl_sf_result_struct* %88), !dbg !444
  store i32 %89, i32* %10, align 4, !dbg !445
  %90 = load i32, i32* %9, align 4, !dbg !446
  %91 = sub nsw i32 0, %90, !dbg !447
  store i32 %91, i32* %9, align 4, !dbg !448
  br label %106, !dbg !449

; <label>:92:                                     ; preds = %81
  %93 = load double, double* %7, align 8, !dbg !450
  %94 = fcmp olt double %93, -2.500000e-01, !dbg !452
  %95 = call i1 @fCmpInstHandler(double %93, double -2.500000e-01, i1 %94, i32 4, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @7, i32 0, i32 0), i64 94604332785456, i32 218, i32 18), !dbg !453
  br i1 %95, label %96, label %101, !dbg !453

; <label>:96:                                     ; preds = %92
  %97 = load double, double* %7, align 8, !dbg !454
  %98 = fadd double %97, 5.000000e-01, !dbg !456
  call void @fAddHandler(double %97, double 5.000000e-01, double %98, i64 94604332786536, i64 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @7, i32 0, i32 0), i64 94604332786912, i32 219, i32 34), !dbg !457
  %99 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !457
  %100 = call i32 @sin_pi_taylor(double %98, %struct.gsl_sf_result_struct* %99), !dbg !458
  store i32 %100, i32* %10, align 4, !dbg !459
  br label %105, !dbg !460

; <label>:101:                                    ; preds = %92
  %102 = load double, double* %7, align 8, !dbg !461
  %103 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !463
  %104 = call i32 @cos_pi_taylor(double %102, %struct.gsl_sf_result_struct* %103), !dbg !464
  store i32 %104, i32* %10, align 4, !dbg !465
  br label %105

; <label>:105:                                    ; preds = %101, %96
  br label %106

; <label>:106:                                    ; preds = %105, %85
  %107 = load i32, i32* %9, align 4, !dbg !466
  %108 = icmp ne i32 %107, 1, !dbg !468
  %109 = sext i32 %107 to i64, !dbg !469
  %110 = call i1 @iCmpInstHandler(i64 %109, i64 1, i1 %108, i32 33, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @7, i32 0, i32 0), i64 94604332791248, i32 224, i32 12), !dbg !469
  br i1 %110, label %111, label %118, !dbg !469

; <label>:111:                                    ; preds = %106
  %112 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !470
  %113 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %112, i32 0, i32 0, !dbg !472
  %114 = load double, double* %113, align 8, !dbg !472
  %115 = fsub double -0.000000e+00, %114, !dbg !473
  call void @fSubHandler(double -0.000000e+00, double %114, double %115, i64 0, i64 94604332793128, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @7, i32 0, i32 0), i64 94604332794800, i32 224, i32 32), !dbg !474
  %116 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !474
  %117 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %116, i32 0, i32 0, !dbg !475
  store double %115, double* %117, align 8, !dbg !476
  br label %118, !dbg !474

; <label>:118:                                    ; preds = %111, %106
  %119 = load i32, i32* %10, align 4, !dbg !477
  store i32 %119, i32* %3, align 4, !dbg !478
  br label %120, !dbg !478

; <label>:120:                                    ; preds = %118, %54, %27, %21
  %121 = load i32, i32* %3, align 4, !dbg !479
  ret i32 %121, !dbg !479
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_sin_pi(double) #0 !dbg !480 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct, align 8
  %5 = alloca i32, align 4
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !483, metadata !60), !dbg !484
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %4, metadata !485, metadata !60), !dbg !486
  call void @llvm.dbg.declare(metadata i32* %5, metadata !487, metadata !60), !dbg !486
  %6 = load double, double* %3, align 8, !dbg !486
  %7 = call i32 @gsl_sf_sin_pi_e(double %6, %struct.gsl_sf_result_struct* %4), !dbg !486
  store i32 %7, i32* %5, align 4, !dbg !486
  %8 = load i32, i32* %5, align 4, !dbg !488
  %9 = icmp ne i32 %8, 0, !dbg !488
  %10 = sext i32 %8 to i64, !dbg !486
  %11 = call i1 @iCmpInstHandler(i64 %10, i64 0, i1 %9, i32 33, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @9, i32 0, i32 0), i64 94604332811552, i32 235, i32 3), !dbg !486
  br i1 %11, label %12, label %18, !dbg !486

; <label>:12:                                     ; preds = %1
  br label %13, !dbg !490, !llvm.loop !493

; <label>:13:                                     ; preds = %12
  %14 = load i32, i32* %5, align 4, !dbg !495
  call void @gsl_error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 235, i32 %14), !dbg !495
  %15 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !495
  %16 = load double, double* %15, align 8, !dbg !495
  store double %16, double* %2, align 8, !dbg !495
  br label %21, !dbg !495
                                                  ; No predecessors!
  br label %18, !dbg !498

; <label>:18:                                     ; preds = %17, %1
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !500
  %20 = load double, double* %19, align 8, !dbg !500
  store double %20, double* %2, align 8, !dbg !500
  br label %21, !dbg !500

; <label>:21:                                     ; preds = %18, %13
  %22 = load double, double* %2, align 8, !dbg !502
  ret double %22, !dbg !502
}

declare void @gsl_error(i8*, i8*, i32, i32) #4

; Function Attrs: nounwind uwtable
define double @gsl_sf_cos_pi(double) #0 !dbg !503 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct, align 8
  %5 = alloca i32, align 4
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !504, metadata !60), !dbg !505
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %4, metadata !506, metadata !60), !dbg !507
  call void @llvm.dbg.declare(metadata i32* %5, metadata !508, metadata !60), !dbg !507
  %6 = load double, double* %3, align 8, !dbg !507
  %7 = call i32 @gsl_sf_cos_pi_e(double %6, %struct.gsl_sf_result_struct* %4), !dbg !507
  store i32 %7, i32* %5, align 4, !dbg !507
  %8 = load i32, i32* %5, align 4, !dbg !509
  %9 = icmp ne i32 %8, 0, !dbg !509
  %10 = sext i32 %8 to i64, !dbg !507
  %11 = call i1 @iCmpInstHandler(i64 %10, i64 0, i1 %9, i32 33, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @11, i32 0, i32 0), i64 94604332833728, i32 241, i32 3), !dbg !507
  br i1 %11, label %12, label %18, !dbg !507

; <label>:12:                                     ; preds = %1
  br label %13, !dbg !511, !llvm.loop !514

; <label>:13:                                     ; preds = %12
  %14 = load i32, i32* %5, align 4, !dbg !516
  call void @gsl_error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 241, i32 %14), !dbg !516
  %15 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !516
  %16 = load double, double* %15, align 8, !dbg !516
  store double %16, double* %2, align 8, !dbg !516
  br label %21, !dbg !516
                                                  ; No predecessors!
  br label %18, !dbg !519

; <label>:18:                                     ; preds = %17, %1
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !521
  %20 = load double, double* %19, align 8, !dbg !521
  store double %20, double* %2, align 8, !dbg !521
  br label %21, !dbg !521

; <label>:21:                                     ; preds = %18, %13
  %22 = load double, double* %2, align 8, !dbg !523
  ret double %22, !dbg !523
}

; Function Attrs: nounwind
declare double @cos(double) #2

; Function Attrs: nounwind
declare double @sin(double) #2

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
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!41, !42, !43}
!llvm.ident = !{!44}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "sincos_pi.c", directory: "/fpcc/gsl-2.5/specfunc")
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
!45 = distinct !DISubprogram(name: "gsl_sf_sin_pi_e", scope: !1, file: !1, line: 142, type: !46, isLocal: false, isDefinition: true, scopeLine: 143, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
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
!59 = !DILocalVariable(name: "x", arg: 1, scope: !45, file: !1, line: 142, type: !49)
!60 = !DIExpression()
!61 = !DILocation(line: 142, column: 30, scope: !45)
!62 = !DILocalVariable(name: "result", arg: 2, scope: !45, file: !1, line: 142, type: !51)
!63 = !DILocation(line: 142, column: 48, scope: !45)
!64 = !DILocalVariable(name: "intx", scope: !45, file: !1, line: 144, type: !50)
!65 = !DILocation(line: 144, column: 10, scope: !45)
!66 = !DILocalVariable(name: "fracx", scope: !45, file: !1, line: 144, type: !50)
!67 = !DILocation(line: 144, column: 22, scope: !45)
!68 = !DILocalVariable(name: "q", scope: !45, file: !1, line: 145, type: !69)
!69 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!70 = !DILocation(line: 145, column: 8, scope: !45)
!71 = !DILocalVariable(name: "sign", scope: !45, file: !1, line: 146, type: !48)
!72 = !DILocation(line: 146, column: 7, scope: !45)
!73 = !DILocalVariable(name: "status", scope: !45, file: !1, line: 146, type: !48)
!74 = !DILocation(line: 146, column: 17, scope: !45)
!75 = !DILocation(line: 148, column: 3, scope: !45)
!76 = !DILocation(line: 148, column: 11, scope: !45)
!77 = !DILocation(line: 148, column: 15, scope: !45)
!78 = !DILocation(line: 149, column: 3, scope: !45)
!79 = !DILocation(line: 149, column: 11, scope: !45)
!80 = !DILocation(line: 149, column: 15, scope: !45)
!81 = !DILocation(line: 150, column: 16, scope: !45)
!82 = !DILocation(line: 150, column: 11, scope: !45)
!83 = !DILocation(line: 150, column: 9, scope: !45)
!84 = !DILocation(line: 151, column: 7, scope: !85)
!85 = distinct !DILexicalBlock(scope: !45, file: !1, line: 151, column: 7)
!86 = !DILocation(line: 151, column: 13, scope: !85)
!87 = !DILocation(line: 151, column: 7, scope: !45)
!88 = !DILocation(line: 151, column: 21, scope: !89)
!89 = !DILexicalBlockFile(scope: !85, file: !1, discriminator: 1)
!90 = !DILocation(line: 152, column: 11, scope: !91)
!91 = distinct !DILexicalBlock(scope: !45, file: !1, line: 152, column: 6)
!92 = !DILocation(line: 152, column: 6, scope: !91)
!93 = !DILocation(line: 152, column: 17, scope: !91)
!94 = !DILocation(line: 152, column: 6, scope: !45)
!95 = !DILocation(line: 152, column: 28, scope: !96)
!96 = !DILexicalBlockFile(scope: !91, file: !1, discriminator: 1)
!97 = !DILocation(line: 154, column: 12, scope: !45)
!98 = !DILocation(line: 154, column: 17, scope: !45)
!99 = !DILocation(line: 154, column: 30, scope: !45)
!100 = !DILocation(line: 154, column: 34, scope: !101)
!101 = !DILexicalBlockFile(scope: !45, file: !1, discriminator: 1)
!102 = !DILocation(line: 154, column: 39, scope: !101)
!103 = !DILocation(line: 154, column: 9, scope: !101)
!104 = !DILocation(line: 154, column: 56, scope: !105)
!105 = !DILexicalBlockFile(scope: !45, file: !1, discriminator: 2)
!106 = !DILocation(line: 154, column: 9, scope: !105)
!107 = !DILocation(line: 154, column: 68, scope: !108)
!108 = !DILexicalBlockFile(scope: !45, file: !1, discriminator: 3)
!109 = !DILocation(line: 154, column: 63, scope: !108)
!110 = !DILocation(line: 154, column: 9, scope: !108)
!111 = !DILocation(line: 154, column: 9, scope: !112)
!112 = !DILexicalBlockFile(scope: !45, file: !1, discriminator: 4)
!113 = !DILocation(line: 154, column: 7, scope: !112)
!114 = !DILocation(line: 154, column: 5, scope: !112)
!115 = !DILocation(line: 155, column: 12, scope: !45)
!116 = !DILocation(line: 155, column: 14, scope: !45)
!117 = !DILocation(line: 155, column: 8, scope: !45)
!118 = !DILocation(line: 158, column: 12, scope: !119)
!119 = distinct !DILexicalBlock(scope: !45, file: !1, line: 158, column: 7)
!120 = !DILocation(line: 158, column: 7, scope: !119)
!121 = !DILocation(line: 158, column: 19, scope: !119)
!122 = !DILocation(line: 158, column: 7, scope: !45)
!123 = !DILocation(line: 159, column: 9, scope: !124)
!124 = distinct !DILexicalBlock(scope: !125, file: !1, line: 159, column: 9)
!125 = distinct !DILexicalBlock(scope: !119, file: !1, line: 158, column: 27)
!126 = !DILocation(line: 159, column: 15, scope: !124)
!127 = !DILocation(line: 159, column: 9, scope: !125)
!128 = !DILocation(line: 159, column: 30, scope: !129)
!129 = !DILexicalBlockFile(scope: !124, file: !1, discriminator: 1)
!130 = !DILocation(line: 159, column: 29, scope: !129)
!131 = !DILocation(line: 159, column: 27, scope: !129)
!132 = !DILocation(line: 159, column: 22, scope: !129)
!133 = !DILocation(line: 160, column: 21, scope: !125)
!134 = !DILocation(line: 160, column: 26, scope: !125)
!135 = !DILocation(line: 160, column: 5, scope: !125)
!136 = !DILocation(line: 160, column: 13, scope: !125)
!137 = !DILocation(line: 160, column: 17, scope: !125)
!138 = !DILocation(line: 161, column: 5, scope: !125)
!139 = !DILocation(line: 163, column: 12, scope: !140)
!140 = distinct !DILexicalBlock(scope: !45, file: !1, line: 163, column: 7)
!141 = !DILocation(line: 163, column: 7, scope: !140)
!142 = !DILocation(line: 163, column: 19, scope: !140)
!143 = !DILocation(line: 163, column: 7, scope: !45)
!144 = !DILocation(line: 164, column: 13, scope: !145)
!145 = distinct !DILexicalBlock(scope: !140, file: !1, line: 163, column: 26)
!146 = !DILocation(line: 164, column: 12, scope: !145)
!147 = !DILocation(line: 164, column: 10, scope: !145)
!148 = !DILocation(line: 165, column: 15, scope: !145)
!149 = !DILocation(line: 165, column: 21, scope: !145)
!150 = !DILocation(line: 165, column: 29, scope: !151)
!151 = !DILexicalBlockFile(scope: !145, file: !1, discriminator: 1)
!152 = !DILocation(line: 165, column: 34, scope: !151)
!153 = !DILocation(line: 165, column: 15, scope: !151)
!154 = !DILocation(line: 165, column: 41, scope: !155)
!155 = !DILexicalBlockFile(scope: !145, file: !1, discriminator: 2)
!156 = !DILocation(line: 165, column: 46, scope: !155)
!157 = !DILocation(line: 165, column: 15, scope: !155)
!158 = !DILocation(line: 165, column: 15, scope: !159)
!159 = !DILexicalBlockFile(scope: !145, file: !1, discriminator: 3)
!160 = !DILocation(line: 165, column: 11, scope: !159)
!161 = !DILocation(line: 166, column: 3, scope: !145)
!162 = !DILocation(line: 168, column: 10, scope: !45)
!163 = !DILocation(line: 169, column: 7, scope: !164)
!164 = distinct !DILexicalBlock(scope: !45, file: !1, line: 169, column: 7)
!165 = !DILocation(line: 169, column: 13, scope: !164)
!166 = !DILocation(line: 169, column: 7, scope: !45)
!167 = !DILocation(line: 170, column: 29, scope: !168)
!168 = distinct !DILexicalBlock(scope: !164, file: !1, line: 169, column: 21)
!169 = !DILocation(line: 170, column: 34, scope: !168)
!170 = !DILocation(line: 170, column: 41, scope: !168)
!171 = !DILocation(line: 170, column: 14, scope: !168)
!172 = !DILocation(line: 170, column: 12, scope: !168)
!173 = !DILocation(line: 171, column: 3, scope: !168)
!174 = !DILocation(line: 172, column: 12, scope: !175)
!175 = distinct !DILexicalBlock(scope: !164, file: !1, line: 172, column: 12)
!176 = !DILocation(line: 172, column: 18, scope: !175)
!177 = !DILocation(line: 172, column: 12, scope: !164)
!178 = !DILocation(line: 173, column: 29, scope: !179)
!179 = distinct !DILexicalBlock(scope: !175, file: !1, line: 172, column: 27)
!180 = !DILocation(line: 173, column: 34, scope: !179)
!181 = !DILocation(line: 173, column: 41, scope: !179)
!182 = !DILocation(line: 173, column: 14, scope: !179)
!183 = !DILocation(line: 173, column: 12, scope: !179)
!184 = !DILocation(line: 174, column: 13, scope: !179)
!185 = !DILocation(line: 174, column: 12, scope: !179)
!186 = !DILocation(line: 174, column: 10, scope: !179)
!187 = !DILocation(line: 175, column: 3, scope: !179)
!188 = !DILocation(line: 177, column: 28, scope: !189)
!189 = distinct !DILexicalBlock(scope: !175, file: !1, line: 176, column: 8)
!190 = !DILocation(line: 177, column: 35, scope: !189)
!191 = !DILocation(line: 177, column: 14, scope: !189)
!192 = !DILocation(line: 177, column: 12, scope: !189)
!193 = !DILocation(line: 179, column: 7, scope: !194)
!194 = distinct !DILexicalBlock(scope: !45, file: !1, line: 179, column: 7)
!195 = !DILocation(line: 179, column: 12, scope: !194)
!196 = !DILocation(line: 179, column: 7, scope: !45)
!197 = !DILocation(line: 179, column: 33, scope: !198)
!198 = !DILexicalBlockFile(scope: !194, file: !1, discriminator: 1)
!199 = !DILocation(line: 179, column: 41, scope: !198)
!200 = !DILocation(line: 179, column: 32, scope: !198)
!201 = !DILocation(line: 179, column: 18, scope: !198)
!202 = !DILocation(line: 179, column: 26, scope: !198)
!203 = !DILocation(line: 179, column: 30, scope: !198)
!204 = !DILocation(line: 180, column: 10, scope: !45)
!205 = !DILocation(line: 180, column: 3, scope: !45)
!206 = !DILocation(line: 181, column: 1, scope: !45)
!207 = distinct !DISubprogram(name: "cos_pi_taylor", scope: !1, file: !1, line: 123, type: !46, isLocal: true, isDefinition: true, scopeLine: 124, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!208 = !DILocalVariable(name: "x", arg: 1, scope: !207, file: !1, line: 123, type: !49)
!209 = !DILocation(line: 123, column: 28, scope: !207)
!210 = !DILocalVariable(name: "result", arg: 2, scope: !207, file: !1, line: 123, type: !51)
!211 = !DILocation(line: 123, column: 46, scope: !207)
!212 = !DILocation(line: 125, column: 3, scope: !207)
!213 = !DILocation(line: 125, column: 11, scope: !207)
!214 = !DILocation(line: 125, column: 15, scope: !207)
!215 = !DILocation(line: 126, column: 3, scope: !207)
!216 = !DILocation(line: 126, column: 11, scope: !207)
!217 = !DILocation(line: 126, column: 15, scope: !207)
!218 = !DILocation(line: 127, column: 17, scope: !219)
!219 = distinct !DILexicalBlock(scope: !207, file: !1, line: 127, column: 7)
!220 = !DILocation(line: 127, column: 12, scope: !219)
!221 = !DILocation(line: 127, column: 11, scope: !219)
!222 = !DILocation(line: 127, column: 20, scope: !219)
!223 = !DILocation(line: 127, column: 7, scope: !207)
!224 = !DILocalVariable(name: "y", scope: !225, file: !1, line: 128, type: !49)
!225 = distinct !DILexicalBlock(scope: !219, file: !1, line: 127, column: 27)
!226 = !DILocation(line: 128, column: 18, scope: !225)
!227 = !DILocation(line: 128, column: 29, scope: !225)
!228 = !DILocation(line: 128, column: 27, scope: !225)
!229 = !DILocalVariable(name: "a", scope: !225, file: !1, line: 129, type: !49)
!230 = !DILocation(line: 129, column: 18, scope: !225)
!231 = !DILocation(line: 129, column: 22, scope: !225)
!232 = !DILocation(line: 129, column: 24, scope: !225)
!233 = !DILocation(line: 129, column: 23, scope: !225)
!234 = !DILocation(line: 130, column: 29, scope: !225)
!235 = !DILocation(line: 130, column: 28, scope: !225)
!236 = !DILocation(line: 130, column: 38, scope: !225)
!237 = !DILocation(line: 130, column: 47, scope: !225)
!238 = !DILocation(line: 130, column: 56, scope: !225)
!239 = !DILocation(line: 130, column: 65, scope: !225)
!240 = !DILocation(line: 130, column: 66, scope: !225)
!241 = !DILocation(line: 130, column: 63, scope: !225)
!242 = !DILocation(line: 130, column: 57, scope: !225)
!243 = !DILocation(line: 130, column: 72, scope: !225)
!244 = !DILocation(line: 130, column: 54, scope: !225)
!245 = !DILocation(line: 130, column: 48, scope: !225)
!246 = !DILocation(line: 130, column: 78, scope: !225)
!247 = !DILocation(line: 130, column: 45, scope: !225)
!248 = !DILocation(line: 130, column: 39, scope: !225)
!249 = !DILocation(line: 130, column: 84, scope: !225)
!250 = !DILocation(line: 130, column: 36, scope: !225)
!251 = !DILocation(line: 130, column: 30, scope: !225)
!252 = !DILocation(line: 130, column: 23, scope: !225)
!253 = !DILocation(line: 130, column: 5, scope: !225)
!254 = !DILocation(line: 130, column: 13, scope: !225)
!255 = !DILocation(line: 130, column: 17, scope: !225)
!256 = !DILocation(line: 131, column: 3, scope: !225)
!257 = !DILocation(line: 133, column: 28, scope: !258)
!258 = distinct !DILexicalBlock(scope: !219, file: !1, line: 132, column: 8)
!259 = !DILocation(line: 133, column: 27, scope: !258)
!260 = !DILocation(line: 133, column: 19, scope: !258)
!261 = !DILocation(line: 133, column: 5, scope: !258)
!262 = !DILocation(line: 133, column: 13, scope: !258)
!263 = !DILocation(line: 133, column: 17, scope: !258)
!264 = !DILocation(line: 136, column: 38, scope: !207)
!265 = !DILocation(line: 136, column: 46, scope: !207)
!266 = !DILocation(line: 136, column: 33, scope: !207)
!267 = !DILocation(line: 136, column: 32, scope: !207)
!268 = !DILocation(line: 136, column: 3, scope: !207)
!269 = !DILocation(line: 136, column: 11, scope: !207)
!270 = !DILocation(line: 136, column: 15, scope: !207)
!271 = !DILocation(line: 138, column: 3, scope: !207)
!272 = distinct !DISubprogram(name: "sin_pi_taylor", scope: !1, file: !1, line: 103, type: !46, isLocal: true, isDefinition: true, scopeLine: 104, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!273 = !DILocalVariable(name: "x", arg: 1, scope: !272, file: !1, line: 103, type: !49)
!274 = !DILocation(line: 103, column: 28, scope: !272)
!275 = !DILocalVariable(name: "result", arg: 2, scope: !272, file: !1, line: 103, type: !51)
!276 = !DILocation(line: 103, column: 46, scope: !272)
!277 = !DILocation(line: 105, column: 3, scope: !272)
!278 = !DILocation(line: 105, column: 11, scope: !272)
!279 = !DILocation(line: 105, column: 15, scope: !272)
!280 = !DILocation(line: 106, column: 3, scope: !272)
!281 = !DILocation(line: 106, column: 11, scope: !272)
!282 = !DILocation(line: 106, column: 15, scope: !272)
!283 = !DILocation(line: 107, column: 17, scope: !284)
!284 = distinct !DILexicalBlock(scope: !272, file: !1, line: 107, column: 7)
!285 = !DILocation(line: 107, column: 12, scope: !284)
!286 = !DILocation(line: 107, column: 11, scope: !284)
!287 = !DILocation(line: 107, column: 20, scope: !284)
!288 = !DILocation(line: 107, column: 7, scope: !272)
!289 = !DILocalVariable(name: "y", scope: !290, file: !1, line: 108, type: !49)
!290 = distinct !DILexicalBlock(scope: !284, file: !1, line: 107, column: 27)
!291 = !DILocation(line: 108, column: 18, scope: !290)
!292 = !DILocation(line: 108, column: 29, scope: !290)
!293 = !DILocation(line: 108, column: 27, scope: !290)
!294 = !DILocalVariable(name: "a", scope: !290, file: !1, line: 109, type: !49)
!295 = !DILocation(line: 109, column: 18, scope: !290)
!296 = !DILocation(line: 109, column: 22, scope: !290)
!297 = !DILocation(line: 109, column: 24, scope: !290)
!298 = !DILocation(line: 109, column: 23, scope: !290)
!299 = !DILocation(line: 110, column: 19, scope: !290)
!300 = !DILocation(line: 110, column: 28, scope: !290)
!301 = !DILocation(line: 110, column: 37, scope: !290)
!302 = !DILocation(line: 110, column: 46, scope: !290)
!303 = !DILocation(line: 110, column: 55, scope: !290)
!304 = !DILocation(line: 110, column: 64, scope: !290)
!305 = !DILocation(line: 110, column: 65, scope: !290)
!306 = !DILocation(line: 110, column: 62, scope: !290)
!307 = !DILocation(line: 110, column: 56, scope: !290)
!308 = !DILocation(line: 110, column: 72, scope: !290)
!309 = !DILocation(line: 110, column: 53, scope: !290)
!310 = !DILocation(line: 110, column: 47, scope: !290)
!311 = !DILocation(line: 110, column: 78, scope: !290)
!312 = !DILocation(line: 110, column: 44, scope: !290)
!313 = !DILocation(line: 110, column: 38, scope: !290)
!314 = !DILocation(line: 110, column: 84, scope: !290)
!315 = !DILocation(line: 110, column: 35, scope: !290)
!316 = !DILocation(line: 110, column: 29, scope: !290)
!317 = !DILocation(line: 110, column: 90, scope: !290)
!318 = !DILocation(line: 110, column: 26, scope: !290)
!319 = !DILocation(line: 110, column: 20, scope: !290)
!320 = !DILocation(line: 110, column: 5, scope: !290)
!321 = !DILocation(line: 110, column: 13, scope: !290)
!322 = !DILocation(line: 110, column: 17, scope: !290)
!323 = !DILocation(line: 111, column: 3, scope: !290)
!324 = !DILocation(line: 113, column: 28, scope: !325)
!325 = distinct !DILexicalBlock(scope: !284, file: !1, line: 112, column: 8)
!326 = !DILocation(line: 113, column: 27, scope: !325)
!327 = !DILocation(line: 113, column: 19, scope: !325)
!328 = !DILocation(line: 113, column: 5, scope: !325)
!329 = !DILocation(line: 113, column: 13, scope: !325)
!330 = !DILocation(line: 113, column: 17, scope: !325)
!331 = !DILocation(line: 116, column: 38, scope: !272)
!332 = !DILocation(line: 116, column: 46, scope: !272)
!333 = !DILocation(line: 116, column: 33, scope: !272)
!334 = !DILocation(line: 116, column: 32, scope: !272)
!335 = !DILocation(line: 116, column: 3, scope: !272)
!336 = !DILocation(line: 116, column: 11, scope: !272)
!337 = !DILocation(line: 116, column: 15, scope: !272)
!338 = !DILocation(line: 118, column: 3, scope: !272)
!339 = distinct !DISubprogram(name: "gsl_sf_cos_pi_e", scope: !1, file: !1, line: 184, type: !46, isLocal: false, isDefinition: true, scopeLine: 185, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!340 = !DILocalVariable(name: "x", arg: 1, scope: !339, file: !1, line: 184, type: !49)
!341 = !DILocation(line: 184, column: 30, scope: !339)
!342 = !DILocalVariable(name: "result", arg: 2, scope: !339, file: !1, line: 184, type: !51)
!343 = !DILocation(line: 184, column: 48, scope: !339)
!344 = !DILocalVariable(name: "intx", scope: !339, file: !1, line: 186, type: !50)
!345 = !DILocation(line: 186, column: 10, scope: !339)
!346 = !DILocalVariable(name: "fracx", scope: !339, file: !1, line: 186, type: !50)
!347 = !DILocation(line: 186, column: 22, scope: !339)
!348 = !DILocalVariable(name: "q", scope: !339, file: !1, line: 187, type: !69)
!349 = !DILocation(line: 187, column: 8, scope: !339)
!350 = !DILocalVariable(name: "sign", scope: !339, file: !1, line: 188, type: !48)
!351 = !DILocation(line: 188, column: 7, scope: !339)
!352 = !DILocalVariable(name: "status", scope: !339, file: !1, line: 188, type: !48)
!353 = !DILocation(line: 188, column: 17, scope: !339)
!354 = !DILocation(line: 190, column: 3, scope: !339)
!355 = !DILocation(line: 190, column: 11, scope: !339)
!356 = !DILocation(line: 190, column: 15, scope: !339)
!357 = !DILocation(line: 191, column: 3, scope: !339)
!358 = !DILocation(line: 191, column: 11, scope: !339)
!359 = !DILocation(line: 191, column: 15, scope: !339)
!360 = !DILocation(line: 192, column: 16, scope: !339)
!361 = !DILocation(line: 192, column: 11, scope: !339)
!362 = !DILocation(line: 192, column: 9, scope: !339)
!363 = !DILocation(line: 193, column: 12, scope: !364)
!364 = distinct !DILexicalBlock(scope: !339, file: !1, line: 193, column: 7)
!365 = !DILocation(line: 193, column: 7, scope: !364)
!366 = !DILocation(line: 193, column: 19, scope: !364)
!367 = !DILocation(line: 193, column: 7, scope: !339)
!368 = !DILocation(line: 193, column: 27, scope: !369)
!369 = !DILexicalBlockFile(scope: !364, file: !1, discriminator: 1)
!370 = !DILocation(line: 195, column: 11, scope: !371)
!371 = distinct !DILexicalBlock(scope: !339, file: !1, line: 195, column: 6)
!372 = !DILocation(line: 195, column: 6, scope: !371)
!373 = !DILocation(line: 195, column: 17, scope: !371)
!374 = !DILocation(line: 195, column: 6, scope: !339)
!375 = !DILocation(line: 196, column: 5, scope: !376)
!376 = distinct !DILexicalBlock(scope: !371, file: !1, line: 195, column: 28)
!377 = !DILocation(line: 196, column: 13, scope: !376)
!378 = !DILocation(line: 196, column: 17, scope: !376)
!379 = !DILocation(line: 197, column: 5, scope: !376)
!380 = !DILocation(line: 200, column: 12, scope: !339)
!381 = !DILocation(line: 200, column: 17, scope: !339)
!382 = !DILocation(line: 200, column: 30, scope: !339)
!383 = !DILocation(line: 200, column: 34, scope: !384)
!384 = !DILexicalBlockFile(scope: !339, file: !1, discriminator: 1)
!385 = !DILocation(line: 200, column: 39, scope: !384)
!386 = !DILocation(line: 200, column: 9, scope: !384)
!387 = !DILocation(line: 200, column: 56, scope: !388)
!388 = !DILexicalBlockFile(scope: !339, file: !1, discriminator: 2)
!389 = !DILocation(line: 200, column: 9, scope: !388)
!390 = !DILocation(line: 200, column: 68, scope: !391)
!391 = !DILexicalBlockFile(scope: !339, file: !1, discriminator: 3)
!392 = !DILocation(line: 200, column: 63, scope: !391)
!393 = !DILocation(line: 200, column: 9, scope: !391)
!394 = !DILocation(line: 200, column: 9, scope: !395)
!395 = !DILexicalBlockFile(scope: !339, file: !1, discriminator: 4)
!396 = !DILocation(line: 200, column: 7, scope: !395)
!397 = !DILocation(line: 200, column: 5, scope: !395)
!398 = !DILocation(line: 201, column: 12, scope: !339)
!399 = !DILocation(line: 201, column: 14, scope: !339)
!400 = !DILocation(line: 201, column: 8, scope: !339)
!401 = !DILocation(line: 204, column: 7, scope: !402)
!402 = distinct !DILexicalBlock(scope: !339, file: !1, line: 204, column: 7)
!403 = !DILocation(line: 204, column: 13, scope: !402)
!404 = !DILocation(line: 204, column: 7, scope: !339)
!405 = !DILocation(line: 205, column: 21, scope: !406)
!406 = distinct !DILexicalBlock(scope: !402, file: !1, line: 204, column: 21)
!407 = !DILocation(line: 205, column: 26, scope: !406)
!408 = !DILocation(line: 205, column: 5, scope: !406)
!409 = !DILocation(line: 205, column: 13, scope: !406)
!410 = !DILocation(line: 205, column: 17, scope: !406)
!411 = !DILocation(line: 206, column: 5, scope: !406)
!412 = !DILocation(line: 208, column: 12, scope: !413)
!413 = distinct !DILexicalBlock(scope: !339, file: !1, line: 208, column: 7)
!414 = !DILocation(line: 208, column: 7, scope: !413)
!415 = !DILocation(line: 208, column: 19, scope: !413)
!416 = !DILocation(line: 208, column: 7, scope: !339)
!417 = !DILocation(line: 209, column: 13, scope: !418)
!418 = distinct !DILexicalBlock(scope: !413, file: !1, line: 208, column: 26)
!419 = !DILocation(line: 209, column: 12, scope: !418)
!420 = !DILocation(line: 209, column: 10, scope: !418)
!421 = !DILocation(line: 210, column: 15, scope: !418)
!422 = !DILocation(line: 210, column: 21, scope: !418)
!423 = !DILocation(line: 210, column: 29, scope: !424)
!424 = !DILexicalBlockFile(scope: !418, file: !1, discriminator: 1)
!425 = !DILocation(line: 210, column: 34, scope: !424)
!426 = !DILocation(line: 210, column: 15, scope: !424)
!427 = !DILocation(line: 210, column: 41, scope: !428)
!428 = !DILexicalBlockFile(scope: !418, file: !1, discriminator: 2)
!429 = !DILocation(line: 210, column: 46, scope: !428)
!430 = !DILocation(line: 210, column: 15, scope: !428)
!431 = !DILocation(line: 210, column: 15, scope: !432)
!432 = !DILexicalBlockFile(scope: !418, file: !1, discriminator: 3)
!433 = !DILocation(line: 210, column: 11, scope: !432)
!434 = !DILocation(line: 211, column: 3, scope: !418)
!435 = !DILocation(line: 213, column: 10, scope: !339)
!436 = !DILocation(line: 214, column: 7, scope: !437)
!437 = distinct !DILexicalBlock(scope: !339, file: !1, line: 214, column: 7)
!438 = !DILocation(line: 214, column: 13, scope: !437)
!439 = !DILocation(line: 214, column: 7, scope: !339)
!440 = !DILocation(line: 215, column: 29, scope: !441)
!441 = distinct !DILexicalBlock(scope: !437, file: !1, line: 214, column: 21)
!442 = !DILocation(line: 215, column: 34, scope: !441)
!443 = !DILocation(line: 215, column: 41, scope: !441)
!444 = !DILocation(line: 215, column: 14, scope: !441)
!445 = !DILocation(line: 215, column: 12, scope: !441)
!446 = !DILocation(line: 216, column: 13, scope: !441)
!447 = !DILocation(line: 216, column: 12, scope: !441)
!448 = !DILocation(line: 216, column: 10, scope: !441)
!449 = !DILocation(line: 217, column: 3, scope: !441)
!450 = !DILocation(line: 218, column: 12, scope: !451)
!451 = distinct !DILexicalBlock(scope: !437, file: !1, line: 218, column: 12)
!452 = !DILocation(line: 218, column: 18, scope: !451)
!453 = !DILocation(line: 218, column: 12, scope: !437)
!454 = !DILocation(line: 219, column: 29, scope: !455)
!455 = distinct !DILexicalBlock(scope: !451, file: !1, line: 218, column: 27)
!456 = !DILocation(line: 219, column: 34, scope: !455)
!457 = !DILocation(line: 219, column: 41, scope: !455)
!458 = !DILocation(line: 219, column: 14, scope: !455)
!459 = !DILocation(line: 219, column: 12, scope: !455)
!460 = !DILocation(line: 220, column: 3, scope: !455)
!461 = !DILocation(line: 222, column: 28, scope: !462)
!462 = distinct !DILexicalBlock(scope: !451, file: !1, line: 221, column: 8)
!463 = !DILocation(line: 222, column: 35, scope: !462)
!464 = !DILocation(line: 222, column: 14, scope: !462)
!465 = !DILocation(line: 222, column: 12, scope: !462)
!466 = !DILocation(line: 224, column: 7, scope: !467)
!467 = distinct !DILexicalBlock(scope: !339, file: !1, line: 224, column: 7)
!468 = !DILocation(line: 224, column: 12, scope: !467)
!469 = !DILocation(line: 224, column: 7, scope: !339)
!470 = !DILocation(line: 224, column: 33, scope: !471)
!471 = !DILexicalBlockFile(scope: !467, file: !1, discriminator: 1)
!472 = !DILocation(line: 224, column: 41, scope: !471)
!473 = !DILocation(line: 224, column: 32, scope: !471)
!474 = !DILocation(line: 224, column: 18, scope: !471)
!475 = !DILocation(line: 224, column: 26, scope: !471)
!476 = !DILocation(line: 224, column: 30, scope: !471)
!477 = !DILocation(line: 225, column: 10, scope: !339)
!478 = !DILocation(line: 225, column: 3, scope: !339)
!479 = !DILocation(line: 226, column: 1, scope: !339)
!480 = distinct !DISubprogram(name: "gsl_sf_sin_pi", scope: !1, file: !1, line: 233, type: !481, isLocal: false, isDefinition: true, scopeLine: 234, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!481 = !DISubroutineType(types: !482)
!482 = !{!50, !49}
!483 = !DILocalVariable(name: "x", arg: 1, scope: !480, file: !1, line: 233, type: !49)
!484 = !DILocation(line: 233, column: 28, scope: !480)
!485 = !DILocalVariable(name: "result", scope: !480, file: !1, line: 235, type: !52)
!486 = !DILocation(line: 235, column: 3, scope: !480)
!487 = !DILocalVariable(name: "status", scope: !480, file: !1, line: 235, type: !48)
!488 = !DILocation(line: 235, column: 3, scope: !489)
!489 = distinct !DILexicalBlock(scope: !480, file: !1, line: 235, column: 3)
!490 = !DILocation(line: 235, column: 3, scope: !491)
!491 = !DILexicalBlockFile(scope: !492, file: !1, discriminator: 1)
!492 = distinct !DILexicalBlock(scope: !489, file: !1, line: 235, column: 3)
!493 = distinct !{!493, !494}
!494 = !DILocation(line: 235, column: 3, scope: !492)
!495 = !DILocation(line: 235, column: 3, scope: !496)
!496 = !DILexicalBlockFile(scope: !497, file: !1, discriminator: 2)
!497 = distinct !DILexicalBlock(scope: !492, file: !1, line: 235, column: 3)
!498 = !DILocation(line: 235, column: 3, scope: !499)
!499 = !DILexicalBlockFile(scope: !492, file: !1, discriminator: 3)
!500 = !DILocation(line: 235, column: 3, scope: !501)
!501 = !DILexicalBlockFile(scope: !480, file: !1, discriminator: 4)
!502 = !DILocation(line: 236, column: 1, scope: !480)
!503 = distinct !DISubprogram(name: "gsl_sf_cos_pi", scope: !1, file: !1, line: 239, type: !481, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!504 = !DILocalVariable(name: "x", arg: 1, scope: !503, file: !1, line: 239, type: !49)
!505 = !DILocation(line: 239, column: 28, scope: !503)
!506 = !DILocalVariable(name: "result", scope: !503, file: !1, line: 241, type: !52)
!507 = !DILocation(line: 241, column: 3, scope: !503)
!508 = !DILocalVariable(name: "status", scope: !503, file: !1, line: 241, type: !48)
!509 = !DILocation(line: 241, column: 3, scope: !510)
!510 = distinct !DILexicalBlock(scope: !503, file: !1, line: 241, column: 3)
!511 = !DILocation(line: 241, column: 3, scope: !512)
!512 = !DILexicalBlockFile(scope: !513, file: !1, discriminator: 1)
!513 = distinct !DILexicalBlock(scope: !510, file: !1, line: 241, column: 3)
!514 = distinct !{!514, !515}
!515 = !DILocation(line: 241, column: 3, scope: !513)
!516 = !DILocation(line: 241, column: 3, scope: !517)
!517 = !DILexicalBlockFile(scope: !518, file: !1, discriminator: 2)
!518 = distinct !DILexicalBlock(scope: !513, file: !1, line: 241, column: 3)
!519 = !DILocation(line: 241, column: 3, scope: !520)
!520 = !DILexicalBlockFile(scope: !513, file: !1, discriminator: 3)
!521 = !DILocation(line: 241, column: 3, scope: !522)
!522 = !DILexicalBlockFile(scope: !503, file: !1, discriminator: 4)
!523 = !DILocation(line: 242, column: 1, scope: !503)
