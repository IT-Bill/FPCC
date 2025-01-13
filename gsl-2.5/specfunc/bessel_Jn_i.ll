; ModuleID = 'bessel_Jn.ll'
source_filename = "bessel_Jn.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsl_sf_result_struct = type { double, double }

@.str = private unnamed_addr constant [13 x i8] c"domain error\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"bessel_Jn.c\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"gsl_sf_bessel_Jn_e(n, x, &result)\00", align 1
@0 = private unnamed_addr constant [19 x i8] c"gsl_sf_bessel_Jn_e\00"
@1 = private unnamed_addr constant [13 x i8] c"bessel_Jn.ll\00"
@2 = private unnamed_addr constant [23 x i8] c"gsl_sf_bessel_Jn_array\00"
@3 = private unnamed_addr constant [13 x i8] c"bessel_Jn.ll\00"
@4 = private unnamed_addr constant [17 x i8] c"gsl_sf_bessel_Jn\00"
@5 = private unnamed_addr constant [13 x i8] c"bessel_Jn.ll\00"

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_bessel_Jn_e(i32, double, %struct.gsl_sf_result_struct*) #0 !dbg !47 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca %struct.gsl_sf_result_struct*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.gsl_sf_result_struct, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.gsl_sf_result_struct, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.gsl_sf_result_struct, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca double, align 8
  %25 = alloca double, align 8
  %26 = alloca double, align 8
  %27 = alloca i32, align 4
  %28 = alloca %struct.gsl_sf_result_struct, align 8
  %29 = alloca %struct.gsl_sf_result_struct, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !59, metadata !60), !dbg !61
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !62, metadata !60), !dbg !63
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %7, metadata !64, metadata !60), !dbg !65
  call void @llvm.dbg.declare(metadata i32* %8, metadata !66, metadata !60), !dbg !67
  store i32 1, i32* %8, align 4, !dbg !67
  %30 = load i32, i32* %5, align 4, !dbg !68
  %31 = icmp slt i32 %30, 0, !dbg !70
  %32 = sext i32 %30 to i64, !dbg !71
  %33 = call i1 @iCmpInstHandler(i64 %32, i64 0, i1 %31, i32 40, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94910518453344, i32 40, i32 8), !dbg !71
  br i1 %33, label %34, label %46, !dbg !71

; <label>:34:                                     ; preds = %3
  %35 = load i32, i32* %5, align 4, !dbg !72
  %36 = sub nsw i32 0, %35, !dbg !74
  store i32 %36, i32* %5, align 4, !dbg !75
  %37 = load i32, i32* %5, align 4, !dbg !76
  %38 = and i32 %37, 1, !dbg !76
  %39 = icmp ne i32 %38, 0, !dbg !76
  %40 = sext i32 %38 to i64, !dbg !78
  %41 = call i1 @iCmpInstHandler(i64 %40, i64 0, i1 %39, i32 33, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94910518458224, i32 43, i32 8), !dbg !78
  br i1 %41, label %42, label %45, !dbg !78

; <label>:42:                                     ; preds = %34
  %43 = load i32, i32* %8, align 4, !dbg !79
  %44 = sub nsw i32 0, %43, !dbg !81
  store i32 %44, i32* %8, align 4, !dbg !82
  br label %45, !dbg !83

; <label>:45:                                     ; preds = %42, %34
  br label %46, !dbg !84

; <label>:46:                                     ; preds = %45, %3
  %47 = load double, double* %6, align 8, !dbg !85
  %48 = fcmp olt double %47, 0.000000e+00, !dbg !87
  %49 = call i1 @fCmpInstHandler(double %47, double 0.000000e+00, i1 %48, i32 4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94910518463376, i32 46, i32 8), !dbg !88
  br i1 %49, label %50, label %62, !dbg !88

; <label>:50:                                     ; preds = %46
  %51 = load double, double* %6, align 8, !dbg !89
  %52 = fsub double -0.000000e+00, %51, !dbg !91
  call void @fSubHandler(double -0.000000e+00, double %51, double %52, i64 0, i64 94910518464488, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94910518464896, i32 48, i32 9), !dbg !92
  store double %52, double* %6, align 8, !dbg !92
  %53 = load i32, i32* %5, align 4, !dbg !93
  %54 = and i32 %53, 1, !dbg !93
  %55 = icmp ne i32 %54, 0, !dbg !93
  %56 = sext i32 %54 to i64, !dbg !95
  %57 = call i1 @iCmpInstHandler(i64 %56, i64 0, i1 %55, i32 33, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94910518467792, i32 49, i32 8), !dbg !95
  br i1 %57, label %58, label %61, !dbg !95

; <label>:58:                                     ; preds = %50
  %59 = load i32, i32* %8, align 4, !dbg !96
  %60 = sub nsw i32 0, %59, !dbg !98
  store i32 %60, i32* %8, align 4, !dbg !99
  br label %61, !dbg !100

; <label>:61:                                     ; preds = %58, %50
  br label %62, !dbg !101

; <label>:62:                                     ; preds = %61, %46
  %63 = load i32, i32* %5, align 4, !dbg !102
  %64 = icmp eq i32 %63, 0, !dbg !104
  %65 = sext i32 %63 to i64, !dbg !105
  %66 = call i1 @iCmpInstHandler(i64 %65, i64 0, i1 %64, i32 32, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94910518470816, i32 54, i32 8), !dbg !105
  br i1 %66, label %67, label %82, !dbg !105

; <label>:67:                                     ; preds = %62
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %9, metadata !106, metadata !60), !dbg !108
  call void @llvm.dbg.declare(metadata i32* %10, metadata !109, metadata !60), !dbg !110
  %68 = load double, double* %6, align 8, !dbg !111
  %69 = call i32 @gsl_sf_bessel_J0_e(double %68, %struct.gsl_sf_result_struct* %9), !dbg !112
  store i32 %69, i32* %10, align 4, !dbg !110
  %70 = load i32, i32* %8, align 4, !dbg !113
  %71 = sitofp i32 %70 to double, !dbg !113
  %72 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %9, i32 0, i32 0, !dbg !114
  %73 = load double, double* %72, align 8, !dbg !114
  %74 = fmul double %71, %73, !dbg !115
  call void @fMulHandler(double %71, double %73, double %74, i64 94910518477368, i64 94910518479464, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94910518482176, i32 57, i32 24), !dbg !116
  %75 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !116
  %76 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %75, i32 0, i32 0, !dbg !117
  store double %74, double* %76, align 8, !dbg !118
  %77 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %9, i32 0, i32 1, !dbg !119
  %78 = load double, double* %77, align 8, !dbg !119
  %79 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !120
  %80 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %79, i32 0, i32 1, !dbg !121
  store double %78, double* %80, align 8, !dbg !122
  %81 = load i32, i32* %10, align 4, !dbg !123
  store i32 %81, i32* %4, align 4, !dbg !124
  br label %296, !dbg !124

; <label>:82:                                     ; preds = %62
  %83 = load i32, i32* %5, align 4, !dbg !125
  %84 = icmp eq i32 %83, 1, !dbg !127
  %85 = sext i32 %83 to i64, !dbg !128
  %86 = call i1 @iCmpInstHandler(i64 %85, i64 1, i1 %84, i32 32, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94910518490096, i32 61, i32 13), !dbg !128
  br i1 %86, label %87, label %102, !dbg !128

; <label>:87:                                     ; preds = %82
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %11, metadata !129, metadata !60), !dbg !131
  call void @llvm.dbg.declare(metadata i32* %12, metadata !132, metadata !60), !dbg !133
  %88 = load double, double* %6, align 8, !dbg !134
  %89 = call i32 @gsl_sf_bessel_J1_e(double %88, %struct.gsl_sf_result_struct* %11), !dbg !135
  store i32 %89, i32* %12, align 4, !dbg !133
  %90 = load i32, i32* %8, align 4, !dbg !136
  %91 = sitofp i32 %90 to double, !dbg !136
  %92 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 0, !dbg !137
  %93 = load double, double* %92, align 8, !dbg !137
  %94 = fmul double %91, %93, !dbg !138
  call void @fMulHandler(double %91, double %93, double %94, i64 94910518496696, i64 94910518498792, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94910518500464, i32 64, i32 24), !dbg !139
  %95 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !139
  %96 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %95, i32 0, i32 0, !dbg !140
  store double %94, double* %96, align 8, !dbg !141
  %97 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 1, !dbg !142
  %98 = load double, double* %97, align 8, !dbg !142
  %99 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !143
  %100 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %99, i32 0, i32 1, !dbg !144
  store double %98, double* %100, align 8, !dbg !145
  %101 = load i32, i32* %12, align 4, !dbg !146
  store i32 %101, i32* %4, align 4, !dbg !147
  br label %296, !dbg !147

; <label>:102:                                    ; preds = %82
  %103 = load double, double* %6, align 8, !dbg !148
  %104 = fcmp oeq double %103, 0.000000e+00, !dbg !151
  %105 = call i1 @fCmpInstHandler(double %103, double 0.000000e+00, i1 %104, i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94910518508240, i32 69, i32 10), !dbg !152
  br i1 %105, label %106, label %111, !dbg !152

; <label>:106:                                    ; preds = %102
  %107 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !153
  %108 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %107, i32 0, i32 0, !dbg !155
  store double 0.000000e+00, double* %108, align 8, !dbg !156
  %109 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !157
  %110 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %109, i32 0, i32 1, !dbg !158
  store double 0.000000e+00, double* %110, align 8, !dbg !159
  store i32 0, i32* %4, align 4, !dbg !160
  br label %296, !dbg !160

; <label>:111:                                    ; preds = %102
  %112 = load double, double* %6, align 8, !dbg !161
  %113 = load double, double* %6, align 8, !dbg !163
  %114 = fmul double %112, %113, !dbg !164
  call void @fMulHandler(double %112, double %113, double %114, i64 94910518513848, i64 94910518514168, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94910518514576, i32 74, i32 14), !dbg !165
  %115 = load i32, i32* %5, align 4, !dbg !165
  %116 = sitofp i32 %115 to double, !dbg !165
  %117 = fadd double %116, 1.000000e+00, !dbg !166
  call void @fAddHandler(double %116, double 1.000000e+00, double %117, i64 94910518515352, i64 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94910518517120, i32 74, i32 26), !dbg !167
  %118 = fmul double 1.000000e+01, %117, !dbg !167
  call void @fMulHandler(double 1.000000e+01, double %117, double %118, i64 0, i64 94910518517120, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94910518517600, i32 74, i32 23), !dbg !168
  %119 = fmul double %118, 0x3F48406003B2AE5A, !dbg !168
  call void @fMulHandler(double %118, double 0x3F48406003B2AE5A, double %119, i64 94910518517600, i64 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94910518518048, i32 74, i32 31), !dbg !169
  %120 = fcmp olt double %114, %119, !dbg !169
  %121 = call i1 @fCmpInstHandler(double %114, double %119, i1 %120, i32 4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94910518518464, i32 74, i32 17), !dbg !170
  br i1 %121, label %122, label %148, !dbg !170

