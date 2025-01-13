; ModuleID = 'beta.ll'
source_filename = "beta.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsl_sf_result_struct = type { double, double }

@.str = private unnamed_addr constant [13 x i8] c"domain error\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"beta.c\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"gsl_sf_lnbeta_e(x, y, &result)\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"gsl_sf_beta_e(x, y, &result)\00", align 1
@0 = private unnamed_addr constant [16 x i8] c"gsl_sf_lnbeta_e\00"
@1 = private unnamed_addr constant [8 x i8] c"beta.ll\00"
@2 = private unnamed_addr constant [20 x i8] c"gsl_sf_lnbeta_sgn_e\00"
@3 = private unnamed_addr constant [8 x i8] c"beta.ll\00"
@4 = private unnamed_addr constant [9 x i8] c"isnegint\00"
@5 = private unnamed_addr constant [8 x i8] c"beta.ll\00"
@6 = private unnamed_addr constant [14 x i8] c"gsl_sf_beta_e\00"
@7 = private unnamed_addr constant [8 x i8] c"beta.ll\00"
@8 = private unnamed_addr constant [14 x i8] c"gsl_sf_lnbeta\00"
@9 = private unnamed_addr constant [8 x i8] c"beta.ll\00"
@10 = private unnamed_addr constant [12 x i8] c"gsl_sf_beta\00"
@11 = private unnamed_addr constant [8 x i8] c"beta.ll\00"

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_lnbeta_e(double, double, %struct.gsl_sf_result_struct*) #0 !dbg !45 {
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca %struct.gsl_sf_result_struct*, align 8
  %8 = alloca double, align 8
  %9 = alloca i32, align 4
  store double %0, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !59, metadata !60), !dbg !61
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !62, metadata !60), !dbg !63
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %7, metadata !64, metadata !60), !dbg !65
  call void @llvm.dbg.declare(metadata double* %8, metadata !66, metadata !60), !dbg !67
  call void @llvm.dbg.declare(metadata i32* %9, metadata !68, metadata !60), !dbg !69
  %10 = load double, double* %5, align 8, !dbg !70
  %11 = load double, double* %6, align 8, !dbg !71
  %12 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !72
  %13 = call i32 @gsl_sf_lnbeta_sgn_e(double %10, double %11, %struct.gsl_sf_result_struct* %12, double* %8), !dbg !73
  store i32 %13, i32* %9, align 4, !dbg !69
  %14 = load double, double* %8, align 8, !dbg !74
  %15 = fcmp oeq double %14, -1.000000e+00, !dbg !76
  %16 = call i1 @fCmpInstHandler(double %14, double -1.000000e+00, i1 %15, i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 94695446602208, i32 43, i32 11), !dbg !77
  br i1 %16, label %17, label %26, !dbg !77

; <label>:17:                                     ; preds = %3
  br label %18, !dbg !78, !llvm.loop !80

; <label>:18:                                     ; preds = %17
  %19 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !81
  %20 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %19, i32 0, i32 0, !dbg !81
  store double 0x7FF8000000000000, double* %20, align 8, !dbg !81
  %21 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !81
  %22 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %21, i32 0, i32 1, !dbg !81
  store double 0x7FF8000000000000, double* %22, align 8, !dbg !81
  br label %23, !dbg !81, !llvm.loop !84

; <label>:23:                                     ; preds = %18
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 44, i32 1), !dbg !86
  store i32 1, i32* %4, align 4, !dbg !86
  br label %28, !dbg !86
                                                  ; No predecessors!
  br label %25, !dbg !89

; <label>:25:                                     ; preds = %24
  br label %26, !dbg !91

; <label>:26:                                     ; preds = %25, %3
  %27 = load i32, i32* %9, align 4, !dbg !92
  store i32 %27, i32* %4, align 4, !dbg !93
  br label %28, !dbg !93

; <label>:28:                                     ; preds = %26, %23
  %29 = load i32, i32* %4, align 4, !dbg !94
  ret i32 %29, !dbg !94
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_lnbeta_sgn_e(double, double, %struct.gsl_sf_result_struct*, double*) #0 !dbg !95 {
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca %struct.gsl_sf_result_struct*, align 8
  %9 = alloca double*, align 8
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
  %20 = alloca %struct.gsl_sf_result_struct, align 8
  %21 = alloca %struct.gsl_sf_result_struct, align 8
  %22 = alloca %struct.gsl_sf_result_struct, align 8
  %23 = alloca %struct.gsl_sf_result_struct, align 8
  %24 = alloca %struct.gsl_sf_result_struct, align 8
  %25 = alloca %struct.gsl_sf_result_struct, align 8
  %26 = alloca %struct.gsl_sf_result_struct, align 8
  %27 = alloca double, align 8
  %28 = alloca double, align 8
  %29 = alloca double, align 8
  %30 = alloca double, align 8
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  store double %0, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !99, metadata !60), !dbg !100
  store double %1, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !101, metadata !60), !dbg !102
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %8, metadata !103, metadata !60), !dbg !104
  store double* %3, double** %9, align 8
  call void @llvm.dbg.declare(metadata double** %9, metadata !105, metadata !60), !dbg !106
  %34 = load double, double* %6, align 8, !dbg !107
  %35 = fcmp oeq double %34, 0.000000e+00, !dbg !109
  %36 = call i1 @fCmpInstHandler(double %34, double 0.000000e+00, i1 %35, i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94695446630176, i32 54, i32 8), !dbg !110
  br i1 %36, label %41, label %37, !dbg !110

; <label>:37:                                     ; preds = %4
  %38 = load double, double* %7, align 8, !dbg !111
  %39 = fcmp oeq double %38, 0.000000e+00, !dbg !113
  %40 = call i1 @fCmpInstHandler(double %38, double 0.000000e+00, i1 %39, i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94695446631536, i32 54, i32 20), !dbg !114
  br i1 %40, label %41, label %51, !dbg !114

; <label>:41:                                     ; preds = %37, %4
  %42 = load double*, double** %9, align 8, !dbg !115
  store double 0.000000e+00, double* %42, align 8, !dbg !117
  br label %43, !dbg !118, !llvm.loop !119

; <label>:43:                                     ; preds = %41
  %44 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !120
  %45 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %44, i32 0, i32 0, !dbg !120
  store double 0x7FF8000000000000, double* %45, align 8, !dbg !120
  %46 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !120
  %47 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %46, i32 0, i32 1, !dbg !120
  store double 0x7FF8000000000000, double* %47, align 8, !dbg !120
  br label %48, !dbg !120, !llvm.loop !123

; <label>:48:                                     ; preds = %43
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 56, i32 1), !dbg !125
  store i32 1, i32* %5, align 4, !dbg !125
  br label %293, !dbg !125
                                                  ; No predecessors!
  br label %50, !dbg !128

; <label>:50:                                     ; preds = %49
  br label %72, !dbg !130

; <label>:51:                                     ; preds = %37
  %52 = load double, double* %6, align 8, !dbg !131
  %53 = call double @isnegint(double %52), !dbg !134
  %54 = fcmp une double %53, 0.000000e+00, !dbg !134
  %55 = call i1 @fCmpInstHandler(double %53, double 0.000000e+00, i1 %54, i32 14, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94695446641824, i32 57, i32 14), !dbg !135
  br i1 %55, label %61, label %56, !dbg !135

; <label>:56:                                     ; preds = %51
  %57 = load double, double* %7, align 8, !dbg !136
  %58 = call double @isnegint(double %57), !dbg !138
  %59 = fcmp une double %58, 0.000000e+00, !dbg !138
  %60 = call i1 @fCmpInstHandler(double %58, double 0.000000e+00, i1 %59, i32 14, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94695446645056, i32 57, i32 29), !dbg !139
  br i1 %60, label %61, label %71, !dbg !139

; <label>:61:                                     ; preds = %56, %51
  %62 = load double*, double** %9, align 8, !dbg !140
  store double 0.000000e+00, double* %62, align 8, !dbg !142
  br label %63, !dbg !143, !llvm.loop !144

; <label>:63:                                     ; preds = %61
  %64 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !145
  %65 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %64, i32 0, i32 0, !dbg !145
  store double 0x7FF8000000000000, double* %65, align 8, !dbg !145
  %66 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !145
  %67 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %66, i32 0, i32 1, !dbg !145
  store double 0x7FF8000000000000, double* %67, align 8, !dbg !145
  br label %68, !dbg !145, !llvm.loop !148

; <label>:68:                                     ; preds = %63
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 59, i32 1), !dbg !150
  store i32 1, i32* %5, align 4, !dbg !150
  br label %293, !dbg !150
                                                  ; No predecessors!
  br label %70, !dbg !153

; <label>:70:                                     ; preds = %69
  br label %71, !dbg !155

; <label>:71:                                     ; preds = %70, %56
  br label %72

; <label>:72:                                     ; preds = %71, %50
  %73 = load double, double* %6, align 8, !dbg !156
  %74 = fcmp ogt double %73, 0.000000e+00, !dbg !158
  %75 = call i1 @fCmpInstHandler(double %73, double 0.000000e+00, i1 %74, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94695446656656, i32 64, i32 9), !dbg !159
  br i1 %75, label %76, label %205, !dbg !159

; <label>:76:                                     ; preds = %72
  %77 = load double, double* %7, align 8, !dbg !160
  %78 = fcmp ogt double %77, 0.000000e+00, !dbg !162
  %79 = call i1 @fCmpInstHandler(double %77, double 0.000000e+00, i1 %78, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94695446658112, i32 64, i32 18), !dbg !163
  br i1 %79, label %80, label %205, !dbg !163

; <label>:80:                                     ; preds = %76
  call void @llvm.dbg.declare(metadata double* %10, metadata !164, metadata !60), !dbg !166
  %81 = load double, double* %6, align 8, !dbg !167
  %82 = load double, double* %7, align 8, !dbg !167
  %83 = fcmp ogt double %81, %82, !dbg !167
  %84 = call i1 @fCmpInstHandler(double %81, double %82, i1 %83, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94695446662208, i32 65, i32 24), !dbg !167
  br i1 %84, label %85, label %87, !dbg !167

; <label>:85:                                     ; preds = %80
  %86 = load double, double* %6, align 8, !dbg !168
  br label %89, !dbg !168

; <label>:87:                                     ; preds = %80
  %88 = load double, double* %7, align 8, !dbg !170
  br label %89, !dbg !170

; <label>:89:                                     ; preds = %87, %85
  %90 = phi double [ %86, %85 ], [ %88, %87 ], !dbg !172
  store double %90, double* %10, align 8, !dbg !174
  call void @llvm.dbg.declare(metadata double* %11, metadata !175, metadata !60), !dbg !176
  %91 = load double, double* %6, align 8, !dbg !177
  %92 = load double, double* %7, align 8, !dbg !177
  %93 = fcmp olt double %91, %92, !dbg !177
  %94 = call i1 @fCmpInstHandler(double %91, double %92, i1 %93, i32 4, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94695446670784, i32 66, i32 24), !dbg !177
  br i1 %94, label %95, label %97, !dbg !177

; <label>:95:                                     ; preds = %89
  %96 = load double, double* %6, align 8, !dbg !178
  br label %99, !dbg !178

; <label>:97:                                     ; preds = %89
  %98 = load double, double* %7, align 8, !dbg !179
  br label %99, !dbg !179

; <label>:99:                                     ; preds = %97, %95
  %100 = phi double [ %96, %95 ], [ %98, %97 ], !dbg !180
  store double %100, double* %11, align 8, !dbg !181
  call void @llvm.dbg.declare(metadata double* %12, metadata !182, metadata !60), !dbg !183
  %101 = load double, double* %11, align 8, !dbg !184
  %102 = load double, double* %10, align 8, !dbg !185
  %103 = fdiv double %101, %102, !dbg !186
  call void @fDivHandler(double %101, double %102, double %103, i64 94695446677336, i64 94695446677688, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94695446678096, i32 67, i32 27), !dbg !183
  store double %103, double* %12, align 8, !dbg !183
  %104 = load double, double* %12, align 8, !dbg !187
  %105 = fcmp olt double %104, 2.000000e-01, !dbg !189
  %106 = call i1 @fCmpInstHandler(double %104, double 2.000000e-01, i1 %105, i32 4, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94695446680672, i32 69, i32 12), !dbg !190
  br i1 %106, label %107, label %204, !dbg !190

