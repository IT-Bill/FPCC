; ModuleID = 'legendre_Qn.c'
source_filename = "legendre_Qn.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsl_sf_result_struct = type { double, double }

@.str = private unnamed_addr constant [13 x i8] c"domain error\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"legendre_Qn.c\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"underflow\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"gsl_sf_legendre_Q0_e(x, &result)\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"gsl_sf_legendre_Q1_e(x, &result)\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"gsl_sf_legendre_Ql_e(l, x, &result)\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"error\00", align 1

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_legendre_Q0_e(double, %struct.gsl_sf_result_struct*) #0 !dbg !45 {
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
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !59, metadata !60), !dbg !61
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %5, metadata !62, metadata !60), !dbg !63
  %21 = load double, double* %4, align 8, !dbg !64
  %22 = fcmp ole double %21, -1.000000e+00, !dbg !66
  br i1 %22, label %26, label %23, !dbg !67

; <label>:23:                                     ; preds = %2
  %24 = load double, double* %4, align 8, !dbg !68
  %25 = fcmp oeq double %24, 1.000000e+00, !dbg !70
  br i1 %25, label %26, label %35, !dbg !71

; <label>:26:                                     ; preds = %23, %2
  br label %27, !dbg !72, !llvm.loop !74

; <label>:27:                                     ; preds = %26
  %28 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !75
  %29 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %28, i32 0, i32 0, !dbg !75
  store double 0x7FF8000000000000, double* %29, align 8, !dbg !75
  %30 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !75
  %31 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %30, i32 0, i32 1, !dbg !75
  store double 0x7FF8000000000000, double* %31, align 8, !dbg !75
  br label %32, !dbg !75, !llvm.loop !78

; <label>:32:                                     ; preds = %27
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 185, i32 1), !dbg !80
  store i32 1, i32* %3, align 4, !dbg !80
  br label %166, !dbg !80
                                                  ; No predecessors!
  br label %34, !dbg !83

; <label>:34:                                     ; preds = %33
  br label %166, !dbg !85

; <label>:35:                                     ; preds = %23
  %36 = load double, double* %4, align 8, !dbg !86
  %37 = load double, double* %4, align 8, !dbg !88
  %38 = fmul double %36, %37, !dbg !89
  %39 = fcmp olt double %38, 0x3F6428A2F98D728D, !dbg !90
  br i1 %39, label %40, label %69, !dbg !91

; <label>:40:                                     ; preds = %35
  call void @llvm.dbg.declare(metadata double* %6, metadata !92, metadata !60), !dbg !94
  store double 0x3FD5555555555555, double* %6, align 8, !dbg !94
  call void @llvm.dbg.declare(metadata double* %7, metadata !95, metadata !60), !dbg !96
  store double 2.000000e-01, double* %7, align 8, !dbg !96
  call void @llvm.dbg.declare(metadata double* %8, metadata !97, metadata !60), !dbg !98
  store double 0x3FC2492492492492, double* %8, align 8, !dbg !98
  call void @llvm.dbg.declare(metadata double* %9, metadata !99, metadata !60), !dbg !100
  store double 0x3FBC71C71C71C71C, double* %9, align 8, !dbg !100
  call void @llvm.dbg.declare(metadata double* %10, metadata !101, metadata !60), !dbg !102
  store double 0x3FB745D1745D1746, double* %10, align 8, !dbg !102
  call void @llvm.dbg.declare(metadata double* %11, metadata !103, metadata !60), !dbg !104
  %41 = load double, double* %4, align 8, !dbg !105
  %42 = load double, double* %4, align 8, !dbg !106
  %43 = fmul double %41, %42, !dbg !107
  store double %43, double* %11, align 8, !dbg !104
  call void @llvm.dbg.declare(metadata double* %12, metadata !108, metadata !60), !dbg !109
  %44 = load double, double* %11, align 8, !dbg !110
  %45 = load double, double* %11, align 8, !dbg !111
  %46 = load double, double* %11, align 8, !dbg !112
  %47 = load double, double* %11, align 8, !dbg !113
  %48 = load double, double* %11, align 8, !dbg !114
  %49 = fmul double %48, 0x3FB745D1745D1746, !dbg !115
  %50 = fadd double 0x3FBC71C71C71C71C, %49, !dbg !116
  %51 = fmul double %47, %50, !dbg !117
  %52 = fadd double 0x3FC2492492492492, %51, !dbg !118
  %53 = fmul double %46, %52, !dbg !119
  %54 = fadd double 2.000000e-01, %53, !dbg !120
  %55 = fmul double %45, %54, !dbg !121
  %56 = fadd double 0x3FD5555555555555, %55, !dbg !122
  %57 = fmul double %44, %56, !dbg !123
  %58 = fadd double 1.000000e+00, %57, !dbg !124
  store double %58, double* %12, align 8, !dbg !109
  %59 = load double, double* %4, align 8, !dbg !125
  %60 = load double, double* %12, align 8, !dbg !126
  %61 = fmul double %59, %60, !dbg !127
  %62 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !128
  %63 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %62, i32 0, i32 0, !dbg !129
  store double %61, double* %63, align 8, !dbg !130
  %64 = load double, double* %4, align 8, !dbg !131
  %65 = call double @fabs(double %64) #1, !dbg !132
  %66 = fmul double 0x3CC0000000000000, %65, !dbg !133
  %67 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !134
  %68 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %67, i32 0, i32 1, !dbg !135
  store double %66, double* %68, align 8, !dbg !136
  store i32 0, i32* %3, align 4, !dbg !137
  br label %166, !dbg !137

; <label>:69:                                     ; preds = %35
  %70 = load double, double* %4, align 8, !dbg !138
  %71 = fcmp olt double %70, 1.000000e+00, !dbg !140
  br i1 %71, label %72, label %90, !dbg !141

; <label>:72:                                     ; preds = %69
  %73 = load double, double* %4, align 8, !dbg !142
  %74 = fadd double 1.000000e+00, %73, !dbg !144
  %75 = load double, double* %4, align 8, !dbg !145
  %76 = fsub double -1.000000e+00, %75, !dbg !146
  %77 = fadd double %76, 2.000000e+00, !dbg !147
  %78 = fdiv double %74, %77, !dbg !148
  %79 = call double @log(double %78) #5, !dbg !149
  %80 = fmul double 5.000000e-01, %79, !dbg !150
  %81 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !151
  %82 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %81, i32 0, i32 0, !dbg !152
  store double %80, double* %82, align 8, !dbg !153
  %83 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !154
  %84 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %83, i32 0, i32 0, !dbg !155
  %85 = load double, double* %84, align 8, !dbg !155
  %86 = call double @fabs(double %85) #1, !dbg !156
  %87 = fmul double 0x3CC0000000000000, %86, !dbg !157
  %88 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !158
  %89 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %88, i32 0, i32 1, !dbg !159
  store double %87, double* %89, align 8, !dbg !160
  store i32 0, i32* %3, align 4, !dbg !161
  br label %166, !dbg !161

; <label>:90:                                     ; preds = %69
  %91 = load double, double* %4, align 8, !dbg !162
  %92 = fcmp olt double %91, 1.000000e+01, !dbg !164
  br i1 %92, label %93, label %111, !dbg !165

; <label>:93:                                     ; preds = %90
  %94 = load double, double* %4, align 8, !dbg !166
  %95 = fadd double %94, 1.000000e+00, !dbg !168
  %96 = load double, double* %4, align 8, !dbg !169
  %97 = fadd double %96, 1.000000e+00, !dbg !170
  %98 = fsub double %97, 2.000000e+00, !dbg !171
  %99 = fdiv double %95, %98, !dbg !172
  %100 = call double @log(double %99) #5, !dbg !173
  %101 = fmul double 5.000000e-01, %100, !dbg !174
  %102 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !175
  %103 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %102, i32 0, i32 0, !dbg !176
  store double %101, double* %103, align 8, !dbg !177
  %104 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !178
  %105 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %104, i32 0, i32 0, !dbg !179
  %106 = load double, double* %105, align 8, !dbg !179
  %107 = call double @fabs(double %106) #1, !dbg !180
  %108 = fmul double 0x3CC0000000000000, %107, !dbg !181
  %109 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !182
  %110 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %109, i32 0, i32 1, !dbg !183
  store double %108, double* %110, align 8, !dbg !184
  store i32 0, i32* %3, align 4, !dbg !185
  br label %166, !dbg !185

; <label>:111:                                    ; preds = %90
  %112 = load double, double* %4, align 8, !dbg !186
  %113 = fmul double %112, 0x10000000000000, !dbg !188
  %114 = fcmp olt double %113, 2.000000e+00, !dbg !189
  br i1 %114, label %115, label %153, !dbg !190

; <label>:115:                                    ; preds = %111
  call void @llvm.dbg.declare(metadata double* %13, metadata !191, metadata !60), !dbg !193
  %116 = load double, double* %4, align 8, !dbg !194
  %117 = load double, double* %4, align 8, !dbg !195
  %118 = fmul double %116, %117, !dbg !196
  %119 = fdiv double 1.000000e+00, %118, !dbg !197
  store double %119, double* %13, align 8, !dbg !193
  call void @llvm.dbg.declare(metadata double* %14, metadata !198, metadata !60), !dbg !199
  store double 0x3FD5555555555555, double* %14, align 8, !dbg !199
  call void @llvm.dbg.declare(metadata double* %15, metadata !200, metadata !60), !dbg !201
  store double 2.000000e-01, double* %15, align 8, !dbg !201
  call void @llvm.dbg.declare(metadata double* %16, metadata !202, metadata !60), !dbg !203
  store double 0x3FC2492492492492, double* %16, align 8, !dbg !203
  call void @llvm.dbg.declare(metadata double* %17, metadata !204, metadata !60), !dbg !205
  store double 0x3FBC71C71C71C71C, double* %17, align 8, !dbg !205
  call void @llvm.dbg.declare(metadata double* %18, metadata !206, metadata !60), !dbg !207
  store double 0x3FB745D1745D1746, double* %18, align 8, !dbg !207
  call void @llvm.dbg.declare(metadata double* %19, metadata !208, metadata !60), !dbg !209
  store double 0x3FB3B13B13B13B14, double* %19, align 8, !dbg !209
  call void @llvm.dbg.declare(metadata double* %20, metadata !210, metadata !60), !dbg !211
  store double 0x3FB1111111111111, double* %20, align 8, !dbg !211
  %120 = load double, double* %4, align 8, !dbg !212
  %121 = fdiv double 1.000000e+00, %120, !dbg !213
  %122 = load double, double* %13, align 8, !dbg !214
  %123 = load double, double* %13, align 8, !dbg !215
  %124 = load double, double* %13, align 8, !dbg !216
  %125 = load double, double* %13, align 8, !dbg !217
  %126 = load double, double* %13, align 8, !dbg !218
  %127 = load double, double* %13, align 8, !dbg !219
  %128 = load double, double* %13, align 8, !dbg !220
  %129 = fmul double %128, 0x3FB1111111111111, !dbg !221
  %130 = fadd double 0x3FB3B13B13B13B14, %129, !dbg !222
  %131 = fmul double %127, %130, !dbg !223
  %132 = fadd double 0x3FB745D1745D1746, %131, !dbg !224
  %133 = fmul double %126, %132, !dbg !225
  %134 = fadd double 0x3FBC71C71C71C71C, %133, !dbg !226
  %135 = fmul double %125, %134, !dbg !227
  %136 = fadd double 0x3FC2492492492492, %135, !dbg !228
  %137 = fmul double %124, %136, !dbg !229
  %138 = fadd double 2.000000e-01, %137, !dbg !230
  %139 = fmul double %123, %138, !dbg !231
  %140 = fadd double 0x3FD5555555555555, %139, !dbg !232
  %141 = fmul double %122, %140, !dbg !233
  %142 = fadd double 1.000000e+00, %141, !dbg !234
  %143 = fmul double %121, %142, !dbg !235
  %144 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !236
  %145 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %144, i32 0, i32 0, !dbg !237
  store double %143, double* %145, align 8, !dbg !238
  %146 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !239
  %147 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %146, i32 0, i32 0, !dbg !240
  %148 = load double, double* %147, align 8, !dbg !240
  %149 = call double @fabs(double %148) #1, !dbg !241
  %150 = fmul double 0x3CC0000000000000, %149, !dbg !242
  %151 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !243
  %152 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %151, i32 0, i32 1, !dbg !244
  store double %150, double* %152, align 8, !dbg !245
  store i32 0, i32* %3, align 4, !dbg !246
  br label %166, !dbg !246

; <label>:153:                                    ; preds = %111
  br label %154, !dbg !247, !llvm.loop !249

; <label>:154:                                    ; preds = %153
  %155 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !250
  %156 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %155, i32 0, i32 0, !dbg !250
  store double 0.000000e+00, double* %156, align 8, !dbg !250
  %157 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !250
  %158 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %157, i32 0, i32 1, !dbg !250
  store double 0x10000000000000, double* %158, align 8, !dbg !250
  br label %159, !dbg !250, !llvm.loop !253

; <label>:159:                                    ; preds = %154
  call void @gsl_error(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 225, i32 15), !dbg !255
  store i32 15, i32* %3, align 4, !dbg !255
  br label %166, !dbg !255
                                                  ; No predecessors!
  br label %161, !dbg !258

; <label>:161:                                    ; preds = %160
  br label %162

; <label>:162:                                    ; preds = %161
  br label %163

; <label>:163:                                    ; preds = %162
  br label %164

; <label>:164:                                    ; preds = %163
  br label %165

; <label>:165:                                    ; preds = %164
  br label %166

; <label>:166:                                    ; preds = %32, %40, %72, %93, %115, %159, %165, %34
  %167 = load i32, i32* %3, align 4, !dbg !260
  ret i32 %167, !dbg !260
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @gsl_error(i8*, i8*, i32, i32) #2

; Function Attrs: nounwind readnone
declare double @fabs(double) #3

; Function Attrs: nounwind
declare double @log(double) #4

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_legendre_Q1_e(double, %struct.gsl_sf_result_struct*) #0 !dbg !261 {
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
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  %22 = alloca double, align 8
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !262, metadata !60), !dbg !263
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %5, metadata !264, metadata !60), !dbg !265
  %23 = load double, double* %4, align 8, !dbg !266
  %24 = fcmp ole double %23, -1.000000e+00, !dbg !268
  br i1 %24, label %28, label %25, !dbg !269

; <label>:25:                                     ; preds = %2
  %26 = load double, double* %4, align 8, !dbg !270
  %27 = fcmp oeq double %26, 1.000000e+00, !dbg !272
  br i1 %27, label %28, label %37, !dbg !273

; <label>:28:                                     ; preds = %25, %2
  br label %29, !dbg !274, !llvm.loop !276

; <label>:29:                                     ; preds = %28
  %30 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !277
  %31 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %30, i32 0, i32 0, !dbg !277
  store double 0x7FF8000000000000, double* %31, align 8, !dbg !277
  %32 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !277
  %33 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %32, i32 0, i32 1, !dbg !277
  store double 0x7FF8000000000000, double* %33, align 8, !dbg !277
  br label %34, !dbg !277, !llvm.loop !280

; <label>:34:                                     ; preds = %29
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 236, i32 1), !dbg !282
  store i32 1, i32* %3, align 4, !dbg !282
  br label %183, !dbg !282
                                                  ; No predecessors!
  br label %36, !dbg !285

; <label>:36:                                     ; preds = %35
  br label %183, !dbg !287

; <label>:37:                                     ; preds = %25
  %38 = load double, double* %4, align 8, !dbg !288
  %39 = load double, double* %4, align 8, !dbg !290
  %40 = fmul double %38, %39, !dbg !291
  %41 = fcmp olt double %40, 0x3F6428A2F98D728D, !dbg !292
  br i1 %41, label %42, label %76, !dbg !293

; <label>:42:                                     ; preds = %37
  call void @llvm.dbg.declare(metadata double* %6, metadata !294, metadata !60), !dbg !296
  store double 0x3FD5555555555555, double* %6, align 8, !dbg !296
  call void @llvm.dbg.declare(metadata double* %7, metadata !297, metadata !60), !dbg !298
  store double 2.000000e-01, double* %7, align 8, !dbg !298
  call void @llvm.dbg.declare(metadata double* %8, metadata !299, metadata !60), !dbg !300
  store double 0x3FC2492492492492, double* %8, align 8, !dbg !300
  call void @llvm.dbg.declare(metadata double* %9, metadata !301, metadata !60), !dbg !302
  store double 0x3FBC71C71C71C71C, double* %9, align 8, !dbg !302
  call void @llvm.dbg.declare(metadata double* %10, metadata !303, metadata !60), !dbg !304
  store double 0x3FB745D1745D1746, double* %10, align 8, !dbg !304
  call void @llvm.dbg.declare(metadata double* %11, metadata !305, metadata !60), !dbg !306
  %43 = load double, double* %4, align 8, !dbg !307
  %44 = load double, double* %4, align 8, !dbg !308
  %45 = fmul double %43, %44, !dbg !309
  store double %45, double* %11, align 8, !dbg !306
  call void @llvm.dbg.declare(metadata double* %12, metadata !310, metadata !60), !dbg !311
  %46 = load double, double* %11, align 8, !dbg !312
  %47 = load double, double* %11, align 8, !dbg !313
  %48 = load double, double* %11, align 8, !dbg !314
  %49 = load double, double* %11, align 8, !dbg !315
  %50 = load double, double* %11, align 8, !dbg !316
  %51 = fmul double %50, 0x3FB745D1745D1746, !dbg !317
  %52 = fadd double 0x3FBC71C71C71C71C, %51, !dbg !318
  %53 = fmul double %49, %52, !dbg !319
  %54 = fadd double 0x3FC2492492492492, %53, !dbg !320
  %55 = fmul double %48, %54, !dbg !321
  %56 = fadd double 2.000000e-01, %55, !dbg !322
  %57 = fmul double %47, %56, !dbg !323
  %58 = fadd double 0x3FD5555555555555, %57, !dbg !324
  %59 = fmul double %46, %58, !dbg !325
  %60 = fadd double 1.000000e+00, %59, !dbg !326
  store double %60, double* %12, align 8, !dbg !311
  %61 = load double, double* %4, align 8, !dbg !327
  %62 = load double, double* %4, align 8, !dbg !328
  %63 = fmul double %61, %62, !dbg !329
  %64 = load double, double* %12, align 8, !dbg !330
  %65 = fmul double %63, %64, !dbg !331
  %66 = fsub double %65, 1.000000e+00, !dbg !332
  %67 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !333
  %68 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %67, i32 0, i32 0, !dbg !334
  store double %66, double* %68, align 8, !dbg !335
  %69 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !336
  %70 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %69, i32 0, i32 0, !dbg !337
  %71 = load double, double* %70, align 8, !dbg !337
  %72 = call double @fabs(double %71) #1, !dbg !338
  %73 = fmul double 0x3CC0000000000000, %72, !dbg !339
  %74 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !340
  %75 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %74, i32 0, i32 1, !dbg !341
  store double %73, double* %75, align 8, !dbg !342
  store i32 0, i32* %3, align 4, !dbg !343
  br label %183, !dbg !343

; <label>:76:                                     ; preds = %37
  %77 = load double, double* %4, align 8, !dbg !344
  %78 = fcmp olt double %77, 1.000000e+00, !dbg !346
  br i1 %78, label %79, label %99, !dbg !347

; <label>:79:                                     ; preds = %76
  %80 = load double, double* %4, align 8, !dbg !348
  %81 = fmul double 5.000000e-01, %80, !dbg !350
  %82 = load double, double* %4, align 8, !dbg !351
  %83 = fadd double 1.000000e+00, %82, !dbg !352
  %84 = load double, double* %4, align 8, !dbg !353
  %85 = fsub double 1.000000e+00, %84, !dbg !354
  %86 = fdiv double %83, %85, !dbg !355
  %87 = call double @log(double %86) #5, !dbg !356
  %88 = fmul double %81, %87, !dbg !357
  %89 = fsub double %88, 1.000000e+00, !dbg !358
  %90 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !359
  %91 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %90, i32 0, i32 0, !dbg !360
  store double %89, double* %91, align 8, !dbg !361
  %92 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !362
  %93 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %92, i32 0, i32 0, !dbg !363
  %94 = load double, double* %93, align 8, !dbg !363
  %95 = call double @fabs(double %94) #1, !dbg !364
  %96 = fmul double 0x3CC0000000000000, %95, !dbg !365
  %97 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !366
  %98 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %97, i32 0, i32 1, !dbg !367
  store double %96, double* %98, align 8, !dbg !368
  store i32 0, i32* %3, align 4, !dbg !369
  br label %183, !dbg !369

; <label>:99:                                     ; preds = %76
  %100 = load double, double* %4, align 8, !dbg !370
  %101 = fcmp olt double %100, 6.000000e+00, !dbg !372
  br i1 %101, label %102, label %122, !dbg !373

; <label>:102:                                    ; preds = %99
  %103 = load double, double* %4, align 8, !dbg !374
  %104 = fmul double 5.000000e-01, %103, !dbg !376
  %105 = load double, double* %4, align 8, !dbg !377
  %106 = fadd double %105, 1.000000e+00, !dbg !378
  %107 = load double, double* %4, align 8, !dbg !379
  %108 = fsub double %107, 1.000000e+00, !dbg !380
  %109 = fdiv double %106, %108, !dbg !381
  %110 = call double @log(double %109) #5, !dbg !382
  %111 = fmul double %104, %110, !dbg !383
  %112 = fsub double %111, 1.000000e+00, !dbg !384
  %113 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !385
  %114 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %113, i32 0, i32 0, !dbg !386
  store double %112, double* %114, align 8, !dbg !387
  %115 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !388
  %116 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %115, i32 0, i32 0, !dbg !389
  %117 = load double, double* %116, align 8, !dbg !389
  %118 = call double @fabs(double %117) #1, !dbg !390
  %119 = fmul double 0x3CC0000000000000, %118, !dbg !391
  %120 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !392
  %121 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %120, i32 0, i32 1, !dbg !393
  store double %119, double* %121, align 8, !dbg !394
  store i32 0, i32* %3, align 4, !dbg !395
  br label %183, !dbg !395