; <label>:122:                                    ; preds = %111
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %13, metadata !171, metadata !60), !dbg !173
  call void @llvm.dbg.declare(metadata i32* %14, metadata !174, metadata !60), !dbg !175
  %123 = load i32, i32* %5, align 4, !dbg !176
  %124 = sitofp i32 %123 to double, !dbg !177
  %125 = load double, double* %6, align 8, !dbg !178
  %126 = call i32 @gsl_sf_bessel_IJ_taylor_e(double %124, double %125, i32 -1, i32 50, double 0x3CB0000000000000, %struct.gsl_sf_result_struct* %13), !dbg !179
  store i32 %126, i32* %14, align 4, !dbg !175
  %127 = load i32, i32* %8, align 4, !dbg !180
  %128 = sitofp i32 %127 to double, !dbg !180
  %129 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %13, i32 0, i32 0, !dbg !181
  %130 = load double, double* %129, align 8, !dbg !181
  %131 = fmul double %128, %130, !dbg !182
  call void @fMulHandler(double %128, double %130, double %131, i64 94910518526152, i64 94910518528248, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94910518529920, i32 77, i32 27), !dbg !183
  %132 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !183
  %133 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %132, i32 0, i32 0, !dbg !184
  store double %131, double* %133, align 8, !dbg !185
  %134 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %13, i32 0, i32 1, !dbg !186
  %135 = load double, double* %134, align 8, !dbg !186
  %136 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !187
  %137 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %136, i32 0, i32 1, !dbg !188
  store double %135, double* %137, align 8, !dbg !189
  %138 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !190
  %139 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %138, i32 0, i32 0, !dbg !191
  %140 = load double, double* %139, align 8, !dbg !191
  %141 = call double @fabs(double %140) #1, !dbg !192
  %142 = fmul double 0x3CB0000000000000, %141, !dbg !193
  call void @fMulHandler(double 0x3CB0000000000000, double %141, double %142, i64 0, i64 94910518537744, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94910518540320, i32 79, i32 38), !dbg !194
  %143 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !194
  %144 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %143, i32 0, i32 1, !dbg !195
  %145 = load double, double* %144, align 8, !dbg !196
  %146 = fadd double %145, %142, !dbg !196
  call void @fAddHandler(double %145, double %142, double %146, i64 94910518541544, i64 94910518540320, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94910518541952, i32 79, i32 19), !dbg !196
  store double %146, double* %144, align 8, !dbg !196
  %147 = load i32, i32* %14, align 4, !dbg !197
  store i32 %147, i32* %4, align 4, !dbg !198
  br label %296, !dbg !198

; <label>:148:                                    ; preds = %111
  %149 = load double, double* %6, align 8, !dbg !199
  %150 = fmul double 0x3F20000000000000, %149, !dbg !201
  call void @fMulHandler(double 0x3F20000000000000, double %149, double %150, i64 0, i64 94910518546184, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94910518546592, i32 82, i32 35), !dbg !202
  %151 = load i32, i32* %5, align 4, !dbg !202
  %152 = load i32, i32* %5, align 4, !dbg !203
  %153 = mul nsw i32 %151, %152, !dbg !204
  %154 = sitofp i32 %153 to double, !dbg !202
  %155 = fadd double %154, 1.000000e+00, !dbg !205
  call void @fAddHandler(double %154, double 1.000000e+00, double %155, i64 94910518548168, i64 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94910518549872, i32 82, i32 45), !dbg !206
  %156 = fcmp ogt double %150, %155, !dbg !206
  %157 = call i1 @fCmpInstHandler(double %150, double %155, i1 %156, i32 2, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94910518550256, i32 82, i32 39), !dbg !207
  br i1 %157, label %158, label %171, !dbg !207

; <label>:158:                                    ; preds = %148
  call void @llvm.dbg.declare(metadata i32* %15, metadata !208, metadata !60), !dbg !210
  %159 = load i32, i32* %5, align 4, !dbg !211
  %160 = sitofp i32 %159 to double, !dbg !212
  %161 = load double, double* %6, align 8, !dbg !213
  %162 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !214
  %163 = call i32 @gsl_sf_bessel_Jnu_asympx_e(double %160, double %161, %struct.gsl_sf_result_struct* %162), !dbg !215
  store i32 %163, i32* %15, align 4, !dbg !210
  %164 = load i32, i32* %8, align 4, !dbg !216
  %165 = sitofp i32 %164 to double, !dbg !216
  %166 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !217
  %167 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %166, i32 0, i32 0, !dbg !218
  %168 = load double, double* %167, align 8, !dbg !219
  %169 = fmul double %168, %165, !dbg !219
  call void @fMulHandler(double %168, double %165, double %169, i64 94910518559512, i64 94910518557032, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94910518559920, i32 84, i32 19), !dbg !219
  store double %169, double* %167, align 8, !dbg !219
  %170 = load i32, i32* %15, align 4, !dbg !220
  store i32 %170, i32* %4, align 4, !dbg !221
  br label %296, !dbg !221

; <label>:171:                                    ; preds = %148
  %172 = load i32, i32* %5, align 4, !dbg !222
  %173 = icmp sgt i32 %172, 50, !dbg !224
  %174 = sext i32 %172 to i64, !dbg !225
  %175 = call i1 @iCmpInstHandler(i64 %174, i64 50, i1 %173, i32 38, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94910518564496, i32 87, i32 15), !dbg !225
  br i1 %175, label %176, label %189, !dbg !225

; <label>:176:                                    ; preds = %171
  call void @llvm.dbg.declare(metadata i32* %16, metadata !226, metadata !60), !dbg !228
  %177 = load i32, i32* %5, align 4, !dbg !229
  %178 = sitofp i32 %177 to double, !dbg !230
  %179 = load double, double* %6, align 8, !dbg !231
  %180 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !232
  %181 = call i32 @gsl_sf_bessel_Jnu_asymp_Olver_e(double %178, double %179, %struct.gsl_sf_result_struct* %180), !dbg !233
  store i32 %181, i32* %16, align 4, !dbg !228
  %182 = load i32, i32* %8, align 4, !dbg !234
  %183 = sitofp i32 %182 to double, !dbg !234
  %184 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !235
  %185 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %184, i32 0, i32 0, !dbg !236
  %186 = load double, double* %185, align 8, !dbg !237
  %187 = fmul double %186, %183, !dbg !237
  call void @fMulHandler(double %186, double %183, double %187, i64 94910518573704, i64 94910518571224, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94910518574112, i32 89, i32 19), !dbg !237
  store double %187, double* %185, align 8, !dbg !237
  %188 = load i32, i32* %16, align 4, !dbg !238
  store i32 %188, i32* %4, align 4, !dbg !239
  br label %296, !dbg !239

; <label>:189:                                    ; preds = %171
  %190 = load double, double* %6, align 8, !dbg !240
  %191 = fcmp ogt double %190, 1.000000e+03, !dbg !242
  %192 = call i1 @fCmpInstHandler(double %190, double 1.000000e+03, i1 %191, i32 2, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94910518578784, i32 92, i32 15), !dbg !243
  br i1 %192, label %193, label %206, !dbg !243

; <label>:193:                                    ; preds = %189
  call void @llvm.dbg.declare(metadata i32* %17, metadata !244, metadata !60), !dbg !246
  %194 = load i32, i32* %5, align 4, !dbg !247
  %195 = sitofp i32 %194 to double, !dbg !248
  %196 = load double, double* %6, align 8, !dbg !249
  %197 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !250
  %198 = call i32 @gsl_sf_bessel_Jnu_asympx_e(double %195, double %196, %struct.gsl_sf_result_struct* %197), !dbg !251
  store i32 %198, i32* %17, align 4, !dbg !246
  %199 = load i32, i32* %8, align 4, !dbg !252
  %200 = sitofp i32 %199 to double, !dbg !252
  %201 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !253
  %202 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %201, i32 0, i32 0, !dbg !254
  %203 = load double, double* %202, align 8, !dbg !255
  %204 = fmul double %203, %200, !dbg !255
  call void @fMulHandler(double %203, double %200, double %204, i64 94910518587576, i64 94910518585096, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94910518587984, i32 98, i32 19), !dbg !255
  store double %204, double* %202, align 8, !dbg !255
  %205 = load i32, i32* %17, align 4, !dbg !256
  store i32 %205, i32* %4, align 4, !dbg !257
  br label %296, !dbg !257

; <label>:206:                                    ; preds = %189
  call void @llvm.dbg.declare(metadata double* %18, metadata !258, metadata !60), !dbg !260
  call void @llvm.dbg.declare(metadata double* %19, metadata !261, metadata !60), !dbg !262
  call void @llvm.dbg.declare(metadata double* %20, metadata !263, metadata !60), !dbg !264
  call void @llvm.dbg.declare(metadata double* %21, metadata !265, metadata !60), !dbg !266
  call void @llvm.dbg.declare(metadata i32* %22, metadata !267, metadata !60), !dbg !268
  call void @llvm.dbg.declare(metadata i32* %23, metadata !269, metadata !60), !dbg !270
  %207 = load i32, i32* %5, align 4, !dbg !271
  %208 = sitofp i32 %207 to double, !dbg !272
  %209 = load double, double* %6, align 8, !dbg !273
  %210 = call i32 @gsl_sf_bessel_J_CF1(double %208, double %209, double* %20, double* %21), !dbg !274
  store i32 %210, i32* %23, align 4, !dbg !270
  call void @llvm.dbg.declare(metadata double* %24, metadata !275, metadata !60), !dbg !276
  %211 = load double, double* %20, align 8, !dbg !277
  %212 = fmul double 0x2000000000000000, %211, !dbg !278
  call void @fMulHandler(double 0x2000000000000000, double %211, double %212, i64 0, i64 94910518603608, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94910518604048, i32 110, i32 38), !dbg !276
  store double %212, double* %24, align 8, !dbg !276
  call void @llvm.dbg.declare(metadata double* %25, metadata !279, metadata !60), !dbg !280
  store double 0x2000000000000000, double* %25, align 8, !dbg !280
  call void @llvm.dbg.declare(metadata double* %26, metadata !281, metadata !60), !dbg !282
  call void @llvm.dbg.declare(metadata i32* %27, metadata !283, metadata !60), !dbg !284
  %213 = load i32, i32* %5, align 4, !dbg !285
  store i32 %213, i32* %27, align 4, !dbg !287
  br label %214, !dbg !288

; <label>:214:                                    ; preds = %231, %206
  %215 = load i32, i32* %27, align 4, !dbg !289
  %216 = icmp sgt i32 %215, 0, !dbg !292
  %217 = sext i32 %215 to i64, !dbg !293
  %218 = call i1 @iCmpInstHandler(i64 %217, i64 0, i1 %216, i32 38, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94910518612736, i32 115, i32 17), !dbg !293
  br i1 %218, label %219, label %234, !dbg !293

; <label>:219:                                    ; preds = %214
  %220 = load i32, i32* %27, align 4, !dbg !294
  %221 = sitofp i32 %220 to double, !dbg !294
  %222 = fmul double 2.000000e+00, %221, !dbg !296
  call void @fMulHandler(double 2.000000e+00, double %221, double %222, i64 0, i64 94910518614168, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94910518615936, i32 116, i32 19), !dbg !297
  %223 = load double, double* %6, align 8, !dbg !297
  %224 = fdiv double %222, %223, !dbg !298
  call void @fDivHandler(double %222, double %223, double %224, i64 94910518615936, i64 94910518616296, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94910518616704, i32 116, i32 21), !dbg !299
  %225 = load double, double* %25, align 8, !dbg !299
  %226 = fmul double %224, %225, !dbg !300
  call void @fMulHandler(double %224, double %225, double %226, i64 94910518616704, i64 94910518617096, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94910518617504, i32 116, i32 24), !dbg !301
  %227 = load double, double* %24, align 8, !dbg !301
  %228 = fsub double %226, %227, !dbg !302
  call void @fSubHandler(double %226, double %227, double %228, i64 94910518617504, i64 94910518617896, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94910518618304, i32 116, i32 29), !dbg !303
  store double %228, double* %26, align 8, !dbg !303
  %229 = load double, double* %25, align 8, !dbg !304
  store double %229, double* %24, align 8, !dbg !305
  %230 = load double, double* %26, align 8, !dbg !306
  store double %230, double* %25, align 8, !dbg !307
  br label %231, !dbg !308