; <label>:107:                                    ; preds = %99
  call void @llvm.dbg.declare(metadata double* %13, metadata !191, metadata !60), !dbg !193
  call void @llvm.dbg.declare(metadata double* %14, metadata !194, metadata !60), !dbg !195
  call void @llvm.dbg.declare(metadata double* %15, metadata !196, metadata !60), !dbg !197
  call void @llvm.dbg.declare(metadata double* %16, metadata !198, metadata !60), !dbg !199
  call void @llvm.dbg.declare(metadata double* %17, metadata !200, metadata !60), !dbg !201
  call void @llvm.dbg.declare(metadata double* %18, metadata !202, metadata !60), !dbg !203
  call void @llvm.dbg.declare(metadata double* %19, metadata !204, metadata !60), !dbg !205
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %20, metadata !206, metadata !60), !dbg !207
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %21, metadata !208, metadata !60), !dbg !209
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %22, metadata !210, metadata !60), !dbg !211
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %23, metadata !212, metadata !60), !dbg !213
  %108 = load double, double* %6, align 8, !dbg !214
  %109 = call i32 @gsl_sf_gammastar_e(double %108, %struct.gsl_sf_result_struct* %21), !dbg !215
  %110 = load double, double* %7, align 8, !dbg !216
  %111 = call i32 @gsl_sf_gammastar_e(double %110, %struct.gsl_sf_result_struct* %22), !dbg !217
  %112 = load double, double* %6, align 8, !dbg !218
  %113 = load double, double* %7, align 8, !dbg !219
  %114 = fadd double %112, %113, !dbg !220
  call void @fAddHandler(double %112, double %113, double %114, i64 94695446695864, i64 94695446696216, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94695446696624, i32 82, i32 27), !dbg !221
  %115 = call i32 @gsl_sf_gammastar_e(double %114, %struct.gsl_sf_result_struct* %23), !dbg !221
  %116 = load double, double* %12, align 8, !dbg !222
  %117 = call i32 @gsl_sf_log_1plusx_e(double %116, %struct.gsl_sf_result_struct* %20), !dbg !223
  %118 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %21, i32 0, i32 0, !dbg !224
  %119 = load double, double* %118, align 8, !dbg !224
  %120 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %22, i32 0, i32 0, !dbg !225
  %121 = load double, double* %120, align 8, !dbg !225
  %122 = fmul double %119, %121, !dbg !226
  call void @fMulHandler(double %119, double %121, double %122, i64 94695446699304, i64 94695446701400, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94695446703072, i32 84, i32 30), !dbg !227
  %123 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %23, i32 0, i32 0, !dbg !227
  %124 = load double, double* %123, align 8, !dbg !227
  %125 = fdiv double %122, %124, !dbg !228
  call void @fDivHandler(double %122, double %124, double %125, i64 94695446703072, i64 94695446703912, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94695446705584, i32 84, i32 38), !dbg !229
  %126 = fmul double %125, 0x3FF6A09E667F3BCD, !dbg !229
  call void @fMulHandler(double %125, double 0x3FF6A09E667F3BCD, double %126, i64 94695446705584, i64 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94695446706064, i32 84, i32 48), !dbg !230
  %127 = fmul double %126, 0x3FFC5BF891B4EF6B, !dbg !230
  call void @fMulHandler(double %126, double 0x3FFC5BF891B4EF6B, double %127, i64 94695446706064, i64 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94695446706544, i32 84, i32 57), !dbg !231
  %128 = call double @log(double %127) #5, !dbg !231
  call void @callOneArgHandler(i32 12, double %127, double %128, i64 94695446706544, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94695446707296, i32 84, i32 19), !dbg !232
  store double %128, double* %13, align 8, !dbg !232
  %129 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %21, i32 0, i32 1, !dbg !233
  %130 = load double, double* %129, align 8, !dbg !233
  %131 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %21, i32 0, i32 0, !dbg !234
  %132 = load double, double* %131, align 8, !dbg !234
  %133 = fdiv double %130, %132, !dbg !235
  call void @fDivHandler(double %130, double %132, double %133, i64 94695446708648, i64 94695446710744, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94695446712416, i32 85, i32 26), !dbg !236
  %134 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %22, i32 0, i32 1, !dbg !236
  %135 = load double, double* %134, align 8, !dbg !236
  %136 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %22, i32 0, i32 0, !dbg !237
  %137 = load double, double* %136, align 8, !dbg !237
  %138 = fdiv double %135, %137, !dbg !238
  call void @fDivHandler(double %135, double %137, double %138, i64 94695446713256, i64 94695446715352, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94695446719088, i32 85, i32 44), !dbg !239
  %139 = fadd double %133, %138, !dbg !239
  call void @fAddHandler(double %133, double %138, double %139, i64 94695446712416, i64 94695446719088, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94695446719504, i32 85, i32 35), !dbg !240
  %140 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %23, i32 0, i32 1, !dbg !240
  %141 = load double, double* %140, align 8, !dbg !240
  %142 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %23, i32 0, i32 0, !dbg !241
  %143 = load double, double* %142, align 8, !dbg !241
  %144 = fdiv double %141, %143, !dbg !242
  call void @fDivHandler(double %141, double %143, double %144, i64 94695446720344, i64 94695446722440, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94695446724112, i32 85, i32 63), !dbg !243
  %145 = fadd double %139, %144, !dbg !243
  call void @fAddHandler(double %139, double %144, double %145, i64 94695446719504, i64 94695446724112, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94695446724528, i32 85, i32 53), !dbg !244
  store double %145, double* %14, align 8, !dbg !244
  %146 = load double, double* %11, align 8, !dbg !245
  %147 = load double, double* %12, align 8, !dbg !246
  %148 = call double @log(double %147) #5, !dbg !247
  call void @callOneArgHandler(i32 12, double %147, double %148, i64 94695446725720, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94695446726192, i32 86, i32 16), !dbg !248
  %149 = fmul double %146, %148, !dbg !248
  call void @fMulHandler(double %146, double %148, double %149, i64 94695446725336, i64 94695446726192, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94695446726672, i32 86, i32 15), !dbg !249
  store double %149, double* %17, align 8, !dbg !249
  %150 = load double, double* %11, align 8, !dbg !250
  %151 = call double @log(double %150) #5, !dbg !251
  call void @callOneArgHandler(i32 12, double %150, double %151, i64 94695446727480, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94695446727952, i32 87, i32 16), !dbg !252
  %152 = fmul double 5.000000e-01, %151, !dbg !252
  call void @fMulHandler(double 5.000000e-01, double %151, double %152, i64 0, i64 94695446727952, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94695446728528, i32 87, i32 15), !dbg !253
  store double %152, double* %18, align 8, !dbg !253
  %153 = load double, double* %6, align 8, !dbg !254
  %154 = load double, double* %7, align 8, !dbg !255
  %155 = fadd double %153, %154, !dbg !256
  call void @fAddHandler(double %153, double %154, double %155, i64 94695446729304, i64 94695446729688, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94695446730096, i32 88, i32 14), !dbg !257
  %156 = fsub double %155, 5.000000e-01, !dbg !257
  call void @fSubHandler(double %155, double 5.000000e-01, double %156, i64 94695446730096, i64 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94695446730544, i32 88, i32 16), !dbg !258
  %157 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %20, i32 0, i32 0, !dbg !258
  %158 = load double, double* %157, align 8, !dbg !258
  %159 = fmul double %156, %158, !dbg !259
  call void @fMulHandler(double %156, double %158, double %159, i64 94695446730544, i64 94695446731352, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94695446733024, i32 88, i32 21), !dbg !260
  store double %159, double* %19, align 8, !dbg !260
  %160 = load double, double* %17, align 8, !dbg !261
  %161 = load double, double* %18, align 8, !dbg !262
  %162 = fsub double %160, %161, !dbg !263
  call void @fSubHandler(double %160, double %161, double %162, i64 94695446733832, i64 94695446734216, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94695446734624, i32 89, i32 23), !dbg !264
  %163 = load double, double* %19, align 8, !dbg !264
  %164 = fsub double %162, %163, !dbg !265
  call void @fSubHandler(double %162, double %163, double %164, i64 94695446734624, i64 94695446735016, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94695446735424, i32 89, i32 28), !dbg !266
  store double %164, double* %15, align 8, !dbg !266
  %165 = load double, double* %17, align 8, !dbg !267
  %166 = call double @fabs(double %165) #1, !dbg !268
  %167 = load double, double* %18, align 8, !dbg !269
  %168 = call double @fabs(double %167) #1, !dbg !270
  %169 = fadd double %166, %168, !dbg !272
  call void @fAddHandler(double %166, double %168, double %169, i64 94695446737440, i64 94695446738400, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94695446738880, i32 90, i32 48), !dbg !273
  %170 = load double, double* %19, align 8, !dbg !273
  %171 = call double @fabs(double %170) #1, !dbg !274
  %172 = fadd double %169, %171, !dbg !276
  call void @fAddHandler(double %169, double %171, double %172, i64 94695446738880, i64 94695446739744, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94695446740224, i32 90, i32 59), !dbg !277
  %173 = fmul double 0x3CB0000000000000, %172, !dbg !277
  call void @fMulHandler(double 0x3CB0000000000000, double %172, double %173, i64 0, i64 94695446740224, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94695446740704, i32 90, i32 36), !dbg !278
  store double %173, double* %16, align 8, !dbg !278
  %174 = load double, double* %6, align 8, !dbg !279
  %175 = load double, double* %7, align 8, !dbg !280
  %176 = fadd double %174, %175, !dbg !281
  call void @fAddHandler(double %174, double %175, double %176, i64 94695446741512, i64 94695446741896, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94695446742304, i32 91, i32 26), !dbg !282
  %177 = fsub double %176, 5.000000e-01, !dbg !282
  call void @fSubHandler(double %176, double 5.000000e-01, double %177, i64 94695446742304, i64 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94695446742752, i32 91, i32 28), !dbg !283
  %178 = call double @fabs(double %177) #1, !dbg !283
  %179 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %20, i32 0, i32 1, !dbg !284
  %180 = load double, double* %179, align 8, !dbg !284
  %181 = fmul double %178, %180, !dbg !285
  call void @fMulHandler(double %178, double %180, double %181, i64 94695446743200, i64 94695446744104, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94695446745776, i32 91, i32 34), !dbg !286
  %182 = load double, double* %16, align 8, !dbg !286
  %183 = fadd double %182, %181, !dbg !286
  call void @fAddHandler(double %182, double %181, double %183, i64 94695446746168, i64 94695446745776, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94695446746576, i32 91, i32 17), !dbg !286
  store double %183, double* %16, align 8, !dbg !286
  %184 = load double, double* %13, align 8, !dbg !287
  %185 = load double, double* %15, align 8, !dbg !288
  %186 = fadd double %184, %185, !dbg !289
  call void @fAddHandler(double %184, double %185, double %186, i64 94695446748360, i64 94695446748744, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94695446749152, i32 92, i32 32), !dbg !290
  %187 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !290
  %188 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %187, i32 0, i32 0, !dbg !291
  store double %186, double* %188, align 8, !dbg !292
  %189 = load double, double* %14, align 8, !dbg !293
  %190 = load double, double* %16, align 8, !dbg !294
  %191 = fadd double %189, %190, !dbg !295
  call void @fAddHandler(double %189, double %190, double %191, i64 94695446750792, i64 94695446751176, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94695446751584, i32 93, i32 32), !dbg !296
  %192 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !296
  %193 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %192, i32 0, i32 1, !dbg !297
  store double %191, double* %193, align 8, !dbg !298
  %194 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !299
  %195 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %194, i32 0, i32 0, !dbg !300
  %196 = load double, double* %195, align 8, !dbg !300
  %197 = call double @fabs(double %196) #1, !dbg !301
  %198 = fmul double 0x3CC0000000000000, %197, !dbg !302
  call void @fMulHandler(double 0x3CC0000000000000, double %197, double %198, i64 0, i64 94695446755792, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94695446756336, i32 94, i32 44), !dbg !303
  %199 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !303
  %200 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %199, i32 0, i32 1, !dbg !304
  %201 = load double, double* %200, align 8, !dbg !305
  %202 = fadd double %201, %198, !dbg !305
  call void @fAddHandler(double %201, double %198, double %202, i64 94695446757560, i64 94695446756336, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94695446757968, i32 94, i32 19), !dbg !305
  store double %202, double* %200, align 8, !dbg !305
  %203 = load double*, double** %9, align 8, !dbg !306
  store double 1.000000e+00, double* %203, align 8, !dbg !307
  store i32 0, i32* %5, align 4, !dbg !308
  br label %293, !dbg !308

