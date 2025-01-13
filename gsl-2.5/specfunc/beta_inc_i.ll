; ModuleID = 'beta_inc.ll'
source_filename = "beta_inc.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsl_sf_result_struct = type { double, double }

@.str = private unnamed_addr constant [13 x i8] c"domain error\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"beta_inc.c\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"underflow\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"gsl_sf_beta_inc_e(a, b, x, &result)\00", align 1
@0 = private unnamed_addr constant [18 x i8] c"gsl_sf_beta_inc_e\00"
@1 = private unnamed_addr constant [12 x i8] c"beta_inc.ll\00"
@2 = private unnamed_addr constant [9 x i8] c"isnegint\00"
@3 = private unnamed_addr constant [12 x i8] c"beta_inc.ll\00"
@4 = private unnamed_addr constant [15 x i8] c"beta_cont_frac\00"
@5 = private unnamed_addr constant [12 x i8] c"beta_inc.ll\00"
@6 = private unnamed_addr constant [16 x i8] c"gsl_sf_beta_inc\00"
@7 = private unnamed_addr constant [12 x i8] c"beta_inc.ll\00"

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_beta_inc_e(double, double, double, %struct.gsl_sf_result_struct*) #0 !dbg !45 {
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca %struct.gsl_sf_result_struct*, align 8
  %10 = alloca %struct.gsl_sf_result_struct, align 8
  %11 = alloca %struct.gsl_sf_result_struct, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca double, align 8
  %16 = alloca %struct.gsl_sf_result_struct, align 8
  %17 = alloca %struct.gsl_sf_result_struct, align 8
  %18 = alloca %struct.gsl_sf_result_struct, align 8
  %19 = alloca %struct.gsl_sf_result_struct, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca double, align 8
  %25 = alloca double, align 8
  %26 = alloca i32, align 4
  %27 = alloca %struct.gsl_sf_result_struct, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca %struct.gsl_sf_result_struct, align 8
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca double, align 8
  store double %0, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !59, metadata !60), !dbg !61
  store double %1, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !62, metadata !60), !dbg !63
  store double %2, double* %8, align 8
  call void @llvm.dbg.declare(metadata double* %8, metadata !64, metadata !60), !dbg !65
  store %struct.gsl_sf_result_struct* %3, %struct.gsl_sf_result_struct** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %9, metadata !66, metadata !60), !dbg !67
  %34 = load double, double* %8, align 8, !dbg !68
  %35 = fcmp olt double %34, 0.000000e+00, !dbg !70
  %36 = call i1 @fCmpInstHandler(double %34, double 0.000000e+00, i1 %35, i32 4, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94880628669552, i32 114, i32 8), !dbg !71
  br i1 %36, label %41, label %37, !dbg !71

; <label>:37:                                     ; preds = %4
  %38 = load double, double* %8, align 8, !dbg !72
  %39 = fcmp ogt double %38, 1.000000e+00, !dbg !74
  %40 = call i1 @fCmpInstHandler(double %38, double 1.000000e+00, i1 %39, i32 2, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94880628671104, i32 114, i32 19), !dbg !75
  br i1 %40, label %41, label %50, !dbg !75

; <label>:41:                                     ; preds = %37, %4
  br label %42, !dbg !76, !llvm.loop !78

; <label>:42:                                     ; preds = %41
  %43 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !79
  %44 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %43, i32 0, i32 0, !dbg !79
  store double 0x7FF8000000000000, double* %44, align 8, !dbg !79
  %45 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !79
  %46 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %45, i32 0, i32 1, !dbg !79
  store double 0x7FF8000000000000, double* %46, align 8, !dbg !79
  br label %47, !dbg !79, !llvm.loop !82

; <label>:47:                                     ; preds = %42
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 115, i32 1), !dbg !84
  store i32 1, i32* %5, align 4, !dbg !84
  br label %439, !dbg !84
                                                  ; No predecessors!
  br label %49, !dbg !87

; <label>:49:                                     ; preds = %48
  br label %439, !dbg !89

; <label>:50:                                     ; preds = %37
  %51 = load double, double* %6, align 8, !dbg !90
  %52 = call double @isnegint(double %51), !dbg !93
  %53 = fcmp une double %52, 0.000000e+00, !dbg !93
  %54 = call i1 @fCmpInstHandler(double %52, double 0.000000e+00, i1 %53, i32 14, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94880628685808, i32 116, i32 14), !dbg !94
  br i1 %54, label %60, label %55, !dbg !94

; <label>:55:                                     ; preds = %50
  %56 = load double, double* %7, align 8, !dbg !95
  %57 = call double @isnegint(double %56), !dbg !97
  %58 = fcmp une double %57, 0.000000e+00, !dbg !97
  %59 = call i1 @fCmpInstHandler(double %57, double 0.000000e+00, i1 %58, i32 14, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94880628689040, i32 116, i32 29), !dbg !98
  br i1 %59, label %60, label %69, !dbg !98

; <label>:60:                                     ; preds = %55, %50
  br label %61, !dbg !99, !llvm.loop !101

; <label>:61:                                     ; preds = %60
  %62 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !102
  %63 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %62, i32 0, i32 0, !dbg !102
  store double 0x7FF8000000000000, double* %63, align 8, !dbg !102
  %64 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !102
  %65 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %64, i32 0, i32 1, !dbg !102
  store double 0x7FF8000000000000, double* %65, align 8, !dbg !102
  br label %66, !dbg !102, !llvm.loop !105

; <label>:66:                                     ; preds = %61
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 117, i32 1), !dbg !107
  store i32 1, i32* %5, align 4, !dbg !107
  br label %439, !dbg !107
                                                  ; No predecessors!
  br label %68, !dbg !110

; <label>:68:                                     ; preds = %67
  br label %438, !dbg !112

; <label>:69:                                     ; preds = %55
  %70 = load double, double* %6, align 8, !dbg !113
  %71 = load double, double* %7, align 8, !dbg !116
  %72 = fadd double %70, %71, !dbg !117
  call void @fAddHandler(double %70, double %71, double %72, i64 94880628699608, i64 94880628699928, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94880628700336, i32 118, i32 24), !dbg !118
  %73 = call double @isnegint(double %72), !dbg !118
  %74 = fcmp une double %73, 0.000000e+00, !dbg !118
  %75 = call i1 @fCmpInstHandler(double %73, double 0.000000e+00, i1 %74, i32 14, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94880628701264, i32 118, i32 14), !dbg !118
  br i1 %75, label %76, label %85, !dbg !118

; <label>:76:                                     ; preds = %69
  br label %77, !dbg !119, !llvm.loop !121

; <label>:77:                                     ; preds = %76
  %78 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !122
  %79 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %78, i32 0, i32 0, !dbg !122
  store double 0x7FF8000000000000, double* %79, align 8, !dbg !122
  %80 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !122
  %81 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %80, i32 0, i32 1, !dbg !122
  store double 0x7FF8000000000000, double* %81, align 8, !dbg !122
  br label %82, !dbg !122, !llvm.loop !125

; <label>:82:                                     ; preds = %77
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 119, i32 1), !dbg !127
  store i32 1, i32* %5, align 4, !dbg !127
  br label %439, !dbg !127
                                                  ; No predecessors!
  br label %84, !dbg !130

; <label>:84:                                     ; preds = %83
  br label %437, !dbg !132

; <label>:85:                                     ; preds = %69
  %86 = load double, double* %8, align 8, !dbg !133
  %87 = fcmp oeq double %86, 0.000000e+00, !dbg !136
  %88 = call i1 @fCmpInstHandler(double %86, double 0.000000e+00, i1 %87, i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94880628710944, i32 120, i32 15), !dbg !133
  br i1 %88, label %89, label %94, !dbg !133

; <label>:89:                                     ; preds = %85
  %90 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !137
  %91 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %90, i32 0, i32 0, !dbg !139
  store double 0.000000e+00, double* %91, align 8, !dbg !140
  %92 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !141
  %93 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %92, i32 0, i32 1, !dbg !142
  store double 0.000000e+00, double* %93, align 8, !dbg !143
  store i32 0, i32* %5, align 4, !dbg !144
  br label %439, !dbg !144

; <label>:94:                                     ; preds = %85
  %95 = load double, double* %8, align 8, !dbg !145
  %96 = fcmp oeq double %95, 1.000000e+00, !dbg !147
  %97 = call i1 @fCmpInstHandler(double %95, double 1.000000e+00, i1 %96, i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94880628718192, i32 125, i32 13), !dbg !148
  br i1 %97, label %98, label %103, !dbg !148

; <label>:98:                                     ; preds = %94
  %99 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !149
  %100 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %99, i32 0, i32 0, !dbg !151
  store double 1.000000e+00, double* %100, align 8, !dbg !152
  %101 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !153
  %102 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %101, i32 0, i32 1, !dbg !154
  store double 0.000000e+00, double* %102, align 8, !dbg !155
  store i32 0, i32* %5, align 4, !dbg !156
  br label %439, !dbg !156

; <label>:103:                                    ; preds = %94
  %104 = load double, double* %6, align 8, !dbg !157
  %105 = fcmp ole double %104, 0.000000e+00, !dbg !159
  %106 = call i1 @fCmpInstHandler(double %104, double 0.000000e+00, i1 %105, i32 5, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94880628724112, i32 129, i32 16), !dbg !160
  br i1 %106, label %111, label %107, !dbg !160

; <label>:107:                                    ; preds = %103
  %108 = load double, double* %7, align 8, !dbg !161
  %109 = fcmp ole double %108, 0.000000e+00, !dbg !163
  %110 = call i1 @fCmpInstHandler(double %108, double 0.000000e+00, i1 %109, i32 5, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94880628725568, i32 129, i32 26), !dbg !164
  br i1 %110, label %111, label %193, !dbg !164

; <label>:111:                                    ; preds = %107, %103
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %10, metadata !165, metadata !60), !dbg !167
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %11, metadata !168, metadata !60), !dbg !169
  call void @llvm.dbg.declare(metadata i32* %12, metadata !170, metadata !60), !dbg !171
  call void @llvm.dbg.declare(metadata i32* %13, metadata !172, metadata !60), !dbg !174
  %112 = load double, double* %6, align 8, !dbg !175
  %113 = load double, double* %7, align 8, !dbg !176
  %114 = fsub double 1.000000e+00, %113, !dbg !177
  call void @fSubHandler(double 1.000000e+00, double %113, double %114, i64 0, i64 94880628731256, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94880628731696, i32 132, i32 48), !dbg !178
  %115 = load double, double* %6, align 8, !dbg !178
  %116 = fadd double %115, 1.000000e+00, !dbg !179
  call void @fAddHandler(double %115, double 1.000000e+00, double %116, i64 94880628732056, i64 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94880628732496, i32 132, i32 53), !dbg !180
  %117 = load double, double* %8, align 8, !dbg !180
  %118 = call i32 @gsl_sf_hyperg_2F1_e(double %112, double %114, double %116, double %117, %struct.gsl_sf_result_struct* %10), !dbg !181
  store i32 %118, i32* %13, align 4, !dbg !174
  call void @llvm.dbg.declare(metadata i32* %14, metadata !182, metadata !60), !dbg !183
  %119 = load double, double* %6, align 8, !dbg !184
  %120 = load double, double* %7, align 8, !dbg !185
  %121 = call i32 @gsl_sf_beta_e(double %119, double %120, %struct.gsl_sf_result_struct* %11), !dbg !186
  store i32 %121, i32* %14, align 4, !dbg !183
  call void @llvm.dbg.declare(metadata double* %15, metadata !187, metadata !60), !dbg !188
  %122 = load double, double* %8, align 8, !dbg !189
  %123 = load double, double* %6, align 8, !dbg !190
  %124 = call double @pow(double %122, double %123) #5, !dbg !191
  call void @callTwoArgsHandler(i32 15, double %122, double %123, double %124, i64 94880628741512, i64 94880628741864, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94880628742664, i32 134, i32 25), !dbg !192
  %125 = load double, double* %6, align 8, !dbg !192
  %126 = fdiv double %124, %125, !dbg !193
  call void @fDivHandler(double %124, double %125, double %126, i64 94880628742664, i64 94880628743112, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94880628743520, i32 134, i32 35), !dbg !188
  store double %126, double* %15, align 8, !dbg !188
  %127 = load double, double* %15, align 8, !dbg !194
  %128 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !195
  %129 = load double, double* %128, align 8, !dbg !195
  %130 = fmul double %127, %129, !dbg !196
  call void @fMulHandler(double %127, double %129, double %130, i64 94880628745592, i64 94880628746424, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94880628748096, i32 135, i32 29), !dbg !197
  %131 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 0, !dbg !197
  %132 = load double, double* %131, align 8, !dbg !197
  %133 = fdiv double %130, %132, !dbg !198
  call void @fDivHandler(double %130, double %132, double %133, i64 94880628748096, i64 94880628748936, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94880628750608, i32 135, i32 37), !dbg !199
  %134 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !199
  %135 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %134, i32 0, i32 0, !dbg !200
  store double %133, double* %135, align 8, !dbg !201
  %136 = load double, double* %15, align 8, !dbg !202
  %137 = call double @fabs(double %136) #1, !dbg !203
  %138 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 1, !dbg !204
  %139 = load double, double* %138, align 8, !dbg !204
  %140 = fmul double %137, %139, !dbg !205
  call void @fMulHandler(double %137, double %139, double %140, i64 94880628753408, i64 94880628756408, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94880628758080, i32 136, i32 35), !dbg !206
  %141 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 0, !dbg !206
  %142 = load double, double* %141, align 8, !dbg !206
  %143 = call double @fabs(double %142) #1, !dbg !207
  %144 = fdiv double %140, %143, !dbg !209
  call void @fDivHandler(double %140, double %143, double %144, i64 94880628758080, i64 94880628760656, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94880628761136, i32 136, i32 42), !dbg !210
  %145 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !210
  %146 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %145, i32 0, i32 0, !dbg !211
  %147 = load double, double* %146, align 8, !dbg !211
  %148 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 0, !dbg !212
  %149 = load double, double* %148, align 8, !dbg !212
  %150 = fdiv double %147, %149, !dbg !213
  call void @fDivHandler(double %147, double %149, double %150, i64 94880628762360, i64 94880628764456, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94880628766128, i32 136, i32 77), !dbg !214
  %151 = call double @fabs(double %150) #1, !dbg !214
  %152 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 1, !dbg !216
  %153 = load double, double* %152, align 8, !dbg !216
  %154 = fmul double %151, %153, !dbg !217
  call void @fMulHandler(double %151, double %153, double %154, i64 94880628766608, i64 94880628767512, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94880628769184, i32 136, i32 88), !dbg !218
  %155 = fadd double %144, %154, !dbg !218
  call void @fAddHandler(double %144, double %154, double %155, i64 94880628761136, i64 94880628769184, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94880628769600, i32 136, i32 59), !dbg !219
  %156 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !219
  %157 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %156, i32 0, i32 1, !dbg !220
  store double %155, double* %157, align 8, !dbg !221
  %158 = load i32, i32* %13, align 4, !dbg !222
  %159 = icmp ne i32 %158, 0, !dbg !222
  %160 = sext i32 %158 to i64, !dbg !222
  %161 = call i1 @iCmpInstHandler(i64 %160, i64 0, i1 %159, i32 33, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94880628771648, i32 138, i32 12), !dbg !222
  br i1 %161, label %162, label %164, !dbg !222