; <label>:122:                                    ; preds = %99
  %123 = load double, double* %4, align 8, !dbg !396
  %124 = fmul double %123, 0x2000000000000000, !dbg !398
  %125 = fcmp olt double %124, 0x3FE24A5B5BE85B8F, !dbg !399
  br i1 %125, label %126, label %170, !dbg !400

; <label>:126:                                    ; preds = %122
  call void @llvm.dbg.declare(metadata double* %13, metadata !401, metadata !60), !dbg !403
  %127 = load double, double* %4, align 8, !dbg !404
  %128 = load double, double* %4, align 8, !dbg !405
  %129 = fmul double %127, %128, !dbg !406
  %130 = fdiv double 1.000000e+00, %129, !dbg !407
  store double %130, double* %13, align 8, !dbg !403
  call void @llvm.dbg.declare(metadata double* %14, metadata !408, metadata !60), !dbg !409
  store double 6.000000e-01, double* %14, align 8, !dbg !409
  call void @llvm.dbg.declare(metadata double* %15, metadata !410, metadata !60), !dbg !411
  store double 0x3FDB6DB6DB6DB6DB, double* %15, align 8, !dbg !411
  call void @llvm.dbg.declare(metadata double* %16, metadata !412, metadata !60), !dbg !413
  store double 0x3FD5555555555555, double* %16, align 8, !dbg !413
  call void @llvm.dbg.declare(metadata double* %17, metadata !414, metadata !60), !dbg !415
  store double 0x3FD1745D1745D174, double* %17, align 8, !dbg !415
  call void @llvm.dbg.declare(metadata double* %18, metadata !416, metadata !60), !dbg !417
  store double 0x3FCD89D89D89D89E, double* %18, align 8, !dbg !417
  call void @llvm.dbg.declare(metadata double* %19, metadata !418, metadata !60), !dbg !419
  store double 2.000000e-01, double* %19, align 8, !dbg !419
  call void @llvm.dbg.declare(metadata double* %20, metadata !420, metadata !60), !dbg !421
  store double 0x3FC6969696969697, double* %20, align 8, !dbg !421
  call void @llvm.dbg.declare(metadata double* %21, metadata !422, metadata !60), !dbg !423
  store double 0x3FC435E50D79435E, double* %21, align 8, !dbg !423
  call void @llvm.dbg.declare(metadata double* %22, metadata !424, metadata !60), !dbg !425
  %131 = load double, double* %13, align 8, !dbg !426
  %132 = load double, double* %13, align 8, !dbg !427
  %133 = load double, double* %13, align 8, !dbg !428
  %134 = load double, double* %13, align 8, !dbg !429
  %135 = load double, double* %13, align 8, !dbg !430
  %136 = load double, double* %13, align 8, !dbg !431
  %137 = load double, double* %13, align 8, !dbg !432
  %138 = load double, double* %13, align 8, !dbg !433
  %139 = fmul double %138, 0x3FC435E50D79435E, !dbg !434
  %140 = fadd double 0x3FC6969696969697, %139, !dbg !435
  %141 = fmul double %137, %140, !dbg !436
  %142 = fadd double 2.000000e-01, %141, !dbg !437
  %143 = fmul double %136, %142, !dbg !438
  %144 = fadd double 0x3FCD89D89D89D89E, %143, !dbg !439
  %145 = fmul double %135, %144, !dbg !440
  %146 = fadd double 0x3FD1745D1745D174, %145, !dbg !441
  %147 = fmul double %134, %146, !dbg !442
  %148 = fadd double 0x3FD5555555555555, %147, !dbg !443
  %149 = fmul double %133, %148, !dbg !444
  %150 = fadd double 0x3FDB6DB6DB6DB6DB, %149, !dbg !445
  %151 = fmul double %132, %150, !dbg !446
  %152 = fadd double 6.000000e-01, %151, !dbg !447
  %153 = fmul double %131, %152, !dbg !448
  %154 = fadd double 1.000000e+00, %153, !dbg !449
  store double %154, double* %22, align 8, !dbg !425
  %155 = load double, double* %22, align 8, !dbg !450
  %156 = load double, double* %4, align 8, !dbg !451
  %157 = fmul double 3.000000e+00, %156, !dbg !452
  %158 = load double, double* %4, align 8, !dbg !453
  %159 = fmul double %157, %158, !dbg !454
  %160 = fdiv double %155, %159, !dbg !455
  %161 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !456
  %162 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %161, i32 0, i32 0, !dbg !457
  store double %160, double* %162, align 8, !dbg !458
  %163 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !459
  %164 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %163, i32 0, i32 0, !dbg !460
  %165 = load double, double* %164, align 8, !dbg !460
  %166 = call double @fabs(double %165) #1, !dbg !461
  %167 = fmul double 0x3CC0000000000000, %166, !dbg !462
  %168 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !463
  %169 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %168, i32 0, i32 1, !dbg !464
  store double %167, double* %169, align 8, !dbg !465
  store i32 0, i32* %3, align 4, !dbg !466
  br label %183, !dbg !466

; <label>:170:                                    ; preds = %122
  br label %171, !dbg !467, !llvm.loop !469

; <label>:171:                                    ; preds = %170
  %172 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !470
  %173 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %172, i32 0, i32 0, !dbg !470
  store double 0.000000e+00, double* %173, align 8, !dbg !470
  %174 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !470
  %175 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %174, i32 0, i32 1, !dbg !470
  store double 0x10000000000000, double* %175, align 8, !dbg !470
  br label %176, !dbg !470, !llvm.loop !473

; <label>:176:                                    ; preds = %171
  call void @gsl_error(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 276, i32 15), !dbg !475
  store i32 15, i32* %3, align 4, !dbg !475
  br label %183, !dbg !475
                                                  ; No predecessors!
  br label %178, !dbg !478

; <label>:178:                                    ; preds = %177
  br label %179

; <label>:179:                                    ; preds = %178
  br label %180

; <label>:180:                                    ; preds = %179
  br label %181

; <label>:181:                                    ; preds = %180
  br label %182

; <label>:182:                                    ; preds = %181
  br label %183

; <label>:183:                                    ; preds = %34, %42, %79, %102, %126, %176, %182, %36
  %184 = load i32, i32* %3, align 4, !dbg !480
  ret i32 %184, !dbg !480
}

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_legendre_Ql_e(i32, double, %struct.gsl_sf_result_struct*) #0 !dbg !481 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca %struct.gsl_sf_result_struct*, align 8
  %8 = alloca %struct.gsl_sf_result_struct, align 8
  %9 = alloca %struct.gsl_sf_result_struct, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca i32, align 4
  %16 = alloca double, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.gsl_sf_result_struct, align 8
  %24 = alloca %struct.gsl_sf_result_struct, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !485, metadata !60), !dbg !486
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !487, metadata !60), !dbg !488
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %7, metadata !489, metadata !60), !dbg !490
  %25 = load double, double* %6, align 8, !dbg !491
  %26 = fcmp ole double %25, -1.000000e+00, !dbg !493
  br i1 %26, label %33, label %27, !dbg !494

; <label>:27:                                     ; preds = %3
  %28 = load double, double* %6, align 8, !dbg !495
  %29 = fcmp oeq double %28, 1.000000e+00, !dbg !497
  br i1 %29, label %33, label %30, !dbg !498

; <label>:30:                                     ; preds = %27
  %31 = load i32, i32* %5, align 4, !dbg !499
  %32 = icmp slt i32 %31, 0, !dbg !501
  br i1 %32, label %33, label %42, !dbg !502

; <label>:33:                                     ; preds = %30, %27, %3
  br label %34, !dbg !503, !llvm.loop !505

; <label>:34:                                     ; preds = %33
  %35 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !506
  %36 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %35, i32 0, i32 0, !dbg !506
  store double 0x7FF8000000000000, double* %36, align 8, !dbg !506
  %37 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !506
  %38 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %37, i32 0, i32 1, !dbg !506
  store double 0x7FF8000000000000, double* %38, align 8, !dbg !506
  br label %39, !dbg !506, !llvm.loop !509

; <label>:39:                                     ; preds = %34
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 287, i32 1), !dbg !511
  store i32 1, i32* %4, align 4, !dbg !511
  br label %226, !dbg !511
                                                  ; No predecessors!
  br label %41, !dbg !514

; <label>:41:                                     ; preds = %40
  br label %226, !dbg !516

; <label>:42:                                     ; preds = %30
  %43 = load i32, i32* %5, align 4, !dbg !517
  %44 = icmp eq i32 %43, 0, !dbg !519
  br i1 %44, label %45, label %49, !dbg !520

; <label>:45:                                     ; preds = %42
  %46 = load double, double* %6, align 8, !dbg !521
  %47 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !523
  %48 = call i32 @gsl_sf_legendre_Q0_e(double %46, %struct.gsl_sf_result_struct* %47), !dbg !524
  store i32 %48, i32* %4, align 4, !dbg !525
  br label %226, !dbg !525

; <label>:49:                                     ; preds = %42
  %50 = load i32, i32* %5, align 4, !dbg !526
  %51 = icmp eq i32 %50, 1, !dbg !528
  br i1 %51, label %52, label %56, !dbg !529

; <label>:52:                                     ; preds = %49
  %53 = load double, double* %6, align 8, !dbg !530
  %54 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !532
  %55 = call i32 @gsl_sf_legendre_Q1_e(double %53, %struct.gsl_sf_result_struct* %54), !dbg !533
  store i32 %55, i32* %4, align 4, !dbg !534
  br label %226, !dbg !534

; <label>:56:                                     ; preds = %49
  %57 = load i32, i32* %5, align 4, !dbg !535
  %58 = icmp sgt i32 %57, 100000, !dbg !537
  br i1 %58, label %59, label %65, !dbg !538

; <label>:59:                                     ; preds = %56
  %60 = load i32, i32* %5, align 4, !dbg !539
  %61 = sitofp i32 %60 to double, !dbg !539
  %62 = load double, double* %6, align 8, !dbg !541
  %63 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !542
  %64 = call i32 @legendre_Ql_asymp_unif(double %61, double %62, %struct.gsl_sf_result_struct* %63), !dbg !543
  store i32 %64, i32* %4, align 4, !dbg !544
  br label %226, !dbg !544

; <label>:65:                                     ; preds = %56
  %66 = load double, double* %6, align 8, !dbg !545
  %67 = fcmp olt double %66, 1.000000e+00, !dbg !547
  br i1 %67, label %68, label %132, !dbg !548

; <label>:68:                                     ; preds = %65
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %8, metadata !549, metadata !60), !dbg !551
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %9, metadata !552, metadata !60), !dbg !553
  call void @llvm.dbg.declare(metadata i32* %10, metadata !554, metadata !60), !dbg !555
  %69 = load double, double* %6, align 8, !dbg !556
  %70 = call i32 @gsl_sf_legendre_Q0_e(double %69, %struct.gsl_sf_result_struct* %8), !dbg !557
  store i32 %70, i32* %10, align 4, !dbg !555
  call void @llvm.dbg.declare(metadata i32* %11, metadata !558, metadata !60), !dbg !559
  %71 = load double, double* %6, align 8, !dbg !560
  %72 = call i32 @gsl_sf_legendre_Q1_e(double %71, %struct.gsl_sf_result_struct* %9), !dbg !561
  store i32 %72, i32* %11, align 4, !dbg !559
  call void @llvm.dbg.declare(metadata double* %12, metadata !562, metadata !60), !dbg !563
  %73 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 0, !dbg !564
  %74 = load double, double* %73, align 8, !dbg !564
  store double %74, double* %12, align 8, !dbg !563
  call void @llvm.dbg.declare(metadata double* %13, metadata !565, metadata !60), !dbg !566
  %75 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %9, i32 0, i32 0, !dbg !567
  %76 = load double, double* %75, align 8, !dbg !567
  store double %76, double* %13, align 8, !dbg !566
  call void @llvm.dbg.declare(metadata double* %14, metadata !568, metadata !60), !dbg !569
  call void @llvm.dbg.declare(metadata i32* %15, metadata !570, metadata !60), !dbg !571
  store i32 1, i32* %15, align 4, !dbg !572
  br label %77, !dbg !574

; <label>:77:                                     ; preds = %101, %68
  %78 = load i32, i32* %15, align 4, !dbg !575
  %79 = load i32, i32* %5, align 4, !dbg !578
  %80 = icmp slt i32 %78, %79, !dbg !579
  br i1 %80, label %81, label %104, !dbg !580

; <label>:81:                                     ; preds = %77
  %82 = load double, double* %6, align 8, !dbg !581
  %83 = load i32, i32* %15, align 4, !dbg !583
  %84 = sitofp i32 %83 to double, !dbg !583
  %85 = fmul double 2.000000e+00, %84, !dbg !584
  %86 = fadd double %85, 1.000000e+00, !dbg !585
  %87 = fmul double %82, %86, !dbg !586
  %88 = load double, double* %13, align 8, !dbg !587
  %89 = fmul double %87, %88, !dbg !588
  %90 = load i32, i32* %15, align 4, !dbg !589
  %91 = sitofp i32 %90 to double, !dbg !589
  %92 = load double, double* %12, align 8, !dbg !590
  %93 = fmul double %91, %92, !dbg !591
  %94 = fsub double %89, %93, !dbg !592
  %95 = load i32, i32* %15, align 4, !dbg !593
  %96 = sitofp i32 %95 to double, !dbg !593
  %97 = fadd double %96, 1.000000e+00, !dbg !594
  %98 = fdiv double %94, %97, !dbg !595
  store double %98, double* %14, align 8, !dbg !596
  %99 = load double, double* %13, align 8, !dbg !597
  store double %99, double* %12, align 8, !dbg !598
  %100 = load double, double* %14, align 8, !dbg !599
  store double %100, double* %13, align 8, !dbg !600
  br label %101, !dbg !601

; <label>:101:                                    ; preds = %81
  %102 = load i32, i32* %15, align 4, !dbg !602
  %103 = add nsw i32 %102, 1, !dbg !602
  store i32 %103, i32* %15, align 4, !dbg !602
  br label %77, !dbg !604, !llvm.loop !605

; <label>:104:                                    ; preds = %77
  %105 = load double, double* %13, align 8, !dbg !607
  %106 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !608
  %107 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %106, i32 0, i32 0, !dbg !609
  store double %105, double* %107, align 8, !dbg !610
  %108 = load i32, i32* %5, align 4, !dbg !611
  %109 = sitofp i32 %108 to double, !dbg !611
  %110 = fmul double 0x3CB0000000000000, %109, !dbg !612
  %111 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !613
  %112 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %111, i32 0, i32 0, !dbg !614
  %113 = load double, double* %112, align 8, !dbg !614
  %114 = call double @fabs(double %113) #1, !dbg !615
  %115 = fmul double %110, %114, !dbg !616
  %116 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !617
  %117 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %116, i32 0, i32 1, !dbg !618
  store double %115, double* %117, align 8, !dbg !619
  %118 = load i32, i32* %10, align 4, !dbg !620
  %119 = icmp ne i32 %118, 0, !dbg !620
  br i1 %119, label %120, label %122, !dbg !620

; <label>:120:                                    ; preds = %104
  %121 = load i32, i32* %10, align 4, !dbg !621
  br label %130, !dbg !621

; <label>:122:                                    ; preds = %104
  %123 = load i32, i32* %11, align 4, !dbg !623
  %124 = icmp ne i32 %123, 0, !dbg !623
  br i1 %124, label %125, label %127, !dbg !623

; <label>:125:                                    ; preds = %122
  %126 = load i32, i32* %11, align 4, !dbg !625
  br label %128, !dbg !625

; <label>:127:                                    ; preds = %122
  br label %128, !dbg !627

; <label>:128:                                    ; preds = %127, %125
  %129 = phi i32 [ %126, %125 ], [ 0, %127 ], !dbg !629
  br label %130, !dbg !629

; <label>:130:                                    ; preds = %128, %120
  %131 = phi i32 [ %121, %120 ], [ %129, %128 ], !dbg !631
  store i32 %131, i32* %4, align 4, !dbg !633
  br label %226, !dbg !633

; <label>:132:                                    ; preds = %65
  call void @llvm.dbg.declare(metadata double* %16, metadata !634, metadata !60), !dbg !636
  call void @llvm.dbg.declare(metadata i32* %17, metadata !637, metadata !60), !dbg !638
  %133 = load i32, i32* %5, align 4, !dbg !639
  %134 = load double, double* %6, align 8, !dbg !640
  %135 = call i32 @legendreQ_CF1_xgt1(i32 %133, double 0.000000e+00, double 0.000000e+00, double %134, double* %16), !dbg !641
  store i32 %135, i32* %17, align 4, !dbg !638
  call void @llvm.dbg.declare(metadata i32* %18, metadata !642, metadata !60), !dbg !643
  call void @llvm.dbg.declare(metadata double* %19, metadata !644, metadata !60), !dbg !645
  %136 = load double, double* %16, align 8, !dbg !646
  %137 = fmul double %136, 0x2000000000000000, !dbg !647
  store double %137, double* %19, align 8, !dbg !645
  call void @llvm.dbg.declare(metadata double* %20, metadata !648, metadata !60), !dbg !649
  store double 0x2000000000000000, double* %20, align 8, !dbg !649
  call void @llvm.dbg.declare(metadata double* %21, metadata !650, metadata !60), !dbg !651
  call void @llvm.dbg.declare(metadata i32* %22, metadata !652, metadata !60), !dbg !653
  %138 = load i32, i32* %5, align 4, !dbg !654
  store i32 %138, i32* %22, align 4, !dbg !656
  br label %139, !dbg !657

; <label>:139:                                    ; preds = %162, %132
  %140 = load i32, i32* %22, align 4, !dbg !658
  %141 = icmp sgt i32 %140, 0, !dbg !661
  br i1 %141, label %142, label %165, !dbg !662

; <label>:142:                                    ; preds = %139
  %143 = load double, double* %6, align 8, !dbg !663
  %144 = load i32, i32* %22, align 4, !dbg !665
  %145 = sitofp i32 %144 to double, !dbg !665
  %146 = fmul double 2.000000e+00, %145, !dbg !666
  %147 = fadd double %146, 1.000000e+00, !dbg !667
  %148 = fmul double %143, %147, !dbg !668
  %149 = load double, double* %20, align 8, !dbg !669
  %150 = fmul double %148, %149, !dbg !670
  %151 = load i32, i32* %22, align 4, !dbg !671
  %152 = sitofp i32 %151 to double, !dbg !671
  %153 = fadd double %152, 1.000000e+00, !dbg !672
  %154 = load double, double* %19, align 8, !dbg !673
  %155 = fmul double %153, %154, !dbg !674
  %156 = fsub double %150, %155, !dbg !675
  %157 = load i32, i32* %22, align 4, !dbg !676
  %158 = sitofp i32 %157 to double, !dbg !676
  %159 = fdiv double %156, %158, !dbg !677
  store double %159, double* %21, align 8, !dbg !678
  %160 = load double, double* %20, align 8, !dbg !679
  store double %160, double* %19, align 8, !dbg !680
  %161 = load double, double* %21, align 8, !dbg !681
  store double %161, double* %20, align 8, !dbg !682
  br label %162, !dbg !683

; <label>:162:                                    ; preds = %142
  %163 = load i32, i32* %22, align 4, !dbg !684
  %164 = add nsw i32 %163, -1, !dbg !684
  store i32 %164, i32* %22, align 4, !dbg !684
  br label %139, !dbg !686, !llvm.loop !687

; <label>:165:                                    ; preds = %139
  %166 = load double, double* %20, align 8, !dbg !689
  %167 = call double @fabs(double %166) #1, !dbg !691
  %168 = load double, double* %19, align 8, !dbg !692
  %169 = call double @fabs(double %168) #1, !dbg !693
  %170 = fcmp ogt double %167, %169, !dbg !695
  br i1 %170, label %171, label %191, !dbg !696

; <label>:171:                                    ; preds = %165
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %23, metadata !697, metadata !60), !dbg !699
  %172 = load double, double* %6, align 8, !dbg !700
  %173 = call i32 @gsl_sf_legendre_Q0_e(double %172, %struct.gsl_sf_result_struct* %23), !dbg !701
  store i32 %173, i32* %18, align 4, !dbg !702
  %174 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %23, i32 0, i32 0, !dbg !703
  %175 = load double, double* %174, align 8, !dbg !703
  %176 = fmul double 0x2000000000000000, %175, !dbg !704
  %177 = load double, double* %20, align 8, !dbg !705
  %178 = fdiv double %176, %177, !dbg !706
  %179 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !707
  %180 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %179, i32 0, i32 0, !dbg !708
  store double %178, double* %180, align 8, !dbg !709
  %181 = load i32, i32* %5, align 4, !dbg !710
  %182 = sitofp i32 %181 to double, !dbg !710
  %183 = fmul double %182, 0x3CB0000000000000, !dbg !711
  %184 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !712
  %185 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %184, i32 0, i32 0, !dbg !713
  %186 = load double, double* %185, align 8, !dbg !713
  %187 = call double @fabs(double %186) #1, !dbg !714
  %188 = fmul double %183, %187, !dbg !715
  %189 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !716
  %190 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %189, i32 0, i32 1, !dbg !717
  store double %188, double* %190, align 8, !dbg !718
  br label %211, !dbg !719

; <label>:191:                                    ; preds = %165
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %24, metadata !720, metadata !60), !dbg !722
  %192 = load double, double* %6, align 8, !dbg !723
  %193 = call i32 @gsl_sf_legendre_Q1_e(double %192, %struct.gsl_sf_result_struct* %24), !dbg !724
  store i32 %193, i32* %18, align 4, !dbg !725
  %194 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %24, i32 0, i32 0, !dbg !726
  %195 = load double, double* %194, align 8, !dbg !726
  %196 = fmul double 0x2000000000000000, %195, !dbg !727
  %197 = load double, double* %19, align 8, !dbg !728
  %198 = fdiv double %196, %197, !dbg !729
  %199 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !730
  %200 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %199, i32 0, i32 0, !dbg !731
  store double %198, double* %200, align 8, !dbg !732
  %201 = load i32, i32* %5, align 4, !dbg !733
  %202 = sitofp i32 %201 to double, !dbg !733
  %203 = fmul double %202, 0x3CB0000000000000, !dbg !734
  %204 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !735
  %205 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %204, i32 0, i32 0, !dbg !736
  %206 = load double, double* %205, align 8, !dbg !736
  %207 = call double @fabs(double %206) #1, !dbg !737
  %208 = fmul double %203, %207, !dbg !738
  %209 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !739
  %210 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %209, i32 0, i32 1, !dbg !740
  store double %208, double* %210, align 8, !dbg !741
  br label %211