; <label>:204:                                    ; preds = %99
  br label %205, !dbg !309

; <label>:205:                                    ; preds = %204, %76, %72
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %24, metadata !310, metadata !60), !dbg !312
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %25, metadata !313, metadata !60), !dbg !314
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %26, metadata !315, metadata !60), !dbg !316
  call void @llvm.dbg.declare(metadata double* %27, metadata !317, metadata !60), !dbg !318
  call void @llvm.dbg.declare(metadata double* %28, metadata !319, metadata !60), !dbg !320
  call void @llvm.dbg.declare(metadata double* %29, metadata !321, metadata !60), !dbg !322
  call void @llvm.dbg.declare(metadata double* %30, metadata !323, metadata !60), !dbg !324
  %206 = load double, double* %6, align 8, !dbg !325
  %207 = load double, double* %7, align 8, !dbg !326
  %208 = fadd double %206, %207, !dbg !327
  call void @fAddHandler(double %206, double %207, double %208, i64 94695446772744, i64 94695446773096, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94695446773504, i32 103, i32 34), !dbg !324
  store double %208, double* %30, align 8, !dbg !324
  call void @llvm.dbg.declare(metadata i32* %31, metadata !328, metadata !60), !dbg !329
  %209 = load double, double* %6, align 8, !dbg !330
  %210 = call i32 @gsl_sf_lngamma_sgn_e(double %209, %struct.gsl_sf_result_struct* %24, double* %27), !dbg !331
  store i32 %210, i32* %31, align 4, !dbg !329
  call void @llvm.dbg.declare(metadata i32* %32, metadata !332, metadata !60), !dbg !333
  %211 = load double, double* %7, align 8, !dbg !334
  %212 = call i32 @gsl_sf_lngamma_sgn_e(double %211, %struct.gsl_sf_result_struct* %25, double* %28), !dbg !335
  store i32 %212, i32* %32, align 4, !dbg !333
  call void @llvm.dbg.declare(metadata i32* %33, metadata !336, metadata !60), !dbg !337
  %213 = load double, double* %30, align 8, !dbg !338
  %214 = call i32 @gsl_sf_lngamma_sgn_e(double %213, %struct.gsl_sf_result_struct* %26, double* %29), !dbg !339
  store i32 %214, i32* %33, align 4, !dbg !337
  %215 = load double, double* %27, align 8, !dbg !340
  %216 = load double, double* %28, align 8, !dbg !341
  %217 = fmul double %215, %216, !dbg !342
  call void @fMulHandler(double %215, double %216, double %217, i64 94695446787144, i64 94695446787496, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94695446787904, i32 107, i32 16), !dbg !343
  %218 = load double, double* %29, align 8, !dbg !343
  %219 = fmul double %217, %218, !dbg !344
  call void @fMulHandler(double %217, double %218, double %219, i64 94695446787904, i64 94695446788296, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94695446788704, i32 107, i32 22), !dbg !345
  %220 = load double*, double** %9, align 8, !dbg !345
  store double %219, double* %220, align 8, !dbg !346
  %221 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %24, i32 0, i32 0, !dbg !347
  %222 = load double, double* %221, align 8, !dbg !347
  %223 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %25, i32 0, i32 0, !dbg !348
  %224 = load double, double* %223, align 8, !dbg !348
  %225 = fadd double %222, %224, !dbg !349
  call void @fAddHandler(double %222, double %224, double %225, i64 94695446790344, i64 94695446792440, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94695446794112, i32 108, i32 28), !dbg !350
  %226 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %26, i32 0, i32 0, !dbg !350
  %227 = load double, double* %226, align 8, !dbg !350
  %228 = fsub double %225, %227, !dbg !351
  call void @fSubHandler(double %225, double %227, double %228, i64 94695446794112, i64 94695446794952, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94695446796624, i32 108, i32 38), !dbg !352
  %229 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !352
  %230 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %229, i32 0, i32 0, !dbg !353
  store double %228, double* %230, align 8, !dbg !354
  %231 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %24, i32 0, i32 1, !dbg !355
  %232 = load double, double* %231, align 8, !dbg !355
  %233 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %25, i32 0, i32 1, !dbg !356
  %234 = load double, double* %233, align 8, !dbg !356
  %235 = fadd double %232, %234, !dbg !357
  call void @fAddHandler(double %232, double %234, double %235, i64 94695446798712, i64 94695446800808, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94695446802480, i32 109, i32 28), !dbg !358
  %236 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %26, i32 0, i32 1, !dbg !358
  %237 = load double, double* %236, align 8, !dbg !358
  %238 = fadd double %235, %237, !dbg !359
  call void @fAddHandler(double %235, double %237, double %238, i64 94695446802480, i64 94695446803320, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94695446804992, i32 109, i32 38), !dbg !360
  %239 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !360
  %240 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %239, i32 0, i32 1, !dbg !361
  store double %238, double* %240, align 8, !dbg !362
  %241 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %24, i32 0, i32 0, !dbg !363
  %242 = load double, double* %241, align 8, !dbg !363
  %243 = call double @fabs(double %242) #1, !dbg !364
  %244 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %25, i32 0, i32 0, !dbg !365
  %245 = load double, double* %244, align 8, !dbg !365
  %246 = call double @fabs(double %245) #1, !dbg !366
  %247 = fadd double %243, %246, !dbg !368
  call void @fAddHandler(double %243, double %246, double %247, i64 94695446808816, i64 94695446811456, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94695446811936, i32 110, i32 59), !dbg !369
  %248 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %26, i32 0, i32 0, !dbg !369
  %249 = load double, double* %248, align 8, !dbg !369
  %250 = call double @fabs(double %249) #1, !dbg !370
  %251 = fadd double %247, %250, !dbg !372
  call void @fAddHandler(double %247, double %250, double %251, i64 94695446811936, i64 94695446814512, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94695446814992, i32 110, i32 75), !dbg !373
  %252 = fmul double 0x3CC0000000000000, %251, !dbg !373
  call void @fMulHandler(double 0x3CC0000000000000, double %251, double %252, i64 0, i64 94695446814992, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94695446815408, i32 110, i32 42), !dbg !374
  %253 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !374
  %254 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %253, i32 0, i32 1, !dbg !375
  %255 = load double, double* %254, align 8, !dbg !376
  %256 = fadd double %255, %252, !dbg !376
  call void @fAddHandler(double %255, double %252, double %256, i64 94695446816632, i64 94695446815408, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94695446817040, i32 110, i32 17), !dbg !376
  store double %256, double* %254, align 8, !dbg !376
  %257 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !377
  %258 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %257, i32 0, i32 0, !dbg !378
  %259 = load double, double* %258, align 8, !dbg !378
  %260 = call double @fabs(double %259) #1, !dbg !379
  %261 = fmul double 0x3CC0000000000000, %260, !dbg !380
  call void @fMulHandler(double 0x3CC0000000000000, double %260, double %261, i64 0, i64 94695446821392, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94695446821872, i32 111, i32 42), !dbg !381
  %262 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !381
  %263 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %262, i32 0, i32 1, !dbg !382
  %264 = load double, double* %263, align 8, !dbg !383
  %265 = fadd double %264, %261, !dbg !383
  call void @fAddHandler(double %264, double %261, double %265, i64 94695446823096, i64 94695446821872, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94695446823504, i32 111, i32 17), !dbg !383
  store double %265, double* %263, align 8, !dbg !383
  %266 = load i32, i32* %31, align 4, !dbg !384
  %267 = icmp ne i32 %266, 0, !dbg !384
  %268 = sext i32 %266 to i64, !dbg !384
  %269 = call i1 @iCmpInstHandler(i64 %268, i64 0, i1 %267, i32 33, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94695446717536, i32 112, i32 12), !dbg !384
  br i1 %269, label %270, label %272, !dbg !384

; <label>:270:                                    ; preds = %205
  %271 = load i32, i32* %31, align 4, !dbg !385
  br label %291, !dbg !385

; <label>:272:                                    ; preds = %205
  %273 = load i32, i32* %32, align 4, !dbg !386
  %274 = icmp ne i32 %273, 0, !dbg !386
  %275 = sext i32 %273 to i64, !dbg !386
  %276 = call i1 @iCmpInstHandler(i64 %275, i64 0, i1 %274, i32 33, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94695446832400, i32 112, i32 12), !dbg !386
  br i1 %276, label %277, label %279, !dbg !386

; <label>:277:                                    ; preds = %272
  %278 = load i32, i32* %32, align 4, !dbg !387
  br label %289, !dbg !387

; <label>:279:                                    ; preds = %272
  %280 = load i32, i32* %33, align 4, !dbg !389
  %281 = icmp ne i32 %280, 0, !dbg !389
  %282 = sext i32 %280 to i64, !dbg !389
  %283 = call i1 @iCmpInstHandler(i64 %282, i64 0, i1 %281, i32 33, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94695446836832, i32 112, i32 12), !dbg !389
  br i1 %283, label %284, label %286, !dbg !389

; <label>:284:                                    ; preds = %279
  %285 = load i32, i32* %33, align 4, !dbg !391
  br label %287, !dbg !391

; <label>:286:                                    ; preds = %279
  br label %287, !dbg !393

; <label>:287:                                    ; preds = %286, %284
  %288 = phi i32 [ %285, %284 ], [ 0, %286 ], !dbg !395
  br label %289, !dbg !395

; <label>:289:                                    ; preds = %287, %277
  %290 = phi i32 [ %278, %277 ], [ %288, %287 ], !dbg !397
  br label %291, !dbg !397

; <label>:291:                                    ; preds = %289, %270
  %292 = phi i32 [ %271, %270 ], [ %290, %289 ], !dbg !399
  store i32 %292, i32* %5, align 4, !dbg !401
  br label %293, !dbg !401

; <label>:293:                                    ; preds = %291, %107, %68, %48
  %294 = load i32, i32* %5, align 4, !dbg !402
  ret i32 %294, !dbg !402
}

declare void @gsl_error(i8*, i8*, i32, i32) #2

; Function Attrs: nounwind uwtable
define internal double @isnegint(double) #0 !dbg !403 {
  %2 = alloca double, align 8
  store double %0, double* %2, align 8
  call void @llvm.dbg.declare(metadata double* %2, metadata !406, metadata !60), !dbg !407
  %3 = load double, double* %2, align 8, !dbg !408
  %4 = fcmp olt double %3, 0.000000e+00, !dbg !409
  %5 = call i1 @fCmpInstHandler(double %3, double 0.000000e+00, i1 %4, i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94695446827760, i32 35, i32 13), !dbg !410
  br i1 %5, label %6, label %11, !dbg !410

; <label>:6:                                      ; preds = %1
  %7 = load double, double* %2, align 8, !dbg !411
  %8 = load double, double* %2, align 8, !dbg !413
  %9 = call double @floor(double %8) #1, !dbg !414
  %10 = fcmp oeq double %7, %9, !dbg !415
  br label %11

; <label>:11:                                     ; preds = %6, %1
  %12 = phi i1 [ false, %1 ], [ %10, %6 ]
  %13 = zext i1 %12 to i32, !dbg !416
  %14 = sitofp i32 %13 to double, !dbg !418
  ret double %14, !dbg !419
}

declare i32 @gsl_sf_gammastar_e(double, %struct.gsl_sf_result_struct*) #2

declare i32 @gsl_sf_log_1plusx_e(double, %struct.gsl_sf_result_struct*) #2

; Function Attrs: nounwind
declare double @log(double) #3

; Function Attrs: nounwind readnone
declare double @fabs(double) #4

declare i32 @gsl_sf_lngamma_sgn_e(double, %struct.gsl_sf_result_struct*, double*) #2

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_beta_e(double, double, %struct.gsl_sf_result_struct*) #0 !dbg !420 {
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca %struct.gsl_sf_result_struct*, align 8
  %8 = alloca %struct.gsl_sf_result_struct, align 8
  %9 = alloca %struct.gsl_sf_result_struct, align 8
  %10 = alloca %struct.gsl_sf_result_struct, align 8
  %11 = alloca %struct.gsl_sf_result_struct, align 8
  %12 = alloca double, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store double %0, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !421, metadata !60), !dbg !422
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !423, metadata !60), !dbg !424
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %7, metadata !425, metadata !60), !dbg !426
  %15 = load double, double* %5, align 8, !dbg !427
  %16 = fcmp ogt double %15, 0.000000e+00, !dbg !429
  %17 = call i1 @fCmpInstHandler(double %15, double 0.000000e+00, i1 %16, i32 2, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @7, i32 0, i32 0), i64 94695446860096, i32 120, i32 9), !dbg !430
  br i1 %17, label %18, label %101, !dbg !430