; <label>:162:                                    ; preds = %111
  %163 = load i32, i32* %13, align 4, !dbg !223
  br label %174, !dbg !223

; <label>:164:                                    ; preds = %111
  %165 = load i32, i32* %14, align 4, !dbg !224
  %166 = icmp ne i32 %165, 0, !dbg !224
  %167 = sext i32 %165 to i64, !dbg !224
  %168 = call i1 @iCmpInstHandler(i64 %167, i64 0, i1 %166, i32 33, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94880628776192, i32 138, i32 12), !dbg !224
  br i1 %168, label %169, label %171, !dbg !224

; <label>:169:                                    ; preds = %164
  %170 = load i32, i32* %14, align 4, !dbg !225
  br label %172, !dbg !225

; <label>:171:                                    ; preds = %164
  br label %172, !dbg !227

; <label>:172:                                    ; preds = %171, %169
  %173 = phi i32 [ %170, %169 ], [ 0, %171 ], !dbg !229
  br label %174, !dbg !229

; <label>:174:                                    ; preds = %172, %162
  %175 = phi i32 [ %163, %162 ], [ %173, %172 ], !dbg !231
  store i32 %175, i32* %12, align 4, !dbg !233
  %176 = load i32, i32* %12, align 4, !dbg !234
  %177 = icmp eq i32 %176, 0, !dbg !236
  %178 = sext i32 %176 to i64, !dbg !237
  %179 = call i1 @iCmpInstHandler(i64 %178, i64 0, i1 %177, i32 32, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94880628783984, i32 139, i32 13), !dbg !237
  br i1 %179, label %180, label %191, !dbg !237

; <label>:180:                                    ; preds = %174
  %181 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !238
  %182 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %181, i32 0, i32 0, !dbg !238
  %183 = load double, double* %182, align 8, !dbg !238
  %184 = call double @fabs(double %183) #1, !dbg !238
  %185 = fcmp olt double %184, 0x10000000000000, !dbg !238
  %186 = call i1 @fCmpInstHandler(double %184, double 0x10000000000000, i1 %185, i32 4, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94880628787600, i32 140, i32 7), !dbg !241
  br i1 %186, label %187, label %190, !dbg !241

; <label>:187:                                    ; preds = %180
  br label %188, !dbg !242, !llvm.loop !244

; <label>:188:                                    ; preds = %187
  call void @gsl_error(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 140, i32 15), !dbg !245
  store i32 15, i32* %5, align 4, !dbg !245
  br label %439, !dbg !245
                                                  ; No predecessors!
  br label %190, !dbg !248

; <label>:190:                                    ; preds = %189, %180
  br label %191, !dbg !250

; <label>:191:                                    ; preds = %190, %174
  %192 = load i32, i32* %12, align 4, !dbg !251
  store i32 %192, i32* %5, align 4, !dbg !252
  br label %439, !dbg !252

; <label>:193:                                    ; preds = %107
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %16, metadata !253, metadata !60), !dbg !255
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %17, metadata !256, metadata !60), !dbg !257
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %18, metadata !258, metadata !60), !dbg !259
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %19, metadata !260, metadata !60), !dbg !261
  call void @llvm.dbg.declare(metadata i32* %20, metadata !262, metadata !60), !dbg !263
  %194 = load double, double* %6, align 8, !dbg !264
  %195 = load double, double* %7, align 8, !dbg !265
  %196 = call i32 @gsl_sf_lnbeta_e(double %194, double %195, %struct.gsl_sf_result_struct* %16), !dbg !266
  store i32 %196, i32* %20, align 4, !dbg !263
  call void @llvm.dbg.declare(metadata i32* %21, metadata !267, metadata !60), !dbg !268
  %197 = load double, double* %8, align 8, !dbg !269
  %198 = fsub double -0.000000e+00, %197, !dbg !270
  call void @fSubHandler(double -0.000000e+00, double %197, double %198, i64 0, i64 94880628804824, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94880628805264, i32 149, i32 49), !dbg !271
  %199 = call i32 @gsl_sf_log_1plusx_e(double %198, %struct.gsl_sf_result_struct* %18), !dbg !271
  store i32 %199, i32* %21, align 4, !dbg !268
  call void @llvm.dbg.declare(metadata i32* %22, metadata !272, metadata !60), !dbg !273
  %200 = load double, double* %8, align 8, !dbg !274
  %201 = call i32 @gsl_sf_log_e(double %200, %struct.gsl_sf_result_struct* %17), !dbg !275
  store i32 %201, i32* %22, align 4, !dbg !273
  call void @llvm.dbg.declare(metadata i32* %23, metadata !276, metadata !60), !dbg !277
  %202 = load i32, i32* %20, align 4, !dbg !278
  %203 = icmp ne i32 %202, 0, !dbg !278
  %204 = sext i32 %202 to i64, !dbg !278
  %205 = call i1 @iCmpInstHandler(i64 %204, i64 0, i1 %203, i32 33, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94880628813808, i32 151, i32 25), !dbg !278
  br i1 %205, label %206, label %208, !dbg !278

; <label>:206:                                    ; preds = %193
  %207 = load i32, i32* %20, align 4, !dbg !279
  br label %227, !dbg !279

; <label>:208:                                    ; preds = %193
  %209 = load i32, i32* %21, align 4, !dbg !281
  %210 = icmp ne i32 %209, 0, !dbg !281
  %211 = sext i32 %209 to i64, !dbg !281
  %212 = call i1 @iCmpInstHandler(i64 %211, i64 0, i1 %210, i32 33, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94880628818352, i32 151, i32 25), !dbg !281
  br i1 %212, label %213, label %215, !dbg !281

; <label>:213:                                    ; preds = %208
  %214 = load i32, i32* %21, align 4, !dbg !283
  br label %225, !dbg !283

; <label>:215:                                    ; preds = %208
  %216 = load i32, i32* %22, align 4, !dbg !285
  %217 = icmp ne i32 %216, 0, !dbg !285
  %218 = sext i32 %216 to i64, !dbg !285
  %219 = call i1 @iCmpInstHandler(i64 %218, i64 0, i1 %217, i32 33, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94880628822896, i32 151, i32 25), !dbg !285
  br i1 %219, label %220, label %222, !dbg !285

; <label>:220:                                    ; preds = %215
  %221 = load i32, i32* %22, align 4, !dbg !287
  br label %223, !dbg !287

; <label>:222:                                    ; preds = %215
  br label %223, !dbg !289

; <label>:223:                                    ; preds = %222, %220
  %224 = phi i32 [ %221, %220 ], [ 0, %222 ], !dbg !291
  br label %225, !dbg !291

; <label>:225:                                    ; preds = %223, %213
  %226 = phi i32 [ %214, %213 ], [ %224, %223 ], !dbg !293
  br label %227, !dbg !293

; <label>:227:                                    ; preds = %225, %206
  %228 = phi i32 [ %207, %206 ], [ %226, %225 ], !dbg !295
  store i32 %228, i32* %23, align 4, !dbg !297
  call void @llvm.dbg.declare(metadata double* %24, metadata !298, metadata !60), !dbg !299
  %229 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %16, i32 0, i32 0, !dbg !300
  %230 = load double, double* %229, align 8, !dbg !300
  %231 = fsub double -0.000000e+00, %230, !dbg !301
  call void @fSubHandler(double -0.000000e+00, double %230, double %231, i64 0, i64 94880628833864, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94880628835536, i32 153, i32 31), !dbg !302
  %232 = load double, double* %6, align 8, !dbg !302
  %233 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %17, i32 0, i32 0, !dbg !303
  %234 = load double, double* %233, align 8, !dbg !303
  %235 = fmul double %232, %234, !dbg !304
  call void @fMulHandler(double %232, double %234, double %235, i64 94880628835928, i64 94880628836760, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94880628838432, i32 153, i32 48), !dbg !305
  %236 = fadd double %231, %235, !dbg !305
  call void @fAddHandler(double %231, double %235, double %236, i64 94880628835536, i64 94880628838432, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94880628838848, i32 153, i32 44), !dbg !306
  %237 = load double, double* %7, align 8, !dbg !306
  %238 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %18, i32 0, i32 0, !dbg !307
  %239 = load double, double* %238, align 8, !dbg !307
  %240 = fmul double %237, %239, !dbg !308
  call void @fMulHandler(double %237, double %239, double %240, i64 94880628839240, i64 94880628840072, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94880628841744, i32 153, i32 63), !dbg !309
  %241 = fadd double %236, %240, !dbg !309
  call void @fAddHandler(double %236, double %240, double %241, i64 94880628838848, i64 94880628841744, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94880628842160, i32 153, i32 59), !dbg !299
  store double %241, double* %24, align 8, !dbg !299
  call void @llvm.dbg.declare(metadata double* %25, metadata !310, metadata !60), !dbg !311
  %242 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %16, i32 0, i32 1, !dbg !312
  %243 = load double, double* %242, align 8, !dbg !312
  %244 = load double, double* %6, align 8, !dbg !313
  %245 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %17, i32 0, i32 1, !dbg !314
  %246 = load double, double* %245, align 8, !dbg !314
  %247 = fmul double %244, %246, !dbg !315
  call void @fMulHandler(double %244, double %246, double %247, i64 94880628847416, i64 94880628848248, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94880628849920, i32 154, i32 52), !dbg !316
  %248 = call double @fabs(double %247) #1, !dbg !316
  %249 = fadd double %243, %248, !dbg !317
  call void @fAddHandler(double %243, double %248, double %249, i64 94880628845768, i64 94880628850400, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94880628850880, i32 154, i32 44), !dbg !318
  %250 = load double, double* %7, align 8, !dbg !318
  %251 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %18, i32 0, i32 1, !dbg !319
  %252 = load double, double* %251, align 8, !dbg !319
  %253 = fmul double %250, %252, !dbg !320
  call void @fMulHandler(double %250, double %252, double %253, i64 94880628851272, i64 94880628852104, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94880628853776, i32 154, i32 71), !dbg !321
  %254 = call double @fabs(double %253) #1, !dbg !321
  %255 = fadd double %249, %254, !dbg !322
  call void @fAddHandler(double %249, double %254, double %255, i64 94880628850880, i64 94880628854256, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94880628854736, i32 154, i32 63), !dbg !311
  store double %255, double* %25, align 8, !dbg !311
  call void @llvm.dbg.declare(metadata i32* %26, metadata !323, metadata !60), !dbg !324
  %256 = load double, double* %24, align 8, !dbg !325
  %257 = load double, double* %25, align 8, !dbg !326
  %258 = call i32 @gsl_sf_exp_err_e(double %256, double %257, %struct.gsl_sf_result_struct* %19), !dbg !327
  store i32 %258, i32* %26, align 4, !dbg !324
  %259 = load i32, i32* %23, align 4, !dbg !328
  %260 = icmp ne i32 %259, 0, !dbg !330
  %261 = sext i32 %259 to i64, !dbg !331
  %262 = call i1 @iCmpInstHandler(i64 %261, i64 0, i1 %260, i32 33, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94880628861664, i32 157, i32 16), !dbg !331
  br i1 %262, label %263, label %270, !dbg !331

; <label>:263:                                    ; preds = %227
  %264 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !332
  %265 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %264, i32 0, i32 0, !dbg !334
  store double 0.000000e+00, double* %265, align 8, !dbg !335
  %266 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !336
  %267 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %266, i32 0, i32 1, !dbg !337
  store double 0.000000e+00, double* %267, align 8, !dbg !338
  br label %268, !dbg !339, !llvm.loop !340

; <label>:268:                                    ; preds = %263
  call void @gsl_error(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 160, i32 7), !dbg !341
  store i32 7, i32* %5, align 4, !dbg !341
  br label %439, !dbg !341
                                                  ; No predecessors!
  br label %270, !dbg !344

; <label>:270:                                    ; preds = %269, %227
  %271 = load double, double* %8, align 8, !dbg !345
  %272 = load double, double* %6, align 8, !dbg !347
  %273 = fadd double %272, 1.000000e+00, !dbg !348
  call void @fAddHandler(double %272, double 1.000000e+00, double %273, i64 94880628869352, i64 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94880628869792, i32 163, i32 15), !dbg !349
  %274 = load double, double* %6, align 8, !dbg !349
  %275 = load double, double* %7, align 8, !dbg !350
  %276 = fadd double %274, %275, !dbg !351
  call void @fAddHandler(double %274, double %275, double %276, i64 94880628870152, i64 94880628870536, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94880628870944, i32 163, i32 24), !dbg !352
  %277 = fadd double %276, 2.000000e+00, !dbg !352
  call void @fAddHandler(double %276, double 2.000000e+00, double %277, i64 94880628870944, i64 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94880628871456, i32 163, i32 26), !dbg !353
  %278 = fdiv double %273, %277, !dbg !353
  call void @fDivHandler(double %273, double %277, double %278, i64 94880628869792, i64 94880628871456, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94880628871840, i32 163, i32 21), !dbg !354
  %279 = fcmp olt double %271, %278, !dbg !354
  %280 = call i1 @fCmpInstHandler(double %271, double %278, i1 %279, i32 4, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94880628872256, i32 163, i32 10), !dbg !355
  br i1 %280, label %281, label %347, !dbg !355

; <label>:281:                                    ; preds = %270
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %27, metadata !356, metadata !60), !dbg !358
  call void @llvm.dbg.declare(metadata i32* %28, metadata !359, metadata !60), !dbg !360
  %282 = load double, double* %6, align 8, !dbg !361
  %283 = load double, double* %7, align 8, !dbg !362
  %284 = load double, double* %8, align 8, !dbg !363
  %285 = call i32 @beta_cont_frac(double %282, double %283, double %284, %struct.gsl_sf_result_struct* %27), !dbg !364
  store i32 %285, i32* %28, align 4, !dbg !360
  call void @llvm.dbg.declare(metadata i32* %29, metadata !365, metadata !60), !dbg !366
  %286 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %19, i32 0, i32 0, !dbg !367
  %287 = load double, double* %286, align 8, !dbg !367
  %288 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %27, i32 0, i32 0, !dbg !368
  %289 = load double, double* %288, align 8, !dbg !368
  %290 = fmul double %287, %289, !dbg !369
  call void @fMulHandler(double %287, double %289, double %290, i64 94880628884952, i64 94880628887048, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94880628888720, i32 168, i32 35), !dbg !370
  %291 = load double, double* %6, align 8, !dbg !370
  %292 = fdiv double %290, %291, !dbg !371
  call void @fDivHandler(double %290, double %291, double %292, i64 94880628888720, i64 94880628889112, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94880628889520, i32 168, i32 44), !dbg !372
  %293 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !372
  %294 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %293, i32 0, i32 0, !dbg !373
  store double %292, double* %294, align 8, !dbg !374
  %295 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %19, i32 0, i32 1, !dbg !375
  %296 = load double, double* %295, align 8, !dbg !375
  %297 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %27, i32 0, i32 0, !dbg !376
  %298 = load double, double* %297, align 8, !dbg !376
  %299 = fmul double %296, %298, !dbg !377
  call void @fMulHandler(double %296, double %298, double %299, i64 94880628891608, i64 94880628893704, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94880628895376, i32 169, i32 41), !dbg !378
  %300 = call double @fabs(double %299) #1, !dbg !378
  %301 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %19, i32 0, i32 0, !dbg !379
  %302 = load double, double* %301, align 8, !dbg !379
  %303 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %27, i32 0, i32 1, !dbg !380
  %304 = load double, double* %303, align 8, !dbg !380
  %305 = fmul double %302, %304, !dbg !381
  call void @fMulHandler(double %302, double %304, double %305, i64 94880628896760, i64 94880628898856, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94880628900528, i32 169, i32 72), !dbg !382
  %306 = call double @fabs(double %305) #1, !dbg !382
  %307 = fadd double %300, %306, !dbg !384
  call void @fAddHandler(double %300, double %306, double %307, i64 94880628895856, i64 94880628901008, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94880628901488, i32 169, i32 51), !dbg !385
  %308 = load double, double* %6, align 8, !dbg !385
  %309 = fdiv double %307, %308, !dbg !386
  call void @fDivHandler(double %307, double %308, double %309, i64 94880628901488, i64 94880628901880, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94880628902288, i32 169, i32 82), !dbg !387
  %310 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !387
  %311 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %310, i32 0, i32 1, !dbg !388
  store double %309, double* %311, align 8, !dbg !389
  %312 = load i32, i32* %26, align 4, !dbg !390
  %313 = icmp ne i32 %312, 0, !dbg !390
  %314 = sext i32 %312 to i64, !dbg !390
  %315 = call i1 @iCmpInstHandler(i64 %314, i64 0, i1 %313, i32 33, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94880628904336, i32 171, i32 14), !dbg !390
  br i1 %315, label %316, label %318, !dbg !390

