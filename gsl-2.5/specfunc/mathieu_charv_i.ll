; ModuleID = 'mathieu_charv.ll'
source_filename = "mathieu_charv.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsl_sf_result_struct = type { double, double }
%struct.gsl_sf_mathieu_workspace = type { i64, i64, i64, i32, double, double, double*, double*, double*, double*, double*, double*, double*, %struct.gsl_vector*, %struct.gsl_matrix*, %struct.gsl_eigen_symmv_workspace* }
%struct.gsl_vector = type { i64, i64, double*, %struct.gsl_block_struct*, i32 }
%struct.gsl_block_struct = type { i64, double* }
%struct.gsl_matrix = type { i64, i64, i64, double*, %struct.gsl_block_struct*, i32 }
%struct.gsl_eigen_symmv_workspace = type { i64, double*, double*, double*, double* }
%struct._gsl_matrix_view = type { %struct.gsl_matrix }
%struct._gsl_vector_view = type { %struct.gsl_vector }

@.str = private unnamed_addr constant [35 x i8] c"Wrong characteristic Mathieu value\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"mathieu_charv.c\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"Characteristic value undefined for order 0\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"invalid range [order_min,order_max]\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"Internal error in tridiagonal Mathieu matrix\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"gsl_sf_mathieu_a_e(order, qq, &result)\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"gsl_sf_mathieu_b_e(order, qq, &result)\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"Undefined order for Mathieu function\00", align 1
@0 = private unnamed_addr constant [19 x i8] c"gsl_sf_mathieu_a_e\00"
@1 = private unnamed_addr constant [17 x i8] c"mathieu_charv.ll\00"
@2 = private unnamed_addr constant [19 x i8] c"gsl_sf_mathieu_b_e\00"
@3 = private unnamed_addr constant [17 x i8] c"mathieu_charv.ll\00"
@4 = private unnamed_addr constant [9 x i8] c"approx_c\00"
@5 = private unnamed_addr constant [17 x i8] c"mathieu_charv.ll\00"
@6 = private unnamed_addr constant [5 x i8] c"ceer\00"
@7 = private unnamed_addr constant [17 x i8] c"mathieu_charv.ll\00"
@8 = private unnamed_addr constant [5 x i8] c"ceor\00"
@9 = private unnamed_addr constant [17 x i8] c"mathieu_charv.ll\00"
@10 = private unnamed_addr constant [9 x i8] c"approx_s\00"
@11 = private unnamed_addr constant [17 x i8] c"mathieu_charv.ll\00"
@12 = private unnamed_addr constant [5 x i8] c"seer\00"
@13 = private unnamed_addr constant [17 x i8] c"mathieu_charv.ll\00"
@14 = private unnamed_addr constant [5 x i8] c"seor\00"
@15 = private unnamed_addr constant [17 x i8] c"mathieu_charv.ll\00"
@16 = private unnamed_addr constant [23 x i8] c"gsl_sf_mathieu_a_array\00"
@17 = private unnamed_addr constant [17 x i8] c"mathieu_charv.ll\00"
@18 = private unnamed_addr constant [5 x i8] c"figi\00"
@19 = private unnamed_addr constant [17 x i8] c"mathieu_charv.ll\00"
@20 = private unnamed_addr constant [23 x i8] c"gsl_sf_mathieu_b_array\00"
@21 = private unnamed_addr constant [17 x i8] c"mathieu_charv.ll\00"
@22 = private unnamed_addr constant [17 x i8] c"gsl_sf_mathieu_a\00"
@23 = private unnamed_addr constant [17 x i8] c"mathieu_charv.ll\00"
@24 = private unnamed_addr constant [17 x i8] c"gsl_sf_mathieu_b\00"
@25 = private unnamed_addr constant [17 x i8] c"mathieu_charv.ll\00"
@26 = private unnamed_addr constant [11 x i8] c"asymptotic\00"
@27 = private unnamed_addr constant [17 x i8] c"mathieu_charv.ll\00"
@28 = private unnamed_addr constant [12 x i8] c"solve_cubic\00"
@29 = private unnamed_addr constant [17 x i8] c"mathieu_charv.ll\00"

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_mathieu_a_e(i32, double, %struct.gsl_sf_result_struct*) #0 !dbg !56 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca %struct.gsl_sf_result_struct*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  %22 = alloca double, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !67, metadata !68), !dbg !69
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !70, metadata !68), !dbg !71
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %7, metadata !72, metadata !68), !dbg !73
  call void @llvm.dbg.declare(metadata i32* %8, metadata !74, metadata !68), !dbg !75
  call void @llvm.dbg.declare(metadata i32* %9, metadata !76, metadata !68), !dbg !77
  store i32 50, i32* %9, align 4, !dbg !77
  call void @llvm.dbg.declare(metadata i32* %10, metadata !78, metadata !68), !dbg !79
  call void @llvm.dbg.declare(metadata i32* %11, metadata !80, metadata !68), !dbg !81
  store i32 0, i32* %11, align 4, !dbg !81
  call void @llvm.dbg.declare(metadata i32* %12, metadata !82, metadata !68), !dbg !83
  store i32 1000, i32* %12, align 4, !dbg !83
  call void @llvm.dbg.declare(metadata i32* %13, metadata !84, metadata !68), !dbg !85
  store i32 0, i32* %13, align 4, !dbg !85
  call void @llvm.dbg.declare(metadata double* %14, metadata !86, metadata !68), !dbg !87
  call void @llvm.dbg.declare(metadata double* %15, metadata !88, metadata !68), !dbg !89
  call void @llvm.dbg.declare(metadata double* %16, metadata !90, metadata !68), !dbg !91
  call void @llvm.dbg.declare(metadata double* %17, metadata !92, metadata !68), !dbg !93
  call void @llvm.dbg.declare(metadata double* %18, metadata !94, metadata !68), !dbg !95
  call void @llvm.dbg.declare(metadata double* %19, metadata !96, metadata !68), !dbg !97
  call void @llvm.dbg.declare(metadata double* %20, metadata !98, metadata !68), !dbg !99
  store double 2.500000e-02, double* %20, align 8, !dbg !99
  call void @llvm.dbg.declare(metadata double* %21, metadata !100, metadata !68), !dbg !101
  call void @llvm.dbg.declare(metadata double* %22, metadata !102, metadata !68), !dbg !103
  store i32 0, i32* %8, align 4, !dbg !104
  %23 = load i32, i32* %5, align 4, !dbg !105
  %24 = srem i32 %23, 2, !dbg !107
  %25 = icmp ne i32 %24, 0, !dbg !108
  %26 = sext i32 %24 to i64, !dbg !109
  %27 = call i1 @iCmpInstHandler(i64 %26, i64 0, i1 %25, i32 33, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @1, i32 0, i32 0), i64 94380176629232, i32 379, i32 17), !dbg !109
  br i1 %27, label %28, label %29, !dbg !109

; <label>:28:                                     ; preds = %3
  store i32 1, i32* %8, align 4, !dbg !110
  br label %29, !dbg !111

; <label>:29:                                     ; preds = %28, %3
  %30 = load double, double* %6, align 8, !dbg !112
  %31 = fcmp oeq double %30, 0.000000e+00, !dbg !114
  %32 = call i1 @fCmpInstHandler(double %30, double 0.000000e+00, i1 %31, i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @1, i32 0, i32 0), i64 94380176631488, i32 384, i32 10), !dbg !115
  br i1 %32, label %33, label %42, !dbg !115

; <label>:33:                                     ; preds = %29
  %34 = load i32, i32* %5, align 4, !dbg !116
  %35 = load i32, i32* %5, align 4, !dbg !118
  %36 = mul nsw i32 %34, %35, !dbg !119
  %37 = sitofp i32 %36 to double, !dbg !116
  %38 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !120
  %39 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %38, i32 0, i32 0, !dbg !121
  store double %37, double* %39, align 8, !dbg !122
  %40 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !123
  %41 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %40, i32 0, i32 1, !dbg !124
  store double 0.000000e+00, double* %41, align 8, !dbg !125
  store i32 0, i32* %4, align 4, !dbg !126
  br label %259, !dbg !126

; <label>:42:                                     ; preds = %29
  %43 = load i32, i32* %5, align 4, !dbg !127
  %44 = icmp slt i32 %43, 0, !dbg !129
  %45 = sext i32 %43 to i64, !dbg !130
  %46 = call i1 @iCmpInstHandler(i64 %45, i64 0, i1 %44, i32 40, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @1, i32 0, i32 0), i64 94380176640944, i32 393, i32 13), !dbg !130
  br i1 %46, label %47, label %50, !dbg !130

; <label>:47:                                     ; preds = %42
  %48 = load i32, i32* %5, align 4, !dbg !131
  %49 = mul nsw i32 %48, -1, !dbg !131
  store i32 %49, i32* %5, align 4, !dbg !131
  br label %50, !dbg !132

; <label>:50:                                     ; preds = %47, %42
  %51 = load double, double* %6, align 8, !dbg !133
  %52 = fcmp olt double %51, 0.000000e+00, !dbg !135
  %53 = call i1 @fCmpInstHandler(double %51, double 0.000000e+00, i1 %52, i32 4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @1, i32 0, i32 0), i64 94380176644976, i32 395, i32 10), !dbg !136
  br i1 %53, label %54, label %71, !dbg !136

; <label>:54:                                     ; preds = %50
  %55 = load i32, i32* %8, align 4, !dbg !137
  %56 = icmp eq i32 %55, 0, !dbg !140
  %57 = sext i32 %55 to i64, !dbg !141
  %58 = call i1 @iCmpInstHandler(i64 %57, i64 0, i1 %56, i32 32, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @1, i32 0, i32 0), i64 94380176646432, i32 397, i32 20), !dbg !141
  br i1 %58, label %59, label %65, !dbg !141

; <label>:59:                                     ; preds = %54
  %60 = load i32, i32* %5, align 4, !dbg !142
  %61 = load double, double* %6, align 8, !dbg !143
  %62 = fsub double -0.000000e+00, %61, !dbg !144
  call void @fSubHandler(double -0.000000e+00, double %61, double %62, i64 0, i64 94380176647864, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @1, i32 0, i32 0), i64 94380176648336, i32 398, i32 44), !dbg !145
  %63 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !145
  %64 = call i32 @gsl_sf_mathieu_a_e(i32 %60, double %62, %struct.gsl_sf_result_struct* %63), !dbg !146
  store i32 %64, i32* %4, align 4, !dbg !147
  br label %259, !dbg !147

; <label>:65:                                     ; preds = %54
  %66 = load i32, i32* %5, align 4, !dbg !148
  %67 = load double, double* %6, align 8, !dbg !149
  %68 = fsub double -0.000000e+00, %67, !dbg !150
  call void @fSubHandler(double -0.000000e+00, double %67, double %68, i64 0, i64 94380176652056, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @1, i32 0, i32 0), i64 94380176652464, i32 400, i32 44), !dbg !151
  %69 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !151
  %70 = call i32 @gsl_sf_mathieu_b_e(i32 %66, double %68, %struct.gsl_sf_result_struct* %69), !dbg !152
  store i32 %70, i32* %4, align 4, !dbg !153
  br label %259, !dbg !153

; <label>:71:                                     ; preds = %50
  %72 = load i32, i32* %5, align 4, !dbg !154
  %73 = load double, double* %6, align 8, !dbg !155
  %74 = call double @approx_c(i32 %72, double %73), !dbg !156
  store double %74, double* %22, align 8, !dbg !157
  %75 = load double, double* %22, align 8, !dbg !158
  store double %75, double* %21, align 8, !dbg !159
  store double %75, double* %19, align 8, !dbg !160
  br label %76, !dbg !161

; <label>:76:                                     ; preds = %233, %71
  %77 = load i32, i32* %11, align 4, !dbg !162
  %78 = load i32, i32* %12, align 4, !dbg !164
  %79 = icmp slt i32 %77, %78, !dbg !165
  %80 = sext i32 %77 to i64, !dbg !166
  %81 = sext i32 %78 to i64, !dbg !166
  %82 = call i1 @iCmpInstHandler(i64 %80, i64 %81, i1 %79, i32 40, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @1, i32 0, i32 0), i64 94380176661696, i32 411, i32 18), !dbg !166
  br i1 %82, label %83, label %245, !dbg !166

; <label>:83:                                     ; preds = %76
  %84 = load double, double* %21, align 8, !dbg !167
  %85 = fadd double %84, 1.000000e-03, !dbg !169
  call void @fAddHandler(double %84, double 1.000000e-03, double %85, i64 94380176662808, i64 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @1, i32 0, i32 0), i64 94380176663248, i32 413, i32 15), !dbg !170
  store double %85, double* %14, align 8, !dbg !170
  store i32 0, i32* %10, align 4, !dbg !171
  %86 = load i32, i32* %8, align 4, !dbg !172
  %87 = icmp eq i32 %86, 0, !dbg !174
  %88 = sext i32 %86 to i64, !dbg !175
  %89 = call i1 @iCmpInstHandler(i64 %88, i64 0, i1 %87, i32 32, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @1, i32 0, i32 0), i64 94380176664848, i32 415, i32 20), !dbg !175
  br i1 %89, label %90, label %96, !dbg !175

; <label>:90:                                     ; preds = %83
  %91 = load i32, i32* %5, align 4, !dbg !176
  %92 = load double, double* %6, align 8, !dbg !177
  %93 = load double, double* %14, align 8, !dbg !178
  %94 = load i32, i32* %9, align 4, !dbg !179
  %95 = call double @ceer(i32 %91, double %92, double %93, i32 %94), !dbg !180
  store double %95, double* %17, align 8, !dbg !181
  br label %102, !dbg !182

; <label>:96:                                     ; preds = %83
  %97 = load i32, i32* %5, align 4, !dbg !183
  %98 = load double, double* %6, align 8, !dbg !184
  %99 = load double, double* %14, align 8, !dbg !185
  %100 = load i32, i32* %9, align 4, !dbg !186
  %101 = call double @ceor(i32 %97, double %98, double %99, i32 %100), !dbg !187
  store double %101, double* %17, align 8, !dbg !188
  br label %102

; <label>:102:                                    ; preds = %96, %90
  br label %103, !dbg !189

; <label>:103:                                    ; preds = %161, %102
  %104 = load i32, i32* %8, align 4, !dbg !190
  %105 = icmp eq i32 %104, 0, !dbg !195
  %106 = sext i32 %104 to i64, !dbg !196
  %107 = call i1 @iCmpInstHandler(i64 %106, i64 0, i1 %105, i32 32, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @1, i32 0, i32 0), i64 94380176673440, i32 422, i32 24), !dbg !196
  br i1 %107, label %108, label %114, !dbg !196

; <label>:108:                                    ; preds = %103
  %109 = load i32, i32* %5, align 4, !dbg !197
  %110 = load double, double* %6, align 8, !dbg !198
  %111 = load double, double* %21, align 8, !dbg !199
  %112 = load i32, i32* %9, align 4, !dbg !200
  %113 = call double @ceer(i32 %109, double %110, double %111, i32 %112), !dbg !201
  store double %113, double* %16, align 8, !dbg !202
  br label %120, !dbg !203

; <label>:114:                                    ; preds = %103
  %115 = load i32, i32* %5, align 4, !dbg !204
  %116 = load double, double* %6, align 8, !dbg !205
  %117 = load double, double* %21, align 8, !dbg !206
  %118 = load i32, i32* %9, align 4, !dbg !207
  %119 = call double @ceor(i32 %115, double %116, double %117, i32 %118), !dbg !208
  store double %119, double* %16, align 8, !dbg !209
  br label %120

; <label>:120:                                    ; preds = %114, %108
  %121 = load double, double* %14, align 8, !dbg !210
  store double %121, double* %15, align 8, !dbg !211
  %122 = load double, double* %21, align 8, !dbg !212
  store double %122, double* %14, align 8, !dbg !213
  %123 = load double, double* %16, align 8, !dbg !214
  %124 = load double, double* %17, align 8, !dbg !216
  %125 = fcmp oeq double %123, %124, !dbg !217
  %126 = call i1 @fCmpInstHandler(double %123, double %124, i1 %125, i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @1, i32 0, i32 0), i64 94380176682480, i32 430, i32 18), !dbg !218
  br i1 %126, label %127, label %130, !dbg !218

; <label>:127:                                    ; preds = %120
  %128 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !219
  %129 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %128, i32 0, i32 1, !dbg !221
  store double 0x3CB0000000000000, double* %129, align 8, !dbg !222
  br label %165, !dbg !223

; <label>:130:                                    ; preds = %120
  %131 = load double, double* %21, align 8, !dbg !224
  %132 = load double, double* %15, align 8, !dbg !225
  %133 = fsub double %131, %132, !dbg !226
  call void @fSubHandler(double %131, double %132, double %133, i64 94380176685368, i64 94380176685688, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @1, i32 0, i32 0), i64 94380176686096, i32 435, i32 21), !dbg !227
  %134 = load double, double* %16, align 8, !dbg !227
  %135 = load double, double* %17, align 8, !dbg !228
  %136 = fsub double %134, %135, !dbg !229
  call void @fSubHandler(double %134, double %135, double %136, i64 94380176686488, i64 94380176686872, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @1, i32 0, i32 0), i64 94380176687280, i32 435, i32 31), !dbg !230
  %137 = fdiv double %133, %136, !dbg !230
  call void @fDivHandler(double %133, double %136, double %137, i64 94380176686096, i64 94380176687280, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @1, i32 0, i32 0), i64 94380176687696, i32 435, i32 26), !dbg !231
  %138 = load double, double* %16, align 8, !dbg !231
  %139 = fmul double %137, %138, !dbg !232
  call void @fMulHandler(double %137, double %138, double %139, i64 94380176687696, i64 94380176688088, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @1, i32 0, i32 0), i64 94380176688496, i32 435, i32 37), !dbg !233
  %140 = load double, double* %21, align 8, !dbg !233
  %141 = fsub double %140, %139, !dbg !233
  call void @fSubHandler(double %140, double %139, double %141, i64 94380176688888, i64 94380176688496, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @1, i32 0, i32 0), i64 94380176689296, i32 435, i32 14), !dbg !233
  store double %141, double* %21, align 8, !dbg !233
  %142 = load double, double* %21, align 8, !dbg !234
  %143 = load double, double* %15, align 8, !dbg !235
  %144 = fsub double %142, %143, !dbg !236
  call void @fSubHandler(double %142, double %143, double %144, i64 94380176691080, i64 94380176691464, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @1, i32 0, i32 0), i64 94380176691872, i32 436, i32 26), !dbg !237
  %145 = call double @fabs(double %144) #1, !dbg !237
  store double %145, double* %18, align 8, !dbg !238
  %146 = load double, double* %18, align 8, !dbg !239
  %147 = fcmp olt double %146, 0x3CB0000000000000, !dbg !241
  %148 = call i1 @fCmpInstHandler(double %146, double 0x3CB0000000000000, i1 %147, i32 4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @1, i32 0, i32 0), i64 94380176696000, i32 437, i32 20), !dbg !242
  br i1 %148, label %149, label %152, !dbg !242

; <label>:149:                                    ; preds = %130
  %150 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !243
  %151 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %150, i32 0, i32 1, !dbg !245
  store double 0x3CB0000000000000, double* %151, align 8, !dbg !246
  br label %165, !dbg !247

; <label>:152:                                    ; preds = %130
  %153 = load i32, i32* %10, align 4, !dbg !248
  %154 = icmp sgt i32 %153, 40, !dbg !250
  %155 = sext i32 %153 to i64, !dbg !251
  %156 = call i1 @iCmpInstHandler(i64 %155, i64 40, i1 %154, i32 38, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @1, i32 0, i32 0), i64 94380176699088, i32 442, i32 18), !dbg !251
  br i1 %156, label %157, label %161, !dbg !251

; <label>:157:                                    ; preds = %152
  %158 = load double, double* %18, align 8, !dbg !252
  %159 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !254
  %160 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %159, i32 0, i32 1, !dbg !255
  store double %158, double* %160, align 8, !dbg !256
  br label %165, !dbg !257

; <label>:161:                                    ; preds = %152
  %162 = load double, double* %16, align 8, !dbg !258
  store double %162, double* %17, align 8, !dbg !259
  %163 = load i32, i32* %10, align 4, !dbg !260
  %164 = add nsw i32 %163, 1, !dbg !260
  store i32 %164, i32* %10, align 4, !dbg !260
  br label %103, !dbg !261, !llvm.loop !263

; <label>:165:                                    ; preds = %157, %149, %127
  %166 = load double, double* %21, align 8, !dbg !264
  %167 = load double, double* %19, align 8, !dbg !266
  %168 = fsub double %166, %167, !dbg !267
  call void @fSubHandler(double %166, double %167, double %168, i64 94380176709864, i64 94380176710184, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @1, i32 0, i32 0), i64 94380176710592, i32 453, i32 19), !dbg !268
  %169 = call double @fabs(double %168) #1, !dbg !268
  %170 = load i32, i32* %5, align 4, !dbg !269
  %171 = sitofp i32 %170 to double, !dbg !269
  %172 = fmul double 1.000000e-02, %171, !dbg !270
  call void @fMulHandler(double 1.000000e-02, double %171, double %172, i64 0, i64 94380176711912, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @1, i32 0, i32 0), i64 94380176713680, i32 453, i32 41), !dbg !271
  %173 = load double, double* %19, align 8, !dbg !271
  %174 = call double @fabs(double %173) #1, !dbg !272
  %175 = fmul double %172, %174, !dbg !274
  call void @fMulHandler(double %172, double %174, double %175, i64 94380176713680, i64 94380176714512, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @1, i32 0, i32 0), i64 94380176714992, i32 453, i32 47), !dbg !275
  %176 = fadd double 3.000000e+00, %175, !dbg !275
  call void @fAddHandler(double 3.000000e+00, double %175, double %176, i64 0, i64 94380176714992, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @1, i32 0, i32 0), i64 94380176715504, i32 453, i32 35), !dbg !276
  %177 = fcmp ogt double %169, %176, !dbg !276
  %178 = call i1 @fCmpInstHandler(double %169, double %176, i1 %177, i32 2, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @1, i32 0, i32 0), i64 94380176715888, i32 453, i32 30), !dbg !277
  br i1 %178, label %194, label %179, !dbg !277

; <label>:179:                                    ; preds = %165
  %180 = load i32, i32* %5, align 4, !dbg !278
  %181 = icmp sgt i32 %180, 10, !dbg !279
  %182 = sext i32 %180 to i64, !dbg !280
  %183 = call i1 @iCmpInstHandler(i64 %182, i64 10, i1 %181, i32 38, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @1, i32 0, i32 0), i64 94380176717408, i32 454, i32 18), !dbg !280
  br i1 %183, label %184, label %244, !dbg !280

; <label>:184:                                    ; preds = %179
  %185 = load double, double* %21, align 8, !dbg !281
  %186 = load double, double* %19, align 8, !dbg !283
  %187 = fsub double %185, %186, !dbg !284
  call void @fSubHandler(double %185, double %186, double %187, i64 94380176718520, i64 94380176718840, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @1, i32 0, i32 0), i64 94380176719248, i32 454, i32 34), !dbg !285
  %188 = call double @fabs(double %187) #1, !dbg !285
  %189 = load i32, i32* %5, align 4, !dbg !286
  %190 = sitofp i32 %189 to double, !dbg !286
  %191 = fmul double 1.500000e+00, %190, !dbg !287
  call void @fMulHandler(double 1.500000e+00, double %190, double %191, i64 0, i64 94380176720568, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @1, i32 0, i32 0), i64 94380176722336, i32 454, i32 50), !dbg !288
  %192 = fcmp ogt double %188, %191, !dbg !288
  %193 = call i1 @fCmpInstHandler(double %188, double %191, i1 %192, i32 2, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @1, i32 0, i32 0), i64 94380176722720, i32 454, i32 45), !dbg !289
  br i1 %193, label %194, label %244, !dbg !289

; <label>:194:                                    ; preds = %184, %165
  %195 = load i32, i32* %11, align 4, !dbg !291
  %196 = add nsw i32 %195, 1, !dbg !291
  store i32 %196, i32* %11, align 4, !dbg !291
  %197 = load i32, i32* %11, align 4, !dbg !293
  %198 = load i32, i32* %12, align 4, !dbg !295
  %199 = icmp eq i32 %197, %198, !dbg !296
  %200 = sext i32 %197 to i64, !dbg !297
  %201 = sext i32 %198 to i64, !dbg !297
  %202 = call i1 @iCmpInstHandler(i64 %200, i64 %201, i1 %199, i32 32, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @1, i32 0, i32 0), i64 94380176726464, i32 457, i32 23), !dbg !297
  br i1 %202, label %203, label %210, !dbg !297

; <label>:203:                                    ; preds = %194
  %204 = load double, double* %21, align 8, !dbg !298
  %205 = load double, double* %19, align 8, !dbg !300
  %206 = fsub double %204, %205, !dbg !301
  call void @fSubHandler(double %204, double %205, double %206, i64 94380176727576, i64 94380176727896, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @1, i32 0, i32 0), i64 94380176728304, i32 459, i32 37), !dbg !302
  %207 = call double @fabs(double %206) #1, !dbg !302
  %208 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !303
  %209 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %208, i32 0, i32 1, !dbg !304
  store double %207, double* %209, align 8, !dbg !305
  br label %245, !dbg !306

; <label>:210:                                    ; preds = %194
  %211 = load double, double* %21, align 8, !dbg !307
  %212 = load double, double* %19, align 8, !dbg !309
  %213 = fcmp ogt double %211, %212, !dbg !310
  %214 = call i1 @fCmpInstHandler(double %211, double %212, i1 %213, i32 2, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @1, i32 0, i32 0), i64 94380176731600, i32 462, i32 18), !dbg !311
  br i1 %214, label %215, label %224, !dbg !311

; <label>:215:                                    ; preds = %210
  %216 = load i32, i32* %13, align 4, !dbg !312
  %217 = icmp eq i32 %216, 1, !dbg !315
  %218 = sext i32 %216 to i64, !dbg !316
  %219 = call i1 @iCmpInstHandler(i64 %218, i64 1, i1 %217, i32 32, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @1, i32 0, i32 0), i64 94380176733056, i32 464, i32 23), !dbg !316
  br i1 %219, label %220, label %223, !dbg !316

; <label>:220:                                    ; preds = %215
  %221 = load double, double* %20, align 8, !dbg !317
  %222 = fdiv double %221, 2.000000e+00, !dbg !317
  call void @fDivHandler(double %221, double 2.000000e+00, double %222, i64 94380176734168, i64 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @1, i32 0, i32 0), i64 94380176734608, i32 465, i32 22), !dbg !317
  store double %222, double* %20, align 8, !dbg !317
  br label %223, !dbg !318

; <label>:223:                                    ; preds = %220, %215
  store i32 -1, i32* %13, align 4, !dbg !319
  br label %233, !dbg !320

; <label>:224:                                    ; preds = %210
  %225 = load i32, i32* %13, align 4, !dbg !321
  %226 = icmp eq i32 %225, -1, !dbg !324
  %227 = sext i32 %225 to i64, !dbg !325
  %228 = call i1 @iCmpInstHandler(i64 %227, i64 -1, i1 %226, i32 32, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @1, i32 0, i32 0), i64 94380176737968, i32 470, i32 23), !dbg !325
  br i1 %228, label %229, label %232, !dbg !325

; <label>:229:                                    ; preds = %224
  %230 = load double, double* %20, align 8, !dbg !326
  %231 = fdiv double %230, 2.000000e+00, !dbg !326
  call void @fDivHandler(double %230, double 2.000000e+00, double %231, i64 94380176739080, i64 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @1, i32 0, i32 0), i64 94380176739456, i32 471, i32 22), !dbg !326
  store double %231, double* %20, align 8, !dbg !326
  br label %232, !dbg !327

; <label>:232:                                    ; preds = %229, %224
  store i32 1, i32* %13, align 4, !dbg !328
  br label %233

; <label>:233:                                    ; preds = %232, %223
  %234 = load i32, i32* %13, align 4, !dbg !329
  %235 = sitofp i32 %234 to double, !dbg !329
  %236 = load double, double* %20, align 8, !dbg !330
  %237 = fmul double %235, %236, !dbg !331
  call void @fMulHandler(double %235, double %236, double %237, i64 94380176742360, i64 94380176744008, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @1, i32 0, i32 0), i64 94380176744416, i32 474, i32 27), !dbg !332
  %238 = load i32, i32* %11, align 4, !dbg !332
  %239 = sitofp i32 %238 to double, !dbg !332
  %240 = fmul double %237, %239, !dbg !333
  call void @fMulHandler(double %237, double %239, double %240, i64 94380176744416, i64 94380176745192, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @1, i32 0, i32 0), i64 94380176746864, i32 474, i32 30), !dbg !334
  %241 = load double, double* %22, align 8, !dbg !334
  %242 = fadd double %241, %240, !dbg !334
  call void @fAddHandler(double %241, double %240, double %242, i64 94380176747256, i64 94380176746864, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @1, i32 0, i32 0), i64 94380176747664, i32 474, i32 21), !dbg !334
  store double %242, double* %22, align 8, !dbg !334
  %243 = load double, double* %22, align 8, !dbg !335
  store double %243, double* %21, align 8, !dbg !336
  br label %76, !dbg !337, !llvm.loop !338

; <label>:244:                                    ; preds = %184, %179
  br label %245, !dbg !339

; <label>:245:                                    ; preds = %244, %203, %76
  %246 = load double, double* %21, align 8, !dbg !340
  %247 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !341
  %248 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %247, i32 0, i32 0, !dbg !342
  store double %246, double* %248, align 8, !dbg !343
  %249 = load i32, i32* %11, align 4, !dbg !344
  %250 = load i32, i32* %12, align 4, !dbg !346
  %251 = icmp eq i32 %249, %250, !dbg !347
  %252 = sext i32 %249 to i64, !dbg !348
  %253 = sext i32 %250 to i64, !dbg !348
  %254 = call i1 @iCmpInstHandler(i64 %252, i64 %253, i1 %251, i32 32, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @1, i32 0, i32 0), i64 94380176753600, i32 487, i32 15), !dbg !348
  br i1 %254, label %255, label %258, !dbg !348

; <label>:255:                                    ; preds = %245
  br label %256, !dbg !349, !llvm.loop !351

; <label>:256:                                    ; preds = %255
  call void @gsl_error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i32 489, i32 5), !dbg !352
  store i32 5, i32* %4, align 4, !dbg !352
  br label %259, !dbg !352
                                                  ; No predecessors!
  br label %258, !dbg !355

; <label>:258:                                    ; preds = %257, %245
  store i32 0, i32* %4, align 4, !dbg !356
  br label %259, !dbg !356

; <label>:259:                                    ; preds = %258, %256, %65, %59, %33
  %260 = load i32, i32* %4, align 4, !dbg !357
  ret i32 %260, !dbg !357
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_mathieu_b_e(i32, double, %struct.gsl_sf_result_struct*) #0 !dbg !358 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca %struct.gsl_sf_result_struct*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  %22 = alloca double, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !359, metadata !68), !dbg !360
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !361, metadata !68), !dbg !362
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %7, metadata !363, metadata !68), !dbg !364
  call void @llvm.dbg.declare(metadata i32* %8, metadata !365, metadata !68), !dbg !366
  call void @llvm.dbg.declare(metadata i32* %9, metadata !367, metadata !68), !dbg !368
  store i32 50, i32* %9, align 4, !dbg !368
  call void @llvm.dbg.declare(metadata i32* %10, metadata !369, metadata !68), !dbg !370
  call void @llvm.dbg.declare(metadata i32* %11, metadata !371, metadata !68), !dbg !372
  store i32 0, i32* %11, align 4, !dbg !372
  call void @llvm.dbg.declare(metadata i32* %12, metadata !373, metadata !68), !dbg !374
  store i32 1000, i32* %12, align 4, !dbg !374
  call void @llvm.dbg.declare(metadata i32* %13, metadata !375, metadata !68), !dbg !376
  store i32 0, i32* %13, align 4, !dbg !376
  call void @llvm.dbg.declare(metadata double* %14, metadata !377, metadata !68), !dbg !378
  call void @llvm.dbg.declare(metadata double* %15, metadata !379, metadata !68), !dbg !380
  call void @llvm.dbg.declare(metadata double* %16, metadata !381, metadata !68), !dbg !382
  call void @llvm.dbg.declare(metadata double* %17, metadata !383, metadata !68), !dbg !384
  call void @llvm.dbg.declare(metadata double* %18, metadata !385, metadata !68), !dbg !386
  call void @llvm.dbg.declare(metadata double* %19, metadata !387, metadata !68), !dbg !388
  call void @llvm.dbg.declare(metadata double* %20, metadata !389, metadata !68), !dbg !390
  store double 2.500000e-02, double* %20, align 8, !dbg !390
  call void @llvm.dbg.declare(metadata double* %21, metadata !391, metadata !68), !dbg !392
  call void @llvm.dbg.declare(metadata double* %22, metadata !393, metadata !68), !dbg !394
  store i32 0, i32* %8, align 4, !dbg !395
  %23 = load i32, i32* %5, align 4, !dbg !396
  %24 = srem i32 %23, 2, !dbg !398
  %25 = icmp ne i32 %24, 0, !dbg !399
  %26 = sext i32 %24 to i64, !dbg !400
  %27 = call i1 @iCmpInstHandler(i64 %26, i64 0, i1 %25, i32 33, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @3, i32 0, i32 0), i64 94380176795584, i32 505, i32 17), !dbg !400
  br i1 %27, label %28, label %29, !dbg !400

; <label>:28:                                     ; preds = %3
  store i32 1, i32* %8, align 4, !dbg !401
  br label %29, !dbg !402

; <label>:29:                                     ; preds = %28, %3
  %30 = load i32, i32* %5, align 4, !dbg !403
  %31 = icmp eq i32 %30, 0, !dbg !405
  %32 = sext i32 %30 to i64, !dbg !406
  %33 = call i1 @iCmpInstHandler(i64 %32, i64 0, i1 %31, i32 32, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @3, i32 0, i32 0), i64 94380176797680, i32 509, i32 13), !dbg !406
  br i1 %33, label %34, label %37, !dbg !406

; <label>:34:                                     ; preds = %29
  br label %35, !dbg !407, !llvm.loop !409

; <label>:35:                                     ; preds = %34
  call void @gsl_error(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i32 511, i32 5), !dbg !410
  store i32 5, i32* %4, align 4, !dbg !410
  br label %267, !dbg !410
                                                  ; No predecessors!
  br label %37, !dbg !413

; <label>:37:                                     ; preds = %36, %29
  %38 = load double, double* %6, align 8, !dbg !414
  %39 = fcmp oeq double %38, 0.000000e+00, !dbg !416
  %40 = call i1 @fCmpInstHandler(double %38, double 0.000000e+00, i1 %39, i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @3, i32 0, i32 0), i64 94380176803504, i32 516, i32 10), !dbg !417
  br i1 %40, label %41, label %50, !dbg !417

; <label>:41:                                     ; preds = %37
  %42 = load i32, i32* %5, align 4, !dbg !418
  %43 = load i32, i32* %5, align 4, !dbg !420
  %44 = mul nsw i32 %42, %43, !dbg !421
  %45 = sitofp i32 %44 to double, !dbg !418
  %46 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !422
  %47 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %46, i32 0, i32 0, !dbg !423
  store double %45, double* %47, align 8, !dbg !424
  %48 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !425
  %49 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %48, i32 0, i32 1, !dbg !426
  store double 0.000000e+00, double* %49, align 8, !dbg !427
  store i32 0, i32* %4, align 4, !dbg !428
  br label %267, !dbg !428

; <label>:50:                                     ; preds = %37
  %51 = load i32, i32* %5, align 4, !dbg !429
  %52 = icmp slt i32 %51, 0, !dbg !431
  %53 = sext i32 %51 to i64, !dbg !432
  %54 = call i1 @iCmpInstHandler(i64 %53, i64 0, i1 %52, i32 40, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @3, i32 0, i32 0), i64 94380176812288, i32 525, i32 13), !dbg !432
  br i1 %54, label %55, label %58, !dbg !432

; <label>:55:                                     ; preds = %50
  %56 = load i32, i32* %5, align 4, !dbg !433
  %57 = mul nsw i32 %56, -1, !dbg !433
  store i32 %57, i32* %5, align 4, !dbg !433
  br label %58, !dbg !434

; <label>:58:                                     ; preds = %55, %50
  %59 = load double, double* %6, align 8, !dbg !435
  %60 = fcmp olt double %59, 0.000000e+00, !dbg !437
  %61 = call i1 @fCmpInstHandler(double %59, double 0.000000e+00, i1 %60, i32 4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @3, i32 0, i32 0), i64 94380176816256, i32 527, i32 10), !dbg !438
  br i1 %61, label %62, label %79, !dbg !438

; <label>:62:                                     ; preds = %58
  %63 = load i32, i32* %8, align 4, !dbg !439
  %64 = icmp eq i32 %63, 0, !dbg !442
  %65 = sext i32 %63 to i64, !dbg !443
  %66 = call i1 @iCmpInstHandler(i64 %65, i64 0, i1 %64, i32 32, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @3, i32 0, i32 0), i64 94380176817712, i32 529, i32 20), !dbg !443
  br i1 %66, label %67, label %73, !dbg !443

; <label>:67:                                     ; preds = %62
  %68 = load i32, i32* %5, align 4, !dbg !444
  %69 = load double, double* %6, align 8, !dbg !445
  %70 = fsub double -0.000000e+00, %69, !dbg !446
  call void @fSubHandler(double -0.000000e+00, double %69, double %70, i64 0, i64 94380176819144, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @3, i32 0, i32 0), i64 94380176819552, i32 530, i32 44), !dbg !447
  %71 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !447
  %72 = call i32 @gsl_sf_mathieu_b_e(i32 %68, double %70, %struct.gsl_sf_result_struct* %71), !dbg !448
  store i32 %72, i32* %4, align 4, !dbg !449
  br label %267, !dbg !449

; <label>:73:                                     ; preds = %62
  %74 = load i32, i32* %5, align 4, !dbg !450
  %75 = load double, double* %6, align 8, !dbg !451
  %76 = fsub double -0.000000e+00, %75, !dbg !452
  call void @fSubHandler(double -0.000000e+00, double %75, double %76, i64 0, i64 94380176823272, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @3, i32 0, i32 0), i64 94380176823680, i32 532, i32 44), !dbg !453
  %77 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !453
  %78 = call i32 @gsl_sf_mathieu_a_e(i32 %74, double %76, %struct.gsl_sf_result_struct* %77), !dbg !454
  store i32 %78, i32* %4, align 4, !dbg !455
  br label %267, !dbg !455

; <label>:79:                                     ; preds = %58
  %80 = load i32, i32* %5, align 4, !dbg !456
  %81 = load double, double* %6, align 8, !dbg !457
  %82 = call double @approx_s(i32 %80, double %81), !dbg !458
  store double %82, double* %22, align 8, !dbg !459
  %83 = load double, double* %22, align 8, !dbg !460
  store double %83, double* %21, align 8, !dbg !461
  store double %83, double* %19, align 8, !dbg !462
  br label %84, !dbg !463

; <label>:84:                                     ; preds = %241, %79
  %85 = load i32, i32* %11, align 4, !dbg !464
  %86 = load i32, i32* %12, align 4, !dbg !466
  %87 = icmp slt i32 %85, %86, !dbg !467
  %88 = sext i32 %85 to i64, !dbg !468
  %89 = sext i32 %86 to i64, !dbg !468
  %90 = call i1 @iCmpInstHandler(i64 %88, i64 %89, i1 %87, i32 40, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @3, i32 0, i32 0), i64 94380176831472, i32 543, i32 18), !dbg !468
  br i1 %90, label %91, label %253, !dbg !468

; <label>:91:                                     ; preds = %84
  %92 = load double, double* %21, align 8, !dbg !469
  %93 = fadd double %92, 1.000000e-03, !dbg !471
  call void @fAddHandler(double %92, double 1.000000e-03, double %93, i64 94380176832584, i64 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @3, i32 0, i32 0), i64 94380176832960, i32 545, i32 15), !dbg !472
  store double %93, double* %14, align 8, !dbg !472
  store i32 0, i32* %10, align 4, !dbg !473
  %94 = load i32, i32* %8, align 4, !dbg !474
  %95 = icmp eq i32 %94, 0, !dbg !476
  %96 = sext i32 %94 to i64, !dbg !477
  %97 = call i1 @iCmpInstHandler(i64 %96, i64 0, i1 %95, i32 32, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @3, i32 0, i32 0), i64 94380176834560, i32 547, i32 20), !dbg !477
  br i1 %97, label %98, label %104, !dbg !477

; <label>:98:                                     ; preds = %91
  %99 = load i32, i32* %5, align 4, !dbg !478
  %100 = load double, double* %6, align 8, !dbg !479
  %101 = load double, double* %14, align 8, !dbg !480
  %102 = load i32, i32* %9, align 4, !dbg !481
  %103 = call double @seer(i32 %99, double %100, double %101, i32 %102), !dbg !482
  store double %103, double* %17, align 8, !dbg !483
  br label %110, !dbg !484

; <label>:104:                                    ; preds = %91
  %105 = load i32, i32* %5, align 4, !dbg !485
  %106 = load double, double* %6, align 8, !dbg !486
  %107 = load double, double* %14, align 8, !dbg !487
  %108 = load i32, i32* %9, align 4, !dbg !488
  %109 = call double @seor(i32 %105, double %106, double %107, i32 %108), !dbg !489
  store double %109, double* %17, align 8, !dbg !490
  br label %110

; <label>:110:                                    ; preds = %104, %98
  br label %111, !dbg !491

; <label>:111:                                    ; preds = %169, %110
  %112 = load i32, i32* %8, align 4, !dbg !492
  %113 = icmp eq i32 %112, 0, !dbg !497
  %114 = sext i32 %112 to i64, !dbg !498
  %115 = call i1 @iCmpInstHandler(i64 %114, i64 0, i1 %113, i32 32, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @3, i32 0, i32 0), i64 94380176842736, i32 554, i32 24), !dbg !498
  br i1 %115, label %116, label %122, !dbg !498

; <label>:116:                                    ; preds = %111
  %117 = load i32, i32* %5, align 4, !dbg !499
  %118 = load double, double* %6, align 8, !dbg !500
  %119 = load double, double* %21, align 8, !dbg !501
  %120 = load i32, i32* %9, align 4, !dbg !502
  %121 = call double @seer(i32 %117, double %118, double %119, i32 %120), !dbg !503
  store double %121, double* %16, align 8, !dbg !504
  br label %128, !dbg !505

; <label>:122:                                    ; preds = %111
  %123 = load i32, i32* %5, align 4, !dbg !506
  %124 = load double, double* %6, align 8, !dbg !507
  %125 = load double, double* %21, align 8, !dbg !508
  %126 = load i32, i32* %9, align 4, !dbg !509
  %127 = call double @seor(i32 %123, double %124, double %125, i32 %126), !dbg !510
  store double %127, double* %16, align 8, !dbg !511
  br label %128

; <label>:128:                                    ; preds = %122, %116
  %129 = load double, double* %14, align 8, !dbg !512
  store double %129, double* %15, align 8, !dbg !513
  %130 = load double, double* %21, align 8, !dbg !514
  store double %130, double* %14, align 8, !dbg !515
  %131 = load double, double* %16, align 8, !dbg !516
  %132 = load double, double* %17, align 8, !dbg !518
  %133 = fcmp oeq double %131, %132, !dbg !519
  %134 = call i1 @fCmpInstHandler(double %131, double %132, i1 %133, i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @3, i32 0, i32 0), i64 94380176851776, i32 562, i32 18), !dbg !520
  br i1 %134, label %135, label %138, !dbg !520

; <label>:135:                                    ; preds = %128
  %136 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !521
  %137 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %136, i32 0, i32 1, !dbg !523
  store double 0x3CB0000000000000, double* %137, align 8, !dbg !524
  br label %173, !dbg !525

; <label>:138:                                    ; preds = %128
  %139 = load double, double* %21, align 8, !dbg !526
  %140 = load double, double* %15, align 8, !dbg !527
  %141 = fsub double %139, %140, !dbg !528
  call void @fSubHandler(double %139, double %140, double %141, i64 94380176854600, i64 94380176854920, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @3, i32 0, i32 0), i64 94380176855328, i32 567, i32 21), !dbg !529
  %142 = load double, double* %16, align 8, !dbg !529
  %143 = load double, double* %17, align 8, !dbg !530
  %144 = fsub double %142, %143, !dbg !531
  call void @fSubHandler(double %142, double %143, double %144, i64 94380176855720, i64 94380176856104, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @3, i32 0, i32 0), i64 94380176856512, i32 567, i32 31), !dbg !532
  %145 = fdiv double %141, %144, !dbg !532
  call void @fDivHandler(double %141, double %144, double %145, i64 94380176855328, i64 94380176856512, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @3, i32 0, i32 0), i64 94380176856928, i32 567, i32 26), !dbg !533
  %146 = load double, double* %16, align 8, !dbg !533
  %147 = fmul double %145, %146, !dbg !534
  call void @fMulHandler(double %145, double %146, double %147, i64 94380176856928, i64 94380176857320, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @3, i32 0, i32 0), i64 94380176859792, i32 567, i32 37), !dbg !535
  %148 = load double, double* %21, align 8, !dbg !535
  %149 = fsub double %148, %147, !dbg !535
  call void @fSubHandler(double %148, double %147, double %149, i64 94380176860184, i64 94380176859792, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @3, i32 0, i32 0), i64 94380176860592, i32 567, i32 14), !dbg !535
  store double %149, double* %21, align 8, !dbg !535
  %150 = load double, double* %21, align 8, !dbg !536
  %151 = load double, double* %15, align 8, !dbg !537
  %152 = fsub double %150, %151, !dbg !538
  call void @fSubHandler(double %150, double %151, double %152, i64 94380176862376, i64 94380176862760, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @3, i32 0, i32 0), i64 94380176863168, i32 568, i32 26), !dbg !539
  %153 = call double @fabs(double %152) #1, !dbg !539
  store double %153, double* %18, align 8, !dbg !540
  %154 = load double, double* %18, align 8, !dbg !541
  %155 = fcmp olt double %154, 1.000000e-18, !dbg !543
  %156 = call i1 @fCmpInstHandler(double %154, double 1.000000e-18, i1 %155, i32 4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @3, i32 0, i32 0), i64 94380176865024, i32 569, i32 20), !dbg !544
  br i1 %156, label %157, label %160, !dbg !544

; <label>:157:                                    ; preds = %138
  %158 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !545
  %159 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %158, i32 0, i32 1, !dbg !547
  store double 0x3CB0000000000000, double* %159, align 8, !dbg !548
  br label %173, !dbg !549

; <label>:160:                                    ; preds = %138
  %161 = load i32, i32* %10, align 4, !dbg !550
  %162 = icmp sgt i32 %161, 40, !dbg !552
  %163 = sext i32 %161 to i64, !dbg !553
  %164 = call i1 @iCmpInstHandler(i64 %163, i64 40, i1 %162, i32 38, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @3, i32 0, i32 0), i64 94380176868016, i32 574, i32 18), !dbg !553
  br i1 %164, label %165, label %169, !dbg !553

; <label>:165:                                    ; preds = %160
  %166 = load double, double* %18, align 8, !dbg !554
  %167 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !556
  %168 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %167, i32 0, i32 1, !dbg !557
  store double %166, double* %168, align 8, !dbg !558
  br label %173, !dbg !559

; <label>:169:                                    ; preds = %160
  %170 = load double, double* %16, align 8, !dbg !560
  store double %170, double* %17, align 8, !dbg !561
  %171 = load i32, i32* %10, align 4, !dbg !562
  %172 = add nsw i32 %171, 1, !dbg !562
  store i32 %172, i32* %10, align 4, !dbg !562
  br label %111, !dbg !563, !llvm.loop !565

; <label>:173:                                    ; preds = %165, %157, %135
  %174 = load double, double* %21, align 8, !dbg !566
  %175 = load double, double* %19, align 8, !dbg !568
  %176 = fsub double %174, %175, !dbg !569
  call void @fSubHandler(double %174, double %175, double %176, i64 94380176874680, i64 94380176875000, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @3, i32 0, i32 0), i64 94380176875408, i32 585, i32 19), !dbg !570
  %177 = call double @fabs(double %176) #1, !dbg !570
  %178 = load i32, i32* %5, align 4, !dbg !571
  %179 = sitofp i32 %178 to double, !dbg !571
  %180 = fmul double 1.000000e-02, %179, !dbg !572
  call void @fMulHandler(double 1.000000e-02, double %179, double %180, i64 0, i64 94380176876728, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @3, i32 0, i32 0), i64 94380176878432, i32 585, i32 41), !dbg !573
  %181 = load double, double* %19, align 8, !dbg !573
  %182 = call double @fabs(double %181) #1, !dbg !574
  %183 = fmul double %180, %182, !dbg !576
  call void @fMulHandler(double %180, double %182, double %183, i64 94380176878432, i64 94380176879264, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @3, i32 0, i32 0), i64 94380176879744, i32 585, i32 47), !dbg !577
  %184 = fadd double 3.000000e+00, %183, !dbg !577
  call void @fAddHandler(double 3.000000e+00, double %183, double %184, i64 0, i64 94380176879744, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @3, i32 0, i32 0), i64 94380176880192, i32 585, i32 35), !dbg !578
  %185 = fcmp ogt double %177, %184, !dbg !578
  %186 = call i1 @fCmpInstHandler(double %177, double %184, i1 %185, i32 2, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @3, i32 0, i32 0), i64 94380176880576, i32 585, i32 30), !dbg !579
  br i1 %186, label %202, label %187, !dbg !579

; <label>:187:                                    ; preds = %173
  %188 = load i32, i32* %5, align 4, !dbg !580
  %189 = icmp sgt i32 %188, 10, !dbg !581
  %190 = sext i32 %188 to i64, !dbg !582
  %191 = call i1 @iCmpInstHandler(i64 %190, i64 10, i1 %189, i32 38, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @3, i32 0, i32 0), i64 94380176882032, i32 586, i32 18), !dbg !582
  br i1 %191, label %192, label %252, !dbg !582

; <label>:192:                                    ; preds = %187
  %193 = load double, double* %21, align 8, !dbg !583
  %194 = load double, double* %19, align 8, !dbg !585
  %195 = fsub double %193, %194, !dbg !586
  call void @fSubHandler(double %193, double %194, double %195, i64 94380176883144, i64 94380176883464, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @3, i32 0, i32 0), i64 94380176883872, i32 586, i32 34), !dbg !587
  %196 = call double @fabs(double %195) #1, !dbg !587
  %197 = load i32, i32* %5, align 4, !dbg !588
  %198 = sitofp i32 %197 to double, !dbg !588
  %199 = fmul double 1.500000e+00, %198, !dbg !589
  call void @fMulHandler(double 1.500000e+00, double %198, double %199, i64 0, i64 94380176885192, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @3, i32 0, i32 0), i64 94380176886896, i32 586, i32 50), !dbg !590
  %200 = fcmp ogt double %196, %199, !dbg !590
  %201 = call i1 @fCmpInstHandler(double %196, double %199, i1 %200, i32 2, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @3, i32 0, i32 0), i64 94380176887280, i32 586, i32 45), !dbg !591
  br i1 %201, label %202, label %252, !dbg !591

; <label>:202:                                    ; preds = %192, %173
  %203 = load i32, i32* %11, align 4, !dbg !593
  %204 = add nsw i32 %203, 1, !dbg !593
  store i32 %204, i32* %11, align 4, !dbg !593
  %205 = load i32, i32* %11, align 4, !dbg !595
  %206 = load i32, i32* %12, align 4, !dbg !597
  %207 = icmp eq i32 %205, %206, !dbg !598
  %208 = sext i32 %205 to i64, !dbg !599
  %209 = sext i32 %206 to i64, !dbg !599
  %210 = call i1 @iCmpInstHandler(i64 %208, i64 %209, i1 %207, i32 32, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @3, i32 0, i32 0), i64 94380176891024, i32 589, i32 23), !dbg !599
  br i1 %210, label %211, label %218, !dbg !599

; <label>:211:                                    ; preds = %202
  %212 = load double, double* %21, align 8, !dbg !600
  %213 = load double, double* %19, align 8, !dbg !602
  %214 = fsub double %212, %213, !dbg !603
  call void @fSubHandler(double %212, double %213, double %214, i64 94380176892136, i64 94380176892456, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @3, i32 0, i32 0), i64 94380176892864, i32 591, i32 37), !dbg !604
  %215 = call double @fabs(double %214) #1, !dbg !604
  %216 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !605
  %217 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %216, i32 0, i32 1, !dbg !606
  store double %215, double* %217, align 8, !dbg !607
  br label %253, !dbg !608

; <label>:218:                                    ; preds = %202
  %219 = load double, double* %21, align 8, !dbg !609
  %220 = load double, double* %19, align 8, !dbg !611
  %221 = fcmp ogt double %219, %220, !dbg !612
  %222 = call i1 @fCmpInstHandler(double %219, double %220, i1 %221, i32 2, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @3, i32 0, i32 0), i64 94380176896160, i32 594, i32 18), !dbg !613
  br i1 %222, label %223, label %232, !dbg !613

; <label>:223:                                    ; preds = %218
  %224 = load i32, i32* %13, align 4, !dbg !614
  %225 = icmp eq i32 %224, 1, !dbg !617
  %226 = sext i32 %224 to i64, !dbg !618
  %227 = call i1 @iCmpInstHandler(i64 %226, i64 1, i1 %225, i32 32, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @3, i32 0, i32 0), i64 94380176897616, i32 596, i32 23), !dbg !618
  br i1 %227, label %228, label %231, !dbg !618

; <label>:228:                                    ; preds = %223
  %229 = load double, double* %20, align 8, !dbg !619
  %230 = fdiv double %229, 2.000000e+00, !dbg !619
  call void @fDivHandler(double %229, double 2.000000e+00, double %230, i64 94380176898728, i64 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @3, i32 0, i32 0), i64 94380176899104, i32 597, i32 22), !dbg !619
  store double %230, double* %20, align 8, !dbg !619
  br label %231, !dbg !620

; <label>:231:                                    ; preds = %228, %223
  store i32 -1, i32* %13, align 4, !dbg !621
  br label %241, !dbg !622

; <label>:232:                                    ; preds = %218
  %233 = load i32, i32* %13, align 4, !dbg !623
  %234 = icmp eq i32 %233, -1, !dbg !626
  %235 = sext i32 %233 to i64, !dbg !627
  %236 = call i1 @iCmpInstHandler(i64 %235, i64 -1, i1 %234, i32 32, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @3, i32 0, i32 0), i64 94380176902464, i32 602, i32 23), !dbg !627
  br i1 %236, label %237, label %240, !dbg !627

; <label>:237:                                    ; preds = %232
  %238 = load double, double* %20, align 8, !dbg !628
  %239 = fdiv double %238, 2.000000e+00, !dbg !628
  call void @fDivHandler(double %238, double 2.000000e+00, double %239, i64 94380176903576, i64 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @3, i32 0, i32 0), i64 94380176903952, i32 603, i32 22), !dbg !628
  store double %239, double* %20, align 8, !dbg !628
  br label %240, !dbg !629

; <label>:240:                                    ; preds = %237, %232
  store i32 1, i32* %13, align 4, !dbg !630
  br label %241

; <label>:241:                                    ; preds = %240, %231
  %242 = load i32, i32* %13, align 4, !dbg !631
  %243 = sitofp i32 %242 to double, !dbg !631
  %244 = load double, double* %20, align 8, !dbg !632
  %245 = fmul double %243, %244, !dbg !633
  call void @fMulHandler(double %243, double %244, double %245, i64 94380176906856, i64 94380176908504, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @3, i32 0, i32 0), i64 94380176908912, i32 606, i32 27), !dbg !634
  %246 = load i32, i32* %11, align 4, !dbg !634
  %247 = sitofp i32 %246 to double, !dbg !634
  %248 = fmul double %245, %247, !dbg !635
  call void @fMulHandler(double %245, double %247, double %248, i64 94380176908912, i64 94380176909688, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @3, i32 0, i32 0), i64 94380176911360, i32 606, i32 30), !dbg !636
  %249 = load double, double* %22, align 8, !dbg !636
  %250 = fadd double %249, %248, !dbg !636
  call void @fAddHandler(double %249, double %248, double %250, i64 94380176911752, i64 94380176911360, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @3, i32 0, i32 0), i64 94380176912160, i32 606, i32 21), !dbg !636
  store double %250, double* %22, align 8, !dbg !636
  %251 = load double, double* %22, align 8, !dbg !637
  store double %251, double* %21, align 8, !dbg !638
  br label %84, !dbg !639, !llvm.loop !640

; <label>:252:                                    ; preds = %192, %187
  br label %253, !dbg !641

; <label>:253:                                    ; preds = %252, %211, %84
  %254 = load double, double* %21, align 8, !dbg !642
  %255 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !643
  %256 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %255, i32 0, i32 0, !dbg !644
  store double %254, double* %256, align 8, !dbg !645
  %257 = load i32, i32* %11, align 4, !dbg !646
  %258 = load i32, i32* %12, align 4, !dbg !648
  %259 = icmp eq i32 %257, %258, !dbg !649
  %260 = sext i32 %257 to i64, !dbg !650
  %261 = sext i32 %258 to i64, !dbg !650
  %262 = call i1 @iCmpInstHandler(i64 %260, i64 %261, i1 %259, i32 32, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @3, i32 0, i32 0), i64 94380176918096, i32 619, i32 15), !dbg !650
  br i1 %262, label %263, label %266, !dbg !650

; <label>:263:                                    ; preds = %253
  br label %264, !dbg !651, !llvm.loop !653

; <label>:264:                                    ; preds = %263
  call void @gsl_error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i32 621, i32 5), !dbg !654
  store i32 5, i32* %4, align 4, !dbg !654
  br label %267, !dbg !654
                                                  ; No predecessors!
  br label %266, !dbg !657

; <label>:266:                                    ; preds = %265, %253
  store i32 0, i32* %4, align 4, !dbg !658
  br label %267, !dbg !658

; <label>:267:                                    ; preds = %266, %264, %73, %67, %41, %35
  %268 = load i32, i32* %4, align 4, !dbg !659
  ret i32 %268, !dbg !659
}

; Function Attrs: nounwind uwtable
define internal double @approx_c(i32, double) #0 !dbg !660 {
  %3 = alloca double, align 8
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !663, metadata !68), !dbg !664
  store double %1, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !665, metadata !68), !dbg !666
  call void @llvm.dbg.declare(metadata double* %6, metadata !667, metadata !68), !dbg !668
  call void @llvm.dbg.declare(metadata double* %7, metadata !669, metadata !68), !dbg !670
  call void @llvm.dbg.declare(metadata double* %8, metadata !671, metadata !68), !dbg !672
  call void @llvm.dbg.declare(metadata double* %9, metadata !673, metadata !68), !dbg !674
  %14 = load i32, i32* %4, align 4, !dbg !675
  %15 = icmp slt i32 %14, 0, !dbg !677
  %16 = sext i32 %14 to i64, !dbg !678
  %17 = call i1 @iCmpInstHandler(i64 %16, i64 0, i1 %15, i32 40, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @5, i32 0, i32 0), i64 94380176933808, i32 211, i32 13), !dbg !678
  br i1 %17, label %18, label %21, !dbg !678

; <label>:18:                                     ; preds = %2
  br label %19, !dbg !679, !llvm.loop !681

; <label>:19:                                     ; preds = %18
  call void @gsl_error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i32 213, i32 4), !dbg !682
  store double 0.000000e+00, double* %3, align 8, !dbg !682
  br label %245, !dbg !682
                                                  ; No predecessors!
  br label %21, !dbg !685

; <label>:21:                                     ; preds = %20, %2
  %22 = load i32, i32* %4, align 4, !dbg !686
  switch i32 %22, label %107 [
    i32 0, label %23
    i32 1, label %39
    i32 2, label %61
    i32 3, label %80
  ], !dbg !687

; <label>:23:                                     ; preds = %21
  %24 = load double, double* %5, align 8, !dbg !688
  %25 = fcmp ole double %24, 4.000000e+00, !dbg !691
  %26 = call i1 @fCmpInstHandler(double %24, double 4.000000e+00, i1 %25, i32 5, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @5, i32 0, i32 0), i64 94380176941008, i32 219, i32 18), !dbg !692
  br i1 %26, label %27, label %35, !dbg !692

; <label>:27:                                     ; preds = %23
  %28 = load double, double* %5, align 8, !dbg !693
  %29 = fmul double 2.000000e+00, %28, !dbg !694
  call void @fMulHandler(double 2.000000e+00, double %28, double %29, i64 0, i64 94380176941944, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @5, i32 0, i32 0), i64 94380176942320, i32 220, i32 37), !dbg !695
  %30 = load double, double* %5, align 8, !dbg !695
  %31 = fmul double %29, %30, !dbg !696
  call void @fMulHandler(double %29, double %30, double %31, i64 94380176942320, i64 94380176942680, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @5, i32 0, i32 0), i64 94380176943088, i32 220, i32 40), !dbg !697
  %32 = fadd double 4.000000e+00, %31, !dbg !697
  call void @fAddHandler(double 4.000000e+00, double %31, double %32, i64 0, i64 94380176943088, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @5, i32 0, i32 0), i64 94380176943536, i32 220, i32 34), !dbg !698
  %33 = call double @sqrt(double %32) #6, !dbg !698
  call void @callOneArgHandler(i32 14, double %32, double %33, i64 94380176943536, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @5, i32 0, i32 0), i64 94380176944256, i32 220, i32 27), !dbg !699
  %34 = fsub double 2.000000e+00, %33, !dbg !699
  call void @fSubHandler(double 2.000000e+00, double %33, double %34, i64 0, i64 94380176944256, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @5, i32 0, i32 0), i64 94380176944800, i32 220, i32 25), !dbg !700
  store double %34, double* %3, align 8, !dbg !700
  br label %245, !dbg !700

; <label>:35:                                     ; preds = %23
  %36 = load i32, i32* %4, align 4, !dbg !701
  %37 = load double, double* %5, align 8, !dbg !702
  %38 = call double @asymptotic(i32 %36, double %37), !dbg !703
  store double %38, double* %3, align 8, !dbg !704
  br label %245, !dbg !704

; <label>:39:                                     ; preds = %21
  %40 = load double, double* %5, align 8, !dbg !705
  %41 = fcmp ole double %40, 4.000000e+00, !dbg !707
  %42 = call i1 @fCmpInstHandler(double %40, double 4.000000e+00, i1 %41, i32 5, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @5, i32 0, i32 0), i64 94380176951216, i32 226, i32 18), !dbg !708
  br i1 %42, label %43, label %57, !dbg !708

; <label>:43:                                     ; preds = %39
  %44 = load double, double* %5, align 8, !dbg !709
  %45 = load double, double* %5, align 8, !dbg !710
  %46 = fmul double 5.000000e+00, %45, !dbg !711
  call void @fMulHandler(double 5.000000e+00, double %45, double %46, i64 0, i64 94380176952616, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @5, i32 0, i32 0), i64 94380176953120, i32 227, i32 43), !dbg !712
  %47 = load double, double* %5, align 8, !dbg !712
  %48 = fmul double %46, %47, !dbg !713
  call void @fMulHandler(double %46, double %47, double %48, i64 94380176953120, i64 94380176953480, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @5, i32 0, i32 0), i64 94380176953888, i32 227, i32 46), !dbg !714
  %49 = load double, double* %5, align 8, !dbg !714
  %50 = fmul double 1.600000e+01, %49, !dbg !715
  call void @fMulHandler(double 1.600000e+01, double %49, double %50, i64 0, i64 94380176954280, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @5, i32 0, i32 0), i64 94380176954784, i32 227, i32 54), !dbg !716
  %51 = fsub double %48, %50, !dbg !716
  call void @fSubHandler(double %48, double %50, double %51, i64 94380176953888, i64 94380176954784, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @5, i32 0, i32 0), i64 94380176955168, i32 227, i32 50), !dbg !717
  %52 = fadd double %51, 6.400000e+01, !dbg !717
  call void @fAddHandler(double %51, double 6.400000e+01, double %52, i64 94380176955168, i64 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @5, i32 0, i32 0), i64 94380176955680, i32 227, i32 58), !dbg !718
  %53 = call double @sqrt(double %52) #6, !dbg !718
  call void @callOneArgHandler(i32 14, double %52, double %53, i64 94380176955680, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @5, i32 0, i32 0), i64 94380176956128, i32 227, i32 37), !dbg !719
  %54 = fsub double %44, %53, !dbg !719
  call void @fSubHandler(double %44, double %53, double %54, i64 94380176952296, i64 94380176956128, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @5, i32 0, i32 0), i64 94380176956608, i32 227, i32 35), !dbg !720
  %55 = fmul double 5.000000e-01, %54, !dbg !720
  call void @fMulHandler(double 5.000000e-01, double %54, double %55, i64 0, i64 94380176956608, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @5, i32 0, i32 0), i64 94380176957120, i32 227, i32 30), !dbg !721
  %56 = fadd double 5.000000e+00, %55, !dbg !721
  call void @fAddHandler(double 5.000000e+00, double %55, double %56, i64 0, i64 94380176957120, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @5, i32 0, i32 0), i64 94380176957536, i32 227, i32 25), !dbg !722
  store double %56, double* %3, align 8, !dbg !722
  br label %245, !dbg !722

; <label>:57:                                     ; preds = %39
  %58 = load i32, i32* %4, align 4, !dbg !723
  %59 = load double, double* %5, align 8, !dbg !724
  %60 = call double @asymptotic(i32 %58, double %59), !dbg !725
  store double %60, double* %3, align 8, !dbg !726
  br label %245, !dbg !726

; <label>:61:                                     ; preds = %21
  %62 = load double, double* %5, align 8, !dbg !727
  %63 = fcmp ole double %62, 3.000000e+00, !dbg !729
  %64 = call i1 @fCmpInstHandler(double %62, double 3.000000e+00, i1 %63, i32 5, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @5, i32 0, i32 0), i64 94380176963632, i32 233, i32 18), !dbg !730
  br i1 %64, label %65, label %75, !dbg !730

; <label>:65:                                     ; preds = %61
  store double -8.000000e+00, double* %9, align 8, !dbg !731
  %66 = load double, double* %5, align 8, !dbg !733
  %67 = fmul double 3.000000e+00, %66, !dbg !734
  call void @fMulHandler(double 3.000000e+00, double %66, double %67, i64 0, i64 94380176965128, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @5, i32 0, i32 0), i64 94380176965568, i32 236, i32 27), !dbg !735
  %68 = load double, double* %5, align 8, !dbg !735
  %69 = fmul double %67, %68, !dbg !736
  call void @fMulHandler(double %67, double %68, double %69, i64 94380176965568, i64 94380176965928, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @5, i32 0, i32 0), i64 94380176966336, i32 236, i32 30), !dbg !737
  %70 = fsub double -4.800000e+01, %69, !dbg !737
  call void @fSubHandler(double -4.800000e+01, double %69, double %70, i64 0, i64 94380176966336, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @5, i32 0, i32 0), i64 94380176966848, i32 236, i32 24), !dbg !738
  store double %70, double* %8, align 8, !dbg !738
  %71 = load double, double* %5, align 8, !dbg !739
  %72 = fmul double 2.000000e+01, %71, !dbg !740
  call void @fMulHandler(double 2.000000e+01, double %71, double %72, i64 0, i64 94380176967624, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @5, i32 0, i32 0), i64 94380176968128, i32 237, i32 22), !dbg !741
  %73 = load double, double* %5, align 8, !dbg !741
  %74 = fmul double %72, %73, !dbg !742
  call void @fMulHandler(double %72, double %73, double %74, i64 94380176968128, i64 94380176968488, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @5, i32 0, i32 0), i64 94380176968896, i32 237, i32 25), !dbg !743
  store double %74, double* %7, align 8, !dbg !743
  br label %79, !dbg !744

; <label>:75:                                     ; preds = %61
  %76 = load i32, i32* %4, align 4, !dbg !745
  %77 = load double, double* %5, align 8, !dbg !746
  %78 = call double @asymptotic(i32 %76, double %77), !dbg !747
  store double %78, double* %3, align 8, !dbg !748
  br label %245, !dbg !748

; <label>:79:                                     ; preds = %65
  br label %216, !dbg !749

; <label>:80:                                     ; preds = %21
  %81 = load double, double* %5, align 8, !dbg !750
  %82 = fcmp ole double %81, 6.250000e+00, !dbg !752
  %83 = call i1 @fCmpInstHandler(double %81, double 6.250000e+00, i1 %82, i32 5, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @5, i32 0, i32 0), i64 94380176974432, i32 244, i32 18), !dbg !753
  br i1 %83, label %84, label %102, !dbg !753

; <label>:84:                                     ; preds = %80
  %85 = load double, double* %5, align 8, !dbg !754
  %86 = fsub double -0.000000e+00, %85, !dbg !756
  call void @fSubHandler(double -0.000000e+00, double %85, double %86, i64 0, i64 94380176975512, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @5, i32 0, i32 0), i64 94380176975856, i32 246, i32 20), !dbg !757
  %87 = fsub double %86, 8.000000e+00, !dbg !757
  call void @fSubHandler(double %86, double 8.000000e+00, double %87, i64 94380176975856, i64 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @5, i32 0, i32 0), i64 94380176976368, i32 246, i32 24), !dbg !758
  store double %87, double* %9, align 8, !dbg !758
  %88 = load double, double* %5, align 8, !dbg !759
  %89 = fmul double 1.600000e+01, %88, !dbg !760
  call void @fMulHandler(double 1.600000e+01, double %88, double %89, i64 0, i64 94380176977144, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @5, i32 0, i32 0), i64 94380176977584, i32 247, i32 22), !dbg !761
  %90 = fsub double %89, 1.280000e+02, !dbg !761
  call void @fSubHandler(double %89, double 1.280000e+02, double %90, i64 94380176977584, i64 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @5, i32 0, i32 0), i64 94380176978064, i32 247, i32 26), !dbg !762
  %91 = load double, double* %5, align 8, !dbg !762
  %92 = fmul double 2.000000e+00, %91, !dbg !763
  call void @fMulHandler(double 2.000000e+00, double %91, double %92, i64 0, i64 94380176978424, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @5, i32 0, i32 0), i64 94380176978864, i32 247, i32 35), !dbg !764
  %93 = load double, double* %5, align 8, !dbg !764
  %94 = fmul double %92, %93, !dbg !765
  call void @fMulHandler(double %92, double %93, double %94, i64 94380176978864, i64 94380176979224, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @5, i32 0, i32 0), i64 94380176979632, i32 247, i32 38), !dbg !766
  %95 = fsub double %90, %94, !dbg !766
  call void @fSubHandler(double %90, double %94, double %95, i64 94380176978064, i64 94380176979632, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @5, i32 0, i32 0), i64 94380176980048, i32 247, i32 32), !dbg !767
  store double %95, double* %8, align 8, !dbg !767
  %96 = load double, double* %5, align 8, !dbg !768
  %97 = load double, double* %5, align 8, !dbg !769
  %98 = fmul double %96, %97, !dbg !770
  call void @fMulHandler(double %96, double %97, double %98, i64 94380176980856, i64 94380176981240, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @5, i32 0, i32 0), i64 94380176981648, i32 248, i32 22), !dbg !771
  %99 = load double, double* %5, align 8, !dbg !771
  %100 = fadd double %99, 8.000000e+00, !dbg !772
  call void @fAddHandler(double %99, double 8.000000e+00, double %100, i64 94380176982040, i64 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @5, i32 0, i32 0), i64 94380176982480, i32 248, i32 30), !dbg !773
  %101 = fmul double %98, %100, !dbg !773
  call void @fMulHandler(double %98, double %100, double %101, i64 94380176981648, i64 94380176982480, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @5, i32 0, i32 0), i64 94380176982864, i32 248, i32 25), !dbg !774
  store double %101, double* %7, align 8, !dbg !774
  br label %106, !dbg !775

; <label>:102:                                    ; preds = %80
  %103 = load i32, i32* %4, align 4, !dbg !776
  %104 = load double, double* %5, align 8, !dbg !777
  %105 = call double @asymptotic(i32 %103, double %104), !dbg !778
  store double %105, double* %3, align 8, !dbg !779
  br label %245, !dbg !779

; <label>:106:                                    ; preds = %84
  br label %216, !dbg !780

; <label>:107:                                    ; preds = %21
  %108 = load i32, i32* %4, align 4, !dbg !781
  %109 = icmp slt i32 %108, 70, !dbg !783
  %110 = sext i32 %108 to i64, !dbg !784
  %111 = call i1 @iCmpInstHandler(i64 %110, i64 70, i1 %109, i32 40, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @5, i32 0, i32 0), i64 94380176988224, i32 255, i32 21), !dbg !784
  br i1 %111, label %112, label %211, !dbg !784

; <label>:112:                                    ; preds = %107
  %113 = load i32, i32* %4, align 4, !dbg !785
  %114 = sitofp i32 %113 to double, !dbg !785
  %115 = fmul double 1.700000e+00, %114, !dbg !788
  call void @fMulHandler(double 1.700000e+00, double %114, double %115, i64 0, i64 94380176989656, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @5, i32 0, i32 0), i64 94380176991424, i32 257, i32 22), !dbg !789
  %116 = load double, double* %5, align 8, !dbg !789
  %117 = call double @sqrt(double %116) #6, !dbg !790
  call void @callOneArgHandler(i32 14, double %116, double %117, i64 94380176991784, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @5, i32 0, i32 0), i64 94380176992256, i32 257, i32 33), !dbg !791
  %118 = fmul double 2.000000e+00, %117, !dbg !791
  call void @fMulHandler(double 2.000000e+00, double %117, double %118, i64 0, i64 94380176992256, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @5, i32 0, i32 0), i64 94380176992768, i32 257, i32 32), !dbg !792
  %119 = fcmp ogt double %115, %118, !dbg !792
  %120 = call i1 @fCmpInstHandler(double %115, double %118, i1 %119, i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @5, i32 0, i32 0), i64 94380176993152, i32 257, i32 29), !dbg !793
  br i1 %120, label %121, label %205, !dbg !793

; <label>:121:                                    ; preds = %112
  call void @llvm.dbg.declare(metadata double* %10, metadata !794, metadata !68), !dbg !796
  %122 = load i32, i32* %4, align 4, !dbg !797
  %123 = load i32, i32* %4, align 4, !dbg !798
  %124 = mul nsw i32 %122, %123, !dbg !799
  %125 = sitofp i32 %124 to double, !dbg !800
  store double %125, double* %10, align 8, !dbg !796
  call void @llvm.dbg.declare(metadata double* %11, metadata !801, metadata !68), !dbg !802
  %126 = load double, double* %10, align 8, !dbg !803
  %127 = fsub double %126, 1.000000e+00, !dbg !804
  call void @fSubHandler(double %126, double 1.000000e+00, double %127, i64 94380176999752, i64 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @5, i32 0, i32 0), i64 94380177000224, i32 261, i32 45), !dbg !805
  %128 = load double, double* %10, align 8, !dbg !805
  %129 = fsub double %128, 1.000000e+00, !dbg !806
  call void @fSubHandler(double %128, double 1.000000e+00, double %129, i64 94380177000584, i64 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @5, i32 0, i32 0), i64 94380177001024, i32 261, i32 54), !dbg !807
  %130 = fmul double %127, %129, !dbg !807
  call void @fMulHandler(double %127, double %129, double %130, i64 94380177000224, i64 94380177001024, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @5, i32 0, i32 0), i64 94380177001408, i32 261, i32 49), !dbg !802
  store double %130, double* %11, align 8, !dbg !802
  call void @llvm.dbg.declare(metadata double* %12, metadata !808, metadata !68), !dbg !809
  %131 = load double, double* %5, align 8, !dbg !810
  %132 = load double, double* %5, align 8, !dbg !811
  %133 = fmul double %131, %132, !dbg !812
  call void @fMulHandler(double %131, double %132, double %133, i64 94380177004600, i64 94380177004952, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @5, i32 0, i32 0), i64 94380177005360, i32 262, i32 33), !dbg !809
  store double %133, double* %12, align 8, !dbg !809
  call void @llvm.dbg.declare(metadata double* %13, metadata !813, metadata !68), !dbg !814
  %134 = load double, double* %12, align 8, !dbg !815
  %135 = load double, double* %12, align 8, !dbg !816
  %136 = fmul double %134, %135, !dbg !817
  call void @fMulHandler(double %134, double %135, double %136, i64 94380177008552, i64 94380177008904, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @5, i32 0, i32 0), i64 94380177009312, i32 263, i32 33), !dbg !814
  store double %136, double* %13, align 8, !dbg !814
  %137 = load double, double* %10, align 8, !dbg !818
  %138 = load double, double* %12, align 8, !dbg !819
  %139 = fmul double 5.000000e-01, %138, !dbg !820
  call void @fMulHandler(double 5.000000e-01, double %138, double %139, i64 0, i64 94380177013832, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @5, i32 0, i32 0), i64 94380177014272, i32 264, i32 36), !dbg !821
  %140 = load double, double* %10, align 8, !dbg !821
  %141 = fsub double %140, 1.000000e+00, !dbg !822
  call void @fSubHandler(double %140, double 1.000000e+00, double %141, i64 94380177014632, i64 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @5, i32 0, i32 0), i64 94380177015072, i32 264, i32 44), !dbg !823
  %142 = fdiv double %139, %141, !dbg !823
  call void @fDivHandler(double %139, double %141, double %142, i64 94380177014272, i64 94380177015072, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @5, i32 0, i32 0), i64 94380177015456, i32 264, i32 39), !dbg !824
  %143 = fadd double %137, %142, !dbg !824
  call void @fAddHandler(double %137, double %142, double %143, i64 94380177011384, i64 94380177015456, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @5, i32 0, i32 0), i64 94380177015872, i32 264, i32 31), !dbg !825
  store double %143, double* %6, align 8, !dbg !825
  %144 = load double, double* %10, align 8, !dbg !826
  %145 = fmul double 5.000000e+00, %144, !dbg !827
  call void @fMulHandler(double 5.000000e+00, double %144, double %145, i64 0, i64 94380177016680, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @5, i32 0, i32 0), i64 94380177017120, i32 265, i32 31), !dbg !828
  %146 = fadd double %145, 7.000000e+00, !dbg !828
  call void @fAddHandler(double %145, double 7.000000e+00, double %146, i64 94380177017120, i64 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @5, i32 0, i32 0), i64 94380177017600, i32 265, i32 35), !dbg !829
  %147 = load double, double* %13, align 8, !dbg !829
  %148 = fmul double %146, %147, !dbg !830
  call void @fMulHandler(double %146, double %147, double %148, i64 94380177017600, i64 94380177017960, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @5, i32 0, i32 0), i64 94380177018368, i32 265, i32 39), !dbg !831
  %149 = load double, double* %11, align 8, !dbg !831
  %150 = fmul double 3.200000e+01, %149, !dbg !832
  call void @fMulHandler(double 3.200000e+01, double %149, double %150, i64 0, i64 94380177018760, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @5, i32 0, i32 0), i64 94380177019264, i32 265, i32 46), !dbg !833
  %151 = load double, double* %10, align 8, !dbg !833
  %152 = fsub double %151, 1.000000e+00, !dbg !834
  call void @fSubHandler(double %151, double 1.000000e+00, double %152, i64 94380177019624, i64 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @5, i32 0, i32 0), i64 94380177020064, i32 265, i32 55), !dbg !835
  %153 = fmul double %150, %152, !dbg !835
  call void @fMulHandler(double %150, double %152, double %153, i64 94380177019264, i64 94380177020064, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @5, i32 0, i32 0), i64 94380177020448, i32 265, i32 50), !dbg !836
  %154 = load double, double* %10, align 8, !dbg !836
  %155 = fsub double %154, 4.000000e+00, !dbg !837
  call void @fSubHandler(double %154, double 4.000000e+00, double %155, i64 94380177020840, i64 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @5, i32 0, i32 0), i64 94380177021280, i32 265, i32 64), !dbg !838
  %156 = fmul double %153, %155, !dbg !838
  call void @fMulHandler(double %153, double %155, double %156, i64 94380177020448, i64 94380177021280, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @5, i32 0, i32 0), i64 94380177021664, i32 265, i32 59), !dbg !839
  %157 = fdiv double %148, %156, !dbg !839
  call void @fDivHandler(double %148, double %156, double %157, i64 94380177018368, i64 94380177021664, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @5, i32 0, i32 0), i64 94380177022080, i32 265, i32 42), !dbg !840
  %158 = load double, double* %6, align 8, !dbg !840
  %159 = fadd double %158, %157, !dbg !840
  call void @fAddHandler(double %158, double %157, double %159, i64 94380177022472, i64 94380177022080, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @5, i32 0, i32 0), i64 94380177022880, i32 265, i32 26), !dbg !840
  store double %159, double* %6, align 8, !dbg !840
  %160 = load double, double* %10, align 8, !dbg !841
  %161 = fmul double 9.000000e+00, %160, !dbg !842
  call void @fMulHandler(double 9.000000e+00, double %160, double %161, i64 0, i64 94380177024664, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @5, i32 0, i32 0), i64 94380177025168, i32 266, i32 31), !dbg !843
  %162 = load double, double* %10, align 8, !dbg !843
  %163 = fmul double %161, %162, !dbg !844
  call void @fMulHandler(double %161, double %162, double %163, i64 94380177025168, i64 94380177025528, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @5, i32 0, i32 0), i64 94380177025936, i32 266, i32 34), !dbg !845
  %164 = load double, double* %10, align 8, !dbg !845
  %165 = fmul double 5.800000e+01, %164, !dbg !846
  call void @fMulHandler(double 5.800000e+01, double %164, double %165, i64 0, i64 94380177026328, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @5, i32 0, i32 0), i64 94380177026832, i32 266, i32 42), !dbg !847
  %166 = fadd double %163, %165, !dbg !847
  call void @fAddHandler(double %163, double %165, double %166, i64 94380177025936, i64 94380177026832, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @5, i32 0, i32 0), i64 94380177027216, i32 266, i32 38), !dbg !848
  %167 = fadd double %166, 2.900000e+01, !dbg !848
  call void @fAddHandler(double %166, double 2.900000e+01, double %167, i64 94380177027216, i64 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @5, i32 0, i32 0), i64 94380177027728, i32 266, i32 46), !dbg !849
  %168 = load double, double* %13, align 8, !dbg !849
  %169 = fmul double %167, %168, !dbg !850
  call void @fMulHandler(double %167, double %168, double %169, i64 94380177027728, i64 94380177028088, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @5, i32 0, i32 0), i64 94380177028496, i32 266, i32 51), !dbg !851
  %170 = load double, double* %12, align 8, !dbg !851
  %171 = fmul double %169, %170, !dbg !852
  call void @fMulHandler(double %169, double %170, double %171, i64 94380177028496, i64 94380177028888, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @5, i32 0, i32 0), i64 94380177029296, i32 266, i32 54), !dbg !853
  %172 = load double, double* %11, align 8, !dbg !853
  %173 = fmul double 6.400000e+01, %172, !dbg !854
  call void @fMulHandler(double 6.400000e+01, double %172, double %173, i64 0, i64 94380177029688, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @5, i32 0, i32 0), i64 94380177030128, i32 267, i32 26), !dbg !855
  %174 = load double, double* %11, align 8, !dbg !855
  %175 = fmul double %173, %174, !dbg !856
  call void @fMulHandler(double %173, double %174, double %175, i64 94380177030128, i64 94380177030488, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @5, i32 0, i32 0), i64 94380177030896, i32 267, i32 30), !dbg !857
  %176 = load double, double* %10, align 8, !dbg !857
  %177 = fsub double %176, 1.000000e+00, !dbg !858
  call void @fSubHandler(double %176, double 1.000000e+00, double %177, i64 94380177031288, i64 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @5, i32 0, i32 0), i64 94380177031728, i32 267, i32 39), !dbg !859
  %178 = fmul double %175, %177, !dbg !859
  call void @fMulHandler(double %175, double %177, double %178, i64 94380177030896, i64 94380177031728, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @5, i32 0, i32 0), i64 94380177032112, i32 267, i32 34), !dbg !860
  %179 = load double, double* %10, align 8, !dbg !860
  %180 = fsub double %179, 4.000000e+00, !dbg !861
  call void @fSubHandler(double %179, double 4.000000e+00, double %180, i64 94380177032504, i64 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @5, i32 0, i32 0), i64 94380177032944, i32 267, i32 48), !dbg !862
  %181 = fmul double %178, %180, !dbg !862
  call void @fMulHandler(double %178, double %180, double %181, i64 94380177032112, i64 94380177032944, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @5, i32 0, i32 0), i64 94380177033328, i32 267, i32 43), !dbg !863
  %182 = load double, double* %10, align 8, !dbg !863
  %183 = fsub double %182, 9.000000e+00, !dbg !864
  call void @fSubHandler(double %182, double 9.000000e+00, double %183, i64 94380177033720, i64 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @5, i32 0, i32 0), i64 94380177034160, i32 267, i32 57), !dbg !865
  %184 = fmul double %181, %183, !dbg !865
  call void @fMulHandler(double %181, double %183, double %184, i64 94380177033328, i64 94380177034160, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @5, i32 0, i32 0), i64 94380177034544, i32 267, i32 52), !dbg !866
  %185 = fdiv double %171, %184, !dbg !866
  call void @fDivHandler(double %171, double %184, double %185, i64 94380177029296, i64 94380177034544, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @5, i32 0, i32 0), i64 94380177034960, i32 266, i32 57), !dbg !867
  %186 = load double, double* %6, align 8, !dbg !867
  %187 = fadd double %186, %185, !dbg !867
  call void @fAddHandler(double %186, double %185, double %187, i64 94380177035352, i64 94380177034960, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @5, i32 0, i32 0), i64 94380177035760, i32 266, i32 26), !dbg !867
  store double %187, double* %6, align 8, !dbg !867
  %188 = load i32, i32* %4, align 4, !dbg !868
  %189 = sitofp i32 %188 to double, !dbg !868
  %190 = fmul double 1.400000e+00, %189, !dbg !870
  call void @fMulHandler(double 1.400000e+00, double %189, double %190, i64 0, i64 94380177037928, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @5, i32 0, i32 0), i64 94380177039696, i32 268, i32 26), !dbg !871
  %191 = load double, double* %5, align 8, !dbg !871
  %192 = call double @sqrt(double %191) #6, !dbg !872
  call void @callOneArgHandler(i32 14, double %191, double %192, i64 94380177040056, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @5, i32 0, i32 0), i64 94380177040528, i32 268, i32 37), !dbg !873
  %193 = fmul double 2.000000e+00, %192, !dbg !873
  call void @fMulHandler(double 2.000000e+00, double %192, double %193, i64 0, i64 94380177040528, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @5, i32 0, i32 0), i64 94380177041040, i32 268, i32 36), !dbg !874
  %194 = fcmp olt double %190, %193, !dbg !874
  %195 = call i1 @fCmpInstHandler(double %190, double %193, i1 %194, i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @5, i32 0, i32 0), i64 94380177041424, i32 268, i32 33), !dbg !875
  br i1 %195, label %196, label %204, !dbg !875

; <label>:196:                                    ; preds = %121
  %197 = load i32, i32* %4, align 4, !dbg !876
  %198 = load double, double* %5, align 8, !dbg !878
  %199 = call double @asymptotic(i32 %197, double %198), !dbg !879
  %200 = load double, double* %6, align 8, !dbg !880
  %201 = fadd double %200, %199, !dbg !880
  call void @fAddHandler(double %200, double %199, double %201, i64 94380177043800, i64 94380177043352, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @5, i32 0, i32 0), i64 94380177044176, i32 270, i32 30), !dbg !880
  store double %201, double* %6, align 8, !dbg !880
  %202 = load double, double* %6, align 8, !dbg !881
  %203 = fmul double %202, 5.000000e-01, !dbg !881
  call void @fMulHandler(double %202, double 5.000000e-01, double %203, i64 94380177045960, i64 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @5, i32 0, i32 0), i64 94380177046400, i32 271, i32 30), !dbg !881
  store double %203, double* %6, align 8, !dbg !881
  br label %204, !dbg !882

; <label>:204:                                    ; preds = %196, %121
  br label %209, !dbg !883

; <label>:205:                                    ; preds = %112
  %206 = load i32, i32* %4, align 4, !dbg !884
  %207 = load double, double* %5, align 8, !dbg !885
  %208 = call double @asymptotic(i32 %206, double %207), !dbg !886
  store double %208, double* %6, align 8, !dbg !887
  br label %209

; <label>:209:                                    ; preds = %205, %204
  %210 = load double, double* %6, align 8, !dbg !888
  store double %210, double* %3, align 8, !dbg !889
  br label %245, !dbg !889

; <label>:211:                                    ; preds = %107
  %212 = load i32, i32* %4, align 4, !dbg !890
  %213 = load i32, i32* %4, align 4, !dbg !891
  %214 = mul nsw i32 %212, %213, !dbg !892
  %215 = sitofp i32 %214 to double, !dbg !890
  store double %215, double* %3, align 8, !dbg !893
  br label %245, !dbg !893

; <label>:216:                                    ; preds = %106, %79
  %217 = load double, double* %9, align 8, !dbg !894
  %218 = load double, double* %8, align 8, !dbg !895
  %219 = load double, double* %7, align 8, !dbg !896
  %220 = call double @solve_cubic(double %217, double %218, double %219), !dbg !897
  store double %220, double* %6, align 8, !dbg !898
  %221 = load double, double* %6, align 8, !dbg !899
  %222 = fcmp olt double %221, 0.000000e+00, !dbg !901
  %223 = call i1 @fCmpInstHandler(double %221, double 0.000000e+00, i1 %222, i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @5, i32 0, i32 0), i64 94380177060704, i32 286, i32 15), !dbg !902
  br i1 %223, label %224, label %237, !dbg !902

; <label>:224:                                    ; preds = %216
  %225 = load double, double* %5, align 8, !dbg !903
  %226 = call double @sqrt(double %225) #6, !dbg !905
  call void @callOneArgHandler(i32 14, double %225, double %226, i64 94380177061816, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @5, i32 0, i32 0), i64 94380177062224, i32 286, i32 22), !dbg !906
  %227 = load i32, i32* %4, align 4, !dbg !906
  %228 = sitofp i32 %227 to double, !dbg !906
  %229 = fmul double 1.000000e-01, %228, !dbg !907
  call void @fMulHandler(double 1.000000e-01, double %228, double %229, i64 0, i64 94380177063064, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @5, i32 0, i32 0), i64 94380177064832, i32 286, i32 36), !dbg !908
  %230 = fcmp ogt double %226, %229, !dbg !908
  %231 = call i1 @fCmpInstHandler(double %226, double %229, i1 %230, i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @5, i32 0, i32 0), i64 94380177065216, i32 286, i32 31), !dbg !909
  br i1 %231, label %232, label %237, !dbg !909

; <label>:232:                                    ; preds = %224
  %233 = load i32, i32* %4, align 4, !dbg !910
  %234 = sub nsw i32 %233, 1, !dbg !911
  %235 = load double, double* %5, align 8, !dbg !912
  %236 = call double @asymptotic(i32 %234, double %235), !dbg !913
  store double %236, double* %3, align 8, !dbg !914
  br label %245, !dbg !914

; <label>:237:                                    ; preds = %224, %216
  %238 = load i32, i32* %4, align 4, !dbg !915
  %239 = load i32, i32* %4, align 4, !dbg !916
  %240 = mul nsw i32 %238, %239, !dbg !917
  %241 = sitofp i32 %240 to double, !dbg !915
  %242 = load double, double* %6, align 8, !dbg !918
  %243 = call double @fabs(double %242) #1, !dbg !919
  %244 = fadd double %241, %243, !dbg !920
  call void @fAddHandler(double %241, double %243, double %244, i64 94380177071016, i64 94380177073136, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @5, i32 0, i32 0), i64 94380177073616, i32 289, i32 27), !dbg !921
  store double %244, double* %3, align 8, !dbg !921
  br label %245, !dbg !921

; <label>:245:                                    ; preds = %237, %232, %211, %209, %102, %75, %57, %43, %35, %27, %19
  %246 = load double, double* %3, align 8, !dbg !922
  ret double %246, !dbg !922
}

; Function Attrs: nounwind uwtable
define internal double @ceer(i32, double, double, i32) #0 !dbg !923 {
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !926, metadata !68), !dbg !927
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !928, metadata !68), !dbg !929
  store double %2, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !930, metadata !68), !dbg !931
  store i32 %3, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !932, metadata !68), !dbg !933
  call void @llvm.dbg.declare(metadata double* %9, metadata !934, metadata !68), !dbg !935
  call void @llvm.dbg.declare(metadata double* %10, metadata !936, metadata !68), !dbg !937
  call void @llvm.dbg.declare(metadata i32* %11, metadata !938, metadata !68), !dbg !939
  call void @llvm.dbg.declare(metadata i32* %12, metadata !940, metadata !68), !dbg !941
  %13 = load i32, i32* %5, align 4, !dbg !942
  %14 = icmp eq i32 %13, 0, !dbg !944
  %15 = sext i32 %13 to i64, !dbg !945
  %16 = call i1 @iCmpInstHandler(i64 %15, i64 0, i1 %14, i32 32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @7, i32 0, i32 0), i64 94380177091488, i32 43, i32 13), !dbg !945
  br i1 %16, label %17, label %18, !dbg !945

; <label>:17:                                     ; preds = %4
  store double 0.000000e+00, double* %9, align 8, !dbg !946
  br label %62, !dbg !947

; <label>:18:                                     ; preds = %4
  %19 = load double, double* %6, align 8, !dbg !948
  %20 = fmul double 2.000000e+00, %19, !dbg !950
  call void @fMulHandler(double 2.000000e+00, double %19, double %20, i64 0, i64 94380177093480, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @7, i32 0, i32 0), i64 94380177093856, i32 47, i32 17), !dbg !951
  %21 = load double, double* %6, align 8, !dbg !951
  %22 = fmul double %20, %21, !dbg !952
  call void @fMulHandler(double %20, double %21, double %22, i64 94380177093856, i64 94380177094216, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @7, i32 0, i32 0), i64 94380177094624, i32 47, i32 20), !dbg !953
  %23 = load double, double* %7, align 8, !dbg !953
  %24 = fdiv double %22, %23, !dbg !954
  call void @fDivHandler(double %22, double %23, double %24, i64 94380177094624, i64 94380177095016, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @7, i32 0, i32 0), i64 94380177095424, i32 47, i32 23), !dbg !955
  store double %24, double* %9, align 8, !dbg !955
  %25 = load i32, i32* %5, align 4, !dbg !956
  %26 = icmp ne i32 %25, 2, !dbg !958
  %27 = sext i32 %25 to i64, !dbg !959
  %28 = call i1 @iCmpInstHandler(i64 %27, i64 2, i1 %26, i32 33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @7, i32 0, i32 0), i64 94380177096640, i32 49, i32 17), !dbg !959
  br i1 %28, label %29, label %61, !dbg !959

; <label>:29:                                     ; preds = %18
  %30 = load i32, i32* %5, align 4, !dbg !960
  %31 = sdiv i32 %30, 2, !dbg !962
  %32 = sub nsw i32 %31, 1, !dbg !963
  store i32 %32, i32* %12, align 4, !dbg !964
  store i32 0, i32* %11, align 4, !dbg !965
  br label %33, !dbg !967

; <label>:33:                                     ; preds = %57, %29
  %34 = load i32, i32* %11, align 4, !dbg !968
  %35 = load i32, i32* %12, align 4, !dbg !971
  %36 = icmp slt i32 %34, %35, !dbg !972
  %37 = sext i32 %34 to i64, !dbg !973
  %38 = sext i32 %35 to i64, !dbg !973
  %39 = call i1 @iCmpInstHandler(i64 %37, i64 %38, i1 %36, i32 40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @7, i32 0, i32 0), i64 94380177100848, i32 53, i32 24), !dbg !973
  br i1 %39, label %40, label %60, !dbg !973

; <label>:40:                                     ; preds = %33
  %41 = load double, double* %6, align 8, !dbg !974
  %42 = load double, double* %6, align 8, !dbg !975
  %43 = fmul double %41, %42, !dbg !976
  call void @fMulHandler(double %41, double %42, double %43, i64 94380177101960, i64 94380177102280, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @7, i32 0, i32 0), i64 94380177102688, i32 54, i32 24), !dbg !977
  %44 = load double, double* %7, align 8, !dbg !977
  %45 = load i32, i32* %11, align 4, !dbg !978
  %46 = add nsw i32 %45, 1, !dbg !979
  %47 = sitofp i32 %46 to double, !dbg !980
  %48 = fmul double 4.000000e+00, %47, !dbg !981
  call void @fMulHandler(double 4.000000e+00, double %47, double %48, i64 0, i64 94380177104264, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @7, i32 0, i32 0), i64 94380177104704, i32 54, i32 37), !dbg !982
  %49 = load i32, i32* %11, align 4, !dbg !982
  %50 = add nsw i32 %49, 1, !dbg !983
  %51 = sitofp i32 %50 to double, !dbg !984
  %52 = fmul double %48, %51, !dbg !985
  call void @fMulHandler(double %48, double %51, double %52, i64 94380177104704, i64 94380177105864, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @7, i32 0, i32 0), i64 94380177106272, i32 54, i32 44), !dbg !986
  %53 = fsub double %44, %52, !dbg !986
  call void @fSubHandler(double %44, double %52, double %53, i64 94380177103080, i64 94380177106272, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @7, i32 0, i32 0), i64 94380177106688, i32 54, i32 32), !dbg !987
  %54 = load double, double* %9, align 8, !dbg !987
  %55 = fsub double %53, %54, !dbg !988
  call void @fSubHandler(double %53, double %54, double %55, i64 94380177106688, i64 94380177107080, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @7, i32 0, i32 0), i64 94380177107488, i32 54, i32 52), !dbg !989
  %56 = fdiv double %43, %55, !dbg !989
  call void @fDivHandler(double %43, double %55, double %56, i64 94380177102688, i64 94380177107488, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @7, i32 0, i32 0), i64 94380177107904, i32 54, i32 27), !dbg !990
  store double %56, double* %9, align 8, !dbg !990
  br label %57, !dbg !991

; <label>:57:                                     ; preds = %40
  %58 = load i32, i32* %11, align 4, !dbg !992
  %59 = add nsw i32 %58, 1, !dbg !992
  store i32 %59, i32* %11, align 4, !dbg !992
  br label %33, !dbg !994, !llvm.loop !995

; <label>:60:                                     ; preds = %33
  br label %61, !dbg !997

; <label>:61:                                     ; preds = %60, %18
  br label %62

; <label>:62:                                     ; preds = %61, %17
  %63 = load i32, i32* %5, align 4, !dbg !998
  %64 = load i32, i32* %5, align 4, !dbg !999
  %65 = mul nsw i32 %63, %64, !dbg !1000
  %66 = sitofp i32 %65 to double, !dbg !998
  %67 = load double, double* %9, align 8, !dbg !1001
  %68 = fadd double %67, %66, !dbg !1001
  call void @fAddHandler(double %67, double %66, double %68, i64 94380177115160, i64 94380177113512, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @7, i32 0, i32 0), i64 94380177115568, i32 58, i32 8), !dbg !1001
  store double %68, double* %9, align 8, !dbg !1001
  store double 0.000000e+00, double* %10, align 8, !dbg !1002
  store i32 0, i32* %11, align 4, !dbg !1003
  br label %69, !dbg !1005

; <label>:69:                                     ; preds = %102, %62
  %70 = load i32, i32* %11, align 4, !dbg !1006
  %71 = load i32, i32* %8, align 4, !dbg !1009
  %72 = icmp slt i32 %70, %71, !dbg !1010
  %73 = sext i32 %70 to i64, !dbg !1011
  %74 = sext i32 %71 to i64, !dbg !1011
  %75 = call i1 @iCmpInstHandler(i64 %73, i64 %74, i1 %72, i32 40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @7, i32 0, i32 0), i64 94380177119440, i32 62, i32 16), !dbg !1011
  br i1 %75, label %76, label %105, !dbg !1011

; <label>:76:                                     ; preds = %69
  %77 = load double, double* %6, align 8, !dbg !1012
  %78 = load double, double* %6, align 8, !dbg !1013
  %79 = fmul double %77, %78, !dbg !1014
  call void @fMulHandler(double %77, double %78, double %79, i64 94380177120552, i64 94380177120872, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @7, i32 0, i32 0), i64 94380177121280, i32 63, i32 17), !dbg !1015
  %80 = load double, double* %7, align 8, !dbg !1015
  %81 = load i32, i32* %5, align 4, !dbg !1016
  %82 = sitofp i32 %81 to double, !dbg !1016
  %83 = load i32, i32* %8, align 4, !dbg !1017
  %84 = load i32, i32* %11, align 4, !dbg !1018
  %85 = sub nsw i32 %83, %84, !dbg !1019
  %86 = sitofp i32 %85 to double, !dbg !1020
  %87 = fmul double 2.000000e+00, %86, !dbg !1021
  call void @fMulHandler(double 2.000000e+00, double %86, double %87, i64 0, i64 94380177125272, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @7, i32 0, i32 0), i64 94380177125712, i32 64, i32 27), !dbg !1022
  %88 = fadd double %82, %87, !dbg !1022
  call void @fAddHandler(double %82, double %87, double %88, i64 94380177122440, i64 94380177125712, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @7, i32 0, i32 0), i64 94380177126096, i32 64, i32 22), !dbg !1023
  %89 = load i32, i32* %5, align 4, !dbg !1023
  %90 = sitofp i32 %89 to double, !dbg !1023
  %91 = load i32, i32* %8, align 4, !dbg !1024
  %92 = load i32, i32* %11, align 4, !dbg !1025
  %93 = sub nsw i32 %91, %92, !dbg !1026
  %94 = sitofp i32 %93 to double, !dbg !1027
  %95 = fmul double 2.000000e+00, %94, !dbg !1028
  call void @fMulHandler(double 2.000000e+00, double %94, double %95, i64 0, i64 94380177129704, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @7, i32 0, i32 0), i64 94380177130144, i32 64, i32 55), !dbg !1029
  %96 = fadd double %90, %95, !dbg !1029
  call void @fAddHandler(double %90, double %95, double %96, i64 94380177126872, i64 94380177130144, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @7, i32 0, i32 0), i64 94380177130528, i32 64, i32 50), !dbg !1030
  %97 = fmul double %88, %96, !dbg !1030
  call void @fMulHandler(double %88, double %96, double %97, i64 94380177126096, i64 94380177130528, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @7, i32 0, i32 0), i64 94380177130944, i32 64, i32 42), !dbg !1031
  %98 = fsub double %80, %97, !dbg !1031
  call void @fSubHandler(double %80, double %97, double %98, i64 94380177121672, i64 94380177130944, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @7, i32 0, i32 0), i64 94380177131360, i32 64, i32 13), !dbg !1032
  %99 = load double, double* %10, align 8, !dbg !1032
  %100 = fsub double %98, %99, !dbg !1033
  call void @fSubHandler(double %98, double %99, double %100, i64 94380177131360, i64 94380177131752, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @7, i32 0, i32 0), i64 94380177132160, i32 64, i32 71), !dbg !1034
  %101 = fdiv double %79, %100, !dbg !1034
  call void @fDivHandler(double %79, double %100, double %101, i64 94380177121280, i64 94380177132160, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @7, i32 0, i32 0), i64 94380177132576, i32 63, i32 20), !dbg !1035
  store double %101, double* %10, align 8, !dbg !1035
  br label %102, !dbg !1036

; <label>:102:                                    ; preds = %76
  %103 = load i32, i32* %11, align 4, !dbg !1037
  %104 = add nsw i32 %103, 1, !dbg !1037
  store i32 %104, i32* %11, align 4, !dbg !1037
  br label %69, !dbg !1039, !llvm.loop !1040

; <label>:105:                                    ; preds = %69
  %106 = load i32, i32* %5, align 4, !dbg !1042
  %107 = icmp eq i32 %106, 0, !dbg !1044
  %108 = sext i32 %106 to i64, !dbg !1045
  %109 = call i1 @iCmpInstHandler(i64 %108, i64 0, i1 %107, i32 32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @7, i32 0, i32 0), i64 94380177137056, i32 66, i32 13), !dbg !1045
  br i1 %109, label %110, label %113, !dbg !1045

; <label>:110:                                    ; preds = %105
  %111 = load double, double* %10, align 8, !dbg !1046
  %112 = fmul double %111, 2.000000e+00, !dbg !1046
  call void @fMulHandler(double %111, double 2.000000e+00, double %112, i64 94380177138168, i64 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @7, i32 0, i32 0), i64 94380177138544, i32 67, i32 13), !dbg !1046
  store double %112, double* %10, align 8, !dbg !1046
  br label %113, !dbg !1047

; <label>:113:                                    ; preds = %110, %105
  %114 = load double, double* %9, align 8, !dbg !1048
  %115 = load double, double* %10, align 8, !dbg !1049
  %116 = fadd double %114, %115, !dbg !1050
  call void @fAddHandler(double %114, double %115, double %116, i64 94380177140680, i64 94380177141000, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @7, i32 0, i32 0), i64 94380177141408, i32 69, i32 16), !dbg !1051
  %117 = load double, double* %7, align 8, !dbg !1051
  %118 = fsub double %116, %117, !dbg !1052
  call void @fSubHandler(double %116, double %117, double %118, i64 94380177141408, i64 94380177141800, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @7, i32 0, i32 0), i64 94380177142208, i32 69, i32 24), !dbg !1053
  ret double %118, !dbg !1053
}

; Function Attrs: nounwind uwtable
define internal double @ceor(i32, double, double, i32) #0 !dbg !1054 {
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1055, metadata !68), !dbg !1056
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !1057, metadata !68), !dbg !1058
  store double %2, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !1059, metadata !68), !dbg !1060
  store i32 %3, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1061, metadata !68), !dbg !1062
  call void @llvm.dbg.declare(metadata double* %9, metadata !1063, metadata !68), !dbg !1064
  call void @llvm.dbg.declare(metadata double* %10, metadata !1065, metadata !68), !dbg !1066
  call void @llvm.dbg.declare(metadata i32* %11, metadata !1067, metadata !68), !dbg !1068
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1069, metadata !68), !dbg !1070
  %13 = load double, double* %6, align 8, !dbg !1071
  store double %13, double* %9, align 8, !dbg !1072
  %14 = load i32, i32* %5, align 4, !dbg !1073
  %15 = sitofp i32 %14 to float, !dbg !1074
  %16 = fpext float %15 to double, !dbg !1074
  %17 = fdiv double %16, 2.000000e+00, !dbg !1075
  call void @fDivHandler(double %16, double 2.000000e+00, double %17, i64 94380177155448, i64 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @9, i32 0, i32 0), i64 94380177157152, i32 79, i32 26), !dbg !1076
  %18 = fsub double %17, 5.000000e-01, !dbg !1076
  call void @fSubHandler(double %17, double 5.000000e-01, double %18, i64 94380177157152, i64 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @9, i32 0, i32 0), i64 94380177157568, i32 79, i32 31), !dbg !1077
  %19 = fptosi double %18 to i32, !dbg !1077
  store i32 %19, i32* %12, align 4, !dbg !1078
  store i32 0, i32* %11, align 4, !dbg !1079
  br label %20, !dbg !1081

; <label>:20:                                     ; preds = %45, %4
  %21 = load i32, i32* %11, align 4, !dbg !1082
  %22 = load i32, i32* %12, align 4, !dbg !1085
  %23 = icmp slt i32 %21, %22, !dbg !1086
  %24 = sext i32 %21 to i64, !dbg !1087
  %25 = sext i32 %22 to i64, !dbg !1087
  %26 = call i1 @iCmpInstHandler(i64 %24, i64 %25, i1 %23, i32 40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @9, i32 0, i32 0), i64 94380177160400, i32 81, i32 16), !dbg !1087
  br i1 %26, label %27, label %48, !dbg !1087

; <label>:27:                                     ; preds = %20
  %28 = load double, double* %6, align 8, !dbg !1088
  %29 = load double, double* %6, align 8, !dbg !1089
  %30 = fmul double %28, %29, !dbg !1090
  call void @fMulHandler(double %28, double %29, double %30, i64 94380177161368, i64 94380177161688, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @9, i32 0, i32 0), i64 94380177162096, i32 82, i32 16), !dbg !1091
  %31 = load double, double* %7, align 8, !dbg !1091
  %32 = load i32, i32* %11, align 4, !dbg !1092
  %33 = sitofp i32 %32 to double, !dbg !1092
  %34 = fmul double 2.000000e+00, %33, !dbg !1093
  call void @fMulHandler(double 2.000000e+00, double %33, double %34, i64 0, i64 94380177163256, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @9, i32 0, i32 0), i64 94380177164960, i32 82, i32 30), !dbg !1094
  %35 = fadd double %34, 1.000000e+00, !dbg !1094
  call void @fAddHandler(double %34, double 1.000000e+00, double %35, i64 94380177164960, i64 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @9, i32 0, i32 0), i64 94380177165376, i32 82, i32 34), !dbg !1095
  %36 = load i32, i32* %11, align 4, !dbg !1095
  %37 = sitofp i32 %36 to double, !dbg !1095
  %38 = fmul double 2.000000e+00, %37, !dbg !1096
  call void @fMulHandler(double 2.000000e+00, double %37, double %38, i64 0, i64 94380177166120, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @9, i32 0, i32 0), i64 94380177167824, i32 82, i32 45), !dbg !1097
  %39 = fadd double %38, 1.000000e+00, !dbg !1097
  call void @fAddHandler(double %38, double 1.000000e+00, double %39, i64 94380177167824, i64 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @9, i32 0, i32 0), i64 94380177168240, i32 82, i32 49), !dbg !1098
  %40 = fmul double %35, %39, !dbg !1098
  call void @fMulHandler(double %35, double %39, double %40, i64 94380177165376, i64 94380177168240, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @9, i32 0, i32 0), i64 94380177168624, i32 82, i32 40), !dbg !1099
  %41 = fsub double %31, %40, !dbg !1099
  call void @fSubHandler(double %31, double %40, double %41, i64 94380177162488, i64 94380177168624, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @9, i32 0, i32 0), i64 94380177169040, i32 82, i32 24), !dbg !1100
  %42 = load double, double* %9, align 8, !dbg !1100
  %43 = fsub double %41, %42, !dbg !1101
  call void @fSubHandler(double %41, double %42, double %43, i64 94380177169040, i64 94380177169432, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @9, i32 0, i32 0), i64 94380177169840, i32 82, i32 56), !dbg !1102
  %44 = fdiv double %30, %43, !dbg !1102
  call void @fDivHandler(double %30, double %43, double %44, i64 94380177162096, i64 94380177169840, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @9, i32 0, i32 0), i64 94380177170256, i32 82, i32 19), !dbg !1103
  store double %44, double* %9, align 8, !dbg !1103
  br label %45, !dbg !1104

; <label>:45:                                     ; preds = %27
  %46 = load i32, i32* %11, align 4, !dbg !1105
  %47 = add nsw i32 %46, 1, !dbg !1105
  store i32 %47, i32* %11, align 4, !dbg !1105
  br label %20, !dbg !1107, !llvm.loop !1108

; <label>:48:                                     ; preds = %20
  %49 = load i32, i32* %5, align 4, !dbg !1110
  %50 = load i32, i32* %5, align 4, !dbg !1111
  %51 = mul nsw i32 %49, %50, !dbg !1112
  %52 = sitofp i32 %51 to double, !dbg !1110
  %53 = load double, double* %9, align 8, !dbg !1113
  %54 = fadd double %53, %52, !dbg !1113
  call void @fAddHandler(double %53, double %52, double %54, i64 94380177177160, i64 94380177175512, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @9, i32 0, i32 0), i64 94380177177568, i32 83, i32 8), !dbg !1113
  store double %54, double* %9, align 8, !dbg !1113
  store double 0.000000e+00, double* %10, align 8, !dbg !1114
  store i32 0, i32* %11, align 4, !dbg !1115
  br label %55, !dbg !1117

; <label>:55:                                     ; preds = %88, %48
  %56 = load i32, i32* %11, align 4, !dbg !1118
  %57 = load i32, i32* %8, align 4, !dbg !1121
  %58 = icmp slt i32 %56, %57, !dbg !1122
  %59 = sext i32 %56 to i64, !dbg !1123
  %60 = sext i32 %57 to i64, !dbg !1123
  %61 = call i1 @iCmpInstHandler(i64 %59, i64 %60, i1 %58, i32 40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @9, i32 0, i32 0), i64 94380177181440, i32 86, i32 16), !dbg !1123
  br i1 %61, label %62, label %91, !dbg !1123

; <label>:62:                                     ; preds = %55
  %63 = load double, double* %6, align 8, !dbg !1124
  %64 = load double, double* %6, align 8, !dbg !1125
  %65 = fmul double %63, %64, !dbg !1126
  call void @fMulHandler(double %63, double %64, double %65, i64 94380177182552, i64 94380177182872, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @9, i32 0, i32 0), i64 94380177183280, i32 87, i32 17), !dbg !1127
  %66 = load double, double* %7, align 8, !dbg !1127
  %67 = load i32, i32* %5, align 4, !dbg !1128
  %68 = sitofp i32 %67 to double, !dbg !1128
  %69 = load i32, i32* %8, align 4, !dbg !1129
  %70 = load i32, i32* %11, align 4, !dbg !1130
  %71 = sub nsw i32 %69, %70, !dbg !1131
  %72 = sitofp i32 %71 to double, !dbg !1132
  %73 = fmul double 2.000000e+00, %72, !dbg !1133
  call void @fMulHandler(double 2.000000e+00, double %72, double %73, i64 0, i64 94380177187272, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @9, i32 0, i32 0), i64 94380177187712, i32 88, i32 27), !dbg !1134
  %74 = fadd double %68, %73, !dbg !1134
  call void @fAddHandler(double %68, double %73, double %74, i64 94380177184440, i64 94380177187712, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @9, i32 0, i32 0), i64 94380177188096, i32 88, i32 22), !dbg !1135
  %75 = load i32, i32* %5, align 4, !dbg !1135
  %76 = sitofp i32 %75 to double, !dbg !1135
  %77 = load i32, i32* %8, align 4, !dbg !1136
  %78 = load i32, i32* %11, align 4, !dbg !1137
  %79 = sub nsw i32 %77, %78, !dbg !1138
  %80 = sitofp i32 %79 to double, !dbg !1139
  %81 = fmul double 2.000000e+00, %80, !dbg !1140
  call void @fMulHandler(double 2.000000e+00, double %80, double %81, i64 0, i64 94380177191704, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @9, i32 0, i32 0), i64 94380177192144, i32 88, i32 55), !dbg !1141
  %82 = fadd double %76, %81, !dbg !1141
  call void @fAddHandler(double %76, double %81, double %82, i64 94380177188872, i64 94380177192144, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @9, i32 0, i32 0), i64 94380177192528, i32 88, i32 50), !dbg !1142
  %83 = fmul double %74, %82, !dbg !1142
  call void @fMulHandler(double %74, double %82, double %83, i64 94380177188096, i64 94380177192528, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @9, i32 0, i32 0), i64 94380177192944, i32 88, i32 42), !dbg !1143
  %84 = fsub double %66, %83, !dbg !1143
  call void @fSubHandler(double %66, double %83, double %84, i64 94380177183672, i64 94380177192944, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @9, i32 0, i32 0), i64 94380177193360, i32 88, i32 13), !dbg !1144
  %85 = load double, double* %10, align 8, !dbg !1144
  %86 = fsub double %84, %85, !dbg !1145
  call void @fSubHandler(double %84, double %85, double %86, i64 94380177193360, i64 94380177193752, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @9, i32 0, i32 0), i64 94380177194160, i32 88, i32 71), !dbg !1146
  %87 = fdiv double %65, %86, !dbg !1146
  call void @fDivHandler(double %65, double %86, double %87, i64 94380177183280, i64 94380177194160, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @9, i32 0, i32 0), i64 94380177194576, i32 87, i32 20), !dbg !1147
  store double %87, double* %10, align 8, !dbg !1147
  br label %88, !dbg !1148

; <label>:88:                                     ; preds = %62
  %89 = load i32, i32* %11, align 4, !dbg !1149
  %90 = add nsw i32 %89, 1, !dbg !1149
  store i32 %90, i32* %11, align 4, !dbg !1149
  br label %55, !dbg !1151, !llvm.loop !1152

; <label>:91:                                     ; preds = %55
  %92 = load double, double* %9, align 8, !dbg !1154
  %93 = load double, double* %10, align 8, !dbg !1155
  %94 = fadd double %92, %93, !dbg !1156
  call void @fAddHandler(double %92, double %93, double %94, i64 94380177198712, i64 94380177199032, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @9, i32 0, i32 0), i64 94380177199440, i32 90, i32 16), !dbg !1157
  %95 = load double, double* %7, align 8, !dbg !1157
  %96 = fsub double %94, %95, !dbg !1158
  call void @fSubHandler(double %94, double %95, double %96, i64 94380177199440, i64 94380177199832, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @9, i32 0, i32 0), i64 94380177200240, i32 90, i32 24), !dbg !1159
  ret double %96, !dbg !1159
}

; Function Attrs: nounwind readnone
declare double @fabs(double) #2

declare void @gsl_error(i8*, i8*, i32, i32) #3

; Function Attrs: nounwind uwtable
define internal double @approx_s(i32, double) #0 !dbg !1160 {
  %3 = alloca double, align 8
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1161, metadata !68), !dbg !1162
  store double %1, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !1163, metadata !68), !dbg !1164
  call void @llvm.dbg.declare(metadata double* %6, metadata !1165, metadata !68), !dbg !1166
  call void @llvm.dbg.declare(metadata double* %7, metadata !1167, metadata !68), !dbg !1168
  call void @llvm.dbg.declare(metadata double* %8, metadata !1169, metadata !68), !dbg !1170
  call void @llvm.dbg.declare(metadata double* %9, metadata !1171, metadata !68), !dbg !1172
  %14 = load i32, i32* %4, align 4, !dbg !1173
  %15 = icmp slt i32 %14, 1, !dbg !1175
  %16 = sext i32 %14 to i64, !dbg !1176
  %17 = call i1 @iCmpInstHandler(i64 %16, i64 1, i1 %15, i32 40, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @11, i32 0, i32 0), i64 94380177210640, i32 299, i32 13), !dbg !1176
  br i1 %17, label %18, label %21, !dbg !1176

; <label>:18:                                     ; preds = %2
  br label %19, !dbg !1177, !llvm.loop !1179

; <label>:19:                                     ; preds = %18
  call void @gsl_error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i32 301, i32 4), !dbg !1180
  store double 0.000000e+00, double* %3, align 8, !dbg !1180
  br label %229, !dbg !1180
                                                  ; No predecessors!
  br label %21, !dbg !1183

; <label>:21:                                     ; preds = %20, %2
  %22 = load i32, i32* %4, align 4, !dbg !1184
  switch i32 %22, label %89 [
    i32 1, label %23
    i32 2, label %46
    i32 3, label %62
  ], !dbg !1185

; <label>:23:                                     ; preds = %21
  %24 = load double, double* %5, align 8, !dbg !1186
  %25 = fcmp ole double %24, 4.000000e+00, !dbg !1189
  %26 = call i1 @fCmpInstHandler(double %24, double 4.000000e+00, i1 %25, i32 5, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @11, i32 0, i32 0), i64 94380177217136, i32 307, i32 18), !dbg !1190
  br i1 %26, label %27, label %41, !dbg !1190

; <label>:27:                                     ; preds = %23
  %28 = load double, double* %5, align 8, !dbg !1191
  %29 = load double, double* %5, align 8, !dbg !1192
  %30 = fmul double 5.000000e+00, %29, !dbg !1193
  call void @fMulHandler(double 5.000000e+00, double %29, double %30, i64 0, i64 94380177218392, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @11, i32 0, i32 0), i64 94380177218832, i32 308, i32 43), !dbg !1194
  %31 = load double, double* %5, align 8, !dbg !1194
  %32 = fmul double %30, %31, !dbg !1195
  call void @fMulHandler(double %30, double %31, double %32, i64 94380177218832, i64 94380177219192, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @11, i32 0, i32 0), i64 94380177219600, i32 308, i32 46), !dbg !1196
  %33 = load double, double* %5, align 8, !dbg !1196
  %34 = fmul double 1.600000e+01, %33, !dbg !1197
  call void @fMulHandler(double 1.600000e+01, double %33, double %34, i64 0, i64 94380177219992, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @11, i32 0, i32 0), i64 94380177220432, i32 308, i32 54), !dbg !1198
  %35 = fadd double %32, %34, !dbg !1198
  call void @fAddHandler(double %32, double %34, double %35, i64 94380177219600, i64 94380177220432, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @11, i32 0, i32 0), i64 94380177220816, i32 308, i32 50), !dbg !1199
  %36 = fadd double %35, 6.400000e+01, !dbg !1199
  call void @fAddHandler(double %35, double 6.400000e+01, double %36, i64 94380177220816, i64 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @11, i32 0, i32 0), i64 94380177221264, i32 308, i32 58), !dbg !1200
  %37 = call double @sqrt(double %36) #6, !dbg !1200
  call void @callOneArgHandler(i32 14, double %36, double %37, i64 94380177221264, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @11, i32 0, i32 0), i64 94380177221712, i32 308, i32 37), !dbg !1201
  %38 = fadd double %28, %37, !dbg !1201
  call void @fAddHandler(double %28, double %37, double %38, i64 94380177218072, i64 94380177221712, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @11, i32 0, i32 0), i64 94380177222192, i32 308, i32 35), !dbg !1202
  %39 = fmul double 5.000000e-01, %38, !dbg !1202
  call void @fMulHandler(double 5.000000e-01, double %38, double %39, i64 0, i64 94380177222192, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @11, i32 0, i32 0), i64 94380177222640, i32 308, i32 30), !dbg !1203
  %40 = fsub double 5.000000e+00, %39, !dbg !1203
  call void @fSubHandler(double 5.000000e+00, double %39, double %40, i64 0, i64 94380177222640, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @11, i32 0, i32 0), i64 94380177223056, i32 308, i32 25), !dbg !1204
  store double %40, double* %3, align 8, !dbg !1204
  br label %229, !dbg !1204

; <label>:41:                                     ; preds = %23
  %42 = load i32, i32* %4, align 4, !dbg !1205
  %43 = sub nsw i32 %42, 1, !dbg !1206
  %44 = load double, double* %5, align 8, !dbg !1207
  %45 = call double @asymptotic(i32 %43, double %44), !dbg !1208
  store double %45, double* %3, align 8, !dbg !1209
  br label %229, !dbg !1209

; <label>:46:                                     ; preds = %21
  %47 = load double, double* %5, align 8, !dbg !1210
  %48 = fcmp ole double %47, 5.000000e+00, !dbg !1212
  %49 = call i1 @fCmpInstHandler(double %47, double 5.000000e+00, i1 %48, i32 5, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @11, i32 0, i32 0), i64 94380177229568, i32 314, i32 18), !dbg !1213
  br i1 %49, label %50, label %57, !dbg !1213

; <label>:50:                                     ; preds = %46
  %51 = load double, double* %5, align 8, !dbg !1214
  %52 = load double, double* %5, align 8, !dbg !1215
  %53 = fmul double %51, %52, !dbg !1216
  call void @fMulHandler(double %51, double %52, double %53, i64 94380177230648, i64 94380177230968, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @11, i32 0, i32 0), i64 94380177231376, i32 315, i32 40), !dbg !1217
  %54 = fadd double 3.600000e+01, %53, !dbg !1217
  call void @fAddHandler(double 3.600000e+01, double %53, double %54, i64 0, i64 94380177231376, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @11, i32 0, i32 0), i64 94380177231888, i32 315, i32 36), !dbg !1218
  %55 = call double @sqrt(double %54) #6, !dbg !1218
  call void @callOneArgHandler(i32 14, double %54, double %55, i64 94380177231888, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @11, i32 0, i32 0), i64 94380177232336, i32 315, i32 28), !dbg !1219
  %56 = fsub double 1.000000e+01, %55, !dbg !1219
  call void @fSubHandler(double 1.000000e+01, double %55, double %56, i64 0, i64 94380177232336, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @11, i32 0, i32 0), i64 94380177232912, i32 315, i32 26), !dbg !1220
  store double %56, double* %3, align 8, !dbg !1220
  br label %229, !dbg !1220

; <label>:57:                                     ; preds = %46
  %58 = load i32, i32* %4, align 4, !dbg !1221
  %59 = sub nsw i32 %58, 1, !dbg !1222
  %60 = load double, double* %5, align 8, !dbg !1223
  %61 = call double @asymptotic(i32 %59, double %60), !dbg !1224
  store double %61, double* %3, align 8, !dbg !1225
  br label %229, !dbg !1225

; <label>:62:                                     ; preds = %21
  %63 = load double, double* %5, align 8, !dbg !1226
  %64 = fcmp ole double %63, 6.250000e+00, !dbg !1228
  %65 = call i1 @fCmpInstHandler(double %63, double 6.250000e+00, i1 %64, i32 5, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @11, i32 0, i32 0), i64 94380177239424, i32 321, i32 18), !dbg !1229
  br i1 %65, label %66, label %83, !dbg !1229

; <label>:66:                                     ; preds = %62
  %67 = load double, double* %5, align 8, !dbg !1230
  %68 = fsub double %67, 8.000000e+00, !dbg !1232
  call void @fSubHandler(double %67, double 8.000000e+00, double %68, i64 94380177240504, i64 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @11, i32 0, i32 0), i64 94380177240880, i32 323, i32 23), !dbg !1233
  store double %68, double* %9, align 8, !dbg !1233
  %69 = load double, double* %5, align 8, !dbg !1234
  %70 = fmul double 1.600000e+01, %69, !dbg !1235
  call void @fMulHandler(double 1.600000e+01, double %69, double %70, i64 0, i64 94380177241656, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @11, i32 0, i32 0), i64 94380177242096, i32 324, i32 29), !dbg !1236
  %71 = fsub double -1.280000e+02, %70, !dbg !1236
  call void @fSubHandler(double -1.280000e+02, double %70, double %71, i64 0, i64 94380177242096, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @11, i32 0, i32 0), i64 94380177242576, i32 324, i32 25), !dbg !1237
  %72 = load double, double* %5, align 8, !dbg !1237
  %73 = fmul double 2.000000e+00, %72, !dbg !1238
  call void @fMulHandler(double 2.000000e+00, double %72, double %73, i64 0, i64 94380177242936, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @11, i32 0, i32 0), i64 94380177243376, i32 324, i32 36), !dbg !1239
  %74 = load double, double* %5, align 8, !dbg !1239
  %75 = fmul double %73, %74, !dbg !1240
  call void @fMulHandler(double %73, double %74, double %75, i64 94380177243376, i64 94380177243736, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @11, i32 0, i32 0), i64 94380177244144, i32 324, i32 39), !dbg !1241
  %76 = fsub double %71, %75, !dbg !1241
  call void @fSubHandler(double %71, double %75, double %76, i64 94380177242576, i64 94380177244144, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @11, i32 0, i32 0), i64 94380177244560, i32 324, i32 33), !dbg !1242
  store double %76, double* %8, align 8, !dbg !1242
  %77 = load double, double* %5, align 8, !dbg !1243
  %78 = load double, double* %5, align 8, !dbg !1244
  %79 = fmul double %77, %78, !dbg !1245
  call void @fMulHandler(double %77, double %78, double %79, i64 94380177245368, i64 94380177245752, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @11, i32 0, i32 0), i64 94380177246160, i32 325, i32 22), !dbg !1246
  %80 = load double, double* %5, align 8, !dbg !1246
  %81 = fsub double 8.000000e+00, %80, !dbg !1247
  call void @fSubHandler(double 8.000000e+00, double %80, double %81, i64 0, i64 94380177246552, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @11, i32 0, i32 0), i64 94380177246992, i32 325, i32 29), !dbg !1248
  %82 = fmul double %79, %81, !dbg !1248
  call void @fMulHandler(double %79, double %81, double %82, i64 94380177246160, i64 94380177246992, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @11, i32 0, i32 0), i64 94380177247376, i32 325, i32 25), !dbg !1249
  store double %82, double* %7, align 8, !dbg !1249
  br label %88, !dbg !1250

; <label>:83:                                     ; preds = %62
  %84 = load i32, i32* %4, align 4, !dbg !1251
  %85 = sub nsw i32 %84, 1, !dbg !1252
  %86 = load double, double* %5, align 8, !dbg !1253
  %87 = call double @asymptotic(i32 %85, double %86), !dbg !1254
  store double %87, double* %3, align 8, !dbg !1255
  br label %229, !dbg !1255

; <label>:88:                                     ; preds = %66
  br label %200, !dbg !1256

; <label>:89:                                     ; preds = %21
  %90 = load i32, i32* %4, align 4, !dbg !1257
  %91 = icmp slt i32 %90, 70, !dbg !1259
  %92 = sext i32 %90 to i64, !dbg !1260
  %93 = call i1 @iCmpInstHandler(i64 %92, i64 70, i1 %91, i32 40, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @11, i32 0, i32 0), i64 94380177253232, i32 332, i32 21), !dbg !1260
  br i1 %93, label %94, label %195, !dbg !1260

; <label>:94:                                     ; preds = %89
  %95 = load i32, i32* %4, align 4, !dbg !1261
  %96 = sitofp i32 %95 to double, !dbg !1261
  %97 = fmul double 1.700000e+00, %96, !dbg !1264
  call void @fMulHandler(double 1.700000e+00, double %96, double %97, i64 0, i64 94380177254664, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @11, i32 0, i32 0), i64 94380177256368, i32 334, i32 22), !dbg !1265
  %98 = load double, double* %5, align 8, !dbg !1265
  %99 = call double @sqrt(double %98) #6, !dbg !1266
  call void @callOneArgHandler(i32 14, double %98, double %99, i64 94380177256728, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @11, i32 0, i32 0), i64 94380177257200, i32 334, i32 33), !dbg !1267
  %100 = fmul double 2.000000e+00, %99, !dbg !1267
  call void @fMulHandler(double 2.000000e+00, double %99, double %100, i64 0, i64 94380177257200, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @11, i32 0, i32 0), i64 94380177257712, i32 334, i32 32), !dbg !1268
  %101 = fcmp ogt double %97, %100, !dbg !1268
  %102 = call i1 @fCmpInstHandler(double %97, double %100, i1 %101, i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @11, i32 0, i32 0), i64 94380177258096, i32 334, i32 29), !dbg !1269
  br i1 %102, label %103, label %188, !dbg !1269

; <label>:103:                                    ; preds = %94
  call void @llvm.dbg.declare(metadata double* %10, metadata !1270, metadata !68), !dbg !1272
  %104 = load i32, i32* %4, align 4, !dbg !1273
  %105 = load i32, i32* %4, align 4, !dbg !1274
  %106 = mul nsw i32 %104, %105, !dbg !1275
  %107 = sitofp i32 %106 to double, !dbg !1276
  store double %107, double* %10, align 8, !dbg !1272
  call void @llvm.dbg.declare(metadata double* %11, metadata !1277, metadata !68), !dbg !1278
  %108 = load double, double* %10, align 8, !dbg !1279
  %109 = fsub double %108, 1.000000e+00, !dbg !1280
  call void @fSubHandler(double %108, double 1.000000e+00, double %109, i64 94380177264600, i64 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @11, i32 0, i32 0), i64 94380177265008, i32 338, i32 45), !dbg !1281
  %110 = load double, double* %10, align 8, !dbg !1281
  %111 = fsub double %110, 1.000000e+00, !dbg !1282
  call void @fSubHandler(double %110, double 1.000000e+00, double %111, i64 94380177265368, i64 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @11, i32 0, i32 0), i64 94380177265808, i32 338, i32 54), !dbg !1283
  %112 = fmul double %109, %111, !dbg !1283
  call void @fMulHandler(double %109, double %111, double %112, i64 94380177265008, i64 94380177265808, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @11, i32 0, i32 0), i64 94380177266192, i32 338, i32 49), !dbg !1278
  store double %112, double* %11, align 8, !dbg !1278
  call void @llvm.dbg.declare(metadata double* %12, metadata !1284, metadata !68), !dbg !1285
  %113 = load double, double* %5, align 8, !dbg !1286
  %114 = load double, double* %5, align 8, !dbg !1287
  %115 = fmul double %113, %114, !dbg !1288
  call void @fMulHandler(double %113, double %114, double %115, i64 94380177269384, i64 94380177269736, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @11, i32 0, i32 0), i64 94380177270144, i32 339, i32 33), !dbg !1285
  store double %115, double* %12, align 8, !dbg !1285
  call void @llvm.dbg.declare(metadata double* %13, metadata !1289, metadata !68), !dbg !1290
  %116 = load double, double* %12, align 8, !dbg !1291
  %117 = load double, double* %12, align 8, !dbg !1292
  %118 = fmul double %116, %117, !dbg !1293
  call void @fMulHandler(double %116, double %117, double %118, i64 94380177273336, i64 94380177273688, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @11, i32 0, i32 0), i64 94380177274096, i32 340, i32 33), !dbg !1290
  store double %118, double* %13, align 8, !dbg !1290
  %119 = load double, double* %10, align 8, !dbg !1294
  %120 = load double, double* %12, align 8, !dbg !1295
  %121 = fmul double 5.000000e-01, %120, !dbg !1296
  call void @fMulHandler(double 5.000000e-01, double %120, double %121, i64 0, i64 94380177276552, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @11, i32 0, i32 0), i64 94380177276992, i32 341, i32 36), !dbg !1297
  %122 = load double, double* %10, align 8, !dbg !1297
  %123 = fsub double %122, 1.000000e+00, !dbg !1298
  call void @fSubHandler(double %122, double 1.000000e+00, double %123, i64 94380177277352, i64 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @11, i32 0, i32 0), i64 94380177277792, i32 341, i32 44), !dbg !1299
  %124 = fdiv double %121, %123, !dbg !1299
  call void @fDivHandler(double %121, double %123, double %124, i64 94380177276992, i64 94380177277792, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @11, i32 0, i32 0), i64 94380177278176, i32 341, i32 39), !dbg !1300
  %125 = fadd double %119, %124, !dbg !1300
  call void @fAddHandler(double %119, double %124, double %125, i64 94380177276168, i64 94380177278176, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @11, i32 0, i32 0), i64 94380177278592, i32 341, i32 31), !dbg !1301
  store double %125, double* %6, align 8, !dbg !1301
  %126 = load double, double* %10, align 8, !dbg !1302
  %127 = fmul double 5.000000e+00, %126, !dbg !1303
  call void @fMulHandler(double 5.000000e+00, double %126, double %127, i64 0, i64 94380177279400, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @11, i32 0, i32 0), i64 94380177279840, i32 342, i32 31), !dbg !1304
  %128 = fadd double %127, 7.000000e+00, !dbg !1304
  call void @fAddHandler(double %127, double 7.000000e+00, double %128, i64 94380177279840, i64 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @11, i32 0, i32 0), i64 94380177280256, i32 342, i32 35), !dbg !1305
  %129 = load double, double* %13, align 8, !dbg !1305
  %130 = fmul double %128, %129, !dbg !1306
  call void @fMulHandler(double %128, double %129, double %130, i64 94380177280256, i64 94380177280616, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @11, i32 0, i32 0), i64 94380177281024, i32 342, i32 39), !dbg !1307
  %131 = load double, double* %11, align 8, !dbg !1307
  %132 = fmul double 3.200000e+01, %131, !dbg !1308
  call void @fMulHandler(double 3.200000e+01, double %131, double %132, i64 0, i64 94380177281416, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @11, i32 0, i32 0), i64 94380177281856, i32 342, i32 46), !dbg !1309
  %133 = load double, double* %10, align 8, !dbg !1309
  %134 = fsub double %133, 1.000000e+00, !dbg !1310
  call void @fSubHandler(double %133, double 1.000000e+00, double %134, i64 94380177282216, i64 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @11, i32 0, i32 0), i64 94380177282656, i32 342, i32 55), !dbg !1311
  %135 = fmul double %132, %134, !dbg !1311
  call void @fMulHandler(double %132, double %134, double %135, i64 94380177281856, i64 94380177282656, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @11, i32 0, i32 0), i64 94380177283040, i32 342, i32 50), !dbg !1312
  %136 = load double, double* %10, align 8, !dbg !1312
  %137 = fsub double %136, 4.000000e+00, !dbg !1313
  call void @fSubHandler(double %136, double 4.000000e+00, double %137, i64 94380177283432, i64 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @11, i32 0, i32 0), i64 94380177285936, i32 342, i32 64), !dbg !1314
  %138 = fmul double %135, %137, !dbg !1314
  call void @fMulHandler(double %135, double %137, double %138, i64 94380177283040, i64 94380177285936, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @11, i32 0, i32 0), i64 94380177286320, i32 342, i32 59), !dbg !1315
  %139 = fdiv double %130, %138, !dbg !1315
  call void @fDivHandler(double %130, double %138, double %139, i64 94380177281024, i64 94380177286320, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @11, i32 0, i32 0), i64 94380177286736, i32 342, i32 42), !dbg !1316
  %140 = load double, double* %6, align 8, !dbg !1316
  %141 = fadd double %140, %139, !dbg !1316
  call void @fAddHandler(double %140, double %139, double %141, i64 94380177287128, i64 94380177286736, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @11, i32 0, i32 0), i64 94380177287536, i32 342, i32 26), !dbg !1316
  store double %141, double* %6, align 8, !dbg !1316
  %142 = load double, double* %10, align 8, !dbg !1317
  %143 = fmul double 9.000000e+00, %142, !dbg !1318
  call void @fMulHandler(double 9.000000e+00, double %142, double %143, i64 0, i64 94380177289320, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @11, i32 0, i32 0), i64 94380177289760, i32 343, i32 31), !dbg !1319
  %144 = load double, double* %10, align 8, !dbg !1319
  %145 = fmul double %143, %144, !dbg !1320
  call void @fMulHandler(double %143, double %144, double %145, i64 94380177289760, i64 94380177290120, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @11, i32 0, i32 0), i64 94380177290528, i32 343, i32 34), !dbg !1321
  %146 = load double, double* %10, align 8, !dbg !1321
  %147 = fmul double 5.800000e+01, %146, !dbg !1322
  call void @fMulHandler(double 5.800000e+01, double %146, double %147, i64 0, i64 94380177290920, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @11, i32 0, i32 0), i64 94380177291360, i32 343, i32 42), !dbg !1323
  %148 = fadd double %145, %147, !dbg !1323
  call void @fAddHandler(double %145, double %147, double %148, i64 94380177290528, i64 94380177291360, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @11, i32 0, i32 0), i64 94380177291744, i32 343, i32 38), !dbg !1324
  %149 = fadd double %148, 2.900000e+01, !dbg !1324
  call void @fAddHandler(double %148, double 2.900000e+01, double %149, i64 94380177291744, i64 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @11, i32 0, i32 0), i64 94380177292192, i32 343, i32 46), !dbg !1325
  %150 = load double, double* %13, align 8, !dbg !1325
  %151 = fmul double %149, %150, !dbg !1326
  call void @fMulHandler(double %149, double %150, double %151, i64 94380177292192, i64 94380177292552, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @11, i32 0, i32 0), i64 94380177292960, i32 343, i32 51), !dbg !1327
  %152 = load double, double* %12, align 8, !dbg !1327
  %153 = fmul double %151, %152, !dbg !1328
  call void @fMulHandler(double %151, double %152, double %153, i64 94380177292960, i64 94380177293352, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @11, i32 0, i32 0), i64 94380177293760, i32 343, i32 54), !dbg !1329
  %154 = load double, double* %11, align 8, !dbg !1329
  %155 = fmul double 6.400000e+01, %154, !dbg !1330
  call void @fMulHandler(double 6.400000e+01, double %154, double %155, i64 0, i64 94380177294152, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @11, i32 0, i32 0), i64 94380177294592, i32 344, i32 26), !dbg !1331
  %156 = load double, double* %11, align 8, !dbg !1331
  %157 = fmul double %155, %156, !dbg !1332
  call void @fMulHandler(double %155, double %156, double %157, i64 94380177294592, i64 94380177294952, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @11, i32 0, i32 0), i64 94380177295360, i32 344, i32 30), !dbg !1333
  %158 = load double, double* %10, align 8, !dbg !1333
  %159 = fsub double %158, 1.000000e+00, !dbg !1334
  call void @fSubHandler(double %158, double 1.000000e+00, double %159, i64 94380177295752, i64 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @11, i32 0, i32 0), i64 94380177296192, i32 344, i32 39), !dbg !1335
  %160 = fmul double %157, %159, !dbg !1335
  call void @fMulHandler(double %157, double %159, double %160, i64 94380177295360, i64 94380177296192, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @11, i32 0, i32 0), i64 94380177296576, i32 344, i32 34), !dbg !1336
  %161 = load double, double* %10, align 8, !dbg !1336
  %162 = fsub double %161, 4.000000e+00, !dbg !1337
  call void @fSubHandler(double %161, double 4.000000e+00, double %162, i64 94380177296968, i64 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @11, i32 0, i32 0), i64 94380177297408, i32 344, i32 48), !dbg !1338
  %163 = fmul double %160, %162, !dbg !1338
  call void @fMulHandler(double %160, double %162, double %163, i64 94380177296576, i64 94380177297408, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @11, i32 0, i32 0), i64 94380177297792, i32 344, i32 43), !dbg !1339
  %164 = load double, double* %10, align 8, !dbg !1339
  %165 = fsub double %164, 9.000000e+00, !dbg !1340
  call void @fSubHandler(double %164, double 9.000000e+00, double %165, i64 94380177298184, i64 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @11, i32 0, i32 0), i64 94380177298624, i32 344, i32 57), !dbg !1341
  %166 = fmul double %163, %165, !dbg !1341
  call void @fMulHandler(double %163, double %165, double %166, i64 94380177297792, i64 94380177298624, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @11, i32 0, i32 0), i64 94380177299008, i32 344, i32 52), !dbg !1342
  %167 = fdiv double %153, %166, !dbg !1342
  call void @fDivHandler(double %153, double %166, double %167, i64 94380177293760, i64 94380177299008, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @11, i32 0, i32 0), i64 94380177299424, i32 343, i32 57), !dbg !1343
  %168 = load double, double* %6, align 8, !dbg !1343
  %169 = fadd double %168, %167, !dbg !1343
  call void @fAddHandler(double %168, double %167, double %169, i64 94380177299816, i64 94380177299424, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @11, i32 0, i32 0), i64 94380177300224, i32 343, i32 26), !dbg !1343
  store double %169, double* %6, align 8, !dbg !1343
  %170 = load i32, i32* %4, align 4, !dbg !1344
  %171 = sitofp i32 %170 to double, !dbg !1344
  %172 = fmul double 1.400000e+00, %171, !dbg !1346
  call void @fMulHandler(double 1.400000e+00, double %171, double %172, i64 0, i64 94380177302392, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @11, i32 0, i32 0), i64 94380177304096, i32 345, i32 26), !dbg !1347
  %173 = load double, double* %5, align 8, !dbg !1347
  %174 = call double @sqrt(double %173) #6, !dbg !1348
  call void @callOneArgHandler(i32 14, double %173, double %174, i64 94380177304456, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @11, i32 0, i32 0), i64 94380177304928, i32 345, i32 37), !dbg !1349
  %175 = fmul double 2.000000e+00, %174, !dbg !1349
  call void @fMulHandler(double 2.000000e+00, double %174, double %175, i64 0, i64 94380177304928, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @11, i32 0, i32 0), i64 94380177305440, i32 345, i32 36), !dbg !1350
  %176 = fcmp olt double %172, %175, !dbg !1350
  %177 = call i1 @fCmpInstHandler(double %172, double %175, i1 %176, i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @11, i32 0, i32 0), i64 94380177305824, i32 345, i32 33), !dbg !1351
  br i1 %177, label %178, label %187, !dbg !1351

; <label>:178:                                    ; preds = %103
  %179 = load i32, i32* %4, align 4, !dbg !1352
  %180 = sub nsw i32 %179, 1, !dbg !1354
  %181 = load double, double* %5, align 8, !dbg !1355
  %182 = call double @asymptotic(i32 %180, double %181), !dbg !1356
  %183 = load double, double* %6, align 8, !dbg !1357
  %184 = fadd double %183, %182, !dbg !1357
  call void @fAddHandler(double %183, double %182, double %184, i64 94380177308616, i64 94380177308168, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @11, i32 0, i32 0), i64 94380177308992, i32 347, i32 30), !dbg !1357
  store double %184, double* %6, align 8, !dbg !1357
  %185 = load double, double* %6, align 8, !dbg !1358
  %186 = fmul double %185, 5.000000e-01, !dbg !1358
  call void @fMulHandler(double %185, double 5.000000e-01, double %186, i64 94380177310776, i64 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @11, i32 0, i32 0), i64 94380177311216, i32 348, i32 30), !dbg !1358
  store double %186, double* %6, align 8, !dbg !1358
  br label %187, !dbg !1359

; <label>:187:                                    ; preds = %178, %103
  br label %193, !dbg !1360

; <label>:188:                                    ; preds = %94
  %189 = load i32, i32* %4, align 4, !dbg !1361
  %190 = sub nsw i32 %189, 1, !dbg !1362
  %191 = load double, double* %5, align 8, !dbg !1363
  %192 = call double @asymptotic(i32 %190, double %191), !dbg !1364
  store double %192, double* %6, align 8, !dbg !1365
  br label %193

; <label>:193:                                    ; preds = %188, %187
  %194 = load double, double* %6, align 8, !dbg !1366
  store double %194, double* %3, align 8, !dbg !1367
  br label %229, !dbg !1367

; <label>:195:                                    ; preds = %89
  %196 = load i32, i32* %4, align 4, !dbg !1368
  %197 = load i32, i32* %4, align 4, !dbg !1369
  %198 = mul nsw i32 %196, %197, !dbg !1370
  %199 = sitofp i32 %198 to double, !dbg !1368
  store double %199, double* %3, align 8, !dbg !1371
  br label %229, !dbg !1371

; <label>:200:                                    ; preds = %88
  %201 = load double, double* %9, align 8, !dbg !1372
  %202 = load double, double* %8, align 8, !dbg !1373
  %203 = load double, double* %7, align 8, !dbg !1374
  %204 = call double @solve_cubic(double %201, double %202, double %203), !dbg !1375
  store double %204, double* %6, align 8, !dbg !1376
  %205 = load double, double* %6, align 8, !dbg !1377
  %206 = fcmp olt double %205, 0.000000e+00, !dbg !1379
  %207 = call i1 @fCmpInstHandler(double %205, double 0.000000e+00, i1 %206, i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @11, i32 0, i32 0), i64 94380177325664, i32 363, i32 15), !dbg !1380
  br i1 %207, label %208, label %221, !dbg !1380

; <label>:208:                                    ; preds = %200
  %209 = load double, double* %5, align 8, !dbg !1381
  %210 = call double @sqrt(double %209) #6, !dbg !1383
  call void @callOneArgHandler(i32 14, double %209, double %210, i64 94380177326776, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @11, i32 0, i32 0), i64 94380177327184, i32 363, i32 22), !dbg !1384
  %211 = load i32, i32* %4, align 4, !dbg !1384
  %212 = sitofp i32 %211 to double, !dbg !1384
  %213 = fmul double 1.000000e-01, %212, !dbg !1385
  call void @fMulHandler(double 1.000000e-01, double %212, double %213, i64 0, i64 94380177328024, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @11, i32 0, i32 0), i64 94380177329728, i32 363, i32 36), !dbg !1386
  %214 = fcmp ogt double %210, %213, !dbg !1386
  %215 = call i1 @fCmpInstHandler(double %210, double %213, i1 %214, i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @11, i32 0, i32 0), i64 94380177330112, i32 363, i32 31), !dbg !1387
  br i1 %215, label %216, label %221, !dbg !1387

; <label>:216:                                    ; preds = %208
  %217 = load i32, i32* %4, align 4, !dbg !1388
  %218 = sub nsw i32 %217, 1, !dbg !1389
  %219 = load double, double* %5, align 8, !dbg !1390
  %220 = call double @asymptotic(i32 %218, double %219), !dbg !1391
  store double %220, double* %3, align 8, !dbg !1392
  br label %229, !dbg !1392

; <label>:221:                                    ; preds = %208, %200
  %222 = load i32, i32* %4, align 4, !dbg !1393
  %223 = load i32, i32* %4, align 4, !dbg !1394
  %224 = mul nsw i32 %222, %223, !dbg !1395
  %225 = sitofp i32 %224 to double, !dbg !1393
  %226 = load double, double* %6, align 8, !dbg !1396
  %227 = call double @fabs(double %226) #1, !dbg !1397
  %228 = fadd double %225, %227, !dbg !1398
  call void @fAddHandler(double %225, double %227, double %228, i64 94380177335912, i64 94380177338032, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @11, i32 0, i32 0), i64 94380177338512, i32 366, i32 27), !dbg !1399
  store double %228, double* %3, align 8, !dbg !1399
  br label %229, !dbg !1399

; <label>:229:                                    ; preds = %221, %216, %195, %193, %83, %57, %50, %41, %27, %19
  %230 = load double, double* %3, align 8, !dbg !1400
  ret double %230, !dbg !1400
}

; Function Attrs: nounwind uwtable
define internal double @seer(i32, double, double, i32) #0 !dbg !1401 {
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1402, metadata !68), !dbg !1403
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !1404, metadata !68), !dbg !1405
  store double %2, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !1406, metadata !68), !dbg !1407
  store i32 %3, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1408, metadata !68), !dbg !1409
  call void @llvm.dbg.declare(metadata double* %9, metadata !1410, metadata !68), !dbg !1411
  call void @llvm.dbg.declare(metadata double* %10, metadata !1412, metadata !68), !dbg !1413
  call void @llvm.dbg.declare(metadata i32* %11, metadata !1414, metadata !68), !dbg !1415
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1416, metadata !68), !dbg !1417
  store double 0.000000e+00, double* %9, align 8, !dbg !1418
  %13 = load i32, i32* %5, align 4, !dbg !1419
  %14 = sdiv i32 %13, 2, !dbg !1420
  %15 = sub nsw i32 %14, 1, !dbg !1421
  store i32 %15, i32* %12, align 4, !dbg !1422
  store i32 0, i32* %11, align 4, !dbg !1423
  br label %16, !dbg !1425

; <label>:16:                                     ; preds = %40, %4
  %17 = load i32, i32* %11, align 4, !dbg !1426
  %18 = load i32, i32* %12, align 4, !dbg !1429
  %19 = icmp slt i32 %17, %18, !dbg !1430
  %20 = sext i32 %17 to i64, !dbg !1431
  %21 = sext i32 %18 to i64, !dbg !1431
  %22 = call i1 @iCmpInstHandler(i64 %20, i64 %21, i1 %19, i32 40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @13, i32 0, i32 0), i64 94380177355504, i32 102, i32 16), !dbg !1431
  br i1 %22, label %23, label %43, !dbg !1431

; <label>:23:                                     ; preds = %16
  %24 = load double, double* %6, align 8, !dbg !1432
  %25 = load double, double* %6, align 8, !dbg !1433
  %26 = fmul double %24, %25, !dbg !1434
  call void @fMulHandler(double %24, double %25, double %26, i64 94380177356472, i64 94380177356792, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @13, i32 0, i32 0), i64 94380177357200, i32 103, i32 16), !dbg !1435
  %27 = load double, double* %7, align 8, !dbg !1435
  %28 = load i32, i32* %11, align 4, !dbg !1436
  %29 = add nsw i32 %28, 1, !dbg !1437
  %30 = sitofp i32 %29 to double, !dbg !1438
  %31 = fmul double 4.000000e+00, %30, !dbg !1439
  call void @fMulHandler(double 4.000000e+00, double %30, double %31, i64 0, i64 94380177358776, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @13, i32 0, i32 0), i64 94380177359216, i32 103, i32 29), !dbg !1440
  %32 = load i32, i32* %11, align 4, !dbg !1440
  %33 = add nsw i32 %32, 1, !dbg !1441
  %34 = sitofp i32 %33 to double, !dbg !1442
  %35 = fmul double %31, %34, !dbg !1443
  call void @fMulHandler(double %31, double %34, double %35, i64 94380177359216, i64 94380177360376, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @13, i32 0, i32 0), i64 94380177360784, i32 103, i32 38), !dbg !1444
  %36 = fsub double %27, %35, !dbg !1444
  call void @fSubHandler(double %27, double %35, double %36, i64 94380177357592, i64 94380177360784, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @13, i32 0, i32 0), i64 94380177361200, i32 103, i32 24), !dbg !1445
  %37 = load double, double* %9, align 8, !dbg !1445
  %38 = fsub double %36, %37, !dbg !1446
  call void @fSubHandler(double %36, double %37, double %38, i64 94380177361200, i64 94380177361592, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @13, i32 0, i32 0), i64 94380177362000, i32 103, i32 48), !dbg !1447
  %39 = fdiv double %26, %38, !dbg !1447
  call void @fDivHandler(double %26, double %38, double %39, i64 94380177357200, i64 94380177362000, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @13, i32 0, i32 0), i64 94380177362416, i32 103, i32 19), !dbg !1448
  store double %39, double* %9, align 8, !dbg !1448
  br label %40, !dbg !1449

; <label>:40:                                     ; preds = %23
  %41 = load i32, i32* %11, align 4, !dbg !1450
  %42 = add nsw i32 %41, 1, !dbg !1450
  store i32 %42, i32* %11, align 4, !dbg !1450
  br label %16, !dbg !1452, !llvm.loop !1453

; <label>:43:                                     ; preds = %16
  %44 = load i32, i32* %5, align 4, !dbg !1455
  %45 = load i32, i32* %5, align 4, !dbg !1456
  %46 = mul nsw i32 %44, %45, !dbg !1457
  %47 = sitofp i32 %46 to double, !dbg !1455
  %48 = load double, double* %9, align 8, !dbg !1458
  %49 = fadd double %48, %47, !dbg !1458
  call void @fAddHandler(double %48, double %47, double %49, i64 94380177369320, i64 94380177367672, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @13, i32 0, i32 0), i64 94380177369728, i32 104, i32 8), !dbg !1458
  store double %49, double* %9, align 8, !dbg !1458
  store double 0.000000e+00, double* %10, align 8, !dbg !1459
  store i32 0, i32* %11, align 4, !dbg !1460
  br label %50, !dbg !1462

; <label>:50:                                     ; preds = %83, %43
  %51 = load i32, i32* %11, align 4, !dbg !1463
  %52 = load i32, i32* %8, align 4, !dbg !1466
  %53 = icmp slt i32 %51, %52, !dbg !1467
  %54 = sext i32 %51 to i64, !dbg !1468
  %55 = sext i32 %52 to i64, !dbg !1468
  %56 = call i1 @iCmpInstHandler(i64 %54, i64 %55, i1 %53, i32 40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @13, i32 0, i32 0), i64 94380177373600, i32 107, i32 16), !dbg !1468
  br i1 %56, label %57, label %86, !dbg !1468

; <label>:57:                                     ; preds = %50
  %58 = load double, double* %6, align 8, !dbg !1469
  %59 = load double, double* %6, align 8, !dbg !1470
  %60 = fmul double %58, %59, !dbg !1471
  call void @fMulHandler(double %58, double %59, double %60, i64 94380177374712, i64 94380177375032, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @13, i32 0, i32 0), i64 94380177375440, i32 108, i32 17), !dbg !1472
  %61 = load double, double* %7, align 8, !dbg !1472
  %62 = load i32, i32* %5, align 4, !dbg !1473
  %63 = sitofp i32 %62 to double, !dbg !1473
  %64 = load i32, i32* %8, align 4, !dbg !1474
  %65 = load i32, i32* %11, align 4, !dbg !1475
  %66 = sub nsw i32 %64, %65, !dbg !1476
  %67 = sitofp i32 %66 to double, !dbg !1477
  %68 = fmul double 2.000000e+00, %67, !dbg !1478
  call void @fMulHandler(double 2.000000e+00, double %67, double %68, i64 0, i64 94380177379432, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @13, i32 0, i32 0), i64 94380177379872, i32 109, i32 27), !dbg !1479
  %69 = fadd double %63, %68, !dbg !1479
  call void @fAddHandler(double %63, double %68, double %69, i64 94380177376600, i64 94380177379872, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @13, i32 0, i32 0), i64 94380177380256, i32 109, i32 22), !dbg !1480
  %70 = load i32, i32* %5, align 4, !dbg !1480
  %71 = sitofp i32 %70 to double, !dbg !1480
  %72 = load i32, i32* %8, align 4, !dbg !1481
  %73 = load i32, i32* %11, align 4, !dbg !1482
  %74 = sub nsw i32 %72, %73, !dbg !1483
  %75 = sitofp i32 %74 to double, !dbg !1484
  %76 = fmul double 2.000000e+00, %75, !dbg !1485
  call void @fMulHandler(double 2.000000e+00, double %75, double %76, i64 0, i64 94380177383864, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @13, i32 0, i32 0), i64 94380177384304, i32 109, i32 55), !dbg !1486
  %77 = fadd double %71, %76, !dbg !1486
  call void @fAddHandler(double %71, double %76, double %77, i64 94380177381032, i64 94380177384304, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @13, i32 0, i32 0), i64 94380177384688, i32 109, i32 50), !dbg !1487
  %78 = fmul double %69, %77, !dbg !1487
  call void @fMulHandler(double %69, double %77, double %78, i64 94380177380256, i64 94380177384688, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @13, i32 0, i32 0), i64 94380177385104, i32 109, i32 42), !dbg !1488
  %79 = fsub double %61, %78, !dbg !1488
  call void @fSubHandler(double %61, double %78, double %79, i64 94380177375832, i64 94380177385104, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @13, i32 0, i32 0), i64 94380177385520, i32 109, i32 13), !dbg !1489
  %80 = load double, double* %10, align 8, !dbg !1489
  %81 = fsub double %79, %80, !dbg !1490
  call void @fSubHandler(double %79, double %80, double %81, i64 94380177385520, i64 94380177385912, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @13, i32 0, i32 0), i64 94380177386320, i32 109, i32 71), !dbg !1491
  %82 = fdiv double %60, %81, !dbg !1491
  call void @fDivHandler(double %60, double %81, double %82, i64 94380177375440, i64 94380177386320, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @13, i32 0, i32 0), i64 94380177386736, i32 108, i32 20), !dbg !1492
  store double %82, double* %10, align 8, !dbg !1492
  br label %83, !dbg !1493

; <label>:83:                                     ; preds = %57
  %84 = load i32, i32* %11, align 4, !dbg !1494
  %85 = add nsw i32 %84, 1, !dbg !1494
  store i32 %85, i32* %11, align 4, !dbg !1494
  br label %50, !dbg !1496, !llvm.loop !1497

; <label>:86:                                     ; preds = %50
  %87 = load double, double* %9, align 8, !dbg !1499
  %88 = load double, double* %10, align 8, !dbg !1500
  %89 = fadd double %87, %88, !dbg !1501
  call void @fAddHandler(double %87, double %88, double %89, i64 94380177390872, i64 94380177391192, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @13, i32 0, i32 0), i64 94380177391600, i32 111, i32 16), !dbg !1502
  %90 = load double, double* %7, align 8, !dbg !1502
  %91 = fsub double %89, %90, !dbg !1503
  call void @fSubHandler(double %89, double %90, double %91, i64 94380177391600, i64 94380177391992, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @13, i32 0, i32 0), i64 94380177392400, i32 111, i32 24), !dbg !1504
  ret double %91, !dbg !1504
}

; Function Attrs: nounwind uwtable
define internal double @seor(i32, double, double, i32) #0 !dbg !1505 {
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1506, metadata !68), !dbg !1507
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !1508, metadata !68), !dbg !1509
  store double %2, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !1510, metadata !68), !dbg !1511
  store i32 %3, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1512, metadata !68), !dbg !1513
  call void @llvm.dbg.declare(metadata double* %9, metadata !1514, metadata !68), !dbg !1515
  call void @llvm.dbg.declare(metadata double* %10, metadata !1516, metadata !68), !dbg !1517
  call void @llvm.dbg.declare(metadata i32* %11, metadata !1518, metadata !68), !dbg !1519
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1520, metadata !68), !dbg !1521
  %13 = load double, double* %6, align 8, !dbg !1522
  %14 = fmul double -1.000000e+00, %13, !dbg !1523
  call void @fMulHandler(double -1.000000e+00, double %13, double %14, i64 0, i64 94380176840776, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @15, i32 0, i32 0), i64 94380177404576, i32 121, i32 14), !dbg !1524
  store double %14, double* %9, align 8, !dbg !1524
  %15 = load i32, i32* %5, align 4, !dbg !1525
  %16 = sitofp i32 %15 to float, !dbg !1526
  %17 = fpext float %16 to double, !dbg !1526
  %18 = fdiv double %17, 2.000000e+00, !dbg !1527
  call void @fDivHandler(double %17, double 2.000000e+00, double %18, i64 94380177406120, i64 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @15, i32 0, i32 0), i64 94380177407824, i32 122, i32 26), !dbg !1528
  %19 = fsub double %18, 5.000000e-01, !dbg !1528
  call void @fSubHandler(double %18, double 5.000000e-01, double %19, i64 94380177407824, i64 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @15, i32 0, i32 0), i64 94380177408240, i32 122, i32 31), !dbg !1529
  %20 = fptosi double %19 to i32, !dbg !1529
  store i32 %20, i32* %12, align 4, !dbg !1530
  store i32 0, i32* %11, align 4, !dbg !1531
  br label %21, !dbg !1533

; <label>:21:                                     ; preds = %46, %4
  %22 = load i32, i32* %11, align 4, !dbg !1534
  %23 = load i32, i32* %12, align 4, !dbg !1537
  %24 = icmp slt i32 %22, %23, !dbg !1538
  %25 = sext i32 %22 to i64, !dbg !1539
  %26 = sext i32 %23 to i64, !dbg !1539
  %27 = call i1 @iCmpInstHandler(i64 %25, i64 %26, i1 %24, i32 40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @15, i32 0, i32 0), i64 94380177411072, i32 123, i32 16), !dbg !1539
  br i1 %27, label %28, label %49, !dbg !1539

; <label>:28:                                     ; preds = %21
  %29 = load double, double* %6, align 8, !dbg !1540
  %30 = load double, double* %6, align 8, !dbg !1541
  %31 = fmul double %29, %30, !dbg !1542
  call void @fMulHandler(double %29, double %30, double %31, i64 94380177412040, i64 94380177412360, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @15, i32 0, i32 0), i64 94380177412768, i32 124, i32 16), !dbg !1543
  %32 = load double, double* %7, align 8, !dbg !1543
  %33 = load i32, i32* %11, align 4, !dbg !1544
  %34 = sitofp i32 %33 to double, !dbg !1544
  %35 = fmul double 2.000000e+00, %34, !dbg !1545
  call void @fMulHandler(double 2.000000e+00, double %34, double %35, i64 0, i64 94380177413928, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @15, i32 0, i32 0), i64 94380177415632, i32 124, i32 30), !dbg !1546
  %36 = fadd double %35, 1.000000e+00, !dbg !1546
  call void @fAddHandler(double %35, double 1.000000e+00, double %36, i64 94380177415632, i64 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @15, i32 0, i32 0), i64 94380177416048, i32 124, i32 34), !dbg !1547
  %37 = load i32, i32* %11, align 4, !dbg !1547
  %38 = sitofp i32 %37 to double, !dbg !1547
  %39 = fmul double 2.000000e+00, %38, !dbg !1548
  call void @fMulHandler(double 2.000000e+00, double %38, double %39, i64 0, i64 94380177416792, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @15, i32 0, i32 0), i64 94380177418496, i32 124, i32 45), !dbg !1549
  %40 = fadd double %39, 1.000000e+00, !dbg !1549
  call void @fAddHandler(double %39, double 1.000000e+00, double %40, i64 94380177418496, i64 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @15, i32 0, i32 0), i64 94380177418912, i32 124, i32 49), !dbg !1550
  %41 = fmul double %36, %40, !dbg !1550
  call void @fMulHandler(double %36, double %40, double %41, i64 94380177416048, i64 94380177418912, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @15, i32 0, i32 0), i64 94380177419296, i32 124, i32 40), !dbg !1551
  %42 = fsub double %32, %41, !dbg !1551
  call void @fSubHandler(double %32, double %41, double %42, i64 94380177413160, i64 94380177419296, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @15, i32 0, i32 0), i64 94380177419712, i32 124, i32 24), !dbg !1552
  %43 = load double, double* %9, align 8, !dbg !1552
  %44 = fsub double %42, %43, !dbg !1553
  call void @fSubHandler(double %42, double %43, double %44, i64 94380177419712, i64 94380177420104, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @15, i32 0, i32 0), i64 94380177420512, i32 124, i32 56), !dbg !1554
  %45 = fdiv double %31, %44, !dbg !1554
  call void @fDivHandler(double %31, double %44, double %45, i64 94380177412768, i64 94380177420512, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @15, i32 0, i32 0), i64 94380177420928, i32 124, i32 19), !dbg !1555
  store double %45, double* %9, align 8, !dbg !1555
  br label %46, !dbg !1556

; <label>:46:                                     ; preds = %28
  %47 = load i32, i32* %11, align 4, !dbg !1557
  %48 = add nsw i32 %47, 1, !dbg !1557
  store i32 %48, i32* %11, align 4, !dbg !1557
  br label %21, !dbg !1559, !llvm.loop !1560

; <label>:49:                                     ; preds = %21
  %50 = load i32, i32* %5, align 4, !dbg !1562
  %51 = load i32, i32* %5, align 4, !dbg !1563
  %52 = mul nsw i32 %50, %51, !dbg !1564
  %53 = sitofp i32 %52 to double, !dbg !1562
  %54 = load double, double* %9, align 8, !dbg !1565
  %55 = fadd double %54, %53, !dbg !1565
  call void @fAddHandler(double %54, double %53, double %55, i64 94380177427832, i64 94380177426184, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @15, i32 0, i32 0), i64 94380177428240, i32 125, i32 8), !dbg !1565
  store double %55, double* %9, align 8, !dbg !1565
  store double 0.000000e+00, double* %10, align 8, !dbg !1566
  store i32 0, i32* %11, align 4, !dbg !1567
  br label %56, !dbg !1569

; <label>:56:                                     ; preds = %89, %49
  %57 = load i32, i32* %11, align 4, !dbg !1570
  %58 = load i32, i32* %8, align 4, !dbg !1573
  %59 = icmp slt i32 %57, %58, !dbg !1574
  %60 = sext i32 %57 to i64, !dbg !1575
  %61 = sext i32 %58 to i64, !dbg !1575
  %62 = call i1 @iCmpInstHandler(i64 %60, i64 %61, i1 %59, i32 40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @15, i32 0, i32 0), i64 94380177432112, i32 128, i32 16), !dbg !1575
  br i1 %62, label %63, label %92, !dbg !1575

; <label>:63:                                     ; preds = %56
  %64 = load double, double* %6, align 8, !dbg !1576
  %65 = load double, double* %6, align 8, !dbg !1577
  %66 = fmul double %64, %65, !dbg !1578
  call void @fMulHandler(double %64, double %65, double %66, i64 94380177433224, i64 94380177433544, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @15, i32 0, i32 0), i64 94380177433952, i32 129, i32 17), !dbg !1579
  %67 = load double, double* %7, align 8, !dbg !1579
  %68 = load i32, i32* %5, align 4, !dbg !1580
  %69 = sitofp i32 %68 to double, !dbg !1580
  %70 = load i32, i32* %8, align 4, !dbg !1581
  %71 = load i32, i32* %11, align 4, !dbg !1582
  %72 = sub nsw i32 %70, %71, !dbg !1583
  %73 = sitofp i32 %72 to double, !dbg !1584
  %74 = fmul double 2.000000e+00, %73, !dbg !1585
  call void @fMulHandler(double 2.000000e+00, double %73, double %74, i64 0, i64 94380177437944, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @15, i32 0, i32 0), i64 94380177438384, i32 130, i32 27), !dbg !1586
  %75 = fadd double %69, %74, !dbg !1586
  call void @fAddHandler(double %69, double %74, double %75, i64 94380177435112, i64 94380177438384, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @15, i32 0, i32 0), i64 94380177438768, i32 130, i32 22), !dbg !1587
  %76 = load i32, i32* %5, align 4, !dbg !1587
  %77 = sitofp i32 %76 to double, !dbg !1587
  %78 = load i32, i32* %8, align 4, !dbg !1588
  %79 = load i32, i32* %11, align 4, !dbg !1589
  %80 = sub nsw i32 %78, %79, !dbg !1590
  %81 = sitofp i32 %80 to double, !dbg !1591
  %82 = fmul double 2.000000e+00, %81, !dbg !1592
  call void @fMulHandler(double 2.000000e+00, double %81, double %82, i64 0, i64 94380177442376, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @15, i32 0, i32 0), i64 94380177442816, i32 130, i32 55), !dbg !1593
  %83 = fadd double %77, %82, !dbg !1593
  call void @fAddHandler(double %77, double %82, double %83, i64 94380177439544, i64 94380177442816, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @15, i32 0, i32 0), i64 94380177443200, i32 130, i32 50), !dbg !1594
  %84 = fmul double %75, %83, !dbg !1594
  call void @fMulHandler(double %75, double %83, double %84, i64 94380177438768, i64 94380177443200, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @15, i32 0, i32 0), i64 94380177443616, i32 130, i32 42), !dbg !1595
  %85 = fsub double %67, %84, !dbg !1595
  call void @fSubHandler(double %67, double %84, double %85, i64 94380177434344, i64 94380177443616, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @15, i32 0, i32 0), i64 94380177444032, i32 130, i32 13), !dbg !1596
  %86 = load double, double* %10, align 8, !dbg !1596
  %87 = fsub double %85, %86, !dbg !1597
  call void @fSubHandler(double %85, double %86, double %87, i64 94380177444032, i64 94380177444424, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @15, i32 0, i32 0), i64 94380177444832, i32 130, i32 71), !dbg !1598
  %88 = fdiv double %66, %87, !dbg !1598
  call void @fDivHandler(double %66, double %87, double %88, i64 94380177433952, i64 94380177444832, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @15, i32 0, i32 0), i64 94380177445248, i32 129, i32 20), !dbg !1599
  store double %88, double* %10, align 8, !dbg !1599
  br label %89, !dbg !1600

; <label>:89:                                     ; preds = %63
  %90 = load i32, i32* %11, align 4, !dbg !1601
  %91 = add nsw i32 %90, 1, !dbg !1601
  store i32 %91, i32* %11, align 4, !dbg !1601
  br label %56, !dbg !1603, !llvm.loop !1604

; <label>:92:                                     ; preds = %56
  %93 = load double, double* %9, align 8, !dbg !1606
  %94 = load double, double* %10, align 8, !dbg !1607
  %95 = fadd double %93, %94, !dbg !1608
  call void @fAddHandler(double %93, double %94, double %95, i64 94380177449384, i64 94380177449704, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @15, i32 0, i32 0), i64 94380177450112, i32 132, i32 16), !dbg !1609
  %96 = load double, double* %7, align 8, !dbg !1609
  %97 = fsub double %95, %96, !dbg !1610
  call void @fSubHandler(double %95, double %96, double %97, i64 94380177450112, i64 94380177450504, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @15, i32 0, i32 0), i64 94380177450912, i32 132, i32 24), !dbg !1611
  ret double %97, !dbg !1611
}

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_mathieu_a_array(i32, i32, double, %struct.gsl_sf_mathieu_workspace*, double*) #0 !dbg !1612 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca %struct.gsl_sf_mathieu_workspace*, align 8
  %11 = alloca double*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca double*, align 8
  %19 = alloca double*, align 8
  %20 = alloca double*, align 8
  %21 = alloca double*, align 8
  %22 = alloca double*, align 8
  %23 = alloca double*, align 8
  %24 = alloca %struct._gsl_matrix_view, align 8
  %25 = alloca %struct._gsl_matrix_view, align 8
  %26 = alloca %struct._gsl_vector_view, align 8
  %27 = alloca %struct.gsl_eigen_symmv_workspace*, align 8
  %28 = alloca %struct._gsl_matrix_view, align 8
  %29 = alloca %struct._gsl_vector_view, align 8
  %30 = alloca %struct._gsl_matrix_view, align 8
  %31 = alloca %struct._gsl_matrix_view, align 8
  %32 = alloca %struct._gsl_vector_view, align 8
  %33 = alloca %struct._gsl_matrix_view, align 8
  store i32 %0, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1677, metadata !68), !dbg !1678
  store i32 %1, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1679, metadata !68), !dbg !1680
  store double %2, double* %9, align 8
  call void @llvm.dbg.declare(metadata double* %9, metadata !1681, metadata !68), !dbg !1682
  store %struct.gsl_sf_mathieu_workspace* %3, %struct.gsl_sf_mathieu_workspace** %10, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_mathieu_workspace** %10, metadata !1683, metadata !68), !dbg !1684
  store double* %4, double** %11, align 8
  call void @llvm.dbg.declare(metadata double** %11, metadata !1685, metadata !68), !dbg !1686
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1687, metadata !68), !dbg !1689
  %34 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %10, align 8, !dbg !1690
  %35 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %34, i32 0, i32 1, !dbg !1691
  %36 = load i64, i64* %35, align 8, !dbg !1691
  %37 = trunc i64 %36 to i32, !dbg !1690
  store i32 %37, i32* %12, align 4, !dbg !1689
  call void @llvm.dbg.declare(metadata i32* %13, metadata !1692, metadata !68), !dbg !1693
  %38 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %10, align 8, !dbg !1694
  %39 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %38, i32 0, i32 2, !dbg !1695
  %40 = load i64, i64* %39, align 8, !dbg !1695
  %41 = trunc i64 %40 to i32, !dbg !1694
  store i32 %41, i32* %13, align 4, !dbg !1693
  call void @llvm.dbg.declare(metadata i32* %14, metadata !1696, metadata !68), !dbg !1697
  %42 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %10, align 8, !dbg !1698
  %43 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %42, i32 0, i32 3, !dbg !1699
  %44 = load i32, i32* %43, align 8, !dbg !1699
  store i32 %44, i32* %14, align 4, !dbg !1697
  call void @llvm.dbg.declare(metadata i32* %15, metadata !1700, metadata !68), !dbg !1701
  call void @llvm.dbg.declare(metadata i32* %16, metadata !1702, metadata !68), !dbg !1703
  call void @llvm.dbg.declare(metadata i32* %17, metadata !1704, metadata !68), !dbg !1705
  call void @llvm.dbg.declare(metadata double** %18, metadata !1706, metadata !68), !dbg !1707
  %45 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %10, align 8, !dbg !1708
  %46 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %45, i32 0, i32 10, !dbg !1709
  %47 = load double*, double** %46, align 8, !dbg !1709
  store double* %47, double** %18, align 8, !dbg !1707
  call void @llvm.dbg.declare(metadata double** %19, metadata !1710, metadata !68), !dbg !1711
  %48 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %10, align 8, !dbg !1712
  %49 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %48, i32 0, i32 8, !dbg !1713
  %50 = load double*, double** %49, align 8, !dbg !1713
  store double* %50, double** %19, align 8, !dbg !1711
  call void @llvm.dbg.declare(metadata double** %20, metadata !1714, metadata !68), !dbg !1715
  %51 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %10, align 8, !dbg !1716
  %52 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %51, i32 0, i32 9, !dbg !1717
  %53 = load double*, double** %52, align 8, !dbg !1717
  store double* %53, double** %20, align 8, !dbg !1715
  call void @llvm.dbg.declare(metadata double** %21, metadata !1718, metadata !68), !dbg !1719
  %54 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %10, align 8, !dbg !1720
  %55 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %54, i32 0, i32 11, !dbg !1721
  %56 = load double*, double** %55, align 8, !dbg !1721
  store double* %56, double** %21, align 8, !dbg !1719
  call void @llvm.dbg.declare(metadata double** %22, metadata !1722, metadata !68), !dbg !1723
  %57 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %10, align 8, !dbg !1724
  %58 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %57, i32 0, i32 12, !dbg !1725
  %59 = load double*, double** %58, align 8, !dbg !1725
  store double* %59, double** %22, align 8, !dbg !1723
  call void @llvm.dbg.declare(metadata double** %23, metadata !1726, metadata !68), !dbg !1727
  %60 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %10, align 8, !dbg !1728
  %61 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %60, i32 0, i32 6, !dbg !1729
  %62 = load double*, double** %61, align 8, !dbg !1729
  store double* %62, double** %23, align 8, !dbg !1727
  call void @llvm.dbg.declare(metadata %struct._gsl_matrix_view* %24, metadata !1730, metadata !68), !dbg !1736
  call void @llvm.dbg.declare(metadata %struct._gsl_matrix_view* %25, metadata !1737, metadata !68), !dbg !1738
  call void @llvm.dbg.declare(metadata %struct._gsl_vector_view* %26, metadata !1739, metadata !68), !dbg !1745
  call void @llvm.dbg.declare(metadata %struct.gsl_eigen_symmv_workspace** %27, metadata !1746, metadata !68), !dbg !1747
  %63 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %10, align 8, !dbg !1748
  %64 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %63, i32 0, i32 15, !dbg !1749
  %65 = load %struct.gsl_eigen_symmv_workspace*, %struct.gsl_eigen_symmv_workspace** %64, align 8, !dbg !1749
  store %struct.gsl_eigen_symmv_workspace* %65, %struct.gsl_eigen_symmv_workspace** %27, align 8, !dbg !1747
  %66 = load i32, i32* %8, align 4, !dbg !1750
  %67 = sext i32 %66 to i64, !dbg !1750
  %68 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %10, align 8, !dbg !1752
  %69 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %68, i32 0, i32 0, !dbg !1753
  %70 = load i64, i64* %69, align 8, !dbg !1753
  %71 = icmp ugt i64 %67, %70, !dbg !1754
  %72 = call i1 @iCmpInstHandler(i64 %67, i64 %70, i1 %71, i32 34, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @17, i32 0, i32 0), i64 94380177535344, i32 721, i32 17), !dbg !1755
  br i1 %72, label %85, label %73, !dbg !1755

; <label>:73:                                     ; preds = %5
  %74 = load i32, i32* %8, align 4, !dbg !1756
  %75 = load i32, i32* %7, align 4, !dbg !1758
  %76 = icmp sle i32 %74, %75, !dbg !1759
  %77 = sext i32 %74 to i64, !dbg !1760
  %78 = sext i32 %75 to i64, !dbg !1760
  %79 = call i1 @iCmpInstHandler(i64 %77, i64 %78, i1 %76, i32 41, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @17, i32 0, i32 0), i64 94380177537184, i32 721, i32 43), !dbg !1760
  br i1 %79, label %85, label %80, !dbg !1760

; <label>:80:                                     ; preds = %73
  %81 = load i32, i32* %7, align 4, !dbg !1761
  %82 = icmp slt i32 %81, 0, !dbg !1763
  %83 = sext i32 %81 to i64, !dbg !1764
  %84 = call i1 @iCmpInstHandler(i64 %83, i64 0, i1 %82, i32 40, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @17, i32 0, i32 0), i64 94380177538496, i32 721, i32 69), !dbg !1764
  br i1 %84, label %85, label %88, !dbg !1764

; <label>:85:                                     ; preds = %80, %73, %5
  br label %86, !dbg !1765, !llvm.loop !1767

; <label>:86:                                     ; preds = %85
  call void @gsl_error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i32 723, i32 4), !dbg !1768
  store i32 4, i32* %6, align 4, !dbg !1768
  br label %520, !dbg !1768
                                                  ; No predecessors!
  br label %88, !dbg !1771

; <label>:88:                                     ; preds = %87, %80
  %89 = load double*, double** %18, align 8, !dbg !1772
  %90 = getelementptr inbounds double, double* %89, i64 0, !dbg !1772
  store double 0.000000e+00, double* %90, align 8, !dbg !1773
  %91 = load double*, double** %18, align 8, !dbg !1774
  %92 = getelementptr inbounds double, double* %91, i64 1, !dbg !1774
  store double 0.000000e+00, double* %92, align 8, !dbg !1775
  %93 = load double, double* %9, align 8, !dbg !1776
  %94 = load double*, double** %18, align 8, !dbg !1777
  %95 = getelementptr inbounds double, double* %94, i64 2, !dbg !1777
  store double %93, double* %95, align 8, !dbg !1778
  store i32 1, i32* %15, align 4, !dbg !1779
  br label %96, !dbg !1781

; <label>:96:                                     ; preds = %129, %88
  %97 = load i32, i32* %15, align 4, !dbg !1782
  %98 = load i32, i32* %12, align 4, !dbg !1785
  %99 = sub i32 %98, 1, !dbg !1786
  %100 = icmp ult i32 %97, %99, !dbg !1787
  %101 = sext i32 %97 to i64, !dbg !1788
  %102 = sext i32 %99 to i64, !dbg !1788
  %103 = call i1 @iCmpInstHandler(i64 %101, i64 %102, i1 %100, i32 36, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @17, i32 0, i32 0), i64 94380177553392, i32 732, i32 16), !dbg !1788
  br i1 %103, label %104, label %132, !dbg !1788

; <label>:104:                                    ; preds = %96
  %105 = load double, double* %9, align 8, !dbg !1789
  %106 = load i32, i32* %15, align 4, !dbg !1791
  %107 = mul i32 3, %106, !dbg !1792
  %108 = zext i32 %107 to i64, !dbg !1793
  %109 = load double*, double** %18, align 8, !dbg !1793
  %110 = getelementptr inbounds double, double* %109, i64 %108, !dbg !1793
  store double %105, double* %110, align 8, !dbg !1794
  %111 = load i32, i32* %15, align 4, !dbg !1795
  %112 = mul i32 4, %111, !dbg !1796
  %113 = load i32, i32* %15, align 4, !dbg !1797
  %114 = mul i32 %112, %113, !dbg !1798
  %115 = uitofp i32 %114 to double, !dbg !1799
  %116 = load i32, i32* %15, align 4, !dbg !1800
  %117 = mul i32 3, %116, !dbg !1801
  %118 = add i32 %117, 1, !dbg !1802
  %119 = zext i32 %118 to i64, !dbg !1803
  %120 = load double*, double** %18, align 8, !dbg !1803
  %121 = getelementptr inbounds double, double* %120, i64 %119, !dbg !1803
  store double %115, double* %121, align 8, !dbg !1804
  %122 = load double, double* %9, align 8, !dbg !1805
  %123 = load i32, i32* %15, align 4, !dbg !1806
  %124 = mul i32 3, %123, !dbg !1807
  %125 = add i32 %124, 2, !dbg !1808
  %126 = zext i32 %125 to i64, !dbg !1809
  %127 = load double*, double** %18, align 8, !dbg !1809
  %128 = getelementptr inbounds double, double* %127, i64 %126, !dbg !1809
  store double %122, double* %128, align 8, !dbg !1810
  br label %129, !dbg !1811

; <label>:129:                                    ; preds = %104
  %130 = load i32, i32* %15, align 4, !dbg !1812
  %131 = add i32 %130, 1, !dbg !1812
  store i32 %131, i32* %15, align 4, !dbg !1812
  br label %96, !dbg !1814, !llvm.loop !1815

; <label>:132:                                    ; preds = %96
  %133 = load double, double* %9, align 8, !dbg !1817
  %134 = load i32, i32* %12, align 4, !dbg !1818
  %135 = mul i32 3, %134, !dbg !1819
  %136 = sub i32 %135, 3, !dbg !1820
  %137 = zext i32 %136 to i64, !dbg !1821
  %138 = load double*, double** %18, align 8, !dbg !1821
  %139 = getelementptr inbounds double, double* %138, i64 %137, !dbg !1821
  store double %133, double* %139, align 8, !dbg !1822
  %140 = load i32, i32* %12, align 4, !dbg !1823
  %141 = sub i32 %140, 1, !dbg !1824
  %142 = mul i32 4, %141, !dbg !1825
  %143 = load i32, i32* %12, align 4, !dbg !1826
  %144 = sub i32 %143, 1, !dbg !1827
  %145 = mul i32 %142, %144, !dbg !1828
  %146 = uitofp i32 %145 to double, !dbg !1829
  %147 = load i32, i32* %12, align 4, !dbg !1830
  %148 = mul i32 3, %147, !dbg !1831
  %149 = sub i32 %148, 2, !dbg !1832
  %150 = zext i32 %149 to i64, !dbg !1833
  %151 = load double*, double** %18, align 8, !dbg !1833
  %152 = getelementptr inbounds double, double* %151, i64 %150, !dbg !1833
  store double %146, double* %152, align 8, !dbg !1834
  %153 = load i32, i32* %12, align 4, !dbg !1835
  %154 = mul i32 3, %153, !dbg !1836
  %155 = sub i32 %154, 1, !dbg !1837
  %156 = zext i32 %155 to i64, !dbg !1838
  %157 = load double*, double** %18, align 8, !dbg !1838
  %158 = getelementptr inbounds double, double* %157, i64 %156, !dbg !1838
  store double 0.000000e+00, double* %158, align 8, !dbg !1839
  %159 = load double*, double** %18, align 8, !dbg !1840
  %160 = getelementptr inbounds double, double* %159, i64 3, !dbg !1840
  %161 = load double, double* %160, align 8, !dbg !1841
  %162 = fmul double %161, 2.000000e+00, !dbg !1841
  call void @fMulHandler(double %161, double 2.000000e+00, double %162, i64 94380177590296, i64 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @17, i32 0, i32 0), i64 94380177590736, i32 742, i32 9), !dbg !1841
  store double %162, double* %160, align 8, !dbg !1841
  %163 = load i32, i32* %12, align 4, !dbg !1842
  %164 = load double*, double** %18, align 8, !dbg !1843
  %165 = load double*, double** %19, align 8, !dbg !1844
  %166 = load double*, double** %20, align 8, !dbg !1845
  %167 = load double*, double** %21, align 8, !dbg !1846
  %168 = call i32 @figi(i32 %163, double* %164, double* %165, double* %166, double* %167), !dbg !1847
  store i32 %168, i32* %17, align 4, !dbg !1848
  %169 = load i32, i32* %17, align 4, !dbg !1849
  %170 = icmp ne i32 %169, 0, !dbg !1849
  %171 = sext i32 %169 to i64, !dbg !1851
  %172 = call i1 @iCmpInstHandler(i64 %171, i64 0, i1 %170, i32 33, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @17, i32 0, i32 0), i64 94380177596144, i32 746, i32 7), !dbg !1851
  br i1 %172, label %173, label %176, !dbg !1851

; <label>:173:                                    ; preds = %132
  br label %174, !dbg !1852, !llvm.loop !1854

; <label>:174:                                    ; preds = %173
  call void @gsl_error(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i32 748, i32 5), !dbg !1855
  store i32 5, i32* %6, align 4, !dbg !1855
  br label %520, !dbg !1855
                                                  ; No predecessors!
  br label %176, !dbg !1858

; <label>:176:                                    ; preds = %175, %132
  store i32 0, i32* %15, align 4, !dbg !1859
  br label %177, !dbg !1861

; <label>:177:                                    ; preds = %191, %176
  %178 = load i32, i32* %15, align 4, !dbg !1862
  %179 = load i32, i32* %12, align 4, !dbg !1865
  %180 = load i32, i32* %12, align 4, !dbg !1866
  %181 = mul i32 %179, %180, !dbg !1867
  %182 = icmp ult i32 %178, %181, !dbg !1868
  %183 = sext i32 %178 to i64, !dbg !1869
  %184 = sext i32 %181 to i64, !dbg !1869
  %185 = call i1 @iCmpInstHandler(i64 %183, i64 %184, i1 %182, i32 36, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @17, i32 0, i32 0), i64 94380177604624, i32 752, i32 16), !dbg !1869
  br i1 %185, label %186, label %194, !dbg !1869

; <label>:186:                                    ; preds = %177
  %187 = load i32, i32* %15, align 4, !dbg !1870
  %188 = zext i32 %187 to i64, !dbg !1871
  %189 = load double*, double** %22, align 8, !dbg !1871
  %190 = getelementptr inbounds double, double* %189, i64 %188, !dbg !1871
  store double 0.000000e+00, double* %190, align 8, !dbg !1872
  br label %191, !dbg !1871

; <label>:191:                                    ; preds = %186
  %192 = load i32, i32* %15, align 4, !dbg !1873
  %193 = add i32 %192, 1, !dbg !1873
  store i32 %193, i32* %15, align 4, !dbg !1873
  br label %177, !dbg !1875, !llvm.loop !1876

; <label>:194:                                    ; preds = %177
  %195 = load double*, double** %19, align 8, !dbg !1878
  %196 = getelementptr inbounds double, double* %195, i64 0, !dbg !1878
  %197 = load double, double* %196, align 8, !dbg !1878
  %198 = load double*, double** %22, align 8, !dbg !1879
  %199 = getelementptr inbounds double, double* %198, i64 0, !dbg !1879
  store double %197, double* %199, align 8, !dbg !1880
  %200 = load double*, double** %20, align 8, !dbg !1881
  %201 = getelementptr inbounds double, double* %200, i64 1, !dbg !1881
  %202 = load double, double* %201, align 8, !dbg !1881
  %203 = load double*, double** %22, align 8, !dbg !1882
  %204 = getelementptr inbounds double, double* %203, i64 1, !dbg !1882
  store double %202, double* %204, align 8, !dbg !1883
  store i32 1, i32* %15, align 4, !dbg !1884
  br label %205, !dbg !1886

; <label>:205:                                    ; preds = %256, %194
  %206 = load i32, i32* %15, align 4, !dbg !1887
  %207 = load i32, i32* %12, align 4, !dbg !1890
  %208 = sub i32 %207, 1, !dbg !1891
  %209 = icmp ult i32 %206, %208, !dbg !1892
  %210 = sext i32 %206 to i64, !dbg !1893
  %211 = sext i32 %208 to i64, !dbg !1893
  %212 = call i1 @iCmpInstHandler(i64 %210, i64 %211, i1 %209, i32 36, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @17, i32 0, i32 0), i64 94380177623056, i32 757, i32 16), !dbg !1893
  br i1 %212, label %213, label %259, !dbg !1893

; <label>:213:                                    ; preds = %205
  %214 = load i32, i32* %15, align 4, !dbg !1894
  %215 = zext i32 %214 to i64, !dbg !1896
  %216 = load double*, double** %20, align 8, !dbg !1896
  %217 = getelementptr inbounds double, double* %216, i64 %215, !dbg !1896
  %218 = load double, double* %217, align 8, !dbg !1896
  %219 = load i32, i32* %15, align 4, !dbg !1897
  %220 = load i32, i32* %12, align 4, !dbg !1898
  %221 = mul i32 %219, %220, !dbg !1899
  %222 = load i32, i32* %15, align 4, !dbg !1900
  %223 = add i32 %221, %222, !dbg !1901
  %224 = sub i32 %223, 1, !dbg !1902
  %225 = zext i32 %224 to i64, !dbg !1903
  %226 = load double*, double** %22, align 8, !dbg !1903
  %227 = getelementptr inbounds double, double* %226, i64 %225, !dbg !1903
  store double %218, double* %227, align 8, !dbg !1904
  %228 = load i32, i32* %15, align 4, !dbg !1905
  %229 = zext i32 %228 to i64, !dbg !1906
  %230 = load double*, double** %19, align 8, !dbg !1906
  %231 = getelementptr inbounds double, double* %230, i64 %229, !dbg !1906
  %232 = load double, double* %231, align 8, !dbg !1906
  %233 = load i32, i32* %15, align 4, !dbg !1907
  %234 = load i32, i32* %12, align 4, !dbg !1908
  %235 = mul i32 %233, %234, !dbg !1909
  %236 = load i32, i32* %15, align 4, !dbg !1910
  %237 = add i32 %235, %236, !dbg !1911
  %238 = zext i32 %237 to i64, !dbg !1912
  %239 = load double*, double** %22, align 8, !dbg !1912
  %240 = getelementptr inbounds double, double* %239, i64 %238, !dbg !1912
  store double %232, double* %240, align 8, !dbg !1913
  %241 = load i32, i32* %15, align 4, !dbg !1914
  %242 = add i32 %241, 1, !dbg !1915
  %243 = zext i32 %242 to i64, !dbg !1916
  %244 = load double*, double** %20, align 8, !dbg !1916
  %245 = getelementptr inbounds double, double* %244, i64 %243, !dbg !1916
  %246 = load double, double* %245, align 8, !dbg !1916
  %247 = load i32, i32* %15, align 4, !dbg !1917
  %248 = load i32, i32* %12, align 4, !dbg !1918
  %249 = mul i32 %247, %248, !dbg !1919
  %250 = load i32, i32* %15, align 4, !dbg !1920
  %251 = add i32 %249, %250, !dbg !1921
  %252 = add i32 %251, 1, !dbg !1922
  %253 = zext i32 %252 to i64, !dbg !1923
  %254 = load double*, double** %22, align 8, !dbg !1923
  %255 = getelementptr inbounds double, double* %254, i64 %253, !dbg !1923
  store double %246, double* %255, align 8, !dbg !1924
  br label %256, !dbg !1925

; <label>:256:                                    ; preds = %213
  %257 = load i32, i32* %15, align 4, !dbg !1926
  %258 = add i32 %257, 1, !dbg !1926
  store i32 %258, i32* %15, align 4, !dbg !1926
  br label %205, !dbg !1928, !llvm.loop !1929

; <label>:259:                                    ; preds = %205
  %260 = load i32, i32* %12, align 4, !dbg !1931
  %261 = sub i32 %260, 1, !dbg !1932
  %262 = zext i32 %261 to i64, !dbg !1933
  %263 = load double*, double** %20, align 8, !dbg !1933
  %264 = getelementptr inbounds double, double* %263, i64 %262, !dbg !1933
  %265 = load double, double* %264, align 8, !dbg !1933
  %266 = load i32, i32* %12, align 4, !dbg !1934
  %267 = load i32, i32* %12, align 4, !dbg !1935
  %268 = sub i32 %267, 1, !dbg !1936
  %269 = mul i32 %266, %268, !dbg !1937
  %270 = load i32, i32* %12, align 4, !dbg !1938
  %271 = add i32 %269, %270, !dbg !1939
  %272 = sub i32 %271, 2, !dbg !1940
  %273 = zext i32 %272 to i64, !dbg !1941
  %274 = load double*, double** %22, align 8, !dbg !1941
  %275 = getelementptr inbounds double, double* %274, i64 %273, !dbg !1941
  store double %265, double* %275, align 8, !dbg !1942
  %276 = load i32, i32* %12, align 4, !dbg !1943
  %277 = sub i32 %276, 1, !dbg !1944
  %278 = zext i32 %277 to i64, !dbg !1945
  %279 = load double*, double** %19, align 8, !dbg !1945
  %280 = getelementptr inbounds double, double* %279, i64 %278, !dbg !1945
  %281 = load double, double* %280, align 8, !dbg !1945
  %282 = load i32, i32* %12, align 4, !dbg !1946
  %283 = load i32, i32* %12, align 4, !dbg !1947
  %284 = mul i32 %282, %283, !dbg !1948
  %285 = sub i32 %284, 1, !dbg !1949
  %286 = zext i32 %285 to i64, !dbg !1950
  %287 = load double*, double** %22, align 8, !dbg !1950
  %288 = getelementptr inbounds double, double* %287, i64 %286, !dbg !1950
  store double %281, double* %288, align 8, !dbg !1951
  %289 = load double*, double** %22, align 8, !dbg !1952
  %290 = load i32, i32* %12, align 4, !dbg !1953
  %291 = zext i32 %290 to i64, !dbg !1953
  %292 = load i32, i32* %12, align 4, !dbg !1954
  %293 = zext i32 %292 to i64, !dbg !1954
  call void @gsl_matrix_view_array(%struct._gsl_matrix_view* sret %28, double* %289, i64 %291, i64 %293), !dbg !1955
  %294 = bitcast %struct._gsl_matrix_view* %24 to i8*, !dbg !1955
  %295 = bitcast %struct._gsl_matrix_view* %28 to i8*, !dbg !1955
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %294, i8* %295, i64 48, i32 8, i1 false), !dbg !1956
  %296 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %10, align 8, !dbg !1958
  %297 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %296, i32 0, i32 13, !dbg !1959
  %298 = load %struct.gsl_vector*, %struct.gsl_vector** %297, align 8, !dbg !1959
  %299 = load i32, i32* %12, align 4, !dbg !1960
  %300 = zext i32 %299 to i64, !dbg !1960
  call void @gsl_vector_subvector(%struct._gsl_vector_view* sret %29, %struct.gsl_vector* %298, i64 0, i64 %300), !dbg !1961
  %301 = bitcast %struct._gsl_vector_view* %26 to i8*, !dbg !1961
  %302 = bitcast %struct._gsl_vector_view* %29 to i8*, !dbg !1961
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %301, i8* %302, i64 40, i32 8, i1 false), !dbg !1962
  %303 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %10, align 8, !dbg !1963
  %304 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %303, i32 0, i32 14, !dbg !1964
  %305 = load %struct.gsl_matrix*, %struct.gsl_matrix** %304, align 8, !dbg !1964
  %306 = load i32, i32* %12, align 4, !dbg !1965
  %307 = zext i32 %306 to i64, !dbg !1965
  %308 = load i32, i32* %12, align 4, !dbg !1966
  %309 = zext i32 %308 to i64, !dbg !1966
  call void @gsl_matrix_submatrix(%struct._gsl_matrix_view* sret %30, %struct.gsl_matrix* %305, i64 0, i64 0, i64 %307, i64 %309), !dbg !1967
  %310 = bitcast %struct._gsl_matrix_view* %25 to i8*, !dbg !1967
  %311 = bitcast %struct._gsl_matrix_view* %30 to i8*, !dbg !1967
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %310, i8* %311, i64 48, i32 8, i1 false), !dbg !1968
  %312 = getelementptr inbounds %struct._gsl_matrix_view, %struct._gsl_matrix_view* %24, i32 0, i32 0, !dbg !1969
  %313 = getelementptr inbounds %struct._gsl_vector_view, %struct._gsl_vector_view* %26, i32 0, i32 0, !dbg !1970
  %314 = getelementptr inbounds %struct._gsl_matrix_view, %struct._gsl_matrix_view* %25, i32 0, i32 0, !dbg !1971
  %315 = load %struct.gsl_eigen_symmv_workspace*, %struct.gsl_eigen_symmv_workspace** %27, align 8, !dbg !1972
  %316 = call i32 @gsl_eigen_symmv(%struct.gsl_matrix* %312, %struct.gsl_vector* %313, %struct.gsl_matrix* %314, %struct.gsl_eigen_symmv_workspace* %315), !dbg !1973
  %317 = getelementptr inbounds %struct._gsl_vector_view, %struct._gsl_vector_view* %26, i32 0, i32 0, !dbg !1974
  %318 = getelementptr inbounds %struct._gsl_matrix_view, %struct._gsl_matrix_view* %25, i32 0, i32 0, !dbg !1975
  %319 = call i32 @gsl_eigen_symmv_sort(%struct.gsl_vector* %317, %struct.gsl_matrix* %318, i32 0), !dbg !1976
  store i32 0, i32* %15, align 4, !dbg !1977
  br label %320, !dbg !1979

; <label>:320:                                    ; preds = %339, %259
  %321 = load i32, i32* %15, align 4, !dbg !1980
  %322 = load i32, i32* %12, align 4, !dbg !1983
  %323 = load i32, i32* %14, align 4, !dbg !1984
  %324 = sub i32 %322, %323, !dbg !1985
  %325 = icmp ult i32 %321, %324, !dbg !1986
  %326 = sext i32 %321 to i64, !dbg !1987
  %327 = sext i32 %324 to i64, !dbg !1987
  %328 = call i1 @iCmpInstHandler(i64 %326, i64 %327, i1 %325, i32 36, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @17, i32 0, i32 0), i64 94380177702912, i32 773, i32 16), !dbg !1987
  br i1 %328, label %329, label %342, !dbg !1987

; <label>:329:                                    ; preds = %320
  %330 = getelementptr inbounds %struct._gsl_vector_view, %struct._gsl_vector_view* %26, i32 0, i32 0, !dbg !1988
  %331 = load i32, i32* %15, align 4, !dbg !1989
  %332 = zext i32 %331 to i64, !dbg !1989
  %333 = call double @gsl_vector_get(%struct.gsl_vector* %330, i64 %332), !dbg !1990
  %334 = load i32, i32* %15, align 4, !dbg !1991
  %335 = mul i32 2, %334, !dbg !1992
  %336 = zext i32 %335 to i64, !dbg !1993
  %337 = load double*, double** %23, align 8, !dbg !1993
  %338 = getelementptr inbounds double, double* %337, i64 %336, !dbg !1993
  store double %333, double* %338, align 8, !dbg !1994
  br label %339, !dbg !1993

; <label>:339:                                    ; preds = %329
  %340 = load i32, i32* %15, align 4, !dbg !1995
  %341 = add i32 %340, 1, !dbg !1995
  store i32 %341, i32* %15, align 4, !dbg !1995
  br label %320, !dbg !1997, !llvm.loop !1998

; <label>:342:                                    ; preds = %320
  store i32 0, i32* %15, align 4, !dbg !2000
  br label %343, !dbg !2002

; <label>:343:                                    ; preds = %357, %342
  %344 = load i32, i32* %15, align 4, !dbg !2003
  %345 = load i32, i32* %13, align 4, !dbg !2006
  %346 = load i32, i32* %13, align 4, !dbg !2007
  %347 = mul i32 %345, %346, !dbg !2008
  %348 = icmp ult i32 %344, %347, !dbg !2009
  %349 = sext i32 %344 to i64, !dbg !2010
  %350 = sext i32 %347 to i64, !dbg !2010
  %351 = call i1 @iCmpInstHandler(i64 %349, i64 %350, i1 %348, i32 36, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @17, i32 0, i32 0), i64 94380177716128, i32 777, i32 16), !dbg !2010
  br i1 %351, label %352, label %360, !dbg !2010

; <label>:352:                                    ; preds = %343
  %353 = load i32, i32* %15, align 4, !dbg !2011
  %354 = zext i32 %353 to i64, !dbg !2012
  %355 = load double*, double** %22, align 8, !dbg !2012
  %356 = getelementptr inbounds double, double* %355, i64 %354, !dbg !2012
  store double 0.000000e+00, double* %356, align 8, !dbg !2013
  br label %357, !dbg !2012

; <label>:357:                                    ; preds = %352
  %358 = load i32, i32* %15, align 4, !dbg !2014
  %359 = add i32 %358, 1, !dbg !2014
  store i32 %359, i32* %15, align 4, !dbg !2014
  br label %343, !dbg !2016, !llvm.loop !2017

; <label>:360:                                    ; preds = %343
  store i32 0, i32* %15, align 4, !dbg !2019
  br label %361, !dbg !2021

; <label>:361:                                    ; preds = %432, %360
  %362 = load i32, i32* %15, align 4, !dbg !2022
  %363 = load i32, i32* %13, align 4, !dbg !2025
  %364 = icmp ult i32 %362, %363, !dbg !2026
  %365 = sext i32 %362 to i64, !dbg !2027
  %366 = sext i32 %363 to i64, !dbg !2027
  %367 = call i1 @iCmpInstHandler(i64 %365, i64 %366, i1 %364, i32 36, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @17, i32 0, i32 0), i64 94380177724800, i32 779, i32 16), !dbg !2027
  br i1 %367, label %368, label %435, !dbg !2027

; <label>:368:                                    ; preds = %361
  store i32 0, i32* %16, align 4, !dbg !2028
  br label %369, !dbg !2030

; <label>:369:                                    ; preds = %428, %368
  %370 = load i32, i32* %16, align 4, !dbg !2031
  %371 = load i32, i32* %13, align 4, !dbg !2034
  %372 = icmp ult i32 %370, %371, !dbg !2035
  %373 = sext i32 %370 to i64, !dbg !2036
  %374 = sext i32 %371 to i64, !dbg !2036
  %375 = call i1 @iCmpInstHandler(i64 %373, i64 %374, i1 %372, i32 36, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @17, i32 0, i32 0), i64 94380177727520, i32 780, i32 20), !dbg !2036
  br i1 %375, label %376, label %431, !dbg !2036

; <label>:376:                                    ; preds = %369
  %377 = load i32, i32* %15, align 4, !dbg !2037
  %378 = load i32, i32* %16, align 4, !dbg !2040
  %379 = icmp eq i32 %377, %378, !dbg !2041
  %380 = sext i32 %377 to i64, !dbg !2042
  %381 = sext i32 %378 to i64, !dbg !2042
  %382 = call i1 @iCmpInstHandler(i64 %380, i64 %381, i1 %379, i32 32, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @17, i32 0, i32 0), i64 94380177729360, i32 782, i32 18), !dbg !2042
  br i1 %382, label %383, label %400, !dbg !2042

; <label>:383:                                    ; preds = %376
  %384 = load i32, i32* %15, align 4, !dbg !2043
  %385 = mul i32 2, %384, !dbg !2044
  %386 = add i32 %385, 1, !dbg !2045
  %387 = load i32, i32* %15, align 4, !dbg !2046
  %388 = mul i32 2, %387, !dbg !2047
  %389 = add i32 %388, 1, !dbg !2048
  %390 = mul i32 %386, %389, !dbg !2049
  %391 = uitofp i32 %390 to double, !dbg !2050
  %392 = load i32, i32* %15, align 4, !dbg !2051
  %393 = load i32, i32* %13, align 4, !dbg !2052
  %394 = mul i32 %392, %393, !dbg !2053
  %395 = load i32, i32* %16, align 4, !dbg !2054
  %396 = add i32 %394, %395, !dbg !2055
  %397 = zext i32 %396 to i64, !dbg !2056
  %398 = load double*, double** %22, align 8, !dbg !2056
  %399 = getelementptr inbounds double, double* %398, i64 %397, !dbg !2056
  store double %391, double* %399, align 8, !dbg !2057
  br label %427, !dbg !2056

; <label>:400:                                    ; preds = %376
  %401 = load i32, i32* %15, align 4, !dbg !2058
  %402 = load i32, i32* %16, align 4, !dbg !2060
  %403 = add i32 %402, 1, !dbg !2061
  %404 = icmp eq i32 %401, %403, !dbg !2062
  %405 = sext i32 %401 to i64, !dbg !2063
  %406 = sext i32 %403 to i64, !dbg !2063
  %407 = call i1 @iCmpInstHandler(i64 %405, i64 %406, i1 %404, i32 32, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @17, i32 0, i32 0), i64 94380177739600, i32 784, i32 23), !dbg !2063
  br i1 %407, label %416, label %408, !dbg !2063

; <label>:408:                                    ; preds = %400
  %409 = load i32, i32* %15, align 4, !dbg !2064
  %410 = add i32 %409, 1, !dbg !2066
  %411 = load i32, i32* %16, align 4, !dbg !2067
  %412 = icmp eq i32 %410, %411, !dbg !2068
  %413 = sext i32 %410 to i64, !dbg !2069
  %414 = sext i32 %411 to i64, !dbg !2069
  %415 = call i1 @iCmpInstHandler(i64 %413, i64 %414, i1 %412, i32 32, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @17, i32 0, i32 0), i64 94380177741856, i32 784, i32 43), !dbg !2069
  br i1 %415, label %416, label %426, !dbg !2069

; <label>:416:                                    ; preds = %408, %400
  %417 = load double, double* %9, align 8, !dbg !2070
  %418 = load i32, i32* %15, align 4, !dbg !2071
  %419 = load i32, i32* %13, align 4, !dbg !2072
  %420 = mul i32 %418, %419, !dbg !2073
  %421 = load i32, i32* %16, align 4, !dbg !2074
  %422 = add i32 %420, %421, !dbg !2075
  %423 = zext i32 %422 to i64, !dbg !2076
  %424 = load double*, double** %22, align 8, !dbg !2076
  %425 = getelementptr inbounds double, double* %424, i64 %423, !dbg !2076
  store double %417, double* %425, align 8, !dbg !2077
  br label %426, !dbg !2076

; <label>:426:                                    ; preds = %416, %408
  br label %427

; <label>:427:                                    ; preds = %426, %383
  br label %428, !dbg !2078

; <label>:428:                                    ; preds = %427
  %429 = load i32, i32* %16, align 4, !dbg !2079
  %430 = add i32 %429, 1, !dbg !2079
  store i32 %430, i32* %16, align 4, !dbg !2079
  br label %369, !dbg !2081, !llvm.loop !2082

; <label>:431:                                    ; preds = %369
  br label %432, !dbg !2084

; <label>:432:                                    ; preds = %431
  %433 = load i32, i32* %15, align 4, !dbg !2086
  %434 = add i32 %433, 1, !dbg !2086
  store i32 %434, i32* %15, align 4, !dbg !2086
  br label %361, !dbg !2088, !llvm.loop !2089

; <label>:435:                                    ; preds = %361
  %436 = load double, double* %9, align 8, !dbg !2091
  %437 = load double*, double** %22, align 8, !dbg !2092
  %438 = getelementptr inbounds double, double* %437, i64 0, !dbg !2092
  %439 = load double, double* %438, align 8, !dbg !2093
  %440 = fadd double %439, %436, !dbg !2093
  call void @fAddHandler(double %439, double %436, double %440, i64 94380177756776, i64 94380177754376, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @17, i32 0, i32 0), i64 94380177757184, i32 787, i32 9), !dbg !2093
  store double %440, double* %438, align 8, !dbg !2093
  %441 = load double*, double** %22, align 8, !dbg !2094
  %442 = load i32, i32* %13, align 4, !dbg !2095
  %443 = zext i32 %442 to i64, !dbg !2095
  %444 = load i32, i32* %13, align 4, !dbg !2096
  %445 = zext i32 %444 to i64, !dbg !2096
  call void @gsl_matrix_view_array(%struct._gsl_matrix_view* sret %31, double* %441, i64 %443, i64 %445), !dbg !2097
  %446 = bitcast %struct._gsl_matrix_view* %24 to i8*, !dbg !2097
  %447 = bitcast %struct._gsl_matrix_view* %31 to i8*, !dbg !2097
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %446, i8* %447, i64 48, i32 8, i1 false), !dbg !2098
  %448 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %10, align 8, !dbg !2099
  %449 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %448, i32 0, i32 13, !dbg !2100
  %450 = load %struct.gsl_vector*, %struct.gsl_vector** %449, align 8, !dbg !2100
  %451 = load i32, i32* %13, align 4, !dbg !2101
  %452 = zext i32 %451 to i64, !dbg !2101
  call void @gsl_vector_subvector(%struct._gsl_vector_view* sret %32, %struct.gsl_vector* %450, i64 0, i64 %452), !dbg !2102
  %453 = bitcast %struct._gsl_vector_view* %26 to i8*, !dbg !2102
  %454 = bitcast %struct._gsl_vector_view* %32 to i8*, !dbg !2102
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %453, i8* %454, i64 40, i32 8, i1 false), !dbg !2103
  %455 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %10, align 8, !dbg !2104
  %456 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %455, i32 0, i32 14, !dbg !2105
  %457 = load %struct.gsl_matrix*, %struct.gsl_matrix** %456, align 8, !dbg !2105
  %458 = load i32, i32* %13, align 4, !dbg !2106
  %459 = zext i32 %458 to i64, !dbg !2106
  %460 = load i32, i32* %13, align 4, !dbg !2107
  %461 = zext i32 %460 to i64, !dbg !2107
  call void @gsl_matrix_submatrix(%struct._gsl_matrix_view* sret %33, %struct.gsl_matrix* %457, i64 0, i64 0, i64 %459, i64 %461), !dbg !2108
  %462 = bitcast %struct._gsl_matrix_view* %25 to i8*, !dbg !2108
  %463 = bitcast %struct._gsl_matrix_view* %33 to i8*, !dbg !2108
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %462, i8* %463, i64 48, i32 8, i1 false), !dbg !2109
  %464 = getelementptr inbounds %struct._gsl_matrix_view, %struct._gsl_matrix_view* %24, i32 0, i32 0, !dbg !2110
  %465 = getelementptr inbounds %struct._gsl_vector_view, %struct._gsl_vector_view* %26, i32 0, i32 0, !dbg !2111
  %466 = getelementptr inbounds %struct._gsl_matrix_view, %struct._gsl_matrix_view* %25, i32 0, i32 0, !dbg !2112
  %467 = load %struct.gsl_eigen_symmv_workspace*, %struct.gsl_eigen_symmv_workspace** %27, align 8, !dbg !2113
  %468 = call i32 @gsl_eigen_symmv(%struct.gsl_matrix* %464, %struct.gsl_vector* %465, %struct.gsl_matrix* %466, %struct.gsl_eigen_symmv_workspace* %467), !dbg !2114
  %469 = getelementptr inbounds %struct._gsl_vector_view, %struct._gsl_vector_view* %26, i32 0, i32 0, !dbg !2115
  %470 = getelementptr inbounds %struct._gsl_matrix_view, %struct._gsl_matrix_view* %25, i32 0, i32 0, !dbg !2116
  %471 = call i32 @gsl_eigen_symmv_sort(%struct.gsl_vector* %469, %struct.gsl_matrix* %470, i32 0), !dbg !2117
  store i32 0, i32* %15, align 4, !dbg !2118
  br label %472, !dbg !2120

; <label>:472:                                    ; preds = %492, %435
  %473 = load i32, i32* %15, align 4, !dbg !2121
  %474 = load i32, i32* %13, align 4, !dbg !2124
  %475 = load i32, i32* %14, align 4, !dbg !2125
  %476 = sub i32 %474, %475, !dbg !2126
  %477 = icmp ult i32 %473, %476, !dbg !2127
  %478 = sext i32 %473 to i64, !dbg !2128
  %479 = sext i32 %476 to i64, !dbg !2128
  %480 = call i1 @iCmpInstHandler(i64 %478, i64 %479, i1 %477, i32 36, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @17, i32 0, i32 0), i64 94380177789632, i32 796, i32 16), !dbg !2128
  br i1 %480, label %481, label %495, !dbg !2128

; <label>:481:                                    ; preds = %472
  %482 = getelementptr inbounds %struct._gsl_vector_view, %struct._gsl_vector_view* %26, i32 0, i32 0, !dbg !2129
  %483 = load i32, i32* %15, align 4, !dbg !2130
  %484 = zext i32 %483 to i64, !dbg !2130
  %485 = call double @gsl_vector_get(%struct.gsl_vector* %482, i64 %484), !dbg !2131
  %486 = load i32, i32* %15, align 4, !dbg !2132
  %487 = mul i32 2, %486, !dbg !2133
  %488 = add i32 %487, 1, !dbg !2134
  %489 = zext i32 %488 to i64, !dbg !2135
  %490 = load double*, double** %23, align 8, !dbg !2135
  %491 = getelementptr inbounds double, double* %490, i64 %489, !dbg !2135
  store double %485, double* %491, align 8, !dbg !2136
  br label %492, !dbg !2135

; <label>:492:                                    ; preds = %481
  %493 = load i32, i32* %15, align 4, !dbg !2137
  %494 = add i32 %493, 1, !dbg !2137
  store i32 %494, i32* %15, align 4, !dbg !2137
  br label %472, !dbg !2139, !llvm.loop !2140

; <label>:495:                                    ; preds = %472
  %496 = load i32, i32* %7, align 4, !dbg !2142
  store i32 %496, i32* %15, align 4, !dbg !2144
  br label %497, !dbg !2145

; <label>:497:                                    ; preds = %516, %495
  %498 = load i32, i32* %15, align 4, !dbg !2146
  %499 = load i32, i32* %8, align 4, !dbg !2149
  %500 = icmp ule i32 %498, %499, !dbg !2150
  %501 = sext i32 %498 to i64, !dbg !2151
  %502 = sext i32 %499 to i64, !dbg !2151
  %503 = call i1 @iCmpInstHandler(i64 %501, i64 %502, i1 %500, i32 37, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @17, i32 0, i32 0), i64 94380177802528, i32 799, i32 28), !dbg !2151
  br i1 %503, label %504, label %519, !dbg !2151

; <label>:504:                                    ; preds = %497
  %505 = load i32, i32* %15, align 4, !dbg !2152
  %506 = zext i32 %505 to i64, !dbg !2154
  %507 = load double*, double** %23, align 8, !dbg !2154
  %508 = getelementptr inbounds double, double* %507, i64 %506, !dbg !2154
  %509 = load double, double* %508, align 8, !dbg !2154
  %510 = load i32, i32* %15, align 4, !dbg !2155
  %511 = load i32, i32* %7, align 4, !dbg !2156
  %512 = sub i32 %510, %511, !dbg !2157
  %513 = zext i32 %512 to i64, !dbg !2158
  %514 = load double*, double** %11, align 8, !dbg !2158
  %515 = getelementptr inbounds double, double* %514, i64 %513, !dbg !2158
  store double %509, double* %515, align 8, !dbg !2159
  br label %516, !dbg !2160

; <label>:516:                                    ; preds = %504
  %517 = load i32, i32* %15, align 4, !dbg !2161
  %518 = add i32 %517, 1, !dbg !2161
  store i32 %518, i32* %15, align 4, !dbg !2161
  br label %497, !dbg !2163, !llvm.loop !2164

; <label>:519:                                    ; preds = %497
  store i32 0, i32* %6, align 4, !dbg !2166
  br label %520, !dbg !2166

; <label>:520:                                    ; preds = %519, %174, %86
  %521 = load i32, i32* %6, align 4, !dbg !2167
  ret i32 %521, !dbg !2167
}

; Function Attrs: nounwind uwtable
define internal i32 @figi(i32, double*, double*, double*, double*) #0 !dbg !2168 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca double*, align 8
  %9 = alloca double*, align 8
  %10 = alloca double*, align 8
  %11 = alloca double*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2171, metadata !68), !dbg !2172
  store double* %1, double** %8, align 8
  call void @llvm.dbg.declare(metadata double** %8, metadata !2173, metadata !68), !dbg !2174
  store double* %2, double** %9, align 8
  call void @llvm.dbg.declare(metadata double** %9, metadata !2175, metadata !68), !dbg !2176
  store double* %3, double** %10, align 8
  call void @llvm.dbg.declare(metadata double** %10, metadata !2177, metadata !68), !dbg !2178
  store double* %4, double** %11, align 8
  call void @llvm.dbg.declare(metadata double** %11, metadata !2179, metadata !68), !dbg !2180
  call void @llvm.dbg.declare(metadata i32* %12, metadata !2181, metadata !68), !dbg !2182
  store i32 0, i32* %12, align 4, !dbg !2183
  br label %13, !dbg !2185

; <label>:13:                                     ; preds = %113, %5
  %14 = load i32, i32* %12, align 4, !dbg !2186
  %15 = load i32, i32* %7, align 4, !dbg !2189
  %16 = icmp slt i32 %14, %15, !dbg !2190
  %17 = sext i32 %14 to i64, !dbg !2191
  %18 = sext i32 %15 to i64, !dbg !2191
  %19 = call i1 @iCmpInstHandler(i64 %17, i64 %18, i1 %16, i32 40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @19, i32 0, i32 0), i64 94380177823664, i32 680, i32 16), !dbg !2191
  br i1 %19, label %20, label %116, !dbg !2191

; <label>:20:                                     ; preds = %13
  %21 = load i32, i32* %12, align 4, !dbg !2192
  %22 = icmp ne i32 %21, 0, !dbg !2195
  %23 = sext i32 %21 to i64, !dbg !2196
  %24 = call i1 @iCmpInstHandler(i64 %23, i64 0, i1 %22, i32 33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @19, i32 0, i32 0), i64 94380177824976, i32 682, i32 14), !dbg !2196
  br i1 %24, label %25, label %101, !dbg !2196

; <label>:25:                                     ; preds = %20
  %26 = load i32, i32* %12, align 4, !dbg !2197
  %27 = mul nsw i32 3, %26, !dbg !2199
  %28 = sext i32 %27 to i64, !dbg !2200
  %29 = load double*, double** %8, align 8, !dbg !2200
  %30 = getelementptr inbounds double, double* %29, i64 %28, !dbg !2200
  %31 = load double, double* %30, align 8, !dbg !2200
  %32 = load i32, i32* %12, align 4, !dbg !2201
  %33 = sub nsw i32 %32, 1, !dbg !2202
  %34 = mul nsw i32 3, %33, !dbg !2203
  %35 = add nsw i32 %34, 2, !dbg !2204
  %36 = sext i32 %35 to i64, !dbg !2205
  %37 = load double*, double** %8, align 8, !dbg !2205
  %38 = getelementptr inbounds double, double* %37, i64 %36, !dbg !2205
  %39 = load double, double* %38, align 8, !dbg !2205
  %40 = fmul double %31, %39, !dbg !2206
  call void @fMulHandler(double %31, double %39, double %40, i64 94380177829000, i64 94380177832904, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @19, i32 0, i32 0), i64 94380177833024, i32 684, i32 28), !dbg !2207
  %41 = load i32, i32* %12, align 4, !dbg !2207
  %42 = sext i32 %41 to i64, !dbg !2208
  %43 = load double*, double** %11, align 8, !dbg !2208
  %44 = getelementptr inbounds double, double* %43, i64 %42, !dbg !2208
  store double %40, double* %44, align 8, !dbg !2209
  %45 = load i32, i32* %12, align 4, !dbg !2210
  %46 = sext i32 %45 to i64, !dbg !2212
  %47 = load double*, double** %11, align 8, !dbg !2212
  %48 = getelementptr inbounds double, double* %47, i64 %46, !dbg !2212
  %49 = load double, double* %48, align 8, !dbg !2212
  %50 = fcmp olt double %49, 0.000000e+00, !dbg !2213
  %51 = call i1 @fCmpInstHandler(double %49, double 0.000000e+00, i1 %50, i32 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @19, i32 0, i32 0), i64 94380177839072, i32 686, i32 22), !dbg !2214
  br i1 %51, label %52, label %56, !dbg !2214

; <label>:52:                                     ; preds = %25
  %53 = load i32, i32* %7, align 4, !dbg !2215
  %54 = load i32, i32* %12, align 4, !dbg !2217
  %55 = add nsw i32 %53, %54, !dbg !2218
  store i32 %55, i32* %6, align 4, !dbg !2219
  br label %117, !dbg !2219

; <label>:56:                                     ; preds = %25
  %57 = load i32, i32* %12, align 4, !dbg !2220
  %58 = sext i32 %57 to i64, !dbg !2222
  %59 = load double*, double** %11, align 8, !dbg !2222
  %60 = getelementptr inbounds double, double* %59, i64 %58, !dbg !2222
  %61 = load double, double* %60, align 8, !dbg !2222
  %62 = fcmp oeq double %61, 0.000000e+00, !dbg !2223
  %63 = call i1 @fCmpInstHandler(double %61, double 0.000000e+00, i1 %62, i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @19, i32 0, i32 0), i64 94380177846128, i32 693, i32 22), !dbg !2224
  br i1 %63, label %64, label %90, !dbg !2224

; <label>:64:                                     ; preds = %56
  %65 = load i32, i32* %12, align 4, !dbg !2225
  %66 = mul nsw i32 3, %65, !dbg !2227
  %67 = sext i32 %66 to i64, !dbg !2228
  %68 = load double*, double** %8, align 8, !dbg !2228
  %69 = getelementptr inbounds double, double* %68, i64 %67, !dbg !2228
  %70 = load double, double* %69, align 8, !dbg !2228
  %71 = fcmp une double %70, 0.000000e+00, !dbg !2229
  %72 = call i1 @fCmpInstHandler(double %70, double 0.000000e+00, i1 %71, i32 14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @19, i32 0, i32 0), i64 94380177850272, i32 693, i32 42), !dbg !2230
  br i1 %72, label %84, label %73, !dbg !2230

; <label>:73:                                     ; preds = %64
  %74 = load i32, i32* %12, align 4, !dbg !2231
  %75 = sub nsw i32 %74, 1, !dbg !2233
  %76 = mul nsw i32 3, %75, !dbg !2234
  %77 = add nsw i32 %76, 2, !dbg !2235
  %78 = sext i32 %77 to i64, !dbg !2236
  %79 = load double*, double** %8, align 8, !dbg !2236
  %80 = getelementptr inbounds double, double* %79, i64 %78, !dbg !2236
  %81 = load double, double* %80, align 8, !dbg !2236
  %82 = fcmp une double %81, 0.000000e+00, !dbg !2237
  %83 = call i1 @fCmpInstHandler(double %81, double 0.000000e+00, i1 %82, i32 14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @19, i32 0, i32 0), i64 94380177855248, i32 693, i32 67), !dbg !2238
  br i1 %83, label %84, label %90, !dbg !2238

; <label>:84:                                     ; preds = %73, %64
  %85 = load i32, i32* %7, align 4, !dbg !2239
  %86 = mul nsw i32 3, %85, !dbg !2241
  %87 = load i32, i32* %12, align 4, !dbg !2242
  %88 = add nsw i32 %86, %87, !dbg !2243
  %89 = mul nsw i32 -1, %88, !dbg !2244
  store i32 %89, i32* %6, align 4, !dbg !2245
  br label %117, !dbg !2245

; <label>:90:                                     ; preds = %73, %56
  %91 = load i32, i32* %12, align 4, !dbg !2246
  %92 = sext i32 %91 to i64, !dbg !2247
  %93 = load double*, double** %11, align 8, !dbg !2247
  %94 = getelementptr inbounds double, double* %93, i64 %92, !dbg !2247
  %95 = load double, double* %94, align 8, !dbg !2247
  %96 = call double @sqrt(double %95) #6, !dbg !2248
  call void @callOneArgHandler(i32 14, double %95, double %96, i64 94380177862584, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @19, i32 0, i32 0), i64 94380177862768, i32 700, i32 20), !dbg !2249
  %97 = load i32, i32* %12, align 4, !dbg !2249
  %98 = sext i32 %97 to i64, !dbg !2250
  %99 = load double*, double** %10, align 8, !dbg !2250
  %100 = getelementptr inbounds double, double* %99, i64 %98, !dbg !2250
  store double %96, double* %100, align 8, !dbg !2251
  br label %101, !dbg !2252

; <label>:101:                                    ; preds = %90, %20
  %102 = load i32, i32* %12, align 4, !dbg !2253
  %103 = mul nsw i32 3, %102, !dbg !2254
  %104 = add nsw i32 %103, 1, !dbg !2255
  %105 = sext i32 %104 to i64, !dbg !2256
  %106 = load double*, double** %8, align 8, !dbg !2256
  %107 = getelementptr inbounds double, double* %106, i64 %105, !dbg !2256
  %108 = load double, double* %107, align 8, !dbg !2256
  %109 = load i32, i32* %12, align 4, !dbg !2257
  %110 = sext i32 %109 to i64, !dbg !2258
  %111 = load double*, double** %9, align 8, !dbg !2258
  %112 = getelementptr inbounds double, double* %111, i64 %110, !dbg !2258
  store double %108, double* %112, align 8, !dbg !2259
  br label %113, !dbg !2260

; <label>:113:                                    ; preds = %101
  %114 = load i32, i32* %12, align 4, !dbg !2261
  %115 = add nsw i32 %114, 1, !dbg !2261
  store i32 %115, i32* %12, align 4, !dbg !2261
  br label %13, !dbg !2263, !llvm.loop !2264

; <label>:116:                                    ; preds = %13
  store i32 0, i32* %6, align 4, !dbg !2266
  br label %117, !dbg !2266

; <label>:117:                                    ; preds = %116, %84, %52
  %118 = load i32, i32* %6, align 4, !dbg !2267
  ret i32 %118, !dbg !2267
}

declare void @gsl_matrix_view_array(%struct._gsl_matrix_view* sret, double*, i64, i64) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #4

declare void @gsl_vector_subvector(%struct._gsl_vector_view* sret, %struct.gsl_vector*, i64, i64) #3

declare void @gsl_matrix_submatrix(%struct._gsl_matrix_view* sret, %struct.gsl_matrix*, i64, i64, i64, i64) #3

declare i32 @gsl_eigen_symmv(%struct.gsl_matrix*, %struct.gsl_vector*, %struct.gsl_matrix*, %struct.gsl_eigen_symmv_workspace*) #3

declare i32 @gsl_eigen_symmv_sort(%struct.gsl_vector*, %struct.gsl_matrix*, i32) #3

declare double @gsl_vector_get(%struct.gsl_vector*, i64) #3

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_mathieu_b_array(i32, i32, double, %struct.gsl_sf_mathieu_workspace*, double*) #0 !dbg !2268 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca %struct.gsl_sf_mathieu_workspace*, align 8
  %11 = alloca double*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca double*, align 8
  %18 = alloca double*, align 8
  %19 = alloca %struct._gsl_matrix_view, align 8
  %20 = alloca %struct._gsl_matrix_view, align 8
  %21 = alloca %struct._gsl_vector_view, align 8
  %22 = alloca %struct.gsl_eigen_symmv_workspace*, align 8
  %23 = alloca %struct._gsl_matrix_view, align 8
  %24 = alloca %struct._gsl_vector_view, align 8
  %25 = alloca %struct._gsl_matrix_view, align 8
  %26 = alloca %struct._gsl_matrix_view, align 8
  %27 = alloca %struct._gsl_vector_view, align 8
  %28 = alloca %struct._gsl_matrix_view, align 8
  store i32 %0, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2269, metadata !68), !dbg !2270
  store i32 %1, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !2271, metadata !68), !dbg !2272
  store double %2, double* %9, align 8
  call void @llvm.dbg.declare(metadata double* %9, metadata !2273, metadata !68), !dbg !2274
  store %struct.gsl_sf_mathieu_workspace* %3, %struct.gsl_sf_mathieu_workspace** %10, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_mathieu_workspace** %10, metadata !2275, metadata !68), !dbg !2276
  store double* %4, double** %11, align 8
  call void @llvm.dbg.declare(metadata double** %11, metadata !2277, metadata !68), !dbg !2278
  call void @llvm.dbg.declare(metadata i32* %12, metadata !2279, metadata !68), !dbg !2280
  %29 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %10, align 8, !dbg !2281
  %30 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %29, i32 0, i32 1, !dbg !2282
  %31 = load i64, i64* %30, align 8, !dbg !2282
  %32 = sub i64 %31, 1, !dbg !2283
  %33 = trunc i64 %32 to i32, !dbg !2281
  store i32 %33, i32* %12, align 4, !dbg !2280
  call void @llvm.dbg.declare(metadata i32* %13, metadata !2284, metadata !68), !dbg !2285
  %34 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %10, align 8, !dbg !2286
  %35 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %34, i32 0, i32 2, !dbg !2287
  %36 = load i64, i64* %35, align 8, !dbg !2287
  %37 = trunc i64 %36 to i32, !dbg !2286
  store i32 %37, i32* %13, align 4, !dbg !2285
  call void @llvm.dbg.declare(metadata i32* %14, metadata !2288, metadata !68), !dbg !2289
  %38 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %10, align 8, !dbg !2290
  %39 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %38, i32 0, i32 3, !dbg !2291
  %40 = load i32, i32* %39, align 8, !dbg !2291
  store i32 %40, i32* %14, align 4, !dbg !2289
  call void @llvm.dbg.declare(metadata i32* %15, metadata !2292, metadata !68), !dbg !2293
  call void @llvm.dbg.declare(metadata i32* %16, metadata !2294, metadata !68), !dbg !2295
  call void @llvm.dbg.declare(metadata double** %17, metadata !2296, metadata !68), !dbg !2297
  %41 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %10, align 8, !dbg !2298
  %42 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %41, i32 0, i32 12, !dbg !2299
  %43 = load double*, double** %42, align 8, !dbg !2299
  store double* %43, double** %17, align 8, !dbg !2297
  call void @llvm.dbg.declare(metadata double** %18, metadata !2300, metadata !68), !dbg !2301
  %44 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %10, align 8, !dbg !2302
  %45 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %44, i32 0, i32 7, !dbg !2303
  %46 = load double*, double** %45, align 8, !dbg !2303
  store double* %46, double** %18, align 8, !dbg !2301
  call void @llvm.dbg.declare(metadata %struct._gsl_matrix_view* %19, metadata !2304, metadata !68), !dbg !2305
  call void @llvm.dbg.declare(metadata %struct._gsl_matrix_view* %20, metadata !2306, metadata !68), !dbg !2307
  call void @llvm.dbg.declare(metadata %struct._gsl_vector_view* %21, metadata !2308, metadata !68), !dbg !2309
  call void @llvm.dbg.declare(metadata %struct.gsl_eigen_symmv_workspace** %22, metadata !2310, metadata !68), !dbg !2311
  %47 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %10, align 8, !dbg !2312
  %48 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %47, i32 0, i32 15, !dbg !2313
  %49 = load %struct.gsl_eigen_symmv_workspace*, %struct.gsl_eigen_symmv_workspace** %48, align 8, !dbg !2313
  store %struct.gsl_eigen_symmv_workspace* %49, %struct.gsl_eigen_symmv_workspace** %22, align 8, !dbg !2311
  %50 = load i32, i32* %8, align 4, !dbg !2314
  %51 = sext i32 %50 to i64, !dbg !2314
  %52 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %10, align 8, !dbg !2316
  %53 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %52, i32 0, i32 0, !dbg !2317
  %54 = load i64, i64* %53, align 8, !dbg !2317
  %55 = icmp ugt i64 %51, %54, !dbg !2318
  %56 = call i1 @iCmpInstHandler(i64 %51, i64 %54, i1 %55, i32 34, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @21, i32 0, i32 0), i64 94380177937056, i32 817, i32 17), !dbg !2319
  br i1 %56, label %69, label %57, !dbg !2319

; <label>:57:                                     ; preds = %5
  %58 = load i32, i32* %8, align 4, !dbg !2320
  %59 = load i32, i32* %7, align 4, !dbg !2322
  %60 = icmp sle i32 %58, %59, !dbg !2323
  %61 = sext i32 %58 to i64, !dbg !2324
  %62 = sext i32 %59 to i64, !dbg !2324
  %63 = call i1 @iCmpInstHandler(i64 %61, i64 %62, i1 %60, i32 41, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @21, i32 0, i32 0), i64 94380177938896, i32 817, i32 43), !dbg !2324
  br i1 %63, label %69, label %64, !dbg !2324

; <label>:64:                                     ; preds = %57
  %65 = load i32, i32* %7, align 4, !dbg !2325
  %66 = icmp slt i32 %65, 0, !dbg !2327
  %67 = sext i32 %65 to i64, !dbg !2328
  %68 = call i1 @iCmpInstHandler(i64 %67, i64 0, i1 %66, i32 40, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @21, i32 0, i32 0), i64 94380177940208, i32 817, i32 69), !dbg !2328
  br i1 %68, label %69, label %72, !dbg !2328

; <label>:69:                                     ; preds = %64, %57, %5
  br label %70, !dbg !2329, !llvm.loop !2331

; <label>:70:                                     ; preds = %69
  call void @gsl_error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i32 819, i32 4), !dbg !2332
  store i32 4, i32* %6, align 4, !dbg !2332
  br label %399, !dbg !2332
                                                  ; No predecessors!
  br label %72, !dbg !2335

; <label>:72:                                     ; preds = %71, %64
  store i32 0, i32* %15, align 4, !dbg !2336
  br label %73, !dbg !2338

; <label>:73:                                     ; preds = %87, %72
  %74 = load i32, i32* %15, align 4, !dbg !2339
  %75 = load i32, i32* %12, align 4, !dbg !2342
  %76 = load i32, i32* %12, align 4, !dbg !2343
  %77 = mul i32 %75, %76, !dbg !2344
  %78 = icmp ult i32 %74, %77, !dbg !2345
  %79 = sext i32 %74 to i64, !dbg !2346
  %80 = sext i32 %77 to i64, !dbg !2346
  %81 = call i1 @iCmpInstHandler(i64 %79, i64 %80, i1 %78, i32 36, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @21, i32 0, i32 0), i64 94380177947296, i32 823, i32 16), !dbg !2346
  br i1 %81, label %82, label %90, !dbg !2346

; <label>:82:                                     ; preds = %73
  %83 = load i32, i32* %15, align 4, !dbg !2347
  %84 = zext i32 %83 to i64, !dbg !2348
  %85 = load double*, double** %17, align 8, !dbg !2348
  %86 = getelementptr inbounds double, double* %85, i64 %84, !dbg !2348
  store double 0.000000e+00, double* %86, align 8, !dbg !2349
  br label %87, !dbg !2348

; <label>:87:                                     ; preds = %82
  %88 = load i32, i32* %15, align 4, !dbg !2350
  %89 = add i32 %88, 1, !dbg !2350
  store i32 %89, i32* %15, align 4, !dbg !2350
  br label %73, !dbg !2352, !llvm.loop !2353

; <label>:90:                                     ; preds = %73
  store i32 0, i32* %15, align 4, !dbg !2355
  br label %91, !dbg !2357

; <label>:91:                                     ; preds = %161, %90
  %92 = load i32, i32* %15, align 4, !dbg !2358
  %93 = load i32, i32* %12, align 4, !dbg !2361
  %94 = icmp ult i32 %92, %93, !dbg !2362
  %95 = sext i32 %92 to i64, !dbg !2363
  %96 = sext i32 %93 to i64, !dbg !2363
  %97 = call i1 @iCmpInstHandler(i64 %95, i64 %96, i1 %94, i32 36, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @21, i32 0, i32 0), i64 94380177955968, i32 825, i32 16), !dbg !2363
  br i1 %97, label %98, label %164, !dbg !2363

; <label>:98:                                     ; preds = %91
  store i32 0, i32* %16, align 4, !dbg !2364
  br label %99, !dbg !2366

; <label>:99:                                     ; preds = %157, %98
  %100 = load i32, i32* %16, align 4, !dbg !2367
  %101 = load i32, i32* %12, align 4, !dbg !2370
  %102 = icmp ult i32 %100, %101, !dbg !2371
  %103 = sext i32 %100 to i64, !dbg !2372
  %104 = sext i32 %101 to i64, !dbg !2372
  %105 = call i1 @iCmpInstHandler(i64 %103, i64 %104, i1 %102, i32 36, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @21, i32 0, i32 0), i64 94380177958688, i32 826, i32 20), !dbg !2372
  br i1 %105, label %106, label %160, !dbg !2372

; <label>:106:                                    ; preds = %99
  %107 = load i32, i32* %15, align 4, !dbg !2373
  %108 = load i32, i32* %16, align 4, !dbg !2376
  %109 = icmp eq i32 %107, %108, !dbg !2377
  %110 = sext i32 %107 to i64, !dbg !2378
  %111 = sext i32 %108 to i64, !dbg !2378
  %112 = call i1 @iCmpInstHandler(i64 %110, i64 %111, i1 %109, i32 32, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @21, i32 0, i32 0), i64 94380177960528, i32 828, i32 18), !dbg !2378
  br i1 %112, label %113, label %129, !dbg !2378

; <label>:113:                                    ; preds = %106
  %114 = load i32, i32* %15, align 4, !dbg !2379
  %115 = add i32 %114, 1, !dbg !2380
  %116 = mul i32 4, %115, !dbg !2381
  %117 = load i32, i32* %15, align 4, !dbg !2382
  %118 = add i32 %117, 1, !dbg !2383
  %119 = mul i32 %116, %118, !dbg !2384
  %120 = uitofp i32 %119 to double, !dbg !2385
  %121 = load i32, i32* %15, align 4, !dbg !2386
  %122 = load i32, i32* %12, align 4, !dbg !2387
  %123 = mul i32 %121, %122, !dbg !2388
  %124 = load i32, i32* %16, align 4, !dbg !2389
  %125 = add i32 %123, %124, !dbg !2390
  %126 = zext i32 %125 to i64, !dbg !2391
  %127 = load double*, double** %17, align 8, !dbg !2391
  %128 = getelementptr inbounds double, double* %127, i64 %126, !dbg !2391
  store double %120, double* %128, align 8, !dbg !2392
  br label %156, !dbg !2391

; <label>:129:                                    ; preds = %106
  %130 = load i32, i32* %15, align 4, !dbg !2393
  %131 = load i32, i32* %16, align 4, !dbg !2395
  %132 = add i32 %131, 1, !dbg !2396
  %133 = icmp eq i32 %130, %132, !dbg !2397
  %134 = sext i32 %130 to i64, !dbg !2398
  %135 = sext i32 %132 to i64, !dbg !2398
  %136 = call i1 @iCmpInstHandler(i64 %134, i64 %135, i1 %133, i32 32, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @21, i32 0, i32 0), i64 94380177970352, i32 830, i32 23), !dbg !2398
  br i1 %136, label %145, label %137, !dbg !2398

; <label>:137:                                    ; preds = %129
  %138 = load i32, i32* %15, align 4, !dbg !2399
  %139 = add i32 %138, 1, !dbg !2401
  %140 = load i32, i32* %16, align 4, !dbg !2402
  %141 = icmp eq i32 %139, %140, !dbg !2403
  %142 = sext i32 %139 to i64, !dbg !2404
  %143 = sext i32 %140 to i64, !dbg !2404
  %144 = call i1 @iCmpInstHandler(i64 %142, i64 %143, i1 %141, i32 32, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @21, i32 0, i32 0), i64 94380177972608, i32 830, i32 43), !dbg !2404
  br i1 %144, label %145, label %155, !dbg !2404

; <label>:145:                                    ; preds = %137, %129
  %146 = load double, double* %9, align 8, !dbg !2405
  %147 = load i32, i32* %15, align 4, !dbg !2406
  %148 = load i32, i32* %12, align 4, !dbg !2407
  %149 = mul i32 %147, %148, !dbg !2408
  %150 = load i32, i32* %16, align 4, !dbg !2409
  %151 = add i32 %149, %150, !dbg !2410
  %152 = zext i32 %151 to i64, !dbg !2411
  %153 = load double*, double** %17, align 8, !dbg !2411
  %154 = getelementptr inbounds double, double* %153, i64 %152, !dbg !2411
  store double %146, double* %154, align 8, !dbg !2412
  br label %155, !dbg !2411

; <label>:155:                                    ; preds = %145, %137
  br label %156

; <label>:156:                                    ; preds = %155, %113
  br label %157, !dbg !2413

; <label>:157:                                    ; preds = %156
  %158 = load i32, i32* %16, align 4, !dbg !2414
  %159 = add i32 %158, 1, !dbg !2414
  store i32 %159, i32* %16, align 4, !dbg !2414
  br label %99, !dbg !2416, !llvm.loop !2417

; <label>:160:                                    ; preds = %99
  br label %161, !dbg !2419

; <label>:161:                                    ; preds = %160
  %162 = load i32, i32* %15, align 4, !dbg !2421
  %163 = add i32 %162, 1, !dbg !2421
  store i32 %163, i32* %15, align 4, !dbg !2421
  br label %91, !dbg !2423, !llvm.loop !2424

; <label>:164:                                    ; preds = %91
  %165 = load double*, double** %17, align 8, !dbg !2426
  %166 = load i32, i32* %12, align 4, !dbg !2427
  %167 = zext i32 %166 to i64, !dbg !2427
  %168 = load i32, i32* %12, align 4, !dbg !2428
  %169 = zext i32 %168 to i64, !dbg !2428
  call void @gsl_matrix_view_array(%struct._gsl_matrix_view* sret %23, double* %165, i64 %167, i64 %169), !dbg !2429
  %170 = bitcast %struct._gsl_matrix_view* %19 to i8*, !dbg !2429
  %171 = bitcast %struct._gsl_matrix_view* %23 to i8*, !dbg !2429
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %170, i8* %171, i64 48, i32 8, i1 false), !dbg !2430
  %172 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %10, align 8, !dbg !2432
  %173 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %172, i32 0, i32 13, !dbg !2433
  %174 = load %struct.gsl_vector*, %struct.gsl_vector** %173, align 8, !dbg !2433
  %175 = load i32, i32* %12, align 4, !dbg !2434
  %176 = zext i32 %175 to i64, !dbg !2434
  call void @gsl_vector_subvector(%struct._gsl_vector_view* sret %24, %struct.gsl_vector* %174, i64 0, i64 %176), !dbg !2435
  %177 = bitcast %struct._gsl_vector_view* %21 to i8*, !dbg !2435
  %178 = bitcast %struct._gsl_vector_view* %24 to i8*, !dbg !2435
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %177, i8* %178, i64 40, i32 8, i1 false), !dbg !2436
  %179 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %10, align 8, !dbg !2437
  %180 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %179, i32 0, i32 14, !dbg !2438
  %181 = load %struct.gsl_matrix*, %struct.gsl_matrix** %180, align 8, !dbg !2438
  %182 = load i32, i32* %12, align 4, !dbg !2439
  %183 = zext i32 %182 to i64, !dbg !2439
  %184 = load i32, i32* %12, align 4, !dbg !2440
  %185 = zext i32 %184 to i64, !dbg !2440
  call void @gsl_matrix_submatrix(%struct._gsl_matrix_view* sret %25, %struct.gsl_matrix* %181, i64 0, i64 0, i64 %183, i64 %185), !dbg !2441
  %186 = bitcast %struct._gsl_matrix_view* %20 to i8*, !dbg !2441
  %187 = bitcast %struct._gsl_matrix_view* %25 to i8*, !dbg !2441
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %186, i8* %187, i64 48, i32 8, i1 false), !dbg !2442
  %188 = getelementptr inbounds %struct._gsl_matrix_view, %struct._gsl_matrix_view* %19, i32 0, i32 0, !dbg !2443
  %189 = getelementptr inbounds %struct._gsl_vector_view, %struct._gsl_vector_view* %21, i32 0, i32 0, !dbg !2444
  %190 = getelementptr inbounds %struct._gsl_matrix_view, %struct._gsl_matrix_view* %20, i32 0, i32 0, !dbg !2445
  %191 = load %struct.gsl_eigen_symmv_workspace*, %struct.gsl_eigen_symmv_workspace** %22, align 8, !dbg !2446
  %192 = call i32 @gsl_eigen_symmv(%struct.gsl_matrix* %188, %struct.gsl_vector* %189, %struct.gsl_matrix* %190, %struct.gsl_eigen_symmv_workspace* %191), !dbg !2447
  %193 = getelementptr inbounds %struct._gsl_vector_view, %struct._gsl_vector_view* %21, i32 0, i32 0, !dbg !2448
  %194 = getelementptr inbounds %struct._gsl_matrix_view, %struct._gsl_matrix_view* %20, i32 0, i32 0, !dbg !2449
  %195 = call i32 @gsl_eigen_symmv_sort(%struct.gsl_vector* %193, %struct.gsl_matrix* %194, i32 0), !dbg !2450
  %196 = load double*, double** %18, align 8, !dbg !2451
  %197 = getelementptr inbounds double, double* %196, i64 0, !dbg !2451
  store double 0.000000e+00, double* %197, align 8, !dbg !2452
  store i32 0, i32* %15, align 4, !dbg !2453
  br label %198, !dbg !2455

; <label>:198:                                    ; preds = %218, %164
  %199 = load i32, i32* %15, align 4, !dbg !2456
  %200 = load i32, i32* %12, align 4, !dbg !2459
  %201 = load i32, i32* %14, align 4, !dbg !2460
  %202 = sub i32 %200, %201, !dbg !2461
  %203 = icmp ult i32 %199, %202, !dbg !2462
  %204 = sext i32 %199 to i64, !dbg !2463
  %205 = sext i32 %202 to i64, !dbg !2463
  %206 = call i1 @iCmpInstHandler(i64 %204, i64 %205, i1 %203, i32 36, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @21, i32 0, i32 0), i64 94380178020192, i32 842, i32 16), !dbg !2463
  br i1 %206, label %207, label %221, !dbg !2463

; <label>:207:                                    ; preds = %198
  %208 = getelementptr inbounds %struct._gsl_vector_view, %struct._gsl_vector_view* %21, i32 0, i32 0, !dbg !2464
  %209 = load i32, i32* %15, align 4, !dbg !2465
  %210 = zext i32 %209 to i64, !dbg !2465
  %211 = call double @gsl_vector_get(%struct.gsl_vector* %208, i64 %210), !dbg !2466
  %212 = load i32, i32* %15, align 4, !dbg !2467
  %213 = add i32 %212, 1, !dbg !2468
  %214 = mul i32 2, %213, !dbg !2469
  %215 = zext i32 %214 to i64, !dbg !2470
  %216 = load double*, double** %18, align 8, !dbg !2470
  %217 = getelementptr inbounds double, double* %216, i64 %215, !dbg !2470
  store double %211, double* %217, align 8, !dbg !2471
  br label %218, !dbg !2470

; <label>:218:                                    ; preds = %207
  %219 = load i32, i32* %15, align 4, !dbg !2472
  %220 = add i32 %219, 1, !dbg !2472
  store i32 %220, i32* %15, align 4, !dbg !2472
  br label %198, !dbg !2474, !llvm.loop !2475

; <label>:221:                                    ; preds = %198
  store i32 0, i32* %15, align 4, !dbg !2477
  br label %222, !dbg !2479

; <label>:222:                                    ; preds = %236, %221
  %223 = load i32, i32* %15, align 4, !dbg !2480
  %224 = load i32, i32* %13, align 4, !dbg !2483
  %225 = load i32, i32* %13, align 4, !dbg !2484
  %226 = mul i32 %224, %225, !dbg !2485
  %227 = icmp ult i32 %223, %226, !dbg !2486
  %228 = sext i32 %223 to i64, !dbg !2487
  %229 = sext i32 %226 to i64, !dbg !2487
  %230 = call i1 @iCmpInstHandler(i64 %228, i64 %229, i1 %227, i32 36, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @21, i32 0, i32 0), i64 94380178033504, i32 846, i32 16), !dbg !2487
  br i1 %230, label %231, label %239, !dbg !2487

; <label>:231:                                    ; preds = %222
  %232 = load i32, i32* %15, align 4, !dbg !2488
  %233 = zext i32 %232 to i64, !dbg !2489
  %234 = load double*, double** %17, align 8, !dbg !2489
  %235 = getelementptr inbounds double, double* %234, i64 %233, !dbg !2489
  store double 0.000000e+00, double* %235, align 8, !dbg !2490
  br label %236, !dbg !2489

; <label>:236:                                    ; preds = %231
  %237 = load i32, i32* %15, align 4, !dbg !2491
  %238 = add i32 %237, 1, !dbg !2491
  store i32 %238, i32* %15, align 4, !dbg !2491
  br label %222, !dbg !2493, !llvm.loop !2494

; <label>:239:                                    ; preds = %222
  store i32 0, i32* %15, align 4, !dbg !2496
  br label %240, !dbg !2498

; <label>:240:                                    ; preds = %311, %239
  %241 = load i32, i32* %15, align 4, !dbg !2499
  %242 = load i32, i32* %13, align 4, !dbg !2502
  %243 = icmp ult i32 %241, %242, !dbg !2503
  %244 = sext i32 %241 to i64, !dbg !2504
  %245 = sext i32 %242 to i64, !dbg !2504
  %246 = call i1 @iCmpInstHandler(i64 %244, i64 %245, i1 %243, i32 36, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @21, i32 0, i32 0), i64 94380178042176, i32 848, i32 16), !dbg !2504
  br i1 %246, label %247, label %314, !dbg !2504

; <label>:247:                                    ; preds = %240
  store i32 0, i32* %16, align 4, !dbg !2505
  br label %248, !dbg !2507

; <label>:248:                                    ; preds = %307, %247
  %249 = load i32, i32* %16, align 4, !dbg !2508
  %250 = load i32, i32* %13, align 4, !dbg !2511
  %251 = icmp ult i32 %249, %250, !dbg !2512
  %252 = sext i32 %249 to i64, !dbg !2513
  %253 = sext i32 %250 to i64, !dbg !2513
  %254 = call i1 @iCmpInstHandler(i64 %252, i64 %253, i1 %251, i32 36, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @21, i32 0, i32 0), i64 94380178044896, i32 849, i32 20), !dbg !2513
  br i1 %254, label %255, label %310, !dbg !2513

; <label>:255:                                    ; preds = %248
  %256 = load i32, i32* %15, align 4, !dbg !2514
  %257 = load i32, i32* %16, align 4, !dbg !2517
  %258 = icmp eq i32 %256, %257, !dbg !2518
  %259 = sext i32 %256 to i64, !dbg !2519
  %260 = sext i32 %257 to i64, !dbg !2519
  %261 = call i1 @iCmpInstHandler(i64 %259, i64 %260, i1 %258, i32 32, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @21, i32 0, i32 0), i64 94380178046736, i32 851, i32 18), !dbg !2519
  br i1 %261, label %262, label %279, !dbg !2519

; <label>:262:                                    ; preds = %255
  %263 = load i32, i32* %15, align 4, !dbg !2520
  %264 = mul i32 2, %263, !dbg !2521
  %265 = add i32 %264, 1, !dbg !2522
  %266 = load i32, i32* %15, align 4, !dbg !2523
  %267 = mul i32 2, %266, !dbg !2524
  %268 = add i32 %267, 1, !dbg !2525
  %269 = mul i32 %265, %268, !dbg !2526
  %270 = uitofp i32 %269 to double, !dbg !2527
  %271 = load i32, i32* %15, align 4, !dbg !2528
  %272 = load i32, i32* %13, align 4, !dbg !2529
  %273 = mul i32 %271, %272, !dbg !2530
  %274 = load i32, i32* %16, align 4, !dbg !2531
  %275 = add i32 %273, %274, !dbg !2532
  %276 = zext i32 %275 to i64, !dbg !2533
  %277 = load double*, double** %17, align 8, !dbg !2533
  %278 = getelementptr inbounds double, double* %277, i64 %276, !dbg !2533
  store double %270, double* %278, align 8, !dbg !2534
  br label %306, !dbg !2533

; <label>:279:                                    ; preds = %255
  %280 = load i32, i32* %15, align 4, !dbg !2535
  %281 = load i32, i32* %16, align 4, !dbg !2537
  %282 = add i32 %281, 1, !dbg !2538
  %283 = icmp eq i32 %280, %282, !dbg !2539
  %284 = sext i32 %280 to i64, !dbg !2540
  %285 = sext i32 %282 to i64, !dbg !2540
  %286 = call i1 @iCmpInstHandler(i64 %284, i64 %285, i1 %283, i32 32, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @21, i32 0, i32 0), i64 94380178056976, i32 853, i32 23), !dbg !2540
  br i1 %286, label %295, label %287, !dbg !2540

; <label>:287:                                    ; preds = %279
  %288 = load i32, i32* %15, align 4, !dbg !2541
  %289 = add i32 %288, 1, !dbg !2543
  %290 = load i32, i32* %16, align 4, !dbg !2544
  %291 = icmp eq i32 %289, %290, !dbg !2545
  %292 = sext i32 %289 to i64, !dbg !2546
  %293 = sext i32 %290 to i64, !dbg !2546
  %294 = call i1 @iCmpInstHandler(i64 %292, i64 %293, i1 %291, i32 32, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @21, i32 0, i32 0), i64 94380178059232, i32 853, i32 43), !dbg !2546
  br i1 %294, label %295, label %305, !dbg !2546

; <label>:295:                                    ; preds = %287, %279
  %296 = load double, double* %9, align 8, !dbg !2547
  %297 = load i32, i32* %15, align 4, !dbg !2548
  %298 = load i32, i32* %13, align 4, !dbg !2549
  %299 = mul i32 %297, %298, !dbg !2550
  %300 = load i32, i32* %16, align 4, !dbg !2551
  %301 = add i32 %299, %300, !dbg !2552
  %302 = zext i32 %301 to i64, !dbg !2553
  %303 = load double*, double** %17, align 8, !dbg !2553
  %304 = getelementptr inbounds double, double* %303, i64 %302, !dbg !2553
  store double %296, double* %304, align 8, !dbg !2554
  br label %305, !dbg !2553

; <label>:305:                                    ; preds = %295, %287
  br label %306

; <label>:306:                                    ; preds = %305, %262
  br label %307, !dbg !2555

; <label>:307:                                    ; preds = %306
  %308 = load i32, i32* %16, align 4, !dbg !2556
  %309 = add i32 %308, 1, !dbg !2556
  store i32 %309, i32* %16, align 4, !dbg !2556
  br label %248, !dbg !2558, !llvm.loop !2559

; <label>:310:                                    ; preds = %248
  br label %311, !dbg !2561

; <label>:311:                                    ; preds = %310
  %312 = load i32, i32* %15, align 4, !dbg !2563
  %313 = add i32 %312, 1, !dbg !2563
  store i32 %313, i32* %15, align 4, !dbg !2563
  br label %240, !dbg !2565, !llvm.loop !2566

; <label>:314:                                    ; preds = %240
  %315 = load double, double* %9, align 8, !dbg !2568
  %316 = load double*, double** %17, align 8, !dbg !2569
  %317 = getelementptr inbounds double, double* %316, i64 0, !dbg !2569
  %318 = load double, double* %317, align 8, !dbg !2570
  %319 = fsub double %318, %315, !dbg !2570
  call void @fSubHandler(double %318, double %315, double %319, i64 94380178076200, i64 94380178073800, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @21, i32 0, i32 0), i64 94380178076608, i32 857, i32 9), !dbg !2570
  store double %319, double* %317, align 8, !dbg !2570
  %320 = load double*, double** %17, align 8, !dbg !2571
  %321 = load i32, i32* %13, align 4, !dbg !2572
  %322 = zext i32 %321 to i64, !dbg !2572
  %323 = load i32, i32* %13, align 4, !dbg !2573
  %324 = zext i32 %323 to i64, !dbg !2573
  call void @gsl_matrix_view_array(%struct._gsl_matrix_view* sret %26, double* %320, i64 %322, i64 %324), !dbg !2574
  %325 = bitcast %struct._gsl_matrix_view* %19 to i8*, !dbg !2574
  %326 = bitcast %struct._gsl_matrix_view* %26 to i8*, !dbg !2574
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %325, i8* %326, i64 48, i32 8, i1 false), !dbg !2575
  %327 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %10, align 8, !dbg !2576
  %328 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %327, i32 0, i32 13, !dbg !2577
  %329 = load %struct.gsl_vector*, %struct.gsl_vector** %328, align 8, !dbg !2577
  %330 = load i32, i32* %13, align 4, !dbg !2578
  %331 = zext i32 %330 to i64, !dbg !2578
  call void @gsl_vector_subvector(%struct._gsl_vector_view* sret %27, %struct.gsl_vector* %329, i64 0, i64 %331), !dbg !2579
  %332 = bitcast %struct._gsl_vector_view* %21 to i8*, !dbg !2579
  %333 = bitcast %struct._gsl_vector_view* %27 to i8*, !dbg !2579
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %332, i8* %333, i64 40, i32 8, i1 false), !dbg !2580
  %334 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %10, align 8, !dbg !2581
  %335 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %334, i32 0, i32 14, !dbg !2582
  %336 = load %struct.gsl_matrix*, %struct.gsl_matrix** %335, align 8, !dbg !2582
  %337 = load i32, i32* %13, align 4, !dbg !2583
  %338 = zext i32 %337 to i64, !dbg !2583
  %339 = load i32, i32* %13, align 4, !dbg !2584
  %340 = zext i32 %339 to i64, !dbg !2584
  call void @gsl_matrix_submatrix(%struct._gsl_matrix_view* sret %28, %struct.gsl_matrix* %336, i64 0, i64 0, i64 %338, i64 %340), !dbg !2585
  %341 = bitcast %struct._gsl_matrix_view* %20 to i8*, !dbg !2585
  %342 = bitcast %struct._gsl_matrix_view* %28 to i8*, !dbg !2585
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %341, i8* %342, i64 48, i32 8, i1 false), !dbg !2586
  %343 = getelementptr inbounds %struct._gsl_matrix_view, %struct._gsl_matrix_view* %19, i32 0, i32 0, !dbg !2587
  %344 = getelementptr inbounds %struct._gsl_vector_view, %struct._gsl_vector_view* %21, i32 0, i32 0, !dbg !2588
  %345 = getelementptr inbounds %struct._gsl_matrix_view, %struct._gsl_matrix_view* %20, i32 0, i32 0, !dbg !2589
  %346 = load %struct.gsl_eigen_symmv_workspace*, %struct.gsl_eigen_symmv_workspace** %22, align 8, !dbg !2590
  %347 = call i32 @gsl_eigen_symmv(%struct.gsl_matrix* %343, %struct.gsl_vector* %344, %struct.gsl_matrix* %345, %struct.gsl_eigen_symmv_workspace* %346), !dbg !2591
  %348 = getelementptr inbounds %struct._gsl_vector_view, %struct._gsl_vector_view* %21, i32 0, i32 0, !dbg !2592
  %349 = getelementptr inbounds %struct._gsl_matrix_view, %struct._gsl_matrix_view* %20, i32 0, i32 0, !dbg !2593
  %350 = call i32 @gsl_eigen_symmv_sort(%struct.gsl_vector* %348, %struct.gsl_matrix* %349, i32 0), !dbg !2594
  store i32 0, i32* %15, align 4, !dbg !2595
  br label %351, !dbg !2597

; <label>:351:                                    ; preds = %371, %314
  %352 = load i32, i32* %15, align 4, !dbg !2598
  %353 = load i32, i32* %13, align 4, !dbg !2601
  %354 = load i32, i32* %14, align 4, !dbg !2602
  %355 = sub i32 %353, %354, !dbg !2603
  %356 = icmp ult i32 %352, %355, !dbg !2604
  %357 = sext i32 %352 to i64, !dbg !2605
  %358 = sext i32 %355 to i64, !dbg !2605
  %359 = call i1 @iCmpInstHandler(i64 %357, i64 %358, i1 %356, i32 36, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @21, i32 0, i32 0), i64 94380178108960, i32 866, i32 16), !dbg !2605
  br i1 %359, label %360, label %374, !dbg !2605

; <label>:360:                                    ; preds = %351
  %361 = getelementptr inbounds %struct._gsl_vector_view, %struct._gsl_vector_view* %21, i32 0, i32 0, !dbg !2606
  %362 = load i32, i32* %15, align 4, !dbg !2607
  %363 = zext i32 %362 to i64, !dbg !2607
  %364 = call double @gsl_vector_get(%struct.gsl_vector* %361, i64 %363), !dbg !2608
  %365 = load i32, i32* %15, align 4, !dbg !2609
  %366 = mul i32 2, %365, !dbg !2610
  %367 = add i32 %366, 1, !dbg !2611
  %368 = zext i32 %367 to i64, !dbg !2612
  %369 = load double*, double** %18, align 8, !dbg !2612
  %370 = getelementptr inbounds double, double* %369, i64 %368, !dbg !2612
  store double %364, double* %370, align 8, !dbg !2613
  br label %371, !dbg !2612

; <label>:371:                                    ; preds = %360
  %372 = load i32, i32* %15, align 4, !dbg !2614
  %373 = add i32 %372, 1, !dbg !2614
  store i32 %373, i32* %15, align 4, !dbg !2614
  br label %351, !dbg !2616, !llvm.loop !2617

; <label>:374:                                    ; preds = %351
  %375 = load i32, i32* %7, align 4, !dbg !2619
  store i32 %375, i32* %15, align 4, !dbg !2621
  br label %376, !dbg !2622

; <label>:376:                                    ; preds = %395, %374
  %377 = load i32, i32* %15, align 4, !dbg !2623
  %378 = load i32, i32* %8, align 4, !dbg !2626
  %379 = icmp ule i32 %377, %378, !dbg !2627
  %380 = sext i32 %377 to i64, !dbg !2628
  %381 = sext i32 %378 to i64, !dbg !2628
  %382 = call i1 @iCmpInstHandler(i64 %380, i64 %381, i1 %379, i32 37, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @21, i32 0, i32 0), i64 94380178121856, i32 869, i32 28), !dbg !2628
  br i1 %382, label %383, label %398, !dbg !2628

; <label>:383:                                    ; preds = %376
  %384 = load i32, i32* %15, align 4, !dbg !2629
  %385 = zext i32 %384 to i64, !dbg !2631
  %386 = load double*, double** %18, align 8, !dbg !2631
  %387 = getelementptr inbounds double, double* %386, i64 %385, !dbg !2631
  %388 = load double, double* %387, align 8, !dbg !2631
  %389 = load i32, i32* %15, align 4, !dbg !2632
  %390 = load i32, i32* %7, align 4, !dbg !2633
  %391 = sub i32 %389, %390, !dbg !2634
  %392 = zext i32 %391 to i64, !dbg !2635
  %393 = load double*, double** %11, align 8, !dbg !2635
  %394 = getelementptr inbounds double, double* %393, i64 %392, !dbg !2635
  store double %388, double* %394, align 8, !dbg !2636
  br label %395, !dbg !2637

; <label>:395:                                    ; preds = %383
  %396 = load i32, i32* %15, align 4, !dbg !2638
  %397 = add i32 %396, 1, !dbg !2638
  store i32 %397, i32* %15, align 4, !dbg !2638
  br label %376, !dbg !2640, !llvm.loop !2641

; <label>:398:                                    ; preds = %376
  store i32 0, i32* %6, align 4, !dbg !2643
  br label %399, !dbg !2643

; <label>:399:                                    ; preds = %398, %70
  %400 = load i32, i32* %6, align 4, !dbg !2644
  ret i32 %400, !dbg !2644
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_mathieu_a(i32, double) #0 !dbg !2645 {
  %3 = alloca double, align 8
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca %struct.gsl_sf_result_struct, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2646, metadata !68), !dbg !2647
  store double %1, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !2648, metadata !68), !dbg !2649
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %6, metadata !2650, metadata !68), !dbg !2651
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2652, metadata !68), !dbg !2651
  %8 = load i32, i32* %4, align 4, !dbg !2651
  %9 = load double, double* %5, align 8, !dbg !2651
  %10 = call i32 @gsl_sf_mathieu_a_e(i32 %8, double %9, %struct.gsl_sf_result_struct* %6), !dbg !2651
  store i32 %10, i32* %7, align 4, !dbg !2651
  %11 = load i32, i32* %7, align 4, !dbg !2653
  %12 = icmp ne i32 %11, 0, !dbg !2653
  %13 = sext i32 %11 to i64, !dbg !2651
  %14 = call i1 @iCmpInstHandler(i64 %13, i64 0, i1 %12, i32 33, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @23, i32 0, i32 0), i64 94380178141008, i32 884, i32 2), !dbg !2651
  br i1 %14, label %15, label %21, !dbg !2651

; <label>:15:                                     ; preds = %2
  br label %16, !dbg !2655, !llvm.loop !2658

; <label>:16:                                     ; preds = %15
  %17 = load i32, i32* %7, align 4, !dbg !2660
  call void @gsl_error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i32 884, i32 %17), !dbg !2660
  %18 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !2660
  %19 = load double, double* %18, align 8, !dbg !2660
  store double %19, double* %3, align 8, !dbg !2660
  br label %24, !dbg !2660
                                                  ; No predecessors!
  br label %21, !dbg !2663

; <label>:21:                                     ; preds = %20, %2
  %22 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !2665
  %23 = load double, double* %22, align 8, !dbg !2665
  store double %23, double* %3, align 8, !dbg !2665
  br label %24, !dbg !2665

; <label>:24:                                     ; preds = %21, %16
  %25 = load double, double* %3, align 8, !dbg !2667
  ret double %25, !dbg !2667
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_mathieu_b(i32, double) #0 !dbg !2668 {
  %3 = alloca double, align 8
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca %struct.gsl_sf_result_struct, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2669, metadata !68), !dbg !2670
  store double %1, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !2671, metadata !68), !dbg !2672
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %6, metadata !2673, metadata !68), !dbg !2674
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2675, metadata !68), !dbg !2674
  %8 = load i32, i32* %4, align 4, !dbg !2674
  %9 = load double, double* %5, align 8, !dbg !2674
  %10 = call i32 @gsl_sf_mathieu_b_e(i32 %8, double %9, %struct.gsl_sf_result_struct* %6), !dbg !2674
  store i32 %10, i32* %7, align 4, !dbg !2674
  %11 = load i32, i32* %7, align 4, !dbg !2676
  %12 = icmp ne i32 %11, 0, !dbg !2676
  %13 = sext i32 %11 to i64, !dbg !2674
  %14 = call i1 @iCmpInstHandler(i64 %13, i64 0, i1 %12, i32 33, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @25, i32 0, i32 0), i64 94380178159824, i32 889, i32 2), !dbg !2674
  br i1 %14, label %15, label %21, !dbg !2674

; <label>:15:                                     ; preds = %2
  br label %16, !dbg !2678, !llvm.loop !2681

; <label>:16:                                     ; preds = %15
  %17 = load i32, i32* %7, align 4, !dbg !2683
  call void @gsl_error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i32 889, i32 %17), !dbg !2683
  %18 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !2683
  %19 = load double, double* %18, align 8, !dbg !2683
  store double %19, double* %3, align 8, !dbg !2683
  br label %24, !dbg !2683
                                                  ; No predecessors!
  br label %21, !dbg !2686

; <label>:21:                                     ; preds = %20, %2
  %22 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !2688
  %23 = load double, double* %22, align 8, !dbg !2688
  store double %23, double* %3, align 8, !dbg !2688
  br label %24, !dbg !2688

; <label>:24:                                     ; preds = %21, %16
  %25 = load double, double* %3, align 8, !dbg !2690
  ret double %25, !dbg !2690
}

; Function Attrs: nounwind
declare double @sqrt(double) #5

; Function Attrs: nounwind uwtable
define internal double @asymptotic(i32, double) #0 !dbg !2691 {
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
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
  %15 = alloca double, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2692, metadata !68), !dbg !2693
  store double %1, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !2694, metadata !68), !dbg !2695
  call void @llvm.dbg.declare(metadata double* %5, metadata !2696, metadata !68), !dbg !2697
  call void @llvm.dbg.declare(metadata double* %6, metadata !2698, metadata !68), !dbg !2699
  call void @llvm.dbg.declare(metadata double* %7, metadata !2700, metadata !68), !dbg !2701
  call void @llvm.dbg.declare(metadata double* %8, metadata !2702, metadata !68), !dbg !2703
  call void @llvm.dbg.declare(metadata double* %9, metadata !2704, metadata !68), !dbg !2705
  call void @llvm.dbg.declare(metadata double* %10, metadata !2706, metadata !68), !dbg !2707
  call void @llvm.dbg.declare(metadata double* %11, metadata !2708, metadata !68), !dbg !2709
  call void @llvm.dbg.declare(metadata double* %12, metadata !2710, metadata !68), !dbg !2711
  call void @llvm.dbg.declare(metadata double* %13, metadata !2712, metadata !68), !dbg !2713
  call void @llvm.dbg.declare(metadata double* %14, metadata !2714, metadata !68), !dbg !2715
  call void @llvm.dbg.declare(metadata double* %15, metadata !2716, metadata !68), !dbg !2717
  %16 = load i32, i32* %3, align 4, !dbg !2718
  %17 = mul nsw i32 2, %16, !dbg !2719
  %18 = add nsw i32 %17, 1, !dbg !2720
  %19 = sitofp i32 %18 to double, !dbg !2721
  store double %19, double* %6, align 8, !dbg !2722
  %20 = load double, double* %6, align 8, !dbg !2723
  %21 = load double, double* %6, align 8, !dbg !2724
  %22 = fmul double %20, %21, !dbg !2725
  call void @fMulHandler(double %20, double %21, double %22, i64 94380178188760, i64 94380178189144, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @27, i32 0, i32 0), i64 94380178189552, i32 153, i32 10), !dbg !2726
  store double %22, double* %7, align 8, !dbg !2726
  %23 = load double, double* %7, align 8, !dbg !2727
  %24 = load double, double* %7, align 8, !dbg !2728
  %25 = fmul double %23, %24, !dbg !2729
  call void @fMulHandler(double %23, double %24, double %25, i64 94380178190360, i64 94380178190744, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @27, i32 0, i32 0), i64 94380178191152, i32 154, i32 10), !dbg !2730
  store double %25, double* %8, align 8, !dbg !2730
  %26 = load double, double* %8, align 8, !dbg !2731
  %27 = load double, double* %7, align 8, !dbg !2732
  %28 = fmul double %26, %27, !dbg !2733
  call void @fMulHandler(double %26, double %27, double %28, i64 94380178191960, i64 94380178192344, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @27, i32 0, i32 0), i64 94380178192752, i32 155, i32 10), !dbg !2734
  store double %28, double* %9, align 8, !dbg !2734
  %29 = load double, double* %4, align 8, !dbg !2735
  %30 = call double @sqrt(double %29) #6, !dbg !2736
  call void @callOneArgHandler(i32 14, double %29, double %30, i64 94380178193560, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @27, i32 0, i32 0), i64 94380178158912, i32 157, i32 10), !dbg !2737
  %31 = fmul double 2.000000e+00, %30, !dbg !2737
  call void @fMulHandler(double 2.000000e+00, double %30, double %31, i64 0, i64 94380178158912, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @27, i32 0, i32 0), i64 94380178194400, i32 157, i32 9), !dbg !2738
  store double %31, double* %10, align 8, !dbg !2738
  %32 = load double, double* %10, align 8, !dbg !2739
  %33 = fmul double 1.600000e+01, %32, !dbg !2740
  call void @fMulHandler(double 1.600000e+01, double %32, double %33, i64 0, i64 94380178195176, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @27, i32 0, i32 0), i64 94380178195616, i32 158, i32 10), !dbg !2741
  store double %33, double* %11, align 8, !dbg !2741
  %34 = load double, double* %11, align 8, !dbg !2742
  %35 = load double, double* %11, align 8, !dbg !2743
  %36 = fmul double %34, %35, !dbg !2744
  call void @fMulHandler(double %34, double %35, double %36, i64 94380178196392, i64 94380178196776, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @27, i32 0, i32 0), i64 94380178197184, i32 159, i32 11), !dbg !2745
  store double %36, double* %12, align 8, !dbg !2745
  %37 = load double, double* %12, align 8, !dbg !2746
  %38 = load double, double* %11, align 8, !dbg !2747
  %39 = fmul double %37, %38, !dbg !2748
  call void @fMulHandler(double %37, double %38, double %39, i64 94380178197992, i64 94380178198376, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @27, i32 0, i32 0), i64 94380178198784, i32 160, i32 12), !dbg !2749
  store double %39, double* %13, align 8, !dbg !2749
  %40 = load double, double* %13, align 8, !dbg !2750
  %41 = load double, double* %11, align 8, !dbg !2751
  %42 = fmul double %40, %41, !dbg !2752
  call void @fMulHandler(double %40, double %41, double %42, i64 94380178199592, i64 94380178199976, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @27, i32 0, i32 0), i64 94380178200384, i32 161, i32 12), !dbg !2753
  store double %42, double* %14, align 8, !dbg !2753
  %43 = load double, double* %14, align 8, !dbg !2754
  %44 = load double, double* %11, align 8, !dbg !2755
  %45 = fmul double %43, %44, !dbg !2756
  call void @fMulHandler(double %43, double %44, double %45, i64 94380178201192, i64 94380178201576, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @27, i32 0, i32 0), i64 94380178201984, i32 162, i32 12), !dbg !2757
  store double %45, double* %15, align 8, !dbg !2757
  %46 = load double, double* %4, align 8, !dbg !2758
  %47 = fmul double -2.000000e+00, %46, !dbg !2759
  call void @fMulHandler(double -2.000000e+00, double %46, double %47, i64 0, i64 94380178202792, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @27, i32 0, i32 0), i64 94380178203296, i32 165, i32 13), !dbg !2760
  %48 = load double, double* %6, align 8, !dbg !2760
  %49 = load double, double* %10, align 8, !dbg !2761
  %50 = fmul double %48, %49, !dbg !2762
  call void @fMulHandler(double %48, double %49, double %50, i64 94380178203656, i64 94380178204040, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @27, i32 0, i32 0), i64 94380178204448, i32 165, i32 21), !dbg !2763
  %51 = fadd double %47, %50, !dbg !2763
  call void @fAddHandler(double %47, double %50, double %51, i64 94380178203296, i64 94380178204448, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @27, i32 0, i32 0), i64 94380178204864, i32 165, i32 17), !dbg !2764
  %52 = load double, double* %7, align 8, !dbg !2764
  %53 = fadd double %52, 1.000000e+00, !dbg !2765
  call void @fAddHandler(double %52, double 1.000000e+00, double %53, i64 94380178205256, i64 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @27, i32 0, i32 0), i64 94380178205696, i32 165, i32 37), !dbg !2766
  %54 = fmul double 1.250000e-01, %53, !dbg !2766
  call void @fMulHandler(double 1.250000e-01, double %53, double %54, i64 0, i64 94380178205696, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @27, i32 0, i32 0), i64 94380178206176, i32 165, i32 32), !dbg !2767
  %55 = fsub double %51, %54, !dbg !2767
  call void @fSubHandler(double %51, double %54, double %55, i64 94380178204864, i64 94380178206176, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @27, i32 0, i32 0), i64 94380178206560, i32 165, i32 25), !dbg !2768
  store double %55, double* %5, align 8, !dbg !2768
  %56 = load double, double* %6, align 8, !dbg !2769
  %57 = fmul double 2.500000e-01, %56, !dbg !2770
  call void @fMulHandler(double 2.500000e-01, double %56, double %57, i64 0, i64 94380178207368, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @27, i32 0, i32 0), i64 94380178207872, i32 166, i32 16), !dbg !2771
  %58 = load double, double* %7, align 8, !dbg !2771
  %59 = fadd double %58, 3.000000e+00, !dbg !2772
  call void @fAddHandler(double %58, double 3.000000e+00, double %59, i64 94380178208232, i64 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @27, i32 0, i32 0), i64 94380178208672, i32 166, i32 50), !dbg !2773
  %60 = fmul double %57, %59, !dbg !2773
  call void @fMulHandler(double %57, double %59, double %60, i64 94380178207872, i64 94380178208672, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @27, i32 0, i32 0), i64 94380178209056, i32 166, i32 19), !dbg !2774
  %61 = load double, double* %11, align 8, !dbg !2774
  %62 = fdiv double %60, %61, !dbg !2775
  call void @fDivHandler(double %60, double %61, double %62, i64 94380178209056, i64 94380178209448, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @27, i32 0, i32 0), i64 94380178209856, i32 166, i32 58), !dbg !2776
  %63 = load double, double* %5, align 8, !dbg !2776
  %64 = fsub double %63, %62, !dbg !2776
  call void @fSubHandler(double %63, double %62, double %64, i64 94380178210248, i64 94380178209856, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @27, i32 0, i32 0), i64 94380178210656, i32 166, i32 9), !dbg !2776
  store double %64, double* %5, align 8, !dbg !2776
  %65 = load double, double* %8, align 8, !dbg !2777
  %66 = fmul double 5.000000e+00, %65, !dbg !2778
  call void @fMulHandler(double 5.000000e+00, double %65, double %66, i64 0, i64 94380178212440, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @27, i32 0, i32 0), i64 94380178212880, i32 167, i32 35), !dbg !2779
  %67 = load double, double* %7, align 8, !dbg !2779
  %68 = fmul double 3.400000e+01, %67, !dbg !2780
  call void @fMulHandler(double 3.400000e+01, double %67, double %68, i64 0, i64 94380178213240, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @27, i32 0, i32 0), i64 94380178213744, i32 167, i32 46), !dbg !2781
  %69 = fadd double %66, %68, !dbg !2781
  call void @fAddHandler(double %66, double %68, double %69, i64 94380178212880, i64 94380178213744, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @27, i32 0, i32 0), i64 94380178214128, i32 167, i32 39), !dbg !2782
  %70 = fadd double %69, 9.000000e+00, !dbg !2782
  call void @fAddHandler(double %69, double 9.000000e+00, double %70, i64 94380178214128, i64 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @27, i32 0, i32 0), i64 94380178214576, i32 167, i32 50), !dbg !2783
  %71 = fmul double 2.500000e-01, %70, !dbg !2783
  call void @fMulHandler(double 2.500000e-01, double %70, double %71, i64 0, i64 94380178214576, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @27, i32 0, i32 0), i64 94380178214992, i32 167, i32 16), !dbg !2784
  %72 = load double, double* %12, align 8, !dbg !2784
  %73 = fdiv double %71, %72, !dbg !2785
  call void @fDivHandler(double %71, double %72, double %73, i64 94380178214992, i64 94380178215352, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @27, i32 0, i32 0), i64 94380178215760, i32 167, i32 58), !dbg !2786
  %74 = load double, double* %5, align 8, !dbg !2786
  %75 = fsub double %74, %73, !dbg !2786
  call void @fSubHandler(double %74, double %73, double %75, i64 94380178216152, i64 94380178215760, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @27, i32 0, i32 0), i64 94380178216560, i32 167, i32 9), !dbg !2786
  store double %75, double* %5, align 8, !dbg !2786
  %76 = load double, double* %6, align 8, !dbg !2787
  %77 = fmul double 2.500000e-01, %76, !dbg !2788
  call void @fMulHandler(double 2.500000e-01, double %76, double %77, i64 0, i64 94380178218344, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @27, i32 0, i32 0), i64 94380178218784, i32 168, i32 16), !dbg !2789
  %78 = load double, double* %8, align 8, !dbg !2789
  %79 = fmul double 3.300000e+01, %78, !dbg !2790
  call void @fMulHandler(double 3.300000e+01, double %78, double %79, i64 0, i64 94380178219144, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @27, i32 0, i32 0), i64 94380178219648, i32 168, i32 35), !dbg !2791
  %80 = load double, double* %7, align 8, !dbg !2791
  %81 = fmul double 4.100000e+02, %80, !dbg !2792
  call void @fMulHandler(double 4.100000e+02, double %80, double %81, i64 0, i64 94380178220008, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @27, i32 0, i32 0), i64 94380178220512, i32 168, i32 46), !dbg !2793
  %82 = fadd double %79, %81, !dbg !2793
  call void @fAddHandler(double %79, double %81, double %82, i64 94380178219648, i64 94380178220512, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @27, i32 0, i32 0), i64 94380178220896, i32 168, i32 39), !dbg !2794
  %83 = fadd double %82, 4.050000e+02, !dbg !2794
  call void @fAddHandler(double %82, double 4.050000e+02, double %83, i64 94380178220896, i64 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @27, i32 0, i32 0), i64 94380178221408, i32 168, i32 50), !dbg !2795
  %84 = fmul double %77, %83, !dbg !2795
  call void @fMulHandler(double %77, double %83, double %84, i64 94380178218784, i64 94380178221408, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @27, i32 0, i32 0), i64 94380178221792, i32 168, i32 19), !dbg !2796
  %85 = load double, double* %13, align 8, !dbg !2796
  %86 = fdiv double %84, %85, !dbg !2797
  call void @fDivHandler(double %84, double %85, double %86, i64 94380178221792, i64 94380178222184, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @27, i32 0, i32 0), i64 94380178222592, i32 168, i32 58), !dbg !2798
  %87 = load double, double* %5, align 8, !dbg !2798
  %88 = fsub double %87, %86, !dbg !2798
  call void @fSubHandler(double %87, double %86, double %88, i64 94380178222984, i64 94380178222592, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @27, i32 0, i32 0), i64 94380178223392, i32 168, i32 9), !dbg !2798
  store double %88, double* %5, align 8, !dbg !2798
  %89 = load double, double* %9, align 8, !dbg !2799
  %90 = fmul double 6.300000e+01, %89, !dbg !2800
  call void @fMulHandler(double 6.300000e+01, double %89, double %90, i64 0, i64 94380178225176, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @27, i32 0, i32 0), i64 94380178225680, i32 169, i32 24), !dbg !2801
  %91 = load double, double* %8, align 8, !dbg !2801
  %92 = fmul double 1.260000e+03, %91, !dbg !2802
  call void @fMulHandler(double 1.260000e+03, double %91, double %92, i64 0, i64 94380178226040, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @27, i32 0, i32 0), i64 94380178226544, i32 169, i32 35), !dbg !2803
  %93 = fadd double %90, %92, !dbg !2803
  call void @fAddHandler(double %90, double %92, double %93, i64 94380178225680, i64 94380178226544, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @27, i32 0, i32 0), i64 94380178226928, i32 169, i32 28), !dbg !2804
  %94 = load double, double* %7, align 8, !dbg !2804
  %95 = fmul double 2.943000e+03, %94, !dbg !2805
  call void @fMulHandler(double 2.943000e+03, double %94, double %95, i64 0, i64 94380178227320, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @27, i32 0, i32 0), i64 94380178227824, i32 169, i32 46), !dbg !2806
  %96 = fadd double %93, %95, !dbg !2806
  call void @fAddHandler(double %93, double %95, double %96, i64 94380178226928, i64 94380178227824, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @27, i32 0, i32 0), i64 94380178228208, i32 169, i32 39), !dbg !2807
  %97 = fadd double %96, 4.860000e+02, !dbg !2807
  call void @fAddHandler(double %96, double 4.860000e+02, double %97, i64 94380178228208, i64 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @27, i32 0, i32 0), i64 94380178228720, i32 169, i32 50), !dbg !2808
  %98 = load double, double* %14, align 8, !dbg !2808
  %99 = fdiv double %97, %98, !dbg !2809
  call void @fDivHandler(double %97, double %98, double %99, i64 94380178228720, i64 94380178229080, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @27, i32 0, i32 0), i64 94380178229488, i32 169, i32 58), !dbg !2810
  %100 = load double, double* %5, align 8, !dbg !2810
  %101 = fsub double %100, %99, !dbg !2810
  call void @fSubHandler(double %100, double %99, double %101, i64 94380178229880, i64 94380178229488, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @27, i32 0, i32 0), i64 94380178230288, i32 169, i32 9), !dbg !2810
  store double %101, double* %5, align 8, !dbg !2810
  %102 = load double, double* %6, align 8, !dbg !2811
  %103 = load double, double* %9, align 8, !dbg !2812
  %104 = fmul double 5.270000e+02, %103, !dbg !2813
  call void @fMulHandler(double 5.270000e+02, double %103, double %104, i64 0, i64 94380178232456, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @27, i32 0, i32 0), i64 94380178232960, i32 170, i32 24), !dbg !2814
  %105 = load double, double* %8, align 8, !dbg !2814
  %106 = fmul double 1.561700e+04, %105, !dbg !2815
  call void @fMulHandler(double 1.561700e+04, double %105, double %106, i64 0, i64 94380178233320, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @27, i32 0, i32 0), i64 94380178233824, i32 170, i32 35), !dbg !2816
  %107 = fadd double %104, %106, !dbg !2816
  call void @fAddHandler(double %104, double %106, double %107, i64 94380178232960, i64 94380178233824, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @27, i32 0, i32 0), i64 94380178234208, i32 170, i32 28), !dbg !2817
  %108 = load double, double* %7, align 8, !dbg !2817
  %109 = fmul double 6.900100e+04, %108, !dbg !2818
  call void @fMulHandler(double 6.900100e+04, double %108, double %109, i64 0, i64 94380178234600, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @27, i32 0, i32 0), i64 94380176622064, i32 170, i32 46), !dbg !2819
  %110 = fadd double %107, %109, !dbg !2819
  call void @fAddHandler(double %107, double %109, double %110, i64 94380178234208, i64 94380176622064, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @27, i32 0, i32 0), i64 94380176622448, i32 170, i32 39), !dbg !2820
  %111 = fadd double %110, 4.160700e+04, !dbg !2820
  call void @fAddHandler(double %110, double 4.160700e+04, double %111, i64 94380176622448, i64 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @27, i32 0, i32 0), i64 94380176622960, i32 170, i32 50), !dbg !2821
  %112 = fmul double %102, %111, !dbg !2821
  call void @fMulHandler(double %102, double %111, double %112, i64 94380178232072, i64 94380176622960, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @27, i32 0, i32 0), i64 94380176623344, i32 170, i32 19), !dbg !2822
  %113 = load double, double* %15, align 8, !dbg !2822
  %114 = fdiv double %112, %113, !dbg !2823
  call void @fDivHandler(double %112, double %113, double %114, i64 94380176623344, i64 94380176623736, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @27, i32 0, i32 0), i64 94380178239280, i32 170, i32 58), !dbg !2824
  %115 = load double, double* %5, align 8, !dbg !2824
  %116 = fsub double %115, %114, !dbg !2824
  call void @fSubHandler(double %115, double %114, double %116, i64 94380178239640, i64 94380178239280, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @27, i32 0, i32 0), i64 94380178240048, i32 170, i32 9), !dbg !2824
  store double %116, double* %5, align 8, !dbg !2824
  %117 = load double, double* %5, align 8, !dbg !2825
  ret double %117, !dbg !2826
}

; Function Attrs: nounwind uwtable
define internal double @solve_cubic(double, double, double) #0 !dbg !2827 {
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !2830, metadata !68), !dbg !2831
  store double %1, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !2832, metadata !68), !dbg !2833
  store double %2, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !2834, metadata !68), !dbg !2835
  call void @llvm.dbg.declare(metadata double* %7, metadata !2836, metadata !68), !dbg !2837
  call void @llvm.dbg.declare(metadata double* %8, metadata !2838, metadata !68), !dbg !2839
  call void @llvm.dbg.declare(metadata double* %9, metadata !2840, metadata !68), !dbg !2841
  call void @llvm.dbg.declare(metadata double* %10, metadata !2842, metadata !68), !dbg !2843
  call void @llvm.dbg.declare(metadata double* %11, metadata !2844, metadata !68), !dbg !2845
  %14 = load double, double* %5, align 8, !dbg !2846
  %15 = fmul double 3.000000e+00, %14, !dbg !2847
  call void @fMulHandler(double 3.000000e+00, double %14, double %15, i64 0, i64 94380177059288, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @29, i32 0, i32 0), i64 94380178253968, i32 182, i32 10), !dbg !2848
  %16 = load double, double* %4, align 8, !dbg !2848
  %17 = load double, double* %4, align 8, !dbg !2849
  %18 = fmul double %16, %17, !dbg !2850
  call void @fMulHandler(double %16, double %17, double %18, i64 94380178254328, i64 94380178254712, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @29, i32 0, i32 0), i64 94380178255120, i32 182, i32 18), !dbg !2851
  %19 = fsub double %15, %18, !dbg !2851
  call void @fSubHandler(double %15, double %18, double %19, i64 94380178253968, i64 94380178255120, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @29, i32 0, i32 0), i64 94380178255536, i32 182, i32 14), !dbg !2852
  %20 = fdiv double %19, 9.000000e+00, !dbg !2852
  call void @fDivHandler(double %19, double 9.000000e+00, double %20, i64 94380178255536, i64 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @29, i32 0, i32 0), i64 94380178255984, i32 182, i32 22), !dbg !2853
  store double %20, double* %7, align 8, !dbg !2853
  %21 = load double, double* %4, align 8, !dbg !2854
  %22 = fmul double 9.000000e+00, %21, !dbg !2855
  call void @fMulHandler(double 9.000000e+00, double %21, double %22, i64 0, i64 94380178256760, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @29, i32 0, i32 0), i64 94380178257200, i32 183, i32 10), !dbg !2856
  %23 = load double, double* %5, align 8, !dbg !2856
  %24 = fmul double %22, %23, !dbg !2857
  call void @fMulHandler(double %22, double %23, double %24, i64 94380178257200, i64 94380178257560, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @29, i32 0, i32 0), i64 94380178257968, i32 183, i32 13), !dbg !2858
  %25 = load double, double* %6, align 8, !dbg !2858
  %26 = fmul double 2.700000e+01, %25, !dbg !2859
  call void @fMulHandler(double 2.700000e+01, double %25, double %26, i64 0, i64 94380178258360, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @29, i32 0, i32 0), i64 94380178258864, i32 183, i32 21), !dbg !2860
  %27 = fsub double %24, %26, !dbg !2860
  call void @fSubHandler(double %24, double %26, double %27, i64 94380178257968, i64 94380178258864, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @29, i32 0, i32 0), i64 94380178259248, i32 183, i32 17), !dbg !2861
  %28 = load double, double* %4, align 8, !dbg !2861
  %29 = fmul double 2.000000e+00, %28, !dbg !2862
  call void @fMulHandler(double 2.000000e+00, double %28, double %29, i64 0, i64 94380178259640, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @29, i32 0, i32 0), i64 94380178260080, i32 183, i32 28), !dbg !2863
  %30 = load double, double* %4, align 8, !dbg !2863
  %31 = fmul double %29, %30, !dbg !2864
  call void @fMulHandler(double %29, double %30, double %31, i64 94380178260080, i64 94380178260440, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @29, i32 0, i32 0), i64 94380178260848, i32 183, i32 31), !dbg !2865
  %32 = load double, double* %4, align 8, !dbg !2865
  %33 = fmul double %31, %32, !dbg !2866
  call void @fMulHandler(double %31, double %32, double %33, i64 94380178260848, i64 94380178261240, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @29, i32 0, i32 0), i64 94380178261648, i32 183, i32 34), !dbg !2867
  %34 = fsub double %27, %33, !dbg !2867
  call void @fSubHandler(double %27, double %33, double %34, i64 94380178259248, i64 94380178261648, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @29, i32 0, i32 0), i64 94380178262064, i32 183, i32 25), !dbg !2868
  %35 = fdiv double %34, 5.400000e+01, !dbg !2868
  call void @fDivHandler(double %34, double 5.400000e+01, double %35, i64 94380178262064, i64 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @29, i32 0, i32 0), i64 94380178262576, i32 183, i32 38), !dbg !2869
  store double %35, double* %8, align 8, !dbg !2869
  %36 = load double, double* %7, align 8, !dbg !2870
  %37 = load double, double* %7, align 8, !dbg !2871
  %38 = fmul double %36, %37, !dbg !2872
  call void @fMulHandler(double %36, double %37, double %38, i64 94380178263352, i64 94380178263736, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @29, i32 0, i32 0), i64 94380178264144, i32 184, i32 10), !dbg !2873
  %39 = load double, double* %7, align 8, !dbg !2873
  %40 = fmul double %38, %39, !dbg !2874
  call void @fMulHandler(double %38, double %39, double %40, i64 94380178264144, i64 94380178264536, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @29, i32 0, i32 0), i64 94380178264944, i32 184, i32 13), !dbg !2875
  %41 = load double, double* %8, align 8, !dbg !2875
  %42 = load double, double* %8, align 8, !dbg !2876
  %43 = fmul double %41, %42, !dbg !2877
  call void @fMulHandler(double %41, double %42, double %43, i64 94380178265336, i64 94380178265720, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @29, i32 0, i32 0), i64 94380178266128, i32 184, i32 21), !dbg !2878
  %44 = fadd double %40, %43, !dbg !2878
  call void @fAddHandler(double %40, double %43, double %44, i64 94380178264944, i64 94380178266128, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @29, i32 0, i32 0), i64 94380178266544, i32 184, i32 17), !dbg !2879
  store double %44, double* %9, align 8, !dbg !2879
  %45 = load double, double* %9, align 8, !dbg !2880
  %46 = fcmp oge double %45, 0.000000e+00, !dbg !2882
  %47 = call i1 @fCmpInstHandler(double %45, double 0.000000e+00, i1 %46, i32 3, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @29, i32 0, i32 0), i64 94380178267760, i32 186, i32 10), !dbg !2883
  br i1 %47, label %48, label %73, !dbg !2883

; <label>:48:                                     ; preds = %3
  call void @llvm.dbg.declare(metadata double* %12, metadata !2884, metadata !68), !dbg !2886
  %49 = load double, double* %8, align 8, !dbg !2887
  %50 = load double, double* %9, align 8, !dbg !2888
  %51 = call double @sqrt(double %50) #6, !dbg !2889
  call void @callOneArgHandler(i32 14, double %50, double %51, i64 94380178270136, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @29, i32 0, i32 0), i64 94380178270608, i32 188, i32 24), !dbg !2890
  %52 = fadd double %49, %51, !dbg !2890
  call void @fAddHandler(double %49, double %51, double %52, i64 94380178269784, i64 94380178270608, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @29, i32 0, i32 0), i64 94380178271088, i32 188, i32 22), !dbg !2886
  store double %52, double* %12, align 8, !dbg !2886
  %53 = load double, double* %12, align 8, !dbg !2891
  %54 = call double @fabs(double %53) #1, !dbg !2892
  %55 = load double, double* %12, align 8, !dbg !2893
  %56 = fdiv double %54, %55, !dbg !2894
  call void @fDivHandler(double %54, double %55, double %56, i64 94380178273632, i64 94380178274088, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @29, i32 0, i32 0), i64 94380178274496, i32 189, i32 20), !dbg !2895
  %57 = load double, double* %12, align 8, !dbg !2895
  %58 = call double @fabs(double %57) #1, !dbg !2896
  %59 = call double @pow(double %58, double 0x3FD5555555555555) #6, !dbg !2898
  call void @callTwoArgsHandler(i32 15, double %58, double 0x3FD5555555555555, double %59, i64 94380178275360, i64 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @29, i32 0, i32 0), i64 94380178276296, i32 189, i32 24), !dbg !2900
  %60 = fmul double %56, %59, !dbg !2900
  call void @fMulHandler(double %56, double %59, double %60, i64 94380178274496, i64 94380178276296, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @29, i32 0, i32 0), i64 94380178276768, i32 189, i32 23), !dbg !2901
  store double %60, double* %10, align 8, !dbg !2901
  %61 = load double, double* %8, align 8, !dbg !2902
  %62 = load double, double* %9, align 8, !dbg !2903
  %63 = call double @sqrt(double %62) #6, !dbg !2904
  call void @callOneArgHandler(i32 14, double %62, double %63, i64 94380178277960, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @29, i32 0, i32 0), i64 94380178278432, i32 190, i32 17), !dbg !2905
  %64 = fsub double %61, %63, !dbg !2905
  call void @fSubHandler(double %61, double %63, double %64, i64 94380178277576, i64 94380178278432, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @29, i32 0, i32 0), i64 94380178278912, i32 190, i32 15), !dbg !2906
  store double %64, double* %12, align 8, !dbg !2906
  %65 = load double, double* %12, align 8, !dbg !2907
  %66 = call double @fabs(double %65) #1, !dbg !2908
  %67 = load double, double* %12, align 8, !dbg !2909
  %68 = fdiv double %66, %67, !dbg !2910
  call void @fDivHandler(double %66, double %67, double %68, i64 94380178280192, i64 94380178280648, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @29, i32 0, i32 0), i64 94380178281056, i32 191, i32 20), !dbg !2911
  %69 = load double, double* %12, align 8, !dbg !2911
  %70 = call double @fabs(double %69) #1, !dbg !2912
  %71 = call double @pow(double %70, double 0x3FD5555555555555) #6, !dbg !2913
  call void @callTwoArgsHandler(i32 15, double %70, double 0x3FD5555555555555, double %71, i64 94380178281920, i64 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @29, i32 0, i32 0), i64 94380178282520, i32 191, i32 24), !dbg !2914
  %72 = fmul double %68, %71, !dbg !2914
  call void @fMulHandler(double %68, double %71, double %72, i64 94380178281056, i64 94380178282520, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @29, i32 0, i32 0), i64 94380178282992, i32 191, i32 23), !dbg !2915
  store double %72, double* %11, align 8, !dbg !2915
  br label %93, !dbg !2916

; <label>:73:                                     ; preds = %3
  call void @llvm.dbg.declare(metadata double* %13, metadata !2917, metadata !68), !dbg !2919
  %74 = load double, double* %8, align 8, !dbg !2920
  %75 = load double, double* %7, align 8, !dbg !2921
  %76 = fsub double -0.000000e+00, %75, !dbg !2922
  call void @fSubHandler(double -0.000000e+00, double %75, double %76, i64 0, i64 94380178285752, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @29, i32 0, i32 0), i64 94380178286160, i32 195, i32 35), !dbg !2923
  %77 = load double, double* %7, align 8, !dbg !2923
  %78 = fmul double %76, %77, !dbg !2924
  call void @fMulHandler(double %76, double %77, double %78, i64 94380178286160, i64 94380178286552, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @29, i32 0, i32 0), i64 94380178286960, i32 195, i32 38), !dbg !2925
  %79 = load double, double* %7, align 8, !dbg !2925
  %80 = fmul double %78, %79, !dbg !2926
  call void @fMulHandler(double %78, double %79, double %80, i64 94380178286960, i64 94380178287352, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @29, i32 0, i32 0), i64 94380178287760, i32 195, i32 41), !dbg !2927
  %81 = call double @sqrt(double %80) #6, !dbg !2927
  call void @callOneArgHandler(i32 14, double %80, double %81, i64 94380178287760, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @29, i32 0, i32 0), i64 94380178288240, i32 195, i32 30), !dbg !2928
  %82 = fdiv double %74, %81, !dbg !2928
  call void @fDivHandler(double %74, double %81, double %82, i64 94380178285400, i64 94380178288240, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @29, i32 0, i32 0), i64 94380178288720, i32 195, i32 29), !dbg !2929
  %83 = call double @acos(double %82) #6, !dbg !2929
  call void @callOneArgHandler(i32 5, double %82, double %83, i64 94380178288720, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @29, i32 0, i32 0), i64 94380178289472, i32 195, i32 22), !dbg !2919
  store double %83, double* %13, align 8, !dbg !2919
  %84 = load double, double* %7, align 8, !dbg !2931
  %85 = fsub double -0.000000e+00, %84, !dbg !2932
  call void @fSubHandler(double -0.000000e+00, double %84, double %85, i64 0, i64 94380178291640, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @29, i32 0, i32 0), i64 94380178292048, i32 196, i32 19), !dbg !2933
  %86 = call double @sqrt(double %85) #6, !dbg !2933
  call void @callOneArgHandler(i32 14, double %85, double %86, i64 94380178292048, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @29, i32 0, i32 0), i64 94380178292528, i32 196, i32 14), !dbg !2934
  %87 = fmul double 2.000000e+00, %86, !dbg !2934
  call void @fMulHandler(double 2.000000e+00, double %86, double %87, i64 0, i64 94380178292528, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @29, i32 0, i32 0), i64 94380178293040, i32 196, i32 13), !dbg !2935
  %88 = load double, double* %13, align 8, !dbg !2935
  %89 = fadd double %88, 0x402921FB54442D18, !dbg !2936
  call void @fAddHandler(double %88, double 0x402921FB54442D18, double %89, i64 94380178293400, i64 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @29, i32 0, i32 0), i64 94380178293872, i32 196, i32 35), !dbg !2937
  %90 = fdiv double %89, 3.000000e+00, !dbg !2937
  call void @fDivHandler(double %89, double 3.000000e+00, double %90, i64 94380178293872, i64 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @29, i32 0, i32 0), i64 94380178294320, i32 196, i32 44), !dbg !2938
  %91 = call double @cos(double %90) #6, !dbg !2938
  call void @callOneArgHandler(i32 2, double %90, double %91, i64 94380178294320, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @29, i32 0, i32 0), i64 94380178295040, i32 196, i32 24), !dbg !2939
  %92 = fmul double %87, %91, !dbg !2939
  call void @fMulHandler(double %87, double %91, double %92, i64 94380178293040, i64 94380178295040, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @29, i32 0, i32 0), i64 94380178295552, i32 196, i32 23), !dbg !2940
  store double %92, double* %10, align 8, !dbg !2940
  store double 0.000000e+00, double* %11, align 8, !dbg !2941
  br label %93

; <label>:93:                                     ; preds = %73, %48
  %94 = load double, double* %10, align 8, !dbg !2942
  %95 = load double, double* %11, align 8, !dbg !2943
  %96 = fadd double %94, %95, !dbg !2944
  call void @fAddHandler(double %94, double %95, double %96, i64 94380178296872, i64 94380178297192, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @29, i32 0, i32 0), i64 94380178297600, i32 200, i32 14), !dbg !2945
  %97 = load double, double* %4, align 8, !dbg !2945
  %98 = fdiv double %97, 3.000000e+00, !dbg !2946
  call void @fDivHandler(double %97, double 3.000000e+00, double %98, i64 94380178297992, i64 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @29, i32 0, i32 0), i64 94380178298432, i32 200, i32 23), !dbg !2947
  %99 = fsub double %96, %98, !dbg !2947
  call void @fSubHandler(double %96, double %98, double %99, i64 94380178297600, i64 94380178298432, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @29, i32 0, i32 0), i64 94380178298816, i32 200, i32 19), !dbg !2948
  ret double %99, !dbg !2948
}

; Function Attrs: nounwind
declare double @pow(double, double) #5

; Function Attrs: nounwind
declare double @acos(double) #5

; Function Attrs: nounwind
declare double @cos(double) #5

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
attributes #4 = { argmemonly nounwind }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!52, !53, !54}
!llvm.ident = !{!55}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !48)
!1 = !DIFile(filename: "mathieu_charv.c", directory: "/fpcc/gsl-2.5/specfunc")
!2 = !{!3, !41}
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
!41 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !42, line: 265, size: 32, align: 32, elements: !43)
!42 = !DIFile(filename: "../gsl/gsl_eigen.h", directory: "/fpcc/gsl-2.5/specfunc")
!43 = !{!44, !45, !46, !47}
!44 = !DIEnumerator(name: "GSL_EIGEN_SORT_VAL_ASC", value: 0)
!45 = !DIEnumerator(name: "GSL_EIGEN_SORT_VAL_DESC", value: 1)
!46 = !DIEnumerator(name: "GSL_EIGEN_SORT_ABS_ASC", value: 2)
!47 = !DIEnumerator(name: "GSL_EIGEN_SORT_ABS_DESC", value: 3)
!48 = !{!49, !50, !51}
!49 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!50 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!51 = !DIBasicType(name: "float", size: 32, align: 32, encoding: DW_ATE_float)
!52 = !{i32 2, !"Dwarf Version", i32 4}
!53 = !{i32 2, !"Debug Info Version", i32 3}
!54 = !{i32 1, !"PIC Level", i32 2}
!55 = !{!"clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)"}
!56 = distinct !DISubprogram(name: "gsl_sf_mathieu_a_e", scope: !1, file: !1, line: 370, type: !57, isLocal: false, isDefinition: true, scopeLine: 371, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !66)
!57 = !DISubroutineType(types: !58)
!58 = !{!49, !49, !50, !59}
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64, align: 64)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !61, line: 41, baseType: !62)
!61 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/fpcc/gsl-2.5/specfunc")
!62 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !61, line: 37, size: 128, align: 64, elements: !63)
!63 = !{!64, !65}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !62, file: !61, line: 38, baseType: !50, size: 64, align: 64)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !62, file: !61, line: 39, baseType: !50, size: 64, align: 64, offset: 64)
!66 = !{}
!67 = !DILocalVariable(name: "order", arg: 1, scope: !56, file: !1, line: 370, type: !49)
!68 = !DIExpression()
!69 = !DILocation(line: 370, column: 28, scope: !56)
!70 = !DILocalVariable(name: "qq", arg: 2, scope: !56, file: !1, line: 370, type: !50)
!71 = !DILocation(line: 370, column: 42, scope: !56)
!72 = !DILocalVariable(name: "result", arg: 3, scope: !56, file: !1, line: 370, type: !59)
!73 = !DILocation(line: 370, column: 61, scope: !56)
!74 = !DILocalVariable(name: "even_odd", scope: !56, file: !1, line: 372, type: !49)
!75 = !DILocation(line: 372, column: 7, scope: !56)
!76 = !DILocalVariable(name: "nterms", scope: !56, file: !1, line: 372, type: !49)
!77 = !DILocation(line: 372, column: 17, scope: !56)
!78 = !DILocalVariable(name: "ii", scope: !56, file: !1, line: 372, type: !49)
!79 = !DILocation(line: 372, column: 30, scope: !56)
!80 = !DILocalVariable(name: "counter", scope: !56, file: !1, line: 372, type: !49)
!81 = !DILocation(line: 372, column: 34, scope: !56)
!82 = !DILocalVariable(name: "maxcount", scope: !56, file: !1, line: 372, type: !49)
!83 = !DILocation(line: 372, column: 47, scope: !56)
!84 = !DILocalVariable(name: "dir", scope: !56, file: !1, line: 373, type: !49)
!85 = !DILocation(line: 373, column: 7, scope: !56)
!86 = !DILocalVariable(name: "a1", scope: !56, file: !1, line: 374, type: !50)
!87 = !DILocation(line: 374, column: 10, scope: !56)
!88 = !DILocalVariable(name: "a2", scope: !56, file: !1, line: 374, type: !50)
!89 = !DILocation(line: 374, column: 14, scope: !56)
!90 = !DILocalVariable(name: "fa", scope: !56, file: !1, line: 374, type: !50)
!91 = !DILocation(line: 374, column: 18, scope: !56)
!92 = !DILocalVariable(name: "fa1", scope: !56, file: !1, line: 374, type: !50)
!93 = !DILocation(line: 374, column: 22, scope: !56)
!94 = !DILocalVariable(name: "dela", scope: !56, file: !1, line: 374, type: !50)
!95 = !DILocation(line: 374, column: 27, scope: !56)
!96 = !DILocalVariable(name: "aa_orig", scope: !56, file: !1, line: 374, type: !50)
!97 = !DILocation(line: 374, column: 33, scope: !56)
!98 = !DILocalVariable(name: "da", scope: !56, file: !1, line: 374, type: !50)
!99 = !DILocation(line: 374, column: 42, scope: !56)
!100 = !DILocalVariable(name: "aa", scope: !56, file: !1, line: 374, type: !50)
!101 = !DILocation(line: 374, column: 54, scope: !56)
!102 = !DILocalVariable(name: "aa_approx", scope: !56, file: !1, line: 375, type: !50)
!103 = !DILocation(line: 375, column: 10, scope: !56)
!104 = !DILocation(line: 378, column: 12, scope: !56)
!105 = !DILocation(line: 379, column: 7, scope: !106)
!106 = distinct !DILexicalBlock(scope: !56, file: !1, line: 379, column: 7)
!107 = !DILocation(line: 379, column: 13, scope: !106)
!108 = !DILocation(line: 379, column: 17, scope: !106)
!109 = !DILocation(line: 379, column: 7, scope: !56)
!110 = !DILocation(line: 380, column: 16, scope: !106)
!111 = !DILocation(line: 380, column: 7, scope: !106)
!112 = !DILocation(line: 384, column: 7, scope: !113)
!113 = distinct !DILexicalBlock(scope: !56, file: !1, line: 384, column: 7)
!114 = !DILocation(line: 384, column: 10, scope: !113)
!115 = !DILocation(line: 384, column: 7, scope: !56)
!116 = !DILocation(line: 386, column: 21, scope: !117)
!117 = distinct !DILexicalBlock(scope: !113, file: !1, line: 385, column: 3)
!118 = !DILocation(line: 386, column: 27, scope: !117)
!119 = !DILocation(line: 386, column: 26, scope: !117)
!120 = !DILocation(line: 386, column: 7, scope: !117)
!121 = !DILocation(line: 386, column: 15, scope: !117)
!122 = !DILocation(line: 386, column: 19, scope: !117)
!123 = !DILocation(line: 387, column: 7, scope: !117)
!124 = !DILocation(line: 387, column: 15, scope: !117)
!125 = !DILocation(line: 387, column: 19, scope: !117)
!126 = !DILocation(line: 388, column: 7, scope: !117)
!127 = !DILocation(line: 393, column: 7, scope: !128)
!128 = distinct !DILexicalBlock(scope: !56, file: !1, line: 393, column: 7)
!129 = !DILocation(line: 393, column: 13, scope: !128)
!130 = !DILocation(line: 393, column: 7, scope: !56)
!131 = !DILocation(line: 394, column: 13, scope: !128)
!132 = !DILocation(line: 394, column: 7, scope: !128)
!133 = !DILocation(line: 395, column: 7, scope: !134)
!134 = distinct !DILexicalBlock(scope: !56, file: !1, line: 395, column: 7)
!135 = !DILocation(line: 395, column: 10, scope: !134)
!136 = !DILocation(line: 395, column: 7, scope: !56)
!137 = !DILocation(line: 397, column: 11, scope: !138)
!138 = distinct !DILexicalBlock(scope: !139, file: !1, line: 397, column: 11)
!139 = distinct !DILexicalBlock(scope: !134, file: !1, line: 396, column: 3)
!140 = !DILocation(line: 397, column: 20, scope: !138)
!141 = !DILocation(line: 397, column: 11, scope: !139)
!142 = !DILocation(line: 398, column: 37, scope: !138)
!143 = !DILocation(line: 398, column: 45, scope: !138)
!144 = !DILocation(line: 398, column: 44, scope: !138)
!145 = !DILocation(line: 398, column: 49, scope: !138)
!146 = !DILocation(line: 398, column: 18, scope: !138)
!147 = !DILocation(line: 398, column: 11, scope: !138)
!148 = !DILocation(line: 400, column: 37, scope: !138)
!149 = !DILocation(line: 400, column: 45, scope: !138)
!150 = !DILocation(line: 400, column: 44, scope: !138)
!151 = !DILocation(line: 400, column: 49, scope: !138)
!152 = !DILocation(line: 400, column: 18, scope: !138)
!153 = !DILocation(line: 400, column: 11, scope: !138)
!154 = !DILocation(line: 404, column: 24, scope: !56)
!155 = !DILocation(line: 404, column: 31, scope: !56)
!156 = !DILocation(line: 404, column: 15, scope: !56)
!157 = !DILocation(line: 404, column: 13, scope: !56)
!158 = !DILocation(line: 407, column: 18, scope: !56)
!159 = !DILocation(line: 407, column: 16, scope: !56)
!160 = !DILocation(line: 407, column: 11, scope: !56)
!161 = !DILocation(line: 411, column: 3, scope: !56)
!162 = !DILocation(line: 411, column: 10, scope: !163)
!163 = !DILexicalBlockFile(scope: !56, file: !1, discriminator: 1)
!164 = !DILocation(line: 411, column: 20, scope: !163)
!165 = !DILocation(line: 411, column: 18, scope: !163)
!166 = !DILocation(line: 411, column: 3, scope: !163)
!167 = !DILocation(line: 413, column: 12, scope: !168)
!168 = distinct !DILexicalBlock(scope: !56, file: !1, line: 412, column: 3)
!169 = !DILocation(line: 413, column: 15, scope: !168)
!170 = !DILocation(line: 413, column: 10, scope: !168)
!171 = !DILocation(line: 414, column: 10, scope: !168)
!172 = !DILocation(line: 415, column: 11, scope: !173)
!173 = distinct !DILexicalBlock(scope: !168, file: !1, line: 415, column: 11)
!174 = !DILocation(line: 415, column: 20, scope: !173)
!175 = !DILocation(line: 415, column: 11, scope: !168)
!176 = !DILocation(line: 416, column: 22, scope: !173)
!177 = !DILocation(line: 416, column: 29, scope: !173)
!178 = !DILocation(line: 416, column: 33, scope: !173)
!179 = !DILocation(line: 416, column: 37, scope: !173)
!180 = !DILocation(line: 416, column: 17, scope: !173)
!181 = !DILocation(line: 416, column: 15, scope: !173)
!182 = !DILocation(line: 416, column: 11, scope: !173)
!183 = !DILocation(line: 418, column: 22, scope: !173)
!184 = !DILocation(line: 418, column: 29, scope: !173)
!185 = !DILocation(line: 418, column: 33, scope: !173)
!186 = !DILocation(line: 418, column: 37, scope: !173)
!187 = !DILocation(line: 418, column: 17, scope: !173)
!188 = !DILocation(line: 418, column: 15, scope: !173)
!189 = !DILocation(line: 420, column: 7, scope: !168)
!190 = !DILocation(line: 422, column: 15, scope: !191)
!191 = distinct !DILexicalBlock(scope: !192, file: !1, line: 422, column: 15)
!192 = distinct !DILexicalBlock(scope: !193, file: !1, line: 421, column: 7)
!193 = distinct !DILexicalBlock(scope: !194, file: !1, line: 420, column: 7)
!194 = distinct !DILexicalBlock(scope: !168, file: !1, line: 420, column: 7)
!195 = !DILocation(line: 422, column: 24, scope: !191)
!196 = !DILocation(line: 422, column: 15, scope: !192)
!197 = !DILocation(line: 423, column: 25, scope: !191)
!198 = !DILocation(line: 423, column: 32, scope: !191)
!199 = !DILocation(line: 423, column: 36, scope: !191)
!200 = !DILocation(line: 423, column: 40, scope: !191)
!201 = !DILocation(line: 423, column: 20, scope: !191)
!202 = !DILocation(line: 423, column: 18, scope: !191)
!203 = !DILocation(line: 423, column: 15, scope: !191)
!204 = !DILocation(line: 425, column: 25, scope: !191)
!205 = !DILocation(line: 425, column: 32, scope: !191)
!206 = !DILocation(line: 425, column: 36, scope: !191)
!207 = !DILocation(line: 425, column: 40, scope: !191)
!208 = !DILocation(line: 425, column: 20, scope: !191)
!209 = !DILocation(line: 425, column: 18, scope: !191)
!210 = !DILocation(line: 427, column: 16, scope: !192)
!211 = !DILocation(line: 427, column: 14, scope: !192)
!212 = !DILocation(line: 428, column: 16, scope: !192)
!213 = !DILocation(line: 428, column: 14, scope: !192)
!214 = !DILocation(line: 430, column: 15, scope: !215)
!215 = distinct !DILexicalBlock(scope: !192, file: !1, line: 430, column: 15)
!216 = !DILocation(line: 430, column: 21, scope: !215)
!217 = !DILocation(line: 430, column: 18, scope: !215)
!218 = !DILocation(line: 430, column: 15, scope: !192)
!219 = !DILocation(line: 432, column: 15, scope: !220)
!220 = distinct !DILexicalBlock(scope: !215, file: !1, line: 431, column: 11)
!221 = !DILocation(line: 432, column: 23, scope: !220)
!222 = !DILocation(line: 432, column: 27, scope: !220)
!223 = !DILocation(line: 433, column: 15, scope: !220)
!224 = !DILocation(line: 435, column: 18, scope: !192)
!225 = !DILocation(line: 435, column: 23, scope: !192)
!226 = !DILocation(line: 435, column: 21, scope: !192)
!227 = !DILocation(line: 435, column: 28, scope: !192)
!228 = !DILocation(line: 435, column: 33, scope: !192)
!229 = !DILocation(line: 435, column: 31, scope: !192)
!230 = !DILocation(line: 435, column: 26, scope: !192)
!231 = !DILocation(line: 435, column: 38, scope: !192)
!232 = !DILocation(line: 435, column: 37, scope: !192)
!233 = !DILocation(line: 435, column: 14, scope: !192)
!234 = !DILocation(line: 436, column: 23, scope: !192)
!235 = !DILocation(line: 436, column: 28, scope: !192)
!236 = !DILocation(line: 436, column: 26, scope: !192)
!237 = !DILocation(line: 436, column: 18, scope: !192)
!238 = !DILocation(line: 436, column: 16, scope: !192)
!239 = !DILocation(line: 437, column: 15, scope: !240)
!240 = distinct !DILexicalBlock(scope: !192, file: !1, line: 437, column: 15)
!241 = !DILocation(line: 437, column: 20, scope: !240)
!242 = !DILocation(line: 437, column: 15, scope: !192)
!243 = !DILocation(line: 439, column: 15, scope: !244)
!244 = distinct !DILexicalBlock(scope: !240, file: !1, line: 438, column: 11)
!245 = !DILocation(line: 439, column: 23, scope: !244)
!246 = !DILocation(line: 439, column: 27, scope: !244)
!247 = !DILocation(line: 440, column: 15, scope: !244)
!248 = !DILocation(line: 442, column: 15, scope: !249)
!249 = distinct !DILexicalBlock(scope: !192, file: !1, line: 442, column: 15)
!250 = !DILocation(line: 442, column: 18, scope: !249)
!251 = !DILocation(line: 442, column: 15, scope: !192)
!252 = !DILocation(line: 444, column: 29, scope: !253)
!253 = distinct !DILexicalBlock(scope: !249, file: !1, line: 443, column: 11)
!254 = !DILocation(line: 444, column: 15, scope: !253)
!255 = !DILocation(line: 444, column: 23, scope: !253)
!256 = !DILocation(line: 444, column: 27, scope: !253)
!257 = !DILocation(line: 445, column: 15, scope: !253)
!258 = !DILocation(line: 447, column: 17, scope: !192)
!259 = !DILocation(line: 447, column: 15, scope: !192)
!260 = !DILocation(line: 448, column: 13, scope: !192)
!261 = !DILocation(line: 420, column: 7, scope: !262)
!262 = !DILexicalBlockFile(scope: !193, file: !1, discriminator: 1)
!263 = distinct !{!263, !189}
!264 = !DILocation(line: 453, column: 16, scope: !265)
!265 = distinct !DILexicalBlock(scope: !168, file: !1, line: 453, column: 11)
!266 = !DILocation(line: 453, column: 21, scope: !265)
!267 = !DILocation(line: 453, column: 19, scope: !265)
!268 = !DILocation(line: 453, column: 11, scope: !265)
!269 = !DILocation(line: 453, column: 42, scope: !265)
!270 = !DILocation(line: 453, column: 41, scope: !265)
!271 = !DILocation(line: 453, column: 53, scope: !265)
!272 = !DILocation(line: 453, column: 48, scope: !273)
!273 = !DILexicalBlockFile(scope: !265, file: !1, discriminator: 2)
!274 = !DILocation(line: 453, column: 47, scope: !265)
!275 = !DILocation(line: 453, column: 35, scope: !265)
!276 = !DILocation(line: 453, column: 30, scope: !265)
!277 = !DILocation(line: 453, column: 63, scope: !265)
!278 = !DILocation(line: 454, column: 12, scope: !265)
!279 = !DILocation(line: 454, column: 18, scope: !265)
!280 = !DILocation(line: 454, column: 23, scope: !265)
!281 = !DILocation(line: 454, column: 31, scope: !282)
!282 = !DILexicalBlockFile(scope: !265, file: !1, discriminator: 1)
!283 = !DILocation(line: 454, column: 36, scope: !282)
!284 = !DILocation(line: 454, column: 34, scope: !282)
!285 = !DILocation(line: 454, column: 26, scope: !282)
!286 = !DILocation(line: 454, column: 51, scope: !282)
!287 = !DILocation(line: 454, column: 50, scope: !282)
!288 = !DILocation(line: 454, column: 45, scope: !282)
!289 = !DILocation(line: 453, column: 11, scope: !290)
!290 = !DILexicalBlockFile(scope: !168, file: !1, discriminator: 1)
!291 = !DILocation(line: 456, column: 18, scope: !292)
!292 = distinct !DILexicalBlock(scope: !265, file: !1, line: 455, column: 7)
!293 = !DILocation(line: 457, column: 15, scope: !294)
!294 = distinct !DILexicalBlock(scope: !292, file: !1, line: 457, column: 15)
!295 = !DILocation(line: 457, column: 26, scope: !294)
!296 = !DILocation(line: 457, column: 23, scope: !294)
!297 = !DILocation(line: 457, column: 15, scope: !292)
!298 = !DILocation(line: 459, column: 34, scope: !299)
!299 = distinct !DILexicalBlock(scope: !294, file: !1, line: 458, column: 11)
!300 = !DILocation(line: 459, column: 39, scope: !299)
!301 = !DILocation(line: 459, column: 37, scope: !299)
!302 = !DILocation(line: 459, column: 29, scope: !299)
!303 = !DILocation(line: 459, column: 15, scope: !299)
!304 = !DILocation(line: 459, column: 23, scope: !299)
!305 = !DILocation(line: 459, column: 27, scope: !299)
!306 = !DILocation(line: 460, column: 15, scope: !299)
!307 = !DILocation(line: 462, column: 15, scope: !308)
!308 = distinct !DILexicalBlock(scope: !292, file: !1, line: 462, column: 15)
!309 = !DILocation(line: 462, column: 20, scope: !308)
!310 = !DILocation(line: 462, column: 18, scope: !308)
!311 = !DILocation(line: 462, column: 15, scope: !292)
!312 = !DILocation(line: 464, column: 19, scope: !313)
!313 = distinct !DILexicalBlock(scope: !314, file: !1, line: 464, column: 19)
!314 = distinct !DILexicalBlock(scope: !308, file: !1, line: 463, column: 11)
!315 = !DILocation(line: 464, column: 23, scope: !313)
!316 = !DILocation(line: 464, column: 19, scope: !314)
!317 = !DILocation(line: 465, column: 22, scope: !313)
!318 = !DILocation(line: 465, column: 19, scope: !313)
!319 = !DILocation(line: 466, column: 19, scope: !314)
!320 = !DILocation(line: 467, column: 11, scope: !314)
!321 = !DILocation(line: 470, column: 19, scope: !322)
!322 = distinct !DILexicalBlock(scope: !323, file: !1, line: 470, column: 19)
!323 = distinct !DILexicalBlock(scope: !308, file: !1, line: 469, column: 11)
!324 = !DILocation(line: 470, column: 23, scope: !322)
!325 = !DILocation(line: 470, column: 19, scope: !323)
!326 = !DILocation(line: 471, column: 22, scope: !322)
!327 = !DILocation(line: 471, column: 19, scope: !322)
!328 = !DILocation(line: 472, column: 19, scope: !323)
!329 = !DILocation(line: 474, column: 24, scope: !292)
!330 = !DILocation(line: 474, column: 28, scope: !292)
!331 = !DILocation(line: 474, column: 27, scope: !292)
!332 = !DILocation(line: 474, column: 31, scope: !292)
!333 = !DILocation(line: 474, column: 30, scope: !292)
!334 = !DILocation(line: 474, column: 21, scope: !292)
!335 = !DILocation(line: 475, column: 16, scope: !292)
!336 = !DILocation(line: 475, column: 14, scope: !292)
!337 = !DILocation(line: 477, column: 11, scope: !292)
!338 = distinct !{!338, !161}
!339 = !DILocation(line: 480, column: 11, scope: !265)
!340 = !DILocation(line: 483, column: 17, scope: !56)
!341 = !DILocation(line: 483, column: 3, scope: !56)
!342 = !DILocation(line: 483, column: 11, scope: !56)
!343 = !DILocation(line: 483, column: 15, scope: !56)
!344 = !DILocation(line: 487, column: 7, scope: !345)
!345 = distinct !DILexicalBlock(scope: !56, file: !1, line: 487, column: 7)
!346 = !DILocation(line: 487, column: 18, scope: !345)
!347 = !DILocation(line: 487, column: 15, scope: !345)
!348 = !DILocation(line: 487, column: 7, scope: !56)
!349 = !DILocation(line: 489, column: 7, scope: !350)
!350 = distinct !DILexicalBlock(scope: !345, file: !1, line: 488, column: 3)
!351 = distinct !{!351, !349}
!352 = !DILocation(line: 489, column: 7, scope: !353)
!353 = !DILexicalBlockFile(scope: !354, file: !1, discriminator: 1)
!354 = distinct !DILexicalBlock(scope: !350, file: !1, line: 489, column: 7)
!355 = !DILocation(line: 490, column: 3, scope: !350)
!356 = !DILocation(line: 492, column: 3, scope: !56)
!357 = !DILocation(line: 493, column: 1, scope: !56)
!358 = distinct !DISubprogram(name: "gsl_sf_mathieu_b_e", scope: !1, file: !1, line: 496, type: !57, isLocal: false, isDefinition: true, scopeLine: 497, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !66)
!359 = !DILocalVariable(name: "order", arg: 1, scope: !358, file: !1, line: 496, type: !49)
!360 = !DILocation(line: 496, column: 28, scope: !358)
!361 = !DILocalVariable(name: "qq", arg: 2, scope: !358, file: !1, line: 496, type: !50)
!362 = !DILocation(line: 496, column: 42, scope: !358)
!363 = !DILocalVariable(name: "result", arg: 3, scope: !358, file: !1, line: 496, type: !59)
!364 = !DILocation(line: 496, column: 61, scope: !358)
!365 = !DILocalVariable(name: "even_odd", scope: !358, file: !1, line: 498, type: !49)
!366 = !DILocation(line: 498, column: 7, scope: !358)
!367 = !DILocalVariable(name: "nterms", scope: !358, file: !1, line: 498, type: !49)
!368 = !DILocation(line: 498, column: 17, scope: !358)
!369 = !DILocalVariable(name: "ii", scope: !358, file: !1, line: 498, type: !49)
!370 = !DILocation(line: 498, column: 30, scope: !358)
!371 = !DILocalVariable(name: "counter", scope: !358, file: !1, line: 498, type: !49)
!372 = !DILocation(line: 498, column: 34, scope: !358)
!373 = !DILocalVariable(name: "maxcount", scope: !358, file: !1, line: 498, type: !49)
!374 = !DILocation(line: 498, column: 47, scope: !358)
!375 = !DILocalVariable(name: "dir", scope: !358, file: !1, line: 499, type: !49)
!376 = !DILocation(line: 499, column: 7, scope: !358)
!377 = !DILocalVariable(name: "a1", scope: !358, file: !1, line: 500, type: !50)
!378 = !DILocation(line: 500, column: 10, scope: !358)
!379 = !DILocalVariable(name: "a2", scope: !358, file: !1, line: 500, type: !50)
!380 = !DILocation(line: 500, column: 14, scope: !358)
!381 = !DILocalVariable(name: "fa", scope: !358, file: !1, line: 500, type: !50)
!382 = !DILocation(line: 500, column: 18, scope: !358)
!383 = !DILocalVariable(name: "fa1", scope: !358, file: !1, line: 500, type: !50)
!384 = !DILocation(line: 500, column: 22, scope: !358)
!385 = !DILocalVariable(name: "dela", scope: !358, file: !1, line: 500, type: !50)
!386 = !DILocation(line: 500, column: 27, scope: !358)
!387 = !DILocalVariable(name: "aa_orig", scope: !358, file: !1, line: 500, type: !50)
!388 = !DILocation(line: 500, column: 33, scope: !358)
!389 = !DILocalVariable(name: "da", scope: !358, file: !1, line: 500, type: !50)
!390 = !DILocation(line: 500, column: 42, scope: !358)
!391 = !DILocalVariable(name: "aa", scope: !358, file: !1, line: 500, type: !50)
!392 = !DILocation(line: 500, column: 54, scope: !358)
!393 = !DILocalVariable(name: "aa_approx", scope: !358, file: !1, line: 501, type: !50)
!394 = !DILocation(line: 501, column: 10, scope: !358)
!395 = !DILocation(line: 504, column: 12, scope: !358)
!396 = !DILocation(line: 505, column: 7, scope: !397)
!397 = distinct !DILexicalBlock(scope: !358, file: !1, line: 505, column: 7)
!398 = !DILocation(line: 505, column: 13, scope: !397)
!399 = !DILocation(line: 505, column: 17, scope: !397)
!400 = !DILocation(line: 505, column: 7, scope: !358)
!401 = !DILocation(line: 506, column: 16, scope: !397)
!402 = !DILocation(line: 506, column: 7, scope: !397)
!403 = !DILocation(line: 509, column: 7, scope: !404)
!404 = distinct !DILexicalBlock(scope: !358, file: !1, line: 509, column: 7)
!405 = !DILocation(line: 509, column: 13, scope: !404)
!406 = !DILocation(line: 509, column: 7, scope: !358)
!407 = !DILocation(line: 511, column: 7, scope: !408)
!408 = distinct !DILexicalBlock(scope: !404, file: !1, line: 510, column: 3)
!409 = distinct !{!409, !407}
!410 = !DILocation(line: 511, column: 7, scope: !411)
!411 = !DILexicalBlockFile(scope: !412, file: !1, discriminator: 1)
!412 = distinct !DILexicalBlock(scope: !408, file: !1, line: 511, column: 7)
!413 = !DILocation(line: 512, column: 3, scope: !408)
!414 = !DILocation(line: 516, column: 7, scope: !415)
!415 = distinct !DILexicalBlock(scope: !358, file: !1, line: 516, column: 7)
!416 = !DILocation(line: 516, column: 10, scope: !415)
!417 = !DILocation(line: 516, column: 7, scope: !358)
!418 = !DILocation(line: 518, column: 21, scope: !419)
!419 = distinct !DILexicalBlock(scope: !415, file: !1, line: 517, column: 3)
!420 = !DILocation(line: 518, column: 27, scope: !419)
!421 = !DILocation(line: 518, column: 26, scope: !419)
!422 = !DILocation(line: 518, column: 7, scope: !419)
!423 = !DILocation(line: 518, column: 15, scope: !419)
!424 = !DILocation(line: 518, column: 19, scope: !419)
!425 = !DILocation(line: 519, column: 7, scope: !419)
!426 = !DILocation(line: 519, column: 15, scope: !419)
!427 = !DILocation(line: 519, column: 19, scope: !419)
!428 = !DILocation(line: 520, column: 7, scope: !419)
!429 = !DILocation(line: 525, column: 7, scope: !430)
!430 = distinct !DILexicalBlock(scope: !358, file: !1, line: 525, column: 7)
!431 = !DILocation(line: 525, column: 13, scope: !430)
!432 = !DILocation(line: 525, column: 7, scope: !358)
!433 = !DILocation(line: 526, column: 13, scope: !430)
!434 = !DILocation(line: 526, column: 7, scope: !430)
!435 = !DILocation(line: 527, column: 7, scope: !436)
!436 = distinct !DILexicalBlock(scope: !358, file: !1, line: 527, column: 7)
!437 = !DILocation(line: 527, column: 10, scope: !436)
!438 = !DILocation(line: 527, column: 7, scope: !358)
!439 = !DILocation(line: 529, column: 11, scope: !440)
!440 = distinct !DILexicalBlock(scope: !441, file: !1, line: 529, column: 11)
!441 = distinct !DILexicalBlock(scope: !436, file: !1, line: 528, column: 3)
!442 = !DILocation(line: 529, column: 20, scope: !440)
!443 = !DILocation(line: 529, column: 11, scope: !441)
!444 = !DILocation(line: 530, column: 37, scope: !440)
!445 = !DILocation(line: 530, column: 45, scope: !440)
!446 = !DILocation(line: 530, column: 44, scope: !440)
!447 = !DILocation(line: 530, column: 49, scope: !440)
!448 = !DILocation(line: 530, column: 18, scope: !440)
!449 = !DILocation(line: 530, column: 11, scope: !440)
!450 = !DILocation(line: 532, column: 37, scope: !440)
!451 = !DILocation(line: 532, column: 45, scope: !440)
!452 = !DILocation(line: 532, column: 44, scope: !440)
!453 = !DILocation(line: 532, column: 49, scope: !440)
!454 = !DILocation(line: 532, column: 18, scope: !440)
!455 = !DILocation(line: 532, column: 11, scope: !440)
!456 = !DILocation(line: 536, column: 24, scope: !358)
!457 = !DILocation(line: 536, column: 31, scope: !358)
!458 = !DILocation(line: 536, column: 15, scope: !358)
!459 = !DILocation(line: 536, column: 13, scope: !358)
!460 = !DILocation(line: 539, column: 18, scope: !358)
!461 = !DILocation(line: 539, column: 16, scope: !358)
!462 = !DILocation(line: 539, column: 11, scope: !358)
!463 = !DILocation(line: 543, column: 3, scope: !358)
!464 = !DILocation(line: 543, column: 10, scope: !465)
!465 = !DILexicalBlockFile(scope: !358, file: !1, discriminator: 1)
!466 = !DILocation(line: 543, column: 20, scope: !465)
!467 = !DILocation(line: 543, column: 18, scope: !465)
!468 = !DILocation(line: 543, column: 3, scope: !465)
!469 = !DILocation(line: 545, column: 12, scope: !470)
!470 = distinct !DILexicalBlock(scope: !358, file: !1, line: 544, column: 3)
!471 = !DILocation(line: 545, column: 15, scope: !470)
!472 = !DILocation(line: 545, column: 10, scope: !470)
!473 = !DILocation(line: 546, column: 10, scope: !470)
!474 = !DILocation(line: 547, column: 11, scope: !475)
!475 = distinct !DILexicalBlock(scope: !470, file: !1, line: 547, column: 11)
!476 = !DILocation(line: 547, column: 20, scope: !475)
!477 = !DILocation(line: 547, column: 11, scope: !470)
!478 = !DILocation(line: 548, column: 22, scope: !475)
!479 = !DILocation(line: 548, column: 29, scope: !475)
!480 = !DILocation(line: 548, column: 33, scope: !475)
!481 = !DILocation(line: 548, column: 37, scope: !475)
!482 = !DILocation(line: 548, column: 17, scope: !475)
!483 = !DILocation(line: 548, column: 15, scope: !475)
!484 = !DILocation(line: 548, column: 11, scope: !475)
!485 = !DILocation(line: 550, column: 22, scope: !475)
!486 = !DILocation(line: 550, column: 29, scope: !475)
!487 = !DILocation(line: 550, column: 33, scope: !475)
!488 = !DILocation(line: 550, column: 37, scope: !475)
!489 = !DILocation(line: 550, column: 17, scope: !475)
!490 = !DILocation(line: 550, column: 15, scope: !475)
!491 = !DILocation(line: 552, column: 7, scope: !470)
!492 = !DILocation(line: 554, column: 15, scope: !493)
!493 = distinct !DILexicalBlock(scope: !494, file: !1, line: 554, column: 15)
!494 = distinct !DILexicalBlock(scope: !495, file: !1, line: 553, column: 7)
!495 = distinct !DILexicalBlock(scope: !496, file: !1, line: 552, column: 7)
!496 = distinct !DILexicalBlock(scope: !470, file: !1, line: 552, column: 7)
!497 = !DILocation(line: 554, column: 24, scope: !493)
!498 = !DILocation(line: 554, column: 15, scope: !494)
!499 = !DILocation(line: 555, column: 25, scope: !493)
!500 = !DILocation(line: 555, column: 32, scope: !493)
!501 = !DILocation(line: 555, column: 36, scope: !493)
!502 = !DILocation(line: 555, column: 40, scope: !493)
!503 = !DILocation(line: 555, column: 20, scope: !493)
!504 = !DILocation(line: 555, column: 18, scope: !493)
!505 = !DILocation(line: 555, column: 15, scope: !493)
!506 = !DILocation(line: 557, column: 25, scope: !493)
!507 = !DILocation(line: 557, column: 32, scope: !493)
!508 = !DILocation(line: 557, column: 36, scope: !493)
!509 = !DILocation(line: 557, column: 40, scope: !493)
!510 = !DILocation(line: 557, column: 20, scope: !493)
!511 = !DILocation(line: 557, column: 18, scope: !493)
!512 = !DILocation(line: 559, column: 16, scope: !494)
!513 = !DILocation(line: 559, column: 14, scope: !494)
!514 = !DILocation(line: 560, column: 16, scope: !494)
!515 = !DILocation(line: 560, column: 14, scope: !494)
!516 = !DILocation(line: 562, column: 15, scope: !517)
!517 = distinct !DILexicalBlock(scope: !494, file: !1, line: 562, column: 15)
!518 = !DILocation(line: 562, column: 21, scope: !517)
!519 = !DILocation(line: 562, column: 18, scope: !517)
!520 = !DILocation(line: 562, column: 15, scope: !494)
!521 = !DILocation(line: 564, column: 15, scope: !522)
!522 = distinct !DILexicalBlock(scope: !517, file: !1, line: 563, column: 11)
!523 = !DILocation(line: 564, column: 23, scope: !522)
!524 = !DILocation(line: 564, column: 27, scope: !522)
!525 = !DILocation(line: 565, column: 15, scope: !522)
!526 = !DILocation(line: 567, column: 18, scope: !494)
!527 = !DILocation(line: 567, column: 23, scope: !494)
!528 = !DILocation(line: 567, column: 21, scope: !494)
!529 = !DILocation(line: 567, column: 28, scope: !494)
!530 = !DILocation(line: 567, column: 33, scope: !494)
!531 = !DILocation(line: 567, column: 31, scope: !494)
!532 = !DILocation(line: 567, column: 26, scope: !494)
!533 = !DILocation(line: 567, column: 38, scope: !494)
!534 = !DILocation(line: 567, column: 37, scope: !494)
!535 = !DILocation(line: 567, column: 14, scope: !494)
!536 = !DILocation(line: 568, column: 23, scope: !494)
!537 = !DILocation(line: 568, column: 28, scope: !494)
!538 = !DILocation(line: 568, column: 26, scope: !494)
!539 = !DILocation(line: 568, column: 18, scope: !494)
!540 = !DILocation(line: 568, column: 16, scope: !494)
!541 = !DILocation(line: 569, column: 15, scope: !542)
!542 = distinct !DILexicalBlock(scope: !494, file: !1, line: 569, column: 15)
!543 = !DILocation(line: 569, column: 20, scope: !542)
!544 = !DILocation(line: 569, column: 15, scope: !494)
!545 = !DILocation(line: 571, column: 15, scope: !546)
!546 = distinct !DILexicalBlock(scope: !542, file: !1, line: 570, column: 11)
!547 = !DILocation(line: 571, column: 23, scope: !546)
!548 = !DILocation(line: 571, column: 27, scope: !546)
!549 = !DILocation(line: 572, column: 15, scope: !546)
!550 = !DILocation(line: 574, column: 15, scope: !551)
!551 = distinct !DILexicalBlock(scope: !494, file: !1, line: 574, column: 15)
!552 = !DILocation(line: 574, column: 18, scope: !551)
!553 = !DILocation(line: 574, column: 15, scope: !494)
!554 = !DILocation(line: 576, column: 29, scope: !555)
!555 = distinct !DILexicalBlock(scope: !551, file: !1, line: 575, column: 11)
!556 = !DILocation(line: 576, column: 15, scope: !555)
!557 = !DILocation(line: 576, column: 23, scope: !555)
!558 = !DILocation(line: 576, column: 27, scope: !555)
!559 = !DILocation(line: 577, column: 15, scope: !555)
!560 = !DILocation(line: 579, column: 17, scope: !494)
!561 = !DILocation(line: 579, column: 15, scope: !494)
!562 = !DILocation(line: 580, column: 13, scope: !494)
!563 = !DILocation(line: 552, column: 7, scope: !564)
!564 = !DILexicalBlockFile(scope: !495, file: !1, discriminator: 1)
!565 = distinct !{!565, !491}
!566 = !DILocation(line: 585, column: 16, scope: !567)
!567 = distinct !DILexicalBlock(scope: !470, file: !1, line: 585, column: 11)
!568 = !DILocation(line: 585, column: 21, scope: !567)
!569 = !DILocation(line: 585, column: 19, scope: !567)
!570 = !DILocation(line: 585, column: 11, scope: !567)
!571 = !DILocation(line: 585, column: 42, scope: !567)
!572 = !DILocation(line: 585, column: 41, scope: !567)
!573 = !DILocation(line: 585, column: 53, scope: !567)
!574 = !DILocation(line: 585, column: 48, scope: !575)
!575 = !DILexicalBlockFile(scope: !567, file: !1, discriminator: 2)
!576 = !DILocation(line: 585, column: 47, scope: !567)
!577 = !DILocation(line: 585, column: 35, scope: !567)
!578 = !DILocation(line: 585, column: 30, scope: !567)
!579 = !DILocation(line: 585, column: 63, scope: !567)
!580 = !DILocation(line: 586, column: 12, scope: !567)
!581 = !DILocation(line: 586, column: 18, scope: !567)
!582 = !DILocation(line: 586, column: 23, scope: !567)
!583 = !DILocation(line: 586, column: 31, scope: !584)
!584 = !DILexicalBlockFile(scope: !567, file: !1, discriminator: 1)
!585 = !DILocation(line: 586, column: 36, scope: !584)
!586 = !DILocation(line: 586, column: 34, scope: !584)
!587 = !DILocation(line: 586, column: 26, scope: !584)
!588 = !DILocation(line: 586, column: 51, scope: !584)
!589 = !DILocation(line: 586, column: 50, scope: !584)
!590 = !DILocation(line: 586, column: 45, scope: !584)
!591 = !DILocation(line: 585, column: 11, scope: !592)
!592 = !DILexicalBlockFile(scope: !470, file: !1, discriminator: 1)
!593 = !DILocation(line: 588, column: 18, scope: !594)
!594 = distinct !DILexicalBlock(scope: !567, file: !1, line: 587, column: 7)
!595 = !DILocation(line: 589, column: 15, scope: !596)
!596 = distinct !DILexicalBlock(scope: !594, file: !1, line: 589, column: 15)
!597 = !DILocation(line: 589, column: 26, scope: !596)
!598 = !DILocation(line: 589, column: 23, scope: !596)
!599 = !DILocation(line: 589, column: 15, scope: !594)
!600 = !DILocation(line: 591, column: 34, scope: !601)
!601 = distinct !DILexicalBlock(scope: !596, file: !1, line: 590, column: 11)
!602 = !DILocation(line: 591, column: 39, scope: !601)
!603 = !DILocation(line: 591, column: 37, scope: !601)
!604 = !DILocation(line: 591, column: 29, scope: !601)
!605 = !DILocation(line: 591, column: 15, scope: !601)
!606 = !DILocation(line: 591, column: 23, scope: !601)
!607 = !DILocation(line: 591, column: 27, scope: !601)
!608 = !DILocation(line: 592, column: 15, scope: !601)
!609 = !DILocation(line: 594, column: 15, scope: !610)
!610 = distinct !DILexicalBlock(scope: !594, file: !1, line: 594, column: 15)
!611 = !DILocation(line: 594, column: 20, scope: !610)
!612 = !DILocation(line: 594, column: 18, scope: !610)
!613 = !DILocation(line: 594, column: 15, scope: !594)
!614 = !DILocation(line: 596, column: 19, scope: !615)
!615 = distinct !DILexicalBlock(scope: !616, file: !1, line: 596, column: 19)
!616 = distinct !DILexicalBlock(scope: !610, file: !1, line: 595, column: 11)
!617 = !DILocation(line: 596, column: 23, scope: !615)
!618 = !DILocation(line: 596, column: 19, scope: !616)
!619 = !DILocation(line: 597, column: 22, scope: !615)
!620 = !DILocation(line: 597, column: 19, scope: !615)
!621 = !DILocation(line: 598, column: 19, scope: !616)
!622 = !DILocation(line: 599, column: 11, scope: !616)
!623 = !DILocation(line: 602, column: 19, scope: !624)
!624 = distinct !DILexicalBlock(scope: !625, file: !1, line: 602, column: 19)
!625 = distinct !DILexicalBlock(scope: !610, file: !1, line: 601, column: 11)
!626 = !DILocation(line: 602, column: 23, scope: !624)
!627 = !DILocation(line: 602, column: 19, scope: !625)
!628 = !DILocation(line: 603, column: 22, scope: !624)
!629 = !DILocation(line: 603, column: 19, scope: !624)
!630 = !DILocation(line: 604, column: 19, scope: !625)
!631 = !DILocation(line: 606, column: 24, scope: !594)
!632 = !DILocation(line: 606, column: 28, scope: !594)
!633 = !DILocation(line: 606, column: 27, scope: !594)
!634 = !DILocation(line: 606, column: 31, scope: !594)
!635 = !DILocation(line: 606, column: 30, scope: !594)
!636 = !DILocation(line: 606, column: 21, scope: !594)
!637 = !DILocation(line: 607, column: 16, scope: !594)
!638 = !DILocation(line: 607, column: 14, scope: !594)
!639 = !DILocation(line: 609, column: 11, scope: !594)
!640 = distinct !{!640, !463}
!641 = !DILocation(line: 612, column: 11, scope: !567)
!642 = !DILocation(line: 615, column: 17, scope: !358)
!643 = !DILocation(line: 615, column: 3, scope: !358)
!644 = !DILocation(line: 615, column: 11, scope: !358)
!645 = !DILocation(line: 615, column: 15, scope: !358)
!646 = !DILocation(line: 619, column: 7, scope: !647)
!647 = distinct !DILexicalBlock(scope: !358, file: !1, line: 619, column: 7)
!648 = !DILocation(line: 619, column: 18, scope: !647)
!649 = !DILocation(line: 619, column: 15, scope: !647)
!650 = !DILocation(line: 619, column: 7, scope: !358)
!651 = !DILocation(line: 621, column: 7, scope: !652)
!652 = distinct !DILexicalBlock(scope: !647, file: !1, line: 620, column: 3)
!653 = distinct !{!653, !651}
!654 = !DILocation(line: 621, column: 7, scope: !655)
!655 = !DILexicalBlockFile(scope: !656, file: !1, discriminator: 1)
!656 = distinct !DILexicalBlock(scope: !652, file: !1, line: 621, column: 7)
!657 = !DILocation(line: 622, column: 3, scope: !652)
!658 = !DILocation(line: 624, column: 3, scope: !358)
!659 = !DILocation(line: 625, column: 1, scope: !358)
!660 = distinct !DISubprogram(name: "approx_c", scope: !1, file: !1, line: 205, type: !661, isLocal: true, isDefinition: true, scopeLine: 206, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !66)
!661 = !DISubroutineType(types: !662)
!662 = !{!50, !49, !50}
!663 = !DILocalVariable(name: "order", arg: 1, scope: !660, file: !1, line: 205, type: !49)
!664 = !DILocation(line: 205, column: 28, scope: !660)
!665 = !DILocalVariable(name: "qq", arg: 2, scope: !660, file: !1, line: 205, type: !50)
!666 = !DILocation(line: 205, column: 42, scope: !660)
!667 = !DILocalVariable(name: "approx", scope: !660, file: !1, line: 207, type: !50)
!668 = !DILocation(line: 207, column: 10, scope: !660)
!669 = !DILocalVariable(name: "c0", scope: !660, file: !1, line: 208, type: !50)
!670 = !DILocation(line: 208, column: 10, scope: !660)
!671 = !DILocalVariable(name: "c1", scope: !660, file: !1, line: 208, type: !50)
!672 = !DILocation(line: 208, column: 14, scope: !660)
!673 = !DILocalVariable(name: "c2", scope: !660, file: !1, line: 208, type: !50)
!674 = !DILocation(line: 208, column: 18, scope: !660)
!675 = !DILocation(line: 211, column: 7, scope: !676)
!676 = distinct !DILexicalBlock(scope: !660, file: !1, line: 211, column: 7)
!677 = !DILocation(line: 211, column: 13, scope: !676)
!678 = !DILocation(line: 211, column: 7, scope: !660)
!679 = !DILocation(line: 213, column: 5, scope: !680)
!680 = distinct !DILexicalBlock(scope: !676, file: !1, line: 212, column: 3)
!681 = distinct !{!681, !679}
!682 = !DILocation(line: 213, column: 5, scope: !683)
!683 = !DILexicalBlockFile(scope: !684, file: !1, discriminator: 1)
!684 = distinct !DILexicalBlock(scope: !680, file: !1, line: 213, column: 5)
!685 = !DILocation(line: 214, column: 3, scope: !680)
!686 = !DILocation(line: 216, column: 11, scope: !660)
!687 = !DILocation(line: 216, column: 3, scope: !660)
!688 = !DILocation(line: 219, column: 15, scope: !689)
!689 = distinct !DILexicalBlock(scope: !690, file: !1, line: 219, column: 15)
!690 = distinct !DILexicalBlock(scope: !660, file: !1, line: 217, column: 3)
!691 = !DILocation(line: 219, column: 18, scope: !689)
!692 = !DILocation(line: 219, column: 15, scope: !690)
!693 = !DILocation(line: 220, column: 38, scope: !689)
!694 = !DILocation(line: 220, column: 37, scope: !689)
!695 = !DILocation(line: 220, column: 41, scope: !689)
!696 = !DILocation(line: 220, column: 40, scope: !689)
!697 = !DILocation(line: 220, column: 34, scope: !689)
!698 = !DILocation(line: 220, column: 27, scope: !689)
!699 = !DILocation(line: 220, column: 25, scope: !689)
!700 = !DILocation(line: 220, column: 15, scope: !689)
!701 = !DILocation(line: 222, column: 33, scope: !689)
!702 = !DILocation(line: 222, column: 40, scope: !689)
!703 = !DILocation(line: 222, column: 22, scope: !689)
!704 = !DILocation(line: 222, column: 15, scope: !689)
!705 = !DILocation(line: 226, column: 15, scope: !706)
!706 = distinct !DILexicalBlock(scope: !690, file: !1, line: 226, column: 15)
!707 = !DILocation(line: 226, column: 18, scope: !706)
!708 = !DILocation(line: 226, column: 15, scope: !690)
!709 = !DILocation(line: 227, column: 32, scope: !706)
!710 = !DILocation(line: 227, column: 44, scope: !706)
!711 = !DILocation(line: 227, column: 43, scope: !706)
!712 = !DILocation(line: 227, column: 47, scope: !706)
!713 = !DILocation(line: 227, column: 46, scope: !706)
!714 = !DILocation(line: 227, column: 55, scope: !706)
!715 = !DILocation(line: 227, column: 54, scope: !706)
!716 = !DILocation(line: 227, column: 50, scope: !706)
!717 = !DILocation(line: 227, column: 58, scope: !706)
!718 = !DILocation(line: 227, column: 37, scope: !706)
!719 = !DILocation(line: 227, column: 35, scope: !706)
!720 = !DILocation(line: 227, column: 30, scope: !706)
!721 = !DILocation(line: 227, column: 25, scope: !706)
!722 = !DILocation(line: 227, column: 15, scope: !706)
!723 = !DILocation(line: 229, column: 33, scope: !706)
!724 = !DILocation(line: 229, column: 40, scope: !706)
!725 = !DILocation(line: 229, column: 22, scope: !706)
!726 = !DILocation(line: 229, column: 15, scope: !706)
!727 = !DILocation(line: 233, column: 15, scope: !728)
!728 = distinct !DILexicalBlock(scope: !690, file: !1, line: 233, column: 15)
!729 = !DILocation(line: 233, column: 18, scope: !728)
!730 = !DILocation(line: 233, column: 15, scope: !690)
!731 = !DILocation(line: 235, column: 18, scope: !732)
!732 = distinct !DILexicalBlock(scope: !728, file: !1, line: 234, column: 11)
!733 = !DILocation(line: 236, column: 28, scope: !732)
!734 = !DILocation(line: 236, column: 27, scope: !732)
!735 = !DILocation(line: 236, column: 31, scope: !732)
!736 = !DILocation(line: 236, column: 30, scope: !732)
!737 = !DILocation(line: 236, column: 24, scope: !732)
!738 = !DILocation(line: 236, column: 18, scope: !732)
!739 = !DILocation(line: 237, column: 23, scope: !732)
!740 = !DILocation(line: 237, column: 22, scope: !732)
!741 = !DILocation(line: 237, column: 26, scope: !732)
!742 = !DILocation(line: 237, column: 25, scope: !732)
!743 = !DILocation(line: 237, column: 18, scope: !732)
!744 = !DILocation(line: 238, column: 11, scope: !732)
!745 = !DILocation(line: 240, column: 33, scope: !728)
!746 = !DILocation(line: 240, column: 40, scope: !728)
!747 = !DILocation(line: 240, column: 22, scope: !728)
!748 = !DILocation(line: 240, column: 15, scope: !728)
!749 = !DILocation(line: 241, column: 11, scope: !690)
!750 = !DILocation(line: 244, column: 15, scope: !751)
!751 = distinct !DILexicalBlock(scope: !690, file: !1, line: 244, column: 15)
!752 = !DILocation(line: 244, column: 18, scope: !751)
!753 = !DILocation(line: 244, column: 15, scope: !690)
!754 = !DILocation(line: 246, column: 21, scope: !755)
!755 = distinct !DILexicalBlock(scope: !751, file: !1, line: 245, column: 11)
!756 = !DILocation(line: 246, column: 20, scope: !755)
!757 = !DILocation(line: 246, column: 24, scope: !755)
!758 = !DILocation(line: 246, column: 18, scope: !755)
!759 = !DILocation(line: 247, column: 23, scope: !755)
!760 = !DILocation(line: 247, column: 22, scope: !755)
!761 = !DILocation(line: 247, column: 26, scope: !755)
!762 = !DILocation(line: 247, column: 36, scope: !755)
!763 = !DILocation(line: 247, column: 35, scope: !755)
!764 = !DILocation(line: 247, column: 39, scope: !755)
!765 = !DILocation(line: 247, column: 38, scope: !755)
!766 = !DILocation(line: 247, column: 32, scope: !755)
!767 = !DILocation(line: 247, column: 18, scope: !755)
!768 = !DILocation(line: 248, column: 20, scope: !755)
!769 = !DILocation(line: 248, column: 23, scope: !755)
!770 = !DILocation(line: 248, column: 22, scope: !755)
!771 = !DILocation(line: 248, column: 27, scope: !755)
!772 = !DILocation(line: 248, column: 30, scope: !755)
!773 = !DILocation(line: 248, column: 25, scope: !755)
!774 = !DILocation(line: 248, column: 18, scope: !755)
!775 = !DILocation(line: 249, column: 11, scope: !755)
!776 = !DILocation(line: 251, column: 33, scope: !751)
!777 = !DILocation(line: 251, column: 40, scope: !751)
!778 = !DILocation(line: 251, column: 22, scope: !751)
!779 = !DILocation(line: 251, column: 15, scope: !751)
!780 = !DILocation(line: 252, column: 11, scope: !690)
!781 = !DILocation(line: 255, column: 15, scope: !782)
!782 = distinct !DILexicalBlock(scope: !690, file: !1, line: 255, column: 15)
!783 = !DILocation(line: 255, column: 21, scope: !782)
!784 = !DILocation(line: 255, column: 15, scope: !690)
!785 = !DILocation(line: 257, column: 23, scope: !786)
!786 = distinct !DILexicalBlock(scope: !787, file: !1, line: 257, column: 19)
!787 = distinct !DILexicalBlock(scope: !782, file: !1, line: 256, column: 11)
!788 = !DILocation(line: 257, column: 22, scope: !786)
!789 = !DILocation(line: 257, column: 38, scope: !786)
!790 = !DILocation(line: 257, column: 33, scope: !786)
!791 = !DILocation(line: 257, column: 32, scope: !786)
!792 = !DILocation(line: 257, column: 29, scope: !786)
!793 = !DILocation(line: 257, column: 19, scope: !787)
!794 = !DILocalVariable(name: "n2", scope: !795, file: !1, line: 260, type: !50)
!795 = distinct !DILexicalBlock(scope: !786, file: !1, line: 258, column: 15)
!796 = !DILocation(line: 260, column: 26, scope: !795)
!797 = !DILocation(line: 260, column: 40, scope: !795)
!798 = !DILocation(line: 260, column: 46, scope: !795)
!799 = !DILocation(line: 260, column: 45, scope: !795)
!800 = !DILocation(line: 260, column: 31, scope: !795)
!801 = !DILocalVariable(name: "n22", scope: !795, file: !1, line: 261, type: !50)
!802 = !DILocation(line: 261, column: 26, scope: !795)
!803 = !DILocation(line: 261, column: 42, scope: !795)
!804 = !DILocation(line: 261, column: 45, scope: !795)
!805 = !DILocation(line: 261, column: 51, scope: !795)
!806 = !DILocation(line: 261, column: 54, scope: !795)
!807 = !DILocation(line: 261, column: 49, scope: !795)
!808 = !DILocalVariable(name: "q2", scope: !795, file: !1, line: 262, type: !50)
!809 = !DILocation(line: 262, column: 26, scope: !795)
!810 = !DILocation(line: 262, column: 31, scope: !795)
!811 = !DILocation(line: 262, column: 34, scope: !795)
!812 = !DILocation(line: 262, column: 33, scope: !795)
!813 = !DILocalVariable(name: "q4", scope: !795, file: !1, line: 263, type: !50)
!814 = !DILocation(line: 263, column: 26, scope: !795)
!815 = !DILocation(line: 263, column: 31, scope: !795)
!816 = !DILocation(line: 263, column: 34, scope: !795)
!817 = !DILocation(line: 263, column: 33, scope: !795)
!818 = !DILocation(line: 264, column: 28, scope: !795)
!819 = !DILocation(line: 264, column: 37, scope: !795)
!820 = !DILocation(line: 264, column: 36, scope: !795)
!821 = !DILocation(line: 264, column: 41, scope: !795)
!822 = !DILocation(line: 264, column: 44, scope: !795)
!823 = !DILocation(line: 264, column: 39, scope: !795)
!824 = !DILocation(line: 264, column: 31, scope: !795)
!825 = !DILocation(line: 264, column: 26, scope: !795)
!826 = !DILocation(line: 265, column: 32, scope: !795)
!827 = !DILocation(line: 265, column: 31, scope: !795)
!828 = !DILocation(line: 265, column: 35, scope: !795)
!829 = !DILocation(line: 265, column: 40, scope: !795)
!830 = !DILocation(line: 265, column: 39, scope: !795)
!831 = !DILocation(line: 265, column: 47, scope: !795)
!832 = !DILocation(line: 265, column: 46, scope: !795)
!833 = !DILocation(line: 265, column: 52, scope: !795)
!834 = !DILocation(line: 265, column: 55, scope: !795)
!835 = !DILocation(line: 265, column: 50, scope: !795)
!836 = !DILocation(line: 265, column: 61, scope: !795)
!837 = !DILocation(line: 265, column: 64, scope: !795)
!838 = !DILocation(line: 265, column: 59, scope: !795)
!839 = !DILocation(line: 265, column: 42, scope: !795)
!840 = !DILocation(line: 265, column: 26, scope: !795)
!841 = !DILocation(line: 266, column: 32, scope: !795)
!842 = !DILocation(line: 266, column: 31, scope: !795)
!843 = !DILocation(line: 266, column: 35, scope: !795)
!844 = !DILocation(line: 266, column: 34, scope: !795)
!845 = !DILocation(line: 266, column: 43, scope: !795)
!846 = !DILocation(line: 266, column: 42, scope: !795)
!847 = !DILocation(line: 266, column: 38, scope: !795)
!848 = !DILocation(line: 266, column: 46, scope: !795)
!849 = !DILocation(line: 266, column: 52, scope: !795)
!850 = !DILocation(line: 266, column: 51, scope: !795)
!851 = !DILocation(line: 266, column: 55, scope: !795)
!852 = !DILocation(line: 266, column: 54, scope: !795)
!853 = !DILocation(line: 267, column: 27, scope: !795)
!854 = !DILocation(line: 267, column: 26, scope: !795)
!855 = !DILocation(line: 267, column: 31, scope: !795)
!856 = !DILocation(line: 267, column: 30, scope: !795)
!857 = !DILocation(line: 267, column: 36, scope: !795)
!858 = !DILocation(line: 267, column: 39, scope: !795)
!859 = !DILocation(line: 267, column: 34, scope: !795)
!860 = !DILocation(line: 267, column: 45, scope: !795)
!861 = !DILocation(line: 267, column: 48, scope: !795)
!862 = !DILocation(line: 267, column: 43, scope: !795)
!863 = !DILocation(line: 267, column: 54, scope: !795)
!864 = !DILocation(line: 267, column: 57, scope: !795)
!865 = !DILocation(line: 267, column: 52, scope: !795)
!866 = !DILocation(line: 266, column: 57, scope: !795)
!867 = !DILocation(line: 266, column: 26, scope: !795)
!868 = !DILocation(line: 268, column: 27, scope: !869)
!869 = distinct !DILexicalBlock(scope: !795, file: !1, line: 268, column: 23)
!870 = !DILocation(line: 268, column: 26, scope: !869)
!871 = !DILocation(line: 268, column: 42, scope: !869)
!872 = !DILocation(line: 268, column: 37, scope: !869)
!873 = !DILocation(line: 268, column: 36, scope: !869)
!874 = !DILocation(line: 268, column: 33, scope: !869)
!875 = !DILocation(line: 268, column: 23, scope: !795)
!876 = !DILocation(line: 270, column: 44, scope: !877)
!877 = distinct !DILexicalBlock(scope: !869, file: !1, line: 269, column: 19)
!878 = !DILocation(line: 270, column: 51, scope: !877)
!879 = !DILocation(line: 270, column: 33, scope: !877)
!880 = !DILocation(line: 270, column: 30, scope: !877)
!881 = !DILocation(line: 271, column: 30, scope: !877)
!882 = !DILocation(line: 272, column: 19, scope: !877)
!883 = !DILocation(line: 273, column: 15, scope: !795)
!884 = !DILocation(line: 275, column: 39, scope: !786)
!885 = !DILocation(line: 275, column: 46, scope: !786)
!886 = !DILocation(line: 275, column: 28, scope: !786)
!887 = !DILocation(line: 275, column: 26, scope: !786)
!888 = !DILocation(line: 277, column: 22, scope: !787)
!889 = !DILocation(line: 277, column: 15, scope: !787)
!890 = !DILocation(line: 280, column: 22, scope: !782)
!891 = !DILocation(line: 280, column: 28, scope: !782)
!892 = !DILocation(line: 280, column: 27, scope: !782)
!893 = !DILocation(line: 280, column: 15, scope: !782)
!894 = !DILocation(line: 284, column: 24, scope: !660)
!895 = !DILocation(line: 284, column: 28, scope: !660)
!896 = !DILocation(line: 284, column: 32, scope: !660)
!897 = !DILocation(line: 284, column: 12, scope: !660)
!898 = !DILocation(line: 284, column: 10, scope: !660)
!899 = !DILocation(line: 286, column: 8, scope: !900)
!900 = distinct !DILexicalBlock(scope: !660, file: !1, line: 286, column: 8)
!901 = !DILocation(line: 286, column: 15, scope: !900)
!902 = !DILocation(line: 286, column: 19, scope: !900)
!903 = !DILocation(line: 286, column: 27, scope: !904)
!904 = !DILexicalBlockFile(scope: !900, file: !1, discriminator: 1)
!905 = !DILocation(line: 286, column: 22, scope: !904)
!906 = !DILocation(line: 286, column: 37, scope: !904)
!907 = !DILocation(line: 286, column: 36, scope: !904)
!908 = !DILocation(line: 286, column: 31, scope: !904)
!909 = !DILocation(line: 286, column: 8, scope: !904)
!910 = !DILocation(line: 287, column: 25, scope: !900)
!911 = !DILocation(line: 287, column: 30, scope: !900)
!912 = !DILocation(line: 287, column: 34, scope: !900)
!913 = !DILocation(line: 287, column: 14, scope: !900)
!914 = !DILocation(line: 287, column: 7, scope: !900)
!915 = !DILocation(line: 289, column: 15, scope: !900)
!916 = !DILocation(line: 289, column: 21, scope: !900)
!917 = !DILocation(line: 289, column: 20, scope: !900)
!918 = !DILocation(line: 289, column: 34, scope: !900)
!919 = !DILocation(line: 289, column: 29, scope: !900)
!920 = !DILocation(line: 289, column: 27, scope: !900)
!921 = !DILocation(line: 289, column: 7, scope: !900)
!922 = !DILocation(line: 290, column: 1, scope: !660)
!923 = distinct !DISubprogram(name: "ceer", scope: !1, file: !1, line: 36, type: !924, isLocal: true, isDefinition: true, scopeLine: 37, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !66)
!924 = !DISubroutineType(types: !925)
!925 = !{!50, !49, !50, !50, !49}
!926 = !DILocalVariable(name: "order", arg: 1, scope: !923, file: !1, line: 36, type: !49)
!927 = !DILocation(line: 36, column: 24, scope: !923)
!928 = !DILocalVariable(name: "qq", arg: 2, scope: !923, file: !1, line: 36, type: !50)
!929 = !DILocation(line: 36, column: 38, scope: !923)
!930 = !DILocalVariable(name: "aa", arg: 3, scope: !923, file: !1, line: 36, type: !50)
!931 = !DILocation(line: 36, column: 49, scope: !923)
!932 = !DILocalVariable(name: "nterms", arg: 4, scope: !923, file: !1, line: 36, type: !49)
!933 = !DILocation(line: 36, column: 57, scope: !923)
!934 = !DILocalVariable(name: "term", scope: !923, file: !1, line: 39, type: !50)
!935 = !DILocation(line: 39, column: 10, scope: !923)
!936 = !DILocalVariable(name: "term1", scope: !923, file: !1, line: 39, type: !50)
!937 = !DILocation(line: 39, column: 16, scope: !923)
!938 = !DILocalVariable(name: "ii", scope: !923, file: !1, line: 40, type: !49)
!939 = !DILocation(line: 40, column: 7, scope: !923)
!940 = !DILocalVariable(name: "n1", scope: !923, file: !1, line: 40, type: !49)
!941 = !DILocation(line: 40, column: 11, scope: !923)
!942 = !DILocation(line: 43, column: 7, scope: !943)
!943 = distinct !DILexicalBlock(scope: !923, file: !1, line: 43, column: 7)
!944 = !DILocation(line: 43, column: 13, scope: !943)
!945 = !DILocation(line: 43, column: 7, scope: !923)
!946 = !DILocation(line: 44, column: 12, scope: !943)
!947 = !DILocation(line: 44, column: 7, scope: !943)
!948 = !DILocation(line: 47, column: 18, scope: !949)
!949 = distinct !DILexicalBlock(scope: !943, file: !1, line: 46, column: 3)
!950 = !DILocation(line: 47, column: 17, scope: !949)
!951 = !DILocation(line: 47, column: 21, scope: !949)
!952 = !DILocation(line: 47, column: 20, scope: !949)
!953 = !DILocation(line: 47, column: 24, scope: !949)
!954 = !DILocation(line: 47, column: 23, scope: !949)
!955 = !DILocation(line: 47, column: 12, scope: !949)
!956 = !DILocation(line: 49, column: 11, scope: !957)
!957 = distinct !DILexicalBlock(scope: !949, file: !1, line: 49, column: 11)
!958 = !DILocation(line: 49, column: 17, scope: !957)
!959 = !DILocation(line: 49, column: 11, scope: !949)
!960 = !DILocation(line: 51, column: 16, scope: !961)
!961 = distinct !DILexicalBlock(scope: !957, file: !1, line: 50, column: 7)
!962 = !DILocation(line: 51, column: 21, scope: !961)
!963 = !DILocation(line: 51, column: 24, scope: !961)
!964 = !DILocation(line: 51, column: 14, scope: !961)
!965 = !DILocation(line: 53, column: 18, scope: !966)
!966 = distinct !DILexicalBlock(scope: !961, file: !1, line: 53, column: 11)
!967 = !DILocation(line: 53, column: 16, scope: !966)
!968 = !DILocation(line: 53, column: 22, scope: !969)
!969 = !DILexicalBlockFile(scope: !970, file: !1, discriminator: 1)
!970 = distinct !DILexicalBlock(scope: !966, file: !1, line: 53, column: 11)
!971 = !DILocation(line: 53, column: 25, scope: !969)
!972 = !DILocation(line: 53, column: 24, scope: !969)
!973 = !DILocation(line: 53, column: 11, scope: !969)
!974 = !DILocation(line: 54, column: 22, scope: !970)
!975 = !DILocation(line: 54, column: 25, scope: !970)
!976 = !DILocation(line: 54, column: 24, scope: !970)
!977 = !DILocation(line: 54, column: 29, scope: !970)
!978 = !DILocation(line: 54, column: 39, scope: !970)
!979 = !DILocation(line: 54, column: 41, scope: !970)
!980 = !DILocation(line: 54, column: 38, scope: !970)
!981 = !DILocation(line: 54, column: 37, scope: !970)
!982 = !DILocation(line: 54, column: 46, scope: !970)
!983 = !DILocation(line: 54, column: 48, scope: !970)
!984 = !DILocation(line: 54, column: 45, scope: !970)
!985 = !DILocation(line: 54, column: 44, scope: !970)
!986 = !DILocation(line: 54, column: 32, scope: !970)
!987 = !DILocation(line: 54, column: 54, scope: !970)
!988 = !DILocation(line: 54, column: 52, scope: !970)
!989 = !DILocation(line: 54, column: 27, scope: !970)
!990 = !DILocation(line: 54, column: 20, scope: !970)
!991 = !DILocation(line: 54, column: 15, scope: !970)
!992 = !DILocation(line: 53, column: 31, scope: !993)
!993 = !DILexicalBlockFile(scope: !970, file: !1, discriminator: 2)
!994 = !DILocation(line: 53, column: 11, scope: !993)
!995 = distinct !{!995, !996}
!996 = !DILocation(line: 53, column: 11, scope: !961)
!997 = !DILocation(line: 55, column: 7, scope: !961)
!998 = !DILocation(line: 58, column: 11, scope: !923)
!999 = !DILocation(line: 58, column: 17, scope: !923)
!1000 = !DILocation(line: 58, column: 16, scope: !923)
!1001 = !DILocation(line: 58, column: 8, scope: !923)
!1002 = !DILocation(line: 60, column: 9, scope: !923)
!1003 = !DILocation(line: 62, column: 10, scope: !1004)
!1004 = distinct !DILexicalBlock(scope: !923, file: !1, line: 62, column: 3)
!1005 = !DILocation(line: 62, column: 8, scope: !1004)
!1006 = !DILocation(line: 62, column: 14, scope: !1007)
!1007 = !DILexicalBlockFile(scope: !1008, file: !1, discriminator: 1)
!1008 = distinct !DILexicalBlock(scope: !1004, file: !1, line: 62, column: 3)
!1009 = !DILocation(line: 62, column: 17, scope: !1007)
!1010 = !DILocation(line: 62, column: 16, scope: !1007)
!1011 = !DILocation(line: 62, column: 3, scope: !1007)
!1012 = !DILocation(line: 63, column: 15, scope: !1008)
!1013 = !DILocation(line: 63, column: 18, scope: !1008)
!1014 = !DILocation(line: 63, column: 17, scope: !1008)
!1015 = !DILocation(line: 64, column: 10, scope: !1008)
!1016 = !DILocation(line: 64, column: 16, scope: !1008)
!1017 = !DILocation(line: 64, column: 29, scope: !1008)
!1018 = !DILocation(line: 64, column: 38, scope: !1008)
!1019 = !DILocation(line: 64, column: 36, scope: !1008)
!1020 = !DILocation(line: 64, column: 28, scope: !1008)
!1021 = !DILocation(line: 64, column: 27, scope: !1008)
!1022 = !DILocation(line: 64, column: 22, scope: !1008)
!1023 = !DILocation(line: 64, column: 44, scope: !1008)
!1024 = !DILocation(line: 64, column: 57, scope: !1008)
!1025 = !DILocation(line: 64, column: 66, scope: !1008)
!1026 = !DILocation(line: 64, column: 64, scope: !1008)
!1027 = !DILocation(line: 64, column: 56, scope: !1008)
!1028 = !DILocation(line: 64, column: 55, scope: !1008)
!1029 = !DILocation(line: 64, column: 50, scope: !1008)
!1030 = !DILocation(line: 64, column: 42, scope: !1008)
!1031 = !DILocation(line: 64, column: 13, scope: !1008)
!1032 = !DILocation(line: 64, column: 73, scope: !1008)
!1033 = !DILocation(line: 64, column: 71, scope: !1008)
!1034 = !DILocation(line: 63, column: 20, scope: !1008)
!1035 = !DILocation(line: 63, column: 13, scope: !1008)
!1036 = !DILocation(line: 63, column: 7, scope: !1008)
!1037 = !DILocation(line: 62, column: 27, scope: !1038)
!1038 = !DILexicalBlockFile(scope: !1008, file: !1, discriminator: 2)
!1039 = !DILocation(line: 62, column: 3, scope: !1038)
!1040 = distinct !{!1040, !1041}
!1041 = !DILocation(line: 62, column: 3, scope: !923)
!1042 = !DILocation(line: 66, column: 7, scope: !1043)
!1043 = distinct !DILexicalBlock(scope: !923, file: !1, line: 66, column: 7)
!1044 = !DILocation(line: 66, column: 13, scope: !1043)
!1045 = !DILocation(line: 66, column: 7, scope: !923)
!1046 = !DILocation(line: 67, column: 13, scope: !1043)
!1047 = !DILocation(line: 67, column: 7, scope: !1043)
!1048 = !DILocation(line: 69, column: 11, scope: !923)
!1049 = !DILocation(line: 69, column: 18, scope: !923)
!1050 = !DILocation(line: 69, column: 16, scope: !923)
!1051 = !DILocation(line: 69, column: 26, scope: !923)
!1052 = !DILocation(line: 69, column: 24, scope: !923)
!1053 = !DILocation(line: 69, column: 3, scope: !923)
!1054 = distinct !DISubprogram(name: "ceor", scope: !1, file: !1, line: 73, type: !924, isLocal: true, isDefinition: true, scopeLine: 74, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !66)
!1055 = !DILocalVariable(name: "order", arg: 1, scope: !1054, file: !1, line: 73, type: !49)
!1056 = !DILocation(line: 73, column: 24, scope: !1054)
!1057 = !DILocalVariable(name: "qq", arg: 2, scope: !1054, file: !1, line: 73, type: !50)
!1058 = !DILocation(line: 73, column: 38, scope: !1054)
!1059 = !DILocalVariable(name: "aa", arg: 3, scope: !1054, file: !1, line: 73, type: !50)
!1060 = !DILocation(line: 73, column: 49, scope: !1054)
!1061 = !DILocalVariable(name: "nterms", arg: 4, scope: !1054, file: !1, line: 73, type: !49)
!1062 = !DILocation(line: 73, column: 57, scope: !1054)
!1063 = !DILocalVariable(name: "term", scope: !1054, file: !1, line: 75, type: !50)
!1064 = !DILocation(line: 75, column: 10, scope: !1054)
!1065 = !DILocalVariable(name: "term1", scope: !1054, file: !1, line: 75, type: !50)
!1066 = !DILocation(line: 75, column: 16, scope: !1054)
!1067 = !DILocalVariable(name: "ii", scope: !1054, file: !1, line: 76, type: !49)
!1068 = !DILocation(line: 76, column: 7, scope: !1054)
!1069 = !DILocalVariable(name: "n1", scope: !1054, file: !1, line: 76, type: !49)
!1070 = !DILocation(line: 76, column: 11, scope: !1054)
!1071 = !DILocation(line: 78, column: 10, scope: !1054)
!1072 = !DILocation(line: 78, column: 8, scope: !1054)
!1073 = !DILocation(line: 79, column: 21, scope: !1054)
!1074 = !DILocation(line: 79, column: 14, scope: !1054)
!1075 = !DILocation(line: 79, column: 26, scope: !1054)
!1076 = !DILocation(line: 79, column: 31, scope: !1054)
!1077 = !DILocation(line: 79, column: 8, scope: !1054)
!1078 = !DILocation(line: 79, column: 6, scope: !1054)
!1079 = !DILocation(line: 81, column: 10, scope: !1080)
!1080 = distinct !DILexicalBlock(scope: !1054, file: !1, line: 81, column: 3)
!1081 = !DILocation(line: 81, column: 8, scope: !1080)
!1082 = !DILocation(line: 81, column: 14, scope: !1083)
!1083 = !DILexicalBlockFile(scope: !1084, file: !1, discriminator: 1)
!1084 = distinct !DILexicalBlock(scope: !1080, file: !1, line: 81, column: 3)
!1085 = !DILocation(line: 81, column: 17, scope: !1083)
!1086 = !DILocation(line: 81, column: 16, scope: !1083)
!1087 = !DILocation(line: 81, column: 3, scope: !1083)
!1088 = !DILocation(line: 82, column: 14, scope: !1084)
!1089 = !DILocation(line: 82, column: 17, scope: !1084)
!1090 = !DILocation(line: 82, column: 16, scope: !1084)
!1091 = !DILocation(line: 82, column: 21, scope: !1084)
!1092 = !DILocation(line: 82, column: 31, scope: !1084)
!1093 = !DILocation(line: 82, column: 30, scope: !1084)
!1094 = !DILocation(line: 82, column: 34, scope: !1084)
!1095 = !DILocation(line: 82, column: 46, scope: !1084)
!1096 = !DILocation(line: 82, column: 45, scope: !1084)
!1097 = !DILocation(line: 82, column: 49, scope: !1084)
!1098 = !DILocation(line: 82, column: 40, scope: !1084)
!1099 = !DILocation(line: 82, column: 24, scope: !1084)
!1100 = !DILocation(line: 82, column: 58, scope: !1084)
!1101 = !DILocation(line: 82, column: 56, scope: !1084)
!1102 = !DILocation(line: 82, column: 19, scope: !1084)
!1103 = !DILocation(line: 82, column: 12, scope: !1084)
!1104 = !DILocation(line: 82, column: 7, scope: !1084)
!1105 = !DILocation(line: 81, column: 23, scope: !1106)
!1106 = !DILexicalBlockFile(scope: !1084, file: !1, discriminator: 2)
!1107 = !DILocation(line: 81, column: 3, scope: !1106)
!1108 = distinct !{!1108, !1109}
!1109 = !DILocation(line: 81, column: 3, scope: !1054)
!1110 = !DILocation(line: 83, column: 11, scope: !1054)
!1111 = !DILocation(line: 83, column: 17, scope: !1054)
!1112 = !DILocation(line: 83, column: 16, scope: !1054)
!1113 = !DILocation(line: 83, column: 8, scope: !1054)
!1114 = !DILocation(line: 85, column: 9, scope: !1054)
!1115 = !DILocation(line: 86, column: 10, scope: !1116)
!1116 = distinct !DILexicalBlock(scope: !1054, file: !1, line: 86, column: 3)
!1117 = !DILocation(line: 86, column: 8, scope: !1116)
!1118 = !DILocation(line: 86, column: 14, scope: !1119)
!1119 = !DILexicalBlockFile(scope: !1120, file: !1, discriminator: 1)
!1120 = distinct !DILexicalBlock(scope: !1116, file: !1, line: 86, column: 3)
!1121 = !DILocation(line: 86, column: 17, scope: !1119)
!1122 = !DILocation(line: 86, column: 16, scope: !1119)
!1123 = !DILocation(line: 86, column: 3, scope: !1119)
!1124 = !DILocation(line: 87, column: 15, scope: !1120)
!1125 = !DILocation(line: 87, column: 18, scope: !1120)
!1126 = !DILocation(line: 87, column: 17, scope: !1120)
!1127 = !DILocation(line: 88, column: 10, scope: !1120)
!1128 = !DILocation(line: 88, column: 16, scope: !1120)
!1129 = !DILocation(line: 88, column: 29, scope: !1120)
!1130 = !DILocation(line: 88, column: 38, scope: !1120)
!1131 = !DILocation(line: 88, column: 36, scope: !1120)
!1132 = !DILocation(line: 88, column: 28, scope: !1120)
!1133 = !DILocation(line: 88, column: 27, scope: !1120)
!1134 = !DILocation(line: 88, column: 22, scope: !1120)
!1135 = !DILocation(line: 88, column: 44, scope: !1120)
!1136 = !DILocation(line: 88, column: 57, scope: !1120)
!1137 = !DILocation(line: 88, column: 66, scope: !1120)
!1138 = !DILocation(line: 88, column: 64, scope: !1120)
!1139 = !DILocation(line: 88, column: 56, scope: !1120)
!1140 = !DILocation(line: 88, column: 55, scope: !1120)
!1141 = !DILocation(line: 88, column: 50, scope: !1120)
!1142 = !DILocation(line: 88, column: 42, scope: !1120)
!1143 = !DILocation(line: 88, column: 13, scope: !1120)
!1144 = !DILocation(line: 88, column: 73, scope: !1120)
!1145 = !DILocation(line: 88, column: 71, scope: !1120)
!1146 = !DILocation(line: 87, column: 20, scope: !1120)
!1147 = !DILocation(line: 87, column: 13, scope: !1120)
!1148 = !DILocation(line: 87, column: 7, scope: !1120)
!1149 = !DILocation(line: 86, column: 27, scope: !1150)
!1150 = !DILexicalBlockFile(scope: !1120, file: !1, discriminator: 2)
!1151 = !DILocation(line: 86, column: 3, scope: !1150)
!1152 = distinct !{!1152, !1153}
!1153 = !DILocation(line: 86, column: 3, scope: !1054)
!1154 = !DILocation(line: 90, column: 11, scope: !1054)
!1155 = !DILocation(line: 90, column: 18, scope: !1054)
!1156 = !DILocation(line: 90, column: 16, scope: !1054)
!1157 = !DILocation(line: 90, column: 26, scope: !1054)
!1158 = !DILocation(line: 90, column: 24, scope: !1054)
!1159 = !DILocation(line: 90, column: 3, scope: !1054)
!1160 = distinct !DISubprogram(name: "approx_s", scope: !1, file: !1, line: 293, type: !661, isLocal: true, isDefinition: true, scopeLine: 294, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !66)
!1161 = !DILocalVariable(name: "order", arg: 1, scope: !1160, file: !1, line: 293, type: !49)
!1162 = !DILocation(line: 293, column: 28, scope: !1160)
!1163 = !DILocalVariable(name: "qq", arg: 2, scope: !1160, file: !1, line: 293, type: !50)
!1164 = !DILocation(line: 293, column: 42, scope: !1160)
!1165 = !DILocalVariable(name: "approx", scope: !1160, file: !1, line: 295, type: !50)
!1166 = !DILocation(line: 295, column: 10, scope: !1160)
!1167 = !DILocalVariable(name: "c0", scope: !1160, file: !1, line: 296, type: !50)
!1168 = !DILocation(line: 296, column: 10, scope: !1160)
!1169 = !DILocalVariable(name: "c1", scope: !1160, file: !1, line: 296, type: !50)
!1170 = !DILocation(line: 296, column: 14, scope: !1160)
!1171 = !DILocalVariable(name: "c2", scope: !1160, file: !1, line: 296, type: !50)
!1172 = !DILocation(line: 296, column: 18, scope: !1160)
!1173 = !DILocation(line: 299, column: 7, scope: !1174)
!1174 = distinct !DILexicalBlock(scope: !1160, file: !1, line: 299, column: 7)
!1175 = !DILocation(line: 299, column: 13, scope: !1174)
!1176 = !DILocation(line: 299, column: 7, scope: !1160)
!1177 = !DILocation(line: 301, column: 5, scope: !1178)
!1178 = distinct !DILexicalBlock(scope: !1174, file: !1, line: 300, column: 3)
!1179 = distinct !{!1179, !1177}
!1180 = !DILocation(line: 301, column: 5, scope: !1181)
!1181 = !DILexicalBlockFile(scope: !1182, file: !1, discriminator: 1)
!1182 = distinct !DILexicalBlock(scope: !1178, file: !1, line: 301, column: 5)
!1183 = !DILocation(line: 302, column: 3, scope: !1178)
!1184 = !DILocation(line: 304, column: 11, scope: !1160)
!1185 = !DILocation(line: 304, column: 3, scope: !1160)
!1186 = !DILocation(line: 307, column: 15, scope: !1187)
!1187 = distinct !DILexicalBlock(scope: !1188, file: !1, line: 307, column: 15)
!1188 = distinct !DILexicalBlock(scope: !1160, file: !1, line: 305, column: 3)
!1189 = !DILocation(line: 307, column: 18, scope: !1187)
!1190 = !DILocation(line: 307, column: 15, scope: !1188)
!1191 = !DILocation(line: 308, column: 32, scope: !1187)
!1192 = !DILocation(line: 308, column: 44, scope: !1187)
!1193 = !DILocation(line: 308, column: 43, scope: !1187)
!1194 = !DILocation(line: 308, column: 47, scope: !1187)
!1195 = !DILocation(line: 308, column: 46, scope: !1187)
!1196 = !DILocation(line: 308, column: 55, scope: !1187)
!1197 = !DILocation(line: 308, column: 54, scope: !1187)
!1198 = !DILocation(line: 308, column: 50, scope: !1187)
!1199 = !DILocation(line: 308, column: 58, scope: !1187)
!1200 = !DILocation(line: 308, column: 37, scope: !1187)
!1201 = !DILocation(line: 308, column: 35, scope: !1187)
!1202 = !DILocation(line: 308, column: 30, scope: !1187)
!1203 = !DILocation(line: 308, column: 25, scope: !1187)
!1204 = !DILocation(line: 308, column: 15, scope: !1187)
!1205 = !DILocation(line: 310, column: 33, scope: !1187)
!1206 = !DILocation(line: 310, column: 38, scope: !1187)
!1207 = !DILocation(line: 310, column: 42, scope: !1187)
!1208 = !DILocation(line: 310, column: 22, scope: !1187)
!1209 = !DILocation(line: 310, column: 15, scope: !1187)
!1210 = !DILocation(line: 314, column: 15, scope: !1211)
!1211 = distinct !DILexicalBlock(scope: !1188, file: !1, line: 314, column: 15)
!1212 = !DILocation(line: 314, column: 18, scope: !1211)
!1213 = !DILocation(line: 314, column: 15, scope: !1188)
!1214 = !DILocation(line: 315, column: 38, scope: !1211)
!1215 = !DILocation(line: 315, column: 41, scope: !1211)
!1216 = !DILocation(line: 315, column: 40, scope: !1211)
!1217 = !DILocation(line: 315, column: 36, scope: !1211)
!1218 = !DILocation(line: 315, column: 28, scope: !1211)
!1219 = !DILocation(line: 315, column: 26, scope: !1211)
!1220 = !DILocation(line: 315, column: 15, scope: !1211)
!1221 = !DILocation(line: 317, column: 33, scope: !1211)
!1222 = !DILocation(line: 317, column: 38, scope: !1211)
!1223 = !DILocation(line: 317, column: 42, scope: !1211)
!1224 = !DILocation(line: 317, column: 22, scope: !1211)
!1225 = !DILocation(line: 317, column: 15, scope: !1211)
!1226 = !DILocation(line: 321, column: 15, scope: !1227)
!1227 = distinct !DILexicalBlock(scope: !1188, file: !1, line: 321, column: 15)
!1228 = !DILocation(line: 321, column: 18, scope: !1227)
!1229 = !DILocation(line: 321, column: 15, scope: !1188)
!1230 = !DILocation(line: 323, column: 20, scope: !1231)
!1231 = distinct !DILexicalBlock(scope: !1227, file: !1, line: 322, column: 11)
!1232 = !DILocation(line: 323, column: 23, scope: !1231)
!1233 = !DILocation(line: 323, column: 18, scope: !1231)
!1234 = !DILocation(line: 324, column: 30, scope: !1231)
!1235 = !DILocation(line: 324, column: 29, scope: !1231)
!1236 = !DILocation(line: 324, column: 25, scope: !1231)
!1237 = !DILocation(line: 324, column: 37, scope: !1231)
!1238 = !DILocation(line: 324, column: 36, scope: !1231)
!1239 = !DILocation(line: 324, column: 40, scope: !1231)
!1240 = !DILocation(line: 324, column: 39, scope: !1231)
!1241 = !DILocation(line: 324, column: 33, scope: !1231)
!1242 = !DILocation(line: 324, column: 18, scope: !1231)
!1243 = !DILocation(line: 325, column: 20, scope: !1231)
!1244 = !DILocation(line: 325, column: 23, scope: !1231)
!1245 = !DILocation(line: 325, column: 22, scope: !1231)
!1246 = !DILocation(line: 325, column: 31, scope: !1231)
!1247 = !DILocation(line: 325, column: 29, scope: !1231)
!1248 = !DILocation(line: 325, column: 25, scope: !1231)
!1249 = !DILocation(line: 325, column: 18, scope: !1231)
!1250 = !DILocation(line: 326, column: 11, scope: !1231)
!1251 = !DILocation(line: 328, column: 33, scope: !1227)
!1252 = !DILocation(line: 328, column: 38, scope: !1227)
!1253 = !DILocation(line: 328, column: 42, scope: !1227)
!1254 = !DILocation(line: 328, column: 22, scope: !1227)
!1255 = !DILocation(line: 328, column: 15, scope: !1227)
!1256 = !DILocation(line: 329, column: 11, scope: !1188)
!1257 = !DILocation(line: 332, column: 15, scope: !1258)
!1258 = distinct !DILexicalBlock(scope: !1188, file: !1, line: 332, column: 15)
!1259 = !DILocation(line: 332, column: 21, scope: !1258)
!1260 = !DILocation(line: 332, column: 15, scope: !1188)
!1261 = !DILocation(line: 334, column: 23, scope: !1262)
!1262 = distinct !DILexicalBlock(scope: !1263, file: !1, line: 334, column: 19)
!1263 = distinct !DILexicalBlock(scope: !1258, file: !1, line: 333, column: 11)
!1264 = !DILocation(line: 334, column: 22, scope: !1262)
!1265 = !DILocation(line: 334, column: 38, scope: !1262)
!1266 = !DILocation(line: 334, column: 33, scope: !1262)
!1267 = !DILocation(line: 334, column: 32, scope: !1262)
!1268 = !DILocation(line: 334, column: 29, scope: !1262)
!1269 = !DILocation(line: 334, column: 19, scope: !1263)
!1270 = !DILocalVariable(name: "n2", scope: !1271, file: !1, line: 337, type: !50)
!1271 = distinct !DILexicalBlock(scope: !1262, file: !1, line: 335, column: 15)
!1272 = !DILocation(line: 337, column: 26, scope: !1271)
!1273 = !DILocation(line: 337, column: 40, scope: !1271)
!1274 = !DILocation(line: 337, column: 46, scope: !1271)
!1275 = !DILocation(line: 337, column: 45, scope: !1271)
!1276 = !DILocation(line: 337, column: 31, scope: !1271)
!1277 = !DILocalVariable(name: "n22", scope: !1271, file: !1, line: 338, type: !50)
!1278 = !DILocation(line: 338, column: 26, scope: !1271)
!1279 = !DILocation(line: 338, column: 42, scope: !1271)
!1280 = !DILocation(line: 338, column: 45, scope: !1271)
!1281 = !DILocation(line: 338, column: 51, scope: !1271)
!1282 = !DILocation(line: 338, column: 54, scope: !1271)
!1283 = !DILocation(line: 338, column: 49, scope: !1271)
!1284 = !DILocalVariable(name: "q2", scope: !1271, file: !1, line: 339, type: !50)
!1285 = !DILocation(line: 339, column: 26, scope: !1271)
!1286 = !DILocation(line: 339, column: 31, scope: !1271)
!1287 = !DILocation(line: 339, column: 34, scope: !1271)
!1288 = !DILocation(line: 339, column: 33, scope: !1271)
!1289 = !DILocalVariable(name: "q4", scope: !1271, file: !1, line: 340, type: !50)
!1290 = !DILocation(line: 340, column: 26, scope: !1271)
!1291 = !DILocation(line: 340, column: 31, scope: !1271)
!1292 = !DILocation(line: 340, column: 34, scope: !1271)
!1293 = !DILocation(line: 340, column: 33, scope: !1271)
!1294 = !DILocation(line: 341, column: 28, scope: !1271)
!1295 = !DILocation(line: 341, column: 37, scope: !1271)
!1296 = !DILocation(line: 341, column: 36, scope: !1271)
!1297 = !DILocation(line: 341, column: 41, scope: !1271)
!1298 = !DILocation(line: 341, column: 44, scope: !1271)
!1299 = !DILocation(line: 341, column: 39, scope: !1271)
!1300 = !DILocation(line: 341, column: 31, scope: !1271)
!1301 = !DILocation(line: 341, column: 26, scope: !1271)
!1302 = !DILocation(line: 342, column: 32, scope: !1271)
!1303 = !DILocation(line: 342, column: 31, scope: !1271)
!1304 = !DILocation(line: 342, column: 35, scope: !1271)
!1305 = !DILocation(line: 342, column: 40, scope: !1271)
!1306 = !DILocation(line: 342, column: 39, scope: !1271)
!1307 = !DILocation(line: 342, column: 47, scope: !1271)
!1308 = !DILocation(line: 342, column: 46, scope: !1271)
!1309 = !DILocation(line: 342, column: 52, scope: !1271)
!1310 = !DILocation(line: 342, column: 55, scope: !1271)
!1311 = !DILocation(line: 342, column: 50, scope: !1271)
!1312 = !DILocation(line: 342, column: 61, scope: !1271)
!1313 = !DILocation(line: 342, column: 64, scope: !1271)
!1314 = !DILocation(line: 342, column: 59, scope: !1271)
!1315 = !DILocation(line: 342, column: 42, scope: !1271)
!1316 = !DILocation(line: 342, column: 26, scope: !1271)
!1317 = !DILocation(line: 343, column: 32, scope: !1271)
!1318 = !DILocation(line: 343, column: 31, scope: !1271)
!1319 = !DILocation(line: 343, column: 35, scope: !1271)
!1320 = !DILocation(line: 343, column: 34, scope: !1271)
!1321 = !DILocation(line: 343, column: 43, scope: !1271)
!1322 = !DILocation(line: 343, column: 42, scope: !1271)
!1323 = !DILocation(line: 343, column: 38, scope: !1271)
!1324 = !DILocation(line: 343, column: 46, scope: !1271)
!1325 = !DILocation(line: 343, column: 52, scope: !1271)
!1326 = !DILocation(line: 343, column: 51, scope: !1271)
!1327 = !DILocation(line: 343, column: 55, scope: !1271)
!1328 = !DILocation(line: 343, column: 54, scope: !1271)
!1329 = !DILocation(line: 344, column: 27, scope: !1271)
!1330 = !DILocation(line: 344, column: 26, scope: !1271)
!1331 = !DILocation(line: 344, column: 31, scope: !1271)
!1332 = !DILocation(line: 344, column: 30, scope: !1271)
!1333 = !DILocation(line: 344, column: 36, scope: !1271)
!1334 = !DILocation(line: 344, column: 39, scope: !1271)
!1335 = !DILocation(line: 344, column: 34, scope: !1271)
!1336 = !DILocation(line: 344, column: 45, scope: !1271)
!1337 = !DILocation(line: 344, column: 48, scope: !1271)
!1338 = !DILocation(line: 344, column: 43, scope: !1271)
!1339 = !DILocation(line: 344, column: 54, scope: !1271)
!1340 = !DILocation(line: 344, column: 57, scope: !1271)
!1341 = !DILocation(line: 344, column: 52, scope: !1271)
!1342 = !DILocation(line: 343, column: 57, scope: !1271)
!1343 = !DILocation(line: 343, column: 26, scope: !1271)
!1344 = !DILocation(line: 345, column: 27, scope: !1345)
!1345 = distinct !DILexicalBlock(scope: !1271, file: !1, line: 345, column: 23)
!1346 = !DILocation(line: 345, column: 26, scope: !1345)
!1347 = !DILocation(line: 345, column: 42, scope: !1345)
!1348 = !DILocation(line: 345, column: 37, scope: !1345)
!1349 = !DILocation(line: 345, column: 36, scope: !1345)
!1350 = !DILocation(line: 345, column: 33, scope: !1345)
!1351 = !DILocation(line: 345, column: 23, scope: !1271)
!1352 = !DILocation(line: 347, column: 44, scope: !1353)
!1353 = distinct !DILexicalBlock(scope: !1345, file: !1, line: 346, column: 19)
!1354 = !DILocation(line: 347, column: 49, scope: !1353)
!1355 = !DILocation(line: 347, column: 53, scope: !1353)
!1356 = !DILocation(line: 347, column: 33, scope: !1353)
!1357 = !DILocation(line: 347, column: 30, scope: !1353)
!1358 = !DILocation(line: 348, column: 30, scope: !1353)
!1359 = !DILocation(line: 349, column: 19, scope: !1353)
!1360 = !DILocation(line: 350, column: 15, scope: !1271)
!1361 = !DILocation(line: 352, column: 39, scope: !1262)
!1362 = !DILocation(line: 352, column: 44, scope: !1262)
!1363 = !DILocation(line: 352, column: 48, scope: !1262)
!1364 = !DILocation(line: 352, column: 28, scope: !1262)
!1365 = !DILocation(line: 352, column: 26, scope: !1262)
!1366 = !DILocation(line: 354, column: 22, scope: !1263)
!1367 = !DILocation(line: 354, column: 15, scope: !1263)
!1368 = !DILocation(line: 357, column: 22, scope: !1258)
!1369 = !DILocation(line: 357, column: 28, scope: !1258)
!1370 = !DILocation(line: 357, column: 27, scope: !1258)
!1371 = !DILocation(line: 357, column: 15, scope: !1258)
!1372 = !DILocation(line: 361, column: 24, scope: !1160)
!1373 = !DILocation(line: 361, column: 28, scope: !1160)
!1374 = !DILocation(line: 361, column: 32, scope: !1160)
!1375 = !DILocation(line: 361, column: 12, scope: !1160)
!1376 = !DILocation(line: 361, column: 10, scope: !1160)
!1377 = !DILocation(line: 363, column: 8, scope: !1378)
!1378 = distinct !DILexicalBlock(scope: !1160, file: !1, line: 363, column: 8)
!1379 = !DILocation(line: 363, column: 15, scope: !1378)
!1380 = !DILocation(line: 363, column: 19, scope: !1378)
!1381 = !DILocation(line: 363, column: 27, scope: !1382)
!1382 = !DILexicalBlockFile(scope: !1378, file: !1, discriminator: 1)
!1383 = !DILocation(line: 363, column: 22, scope: !1382)
!1384 = !DILocation(line: 363, column: 37, scope: !1382)
!1385 = !DILocation(line: 363, column: 36, scope: !1382)
!1386 = !DILocation(line: 363, column: 31, scope: !1382)
!1387 = !DILocation(line: 363, column: 8, scope: !1382)
!1388 = !DILocation(line: 364, column: 25, scope: !1378)
!1389 = !DILocation(line: 364, column: 30, scope: !1378)
!1390 = !DILocation(line: 364, column: 34, scope: !1378)
!1391 = !DILocation(line: 364, column: 14, scope: !1378)
!1392 = !DILocation(line: 364, column: 7, scope: !1378)
!1393 = !DILocation(line: 366, column: 15, scope: !1378)
!1394 = !DILocation(line: 366, column: 21, scope: !1378)
!1395 = !DILocation(line: 366, column: 20, scope: !1378)
!1396 = !DILocation(line: 366, column: 34, scope: !1378)
!1397 = !DILocation(line: 366, column: 29, scope: !1378)
!1398 = !DILocation(line: 366, column: 27, scope: !1378)
!1399 = !DILocation(line: 366, column: 7, scope: !1378)
!1400 = !DILocation(line: 367, column: 1, scope: !1160)
!1401 = distinct !DISubprogram(name: "seer", scope: !1, file: !1, line: 94, type: !924, isLocal: true, isDefinition: true, scopeLine: 95, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !66)
!1402 = !DILocalVariable(name: "order", arg: 1, scope: !1401, file: !1, line: 94, type: !49)
!1403 = !DILocation(line: 94, column: 24, scope: !1401)
!1404 = !DILocalVariable(name: "qq", arg: 2, scope: !1401, file: !1, line: 94, type: !50)
!1405 = !DILocation(line: 94, column: 38, scope: !1401)
!1406 = !DILocalVariable(name: "aa", arg: 3, scope: !1401, file: !1, line: 94, type: !50)
!1407 = !DILocation(line: 94, column: 49, scope: !1401)
!1408 = !DILocalVariable(name: "nterms", arg: 4, scope: !1401, file: !1, line: 94, type: !49)
!1409 = !DILocation(line: 94, column: 57, scope: !1401)
!1410 = !DILocalVariable(name: "term", scope: !1401, file: !1, line: 96, type: !50)
!1411 = !DILocation(line: 96, column: 10, scope: !1401)
!1412 = !DILocalVariable(name: "term1", scope: !1401, file: !1, line: 96, type: !50)
!1413 = !DILocation(line: 96, column: 16, scope: !1401)
!1414 = !DILocalVariable(name: "ii", scope: !1401, file: !1, line: 97, type: !49)
!1415 = !DILocation(line: 97, column: 7, scope: !1401)
!1416 = !DILocalVariable(name: "n1", scope: !1401, file: !1, line: 97, type: !49)
!1417 = !DILocation(line: 97, column: 11, scope: !1401)
!1418 = !DILocation(line: 99, column: 8, scope: !1401)
!1419 = !DILocation(line: 100, column: 8, scope: !1401)
!1420 = !DILocation(line: 100, column: 13, scope: !1401)
!1421 = !DILocation(line: 100, column: 16, scope: !1401)
!1422 = !DILocation(line: 100, column: 6, scope: !1401)
!1423 = !DILocation(line: 102, column: 10, scope: !1424)
!1424 = distinct !DILexicalBlock(scope: !1401, file: !1, line: 102, column: 3)
!1425 = !DILocation(line: 102, column: 8, scope: !1424)
!1426 = !DILocation(line: 102, column: 14, scope: !1427)
!1427 = !DILexicalBlockFile(scope: !1428, file: !1, discriminator: 1)
!1428 = distinct !DILexicalBlock(scope: !1424, file: !1, line: 102, column: 3)
!1429 = !DILocation(line: 102, column: 17, scope: !1427)
!1430 = !DILocation(line: 102, column: 16, scope: !1427)
!1431 = !DILocation(line: 102, column: 3, scope: !1427)
!1432 = !DILocation(line: 103, column: 14, scope: !1428)
!1433 = !DILocation(line: 103, column: 17, scope: !1428)
!1434 = !DILocation(line: 103, column: 16, scope: !1428)
!1435 = !DILocation(line: 103, column: 21, scope: !1428)
!1436 = !DILocation(line: 103, column: 31, scope: !1428)
!1437 = !DILocation(line: 103, column: 34, scope: !1428)
!1438 = !DILocation(line: 103, column: 30, scope: !1428)
!1439 = !DILocation(line: 103, column: 29, scope: !1428)
!1440 = !DILocation(line: 103, column: 40, scope: !1428)
!1441 = !DILocation(line: 103, column: 43, scope: !1428)
!1442 = !DILocation(line: 103, column: 39, scope: !1428)
!1443 = !DILocation(line: 103, column: 38, scope: !1428)
!1444 = !DILocation(line: 103, column: 24, scope: !1428)
!1445 = !DILocation(line: 103, column: 50, scope: !1428)
!1446 = !DILocation(line: 103, column: 48, scope: !1428)
!1447 = !DILocation(line: 103, column: 19, scope: !1428)
!1448 = !DILocation(line: 103, column: 12, scope: !1428)
!1449 = !DILocation(line: 103, column: 7, scope: !1428)
!1450 = !DILocation(line: 102, column: 23, scope: !1451)
!1451 = !DILexicalBlockFile(scope: !1428, file: !1, discriminator: 2)
!1452 = !DILocation(line: 102, column: 3, scope: !1451)
!1453 = distinct !{!1453, !1454}
!1454 = !DILocation(line: 102, column: 3, scope: !1401)
!1455 = !DILocation(line: 104, column: 11, scope: !1401)
!1456 = !DILocation(line: 104, column: 17, scope: !1401)
!1457 = !DILocation(line: 104, column: 16, scope: !1401)
!1458 = !DILocation(line: 104, column: 8, scope: !1401)
!1459 = !DILocation(line: 106, column: 9, scope: !1401)
!1460 = !DILocation(line: 107, column: 10, scope: !1461)
!1461 = distinct !DILexicalBlock(scope: !1401, file: !1, line: 107, column: 3)
!1462 = !DILocation(line: 107, column: 8, scope: !1461)
!1463 = !DILocation(line: 107, column: 14, scope: !1464)
!1464 = !DILexicalBlockFile(scope: !1465, file: !1, discriminator: 1)
!1465 = distinct !DILexicalBlock(scope: !1461, file: !1, line: 107, column: 3)
!1466 = !DILocation(line: 107, column: 17, scope: !1464)
!1467 = !DILocation(line: 107, column: 16, scope: !1464)
!1468 = !DILocation(line: 107, column: 3, scope: !1464)
!1469 = !DILocation(line: 108, column: 15, scope: !1465)
!1470 = !DILocation(line: 108, column: 18, scope: !1465)
!1471 = !DILocation(line: 108, column: 17, scope: !1465)
!1472 = !DILocation(line: 109, column: 10, scope: !1465)
!1473 = !DILocation(line: 109, column: 16, scope: !1465)
!1474 = !DILocation(line: 109, column: 29, scope: !1465)
!1475 = !DILocation(line: 109, column: 38, scope: !1465)
!1476 = !DILocation(line: 109, column: 36, scope: !1465)
!1477 = !DILocation(line: 109, column: 28, scope: !1465)
!1478 = !DILocation(line: 109, column: 27, scope: !1465)
!1479 = !DILocation(line: 109, column: 22, scope: !1465)
!1480 = !DILocation(line: 109, column: 44, scope: !1465)
!1481 = !DILocation(line: 109, column: 57, scope: !1465)
!1482 = !DILocation(line: 109, column: 66, scope: !1465)
!1483 = !DILocation(line: 109, column: 64, scope: !1465)
!1484 = !DILocation(line: 109, column: 56, scope: !1465)
!1485 = !DILocation(line: 109, column: 55, scope: !1465)
!1486 = !DILocation(line: 109, column: 50, scope: !1465)
!1487 = !DILocation(line: 109, column: 42, scope: !1465)
!1488 = !DILocation(line: 109, column: 13, scope: !1465)
!1489 = !DILocation(line: 109, column: 73, scope: !1465)
!1490 = !DILocation(line: 109, column: 71, scope: !1465)
!1491 = !DILocation(line: 108, column: 20, scope: !1465)
!1492 = !DILocation(line: 108, column: 13, scope: !1465)
!1493 = !DILocation(line: 108, column: 7, scope: !1465)
!1494 = !DILocation(line: 107, column: 27, scope: !1495)
!1495 = !DILexicalBlockFile(scope: !1465, file: !1, discriminator: 2)
!1496 = !DILocation(line: 107, column: 3, scope: !1495)
!1497 = distinct !{!1497, !1498}
!1498 = !DILocation(line: 107, column: 3, scope: !1401)
!1499 = !DILocation(line: 111, column: 11, scope: !1401)
!1500 = !DILocation(line: 111, column: 18, scope: !1401)
!1501 = !DILocation(line: 111, column: 16, scope: !1401)
!1502 = !DILocation(line: 111, column: 26, scope: !1401)
!1503 = !DILocation(line: 111, column: 24, scope: !1401)
!1504 = !DILocation(line: 111, column: 3, scope: !1401)
!1505 = distinct !DISubprogram(name: "seor", scope: !1, file: !1, line: 115, type: !924, isLocal: true, isDefinition: true, scopeLine: 116, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !66)
!1506 = !DILocalVariable(name: "order", arg: 1, scope: !1505, file: !1, line: 115, type: !49)
!1507 = !DILocation(line: 115, column: 24, scope: !1505)
!1508 = !DILocalVariable(name: "qq", arg: 2, scope: !1505, file: !1, line: 115, type: !50)
!1509 = !DILocation(line: 115, column: 38, scope: !1505)
!1510 = !DILocalVariable(name: "aa", arg: 3, scope: !1505, file: !1, line: 115, type: !50)
!1511 = !DILocation(line: 115, column: 49, scope: !1505)
!1512 = !DILocalVariable(name: "nterms", arg: 4, scope: !1505, file: !1, line: 115, type: !49)
!1513 = !DILocation(line: 115, column: 57, scope: !1505)
!1514 = !DILocalVariable(name: "term", scope: !1505, file: !1, line: 117, type: !50)
!1515 = !DILocation(line: 117, column: 10, scope: !1505)
!1516 = !DILocalVariable(name: "term1", scope: !1505, file: !1, line: 117, type: !50)
!1517 = !DILocation(line: 117, column: 16, scope: !1505)
!1518 = !DILocalVariable(name: "ii", scope: !1505, file: !1, line: 118, type: !49)
!1519 = !DILocation(line: 118, column: 7, scope: !1505)
!1520 = !DILocalVariable(name: "n1", scope: !1505, file: !1, line: 118, type: !49)
!1521 = !DILocation(line: 118, column: 11, scope: !1505)
!1522 = !DILocation(line: 121, column: 15, scope: !1505)
!1523 = !DILocation(line: 121, column: 14, scope: !1505)
!1524 = !DILocation(line: 121, column: 8, scope: !1505)
!1525 = !DILocation(line: 122, column: 21, scope: !1505)
!1526 = !DILocation(line: 122, column: 14, scope: !1505)
!1527 = !DILocation(line: 122, column: 26, scope: !1505)
!1528 = !DILocation(line: 122, column: 31, scope: !1505)
!1529 = !DILocation(line: 122, column: 8, scope: !1505)
!1530 = !DILocation(line: 122, column: 6, scope: !1505)
!1531 = !DILocation(line: 123, column: 10, scope: !1532)
!1532 = distinct !DILexicalBlock(scope: !1505, file: !1, line: 123, column: 3)
!1533 = !DILocation(line: 123, column: 8, scope: !1532)
!1534 = !DILocation(line: 123, column: 14, scope: !1535)
!1535 = !DILexicalBlockFile(scope: !1536, file: !1, discriminator: 1)
!1536 = distinct !DILexicalBlock(scope: !1532, file: !1, line: 123, column: 3)
!1537 = !DILocation(line: 123, column: 17, scope: !1535)
!1538 = !DILocation(line: 123, column: 16, scope: !1535)
!1539 = !DILocation(line: 123, column: 3, scope: !1535)
!1540 = !DILocation(line: 124, column: 14, scope: !1536)
!1541 = !DILocation(line: 124, column: 17, scope: !1536)
!1542 = !DILocation(line: 124, column: 16, scope: !1536)
!1543 = !DILocation(line: 124, column: 21, scope: !1536)
!1544 = !DILocation(line: 124, column: 31, scope: !1536)
!1545 = !DILocation(line: 124, column: 30, scope: !1536)
!1546 = !DILocation(line: 124, column: 34, scope: !1536)
!1547 = !DILocation(line: 124, column: 46, scope: !1536)
!1548 = !DILocation(line: 124, column: 45, scope: !1536)
!1549 = !DILocation(line: 124, column: 49, scope: !1536)
!1550 = !DILocation(line: 124, column: 40, scope: !1536)
!1551 = !DILocation(line: 124, column: 24, scope: !1536)
!1552 = !DILocation(line: 124, column: 58, scope: !1536)
!1553 = !DILocation(line: 124, column: 56, scope: !1536)
!1554 = !DILocation(line: 124, column: 19, scope: !1536)
!1555 = !DILocation(line: 124, column: 12, scope: !1536)
!1556 = !DILocation(line: 124, column: 7, scope: !1536)
!1557 = !DILocation(line: 123, column: 23, scope: !1558)
!1558 = !DILexicalBlockFile(scope: !1536, file: !1, discriminator: 2)
!1559 = !DILocation(line: 123, column: 3, scope: !1558)
!1560 = distinct !{!1560, !1561}
!1561 = !DILocation(line: 123, column: 3, scope: !1505)
!1562 = !DILocation(line: 125, column: 11, scope: !1505)
!1563 = !DILocation(line: 125, column: 17, scope: !1505)
!1564 = !DILocation(line: 125, column: 16, scope: !1505)
!1565 = !DILocation(line: 125, column: 8, scope: !1505)
!1566 = !DILocation(line: 127, column: 9, scope: !1505)
!1567 = !DILocation(line: 128, column: 10, scope: !1568)
!1568 = distinct !DILexicalBlock(scope: !1505, file: !1, line: 128, column: 3)
!1569 = !DILocation(line: 128, column: 8, scope: !1568)
!1570 = !DILocation(line: 128, column: 14, scope: !1571)
!1571 = !DILexicalBlockFile(scope: !1572, file: !1, discriminator: 1)
!1572 = distinct !DILexicalBlock(scope: !1568, file: !1, line: 128, column: 3)
!1573 = !DILocation(line: 128, column: 17, scope: !1571)
!1574 = !DILocation(line: 128, column: 16, scope: !1571)
!1575 = !DILocation(line: 128, column: 3, scope: !1571)
!1576 = !DILocation(line: 129, column: 15, scope: !1572)
!1577 = !DILocation(line: 129, column: 18, scope: !1572)
!1578 = !DILocation(line: 129, column: 17, scope: !1572)
!1579 = !DILocation(line: 130, column: 10, scope: !1572)
!1580 = !DILocation(line: 130, column: 16, scope: !1572)
!1581 = !DILocation(line: 130, column: 29, scope: !1572)
!1582 = !DILocation(line: 130, column: 38, scope: !1572)
!1583 = !DILocation(line: 130, column: 36, scope: !1572)
!1584 = !DILocation(line: 130, column: 28, scope: !1572)
!1585 = !DILocation(line: 130, column: 27, scope: !1572)
!1586 = !DILocation(line: 130, column: 22, scope: !1572)
!1587 = !DILocation(line: 130, column: 44, scope: !1572)
!1588 = !DILocation(line: 130, column: 57, scope: !1572)
!1589 = !DILocation(line: 130, column: 66, scope: !1572)
!1590 = !DILocation(line: 130, column: 64, scope: !1572)
!1591 = !DILocation(line: 130, column: 56, scope: !1572)
!1592 = !DILocation(line: 130, column: 55, scope: !1572)
!1593 = !DILocation(line: 130, column: 50, scope: !1572)
!1594 = !DILocation(line: 130, column: 42, scope: !1572)
!1595 = !DILocation(line: 130, column: 13, scope: !1572)
!1596 = !DILocation(line: 130, column: 73, scope: !1572)
!1597 = !DILocation(line: 130, column: 71, scope: !1572)
!1598 = !DILocation(line: 129, column: 20, scope: !1572)
!1599 = !DILocation(line: 129, column: 13, scope: !1572)
!1600 = !DILocation(line: 129, column: 7, scope: !1572)
!1601 = !DILocation(line: 128, column: 27, scope: !1602)
!1602 = !DILexicalBlockFile(scope: !1572, file: !1, discriminator: 2)
!1603 = !DILocation(line: 128, column: 3, scope: !1602)
!1604 = distinct !{!1604, !1605}
!1605 = !DILocation(line: 128, column: 3, scope: !1505)
!1606 = !DILocation(line: 132, column: 11, scope: !1505)
!1607 = !DILocation(line: 132, column: 18, scope: !1505)
!1608 = !DILocation(line: 132, column: 16, scope: !1505)
!1609 = !DILocation(line: 132, column: 26, scope: !1505)
!1610 = !DILocation(line: 132, column: 24, scope: !1505)
!1611 = !DILocation(line: 132, column: 3, scope: !1505)
!1612 = distinct !DISubprogram(name: "gsl_sf_mathieu_a_array", scope: !1, file: !1, line: 710, type: !1613, isLocal: false, isDefinition: true, scopeLine: 711, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !66)
!1613 = !DISubroutineType(types: !1614)
!1614 = !{!49, !49, !49, !50, !1615, !1630}
!1615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1616, size: 64, align: 64)
!1616 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_mathieu_workspace", file: !1617, line: 60, baseType: !1618)
!1617 = !DIFile(filename: "../gsl/gsl_sf_mathieu.h", directory: "/fpcc/gsl-2.5/specfunc")
!1618 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1617, line: 42, size: 1024, align: 64, elements: !1619)
!1619 = !{!1620, !1624, !1625, !1626, !1627, !1628, !1629, !1631, !1632, !1633, !1634, !1635, !1636, !1637, !1655, !1667}
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1618, file: !1617, line: 44, baseType: !1621, size: 64, align: 64)
!1621 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1622, line: 62, baseType: !1623)
!1622 = !DIFile(filename: "/usr/lib/llvm-3.9/bin/../lib/clang/3.9.1/include/stddef.h", directory: "/fpcc/gsl-2.5/specfunc")
!1623 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "even_order", scope: !1618, file: !1617, line: 45, baseType: !1621, size: 64, align: 64, offset: 64)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "odd_order", scope: !1618, file: !1617, line: 46, baseType: !1621, size: 64, align: 64, offset: 128)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "extra_values", scope: !1618, file: !1617, line: 47, baseType: !49, size: 32, align: 32, offset: 192)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "qa", scope: !1618, file: !1617, line: 48, baseType: !50, size: 64, align: 64, offset: 256)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "qb", scope: !1618, file: !1617, line: 49, baseType: !50, size: 64, align: 64, offset: 320)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "aa", scope: !1618, file: !1617, line: 50, baseType: !1630, size: 64, align: 64, offset: 384)
!1630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64, align: 64)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !1618, file: !1617, line: 51, baseType: !1630, size: 64, align: 64, offset: 448)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "dd", scope: !1618, file: !1617, line: 52, baseType: !1630, size: 64, align: 64, offset: 512)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "ee", scope: !1618, file: !1617, line: 53, baseType: !1630, size: 64, align: 64, offset: 576)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !1618, file: !1617, line: 54, baseType: !1630, size: 64, align: 64, offset: 640)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "e2", scope: !1618, file: !1617, line: 55, baseType: !1630, size: 64, align: 64, offset: 704)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "zz", scope: !1618, file: !1617, line: 56, baseType: !1630, size: 64, align: 64, offset: 768)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "eval", scope: !1618, file: !1617, line: 57, baseType: !1638, size: 64, align: 64, offset: 832)
!1638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1639, size: 64, align: 64)
!1639 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_vector", file: !1640, line: 50, baseType: !1641)
!1640 = !DIFile(filename: "../gsl/gsl_vector_double.h", directory: "/fpcc/gsl-2.5/specfunc")
!1641 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1640, line: 42, size: 320, align: 64, elements: !1642)
!1642 = !{!1643, !1644, !1645, !1646, !1654}
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1641, file: !1640, line: 44, baseType: !1621, size: 64, align: 64)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "stride", scope: !1641, file: !1640, line: 45, baseType: !1621, size: 64, align: 64, offset: 64)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1641, file: !1640, line: 46, baseType: !1630, size: 64, align: 64, offset: 128)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1641, file: !1640, line: 47, baseType: !1647, size: 64, align: 64, offset: 192)
!1647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1648, size: 64, align: 64)
!1648 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_block", file: !1649, line: 44, baseType: !1650)
!1649 = !DIFile(filename: "../gsl/gsl_block_double.h", directory: "/fpcc/gsl-2.5/specfunc")
!1650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_block_struct", file: !1649, line: 38, size: 128, align: 64, elements: !1651)
!1651 = !{!1652, !1653}
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1650, file: !1649, line: 40, baseType: !1621, size: 64, align: 64)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1650, file: !1649, line: 41, baseType: !1630, size: 64, align: 64, offset: 64)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1641, file: !1640, line: 48, baseType: !49, size: 32, align: 32, offset: 256)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "evec", scope: !1618, file: !1617, line: 58, baseType: !1656, size: 64, align: 64, offset: 896)
!1656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1657, size: 64, align: 64)
!1657 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_matrix", file: !1658, line: 50, baseType: !1659)
!1658 = !DIFile(filename: "../gsl/gsl_matrix_double.h", directory: "/fpcc/gsl-2.5/specfunc")
!1659 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1658, line: 42, size: 384, align: 64, elements: !1660)
!1660 = !{!1661, !1662, !1663, !1664, !1665, !1666}
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "size1", scope: !1659, file: !1658, line: 44, baseType: !1621, size: 64, align: 64)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "size2", scope: !1659, file: !1658, line: 45, baseType: !1621, size: 64, align: 64, offset: 64)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "tda", scope: !1659, file: !1658, line: 46, baseType: !1621, size: 64, align: 64, offset: 128)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1659, file: !1658, line: 47, baseType: !1630, size: 64, align: 64, offset: 192)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1659, file: !1658, line: 48, baseType: !1647, size: 64, align: 64, offset: 256)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1659, file: !1658, line: 49, baseType: !49, size: 32, align: 32, offset: 320)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "wmat", scope: !1618, file: !1617, line: 59, baseType: !1668, size: 64, align: 64, offset: 960)
!1668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1669, size: 64, align: 64)
!1669 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_eigen_symmv_workspace", file: !42, line: 54, baseType: !1670)
!1670 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !42, line: 48, size: 320, align: 64, elements: !1671)
!1671 = !{!1672, !1673, !1674, !1675, !1676}
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1670, file: !42, line: 49, baseType: !1621, size: 64, align: 64)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1670, file: !42, line: 50, baseType: !1630, size: 64, align: 64, offset: 64)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !1670, file: !42, line: 51, baseType: !1630, size: 64, align: 64, offset: 128)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !1670, file: !42, line: 52, baseType: !1630, size: 64, align: 64, offset: 192)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "gs", scope: !1670, file: !42, line: 53, baseType: !1630, size: 64, align: 64, offset: 256)
!1677 = !DILocalVariable(name: "order_min", arg: 1, scope: !1612, file: !1, line: 710, type: !49)
!1678 = !DILocation(line: 710, column: 32, scope: !1612)
!1679 = !DILocalVariable(name: "order_max", arg: 2, scope: !1612, file: !1, line: 710, type: !49)
!1680 = !DILocation(line: 710, column: 47, scope: !1612)
!1681 = !DILocalVariable(name: "qq", arg: 3, scope: !1612, file: !1, line: 710, type: !50)
!1682 = !DILocation(line: 710, column: 65, scope: !1612)
!1683 = !DILocalVariable(name: "work", arg: 4, scope: !1612, file: !1, line: 710, type: !1615)
!1684 = !DILocation(line: 710, column: 95, scope: !1612)
!1685 = !DILocalVariable(name: "result_array", arg: 5, scope: !1612, file: !1, line: 710, type: !1630)
!1686 = !DILocation(line: 710, column: 108, scope: !1612)
!1687 = !DILocalVariable(name: "even_order", scope: !1612, file: !1, line: 712, type: !1688)
!1688 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!1689 = !DILocation(line: 712, column: 16, scope: !1612)
!1690 = !DILocation(line: 712, column: 29, scope: !1612)
!1691 = !DILocation(line: 712, column: 35, scope: !1612)
!1692 = !DILocalVariable(name: "odd_order", scope: !1612, file: !1, line: 712, type: !1688)
!1693 = !DILocation(line: 712, column: 47, scope: !1612)
!1694 = !DILocation(line: 712, column: 59, scope: !1612)
!1695 = !DILocation(line: 712, column: 65, scope: !1612)
!1696 = !DILocalVariable(name: "extra_values", scope: !1612, file: !1, line: 713, type: !1688)
!1697 = !DILocation(line: 713, column: 7, scope: !1612)
!1698 = !DILocation(line: 713, column: 22, scope: !1612)
!1699 = !DILocation(line: 713, column: 28, scope: !1612)
!1700 = !DILocalVariable(name: "ii", scope: !1612, file: !1, line: 713, type: !1688)
!1701 = !DILocation(line: 713, column: 42, scope: !1612)
!1702 = !DILocalVariable(name: "jj", scope: !1612, file: !1, line: 713, type: !1688)
!1703 = !DILocation(line: 713, column: 46, scope: !1612)
!1704 = !DILocalVariable(name: "status", scope: !1612, file: !1, line: 714, type: !49)
!1705 = !DILocation(line: 714, column: 7, scope: !1612)
!1706 = !DILocalVariable(name: "tt", scope: !1612, file: !1, line: 715, type: !1630)
!1707 = !DILocation(line: 715, column: 11, scope: !1612)
!1708 = !DILocation(line: 715, column: 16, scope: !1612)
!1709 = !DILocation(line: 715, column: 22, scope: !1612)
!1710 = !DILocalVariable(name: "dd", scope: !1612, file: !1, line: 715, type: !1630)
!1711 = !DILocation(line: 715, column: 27, scope: !1612)
!1712 = !DILocation(line: 715, column: 32, scope: !1612)
!1713 = !DILocation(line: 715, column: 38, scope: !1612)
!1714 = !DILocalVariable(name: "ee", scope: !1612, file: !1, line: 715, type: !1630)
!1715 = !DILocation(line: 715, column: 43, scope: !1612)
!1716 = !DILocation(line: 715, column: 48, scope: !1612)
!1717 = !DILocation(line: 715, column: 54, scope: !1612)
!1718 = !DILocalVariable(name: "e2", scope: !1612, file: !1, line: 715, type: !1630)
!1719 = !DILocation(line: 715, column: 59, scope: !1612)
!1720 = !DILocation(line: 715, column: 64, scope: !1612)
!1721 = !DILocation(line: 715, column: 70, scope: !1612)
!1722 = !DILocalVariable(name: "zz", scope: !1612, file: !1, line: 716, type: !1630)
!1723 = !DILocation(line: 716, column: 11, scope: !1612)
!1724 = !DILocation(line: 716, column: 16, scope: !1612)
!1725 = !DILocation(line: 716, column: 22, scope: !1612)
!1726 = !DILocalVariable(name: "aa", scope: !1612, file: !1, line: 716, type: !1630)
!1727 = !DILocation(line: 716, column: 27, scope: !1612)
!1728 = !DILocation(line: 716, column: 32, scope: !1612)
!1729 = !DILocation(line: 716, column: 38, scope: !1612)
!1730 = !DILocalVariable(name: "mat", scope: !1612, file: !1, line: 717, type: !1731)
!1731 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_matrix_view", file: !1658, line: 57, baseType: !1732)
!1732 = !DIDerivedType(tag: DW_TAG_typedef, name: "_gsl_matrix_view", file: !1658, line: 55, baseType: !1733)
!1733 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1658, line: 52, size: 384, align: 64, elements: !1734)
!1734 = !{!1735}
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "matrix", scope: !1733, file: !1658, line: 54, baseType: !1657, size: 384, align: 64)
!1736 = !DILocation(line: 717, column: 19, scope: !1612)
!1737 = !DILocalVariable(name: "evec", scope: !1612, file: !1, line: 717, type: !1731)
!1738 = !DILocation(line: 717, column: 24, scope: !1612)
!1739 = !DILocalVariable(name: "eval", scope: !1612, file: !1, line: 718, type: !1740)
!1740 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_vector_view", file: !1640, line: 57, baseType: !1741)
!1741 = !DIDerivedType(tag: DW_TAG_typedef, name: "_gsl_vector_view", file: !1640, line: 55, baseType: !1742)
!1742 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1640, line: 52, size: 320, align: 64, elements: !1743)
!1743 = !{!1744}
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !1742, file: !1640, line: 54, baseType: !1639, size: 320, align: 64)
!1745 = !DILocation(line: 718, column: 19, scope: !1612)
!1746 = !DILocalVariable(name: "wmat", scope: !1612, file: !1, line: 719, type: !1668)
!1747 = !DILocation(line: 719, column: 30, scope: !1612)
!1748 = !DILocation(line: 719, column: 37, scope: !1612)
!1749 = !DILocation(line: 719, column: 43, scope: !1612)
!1750 = !DILocation(line: 721, column: 7, scope: !1751)
!1751 = distinct !DILexicalBlock(scope: !1612, file: !1, line: 721, column: 7)
!1752 = !DILocation(line: 721, column: 19, scope: !1751)
!1753 = !DILocation(line: 721, column: 25, scope: !1751)
!1754 = !DILocation(line: 721, column: 17, scope: !1751)
!1755 = !DILocation(line: 721, column: 30, scope: !1751)
!1756 = !DILocation(line: 721, column: 33, scope: !1757)
!1757 = !DILexicalBlockFile(scope: !1751, file: !1, discriminator: 1)
!1758 = !DILocation(line: 721, column: 46, scope: !1757)
!1759 = !DILocation(line: 721, column: 43, scope: !1757)
!1760 = !DILocation(line: 721, column: 56, scope: !1757)
!1761 = !DILocation(line: 721, column: 59, scope: !1762)
!1762 = !DILexicalBlockFile(scope: !1751, file: !1, discriminator: 2)
!1763 = !DILocation(line: 721, column: 69, scope: !1762)
!1764 = !DILocation(line: 721, column: 7, scope: !1762)
!1765 = !DILocation(line: 723, column: 7, scope: !1766)
!1766 = distinct !DILexicalBlock(scope: !1751, file: !1, line: 722, column: 5)
!1767 = distinct !{!1767, !1765}
!1768 = !DILocation(line: 723, column: 7, scope: !1769)
!1769 = !DILexicalBlockFile(scope: !1770, file: !1, discriminator: 1)
!1770 = distinct !DILexicalBlock(scope: !1766, file: !1, line: 723, column: 7)
!1771 = !DILocation(line: 724, column: 5, scope: !1766)
!1772 = !DILocation(line: 729, column: 3, scope: !1612)
!1773 = !DILocation(line: 729, column: 9, scope: !1612)
!1774 = !DILocation(line: 730, column: 3, scope: !1612)
!1775 = !DILocation(line: 730, column: 9, scope: !1612)
!1776 = !DILocation(line: 731, column: 11, scope: !1612)
!1777 = !DILocation(line: 731, column: 3, scope: !1612)
!1778 = !DILocation(line: 731, column: 9, scope: !1612)
!1779 = !DILocation(line: 732, column: 10, scope: !1780)
!1780 = distinct !DILexicalBlock(scope: !1612, file: !1, line: 732, column: 3)
!1781 = !DILocation(line: 732, column: 8, scope: !1780)
!1782 = !DILocation(line: 732, column: 14, scope: !1783)
!1783 = !DILexicalBlockFile(scope: !1784, file: !1, discriminator: 1)
!1784 = distinct !DILexicalBlock(scope: !1780, file: !1, line: 732, column: 3)
!1785 = !DILocation(line: 732, column: 17, scope: !1783)
!1786 = !DILocation(line: 732, column: 27, scope: !1783)
!1787 = !DILocation(line: 732, column: 16, scope: !1783)
!1788 = !DILocation(line: 732, column: 3, scope: !1783)
!1789 = !DILocation(line: 734, column: 18, scope: !1790)
!1790 = distinct !DILexicalBlock(scope: !1784, file: !1, line: 733, column: 3)
!1791 = !DILocation(line: 734, column: 12, scope: !1790)
!1792 = !DILocation(line: 734, column: 11, scope: !1790)
!1793 = !DILocation(line: 734, column: 7, scope: !1790)
!1794 = !DILocation(line: 734, column: 16, scope: !1790)
!1795 = !DILocation(line: 735, column: 22, scope: !1790)
!1796 = !DILocation(line: 735, column: 21, scope: !1790)
!1797 = !DILocation(line: 735, column: 25, scope: !1790)
!1798 = !DILocation(line: 735, column: 24, scope: !1790)
!1799 = !DILocation(line: 735, column: 20, scope: !1790)
!1800 = !DILocation(line: 735, column: 12, scope: !1790)
!1801 = !DILocation(line: 735, column: 11, scope: !1790)
!1802 = !DILocation(line: 735, column: 14, scope: !1790)
!1803 = !DILocation(line: 735, column: 7, scope: !1790)
!1804 = !DILocation(line: 735, column: 18, scope: !1790)
!1805 = !DILocation(line: 736, column: 20, scope: !1790)
!1806 = !DILocation(line: 736, column: 12, scope: !1790)
!1807 = !DILocation(line: 736, column: 11, scope: !1790)
!1808 = !DILocation(line: 736, column: 14, scope: !1790)
!1809 = !DILocation(line: 736, column: 7, scope: !1790)
!1810 = !DILocation(line: 736, column: 18, scope: !1790)
!1811 = !DILocation(line: 737, column: 3, scope: !1790)
!1812 = !DILocation(line: 732, column: 33, scope: !1813)
!1813 = !DILexicalBlockFile(scope: !1784, file: !1, discriminator: 2)
!1814 = !DILocation(line: 732, column: 3, scope: !1813)
!1815 = distinct !{!1815, !1816}
!1816 = !DILocation(line: 732, column: 3, scope: !1612)
!1817 = !DILocation(line: 738, column: 24, scope: !1612)
!1818 = !DILocation(line: 738, column: 8, scope: !1612)
!1819 = !DILocation(line: 738, column: 7, scope: !1612)
!1820 = !DILocation(line: 738, column: 18, scope: !1612)
!1821 = !DILocation(line: 738, column: 3, scope: !1612)
!1822 = !DILocation(line: 738, column: 22, scope: !1612)
!1823 = !DILocation(line: 739, column: 27, scope: !1612)
!1824 = !DILocation(line: 739, column: 38, scope: !1612)
!1825 = !DILocation(line: 739, column: 25, scope: !1612)
!1826 = !DILocation(line: 739, column: 44, scope: !1612)
!1827 = !DILocation(line: 739, column: 55, scope: !1612)
!1828 = !DILocation(line: 739, column: 42, scope: !1612)
!1829 = !DILocation(line: 739, column: 24, scope: !1612)
!1830 = !DILocation(line: 739, column: 8, scope: !1612)
!1831 = !DILocation(line: 739, column: 7, scope: !1612)
!1832 = !DILocation(line: 739, column: 18, scope: !1612)
!1833 = !DILocation(line: 739, column: 3, scope: !1612)
!1834 = !DILocation(line: 739, column: 22, scope: !1612)
!1835 = !DILocation(line: 740, column: 8, scope: !1612)
!1836 = !DILocation(line: 740, column: 7, scope: !1612)
!1837 = !DILocation(line: 740, column: 18, scope: !1612)
!1838 = !DILocation(line: 740, column: 3, scope: !1612)
!1839 = !DILocation(line: 740, column: 22, scope: !1612)
!1840 = !DILocation(line: 742, column: 3, scope: !1612)
!1841 = !DILocation(line: 742, column: 9, scope: !1612)
!1842 = !DILocation(line: 744, column: 29, scope: !1612)
!1843 = !DILocation(line: 744, column: 41, scope: !1612)
!1844 = !DILocation(line: 744, column: 45, scope: !1612)
!1845 = !DILocation(line: 744, column: 49, scope: !1612)
!1846 = !DILocation(line: 744, column: 53, scope: !1612)
!1847 = !DILocation(line: 744, column: 12, scope: !1612)
!1848 = !DILocation(line: 744, column: 10, scope: !1612)
!1849 = !DILocation(line: 746, column: 7, scope: !1850)
!1850 = distinct !DILexicalBlock(scope: !1612, file: !1, line: 746, column: 7)
!1851 = !DILocation(line: 746, column: 7, scope: !1612)
!1852 = !DILocation(line: 748, column: 7, scope: !1853)
!1853 = distinct !DILexicalBlock(scope: !1850, file: !1, line: 747, column: 5)
!1854 = distinct !{!1854, !1852}
!1855 = !DILocation(line: 748, column: 7, scope: !1856)
!1856 = !DILexicalBlockFile(scope: !1857, file: !1, discriminator: 1)
!1857 = distinct !DILexicalBlock(scope: !1853, file: !1, line: 748, column: 7)
!1858 = !DILocation(line: 749, column: 5, scope: !1853)
!1859 = !DILocation(line: 752, column: 10, scope: !1860)
!1860 = distinct !DILexicalBlock(scope: !1612, file: !1, line: 752, column: 3)
!1861 = !DILocation(line: 752, column: 8, scope: !1860)
!1862 = !DILocation(line: 752, column: 14, scope: !1863)
!1863 = !DILexicalBlockFile(scope: !1864, file: !1, discriminator: 1)
!1864 = distinct !DILexicalBlock(scope: !1860, file: !1, line: 752, column: 3)
!1865 = !DILocation(line: 752, column: 17, scope: !1863)
!1866 = !DILocation(line: 752, column: 28, scope: !1863)
!1867 = !DILocation(line: 752, column: 27, scope: !1863)
!1868 = !DILocation(line: 752, column: 16, scope: !1863)
!1869 = !DILocation(line: 752, column: 3, scope: !1863)
!1870 = !DILocation(line: 753, column: 10, scope: !1864)
!1871 = !DILocation(line: 753, column: 7, scope: !1864)
!1872 = !DILocation(line: 753, column: 14, scope: !1864)
!1873 = !DILocation(line: 752, column: 42, scope: !1874)
!1874 = !DILexicalBlockFile(scope: !1864, file: !1, discriminator: 2)
!1875 = !DILocation(line: 752, column: 3, scope: !1874)
!1876 = distinct !{!1876, !1877}
!1877 = !DILocation(line: 752, column: 3, scope: !1612)
!1878 = !DILocation(line: 755, column: 11, scope: !1612)
!1879 = !DILocation(line: 755, column: 3, scope: !1612)
!1880 = !DILocation(line: 755, column: 9, scope: !1612)
!1881 = !DILocation(line: 756, column: 11, scope: !1612)
!1882 = !DILocation(line: 756, column: 3, scope: !1612)
!1883 = !DILocation(line: 756, column: 9, scope: !1612)
!1884 = !DILocation(line: 757, column: 10, scope: !1885)
!1885 = distinct !DILexicalBlock(scope: !1612, file: !1, line: 757, column: 3)
!1886 = !DILocation(line: 757, column: 8, scope: !1885)
!1887 = !DILocation(line: 757, column: 14, scope: !1888)
!1888 = !DILexicalBlockFile(scope: !1889, file: !1, discriminator: 1)
!1889 = distinct !DILexicalBlock(scope: !1885, file: !1, line: 757, column: 3)
!1890 = !DILocation(line: 757, column: 17, scope: !1888)
!1891 = !DILocation(line: 757, column: 27, scope: !1888)
!1892 = !DILocation(line: 757, column: 16, scope: !1888)
!1893 = !DILocation(line: 757, column: 3, scope: !1888)
!1894 = !DILocation(line: 759, column: 35, scope: !1895)
!1895 = distinct !DILexicalBlock(scope: !1889, file: !1, line: 758, column: 3)
!1896 = !DILocation(line: 759, column: 32, scope: !1895)
!1897 = !DILocation(line: 759, column: 10, scope: !1895)
!1898 = !DILocation(line: 759, column: 13, scope: !1895)
!1899 = !DILocation(line: 759, column: 12, scope: !1895)
!1900 = !DILocation(line: 759, column: 24, scope: !1895)
!1901 = !DILocation(line: 759, column: 23, scope: !1895)
!1902 = !DILocation(line: 759, column: 26, scope: !1895)
!1903 = !DILocation(line: 759, column: 7, scope: !1895)
!1904 = !DILocation(line: 759, column: 30, scope: !1895)
!1905 = !DILocation(line: 760, column: 33, scope: !1895)
!1906 = !DILocation(line: 760, column: 30, scope: !1895)
!1907 = !DILocation(line: 760, column: 10, scope: !1895)
!1908 = !DILocation(line: 760, column: 13, scope: !1895)
!1909 = !DILocation(line: 760, column: 12, scope: !1895)
!1910 = !DILocation(line: 760, column: 24, scope: !1895)
!1911 = !DILocation(line: 760, column: 23, scope: !1895)
!1912 = !DILocation(line: 760, column: 7, scope: !1895)
!1913 = !DILocation(line: 760, column: 28, scope: !1895)
!1914 = !DILocation(line: 761, column: 35, scope: !1895)
!1915 = !DILocation(line: 761, column: 37, scope: !1895)
!1916 = !DILocation(line: 761, column: 32, scope: !1895)
!1917 = !DILocation(line: 761, column: 10, scope: !1895)
!1918 = !DILocation(line: 761, column: 13, scope: !1895)
!1919 = !DILocation(line: 761, column: 12, scope: !1895)
!1920 = !DILocation(line: 761, column: 24, scope: !1895)
!1921 = !DILocation(line: 761, column: 23, scope: !1895)
!1922 = !DILocation(line: 761, column: 26, scope: !1895)
!1923 = !DILocation(line: 761, column: 7, scope: !1895)
!1924 = !DILocation(line: 761, column: 30, scope: !1895)
!1925 = !DILocation(line: 762, column: 3, scope: !1895)
!1926 = !DILocation(line: 757, column: 33, scope: !1927)
!1927 = !DILexicalBlockFile(scope: !1889, file: !1, discriminator: 2)
!1928 = !DILocation(line: 757, column: 3, scope: !1927)
!1929 = distinct !{!1929, !1930}
!1930 = !DILocation(line: 757, column: 3, scope: !1612)
!1931 = !DILocation(line: 763, column: 51, scope: !1612)
!1932 = !DILocation(line: 763, column: 61, scope: !1612)
!1933 = !DILocation(line: 763, column: 48, scope: !1612)
!1934 = !DILocation(line: 763, column: 6, scope: !1612)
!1935 = !DILocation(line: 763, column: 18, scope: !1612)
!1936 = !DILocation(line: 763, column: 28, scope: !1612)
!1937 = !DILocation(line: 763, column: 16, scope: !1612)
!1938 = !DILocation(line: 763, column: 32, scope: !1612)
!1939 = !DILocation(line: 763, column: 31, scope: !1612)
!1940 = !DILocation(line: 763, column: 42, scope: !1612)
!1941 = !DILocation(line: 763, column: 3, scope: !1612)
!1942 = !DILocation(line: 763, column: 46, scope: !1612)
!1943 = !DILocation(line: 764, column: 36, scope: !1612)
!1944 = !DILocation(line: 764, column: 46, scope: !1612)
!1945 = !DILocation(line: 764, column: 33, scope: !1612)
!1946 = !DILocation(line: 764, column: 6, scope: !1612)
!1947 = !DILocation(line: 764, column: 17, scope: !1612)
!1948 = !DILocation(line: 764, column: 16, scope: !1612)
!1949 = !DILocation(line: 764, column: 27, scope: !1612)
!1950 = !DILocation(line: 764, column: 3, scope: !1612)
!1951 = !DILocation(line: 764, column: 31, scope: !1612)
!1952 = !DILocation(line: 767, column: 31, scope: !1612)
!1953 = !DILocation(line: 767, column: 35, scope: !1612)
!1954 = !DILocation(line: 767, column: 47, scope: !1612)
!1955 = !DILocation(line: 767, column: 9, scope: !1612)
!1956 = !DILocation(line: 767, column: 9, scope: !1957)
!1957 = !DILexicalBlockFile(scope: !1612, file: !1, discriminator: 1)
!1958 = !DILocation(line: 768, column: 31, scope: !1612)
!1959 = !DILocation(line: 768, column: 37, scope: !1612)
!1960 = !DILocation(line: 768, column: 46, scope: !1612)
!1961 = !DILocation(line: 768, column: 10, scope: !1612)
!1962 = !DILocation(line: 768, column: 10, scope: !1957)
!1963 = !DILocation(line: 769, column: 31, scope: !1612)
!1964 = !DILocation(line: 769, column: 37, scope: !1612)
!1965 = !DILocation(line: 769, column: 49, scope: !1612)
!1966 = !DILocation(line: 769, column: 61, scope: !1612)
!1967 = !DILocation(line: 769, column: 10, scope: !1612)
!1968 = !DILocation(line: 769, column: 10, scope: !1957)
!1969 = !DILocation(line: 770, column: 24, scope: !1612)
!1970 = !DILocation(line: 770, column: 38, scope: !1612)
!1971 = !DILocation(line: 770, column: 52, scope: !1612)
!1972 = !DILocation(line: 770, column: 60, scope: !1612)
!1973 = !DILocation(line: 770, column: 3, scope: !1612)
!1974 = !DILocation(line: 771, column: 30, scope: !1612)
!1975 = !DILocation(line: 771, column: 44, scope: !1612)
!1976 = !DILocation(line: 771, column: 3, scope: !1612)
!1977 = !DILocation(line: 773, column: 10, scope: !1978)
!1978 = distinct !DILexicalBlock(scope: !1612, file: !1, line: 773, column: 3)
!1979 = !DILocation(line: 773, column: 8, scope: !1978)
!1980 = !DILocation(line: 773, column: 14, scope: !1981)
!1981 = !DILexicalBlockFile(scope: !1982, file: !1, discriminator: 1)
!1982 = distinct !DILexicalBlock(scope: !1978, file: !1, line: 773, column: 3)
!1983 = !DILocation(line: 773, column: 17, scope: !1981)
!1984 = !DILocation(line: 773, column: 28, scope: !1981)
!1985 = !DILocation(line: 773, column: 27, scope: !1981)
!1986 = !DILocation(line: 773, column: 16, scope: !1981)
!1987 = !DILocation(line: 773, column: 3, scope: !1981)
!1988 = !DILocation(line: 774, column: 39, scope: !1982)
!1989 = !DILocation(line: 774, column: 47, scope: !1982)
!1990 = !DILocation(line: 774, column: 18, scope: !1982)
!1991 = !DILocation(line: 774, column: 12, scope: !1982)
!1992 = !DILocation(line: 774, column: 11, scope: !1982)
!1993 = !DILocation(line: 774, column: 7, scope: !1982)
!1994 = !DILocation(line: 774, column: 16, scope: !1982)
!1995 = !DILocation(line: 773, column: 44, scope: !1996)
!1996 = !DILexicalBlockFile(scope: !1982, file: !1, discriminator: 2)
!1997 = !DILocation(line: 773, column: 3, scope: !1996)
!1998 = distinct !{!1998, !1999}
!1999 = !DILocation(line: 773, column: 3, scope: !1612)
!2000 = !DILocation(line: 777, column: 10, scope: !2001)
!2001 = distinct !DILexicalBlock(scope: !1612, file: !1, line: 777, column: 3)
!2002 = !DILocation(line: 777, column: 8, scope: !2001)
!2003 = !DILocation(line: 777, column: 14, scope: !2004)
!2004 = !DILexicalBlockFile(scope: !2005, file: !1, discriminator: 1)
!2005 = distinct !DILexicalBlock(scope: !2001, file: !1, line: 777, column: 3)
!2006 = !DILocation(line: 777, column: 17, scope: !2004)
!2007 = !DILocation(line: 777, column: 27, scope: !2004)
!2008 = !DILocation(line: 777, column: 26, scope: !2004)
!2009 = !DILocation(line: 777, column: 16, scope: !2004)
!2010 = !DILocation(line: 777, column: 3, scope: !2004)
!2011 = !DILocation(line: 778, column: 10, scope: !2005)
!2012 = !DILocation(line: 778, column: 7, scope: !2005)
!2013 = !DILocation(line: 778, column: 14, scope: !2005)
!2014 = !DILocation(line: 777, column: 40, scope: !2015)
!2015 = !DILexicalBlockFile(scope: !2005, file: !1, discriminator: 2)
!2016 = !DILocation(line: 777, column: 3, scope: !2015)
!2017 = distinct !{!2017, !2018}
!2018 = !DILocation(line: 777, column: 3, scope: !1612)
!2019 = !DILocation(line: 779, column: 10, scope: !2020)
!2020 = distinct !DILexicalBlock(scope: !1612, file: !1, line: 779, column: 3)
!2021 = !DILocation(line: 779, column: 8, scope: !2020)
!2022 = !DILocation(line: 779, column: 14, scope: !2023)
!2023 = !DILexicalBlockFile(scope: !2024, file: !1, discriminator: 1)
!2024 = distinct !DILexicalBlock(scope: !2020, file: !1, line: 779, column: 3)
!2025 = !DILocation(line: 779, column: 17, scope: !2023)
!2026 = !DILocation(line: 779, column: 16, scope: !2023)
!2027 = !DILocation(line: 779, column: 3, scope: !2023)
!2028 = !DILocation(line: 780, column: 14, scope: !2029)
!2029 = distinct !DILexicalBlock(scope: !2024, file: !1, line: 780, column: 7)
!2030 = !DILocation(line: 780, column: 12, scope: !2029)
!2031 = !DILocation(line: 780, column: 18, scope: !2032)
!2032 = !DILexicalBlockFile(scope: !2033, file: !1, discriminator: 1)
!2033 = distinct !DILexicalBlock(scope: !2029, file: !1, line: 780, column: 7)
!2034 = !DILocation(line: 780, column: 21, scope: !2032)
!2035 = !DILocation(line: 780, column: 20, scope: !2032)
!2036 = !DILocation(line: 780, column: 7, scope: !2032)
!2037 = !DILocation(line: 782, column: 15, scope: !2038)
!2038 = distinct !DILexicalBlock(scope: !2039, file: !1, line: 782, column: 15)
!2039 = distinct !DILexicalBlock(scope: !2033, file: !1, line: 781, column: 7)
!2040 = !DILocation(line: 782, column: 21, scope: !2038)
!2041 = !DILocation(line: 782, column: 18, scope: !2038)
!2042 = !DILocation(line: 782, column: 15, scope: !2039)
!2043 = !DILocation(line: 783, column: 40, scope: !2038)
!2044 = !DILocation(line: 783, column: 39, scope: !2038)
!2045 = !DILocation(line: 783, column: 43, scope: !2038)
!2046 = !DILocation(line: 783, column: 51, scope: !2038)
!2047 = !DILocation(line: 783, column: 50, scope: !2038)
!2048 = !DILocation(line: 783, column: 54, scope: !2038)
!2049 = !DILocation(line: 783, column: 47, scope: !2038)
!2050 = !DILocation(line: 783, column: 37, scope: !2038)
!2051 = !DILocation(line: 783, column: 18, scope: !2038)
!2052 = !DILocation(line: 783, column: 21, scope: !2038)
!2053 = !DILocation(line: 783, column: 20, scope: !2038)
!2054 = !DILocation(line: 783, column: 31, scope: !2038)
!2055 = !DILocation(line: 783, column: 30, scope: !2038)
!2056 = !DILocation(line: 783, column: 15, scope: !2038)
!2057 = !DILocation(line: 783, column: 35, scope: !2038)
!2058 = !DILocation(line: 784, column: 20, scope: !2059)
!2059 = distinct !DILexicalBlock(scope: !2038, file: !1, line: 784, column: 20)
!2060 = !DILocation(line: 784, column: 26, scope: !2059)
!2061 = !DILocation(line: 784, column: 29, scope: !2059)
!2062 = !DILocation(line: 784, column: 23, scope: !2059)
!2063 = !DILocation(line: 784, column: 33, scope: !2059)
!2064 = !DILocation(line: 784, column: 36, scope: !2065)
!2065 = !DILexicalBlockFile(scope: !2059, file: !1, discriminator: 1)
!2066 = !DILocation(line: 784, column: 39, scope: !2065)
!2067 = !DILocation(line: 784, column: 46, scope: !2065)
!2068 = !DILocation(line: 784, column: 43, scope: !2065)
!2069 = !DILocation(line: 784, column: 20, scope: !2065)
!2070 = !DILocation(line: 785, column: 37, scope: !2059)
!2071 = !DILocation(line: 785, column: 18, scope: !2059)
!2072 = !DILocation(line: 785, column: 21, scope: !2059)
!2073 = !DILocation(line: 785, column: 20, scope: !2059)
!2074 = !DILocation(line: 785, column: 31, scope: !2059)
!2075 = !DILocation(line: 785, column: 30, scope: !2059)
!2076 = !DILocation(line: 785, column: 15, scope: !2059)
!2077 = !DILocation(line: 785, column: 35, scope: !2059)
!2078 = !DILocation(line: 786, column: 7, scope: !2039)
!2079 = !DILocation(line: 780, column: 34, scope: !2080)
!2080 = !DILexicalBlockFile(scope: !2033, file: !1, discriminator: 2)
!2081 = !DILocation(line: 780, column: 7, scope: !2080)
!2082 = distinct !{!2082, !2083}
!2083 = !DILocation(line: 780, column: 7, scope: !2024)
!2084 = !DILocation(line: 786, column: 7, scope: !2085)
!2085 = !DILexicalBlockFile(scope: !2029, file: !1, discriminator: 1)
!2086 = !DILocation(line: 779, column: 30, scope: !2087)
!2087 = !DILexicalBlockFile(scope: !2024, file: !1, discriminator: 2)
!2088 = !DILocation(line: 779, column: 3, scope: !2087)
!2089 = distinct !{!2089, !2090}
!2090 = !DILocation(line: 779, column: 3, scope: !1612)
!2091 = !DILocation(line: 787, column: 12, scope: !1612)
!2092 = !DILocation(line: 787, column: 3, scope: !1612)
!2093 = !DILocation(line: 787, column: 9, scope: !1612)
!2094 = !DILocation(line: 790, column: 31, scope: !1612)
!2095 = !DILocation(line: 790, column: 35, scope: !1612)
!2096 = !DILocation(line: 790, column: 46, scope: !1612)
!2097 = !DILocation(line: 790, column: 9, scope: !1612)
!2098 = !DILocation(line: 790, column: 9, scope: !1957)
!2099 = !DILocation(line: 791, column: 31, scope: !1612)
!2100 = !DILocation(line: 791, column: 37, scope: !1612)
!2101 = !DILocation(line: 791, column: 46, scope: !1612)
!2102 = !DILocation(line: 791, column: 10, scope: !1612)
!2103 = !DILocation(line: 791, column: 10, scope: !1957)
!2104 = !DILocation(line: 792, column: 31, scope: !1612)
!2105 = !DILocation(line: 792, column: 37, scope: !1612)
!2106 = !DILocation(line: 792, column: 49, scope: !1612)
!2107 = !DILocation(line: 792, column: 60, scope: !1612)
!2108 = !DILocation(line: 792, column: 10, scope: !1612)
!2109 = !DILocation(line: 792, column: 10, scope: !1957)
!2110 = !DILocation(line: 793, column: 24, scope: !1612)
!2111 = !DILocation(line: 793, column: 38, scope: !1612)
!2112 = !DILocation(line: 793, column: 52, scope: !1612)
!2113 = !DILocation(line: 793, column: 60, scope: !1612)
!2114 = !DILocation(line: 793, column: 3, scope: !1612)
!2115 = !DILocation(line: 794, column: 30, scope: !1612)
!2116 = !DILocation(line: 794, column: 44, scope: !1612)
!2117 = !DILocation(line: 794, column: 3, scope: !1612)
!2118 = !DILocation(line: 796, column: 10, scope: !2119)
!2119 = distinct !DILexicalBlock(scope: !1612, file: !1, line: 796, column: 3)
!2120 = !DILocation(line: 796, column: 8, scope: !2119)
!2121 = !DILocation(line: 796, column: 14, scope: !2122)
!2122 = !DILexicalBlockFile(scope: !2123, file: !1, discriminator: 1)
!2123 = distinct !DILexicalBlock(scope: !2119, file: !1, line: 796, column: 3)
!2124 = !DILocation(line: 796, column: 17, scope: !2122)
!2125 = !DILocation(line: 796, column: 27, scope: !2122)
!2126 = !DILocation(line: 796, column: 26, scope: !2122)
!2127 = !DILocation(line: 796, column: 16, scope: !2122)
!2128 = !DILocation(line: 796, column: 3, scope: !2122)
!2129 = !DILocation(line: 797, column: 41, scope: !2123)
!2130 = !DILocation(line: 797, column: 49, scope: !2123)
!2131 = !DILocation(line: 797, column: 20, scope: !2123)
!2132 = !DILocation(line: 797, column: 12, scope: !2123)
!2133 = !DILocation(line: 797, column: 11, scope: !2123)
!2134 = !DILocation(line: 797, column: 14, scope: !2123)
!2135 = !DILocation(line: 797, column: 7, scope: !2123)
!2136 = !DILocation(line: 797, column: 18, scope: !2123)
!2137 = !DILocation(line: 796, column: 43, scope: !2138)
!2138 = !DILexicalBlockFile(scope: !2123, file: !1, discriminator: 2)
!2139 = !DILocation(line: 796, column: 3, scope: !2138)
!2140 = distinct !{!2140, !2141}
!2141 = !DILocation(line: 796, column: 3, scope: !1612)
!2142 = !DILocation(line: 799, column: 13, scope: !2143)
!2143 = distinct !DILexicalBlock(scope: !1612, file: !1, line: 799, column: 3)
!2144 = !DILocation(line: 799, column: 11, scope: !2143)
!2145 = !DILocation(line: 799, column: 8, scope: !2143)
!2146 = !DILocation(line: 799, column: 25, scope: !2147)
!2147 = !DILexicalBlockFile(scope: !2148, file: !1, discriminator: 1)
!2148 = distinct !DILexicalBlock(scope: !2143, file: !1, line: 799, column: 3)
!2149 = !DILocation(line: 799, column: 31, scope: !2147)
!2150 = !DILocation(line: 799, column: 28, scope: !2147)
!2151 = !DILocation(line: 799, column: 3, scope: !2147)
!2152 = !DILocation(line: 801, column: 41, scope: !2153)
!2153 = distinct !DILexicalBlock(scope: !2148, file: !1, line: 800, column: 5)
!2154 = !DILocation(line: 801, column: 38, scope: !2153)
!2155 = !DILocation(line: 801, column: 20, scope: !2153)
!2156 = !DILocation(line: 801, column: 25, scope: !2153)
!2157 = !DILocation(line: 801, column: 23, scope: !2153)
!2158 = !DILocation(line: 801, column: 7, scope: !2153)
!2159 = !DILocation(line: 801, column: 36, scope: !2153)
!2160 = !DILocation(line: 802, column: 5, scope: !2153)
!2161 = !DILocation(line: 799, column: 45, scope: !2162)
!2162 = !DILexicalBlockFile(scope: !2148, file: !1, discriminator: 2)
!2163 = !DILocation(line: 799, column: 3, scope: !2162)
!2164 = distinct !{!2164, !2165}
!2165 = !DILocation(line: 799, column: 3, scope: !1612)
!2166 = !DILocation(line: 804, column: 3, scope: !1612)
!2167 = !DILocation(line: 805, column: 1, scope: !1612)
!2168 = distinct !DISubprogram(name: "figi", scope: !1, file: !1, line: 675, type: !2169, isLocal: true, isDefinition: true, scopeLine: 677, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !66)
!2169 = !DISubroutineType(types: !2170)
!2170 = !{!49, !49, !1630, !1630, !1630, !1630}
!2171 = !DILocalVariable(name: "nn", arg: 1, scope: !2168, file: !1, line: 675, type: !49)
!2172 = !DILocation(line: 675, column: 21, scope: !2168)
!2173 = !DILocalVariable(name: "tt", arg: 2, scope: !2168, file: !1, line: 675, type: !1630)
!2174 = !DILocation(line: 675, column: 33, scope: !2168)
!2175 = !DILocalVariable(name: "dd", arg: 3, scope: !2168, file: !1, line: 675, type: !1630)
!2176 = !DILocation(line: 675, column: 45, scope: !2168)
!2177 = !DILocalVariable(name: "ee", arg: 4, scope: !2168, file: !1, line: 675, type: !1630)
!2178 = !DILocation(line: 675, column: 57, scope: !2168)
!2179 = !DILocalVariable(name: "e2", arg: 5, scope: !2168, file: !1, line: 676, type: !1630)
!2180 = !DILocation(line: 676, column: 25, scope: !2168)
!2181 = !DILocalVariable(name: "ii", scope: !2168, file: !1, line: 678, type: !49)
!2182 = !DILocation(line: 678, column: 7, scope: !2168)
!2183 = !DILocation(line: 680, column: 10, scope: !2184)
!2184 = distinct !DILexicalBlock(scope: !2168, file: !1, line: 680, column: 3)
!2185 = !DILocation(line: 680, column: 8, scope: !2184)
!2186 = !DILocation(line: 680, column: 14, scope: !2187)
!2187 = !DILexicalBlockFile(scope: !2188, file: !1, discriminator: 1)
!2188 = distinct !DILexicalBlock(scope: !2184, file: !1, line: 680, column: 3)
!2189 = !DILocation(line: 680, column: 17, scope: !2187)
!2190 = !DILocation(line: 680, column: 16, scope: !2187)
!2191 = !DILocation(line: 680, column: 3, scope: !2187)
!2192 = !DILocation(line: 682, column: 11, scope: !2193)
!2193 = distinct !DILexicalBlock(scope: !2194, file: !1, line: 682, column: 11)
!2194 = distinct !DILexicalBlock(scope: !2188, file: !1, line: 681, column: 3)
!2195 = !DILocation(line: 682, column: 14, scope: !2193)
!2196 = !DILocation(line: 682, column: 11, scope: !2194)
!2197 = !DILocation(line: 684, column: 25, scope: !2198)
!2198 = distinct !DILexicalBlock(scope: !2193, file: !1, line: 683, column: 7)
!2199 = !DILocation(line: 684, column: 24, scope: !2198)
!2200 = !DILocation(line: 684, column: 20, scope: !2198)
!2201 = !DILocation(line: 684, column: 35, scope: !2198)
!2202 = !DILocation(line: 684, column: 37, scope: !2198)
!2203 = !DILocation(line: 684, column: 33, scope: !2198)
!2204 = !DILocation(line: 684, column: 40, scope: !2198)
!2205 = !DILocation(line: 684, column: 29, scope: !2198)
!2206 = !DILocation(line: 684, column: 28, scope: !2198)
!2207 = !DILocation(line: 684, column: 14, scope: !2198)
!2208 = !DILocation(line: 684, column: 11, scope: !2198)
!2209 = !DILocation(line: 684, column: 18, scope: !2198)
!2210 = !DILocation(line: 686, column: 18, scope: !2211)
!2211 = distinct !DILexicalBlock(scope: !2198, file: !1, line: 686, column: 15)
!2212 = !DILocation(line: 686, column: 15, scope: !2211)
!2213 = !DILocation(line: 686, column: 22, scope: !2211)
!2214 = !DILocation(line: 686, column: 15, scope: !2198)
!2215 = !DILocation(line: 690, column: 23, scope: !2216)
!2216 = distinct !DILexicalBlock(scope: !2211, file: !1, line: 687, column: 11)
!2217 = !DILocation(line: 690, column: 28, scope: !2216)
!2218 = !DILocation(line: 690, column: 26, scope: !2216)
!2219 = !DILocation(line: 690, column: 15, scope: !2216)
!2220 = !DILocation(line: 693, column: 18, scope: !2221)
!2221 = distinct !DILexicalBlock(scope: !2198, file: !1, line: 693, column: 15)
!2222 = !DILocation(line: 693, column: 15, scope: !2221)
!2223 = !DILocation(line: 693, column: 22, scope: !2221)
!2224 = !DILocation(line: 693, column: 29, scope: !2221)
!2225 = !DILocation(line: 693, column: 38, scope: !2226)
!2226 = !DILexicalBlockFile(scope: !2221, file: !1, discriminator: 1)
!2227 = !DILocation(line: 693, column: 37, scope: !2226)
!2228 = !DILocation(line: 693, column: 33, scope: !2226)
!2229 = !DILocation(line: 693, column: 42, scope: !2226)
!2230 = !DILocation(line: 693, column: 49, scope: !2226)
!2231 = !DILocation(line: 693, column: 58, scope: !2232)
!2232 = !DILexicalBlockFile(scope: !2221, file: !1, discriminator: 2)
!2233 = !DILocation(line: 693, column: 60, scope: !2232)
!2234 = !DILocation(line: 693, column: 56, scope: !2232)
!2235 = !DILocation(line: 693, column: 63, scope: !2232)
!2236 = !DILocation(line: 693, column: 52, scope: !2232)
!2237 = !DILocation(line: 693, column: 67, scope: !2232)
!2238 = !DILocation(line: 693, column: 15, scope: !2232)
!2239 = !DILocation(line: 697, column: 29, scope: !2240)
!2240 = distinct !DILexicalBlock(scope: !2221, file: !1, line: 694, column: 11)
!2241 = !DILocation(line: 697, column: 28, scope: !2240)
!2242 = !DILocation(line: 697, column: 34, scope: !2240)
!2243 = !DILocation(line: 697, column: 32, scope: !2240)
!2244 = !DILocation(line: 697, column: 25, scope: !2240)
!2245 = !DILocation(line: 697, column: 15, scope: !2240)
!2246 = !DILocation(line: 700, column: 28, scope: !2198)
!2247 = !DILocation(line: 700, column: 25, scope: !2198)
!2248 = !DILocation(line: 700, column: 20, scope: !2198)
!2249 = !DILocation(line: 700, column: 14, scope: !2198)
!2250 = !DILocation(line: 700, column: 11, scope: !2198)
!2251 = !DILocation(line: 700, column: 18, scope: !2198)
!2252 = !DILocation(line: 701, column: 7, scope: !2198)
!2253 = !DILocation(line: 703, column: 21, scope: !2194)
!2254 = !DILocation(line: 703, column: 20, scope: !2194)
!2255 = !DILocation(line: 703, column: 23, scope: !2194)
!2256 = !DILocation(line: 703, column: 16, scope: !2194)
!2257 = !DILocation(line: 703, column: 10, scope: !2194)
!2258 = !DILocation(line: 703, column: 7, scope: !2194)
!2259 = !DILocation(line: 703, column: 14, scope: !2194)
!2260 = !DILocation(line: 704, column: 3, scope: !2194)
!2261 = !DILocation(line: 680, column: 23, scope: !2262)
!2262 = !DILexicalBlockFile(scope: !2188, file: !1, discriminator: 2)
!2263 = !DILocation(line: 680, column: 3, scope: !2262)
!2264 = distinct !{!2264, !2265}
!2265 = !DILocation(line: 680, column: 3, scope: !2168)
!2266 = !DILocation(line: 706, column: 3, scope: !2168)
!2267 = !DILocation(line: 707, column: 1, scope: !2168)
!2268 = distinct !DISubprogram(name: "gsl_sf_mathieu_b_array", scope: !1, file: !1, line: 808, type: !1613, isLocal: false, isDefinition: true, scopeLine: 809, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !66)
!2269 = !DILocalVariable(name: "order_min", arg: 1, scope: !2268, file: !1, line: 808, type: !49)
!2270 = !DILocation(line: 808, column: 32, scope: !2268)
!2271 = !DILocalVariable(name: "order_max", arg: 2, scope: !2268, file: !1, line: 808, type: !49)
!2272 = !DILocation(line: 808, column: 47, scope: !2268)
!2273 = !DILocalVariable(name: "qq", arg: 3, scope: !2268, file: !1, line: 808, type: !50)
!2274 = !DILocation(line: 808, column: 65, scope: !2268)
!2275 = !DILocalVariable(name: "work", arg: 4, scope: !2268, file: !1, line: 808, type: !1615)
!2276 = !DILocation(line: 808, column: 95, scope: !2268)
!2277 = !DILocalVariable(name: "result_array", arg: 5, scope: !2268, file: !1, line: 808, type: !1630)
!2278 = !DILocation(line: 808, column: 108, scope: !2268)
!2279 = !DILocalVariable(name: "even_order", scope: !2268, file: !1, line: 810, type: !1688)
!2280 = !DILocation(line: 810, column: 16, scope: !2268)
!2281 = !DILocation(line: 810, column: 29, scope: !2268)
!2282 = !DILocation(line: 810, column: 35, scope: !2268)
!2283 = !DILocation(line: 810, column: 45, scope: !2268)
!2284 = !DILocalVariable(name: "odd_order", scope: !2268, file: !1, line: 810, type: !1688)
!2285 = !DILocation(line: 810, column: 49, scope: !2268)
!2286 = !DILocation(line: 810, column: 61, scope: !2268)
!2287 = !DILocation(line: 810, column: 67, scope: !2268)
!2288 = !DILocalVariable(name: "extra_values", scope: !2268, file: !1, line: 811, type: !1688)
!2289 = !DILocation(line: 811, column: 7, scope: !2268)
!2290 = !DILocation(line: 811, column: 22, scope: !2268)
!2291 = !DILocation(line: 811, column: 28, scope: !2268)
!2292 = !DILocalVariable(name: "ii", scope: !2268, file: !1, line: 811, type: !1688)
!2293 = !DILocation(line: 811, column: 42, scope: !2268)
!2294 = !DILocalVariable(name: "jj", scope: !2268, file: !1, line: 811, type: !1688)
!2295 = !DILocation(line: 811, column: 46, scope: !2268)
!2296 = !DILocalVariable(name: "zz", scope: !2268, file: !1, line: 812, type: !1630)
!2297 = !DILocation(line: 812, column: 11, scope: !2268)
!2298 = !DILocation(line: 812, column: 16, scope: !2268)
!2299 = !DILocation(line: 812, column: 22, scope: !2268)
!2300 = !DILocalVariable(name: "bb", scope: !2268, file: !1, line: 812, type: !1630)
!2301 = !DILocation(line: 812, column: 27, scope: !2268)
!2302 = !DILocation(line: 812, column: 32, scope: !2268)
!2303 = !DILocation(line: 812, column: 38, scope: !2268)
!2304 = !DILocalVariable(name: "mat", scope: !2268, file: !1, line: 813, type: !1731)
!2305 = !DILocation(line: 813, column: 19, scope: !2268)
!2306 = !DILocalVariable(name: "evec", scope: !2268, file: !1, line: 813, type: !1731)
!2307 = !DILocation(line: 813, column: 24, scope: !2268)
!2308 = !DILocalVariable(name: "eval", scope: !2268, file: !1, line: 814, type: !1740)
!2309 = !DILocation(line: 814, column: 19, scope: !2268)
!2310 = !DILocalVariable(name: "wmat", scope: !2268, file: !1, line: 815, type: !1668)
!2311 = !DILocation(line: 815, column: 30, scope: !2268)
!2312 = !DILocation(line: 815, column: 37, scope: !2268)
!2313 = !DILocation(line: 815, column: 43, scope: !2268)
!2314 = !DILocation(line: 817, column: 7, scope: !2315)
!2315 = distinct !DILexicalBlock(scope: !2268, file: !1, line: 817, column: 7)
!2316 = !DILocation(line: 817, column: 19, scope: !2315)
!2317 = !DILocation(line: 817, column: 25, scope: !2315)
!2318 = !DILocation(line: 817, column: 17, scope: !2315)
!2319 = !DILocation(line: 817, column: 30, scope: !2315)
!2320 = !DILocation(line: 817, column: 33, scope: !2321)
!2321 = !DILexicalBlockFile(scope: !2315, file: !1, discriminator: 1)
!2322 = !DILocation(line: 817, column: 46, scope: !2321)
!2323 = !DILocation(line: 817, column: 43, scope: !2321)
!2324 = !DILocation(line: 817, column: 56, scope: !2321)
!2325 = !DILocation(line: 817, column: 59, scope: !2326)
!2326 = !DILexicalBlockFile(scope: !2315, file: !1, discriminator: 2)
!2327 = !DILocation(line: 817, column: 69, scope: !2326)
!2328 = !DILocation(line: 817, column: 7, scope: !2326)
!2329 = !DILocation(line: 819, column: 7, scope: !2330)
!2330 = distinct !DILexicalBlock(scope: !2315, file: !1, line: 818, column: 5)
!2331 = distinct !{!2331, !2329}
!2332 = !DILocation(line: 819, column: 7, scope: !2333)
!2333 = !DILexicalBlockFile(scope: !2334, file: !1, discriminator: 1)
!2334 = distinct !DILexicalBlock(scope: !2330, file: !1, line: 819, column: 7)
!2335 = !DILocation(line: 820, column: 5, scope: !2330)
!2336 = !DILocation(line: 823, column: 10, scope: !2337)
!2337 = distinct !DILexicalBlock(scope: !2268, file: !1, line: 823, column: 3)
!2338 = !DILocation(line: 823, column: 8, scope: !2337)
!2339 = !DILocation(line: 823, column: 14, scope: !2340)
!2340 = !DILexicalBlockFile(scope: !2341, file: !1, discriminator: 1)
!2341 = distinct !DILexicalBlock(scope: !2337, file: !1, line: 823, column: 3)
!2342 = !DILocation(line: 823, column: 17, scope: !2340)
!2343 = !DILocation(line: 823, column: 28, scope: !2340)
!2344 = !DILocation(line: 823, column: 27, scope: !2340)
!2345 = !DILocation(line: 823, column: 16, scope: !2340)
!2346 = !DILocation(line: 823, column: 3, scope: !2340)
!2347 = !DILocation(line: 824, column: 10, scope: !2341)
!2348 = !DILocation(line: 824, column: 7, scope: !2341)
!2349 = !DILocation(line: 824, column: 14, scope: !2341)
!2350 = !DILocation(line: 823, column: 42, scope: !2351)
!2351 = !DILexicalBlockFile(scope: !2341, file: !1, discriminator: 2)
!2352 = !DILocation(line: 823, column: 3, scope: !2351)
!2353 = distinct !{!2353, !2354}
!2354 = !DILocation(line: 823, column: 3, scope: !2268)
!2355 = !DILocation(line: 825, column: 10, scope: !2356)
!2356 = distinct !DILexicalBlock(scope: !2268, file: !1, line: 825, column: 3)
!2357 = !DILocation(line: 825, column: 8, scope: !2356)
!2358 = !DILocation(line: 825, column: 14, scope: !2359)
!2359 = !DILexicalBlockFile(scope: !2360, file: !1, discriminator: 1)
!2360 = distinct !DILexicalBlock(scope: !2356, file: !1, line: 825, column: 3)
!2361 = !DILocation(line: 825, column: 17, scope: !2359)
!2362 = !DILocation(line: 825, column: 16, scope: !2359)
!2363 = !DILocation(line: 825, column: 3, scope: !2359)
!2364 = !DILocation(line: 826, column: 14, scope: !2365)
!2365 = distinct !DILexicalBlock(scope: !2360, file: !1, line: 826, column: 7)
!2366 = !DILocation(line: 826, column: 12, scope: !2365)
!2367 = !DILocation(line: 826, column: 18, scope: !2368)
!2368 = !DILexicalBlockFile(scope: !2369, file: !1, discriminator: 1)
!2369 = distinct !DILexicalBlock(scope: !2365, file: !1, line: 826, column: 7)
!2370 = !DILocation(line: 826, column: 21, scope: !2368)
!2371 = !DILocation(line: 826, column: 20, scope: !2368)
!2372 = !DILocation(line: 826, column: 7, scope: !2368)
!2373 = !DILocation(line: 828, column: 15, scope: !2374)
!2374 = distinct !DILexicalBlock(scope: !2375, file: !1, line: 828, column: 15)
!2375 = distinct !DILexicalBlock(scope: !2369, file: !1, line: 827, column: 7)
!2376 = !DILocation(line: 828, column: 21, scope: !2374)
!2377 = !DILocation(line: 828, column: 18, scope: !2374)
!2378 = !DILocation(line: 828, column: 15, scope: !2375)
!2379 = !DILocation(line: 829, column: 41, scope: !2374)
!2380 = !DILocation(line: 829, column: 44, scope: !2374)
!2381 = !DILocation(line: 829, column: 39, scope: !2374)
!2382 = !DILocation(line: 829, column: 50, scope: !2374)
!2383 = !DILocation(line: 829, column: 53, scope: !2374)
!2384 = !DILocation(line: 829, column: 48, scope: !2374)
!2385 = !DILocation(line: 829, column: 38, scope: !2374)
!2386 = !DILocation(line: 829, column: 18, scope: !2374)
!2387 = !DILocation(line: 829, column: 21, scope: !2374)
!2388 = !DILocation(line: 829, column: 20, scope: !2374)
!2389 = !DILocation(line: 829, column: 32, scope: !2374)
!2390 = !DILocation(line: 829, column: 31, scope: !2374)
!2391 = !DILocation(line: 829, column: 15, scope: !2374)
!2392 = !DILocation(line: 829, column: 36, scope: !2374)
!2393 = !DILocation(line: 830, column: 20, scope: !2394)
!2394 = distinct !DILexicalBlock(scope: !2374, file: !1, line: 830, column: 20)
!2395 = !DILocation(line: 830, column: 26, scope: !2394)
!2396 = !DILocation(line: 830, column: 29, scope: !2394)
!2397 = !DILocation(line: 830, column: 23, scope: !2394)
!2398 = !DILocation(line: 830, column: 33, scope: !2394)
!2399 = !DILocation(line: 830, column: 36, scope: !2400)
!2400 = !DILexicalBlockFile(scope: !2394, file: !1, discriminator: 1)
!2401 = !DILocation(line: 830, column: 39, scope: !2400)
!2402 = !DILocation(line: 830, column: 46, scope: !2400)
!2403 = !DILocation(line: 830, column: 43, scope: !2400)
!2404 = !DILocation(line: 830, column: 20, scope: !2400)
!2405 = !DILocation(line: 831, column: 38, scope: !2394)
!2406 = !DILocation(line: 831, column: 18, scope: !2394)
!2407 = !DILocation(line: 831, column: 21, scope: !2394)
!2408 = !DILocation(line: 831, column: 20, scope: !2394)
!2409 = !DILocation(line: 831, column: 32, scope: !2394)
!2410 = !DILocation(line: 831, column: 31, scope: !2394)
!2411 = !DILocation(line: 831, column: 15, scope: !2394)
!2412 = !DILocation(line: 831, column: 36, scope: !2394)
!2413 = !DILocation(line: 832, column: 7, scope: !2375)
!2414 = !DILocation(line: 826, column: 35, scope: !2415)
!2415 = !DILexicalBlockFile(scope: !2369, file: !1, discriminator: 2)
!2416 = !DILocation(line: 826, column: 7, scope: !2415)
!2417 = distinct !{!2417, !2418}
!2418 = !DILocation(line: 826, column: 7, scope: !2360)
!2419 = !DILocation(line: 832, column: 7, scope: !2420)
!2420 = !DILexicalBlockFile(scope: !2365, file: !1, discriminator: 1)
!2421 = !DILocation(line: 825, column: 31, scope: !2422)
!2422 = !DILexicalBlockFile(scope: !2360, file: !1, discriminator: 2)
!2423 = !DILocation(line: 825, column: 3, scope: !2422)
!2424 = distinct !{!2424, !2425}
!2425 = !DILocation(line: 825, column: 3, scope: !2268)
!2426 = !DILocation(line: 835, column: 31, scope: !2268)
!2427 = !DILocation(line: 835, column: 35, scope: !2268)
!2428 = !DILocation(line: 835, column: 47, scope: !2268)
!2429 = !DILocation(line: 835, column: 9, scope: !2268)
!2430 = !DILocation(line: 835, column: 9, scope: !2431)
!2431 = !DILexicalBlockFile(scope: !2268, file: !1, discriminator: 1)
!2432 = !DILocation(line: 836, column: 31, scope: !2268)
!2433 = !DILocation(line: 836, column: 37, scope: !2268)
!2434 = !DILocation(line: 836, column: 46, scope: !2268)
!2435 = !DILocation(line: 836, column: 10, scope: !2268)
!2436 = !DILocation(line: 836, column: 10, scope: !2431)
!2437 = !DILocation(line: 837, column: 31, scope: !2268)
!2438 = !DILocation(line: 837, column: 37, scope: !2268)
!2439 = !DILocation(line: 837, column: 49, scope: !2268)
!2440 = !DILocation(line: 837, column: 61, scope: !2268)
!2441 = !DILocation(line: 837, column: 10, scope: !2268)
!2442 = !DILocation(line: 837, column: 10, scope: !2431)
!2443 = !DILocation(line: 838, column: 24, scope: !2268)
!2444 = !DILocation(line: 838, column: 38, scope: !2268)
!2445 = !DILocation(line: 838, column: 52, scope: !2268)
!2446 = !DILocation(line: 838, column: 60, scope: !2268)
!2447 = !DILocation(line: 838, column: 3, scope: !2268)
!2448 = !DILocation(line: 839, column: 30, scope: !2268)
!2449 = !DILocation(line: 839, column: 44, scope: !2268)
!2450 = !DILocation(line: 839, column: 3, scope: !2268)
!2451 = !DILocation(line: 841, column: 3, scope: !2268)
!2452 = !DILocation(line: 841, column: 9, scope: !2268)
!2453 = !DILocation(line: 842, column: 10, scope: !2454)
!2454 = distinct !DILexicalBlock(scope: !2268, file: !1, line: 842, column: 3)
!2455 = !DILocation(line: 842, column: 8, scope: !2454)
!2456 = !DILocation(line: 842, column: 14, scope: !2457)
!2457 = !DILexicalBlockFile(scope: !2458, file: !1, discriminator: 1)
!2458 = distinct !DILexicalBlock(scope: !2454, file: !1, line: 842, column: 3)
!2459 = !DILocation(line: 842, column: 17, scope: !2457)
!2460 = !DILocation(line: 842, column: 28, scope: !2457)
!2461 = !DILocation(line: 842, column: 27, scope: !2457)
!2462 = !DILocation(line: 842, column: 16, scope: !2457)
!2463 = !DILocation(line: 842, column: 3, scope: !2457)
!2464 = !DILocation(line: 843, column: 43, scope: !2458)
!2465 = !DILocation(line: 843, column: 51, scope: !2458)
!2466 = !DILocation(line: 843, column: 22, scope: !2458)
!2467 = !DILocation(line: 843, column: 13, scope: !2458)
!2468 = !DILocation(line: 843, column: 15, scope: !2458)
!2469 = !DILocation(line: 843, column: 11, scope: !2458)
!2470 = !DILocation(line: 843, column: 7, scope: !2458)
!2471 = !DILocation(line: 843, column: 20, scope: !2458)
!2472 = !DILocation(line: 842, column: 44, scope: !2473)
!2473 = !DILexicalBlockFile(scope: !2458, file: !1, discriminator: 2)
!2474 = !DILocation(line: 842, column: 3, scope: !2473)
!2475 = distinct !{!2475, !2476}
!2476 = !DILocation(line: 842, column: 3, scope: !2268)
!2477 = !DILocation(line: 846, column: 10, scope: !2478)
!2478 = distinct !DILexicalBlock(scope: !2268, file: !1, line: 846, column: 3)
!2479 = !DILocation(line: 846, column: 8, scope: !2478)
!2480 = !DILocation(line: 846, column: 14, scope: !2481)
!2481 = !DILexicalBlockFile(scope: !2482, file: !1, discriminator: 1)
!2482 = distinct !DILexicalBlock(scope: !2478, file: !1, line: 846, column: 3)
!2483 = !DILocation(line: 846, column: 17, scope: !2481)
!2484 = !DILocation(line: 846, column: 27, scope: !2481)
!2485 = !DILocation(line: 846, column: 26, scope: !2481)
!2486 = !DILocation(line: 846, column: 16, scope: !2481)
!2487 = !DILocation(line: 846, column: 3, scope: !2481)
!2488 = !DILocation(line: 847, column: 10, scope: !2482)
!2489 = !DILocation(line: 847, column: 7, scope: !2482)
!2490 = !DILocation(line: 847, column: 14, scope: !2482)
!2491 = !DILocation(line: 846, column: 40, scope: !2492)
!2492 = !DILexicalBlockFile(scope: !2482, file: !1, discriminator: 2)
!2493 = !DILocation(line: 846, column: 3, scope: !2492)
!2494 = distinct !{!2494, !2495}
!2495 = !DILocation(line: 846, column: 3, scope: !2268)
!2496 = !DILocation(line: 848, column: 10, scope: !2497)
!2497 = distinct !DILexicalBlock(scope: !2268, file: !1, line: 848, column: 3)
!2498 = !DILocation(line: 848, column: 8, scope: !2497)
!2499 = !DILocation(line: 848, column: 14, scope: !2500)
!2500 = !DILexicalBlockFile(scope: !2501, file: !1, discriminator: 1)
!2501 = distinct !DILexicalBlock(scope: !2497, file: !1, line: 848, column: 3)
!2502 = !DILocation(line: 848, column: 17, scope: !2500)
!2503 = !DILocation(line: 848, column: 16, scope: !2500)
!2504 = !DILocation(line: 848, column: 3, scope: !2500)
!2505 = !DILocation(line: 849, column: 14, scope: !2506)
!2506 = distinct !DILexicalBlock(scope: !2501, file: !1, line: 849, column: 7)
!2507 = !DILocation(line: 849, column: 12, scope: !2506)
!2508 = !DILocation(line: 849, column: 18, scope: !2509)
!2509 = !DILexicalBlockFile(scope: !2510, file: !1, discriminator: 1)
!2510 = distinct !DILexicalBlock(scope: !2506, file: !1, line: 849, column: 7)
!2511 = !DILocation(line: 849, column: 21, scope: !2509)
!2512 = !DILocation(line: 849, column: 20, scope: !2509)
!2513 = !DILocation(line: 849, column: 7, scope: !2509)
!2514 = !DILocation(line: 851, column: 15, scope: !2515)
!2515 = distinct !DILexicalBlock(scope: !2516, file: !1, line: 851, column: 15)
!2516 = distinct !DILexicalBlock(scope: !2510, file: !1, line: 850, column: 7)
!2517 = !DILocation(line: 851, column: 21, scope: !2515)
!2518 = !DILocation(line: 851, column: 18, scope: !2515)
!2519 = !DILocation(line: 851, column: 15, scope: !2516)
!2520 = !DILocation(line: 852, column: 40, scope: !2515)
!2521 = !DILocation(line: 852, column: 39, scope: !2515)
!2522 = !DILocation(line: 852, column: 43, scope: !2515)
!2523 = !DILocation(line: 852, column: 51, scope: !2515)
!2524 = !DILocation(line: 852, column: 50, scope: !2515)
!2525 = !DILocation(line: 852, column: 54, scope: !2515)
!2526 = !DILocation(line: 852, column: 47, scope: !2515)
!2527 = !DILocation(line: 852, column: 37, scope: !2515)
!2528 = !DILocation(line: 852, column: 18, scope: !2515)
!2529 = !DILocation(line: 852, column: 21, scope: !2515)
!2530 = !DILocation(line: 852, column: 20, scope: !2515)
!2531 = !DILocation(line: 852, column: 31, scope: !2515)
!2532 = !DILocation(line: 852, column: 30, scope: !2515)
!2533 = !DILocation(line: 852, column: 15, scope: !2515)
!2534 = !DILocation(line: 852, column: 35, scope: !2515)
!2535 = !DILocation(line: 853, column: 20, scope: !2536)
!2536 = distinct !DILexicalBlock(scope: !2515, file: !1, line: 853, column: 20)
!2537 = !DILocation(line: 853, column: 26, scope: !2536)
!2538 = !DILocation(line: 853, column: 29, scope: !2536)
!2539 = !DILocation(line: 853, column: 23, scope: !2536)
!2540 = !DILocation(line: 853, column: 33, scope: !2536)
!2541 = !DILocation(line: 853, column: 36, scope: !2542)
!2542 = !DILexicalBlockFile(scope: !2536, file: !1, discriminator: 1)
!2543 = !DILocation(line: 853, column: 39, scope: !2542)
!2544 = !DILocation(line: 853, column: 46, scope: !2542)
!2545 = !DILocation(line: 853, column: 43, scope: !2542)
!2546 = !DILocation(line: 853, column: 20, scope: !2542)
!2547 = !DILocation(line: 854, column: 37, scope: !2536)
!2548 = !DILocation(line: 854, column: 18, scope: !2536)
!2549 = !DILocation(line: 854, column: 21, scope: !2536)
!2550 = !DILocation(line: 854, column: 20, scope: !2536)
!2551 = !DILocation(line: 854, column: 31, scope: !2536)
!2552 = !DILocation(line: 854, column: 30, scope: !2536)
!2553 = !DILocation(line: 854, column: 15, scope: !2536)
!2554 = !DILocation(line: 854, column: 35, scope: !2536)
!2555 = !DILocation(line: 855, column: 7, scope: !2516)
!2556 = !DILocation(line: 849, column: 34, scope: !2557)
!2557 = !DILexicalBlockFile(scope: !2510, file: !1, discriminator: 2)
!2558 = !DILocation(line: 849, column: 7, scope: !2557)
!2559 = distinct !{!2559, !2560}
!2560 = !DILocation(line: 849, column: 7, scope: !2501)
!2561 = !DILocation(line: 855, column: 7, scope: !2562)
!2562 = !DILexicalBlockFile(scope: !2506, file: !1, discriminator: 1)
!2563 = !DILocation(line: 848, column: 30, scope: !2564)
!2564 = !DILexicalBlockFile(scope: !2501, file: !1, discriminator: 2)
!2565 = !DILocation(line: 848, column: 3, scope: !2564)
!2566 = distinct !{!2566, !2567}
!2567 = !DILocation(line: 848, column: 3, scope: !2268)
!2568 = !DILocation(line: 857, column: 12, scope: !2268)
!2569 = !DILocation(line: 857, column: 3, scope: !2268)
!2570 = !DILocation(line: 857, column: 9, scope: !2268)
!2571 = !DILocation(line: 860, column: 31, scope: !2268)
!2572 = !DILocation(line: 860, column: 35, scope: !2268)
!2573 = !DILocation(line: 860, column: 46, scope: !2268)
!2574 = !DILocation(line: 860, column: 9, scope: !2268)
!2575 = !DILocation(line: 860, column: 9, scope: !2431)
!2576 = !DILocation(line: 861, column: 31, scope: !2268)
!2577 = !DILocation(line: 861, column: 37, scope: !2268)
!2578 = !DILocation(line: 861, column: 46, scope: !2268)
!2579 = !DILocation(line: 861, column: 10, scope: !2268)
!2580 = !DILocation(line: 861, column: 10, scope: !2431)
!2581 = !DILocation(line: 862, column: 31, scope: !2268)
!2582 = !DILocation(line: 862, column: 37, scope: !2268)
!2583 = !DILocation(line: 862, column: 49, scope: !2268)
!2584 = !DILocation(line: 862, column: 60, scope: !2268)
!2585 = !DILocation(line: 862, column: 10, scope: !2268)
!2586 = !DILocation(line: 862, column: 10, scope: !2431)
!2587 = !DILocation(line: 863, column: 24, scope: !2268)
!2588 = !DILocation(line: 863, column: 38, scope: !2268)
!2589 = !DILocation(line: 863, column: 52, scope: !2268)
!2590 = !DILocation(line: 863, column: 60, scope: !2268)
!2591 = !DILocation(line: 863, column: 3, scope: !2268)
!2592 = !DILocation(line: 864, column: 30, scope: !2268)
!2593 = !DILocation(line: 864, column: 44, scope: !2268)
!2594 = !DILocation(line: 864, column: 3, scope: !2268)
!2595 = !DILocation(line: 866, column: 10, scope: !2596)
!2596 = distinct !DILexicalBlock(scope: !2268, file: !1, line: 866, column: 3)
!2597 = !DILocation(line: 866, column: 8, scope: !2596)
!2598 = !DILocation(line: 866, column: 14, scope: !2599)
!2599 = !DILexicalBlockFile(scope: !2600, file: !1, discriminator: 1)
!2600 = distinct !DILexicalBlock(scope: !2596, file: !1, line: 866, column: 3)
!2601 = !DILocation(line: 866, column: 17, scope: !2599)
!2602 = !DILocation(line: 866, column: 27, scope: !2599)
!2603 = !DILocation(line: 866, column: 26, scope: !2599)
!2604 = !DILocation(line: 866, column: 16, scope: !2599)
!2605 = !DILocation(line: 866, column: 3, scope: !2599)
!2606 = !DILocation(line: 867, column: 41, scope: !2600)
!2607 = !DILocation(line: 867, column: 49, scope: !2600)
!2608 = !DILocation(line: 867, column: 20, scope: !2600)
!2609 = !DILocation(line: 867, column: 12, scope: !2600)
!2610 = !DILocation(line: 867, column: 11, scope: !2600)
!2611 = !DILocation(line: 867, column: 14, scope: !2600)
!2612 = !DILocation(line: 867, column: 7, scope: !2600)
!2613 = !DILocation(line: 867, column: 18, scope: !2600)
!2614 = !DILocation(line: 866, column: 43, scope: !2615)
!2615 = !DILexicalBlockFile(scope: !2600, file: !1, discriminator: 2)
!2616 = !DILocation(line: 866, column: 3, scope: !2615)
!2617 = distinct !{!2617, !2618}
!2618 = !DILocation(line: 866, column: 3, scope: !2268)
!2619 = !DILocation(line: 869, column: 13, scope: !2620)
!2620 = distinct !DILexicalBlock(scope: !2268, file: !1, line: 869, column: 3)
!2621 = !DILocation(line: 869, column: 11, scope: !2620)
!2622 = !DILocation(line: 869, column: 8, scope: !2620)
!2623 = !DILocation(line: 869, column: 25, scope: !2624)
!2624 = !DILexicalBlockFile(scope: !2625, file: !1, discriminator: 1)
!2625 = distinct !DILexicalBlock(scope: !2620, file: !1, line: 869, column: 3)
!2626 = !DILocation(line: 869, column: 31, scope: !2624)
!2627 = !DILocation(line: 869, column: 28, scope: !2624)
!2628 = !DILocation(line: 869, column: 3, scope: !2624)
!2629 = !DILocation(line: 871, column: 41, scope: !2630)
!2630 = distinct !DILexicalBlock(scope: !2625, file: !1, line: 870, column: 5)
!2631 = !DILocation(line: 871, column: 38, scope: !2630)
!2632 = !DILocation(line: 871, column: 20, scope: !2630)
!2633 = !DILocation(line: 871, column: 25, scope: !2630)
!2634 = !DILocation(line: 871, column: 23, scope: !2630)
!2635 = !DILocation(line: 871, column: 7, scope: !2630)
!2636 = !DILocation(line: 871, column: 36, scope: !2630)
!2637 = !DILocation(line: 872, column: 5, scope: !2630)
!2638 = !DILocation(line: 869, column: 45, scope: !2639)
!2639 = !DILexicalBlockFile(scope: !2625, file: !1, discriminator: 2)
!2640 = !DILocation(line: 869, column: 3, scope: !2639)
!2641 = distinct !{!2641, !2642}
!2642 = !DILocation(line: 869, column: 3, scope: !2268)
!2643 = !DILocation(line: 874, column: 3, scope: !2268)
!2644 = !DILocation(line: 875, column: 1, scope: !2268)
!2645 = distinct !DISubprogram(name: "gsl_sf_mathieu_a", scope: !1, file: !1, line: 882, type: !661, isLocal: false, isDefinition: true, scopeLine: 883, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !66)
!2646 = !DILocalVariable(name: "order", arg: 1, scope: !2645, file: !1, line: 882, type: !49)
!2647 = !DILocation(line: 882, column: 29, scope: !2645)
!2648 = !DILocalVariable(name: "qq", arg: 2, scope: !2645, file: !1, line: 882, type: !50)
!2649 = !DILocation(line: 882, column: 43, scope: !2645)
!2650 = !DILocalVariable(name: "result", scope: !2645, file: !1, line: 884, type: !60)
!2651 = !DILocation(line: 884, column: 2, scope: !2645)
!2652 = !DILocalVariable(name: "status", scope: !2645, file: !1, line: 884, type: !49)
!2653 = !DILocation(line: 884, column: 2, scope: !2654)
!2654 = distinct !DILexicalBlock(scope: !2645, file: !1, line: 884, column: 2)
!2655 = !DILocation(line: 884, column: 2, scope: !2656)
!2656 = !DILexicalBlockFile(scope: !2657, file: !1, discriminator: 1)
!2657 = distinct !DILexicalBlock(scope: !2654, file: !1, line: 884, column: 2)
!2658 = distinct !{!2658, !2659}
!2659 = !DILocation(line: 884, column: 2, scope: !2657)
!2660 = !DILocation(line: 884, column: 2, scope: !2661)
!2661 = !DILexicalBlockFile(scope: !2662, file: !1, discriminator: 2)
!2662 = distinct !DILexicalBlock(scope: !2657, file: !1, line: 884, column: 2)
!2663 = !DILocation(line: 884, column: 2, scope: !2664)
!2664 = !DILexicalBlockFile(scope: !2657, file: !1, discriminator: 3)
!2665 = !DILocation(line: 884, column: 2, scope: !2666)
!2666 = !DILexicalBlockFile(scope: !2645, file: !1, discriminator: 4)
!2667 = !DILocation(line: 885, column: 1, scope: !2645)
!2668 = distinct !DISubprogram(name: "gsl_sf_mathieu_b", scope: !1, file: !1, line: 887, type: !661, isLocal: false, isDefinition: true, scopeLine: 888, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !66)
!2669 = !DILocalVariable(name: "order", arg: 1, scope: !2668, file: !1, line: 887, type: !49)
!2670 = !DILocation(line: 887, column: 29, scope: !2668)
!2671 = !DILocalVariable(name: "qq", arg: 2, scope: !2668, file: !1, line: 887, type: !50)
!2672 = !DILocation(line: 887, column: 43, scope: !2668)
!2673 = !DILocalVariable(name: "result", scope: !2668, file: !1, line: 889, type: !60)
!2674 = !DILocation(line: 889, column: 2, scope: !2668)
!2675 = !DILocalVariable(name: "status", scope: !2668, file: !1, line: 889, type: !49)
!2676 = !DILocation(line: 889, column: 2, scope: !2677)
!2677 = distinct !DILexicalBlock(scope: !2668, file: !1, line: 889, column: 2)
!2678 = !DILocation(line: 889, column: 2, scope: !2679)
!2679 = !DILexicalBlockFile(scope: !2680, file: !1, discriminator: 1)
!2680 = distinct !DILexicalBlock(scope: !2677, file: !1, line: 889, column: 2)
!2681 = distinct !{!2681, !2682}
!2682 = !DILocation(line: 889, column: 2, scope: !2680)
!2683 = !DILocation(line: 889, column: 2, scope: !2684)
!2684 = !DILexicalBlockFile(scope: !2685, file: !1, discriminator: 2)
!2685 = distinct !DILexicalBlock(scope: !2680, file: !1, line: 889, column: 2)
!2686 = !DILocation(line: 889, column: 2, scope: !2687)
!2687 = !DILexicalBlockFile(scope: !2680, file: !1, discriminator: 3)
!2688 = !DILocation(line: 889, column: 2, scope: !2689)
!2689 = !DILexicalBlockFile(scope: !2668, file: !1, discriminator: 4)
!2690 = !DILocation(line: 890, column: 1, scope: !2668)
!2691 = distinct !DISubprogram(name: "asymptotic", scope: !1, file: !1, line: 144, type: !661, isLocal: true, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !66)
!2692 = !DILocalVariable(name: "order", arg: 1, scope: !2691, file: !1, line: 144, type: !49)
!2693 = !DILocation(line: 144, column: 30, scope: !2691)
!2694 = !DILocalVariable(name: "qq", arg: 2, scope: !2691, file: !1, line: 144, type: !50)
!2695 = !DILocation(line: 144, column: 44, scope: !2691)
!2696 = !DILocalVariable(name: "asymp", scope: !2691, file: !1, line: 146, type: !50)
!2697 = !DILocation(line: 146, column: 10, scope: !2691)
!2698 = !DILocalVariable(name: "nn", scope: !2691, file: !1, line: 147, type: !50)
!2699 = !DILocation(line: 147, column: 10, scope: !2691)
!2700 = !DILocalVariable(name: "n2", scope: !2691, file: !1, line: 147, type: !50)
!2701 = !DILocation(line: 147, column: 14, scope: !2691)
!2702 = !DILocalVariable(name: "n4", scope: !2691, file: !1, line: 147, type: !50)
!2703 = !DILocation(line: 147, column: 18, scope: !2691)
!2704 = !DILocalVariable(name: "n6", scope: !2691, file: !1, line: 147, type: !50)
!2705 = !DILocation(line: 147, column: 22, scope: !2691)
!2706 = !DILocalVariable(name: "hh", scope: !2691, file: !1, line: 148, type: !50)
!2707 = !DILocation(line: 148, column: 10, scope: !2691)
!2708 = !DILocalVariable(name: "ah", scope: !2691, file: !1, line: 148, type: !50)
!2709 = !DILocation(line: 148, column: 14, scope: !2691)
!2710 = !DILocalVariable(name: "ah2", scope: !2691, file: !1, line: 148, type: !50)
!2711 = !DILocation(line: 148, column: 18, scope: !2691)
!2712 = !DILocalVariable(name: "ah3", scope: !2691, file: !1, line: 148, type: !50)
!2713 = !DILocation(line: 148, column: 23, scope: !2691)
!2714 = !DILocalVariable(name: "ah4", scope: !2691, file: !1, line: 148, type: !50)
!2715 = !DILocation(line: 148, column: 28, scope: !2691)
!2716 = !DILocalVariable(name: "ah5", scope: !2691, file: !1, line: 148, type: !50)
!2717 = !DILocation(line: 148, column: 33, scope: !2691)
!2718 = !DILocation(line: 152, column: 10, scope: !2691)
!2719 = !DILocation(line: 152, column: 9, scope: !2691)
!2720 = !DILocation(line: 152, column: 16, scope: !2691)
!2721 = !DILocation(line: 152, column: 8, scope: !2691)
!2722 = !DILocation(line: 152, column: 6, scope: !2691)
!2723 = !DILocation(line: 153, column: 8, scope: !2691)
!2724 = !DILocation(line: 153, column: 11, scope: !2691)
!2725 = !DILocation(line: 153, column: 10, scope: !2691)
!2726 = !DILocation(line: 153, column: 6, scope: !2691)
!2727 = !DILocation(line: 154, column: 8, scope: !2691)
!2728 = !DILocation(line: 154, column: 11, scope: !2691)
!2729 = !DILocation(line: 154, column: 10, scope: !2691)
!2730 = !DILocation(line: 154, column: 6, scope: !2691)
!2731 = !DILocation(line: 155, column: 8, scope: !2691)
!2732 = !DILocation(line: 155, column: 11, scope: !2691)
!2733 = !DILocation(line: 155, column: 10, scope: !2691)
!2734 = !DILocation(line: 155, column: 6, scope: !2691)
!2735 = !DILocation(line: 157, column: 15, scope: !2691)
!2736 = !DILocation(line: 157, column: 10, scope: !2691)
!2737 = !DILocation(line: 157, column: 9, scope: !2691)
!2738 = !DILocation(line: 157, column: 6, scope: !2691)
!2739 = !DILocation(line: 158, column: 11, scope: !2691)
!2740 = !DILocation(line: 158, column: 10, scope: !2691)
!2741 = !DILocation(line: 158, column: 6, scope: !2691)
!2742 = !DILocation(line: 159, column: 9, scope: !2691)
!2743 = !DILocation(line: 159, column: 12, scope: !2691)
!2744 = !DILocation(line: 159, column: 11, scope: !2691)
!2745 = !DILocation(line: 159, column: 7, scope: !2691)
!2746 = !DILocation(line: 160, column: 9, scope: !2691)
!2747 = !DILocation(line: 160, column: 13, scope: !2691)
!2748 = !DILocation(line: 160, column: 12, scope: !2691)
!2749 = !DILocation(line: 160, column: 7, scope: !2691)
!2750 = !DILocation(line: 161, column: 9, scope: !2691)
!2751 = !DILocation(line: 161, column: 13, scope: !2691)
!2752 = !DILocation(line: 161, column: 12, scope: !2691)
!2753 = !DILocation(line: 161, column: 7, scope: !2691)
!2754 = !DILocation(line: 162, column: 9, scope: !2691)
!2755 = !DILocation(line: 162, column: 13, scope: !2691)
!2756 = !DILocation(line: 162, column: 12, scope: !2691)
!2757 = !DILocation(line: 162, column: 7, scope: !2691)
!2758 = !DILocation(line: 165, column: 14, scope: !2691)
!2759 = !DILocation(line: 165, column: 13, scope: !2691)
!2760 = !DILocation(line: 165, column: 19, scope: !2691)
!2761 = !DILocation(line: 165, column: 22, scope: !2691)
!2762 = !DILocation(line: 165, column: 21, scope: !2691)
!2763 = !DILocation(line: 165, column: 17, scope: !2691)
!2764 = !DILocation(line: 165, column: 34, scope: !2691)
!2765 = !DILocation(line: 165, column: 37, scope: !2691)
!2766 = !DILocation(line: 165, column: 32, scope: !2691)
!2767 = !DILocation(line: 165, column: 25, scope: !2691)
!2768 = !DILocation(line: 165, column: 9, scope: !2691)
!2769 = !DILocation(line: 166, column: 17, scope: !2691)
!2770 = !DILocation(line: 166, column: 16, scope: !2691)
!2771 = !DILocation(line: 166, column: 47, scope: !2691)
!2772 = !DILocation(line: 166, column: 50, scope: !2691)
!2773 = !DILocation(line: 166, column: 19, scope: !2691)
!2774 = !DILocation(line: 166, column: 59, scope: !2691)
!2775 = !DILocation(line: 166, column: 58, scope: !2691)
!2776 = !DILocation(line: 166, column: 9, scope: !2691)
!2777 = !DILocation(line: 167, column: 36, scope: !2691)
!2778 = !DILocation(line: 167, column: 35, scope: !2691)
!2779 = !DILocation(line: 167, column: 47, scope: !2691)
!2780 = !DILocation(line: 167, column: 46, scope: !2691)
!2781 = !DILocation(line: 167, column: 39, scope: !2691)
!2782 = !DILocation(line: 167, column: 50, scope: !2691)
!2783 = !DILocation(line: 167, column: 16, scope: !2691)
!2784 = !DILocation(line: 167, column: 59, scope: !2691)
!2785 = !DILocation(line: 167, column: 58, scope: !2691)
!2786 = !DILocation(line: 167, column: 9, scope: !2691)
!2787 = !DILocation(line: 168, column: 17, scope: !2691)
!2788 = !DILocation(line: 168, column: 16, scope: !2691)
!2789 = !DILocation(line: 168, column: 36, scope: !2691)
!2790 = !DILocation(line: 168, column: 35, scope: !2691)
!2791 = !DILocation(line: 168, column: 47, scope: !2691)
!2792 = !DILocation(line: 168, column: 46, scope: !2691)
!2793 = !DILocation(line: 168, column: 39, scope: !2691)
!2794 = !DILocation(line: 168, column: 50, scope: !2691)
!2795 = !DILocation(line: 168, column: 19, scope: !2691)
!2796 = !DILocation(line: 168, column: 59, scope: !2691)
!2797 = !DILocation(line: 168, column: 58, scope: !2691)
!2798 = !DILocation(line: 168, column: 9, scope: !2691)
!2799 = !DILocation(line: 169, column: 25, scope: !2691)
!2800 = !DILocation(line: 169, column: 24, scope: !2691)
!2801 = !DILocation(line: 169, column: 36, scope: !2691)
!2802 = !DILocation(line: 169, column: 35, scope: !2691)
!2803 = !DILocation(line: 169, column: 28, scope: !2691)
!2804 = !DILocation(line: 169, column: 47, scope: !2691)
!2805 = !DILocation(line: 169, column: 46, scope: !2691)
!2806 = !DILocation(line: 169, column: 39, scope: !2691)
!2807 = !DILocation(line: 169, column: 50, scope: !2691)
!2808 = !DILocation(line: 169, column: 59, scope: !2691)
!2809 = !DILocation(line: 169, column: 58, scope: !2691)
!2810 = !DILocation(line: 169, column: 9, scope: !2691)
!2811 = !DILocation(line: 170, column: 17, scope: !2691)
!2812 = !DILocation(line: 170, column: 25, scope: !2691)
!2813 = !DILocation(line: 170, column: 24, scope: !2691)
!2814 = !DILocation(line: 170, column: 36, scope: !2691)
!2815 = !DILocation(line: 170, column: 35, scope: !2691)
!2816 = !DILocation(line: 170, column: 28, scope: !2691)
!2817 = !DILocation(line: 170, column: 47, scope: !2691)
!2818 = !DILocation(line: 170, column: 46, scope: !2691)
!2819 = !DILocation(line: 170, column: 39, scope: !2691)
!2820 = !DILocation(line: 170, column: 50, scope: !2691)
!2821 = !DILocation(line: 170, column: 19, scope: !2691)
!2822 = !DILocation(line: 170, column: 59, scope: !2691)
!2823 = !DILocation(line: 170, column: 58, scope: !2691)
!2824 = !DILocation(line: 170, column: 9, scope: !2691)
!2825 = !DILocation(line: 172, column: 10, scope: !2691)
!2826 = !DILocation(line: 172, column: 3, scope: !2691)
!2827 = distinct !DISubprogram(name: "solve_cubic", scope: !1, file: !1, line: 177, type: !2828, isLocal: true, isDefinition: true, scopeLine: 178, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !66)
!2828 = !DISubroutineType(types: !2829)
!2829 = !{!50, !50, !50, !50}
!2830 = !DILocalVariable(name: "c2", arg: 1, scope: !2827, file: !1, line: 177, type: !50)
!2831 = !DILocation(line: 177, column: 34, scope: !2827)
!2832 = !DILocalVariable(name: "c1", arg: 2, scope: !2827, file: !1, line: 177, type: !50)
!2833 = !DILocation(line: 177, column: 45, scope: !2827)
!2834 = !DILocalVariable(name: "c0", arg: 3, scope: !2827, file: !1, line: 177, type: !50)
!2835 = !DILocation(line: 177, column: 56, scope: !2827)
!2836 = !DILocalVariable(name: "qq", scope: !2827, file: !1, line: 179, type: !50)
!2837 = !DILocation(line: 179, column: 10, scope: !2827)
!2838 = !DILocalVariable(name: "rr", scope: !2827, file: !1, line: 179, type: !50)
!2839 = !DILocation(line: 179, column: 14, scope: !2827)
!2840 = !DILocalVariable(name: "ww", scope: !2827, file: !1, line: 179, type: !50)
!2841 = !DILocation(line: 179, column: 18, scope: !2827)
!2842 = !DILocalVariable(name: "ss", scope: !2827, file: !1, line: 179, type: !50)
!2843 = !DILocation(line: 179, column: 22, scope: !2827)
!2844 = !DILocalVariable(name: "tt", scope: !2827, file: !1, line: 179, type: !50)
!2845 = !DILocation(line: 179, column: 26, scope: !2827)
!2846 = !DILocation(line: 182, column: 11, scope: !2827)
!2847 = !DILocation(line: 182, column: 10, scope: !2827)
!2848 = !DILocation(line: 182, column: 16, scope: !2827)
!2849 = !DILocation(line: 182, column: 19, scope: !2827)
!2850 = !DILocation(line: 182, column: 18, scope: !2827)
!2851 = !DILocation(line: 182, column: 14, scope: !2827)
!2852 = !DILocation(line: 182, column: 22, scope: !2827)
!2853 = !DILocation(line: 182, column: 6, scope: !2827)
!2854 = !DILocation(line: 183, column: 11, scope: !2827)
!2855 = !DILocation(line: 183, column: 10, scope: !2827)
!2856 = !DILocation(line: 183, column: 14, scope: !2827)
!2857 = !DILocation(line: 183, column: 13, scope: !2827)
!2858 = !DILocation(line: 183, column: 22, scope: !2827)
!2859 = !DILocation(line: 183, column: 21, scope: !2827)
!2860 = !DILocation(line: 183, column: 17, scope: !2827)
!2861 = !DILocation(line: 183, column: 29, scope: !2827)
!2862 = !DILocation(line: 183, column: 28, scope: !2827)
!2863 = !DILocation(line: 183, column: 32, scope: !2827)
!2864 = !DILocation(line: 183, column: 31, scope: !2827)
!2865 = !DILocation(line: 183, column: 35, scope: !2827)
!2866 = !DILocation(line: 183, column: 34, scope: !2827)
!2867 = !DILocation(line: 183, column: 25, scope: !2827)
!2868 = !DILocation(line: 183, column: 38, scope: !2827)
!2869 = !DILocation(line: 183, column: 6, scope: !2827)
!2870 = !DILocation(line: 184, column: 8, scope: !2827)
!2871 = !DILocation(line: 184, column: 11, scope: !2827)
!2872 = !DILocation(line: 184, column: 10, scope: !2827)
!2873 = !DILocation(line: 184, column: 14, scope: !2827)
!2874 = !DILocation(line: 184, column: 13, scope: !2827)
!2875 = !DILocation(line: 184, column: 19, scope: !2827)
!2876 = !DILocation(line: 184, column: 22, scope: !2827)
!2877 = !DILocation(line: 184, column: 21, scope: !2827)
!2878 = !DILocation(line: 184, column: 17, scope: !2827)
!2879 = !DILocation(line: 184, column: 6, scope: !2827)
!2880 = !DILocation(line: 186, column: 7, scope: !2881)
!2881 = distinct !DILexicalBlock(scope: !2827, file: !1, line: 186, column: 7)
!2882 = !DILocation(line: 186, column: 10, scope: !2881)
!2883 = !DILocation(line: 186, column: 7, scope: !2827)
!2884 = !DILocalVariable(name: "t1", scope: !2885, file: !1, line: 188, type: !50)
!2885 = distinct !DILexicalBlock(scope: !2881, file: !1, line: 187, column: 3)
!2886 = !DILocation(line: 188, column: 14, scope: !2885)
!2887 = !DILocation(line: 188, column: 19, scope: !2885)
!2888 = !DILocation(line: 188, column: 29, scope: !2885)
!2889 = !DILocation(line: 188, column: 24, scope: !2885)
!2890 = !DILocation(line: 188, column: 22, scope: !2885)
!2891 = !DILocation(line: 189, column: 17, scope: !2885)
!2892 = !DILocation(line: 189, column: 12, scope: !2885)
!2893 = !DILocation(line: 189, column: 21, scope: !2885)
!2894 = !DILocation(line: 189, column: 20, scope: !2885)
!2895 = !DILocation(line: 189, column: 33, scope: !2885)
!2896 = !DILocation(line: 189, column: 28, scope: !2897)
!2897 = !DILexicalBlockFile(scope: !2885, file: !1, discriminator: 1)
!2898 = !DILocation(line: 189, column: 24, scope: !2899)
!2899 = !DILexicalBlockFile(scope: !2885, file: !1, discriminator: 2)
!2900 = !DILocation(line: 189, column: 23, scope: !2885)
!2901 = !DILocation(line: 189, column: 10, scope: !2885)
!2902 = !DILocation(line: 190, column: 12, scope: !2885)
!2903 = !DILocation(line: 190, column: 22, scope: !2885)
!2904 = !DILocation(line: 190, column: 17, scope: !2885)
!2905 = !DILocation(line: 190, column: 15, scope: !2885)
!2906 = !DILocation(line: 190, column: 10, scope: !2885)
!2907 = !DILocation(line: 191, column: 17, scope: !2885)
!2908 = !DILocation(line: 191, column: 12, scope: !2885)
!2909 = !DILocation(line: 191, column: 21, scope: !2885)
!2910 = !DILocation(line: 191, column: 20, scope: !2885)
!2911 = !DILocation(line: 191, column: 33, scope: !2885)
!2912 = !DILocation(line: 191, column: 28, scope: !2897)
!2913 = !DILocation(line: 191, column: 24, scope: !2899)
!2914 = !DILocation(line: 191, column: 23, scope: !2885)
!2915 = !DILocation(line: 191, column: 10, scope: !2885)
!2916 = !DILocation(line: 192, column: 3, scope: !2885)
!2917 = !DILocalVariable(name: "theta", scope: !2918, file: !1, line: 195, type: !50)
!2918 = distinct !DILexicalBlock(scope: !2881, file: !1, line: 194, column: 3)
!2919 = !DILocation(line: 195, column: 14, scope: !2918)
!2920 = !DILocation(line: 195, column: 27, scope: !2918)
!2921 = !DILocation(line: 195, column: 36, scope: !2918)
!2922 = !DILocation(line: 195, column: 35, scope: !2918)
!2923 = !DILocation(line: 195, column: 39, scope: !2918)
!2924 = !DILocation(line: 195, column: 38, scope: !2918)
!2925 = !DILocation(line: 195, column: 42, scope: !2918)
!2926 = !DILocation(line: 195, column: 41, scope: !2918)
!2927 = !DILocation(line: 195, column: 30, scope: !2918)
!2928 = !DILocation(line: 195, column: 29, scope: !2918)
!2929 = !DILocation(line: 195, column: 22, scope: !2930)
!2930 = !DILexicalBlockFile(scope: !2918, file: !1, discriminator: 1)
!2931 = !DILocation(line: 196, column: 20, scope: !2918)
!2932 = !DILocation(line: 196, column: 19, scope: !2918)
!2933 = !DILocation(line: 196, column: 14, scope: !2918)
!2934 = !DILocation(line: 196, column: 13, scope: !2918)
!2935 = !DILocation(line: 196, column: 29, scope: !2918)
!2936 = !DILocation(line: 196, column: 35, scope: !2918)
!2937 = !DILocation(line: 196, column: 44, scope: !2918)
!2938 = !DILocation(line: 196, column: 24, scope: !2930)
!2939 = !DILocation(line: 196, column: 23, scope: !2918)
!2940 = !DILocation(line: 196, column: 10, scope: !2918)
!2941 = !DILocation(line: 197, column: 10, scope: !2918)
!2942 = !DILocation(line: 200, column: 11, scope: !2827)
!2943 = !DILocation(line: 200, column: 16, scope: !2827)
!2944 = !DILocation(line: 200, column: 14, scope: !2827)
!2945 = !DILocation(line: 200, column: 21, scope: !2827)
!2946 = !DILocation(line: 200, column: 23, scope: !2827)
!2947 = !DILocation(line: 200, column: 19, scope: !2827)
!2948 = !DILocation(line: 200, column: 3, scope: !2827)