; <label>:211:                                    ; preds = %191, %171
  %212 = load i32, i32* %18, align 4, !dbg !742
  %213 = icmp ne i32 %212, 0, !dbg !742
  br i1 %213, label %214, label %216, !dbg !742

; <label>:214:                                    ; preds = %211
  %215 = load i32, i32* %18, align 4, !dbg !743
  br label %224, !dbg !743

; <label>:216:                                    ; preds = %211
  %217 = load i32, i32* %17, align 4, !dbg !745
  %218 = icmp ne i32 %217, 0, !dbg !745
  br i1 %218, label %219, label %221, !dbg !745

; <label>:219:                                    ; preds = %216
  %220 = load i32, i32* %17, align 4, !dbg !747
  br label %222, !dbg !747

; <label>:221:                                    ; preds = %216
  br label %222, !dbg !749

; <label>:222:                                    ; preds = %221, %219
  %223 = phi i32 [ %220, %219 ], [ 0, %221 ], !dbg !751
  br label %224, !dbg !751

; <label>:224:                                    ; preds = %222, %214
  %225 = phi i32 [ %215, %214 ], [ %223, %222 ], !dbg !753
  store i32 %225, i32* %4, align 4, !dbg !755
  br label %226, !dbg !755

; <label>:226:                                    ; preds = %39, %45, %52, %59, %130, %224, %41
  %227 = load i32, i32* %4, align 4, !dbg !756
  ret i32 %227, !dbg !756
}

; Function Attrs: nounwind uwtable
define internal i32 @legendre_Ql_asymp_unif(double, double, %struct.gsl_sf_result_struct*) #0 !dbg !757 {
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca %struct.gsl_sf_result_struct*, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca %struct.gsl_sf_result_struct, align 8
  %11 = alloca %struct.gsl_sf_result_struct, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  %22 = alloca %struct.gsl_sf_result_struct, align 8
  %23 = alloca %struct.gsl_sf_result_struct, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca double, align 8
  %28 = alloca double, align 8
  %29 = alloca double, align 8
  %30 = alloca double, align 8
  %31 = alloca double, align 8
  store double %0, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !760, metadata !60), !dbg !761
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !762, metadata !60), !dbg !763
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %7, metadata !764, metadata !60), !dbg !765
  %32 = load double, double* %6, align 8, !dbg !766
  %33 = fcmp olt double %32, 1.000000e+00, !dbg !768
  br i1 %33, label %34, label %150, !dbg !769

; <label>:34:                                     ; preds = %3
  call void @llvm.dbg.declare(metadata double* %8, metadata !770, metadata !60), !dbg !772
  %35 = load double, double* %5, align 8, !dbg !773
  %36 = fadd double %35, 5.000000e-01, !dbg !774
  store double %36, double* %8, align 8, !dbg !772
  call void @llvm.dbg.declare(metadata double* %9, metadata !775, metadata !60), !dbg !776
  %37 = load double, double* %6, align 8, !dbg !777
  %38 = call double @acos(double %37) #5, !dbg !778
  store double %38, double* %9, align 8, !dbg !776
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %10, metadata !779, metadata !60), !dbg !780
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %11, metadata !781, metadata !60), !dbg !782
  call void @llvm.dbg.declare(metadata i32* %12, metadata !783, metadata !60), !dbg !784
  call void @llvm.dbg.declare(metadata i32* %13, metadata !785, metadata !60), !dbg !786
  call void @llvm.dbg.declare(metadata i32* %14, metadata !787, metadata !60), !dbg !788
  call void @llvm.dbg.declare(metadata double* %15, metadata !789, metadata !60), !dbg !790
  call void @llvm.dbg.declare(metadata double* %16, metadata !791, metadata !60), !dbg !792
  call void @llvm.dbg.declare(metadata double* %17, metadata !793, metadata !60), !dbg !794
  %39 = load double, double* %9, align 8, !dbg !795
  %40 = fcmp olt double %39, 0x3F20000000000000, !dbg !797
  br i1 %40, label %41, label %53, !dbg !798

; <label>:41:                                     ; preds = %34
  %42 = load double, double* %9, align 8, !dbg !799
  %43 = load double, double* %9, align 8, !dbg !801
  %44 = fmul double %42, %43, !dbg !802
  %45 = fdiv double %44, 1.500000e+01, !dbg !803
  %46 = fadd double 1.000000e+00, %45, !dbg !804
  %47 = fdiv double %46, 2.400000e+01, !dbg !805
  store double %47, double* %16, align 8, !dbg !806
  %48 = load double, double* %9, align 8, !dbg !807
  %49 = load double, double* %9, align 8, !dbg !808
  %50 = fmul double %48, %49, !dbg !809
  %51 = fdiv double %50, 1.200000e+01, !dbg !810
  %52 = fadd double 1.000000e+00, %51, !dbg !811
  store double %52, double* %15, align 8, !dbg !812
  br label %75, !dbg !813

; <label>:53:                                     ; preds = %34
  call void @llvm.dbg.declare(metadata double* %18, metadata !814, metadata !60), !dbg !816
  %54 = load double, double* %6, align 8, !dbg !817
  %55 = load double, double* %6, align 8, !dbg !818
  %56 = fmul double %54, %55, !dbg !819
  %57 = fsub double 1.000000e+00, %56, !dbg !820
  %58 = call double @sqrt(double %57) #5, !dbg !821
  store double %58, double* %18, align 8, !dbg !816
  call void @llvm.dbg.declare(metadata double* %19, metadata !822, metadata !60), !dbg !823
  %59 = load double, double* %6, align 8, !dbg !824
  %60 = load double, double* %18, align 8, !dbg !825
  %61 = fdiv double %59, %60, !dbg !826
  store double %61, double* %19, align 8, !dbg !823
  %62 = load double, double* %9, align 8, !dbg !827
  %63 = load double, double* %19, align 8, !dbg !828
  %64 = fmul double %62, %63, !dbg !829
  %65 = fsub double 1.000000e+00, %64, !dbg !830
  %66 = fmul double 1.250000e-01, %65, !dbg !831
  %67 = load double, double* %9, align 8, !dbg !832
  %68 = load double, double* %9, align 8, !dbg !833
  %69 = fmul double %67, %68, !dbg !834
  %70 = fdiv double %66, %69, !dbg !835
  store double %70, double* %16, align 8, !dbg !836
  %71 = load double, double* %9, align 8, !dbg !837
  %72 = load double, double* %18, align 8, !dbg !838
  %73 = fdiv double %71, %72, !dbg !839
  %74 = call double @sqrt(double %73) #5, !dbg !840
  store double %74, double* %15, align 8, !dbg !841
  br label %75

; <label>:75:                                     ; preds = %53, %41
  %76 = load double, double* %8, align 8, !dbg !842
  %77 = load double, double* %9, align 8, !dbg !843
  %78 = fmul double %76, %77, !dbg !844
  %79 = call i32 @gsl_sf_bessel_Y0_e(double %78, %struct.gsl_sf_result_struct* %10), !dbg !845
  store i32 %79, i32* %12, align 4, !dbg !846
  %80 = load double, double* %8, align 8, !dbg !847
  %81 = load double, double* %9, align 8, !dbg !848
  %82 = fmul double %80, %81, !dbg !849
  %83 = call i32 @gsl_sf_bessel_Y1_e(double %82, %struct.gsl_sf_result_struct* %11), !dbg !850
  store i32 %83, i32* %13, align 4, !dbg !851
  %84 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !852
  %85 = load double, double* %84, align 8, !dbg !852
  %86 = load double, double* %9, align 8, !dbg !853
  %87 = load double, double* %8, align 8, !dbg !854
  %88 = fdiv double %86, %87, !dbg !855
  %89 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 0, !dbg !856
  %90 = load double, double* %89, align 8, !dbg !856
  %91 = fmul double %88, %90, !dbg !857
  %92 = load double, double* %16, align 8, !dbg !858
  %93 = fmul double %91, %92, !dbg !859
  %94 = fadd double %85, %93, !dbg !860
  %95 = fmul double 0xBFF921FB54442D18, %94, !dbg !861
  store double %95, double* %17, align 8, !dbg !862
  %96 = load double, double* %15, align 8, !dbg !863
  %97 = load double, double* %17, align 8, !dbg !864
  %98 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !865
  %99 = call i32 @gsl_sf_multiply_e(double %96, double %97, %struct.gsl_sf_result_struct* %98), !dbg !866
  store i32 %99, i32* %14, align 4, !dbg !867
  %100 = load double, double* %15, align 8, !dbg !868
  %101 = call double @fabs(double %100) #1, !dbg !869
  %102 = fmul double 0x3FF921FB54442D18, %101, !dbg !870
  %103 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 1, !dbg !871
  %104 = load double, double* %103, align 8, !dbg !871
  %105 = load double, double* %9, align 8, !dbg !872
  %106 = load double, double* %8, align 8, !dbg !873
  %107 = fdiv double %105, %106, !dbg !874
  %108 = load double, double* %16, align 8, !dbg !875
  %109 = fmul double %107, %108, !dbg !876
  %110 = call double @fabs(double %109) #1, !dbg !877
  %111 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 1, !dbg !879
  %112 = load double, double* %111, align 8, !dbg !879
  %113 = fmul double %110, %112, !dbg !880
  %114 = fadd double %104, %113, !dbg !881
  %115 = fmul double %102, %114, !dbg !882
  %116 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !883
  %117 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %116, i32 0, i32 1, !dbg !884
  %118 = load double, double* %117, align 8, !dbg !885
  %119 = fadd double %118, %115, !dbg !885
  store double %119, double* %117, align 8, !dbg !885
  %120 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !886
  %121 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %120, i32 0, i32 0, !dbg !887
  %122 = load double, double* %121, align 8, !dbg !887
  %123 = call double @fabs(double %122) #1, !dbg !888
  %124 = fmul double 0x3CB0000000000000, %123, !dbg !889
  %125 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !890
  %126 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %125, i32 0, i32 1, !dbg !891
  %127 = load double, double* %126, align 8, !dbg !892
  %128 = fadd double %127, %124, !dbg !892
  store double %128, double* %126, align 8, !dbg !892
  %129 = load i32, i32* %14, align 4, !dbg !893
  %130 = icmp ne i32 %129, 0, !dbg !893
  br i1 %130, label %131, label %133, !dbg !893

; <label>:131:                                    ; preds = %75
  %132 = load i32, i32* %14, align 4, !dbg !894
  br label %148, !dbg !894

; <label>:133:                                    ; preds = %75
  %134 = load i32, i32* %12, align 4, !dbg !895
  %135 = icmp ne i32 %134, 0, !dbg !895
  br i1 %135, label %136, label %138, !dbg !895

; <label>:136:                                    ; preds = %133
  %137 = load i32, i32* %12, align 4, !dbg !897
  br label %146, !dbg !897

; <label>:138:                                    ; preds = %133
  %139 = load i32, i32* %13, align 4, !dbg !899
  %140 = icmp ne i32 %139, 0, !dbg !899
  br i1 %140, label %141, label %143, !dbg !899

; <label>:141:                                    ; preds = %138
  %142 = load i32, i32* %13, align 4, !dbg !901
  br label %144, !dbg !901

; <label>:143:                                    ; preds = %138
  br label %144, !dbg !903

; <label>:144:                                    ; preds = %143, %141
  %145 = phi i32 [ %142, %141 ], [ 0, %143 ], !dbg !905
  br label %146, !dbg !905

; <label>:146:                                    ; preds = %144, %136
  %147 = phi i32 [ %137, %136 ], [ %145, %144 ], !dbg !907
  br label %148, !dbg !907

; <label>:148:                                    ; preds = %146, %131
  %149 = phi i32 [ %132, %131 ], [ %147, %146 ], !dbg !909
  store i32 %149, i32* %4, align 4, !dbg !911
  br label %262, !dbg !911

; <label>:150:                                    ; preds = %3
  call void @llvm.dbg.declare(metadata double* %20, metadata !912, metadata !60), !dbg !914
  %151 = load double, double* %5, align 8, !dbg !915
  %152 = fadd double %151, 5.000000e-01, !dbg !916
  store double %152, double* %20, align 8, !dbg !914
  call void @llvm.dbg.declare(metadata double* %21, metadata !917, metadata !60), !dbg !918
  %153 = load double, double* %6, align 8, !dbg !919
  %154 = call double @acosh(double %153) #5, !dbg !920
  store double %154, double* %21, align 8, !dbg !918
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %22, metadata !921, metadata !60), !dbg !922
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %23, metadata !923, metadata !60), !dbg !924
  call void @llvm.dbg.declare(metadata i32* %24, metadata !925, metadata !60), !dbg !926
  call void @llvm.dbg.declare(metadata i32* %25, metadata !927, metadata !60), !dbg !928
  call void @llvm.dbg.declare(metadata i32* %26, metadata !929, metadata !60), !dbg !930
  call void @llvm.dbg.declare(metadata double* %27, metadata !931, metadata !60), !dbg !932
  call void @llvm.dbg.declare(metadata double* %28, metadata !933, metadata !60), !dbg !934
  call void @llvm.dbg.declare(metadata double* %29, metadata !935, metadata !60), !dbg !936
  %155 = load double, double* %21, align 8, !dbg !937
  %156 = fcmp olt double %155, 0x3F20000000000000, !dbg !939
  br i1 %156, label %157, label %169, !dbg !940

; <label>:157:                                    ; preds = %150
  %158 = load double, double* %21, align 8, !dbg !941
  %159 = load double, double* %21, align 8, !dbg !943
  %160 = fmul double %158, %159, !dbg !944
  %161 = fdiv double %160, 1.500000e+01, !dbg !945
  %162 = fsub double 1.000000e+00, %161, !dbg !946
  %163 = fdiv double %162, 2.400000e+01, !dbg !947
  store double %163, double* %28, align 8, !dbg !948
  %164 = load double, double* %21, align 8, !dbg !949
  %165 = load double, double* %21, align 8, !dbg !950
  %166 = fmul double %164, %165, !dbg !951
  %167 = fdiv double %166, 1.200000e+01, !dbg !952
  %168 = fsub double 1.000000e+00, %167, !dbg !953
  store double %168, double* %27, align 8, !dbg !954
  br label %191, !dbg !955

; <label>:169:                                    ; preds = %150
  call void @llvm.dbg.declare(metadata double* %30, metadata !956, metadata !60), !dbg !958
  %170 = load double, double* %6, align 8, !dbg !959
  %171 = load double, double* %6, align 8, !dbg !960
  %172 = fmul double %170, %171, !dbg !961
  %173 = fsub double %172, 1.000000e+00, !dbg !962
  %174 = call double @sqrt(double %173) #5, !dbg !963
  store double %174, double* %30, align 8, !dbg !958
  call void @llvm.dbg.declare(metadata double* %31, metadata !964, metadata !60), !dbg !965
  %175 = load double, double* %6, align 8, !dbg !966
  %176 = load double, double* %30, align 8, !dbg !967
  %177 = fdiv double %175, %176, !dbg !968
  store double %177, double* %31, align 8, !dbg !965
  %178 = load double, double* %21, align 8, !dbg !969
  %179 = load double, double* %31, align 8, !dbg !970
  %180 = fmul double %178, %179, !dbg !971
  %181 = fsub double 1.000000e+00, %180, !dbg !972
  %182 = fmul double -1.250000e-01, %181, !dbg !973
  %183 = load double, double* %21, align 8, !dbg !974
  %184 = load double, double* %21, align 8, !dbg !975
  %185 = fmul double %183, %184, !dbg !976
  %186 = fdiv double %182, %185, !dbg !977
  store double %186, double* %28, align 8, !dbg !978
  %187 = load double, double* %21, align 8, !dbg !979
  %188 = load double, double* %30, align 8, !dbg !980
  %189 = fdiv double %187, %188, !dbg !981
  %190 = call double @sqrt(double %189) #5, !dbg !982
  store double %190, double* %27, align 8, !dbg !983
  br label %191

; <label>:191:                                    ; preds = %169, %157
  %192 = load double, double* %20, align 8, !dbg !984
  %193 = load double, double* %21, align 8, !dbg !985
  %194 = fmul double %192, %193, !dbg !986
  %195 = call i32 @gsl_sf_bessel_K0_scaled_e(double %194, %struct.gsl_sf_result_struct* %22), !dbg !987
  store i32 %195, i32* %24, align 4, !dbg !988
  %196 = load double, double* %20, align 8, !dbg !989
  %197 = load double, double* %21, align 8, !dbg !990
  %198 = fmul double %196, %197, !dbg !991
  %199 = call i32 @gsl_sf_bessel_K1_scaled_e(double %198, %struct.gsl_sf_result_struct* %23), !dbg !992
  store i32 %199, i32* %25, align 4, !dbg !993
  %200 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %22, i32 0, i32 0, !dbg !994
  %201 = load double, double* %200, align 8, !dbg !994
  %202 = load double, double* %21, align 8, !dbg !995
  %203 = load double, double* %20, align 8, !dbg !996
  %204 = fdiv double %202, %203, !dbg !997
  %205 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %23, i32 0, i32 0, !dbg !998
  %206 = load double, double* %205, align 8, !dbg !998
  %207 = fmul double %204, %206, !dbg !999
  %208 = load double, double* %28, align 8, !dbg !1000
  %209 = fmul double %207, %208, !dbg !1001
  %210 = fsub double %201, %209, !dbg !1002
  store double %210, double* %29, align 8, !dbg !1003
  %211 = load double, double* %20, align 8, !dbg !1004
  %212 = fsub double -0.000000e+00, %211, !dbg !1005
  %213 = load double, double* %21, align 8, !dbg !1006
  %214 = fmul double %212, %213, !dbg !1007
  %215 = load double, double* %27, align 8, !dbg !1008
  %216 = load double, double* %29, align 8, !dbg !1009
  %217 = fmul double %215, %216, !dbg !1010
  %218 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1011
  %219 = call i32 @gsl_sf_exp_mult_e(double %214, double %217, %struct.gsl_sf_result_struct* %218), !dbg !1012
  store i32 %219, i32* %26, align 4, !dbg !1013
  %220 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1014
  %221 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %220, i32 0, i32 0, !dbg !1015
  %222 = load double, double* %221, align 8, !dbg !1015
  %223 = call double @fabs(double %222) #1, !dbg !1016
  %224 = fmul double 0x3CB0000000000000, %223, !dbg !1017
  %225 = load double, double* %20, align 8, !dbg !1018
  %226 = load double, double* %21, align 8, !dbg !1019
  %227 = fmul double %225, %226, !dbg !1020
  %228 = call double @fabs(double %227) #1, !dbg !1021
  %229 = fmul double %224, %228, !dbg !1023
  %230 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1024
  %231 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %230, i32 0, i32 1, !dbg !1025
  store double %229, double* %231, align 8, !dbg !1026
  %232 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1027
  %233 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %232, i32 0, i32 0, !dbg !1028
  %234 = load double, double* %233, align 8, !dbg !1028
  %235 = call double @fabs(double %234) #1, !dbg !1029
  %236 = fmul double 0x3CC0000000000000, %235, !dbg !1030
  %237 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1031
  %238 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %237, i32 0, i32 1, !dbg !1032
  %239 = load double, double* %238, align 8, !dbg !1033
  %240 = fadd double %239, %236, !dbg !1033
  store double %240, double* %238, align 8, !dbg !1033
  %241 = load i32, i32* %26, align 4, !dbg !1034
  %242 = icmp ne i32 %241, 0, !dbg !1034
  br i1 %242, label %243, label %245, !dbg !1034

; <label>:243:                                    ; preds = %191
  %244 = load i32, i32* %26, align 4, !dbg !1035
  br label %260, !dbg !1035

; <label>:245:                                    ; preds = %191
  %246 = load i32, i32* %24, align 4, !dbg !1036
  %247 = icmp ne i32 %246, 0, !dbg !1036
  br i1 %247, label %248, label %250, !dbg !1036

; <label>:248:                                    ; preds = %245
  %249 = load i32, i32* %24, align 4, !dbg !1038
  br label %258, !dbg !1038

; <label>:250:                                    ; preds = %245
  %251 = load i32, i32* %25, align 4, !dbg !1040
  %252 = icmp ne i32 %251, 0, !dbg !1040
  br i1 %252, label %253, label %255, !dbg !1040

; <label>:253:                                    ; preds = %250
  %254 = load i32, i32* %25, align 4, !dbg !1042
  br label %256, !dbg !1042

; <label>:255:                                    ; preds = %250
  br label %256, !dbg !1044

; <label>:256:                                    ; preds = %255, %253
  %257 = phi i32 [ %254, %253 ], [ 0, %255 ], !dbg !1046
  br label %258, !dbg !1046

; <label>:258:                                    ; preds = %256, %248
  %259 = phi i32 [ %249, %248 ], [ %257, %256 ], !dbg !1048
  br label %260, !dbg !1048

; <label>:260:                                    ; preds = %258, %243
  %261 = phi i32 [ %244, %243 ], [ %259, %258 ], !dbg !1050
  store i32 %261, i32* %4, align 4, !dbg !1052
  br label %262, !dbg !1052

; <label>:262:                                    ; preds = %260, %148
  %263 = load i32, i32* %4, align 4, !dbg !1053
  ret i32 %263, !dbg !1053
}