; <label>:316:                                    ; preds = %281
  %317 = load i32, i32* %26, align 4, !dbg !391
  br label %328, !dbg !391

; <label>:318:                                    ; preds = %281
  %319 = load i32, i32* %28, align 4, !dbg !392
  %320 = icmp ne i32 %319, 0, !dbg !392
  %321 = sext i32 %319 to i64, !dbg !392
  %322 = call i1 @iCmpInstHandler(i64 %321, i64 0, i1 %320, i32 33, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94880628908880, i32 171, i32 14), !dbg !392
  br i1 %322, label %323, label %325, !dbg !392

; <label>:323:                                    ; preds = %318
  %324 = load i32, i32* %28, align 4, !dbg !394
  br label %326, !dbg !394

; <label>:325:                                    ; preds = %318
  br label %326, !dbg !396

; <label>:326:                                    ; preds = %325, %323
  %327 = phi i32 [ %324, %323 ], [ 0, %325 ], !dbg !398
  br label %328, !dbg !398

; <label>:328:                                    ; preds = %326, %316
  %329 = phi i32 [ %317, %316 ], [ %327, %326 ], !dbg !400
  store i32 %329, i32* %29, align 4, !dbg !402
  %330 = load i32, i32* %29, align 4, !dbg !403
  %331 = icmp eq i32 %330, 0, !dbg !405
  %332 = sext i32 %330 to i64, !dbg !406
  %333 = call i1 @iCmpInstHandler(i64 %332, i64 0, i1 %331, i32 32, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94880628916672, i32 172, i32 15), !dbg !406
  br i1 %333, label %334, label %345, !dbg !406

; <label>:334:                                    ; preds = %328
  %335 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !407
  %336 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %335, i32 0, i32 0, !dbg !407
  %337 = load double, double* %336, align 8, !dbg !407
  %338 = call double @fabs(double %337) #1, !dbg !407
  %339 = fcmp olt double %338, 0x10000000000000, !dbg !407
  %340 = call i1 @fCmpInstHandler(double %338, double 0x10000000000000, i1 %339, i32 4, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94880628920224, i32 173, i32 9), !dbg !410
  br i1 %340, label %341, label %344, !dbg !410

; <label>:341:                                    ; preds = %334
  br label %342, !dbg !411, !llvm.loop !413

; <label>:342:                                    ; preds = %341
  call void @gsl_error(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 173, i32 15), !dbg !414
  store i32 15, i32* %5, align 4, !dbg !414
  br label %439, !dbg !414
                                                  ; No predecessors!
  br label %344, !dbg !417

; <label>:344:                                    ; preds = %343, %334
  br label %345, !dbg !419

; <label>:345:                                    ; preds = %344, %328
  %346 = load i32, i32* %29, align 4, !dbg !420
  store i32 %346, i32* %5, align 4, !dbg !421
  br label %439, !dbg !421

; <label>:347:                                    ; preds = %270
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %30, metadata !422, metadata !60), !dbg !424
  call void @llvm.dbg.declare(metadata i32* %31, metadata !425, metadata !60), !dbg !426
  %348 = load double, double* %7, align 8, !dbg !427
  %349 = load double, double* %6, align 8, !dbg !428
  %350 = load double, double* %8, align 8, !dbg !429
  %351 = fsub double 1.000000e+00, %350, !dbg !430
  call void @fSubHandler(double 1.000000e+00, double %350, double %351, i64 0, i64 94880628930168, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94880628930608, i32 180, i32 51), !dbg !431
  %352 = call i32 @beta_cont_frac(double %348, double %349, double %351, %struct.gsl_sf_result_struct* %30), !dbg !431
  store i32 %352, i32* %31, align 4, !dbg !426
  call void @llvm.dbg.declare(metadata i32* %32, metadata !432, metadata !60), !dbg !433
  call void @llvm.dbg.declare(metadata double* %33, metadata !434, metadata !60), !dbg !435
  %353 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %19, i32 0, i32 0, !dbg !436
  %354 = load double, double* %353, align 8, !dbg !436
  %355 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %30, i32 0, i32 0, !dbg !437
  %356 = load double, double* %355, align 8, !dbg !437
  %357 = fmul double %354, %356, !dbg !438
  call void @fMulHandler(double %354, double %356, double %357, i64 94880628935848, i64 94880628937944, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94880628939616, i32 182, i32 41), !dbg !439
  %358 = load double, double* %7, align 8, !dbg !439
  %359 = fdiv double %357, %358, !dbg !440
  call void @fDivHandler(double %357, double %358, double %359, i64 94880628939616, i64 94880628940008, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94880628940416, i32 182, i32 50), !dbg !435
  store double %359, double* %33, align 8, !dbg !435
  %360 = load double, double* %33, align 8, !dbg !441
  %361 = fsub double 1.000000e+00, %360, !dbg !442
  call void @fSubHandler(double 1.000000e+00, double %360, double %361, i64 0, i64 94880628942488, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94880628942928, i32 183, i32 26), !dbg !443
  %362 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !443
  %363 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %362, i32 0, i32 0, !dbg !444
  store double %361, double* %363, align 8, !dbg !445
  %364 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %19, i32 0, i32 1, !dbg !446
  %365 = load double, double* %364, align 8, !dbg !446
  %366 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %30, i32 0, i32 0, !dbg !447
  %367 = load double, double* %366, align 8, !dbg !447
  %368 = fmul double %365, %367, !dbg !448
  call void @fMulHandler(double %365, double %367, double %368, i64 94880628944984, i64 94880628947080, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94880628948752, i32 184, i32 41), !dbg !449
  %369 = call double @fabs(double %368) #1, !dbg !449
  %370 = load double, double* %7, align 8, !dbg !450
  %371 = fdiv double %369, %370, !dbg !451
  call void @fDivHandler(double %369, double %370, double %371, i64 94880628949232, i64 94880628949688, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94880628950096, i32 184, i32 50), !dbg !452
  %372 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !452
  %373 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %372, i32 0, i32 1, !dbg !453
  store double %371, double* %373, align 8, !dbg !454
  %374 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %19, i32 0, i32 0, !dbg !455
  %375 = load double, double* %374, align 8, !dbg !455
  %376 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %30, i32 0, i32 1, !dbg !456
  %377 = load double, double* %376, align 8, !dbg !456
  %378 = fmul double %375, %377, !dbg !457
  call void @fMulHandler(double %375, double %377, double %378, i64 94880628952184, i64 94880628954280, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94880628955952, i32 185, i32 41), !dbg !458
  %379 = call double @fabs(double %378) #1, !dbg !458
  %380 = load double, double* %7, align 8, !dbg !459
  %381 = fdiv double %379, %380, !dbg !460
  call void @fDivHandler(double %379, double %380, double %381, i64 94880628956432, i64 94880628956888, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94880628957296, i32 185, i32 50), !dbg !461
  %382 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !461
  %383 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %382, i32 0, i32 1, !dbg !462
  %384 = load double, double* %383, align 8, !dbg !463
  %385 = fadd double %384, %381, !dbg !463
  call void @fAddHandler(double %384, double %381, double %385, i64 94880628958520, i64 94880628957296, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94880628958928, i32 185, i32 19), !dbg !463
  store double %385, double* %383, align 8, !dbg !463
  %386 = load double, double* %33, align 8, !dbg !464
  %387 = call double @fabs(double %386) #1, !dbg !465
  %388 = fadd double 1.000000e+00, %387, !dbg !466
  call void @fAddHandler(double 1.000000e+00, double %387, double %388, i64 0, i64 94880628961184, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94880628961696, i32 186, i32 51), !dbg !467
  %389 = fmul double 0x3CC0000000000000, %388, !dbg !467
  call void @fMulHandler(double 0x3CC0000000000000, double %388, double %389, i64 0, i64 94880628961696, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94880628962144, i32 186, i32 44), !dbg !468
  %390 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !468
  %391 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %390, i32 0, i32 1, !dbg !469
  %392 = load double, double* %391, align 8, !dbg !470
  %393 = fadd double %392, %389, !dbg !470
  call void @fAddHandler(double %392, double %389, double %393, i64 94880628963368, i64 94880628962144, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94880628963776, i32 186, i32 19), !dbg !470
  store double %393, double* %391, align 8, !dbg !470
  %394 = load i32, i32* %26, align 4, !dbg !471
  %395 = icmp ne i32 %394, 15, !dbg !473
  %396 = sext i32 %394 to i64, !dbg !474
  %397 = call i1 @iCmpInstHandler(i64 %396, i64 15, i1 %395, i32 33, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94880628965968, i32 189, i32 20), !dbg !474
  br i1 %397, label %398, label %417, !dbg !474

; <label>:398:                                    ; preds = %347
  %399 = load i32, i32* %26, align 4, !dbg !475
  %400 = icmp ne i32 %399, 0, !dbg !475
  %401 = sext i32 %399 to i64, !dbg !475
  %402 = call i1 @iCmpInstHandler(i64 %401, i64 0, i1 %400, i32 33, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94880628967424, i32 190, i32 16), !dbg !475
  br i1 %402, label %403, label %405, !dbg !475

; <label>:403:                                    ; preds = %398
  %404 = load i32, i32* %26, align 4, !dbg !477
  br label %415, !dbg !477

; <label>:405:                                    ; preds = %398
  %406 = load i32, i32* %31, align 4, !dbg !479
  %407 = icmp ne i32 %406, 0, !dbg !479
  %408 = sext i32 %406 to i64, !dbg !479
  %409 = call i1 @iCmpInstHandler(i64 %408, i64 0, i1 %407, i32 33, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94880628971968, i32 190, i32 16), !dbg !479
  br i1 %409, label %410, label %412, !dbg !479

; <label>:410:                                    ; preds = %405
  %411 = load i32, i32* %31, align 4, !dbg !481
  br label %413, !dbg !481

; <label>:412:                                    ; preds = %405
  br label %413, !dbg !483

; <label>:413:                                    ; preds = %412, %410
  %414 = phi i32 [ %411, %410 ], [ 0, %412 ], !dbg !485
  br label %415, !dbg !485

; <label>:415:                                    ; preds = %413, %403
  %416 = phi i32 [ %404, %403 ], [ %414, %413 ], !dbg !487
  store i32 %416, i32* %32, align 4, !dbg !489
  br label %419, !dbg !490

; <label>:417:                                    ; preds = %347
  %418 = load i32, i32* %31, align 4, !dbg !491
  store i32 %418, i32* %32, align 4, !dbg !493
  br label %419

; <label>:419:                                    ; preds = %417, %415
  %420 = load i32, i32* %32, align 4, !dbg !494
  %421 = icmp eq i32 %420, 0, !dbg !496
  %422 = sext i32 %420 to i64, !dbg !497
  %423 = call i1 @iCmpInstHandler(i64 %422, i64 0, i1 %421, i32 32, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94880628981056, i32 194, i32 15), !dbg !497
  br i1 %423, label %424, label %435, !dbg !497

; <label>:424:                                    ; preds = %419
  %425 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !498
  %426 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %425, i32 0, i32 0, !dbg !498
  %427 = load double, double* %426, align 8, !dbg !498
  %428 = call double @fabs(double %427) #1, !dbg !498
  %429 = fcmp olt double %428, 0x10000000000000, !dbg !498
  %430 = call i1 @fCmpInstHandler(double %428, double 0x10000000000000, i1 %429, i32 4, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94880628984608, i32 195, i32 9), !dbg !501
  br i1 %430, label %431, label %434, !dbg !501

; <label>:431:                                    ; preds = %424
  br label %432, !dbg !502, !llvm.loop !504

; <label>:432:                                    ; preds = %431
  call void @gsl_error(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 195, i32 15), !dbg !505
  store i32 15, i32* %5, align 4, !dbg !505
  br label %439, !dbg !505
                                                  ; No predecessors!
  br label %434, !dbg !508

; <label>:434:                                    ; preds = %433, %424
  br label %435, !dbg !510

; <label>:435:                                    ; preds = %434, %419
  %436 = load i32, i32* %32, align 4, !dbg !511
  store i32 %436, i32* %5, align 4, !dbg !512
  br label %439, !dbg !512

; <label>:437:                                    ; preds = %84
  br label %438

; <label>:438:                                    ; preds = %437, %68
  br label %439

; <label>:439:                                    ; preds = %438, %435, %432, %345, %342, %268, %191, %188, %98, %89, %82, %66, %49, %47
  %440 = load i32, i32* %5, align 4, !dbg !513
  ret i32 %440, !dbg !513
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @gsl_error(i8*, i8*, i32, i32) #2

; Function Attrs: nounwind uwtable
define internal double @isnegint(double) #0 !dbg !514 {
  %2 = alloca double, align 8
  store double %0, double* %2, align 8
  call void @llvm.dbg.declare(metadata double* %2, metadata !517, metadata !60), !dbg !518
  %3 = load double, double* %2, align 8, !dbg !519
  %4 = fcmp olt double %3, 0.000000e+00, !dbg !520
  %5 = call i1 @fCmpInstHandler(double %3, double 0.000000e+00, i1 %4, i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94880628876176, i32 37, i32 13), !dbg !521
  br i1 %5, label %6, label %11, !dbg !521

; <label>:6:                                      ; preds = %1
  %7 = load double, double* %2, align 8, !dbg !522
  %8 = load double, double* %2, align 8, !dbg !524
  %9 = call double @floor(double %8) #1, !dbg !525
  %10 = fcmp oeq double %7, %9, !dbg !526
  br label %11

; <label>:11:                                     ; preds = %6, %1
  %12 = phi i1 [ false, %1 ], [ %10, %6 ]
  %13 = zext i1 %12 to i32, !dbg !527
  %14 = sitofp i32 %13 to double, !dbg !529
  ret double %14, !dbg !530
}

declare i32 @gsl_sf_hyperg_2F1_e(double, double, double, double, %struct.gsl_sf_result_struct*) #2