; <label>:231:                                    ; preds = %219
  %232 = load i32, i32* %27, align 4, !dbg !309
  %233 = add nsw i32 %232, -1, !dbg !309
  store i32 %233, i32* %27, align 4, !dbg !309
  br label %214, !dbg !311, !llvm.loop !312

; <label>:234:                                    ; preds = %214
  %235 = load double, double* %24, align 8, !dbg !314
  %236 = call double @fabs(double %235) #1, !dbg !316
  %237 = load double, double* %25, align 8, !dbg !317
  %238 = call double @fabs(double %237) #1, !dbg !318
  %239 = fcmp ogt double %236, %238, !dbg !320
  %240 = call i1 @fCmpInstHandler(double %236, double %238, i1 %239, i32 2, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94910518629968, i32 121, i32 21), !dbg !321
  br i1 %240, label %241, label %254, !dbg !321

; <label>:241:                                    ; preds = %234
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %28, metadata !322, metadata !60), !dbg !324
  %242 = load double, double* %6, align 8, !dbg !325
  %243 = call i32 @gsl_sf_bessel_J1_e(double %242, %struct.gsl_sf_result_struct* %28), !dbg !326
  store i32 %243, i32* %22, align 4, !dbg !327
  %244 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %28, i32 0, i32 0, !dbg !328
  %245 = load double, double* %244, align 8, !dbg !328
  %246 = load double, double* %24, align 8, !dbg !329
  %247 = fdiv double %245, %246, !dbg !330
  call void @fDivHandler(double %245, double %246, double %247, i64 94910518635944, i64 94910518637592, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94910518638000, i32 124, i32 21), !dbg !331
  %248 = fmul double %247, 0x2000000000000000, !dbg !331
  call void @fMulHandler(double %247, double 0x2000000000000000, double %248, i64 94910518638000, i64 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94910518638416, i32 124, i32 27), !dbg !332
  store double %248, double* %18, align 8, !dbg !332
  %249 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %28, i32 0, i32 1, !dbg !333
  %250 = load double, double* %249, align 8, !dbg !333
  %251 = load double, double* %24, align 8, !dbg !334
  %252 = fdiv double %250, %251, !dbg !335
  call void @fDivHandler(double %250, double %251, double %252, i64 94910518639672, i64 94910518641320, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94910518641728, i32 125, i32 21), !dbg !336
  %253 = fmul double %252, 0x2000000000000000, !dbg !336
  call void @fMulHandler(double %252, double 0x2000000000000000, double %253, i64 94910518641728, i64 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94910518642144, i32 125, i32 27), !dbg !337
  store double %253, double* %19, align 8, !dbg !337
  br label %267, !dbg !338

; <label>:254:                                    ; preds = %234
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %29, metadata !339, metadata !60), !dbg !341
  %255 = load double, double* %6, align 8, !dbg !342
  %256 = call i32 @gsl_sf_bessel_J0_e(double %255, %struct.gsl_sf_result_struct* %29), !dbg !343
  store i32 %256, i32* %22, align 4, !dbg !344
  %257 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %29, i32 0, i32 0, !dbg !345
  %258 = load double, double* %257, align 8, !dbg !345
  %259 = load double, double* %25, align 8, !dbg !346
  %260 = fdiv double %258, %259, !dbg !347
  call void @fDivHandler(double %258, double %259, double %260, i64 94910518646280, i64 94910518647928, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94910518648336, i32 130, i32 21), !dbg !348
  %261 = fmul double %260, 0x2000000000000000, !dbg !348
  call void @fMulHandler(double %260, double 0x2000000000000000, double %261, i64 94910518648336, i64 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94910518648752, i32 130, i32 25), !dbg !349
  store double %261, double* %18, align 8, !dbg !349
  %262 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %29, i32 0, i32 1, !dbg !350
  %263 = load double, double* %262, align 8, !dbg !350
  %264 = load double, double* %25, align 8, !dbg !351
  %265 = fdiv double %263, %264, !dbg !352
  call void @fDivHandler(double %263, double %264, double %265, i64 94910518650008, i64 94910518651656, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94910518652064, i32 131, i32 21), !dbg !353
  %266 = fmul double %265, 0x2000000000000000, !dbg !353
  call void @fMulHandler(double %265, double 0x2000000000000000, double %266, i64 94910518652064, i64 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94910518652480, i32 131, i32 25), !dbg !354
  store double %266, double* %19, align 8, !dbg !354
  br label %267

; <label>:267:                                    ; preds = %254, %241
  %268 = load i32, i32* %8, align 4, !dbg !355
  %269 = sitofp i32 %268 to double, !dbg !355
  %270 = load double, double* %18, align 8, !dbg !356
  %271 = fmul double %269, %270, !dbg !357
  call void @fMulHandler(double %269, double %270, double %271, i64 94910518653704, i64 94910518655352, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94910518655760, i32 134, i32 26), !dbg !358
  %272 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !358
  %273 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %272, i32 0, i32 0, !dbg !359
  store double %271, double* %273, align 8, !dbg !360
  %274 = load double, double* %19, align 8, !dbg !361
  %275 = call double @fabs(double %274) #1, !dbg !362
  %276 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !363
  %277 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %276, i32 0, i32 1, !dbg !364
  store double %275, double* %277, align 8, !dbg !365
  %278 = load i32, i32* %23, align 4, !dbg !366
  %279 = icmp ne i32 %278, 0, !dbg !366
  %280 = sext i32 %278 to i64, !dbg !366
  %281 = call i1 @iCmpInstHandler(i64 %280, i64 0, i1 %279, i32 33, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94910518539504, i32 136, i32 14), !dbg !366
  br i1 %281, label %282, label %284, !dbg !366

; <label>:282:                                    ; preds = %267
  %283 = load i32, i32* %23, align 4, !dbg !367
  br label %294, !dbg !367

; <label>:284:                                    ; preds = %267
  %285 = load i32, i32* %22, align 4, !dbg !369
  %286 = icmp ne i32 %285, 0, !dbg !369
  %287 = sext i32 %285 to i64, !dbg !369
  %288 = call i1 @iCmpInstHandler(i64 %287, i64 0, i1 %286, i32 33, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94910518666576, i32 136, i32 14), !dbg !369
  br i1 %288, label %289, label %291, !dbg !369

; <label>:289:                                    ; preds = %284
  %290 = load i32, i32* %22, align 4, !dbg !371
  br label %292, !dbg !371

; <label>:291:                                    ; preds = %284
  br label %292, !dbg !373

; <label>:292:                                    ; preds = %291, %289
  %293 = phi i32 [ %290, %289 ], [ 0, %291 ], !dbg !375
  br label %294, !dbg !375

; <label>:294:                                    ; preds = %292, %282
  %295 = phi i32 [ %283, %282 ], [ %293, %292 ], !dbg !377
  store i32 %295, i32* %4, align 4, !dbg !379
  br label %296, !dbg !379

; <label>:296:                                    ; preds = %294, %193, %176, %158, %122, %106, %87, %67
  %297 = load i32, i32* %4, align 4, !dbg !380
  ret i32 %297, !dbg !380
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @gsl_sf_bessel_J0_e(double, %struct.gsl_sf_result_struct*) #2

declare i32 @gsl_sf_bessel_J1_e(double, %struct.gsl_sf_result_struct*) #2

declare i32 @gsl_sf_bessel_IJ_taylor_e(double, double, i32, i32, double, %struct.gsl_sf_result_struct*) #2

; Function Attrs: nounwind readnone
declare double @fabs(double) #3

declare i32 @gsl_sf_bessel_Jnu_asympx_e(double, double, %struct.gsl_sf_result_struct*) #2

declare i32 @gsl_sf_bessel_Jnu_asymp_Olver_e(double, double, %struct.gsl_sf_result_struct*) #2

declare i32 @gsl_sf_bessel_J_CF1(double, double, double*, double*) #2

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_bessel_Jn_array(i32, i32, double, double*) #0 !dbg !381 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca double*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.gsl_sf_result_struct, align 8
  %13 = alloca %struct.gsl_sf_result_struct, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !385, metadata !60), !dbg !386
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !387, metadata !60), !dbg !388
  store double %2, double* %8, align 8
  call void @llvm.dbg.declare(metadata double* %8, metadata !389, metadata !60), !dbg !390
  store double* %3, double** %9, align 8
  call void @llvm.dbg.declare(metadata double** %9, metadata !391, metadata !60), !dbg !392
  %21 = load i32, i32* %6, align 4, !dbg !393
  %22 = icmp slt i32 %21, 0, !dbg !395
  %23 = sext i32 %21 to i64, !dbg !396
  %24 = call i1 @iCmpInstHandler(i64 %23, i64 0, i1 %22, i32 40, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94910518684016, i32 147, i32 11), !dbg !396
  br i1 %24, label %32, label %25, !dbg !396

; <label>:25:                                     ; preds = %4
  %26 = load i32, i32* %7, align 4, !dbg !397
  %27 = load i32, i32* %6, align 4, !dbg !399
  %28 = icmp slt i32 %26, %27, !dbg !400
  %29 = sext i32 %26 to i64, !dbg !401
  %30 = sext i32 %27 to i64, !dbg !401
  %31 = call i1 @iCmpInstHandler(i64 %29, i64 %30, i1 %28, i32 40, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94910518685664, i32 147, i32 23), !dbg !401
  br i1 %31, label %32, label %54, !dbg !401

; <label>:32:                                     ; preds = %25, %4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !402, metadata !60), !dbg !404
  %33 = load i32, i32* %7, align 4, !dbg !405
  store i32 %33, i32* %10, align 4, !dbg !407
  br label %34, !dbg !408

; <label>:34:                                     ; preds = %48, %32
  %35 = load i32, i32* %10, align 4, !dbg !409
  %36 = load i32, i32* %6, align 4, !dbg !412
  %37 = icmp sge i32 %35, %36, !dbg !413
  %38 = sext i32 %35 to i64, !dbg !414
  %39 = sext i32 %36 to i64, !dbg !414
  %40 = call i1 @iCmpInstHandler(i64 %38, i64 %39, i1 %37, i32 39, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94910518689328, i32 149, i32 18), !dbg !414
  br i1 %40, label %41, label %51, !dbg !414

; <label>:41:                                     ; preds = %34
  %42 = load i32, i32* %10, align 4, !dbg !415
  %43 = load i32, i32* %6, align 4, !dbg !417
  %44 = sub nsw i32 %42, %43, !dbg !418
  %45 = sext i32 %44 to i64, !dbg !419
  %46 = load double*, double** %9, align 8, !dbg !419
  %47 = getelementptr inbounds double, double* %46, i64 %45, !dbg !419
  store double 0.000000e+00, double* %47, align 8, !dbg !420
  br label %48, !dbg !421