; <label>:18:                                     ; preds = %3
  %19 = load double, double* %6, align 8, !dbg !431
  %20 = fcmp ogt double %19, 0.000000e+00, !dbg !433
  %21 = call i1 @fCmpInstHandler(double %19, double 0.000000e+00, i1 %20, i32 2, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @7, i32 0, i32 0), i64 94695446861312, i32 120, i32 18), !dbg !434
  br i1 %21, label %22, label %101, !dbg !434

; <label>:22:                                     ; preds = %18
  %23 = load double, double* %5, align 8, !dbg !435
  %24 = fcmp olt double %23, 5.000000e+01, !dbg !437
  %25 = call i1 @fCmpInstHandler(double %23, double 5.000000e+01, i1 %24, i32 4, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @7, i32 0, i32 0), i64 94695446862624, i32 120, i32 28), !dbg !438
  br i1 %25, label %26, label %101, !dbg !438

; <label>:26:                                     ; preds = %22
  %27 = load double, double* %6, align 8, !dbg !439
  %28 = fcmp olt double %27, 5.000000e+01, !dbg !441
  %29 = call i1 @fCmpInstHandler(double %27, double 5.000000e+01, i1 %28, i32 4, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @7, i32 0, i32 0), i64 94695446863840, i32 120, i32 40), !dbg !442
  br i1 %29, label %30, label %101, !dbg !442

; <label>:30:                                     ; preds = %26
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %8, metadata !443, metadata !60), !dbg !445
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %9, metadata !446, metadata !60), !dbg !447
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %10, metadata !448, metadata !60), !dbg !449
  %31 = load double, double* %5, align 8, !dbg !450
  %32 = call i32 @gsl_sf_gamma_e(double %31, %struct.gsl_sf_result_struct* %8), !dbg !451
  %33 = load double, double* %6, align 8, !dbg !452
  %34 = call i32 @gsl_sf_gamma_e(double %33, %struct.gsl_sf_result_struct* %9), !dbg !453
  %35 = load double, double* %5, align 8, !dbg !454
  %36 = load double, double* %6, align 8, !dbg !455
  %37 = fadd double %35, %36, !dbg !456
  call void @fAddHandler(double %35, double %36, double %37, i64 94695446870008, i64 94695446870360, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @7, i32 0, i32 0), i64 94695446870768, i32 125, i32 21), !dbg !457
  %38 = call i32 @gsl_sf_gamma_e(double %37, %struct.gsl_sf_result_struct* %10), !dbg !457
  %39 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 0, !dbg !458
  %40 = load double, double* %39, align 8, !dbg !458
  %41 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %9, i32 0, i32 0, !dbg !459
  %42 = load double, double* %41, align 8, !dbg !459
  %43 = fmul double %40, %42, !dbg !460
  call void @fMulHandler(double %40, double %42, double %43, i64 94695446872136, i64 94695446874232, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @7, i32 0, i32 0), i64 94695446875904, i32 126, i32 27), !dbg !461
  %44 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !461
  %45 = load double, double* %44, align 8, !dbg !461
  %46 = fdiv double %43, %45, !dbg !462
  call void @fDivHandler(double %43, double %45, double %46, i64 94695446875904, i64 94695446876744, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @7, i32 0, i32 0), i64 94695446878416, i32 126, i32 35), !dbg !463
  %47 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !463
  %48 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %47, i32 0, i32 0, !dbg !464
  store double %46, double* %48, align 8, !dbg !465
  %49 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 1, !dbg !466
  %50 = load double, double* %49, align 8, !dbg !466
  %51 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %9, i32 0, i32 0, !dbg !467
  %52 = load double, double* %51, align 8, !dbg !467
  %53 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !468
  %54 = load double, double* %53, align 8, !dbg !468
  %55 = fdiv double %52, %54, !dbg !469
  call void @fDivHandler(double %52, double %54, double %55, i64 94695446882600, i64 94695446884696, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @7, i32 0, i32 0), i64 94695446886368, i32 127, i32 40), !dbg !470
  %56 = call double @fabs(double %55) #1, !dbg !470
  %57 = fmul double %50, %56, !dbg !471
  call void @fMulHandler(double %50, double %56, double %57, i64 94695446880504, i64 94695446886848, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @7, i32 0, i32 0), i64 94695446887328, i32 127, i32 27), !dbg !472
  %58 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !472
  %59 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %58, i32 0, i32 1, !dbg !473
  store double %57, double* %59, align 8, !dbg !474
  %60 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %9, i32 0, i32 1, !dbg !475
  %61 = load double, double* %60, align 8, !dbg !475
  %62 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 0, !dbg !476
  %63 = load double, double* %62, align 8, !dbg !476
  %64 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !477
  %65 = load double, double* %64, align 8, !dbg !477
  %66 = fdiv double %63, %65, !dbg !478
  call void @fDivHandler(double %63, double %65, double %66, i64 94695446891512, i64 94695446893608, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @7, i32 0, i32 0), i64 94695446895280, i32 128, i32 40), !dbg !479
  %67 = call double @fabs(double %66) #1, !dbg !479
  %68 = fmul double %61, %67, !dbg !480
  call void @fMulHandler(double %61, double %67, double %68, i64 94695446889416, i64 94695446895760, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @7, i32 0, i32 0), i64 94695446896240, i32 128, i32 27), !dbg !481
  %69 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !481
  %70 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %69, i32 0, i32 1, !dbg !482
  %71 = load double, double* %70, align 8, !dbg !483
  %72 = fadd double %71, %68, !dbg !483
  call void @fAddHandler(double %71, double %68, double %72, i64 94695446897464, i64 94695446896240, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @7, i32 0, i32 0), i64 94695446897872, i32 128, i32 17), !dbg !483
  store double %72, double* %70, align 8, !dbg !483
  %73 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 0, !dbg !484
  %74 = load double, double* %73, align 8, !dbg !484
  %75 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %9, i32 0, i32 0, !dbg !485
  %76 = load double, double* %75, align 8, !dbg !485
  %77 = fmul double %74, %76, !dbg !486
  call void @fMulHandler(double %74, double %76, double %77, i64 94695446900104, i64 94695446902200, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @7, i32 0, i32 0), i64 94695446903872, i32 129, i32 32), !dbg !487
  %78 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !487
  %79 = load double, double* %78, align 8, !dbg !487
  %80 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !488
  %81 = load double, double* %80, align 8, !dbg !488
  %82 = fmul double %79, %81, !dbg !489
  call void @fMulHandler(double %79, double %81, double %82, i64 94695446904712, i64 94695446906808, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @7, i32 0, i32 0), i64 94695446908480, i32 129, i32 49), !dbg !490
  %83 = fdiv double %77, %82, !dbg !490
  call void @fDivHandler(double %77, double %82, double %83, i64 94695446903872, i64 94695446908480, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @7, i32 0, i32 0), i64 94695446908896, i32 129, i32 40), !dbg !491
  %84 = call double @fabs(double %83) #1, !dbg !491
  %85 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 1, !dbg !492
  %86 = load double, double* %85, align 8, !dbg !492
  %87 = fmul double %84, %86, !dbg !493
  call void @fMulHandler(double %84, double %86, double %87, i64 94695446909376, i64 94695446910280, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @7, i32 0, i32 0), i64 94695446911952, i32 129, i32 60), !dbg !494
  %88 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !494
  %89 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %88, i32 0, i32 1, !dbg !495
  %90 = load double, double* %89, align 8, !dbg !496
  %91 = fadd double %90, %87, !dbg !496
  call void @fAddHandler(double %90, double %87, double %91, i64 94695446913176, i64 94695446911952, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @7, i32 0, i32 0), i64 94695446913584, i32 129, i32 17), !dbg !496
  store double %91, double* %89, align 8, !dbg !496
  %92 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !497
  %93 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %92, i32 0, i32 0, !dbg !498
  %94 = load double, double* %93, align 8, !dbg !498
  %95 = call double @fabs(double %94) #1, !dbg !499
  %96 = fmul double 0x3CC0000000000000, %95, !dbg !500
  call void @fMulHandler(double 0x3CC0000000000000, double %95, double %96, i64 0, i64 94695446917936, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @7, i32 0, i32 0), i64 94695446918416, i32 130, i32 42), !dbg !501
  %97 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !501
  %98 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %97, i32 0, i32 1, !dbg !502
  %99 = load double, double* %98, align 8, !dbg !503
  %100 = fadd double %99, %96, !dbg !503
  call void @fAddHandler(double %99, double %96, double %100, i64 94695446919640, i64 94695446918416, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @7, i32 0, i32 0), i64 94695446920048, i32 130, i32 17), !dbg !503
  store double %100, double* %98, align 8, !dbg !503
  store i32 0, i32* %4, align 4, !dbg !504
  br label %160, !dbg !504

; <label>:101:                                    ; preds = %26, %22, %18, %3
  %102 = load double, double* %5, align 8, !dbg !505
  %103 = call double @isnegint(double %102), !dbg !507
  %104 = fcmp une double %103, 0.000000e+00, !dbg !507
  %105 = call i1 @fCmpInstHandler(double %103, double 0.000000e+00, i1 %104, i32 14, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @7, i32 0, i32 0), i64 94695446924896, i32 133, i32 12), !dbg !508
  br i1 %105, label %111, label %106, !dbg !508

; <label>:106:                                    ; preds = %101
  %107 = load double, double* %6, align 8, !dbg !509
  %108 = call double @isnegint(double %107), !dbg !511
  %109 = fcmp une double %108, 0.000000e+00, !dbg !511
  %110 = call i1 @fCmpInstHandler(double %108, double 0.000000e+00, i1 %109, i32 14, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @7, i32 0, i32 0), i64 94695446928128, i32 133, i32 27), !dbg !512
  br i1 %110, label %111, label %120, !dbg !512

; <label>:111:                                    ; preds = %106, %101
  br label %112, !dbg !513, !llvm.loop !515

; <label>:112:                                    ; preds = %111
  %113 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !516
  %114 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %113, i32 0, i32 0, !dbg !516
  store double 0x7FF8000000000000, double* %114, align 8, !dbg !516
  %115 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !516
  %116 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %115, i32 0, i32 1, !dbg !516
  store double 0x7FF8000000000000, double* %116, align 8, !dbg !516
  br label %117, !dbg !516, !llvm.loop !519

; <label>:117:                                    ; preds = %112
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 134, i32 1), !dbg !521
  store i32 1, i32* %4, align 4, !dbg !521
  br label %160, !dbg !521
                                                  ; No predecessors!
  br label %119, !dbg !524

; <label>:119:                                    ; preds = %118
  br label %159, !dbg !526

; <label>:120:                                    ; preds = %106
  %121 = load double, double* %5, align 8, !dbg !527
  %122 = load double, double* %6, align 8, !dbg !530
  %123 = fadd double %121, %122, !dbg !531
  call void @fAddHandler(double %121, double %122, double %123, i64 94695446937656, i64 94695446937976, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @7, i32 0, i32 0), i64 94695446938384, i32 135, i32 24), !dbg !532
  %124 = call double @isnegint(double %123), !dbg !532
  %125 = fcmp une double %124, 0.000000e+00, !dbg !532
  %126 = call i1 @fCmpInstHandler(double %124, double 0.000000e+00, i1 %125, i32 14, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @7, i32 0, i32 0), i64 94695446939312, i32 135, i32 14), !dbg !532
  br i1 %126, label %127, label %132, !dbg !532

; <label>:127:                                    ; preds = %120
  %128 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !533
  %129 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %128, i32 0, i32 0, !dbg !535
  store double 0.000000e+00, double* %129, align 8, !dbg !536
  %130 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !537
  %131 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %130, i32 0, i32 1, !dbg !538
  store double 0.000000e+00, double* %131, align 8, !dbg !539
  store i32 0, i32* %4, align 4, !dbg !540
  br label %160, !dbg !540