declare i32 @gsl_sf_beta_e(double, double, %struct.gsl_sf_result_struct*) #2

; Function Attrs: nounwind
declare double @pow(double, double) #3

; Function Attrs: nounwind readnone
declare double @fabs(double) #4

declare i32 @gsl_sf_lnbeta_e(double, double, %struct.gsl_sf_result_struct*) #2

declare i32 @gsl_sf_log_1plusx_e(double, %struct.gsl_sf_result_struct*) #2

declare i32 @gsl_sf_log_e(double, %struct.gsl_sf_result_struct*) #2

declare i32 @gsl_sf_exp_err_e(double, double, %struct.gsl_sf_result_struct*) #2

; Function Attrs: nounwind uwtable
define internal i32 @beta_cont_frac(double, double, double, %struct.gsl_sf_result_struct*) #0 !dbg !531 {
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca %struct.gsl_sf_result_struct*, align 8
  %10 = alloca i32, align 4
  %11 = alloca double, align 8
  %12 = alloca i32, align 4
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca i32, align 4
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  store double %0, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !532, metadata !60), !dbg !533
  store double %1, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !534, metadata !60), !dbg !535
  store double %2, double* %8, align 8
  call void @llvm.dbg.declare(metadata double* %8, metadata !536, metadata !60), !dbg !537
  store %struct.gsl_sf_result_struct* %3, %struct.gsl_sf_result_struct** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %9, metadata !538, metadata !60), !dbg !539
  call void @llvm.dbg.declare(metadata i32* %10, metadata !540, metadata !60), !dbg !543
  store i32 512, i32* %10, align 4, !dbg !543
  call void @llvm.dbg.declare(metadata double* %11, metadata !544, metadata !60), !dbg !545
  store double 0x20000000000000, double* %11, align 8, !dbg !545
  call void @llvm.dbg.declare(metadata i32* %12, metadata !546, metadata !60), !dbg !547
  store i32 0, i32* %12, align 4, !dbg !547
  call void @llvm.dbg.declare(metadata double* %13, metadata !548, metadata !60), !dbg !549
  call void @llvm.dbg.declare(metadata double* %14, metadata !550, metadata !60), !dbg !551
  store double 1.000000e+00, double* %14, align 8, !dbg !551
  call void @llvm.dbg.declare(metadata double* %15, metadata !552, metadata !60), !dbg !553
  %19 = load double, double* %6, align 8, !dbg !554
  %20 = load double, double* %7, align 8, !dbg !555
  %21 = fadd double %19, %20, !dbg !556
  call void @fAddHandler(double %19, double %20, double %21, i64 94880628809976, i64 94880628805944, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94880629019888, i32 56, i32 29), !dbg !557
  %22 = load double, double* %8, align 8, !dbg !557
  %23 = fmul double %21, %22, !dbg !558
  call void @fMulHandler(double %21, double %22, double %23, i64 94880629019888, i64 94880628801336, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94880629020592, i32 56, i32 32), !dbg !559
  %24 = load double, double* %6, align 8, !dbg !559
  %25 = fadd double %24, 1.000000e+00, !dbg !560
  call void @fAddHandler(double %24, double 1.000000e+00, double %25, i64 94880628753288, i64 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94880629021328, i32 56, i32 37), !dbg !561
  %26 = fdiv double %23, %25, !dbg !561
  call void @fDivHandler(double %23, double %25, double %26, i64 94880629020592, i64 94880629021328, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94880629021712, i32 56, i32 34), !dbg !562
  %27 = fsub double 1.000000e+00, %26, !dbg !562
  call void @fSubHandler(double 1.000000e+00, double %26, double %27, i64 0, i64 94880629021712, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94880629022160, i32 56, i32 25), !dbg !553
  store double %27, double* %15, align 8, !dbg !553
  %28 = load double, double* %15, align 8, !dbg !563
  %29 = call double @fabs(double %28) #1, !dbg !565
  %30 = fcmp olt double %29, 0x20000000000000, !dbg !566
  %31 = call i1 @fCmpInstHandler(double %29, double 0x20000000000000, i1 %30, i32 4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94880629025056, i32 57, i32 22), !dbg !567
  br i1 %31, label %32, label %33, !dbg !567

; <label>:32:                                     ; preds = %4
  store double 0x20000000000000, double* %15, align 8, !dbg !568
  br label %33, !dbg !570

; <label>:33:                                     ; preds = %32, %4
  %34 = load double, double* %15, align 8, !dbg !571
  %35 = fdiv double 1.000000e+00, %34, !dbg !572
  call void @fDivHandler(double 1.000000e+00, double %34, double %35, i64 0, i64 94880628733608, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94880629027088, i32 58, i32 17), !dbg !573
  store double %35, double* %15, align 8, !dbg !573
  %36 = load double, double* %15, align 8, !dbg !574
  store double %36, double* %13, align 8, !dbg !575
  br label %37, !dbg !576

; <label>:37:                                     ; preds = %156, %33
  %38 = load i32, i32* %12, align 4, !dbg !577
  %39 = icmp ult i32 %38, 512, !dbg !579
  %40 = sext i32 %38 to i64, !dbg !580
  %41 = call i1 @iCmpInstHandler(i64 %40, i64 512, i1 %39, i32 36, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94880629029536, i32 61, i32 20), !dbg !580
  br i1 %41, label %42, label %159, !dbg !580

; <label>:42:                                     ; preds = %37
  call void @llvm.dbg.declare(metadata i32* %16, metadata !581, metadata !60), !dbg !583
  %43 = load i32, i32* %12, align 4, !dbg !584
  %44 = add i32 %43, 1, !dbg !585
  store i32 %44, i32* %16, align 4, !dbg !583
  call void @llvm.dbg.declare(metadata double* %17, metadata !586, metadata !60), !dbg !587
  %45 = load i32, i32* %16, align 4, !dbg !588
  %46 = sitofp i32 %45 to double, !dbg !588
  %47 = load double, double* %7, align 8, !dbg !589
  %48 = load i32, i32* %16, align 4, !dbg !590
  %49 = sitofp i32 %48 to double, !dbg !590
  %50 = fsub double %47, %49, !dbg !591
  call void @fSubHandler(double %47, double %49, double %50, i64 94880629037272, i64 94880629038040, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94880629039712, i32 63, i32 24), !dbg !592
  %51 = fmul double %46, %50, !dbg !592
  call void @fMulHandler(double %46, double %50, double %51, i64 94880629035624, i64 94880629039712, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94880629040128, i32 63, i32 21), !dbg !593
  %52 = load double, double* %8, align 8, !dbg !593
  %53 = fmul double %51, %52, !dbg !594
  call void @fMulHandler(double %51, double %52, double %53, i64 94880629040128, i64 94880629040520, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94880629040928, i32 63, i32 27), !dbg !595
  %54 = load double, double* %6, align 8, !dbg !595
  %55 = fsub double %54, 1.000000e+00, !dbg !596
  call void @fSubHandler(double %54, double 1.000000e+00, double %55, i64 94880629041320, i64 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94880629041760, i32 63, i32 34), !dbg !597
  %56 = load i32, i32* %16, align 4, !dbg !597
  %57 = mul nsw i32 2, %56, !dbg !598
  %58 = sitofp i32 %57 to double, !dbg !599
  %59 = fadd double %55, %58, !dbg !600
  call void @fAddHandler(double %55, double %58, double %59, i64 94880629041760, i64 94880629042984, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94880629043392, i32 63, i32 39), !dbg !601
  %60 = load double, double* %6, align 8, !dbg !601
  %61 = load i32, i32* %16, align 4, !dbg !602
  %62 = mul nsw i32 2, %61, !dbg !603
  %63 = sitofp i32 %62 to double, !dbg !604
  %64 = fadd double %60, %63, !dbg !605
  call void @fAddHandler(double %60, double %63, double %64, i64 94880629043784, i64 94880629044968, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94880629045376, i32 63, i32 47), !dbg !606
  %65 = fmul double %59, %64, !dbg !606
  call void @fMulHandler(double %59, double %64, double %65, i64 94880629043392, i64 94880629045376, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94880629045792, i32 63, i32 44), !dbg !607
  %66 = fdiv double %53, %65, !dbg !607
  call void @fDivHandler(double %53, double %65, double %66, i64 94880629040928, i64 94880629045792, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94880629046208, i32 63, i32 29), !dbg !587
  store double %66, double* %17, align 8, !dbg !587
  call void @llvm.dbg.declare(metadata double* %18, metadata !608, metadata !60), !dbg !609
  %67 = load double, double* %17, align 8, !dbg !610
  %68 = load double, double* %15, align 8, !dbg !611
  %69 = fmul double %67, %68, !dbg !612
  call void @fMulHandler(double %67, double %68, double %69, i64 94880629049400, i64 94880629049752, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94880629050160, i32 67, i32 27), !dbg !613
  %70 = fadd double 1.000000e+00, %69, !dbg !613
  call void @fAddHandler(double 1.000000e+00, double %69, double %70, i64 0, i64 94880629050160, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94880629050608, i32 67, i32 20), !dbg !614
  store double %70, double* %15, align 8, !dbg !614
  %71 = load double, double* %17, align 8, !dbg !615
  %72 = load double, double* %14, align 8, !dbg !616
  %73 = fdiv double %71, %72, !dbg !617
  call void @fDivHandler(double %71, double %72, double %73, i64 94880629051384, i64 94880629051768, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94880629052176, i32 68, i32 27), !dbg !618
  %74 = fadd double 1.000000e+00, %73, !dbg !618
  call void @fAddHandler(double 1.000000e+00, double %73, double %74, i64 0, i64 94880629052176, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94880629052624, i32 68, i32 20), !dbg !619
  store double %74, double* %14, align 8, !dbg !619
  %75 = load double, double* %15, align 8, !dbg !620
  %76 = call double @fabs(double %75) #1, !dbg !622
  %77 = fcmp olt double %76, 0x20000000000000, !dbg !623
  %78 = call i1 @fCmpInstHandler(double %76, double 0x20000000000000, i1 %77, i32 4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94880629054352, i32 69, i32 23), !dbg !624
  br i1 %78, label %79, label %80, !dbg !624

; <label>:79:                                     ; preds = %42
  store double 0x20000000000000, double* %15, align 8, !dbg !625
  br label %80, !dbg !627

; <label>:80:                                     ; preds = %79, %42
  %81 = load double, double* %14, align 8, !dbg !628
  %82 = call double @fabs(double %81) #1, !dbg !630
  %83 = fcmp olt double %82, 0x20000000000000, !dbg !631
  %84 = call i1 @fCmpInstHandler(double %82, double 0x20000000000000, i1 %83, i32 4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94880629057088, i32 70, i32 23), !dbg !632
  br i1 %84, label %85, label %86, !dbg !632

; <label>:85:                                     ; preds = %80
  store double 0x20000000000000, double* %14, align 8, !dbg !633
  br label %86, !dbg !635

; <label>:86:                                     ; preds = %85, %80
  %87 = load double, double* %15, align 8, !dbg !636
  %88 = fdiv double 1.000000e+00, %87, !dbg !637
  call void @fDivHandler(double 1.000000e+00, double %87, double %88, i64 0, i64 94880629058936, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94880629059312, i32 71, i32 20), !dbg !638
  store double %88, double* %15, align 8, !dbg !638
  %89 = load double, double* %15, align 8, !dbg !639
  %90 = load double, double* %14, align 8, !dbg !640
  %91 = fmul double %89, %90, !dbg !641
  call void @fMulHandler(double %89, double %90, double %91, i64 94880629060088, i64 94880629060472, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94880629060880, i32 73, i32 27), !dbg !642
  store double %91, double* %18, align 8, !dbg !642
  %92 = load double, double* %18, align 8, !dbg !643
  %93 = load double, double* %13, align 8, !dbg !644
  %94 = fmul double %93, %92, !dbg !644
  call void @fMulHandler(double %93, double %92, double %94, i64 94880629062072, i64 94880629061688, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94880629062480, i32 74, i32 8), !dbg !644
  store double %94, double* %13, align 8, !dbg !644
  %95 = load double, double* %6, align 8, !dbg !645
  %96 = load i32, i32* %16, align 4, !dbg !646
  %97 = sitofp i32 %96 to double, !dbg !646
  %98 = fadd double %95, %97, !dbg !647
  call void @fAddHandler(double %95, double %97, double %98, i64 94880629064264, i64 94880629065032, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94880629066704, i32 76, i32 16), !dbg !648
  %99 = fsub double -0.000000e+00, %98, !dbg !648
  call void @fSubHandler(double -0.000000e+00, double %98, double %99, i64 0, i64 94880629066704, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94880629067120, i32 76, i32 13), !dbg !649
  %100 = load double, double* %6, align 8, !dbg !649
  %101 = load double, double* %7, align 8, !dbg !650
  %102 = fadd double %100, %101, !dbg !651
  call void @fAddHandler(double %100, double %101, double %102, i64 94880629067512, i64 94880629067896, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94880629068304, i32 76, i32 22), !dbg !652
  %103 = load i32, i32* %16, align 4, !dbg !652
  %104 = sitofp i32 %103 to double, !dbg !652
  %105 = fadd double %102, %104, !dbg !653
  call void @fAddHandler(double %102, double %104, double %105, i64 94880629068304, i64 94880629069080, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94880629070752, i32 76, i32 24), !dbg !654
  %106 = fmul double %99, %105, !dbg !654
  call void @fMulHandler(double %99, double %105, double %106, i64 94880629067120, i64 94880629070752, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94880629071168, i32 76, i32 19), !dbg !655
  %107 = load double, double* %8, align 8, !dbg !655
  %108 = fmul double %106, %107, !dbg !656
  call void @fMulHandler(double %106, double %107, double %108, i64 94880629071168, i64 94880629071560, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94880629071968, i32 76, i32 27), !dbg !657
  %109 = load double, double* %6, align 8, !dbg !657
  %110 = load i32, i32* %16, align 4, !dbg !658
  %111 = mul nsw i32 2, %110, !dbg !659
  %112 = sitofp i32 %111 to double, !dbg !660
  %113 = fadd double %109, %112, !dbg !661
  call void @fAddHandler(double %109, double %112, double %113, i64 94880629072360, i64 94880629073544, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94880629073952, i32 76, i32 33), !dbg !662
  %114 = load double, double* %6, align 8, !dbg !662
  %115 = load i32, i32* %16, align 4, !dbg !663
  %116 = mul nsw i32 2, %115, !dbg !664
  %117 = sitofp i32 %116 to double, !dbg !665
  %118 = fadd double %114, %117, !dbg !666
  call void @fAddHandler(double %114, double %117, double %118, i64 94880629074344, i64 94880629075528, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94880629075936, i32 76, i32 41), !dbg !667
  %119 = fadd double %118, 1.000000e+00, !dbg !667
  call void @fAddHandler(double %118, double 1.000000e+00, double %119, i64 94880629075936, i64 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94880629076384, i32 76, i32 45), !dbg !668
  %120 = fmul double %113, %119, !dbg !668
  call void @fMulHandler(double %113, double %119, double %120, i64 94880629073952, i64 94880629076384, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94880629076768, i32 76, i32 38), !dbg !669
  %121 = fdiv double %108, %120, !dbg !669
  call void @fDivHandler(double %108, double %120, double %121, i64 94880629071968, i64 94880629076768, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94880629077184, i32 76, i32 29), !dbg !670
  store double %121, double* %17, align 8, !dbg !670
  %122 = load double, double* %17, align 8, !dbg !671
  %123 = load double, double* %15, align 8, !dbg !672
  %124 = fmul double %122, %123, !dbg !673
  call void @fMulHandler(double %122, double %123, double %124, i64 94880629077992, i64 94880629078376, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94880629078784, i32 79, i32 27), !dbg !674
  %125 = fadd double 1.000000e+00, %124, !dbg !674
  call void @fAddHandler(double 1.000000e+00, double %124, double %125, i64 0, i64 94880629078784, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94880629079232, i32 79, i32 20), !dbg !675
  store double %125, double* %15, align 8, !dbg !675
  %126 = load double, double* %17, align 8, !dbg !676
  %127 = load double, double* %14, align 8, !dbg !677
  %128 = fdiv double %126, %127, !dbg !678
  call void @fDivHandler(double %126, double %127, double %128, i64 94880629080008, i64 94880629080392, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94880629080800, i32 80, i32 27), !dbg !679
  %129 = fadd double 1.000000e+00, %128, !dbg !679
  call void @fAddHandler(double 1.000000e+00, double %128, double %129, i64 0, i64 94880629080800, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94880629081248, i32 80, i32 20), !dbg !680
  store double %129, double* %14, align 8, !dbg !680
  %130 = load double, double* %15, align 8, !dbg !681
  %131 = call double @fabs(double %130) #1, !dbg !683
  %132 = fcmp olt double %131, 0x20000000000000, !dbg !684
  %133 = call i1 @fCmpInstHandler(double %131, double 0x20000000000000, i1 %132, i32 4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94880629082976, i32 81, i32 23), !dbg !685
  br i1 %133, label %134, label %135, !dbg !685