; Function Attrs: nounwind uwtable
define internal i32 @legendreQ_CF1_xgt1(i32, double, double, double, double*) #0 !dbg !1054 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double*, align 8
  %12 = alloca double, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  %22 = alloca double, align 8
  %23 = alloca double, align 8
  %24 = alloca double, align 8
  %25 = alloca double, align 8
  %26 = alloca double, align 8
  %27 = alloca double, align 8
  %28 = alloca double, align 8
  store i32 %0, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1058, metadata !60), !dbg !1059
  store double %1, double* %8, align 8
  call void @llvm.dbg.declare(metadata double* %8, metadata !1060, metadata !60), !dbg !1061
  store double %2, double* %9, align 8
  call void @llvm.dbg.declare(metadata double* %9, metadata !1062, metadata !60), !dbg !1063
  store double %3, double* %10, align 8
  call void @llvm.dbg.declare(metadata double* %10, metadata !1064, metadata !60), !dbg !1065
  store double* %4, double** %11, align 8
  call void @llvm.dbg.declare(metadata double** %11, metadata !1066, metadata !60), !dbg !1067
  call void @llvm.dbg.declare(metadata double* %12, metadata !1068, metadata !60), !dbg !1069
  store double 0x5FEFFFFFFFFFFFFF, double* %12, align 8, !dbg !1069
  call void @llvm.dbg.declare(metadata i32* %13, metadata !1070, metadata !60), !dbg !1071
  store i32 5000, i32* %13, align 4, !dbg !1071
  call void @llvm.dbg.declare(metadata i32* %14, metadata !1072, metadata !60), !dbg !1073
  store i32 1, i32* %14, align 4, !dbg !1073
  call void @llvm.dbg.declare(metadata double* %15, metadata !1074, metadata !60), !dbg !1075
  store double 1.000000e+00, double* %15, align 8, !dbg !1075
  call void @llvm.dbg.declare(metadata double* %16, metadata !1076, metadata !60), !dbg !1077
  store double 0.000000e+00, double* %16, align 8, !dbg !1077
  call void @llvm.dbg.declare(metadata double* %17, metadata !1078, metadata !60), !dbg !1079
  store double 0.000000e+00, double* %17, align 8, !dbg !1079
  call void @llvm.dbg.declare(metadata double* %18, metadata !1080, metadata !60), !dbg !1081
  store double 1.000000e+00, double* %18, align 8, !dbg !1081
  call void @llvm.dbg.declare(metadata double* %19, metadata !1082, metadata !60), !dbg !1083
  %29 = load i32, i32* %7, align 4, !dbg !1084
  %30 = sitofp i32 %29 to double, !dbg !1084
  %31 = fadd double %30, 1.000000e+00, !dbg !1085
  %32 = load double, double* %8, align 8, !dbg !1086
  %33 = fadd double %31, %32, !dbg !1087
  %34 = load double, double* %9, align 8, !dbg !1088
  %35 = fadd double %33, %34, !dbg !1089
  store double %35, double* %19, align 8, !dbg !1083
  call void @llvm.dbg.declare(metadata double* %20, metadata !1090, metadata !60), !dbg !1091
  %36 = load i32, i32* %7, align 4, !dbg !1092
  %37 = sitofp i32 %36 to double, !dbg !1092
  %38 = fadd double %37, 1.000000e+00, !dbg !1093
  %39 = load double, double* %8, align 8, !dbg !1094
  %40 = fadd double %38, %39, !dbg !1095
  %41 = fmul double 2.000000e+00, %40, !dbg !1096
  %42 = fadd double %41, 1.000000e+00, !dbg !1097
  %43 = load double, double* %10, align 8, !dbg !1098
  %44 = fmul double %42, %43, !dbg !1099
  store double %44, double* %20, align 8, !dbg !1091
  call void @llvm.dbg.declare(metadata double* %21, metadata !1100, metadata !60), !dbg !1101
  %45 = load double, double* %20, align 8, !dbg !1102
  %46 = load double, double* %17, align 8, !dbg !1103
  %47 = fmul double %45, %46, !dbg !1104
  %48 = load double, double* %19, align 8, !dbg !1105
  %49 = load double, double* %15, align 8, !dbg !1106
  %50 = fmul double %48, %49, !dbg !1107
  %51 = fadd double %47, %50, !dbg !1108
  store double %51, double* %21, align 8, !dbg !1101
  call void @llvm.dbg.declare(metadata double* %22, metadata !1109, metadata !60), !dbg !1110
  %52 = load double, double* %20, align 8, !dbg !1111
  %53 = load double, double* %18, align 8, !dbg !1112
  %54 = fmul double %52, %53, !dbg !1113
  %55 = load double, double* %19, align 8, !dbg !1114
  %56 = load double, double* %16, align 8, !dbg !1115
  %57 = fmul double %55, %56, !dbg !1116
  %58 = fadd double %54, %57, !dbg !1117
  store double %58, double* %22, align 8, !dbg !1110
  call void @llvm.dbg.declare(metadata double* %23, metadata !1118, metadata !60), !dbg !1119
  call void @llvm.dbg.declare(metadata double* %24, metadata !1120, metadata !60), !dbg !1121
  call void @llvm.dbg.declare(metadata double* %25, metadata !1122, metadata !60), !dbg !1123
  %59 = load double, double* %21, align 8, !dbg !1124
  %60 = load double, double* %22, align 8, !dbg !1125
  %61 = fdiv double %59, %60, !dbg !1126
  store double %61, double* %25, align 8, !dbg !1123
  br label %62, !dbg !1127

; <label>:62:                                     ; preds = %137, %5
  %63 = load i32, i32* %14, align 4, !dbg !1128
  %64 = icmp slt i32 %63, 5000, !dbg !1130
  br i1 %64, label %65, label %138, !dbg !1131

; <label>:65:                                     ; preds = %62
  call void @llvm.dbg.declare(metadata double* %26, metadata !1132, metadata !60), !dbg !1134
  call void @llvm.dbg.declare(metadata double* %27, metadata !1135, metadata !60), !dbg !1136
  call void @llvm.dbg.declare(metadata double* %28, metadata !1137, metadata !60), !dbg !1138
  %66 = load i32, i32* %14, align 4, !dbg !1139
  %67 = add nsw i32 %66, 1, !dbg !1139
  store i32 %67, i32* %14, align 4, !dbg !1139
  %68 = load double, double* %17, align 8, !dbg !1140
  store double %68, double* %15, align 8, !dbg !1141
  %69 = load double, double* %18, align 8, !dbg !1142
  store double %69, double* %16, align 8, !dbg !1143
  %70 = load double, double* %21, align 8, !dbg !1144
  store double %70, double* %17, align 8, !dbg !1145
  %71 = load double, double* %22, align 8, !dbg !1146
  store double %71, double* %18, align 8, !dbg !1147
  %72 = load i32, i32* %7, align 4, !dbg !1148
  %73 = load i32, i32* %14, align 4, !dbg !1149
  %74 = add nsw i32 %72, %73, !dbg !1150
  %75 = sitofp i32 %74 to double, !dbg !1148
  %76 = load double, double* %8, align 8, !dbg !1151
  %77 = fadd double %75, %76, !dbg !1152
  store double %77, double* %28, align 8, !dbg !1153
  %78 = load double, double* %9, align 8, !dbg !1154
  %79 = load double, double* %9, align 8, !dbg !1155
  %80 = fmul double %78, %79, !dbg !1156
  %81 = load double, double* %28, align 8, !dbg !1157
  %82 = load double, double* %28, align 8, !dbg !1158
  %83 = fmul double %81, %82, !dbg !1159
  %84 = fsub double %80, %83, !dbg !1160
  store double %84, double* %23, align 8, !dbg !1161
  %85 = load double, double* %28, align 8, !dbg !1162
  %86 = fmul double 2.000000e+00, %85, !dbg !1163
  %87 = fadd double %86, 1.000000e+00, !dbg !1164
  %88 = load double, double* %10, align 8, !dbg !1165
  %89 = fmul double %87, %88, !dbg !1166
  store double %89, double* %24, align 8, !dbg !1167
  %90 = load double, double* %24, align 8, !dbg !1168
  %91 = load double, double* %17, align 8, !dbg !1169
  %92 = fmul double %90, %91, !dbg !1170
  %93 = load double, double* %23, align 8, !dbg !1171
  %94 = load double, double* %15, align 8, !dbg !1172
  %95 = fmul double %93, %94, !dbg !1173
  %96 = fadd double %92, %95, !dbg !1174
  store double %96, double* %21, align 8, !dbg !1175
  %97 = load double, double* %24, align 8, !dbg !1176
  %98 = load double, double* %18, align 8, !dbg !1177
  %99 = fmul double %97, %98, !dbg !1178
  %100 = load double, double* %23, align 8, !dbg !1179
  %101 = load double, double* %16, align 8, !dbg !1180
  %102 = fmul double %100, %101, !dbg !1181
  %103 = fadd double %99, %102, !dbg !1182
  store double %103, double* %22, align 8, !dbg !1183
  %104 = load double, double* %21, align 8, !dbg !1184
  %105 = call double @fabs(double %104) #1, !dbg !1186
  %106 = fcmp ogt double %105, 0x5FEFFFFFFFFFFFFF, !dbg !1187
  br i1 %106, label %111, label %107, !dbg !1188

; <label>:107:                                    ; preds = %65
  %108 = load double, double* %22, align 8, !dbg !1189
  %109 = call double @fabs(double %108) #1, !dbg !1191
  %110 = fcmp ogt double %109, 0x5FEFFFFFFFFFFFFF, !dbg !1192
  br i1 %110, label %111, label %124, !dbg !1193

; <label>:111:                                    ; preds = %107, %65
  %112 = load double, double* %21, align 8, !dbg !1194
  %113 = fdiv double %112, 0x5FEFFFFFFFFFFFFF, !dbg !1194
  store double %113, double* %21, align 8, !dbg !1194
  %114 = load double, double* %22, align 8, !dbg !1196
  %115 = fdiv double %114, 0x5FEFFFFFFFFFFFFF, !dbg !1196
  store double %115, double* %22, align 8, !dbg !1196
  %116 = load double, double* %17, align 8, !dbg !1197
  %117 = fdiv double %116, 0x5FEFFFFFFFFFFFFF, !dbg !1197
  store double %117, double* %17, align 8, !dbg !1197
  %118 = load double, double* %18, align 8, !dbg !1198
  %119 = fdiv double %118, 0x5FEFFFFFFFFFFFFF, !dbg !1198
  store double %119, double* %18, align 8, !dbg !1198
  %120 = load double, double* %15, align 8, !dbg !1199
  %121 = fdiv double %120, 0x5FEFFFFFFFFFFFFF, !dbg !1199
  store double %121, double* %15, align 8, !dbg !1199
  %122 = load double, double* %16, align 8, !dbg !1200
  %123 = fdiv double %122, 0x5FEFFFFFFFFFFFFF, !dbg !1200
  store double %123, double* %16, align 8, !dbg !1200
  br label %124, !dbg !1201

; <label>:124:                                    ; preds = %111, %107
  %125 = load double, double* %25, align 8, !dbg !1202
  store double %125, double* %26, align 8, !dbg !1203
  %126 = load double, double* %21, align 8, !dbg !1204
  %127 = load double, double* %22, align 8, !dbg !1205
  %128 = fdiv double %126, %127, !dbg !1206
  store double %128, double* %25, align 8, !dbg !1207
  %129 = load double, double* %26, align 8, !dbg !1208
  %130 = load double, double* %25, align 8, !dbg !1209
  %131 = fdiv double %129, %130, !dbg !1210
  store double %131, double* %27, align 8, !dbg !1211
  %132 = load double, double* %27, align 8, !dbg !1212
  %133 = fsub double %132, 1.000000e+00, !dbg !1214
  %134 = call double @fabs(double %133) #1, !dbg !1215
  %135 = fcmp olt double %134, 0x3CD0000000000000, !dbg !1216
  br i1 %135, label %136, label %137, !dbg !1217

; <label>:136:                                    ; preds = %124
  br label %138, !dbg !1218

; <label>:137:                                    ; preds = %124
  br label %62, !dbg !1220, !llvm.loop !1222

; <label>:138:                                    ; preds = %136, %62
  %139 = load double, double* %25, align 8, !dbg !1223
  %140 = load double*, double** %11, align 8, !dbg !1224
  store double %139, double* %140, align 8, !dbg !1225
  %141 = load i32, i32* %14, align 4, !dbg !1226
  %142 = icmp eq i32 %141, 5000, !dbg !1228
  br i1 %142, label %143, label %146, !dbg !1229

; <label>:143:                                    ; preds = %138
  br label %144, !dbg !1230, !llvm.loop !1231

; <label>:144:                                    ; preds = %143
  call void @gsl_error(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 89, i32 11), !dbg !1232
  store i32 11, i32* %6, align 4, !dbg !1232
  br label %147, !dbg !1232
                                                  ; No predecessors!
  br label %147, !dbg !1235

; <label>:146:                                    ; preds = %138
  store i32 0, i32* %6, align 4, !dbg !1237
  br label %147, !dbg !1237

; <label>:147:                                    ; preds = %144, %146, %145
  %148 = load i32, i32* %6, align 4, !dbg !1238
  ret i32 %148, !dbg !1238
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_legendre_Q0(double) #0 !dbg !1239 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct, align 8
  %5 = alloca i32, align 4
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !1242, metadata !60), !dbg !1243
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %4, metadata !1244, metadata !60), !dbg !1245
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1246, metadata !60), !dbg !1245
  %6 = load double, double* %3, align 8, !dbg !1245
  %7 = call i32 @gsl_sf_legendre_Q0_e(double %6, %struct.gsl_sf_result_struct* %4), !dbg !1245
  store i32 %7, i32* %5, align 4, !dbg !1245
  %8 = load i32, i32* %5, align 4, !dbg !1247
  %9 = icmp ne i32 %8, 0, !dbg !1247
  br i1 %9, label %10, label %16, !dbg !1245

; <label>:10:                                     ; preds = %1
  br label %11, !dbg !1249, !llvm.loop !1252

; <label>:11:                                     ; preds = %10
  %12 = load i32, i32* %5, align 4, !dbg !1254
  call void @gsl_error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 357, i32 %12), !dbg !1254
  %13 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !1254
  %14 = load double, double* %13, align 8, !dbg !1254
  store double %14, double* %2, align 8, !dbg !1254
  br label %19, !dbg !1254
                                                  ; No predecessors!
  br label %16, !dbg !1257

; <label>:16:                                     ; preds = %15, %1
  %17 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !1259
  %18 = load double, double* %17, align 8, !dbg !1259
  store double %18, double* %2, align 8, !dbg !1259
  br label %19, !dbg !1259

; <label>:19:                                     ; preds = %16, %11
  %20 = load double, double* %2, align 8, !dbg !1261
  ret double %20, !dbg !1261
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_legendre_Q1(double) #0 !dbg !1262 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct, align 8
  %5 = alloca i32, align 4
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !1263, metadata !60), !dbg !1264
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %4, metadata !1265, metadata !60), !dbg !1266
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1267, metadata !60), !dbg !1266
  %6 = load double, double* %3, align 8, !dbg !1266
  %7 = call i32 @gsl_sf_legendre_Q1_e(double %6, %struct.gsl_sf_result_struct* %4), !dbg !1266
  store i32 %7, i32* %5, align 4, !dbg !1266
  %8 = load i32, i32* %5, align 4, !dbg !1268
  %9 = icmp ne i32 %8, 0, !dbg !1268
  br i1 %9, label %10, label %16, !dbg !1266

; <label>:10:                                     ; preds = %1
  br label %11, !dbg !1270, !llvm.loop !1273

; <label>:11:                                     ; preds = %10
  %12 = load i32, i32* %5, align 4, !dbg !1275
  call void @gsl_error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 362, i32 %12), !dbg !1275
  %13 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !1275
  %14 = load double, double* %13, align 8, !dbg !1275
  store double %14, double* %2, align 8, !dbg !1275
  br label %19, !dbg !1275
                                                  ; No predecessors!
  br label %16, !dbg !1278

; <label>:16:                                     ; preds = %15, %1
  %17 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !1280
  %18 = load double, double* %17, align 8, !dbg !1280
  store double %18, double* %2, align 8, !dbg !1280
  br label %19, !dbg !1280

; <label>:19:                                     ; preds = %16, %11
  %20 = load double, double* %2, align 8, !dbg !1282
  ret double %20, !dbg !1282
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_legendre_Ql(i32, double) #0 !dbg !1283 {
  %3 = alloca double, align 8
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca %struct.gsl_sf_result_struct, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1286, metadata !60), !dbg !1287
  store double %1, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !1288, metadata !60), !dbg !1289
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %6, metadata !1290, metadata !60), !dbg !1291
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1292, metadata !60), !dbg !1291
  %8 = load i32, i32* %4, align 4, !dbg !1291
  %9 = load double, double* %5, align 8, !dbg !1291
  %10 = call i32 @gsl_sf_legendre_Ql_e(i32 %8, double %9, %struct.gsl_sf_result_struct* %6), !dbg !1291
  store i32 %10, i32* %7, align 4, !dbg !1291
  %11 = load i32, i32* %7, align 4, !dbg !1293
  %12 = icmp ne i32 %11, 0, !dbg !1293
  br i1 %12, label %13, label %19, !dbg !1291

; <label>:13:                                     ; preds = %2
  br label %14, !dbg !1295, !llvm.loop !1298

; <label>:14:                                     ; preds = %13
  %15 = load i32, i32* %7, align 4, !dbg !1300
  call void @gsl_error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 367, i32 %15), !dbg !1300
  %16 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !1300
  %17 = load double, double* %16, align 8, !dbg !1300
  store double %17, double* %3, align 8, !dbg !1300
  br label %22, !dbg !1300
                                                  ; No predecessors!
  br label %19, !dbg !1303

; <label>:19:                                     ; preds = %18, %2
  %20 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !1305
  %21 = load double, double* %20, align 8, !dbg !1305
  store double %21, double* %3, align 8, !dbg !1305
  br label %22, !dbg !1305

; <label>:22:                                     ; preds = %19, %14
  %23 = load double, double* %3, align 8, !dbg !1307
  ret double %23, !dbg !1307
}

; Function Attrs: nounwind
declare double @acos(double) #4

; Function Attrs: nounwind
declare double @sqrt(double) #4

declare i32 @gsl_sf_bessel_Y0_e(double, %struct.gsl_sf_result_struct*) #2

declare i32 @gsl_sf_bessel_Y1_e(double, %struct.gsl_sf_result_struct*) #2

declare i32 @gsl_sf_multiply_e(double, double, %struct.gsl_sf_result_struct*) #2

; Function Attrs: nounwind
declare double @acosh(double) #4

declare i32 @gsl_sf_bessel_K0_scaled_e(double, %struct.gsl_sf_result_struct*) #2

declare i32 @gsl_sf_bessel_K1_scaled_e(double, %struct.gsl_sf_result_struct*) #2