; <label>:48:                                     ; preds = %41
  %49 = load i32, i32* %10, align 4, !dbg !422
  %50 = add nsw i32 %49, -1, !dbg !422
  store i32 %50, i32* %10, align 4, !dbg !422
  br label %34, !dbg !424, !llvm.loop !425

; <label>:51:                                     ; preds = %34
  br label %52, !dbg !427, !llvm.loop !428

; <label>:52:                                     ; preds = %51
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 152, i32 1), !dbg !429
  store i32 1, i32* %5, align 4, !dbg !429
  br label %175, !dbg !429
                                                  ; No predecessors!
  br label %175, !dbg !432

; <label>:54:                                     ; preds = %25
  %55 = load double, double* %8, align 8, !dbg !433
  %56 = fcmp oeq double %55, 0.000000e+00, !dbg !435
  %57 = call i1 @fCmpInstHandler(double %55, double 0.000000e+00, i1 %56, i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94910518702496, i32 154, i32 13), !dbg !436
  br i1 %57, label %58, label %86, !dbg !436

; <label>:58:                                     ; preds = %54
  call void @llvm.dbg.declare(metadata i32* %11, metadata !437, metadata !60), !dbg !439
  %59 = load i32, i32* %7, align 4, !dbg !440
  store i32 %59, i32* %11, align 4, !dbg !442
  br label %60, !dbg !443

; <label>:60:                                     ; preds = %74, %58
  %61 = load i32, i32* %11, align 4, !dbg !444
  %62 = load i32, i32* %6, align 4, !dbg !447
  %63 = icmp sge i32 %61, %62, !dbg !448
  %64 = sext i32 %61 to i64, !dbg !449
  %65 = sext i32 %62 to i64, !dbg !449
  %66 = call i1 @iCmpInstHandler(i64 %64, i64 %65, i1 %63, i32 39, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94910518706784, i32 156, i32 18), !dbg !449
  br i1 %66, label %67, label %77, !dbg !449

; <label>:67:                                     ; preds = %60
  %68 = load i32, i32* %11, align 4, !dbg !450
  %69 = load i32, i32* %6, align 4, !dbg !452
  %70 = sub nsw i32 %68, %69, !dbg !453
  %71 = sext i32 %70 to i64, !dbg !454
  %72 = load double*, double** %9, align 8, !dbg !454
  %73 = getelementptr inbounds double, double* %72, i64 %71, !dbg !454
  store double 0.000000e+00, double* %73, align 8, !dbg !455
  br label %74, !dbg !456

; <label>:74:                                     ; preds = %67
  %75 = load i32, i32* %11, align 4, !dbg !457
  %76 = add nsw i32 %75, -1, !dbg !457
  store i32 %76, i32* %11, align 4, !dbg !457
  br label %60, !dbg !459, !llvm.loop !460

; <label>:77:                                     ; preds = %60
  %78 = load i32, i32* %6, align 4, !dbg !462
  %79 = icmp eq i32 %78, 0, !dbg !464
  %80 = sext i32 %78 to i64, !dbg !465
  %81 = call i1 @iCmpInstHandler(i64 %80, i64 0, i1 %79, i32 32, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94910518715280, i32 159, i32 13), !dbg !465
  br i1 %81, label %82, label %85, !dbg !465

; <label>:82:                                     ; preds = %77
  %83 = load double*, double** %9, align 8, !dbg !466
  %84 = getelementptr inbounds double, double* %83, i64 0, !dbg !466
  store double 1.000000e+00, double* %84, align 8, !dbg !468
  br label %85, !dbg !466

; <label>:85:                                     ; preds = %82, %77
  store i32 0, i32* %5, align 4, !dbg !469
  br label %175, !dbg !469

; <label>:86:                                     ; preds = %54
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %12, metadata !470, metadata !60), !dbg !472
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %13, metadata !473, metadata !60), !dbg !474
  call void @llvm.dbg.declare(metadata i32* %14, metadata !475, metadata !60), !dbg !476
  %87 = load i32, i32* %7, align 4, !dbg !477
  %88 = add nsw i32 %87, 1, !dbg !478
  %89 = load double, double* %8, align 8, !dbg !479
  %90 = call i32 @gsl_sf_bessel_Jn_e(i32 %88, double %89, %struct.gsl_sf_result_struct* %12), !dbg !480
  store i32 %90, i32* %14, align 4, !dbg !476
  call void @llvm.dbg.declare(metadata i32* %15, metadata !481, metadata !60), !dbg !482
  %91 = load i32, i32* %7, align 4, !dbg !483
  %92 = load double, double* %8, align 8, !dbg !484
  %93 = call i32 @gsl_sf_bessel_Jn_e(i32 %91, double %92, %struct.gsl_sf_result_struct* %13), !dbg !485
  store i32 %93, i32* %15, align 4, !dbg !482
  call void @llvm.dbg.declare(metadata i32* %16, metadata !486, metadata !60), !dbg !487
  %94 = load i32, i32* %14, align 4, !dbg !488
  %95 = icmp ne i32 %94, 0, !dbg !488
  %96 = sext i32 %94 to i64, !dbg !488
  %97 = call i1 @iCmpInstHandler(i64 %96, i64 0, i1 %95, i32 33, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94910518733200, i32 167, i32 16), !dbg !488
  br i1 %97, label %98, label %100, !dbg !488

; <label>:98:                                     ; preds = %86
  %99 = load i32, i32* %14, align 4, !dbg !489
  br label %110, !dbg !489

; <label>:100:                                    ; preds = %86
  %101 = load i32, i32* %15, align 4, !dbg !491
  %102 = icmp ne i32 %101, 0, !dbg !491
  %103 = sext i32 %101 to i64, !dbg !491
  %104 = call i1 @iCmpInstHandler(i64 %103, i64 0, i1 %102, i32 33, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94910518737744, i32 167, i32 16), !dbg !491
  br i1 %104, label %105, label %107, !dbg !491

; <label>:105:                                    ; preds = %100
  %106 = load i32, i32* %15, align 4, !dbg !493
  br label %108, !dbg !493

; <label>:107:                                    ; preds = %100
  br label %108, !dbg !495

; <label>:108:                                    ; preds = %107, %105
  %109 = phi i32 [ %106, %105 ], [ 0, %107 ], !dbg !497
  br label %110, !dbg !497

; <label>:110:                                    ; preds = %108, %98
  %111 = phi i32 [ %99, %98 ], [ %109, %108 ], !dbg !499
  store i32 %111, i32* %16, align 4, !dbg !501
  call void @llvm.dbg.declare(metadata double* %17, metadata !502, metadata !60), !dbg !503
  %112 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %12, i32 0, i32 0, !dbg !504
  %113 = load double, double* %112, align 8, !dbg !504
  store double %113, double* %17, align 8, !dbg !503
  call void @llvm.dbg.declare(metadata double* %18, metadata !505, metadata !60), !dbg !506
  %114 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %13, i32 0, i32 0, !dbg !507
  %115 = load double, double* %114, align 8, !dbg !507
  store double %115, double* %18, align 8, !dbg !506
  call void @llvm.dbg.declare(metadata double* %19, metadata !508, metadata !60), !dbg !509
  call void @llvm.dbg.declare(metadata i32* %20, metadata !510, metadata !60), !dbg !511
  %116 = load i32, i32* %16, align 4, !dbg !512
  %117 = icmp eq i32 %116, 0, !dbg !514
  %118 = sext i32 %116 to i64, !dbg !515
  %119 = call i1 @iCmpInstHandler(i64 %118, i64 0, i1 %117, i32 32, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94910518757440, i32 174, i32 13), !dbg !515
  br i1 %119, label %120, label %153, !dbg !515

; <label>:120:                                    ; preds = %110
  %121 = load i32, i32* %7, align 4, !dbg !516
  store i32 %121, i32* %20, align 4, !dbg !519
  br label %122, !dbg !520

; <label>:122:                                    ; preds = %149, %120
  %123 = load i32, i32* %20, align 4, !dbg !521
  %124 = load i32, i32* %6, align 4, !dbg !524
  %125 = icmp sge i32 %123, %124, !dbg !525
  %126 = sext i32 %123 to i64, !dbg !526
  %127 = sext i32 %124 to i64, !dbg !526
  %128 = call i1 @iCmpInstHandler(i64 %126, i64 %127, i1 %125, i32 39, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94910518760544, i32 175, i32 20), !dbg !526
  br i1 %128, label %129, label %152, !dbg !526

; <label>:129:                                    ; preds = %122
  %130 = load double, double* %18, align 8, !dbg !527
  %131 = load i32, i32* %20, align 4, !dbg !529
  %132 = load i32, i32* %6, align 4, !dbg !530
  %133 = sub nsw i32 %131, %132, !dbg !531
  %134 = sext i32 %133 to i64, !dbg !532
  %135 = load double*, double** %9, align 8, !dbg !532
  %136 = getelementptr inbounds double, double* %135, i64 %134, !dbg !532
  store double %130, double* %136, align 8, !dbg !533
  %137 = load double, double* %17, align 8, !dbg !534
  %138 = fsub double -0.000000e+00, %137, !dbg !535
  call void @fSubHandler(double -0.000000e+00, double %137, double %138, i64 0, i64 94910518765752, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94910518766160, i32 177, i32 16), !dbg !536
  %139 = load i32, i32* %20, align 4, !dbg !536
  %140 = sitofp i32 %139 to double, !dbg !536
  %141 = fmul double 2.000000e+00, %140, !dbg !537
  call void @fMulHandler(double 2.000000e+00, double %140, double %141, i64 0, i64 94910518766936, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94910518768640, i32 177, i32 27), !dbg !538
  %142 = load double, double* %8, align 8, !dbg !538
  %143 = fdiv double %141, %142, !dbg !539
  call void @fDivHandler(double %141, double %142, double %143, i64 94910518768640, i64 94910518769000, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94910518769408, i32 177, i32 29), !dbg !540
  %144 = load double, double* %18, align 8, !dbg !540
  %145 = fmul double %143, %144, !dbg !541
  call void @fMulHandler(double %143, double %144, double %145, i64 94910518769408, i64 94910518769800, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94910518770208, i32 177, i32 32), !dbg !542
  %146 = fadd double %138, %145, !dbg !542
  call void @fAddHandler(double %138, double %145, double %146, i64 94910518766160, i64 94910518770208, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94910518770624, i32 177, i32 22), !dbg !543
  store double %146, double* %19, align 8, !dbg !543
  %147 = load double, double* %18, align 8, !dbg !544
  store double %147, double* %17, align 8, !dbg !545
  %148 = load double, double* %19, align 8, !dbg !546
  store double %148, double* %18, align 8, !dbg !547
  br label %149, !dbg !548

; <label>:149:                                    ; preds = %129
  %150 = load i32, i32* %20, align 4, !dbg !549
  %151 = add nsw i32 %150, -1, !dbg !549
  store i32 %151, i32* %20, align 4, !dbg !549
  br label %122, !dbg !551, !llvm.loop !552

; <label>:152:                                    ; preds = %122
  br label %173, !dbg !554

; <label>:153:                                    ; preds = %110
  %154 = load i32, i32* %7, align 4, !dbg !555
  store i32 %154, i32* %20, align 4, !dbg !558
  br label %155, !dbg !559