; <label>:134:                                    ; preds = %86
  store double 0x20000000000000, double* %15, align 8, !dbg !686
  br label %135, !dbg !688

; <label>:135:                                    ; preds = %134, %86
  %136 = load double, double* %14, align 8, !dbg !689
  %137 = call double @fabs(double %136) #1, !dbg !691
  %138 = fcmp olt double %137, 0x20000000000000, !dbg !692
  %139 = call i1 @fCmpInstHandler(double %137, double 0x20000000000000, i1 %138, i32 4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94880629087776, i32 82, i32 23), !dbg !693
  br i1 %139, label %140, label %141, !dbg !693

; <label>:140:                                    ; preds = %135
  store double 0x20000000000000, double* %14, align 8, !dbg !694
  br label %141, !dbg !696

; <label>:141:                                    ; preds = %140, %135
  %142 = load double, double* %15, align 8, !dbg !697
  %143 = fdiv double 1.000000e+00, %142, !dbg !698
  call void @fDivHandler(double 1.000000e+00, double %142, double %143, i64 0, i64 94880629089624, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94880629090000, i32 83, i32 19), !dbg !699
  store double %143, double* %15, align 8, !dbg !699
  %144 = load double, double* %15, align 8, !dbg !700
  %145 = load double, double* %14, align 8, !dbg !701
  %146 = fmul double %144, %145, !dbg !702
  call void @fMulHandler(double %144, double %145, double %146, i64 94880629090776, i64 94880629091160, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94880629091568, i32 85, i32 26), !dbg !703
  store double %146, double* %18, align 8, !dbg !703
  %147 = load double, double* %18, align 8, !dbg !704
  %148 = load double, double* %13, align 8, !dbg !705
  %149 = fmul double %148, %147, !dbg !705
  call void @fMulHandler(double %148, double %147, double %149, i64 94880629092760, i64 94880629092376, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94880629093168, i32 86, i32 8), !dbg !705
  store double %149, double* %13, align 8, !dbg !705
  %150 = load double, double* %18, align 8, !dbg !706
  %151 = fsub double %150, 1.000000e+00, !dbg !708
  call void @fSubHandler(double %150, double 1.000000e+00, double %151, i64 94880629094952, i64 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94880629095392, i32 88, i32 23), !dbg !709
  %152 = call double @fabs(double %151) #1, !dbg !709
  %153 = fcmp olt double %152, 0x3CC0000000000000, !dbg !710
  %154 = call i1 @fCmpInstHandler(double %152, double 0x3CC0000000000000, i1 %153, i32 4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94880629096320, i32 88, i32 29), !dbg !711
  br i1 %154, label %155, label %156, !dbg !711

; <label>:155:                                    ; preds = %141
  br label %159, !dbg !712

; <label>:156:                                    ; preds = %141
  %157 = load i32, i32* %12, align 4, !dbg !714
  %158 = add i32 %157, 1, !dbg !714
  store i32 %158, i32* %12, align 4, !dbg !714
  br label %37, !dbg !715, !llvm.loop !717

; <label>:159:                                    ; preds = %155, %37
  %160 = load double, double* %13, align 8, !dbg !718
  %161 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !719
  %162 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %161, i32 0, i32 0, !dbg !720
  store double %160, double* %162, align 8, !dbg !721
  %163 = load i32, i32* %12, align 4, !dbg !722
  %164 = uitofp i32 %163 to double, !dbg !722
  %165 = fmul double %164, 4.000000e+00, !dbg !723
  call void @fMulHandler(double %164, double 4.000000e+00, double %165, i64 94880629102504, i64 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94880629104272, i32 94, i32 28), !dbg !724
  %166 = fmul double %165, 0x3CB0000000000000, !dbg !724
  call void @fMulHandler(double %165, double 0x3CB0000000000000, double %166, i64 94880629104272, i64 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94880629104720, i32 94, i32 34), !dbg !725
  %167 = load double, double* %13, align 8, !dbg !725
  %168 = call double @fabs(double %167) #1, !dbg !726
  %169 = fmul double %166, %168, !dbg !727
  call void @fMulHandler(double %166, double %168, double %169, i64 94880629104720, i64 94880629105584, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94880629106064, i32 94, i32 52), !dbg !728
  %170 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !728
  %171 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %170, i32 0, i32 1, !dbg !729
  store double %169, double* %171, align 8, !dbg !730
  %172 = load i32, i32* %12, align 4, !dbg !731
  %173 = icmp uge i32 %172, 512, !dbg !733
  %174 = sext i32 %172 to i64, !dbg !734
  %175 = call i1 @iCmpInstHandler(i64 %174, i64 512, i1 %173, i32 35, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94880629108112, i32 96, i32 17), !dbg !734
  br i1 %175, label %176, label %179, !dbg !734

; <label>:176:                                    ; preds = %159
  br label %177, !dbg !735, !llvm.loop !736

; <label>:177:                                    ; preds = %176
  call void @gsl_error(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 97, i32 11), !dbg !737
  store i32 11, i32* %5, align 4, !dbg !737
  br label %180, !dbg !737
                                                  ; No predecessors!
  br label %180, !dbg !740

; <label>:179:                                    ; preds = %159
  store i32 0, i32* %5, align 4, !dbg !742
  br label %180, !dbg !742

; <label>:180:                                    ; preds = %179, %178, %177
  %181 = load i32, i32* %5, align 4, !dbg !743
  ret i32 %181, !dbg !743
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_beta_inc(double, double, double) #0 !dbg !744 {
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca %struct.gsl_sf_result_struct, align 8
  %9 = alloca i32, align 4
  store double %0, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !747, metadata !60), !dbg !748
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !749, metadata !60), !dbg !750
  store double %2, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !751, metadata !60), !dbg !752
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %8, metadata !753, metadata !60), !dbg !754
  call void @llvm.dbg.declare(metadata i32* %9, metadata !755, metadata !60), !dbg !754
  %10 = load double, double* %5, align 8, !dbg !754
  %11 = load double, double* %6, align 8, !dbg !754
  %12 = load double, double* %7, align 8, !dbg !754
  %13 = call i32 @gsl_sf_beta_inc_e(double %10, double %11, double %12, %struct.gsl_sf_result_struct* %8), !dbg !754
  store i32 %13, i32* %9, align 4, !dbg !754
  %14 = load i32, i32* %9, align 4, !dbg !756
  %15 = icmp ne i32 %14, 0, !dbg !756
  %16 = sext i32 %14 to i64, !dbg !754
  %17 = call i1 @iCmpInstHandler(i64 %16, i64 0, i1 %15, i32 33, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94880629124912, i32 209, i32 3), !dbg !754
  br i1 %17, label %18, label %24, !dbg !754

; <label>:18:                                     ; preds = %3
  br label %19, !dbg !758, !llvm.loop !761

; <label>:19:                                     ; preds = %18
  %20 = load i32, i32* %9, align 4, !dbg !763
  call void @gsl_error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 209, i32 %20), !dbg !763
  %21 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 0, !dbg !763
  %22 = load double, double* %21, align 8, !dbg !763
  store double %22, double* %4, align 8, !dbg !763
  br label %27, !dbg !763
                                                  ; No predecessors!
  br label %24, !dbg !766

; <label>:24:                                     ; preds = %23, %3
  %25 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 0, !dbg !768
  %26 = load double, double* %25, align 8, !dbg !768
  store double %26, double* %4, align 8, !dbg !768
  br label %27, !dbg !768