; <label>:132:                                    ; preds = %120
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %11, metadata !541, metadata !60), !dbg !543
  call void @llvm.dbg.declare(metadata double* %12, metadata !544, metadata !60), !dbg !545
  call void @llvm.dbg.declare(metadata i32* %13, metadata !546, metadata !60), !dbg !547
  %133 = load double, double* %5, align 8, !dbg !548
  %134 = load double, double* %6, align 8, !dbg !549
  %135 = call i32 @gsl_sf_lnbeta_sgn_e(double %133, double %134, %struct.gsl_sf_result_struct* %11, double* %12), !dbg !550
  store i32 %135, i32* %13, align 4, !dbg !547
  %136 = load i32, i32* %13, align 4, !dbg !551
  %137 = icmp eq i32 %136, 0, !dbg !553
  %138 = sext i32 %136 to i64, !dbg !554
  %139 = call i1 @iCmpInstHandler(i64 %138, i64 0, i1 %137, i32 32, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @7, i32 0, i32 0), i64 94695446954640, i32 143, i32 16), !dbg !554
  br i1 %139, label %140, label %153, !dbg !554

; <label>:140:                                    ; preds = %132
  call void @llvm.dbg.declare(metadata i32* %14, metadata !555, metadata !60), !dbg !557
  %141 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 0, !dbg !558
  %142 = load double, double* %141, align 8, !dbg !558
  %143 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 1, !dbg !559
  %144 = load double, double* %143, align 8, !dbg !559
  %145 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !560
  %146 = call i32 @gsl_sf_exp_err_e(double %142, double %144, %struct.gsl_sf_result_struct* %145), !dbg !561
  store i32 %146, i32* %14, align 4, !dbg !557
  %147 = load double, double* %12, align 8, !dbg !562
  %148 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !563
  %149 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %148, i32 0, i32 0, !dbg !564
  %150 = load double, double* %149, align 8, !dbg !565
  %151 = fmul double %150, %147, !dbg !565
  call void @fMulHandler(double %150, double %147, double %151, i64 94695446965160, i64 94695446963944, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @7, i32 0, i32 0), i64 94695446965568, i32 145, i32 19), !dbg !565
  store double %151, double* %149, align 8, !dbg !565
  %152 = load i32, i32* %14, align 4, !dbg !566
  store i32 %152, i32* %4, align 4, !dbg !567
  br label %160, !dbg !567

; <label>:153:                                    ; preds = %132
  %154 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !568
  %155 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %154, i32 0, i32 0, !dbg !570
  store double 0.000000e+00, double* %155, align 8, !dbg !571
  %156 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !572
  %157 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %156, i32 0, i32 1, !dbg !573
  store double 0.000000e+00, double* %157, align 8, !dbg !574
  %158 = load i32, i32* %13, align 4, !dbg !575
  store i32 %158, i32* %4, align 4, !dbg !576
  br label %160, !dbg !576

; <label>:159:                                    ; preds = %119
  br label %160

; <label>:160:                                    ; preds = %159, %153, %140, %127, %117, %30
  %161 = load i32, i32* %4, align 4, !dbg !577
  ret i32 %161, !dbg !577
}

declare i32 @gsl_sf_gamma_e(double, %struct.gsl_sf_result_struct*) #2

declare i32 @gsl_sf_exp_err_e(double, double, %struct.gsl_sf_result_struct*) #2

; Function Attrs: nounwind uwtable
define double @gsl_sf_lnbeta(double, double) #0 !dbg !578 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca %struct.gsl_sf_result_struct, align 8
  %7 = alloca i32, align 4
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !581, metadata !60), !dbg !582
  store double %1, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !583, metadata !60), !dbg !584
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %6, metadata !585, metadata !60), !dbg !586
  call void @llvm.dbg.declare(metadata i32* %7, metadata !587, metadata !60), !dbg !586
  %8 = load double, double* %4, align 8, !dbg !586
  %9 = load double, double* %5, align 8, !dbg !586
  %10 = call i32 @gsl_sf_lnbeta_e(double %8, double %9, %struct.gsl_sf_result_struct* %6), !dbg !586
  store i32 %10, i32* %7, align 4, !dbg !586
  %11 = load i32, i32* %7, align 4, !dbg !588
  %12 = icmp ne i32 %11, 0, !dbg !588
  %13 = sext i32 %11 to i64, !dbg !586
  %14 = call i1 @iCmpInstHandler(i64 %13, i64 0, i1 %12, i32 33, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @9, i32 0, i32 0), i64 94695446764720, i32 163, i32 3), !dbg !586
  br i1 %14, label %15, label %21, !dbg !586

; <label>:15:                                     ; preds = %2
  br label %16, !dbg !590, !llvm.loop !593

; <label>:16:                                     ; preds = %15
  %17 = load i32, i32* %7, align 4, !dbg !595
  call void @gsl_error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 163, i32 %17), !dbg !595
  %18 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !595
  %19 = load double, double* %18, align 8, !dbg !595
  store double %19, double* %3, align 8, !dbg !595
  br label %24, !dbg !595
                                                  ; No predecessors!
  br label %21, !dbg !598

; <label>:21:                                     ; preds = %20, %2
  %22 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !600
  %23 = load double, double* %22, align 8, !dbg !600
  store double %23, double* %3, align 8, !dbg !600
  br label %24, !dbg !600

; <label>:24:                                     ; preds = %21, %16
  %25 = load double, double* %3, align 8, !dbg !602
  ret double %25, !dbg !602
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_beta(double, double) #0 !dbg !603 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca %struct.gsl_sf_result_struct, align 8
  %7 = alloca i32, align 4
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !604, metadata !60), !dbg !605
  store double %1, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !606, metadata !60), !dbg !607
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %6, metadata !608, metadata !60), !dbg !609
  call void @llvm.dbg.declare(metadata i32* %7, metadata !610, metadata !60), !dbg !609
  %8 = load double, double* %4, align 8, !dbg !609
  %9 = load double, double* %5, align 8, !dbg !609
  %10 = call i32 @gsl_sf_beta_e(double %8, double %9, %struct.gsl_sf_result_struct* %6), !dbg !609
  store i32 %10, i32* %7, align 4, !dbg !609
  %11 = load i32, i32* %7, align 4, !dbg !611
  %12 = icmp ne i32 %11, 0, !dbg !611
  %13 = sext i32 %11 to i64, !dbg !609
  %14 = call i1 @iCmpInstHandler(i64 %13, i64 0, i1 %12, i32 33, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @11, i32 0, i32 0), i64 94695447006416, i32 168, i32 3), !dbg !609
  br i1 %14, label %15, label %21, !dbg !609

; <label>:15:                                     ; preds = %2
  br label %16, !dbg !613, !llvm.loop !616

; <label>:16:                                     ; preds = %15
  %17 = load i32, i32* %7, align 4, !dbg !618
  call void @gsl_error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 168, i32 %17), !dbg !618
  %18 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !618
  %19 = load double, double* %18, align 8, !dbg !618
  store double %19, double* %3, align 8, !dbg !618
  br label %24, !dbg !618
                                                  ; No predecessors!
  br label %21, !dbg !621

; <label>:21:                                     ; preds = %20, %2
  %22 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !623
  %23 = load double, double* %22, align 8, !dbg !623
  store double %23, double* %3, align 8, !dbg !623
  br label %24, !dbg !623

; <label>:24:                                     ; preds = %21, %16
  %25 = load double, double* %3, align 8, !dbg !625
  ret double %25, !dbg !625
}