; <label>:155:                                    ; preds = %169, %153
  %156 = load i32, i32* %20, align 4, !dbg !560
  %157 = load i32, i32* %6, align 4, !dbg !563
  %158 = icmp sge i32 %156, %157, !dbg !564
  %159 = sext i32 %156 to i64, !dbg !565
  %160 = sext i32 %157 to i64, !dbg !565
  %161 = call i1 @iCmpInstHandler(i64 %159, i64 %160, i1 %158, i32 39, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94910518780880, i32 183, i32 20), !dbg !565
  br i1 %161, label %162, label %172, !dbg !565

; <label>:162:                                    ; preds = %155
  %163 = load i32, i32* %20, align 4, !dbg !566
  %164 = load i32, i32* %6, align 4, !dbg !568
  %165 = sub nsw i32 %163, %164, !dbg !569
  %166 = sext i32 %165 to i64, !dbg !570
  %167 = load double*, double** %9, align 8, !dbg !570
  %168 = getelementptr inbounds double, double* %167, i64 %166, !dbg !570
  store double 0.000000e+00, double* %168, align 8, !dbg !571
  br label %169, !dbg !572

; <label>:169:                                    ; preds = %162
  %170 = load i32, i32* %20, align 4, !dbg !573
  %171 = add nsw i32 %170, -1, !dbg !573
  store i32 %171, i32* %20, align 4, !dbg !573
  br label %155, !dbg !575, !llvm.loop !576

; <label>:172:                                    ; preds = %155
  br label %173

; <label>:173:                                    ; preds = %172, %152
  %174 = load i32, i32* %16, align 4, !dbg !578
  store i32 %174, i32* %5, align 4, !dbg !579
  br label %175, !dbg !579

; <label>:175:                                    ; preds = %173, %85, %53, %52
  %176 = load i32, i32* %5, align 4, !dbg !580
  ret i32 %176, !dbg !580
}

declare void @gsl_error(i8*, i8*, i32, i32) #2

; Function Attrs: nounwind uwtable
define double @gsl_sf_bessel_Jn(i32, double) #0 !dbg !581 {
  %3 = alloca double, align 8
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca %struct.gsl_sf_result_struct, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !586, metadata !60), !dbg !587
  store double %1, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !588, metadata !60), !dbg !589
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %6, metadata !590, metadata !60), !dbg !591
  call void @llvm.dbg.declare(metadata i32* %7, metadata !592, metadata !60), !dbg !591
  %8 = load i32, i32* %4, align 4, !dbg !591
  %9 = load double, double* %5, align 8, !dbg !591
  %10 = call i32 @gsl_sf_bessel_Jn_e(i32 %8, double %9, %struct.gsl_sf_result_struct* %6), !dbg !591
  store i32 %10, i32* %7, align 4, !dbg !591
  %11 = load i32, i32* %7, align 4, !dbg !593
  %12 = icmp ne i32 %11, 0, !dbg !593
  %13 = sext i32 %11 to i64, !dbg !591
  %14 = call i1 @iCmpInstHandler(i64 %13, i64 0, i1 %12, i32 33, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @5, i32 0, i32 0), i64 94910518800112, i32 198, i32 3), !dbg !591
  br i1 %14, label %15, label %21, !dbg !591

; <label>:15:                                     ; preds = %2
  br label %16, !dbg !595, !llvm.loop !598

; <label>:16:                                     ; preds = %15
  %17 = load i32, i32* %7, align 4, !dbg !600
  call void @gsl_error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 198, i32 %17), !dbg !600
  %18 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !600
  %19 = load double, double* %18, align 8, !dbg !600
  store double %19, double* %3, align 8, !dbg !600
  br label %24, !dbg !600
                                                  ; No predecessors!
  br label %21, !dbg !603

; <label>:21:                                     ; preds = %20, %2
  %22 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !605
  %23 = load double, double* %22, align 8, !dbg !605
  store double %23, double* %3, align 8, !dbg !605
  br label %24, !dbg !605