declare i32 @gsl_sf_exp_mult_e(double, double, %struct.gsl_sf_result_struct*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!41, !42, !43}
!llvm.ident = !{!44}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "legendre_Qn.c", directory: "/fpcc/gsl-2.5/specfunc")
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
!45 = distinct !DISubprogram(name: "gsl_sf_legendre_Q0_e", scope: !1, file: !1, line: 180, type: !46, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
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
!59 = !DILocalVariable(name: "x", arg: 1, scope: !45, file: !1, line: 180, type: !49)
!60 = !DIExpression()
!61 = !DILocation(line: 180, column: 35, scope: !45)
!62 = !DILocalVariable(name: "result", arg: 2, scope: !45, file: !1, line: 180, type: !51)
!63 = !DILocation(line: 180, column: 54, scope: !45)
!64 = !DILocation(line: 184, column: 6, scope: !65)
!65 = distinct !DILexicalBlock(scope: !45, file: !1, line: 184, column: 6)
!66 = !DILocation(line: 184, column: 8, scope: !65)
!67 = !DILocation(line: 184, column: 16, scope: !65)
!68 = !DILocation(line: 184, column: 19, scope: !69)
!69 = !DILexicalBlockFile(scope: !65, file: !1, discriminator: 1)
!70 = !DILocation(line: 184, column: 21, scope: !69)
!71 = !DILocation(line: 184, column: 6, scope: !69)
!72 = !DILocation(line: 185, column: 5, scope: !73)
!73 = distinct !DILexicalBlock(scope: !65, file: !1, line: 184, column: 29)
!74 = distinct !{!74, !72}
!75 = !DILocation(line: 185, column: 5, scope: !76)
!76 = !DILexicalBlockFile(scope: !77, file: !1, discriminator: 1)
!77 = distinct !DILexicalBlock(scope: !73, file: !1, line: 185, column: 5)
!78 = distinct !{!78, !79}
!79 = !DILocation(line: 185, column: 5, scope: !77)
!80 = !DILocation(line: 185, column: 5, scope: !81)
!81 = !DILexicalBlockFile(scope: !82, file: !1, discriminator: 2)
!82 = distinct !DILexicalBlock(scope: !77, file: !1, line: 185, column: 5)
!83 = !DILocation(line: 185, column: 5, scope: !84)
!84 = !DILexicalBlockFile(scope: !77, file: !1, discriminator: 3)
!85 = !DILocation(line: 186, column: 3, scope: !73)
!86 = !DILocation(line: 187, column: 11, scope: !87)
!87 = distinct !DILexicalBlock(scope: !65, file: !1, line: 187, column: 11)
!88 = !DILocation(line: 187, column: 13, scope: !87)
!89 = !DILocation(line: 187, column: 12, scope: !87)
!90 = !DILocation(line: 187, column: 15, scope: !87)
!91 = !DILocation(line: 187, column: 11, scope: !65)
!92 = !DILocalVariable(name: "c3", scope: !93, file: !1, line: 188, type: !49)
!93 = distinct !DILexicalBlock(scope: !87, file: !1, line: 187, column: 40)
!94 = !DILocation(line: 188, column: 18, scope: !93)
!95 = !DILocalVariable(name: "c5", scope: !93, file: !1, line: 189, type: !49)
!96 = !DILocation(line: 189, column: 18, scope: !93)
!97 = !DILocalVariable(name: "c7", scope: !93, file: !1, line: 190, type: !49)
!98 = !DILocation(line: 190, column: 18, scope: !93)
!99 = !DILocalVariable(name: "c9", scope: !93, file: !1, line: 191, type: !49)
!100 = !DILocation(line: 191, column: 18, scope: !93)
!101 = !DILocalVariable(name: "c11", scope: !93, file: !1, line: 192, type: !49)
!102 = !DILocation(line: 192, column: 18, scope: !93)
!103 = !DILocalVariable(name: "y", scope: !93, file: !1, line: 193, type: !49)
!104 = !DILocation(line: 193, column: 18, scope: !93)
!105 = !DILocation(line: 193, column: 22, scope: !93)
!106 = !DILocation(line: 193, column: 26, scope: !93)
!107 = !DILocation(line: 193, column: 24, scope: !93)
!108 = !DILocalVariable(name: "series", scope: !93, file: !1, line: 194, type: !49)
!109 = !DILocation(line: 194, column: 18, scope: !93)
!110 = !DILocation(line: 194, column: 33, scope: !93)
!111 = !DILocation(line: 194, column: 41, scope: !93)
!112 = !DILocation(line: 194, column: 49, scope: !93)
!113 = !DILocation(line: 194, column: 57, scope: !93)
!114 = !DILocation(line: 194, column: 65, scope: !93)
!115 = !DILocation(line: 194, column: 66, scope: !93)
!116 = !DILocation(line: 194, column: 63, scope: !93)
!117 = !DILocation(line: 194, column: 58, scope: !93)
!118 = !DILocation(line: 194, column: 55, scope: !93)
!119 = !DILocation(line: 194, column: 50, scope: !93)
!120 = !DILocation(line: 194, column: 47, scope: !93)
!121 = !DILocation(line: 194, column: 42, scope: !93)
!122 = !DILocation(line: 194, column: 39, scope: !93)
!123 = !DILocation(line: 194, column: 34, scope: !93)
!124 = !DILocation(line: 194, column: 31, scope: !93)
!125 = !DILocation(line: 195, column: 19, scope: !93)
!126 = !DILocation(line: 195, column: 23, scope: !93)
!127 = !DILocation(line: 195, column: 21, scope: !93)
!128 = !DILocation(line: 195, column: 5, scope: !93)
!129 = !DILocation(line: 195, column: 13, scope: !93)
!130 = !DILocation(line: 195, column: 17, scope: !93)
!131 = !DILocation(line: 196, column: 48, scope: !93)
!132 = !DILocation(line: 196, column: 43, scope: !93)
!133 = !DILocation(line: 196, column: 41, scope: !93)
!134 = !DILocation(line: 196, column: 5, scope: !93)
!135 = !DILocation(line: 196, column: 13, scope: !93)
!136 = !DILocation(line: 196, column: 17, scope: !93)
!137 = !DILocation(line: 197, column: 5, scope: !93)
!138 = !DILocation(line: 199, column: 11, scope: !139)
!139 = distinct !DILexicalBlock(scope: !87, file: !1, line: 199, column: 11)
!140 = !DILocation(line: 199, column: 13, scope: !139)
!141 = !DILocation(line: 199, column: 11, scope: !87)
!142 = !DILocation(line: 201, column: 34, scope: !143)
!143 = distinct !DILexicalBlock(scope: !139, file: !1, line: 199, column: 20)
!144 = !DILocation(line: 201, column: 33, scope: !143)
!145 = !DILocation(line: 201, column: 43, scope: !143)
!146 = !DILocation(line: 201, column: 42, scope: !143)
!147 = !DILocation(line: 201, column: 44, scope: !143)
!148 = !DILocation(line: 201, column: 36, scope: !143)
!149 = !DILocation(line: 201, column: 25, scope: !143)
!150 = !DILocation(line: 201, column: 23, scope: !143)
!151 = !DILocation(line: 201, column: 5, scope: !143)
!152 = !DILocation(line: 201, column: 13, scope: !143)
!153 = !DILocation(line: 201, column: 17, scope: !143)
!154 = !DILocation(line: 202, column: 49, scope: !143)
!155 = !DILocation(line: 202, column: 57, scope: !143)
!156 = !DILocation(line: 202, column: 44, scope: !143)
!157 = !DILocation(line: 202, column: 42, scope: !143)
!158 = !DILocation(line: 202, column: 5, scope: !143)
!159 = !DILocation(line: 202, column: 13, scope: !143)
!160 = !DILocation(line: 202, column: 18, scope: !143)
!161 = !DILocation(line: 203, column: 5, scope: !143)
!162 = !DILocation(line: 205, column: 11, scope: !163)
!163 = distinct !DILexicalBlock(scope: !139, file: !1, line: 205, column: 11)
!164 = !DILocation(line: 205, column: 13, scope: !163)
!165 = !DILocation(line: 205, column: 11, scope: !139)
!166 = !DILocation(line: 207, column: 30, scope: !167)
!167 = distinct !DILexicalBlock(scope: !163, file: !1, line: 205, column: 21)
!168 = !DILocation(line: 207, column: 31, scope: !167)
!169 = !DILocation(line: 207, column: 38, scope: !167)
!170 = !DILocation(line: 207, column: 39, scope: !167)
!171 = !DILocation(line: 207, column: 43, scope: !167)
!172 = !DILocation(line: 207, column: 36, scope: !167)
!173 = !DILocation(line: 207, column: 25, scope: !167)
!174 = !DILocation(line: 207, column: 23, scope: !167)
!175 = !DILocation(line: 207, column: 5, scope: !167)
!176 = !DILocation(line: 207, column: 13, scope: !167)
!177 = !DILocation(line: 207, column: 17, scope: !167)
!178 = !DILocation(line: 208, column: 48, scope: !167)
!179 = !DILocation(line: 208, column: 56, scope: !167)
!180 = !DILocation(line: 208, column: 43, scope: !167)
!181 = !DILocation(line: 208, column: 41, scope: !167)
!182 = !DILocation(line: 208, column: 5, scope: !167)
!183 = !DILocation(line: 208, column: 13, scope: !167)
!184 = !DILocation(line: 208, column: 17, scope: !167)
!185 = !DILocation(line: 209, column: 5, scope: !167)
!186 = !DILocation(line: 211, column: 11, scope: !187)
!187 = distinct !DILexicalBlock(scope: !163, file: !1, line: 211, column: 11)
!188 = !DILocation(line: 211, column: 12, scope: !187)
!189 = !DILocation(line: 211, column: 25, scope: !187)
!190 = !DILocation(line: 211, column: 11, scope: !163)
!191 = !DILocalVariable(name: "y", scope: !192, file: !1, line: 212, type: !49)
!192 = distinct !DILexicalBlock(scope: !187, file: !1, line: 211, column: 32)
!193 = !DILocation(line: 212, column: 18, scope: !192)
!194 = !DILocation(line: 212, column: 27, scope: !192)
!195 = !DILocation(line: 212, column: 29, scope: !192)
!196 = !DILocation(line: 212, column: 28, scope: !192)
!197 = !DILocation(line: 212, column: 25, scope: !192)
!198 = !DILocalVariable(name: "c1", scope: !192, file: !1, line: 213, type: !49)
!199 = !DILocation(line: 213, column: 18, scope: !192)
!200 = !DILocalVariable(name: "c2", scope: !192, file: !1, line: 214, type: !49)
!201 = !DILocation(line: 214, column: 18, scope: !192)
!202 = !DILocalVariable(name: "c3", scope: !192, file: !1, line: 215, type: !49)
!203 = !DILocation(line: 215, column: 18, scope: !192)
!204 = !DILocalVariable(name: "c4", scope: !192, file: !1, line: 216, type: !49)
!205 = !DILocation(line: 216, column: 18, scope: !192)
!206 = !DILocalVariable(name: "c5", scope: !192, file: !1, line: 217, type: !49)
!207 = !DILocation(line: 217, column: 18, scope: !192)
!208 = !DILocalVariable(name: "c6", scope: !192, file: !1, line: 218, type: !49)
!209 = !DILocation(line: 218, column: 18, scope: !192)
!210 = !DILocalVariable(name: "c7", scope: !192, file: !1, line: 219, type: !49)
!211 = !DILocation(line: 219, column: 18, scope: !192)
!212 = !DILocation(line: 220, column: 24, scope: !192)
!213 = !DILocation(line: 220, column: 23, scope: !192)
!214 = !DILocation(line: 220, column: 36, scope: !192)
!215 = !DILocation(line: 220, column: 44, scope: !192)
!216 = !DILocation(line: 220, column: 52, scope: !192)
!217 = !DILocation(line: 220, column: 60, scope: !192)
!218 = !DILocation(line: 220, column: 68, scope: !192)
!219 = !DILocation(line: 220, column: 76, scope: !192)
!220 = !DILocation(line: 220, column: 84, scope: !192)
!221 = !DILocation(line: 220, column: 85, scope: !192)
!222 = !DILocation(line: 220, column: 82, scope: !192)
!223 = !DILocation(line: 220, column: 77, scope: !192)
!224 = !DILocation(line: 220, column: 74, scope: !192)
!225 = !DILocation(line: 220, column: 69, scope: !192)
!226 = !DILocation(line: 220, column: 66, scope: !192)
!227 = !DILocation(line: 220, column: 61, scope: !192)
!228 = !DILocation(line: 220, column: 58, scope: !192)
!229 = !DILocation(line: 220, column: 53, scope: !192)
!230 = !DILocation(line: 220, column: 50, scope: !192)
!231 = !DILocation(line: 220, column: 45, scope: !192)
!232 = !DILocation(line: 220, column: 42, scope: !192)
!233 = !DILocation(line: 220, column: 37, scope: !192)
!234 = !DILocation(line: 220, column: 34, scope: !192)
!235 = !DILocation(line: 220, column: 27, scope: !192)
!236 = !DILocation(line: 220, column: 5, scope: !192)
!237 = !DILocation(line: 220, column: 13, scope: !192)
!238 = !DILocation(line: 220, column: 17, scope: !192)
!239 = !DILocation(line: 221, column: 48, scope: !192)
!240 = !DILocation(line: 221, column: 56, scope: !192)
!241 = !DILocation(line: 221, column: 43, scope: !192)
!242 = !DILocation(line: 221, column: 41, scope: !192)
!243 = !DILocation(line: 221, column: 5, scope: !192)
!244 = !DILocation(line: 221, column: 13, scope: !192)
!245 = !DILocation(line: 221, column: 17, scope: !192)
!246 = !DILocation(line: 222, column: 5, scope: !192)
!247 = !DILocation(line: 225, column: 5, scope: !248)
!248 = distinct !DILexicalBlock(scope: !187, file: !1, line: 224, column: 8)
!249 = distinct !{!249, !247}
!250 = !DILocation(line: 225, column: 5, scope: !251)
!251 = !DILexicalBlockFile(scope: !252, file: !1, discriminator: 1)
!252 = distinct !DILexicalBlock(scope: !248, file: !1, line: 225, column: 5)
!253 = distinct !{!253, !254}
!254 = !DILocation(line: 225, column: 5, scope: !252)
!255 = !DILocation(line: 225, column: 5, scope: !256)
!256 = !DILexicalBlockFile(scope: !257, file: !1, discriminator: 2)
!257 = distinct !DILexicalBlock(scope: !252, file: !1, line: 225, column: 5)
!258 = !DILocation(line: 225, column: 5, scope: !259)
!259 = !DILexicalBlockFile(scope: !252, file: !1, discriminator: 3)
!260 = !DILocation(line: 227, column: 1, scope: !45)
!261 = distinct !DISubprogram(name: "gsl_sf_legendre_Q1_e", scope: !1, file: !1, line: 231, type: !46, isLocal: false, isDefinition: true, scopeLine: 232, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!262 = !DILocalVariable(name: "x", arg: 1, scope: !261, file: !1, line: 231, type: !49)
!263 = !DILocation(line: 231, column: 35, scope: !261)
!264 = !DILocalVariable(name: "result", arg: 2, scope: !261, file: !1, line: 231, type: !51)
!265 = !DILocation(line: 231, column: 54, scope: !261)
!266 = !DILocation(line: 235, column: 6, scope: !267)
!267 = distinct !DILexicalBlock(scope: !261, file: !1, line: 235, column: 6)
!268 = !DILocation(line: 235, column: 8, scope: !267)
!269 = !DILocation(line: 235, column: 16, scope: !267)
!270 = !DILocation(line: 235, column: 19, scope: !271)
!271 = !DILexicalBlockFile(scope: !267, file: !1, discriminator: 1)
!272 = !DILocation(line: 235, column: 21, scope: !271)
!273 = !DILocation(line: 235, column: 6, scope: !271)
!274 = !DILocation(line: 236, column: 5, scope: !275)
!275 = distinct !DILexicalBlock(scope: !267, file: !1, line: 235, column: 29)
!276 = distinct !{!276, !274}
!277 = !DILocation(line: 236, column: 5, scope: !278)
!278 = !DILexicalBlockFile(scope: !279, file: !1, discriminator: 1)
!279 = distinct !DILexicalBlock(scope: !275, file: !1, line: 236, column: 5)
!280 = distinct !{!280, !281}
!281 = !DILocation(line: 236, column: 5, scope: !279)
!282 = !DILocation(line: 236, column: 5, scope: !283)
!283 = !DILexicalBlockFile(scope: !284, file: !1, discriminator: 2)
!284 = distinct !DILexicalBlock(scope: !279, file: !1, line: 236, column: 5)
!285 = !DILocation(line: 236, column: 5, scope: !286)
!286 = !DILexicalBlockFile(scope: !279, file: !1, discriminator: 3)
!287 = !DILocation(line: 237, column: 3, scope: !275)
!288 = !DILocation(line: 238, column: 11, scope: !289)
!289 = distinct !DILexicalBlock(scope: !267, file: !1, line: 238, column: 11)
!290 = !DILocation(line: 238, column: 13, scope: !289)
!291 = !DILocation(line: 238, column: 12, scope: !289)
!292 = !DILocation(line: 238, column: 15, scope: !289)
!293 = !DILocation(line: 238, column: 11, scope: !267)
!294 = !DILocalVariable(name: "c3", scope: !295, file: !1, line: 239, type: !49)
!295 = distinct !DILexicalBlock(scope: !289, file: !1, line: 238, column: 40)
!296 = !DILocation(line: 239, column: 18, scope: !295)
!297 = !DILocalVariable(name: "c5", scope: !295, file: !1, line: 240, type: !49)
!298 = !DILocation(line: 240, column: 18, scope: !295)
!299 = !DILocalVariable(name: "c7", scope: !295, file: !1, line: 241, type: !49)
!300 = !DILocation(line: 241, column: 18, scope: !295)
!301 = !DILocalVariable(name: "c9", scope: !295, file: !1, line: 242, type: !49)
!302 = !DILocation(line: 242, column: 18, scope: !295)
!303 = !DILocalVariable(name: "c11", scope: !295, file: !1, line: 243, type: !49)
!304 = !DILocation(line: 243, column: 18, scope: !295)
!305 = !DILocalVariable(name: "y", scope: !295, file: !1, line: 244, type: !49)
!306 = !DILocation(line: 244, column: 18, scope: !295)
!307 = !DILocation(line: 244, column: 22, scope: !295)
!308 = !DILocation(line: 244, column: 26, scope: !295)
!309 = !DILocation(line: 244, column: 24, scope: !295)
!310 = !DILocalVariable(name: "series", scope: !295, file: !1, line: 245, type: !49)
!311 = !DILocation(line: 245, column: 18, scope: !295)
!312 = !DILocation(line: 245, column: 33, scope: !295)
!313 = !DILocation(line: 245, column: 41, scope: !295)
!314 = !DILocation(line: 245, column: 49, scope: !295)
!315 = !DILocation(line: 245, column: 57, scope: !295)
!316 = !DILocation(line: 245, column: 65, scope: !295)
!317 = !DILocation(line: 245, column: 66, scope: !295)
!318 = !DILocation(line: 245, column: 63, scope: !295)
!319 = !DILocation(line: 245, column: 58, scope: !295)
!320 = !DILocation(line: 245, column: 55, scope: !295)
!321 = !DILocation(line: 245, column: 50, scope: !295)
!322 = !DILocation(line: 245, column: 47, scope: !295)
!323 = !DILocation(line: 245, column: 42, scope: !295)
!324 = !DILocation(line: 245, column: 39, scope: !295)
!325 = !DILocation(line: 245, column: 34, scope: !295)
!326 = !DILocation(line: 245, column: 31, scope: !295)
!327 = !DILocation(line: 246, column: 19, scope: !295)
!328 = !DILocation(line: 246, column: 23, scope: !295)
!329 = !DILocation(line: 246, column: 21, scope: !295)
!330 = !DILocation(line: 246, column: 27, scope: !295)
!331 = !DILocation(line: 246, column: 25, scope: !295)
!332 = !DILocation(line: 246, column: 34, scope: !295)
!333 = !DILocation(line: 246, column: 5, scope: !295)
!334 = !DILocation(line: 246, column: 13, scope: !295)
!335 = !DILocation(line: 246, column: 17, scope: !295)
!336 = !DILocation(line: 247, column: 48, scope: !295)
!337 = !DILocation(line: 247, column: 56, scope: !295)
!338 = !DILocation(line: 247, column: 43, scope: !295)
!339 = !DILocation(line: 247, column: 41, scope: !295)
!340 = !DILocation(line: 247, column: 5, scope: !295)
!341 = !DILocation(line: 247, column: 13, scope: !295)
!342 = !DILocation(line: 247, column: 17, scope: !295)
!343 = !DILocation(line: 248, column: 5, scope: !295)
!344 = !DILocation(line: 250, column: 11, scope: !345)
!345 = distinct !DILexicalBlock(scope: !289, file: !1, line: 250, column: 11)
!346 = !DILocation(line: 250, column: 13, scope: !345)
!347 = !DILocation(line: 250, column: 11, scope: !289)
!348 = !DILocation(line: 251, column: 25, scope: !349)
!349 = distinct !DILexicalBlock(scope: !345, file: !1, line: 250, column: 19)
!350 = !DILocation(line: 251, column: 23, scope: !349)
!351 = !DILocation(line: 251, column: 39, scope: !349)
!352 = !DILocation(line: 251, column: 38, scope: !349)
!353 = !DILocation(line: 251, column: 47, scope: !349)
!354 = !DILocation(line: 251, column: 46, scope: !349)
!355 = !DILocation(line: 251, column: 41, scope: !349)
!356 = !DILocation(line: 251, column: 30, scope: !349)
!357 = !DILocation(line: 251, column: 27, scope: !349)
!358 = !DILocation(line: 251, column: 52, scope: !349)
!359 = !DILocation(line: 251, column: 5, scope: !349)
!360 = !DILocation(line: 251, column: 13, scope: !349)
!361 = !DILocation(line: 251, column: 17, scope: !349)
!362 = !DILocation(line: 252, column: 49, scope: !349)
!363 = !DILocation(line: 252, column: 57, scope: !349)
!364 = !DILocation(line: 252, column: 44, scope: !349)
!365 = !DILocation(line: 252, column: 42, scope: !349)
!366 = !DILocation(line: 252, column: 5, scope: !349)
!367 = !DILocation(line: 252, column: 13, scope: !349)
!368 = !DILocation(line: 252, column: 18, scope: !349)
!369 = !DILocation(line: 253, column: 5, scope: !349)
!370 = !DILocation(line: 255, column: 11, scope: !371)
!371 = distinct !DILexicalBlock(scope: !345, file: !1, line: 255, column: 11)
!372 = !DILocation(line: 255, column: 13, scope: !371)
!373 = !DILocation(line: 255, column: 11, scope: !345)
!374 = !DILocation(line: 256, column: 25, scope: !375)
!375 = distinct !DILexicalBlock(scope: !371, file: !1, line: 255, column: 20)
!376 = !DILocation(line: 256, column: 23, scope: !375)
!377 = !DILocation(line: 256, column: 34, scope: !375)
!378 = !DILocation(line: 256, column: 35, scope: !375)
!379 = !DILocation(line: 256, column: 42, scope: !375)
!380 = !DILocation(line: 256, column: 43, scope: !375)
!381 = !DILocation(line: 256, column: 40, scope: !375)
!382 = !DILocation(line: 256, column: 29, scope: !375)
!383 = !DILocation(line: 256, column: 27, scope: !375)
!384 = !DILocation(line: 256, column: 50, scope: !375)
!385 = !DILocation(line: 256, column: 5, scope: !375)
!386 = !DILocation(line: 256, column: 13, scope: !375)
!387 = !DILocation(line: 256, column: 17, scope: !375)
!388 = !DILocation(line: 257, column: 48, scope: !375)
!389 = !DILocation(line: 257, column: 56, scope: !375)
!390 = !DILocation(line: 257, column: 43, scope: !375)
!391 = !DILocation(line: 257, column: 41, scope: !375)
!392 = !DILocation(line: 257, column: 5, scope: !375)
!393 = !DILocation(line: 257, column: 13, scope: !375)
!394 = !DILocation(line: 257, column: 17, scope: !375)
!395 = !DILocation(line: 258, column: 5, scope: !375)
!396 = !DILocation(line: 260, column: 11, scope: !397)
!397 = distinct !DILexicalBlock(scope: !371, file: !1, line: 260, column: 11)
!398 = !DILocation(line: 260, column: 12, scope: !397)
!399 = !DILocation(line: 260, column: 30, scope: !397)
!400 = !DILocation(line: 260, column: 11, scope: !371)
!401 = !DILocalVariable(name: "y", scope: !402, file: !1, line: 261, type: !49)
!402 = distinct !DILexicalBlock(scope: !397, file: !1, line: 260, column: 46)
!403 = !DILocation(line: 261, column: 18, scope: !402)
!404 = !DILocation(line: 261, column: 25, scope: !402)
!405 = !DILocation(line: 261, column: 27, scope: !402)
!406 = !DILocation(line: 261, column: 26, scope: !402)
!407 = !DILocation(line: 261, column: 23, scope: !402)
!408 = !DILocalVariable(name: "c1", scope: !402, file: !1, line: 262, type: !49)
!409 = !DILocation(line: 262, column: 18, scope: !402)
!410 = !DILocalVariable(name: "c2", scope: !402, file: !1, line: 263, type: !49)
!411 = !DILocation(line: 263, column: 18, scope: !402)
!412 = !DILocalVariable(name: "c3", scope: !402, file: !1, line: 264, type: !49)
!413 = !DILocation(line: 264, column: 18, scope: !402)
!414 = !DILocalVariable(name: "c4", scope: !402, file: !1, line: 265, type: !49)
!415 = !DILocation(line: 265, column: 18, scope: !402)
!416 = !DILocalVariable(name: "c5", scope: !402, file: !1, line: 266, type: !49)
!417 = !DILocation(line: 266, column: 18, scope: !402)
!418 = !DILocalVariable(name: "c6", scope: !402, file: !1, line: 267, type: !49)
!419 = !DILocation(line: 267, column: 18, scope: !402)
!420 = !DILocalVariable(name: "c7", scope: !402, file: !1, line: 268, type: !49)
!421 = !DILocation(line: 268, column: 18, scope: !402)
!422 = !DILocalVariable(name: "c8", scope: !402, file: !1, line: 269, type: !49)
!423 = !DILocation(line: 269, column: 18, scope: !402)
!424 = !DILocalVariable(name: "sum", scope: !402, file: !1, line: 270, type: !49)
!425 = !DILocation(line: 270, column: 18, scope: !402)
!426 = !DILocation(line: 270, column: 30, scope: !402)
!427 = !DILocation(line: 270, column: 38, scope: !402)
!428 = !DILocation(line: 270, column: 46, scope: !402)
!429 = !DILocation(line: 270, column: 54, scope: !402)
!430 = !DILocation(line: 270, column: 62, scope: !402)
!431 = !DILocation(line: 270, column: 70, scope: !402)
!432 = !DILocation(line: 270, column: 78, scope: !402)
!433 = !DILocation(line: 270, column: 86, scope: !402)
!434 = !DILocation(line: 270, column: 87, scope: !402)
!435 = !DILocation(line: 270, column: 84, scope: !402)
!436 = !DILocation(line: 270, column: 79, scope: !402)
!437 = !DILocation(line: 270, column: 76, scope: !402)
!438 = !DILocation(line: 270, column: 71, scope: !402)
!439 = !DILocation(line: 270, column: 68, scope: !402)
!440 = !DILocation(line: 270, column: 63, scope: !402)
!441 = !DILocation(line: 270, column: 60, scope: !402)
!442 = !DILocation(line: 270, column: 55, scope: !402)
!443 = !DILocation(line: 270, column: 52, scope: !402)
!444 = !DILocation(line: 270, column: 47, scope: !402)
!445 = !DILocation(line: 270, column: 44, scope: !402)
!446 = !DILocation(line: 270, column: 39, scope: !402)
!447 = !DILocation(line: 270, column: 36, scope: !402)
!448 = !DILocation(line: 270, column: 31, scope: !402)
!449 = !DILocation(line: 270, column: 28, scope: !402)
!450 = !DILocation(line: 271, column: 19, scope: !402)
!451 = !DILocation(line: 271, column: 30, scope: !402)
!452 = !DILocation(line: 271, column: 29, scope: !402)
!453 = !DILocation(line: 271, column: 32, scope: !402)
!454 = !DILocation(line: 271, column: 31, scope: !402)
!455 = !DILocation(line: 271, column: 23, scope: !402)
!456 = !DILocation(line: 271, column: 5, scope: !402)
!457 = !DILocation(line: 271, column: 13, scope: !402)
!458 = !DILocation(line: 271, column: 17, scope: !402)
!459 = !DILocation(line: 272, column: 48, scope: !402)
!460 = !DILocation(line: 272, column: 56, scope: !402)
!461 = !DILocation(line: 272, column: 43, scope: !402)
!462 = !DILocation(line: 272, column: 41, scope: !402)
!463 = !DILocation(line: 272, column: 5, scope: !402)
!464 = !DILocation(line: 272, column: 13, scope: !402)
!465 = !DILocation(line: 272, column: 17, scope: !402)
!466 = !DILocation(line: 273, column: 5, scope: !402)
!467 = !DILocation(line: 276, column: 5, scope: !468)
!468 = distinct !DILexicalBlock(scope: !397, file: !1, line: 275, column: 8)
!469 = distinct !{!469, !467}
!470 = !DILocation(line: 276, column: 5, scope: !471)
!471 = !DILexicalBlockFile(scope: !472, file: !1, discriminator: 1)
!472 = distinct !DILexicalBlock(scope: !468, file: !1, line: 276, column: 5)
!473 = distinct !{!473, !474}
!474 = !DILocation(line: 276, column: 5, scope: !472)
!475 = !DILocation(line: 276, column: 5, scope: !476)
!476 = !DILexicalBlockFile(scope: !477, file: !1, discriminator: 2)
!477 = distinct !DILexicalBlock(scope: !472, file: !1, line: 276, column: 5)
!478 = !DILocation(line: 276, column: 5, scope: !479)
!479 = !DILexicalBlockFile(scope: !472, file: !1, discriminator: 3)
!480 = !DILocation(line: 278, column: 1, scope: !261)
!481 = distinct !DISubprogram(name: "gsl_sf_legendre_Ql_e", scope: !1, file: !1, line: 282, type: !482, isLocal: false, isDefinition: true, scopeLine: 283, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!482 = !DISubroutineType(types: !483)
!483 = !{!48, !484, !49, !51}
!484 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !48)
!485 = !DILocalVariable(name: "l", arg: 1, scope: !481, file: !1, line: 282, type: !484)
!486 = !DILocation(line: 282, column: 32, scope: !481)
!487 = !DILocalVariable(name: "x", arg: 2, scope: !481, file: !1, line: 282, type: !49)
!488 = !DILocation(line: 282, column: 48, scope: !481)
!489 = !DILocalVariable(name: "result", arg: 3, scope: !481, file: !1, line: 282, type: !51)
!490 = !DILocation(line: 282, column: 67, scope: !481)
!491 = !DILocation(line: 286, column: 6, scope: !492)
!492 = distinct !DILexicalBlock(scope: !481, file: !1, line: 286, column: 6)
!493 = !DILocation(line: 286, column: 8, scope: !492)
!494 = !DILocation(line: 286, column: 16, scope: !492)
!495 = !DILocation(line: 286, column: 19, scope: !496)
!496 = !DILexicalBlockFile(scope: !492, file: !1, discriminator: 1)
!497 = !DILocation(line: 286, column: 21, scope: !496)
!498 = !DILocation(line: 286, column: 28, scope: !496)
!499 = !DILocation(line: 286, column: 31, scope: !500)
!500 = !DILexicalBlockFile(scope: !492, file: !1, discriminator: 2)
!501 = !DILocation(line: 286, column: 33, scope: !500)
!502 = !DILocation(line: 286, column: 6, scope: !500)
!503 = !DILocation(line: 287, column: 5, scope: !504)
!504 = distinct !DILexicalBlock(scope: !492, file: !1, line: 286, column: 38)
!505 = distinct !{!505, !503}
!506 = !DILocation(line: 287, column: 5, scope: !507)
!507 = !DILexicalBlockFile(scope: !508, file: !1, discriminator: 1)
!508 = distinct !DILexicalBlock(scope: !504, file: !1, line: 287, column: 5)
!509 = distinct !{!509, !510}
!510 = !DILocation(line: 287, column: 5, scope: !508)
!511 = !DILocation(line: 287, column: 5, scope: !512)
!512 = !DILexicalBlockFile(scope: !513, file: !1, discriminator: 2)
!513 = distinct !DILexicalBlock(scope: !508, file: !1, line: 287, column: 5)
!514 = !DILocation(line: 287, column: 5, scope: !515)
!515 = !DILexicalBlockFile(scope: !508, file: !1, discriminator: 3)
!516 = !DILocation(line: 288, column: 3, scope: !504)
!517 = !DILocation(line: 289, column: 11, scope: !518)
!518 = distinct !DILexicalBlock(scope: !492, file: !1, line: 289, column: 11)
!519 = !DILocation(line: 289, column: 13, scope: !518)
!520 = !DILocation(line: 289, column: 11, scope: !492)
!521 = !DILocation(line: 290, column: 33, scope: !522)
!522 = distinct !DILexicalBlock(scope: !518, file: !1, line: 289, column: 19)
!523 = !DILocation(line: 290, column: 36, scope: !522)
!524 = !DILocation(line: 290, column: 12, scope: !522)
!525 = !DILocation(line: 290, column: 5, scope: !522)
!526 = !DILocation(line: 292, column: 11, scope: !527)
!527 = distinct !DILexicalBlock(scope: !518, file: !1, line: 292, column: 11)
!528 = !DILocation(line: 292, column: 13, scope: !527)
!529 = !DILocation(line: 292, column: 11, scope: !518)
!530 = !DILocation(line: 293, column: 33, scope: !531)
!531 = distinct !DILexicalBlock(scope: !527, file: !1, line: 292, column: 19)
!532 = !DILocation(line: 293, column: 36, scope: !531)
!533 = !DILocation(line: 293, column: 12, scope: !531)
!534 = !DILocation(line: 293, column: 5, scope: !531)
!535 = !DILocation(line: 295, column: 11, scope: !536)
!536 = distinct !DILexicalBlock(scope: !527, file: !1, line: 295, column: 11)
!537 = !DILocation(line: 295, column: 13, scope: !536)
!538 = !DILocation(line: 295, column: 11, scope: !527)
!539 = !DILocation(line: 296, column: 35, scope: !540)
!540 = distinct !DILexicalBlock(scope: !536, file: !1, line: 295, column: 23)
!541 = !DILocation(line: 296, column: 38, scope: !540)
!542 = !DILocation(line: 296, column: 41, scope: !540)
!543 = !DILocation(line: 296, column: 12, scope: !540)
!544 = !DILocation(line: 296, column: 5, scope: !540)
!545 = !DILocation(line: 298, column: 11, scope: !546)
!546 = distinct !DILexicalBlock(scope: !536, file: !1, line: 298, column: 11)
!547 = !DILocation(line: 298, column: 13, scope: !546)
!548 = !DILocation(line: 298, column: 11, scope: !536)
!549 = !DILocalVariable(name: "Q0", scope: !550, file: !1, line: 301, type: !52)
!550 = distinct !DILexicalBlock(scope: !546, file: !1, line: 298, column: 19)
!551 = !DILocation(line: 301, column: 19, scope: !550)
!552 = !DILocalVariable(name: "Q1", scope: !550, file: !1, line: 301, type: !52)
!553 = !DILocation(line: 301, column: 23, scope: !550)
!554 = !DILocalVariable(name: "stat_Q0", scope: !550, file: !1, line: 302, type: !48)
!555 = !DILocation(line: 302, column: 9, scope: !550)
!556 = !DILocation(line: 302, column: 40, scope: !550)
!557 = !DILocation(line: 302, column: 19, scope: !550)
!558 = !DILocalVariable(name: "stat_Q1", scope: !550, file: !1, line: 303, type: !48)
!559 = !DILocation(line: 303, column: 9, scope: !550)
!560 = !DILocation(line: 303, column: 40, scope: !550)
!561 = !DILocation(line: 303, column: 19, scope: !550)
!562 = !DILocalVariable(name: "Qellm1", scope: !550, file: !1, line: 304, type: !50)
!563 = !DILocation(line: 304, column: 12, scope: !550)
!564 = !DILocation(line: 304, column: 24, scope: !550)
!565 = !DILocalVariable(name: "Qell", scope: !550, file: !1, line: 305, type: !50)
!566 = !DILocation(line: 305, column: 12, scope: !550)
!567 = !DILocation(line: 305, column: 24, scope: !550)
!568 = !DILocalVariable(name: "Qellp1", scope: !550, file: !1, line: 306, type: !50)
!569 = !DILocation(line: 306, column: 12, scope: !550)
!570 = !DILocalVariable(name: "ell", scope: !550, file: !1, line: 307, type: !48)
!571 = !DILocation(line: 307, column: 9, scope: !550)
!572 = !DILocation(line: 308, column: 12, scope: !573)
!573 = distinct !DILexicalBlock(scope: !550, file: !1, line: 308, column: 5)
!574 = !DILocation(line: 308, column: 9, scope: !573)
!575 = !DILocation(line: 308, column: 16, scope: !576)
!576 = !DILexicalBlockFile(scope: !577, file: !1, discriminator: 1)
!577 = distinct !DILexicalBlock(scope: !573, file: !1, line: 308, column: 5)
!578 = !DILocation(line: 308, column: 20, scope: !576)
!579 = !DILocation(line: 308, column: 19, scope: !576)
!580 = !DILocation(line: 308, column: 5, scope: !576)
!581 = !DILocation(line: 309, column: 17, scope: !582)
!582 = distinct !DILexicalBlock(scope: !577, file: !1, line: 308, column: 30)
!583 = !DILocation(line: 309, column: 24, scope: !582)
!584 = !DILocation(line: 309, column: 23, scope: !582)
!585 = !DILocation(line: 309, column: 28, scope: !582)
!586 = !DILocation(line: 309, column: 18, scope: !582)
!587 = !DILocation(line: 309, column: 37, scope: !582)
!588 = !DILocation(line: 309, column: 35, scope: !582)
!589 = !DILocation(line: 309, column: 44, scope: !582)
!590 = !DILocation(line: 309, column: 50, scope: !582)
!591 = !DILocation(line: 309, column: 48, scope: !582)
!592 = !DILocation(line: 309, column: 42, scope: !582)
!593 = !DILocation(line: 309, column: 61, scope: !582)
!594 = !DILocation(line: 309, column: 65, scope: !582)
!595 = !DILocation(line: 309, column: 58, scope: !582)
!596 = !DILocation(line: 309, column: 14, scope: !582)
!597 = !DILocation(line: 310, column: 16, scope: !582)
!598 = !DILocation(line: 310, column: 14, scope: !582)
!599 = !DILocation(line: 311, column: 16, scope: !582)
!600 = !DILocation(line: 311, column: 14, scope: !582)
!601 = !DILocation(line: 312, column: 5, scope: !582)
!602 = !DILocation(line: 308, column: 26, scope: !603)
!603 = !DILexicalBlockFile(scope: !577, file: !1, discriminator: 2)
!604 = !DILocation(line: 308, column: 5, scope: !603)
!605 = distinct !{!605, !606}
!606 = !DILocation(line: 308, column: 5, scope: !550)
!607 = !DILocation(line: 313, column: 19, scope: !550)
!608 = !DILocation(line: 313, column: 5, scope: !550)
!609 = !DILocation(line: 313, column: 13, scope: !550)
!610 = !DILocation(line: 313, column: 17, scope: !550)
!611 = !DILocation(line: 314, column: 37, scope: !550)
!612 = !DILocation(line: 314, column: 35, scope: !550)
!613 = !DILocation(line: 314, column: 46, scope: !550)
!614 = !DILocation(line: 314, column: 54, scope: !550)
!615 = !DILocation(line: 314, column: 41, scope: !550)
!616 = !DILocation(line: 314, column: 39, scope: !550)
!617 = !DILocation(line: 314, column: 5, scope: !550)
!618 = !DILocation(line: 314, column: 13, scope: !550)
!619 = !DILocation(line: 314, column: 17, scope: !550)
!620 = !DILocation(line: 315, column: 12, scope: !550)
!621 = !DILocation(line: 315, column: 12, scope: !622)
!622 = !DILexicalBlockFile(scope: !550, file: !1, discriminator: 1)
!623 = !DILocation(line: 315, column: 12, scope: !624)
!624 = !DILexicalBlockFile(scope: !550, file: !1, discriminator: 2)
!625 = !DILocation(line: 315, column: 12, scope: !626)
!626 = !DILexicalBlockFile(scope: !550, file: !1, discriminator: 3)
!627 = !DILocation(line: 315, column: 12, scope: !628)
!628 = !DILexicalBlockFile(scope: !550, file: !1, discriminator: 4)
!629 = !DILocation(line: 315, column: 12, scope: !630)
!630 = !DILexicalBlockFile(scope: !550, file: !1, discriminator: 5)
!631 = !DILocation(line: 315, column: 12, scope: !632)
!632 = !DILexicalBlockFile(scope: !550, file: !1, discriminator: 6)
!633 = !DILocation(line: 315, column: 5, scope: !632)
!634 = !DILocalVariable(name: "rat", scope: !635, file: !1, line: 320, type: !50)
!635 = distinct !DILexicalBlock(scope: !546, file: !1, line: 317, column: 8)
!636 = !DILocation(line: 320, column: 12, scope: !635)
!637 = !DILocalVariable(name: "stat_CF1", scope: !635, file: !1, line: 321, type: !48)
!638 = !DILocation(line: 321, column: 9, scope: !635)
!639 = !DILocation(line: 321, column: 40, scope: !635)
!640 = !DILocation(line: 321, column: 53, scope: !635)
!641 = !DILocation(line: 321, column: 21, scope: !635)
!642 = !DILocalVariable(name: "stat_Q", scope: !635, file: !1, line: 322, type: !48)
!643 = !DILocation(line: 322, column: 9, scope: !635)
!644 = !DILocalVariable(name: "Qellp1", scope: !635, file: !1, line: 323, type: !50)
!645 = !DILocation(line: 323, column: 12, scope: !635)
!646 = !DILocation(line: 323, column: 21, scope: !635)
!647 = !DILocation(line: 323, column: 25, scope: !635)
!648 = !DILocalVariable(name: "Qell", scope: !635, file: !1, line: 324, type: !50)
!649 = !DILocation(line: 324, column: 12, scope: !635)
!650 = !DILocalVariable(name: "Qellm1", scope: !635, file: !1, line: 325, type: !50)
!651 = !DILocation(line: 325, column: 12, scope: !635)
!652 = !DILocalVariable(name: "ell", scope: !635, file: !1, line: 326, type: !48)
!653 = !DILocation(line: 326, column: 9, scope: !635)
!654 = !DILocation(line: 327, column: 13, scope: !655)
!655 = distinct !DILexicalBlock(scope: !635, file: !1, line: 327, column: 5)
!656 = !DILocation(line: 327, column: 12, scope: !655)
!657 = !DILocation(line: 327, column: 9, scope: !655)
!658 = !DILocation(line: 327, column: 16, scope: !659)
!659 = !DILexicalBlockFile(scope: !660, file: !1, discriminator: 1)
!660 = distinct !DILexicalBlock(scope: !655, file: !1, line: 327, column: 5)
!661 = !DILocation(line: 327, column: 19, scope: !659)
!662 = !DILocation(line: 327, column: 5, scope: !659)
!663 = !DILocation(line: 328, column: 17, scope: !664)
!664 = distinct !DILexicalBlock(scope: !660, file: !1, line: 327, column: 30)
!665 = !DILocation(line: 328, column: 26, scope: !664)
!666 = !DILocation(line: 328, column: 25, scope: !664)
!667 = !DILocation(line: 328, column: 30, scope: !664)
!668 = !DILocation(line: 328, column: 19, scope: !664)
!669 = !DILocation(line: 328, column: 39, scope: !664)
!670 = !DILocation(line: 328, column: 37, scope: !664)
!671 = !DILocation(line: 328, column: 47, scope: !664)
!672 = !DILocation(line: 328, column: 50, scope: !664)
!673 = !DILocation(line: 328, column: 58, scope: !664)
!674 = !DILocation(line: 328, column: 56, scope: !664)
!675 = !DILocation(line: 328, column: 44, scope: !664)
!676 = !DILocation(line: 328, column: 68, scope: !664)
!677 = !DILocation(line: 328, column: 66, scope: !664)
!678 = !DILocation(line: 328, column: 14, scope: !664)
!679 = !DILocation(line: 329, column: 16, scope: !664)
!680 = !DILocation(line: 329, column: 14, scope: !664)
!681 = !DILocation(line: 330, column: 16, scope: !664)
!682 = !DILocation(line: 330, column: 14, scope: !664)
!683 = !DILocation(line: 331, column: 5, scope: !664)
!684 = !DILocation(line: 327, column: 26, scope: !685)
!685 = !DILexicalBlockFile(scope: !660, file: !1, discriminator: 2)
!686 = !DILocation(line: 327, column: 5, scope: !685)
!687 = distinct !{!687, !688}
!688 = !DILocation(line: 327, column: 5, scope: !635)
!689 = !DILocation(line: 333, column: 13, scope: !690)
!690 = distinct !DILexicalBlock(scope: !635, file: !1, line: 333, column: 8)
!691 = !DILocation(line: 333, column: 8, scope: !690)
!692 = !DILocation(line: 333, column: 26, scope: !690)
!693 = !DILocation(line: 333, column: 21, scope: !694)
!694 = !DILexicalBlockFile(scope: !690, file: !1, discriminator: 1)
!695 = !DILocation(line: 333, column: 19, scope: !690)
!696 = !DILocation(line: 333, column: 8, scope: !635)
!697 = !DILocalVariable(name: "Q0", scope: !698, file: !1, line: 334, type: !52)
!698 = distinct !DILexicalBlock(scope: !690, file: !1, line: 333, column: 35)
!699 = !DILocation(line: 334, column: 21, scope: !698)
!700 = !DILocation(line: 335, column: 37, scope: !698)
!701 = !DILocation(line: 335, column: 16, scope: !698)
!702 = !DILocation(line: 335, column: 14, scope: !698)
!703 = !DILocation(line: 336, column: 43, scope: !698)
!704 = !DILocation(line: 336, column: 38, scope: !698)
!705 = !DILocation(line: 336, column: 49, scope: !698)
!706 = !DILocation(line: 336, column: 47, scope: !698)
!707 = !DILocation(line: 336, column: 7, scope: !698)
!708 = !DILocation(line: 336, column: 15, scope: !698)
!709 = !DILocation(line: 336, column: 19, scope: !698)
!710 = !DILocation(line: 337, column: 21, scope: !698)
!711 = !DILocation(line: 337, column: 23, scope: !698)
!712 = !DILocation(line: 337, column: 48, scope: !698)
!713 = !DILocation(line: 337, column: 56, scope: !698)
!714 = !DILocation(line: 337, column: 43, scope: !698)
!715 = !DILocation(line: 337, column: 41, scope: !698)
!716 = !DILocation(line: 337, column: 7, scope: !698)
!717 = !DILocation(line: 337, column: 15, scope: !698)
!718 = !DILocation(line: 337, column: 19, scope: !698)
!719 = !DILocation(line: 338, column: 5, scope: !698)
!720 = !DILocalVariable(name: "Q1", scope: !721, file: !1, line: 340, type: !52)
!721 = distinct !DILexicalBlock(scope: !690, file: !1, line: 339, column: 10)
!722 = !DILocation(line: 340, column: 21, scope: !721)
!723 = !DILocation(line: 341, column: 37, scope: !721)
!724 = !DILocation(line: 341, column: 16, scope: !721)
!725 = !DILocation(line: 341, column: 14, scope: !721)
!726 = !DILocation(line: 342, column: 43, scope: !721)
!727 = !DILocation(line: 342, column: 38, scope: !721)
!728 = !DILocation(line: 342, column: 49, scope: !721)
!729 = !DILocation(line: 342, column: 47, scope: !721)
!730 = !DILocation(line: 342, column: 7, scope: !721)
!731 = !DILocation(line: 342, column: 15, scope: !721)
!732 = !DILocation(line: 342, column: 19, scope: !721)
!733 = !DILocation(line: 343, column: 21, scope: !721)
!734 = !DILocation(line: 343, column: 23, scope: !721)
!735 = !DILocation(line: 343, column: 48, scope: !721)
!736 = !DILocation(line: 343, column: 56, scope: !721)
!737 = !DILocation(line: 343, column: 43, scope: !721)
!738 = !DILocation(line: 343, column: 41, scope: !721)
!739 = !DILocation(line: 343, column: 7, scope: !721)
!740 = !DILocation(line: 343, column: 15, scope: !721)
!741 = !DILocation(line: 343, column: 19, scope: !721)
!742 = !DILocation(line: 346, column: 12, scope: !635)
!743 = !DILocation(line: 346, column: 12, scope: !744)
!744 = !DILexicalBlockFile(scope: !635, file: !1, discriminator: 1)
!745 = !DILocation(line: 346, column: 12, scope: !746)
!746 = !DILexicalBlockFile(scope: !635, file: !1, discriminator: 2)
!747 = !DILocation(line: 346, column: 12, scope: !748)
!748 = !DILexicalBlockFile(scope: !635, file: !1, discriminator: 3)
!749 = !DILocation(line: 346, column: 12, scope: !750)
!750 = !DILexicalBlockFile(scope: !635, file: !1, discriminator: 4)
!751 = !DILocation(line: 346, column: 12, scope: !752)
!752 = !DILexicalBlockFile(scope: !635, file: !1, discriminator: 5)
!753 = !DILocation(line: 346, column: 12, scope: !754)
!754 = !DILexicalBlockFile(scope: !635, file: !1, discriminator: 6)
!755 = !DILocation(line: 346, column: 5, scope: !754)
!756 = !DILocation(line: 348, column: 1, scope: !481)
!757 = distinct !DISubprogram(name: "legendre_Ql_asymp_unif", scope: !1, file: !1, line: 101, type: !758, isLocal: true, isDefinition: true, scopeLine: 102, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!758 = !DISubroutineType(types: !759)
!759 = !{!48, !49, !49, !51}
!760 = !DILocalVariable(name: "ell", arg: 1, scope: !757, file: !1, line: 101, type: !49)
!761 = !DILocation(line: 101, column: 37, scope: !757)
!762 = !DILocalVariable(name: "x", arg: 2, scope: !757, file: !1, line: 101, type: !49)
!763 = !DILocation(line: 101, column: 55, scope: !757)
!764 = !DILocalVariable(name: "result", arg: 3, scope: !757, file: !1, line: 101, type: !51)
!765 = !DILocation(line: 101, column: 74, scope: !757)
!766 = !DILocation(line: 103, column: 6, scope: !767)
!767 = distinct !DILexicalBlock(scope: !757, file: !1, line: 103, column: 6)
!768 = !DILocation(line: 103, column: 8, scope: !767)
!769 = !DILocation(line: 103, column: 6, scope: !757)
!770 = !DILocalVariable(name: "u", scope: !771, file: !1, line: 104, type: !50)
!771 = distinct !DILexicalBlock(scope: !767, file: !1, line: 103, column: 15)
!772 = !DILocation(line: 104, column: 12, scope: !771)
!773 = !DILocation(line: 104, column: 18, scope: !771)
!774 = !DILocation(line: 104, column: 22, scope: !771)
!775 = !DILocalVariable(name: "th", scope: !771, file: !1, line: 105, type: !50)
!776 = !DILocation(line: 105, column: 12, scope: !771)
!777 = !DILocation(line: 105, column: 23, scope: !771)
!778 = !DILocation(line: 105, column: 18, scope: !771)
!779 = !DILocalVariable(name: "Y0", scope: !771, file: !1, line: 106, type: !52)
!780 = !DILocation(line: 106, column: 19, scope: !771)
!781 = !DILocalVariable(name: "Y1", scope: !771, file: !1, line: 106, type: !52)
!782 = !DILocation(line: 106, column: 23, scope: !771)
!783 = !DILocalVariable(name: "stat_Y0", scope: !771, file: !1, line: 107, type: !48)
!784 = !DILocation(line: 107, column: 9, scope: !771)
!785 = !DILocalVariable(name: "stat_Y1", scope: !771, file: !1, line: 107, type: !48)
!786 = !DILocation(line: 107, column: 18, scope: !771)
!787 = !DILocalVariable(name: "stat_m", scope: !771, file: !1, line: 108, type: !48)
!788 = !DILocation(line: 108, column: 9, scope: !771)
!789 = !DILocalVariable(name: "pre", scope: !771, file: !1, line: 109, type: !50)
!790 = !DILocation(line: 109, column: 12, scope: !771)
!791 = !DILocalVariable(name: "B00", scope: !771, file: !1, line: 110, type: !50)
!792 = !DILocation(line: 110, column: 12, scope: !771)
!793 = !DILocalVariable(name: "sum", scope: !771, file: !1, line: 111, type: !50)
!794 = !DILocation(line: 111, column: 12, scope: !771)
!795 = !DILocation(line: 116, column: 8, scope: !796)
!796 = distinct !DILexicalBlock(scope: !771, file: !1, line: 116, column: 8)
!797 = !DILocation(line: 116, column: 11, scope: !796)
!798 = !DILocation(line: 116, column: 8, scope: !771)
!799 = !DILocation(line: 117, column: 20, scope: !800)
!800 = distinct !DILexicalBlock(scope: !796, file: !1, line: 116, column: 36)
!801 = !DILocation(line: 117, column: 23, scope: !800)
!802 = !DILocation(line: 117, column: 22, scope: !800)
!803 = !DILocation(line: 117, column: 25, scope: !800)
!804 = !DILocation(line: 117, column: 18, scope: !800)
!805 = !DILocation(line: 117, column: 31, scope: !800)
!806 = !DILocation(line: 117, column: 11, scope: !800)
!807 = !DILocation(line: 118, column: 19, scope: !800)
!808 = !DILocation(line: 118, column: 22, scope: !800)
!809 = !DILocation(line: 118, column: 21, scope: !800)
!810 = !DILocation(line: 118, column: 24, scope: !800)
!811 = !DILocation(line: 118, column: 17, scope: !800)
!812 = !DILocation(line: 118, column: 11, scope: !800)
!813 = !DILocation(line: 119, column: 5, scope: !800)
!814 = !DILocalVariable(name: "sin_th", scope: !815, file: !1, line: 121, type: !50)
!815 = distinct !DILexicalBlock(scope: !796, file: !1, line: 120, column: 10)
!816 = !DILocation(line: 121, column: 14, scope: !815)
!817 = !DILocation(line: 121, column: 34, scope: !815)
!818 = !DILocation(line: 121, column: 36, scope: !815)
!819 = !DILocation(line: 121, column: 35, scope: !815)
!820 = !DILocation(line: 121, column: 32, scope: !815)
!821 = !DILocation(line: 121, column: 23, scope: !815)
!822 = !DILocalVariable(name: "cot_th", scope: !815, file: !1, line: 122, type: !50)
!823 = !DILocation(line: 122, column: 14, scope: !815)
!824 = !DILocation(line: 122, column: 23, scope: !815)
!825 = !DILocation(line: 122, column: 27, scope: !815)
!826 = !DILocation(line: 122, column: 25, scope: !815)
!827 = !DILocation(line: 123, column: 30, scope: !815)
!828 = !DILocation(line: 123, column: 35, scope: !815)
!829 = !DILocation(line: 123, column: 33, scope: !815)
!830 = !DILocation(line: 123, column: 28, scope: !815)
!831 = !DILocation(line: 123, column: 21, scope: !815)
!832 = !DILocation(line: 123, column: 46, scope: !815)
!833 = !DILocation(line: 123, column: 49, scope: !815)
!834 = !DILocation(line: 123, column: 48, scope: !815)
!835 = !DILocation(line: 123, column: 43, scope: !815)
!836 = !DILocation(line: 123, column: 11, scope: !815)
!837 = !DILocation(line: 124, column: 18, scope: !815)
!838 = !DILocation(line: 124, column: 21, scope: !815)
!839 = !DILocation(line: 124, column: 20, scope: !815)
!840 = !DILocation(line: 124, column: 13, scope: !815)
!841 = !DILocation(line: 124, column: 11, scope: !815)
!842 = !DILocation(line: 127, column: 34, scope: !771)
!843 = !DILocation(line: 127, column: 36, scope: !771)
!844 = !DILocation(line: 127, column: 35, scope: !771)
!845 = !DILocation(line: 127, column: 15, scope: !771)
!846 = !DILocation(line: 127, column: 13, scope: !771)
!847 = !DILocation(line: 128, column: 34, scope: !771)
!848 = !DILocation(line: 128, column: 36, scope: !771)
!849 = !DILocation(line: 128, column: 35, scope: !771)
!850 = !DILocation(line: 128, column: 15, scope: !771)
!851 = !DILocation(line: 128, column: 13, scope: !771)
!852 = !DILocation(line: 130, column: 27, scope: !771)
!853 = !DILocation(line: 130, column: 33, scope: !771)
!854 = !DILocation(line: 130, column: 36, scope: !771)
!855 = !DILocation(line: 130, column: 35, scope: !771)
!856 = !DILocation(line: 130, column: 43, scope: !771)
!857 = !DILocation(line: 130, column: 38, scope: !771)
!858 = !DILocation(line: 130, column: 49, scope: !771)
!859 = !DILocation(line: 130, column: 47, scope: !771)
!860 = !DILocation(line: 130, column: 31, scope: !771)
!861 = !DILocation(line: 130, column: 21, scope: !771)
!862 = !DILocation(line: 130, column: 9, scope: !771)
!863 = !DILocation(line: 132, column: 32, scope: !771)
!864 = !DILocation(line: 132, column: 37, scope: !771)
!865 = !DILocation(line: 132, column: 42, scope: !771)
!866 = !DILocation(line: 132, column: 14, scope: !771)
!867 = !DILocation(line: 132, column: 12, scope: !771)
!868 = !DILocation(line: 133, column: 36, scope: !771)
!869 = !DILocation(line: 133, column: 31, scope: !771)
!870 = !DILocation(line: 133, column: 29, scope: !771)
!871 = !DILocation(line: 133, column: 47, scope: !771)
!872 = !DILocation(line: 133, column: 58, scope: !771)
!873 = !DILocation(line: 133, column: 61, scope: !771)
!874 = !DILocation(line: 133, column: 60, scope: !771)
!875 = !DILocation(line: 133, column: 63, scope: !771)
!876 = !DILocation(line: 133, column: 62, scope: !771)
!877 = !DILocation(line: 133, column: 53, scope: !878)
!878 = !DILexicalBlockFile(scope: !771, file: !1, discriminator: 1)
!879 = !DILocation(line: 133, column: 71, scope: !771)
!880 = !DILocation(line: 133, column: 67, scope: !771)
!881 = !DILocation(line: 133, column: 51, scope: !771)
!882 = !DILocation(line: 133, column: 41, scope: !771)
!883 = !DILocation(line: 133, column: 5, scope: !771)
!884 = !DILocation(line: 133, column: 13, scope: !771)
!885 = !DILocation(line: 133, column: 17, scope: !771)
!886 = !DILocation(line: 134, column: 43, scope: !771)
!887 = !DILocation(line: 134, column: 51, scope: !771)
!888 = !DILocation(line: 134, column: 38, scope: !771)
!889 = !DILocation(line: 134, column: 36, scope: !771)
!890 = !DILocation(line: 134, column: 5, scope: !771)
!891 = !DILocation(line: 134, column: 13, scope: !771)
!892 = !DILocation(line: 134, column: 17, scope: !771)
!893 = !DILocation(line: 136, column: 12, scope: !771)
!894 = !DILocation(line: 136, column: 12, scope: !878)
!895 = !DILocation(line: 136, column: 12, scope: !896)
!896 = !DILexicalBlockFile(scope: !771, file: !1, discriminator: 2)
!897 = !DILocation(line: 136, column: 12, scope: !898)
!898 = !DILexicalBlockFile(scope: !771, file: !1, discriminator: 3)
!899 = !DILocation(line: 136, column: 12, scope: !900)
!900 = !DILexicalBlockFile(scope: !771, file: !1, discriminator: 4)
!901 = !DILocation(line: 136, column: 12, scope: !902)
!902 = !DILexicalBlockFile(scope: !771, file: !1, discriminator: 5)
!903 = !DILocation(line: 136, column: 12, scope: !904)
!904 = !DILexicalBlockFile(scope: !771, file: !1, discriminator: 6)
!905 = !DILocation(line: 136, column: 12, scope: !906)
!906 = !DILexicalBlockFile(scope: !771, file: !1, discriminator: 7)
!907 = !DILocation(line: 136, column: 12, scope: !908)
!908 = !DILexicalBlockFile(scope: !771, file: !1, discriminator: 8)
!909 = !DILocation(line: 136, column: 12, scope: !910)
!910 = !DILexicalBlockFile(scope: !771, file: !1, discriminator: 9)
!911 = !DILocation(line: 136, column: 5, scope: !910)
!912 = !DILocalVariable(name: "u", scope: !913, file: !1, line: 139, type: !50)
!913 = distinct !DILexicalBlock(scope: !767, file: !1, line: 138, column: 8)
!914 = !DILocation(line: 139, column: 12, scope: !913)
!915 = !DILocation(line: 139, column: 18, scope: !913)
!916 = !DILocation(line: 139, column: 22, scope: !913)
!917 = !DILocalVariable(name: "xi", scope: !913, file: !1, line: 140, type: !50)
!918 = !DILocation(line: 140, column: 12, scope: !913)
!919 = !DILocation(line: 140, column: 24, scope: !913)
!920 = !DILocation(line: 140, column: 18, scope: !913)
!921 = !DILocalVariable(name: "K0_scaled", scope: !913, file: !1, line: 141, type: !52)
!922 = !DILocation(line: 141, column: 19, scope: !913)
!923 = !DILocalVariable(name: "K1_scaled", scope: !913, file: !1, line: 141, type: !52)
!924 = !DILocation(line: 141, column: 30, scope: !913)
!925 = !DILocalVariable(name: "stat_K0", scope: !913, file: !1, line: 142, type: !48)
!926 = !DILocation(line: 142, column: 9, scope: !913)
!927 = !DILocalVariable(name: "stat_K1", scope: !913, file: !1, line: 142, type: !48)
!928 = !DILocation(line: 142, column: 18, scope: !913)
!929 = !DILocalVariable(name: "stat_e", scope: !913, file: !1, line: 143, type: !48)
!930 = !DILocation(line: 143, column: 9, scope: !913)
!931 = !DILocalVariable(name: "pre", scope: !913, file: !1, line: 144, type: !50)
!932 = !DILocation(line: 144, column: 12, scope: !913)
!933 = !DILocalVariable(name: "B00", scope: !913, file: !1, line: 145, type: !50)
!934 = !DILocation(line: 145, column: 12, scope: !913)
!935 = !DILocalVariable(name: "sum", scope: !913, file: !1, line: 146, type: !50)
!936 = !DILocation(line: 146, column: 12, scope: !913)
!937 = !DILocation(line: 151, column: 8, scope: !938)
!938 = distinct !DILexicalBlock(scope: !913, file: !1, line: 151, column: 8)
!939 = !DILocation(line: 151, column: 11, scope: !938)
!940 = !DILocation(line: 151, column: 8, scope: !913)
!941 = !DILocation(line: 152, column: 18, scope: !942)
!942 = distinct !DILexicalBlock(scope: !938, file: !1, line: 151, column: 36)
!943 = !DILocation(line: 152, column: 21, scope: !942)
!944 = !DILocation(line: 152, column: 20, scope: !942)
!945 = !DILocation(line: 152, column: 23, scope: !942)
!946 = !DILocation(line: 152, column: 17, scope: !942)
!947 = !DILocation(line: 152, column: 29, scope: !942)
!948 = !DILocation(line: 152, column: 11, scope: !942)
!949 = !DILocation(line: 153, column: 19, scope: !942)
!950 = !DILocation(line: 153, column: 22, scope: !942)
!951 = !DILocation(line: 153, column: 21, scope: !942)
!952 = !DILocation(line: 153, column: 24, scope: !942)
!953 = !DILocation(line: 153, column: 17, scope: !942)
!954 = !DILocation(line: 153, column: 11, scope: !942)
!955 = !DILocation(line: 154, column: 5, scope: !942)
!956 = !DILocalVariable(name: "sinh_xi", scope: !957, file: !1, line: 156, type: !50)
!957 = distinct !DILexicalBlock(scope: !938, file: !1, line: 155, column: 10)
!958 = !DILocation(line: 156, column: 14, scope: !957)
!959 = !DILocation(line: 156, column: 29, scope: !957)
!960 = !DILocation(line: 156, column: 31, scope: !957)
!961 = !DILocation(line: 156, column: 30, scope: !957)
!962 = !DILocation(line: 156, column: 33, scope: !957)
!963 = !DILocation(line: 156, column: 24, scope: !957)
!964 = !DILocalVariable(name: "coth_xi", scope: !957, file: !1, line: 157, type: !50)
!965 = !DILocation(line: 157, column: 14, scope: !957)
!966 = !DILocation(line: 157, column: 24, scope: !957)
!967 = !DILocation(line: 157, column: 28, scope: !957)
!968 = !DILocation(line: 157, column: 26, scope: !957)
!969 = !DILocation(line: 158, column: 31, scope: !957)
!970 = !DILocation(line: 158, column: 36, scope: !957)
!971 = !DILocation(line: 158, column: 34, scope: !957)
!972 = !DILocation(line: 158, column: 29, scope: !957)
!973 = !DILocation(line: 158, column: 22, scope: !957)
!974 = !DILocation(line: 158, column: 48, scope: !957)
!975 = !DILocation(line: 158, column: 51, scope: !957)
!976 = !DILocation(line: 158, column: 50, scope: !957)
!977 = !DILocation(line: 158, column: 45, scope: !957)
!978 = !DILocation(line: 158, column: 11, scope: !957)
!979 = !DILocation(line: 159, column: 18, scope: !957)
!980 = !DILocation(line: 159, column: 21, scope: !957)
!981 = !DILocation(line: 159, column: 20, scope: !957)
!982 = !DILocation(line: 159, column: 13, scope: !957)
!983 = !DILocation(line: 159, column: 11, scope: !957)
!984 = !DILocation(line: 162, column: 41, scope: !913)
!985 = !DILocation(line: 162, column: 43, scope: !913)
!986 = !DILocation(line: 162, column: 42, scope: !913)
!987 = !DILocation(line: 162, column: 15, scope: !913)
!988 = !DILocation(line: 162, column: 13, scope: !913)
!989 = !DILocation(line: 163, column: 41, scope: !913)
!990 = !DILocation(line: 163, column: 43, scope: !913)
!991 = !DILocation(line: 163, column: 42, scope: !913)
!992 = !DILocation(line: 163, column: 15, scope: !913)
!993 = !DILocation(line: 163, column: 13, scope: !913)
!994 = !DILocation(line: 165, column: 21, scope: !913)
!995 = !DILocation(line: 165, column: 27, scope: !913)
!996 = !DILocation(line: 165, column: 30, scope: !913)
!997 = !DILocation(line: 165, column: 29, scope: !913)
!998 = !DILocation(line: 165, column: 44, scope: !913)
!999 = !DILocation(line: 165, column: 32, scope: !913)
!1000 = !DILocation(line: 165, column: 50, scope: !913)
!1001 = !DILocation(line: 165, column: 48, scope: !913)
!1002 = !DILocation(line: 165, column: 25, scope: !913)
!1003 = !DILocation(line: 165, column: 9, scope: !913)
!1004 = !DILocation(line: 167, column: 33, scope: !913)
!1005 = !DILocation(line: 167, column: 32, scope: !913)
!1006 = !DILocation(line: 167, column: 35, scope: !913)
!1007 = !DILocation(line: 167, column: 34, scope: !913)
!1008 = !DILocation(line: 167, column: 39, scope: !913)
!1009 = !DILocation(line: 167, column: 45, scope: !913)
!1010 = !DILocation(line: 167, column: 43, scope: !913)
!1011 = !DILocation(line: 167, column: 50, scope: !913)
!1012 = !DILocation(line: 167, column: 14, scope: !913)
!1013 = !DILocation(line: 167, column: 12, scope: !913)
!1014 = !DILocation(line: 168, column: 43, scope: !913)
!1015 = !DILocation(line: 168, column: 51, scope: !913)
!1016 = !DILocation(line: 168, column: 38, scope: !913)
!1017 = !DILocation(line: 168, column: 36, scope: !913)
!1018 = !DILocation(line: 168, column: 63, scope: !913)
!1019 = !DILocation(line: 168, column: 65, scope: !913)
!1020 = !DILocation(line: 168, column: 64, scope: !913)
!1021 = !DILocation(line: 168, column: 58, scope: !1022)
!1022 = !DILexicalBlockFile(scope: !913, file: !1, discriminator: 1)
!1023 = !DILocation(line: 168, column: 56, scope: !913)
!1024 = !DILocation(line: 168, column: 5, scope: !913)
!1025 = !DILocation(line: 168, column: 13, scope: !913)
!1026 = !DILocation(line: 168, column: 18, scope: !913)
!1027 = !DILocation(line: 169, column: 49, scope: !913)
!1028 = !DILocation(line: 169, column: 57, scope: !913)
!1029 = !DILocation(line: 169, column: 44, scope: !913)
!1030 = !DILocation(line: 169, column: 42, scope: !913)
!1031 = !DILocation(line: 169, column: 5, scope: !913)
!1032 = !DILocation(line: 169, column: 13, scope: !913)
!1033 = !DILocation(line: 169, column: 17, scope: !913)
!1034 = !DILocation(line: 171, column: 12, scope: !913)
!1035 = !DILocation(line: 171, column: 12, scope: !1022)
!1036 = !DILocation(line: 171, column: 12, scope: !1037)
!1037 = !DILexicalBlockFile(scope: !913, file: !1, discriminator: 2)
!1038 = !DILocation(line: 171, column: 12, scope: !1039)
!1039 = !DILexicalBlockFile(scope: !913, file: !1, discriminator: 3)
!1040 = !DILocation(line: 171, column: 12, scope: !1041)
!1041 = !DILexicalBlockFile(scope: !913, file: !1, discriminator: 4)
!1042 = !DILocation(line: 171, column: 12, scope: !1043)
!1043 = !DILexicalBlockFile(scope: !913, file: !1, discriminator: 5)
!1044 = !DILocation(line: 171, column: 12, scope: !1045)
!1045 = !DILexicalBlockFile(scope: !913, file: !1, discriminator: 6)
!1046 = !DILocation(line: 171, column: 12, scope: !1047)
!1047 = !DILexicalBlockFile(scope: !913, file: !1, discriminator: 7)
!1048 = !DILocation(line: 171, column: 12, scope: !1049)
!1049 = !DILexicalBlockFile(scope: !913, file: !1, discriminator: 8)
!1050 = !DILocation(line: 171, column: 12, scope: !1051)
!1051 = !DILexicalBlockFile(scope: !913, file: !1, discriminator: 9)
!1052 = !DILocation(line: 171, column: 5, scope: !1051)
!1053 = !DILocation(line: 173, column: 1, scope: !757)
!1054 = distinct !DISubprogram(name: "legendreQ_CF1_xgt1", scope: !1, file: !1, line: 39, type: !1055, isLocal: true, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!1055 = !DISubroutineType(types: !1056)
!1056 = !{!48, !48, !50, !50, !50, !1057}
!1057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64, align: 64)
!1058 = !DILocalVariable(name: "ell", arg: 1, scope: !1054, file: !1, line: 39, type: !48)
!1059 = !DILocation(line: 39, column: 24, scope: !1054)
!1060 = !DILocalVariable(name: "a", arg: 2, scope: !1054, file: !1, line: 39, type: !50)
!1061 = !DILocation(line: 39, column: 36, scope: !1054)
!1062 = !DILocalVariable(name: "b", arg: 3, scope: !1054, file: !1, line: 39, type: !50)
!1063 = !DILocation(line: 39, column: 46, scope: !1054)
!1064 = !DILocalVariable(name: "x", arg: 4, scope: !1054, file: !1, line: 39, type: !50)
!1065 = !DILocation(line: 39, column: 56, scope: !1054)
!1066 = !DILocalVariable(name: "result", arg: 5, scope: !1054, file: !1, line: 39, type: !1057)
!1067 = !DILocation(line: 39, column: 68, scope: !1054)
!1068 = !DILocalVariable(name: "RECUR_BIG", scope: !1054, file: !1, line: 41, type: !49)
!1069 = !DILocation(line: 41, column: 16, scope: !1054)
!1070 = !DILocalVariable(name: "maxiter", scope: !1054, file: !1, line: 42, type: !484)
!1071 = !DILocation(line: 42, column: 13, scope: !1054)
!1072 = !DILocalVariable(name: "n", scope: !1054, file: !1, line: 43, type: !48)
!1073 = !DILocation(line: 43, column: 7, scope: !1054)
!1074 = !DILocalVariable(name: "Anm2", scope: !1054, file: !1, line: 44, type: !50)
!1075 = !DILocation(line: 44, column: 10, scope: !1054)
!1076 = !DILocalVariable(name: "Bnm2", scope: !1054, file: !1, line: 45, type: !50)
!1077 = !DILocation(line: 45, column: 10, scope: !1054)
!1078 = !DILocalVariable(name: "Anm1", scope: !1054, file: !1, line: 46, type: !50)
!1079 = !DILocation(line: 46, column: 10, scope: !1054)
!1080 = !DILocalVariable(name: "Bnm1", scope: !1054, file: !1, line: 47, type: !50)
!1081 = !DILocation(line: 47, column: 10, scope: !1054)
!1082 = !DILocalVariable(name: "a1", scope: !1054, file: !1, line: 48, type: !50)
!1083 = !DILocation(line: 48, column: 10, scope: !1054)
!1084 = !DILocation(line: 48, column: 15, scope: !1054)
!1085 = !DILocation(line: 48, column: 19, scope: !1054)
!1086 = !DILocation(line: 48, column: 27, scope: !1054)
!1087 = !DILocation(line: 48, column: 25, scope: !1054)
!1088 = !DILocation(line: 48, column: 31, scope: !1054)
!1089 = !DILocation(line: 48, column: 29, scope: !1054)
!1090 = !DILocalVariable(name: "b1", scope: !1054, file: !1, line: 49, type: !50)
!1091 = !DILocation(line: 49, column: 10, scope: !1054)
!1092 = !DILocation(line: 49, column: 21, scope: !1054)
!1093 = !DILocation(line: 49, column: 24, scope: !1054)
!1094 = !DILocation(line: 49, column: 29, scope: !1054)
!1095 = !DILocation(line: 49, column: 28, scope: !1054)
!1096 = !DILocation(line: 49, column: 19, scope: !1054)
!1097 = !DILocation(line: 49, column: 32, scope: !1054)
!1098 = !DILocation(line: 49, column: 41, scope: !1054)
!1099 = !DILocation(line: 49, column: 39, scope: !1054)
!1100 = !DILocalVariable(name: "An", scope: !1054, file: !1, line: 50, type: !50)
!1101 = !DILocation(line: 50, column: 10, scope: !1054)
!1102 = !DILocation(line: 50, column: 15, scope: !1054)
!1103 = !DILocation(line: 50, column: 18, scope: !1054)
!1104 = !DILocation(line: 50, column: 17, scope: !1054)
!1105 = !DILocation(line: 50, column: 25, scope: !1054)
!1106 = !DILocation(line: 50, column: 28, scope: !1054)
!1107 = !DILocation(line: 50, column: 27, scope: !1054)
!1108 = !DILocation(line: 50, column: 23, scope: !1054)
!1109 = !DILocalVariable(name: "Bn", scope: !1054, file: !1, line: 51, type: !50)
!1110 = !DILocation(line: 51, column: 10, scope: !1054)
!1111 = !DILocation(line: 51, column: 15, scope: !1054)
!1112 = !DILocation(line: 51, column: 18, scope: !1054)
!1113 = !DILocation(line: 51, column: 17, scope: !1054)
!1114 = !DILocation(line: 51, column: 25, scope: !1054)
!1115 = !DILocation(line: 51, column: 28, scope: !1054)
!1116 = !DILocation(line: 51, column: 27, scope: !1054)
!1117 = !DILocation(line: 51, column: 23, scope: !1054)
!1118 = !DILocalVariable(name: "an", scope: !1054, file: !1, line: 52, type: !50)
!1119 = !DILocation(line: 52, column: 10, scope: !1054)
!1120 = !DILocalVariable(name: "bn", scope: !1054, file: !1, line: 52, type: !50)
!1121 = !DILocation(line: 52, column: 14, scope: !1054)
!1122 = !DILocalVariable(name: "fn", scope: !1054, file: !1, line: 53, type: !50)
!1123 = !DILocation(line: 53, column: 10, scope: !1054)
!1124 = !DILocation(line: 53, column: 15, scope: !1054)
!1125 = !DILocation(line: 53, column: 18, scope: !1054)
!1126 = !DILocation(line: 53, column: 17, scope: !1054)
!1127 = !DILocation(line: 55, column: 3, scope: !1054)
!1128 = !DILocation(line: 55, column: 9, scope: !1129)
!1129 = !DILexicalBlockFile(scope: !1054, file: !1, discriminator: 1)
!1130 = !DILocation(line: 55, column: 11, scope: !1129)
!1131 = !DILocation(line: 55, column: 3, scope: !1129)
!1132 = !DILocalVariable(name: "old_fn", scope: !1133, file: !1, line: 56, type: !50)
!1133 = distinct !DILexicalBlock(scope: !1054, file: !1, line: 55, column: 22)
!1134 = !DILocation(line: 56, column: 12, scope: !1133)
!1135 = !DILocalVariable(name: "del", scope: !1133, file: !1, line: 57, type: !50)
!1136 = !DILocation(line: 57, column: 12, scope: !1133)
!1137 = !DILocalVariable(name: "lna", scope: !1133, file: !1, line: 58, type: !50)
!1138 = !DILocation(line: 58, column: 12, scope: !1133)
!1139 = !DILocation(line: 59, column: 6, scope: !1133)
!1140 = !DILocation(line: 60, column: 12, scope: !1133)
!1141 = !DILocation(line: 60, column: 10, scope: !1133)
!1142 = !DILocation(line: 61, column: 12, scope: !1133)
!1143 = !DILocation(line: 61, column: 10, scope: !1133)
!1144 = !DILocation(line: 62, column: 12, scope: !1133)
!1145 = !DILocation(line: 62, column: 10, scope: !1133)
!1146 = !DILocation(line: 63, column: 12, scope: !1133)
!1147 = !DILocation(line: 63, column: 10, scope: !1133)
!1148 = !DILocation(line: 64, column: 11, scope: !1133)
!1149 = !DILocation(line: 64, column: 17, scope: !1133)
!1150 = !DILocation(line: 64, column: 15, scope: !1133)
!1151 = !DILocation(line: 64, column: 21, scope: !1133)
!1152 = !DILocation(line: 64, column: 19, scope: !1133)
!1153 = !DILocation(line: 64, column: 9, scope: !1133)
!1154 = !DILocation(line: 65, column: 10, scope: !1133)
!1155 = !DILocation(line: 65, column: 12, scope: !1133)
!1156 = !DILocation(line: 65, column: 11, scope: !1133)
!1157 = !DILocation(line: 65, column: 16, scope: !1133)
!1158 = !DILocation(line: 65, column: 20, scope: !1133)
!1159 = !DILocation(line: 65, column: 19, scope: !1133)
!1160 = !DILocation(line: 65, column: 14, scope: !1133)
!1161 = !DILocation(line: 65, column: 8, scope: !1133)
!1162 = !DILocation(line: 66, column: 15, scope: !1133)
!1163 = !DILocation(line: 66, column: 14, scope: !1133)
!1164 = !DILocation(line: 66, column: 19, scope: !1133)
!1165 = !DILocation(line: 66, column: 28, scope: !1133)
!1166 = !DILocation(line: 66, column: 26, scope: !1133)
!1167 = !DILocation(line: 66, column: 8, scope: !1133)
!1168 = !DILocation(line: 67, column: 10, scope: !1133)
!1169 = !DILocation(line: 67, column: 13, scope: !1133)
!1170 = !DILocation(line: 67, column: 12, scope: !1133)
!1171 = !DILocation(line: 67, column: 20, scope: !1133)
!1172 = !DILocation(line: 67, column: 23, scope: !1133)
!1173 = !DILocation(line: 67, column: 22, scope: !1133)
!1174 = !DILocation(line: 67, column: 18, scope: !1133)
!1175 = !DILocation(line: 67, column: 8, scope: !1133)
!1176 = !DILocation(line: 68, column: 10, scope: !1133)
!1177 = !DILocation(line: 68, column: 13, scope: !1133)
!1178 = !DILocation(line: 68, column: 12, scope: !1133)
!1179 = !DILocation(line: 68, column: 20, scope: !1133)
!1180 = !DILocation(line: 68, column: 23, scope: !1133)
!1181 = !DILocation(line: 68, column: 22, scope: !1133)
!1182 = !DILocation(line: 68, column: 18, scope: !1133)
!1183 = !DILocation(line: 68, column: 8, scope: !1133)
!1184 = !DILocation(line: 70, column: 13, scope: !1185)
!1185 = distinct !DILexicalBlock(scope: !1133, file: !1, line: 70, column: 8)
!1186 = !DILocation(line: 70, column: 8, scope: !1185)
!1187 = !DILocation(line: 70, column: 17, scope: !1185)
!1188 = !DILocation(line: 70, column: 29, scope: !1185)
!1189 = !DILocation(line: 70, column: 37, scope: !1190)
!1190 = !DILexicalBlockFile(scope: !1185, file: !1, discriminator: 1)
!1191 = !DILocation(line: 70, column: 32, scope: !1190)
!1192 = !DILocation(line: 70, column: 41, scope: !1190)
!1193 = !DILocation(line: 70, column: 8, scope: !1190)
!1194 = !DILocation(line: 71, column: 10, scope: !1195)
!1195 = distinct !DILexicalBlock(scope: !1185, file: !1, line: 70, column: 54)
!1196 = !DILocation(line: 72, column: 10, scope: !1195)
!1197 = !DILocation(line: 73, column: 12, scope: !1195)
!1198 = !DILocation(line: 74, column: 12, scope: !1195)
!1199 = !DILocation(line: 75, column: 12, scope: !1195)
!1200 = !DILocation(line: 76, column: 12, scope: !1195)
!1201 = !DILocation(line: 77, column: 5, scope: !1195)
!1202 = !DILocation(line: 79, column: 14, scope: !1133)
!1203 = !DILocation(line: 79, column: 12, scope: !1133)
!1204 = !DILocation(line: 80, column: 10, scope: !1133)
!1205 = !DILocation(line: 80, column: 13, scope: !1133)
!1206 = !DILocation(line: 80, column: 12, scope: !1133)
!1207 = !DILocation(line: 80, column: 8, scope: !1133)
!1208 = !DILocation(line: 81, column: 11, scope: !1133)
!1209 = !DILocation(line: 81, column: 18, scope: !1133)
!1210 = !DILocation(line: 81, column: 17, scope: !1133)
!1211 = !DILocation(line: 81, column: 9, scope: !1133)
!1212 = !DILocation(line: 83, column: 13, scope: !1213)
!1213 = distinct !DILexicalBlock(scope: !1133, file: !1, line: 83, column: 8)
!1214 = !DILocation(line: 83, column: 17, scope: !1213)
!1215 = !DILocation(line: 83, column: 8, scope: !1213)
!1216 = !DILocation(line: 83, column: 24, scope: !1213)
!1217 = !DILocation(line: 83, column: 8, scope: !1133)
!1218 = !DILocation(line: 83, column: 47, scope: !1219)
!1219 = !DILexicalBlockFile(scope: !1213, file: !1, discriminator: 1)
!1220 = !DILocation(line: 55, column: 3, scope: !1221)
!1221 = !DILexicalBlockFile(scope: !1054, file: !1, discriminator: 2)
!1222 = distinct !{!1222, !1127}
!1223 = !DILocation(line: 86, column: 13, scope: !1054)
!1224 = !DILocation(line: 86, column: 4, scope: !1054)
!1225 = !DILocation(line: 86, column: 11, scope: !1054)
!1226 = !DILocation(line: 88, column: 6, scope: !1227)
!1227 = distinct !DILexicalBlock(scope: !1054, file: !1, line: 88, column: 6)
!1228 = !DILocation(line: 88, column: 8, scope: !1227)
!1229 = !DILocation(line: 88, column: 6, scope: !1054)
!1230 = !DILocation(line: 89, column: 5, scope: !1227)
!1231 = distinct !{!1231, !1230}
!1232 = !DILocation(line: 89, column: 5, scope: !1233)
!1233 = !DILexicalBlockFile(scope: !1234, file: !1, discriminator: 1)
!1234 = distinct !DILexicalBlock(scope: !1227, file: !1, line: 89, column: 5)
!1235 = !DILocation(line: 89, column: 5, scope: !1236)
!1236 = !DILexicalBlockFile(scope: !1234, file: !1, discriminator: 2)
!1237 = !DILocation(line: 91, column: 5, scope: !1227)
!1238 = !DILocation(line: 92, column: 1, scope: !1054)
!1239 = distinct !DISubprogram(name: "gsl_sf_legendre_Q0", scope: !1, file: !1, line: 355, type: !1240, isLocal: false, isDefinition: true, scopeLine: 356, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!1240 = !DISubroutineType(types: !1241)
!1241 = !{!50, !49}
!1242 = !DILocalVariable(name: "x", arg: 1, scope: !1239, file: !1, line: 355, type: !49)
!1243 = !DILocation(line: 355, column: 40, scope: !1239)
!1244 = !DILocalVariable(name: "result", scope: !1239, file: !1, line: 357, type: !52)
!1245 = !DILocation(line: 357, column: 3, scope: !1239)
!1246 = !DILocalVariable(name: "status", scope: !1239, file: !1, line: 357, type: !48)
!1247 = !DILocation(line: 357, column: 3, scope: !1248)
!1248 = distinct !DILexicalBlock(scope: !1239, file: !1, line: 357, column: 3)
!1249 = !DILocation(line: 357, column: 3, scope: !1250)
!1250 = !DILexicalBlockFile(scope: !1251, file: !1, discriminator: 1)
!1251 = distinct !DILexicalBlock(scope: !1248, file: !1, line: 357, column: 3)
!1252 = distinct !{!1252, !1253}
!1253 = !DILocation(line: 357, column: 3, scope: !1251)
!1254 = !DILocation(line: 357, column: 3, scope: !1255)
!1255 = !DILexicalBlockFile(scope: !1256, file: !1, discriminator: 2)
!1256 = distinct !DILexicalBlock(scope: !1251, file: !1, line: 357, column: 3)
!1257 = !DILocation(line: 357, column: 3, scope: !1258)
!1258 = !DILexicalBlockFile(scope: !1251, file: !1, discriminator: 3)
!1259 = !DILocation(line: 357, column: 3, scope: !1260)
!1260 = !DILexicalBlockFile(scope: !1239, file: !1, discriminator: 4)
!1261 = !DILocation(line: 358, column: 1, scope: !1239)
!1262 = distinct !DISubprogram(name: "gsl_sf_legendre_Q1", scope: !1, file: !1, line: 360, type: !1240, isLocal: false, isDefinition: true, scopeLine: 361, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!1263 = !DILocalVariable(name: "x", arg: 1, scope: !1262, file: !1, line: 360, type: !49)
!1264 = !DILocation(line: 360, column: 40, scope: !1262)
!1265 = !DILocalVariable(name: "result", scope: !1262, file: !1, line: 362, type: !52)
!1266 = !DILocation(line: 362, column: 3, scope: !1262)
!1267 = !DILocalVariable(name: "status", scope: !1262, file: !1, line: 362, type: !48)
!1268 = !DILocation(line: 362, column: 3, scope: !1269)
!1269 = distinct !DILexicalBlock(scope: !1262, file: !1, line: 362, column: 3)
!1270 = !DILocation(line: 362, column: 3, scope: !1271)
!1271 = !DILexicalBlockFile(scope: !1272, file: !1, discriminator: 1)
!1272 = distinct !DILexicalBlock(scope: !1269, file: !1, line: 362, column: 3)
!1273 = distinct !{!1273, !1274}
!1274 = !DILocation(line: 362, column: 3, scope: !1272)
!1275 = !DILocation(line: 362, column: 3, scope: !1276)
!1276 = !DILexicalBlockFile(scope: !1277, file: !1, discriminator: 2)
!1277 = distinct !DILexicalBlock(scope: !1272, file: !1, line: 362, column: 3)
!1278 = !DILocation(line: 362, column: 3, scope: !1279)
!1279 = !DILexicalBlockFile(scope: !1272, file: !1, discriminator: 3)
!1280 = !DILocation(line: 362, column: 3, scope: !1281)
!1281 = !DILexicalBlockFile(scope: !1262, file: !1, discriminator: 4)
!1282 = !DILocation(line: 363, column: 1, scope: !1262)
!1283 = distinct !DISubprogram(name: "gsl_sf_legendre_Ql", scope: !1, file: !1, line: 365, type: !1284, isLocal: false, isDefinition: true, scopeLine: 366, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!1284 = !DISubroutineType(types: !1285)
!1285 = !{!50, !484, !49}
!1286 = !DILocalVariable(name: "l", arg: 1, scope: !1283, file: !1, line: 365, type: !484)
!1287 = !DILocation(line: 365, column: 37, scope: !1283)
!1288 = !DILocalVariable(name: "x", arg: 2, scope: !1283, file: !1, line: 365, type: !49)
!1289 = !DILocation(line: 365, column: 53, scope: !1283)
!1290 = !DILocalVariable(name: "result", scope: !1283, file: !1, line: 367, type: !52)
!1291 = !DILocation(line: 367, column: 3, scope: !1283)
!1292 = !DILocalVariable(name: "status", scope: !1283, file: !1, line: 367, type: !48)
!1293 = !DILocation(line: 367, column: 3, scope: !1294)
!1294 = distinct !DILexicalBlock(scope: !1283, file: !1, line: 367, column: 3)
!1295 = !DILocation(line: 367, column: 3, scope: !1296)
!1296 = !DILexicalBlockFile(scope: !1297, file: !1, discriminator: 1)
!1297 = distinct !DILexicalBlock(scope: !1294, file: !1, line: 367, column: 3)
!1298 = distinct !{!1298, !1299}
!1299 = !DILocation(line: 367, column: 3, scope: !1297)
!1300 = !DILocation(line: 367, column: 3, scope: !1301)
!1301 = !DILexicalBlockFile(scope: !1302, file: !1, discriminator: 2)
!1302 = distinct !DILexicalBlock(scope: !1297, file: !1, line: 367, column: 3)
!1303 = !DILocation(line: 367, column: 3, scope: !1304)
!1304 = !DILexicalBlockFile(scope: !1297, file: !1, discriminator: 3)
!1305 = !DILocation(line: 367, column: 3, scope: !1306)
!1306 = !DILexicalBlockFile(scope: !1283, file: !1, discriminator: 4)
!1307 = !DILocation(line: 368, column: 1, scope: !1283)