; Function Attrs: nounwind readnone
declare double @floor(double) #4

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
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!41, !42, !43}
!llvm.ident = !{!44}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "beta.c", directory: "/fpcc/gsl-2.5/specfunc")
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
!45 = distinct !DISubprogram(name: "gsl_sf_lnbeta_e", scope: !1, file: !1, line: 39, type: !46, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!46 = !DISubroutineType(types: !47)
!47 = !{!48, !49, !49, !51}
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
!59 = !DILocalVariable(name: "x", arg: 1, scope: !45, file: !1, line: 39, type: !49)
!60 = !DIExpression()
!61 = !DILocation(line: 39, column: 30, scope: !45)
!62 = !DILocalVariable(name: "y", arg: 2, scope: !45, file: !1, line: 39, type: !49)
!63 = !DILocation(line: 39, column: 46, scope: !45)
!64 = !DILocalVariable(name: "result", arg: 3, scope: !45, file: !1, line: 39, type: !51)
!65 = !DILocation(line: 39, column: 65, scope: !45)
!66 = !DILocalVariable(name: "sgn", scope: !45, file: !1, line: 41, type: !50)
!67 = !DILocation(line: 41, column: 10, scope: !45)
!68 = !DILocalVariable(name: "status", scope: !45, file: !1, line: 42, type: !48)
!69 = !DILocation(line: 42, column: 7, scope: !45)
!70 = !DILocation(line: 42, column: 36, scope: !45)
!71 = !DILocation(line: 42, column: 38, scope: !45)
!72 = !DILocation(line: 42, column: 40, scope: !45)
!73 = !DILocation(line: 42, column: 16, scope: !45)
!74 = !DILocation(line: 43, column: 7, scope: !75)
!75 = distinct !DILexicalBlock(scope: !45, file: !1, line: 43, column: 7)
!76 = !DILocation(line: 43, column: 11, scope: !75)
!77 = !DILocation(line: 43, column: 7, scope: !45)
!78 = !DILocation(line: 44, column: 5, scope: !79)
!79 = distinct !DILexicalBlock(scope: !75, file: !1, line: 43, column: 18)
!80 = distinct !{!80, !78}
!81 = !DILocation(line: 44, column: 5, scope: !82)
!82 = !DILexicalBlockFile(scope: !83, file: !1, discriminator: 1)
!83 = distinct !DILexicalBlock(scope: !79, file: !1, line: 44, column: 5)
!84 = distinct !{!84, !85}
!85 = !DILocation(line: 44, column: 5, scope: !83)
!86 = !DILocation(line: 44, column: 5, scope: !87)
!87 = !DILexicalBlockFile(scope: !88, file: !1, discriminator: 2)
!88 = distinct !DILexicalBlock(scope: !83, file: !1, line: 44, column: 5)
!89 = !DILocation(line: 44, column: 5, scope: !90)
!90 = !DILexicalBlockFile(scope: !83, file: !1, discriminator: 3)
!91 = !DILocation(line: 45, column: 3, scope: !79)
!92 = !DILocation(line: 46, column: 10, scope: !45)
!93 = !DILocation(line: 46, column: 3, scope: !45)
!94 = !DILocation(line: 47, column: 1, scope: !45)
!95 = distinct !DISubprogram(name: "gsl_sf_lnbeta_sgn_e", scope: !1, file: !1, line: 50, type: !96, isLocal: false, isDefinition: true, scopeLine: 51, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!96 = !DISubroutineType(types: !97)
!97 = !{!48, !49, !49, !51, !98}
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64, align: 64)
!99 = !DILocalVariable(name: "x", arg: 1, scope: !95, file: !1, line: 50, type: !49)
!100 = !DILocation(line: 50, column: 34, scope: !95)
!101 = !DILocalVariable(name: "y", arg: 2, scope: !95, file: !1, line: 50, type: !49)
!102 = !DILocation(line: 50, column: 50, scope: !95)
!103 = !DILocalVariable(name: "result", arg: 3, scope: !95, file: !1, line: 50, type: !51)
!104 = !DILocation(line: 50, column: 69, scope: !95)
!105 = !DILocalVariable(name: "sgn", arg: 4, scope: !95, file: !1, line: 50, type: !98)
!106 = !DILocation(line: 50, column: 86, scope: !95)
!107 = !DILocation(line: 54, column: 6, scope: !108)
!108 = distinct !DILexicalBlock(scope: !95, file: !1, line: 54, column: 6)
!109 = !DILocation(line: 54, column: 8, scope: !108)
!110 = !DILocation(line: 54, column: 15, scope: !108)
!111 = !DILocation(line: 54, column: 18, scope: !112)
!112 = !DILexicalBlockFile(scope: !108, file: !1, discriminator: 1)
!113 = !DILocation(line: 54, column: 20, scope: !112)
!114 = !DILocation(line: 54, column: 6, scope: !112)
!115 = !DILocation(line: 55, column: 6, scope: !116)
!116 = distinct !DILexicalBlock(scope: !108, file: !1, line: 54, column: 28)
!117 = !DILocation(line: 55, column: 10, scope: !116)
!118 = !DILocation(line: 56, column: 5, scope: !116)
!119 = distinct !{!119, !118}
!120 = !DILocation(line: 56, column: 5, scope: !121)
!121 = !DILexicalBlockFile(scope: !122, file: !1, discriminator: 1)
!122 = distinct !DILexicalBlock(scope: !116, file: !1, line: 56, column: 5)
!123 = distinct !{!123, !124}
!124 = !DILocation(line: 56, column: 5, scope: !122)
!125 = !DILocation(line: 56, column: 5, scope: !126)
!126 = !DILexicalBlockFile(scope: !127, file: !1, discriminator: 2)
!127 = distinct !DILexicalBlock(scope: !122, file: !1, line: 56, column: 5)
!128 = !DILocation(line: 56, column: 5, scope: !129)
!129 = !DILexicalBlockFile(scope: !122, file: !1, discriminator: 3)
!130 = !DILocation(line: 57, column: 3, scope: !116)
!131 = !DILocation(line: 57, column: 23, scope: !132)
!132 = !DILexicalBlockFile(scope: !133, file: !1, discriminator: 1)
!133 = distinct !DILexicalBlock(scope: !108, file: !1, line: 57, column: 14)
!134 = !DILocation(line: 57, column: 14, scope: !132)
!135 = !DILocation(line: 57, column: 26, scope: !132)
!136 = !DILocation(line: 57, column: 38, scope: !137)
!137 = !DILexicalBlockFile(scope: !133, file: !1, discriminator: 2)
!138 = !DILocation(line: 57, column: 29, scope: !137)
!139 = !DILocation(line: 57, column: 14, scope: !137)
!140 = !DILocation(line: 58, column: 6, scope: !141)
!141 = distinct !DILexicalBlock(scope: !133, file: !1, line: 57, column: 42)
!142 = !DILocation(line: 58, column: 10, scope: !141)
!143 = !DILocation(line: 59, column: 5, scope: !141)
!144 = distinct !{!144, !143}
!145 = !DILocation(line: 59, column: 5, scope: !146)
!146 = !DILexicalBlockFile(scope: !147, file: !1, discriminator: 1)
!147 = distinct !DILexicalBlock(scope: !141, file: !1, line: 59, column: 5)
!148 = distinct !{!148, !149}
!149 = !DILocation(line: 59, column: 5, scope: !147)
!150 = !DILocation(line: 59, column: 5, scope: !151)
!151 = !DILexicalBlockFile(scope: !152, file: !1, discriminator: 2)
!152 = distinct !DILexicalBlock(scope: !147, file: !1, line: 59, column: 5)
!153 = !DILocation(line: 59, column: 5, scope: !154)
!154 = !DILexicalBlockFile(scope: !147, file: !1, discriminator: 3)
!155 = !DILocation(line: 60, column: 3, scope: !141)
!156 = !DILocation(line: 64, column: 7, scope: !157)
!157 = distinct !DILexicalBlock(scope: !95, file: !1, line: 64, column: 7)
!158 = !DILocation(line: 64, column: 9, scope: !157)
!159 = !DILocation(line: 64, column: 13, scope: !157)
!160 = !DILocation(line: 64, column: 16, scope: !161)
!161 = !DILexicalBlockFile(scope: !157, file: !1, discriminator: 1)
!162 = !DILocation(line: 64, column: 18, scope: !161)
!163 = !DILocation(line: 64, column: 7, scope: !161)
!164 = !DILocalVariable(name: "max", scope: !165, file: !1, line: 65, type: !49)
!165 = distinct !DILexicalBlock(scope: !157, file: !1, line: 64, column: 23)
!166 = !DILocation(line: 65, column: 18, scope: !165)
!167 = !DILocation(line: 65, column: 24, scope: !165)
!168 = !DILocation(line: 65, column: 24, scope: !169)
!169 = !DILexicalBlockFile(scope: !165, file: !1, discriminator: 1)
!170 = !DILocation(line: 65, column: 24, scope: !171)
!171 = !DILexicalBlockFile(scope: !165, file: !1, discriminator: 2)
!172 = !DILocation(line: 65, column: 24, scope: !173)
!173 = !DILexicalBlockFile(scope: !165, file: !1, discriminator: 3)
!174 = !DILocation(line: 65, column: 18, scope: !173)
!175 = !DILocalVariable(name: "min", scope: !165, file: !1, line: 66, type: !49)
!176 = !DILocation(line: 66, column: 18, scope: !165)
!177 = !DILocation(line: 66, column: 24, scope: !165)
!178 = !DILocation(line: 66, column: 24, scope: !169)
!179 = !DILocation(line: 66, column: 24, scope: !171)
!180 = !DILocation(line: 66, column: 24, scope: !173)
!181 = !DILocation(line: 66, column: 18, scope: !173)
!182 = !DILocalVariable(name: "rat", scope: !165, file: !1, line: 67, type: !49)
!183 = !DILocation(line: 67, column: 18, scope: !165)
!184 = !DILocation(line: 67, column: 24, scope: !165)
!185 = !DILocation(line: 67, column: 28, scope: !165)
!186 = !DILocation(line: 67, column: 27, scope: !165)
!187 = !DILocation(line: 69, column: 8, scope: !188)
!188 = distinct !DILexicalBlock(scope: !165, file: !1, line: 69, column: 8)
!189 = !DILocation(line: 69, column: 12, scope: !188)
!190 = !DILocation(line: 69, column: 8, scope: !165)
!191 = !DILocalVariable(name: "lnpre_val", scope: !192, file: !1, line: 73, type: !50)
!192 = distinct !DILexicalBlock(scope: !188, file: !1, line: 69, column: 19)
!193 = !DILocation(line: 73, column: 14, scope: !192)
!194 = !DILocalVariable(name: "lnpre_err", scope: !192, file: !1, line: 74, type: !50)
!195 = !DILocation(line: 74, column: 14, scope: !192)
!196 = !DILocalVariable(name: "lnpow_val", scope: !192, file: !1, line: 75, type: !50)
!197 = !DILocation(line: 75, column: 14, scope: !192)
!198 = !DILocalVariable(name: "lnpow_err", scope: !192, file: !1, line: 76, type: !50)
!199 = !DILocation(line: 76, column: 14, scope: !192)
!200 = !DILocalVariable(name: "t1", scope: !192, file: !1, line: 77, type: !50)
!201 = !DILocation(line: 77, column: 14, scope: !192)
!202 = !DILocalVariable(name: "t2", scope: !192, file: !1, line: 77, type: !50)
!203 = !DILocation(line: 77, column: 18, scope: !192)
!204 = !DILocalVariable(name: "t3", scope: !192, file: !1, line: 77, type: !50)
!205 = !DILocation(line: 77, column: 22, scope: !192)
!206 = !DILocalVariable(name: "lnopr", scope: !192, file: !1, line: 78, type: !52)
!207 = !DILocation(line: 78, column: 21, scope: !192)
!208 = !DILocalVariable(name: "gsx", scope: !192, file: !1, line: 79, type: !52)
!209 = !DILocation(line: 79, column: 21, scope: !192)
!210 = !DILocalVariable(name: "gsy", scope: !192, file: !1, line: 79, type: !52)
!211 = !DILocation(line: 79, column: 26, scope: !192)
!212 = !DILocalVariable(name: "gsxy", scope: !192, file: !1, line: 79, type: !52)
!213 = !DILocation(line: 79, column: 31, scope: !192)
!214 = !DILocation(line: 80, column: 26, scope: !192)
!215 = !DILocation(line: 80, column: 7, scope: !192)
!216 = !DILocation(line: 81, column: 26, scope: !192)
!217 = !DILocation(line: 81, column: 7, scope: !192)
!218 = !DILocation(line: 82, column: 26, scope: !192)
!219 = !DILocation(line: 82, column: 28, scope: !192)
!220 = !DILocation(line: 82, column: 27, scope: !192)
!221 = !DILocation(line: 82, column: 7, scope: !192)
!222 = !DILocation(line: 83, column: 27, scope: !192)
!223 = !DILocation(line: 83, column: 7, scope: !192)
!224 = !DILocation(line: 84, column: 27, scope: !192)
!225 = !DILocation(line: 84, column: 35, scope: !192)
!226 = !DILocation(line: 84, column: 30, scope: !192)
!227 = !DILocation(line: 84, column: 44, scope: !192)
!228 = !DILocation(line: 84, column: 38, scope: !192)
!229 = !DILocation(line: 84, column: 48, scope: !192)
!230 = !DILocation(line: 84, column: 57, scope: !192)
!231 = !DILocation(line: 84, column: 19, scope: !192)
!232 = !DILocation(line: 84, column: 17, scope: !192)
!233 = !DILocation(line: 85, column: 23, scope: !192)
!234 = !DILocation(line: 85, column: 31, scope: !192)
!235 = !DILocation(line: 85, column: 26, scope: !192)
!236 = !DILocation(line: 85, column: 41, scope: !192)
!237 = !DILocation(line: 85, column: 49, scope: !192)
!238 = !DILocation(line: 85, column: 44, scope: !192)
!239 = !DILocation(line: 85, column: 35, scope: !192)
!240 = !DILocation(line: 85, column: 60, scope: !192)
!241 = !DILocation(line: 85, column: 69, scope: !192)
!242 = !DILocation(line: 85, column: 63, scope: !192)
!243 = !DILocation(line: 85, column: 53, scope: !192)
!244 = !DILocation(line: 85, column: 17, scope: !192)
!245 = !DILocation(line: 86, column: 12, scope: !192)
!246 = !DILocation(line: 86, column: 20, scope: !192)
!247 = !DILocation(line: 86, column: 16, scope: !192)
!248 = !DILocation(line: 86, column: 15, scope: !192)
!249 = !DILocation(line: 86, column: 10, scope: !192)
!250 = !DILocation(line: 87, column: 20, scope: !192)
!251 = !DILocation(line: 87, column: 16, scope: !192)
!252 = !DILocation(line: 87, column: 15, scope: !192)
!253 = !DILocation(line: 87, column: 10, scope: !192)
!254 = !DILocation(line: 88, column: 13, scope: !192)
!255 = !DILocation(line: 88, column: 15, scope: !192)
!256 = !DILocation(line: 88, column: 14, scope: !192)
!257 = !DILocation(line: 88, column: 16, scope: !192)
!258 = !DILocation(line: 88, column: 28, scope: !192)
!259 = !DILocation(line: 88, column: 21, scope: !192)
!260 = !DILocation(line: 88, column: 10, scope: !192)
!261 = !DILocation(line: 89, column: 20, scope: !192)
!262 = !DILocation(line: 89, column: 25, scope: !192)
!263 = !DILocation(line: 89, column: 23, scope: !192)
!264 = !DILocation(line: 89, column: 30, scope: !192)
!265 = !DILocation(line: 89, column: 28, scope: !192)
!266 = !DILocation(line: 89, column: 18, scope: !192)
!267 = !DILocation(line: 90, column: 44, scope: !192)
!268 = !DILocation(line: 90, column: 39, scope: !192)
!269 = !DILocation(line: 90, column: 55, scope: !192)
!270 = !DILocation(line: 90, column: 50, scope: !271)
!271 = !DILexicalBlockFile(scope: !192, file: !1, discriminator: 1)
!272 = !DILocation(line: 90, column: 48, scope: !192)
!273 = !DILocation(line: 90, column: 66, scope: !192)
!274 = !DILocation(line: 90, column: 61, scope: !275)
!275 = !DILexicalBlockFile(scope: !192, file: !1, discriminator: 2)
!276 = !DILocation(line: 90, column: 59, scope: !192)
!277 = !DILocation(line: 90, column: 36, scope: !192)
!278 = !DILocation(line: 90, column: 18, scope: !192)
!279 = !DILocation(line: 91, column: 25, scope: !192)
!280 = !DILocation(line: 91, column: 27, scope: !192)
!281 = !DILocation(line: 91, column: 26, scope: !192)
!282 = !DILocation(line: 91, column: 28, scope: !192)
!283 = !DILocation(line: 91, column: 20, scope: !192)
!284 = !DILocation(line: 91, column: 42, scope: !192)
!285 = !DILocation(line: 91, column: 34, scope: !192)
!286 = !DILocation(line: 91, column: 17, scope: !192)
!287 = !DILocation(line: 92, column: 22, scope: !192)
!288 = !DILocation(line: 92, column: 34, scope: !192)
!289 = !DILocation(line: 92, column: 32, scope: !192)
!290 = !DILocation(line: 92, column: 7, scope: !192)
!291 = !DILocation(line: 92, column: 15, scope: !192)
!292 = !DILocation(line: 92, column: 20, scope: !192)
!293 = !DILocation(line: 93, column: 22, scope: !192)
!294 = !DILocation(line: 93, column: 34, scope: !192)
!295 = !DILocation(line: 93, column: 32, scope: !192)
!296 = !DILocation(line: 93, column: 7, scope: !192)
!297 = !DILocation(line: 93, column: 15, scope: !192)
!298 = !DILocation(line: 93, column: 20, scope: !192)
!299 = !DILocation(line: 94, column: 51, scope: !192)
!300 = !DILocation(line: 94, column: 59, scope: !192)
!301 = !DILocation(line: 94, column: 46, scope: !192)
!302 = !DILocation(line: 94, column: 44, scope: !192)
!303 = !DILocation(line: 94, column: 7, scope: !192)
!304 = !DILocation(line: 94, column: 15, scope: !192)
!305 = !DILocation(line: 94, column: 19, scope: !192)
!306 = !DILocation(line: 95, column: 8, scope: !192)
!307 = !DILocation(line: 95, column: 12, scope: !192)
!308 = !DILocation(line: 96, column: 7, scope: !192)
!309 = !DILocation(line: 98, column: 3, scope: !165)
!310 = !DILocalVariable(name: "lgx", scope: !311, file: !1, line: 102, type: !52)
!311 = distinct !DILexicalBlock(scope: !95, file: !1, line: 101, column: 3)
!312 = !DILocation(line: 102, column: 19, scope: !311)
!313 = !DILocalVariable(name: "lgy", scope: !311, file: !1, line: 102, type: !52)
!314 = !DILocation(line: 102, column: 24, scope: !311)
!315 = !DILocalVariable(name: "lgxy", scope: !311, file: !1, line: 102, type: !52)
!316 = !DILocation(line: 102, column: 29, scope: !311)
!317 = !DILocalVariable(name: "sgx", scope: !311, file: !1, line: 103, type: !50)
!318 = !DILocation(line: 103, column: 12, scope: !311)
!319 = !DILocalVariable(name: "sgy", scope: !311, file: !1, line: 103, type: !50)
!320 = !DILocation(line: 103, column: 17, scope: !311)
!321 = !DILocalVariable(name: "sgxy", scope: !311, file: !1, line: 103, type: !50)
!322 = !DILocation(line: 103, column: 22, scope: !311)
!323 = !DILocalVariable(name: "xy", scope: !311, file: !1, line: 103, type: !50)
!324 = !DILocation(line: 103, column: 28, scope: !311)
!325 = !DILocation(line: 103, column: 33, scope: !311)
!326 = !DILocation(line: 103, column: 35, scope: !311)
!327 = !DILocation(line: 103, column: 34, scope: !311)
!328 = !DILocalVariable(name: "stat_gx", scope: !311, file: !1, line: 104, type: !48)
!329 = !DILocation(line: 104, column: 9, scope: !311)
!330 = !DILocation(line: 104, column: 41, scope: !311)
!331 = !DILocation(line: 104, column: 20, scope: !311)
!332 = !DILocalVariable(name: "stat_gy", scope: !311, file: !1, line: 105, type: !48)
!333 = !DILocation(line: 105, column: 9, scope: !311)
!334 = !DILocation(line: 105, column: 41, scope: !311)
!335 = !DILocation(line: 105, column: 20, scope: !311)
!336 = !DILocalVariable(name: "stat_gxy", scope: !311, file: !1, line: 106, type: !48)
!337 = !DILocation(line: 106, column: 9, scope: !311)
!338 = !DILocation(line: 106, column: 41, scope: !311)
!339 = !DILocation(line: 106, column: 20, scope: !311)
!340 = !DILocation(line: 107, column: 12, scope: !311)
!341 = !DILocation(line: 107, column: 18, scope: !311)
!342 = !DILocation(line: 107, column: 16, scope: !311)
!343 = !DILocation(line: 107, column: 24, scope: !311)
!344 = !DILocation(line: 107, column: 22, scope: !311)
!345 = !DILocation(line: 107, column: 6, scope: !311)
!346 = !DILocation(line: 107, column: 10, scope: !311)
!347 = !DILocation(line: 108, column: 24, scope: !311)
!348 = !DILocation(line: 108, column: 34, scope: !311)
!349 = !DILocation(line: 108, column: 28, scope: !311)
!350 = !DILocation(line: 108, column: 45, scope: !311)
!351 = !DILocation(line: 108, column: 38, scope: !311)
!352 = !DILocation(line: 108, column: 5, scope: !311)
!353 = !DILocation(line: 108, column: 13, scope: !311)
!354 = !DILocation(line: 108, column: 18, scope: !311)
!355 = !DILocation(line: 109, column: 24, scope: !311)
!356 = !DILocation(line: 109, column: 34, scope: !311)
!357 = !DILocation(line: 109, column: 28, scope: !311)
!358 = !DILocation(line: 109, column: 45, scope: !311)
!359 = !DILocation(line: 109, column: 38, scope: !311)
!360 = !DILocation(line: 109, column: 5, scope: !311)
!361 = !DILocation(line: 109, column: 13, scope: !311)
!362 = !DILocation(line: 109, column: 18, scope: !311)
!363 = !DILocation(line: 110, column: 54, scope: !311)
!364 = !DILocation(line: 110, column: 45, scope: !311)
!365 = !DILocation(line: 110, column: 70, scope: !311)
!366 = !DILocation(line: 110, column: 61, scope: !367)
!367 = !DILexicalBlockFile(scope: !311, file: !1, discriminator: 1)
!368 = !DILocation(line: 110, column: 59, scope: !311)
!369 = !DILocation(line: 110, column: 87, scope: !311)
!370 = !DILocation(line: 110, column: 77, scope: !371)
!371 = !DILexicalBlockFile(scope: !311, file: !1, discriminator: 2)
!372 = !DILocation(line: 110, column: 75, scope: !311)
!373 = !DILocation(line: 110, column: 42, scope: !311)
!374 = !DILocation(line: 110, column: 5, scope: !311)
!375 = !DILocation(line: 110, column: 13, scope: !311)
!376 = !DILocation(line: 110, column: 17, scope: !311)
!377 = !DILocation(line: 111, column: 49, scope: !311)
!378 = !DILocation(line: 111, column: 57, scope: !311)
!379 = !DILocation(line: 111, column: 44, scope: !311)
!380 = !DILocation(line: 111, column: 42, scope: !311)
!381 = !DILocation(line: 111, column: 5, scope: !311)
!382 = !DILocation(line: 111, column: 13, scope: !311)
!383 = !DILocation(line: 111, column: 17, scope: !311)
!384 = !DILocation(line: 112, column: 12, scope: !311)
!385 = !DILocation(line: 112, column: 12, scope: !367)
!386 = !DILocation(line: 112, column: 12, scope: !371)
!387 = !DILocation(line: 112, column: 12, scope: !388)
!388 = !DILexicalBlockFile(scope: !311, file: !1, discriminator: 3)
!389 = !DILocation(line: 112, column: 12, scope: !390)
!390 = !DILexicalBlockFile(scope: !311, file: !1, discriminator: 4)
!391 = !DILocation(line: 112, column: 12, scope: !392)
!392 = !DILexicalBlockFile(scope: !311, file: !1, discriminator: 5)
!393 = !DILocation(line: 112, column: 12, scope: !394)
!394 = !DILexicalBlockFile(scope: !311, file: !1, discriminator: 6)
!395 = !DILocation(line: 112, column: 12, scope: !396)
!396 = !DILexicalBlockFile(scope: !311, file: !1, discriminator: 7)
!397 = !DILocation(line: 112, column: 12, scope: !398)
!398 = !DILexicalBlockFile(scope: !311, file: !1, discriminator: 8)
!399 = !DILocation(line: 112, column: 12, scope: !400)
!400 = !DILexicalBlockFile(scope: !311, file: !1, discriminator: 9)
!401 = !DILocation(line: 112, column: 5, scope: !400)
!402 = !DILocation(line: 114, column: 1, scope: !95)
!403 = distinct !DISubprogram(name: "isnegint", scope: !1, file: !1, line: 33, type: !404, isLocal: true, isDefinition: true, scopeLine: 34, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!404 = !DISubroutineType(types: !405)
!405 = !{!50, !49}
!406 = !DILocalVariable(name: "x", arg: 1, scope: !403, file: !1, line: 33, type: !49)
!407 = !DILocation(line: 33, column: 24, scope: !403)
!408 = !DILocation(line: 35, column: 11, scope: !403)
!409 = !DILocation(line: 35, column: 13, scope: !403)
!410 = !DILocation(line: 35, column: 18, scope: !403)
!411 = !DILocation(line: 35, column: 22, scope: !412)
!412 = !DILexicalBlockFile(scope: !403, file: !1, discriminator: 1)
!413 = !DILocation(line: 35, column: 33, scope: !412)
!414 = !DILocation(line: 35, column: 27, scope: !412)
!415 = !DILocation(line: 35, column: 24, scope: !412)
!416 = !DILocation(line: 35, column: 18, scope: !417)
!417 = !DILexicalBlockFile(scope: !403, file: !1, discriminator: 2)
!418 = !DILocation(line: 35, column: 10, scope: !417)
!419 = !DILocation(line: 35, column: 3, scope: !417)
!420 = distinct !DISubprogram(name: "gsl_sf_beta_e", scope: !1, file: !1, line: 118, type: !46, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!421 = !DILocalVariable(name: "x", arg: 1, scope: !420, file: !1, line: 118, type: !49)
!422 = !DILocation(line: 118, column: 28, scope: !420)
!423 = !DILocalVariable(name: "y", arg: 2, scope: !420, file: !1, line: 118, type: !49)
!424 = !DILocation(line: 118, column: 44, scope: !420)
!425 = !DILocalVariable(name: "result", arg: 3, scope: !420, file: !1, line: 118, type: !51)
!426 = !DILocation(line: 118, column: 63, scope: !420)
!427 = !DILocation(line: 120, column: 7, scope: !428)
!428 = distinct !DILexicalBlock(scope: !420, file: !1, line: 120, column: 6)
!429 = !DILocation(line: 120, column: 9, scope: !428)
!430 = !DILocation(line: 120, column: 13, scope: !428)
!431 = !DILocation(line: 120, column: 16, scope: !432)
!432 = !DILexicalBlockFile(scope: !428, file: !1, discriminator: 1)
!433 = !DILocation(line: 120, column: 18, scope: !432)
!434 = !DILocation(line: 120, column: 23, scope: !432)
!435 = !DILocation(line: 120, column: 26, scope: !436)
!436 = !DILexicalBlockFile(scope: !428, file: !1, discriminator: 2)
!437 = !DILocation(line: 120, column: 28, scope: !436)
!438 = !DILocation(line: 120, column: 35, scope: !436)
!439 = !DILocation(line: 120, column: 38, scope: !440)
!440 = !DILexicalBlockFile(scope: !428, file: !1, discriminator: 3)
!441 = !DILocation(line: 120, column: 40, scope: !440)
!442 = !DILocation(line: 120, column: 6, scope: !440)
!443 = !DILocalVariable(name: "gx", scope: !444, file: !1, line: 122, type: !52)
!444 = distinct !DILexicalBlock(scope: !428, file: !1, line: 120, column: 48)
!445 = !DILocation(line: 122, column: 19, scope: !444)
!446 = !DILocalVariable(name: "gy", scope: !444, file: !1, line: 122, type: !52)
!447 = !DILocation(line: 122, column: 23, scope: !444)
!448 = !DILocalVariable(name: "gxy", scope: !444, file: !1, line: 122, type: !52)
!449 = !DILocation(line: 122, column: 27, scope: !444)
!450 = !DILocation(line: 123, column: 20, scope: !444)
!451 = !DILocation(line: 123, column: 5, scope: !444)
!452 = !DILocation(line: 124, column: 20, scope: !444)
!453 = !DILocation(line: 124, column: 5, scope: !444)
!454 = !DILocation(line: 125, column: 20, scope: !444)
!455 = !DILocation(line: 125, column: 22, scope: !444)
!456 = !DILocation(line: 125, column: 21, scope: !444)
!457 = !DILocation(line: 125, column: 5, scope: !444)
!458 = !DILocation(line: 126, column: 24, scope: !444)
!459 = !DILocation(line: 126, column: 31, scope: !444)
!460 = !DILocation(line: 126, column: 27, scope: !444)
!461 = !DILocation(line: 126, column: 40, scope: !444)
!462 = !DILocation(line: 126, column: 35, scope: !444)
!463 = !DILocation(line: 126, column: 5, scope: !444)
!464 = !DILocation(line: 126, column: 13, scope: !444)
!465 = !DILocation(line: 126, column: 18, scope: !444)
!466 = !DILocation(line: 127, column: 23, scope: !444)
!467 = !DILocation(line: 127, column: 37, scope: !444)
!468 = !DILocation(line: 127, column: 45, scope: !444)
!469 = !DILocation(line: 127, column: 40, scope: !444)
!470 = !DILocation(line: 127, column: 29, scope: !444)
!471 = !DILocation(line: 127, column: 27, scope: !444)
!472 = !DILocation(line: 127, column: 5, scope: !444)
!473 = !DILocation(line: 127, column: 13, scope: !444)
!474 = !DILocation(line: 127, column: 18, scope: !444)
!475 = !DILocation(line: 128, column: 23, scope: !444)
!476 = !DILocation(line: 128, column: 37, scope: !444)
!477 = !DILocation(line: 128, column: 45, scope: !444)
!478 = !DILocation(line: 128, column: 40, scope: !444)
!479 = !DILocation(line: 128, column: 29, scope: !444)
!480 = !DILocation(line: 128, column: 27, scope: !444)
!481 = !DILocation(line: 128, column: 5, scope: !444)
!482 = !DILocation(line: 128, column: 13, scope: !444)
!483 = !DILocation(line: 128, column: 17, scope: !444)
!484 = !DILocation(line: 129, column: 29, scope: !444)
!485 = !DILocation(line: 129, column: 36, scope: !444)
!486 = !DILocation(line: 129, column: 32, scope: !444)
!487 = !DILocation(line: 129, column: 46, scope: !444)
!488 = !DILocation(line: 129, column: 54, scope: !444)
!489 = !DILocation(line: 129, column: 49, scope: !444)
!490 = !DILocation(line: 129, column: 40, scope: !444)
!491 = !DILocation(line: 129, column: 20, scope: !444)
!492 = !DILocation(line: 129, column: 66, scope: !444)
!493 = !DILocation(line: 129, column: 60, scope: !444)
!494 = !DILocation(line: 129, column: 5, scope: !444)
!495 = !DILocation(line: 129, column: 13, scope: !444)
!496 = !DILocation(line: 129, column: 17, scope: !444)
!497 = !DILocation(line: 130, column: 49, scope: !444)
!498 = !DILocation(line: 130, column: 57, scope: !444)
!499 = !DILocation(line: 130, column: 44, scope: !444)
!500 = !DILocation(line: 130, column: 42, scope: !444)
!501 = !DILocation(line: 130, column: 5, scope: !444)
!502 = !DILocation(line: 130, column: 13, scope: !444)
!503 = !DILocation(line: 130, column: 17, scope: !444)
!504 = !DILocation(line: 131, column: 5, scope: !444)
!505 = !DILocation(line: 133, column: 21, scope: !506)
!506 = distinct !DILexicalBlock(scope: !428, file: !1, line: 133, column: 12)
!507 = !DILocation(line: 133, column: 12, scope: !506)
!508 = !DILocation(line: 133, column: 24, scope: !506)
!509 = !DILocation(line: 133, column: 36, scope: !510)
!510 = !DILexicalBlockFile(scope: !506, file: !1, discriminator: 1)
!511 = !DILocation(line: 133, column: 27, scope: !510)
!512 = !DILocation(line: 133, column: 12, scope: !510)
!513 = !DILocation(line: 134, column: 5, scope: !514)
!514 = distinct !DILexicalBlock(scope: !506, file: !1, line: 133, column: 40)
!515 = distinct !{!515, !513}
!516 = !DILocation(line: 134, column: 5, scope: !517)
!517 = !DILexicalBlockFile(scope: !518, file: !1, discriminator: 1)
!518 = distinct !DILexicalBlock(scope: !514, file: !1, line: 134, column: 5)
!519 = distinct !{!519, !520}
!520 = !DILocation(line: 134, column: 5, scope: !518)
!521 = !DILocation(line: 134, column: 5, scope: !522)
!522 = !DILexicalBlockFile(scope: !523, file: !1, discriminator: 2)
!523 = distinct !DILexicalBlock(scope: !518, file: !1, line: 134, column: 5)
!524 = !DILocation(line: 134, column: 5, scope: !525)
!525 = !DILexicalBlockFile(scope: !518, file: !1, discriminator: 3)
!526 = !DILocation(line: 135, column: 3, scope: !514)
!527 = !DILocation(line: 135, column: 23, scope: !528)
!528 = !DILexicalBlockFile(scope: !529, file: !1, discriminator: 1)
!529 = distinct !DILexicalBlock(scope: !506, file: !1, line: 135, column: 14)
!530 = !DILocation(line: 135, column: 25, scope: !528)
!531 = !DILocation(line: 135, column: 24, scope: !528)
!532 = !DILocation(line: 135, column: 14, scope: !528)
!533 = !DILocation(line: 136, column: 5, scope: !534)
!534 = distinct !DILexicalBlock(scope: !529, file: !1, line: 135, column: 29)
!535 = !DILocation(line: 136, column: 13, scope: !534)
!536 = !DILocation(line: 136, column: 17, scope: !534)
!537 = !DILocation(line: 137, column: 5, scope: !534)
!538 = !DILocation(line: 137, column: 13, scope: !534)
!539 = !DILocation(line: 137, column: 17, scope: !534)
!540 = !DILocation(line: 138, column: 5, scope: !534)
!541 = !DILocalVariable(name: "lb", scope: !542, file: !1, line: 140, type: !52)
!542 = distinct !DILexicalBlock(scope: !529, file: !1, line: 139, column: 10)
!543 = !DILocation(line: 140, column: 19, scope: !542)
!544 = !DILocalVariable(name: "sgn", scope: !542, file: !1, line: 141, type: !50)
!545 = !DILocation(line: 141, column: 12, scope: !542)
!546 = !DILocalVariable(name: "stat_lb", scope: !542, file: !1, line: 142, type: !48)
!547 = !DILocation(line: 142, column: 9, scope: !542)
!548 = !DILocation(line: 142, column: 39, scope: !542)
!549 = !DILocation(line: 142, column: 42, scope: !542)
!550 = !DILocation(line: 142, column: 19, scope: !542)
!551 = !DILocation(line: 143, column: 8, scope: !552)
!552 = distinct !DILexicalBlock(scope: !542, file: !1, line: 143, column: 8)
!553 = !DILocation(line: 143, column: 16, scope: !552)
!554 = !DILocation(line: 143, column: 8, scope: !542)
!555 = !DILocalVariable(name: "status", scope: !556, file: !1, line: 144, type: !48)
!556 = distinct !DILexicalBlock(scope: !552, file: !1, line: 143, column: 32)
!557 = !DILocation(line: 144, column: 11, scope: !556)
!558 = !DILocation(line: 144, column: 40, scope: !556)
!559 = !DILocation(line: 144, column: 48, scope: !556)
!560 = !DILocation(line: 144, column: 53, scope: !556)
!561 = !DILocation(line: 144, column: 20, scope: !556)
!562 = !DILocation(line: 145, column: 22, scope: !556)
!563 = !DILocation(line: 145, column: 7, scope: !556)
!564 = !DILocation(line: 145, column: 15, scope: !556)
!565 = !DILocation(line: 145, column: 19, scope: !556)
!566 = !DILocation(line: 146, column: 14, scope: !556)
!567 = !DILocation(line: 146, column: 7, scope: !556)
!568 = !DILocation(line: 149, column: 7, scope: !569)
!569 = distinct !DILexicalBlock(scope: !552, file: !1, line: 148, column: 10)
!570 = !DILocation(line: 149, column: 15, scope: !569)
!571 = !DILocation(line: 149, column: 19, scope: !569)
!572 = !DILocation(line: 150, column: 7, scope: !569)
!573 = !DILocation(line: 150, column: 15, scope: !569)
!574 = !DILocation(line: 150, column: 19, scope: !569)
!575 = !DILocation(line: 151, column: 14, scope: !569)
!576 = !DILocation(line: 151, column: 7, scope: !569)
!577 = !DILocation(line: 154, column: 1, scope: !420)
!578 = distinct !DISubprogram(name: "gsl_sf_lnbeta", scope: !1, file: !1, line: 161, type: !579, isLocal: false, isDefinition: true, scopeLine: 162, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!579 = !DISubroutineType(types: !580)
!580 = !{!50, !49, !49}
!581 = !DILocalVariable(name: "x", arg: 1, scope: !578, file: !1, line: 161, type: !49)
!582 = !DILocation(line: 161, column: 35, scope: !578)
!583 = !DILocalVariable(name: "y", arg: 2, scope: !578, file: !1, line: 161, type: !49)
!584 = !DILocation(line: 161, column: 51, scope: !578)
!585 = !DILocalVariable(name: "result", scope: !578, file: !1, line: 163, type: !52)
!586 = !DILocation(line: 163, column: 3, scope: !578)
!587 = !DILocalVariable(name: "status", scope: !578, file: !1, line: 163, type: !48)
!588 = !DILocation(line: 163, column: 3, scope: !589)
!589 = distinct !DILexicalBlock(scope: !578, file: !1, line: 163, column: 3)
!590 = !DILocation(line: 163, column: 3, scope: !591)
!591 = !DILexicalBlockFile(scope: !592, file: !1, discriminator: 1)
!592 = distinct !DILexicalBlock(scope: !589, file: !1, line: 163, column: 3)
!593 = distinct !{!593, !594}
!594 = !DILocation(line: 163, column: 3, scope: !592)
!595 = !DILocation(line: 163, column: 3, scope: !596)
!596 = !DILexicalBlockFile(scope: !597, file: !1, discriminator: 2)
!597 = distinct !DILexicalBlock(scope: !592, file: !1, line: 163, column: 3)
!598 = !DILocation(line: 163, column: 3, scope: !599)
!599 = !DILexicalBlockFile(scope: !592, file: !1, discriminator: 3)
!600 = !DILocation(line: 163, column: 3, scope: !601)
!601 = !DILexicalBlockFile(scope: !578, file: !1, discriminator: 4)
!602 = !DILocation(line: 164, column: 1, scope: !578)
!603 = distinct !DISubprogram(name: "gsl_sf_beta", scope: !1, file: !1, line: 166, type: !579, isLocal: false, isDefinition: true, scopeLine: 167, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!604 = !DILocalVariable(name: "x", arg: 1, scope: !603, file: !1, line: 166, type: !49)
!605 = !DILocation(line: 166, column: 33, scope: !603)
!606 = !DILocalVariable(name: "y", arg: 2, scope: !603, file: !1, line: 166, type: !49)
!607 = !DILocation(line: 166, column: 49, scope: !603)
!608 = !DILocalVariable(name: "result", scope: !603, file: !1, line: 168, type: !52)
!609 = !DILocation(line: 168, column: 3, scope: !603)
!610 = !DILocalVariable(name: "status", scope: !603, file: !1, line: 168, type: !48)
!611 = !DILocation(line: 168, column: 3, scope: !612)
!612 = distinct !DILexicalBlock(scope: !603, file: !1, line: 168, column: 3)
!613 = !DILocation(line: 168, column: 3, scope: !614)
!614 = !DILexicalBlockFile(scope: !615, file: !1, discriminator: 1)
!615 = distinct !DILexicalBlock(scope: !612, file: !1, line: 168, column: 3)
!616 = distinct !{!616, !617}
!617 = !DILocation(line: 168, column: 3, scope: !615)
!618 = !DILocation(line: 168, column: 3, scope: !619)
!619 = !DILexicalBlockFile(scope: !620, file: !1, discriminator: 2)
!620 = distinct !DILexicalBlock(scope: !615, file: !1, line: 168, column: 3)
!621 = !DILocation(line: 168, column: 3, scope: !622)
!622 = !DILexicalBlockFile(scope: !615, file: !1, discriminator: 3)
!623 = !DILocation(line: 168, column: 3, scope: !624)
!624 = !DILexicalBlockFile(scope: !603, file: !1, discriminator: 4)
!625 = !DILocation(line: 169, column: 1, scope: !603)