; <label>:24:                                     ; preds = %21, %16
  %25 = load double, double* %3, align 8, !dbg !607
  ret double %25, !dbg !607
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
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!43, !44, !45}
!llvm.ident = !{!46}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !41)
!1 = !DIFile(filename: "bessel_Jn.c", directory: "/fpcc/gsl-2.5/specfunc")
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
!47 = distinct !DISubprogram(name: "gsl_sf_bessel_Jn_e", scope: !1, file: !1, line: 36, type: !48, isLocal: false, isDefinition: true, scopeLine: 37, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!48 = !DISubroutineType(types: !49)
!49 = !{!50, !50, !42, !51}
!50 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64, align: 64)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !53, line: 41, baseType: !54)
!53 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/fpcc/gsl-2.5/specfunc")
!54 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !53, line: 37, size: 128, align: 64, elements: !55)
!55 = !{!56, !57}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !54, file: !53, line: 38, baseType: !42, size: 64, align: 64)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !54, file: !53, line: 39, baseType: !42, size: 64, align: 64, offset: 64)
!58 = !{}
!59 = !DILocalVariable(name: "n", arg: 1, scope: !47, file: !1, line: 36, type: !50)
!60 = !DIExpression()
!61 = !DILocation(line: 36, column: 28, scope: !47)
!62 = !DILocalVariable(name: "x", arg: 2, scope: !47, file: !1, line: 36, type: !42)
!63 = !DILocation(line: 36, column: 38, scope: !47)
!64 = !DILocalVariable(name: "result", arg: 3, scope: !47, file: !1, line: 36, type: !51)
!65 = !DILocation(line: 36, column: 57, scope: !47)
!66 = !DILocalVariable(name: "sign", scope: !47, file: !1, line: 38, type: !50)
!67 = !DILocation(line: 38, column: 7, scope: !47)
!68 = !DILocation(line: 40, column: 6, scope: !69)
!69 = distinct !DILexicalBlock(scope: !47, file: !1, line: 40, column: 6)
!70 = !DILocation(line: 40, column: 8, scope: !69)
!71 = !DILocation(line: 40, column: 6, scope: !47)
!72 = !DILocation(line: 42, column: 10, scope: !73)
!73 = distinct !DILexicalBlock(scope: !69, file: !1, line: 40, column: 13)
!74 = !DILocation(line: 42, column: 9, scope: !73)
!75 = !DILocation(line: 42, column: 7, scope: !73)
!76 = !DILocation(line: 43, column: 8, scope: !77)
!77 = distinct !DILexicalBlock(scope: !73, file: !1, line: 43, column: 8)
!78 = !DILocation(line: 43, column: 8, scope: !73)
!79 = !DILocation(line: 43, column: 31, scope: !80)
!80 = !DILexicalBlockFile(scope: !77, file: !1, discriminator: 1)
!81 = !DILocation(line: 43, column: 30, scope: !80)
!82 = !DILocation(line: 43, column: 28, scope: !80)
!83 = !DILocation(line: 43, column: 23, scope: !80)
!84 = !DILocation(line: 44, column: 3, scope: !73)
!85 = !DILocation(line: 46, column: 6, scope: !86)
!86 = distinct !DILexicalBlock(scope: !47, file: !1, line: 46, column: 6)
!87 = !DILocation(line: 46, column: 8, scope: !86)
!88 = !DILocation(line: 46, column: 6, scope: !47)
!89 = !DILocation(line: 48, column: 10, scope: !90)
!90 = distinct !DILexicalBlock(scope: !86, file: !1, line: 46, column: 15)
!91 = !DILocation(line: 48, column: 9, scope: !90)
!92 = !DILocation(line: 48, column: 7, scope: !90)
!93 = !DILocation(line: 49, column: 8, scope: !94)
!94 = distinct !DILexicalBlock(scope: !90, file: !1, line: 49, column: 8)
!95 = !DILocation(line: 49, column: 8, scope: !90)
!96 = !DILocation(line: 49, column: 31, scope: !97)
!97 = !DILexicalBlockFile(scope: !94, file: !1, discriminator: 1)
!98 = !DILocation(line: 49, column: 30, scope: !97)
!99 = !DILocation(line: 49, column: 28, scope: !97)
!100 = !DILocation(line: 49, column: 23, scope: !97)
!101 = !DILocation(line: 50, column: 3, scope: !90)
!102 = !DILocation(line: 54, column: 6, scope: !103)
!103 = distinct !DILexicalBlock(scope: !47, file: !1, line: 54, column: 6)
!104 = !DILocation(line: 54, column: 8, scope: !103)
!105 = !DILocation(line: 54, column: 6, scope: !47)
!106 = !DILocalVariable(name: "b0", scope: !107, file: !1, line: 55, type: !52)
!107 = distinct !DILexicalBlock(scope: !103, file: !1, line: 54, column: 14)
!108 = !DILocation(line: 55, column: 19, scope: !107)
!109 = !DILocalVariable(name: "stat_J0", scope: !107, file: !1, line: 56, type: !50)
!110 = !DILocation(line: 56, column: 9, scope: !107)
!111 = !DILocation(line: 56, column: 38, scope: !107)
!112 = !DILocation(line: 56, column: 19, scope: !107)
!113 = !DILocation(line: 57, column: 19, scope: !107)
!114 = !DILocation(line: 57, column: 29, scope: !107)
!115 = !DILocation(line: 57, column: 24, scope: !107)
!116 = !DILocation(line: 57, column: 5, scope: !107)
!117 = !DILocation(line: 57, column: 13, scope: !107)
!118 = !DILocation(line: 57, column: 17, scope: !107)
!119 = !DILocation(line: 58, column: 22, scope: !107)
!120 = !DILocation(line: 58, column: 5, scope: !107)
!121 = !DILocation(line: 58, column: 13, scope: !107)
!122 = !DILocation(line: 58, column: 17, scope: !107)
!123 = !DILocation(line: 59, column: 12, scope: !107)
!124 = !DILocation(line: 59, column: 5, scope: !107)
!125 = !DILocation(line: 61, column: 11, scope: !126)
!126 = distinct !DILexicalBlock(scope: !103, file: !1, line: 61, column: 11)
!127 = !DILocation(line: 61, column: 13, scope: !126)
!128 = !DILocation(line: 61, column: 11, scope: !103)
!129 = !DILocalVariable(name: "b1", scope: !130, file: !1, line: 62, type: !52)
!130 = distinct !DILexicalBlock(scope: !126, file: !1, line: 61, column: 19)
!131 = !DILocation(line: 62, column: 19, scope: !130)
!132 = !DILocalVariable(name: "stat_J1", scope: !130, file: !1, line: 63, type: !50)
!133 = !DILocation(line: 63, column: 9, scope: !130)
!134 = !DILocation(line: 63, column: 38, scope: !130)
!135 = !DILocation(line: 63, column: 19, scope: !130)
!136 = !DILocation(line: 64, column: 19, scope: !130)
!137 = !DILocation(line: 64, column: 29, scope: !130)
!138 = !DILocation(line: 64, column: 24, scope: !130)
!139 = !DILocation(line: 64, column: 5, scope: !130)
!140 = !DILocation(line: 64, column: 13, scope: !130)
!141 = !DILocation(line: 64, column: 17, scope: !130)
!142 = !DILocation(line: 65, column: 22, scope: !130)
!143 = !DILocation(line: 65, column: 5, scope: !130)
!144 = !DILocation(line: 65, column: 13, scope: !130)
!145 = !DILocation(line: 65, column: 17, scope: !130)
!146 = !DILocation(line: 66, column: 12, scope: !130)
!147 = !DILocation(line: 66, column: 5, scope: !130)
!148 = !DILocation(line: 69, column: 8, scope: !149)
!149 = distinct !DILexicalBlock(scope: !150, file: !1, line: 69, column: 8)
!150 = distinct !DILexicalBlock(scope: !126, file: !1, line: 68, column: 8)
!151 = !DILocation(line: 69, column: 10, scope: !149)
!152 = !DILocation(line: 69, column: 8, scope: !150)
!153 = !DILocation(line: 70, column: 7, scope: !154)
!154 = distinct !DILexicalBlock(scope: !149, file: !1, line: 69, column: 18)
!155 = !DILocation(line: 70, column: 15, scope: !154)
!156 = !DILocation(line: 70, column: 19, scope: !154)
!157 = !DILocation(line: 71, column: 7, scope: !154)
!158 = !DILocation(line: 71, column: 15, scope: !154)
!159 = !DILocation(line: 71, column: 19, scope: !154)
!160 = !DILocation(line: 72, column: 7, scope: !154)
!161 = !DILocation(line: 74, column: 13, scope: !162)
!162 = distinct !DILexicalBlock(scope: !149, file: !1, line: 74, column: 13)
!163 = !DILocation(line: 74, column: 15, scope: !162)
!164 = !DILocation(line: 74, column: 14, scope: !162)
!165 = !DILocation(line: 74, column: 25, scope: !162)
!166 = !DILocation(line: 74, column: 26, scope: !162)
!167 = !DILocation(line: 74, column: 23, scope: !162)
!168 = !DILocation(line: 74, column: 31, scope: !162)
!169 = !DILocation(line: 74, column: 17, scope: !162)
!170 = !DILocation(line: 74, column: 13, scope: !149)
!171 = !DILocalVariable(name: "b", scope: !172, file: !1, line: 75, type: !52)
!172 = distinct !DILexicalBlock(scope: !162, file: !1, line: 74, column: 55)
!173 = !DILocation(line: 75, column: 21, scope: !172)
!174 = !DILocalVariable(name: "status", scope: !172, file: !1, line: 76, type: !50)
!175 = !DILocation(line: 76, column: 11, scope: !172)
!176 = !DILocation(line: 76, column: 54, scope: !172)
!177 = !DILocation(line: 76, column: 46, scope: !172)
!178 = !DILocation(line: 76, column: 57, scope: !172)
!179 = !DILocation(line: 76, column: 20, scope: !172)
!180 = !DILocation(line: 77, column: 22, scope: !172)
!181 = !DILocation(line: 77, column: 31, scope: !172)
!182 = !DILocation(line: 77, column: 27, scope: !172)
!183 = !DILocation(line: 77, column: 7, scope: !172)
!184 = !DILocation(line: 77, column: 15, scope: !172)
!185 = !DILocation(line: 77, column: 20, scope: !172)
!186 = !DILocation(line: 78, column: 24, scope: !172)
!187 = !DILocation(line: 78, column: 7, scope: !172)
!188 = !DILocation(line: 78, column: 15, scope: !172)
!189 = !DILocation(line: 78, column: 20, scope: !172)
!190 = !DILocation(line: 79, column: 45, scope: !172)
!191 = !DILocation(line: 79, column: 53, scope: !172)
!192 = !DILocation(line: 79, column: 40, scope: !172)
!193 = !DILocation(line: 79, column: 38, scope: !172)
!194 = !DILocation(line: 79, column: 7, scope: !172)
!195 = !DILocation(line: 79, column: 15, scope: !172)
!196 = !DILocation(line: 79, column: 19, scope: !172)
!197 = !DILocation(line: 80, column: 14, scope: !172)
!198 = !DILocation(line: 80, column: 7, scope: !172)
!199 = !DILocation(line: 82, column: 37, scope: !200)
!200 = distinct !DILexicalBlock(scope: !162, file: !1, line: 82, column: 13)
!201 = !DILocation(line: 82, column: 35, scope: !200)
!202 = !DILocation(line: 82, column: 42, scope: !200)
!203 = !DILocation(line: 82, column: 44, scope: !200)
!204 = !DILocation(line: 82, column: 43, scope: !200)
!205 = !DILocation(line: 82, column: 45, scope: !200)
!206 = !DILocation(line: 82, column: 39, scope: !200)
!207 = !DILocation(line: 82, column: 13, scope: !162)
!208 = !DILocalVariable(name: "status", scope: !209, file: !1, line: 83, type: !50)
!209 = distinct !DILexicalBlock(scope: !200, file: !1, line: 82, column: 52)
!210 = !DILocation(line: 83, column: 11, scope: !209)
!211 = !DILocation(line: 83, column: 55, scope: !209)
!212 = !DILocation(line: 83, column: 47, scope: !209)
!213 = !DILocation(line: 83, column: 58, scope: !209)
!214 = !DILocation(line: 83, column: 61, scope: !209)
!215 = !DILocation(line: 83, column: 20, scope: !209)
!216 = !DILocation(line: 84, column: 22, scope: !209)
!217 = !DILocation(line: 84, column: 7, scope: !209)
!218 = !DILocation(line: 84, column: 15, scope: !209)
!219 = !DILocation(line: 84, column: 19, scope: !209)
!220 = !DILocation(line: 85, column: 14, scope: !209)
!221 = !DILocation(line: 85, column: 7, scope: !209)
!222 = !DILocation(line: 87, column: 13, scope: !223)
!223 = distinct !DILexicalBlock(scope: !200, file: !1, line: 87, column: 13)
!224 = !DILocation(line: 87, column: 15, scope: !223)
!225 = !DILocation(line: 87, column: 13, scope: !200)
!226 = !DILocalVariable(name: "status", scope: !227, file: !1, line: 88, type: !50)
!227 = distinct !DILexicalBlock(scope: !223, file: !1, line: 87, column: 21)
!228 = !DILocation(line: 88, column: 11, scope: !227)
!229 = !DILocation(line: 88, column: 60, scope: !227)
!230 = !DILocation(line: 88, column: 52, scope: !227)
!231 = !DILocation(line: 88, column: 63, scope: !227)
!232 = !DILocation(line: 88, column: 66, scope: !227)
!233 = !DILocation(line: 88, column: 20, scope: !227)
!234 = !DILocation(line: 89, column: 22, scope: !227)
!235 = !DILocation(line: 89, column: 7, scope: !227)
!236 = !DILocation(line: 89, column: 15, scope: !227)
!237 = !DILocation(line: 89, column: 19, scope: !227)
!238 = !DILocation(line: 90, column: 14, scope: !227)
!239 = !DILocation(line: 90, column: 7, scope: !227)
!240 = !DILocation(line: 92, column: 13, scope: !241)
!241 = distinct !DILexicalBlock(scope: !223, file: !1, line: 92, column: 13)
!242 = !DILocation(line: 92, column: 15, scope: !241)
!243 = !DILocation(line: 92, column: 13, scope: !223)
!244 = !DILocalVariable(name: "status", scope: !245, file: !1, line: 97, type: !50)
!245 = distinct !DILexicalBlock(scope: !241, file: !1, line: 93, column: 5)
!246 = !DILocation(line: 97, column: 11, scope: !245)
!247 = !DILocation(line: 97, column: 55, scope: !245)
!248 = !DILocation(line: 97, column: 47, scope: !245)
!249 = !DILocation(line: 97, column: 58, scope: !245)
!250 = !DILocation(line: 97, column: 61, scope: !245)
!251 = !DILocation(line: 97, column: 20, scope: !245)
!252 = !DILocation(line: 98, column: 22, scope: !245)
!253 = !DILocation(line: 98, column: 7, scope: !245)
!254 = !DILocation(line: 98, column: 15, scope: !245)
!255 = !DILocation(line: 98, column: 19, scope: !245)
!256 = !DILocation(line: 99, column: 14, scope: !245)
!257 = !DILocation(line: 99, column: 7, scope: !245)
!258 = !DILocalVariable(name: "ans", scope: !259, file: !1, line: 102, type: !42)
!259 = distinct !DILexicalBlock(scope: !241, file: !1, line: 101, column: 10)
!260 = !DILocation(line: 102, column: 14, scope: !259)
!261 = !DILocalVariable(name: "err", scope: !259, file: !1, line: 103, type: !42)
!262 = !DILocation(line: 103, column: 14, scope: !259)
!263 = !DILocalVariable(name: "ratio", scope: !259, file: !1, line: 104, type: !42)
!264 = !DILocation(line: 104, column: 14, scope: !259)
!265 = !DILocalVariable(name: "sgn", scope: !259, file: !1, line: 105, type: !42)
!266 = !DILocation(line: 105, column: 14, scope: !259)
!267 = !DILocalVariable(name: "stat_b", scope: !259, file: !1, line: 106, type: !50)
!268 = !DILocation(line: 106, column: 11, scope: !259)
!269 = !DILocalVariable(name: "stat_CF1", scope: !259, file: !1, line: 107, type: !50)
!270 = !DILocation(line: 107, column: 11, scope: !259)
!271 = !DILocation(line: 107, column: 50, scope: !259)
!272 = !DILocation(line: 107, column: 42, scope: !259)
!273 = !DILocation(line: 107, column: 53, scope: !259)
!274 = !DILocation(line: 107, column: 22, scope: !259)
!275 = !DILocalVariable(name: "Jkp1", scope: !259, file: !1, line: 110, type: !42)
!276 = !DILocation(line: 110, column: 14, scope: !259)
!277 = !DILocation(line: 110, column: 40, scope: !259)
!278 = !DILocation(line: 110, column: 38, scope: !259)
!279 = !DILocalVariable(name: "Jk", scope: !259, file: !1, line: 111, type: !42)
!280 = !DILocation(line: 111, column: 14, scope: !259)
!281 = !DILocalVariable(name: "Jkm1", scope: !259, file: !1, line: 112, type: !42)
!282 = !DILocation(line: 112, column: 14, scope: !259)
!283 = !DILocalVariable(name: "k", scope: !259, file: !1, line: 113, type: !50)
!284 = !DILocation(line: 113, column: 11, scope: !259)
!285 = !DILocation(line: 115, column: 13, scope: !286)
!286 = distinct !DILexicalBlock(scope: !259, file: !1, line: 115, column: 7)
!287 = !DILocation(line: 115, column: 12, scope: !286)
!288 = !DILocation(line: 115, column: 11, scope: !286)
!289 = !DILocation(line: 115, column: 16, scope: !290)
!290 = !DILexicalBlockFile(scope: !291, file: !1, discriminator: 1)
!291 = distinct !DILexicalBlock(scope: !286, file: !1, line: 115, column: 7)
!292 = !DILocation(line: 115, column: 17, scope: !290)
!293 = !DILocation(line: 115, column: 7, scope: !290)
!294 = !DILocation(line: 116, column: 20, scope: !295)
!295 = distinct !DILexicalBlock(scope: !291, file: !1, line: 115, column: 26)
!296 = !DILocation(line: 116, column: 19, scope: !295)
!297 = !DILocation(line: 116, column: 22, scope: !295)
!298 = !DILocation(line: 116, column: 21, scope: !295)
!299 = !DILocation(line: 116, column: 26, scope: !295)
!300 = !DILocation(line: 116, column: 24, scope: !295)
!301 = !DILocation(line: 116, column: 31, scope: !295)
!302 = !DILocation(line: 116, column: 29, scope: !295)
!303 = !DILocation(line: 116, column: 14, scope: !295)
!304 = !DILocation(line: 117, column: 16, scope: !295)
!305 = !DILocation(line: 117, column: 14, scope: !295)
!306 = !DILocation(line: 118, column: 16, scope: !295)
!307 = !DILocation(line: 118, column: 14, scope: !295)
!308 = !DILocation(line: 119, column: 7, scope: !295)
!309 = !DILocation(line: 115, column: 22, scope: !310)
!310 = !DILexicalBlockFile(scope: !291, file: !1, discriminator: 2)
!311 = !DILocation(line: 115, column: 7, scope: !310)
!312 = distinct !{!312, !313}
!313 = !DILocation(line: 115, column: 7, scope: !259)
!314 = !DILocation(line: 121, column: 15, scope: !315)
!315 = distinct !DILexicalBlock(scope: !259, file: !1, line: 121, column: 10)
!316 = !DILocation(line: 121, column: 10, scope: !315)
!317 = !DILocation(line: 121, column: 28, scope: !315)
!318 = !DILocation(line: 121, column: 23, scope: !319)
!319 = !DILexicalBlockFile(scope: !315, file: !1, discriminator: 1)
!320 = !DILocation(line: 121, column: 21, scope: !315)
!321 = !DILocation(line: 121, column: 10, scope: !259)
!322 = !DILocalVariable(name: "b1", scope: !323, file: !1, line: 122, type: !52)
!323 = distinct !DILexicalBlock(scope: !315, file: !1, line: 121, column: 33)
!324 = !DILocation(line: 122, column: 23, scope: !323)
!325 = !DILocation(line: 123, column: 37, scope: !323)
!326 = !DILocation(line: 123, column: 18, scope: !323)
!327 = !DILocation(line: 123, column: 16, scope: !323)
!328 = !DILocation(line: 124, column: 18, scope: !323)
!329 = !DILocation(line: 124, column: 22, scope: !323)
!330 = !DILocation(line: 124, column: 21, scope: !323)
!331 = !DILocation(line: 124, column: 27, scope: !323)
!332 = !DILocation(line: 124, column: 13, scope: !323)
!333 = !DILocation(line: 125, column: 18, scope: !323)
!334 = !DILocation(line: 125, column: 22, scope: !323)
!335 = !DILocation(line: 125, column: 21, scope: !323)
!336 = !DILocation(line: 125, column: 27, scope: !323)
!337 = !DILocation(line: 125, column: 13, scope: !323)
!338 = !DILocation(line: 126, column: 7, scope: !323)
!339 = !DILocalVariable(name: "b0", scope: !340, file: !1, line: 128, type: !52)
!340 = distinct !DILexicalBlock(scope: !315, file: !1, line: 127, column: 12)
!341 = !DILocation(line: 128, column: 23, scope: !340)
!342 = !DILocation(line: 129, column: 37, scope: !340)
!343 = !DILocation(line: 129, column: 18, scope: !340)
!344 = !DILocation(line: 129, column: 16, scope: !340)
!345 = !DILocation(line: 130, column: 18, scope: !340)
!346 = !DILocation(line: 130, column: 22, scope: !340)
!347 = !DILocation(line: 130, column: 21, scope: !340)
!348 = !DILocation(line: 130, column: 25, scope: !340)
!349 = !DILocation(line: 130, column: 13, scope: !340)
!350 = !DILocation(line: 131, column: 18, scope: !340)
!351 = !DILocation(line: 131, column: 22, scope: !340)
!352 = !DILocation(line: 131, column: 21, scope: !340)
!353 = !DILocation(line: 131, column: 25, scope: !340)
!354 = !DILocation(line: 131, column: 13, scope: !340)
!355 = !DILocation(line: 134, column: 21, scope: !259)
!356 = !DILocation(line: 134, column: 28, scope: !259)
!357 = !DILocation(line: 134, column: 26, scope: !259)
!358 = !DILocation(line: 134, column: 7, scope: !259)
!359 = !DILocation(line: 134, column: 15, scope: !259)
!360 = !DILocation(line: 134, column: 19, scope: !259)
!361 = !DILocation(line: 135, column: 26, scope: !259)
!362 = !DILocation(line: 135, column: 21, scope: !259)
!363 = !DILocation(line: 135, column: 7, scope: !259)
!364 = !DILocation(line: 135, column: 15, scope: !259)
!365 = !DILocation(line: 135, column: 19, scope: !259)
!366 = !DILocation(line: 136, column: 14, scope: !259)
!367 = !DILocation(line: 136, column: 14, scope: !368)
!368 = !DILexicalBlockFile(scope: !259, file: !1, discriminator: 1)
!369 = !DILocation(line: 136, column: 14, scope: !370)
!370 = !DILexicalBlockFile(scope: !259, file: !1, discriminator: 2)
!371 = !DILocation(line: 136, column: 14, scope: !372)
!372 = !DILexicalBlockFile(scope: !259, file: !1, discriminator: 3)
!373 = !DILocation(line: 136, column: 14, scope: !374)
!374 = !DILexicalBlockFile(scope: !259, file: !1, discriminator: 4)
!375 = !DILocation(line: 136, column: 14, scope: !376)
!376 = !DILexicalBlockFile(scope: !259, file: !1, discriminator: 5)
!377 = !DILocation(line: 136, column: 14, scope: !378)
!378 = !DILexicalBlockFile(scope: !259, file: !1, discriminator: 6)
!379 = !DILocation(line: 136, column: 7, scope: !378)
!380 = !DILocation(line: 139, column: 1, scope: !47)
!381 = distinct !DISubprogram(name: "gsl_sf_bessel_Jn_array", scope: !1, file: !1, line: 143, type: !382, isLocal: false, isDefinition: true, scopeLine: 144, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!382 = !DISubroutineType(types: !383)
!383 = !{!50, !50, !50, !42, !384}
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64, align: 64)
!385 = !DILocalVariable(name: "nmin", arg: 1, scope: !381, file: !1, line: 143, type: !50)
!386 = !DILocation(line: 143, column: 28, scope: !381)
!387 = !DILocalVariable(name: "nmax", arg: 2, scope: !381, file: !1, line: 143, type: !50)
!388 = !DILocation(line: 143, column: 38, scope: !381)
!389 = !DILocalVariable(name: "x", arg: 3, scope: !381, file: !1, line: 143, type: !42)
!390 = !DILocation(line: 143, column: 51, scope: !381)
!391 = !DILocalVariable(name: "result_array", arg: 4, scope: !381, file: !1, line: 143, type: !384)
!392 = !DILocation(line: 143, column: 63, scope: !381)
!393 = !DILocation(line: 147, column: 6, scope: !394)
!394 = distinct !DILexicalBlock(scope: !381, file: !1, line: 147, column: 6)
!395 = !DILocation(line: 147, column: 11, scope: !394)
!396 = !DILocation(line: 147, column: 15, scope: !394)
!397 = !DILocation(line: 147, column: 18, scope: !398)
!398 = !DILexicalBlockFile(scope: !394, file: !1, discriminator: 1)
!399 = !DILocation(line: 147, column: 25, scope: !398)
!400 = !DILocation(line: 147, column: 23, scope: !398)
!401 = !DILocation(line: 147, column: 6, scope: !398)
!402 = !DILocalVariable(name: "n", scope: !403, file: !1, line: 148, type: !50)
!403 = distinct !DILexicalBlock(scope: !394, file: !1, line: 147, column: 31)
!404 = !DILocation(line: 148, column: 9, scope: !403)
!405 = !DILocation(line: 149, column: 11, scope: !406)
!406 = distinct !DILexicalBlock(scope: !403, file: !1, line: 149, column: 5)
!407 = !DILocation(line: 149, column: 10, scope: !406)
!408 = !DILocation(line: 149, column: 9, scope: !406)
!409 = !DILocation(line: 149, column: 17, scope: !410)
!410 = !DILexicalBlockFile(scope: !411, file: !1, discriminator: 1)
!411 = distinct !DILexicalBlock(scope: !406, file: !1, line: 149, column: 5)
!412 = !DILocation(line: 149, column: 20, scope: !410)
!413 = !DILocation(line: 149, column: 18, scope: !410)
!414 = !DILocation(line: 149, column: 5, scope: !410)
!415 = !DILocation(line: 150, column: 20, scope: !416)
!416 = distinct !DILexicalBlock(scope: !411, file: !1, line: 149, column: 31)
!417 = !DILocation(line: 150, column: 22, scope: !416)
!418 = !DILocation(line: 150, column: 21, scope: !416)
!419 = !DILocation(line: 150, column: 7, scope: !416)
!420 = !DILocation(line: 150, column: 28, scope: !416)
!421 = !DILocation(line: 151, column: 5, scope: !416)
!422 = !DILocation(line: 149, column: 27, scope: !423)
!423 = !DILexicalBlockFile(scope: !411, file: !1, discriminator: 2)
!424 = !DILocation(line: 149, column: 5, scope: !423)
!425 = distinct !{!425, !426}
!426 = !DILocation(line: 149, column: 5, scope: !403)
!427 = !DILocation(line: 152, column: 5, scope: !403)
!428 = distinct !{!428, !427}
!429 = !DILocation(line: 152, column: 5, scope: !430)
!430 = !DILexicalBlockFile(scope: !431, file: !1, discriminator: 1)
!431 = distinct !DILexicalBlock(scope: !403, file: !1, line: 152, column: 5)
!432 = !DILocation(line: 153, column: 3, scope: !403)
!433 = !DILocation(line: 154, column: 11, scope: !434)
!434 = distinct !DILexicalBlock(scope: !394, file: !1, line: 154, column: 11)
!435 = !DILocation(line: 154, column: 13, scope: !434)
!436 = !DILocation(line: 154, column: 11, scope: !394)
!437 = !DILocalVariable(name: "n", scope: !438, file: !1, line: 155, type: !50)
!438 = distinct !DILexicalBlock(scope: !434, file: !1, line: 154, column: 21)
!439 = !DILocation(line: 155, column: 9, scope: !438)
!440 = !DILocation(line: 156, column: 11, scope: !441)
!441 = distinct !DILexicalBlock(scope: !438, file: !1, line: 156, column: 5)
!442 = !DILocation(line: 156, column: 10, scope: !441)
!443 = !DILocation(line: 156, column: 9, scope: !441)
!444 = !DILocation(line: 156, column: 17, scope: !445)
!445 = !DILexicalBlockFile(scope: !446, file: !1, discriminator: 1)
!446 = distinct !DILexicalBlock(scope: !441, file: !1, line: 156, column: 5)
!447 = !DILocation(line: 156, column: 20, scope: !445)
!448 = !DILocation(line: 156, column: 18, scope: !445)
!449 = !DILocation(line: 156, column: 5, scope: !445)
!450 = !DILocation(line: 157, column: 20, scope: !451)
!451 = distinct !DILexicalBlock(scope: !446, file: !1, line: 156, column: 31)
!452 = !DILocation(line: 157, column: 22, scope: !451)
!453 = !DILocation(line: 157, column: 21, scope: !451)
!454 = !DILocation(line: 157, column: 7, scope: !451)
!455 = !DILocation(line: 157, column: 28, scope: !451)
!456 = !DILocation(line: 158, column: 5, scope: !451)
!457 = !DILocation(line: 156, column: 27, scope: !458)
!458 = !DILexicalBlockFile(scope: !446, file: !1, discriminator: 2)
!459 = !DILocation(line: 156, column: 5, scope: !458)
!460 = distinct !{!460, !461}
!461 = !DILocation(line: 156, column: 5, scope: !438)
!462 = !DILocation(line: 159, column: 8, scope: !463)
!463 = distinct !DILexicalBlock(scope: !438, file: !1, line: 159, column: 8)
!464 = !DILocation(line: 159, column: 13, scope: !463)
!465 = !DILocation(line: 159, column: 8, scope: !438)
!466 = !DILocation(line: 159, column: 19, scope: !467)
!467 = !DILexicalBlockFile(scope: !463, file: !1, discriminator: 1)
!468 = !DILocation(line: 159, column: 35, scope: !467)
!469 = !DILocation(line: 160, column: 5, scope: !438)
!470 = !DILocalVariable(name: "r_Jnp1", scope: !471, file: !1, line: 163, type: !52)
!471 = distinct !DILexicalBlock(scope: !434, file: !1, line: 162, column: 8)
!472 = !DILocation(line: 163, column: 19, scope: !471)
!473 = !DILocalVariable(name: "r_Jn", scope: !471, file: !1, line: 164, type: !52)
!474 = !DILocation(line: 164, column: 19, scope: !471)
!475 = !DILocalVariable(name: "stat_np1", scope: !471, file: !1, line: 165, type: !50)
!476 = !DILocation(line: 165, column: 9, scope: !471)
!477 = !DILocation(line: 165, column: 39, scope: !471)
!478 = !DILocation(line: 165, column: 43, scope: !471)
!479 = !DILocation(line: 165, column: 47, scope: !471)
!480 = !DILocation(line: 165, column: 20, scope: !471)
!481 = !DILocalVariable(name: "stat_n", scope: !471, file: !1, line: 166, type: !50)
!482 = !DILocation(line: 166, column: 9, scope: !471)
!483 = !DILocation(line: 166, column: 39, scope: !471)
!484 = !DILocation(line: 166, column: 47, scope: !471)
!485 = !DILocation(line: 166, column: 20, scope: !471)
!486 = !DILocalVariable(name: "stat", scope: !471, file: !1, line: 167, type: !50)
!487 = !DILocation(line: 167, column: 9, scope: !471)
!488 = !DILocation(line: 167, column: 16, scope: !471)
!489 = !DILocation(line: 167, column: 16, scope: !490)
!490 = !DILexicalBlockFile(scope: !471, file: !1, discriminator: 1)
!491 = !DILocation(line: 167, column: 16, scope: !492)
!492 = !DILexicalBlockFile(scope: !471, file: !1, discriminator: 2)
!493 = !DILocation(line: 167, column: 16, scope: !494)
!494 = !DILexicalBlockFile(scope: !471, file: !1, discriminator: 3)
!495 = !DILocation(line: 167, column: 16, scope: !496)
!496 = !DILexicalBlockFile(scope: !471, file: !1, discriminator: 4)
!497 = !DILocation(line: 167, column: 16, scope: !498)
!498 = !DILexicalBlockFile(scope: !471, file: !1, discriminator: 5)
!499 = !DILocation(line: 167, column: 16, scope: !500)
!500 = !DILexicalBlockFile(scope: !471, file: !1, discriminator: 6)
!501 = !DILocation(line: 167, column: 9, scope: !500)
!502 = !DILocalVariable(name: "Jnp1", scope: !471, file: !1, line: 169, type: !42)
!503 = !DILocation(line: 169, column: 12, scope: !471)
!504 = !DILocation(line: 169, column: 26, scope: !471)
!505 = !DILocalVariable(name: "Jn", scope: !471, file: !1, line: 170, type: !42)
!506 = !DILocation(line: 170, column: 12, scope: !471)
!507 = !DILocation(line: 170, column: 24, scope: !471)
!508 = !DILocalVariable(name: "Jnm1", scope: !471, file: !1, line: 171, type: !42)
!509 = !DILocation(line: 171, column: 12, scope: !471)
!510 = !DILocalVariable(name: "n", scope: !471, file: !1, line: 172, type: !50)
!511 = !DILocation(line: 172, column: 9, scope: !471)
!512 = !DILocation(line: 174, column: 8, scope: !513)
!513 = distinct !DILexicalBlock(scope: !471, file: !1, line: 174, column: 8)
!514 = !DILocation(line: 174, column: 13, scope: !513)
!515 = !DILocation(line: 174, column: 8, scope: !471)
!516 = !DILocation(line: 175, column: 13, scope: !517)
!517 = distinct !DILexicalBlock(scope: !518, file: !1, line: 175, column: 7)
!518 = distinct !DILexicalBlock(scope: !513, file: !1, line: 174, column: 29)
!519 = !DILocation(line: 175, column: 12, scope: !517)
!520 = !DILocation(line: 175, column: 11, scope: !517)
!521 = !DILocation(line: 175, column: 19, scope: !522)
!522 = !DILexicalBlockFile(scope: !523, file: !1, discriminator: 1)
!523 = distinct !DILexicalBlock(scope: !517, file: !1, line: 175, column: 7)
!524 = !DILocation(line: 175, column: 22, scope: !522)
!525 = !DILocation(line: 175, column: 20, scope: !522)
!526 = !DILocation(line: 175, column: 7, scope: !522)
!527 = !DILocation(line: 176, column: 32, scope: !528)
!528 = distinct !DILexicalBlock(scope: !523, file: !1, line: 175, column: 33)
!529 = !DILocation(line: 176, column: 22, scope: !528)
!530 = !DILocation(line: 176, column: 24, scope: !528)
!531 = !DILocation(line: 176, column: 23, scope: !528)
!532 = !DILocation(line: 176, column: 9, scope: !528)
!533 = !DILocation(line: 176, column: 30, scope: !528)
!534 = !DILocation(line: 177, column: 17, scope: !528)
!535 = !DILocation(line: 177, column: 16, scope: !528)
!536 = !DILocation(line: 177, column: 28, scope: !528)
!537 = !DILocation(line: 177, column: 27, scope: !528)
!538 = !DILocation(line: 177, column: 30, scope: !528)
!539 = !DILocation(line: 177, column: 29, scope: !528)
!540 = !DILocation(line: 177, column: 34, scope: !528)
!541 = !DILocation(line: 177, column: 32, scope: !528)
!542 = !DILocation(line: 177, column: 22, scope: !528)
!543 = !DILocation(line: 177, column: 14, scope: !528)
!544 = !DILocation(line: 178, column: 16, scope: !528)
!545 = !DILocation(line: 178, column: 14, scope: !528)
!546 = !DILocation(line: 179, column: 16, scope: !528)
!547 = !DILocation(line: 179, column: 14, scope: !528)
!548 = !DILocation(line: 180, column: 7, scope: !528)
!549 = !DILocation(line: 175, column: 29, scope: !550)
!550 = !DILexicalBlockFile(scope: !523, file: !1, discriminator: 2)
!551 = !DILocation(line: 175, column: 7, scope: !550)
!552 = distinct !{!552, !553}
!553 = !DILocation(line: 175, column: 7, scope: !518)
!554 = !DILocation(line: 181, column: 5, scope: !518)
!555 = !DILocation(line: 183, column: 13, scope: !556)
!556 = distinct !DILexicalBlock(scope: !557, file: !1, line: 183, column: 7)
!557 = distinct !DILexicalBlock(scope: !513, file: !1, line: 182, column: 10)
!558 = !DILocation(line: 183, column: 12, scope: !556)
!559 = !DILocation(line: 183, column: 11, scope: !556)
!560 = !DILocation(line: 183, column: 19, scope: !561)
!561 = !DILexicalBlockFile(scope: !562, file: !1, discriminator: 1)
!562 = distinct !DILexicalBlock(scope: !556, file: !1, line: 183, column: 7)
!563 = !DILocation(line: 183, column: 22, scope: !561)
!564 = !DILocation(line: 183, column: 20, scope: !561)
!565 = !DILocation(line: 183, column: 7, scope: !561)
!566 = !DILocation(line: 184, column: 22, scope: !567)
!567 = distinct !DILexicalBlock(scope: !562, file: !1, line: 183, column: 33)
!568 = !DILocation(line: 184, column: 24, scope: !567)
!569 = !DILocation(line: 184, column: 23, scope: !567)
!570 = !DILocation(line: 184, column: 9, scope: !567)
!571 = !DILocation(line: 184, column: 30, scope: !567)
!572 = !DILocation(line: 185, column: 7, scope: !567)
!573 = !DILocation(line: 183, column: 29, scope: !574)
!574 = !DILexicalBlockFile(scope: !562, file: !1, discriminator: 2)
!575 = !DILocation(line: 183, column: 7, scope: !574)
!576 = distinct !{!576, !577}
!577 = !DILocation(line: 183, column: 7, scope: !557)
!578 = !DILocation(line: 188, column: 12, scope: !471)
!579 = !DILocation(line: 188, column: 5, scope: !471)
!580 = !DILocation(line: 190, column: 1, scope: !381)
!581 = distinct !DISubprogram(name: "gsl_sf_bessel_Jn", scope: !1, file: !1, line: 196, type: !582, isLocal: false, isDefinition: true, scopeLine: 197, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!582 = !DISubroutineType(types: !583)
!583 = !{!42, !584, !585}
!584 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !50)
!585 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!586 = !DILocalVariable(name: "n", arg: 1, scope: !581, file: !1, line: 196, type: !584)
!587 = !DILocation(line: 196, column: 35, scope: !581)
!588 = !DILocalVariable(name: "x", arg: 2, scope: !581, file: !1, line: 196, type: !585)
!589 = !DILocation(line: 196, column: 51, scope: !581)
!590 = !DILocalVariable(name: "result", scope: !581, file: !1, line: 198, type: !52)
!591 = !DILocation(line: 198, column: 3, scope: !581)
!592 = !DILocalVariable(name: "status", scope: !581, file: !1, line: 198, type: !50)
!593 = !DILocation(line: 198, column: 3, scope: !594)
!594 = distinct !DILexicalBlock(scope: !581, file: !1, line: 198, column: 3)
!595 = !DILocation(line: 198, column: 3, scope: !596)
!596 = !DILexicalBlockFile(scope: !597, file: !1, discriminator: 1)
!597 = distinct !DILexicalBlock(scope: !594, file: !1, line: 198, column: 3)
!598 = distinct !{!598, !599}
!599 = !DILocation(line: 198, column: 3, scope: !597)
!600 = !DILocation(line: 198, column: 3, scope: !601)
!601 = !DILexicalBlockFile(scope: !602, file: !1, discriminator: 2)
!602 = distinct !DILexicalBlock(scope: !597, file: !1, line: 198, column: 3)
!603 = !DILocation(line: 198, column: 3, scope: !604)
!604 = !DILexicalBlockFile(scope: !597, file: !1, discriminator: 3)
!605 = !DILocation(line: 198, column: 3, scope: !606)
!606 = !DILexicalBlockFile(scope: !581, file: !1, discriminator: 4)
!607 = !DILocation(line: 199, column: 1, scope: !581)