; <label>:27:                                     ; preds = %24, %19
  %28 = load double, double* %4, align 8, !dbg !770
  ret double %28, !dbg !770
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
!1 = !DIFile(filename: "beta_inc.c", directory: "/fpcc/gsl-2.5/specfunc")
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
!45 = distinct !DISubprogram(name: "gsl_sf_beta_inc_e", scope: !1, file: !1, line: 107, type: !46, isLocal: false, isDefinition: true, scopeLine: 113, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!46 = !DISubroutineType(types: !47)
!47 = !{!48, !49, !49, !49, !51}
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
!59 = !DILocalVariable(name: "a", arg: 1, scope: !45, file: !1, line: 108, type: !49)
!60 = !DIExpression()
!61 = !DILocation(line: 108, column: 16, scope: !45)
!62 = !DILocalVariable(name: "b", arg: 2, scope: !45, file: !1, line: 109, type: !49)
!63 = !DILocation(line: 109, column: 16, scope: !45)
!64 = !DILocalVariable(name: "x", arg: 3, scope: !45, file: !1, line: 110, type: !49)
!65 = !DILocation(line: 110, column: 16, scope: !45)
!66 = !DILocalVariable(name: "result", arg: 4, scope: !45, file: !1, line: 111, type: !51)
!67 = !DILocation(line: 111, column: 19, scope: !45)
!68 = !DILocation(line: 114, column: 6, scope: !69)
!69 = distinct !DILexicalBlock(scope: !45, file: !1, line: 114, column: 6)
!70 = !DILocation(line: 114, column: 8, scope: !69)
!71 = !DILocation(line: 114, column: 14, scope: !69)
!72 = !DILocation(line: 114, column: 17, scope: !73)
!73 = !DILexicalBlockFile(scope: !69, file: !1, discriminator: 1)
!74 = !DILocation(line: 114, column: 19, scope: !73)
!75 = !DILocation(line: 114, column: 6, scope: !73)
!76 = !DILocation(line: 115, column: 5, scope: !77)
!77 = distinct !DILexicalBlock(scope: !69, file: !1, line: 114, column: 26)
!78 = distinct !{!78, !76}
!79 = !DILocation(line: 115, column: 5, scope: !80)
!80 = !DILexicalBlockFile(scope: !81, file: !1, discriminator: 1)
!81 = distinct !DILexicalBlock(scope: !77, file: !1, line: 115, column: 5)
!82 = distinct !{!82, !83}
!83 = !DILocation(line: 115, column: 5, scope: !81)
!84 = !DILocation(line: 115, column: 5, scope: !85)
!85 = !DILexicalBlockFile(scope: !86, file: !1, discriminator: 2)
!86 = distinct !DILexicalBlock(scope: !81, file: !1, line: 115, column: 5)
!87 = !DILocation(line: 115, column: 5, scope: !88)
!88 = !DILexicalBlockFile(scope: !81, file: !1, discriminator: 3)
!89 = !DILocation(line: 116, column: 3, scope: !77)
!90 = !DILocation(line: 116, column: 23, scope: !91)
!91 = !DILexicalBlockFile(scope: !92, file: !1, discriminator: 1)
!92 = distinct !DILexicalBlock(scope: !69, file: !1, line: 116, column: 14)
!93 = !DILocation(line: 116, column: 14, scope: !91)
!94 = !DILocation(line: 116, column: 26, scope: !91)
!95 = !DILocation(line: 116, column: 38, scope: !96)
!96 = !DILexicalBlockFile(scope: !92, file: !1, discriminator: 2)
!97 = !DILocation(line: 116, column: 29, scope: !96)
!98 = !DILocation(line: 116, column: 14, scope: !96)
!99 = !DILocation(line: 117, column: 5, scope: !100)
!100 = distinct !DILexicalBlock(scope: !92, file: !1, line: 116, column: 42)
!101 = distinct !{!101, !99}
!102 = !DILocation(line: 117, column: 5, scope: !103)
!103 = !DILexicalBlockFile(scope: !104, file: !1, discriminator: 1)
!104 = distinct !DILexicalBlock(scope: !100, file: !1, line: 117, column: 5)
!105 = distinct !{!105, !106}
!106 = !DILocation(line: 117, column: 5, scope: !104)
!107 = !DILocation(line: 117, column: 5, scope: !108)
!108 = !DILexicalBlockFile(scope: !109, file: !1, discriminator: 2)
!109 = distinct !DILexicalBlock(scope: !104, file: !1, line: 117, column: 5)
!110 = !DILocation(line: 117, column: 5, scope: !111)
!111 = !DILexicalBlockFile(scope: !104, file: !1, discriminator: 3)
!112 = !DILocation(line: 118, column: 3, scope: !100)
!113 = !DILocation(line: 118, column: 23, scope: !114)
!114 = !DILexicalBlockFile(scope: !115, file: !1, discriminator: 1)
!115 = distinct !DILexicalBlock(scope: !92, file: !1, line: 118, column: 14)
!116 = !DILocation(line: 118, column: 25, scope: !114)
!117 = !DILocation(line: 118, column: 24, scope: !114)
!118 = !DILocation(line: 118, column: 14, scope: !114)
!119 = !DILocation(line: 119, column: 5, scope: !120)
!120 = distinct !DILexicalBlock(scope: !115, file: !1, line: 118, column: 29)
!121 = distinct !{!121, !119}
!122 = !DILocation(line: 119, column: 5, scope: !123)
!123 = !DILexicalBlockFile(scope: !124, file: !1, discriminator: 1)
!124 = distinct !DILexicalBlock(scope: !120, file: !1, line: 119, column: 5)
!125 = distinct !{!125, !126}
!126 = !DILocation(line: 119, column: 5, scope: !124)
!127 = !DILocation(line: 119, column: 5, scope: !128)
!128 = !DILexicalBlockFile(scope: !129, file: !1, discriminator: 2)
!129 = distinct !DILexicalBlock(scope: !124, file: !1, line: 119, column: 5)
!130 = !DILocation(line: 119, column: 5, scope: !131)
!131 = !DILexicalBlockFile(scope: !124, file: !1, discriminator: 3)
!132 = !DILocation(line: 120, column: 3, scope: !120)
!133 = !DILocation(line: 120, column: 13, scope: !134)
!134 = !DILexicalBlockFile(scope: !135, file: !1, discriminator: 1)
!135 = distinct !DILexicalBlock(scope: !115, file: !1, line: 120, column: 13)
!136 = !DILocation(line: 120, column: 15, scope: !134)
!137 = !DILocation(line: 121, column: 5, scope: !138)
!138 = distinct !DILexicalBlock(scope: !135, file: !1, line: 120, column: 23)
!139 = !DILocation(line: 121, column: 13, scope: !138)
!140 = !DILocation(line: 121, column: 17, scope: !138)
!141 = !DILocation(line: 122, column: 5, scope: !138)
!142 = !DILocation(line: 122, column: 13, scope: !138)
!143 = !DILocation(line: 122, column: 17, scope: !138)
!144 = !DILocation(line: 123, column: 5, scope: !138)
!145 = !DILocation(line: 125, column: 11, scope: !146)
!146 = distinct !DILexicalBlock(scope: !135, file: !1, line: 125, column: 11)
!147 = !DILocation(line: 125, column: 13, scope: !146)
!148 = !DILocation(line: 125, column: 11, scope: !135)
!149 = !DILocation(line: 126, column: 5, scope: !150)
!150 = distinct !DILexicalBlock(scope: !146, file: !1, line: 125, column: 21)
!151 = !DILocation(line: 126, column: 13, scope: !150)
!152 = !DILocation(line: 126, column: 17, scope: !150)
!153 = !DILocation(line: 127, column: 5, scope: !150)
!154 = !DILocation(line: 127, column: 13, scope: !150)
!155 = !DILocation(line: 127, column: 17, scope: !150)
!156 = !DILocation(line: 128, column: 5, scope: !150)
!157 = !DILocation(line: 129, column: 14, scope: !158)
!158 = distinct !DILexicalBlock(scope: !146, file: !1, line: 129, column: 14)
!159 = !DILocation(line: 129, column: 16, scope: !158)
!160 = !DILocation(line: 129, column: 21, scope: !158)
!161 = !DILocation(line: 129, column: 24, scope: !162)
!162 = !DILexicalBlockFile(scope: !158, file: !1, discriminator: 1)
!163 = !DILocation(line: 129, column: 26, scope: !162)
!164 = !DILocation(line: 129, column: 14, scope: !162)
!165 = !DILocalVariable(name: "f", scope: !166, file: !1, line: 130, type: !52)
!166 = distinct !DILexicalBlock(scope: !158, file: !1, line: 129, column: 32)
!167 = !DILocation(line: 130, column: 19, scope: !166)
!168 = !DILocalVariable(name: "beta", scope: !166, file: !1, line: 130, type: !52)
!169 = !DILocation(line: 130, column: 22, scope: !166)
!170 = !DILocalVariable(name: "stat", scope: !166, file: !1, line: 131, type: !48)
!171 = !DILocation(line: 131, column: 9, scope: !166)
!172 = !DILocalVariable(name: "stat_f", scope: !166, file: !1, line: 132, type: !173)
!173 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !48)
!174 = !DILocation(line: 132, column: 15, scope: !166)
!175 = !DILocation(line: 132, column: 44, scope: !166)
!176 = !DILocation(line: 132, column: 49, scope: !166)
!177 = !DILocation(line: 132, column: 48, scope: !166)
!178 = !DILocation(line: 132, column: 52, scope: !166)
!179 = !DILocation(line: 132, column: 53, scope: !166)
!180 = !DILocation(line: 132, column: 57, scope: !166)
!181 = !DILocation(line: 132, column: 24, scope: !166)
!182 = !DILocalVariable(name: "stat_beta", scope: !166, file: !1, line: 133, type: !173)
!183 = !DILocation(line: 133, column: 15, scope: !166)
!184 = !DILocation(line: 133, column: 41, scope: !166)
!185 = !DILocation(line: 133, column: 44, scope: !166)
!186 = !DILocation(line: 133, column: 27, scope: !166)
!187 = !DILocalVariable(name: "prefactor", scope: !166, file: !1, line: 134, type: !50)
!188 = !DILocation(line: 134, column: 12, scope: !166)
!189 = !DILocation(line: 134, column: 29, scope: !166)
!190 = !DILocation(line: 134, column: 32, scope: !166)
!191 = !DILocation(line: 134, column: 25, scope: !166)
!192 = !DILocation(line: 134, column: 37, scope: !166)
!193 = !DILocation(line: 134, column: 35, scope: !166)
!194 = !DILocation(line: 135, column: 19, scope: !166)
!195 = !DILocation(line: 135, column: 33, scope: !166)
!196 = !DILocation(line: 135, column: 29, scope: !166)
!197 = !DILocation(line: 135, column: 44, scope: !166)
!198 = !DILocation(line: 135, column: 37, scope: !166)
!199 = !DILocation(line: 135, column: 5, scope: !166)
!200 = !DILocation(line: 135, column: 13, scope: !166)
!201 = !DILocation(line: 135, column: 17, scope: !166)
!202 = !DILocation(line: 136, column: 24, scope: !166)
!203 = !DILocation(line: 136, column: 19, scope: !166)
!204 = !DILocation(line: 136, column: 39, scope: !166)
!205 = !DILocation(line: 136, column: 35, scope: !166)
!206 = !DILocation(line: 136, column: 54, scope: !166)
!207 = !DILocation(line: 136, column: 44, scope: !208)
!208 = !DILexicalBlockFile(scope: !166, file: !1, discriminator: 1)
!209 = !DILocation(line: 136, column: 42, scope: !166)
!210 = !DILocation(line: 136, column: 66, scope: !166)
!211 = !DILocation(line: 136, column: 74, scope: !166)
!212 = !DILocation(line: 136, column: 83, scope: !166)
!213 = !DILocation(line: 136, column: 77, scope: !166)
!214 = !DILocation(line: 136, column: 61, scope: !215)
!215 = !DILexicalBlockFile(scope: !166, file: !1, discriminator: 2)
!216 = !DILocation(line: 136, column: 95, scope: !166)
!217 = !DILocation(line: 136, column: 88, scope: !166)
!218 = !DILocation(line: 136, column: 59, scope: !166)
!219 = !DILocation(line: 136, column: 5, scope: !166)
!220 = !DILocation(line: 136, column: 13, scope: !166)
!221 = !DILocation(line: 136, column: 17, scope: !166)
!222 = !DILocation(line: 138, column: 12, scope: !166)
!223 = !DILocation(line: 138, column: 12, scope: !208)
!224 = !DILocation(line: 138, column: 12, scope: !215)
!225 = !DILocation(line: 138, column: 12, scope: !226)
!226 = !DILexicalBlockFile(scope: !166, file: !1, discriminator: 3)
!227 = !DILocation(line: 138, column: 12, scope: !228)
!228 = !DILexicalBlockFile(scope: !166, file: !1, discriminator: 4)
!229 = !DILocation(line: 138, column: 12, scope: !230)
!230 = !DILexicalBlockFile(scope: !166, file: !1, discriminator: 5)
!231 = !DILocation(line: 138, column: 12, scope: !232)
!232 = !DILexicalBlockFile(scope: !166, file: !1, discriminator: 6)
!233 = !DILocation(line: 138, column: 10, scope: !232)
!234 = !DILocation(line: 139, column: 8, scope: !235)
!235 = distinct !DILexicalBlock(scope: !166, file: !1, line: 139, column: 8)
!236 = !DILocation(line: 139, column: 13, scope: !235)
!237 = !DILocation(line: 139, column: 8, scope: !166)
!238 = !DILocation(line: 140, column: 7, scope: !239)
!239 = distinct !DILexicalBlock(scope: !240, file: !1, line: 140, column: 7)
!240 = distinct !DILexicalBlock(scope: !235, file: !1, line: 139, column: 29)
!241 = !DILocation(line: 140, column: 7, scope: !240)
!242 = !DILocation(line: 140, column: 7, scope: !243)
!243 = !DILexicalBlockFile(scope: !239, file: !1, discriminator: 1)
!244 = distinct !{!244, !238}
!245 = !DILocation(line: 140, column: 7, scope: !246)
!246 = !DILexicalBlockFile(scope: !247, file: !1, discriminator: 2)
!247 = distinct !DILexicalBlock(scope: !239, file: !1, line: 140, column: 7)
!248 = !DILocation(line: 140, column: 7, scope: !249)
!249 = !DILexicalBlockFile(scope: !247, file: !1, discriminator: 3)
!250 = !DILocation(line: 141, column: 5, scope: !240)
!251 = !DILocation(line: 142, column: 12, scope: !166)
!252 = !DILocation(line: 142, column: 5, scope: !166)
!253 = !DILocalVariable(name: "ln_beta", scope: !254, file: !1, line: 144, type: !52)
!254 = distinct !DILexicalBlock(scope: !158, file: !1, line: 143, column: 10)
!255 = !DILocation(line: 144, column: 19, scope: !254)
!256 = !DILocalVariable(name: "ln_x", scope: !254, file: !1, line: 145, type: !52)
!257 = !DILocation(line: 145, column: 19, scope: !254)
!258 = !DILocalVariable(name: "ln_1mx", scope: !254, file: !1, line: 146, type: !52)
!259 = !DILocation(line: 146, column: 19, scope: !254)
!260 = !DILocalVariable(name: "prefactor", scope: !254, file: !1, line: 147, type: !52)
!261 = !DILocation(line: 147, column: 19, scope: !254)
!262 = !DILocalVariable(name: "stat_ln_beta", scope: !254, file: !1, line: 148, type: !173)
!263 = !DILocation(line: 148, column: 15, scope: !254)
!264 = !DILocation(line: 148, column: 46, scope: !254)
!265 = !DILocation(line: 148, column: 49, scope: !254)
!266 = !DILocation(line: 148, column: 30, scope: !254)
!267 = !DILocalVariable(name: "stat_ln_1mx", scope: !254, file: !1, line: 149, type: !173)
!268 = !DILocation(line: 149, column: 15, scope: !254)
!269 = !DILocation(line: 149, column: 50, scope: !254)
!270 = !DILocation(line: 149, column: 49, scope: !254)
!271 = !DILocation(line: 149, column: 29, scope: !254)
!272 = !DILocalVariable(name: "stat_ln_x", scope: !254, file: !1, line: 150, type: !173)
!273 = !DILocation(line: 150, column: 15, scope: !254)
!274 = !DILocation(line: 150, column: 40, scope: !254)
!275 = !DILocation(line: 150, column: 27, scope: !254)
!276 = !DILocalVariable(name: "stat_ln", scope: !254, file: !1, line: 151, type: !173)
!277 = !DILocation(line: 151, column: 15, scope: !254)
!278 = !DILocation(line: 151, column: 25, scope: !254)
!279 = !DILocation(line: 151, column: 25, scope: !280)
!280 = !DILexicalBlockFile(scope: !254, file: !1, discriminator: 1)
!281 = !DILocation(line: 151, column: 25, scope: !282)
!282 = !DILexicalBlockFile(scope: !254, file: !1, discriminator: 2)
!283 = !DILocation(line: 151, column: 25, scope: !284)
!284 = !DILexicalBlockFile(scope: !254, file: !1, discriminator: 3)
!285 = !DILocation(line: 151, column: 25, scope: !286)
!286 = !DILexicalBlockFile(scope: !254, file: !1, discriminator: 4)
!287 = !DILocation(line: 151, column: 25, scope: !288)
!288 = !DILexicalBlockFile(scope: !254, file: !1, discriminator: 5)
!289 = !DILocation(line: 151, column: 25, scope: !290)
!290 = !DILexicalBlockFile(scope: !254, file: !1, discriminator: 6)
!291 = !DILocation(line: 151, column: 25, scope: !292)
!292 = !DILexicalBlockFile(scope: !254, file: !1, discriminator: 7)
!293 = !DILocation(line: 151, column: 25, scope: !294)
!294 = !DILexicalBlockFile(scope: !254, file: !1, discriminator: 8)
!295 = !DILocation(line: 151, column: 25, scope: !296)
!296 = !DILexicalBlockFile(scope: !254, file: !1, discriminator: 9)
!297 = !DILocation(line: 151, column: 15, scope: !296)
!298 = !DILocalVariable(name: "ln_pre_val", scope: !254, file: !1, line: 153, type: !49)
!299 = !DILocation(line: 153, column: 18, scope: !254)
!300 = !DILocation(line: 153, column: 40, scope: !254)
!301 = !DILocation(line: 153, column: 31, scope: !254)
!302 = !DILocation(line: 153, column: 46, scope: !254)
!303 = !DILocation(line: 153, column: 55, scope: !254)
!304 = !DILocation(line: 153, column: 48, scope: !254)
!305 = !DILocation(line: 153, column: 44, scope: !254)
!306 = !DILocation(line: 153, column: 61, scope: !254)
!307 = !DILocation(line: 153, column: 72, scope: !254)
!308 = !DILocation(line: 153, column: 63, scope: !254)
!309 = !DILocation(line: 153, column: 59, scope: !254)
!310 = !DILocalVariable(name: "ln_pre_err", scope: !254, file: !1, line: 154, type: !49)
!311 = !DILocation(line: 154, column: 18, scope: !254)
!312 = !DILocation(line: 154, column: 40, scope: !254)
!313 = !DILocation(line: 154, column: 51, scope: !254)
!314 = !DILocation(line: 154, column: 58, scope: !254)
!315 = !DILocation(line: 154, column: 52, scope: !254)
!316 = !DILocation(line: 154, column: 46, scope: !254)
!317 = !DILocation(line: 154, column: 44, scope: !254)
!318 = !DILocation(line: 154, column: 70, scope: !254)
!319 = !DILocation(line: 154, column: 79, scope: !254)
!320 = !DILocation(line: 154, column: 71, scope: !254)
!321 = !DILocation(line: 154, column: 65, scope: !280)
!322 = !DILocation(line: 154, column: 63, scope: !254)
!323 = !DILocalVariable(name: "stat_exp", scope: !254, file: !1, line: 155, type: !173)
!324 = !DILocation(line: 155, column: 15, scope: !254)
!325 = !DILocation(line: 155, column: 43, scope: !254)
!326 = !DILocation(line: 155, column: 55, scope: !254)
!327 = !DILocation(line: 155, column: 26, scope: !254)
!328 = !DILocation(line: 157, column: 8, scope: !329)
!329 = distinct !DILexicalBlock(scope: !254, file: !1, line: 157, column: 8)
!330 = !DILocation(line: 157, column: 16, scope: !329)
!331 = !DILocation(line: 157, column: 8, scope: !254)
!332 = !DILocation(line: 158, column: 7, scope: !333)
!333 = distinct !DILexicalBlock(scope: !329, file: !1, line: 157, column: 32)
!334 = !DILocation(line: 158, column: 15, scope: !333)
!335 = !DILocation(line: 158, column: 19, scope: !333)
!336 = !DILocation(line: 159, column: 7, scope: !333)
!337 = !DILocation(line: 159, column: 15, scope: !333)
!338 = !DILocation(line: 159, column: 19, scope: !333)
!339 = !DILocation(line: 160, column: 7, scope: !333)
!340 = distinct !{!340, !339}
!341 = !DILocation(line: 160, column: 7, scope: !342)
!342 = !DILexicalBlockFile(scope: !343, file: !1, discriminator: 1)
!343 = distinct !DILexicalBlock(scope: !333, file: !1, line: 160, column: 7)
!344 = !DILocation(line: 161, column: 5, scope: !333)
!345 = !DILocation(line: 163, column: 8, scope: !346)
!346 = distinct !DILexicalBlock(scope: !254, file: !1, line: 163, column: 8)
!347 = !DILocation(line: 163, column: 13, scope: !346)
!348 = !DILocation(line: 163, column: 15, scope: !346)
!349 = !DILocation(line: 163, column: 23, scope: !346)
!350 = !DILocation(line: 163, column: 25, scope: !346)
!351 = !DILocation(line: 163, column: 24, scope: !346)
!352 = !DILocation(line: 163, column: 26, scope: !346)
!353 = !DILocation(line: 163, column: 21, scope: !346)
!354 = !DILocation(line: 163, column: 10, scope: !346)
!355 = !DILocation(line: 163, column: 8, scope: !254)
!356 = !DILocalVariable(name: "cf", scope: !357, file: !1, line: 165, type: !52)
!357 = distinct !DILexicalBlock(scope: !346, file: !1, line: 163, column: 33)
!358 = !DILocation(line: 165, column: 21, scope: !357)
!359 = !DILocalVariable(name: "stat_cf", scope: !357, file: !1, line: 166, type: !173)
!360 = !DILocation(line: 166, column: 17, scope: !357)
!361 = !DILocation(line: 166, column: 42, scope: !357)
!362 = !DILocation(line: 166, column: 45, scope: !357)
!363 = !DILocation(line: 166, column: 48, scope: !357)
!364 = !DILocation(line: 166, column: 27, scope: !357)
!365 = !DILocalVariable(name: "stat", scope: !357, file: !1, line: 167, type: !48)
!366 = !DILocation(line: 167, column: 11, scope: !357)
!367 = !DILocation(line: 168, column: 31, scope: !357)
!368 = !DILocation(line: 168, column: 40, scope: !357)
!369 = !DILocation(line: 168, column: 35, scope: !357)
!370 = !DILocation(line: 168, column: 46, scope: !357)
!371 = !DILocation(line: 168, column: 44, scope: !357)
!372 = !DILocation(line: 168, column: 7, scope: !357)
!373 = !DILocation(line: 168, column: 15, scope: !357)
!374 = !DILocation(line: 168, column: 19, scope: !357)
!375 = !DILocation(line: 169, column: 37, scope: !357)
!376 = !DILocation(line: 169, column: 46, scope: !357)
!377 = !DILocation(line: 169, column: 41, scope: !357)
!378 = !DILocation(line: 169, column: 22, scope: !357)
!379 = !DILocation(line: 169, column: 68, scope: !357)
!380 = !DILocation(line: 169, column: 77, scope: !357)
!381 = !DILocation(line: 169, column: 72, scope: !357)
!382 = !DILocation(line: 169, column: 53, scope: !383)
!383 = !DILexicalBlockFile(scope: !357, file: !1, discriminator: 1)
!384 = !DILocation(line: 169, column: 51, scope: !357)
!385 = !DILocation(line: 169, column: 83, scope: !357)
!386 = !DILocation(line: 169, column: 82, scope: !357)
!387 = !DILocation(line: 169, column: 7, scope: !357)
!388 = !DILocation(line: 169, column: 15, scope: !357)
!389 = !DILocation(line: 169, column: 19, scope: !357)
!390 = !DILocation(line: 171, column: 14, scope: !357)
!391 = !DILocation(line: 171, column: 14, scope: !383)
!392 = !DILocation(line: 171, column: 14, scope: !393)
!393 = !DILexicalBlockFile(scope: !357, file: !1, discriminator: 2)
!394 = !DILocation(line: 171, column: 14, scope: !395)
!395 = !DILexicalBlockFile(scope: !357, file: !1, discriminator: 3)
!396 = !DILocation(line: 171, column: 14, scope: !397)
!397 = !DILexicalBlockFile(scope: !357, file: !1, discriminator: 4)
!398 = !DILocation(line: 171, column: 14, scope: !399)
!399 = !DILexicalBlockFile(scope: !357, file: !1, discriminator: 5)
!400 = !DILocation(line: 171, column: 14, scope: !401)
!401 = !DILexicalBlockFile(scope: !357, file: !1, discriminator: 6)
!402 = !DILocation(line: 171, column: 12, scope: !401)
!403 = !DILocation(line: 172, column: 10, scope: !404)
!404 = distinct !DILexicalBlock(scope: !357, file: !1, line: 172, column: 10)
!405 = !DILocation(line: 172, column: 15, scope: !404)
!406 = !DILocation(line: 172, column: 10, scope: !357)
!407 = !DILocation(line: 173, column: 9, scope: !408)
!408 = distinct !DILexicalBlock(scope: !409, file: !1, line: 173, column: 9)
!409 = distinct !DILexicalBlock(scope: !404, file: !1, line: 172, column: 31)
!410 = !DILocation(line: 173, column: 9, scope: !409)
!411 = !DILocation(line: 173, column: 9, scope: !412)
!412 = !DILexicalBlockFile(scope: !408, file: !1, discriminator: 1)
!413 = distinct !{!413, !407}
!414 = !DILocation(line: 173, column: 9, scope: !415)
!415 = !DILexicalBlockFile(scope: !416, file: !1, discriminator: 2)
!416 = distinct !DILexicalBlock(scope: !408, file: !1, line: 173, column: 9)
!417 = !DILocation(line: 173, column: 9, scope: !418)
!418 = !DILexicalBlockFile(scope: !416, file: !1, discriminator: 3)
!419 = !DILocation(line: 174, column: 7, scope: !409)
!420 = !DILocation(line: 175, column: 14, scope: !357)
!421 = !DILocation(line: 175, column: 7, scope: !357)
!422 = !DILocalVariable(name: "cf", scope: !423, file: !1, line: 179, type: !52)
!423 = distinct !DILexicalBlock(scope: !346, file: !1, line: 177, column: 10)
!424 = !DILocation(line: 179, column: 21, scope: !423)
!425 = !DILocalVariable(name: "stat_cf", scope: !423, file: !1, line: 180, type: !173)
!426 = !DILocation(line: 180, column: 17, scope: !423)
!427 = !DILocation(line: 180, column: 42, scope: !423)
!428 = !DILocation(line: 180, column: 45, scope: !423)
!429 = !DILocation(line: 180, column: 52, scope: !423)
!430 = !DILocation(line: 180, column: 51, scope: !423)
!431 = !DILocation(line: 180, column: 27, scope: !423)
!432 = !DILocalVariable(name: "stat", scope: !423, file: !1, line: 181, type: !48)
!433 = !DILocation(line: 181, column: 11, scope: !423)
!434 = !DILocalVariable(name: "term", scope: !423, file: !1, line: 182, type: !49)
!435 = !DILocation(line: 182, column: 20, scope: !423)
!436 = !DILocation(line: 182, column: 37, scope: !423)
!437 = !DILocation(line: 182, column: 46, scope: !423)
!438 = !DILocation(line: 182, column: 41, scope: !423)
!439 = !DILocation(line: 182, column: 52, scope: !423)
!440 = !DILocation(line: 182, column: 50, scope: !423)
!441 = !DILocation(line: 183, column: 28, scope: !423)
!442 = !DILocation(line: 183, column: 26, scope: !423)
!443 = !DILocation(line: 183, column: 7, scope: !423)
!444 = !DILocation(line: 183, column: 15, scope: !423)
!445 = !DILocation(line: 183, column: 20, scope: !423)
!446 = !DILocation(line: 184, column: 37, scope: !423)
!447 = !DILocation(line: 184, column: 46, scope: !423)
!448 = !DILocation(line: 184, column: 41, scope: !423)
!449 = !DILocation(line: 184, column: 22, scope: !423)
!450 = !DILocation(line: 184, column: 51, scope: !423)
!451 = !DILocation(line: 184, column: 50, scope: !423)
!452 = !DILocation(line: 184, column: 7, scope: !423)
!453 = !DILocation(line: 184, column: 15, scope: !423)
!454 = !DILocation(line: 184, column: 20, scope: !423)
!455 = !DILocation(line: 185, column: 37, scope: !423)
!456 = !DILocation(line: 185, column: 46, scope: !423)
!457 = !DILocation(line: 185, column: 41, scope: !423)
!458 = !DILocation(line: 185, column: 22, scope: !423)
!459 = !DILocation(line: 185, column: 51, scope: !423)
!460 = !DILocation(line: 185, column: 50, scope: !423)
!461 = !DILocation(line: 185, column: 7, scope: !423)
!462 = !DILocation(line: 185, column: 15, scope: !423)
!463 = !DILocation(line: 185, column: 19, scope: !423)
!464 = !DILocation(line: 186, column: 58, scope: !423)
!465 = !DILocation(line: 186, column: 53, scope: !423)
!466 = !DILocation(line: 186, column: 51, scope: !423)
!467 = !DILocation(line: 186, column: 44, scope: !423)
!468 = !DILocation(line: 186, column: 7, scope: !423)
!469 = !DILocation(line: 186, column: 15, scope: !423)
!470 = !DILocation(line: 186, column: 19, scope: !423)
!471 = !DILocation(line: 189, column: 11, scope: !472)
!472 = distinct !DILexicalBlock(scope: !423, file: !1, line: 189, column: 11)
!473 = !DILocation(line: 189, column: 20, scope: !472)
!474 = !DILocation(line: 189, column: 11, scope: !423)
!475 = !DILocation(line: 190, column: 16, scope: !476)
!476 = distinct !DILexicalBlock(scope: !472, file: !1, line: 189, column: 37)
!477 = !DILocation(line: 190, column: 16, scope: !478)
!478 = !DILexicalBlockFile(scope: !476, file: !1, discriminator: 1)
!479 = !DILocation(line: 190, column: 16, scope: !480)
!480 = !DILexicalBlockFile(scope: !476, file: !1, discriminator: 2)
!481 = !DILocation(line: 190, column: 16, scope: !482)
!482 = !DILexicalBlockFile(scope: !476, file: !1, discriminator: 3)
!483 = !DILocation(line: 190, column: 16, scope: !484)
!484 = !DILexicalBlockFile(scope: !476, file: !1, discriminator: 4)
!485 = !DILocation(line: 190, column: 16, scope: !486)
!486 = !DILexicalBlockFile(scope: !476, file: !1, discriminator: 5)
!487 = !DILocation(line: 190, column: 16, scope: !488)
!488 = !DILexicalBlockFile(scope: !476, file: !1, discriminator: 6)
!489 = !DILocation(line: 190, column: 14, scope: !488)
!490 = !DILocation(line: 191, column: 7, scope: !476)
!491 = !DILocation(line: 192, column: 16, scope: !492)
!492 = distinct !DILexicalBlock(scope: !472, file: !1, line: 191, column: 14)
!493 = !DILocation(line: 192, column: 14, scope: !492)
!494 = !DILocation(line: 194, column: 10, scope: !495)
!495 = distinct !DILexicalBlock(scope: !423, file: !1, line: 194, column: 10)
!496 = !DILocation(line: 194, column: 15, scope: !495)
!497 = !DILocation(line: 194, column: 10, scope: !423)
!498 = !DILocation(line: 195, column: 9, scope: !499)
!499 = distinct !DILexicalBlock(scope: !500, file: !1, line: 195, column: 9)
!500 = distinct !DILexicalBlock(scope: !495, file: !1, line: 194, column: 31)
!501 = !DILocation(line: 195, column: 9, scope: !500)
!502 = !DILocation(line: 195, column: 9, scope: !503)
!503 = !DILexicalBlockFile(scope: !499, file: !1, discriminator: 1)
!504 = distinct !{!504, !498}
!505 = !DILocation(line: 195, column: 9, scope: !506)
!506 = !DILexicalBlockFile(scope: !507, file: !1, discriminator: 2)
!507 = distinct !DILexicalBlock(scope: !499, file: !1, line: 195, column: 9)
!508 = !DILocation(line: 195, column: 9, scope: !509)
!509 = !DILexicalBlockFile(scope: !507, file: !1, discriminator: 3)
!510 = !DILocation(line: 196, column: 7, scope: !500)
!511 = !DILocation(line: 197, column: 14, scope: !423)
!512 = !DILocation(line: 197, column: 7, scope: !423)
!513 = !DILocation(line: 200, column: 1, scope: !45)
!514 = distinct !DISubprogram(name: "isnegint", scope: !1, file: !1, line: 35, type: !515, isLocal: true, isDefinition: true, scopeLine: 36, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!515 = !DISubroutineType(types: !516)
!516 = !{!50, !49}
!517 = !DILocalVariable(name: "x", arg: 1, scope: !514, file: !1, line: 35, type: !49)
!518 = !DILocation(line: 35, column: 24, scope: !514)
!519 = !DILocation(line: 37, column: 11, scope: !514)
!520 = !DILocation(line: 37, column: 13, scope: !514)
!521 = !DILocation(line: 37, column: 18, scope: !514)
!522 = !DILocation(line: 37, column: 22, scope: !523)
!523 = !DILexicalBlockFile(scope: !514, file: !1, discriminator: 1)
!524 = !DILocation(line: 37, column: 33, scope: !523)
!525 = !DILocation(line: 37, column: 27, scope: !523)
!526 = !DILocation(line: 37, column: 24, scope: !523)
!527 = !DILocation(line: 37, column: 18, scope: !528)
!528 = !DILexicalBlockFile(scope: !514, file: !1, discriminator: 2)
!529 = !DILocation(line: 37, column: 10, scope: !528)
!530 = !DILocation(line: 37, column: 3, scope: !528)
!531 = distinct !DISubprogram(name: "beta_cont_frac", scope: !1, file: !1, line: 42, type: !46, isLocal: true, isDefinition: true, scopeLine: 48, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!532 = !DILocalVariable(name: "a", arg: 1, scope: !531, file: !1, line: 43, type: !49)
!533 = !DILocation(line: 43, column: 16, scope: !531)
!534 = !DILocalVariable(name: "b", arg: 2, scope: !531, file: !1, line: 44, type: !49)
!535 = !DILocation(line: 44, column: 16, scope: !531)
!536 = !DILocalVariable(name: "x", arg: 3, scope: !531, file: !1, line: 45, type: !49)
!537 = !DILocation(line: 45, column: 16, scope: !531)
!538 = !DILocalVariable(name: "result", arg: 4, scope: !531, file: !1, line: 46, type: !51)
!539 = !DILocation(line: 46, column: 19, scope: !531)
!540 = !DILocalVariable(name: "max_iter", scope: !531, file: !1, line: 49, type: !541)
!541 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !542)
!542 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!543 = !DILocation(line: 49, column: 22, scope: !531)
!544 = !DILocalVariable(name: "cutoff", scope: !531, file: !1, line: 50, type: !49)
!545 = !DILocation(line: 50, column: 16, scope: !531)
!546 = !DILocalVariable(name: "iter_count", scope: !531, file: !1, line: 51, type: !542)
!547 = !DILocation(line: 51, column: 16, scope: !531)
!548 = !DILocalVariable(name: "cf", scope: !531, file: !1, line: 52, type: !50)
!549 = !DILocation(line: 52, column: 10, scope: !531)
!550 = !DILocalVariable(name: "num_term", scope: !531, file: !1, line: 55, type: !50)
!551 = !DILocation(line: 55, column: 10, scope: !531)
!552 = !DILocalVariable(name: "den_term", scope: !531, file: !1, line: 56, type: !50)
!553 = !DILocation(line: 56, column: 10, scope: !531)
!554 = !DILocation(line: 56, column: 28, scope: !531)
!555 = !DILocation(line: 56, column: 30, scope: !531)
!556 = !DILocation(line: 56, column: 29, scope: !531)
!557 = !DILocation(line: 56, column: 33, scope: !531)
!558 = !DILocation(line: 56, column: 32, scope: !531)
!559 = !DILocation(line: 56, column: 36, scope: !531)
!560 = !DILocation(line: 56, column: 37, scope: !531)
!561 = !DILocation(line: 56, column: 34, scope: !531)
!562 = !DILocation(line: 56, column: 25, scope: !531)
!563 = !DILocation(line: 57, column: 12, scope: !564)
!564 = distinct !DILexicalBlock(scope: !531, file: !1, line: 57, column: 7)
!565 = !DILocation(line: 57, column: 7, scope: !564)
!566 = !DILocation(line: 57, column: 22, scope: !564)
!567 = !DILocation(line: 57, column: 7, scope: !531)
!568 = !DILocation(line: 57, column: 41, scope: !569)
!569 = !DILexicalBlockFile(scope: !564, file: !1, discriminator: 1)
!570 = !DILocation(line: 57, column: 32, scope: !569)
!571 = !DILocation(line: 58, column: 18, scope: !531)
!572 = !DILocation(line: 58, column: 17, scope: !531)
!573 = !DILocation(line: 58, column: 12, scope: !531)
!574 = !DILocation(line: 59, column: 8, scope: !531)
!575 = !DILocation(line: 59, column: 6, scope: !531)
!576 = !DILocation(line: 61, column: 3, scope: !531)
!577 = !DILocation(line: 61, column: 9, scope: !578)
!578 = !DILexicalBlockFile(scope: !531, file: !1, discriminator: 1)
!579 = !DILocation(line: 61, column: 20, scope: !578)
!580 = !DILocation(line: 61, column: 3, scope: !578)
!581 = !DILocalVariable(name: "k", scope: !582, file: !1, line: 62, type: !173)
!582 = distinct !DILexicalBlock(scope: !531, file: !1, line: 61, column: 32)
!583 = !DILocation(line: 62, column: 15, scope: !582)
!584 = !DILocation(line: 62, column: 20, scope: !582)
!585 = !DILocation(line: 62, column: 31, scope: !582)
!586 = !DILocalVariable(name: "coeff", scope: !582, file: !1, line: 63, type: !50)
!587 = !DILocation(line: 63, column: 12, scope: !582)
!588 = !DILocation(line: 63, column: 20, scope: !582)
!589 = !DILocation(line: 63, column: 23, scope: !582)
!590 = !DILocation(line: 63, column: 25, scope: !582)
!591 = !DILocation(line: 63, column: 24, scope: !582)
!592 = !DILocation(line: 63, column: 21, scope: !582)
!593 = !DILocation(line: 63, column: 28, scope: !582)
!594 = !DILocation(line: 63, column: 27, scope: !582)
!595 = !DILocation(line: 63, column: 33, scope: !582)
!596 = !DILocation(line: 63, column: 34, scope: !582)
!597 = !DILocation(line: 63, column: 42, scope: !582)
!598 = !DILocation(line: 63, column: 41, scope: !582)
!599 = !DILocation(line: 63, column: 40, scope: !582)
!600 = !DILocation(line: 63, column: 39, scope: !582)
!601 = !DILocation(line: 63, column: 46, scope: !582)
!602 = !DILocation(line: 63, column: 50, scope: !582)
!603 = !DILocation(line: 63, column: 49, scope: !582)
!604 = !DILocation(line: 63, column: 48, scope: !582)
!605 = !DILocation(line: 63, column: 47, scope: !582)
!606 = !DILocation(line: 63, column: 44, scope: !582)
!607 = !DILocation(line: 63, column: 29, scope: !582)
!608 = !DILocalVariable(name: "delta_frac", scope: !582, file: !1, line: 64, type: !50)
!609 = !DILocation(line: 64, column: 12, scope: !582)
!610 = !DILocation(line: 67, column: 22, scope: !582)
!611 = !DILocation(line: 67, column: 28, scope: !582)
!612 = !DILocation(line: 67, column: 27, scope: !582)
!613 = !DILocation(line: 67, column: 20, scope: !582)
!614 = !DILocation(line: 67, column: 14, scope: !582)
!615 = !DILocation(line: 68, column: 22, scope: !582)
!616 = !DILocation(line: 68, column: 28, scope: !582)
!617 = !DILocation(line: 68, column: 27, scope: !582)
!618 = !DILocation(line: 68, column: 20, scope: !582)
!619 = !DILocation(line: 68, column: 14, scope: !582)
!620 = !DILocation(line: 69, column: 13, scope: !621)
!621 = distinct !DILexicalBlock(scope: !582, file: !1, line: 69, column: 8)
!622 = !DILocation(line: 69, column: 8, scope: !621)
!623 = !DILocation(line: 69, column: 23, scope: !621)
!624 = !DILocation(line: 69, column: 8, scope: !582)
!625 = !DILocation(line: 69, column: 42, scope: !626)
!626 = !DILexicalBlockFile(scope: !621, file: !1, discriminator: 1)
!627 = !DILocation(line: 69, column: 33, scope: !626)
!628 = !DILocation(line: 70, column: 13, scope: !629)
!629 = distinct !DILexicalBlock(scope: !582, file: !1, line: 70, column: 8)
!630 = !DILocation(line: 70, column: 8, scope: !629)
!631 = !DILocation(line: 70, column: 23, scope: !629)
!632 = !DILocation(line: 70, column: 8, scope: !582)
!633 = !DILocation(line: 70, column: 42, scope: !634)
!634 = !DILexicalBlockFile(scope: !629, file: !1, discriminator: 1)
!635 = !DILocation(line: 70, column: 33, scope: !634)
!636 = !DILocation(line: 71, column: 21, scope: !582)
!637 = !DILocation(line: 71, column: 20, scope: !582)
!638 = !DILocation(line: 71, column: 15, scope: !582)
!639 = !DILocation(line: 73, column: 18, scope: !582)
!640 = !DILocation(line: 73, column: 29, scope: !582)
!641 = !DILocation(line: 73, column: 27, scope: !582)
!642 = !DILocation(line: 73, column: 16, scope: !582)
!643 = !DILocation(line: 74, column: 11, scope: !582)
!644 = !DILocation(line: 74, column: 8, scope: !582)
!645 = !DILocation(line: 76, column: 15, scope: !582)
!646 = !DILocation(line: 76, column: 17, scope: !582)
!647 = !DILocation(line: 76, column: 16, scope: !582)
!648 = !DILocation(line: 76, column: 13, scope: !582)
!649 = !DILocation(line: 76, column: 21, scope: !582)
!650 = !DILocation(line: 76, column: 23, scope: !582)
!651 = !DILocation(line: 76, column: 22, scope: !582)
!652 = !DILocation(line: 76, column: 25, scope: !582)
!653 = !DILocation(line: 76, column: 24, scope: !582)
!654 = !DILocation(line: 76, column: 19, scope: !582)
!655 = !DILocation(line: 76, column: 28, scope: !582)
!656 = !DILocation(line: 76, column: 27, scope: !582)
!657 = !DILocation(line: 76, column: 32, scope: !582)
!658 = !DILocation(line: 76, column: 36, scope: !582)
!659 = !DILocation(line: 76, column: 35, scope: !582)
!660 = !DILocation(line: 76, column: 34, scope: !582)
!661 = !DILocation(line: 76, column: 33, scope: !582)
!662 = !DILocation(line: 76, column: 40, scope: !582)
!663 = !DILocation(line: 76, column: 44, scope: !582)
!664 = !DILocation(line: 76, column: 43, scope: !582)
!665 = !DILocation(line: 76, column: 42, scope: !582)
!666 = !DILocation(line: 76, column: 41, scope: !582)
!667 = !DILocation(line: 76, column: 45, scope: !582)
!668 = !DILocation(line: 76, column: 38, scope: !582)
!669 = !DILocation(line: 76, column: 29, scope: !582)
!670 = !DILocation(line: 76, column: 11, scope: !582)
!671 = !DILocation(line: 79, column: 22, scope: !582)
!672 = !DILocation(line: 79, column: 28, scope: !582)
!673 = !DILocation(line: 79, column: 27, scope: !582)
!674 = !DILocation(line: 79, column: 20, scope: !582)
!675 = !DILocation(line: 79, column: 14, scope: !582)
!676 = !DILocation(line: 80, column: 22, scope: !582)
!677 = !DILocation(line: 80, column: 28, scope: !582)
!678 = !DILocation(line: 80, column: 27, scope: !582)
!679 = !DILocation(line: 80, column: 20, scope: !582)
!680 = !DILocation(line: 80, column: 14, scope: !582)
!681 = !DILocation(line: 81, column: 13, scope: !682)
!682 = distinct !DILexicalBlock(scope: !582, file: !1, line: 81, column: 8)
!683 = !DILocation(line: 81, column: 8, scope: !682)
!684 = !DILocation(line: 81, column: 23, scope: !682)
!685 = !DILocation(line: 81, column: 8, scope: !582)
!686 = !DILocation(line: 81, column: 42, scope: !687)
!687 = !DILexicalBlockFile(scope: !682, file: !1, discriminator: 1)
!688 = !DILocation(line: 81, column: 33, scope: !687)
!689 = !DILocation(line: 82, column: 13, scope: !690)
!690 = distinct !DILexicalBlock(scope: !582, file: !1, line: 82, column: 8)
!691 = !DILocation(line: 82, column: 8, scope: !690)
!692 = !DILocation(line: 82, column: 23, scope: !690)
!693 = !DILocation(line: 82, column: 8, scope: !582)
!694 = !DILocation(line: 82, column: 42, scope: !695)
!695 = !DILexicalBlockFile(scope: !690, file: !1, discriminator: 1)
!696 = !DILocation(line: 82, column: 33, scope: !695)
!697 = !DILocation(line: 83, column: 20, scope: !582)
!698 = !DILocation(line: 83, column: 19, scope: !582)
!699 = !DILocation(line: 83, column: 14, scope: !582)
!700 = !DILocation(line: 85, column: 18, scope: !582)
!701 = !DILocation(line: 85, column: 27, scope: !582)
!702 = !DILocation(line: 85, column: 26, scope: !582)
!703 = !DILocation(line: 85, column: 16, scope: !582)
!704 = !DILocation(line: 86, column: 11, scope: !582)
!705 = !DILocation(line: 86, column: 8, scope: !582)
!706 = !DILocation(line: 88, column: 13, scope: !707)
!707 = distinct !DILexicalBlock(scope: !582, file: !1, line: 88, column: 8)
!708 = !DILocation(line: 88, column: 23, scope: !707)
!709 = !DILocation(line: 88, column: 8, scope: !707)
!710 = !DILocation(line: 88, column: 29, scope: !707)
!711 = !DILocation(line: 88, column: 8, scope: !582)
!712 = !DILocation(line: 88, column: 52, scope: !713)
!713 = !DILexicalBlockFile(scope: !707, file: !1, discriminator: 1)
!714 = !DILocation(line: 90, column: 5, scope: !582)
!715 = !DILocation(line: 61, column: 3, scope: !716)
!716 = !DILexicalBlockFile(scope: !531, file: !1, discriminator: 2)
!717 = distinct !{!717, !576}
!718 = !DILocation(line: 93, column: 17, scope: !531)
!719 = !DILocation(line: 93, column: 3, scope: !531)
!720 = !DILocation(line: 93, column: 11, scope: !531)
!721 = !DILocation(line: 93, column: 15, scope: !531)
!722 = !DILocation(line: 94, column: 17, scope: !531)
!723 = !DILocation(line: 94, column: 28, scope: !531)
!724 = !DILocation(line: 94, column: 34, scope: !531)
!725 = !DILocation(line: 94, column: 59, scope: !531)
!726 = !DILocation(line: 94, column: 54, scope: !531)
!727 = !DILocation(line: 94, column: 52, scope: !531)
!728 = !DILocation(line: 94, column: 3, scope: !531)
!729 = !DILocation(line: 94, column: 11, scope: !531)
!730 = !DILocation(line: 94, column: 15, scope: !531)
!731 = !DILocation(line: 96, column: 6, scope: !732)
!732 = distinct !DILexicalBlock(scope: !531, file: !1, line: 96, column: 6)
!733 = !DILocation(line: 96, column: 17, scope: !732)
!734 = !DILocation(line: 96, column: 6, scope: !531)
!735 = !DILocation(line: 97, column: 5, scope: !732)
!736 = distinct !{!736, !735}
!737 = !DILocation(line: 97, column: 5, scope: !738)
!738 = !DILexicalBlockFile(scope: !739, file: !1, discriminator: 1)
!739 = distinct !DILexicalBlock(scope: !732, file: !1, line: 97, column: 5)
!740 = !DILocation(line: 97, column: 5, scope: !741)
!741 = !DILexicalBlockFile(scope: !739, file: !1, discriminator: 2)
!742 = !DILocation(line: 99, column: 5, scope: !732)
!743 = !DILocation(line: 100, column: 1, scope: !531)
!744 = distinct !DISubprogram(name: "gsl_sf_beta_inc", scope: !1, file: !1, line: 207, type: !745, isLocal: false, isDefinition: true, scopeLine: 208, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!745 = !DISubroutineType(types: !746)
!746 = !{!50, !49, !49, !49}
!747 = !DILocalVariable(name: "a", arg: 1, scope: !744, file: !1, line: 207, type: !49)
!748 = !DILocation(line: 207, column: 37, scope: !744)
!749 = !DILocalVariable(name: "b", arg: 2, scope: !744, file: !1, line: 207, type: !49)
!750 = !DILocation(line: 207, column: 53, scope: !744)
!751 = !DILocalVariable(name: "x", arg: 3, scope: !744, file: !1, line: 207, type: !49)
!752 = !DILocation(line: 207, column: 69, scope: !744)
!753 = !DILocalVariable(name: "result", scope: !744, file: !1, line: 209, type: !52)
!754 = !DILocation(line: 209, column: 3, scope: !744)
!755 = !DILocalVariable(name: "status", scope: !744, file: !1, line: 209, type: !48)
!756 = !DILocation(line: 209, column: 3, scope: !757)
!757 = distinct !DILexicalBlock(scope: !744, file: !1, line: 209, column: 3)
!758 = !DILocation(line: 209, column: 3, scope: !759)
!759 = !DILexicalBlockFile(scope: !760, file: !1, discriminator: 1)
!760 = distinct !DILexicalBlock(scope: !757, file: !1, line: 209, column: 3)
!761 = distinct !{!761, !762}
!762 = !DILocation(line: 209, column: 3, scope: !760)
!763 = !DILocation(line: 209, column: 3, scope: !764)
!764 = !DILexicalBlockFile(scope: !765, file: !1, discriminator: 2)
!765 = distinct !DILexicalBlock(scope: !760, file: !1, line: 209, column: 3)
!766 = !DILocation(line: 209, column: 3, scope: !767)
!767 = !DILexicalBlockFile(scope: !760, file: !1, discriminator: 3)
!768 = !DILocation(line: 209, column: 3, scope: !769)
!769 = !DILexicalBlockFile(scope: !744, file: !1, discriminator: 4)
!770 = !DILocation(line: 210, column: 1, scope: !744)
