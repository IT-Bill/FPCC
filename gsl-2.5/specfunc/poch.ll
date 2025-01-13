; ModuleID = 'poch.c'
source_filename = "poch.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsl_sf_result_struct = type { double, double }

@.str = private unnamed_addr constant [13 x i8] c"domain error\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"poch.c\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"overflow\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"gsl_sf_lnpoch_e(a, x, &result)\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"gsl_sf_poch_e(a, x, &result)\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"gsl_sf_pochrel_e(a, x, &result)\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@bern = internal constant [21 x double] [double 0.000000e+00, double 0x3FB5555555555555, double 0xBF56C16C16C16C17, double 0x3F01566ABC011567, double 0xBEABBD779334EF0B, double 0x3E566A8F2BF70EBE, double 0xBE022805D644267F, double 0x3DAD6DB2C4E09162, double 0xBD57DA4E1F79955C, double 0x3D0355871D652E9E, double 0xBCAF57D968CAACF1, double 0x3C5967E1F09C376F, double 0xBC0497D9033A2B5C, double 0x3BB0B132D7C6AD06, double 0xBB5B0F72D59F1C16, double 0x3B05EF2DA4CCA26D, double 0xBAE6394CAA612629, double 0x3A5CD299DE521B62, double 0xBA075CDE656574A7, double 0x39B2EFE8DB3B4ADF, double 0xB95EB322904761FF], align 16

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_lnpoch_e(double, double, %struct.gsl_sf_result_struct*) #0 !dbg !54 {
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca %struct.gsl_sf_result_struct*, align 8
  store double %0, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !65, metadata !66), !dbg !67
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !68, metadata !66), !dbg !69
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %7, metadata !70, metadata !66), !dbg !71
  %8 = load double, double* %5, align 8, !dbg !72
  %9 = fcmp ole double %8, 0.000000e+00, !dbg !74
  br i1 %9, label %15, label %10, !dbg !75

; <label>:10:                                     ; preds = %3
  %11 = load double, double* %5, align 8, !dbg !76
  %12 = load double, double* %6, align 8, !dbg !78
  %13 = fadd double %11, %12, !dbg !79
  %14 = fcmp ole double %13, 0.000000e+00, !dbg !80
  br i1 %14, label %15, label %24, !dbg !81

; <label>:15:                                     ; preds = %10, %3
  br label %16, !dbg !82, !llvm.loop !84

; <label>:16:                                     ; preds = %15
  %17 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !85
  %18 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %17, i32 0, i32 0, !dbg !85
  store double 0x7FF8000000000000, double* %18, align 8, !dbg !85
  %19 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !85
  %20 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %19, i32 0, i32 1, !dbg !85
  store double 0x7FF8000000000000, double* %20, align 8, !dbg !85
  br label %21, !dbg !85, !llvm.loop !88

; <label>:21:                                     ; preds = %16
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 287, i32 1), !dbg !90
  store i32 1, i32* %4, align 4, !dbg !90
  br label %37, !dbg !90
                                                  ; No predecessors!
  br label %23, !dbg !93

; <label>:23:                                     ; preds = %22
  br label %37, !dbg !95

; <label>:24:                                     ; preds = %10
  %25 = load double, double* %6, align 8, !dbg !96
  %26 = fcmp oeq double %25, 0.000000e+00, !dbg !98
  br i1 %26, label %27, label %32, !dbg !99

; <label>:27:                                     ; preds = %24
  %28 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !100
  %29 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %28, i32 0, i32 0, !dbg !102
  store double 0.000000e+00, double* %29, align 8, !dbg !103
  %30 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !104
  %31 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %30, i32 0, i32 1, !dbg !105
  store double 0.000000e+00, double* %31, align 8, !dbg !106
  store i32 0, i32* %4, align 4, !dbg !107
  br label %37, !dbg !107

; <label>:32:                                     ; preds = %24
  %33 = load double, double* %5, align 8, !dbg !108
  %34 = load double, double* %6, align 8, !dbg !110
  %35 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !111
  %36 = call i32 @lnpoch_pos(double %33, double %34, %struct.gsl_sf_result_struct* %35), !dbg !112
  store i32 %36, i32* %4, align 4, !dbg !113
  br label %37, !dbg !113

; <label>:37:                                     ; preds = %21, %27, %32, %23
  %38 = load i32, i32* %4, align 4, !dbg !114
  ret i32 %38, !dbg !114
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @gsl_error(i8*, i8*, i32, i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @lnpoch_pos(double, double, %struct.gsl_sf_result_struct*) #0 !dbg !115 {
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca %struct.gsl_sf_result_struct*, align 8
  %8 = alloca double, align 8
  %9 = alloca %struct.gsl_sf_result_struct, align 8
  %10 = alloca %struct.gsl_sf_result_struct, align 8
  %11 = alloca %struct.gsl_sf_result_struct, align 8
  %12 = alloca %struct.gsl_sf_result_struct, align 8
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
  %29 = alloca double, align 8
  %30 = alloca double, align 8
  %31 = alloca double, align 8
  %32 = alloca double, align 8
  %33 = alloca double, align 8
  %34 = alloca %struct.gsl_sf_result_struct, align 8
  %35 = alloca %struct.gsl_sf_result_struct, align 8
  %36 = alloca i32, align 4
  %37 = alloca double, align 8
  %38 = alloca i32, align 4
  store double %0, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !116, metadata !66), !dbg !117
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !118, metadata !66), !dbg !119
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %7, metadata !120, metadata !66), !dbg !121
  call void @llvm.dbg.declare(metadata double* %8, metadata !122, metadata !66), !dbg !123
  %39 = load double, double* %6, align 8, !dbg !124
  %40 = call double @fabs(double %39) #1, !dbg !125
  store double %40, double* %8, align 8, !dbg !123
  %41 = load double, double* %8, align 8, !dbg !126
  %42 = load double, double* %5, align 8, !dbg !128
  %43 = fmul double 1.000000e-01, %42, !dbg !129
  %44 = fcmp ogt double %41, %43, !dbg !130
  br i1 %44, label %52, label %45, !dbg !131

; <label>:45:                                     ; preds = %3
  %46 = load double, double* %8, align 8, !dbg !132
  %47 = load double, double* %5, align 8, !dbg !134
  %48 = call double @GSL_MAX_DBL(double %47, double 2.000000e+00), !dbg !135
  %49 = call double @log(double %48) #5, !dbg !136
  %50 = fmul double %46, %49, !dbg !138
  %51 = fcmp ogt double %50, 1.000000e-01, !dbg !139
  br i1 %51, label %52, label %144, !dbg !140

; <label>:52:                                     ; preds = %45, %3
  %53 = load double, double* %5, align 8, !dbg !141
  %54 = fcmp olt double %53, 1.710000e+02, !dbg !144
  br i1 %54, label %55, label %100, !dbg !145

; <label>:55:                                     ; preds = %52
  %56 = load double, double* %5, align 8, !dbg !146
  %57 = load double, double* %6, align 8, !dbg !148
  %58 = fadd double %56, %57, !dbg !149
  %59 = fcmp olt double %58, 1.710000e+02, !dbg !150
  br i1 %59, label %60, label %100, !dbg !151

; <label>:60:                                     ; preds = %55
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %9, metadata !152, metadata !66), !dbg !154
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %10, metadata !155, metadata !66), !dbg !156
  %61 = load double, double* %5, align 8, !dbg !157
  %62 = call i32 @gsl_sf_gammainv_e(double %61, %struct.gsl_sf_result_struct* %9), !dbg !158
  %63 = load double, double* %5, align 8, !dbg !159
  %64 = load double, double* %6, align 8, !dbg !160
  %65 = fadd double %63, %64, !dbg !161
  %66 = call i32 @gsl_sf_gammainv_e(double %65, %struct.gsl_sf_result_struct* %10), !dbg !162
  %67 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !163
  %68 = load double, double* %67, align 8, !dbg !163
  %69 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %9, i32 0, i32 0, !dbg !164
  %70 = load double, double* %69, align 8, !dbg !164
  %71 = fdiv double %68, %70, !dbg !165
  %72 = call double @log(double %71) #5, !dbg !166
  %73 = fsub double -0.000000e+00, %72, !dbg !167
  %74 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !168
  %75 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %74, i32 0, i32 0, !dbg !169
  store double %73, double* %75, align 8, !dbg !170
  %76 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %9, i32 0, i32 1, !dbg !171
  %77 = load double, double* %76, align 8, !dbg !171
  %78 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %9, i32 0, i32 0, !dbg !172
  %79 = load double, double* %78, align 8, !dbg !172
  %80 = call double @fabs(double %79) #1, !dbg !173
  %81 = fdiv double %77, %80, !dbg !174
  %82 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 1, !dbg !175
  %83 = load double, double* %82, align 8, !dbg !175
  %84 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !176
  %85 = load double, double* %84, align 8, !dbg !176
  %86 = call double @fabs(double %85) #1, !dbg !177
  %87 = fdiv double %83, %86, !dbg !179
  %88 = fadd double %81, %87, !dbg !180
  %89 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !181
  %90 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %89, i32 0, i32 1, !dbg !182
  store double %88, double* %90, align 8, !dbg !183
  %91 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !184
  %92 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %91, i32 0, i32 0, !dbg !185
  %93 = load double, double* %92, align 8, !dbg !185
  %94 = call double @fabs(double %93) #1, !dbg !186
  %95 = fmul double 0x3CC0000000000000, %94, !dbg !187
  %96 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !188
  %97 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %96, i32 0, i32 1, !dbg !189
  %98 = load double, double* %97, align 8, !dbg !190
  %99 = fadd double %98, %95, !dbg !190
  store double %99, double* %97, align 8, !dbg !190
  store i32 0, i32* %4, align 4, !dbg !191
  br label %395, !dbg !191

; <label>:100:                                    ; preds = %55, %52
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %11, metadata !192, metadata !66), !dbg !194
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %12, metadata !195, metadata !66), !dbg !196
  call void @llvm.dbg.declare(metadata i32* %13, metadata !197, metadata !66), !dbg !198
  %101 = load double, double* %5, align 8, !dbg !199
  %102 = call i32 @gsl_sf_lngamma_e(double %101, %struct.gsl_sf_result_struct* %11), !dbg !200
  store i32 %102, i32* %13, align 4, !dbg !198
  call void @llvm.dbg.declare(metadata i32* %14, metadata !201, metadata !66), !dbg !202
  %103 = load double, double* %5, align 8, !dbg !203
  %104 = load double, double* %6, align 8, !dbg !204
  %105 = fadd double %103, %104, !dbg !205
  %106 = call i32 @gsl_sf_lngamma_e(double %105, %struct.gsl_sf_result_struct* %12), !dbg !206
  store i32 %106, i32* %14, align 4, !dbg !202
  %107 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %12, i32 0, i32 0, !dbg !207
  %108 = load double, double* %107, align 8, !dbg !207
  %109 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 0, !dbg !208
  %110 = load double, double* %109, align 8, !dbg !208
  %111 = fsub double %108, %110, !dbg !209
  %112 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !210
  %113 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %112, i32 0, i32 0, !dbg !211
  store double %111, double* %113, align 8, !dbg !212
  %114 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %12, i32 0, i32 1, !dbg !213
  %115 = load double, double* %114, align 8, !dbg !213
  %116 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 1, !dbg !214
  %117 = load double, double* %116, align 8, !dbg !214
  %118 = fadd double %115, %117, !dbg !215
  %119 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !216
  %120 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %119, i32 0, i32 1, !dbg !217
  store double %118, double* %120, align 8, !dbg !218
  %121 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !219
  %122 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %121, i32 0, i32 0, !dbg !220
  %123 = load double, double* %122, align 8, !dbg !220
  %124 = call double @fabs(double %123) #1, !dbg !221
  %125 = fmul double 0x3CC0000000000000, %124, !dbg !222
  %126 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !223
  %127 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %126, i32 0, i32 1, !dbg !224
  %128 = load double, double* %127, align 8, !dbg !225
  %129 = fadd double %128, %125, !dbg !225
  store double %129, double* %127, align 8, !dbg !225
  %130 = load i32, i32* %13, align 4, !dbg !226
  %131 = icmp ne i32 %130, 0, !dbg !226
  br i1 %131, label %132, label %134, !dbg !226

; <label>:132:                                    ; preds = %100
  %133 = load i32, i32* %13, align 4, !dbg !227
  br label %142, !dbg !227

; <label>:134:                                    ; preds = %100
  %135 = load i32, i32* %14, align 4, !dbg !229
  %136 = icmp ne i32 %135, 0, !dbg !229
  br i1 %136, label %137, label %139, !dbg !229

; <label>:137:                                    ; preds = %134
  %138 = load i32, i32* %14, align 4, !dbg !231
  br label %140, !dbg !231

; <label>:139:                                    ; preds = %134
  br label %140, !dbg !233

; <label>:140:                                    ; preds = %139, %137
  %141 = phi i32 [ %138, %137 ], [ 0, %139 ], !dbg !235
  br label %142, !dbg !235

; <label>:142:                                    ; preds = %140, %132
  %143 = phi i32 [ %133, %132 ], [ %141, %140 ], !dbg !237
  store i32 %143, i32* %4, align 4, !dbg !239
  br label %395, !dbg !239

; <label>:144:                                    ; preds = %45
  %145 = load double, double* %8, align 8, !dbg !240
  %146 = load double, double* %5, align 8, !dbg !242
  %147 = fmul double 1.000000e-01, %146, !dbg !243
  %148 = fcmp olt double %145, %147, !dbg !244
  br i1 %148, label %149, label %350, !dbg !245

; <label>:149:                                    ; preds = %144
  %150 = load double, double* %5, align 8, !dbg !246
  %151 = fcmp ogt double %150, 1.500000e+01, !dbg !248
  br i1 %151, label %152, label %350, !dbg !249

; <label>:152:                                    ; preds = %149
  call void @llvm.dbg.declare(metadata double* %15, metadata !250, metadata !66), !dbg !252
  %153 = load double, double* %6, align 8, !dbg !253
  %154 = load double, double* %5, align 8, !dbg !254
  %155 = fdiv double %153, %154, !dbg !255
  store double %155, double* %15, align 8, !dbg !252
  call void @llvm.dbg.declare(metadata double* %16, metadata !256, metadata !66), !dbg !257
  %156 = load double, double* %15, align 8, !dbg !258
  %157 = fadd double 1.000000e+00, %156, !dbg !259
  store double %157, double* %16, align 8, !dbg !257
  call void @llvm.dbg.declare(metadata double* %17, metadata !260, metadata !66), !dbg !261
  %158 = load double, double* %16, align 8, !dbg !262
  %159 = load double, double* %16, align 8, !dbg !263
  %160 = fmul double %158, %159, !dbg !264
  %161 = load double, double* %16, align 8, !dbg !265
  %162 = fmul double %160, %161, !dbg !266
  store double %162, double* %17, align 8, !dbg !261
  call void @llvm.dbg.declare(metadata double* %18, metadata !267, metadata !66), !dbg !268
  %163 = load double, double* %17, align 8, !dbg !269
  %164 = load double, double* %16, align 8, !dbg !270
  %165 = fmul double %163, %164, !dbg !271
  %166 = load double, double* %16, align 8, !dbg !272
  %167 = fmul double %165, %166, !dbg !273
  store double %167, double* %18, align 8, !dbg !268
  call void @llvm.dbg.declare(metadata double* %19, metadata !274, metadata !66), !dbg !275
  %168 = load double, double* %18, align 8, !dbg !276
  %169 = load double, double* %16, align 8, !dbg !277
  %170 = fmul double %168, %169, !dbg !278
  %171 = load double, double* %16, align 8, !dbg !279
  %172 = fmul double %170, %171, !dbg !280
  store double %172, double* %19, align 8, !dbg !275
  call void @llvm.dbg.declare(metadata double* %20, metadata !281, metadata !66), !dbg !282
  %173 = load double, double* %15, align 8, !dbg !283
  %174 = fsub double -0.000000e+00, %173, !dbg !284
  %175 = load double, double* %16, align 8, !dbg !285
  %176 = fdiv double %174, %175, !dbg !286
  store double %176, double* %20, align 8, !dbg !282
  call void @llvm.dbg.declare(metadata double* %21, metadata !287, metadata !66), !dbg !288
  %177 = load double, double* %15, align 8, !dbg !289
  %178 = fsub double -0.000000e+00, %177, !dbg !290
  %179 = load double, double* %15, align 8, !dbg !291
  %180 = load double, double* %15, align 8, !dbg !292
  %181 = fadd double 3.000000e+00, %180, !dbg !293
  %182 = fmul double %179, %181, !dbg !294
  %183 = fadd double 3.000000e+00, %182, !dbg !295
  %184 = fmul double %178, %183, !dbg !296
  %185 = load double, double* %17, align 8, !dbg !297
  %186 = fdiv double %184, %185, !dbg !298
  store double %186, double* %21, align 8, !dbg !288
  call void @llvm.dbg.declare(metadata double* %22, metadata !299, metadata !66), !dbg !300
  %187 = load double, double* %15, align 8, !dbg !301
  %188 = fsub double -0.000000e+00, %187, !dbg !302
  %189 = load double, double* %15, align 8, !dbg !303
  %190 = load double, double* %15, align 8, !dbg !304
  %191 = load double, double* %15, align 8, !dbg !305
  %192 = load double, double* %15, align 8, !dbg !306
  %193 = fadd double 5.000000e+00, %192, !dbg !307
  %194 = fmul double %191, %193, !dbg !308
  %195 = fadd double 1.000000e+01, %194, !dbg !309
  %196 = fmul double %190, %195, !dbg !310
  %197 = fadd double 1.000000e+01, %196, !dbg !311
  %198 = fmul double %189, %197, !dbg !312
  %199 = fadd double 5.000000e+00, %198, !dbg !313
  %200 = fmul double %188, %199, !dbg !314
  %201 = load double, double* %18, align 8, !dbg !315
  %202 = fdiv double %200, %201, !dbg !316
  store double %202, double* %22, align 8, !dbg !300
  call void @llvm.dbg.declare(metadata double* %23, metadata !317, metadata !66), !dbg !318
  %203 = load double, double* %15, align 8, !dbg !319
  %204 = fsub double -0.000000e+00, %203, !dbg !320
  %205 = load double, double* %15, align 8, !dbg !321
  %206 = load double, double* %15, align 8, !dbg !322
  %207 = load double, double* %15, align 8, !dbg !323
  %208 = load double, double* %15, align 8, !dbg !324
  %209 = load double, double* %15, align 8, !dbg !325
  %210 = load double, double* %15, align 8, !dbg !326
  %211 = fadd double 7.000000e+00, %210, !dbg !327
  %212 = fmul double %209, %211, !dbg !328
  %213 = fadd double 2.100000e+01, %212, !dbg !329
  %214 = fmul double %208, %213, !dbg !330
  %215 = fadd double 3.500000e+01, %214, !dbg !331
  %216 = fmul double %207, %215, !dbg !332
  %217 = fadd double 3.500000e+01, %216, !dbg !333
  %218 = fmul double %206, %217, !dbg !334
  %219 = fadd double 2.100000e+01, %218, !dbg !335
  %220 = fmul double %205, %219, !dbg !336
  %221 = fadd double 7.000000e+00, %220, !dbg !337
  %222 = fmul double %204, %221, !dbg !338
  %223 = load double, double* %19, align 8, !dbg !339
  %224 = fdiv double %222, %223, !dbg !340
  store double %224, double* %23, align 8, !dbg !318
  call void @llvm.dbg.declare(metadata double* %24, metadata !341, metadata !66), !dbg !342
  %225 = load double, double* %15, align 8, !dbg !343
  %226 = fadd double 1.000000e+00, %225, !dbg !344
  %227 = call double @gsl_sf_pow_int(double %226, i32 8), !dbg !345
  store double %227, double* %24, align 8, !dbg !342
  call void @llvm.dbg.declare(metadata double* %25, metadata !346, metadata !66), !dbg !347
  %228 = load double, double* %24, align 8, !dbg !348
  %229 = fdiv double 1.000000e+00, %228, !dbg !349
  %230 = fsub double %229, 1.000000e+00, !dbg !350
  store double %230, double* %25, align 8, !dbg !347
  call void @llvm.dbg.declare(metadata double* %26, metadata !351, metadata !66), !dbg !352
  %231 = load double, double* %24, align 8, !dbg !353
  %232 = load double, double* %15, align 8, !dbg !354
  %233 = fadd double 1.000000e+00, %232, !dbg !355
  %234 = fmul double %231, %233, !dbg !356
  %235 = fdiv double 1.000000e+00, %234, !dbg !357
  %236 = fsub double %235, 1.000000e+00, !dbg !358
  store double %236, double* %26, align 8, !dbg !352
  call void @llvm.dbg.declare(metadata double* %27, metadata !359, metadata !66), !dbg !360
  %237 = load double, double* %5, align 8, !dbg !361
  %238 = load double, double* %5, align 8, !dbg !362
  %239 = fmul double %237, %238, !dbg !363
  %240 = load double, double* %5, align 8, !dbg !364
  %241 = fmul double %239, %240, !dbg !365
  %242 = load double, double* %5, align 8, !dbg !366
  %243 = fmul double %241, %242, !dbg !367
  store double %243, double* %27, align 8, !dbg !360
  call void @llvm.dbg.declare(metadata double* %28, metadata !368, metadata !66), !dbg !369
  %244 = load double, double* %27, align 8, !dbg !370
  %245 = load double, double* %5, align 8, !dbg !371
  %246 = fmul double %244, %245, !dbg !372
  %247 = load double, double* %5, align 8, !dbg !373
  %248 = fmul double %246, %247, !dbg !374
  store double %248, double* %28, align 8, !dbg !369
  call void @llvm.dbg.declare(metadata double* %29, metadata !375, metadata !66), !dbg !376
  %249 = load double, double* %20, align 8, !dbg !377
  %250 = load double, double* %21, align 8, !dbg !378
  %251 = load double, double* %5, align 8, !dbg !379
  %252 = fmul double 3.000000e+01, %251, !dbg !380
  %253 = load double, double* %5, align 8, !dbg !381
  %254 = fmul double %252, %253, !dbg !382
  %255 = fdiv double %250, %254, !dbg !383
  %256 = fadd double %249, %255, !dbg !384
  %257 = load double, double* %22, align 8, !dbg !385
  %258 = load double, double* %27, align 8, !dbg !386
  %259 = fmul double 1.050000e+02, %258, !dbg !387
  %260 = fdiv double %257, %259, !dbg !388
  %261 = fadd double %256, %260, !dbg !389
  %262 = load double, double* %23, align 8, !dbg !390
  %263 = load double, double* %28, align 8, !dbg !391
  %264 = fmul double 1.400000e+02, %263, !dbg !392
  %265 = fdiv double %262, %264, !dbg !393
  %266 = fadd double %261, %265, !dbg !394
  store double %266, double* %29, align 8, !dbg !376
  call void @llvm.dbg.declare(metadata double* %30, metadata !395, metadata !66), !dbg !396
  %267 = load double, double* %25, align 8, !dbg !397
  %268 = load double, double* %28, align 8, !dbg !398
  %269 = fmul double 9.900000e+01, %268, !dbg !399
  %270 = load double, double* %5, align 8, !dbg !400
  %271 = fmul double %269, %270, !dbg !401
  %272 = load double, double* %5, align 8, !dbg !402
  %273 = fmul double %271, %272, !dbg !403
  %274 = fdiv double %267, %273, !dbg !404
  %275 = load double, double* %26, align 8, !dbg !405
  %276 = fmul double 0x3F5F6AB0D9993C7D, %275, !dbg !406
  %277 = load double, double* %28, align 8, !dbg !407
  %278 = load double, double* %27, align 8, !dbg !408
  %279 = fmul double %277, %278, !dbg !409
  %280 = fdiv double %276, %279, !dbg !410
  %281 = fsub double %274, %280, !dbg !411
  store double %281, double* %30, align 8, !dbg !396
  call void @llvm.dbg.declare(metadata double* %31, metadata !412, metadata !66), !dbg !413
  %282 = load double, double* %29, align 8, !dbg !414
  %283 = load double, double* %30, align 8, !dbg !415
  %284 = fadd double %282, %283, !dbg !416
  %285 = load double, double* %5, align 8, !dbg !417
  %286 = fmul double 1.200000e+01, %285, !dbg !418
  %287 = fdiv double %284, %286, !dbg !419
  store double %287, double* %31, align 8, !dbg !413
  call void @llvm.dbg.declare(metadata double* %32, metadata !420, metadata !66), !dbg !421
  %288 = load double, double* %6, align 8, !dbg !422
  %289 = load double, double* %5, align 8, !dbg !423
  %290 = fdiv double %289, 0x4005BF0A8B145769, !dbg !424
  %291 = call double @log(double %290) #5, !dbg !425
  %292 = fmul double %288, %291, !dbg !426
  store double %292, double* %32, align 8, !dbg !421
  call void @llvm.dbg.declare(metadata double* %33, metadata !427, metadata !66), !dbg !428
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %34, metadata !429, metadata !66), !dbg !430
  %293 = load double, double* %15, align 8, !dbg !431
  %294 = call i32 @gsl_sf_log_1plusx_e(double %293, %struct.gsl_sf_result_struct* %34), !dbg !432
  %295 = load double, double* %6, align 8, !dbg !433
  %296 = load double, double* %5, align 8, !dbg !434
  %297 = fadd double %295, %296, !dbg !435
  %298 = fsub double %297, 5.000000e-01, !dbg !436
  %299 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %34, i32 0, i32 0, !dbg !437
  %300 = load double, double* %299, align 8, !dbg !437
  %301 = fmul double %298, %300, !dbg !438
  store double %301, double* %33, align 8, !dbg !439
  %302 = load double, double* %32, align 8, !dbg !440
  %303 = load double, double* %33, align 8, !dbg !441
  %304 = fadd double %302, %303, !dbg !442
  %305 = load double, double* %31, align 8, !dbg !443
  %306 = fadd double %304, %305, !dbg !444
  %307 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !445
  %308 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %307, i32 0, i32 0, !dbg !446
  store double %306, double* %308, align 8, !dbg !447
  %309 = load double, double* %32, align 8, !dbg !448
  %310 = call double @fabs(double %309) #1, !dbg !449
  %311 = fmul double 0x3CB0000000000000, %310, !dbg !450
  %312 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !451
  %313 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %312, i32 0, i32 1, !dbg !452
  store double %311, double* %313, align 8, !dbg !453
  %314 = load double, double* %6, align 8, !dbg !454
  %315 = load double, double* %5, align 8, !dbg !455
  %316 = fadd double %314, %315, !dbg !456
  %317 = fsub double %316, 5.000000e-01, !dbg !457
  %318 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %34, i32 0, i32 1, !dbg !458
  %319 = load double, double* %318, align 8, !dbg !458
  %320 = fmul double %317, %319, !dbg !459
  %321 = call double @fabs(double %320) #1, !dbg !460
  %322 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !461
  %323 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %322, i32 0, i32 1, !dbg !462
  %324 = load double, double* %323, align 8, !dbg !463
  %325 = fadd double %324, %321, !dbg !463
  store double %325, double* %323, align 8, !dbg !463
  %326 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %34, i32 0, i32 0, !dbg !464
  %327 = load double, double* %326, align 8, !dbg !464
  %328 = call double @fabs(double %327) #1, !dbg !465
  %329 = fmul double %328, 0x3CB0000000000000, !dbg !466
  %330 = load double, double* %6, align 8, !dbg !467
  %331 = call double @fabs(double %330) #1, !dbg !468
  %332 = load double, double* %5, align 8, !dbg !470
  %333 = call double @fabs(double %332) #1, !dbg !471
  %334 = fadd double %331, %333, !dbg !473
  %335 = fadd double %334, 5.000000e-01, !dbg !474
  %336 = fmul double %329, %335, !dbg !475
  %337 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !476
  %338 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %337, i32 0, i32 1, !dbg !477
  %339 = load double, double* %338, align 8, !dbg !478
  %340 = fadd double %339, %336, !dbg !478
  store double %340, double* %338, align 8, !dbg !478
  %341 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !479
  %342 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %341, i32 0, i32 0, !dbg !480
  %343 = load double, double* %342, align 8, !dbg !480
  %344 = call double @fabs(double %343) #1, !dbg !481
  %345 = fmul double 0x3CC0000000000000, %344, !dbg !482
  %346 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !483
  %347 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %346, i32 0, i32 1, !dbg !484
  %348 = load double, double* %347, align 8, !dbg !485
  %349 = fadd double %348, %345, !dbg !485
  store double %349, double* %347, align 8, !dbg !485
  store i32 0, i32* %4, align 4, !dbg !486
  br label %395, !dbg !486

; <label>:350:                                    ; preds = %149, %144
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %35, metadata !487, metadata !66), !dbg !489
  call void @llvm.dbg.declare(metadata i32* %36, metadata !490, metadata !66), !dbg !491
  %351 = load double, double* %5, align 8, !dbg !492
  %352 = load double, double* %6, align 8, !dbg !493
  %353 = call i32 @pochrel_smallx(double %351, double %352, %struct.gsl_sf_result_struct* %35), !dbg !494
  store i32 %353, i32* %36, align 4, !dbg !491
  call void @llvm.dbg.declare(metadata double* %37, metadata !495, metadata !66), !dbg !496
  %354 = load double, double* %6, align 8, !dbg !497
  %355 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %35, i32 0, i32 0, !dbg !498
  %356 = load double, double* %355, align 8, !dbg !498
  %357 = fmul double %354, %356, !dbg !499
  store double %357, double* %37, align 8, !dbg !496
  call void @llvm.dbg.declare(metadata i32* %38, metadata !500, metadata !66), !dbg !501
  %358 = load double, double* %37, align 8, !dbg !502
  %359 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !503
  %360 = call i32 @gsl_sf_log_1plusx_e(double %358, %struct.gsl_sf_result_struct* %359), !dbg !504
  store i32 %360, i32* %38, align 4, !dbg !501
  %361 = load double, double* %6, align 8, !dbg !505
  %362 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %35, i32 0, i32 1, !dbg !506
  %363 = load double, double* %362, align 8, !dbg !506
  %364 = fmul double %361, %363, !dbg !507
  %365 = load double, double* %37, align 8, !dbg !508
  %366 = fadd double 1.000000e+00, %365, !dbg !509
  %367 = fdiv double %364, %366, !dbg !510
  %368 = call double @fabs(double %367) #1, !dbg !511
  %369 = fmul double 2.000000e+00, %368, !dbg !512
  %370 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !513
  %371 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %370, i32 0, i32 1, !dbg !514
  store double %369, double* %371, align 8, !dbg !515
  %372 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !516
  %373 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %372, i32 0, i32 0, !dbg !517
  %374 = load double, double* %373, align 8, !dbg !517
  %375 = call double @fabs(double %374) #1, !dbg !518
  %376 = fmul double 0x3CC0000000000000, %375, !dbg !519
  %377 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !520
  %378 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %377, i32 0, i32 1, !dbg !521
  %379 = load double, double* %378, align 8, !dbg !522
  %380 = fadd double %379, %376, !dbg !522
  store double %380, double* %378, align 8, !dbg !522
  %381 = load i32, i32* %38, align 4, !dbg !523
  %382 = icmp ne i32 %381, 0, !dbg !523
  br i1 %382, label %383, label %385, !dbg !523

; <label>:383:                                    ; preds = %350
  %384 = load i32, i32* %38, align 4, !dbg !524
  br label %393, !dbg !524

; <label>:385:                                    ; preds = %350
  %386 = load i32, i32* %36, align 4, !dbg !526
  %387 = icmp ne i32 %386, 0, !dbg !526
  br i1 %387, label %388, label %390, !dbg !526

; <label>:388:                                    ; preds = %385
  %389 = load i32, i32* %36, align 4, !dbg !528
  br label %391, !dbg !528

; <label>:390:                                    ; preds = %385
  br label %391, !dbg !530

; <label>:391:                                    ; preds = %390, %388
  %392 = phi i32 [ %389, %388 ], [ 0, %390 ], !dbg !532
  br label %393, !dbg !532

; <label>:393:                                    ; preds = %391, %383
  %394 = phi i32 [ %384, %383 ], [ %392, %391 ], !dbg !534
  store i32 %394, i32* %4, align 4, !dbg !536
  br label %395, !dbg !536

; <label>:395:                                    ; preds = %393, %152, %142, %60
  %396 = load i32, i32* %4, align 4, !dbg !537
  ret i32 %396, !dbg !537
}

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_lnpoch_sgn_e(double, double, %struct.gsl_sf_result_struct*, double*) #0 !dbg !538 {
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca %struct.gsl_sf_result_struct*, align 8
  %9 = alloca double*, align 8
  %10 = alloca %struct.gsl_sf_result_struct, align 8
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca i32, align 4
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca %struct.gsl_sf_result_struct, align 8
  %19 = alloca i32, align 4
  %20 = alloca double, align 8
  %21 = alloca %struct.gsl_sf_result_struct, align 8
  %22 = alloca %struct.gsl_sf_result_struct, align 8
  %23 = alloca double, align 8
  %24 = alloca double, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store double %0, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !542, metadata !66), !dbg !543
  store double %1, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !544, metadata !66), !dbg !545
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %8, metadata !546, metadata !66), !dbg !547
  store double* %3, double** %9, align 8
  call void @llvm.dbg.declare(metadata double** %9, metadata !548, metadata !66), !dbg !549
  %27 = load double, double* %7, align 8, !dbg !550
  %28 = fcmp oeq double %27, 0.000000e+00, !dbg !552
  br i1 %28, label %29, label %35, !dbg !553

; <label>:29:                                     ; preds = %4
  %30 = load double*, double** %9, align 8, !dbg !554
  store double 1.000000e+00, double* %30, align 8, !dbg !556
  %31 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !557
  %32 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %31, i32 0, i32 0, !dbg !558
  store double 0.000000e+00, double* %32, align 8, !dbg !559
  %33 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !560
  %34 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %33, i32 0, i32 1, !dbg !561
  store double 0.000000e+00, double* %34, align 8, !dbg !562
  store i32 0, i32* %5, align 4, !dbg !563
  br label %286, !dbg !563

; <label>:35:                                     ; preds = %4
  %36 = load double, double* %6, align 8, !dbg !564
  %37 = fcmp ogt double %36, 0.000000e+00, !dbg !566
  br i1 %37, label %38, label %49, !dbg !567

; <label>:38:                                     ; preds = %35
  %39 = load double, double* %6, align 8, !dbg !568
  %40 = load double, double* %7, align 8, !dbg !570
  %41 = fadd double %39, %40, !dbg !571
  %42 = fcmp ogt double %41, 0.000000e+00, !dbg !572
  br i1 %42, label %43, label %49, !dbg !573

; <label>:43:                                     ; preds = %38
  %44 = load double*, double** %9, align 8, !dbg !574
  store double 1.000000e+00, double* %44, align 8, !dbg !576
  %45 = load double, double* %6, align 8, !dbg !577
  %46 = load double, double* %7, align 8, !dbg !578
  %47 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !579
  %48 = call i32 @lnpoch_pos(double %45, double %46, %struct.gsl_sf_result_struct* %47), !dbg !580
  store i32 %48, i32* %5, align 4, !dbg !581
  br label %286, !dbg !581

; <label>:49:                                     ; preds = %38, %35
  %50 = load double, double* %6, align 8, !dbg !582
  %51 = fcmp ole double %50, 0.000000e+00, !dbg !584
  br i1 %51, label %52, label %129, !dbg !585

; <label>:52:                                     ; preds = %49
  %53 = load double, double* %6, align 8, !dbg !586
  %54 = load double, double* %6, align 8, !dbg !588
  %55 = call double @floor(double %54) #1, !dbg !589
  %56 = fcmp oeq double %53, %55, !dbg !590
  br i1 %56, label %57, label %129, !dbg !591

; <label>:57:                                     ; preds = %52
  %58 = load double, double* %6, align 8, !dbg !592
  %59 = load double, double* %7, align 8, !dbg !595
  %60 = fadd double %58, %59, !dbg !596
  %61 = fcmp olt double %60, 0.000000e+00, !dbg !597
  br i1 %61, label %62, label %100, !dbg !598

; <label>:62:                                     ; preds = %57
  %63 = load double, double* %7, align 8, !dbg !599
  %64 = load double, double* %7, align 8, !dbg !601
  %65 = call double @floor(double %64) #1, !dbg !602
  %66 = fcmp oeq double %63, %65, !dbg !603
  br i1 %66, label %67, label %100, !dbg !604

; <label>:67:                                     ; preds = %62
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %10, metadata !605, metadata !66), !dbg !607
  call void @llvm.dbg.declare(metadata i32* %11, metadata !608, metadata !66), !dbg !609
  %68 = load double, double* %6, align 8, !dbg !610
  %69 = fsub double -0.000000e+00, %68, !dbg !611
  %70 = load double, double* %7, align 8, !dbg !612
  %71 = fsub double -0.000000e+00, %70, !dbg !613
  %72 = call i32 @lnpoch_pos(double %69, double %71, %struct.gsl_sf_result_struct* %10), !dbg !614
  store i32 %72, i32* %11, align 4, !dbg !609
  call void @llvm.dbg.declare(metadata double* %12, metadata !615, metadata !66), !dbg !616
  %73 = load double, double* %6, align 8, !dbg !617
  %74 = load double, double* %6, align 8, !dbg !618
  %75 = load double, double* %7, align 8, !dbg !619
  %76 = fadd double %74, %75, !dbg !620
  %77 = fdiv double %73, %76, !dbg !621
  %78 = call double @log(double %77) #5, !dbg !622
  store double %78, double* %12, align 8, !dbg !616
  call void @llvm.dbg.declare(metadata double* %13, metadata !623, metadata !66), !dbg !624
  %79 = load double, double* %7, align 8, !dbg !625
  %80 = call double @fmod(double %79, double 2.000000e+00) #5, !dbg !626
  %81 = fcmp oeq double %80, 0.000000e+00, !dbg !627
  %82 = select i1 %81, i32 1, i32 -1, !dbg !628
  %83 = sitofp i32 %82 to double, !dbg !628
  store double %83, double* %13, align 8, !dbg !624
  %84 = load double, double* %12, align 8, !dbg !629
  %85 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !630
  %86 = load double, double* %85, align 8, !dbg !630
  %87 = fsub double %84, %86, !dbg !631
  %88 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !632
  %89 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %88, i32 0, i32 0, !dbg !633
  store double %87, double* %89, align 8, !dbg !634
  %90 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 1, !dbg !635
  %91 = load double, double* %90, align 8, !dbg !635
  %92 = load double, double* %12, align 8, !dbg !636
  %93 = fmul double 0x3CC0000000000000, %92, !dbg !637
  %94 = fadd double %91, %93, !dbg !638
  %95 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !639
  %96 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %95, i32 0, i32 1, !dbg !640
  store double %94, double* %96, align 8, !dbg !641
  %97 = load double, double* %13, align 8, !dbg !642
  %98 = load double*, double** %9, align 8, !dbg !643
  store double %97, double* %98, align 8, !dbg !644
  %99 = load i32, i32* %11, align 4, !dbg !645
  store i32 %99, i32* %5, align 4, !dbg !646
  br label %286, !dbg !646

; <label>:100:                                    ; preds = %62, %57
  %101 = load double, double* %6, align 8, !dbg !647
  %102 = load double, double* %7, align 8, !dbg !649
  %103 = fadd double %101, %102, !dbg !650
  %104 = fcmp oeq double %103, 0.000000e+00, !dbg !651
  br i1 %104, label %105, label %123, !dbg !652

; <label>:105:                                    ; preds = %100
  call void @llvm.dbg.declare(metadata i32* %14, metadata !653, metadata !66), !dbg !655
  %106 = load double, double* %6, align 8, !dbg !656
  %107 = fsub double -0.000000e+00, %106, !dbg !657
  %108 = fadd double %107, 1.000000e+00, !dbg !658
  %109 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !659
  %110 = load double*, double** %9, align 8, !dbg !660
  %111 = call i32 @gsl_sf_lngamma_sgn_e(double %108, %struct.gsl_sf_result_struct* %109, double* %110), !dbg !661
  store i32 %111, i32* %14, align 4, !dbg !655
  call void @llvm.dbg.declare(metadata double* %15, metadata !662, metadata !66), !dbg !663
  %112 = load double, double* %6, align 8, !dbg !664
  %113 = fsub double -0.000000e+00, %112, !dbg !665
  %114 = call double @fmod(double %113, double 2.000000e+00) #5, !dbg !666
  %115 = fcmp oeq double %114, 0.000000e+00, !dbg !667
  %116 = select i1 %115, i32 1, i32 -1, !dbg !668
  %117 = sitofp i32 %116 to double, !dbg !668
  store double %117, double* %15, align 8, !dbg !663
  %118 = load double, double* %15, align 8, !dbg !669
  %119 = load double*, double** %9, align 8, !dbg !670
  %120 = load double, double* %119, align 8, !dbg !671
  %121 = fmul double %120, %118, !dbg !671
  store double %121, double* %119, align 8, !dbg !671
  %122 = load i32, i32* %14, align 4, !dbg !672
  store i32 %122, i32* %5, align 4, !dbg !673
  br label %286, !dbg !673

; <label>:123:                                    ; preds = %100
  %124 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !674
  %125 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %124, i32 0, i32 0, !dbg !676
  store double 0xFFF0000000000000, double* %125, align 8, !dbg !677
  %126 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !678
  %127 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %126, i32 0, i32 1, !dbg !679
  store double 0.000000e+00, double* %127, align 8, !dbg !680
  %128 = load double*, double** %9, align 8, !dbg !681
  store double 1.000000e+00, double* %128, align 8, !dbg !682
  store i32 0, i32* %5, align 4, !dbg !683
  br label %286, !dbg !683

; <label>:129:                                    ; preds = %52, %49
  %130 = load double, double* %6, align 8, !dbg !684
  %131 = fcmp olt double %130, 0.000000e+00, !dbg !686
  br i1 %131, label %132, label %219, !dbg !687

; <label>:132:                                    ; preds = %129
  %133 = load double, double* %6, align 8, !dbg !688
  %134 = load double, double* %7, align 8, !dbg !690
  %135 = fadd double %133, %134, !dbg !691
  %136 = fcmp olt double %135, 0.000000e+00, !dbg !692
  br i1 %136, label %137, label %219, !dbg !693

; <label>:137:                                    ; preds = %132
  call void @llvm.dbg.declare(metadata double* %16, metadata !694, metadata !66), !dbg !696
  %138 = load double, double* %6, align 8, !dbg !697
  %139 = fsub double 1.000000e+00, %138, !dbg !698
  %140 = fmul double 0x400921FB54442D18, %139, !dbg !699
  %141 = call double @sin(double %140) #5, !dbg !700
  store double %141, double* %16, align 8, !dbg !696
  call void @llvm.dbg.declare(metadata double* %17, metadata !701, metadata !66), !dbg !702
  %142 = load double, double* %6, align 8, !dbg !703
  %143 = fsub double 1.000000e+00, %142, !dbg !704
  %144 = load double, double* %7, align 8, !dbg !705
  %145 = fsub double %143, %144, !dbg !706
  %146 = fmul double 0x400921FB54442D18, %145, !dbg !707
  %147 = call double @sin(double %146) #5, !dbg !708
  store double %147, double* %17, align 8, !dbg !702
  %148 = load double, double* %16, align 8, !dbg !709
  %149 = fcmp oeq double %148, 0.000000e+00, !dbg !711
  br i1 %149, label %153, label %150, !dbg !712

; <label>:150:                                    ; preds = %137
  %151 = load double, double* %17, align 8, !dbg !713
  %152 = fcmp oeq double %151, 0.000000e+00, !dbg !715
  br i1 %152, label %153, label %163, !dbg !716

; <label>:153:                                    ; preds = %150, %137
  %154 = load double*, double** %9, align 8, !dbg !717
  store double 0.000000e+00, double* %154, align 8, !dbg !719
  br label %155, !dbg !720, !llvm.loop !721

; <label>:155:                                    ; preds = %153
  %156 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !722
  %157 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %156, i32 0, i32 0, !dbg !722
  store double 0x7FF8000000000000, double* %157, align 8, !dbg !722
  %158 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !722
  %159 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %158, i32 0, i32 1, !dbg !722
  store double 0x7FF8000000000000, double* %159, align 8, !dbg !722
  br label %160, !dbg !722, !llvm.loop !725

; <label>:160:                                    ; preds = %155
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 349, i32 1), !dbg !727
  store i32 1, i32* %5, align 4, !dbg !727
  br label %286, !dbg !727
                                                  ; No predecessors!
  br label %162, !dbg !730

; <label>:162:                                    ; preds = %161
  br label %218, !dbg !732

; <label>:163:                                    ; preds = %150
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %18, metadata !733, metadata !66), !dbg !735
  call void @llvm.dbg.declare(metadata i32* %19, metadata !736, metadata !66), !dbg !737
  %164 = load double, double* %6, align 8, !dbg !738
  %165 = fsub double 1.000000e+00, %164, !dbg !739
  %166 = load double, double* %7, align 8, !dbg !740
  %167 = fsub double -0.000000e+00, %166, !dbg !741
  %168 = call i32 @lnpoch_pos(double %165, double %167, %struct.gsl_sf_result_struct* %18), !dbg !742
  store i32 %168, i32* %19, align 4, !dbg !737
  call void @llvm.dbg.declare(metadata double* %20, metadata !743, metadata !66), !dbg !744
  %169 = load double, double* %16, align 8, !dbg !745
  %170 = load double, double* %17, align 8, !dbg !746
  %171 = fdiv double %169, %170, !dbg !747
  %172 = call double @fabs(double %171) #1, !dbg !748
  %173 = call double @log(double %172) #5, !dbg !749
  store double %173, double* %20, align 8, !dbg !744
  %174 = load double, double* %20, align 8, !dbg !751
  %175 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %18, i32 0, i32 0, !dbg !752
  %176 = load double, double* %175, align 8, !dbg !752
  %177 = fsub double %174, %176, !dbg !753
  %178 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !754
  %179 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %178, i32 0, i32 0, !dbg !755
  store double %177, double* %179, align 8, !dbg !756
  %180 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %18, i32 0, i32 1, !dbg !757
  %181 = load double, double* %180, align 8, !dbg !757
  %182 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !758
  %183 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %182, i32 0, i32 1, !dbg !759
  store double %181, double* %183, align 8, !dbg !760
  %184 = load double, double* %6, align 8, !dbg !761
  %185 = fsub double 1.000000e+00, %184, !dbg !762
  %186 = call double @fabs(double %185) #1, !dbg !763
  %187 = load double, double* %6, align 8, !dbg !764
  %188 = fsub double 1.000000e+00, %187, !dbg !765
  %189 = load double, double* %7, align 8, !dbg !766
  %190 = fsub double %188, %189, !dbg !767
  %191 = call double @fabs(double %190) #1, !dbg !768
  %192 = fadd double %186, %191, !dbg !769
  %193 = fmul double 0x3CC0000000000000, %192, !dbg !770
  %194 = load double, double* %20, align 8, !dbg !771
  %195 = call double @fabs(double %194) #1, !dbg !772
  %196 = fmul double %193, %195, !dbg !774
  %197 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !775
  %198 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %197, i32 0, i32 1, !dbg !776
  %199 = load double, double* %198, align 8, !dbg !777
  %200 = fadd double %199, %196, !dbg !777
  store double %200, double* %198, align 8, !dbg !777
  %201 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !778
  %202 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %201, i32 0, i32 0, !dbg !779
  %203 = load double, double* %202, align 8, !dbg !779
  %204 = call double @fabs(double %203) #1, !dbg !780
  %205 = fmul double 0x3CC0000000000000, %204, !dbg !781
  %206 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !782
  %207 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %206, i32 0, i32 1, !dbg !783
  %208 = load double, double* %207, align 8, !dbg !784
  %209 = fadd double %208, %205, !dbg !784
  store double %209, double* %207, align 8, !dbg !784
  %210 = load double, double* %16, align 8, !dbg !785
  %211 = load double, double* %17, align 8, !dbg !785
  %212 = fmul double %210, %211, !dbg !785
  %213 = fcmp oge double %212, 0.000000e+00, !dbg !785
  %214 = select i1 %213, i32 1, i32 -1, !dbg !785
  %215 = sitofp i32 %214 to double, !dbg !785
  %216 = load double*, double** %9, align 8, !dbg !786
  store double %215, double* %216, align 8, !dbg !787
  %217 = load i32, i32* %19, align 4, !dbg !788
  store i32 %217, i32* %5, align 4, !dbg !789
  br label %286, !dbg !789

; <label>:218:                                    ; preds = %162
  br label %283, !dbg !790

; <label>:219:                                    ; preds = %132, %129
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %21, metadata !791, metadata !66), !dbg !793
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %22, metadata !794, metadata !66), !dbg !795
  call void @llvm.dbg.declare(metadata double* %23, metadata !796, metadata !66), !dbg !797
  call void @llvm.dbg.declare(metadata double* %24, metadata !798, metadata !66), !dbg !799
  call void @llvm.dbg.declare(metadata i32* %25, metadata !800, metadata !66), !dbg !801
  %220 = load double, double* %6, align 8, !dbg !802
  %221 = load double, double* %7, align 8, !dbg !803
  %222 = fadd double %220, %221, !dbg !804
  %223 = call i32 @gsl_sf_lngamma_sgn_e(double %222, %struct.gsl_sf_result_struct* %21, double* %23), !dbg !805
  store i32 %223, i32* %25, align 4, !dbg !801
  call void @llvm.dbg.declare(metadata i32* %26, metadata !806, metadata !66), !dbg !807
  %224 = load double, double* %6, align 8, !dbg !808
  %225 = call i32 @gsl_sf_lngamma_sgn_e(double %224, %struct.gsl_sf_result_struct* %22, double* %24), !dbg !809
  store i32 %225, i32* %26, align 4, !dbg !807
  %226 = load i32, i32* %25, align 4, !dbg !810
  %227 = icmp eq i32 %226, 0, !dbg !812
  br i1 %227, label %228, label %259, !dbg !813

; <label>:228:                                    ; preds = %219
  %229 = load i32, i32* %26, align 4, !dbg !814
  %230 = icmp eq i32 %229, 0, !dbg !816
  br i1 %230, label %231, label %259, !dbg !817

; <label>:231:                                    ; preds = %228
  %232 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %21, i32 0, i32 0, !dbg !818
  %233 = load double, double* %232, align 8, !dbg !818
  %234 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %22, i32 0, i32 0, !dbg !820
  %235 = load double, double* %234, align 8, !dbg !820
  %236 = fsub double %233, %235, !dbg !821
  %237 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !822
  %238 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %237, i32 0, i32 0, !dbg !823
  store double %236, double* %238, align 8, !dbg !824
  %239 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %21, i32 0, i32 1, !dbg !825
  %240 = load double, double* %239, align 8, !dbg !825
  %241 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %22, i32 0, i32 1, !dbg !826
  %242 = load double, double* %241, align 8, !dbg !826
  %243 = fadd double %240, %242, !dbg !827
  %244 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !828
  %245 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %244, i32 0, i32 1, !dbg !829
  store double %243, double* %245, align 8, !dbg !830
  %246 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !831
  %247 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %246, i32 0, i32 0, !dbg !832
  %248 = load double, double* %247, align 8, !dbg !832
  %249 = call double @fabs(double %248) #1, !dbg !833
  %250 = fmul double 0x3CC0000000000000, %249, !dbg !834
  %251 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !835
  %252 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %251, i32 0, i32 1, !dbg !836
  %253 = load double, double* %252, align 8, !dbg !837
  %254 = fadd double %253, %250, !dbg !837
  store double %254, double* %252, align 8, !dbg !837
  %255 = load double, double* %24, align 8, !dbg !838
  %256 = load double, double* %23, align 8, !dbg !839
  %257 = fmul double %255, %256, !dbg !840
  %258 = load double*, double** %9, align 8, !dbg !841
  store double %257, double* %258, align 8, !dbg !842
  store i32 0, i32* %5, align 4, !dbg !843
  br label %286, !dbg !843

; <label>:259:                                    ; preds = %228, %219
  %260 = load i32, i32* %25, align 4, !dbg !844
  %261 = icmp eq i32 %260, 1, !dbg !846
  br i1 %261, label %265, label %262, !dbg !847

; <label>:262:                                    ; preds = %259
  %263 = load i32, i32* %26, align 4, !dbg !848
  %264 = icmp eq i32 %263, 1, !dbg !850
  br i1 %264, label %265, label %275, !dbg !851

; <label>:265:                                    ; preds = %262, %259
  %266 = load double*, double** %9, align 8, !dbg !852
  store double 0.000000e+00, double* %266, align 8, !dbg !854
  br label %267, !dbg !855, !llvm.loop !856

; <label>:267:                                    ; preds = %265
  %268 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !857
  %269 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %268, i32 0, i32 0, !dbg !857
  store double 0x7FF8000000000000, double* %269, align 8, !dbg !857
  %270 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !857
  %271 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %270, i32 0, i32 1, !dbg !857
  store double 0x7FF8000000000000, double* %271, align 8, !dbg !857
  br label %272, !dbg !857, !llvm.loop !860

; <label>:272:                                    ; preds = %267
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 380, i32 1), !dbg !862
  store i32 1, i32* %5, align 4, !dbg !862
  br label %286, !dbg !862
                                                  ; No predecessors!
  br label %274, !dbg !865

; <label>:274:                                    ; preds = %273
  br label %281, !dbg !867

; <label>:275:                                    ; preds = %262
  %276 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !868
  %277 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %276, i32 0, i32 0, !dbg !870
  store double 0.000000e+00, double* %277, align 8, !dbg !871
  %278 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !872
  %279 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %278, i32 0, i32 1, !dbg !873
  store double 0.000000e+00, double* %279, align 8, !dbg !874
  %280 = load double*, double** %9, align 8, !dbg !875
  store double 0.000000e+00, double* %280, align 8, !dbg !876
  store i32 -1, i32* %5, align 4, !dbg !877
  br label %286, !dbg !877

; <label>:281:                                    ; preds = %274
  br label %282

; <label>:282:                                    ; preds = %281
  br label %283

; <label>:283:                                    ; preds = %282, %218
  br label %284

; <label>:284:                                    ; preds = %283
  br label %285

; <label>:285:                                    ; preds = %284
  br label %286

; <label>:286:                                    ; preds = %29, %43, %67, %105, %123, %160, %163, %231, %272, %275, %285
  %287 = load i32, i32* %5, align 4, !dbg !878
  ret i32 %287, !dbg !878
}

; Function Attrs: nounwind readnone
declare double @floor(double) #3

; Function Attrs: nounwind
declare double @log(double) #4

; Function Attrs: nounwind
declare double @fmod(double, double) #4

declare i32 @gsl_sf_lngamma_sgn_e(double, %struct.gsl_sf_result_struct*, double*) #2

; Function Attrs: nounwind
declare double @sin(double) #4

; Function Attrs: nounwind readnone
declare double @fabs(double) #3

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_poch_e(double, double, %struct.gsl_sf_result_struct*) #0 !dbg !879 {
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca %struct.gsl_sf_result_struct*, align 8
  %8 = alloca %struct.gsl_sf_result_struct, align 8
  %9 = alloca double, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store double %0, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !880, metadata !66), !dbg !881
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !882, metadata !66), !dbg !883
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %7, metadata !884, metadata !66), !dbg !885
  %12 = load double, double* %6, align 8, !dbg !886
  %13 = fcmp oeq double %12, 0.000000e+00, !dbg !888
  br i1 %13, label %14, label %19, !dbg !889

; <label>:14:                                     ; preds = %3
  %15 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !890
  %16 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %15, i32 0, i32 0, !dbg !892
  store double 1.000000e+00, double* %16, align 8, !dbg !893
  %17 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !894
  %18 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %17, i32 0, i32 1, !dbg !895
  store double 0.000000e+00, double* %18, align 8, !dbg !896
  store i32 0, i32* %4, align 4, !dbg !897
  br label %67, !dbg !897

; <label>:19:                                     ; preds = %3
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %8, metadata !898, metadata !66), !dbg !900
  call void @llvm.dbg.declare(metadata double* %9, metadata !901, metadata !66), !dbg !902
  call void @llvm.dbg.declare(metadata i32* %10, metadata !903, metadata !66), !dbg !904
  %20 = load double, double* %5, align 8, !dbg !905
  %21 = load double, double* %6, align 8, !dbg !906
  %22 = call i32 @gsl_sf_lnpoch_sgn_e(double %20, double %21, %struct.gsl_sf_result_struct* %8, double* %9), !dbg !907
  store i32 %22, i32* %10, align 4, !dbg !904
  %23 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 0, !dbg !908
  %24 = load double, double* %23, align 8, !dbg !908
  %25 = fcmp oeq double %24, 0xFFF0000000000000, !dbg !910
  br i1 %25, label %26, label %32, !dbg !911

; <label>:26:                                     ; preds = %19
  %27 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !912
  %28 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %27, i32 0, i32 0, !dbg !914
  store double 0.000000e+00, double* %28, align 8, !dbg !915
  %29 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !916
  %30 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %29, i32 0, i32 1, !dbg !917
  store double 0.000000e+00, double* %30, align 8, !dbg !918
  %31 = load i32, i32* %10, align 4, !dbg !919
  store i32 %31, i32* %4, align 4, !dbg !920
  br label %67, !dbg !920

; <label>:32:                                     ; preds = %19
  call void @llvm.dbg.declare(metadata i32* %11, metadata !921, metadata !66), !dbg !923
  %33 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 0, !dbg !924
  %34 = load double, double* %33, align 8, !dbg !924
  %35 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 1, !dbg !925
  %36 = load double, double* %35, align 8, !dbg !925
  %37 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !926
  %38 = call i32 @gsl_sf_exp_err_e(double %34, double %36, %struct.gsl_sf_result_struct* %37), !dbg !927
  store i32 %38, i32* %11, align 4, !dbg !923
  %39 = load double, double* %9, align 8, !dbg !928
  %40 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !929
  %41 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %40, i32 0, i32 0, !dbg !930
  %42 = load double, double* %41, align 8, !dbg !931
  %43 = fmul double %42, %39, !dbg !931
  store double %43, double* %41, align 8, !dbg !931
  %44 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !932
  %45 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %44, i32 0, i32 0, !dbg !933
  %46 = load double, double* %45, align 8, !dbg !933
  %47 = call double @fabs(double %46) #1, !dbg !934
  %48 = fmul double 0x3CC0000000000000, %47, !dbg !935
  %49 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !936
  %50 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %49, i32 0, i32 1, !dbg !937
  %51 = load double, double* %50, align 8, !dbg !938
  %52 = fadd double %51, %48, !dbg !938
  store double %52, double* %50, align 8, !dbg !938
  %53 = load i32, i32* %11, align 4, !dbg !939
  %54 = icmp ne i32 %53, 0, !dbg !939
  br i1 %54, label %55, label %57, !dbg !939

; <label>:55:                                     ; preds = %32
  %56 = load i32, i32* %11, align 4, !dbg !940
  br label %65, !dbg !940

; <label>:57:                                     ; preds = %32
  %58 = load i32, i32* %10, align 4, !dbg !942
  %59 = icmp ne i32 %58, 0, !dbg !942
  br i1 %59, label %60, label %62, !dbg !942

; <label>:60:                                     ; preds = %57
  %61 = load i32, i32* %10, align 4, !dbg !944
  br label %63, !dbg !944

; <label>:62:                                     ; preds = %57
  br label %63, !dbg !946

; <label>:63:                                     ; preds = %62, %60
  %64 = phi i32 [ %61, %60 ], [ 0, %62 ], !dbg !948
  br label %65, !dbg !948

; <label>:65:                                     ; preds = %63, %55
  %66 = phi i32 [ %56, %55 ], [ %64, %63 ], !dbg !950
  store i32 %66, i32* %4, align 4, !dbg !952
  br label %67, !dbg !952

; <label>:67:                                     ; preds = %65, %26, %14
  %68 = load i32, i32* %4, align 4, !dbg !953
  ret i32 %68, !dbg !953
}

declare i32 @gsl_sf_exp_err_e(double, double, %struct.gsl_sf_result_struct*) #2

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_pochrel_e(double, double, %struct.gsl_sf_result_struct*) #0 !dbg !954 {
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca %struct.gsl_sf_result_struct*, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca %struct.gsl_sf_result_struct, align 8
  %11 = alloca double, align 8
  %12 = alloca i32, align 4
  %13 = alloca double, align 8
  store double %0, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !955, metadata !66), !dbg !956
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !957, metadata !66), !dbg !958
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %7, metadata !959, metadata !66), !dbg !960
  call void @llvm.dbg.declare(metadata double* %8, metadata !961, metadata !66), !dbg !962
  %14 = load double, double* %6, align 8, !dbg !963
  %15 = call double @fabs(double %14) #1, !dbg !964
  store double %15, double* %8, align 8, !dbg !962
  call void @llvm.dbg.declare(metadata double* %9, metadata !965, metadata !66), !dbg !966
  %16 = load double, double* %5, align 8, !dbg !967
  %17 = call double @fabs(double %16) #1, !dbg !968
  store double %17, double* %9, align 8, !dbg !966
  %18 = load double, double* %8, align 8, !dbg !969
  %19 = load double, double* %9, align 8, !dbg !971
  %20 = fmul double 1.000000e-01, %19, !dbg !972
  %21 = fcmp ogt double %18, %20, !dbg !973
  br i1 %21, label %34, label %22, !dbg !974

; <label>:22:                                     ; preds = %3
  %23 = load double, double* %8, align 8, !dbg !975
  %24 = load double, double* %9, align 8, !dbg !977
  %25 = fcmp ogt double %24, 2.000000e+00, !dbg !977
  br i1 %25, label %26, label %28, !dbg !977

; <label>:26:                                     ; preds = %22
  %27 = load double, double* %9, align 8, !dbg !978
  br label %29, !dbg !978

; <label>:28:                                     ; preds = %22
  br label %29, !dbg !980

; <label>:29:                                     ; preds = %28, %26
  %30 = phi double [ %27, %26 ], [ 2.000000e+00, %28 ], !dbg !982
  %31 = call double @log(double %30) #5, !dbg !984
  %32 = fmul double %23, %31, !dbg !985
  %33 = fcmp ogt double %32, 1.000000e-01, !dbg !986
  br i1 %33, label %34, label %87, !dbg !987

; <label>:34:                                     ; preds = %29, %3
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %10, metadata !988, metadata !66), !dbg !990
  call void @llvm.dbg.declare(metadata double* %11, metadata !991, metadata !66), !dbg !992
  call void @llvm.dbg.declare(metadata i32* %12, metadata !993, metadata !66), !dbg !994
  %35 = load double, double* %5, align 8, !dbg !995
  %36 = load double, double* %6, align 8, !dbg !996
  %37 = call i32 @gsl_sf_lnpoch_sgn_e(double %35, double %36, %struct.gsl_sf_result_struct* %10, double* %11), !dbg !997
  store i32 %37, i32* %12, align 4, !dbg !994
  %38 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !998
  %39 = load double, double* %38, align 8, !dbg !998
  %40 = fcmp ogt double %39, 0x40862E42FEFA39EF, !dbg !1000
  br i1 %40, label %41, label %50, !dbg !1001

; <label>:41:                                     ; preds = %34
  br label %42, !dbg !1002, !llvm.loop !1004

; <label>:42:                                     ; preds = %41
  %43 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1005
  %44 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %43, i32 0, i32 0, !dbg !1005
  store double 0x7FF0000000000000, double* %44, align 8, !dbg !1005
  %45 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1005
  %46 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %45, i32 0, i32 1, !dbg !1005
  store double 0x7FF0000000000000, double* %46, align 8, !dbg !1005
  br label %47, !dbg !1005, !llvm.loop !1008

; <label>:47:                                     ; preds = %42
  call void @gsl_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 432, i32 16), !dbg !1010
  store i32 16, i32* %4, align 4, !dbg !1010
  br label %92, !dbg !1010
                                                  ; No predecessors!
  br label %49, !dbg !1013

; <label>:49:                                     ; preds = %48
  br label %86, !dbg !1015

; <label>:50:                                     ; preds = %34
  call void @llvm.dbg.declare(metadata double* %13, metadata !1016, metadata !66), !dbg !1018
  %51 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !1019
  %52 = load double, double* %51, align 8, !dbg !1019
  %53 = call double @exp(double %52) #5, !dbg !1020
  store double %53, double* %13, align 8, !dbg !1018
  %54 = load double, double* %11, align 8, !dbg !1021
  %55 = load double, double* %13, align 8, !dbg !1022
  %56 = fmul double %54, %55, !dbg !1023
  %57 = fsub double %56, 1.000000e+00, !dbg !1024
  %58 = load double, double* %6, align 8, !dbg !1025
  %59 = fdiv double %57, %58, !dbg !1026
  %60 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1027
  %61 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %60, i32 0, i32 0, !dbg !1028
  store double %59, double* %61, align 8, !dbg !1029
  %62 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1030
  %63 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %62, i32 0, i32 0, !dbg !1031
  %64 = load double, double* %63, align 8, !dbg !1031
  %65 = call double @fabs(double %64) #1, !dbg !1032
  %66 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 1, !dbg !1033
  %67 = load double, double* %66, align 8, !dbg !1033
  %68 = fadd double %67, 0x3CC0000000000000, !dbg !1034
  %69 = fmul double %65, %68, !dbg !1035
  %70 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1036
  %71 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %70, i32 0, i32 1, !dbg !1037
  store double %69, double* %71, align 8, !dbg !1038
  %72 = load double, double* %11, align 8, !dbg !1039
  %73 = load double, double* %13, align 8, !dbg !1040
  %74 = fmul double %72, %73, !dbg !1041
  %75 = call double @fabs(double %74) #1, !dbg !1042
  %76 = fadd double %75, 1.000000e+00, !dbg !1043
  %77 = fmul double 0x3CC0000000000000, %76, !dbg !1044
  %78 = load double, double* %6, align 8, !dbg !1045
  %79 = call double @fabs(double %78) #1, !dbg !1046
  %80 = fdiv double %77, %79, !dbg !1048
  %81 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1049
  %82 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %81, i32 0, i32 1, !dbg !1050
  %83 = load double, double* %82, align 8, !dbg !1051
  %84 = fadd double %83, %80, !dbg !1051
  store double %84, double* %82, align 8, !dbg !1051
  %85 = load i32, i32* %12, align 4, !dbg !1052
  store i32 %85, i32* %4, align 4, !dbg !1053
  br label %92, !dbg !1053

; <label>:86:                                     ; preds = %49
  br label %92, !dbg !1054

; <label>:87:                                     ; preds = %29
  %88 = load double, double* %5, align 8, !dbg !1055
  %89 = load double, double* %6, align 8, !dbg !1057
  %90 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1058
  %91 = call i32 @pochrel_smallx(double %88, double %89, %struct.gsl_sf_result_struct* %90), !dbg !1059
  store i32 %91, i32* %4, align 4, !dbg !1060
  br label %92, !dbg !1060

; <label>:92:                                     ; preds = %47, %50, %87, %86
  %93 = load i32, i32* %4, align 4, !dbg !1061
  ret i32 %93, !dbg !1061
}

; Function Attrs: nounwind
declare double @exp(double) #4

; Function Attrs: nounwind uwtable
define internal i32 @pochrel_smallx(double, double, %struct.gsl_sf_result_struct*) #0 !dbg !1062 {
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca %struct.gsl_sf_result_struct*, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca %struct.gsl_sf_result_struct, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca i32, align 4
  %22 = alloca double, align 8
  %23 = alloca double, align 8
  %24 = alloca double, align 8
  %25 = alloca [24 x double], align 16
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca double, align 8
  %29 = alloca double, align 8
  %30 = alloca double, align 8
  %31 = alloca double, align 8
  %32 = alloca double, align 8
  %33 = alloca double, align 8
  %34 = alloca double, align 8
  store double %0, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !1063, metadata !66), !dbg !1064
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !1065, metadata !66), !dbg !1066
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %7, metadata !1067, metadata !66), !dbg !1068
  call void @llvm.dbg.declare(metadata double* %8, metadata !1069, metadata !66), !dbg !1070
  store double 0x5FBA20BD700C2C3D, double* %8, align 8, !dbg !1070
  call void @llvm.dbg.declare(metadata double* %9, metadata !1071, metadata !66), !dbg !1072
  store double 0xC0425E4F7B2737FA, double* %9, align 8, !dbg !1072
  %35 = load double, double* %6, align 8, !dbg !1073
  %36 = fcmp oeq double %35, 0.000000e+00, !dbg !1075
  br i1 %36, label %37, label %41, !dbg !1076

; <label>:37:                                     ; preds = %3
  %38 = load double, double* %5, align 8, !dbg !1077
  %39 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1079
  %40 = call i32 @gsl_sf_psi_e(double %38, %struct.gsl_sf_result_struct* %39), !dbg !1080
  store i32 %40, i32* %4, align 4, !dbg !1081
  br label %313, !dbg !1081

; <label>:41:                                     ; preds = %3
  call void @llvm.dbg.declare(metadata double* %10, metadata !1082, metadata !66), !dbg !1084
  %42 = load double, double* %5, align 8, !dbg !1085
  %43 = fcmp olt double %42, -5.000000e-01, !dbg !1086
  br i1 %43, label %44, label %49, !dbg !1087

; <label>:44:                                     ; preds = %41
  %45 = load double, double* %5, align 8, !dbg !1088
  %46 = fsub double 1.000000e+00, %45, !dbg !1090
  %47 = load double, double* %6, align 8, !dbg !1091
  %48 = fsub double %46, %47, !dbg !1092
  br label %51, !dbg !1093

; <label>:49:                                     ; preds = %41
  %50 = load double, double* %5, align 8, !dbg !1094
  br label %51, !dbg !1096

; <label>:51:                                     ; preds = %49, %44
  %52 = phi double [ %48, %44 ], [ %50, %49 ], !dbg !1097
  store double %52, double* %10, align 8, !dbg !1099
  call void @llvm.dbg.declare(metadata i32* %11, metadata !1100, metadata !66), !dbg !1102
  %53 = load double, double* %10, align 8, !dbg !1103
  %54 = fcmp olt double %53, 1.000000e+01, !dbg !1104
  br i1 %54, label %55, label %58, !dbg !1105

; <label>:55:                                     ; preds = %51
  %56 = load double, double* %10, align 8, !dbg !1106
  %57 = fsub double 1.100000e+01, %56, !dbg !1107
  br label %59, !dbg !1108

; <label>:58:                                     ; preds = %51
  br label %59, !dbg !1109

; <label>:59:                                     ; preds = %58, %55
  %60 = phi double [ %57, %55 ], [ 0.000000e+00, %58 ], !dbg !1110
  %61 = fptosi double %60 to i32, !dbg !1111
  store i32 %61, i32* %11, align 4, !dbg !1112
  call void @llvm.dbg.declare(metadata double* %12, metadata !1113, metadata !66), !dbg !1114
  %62 = load double, double* %10, align 8, !dbg !1115
  %63 = load i32, i32* %11, align 4, !dbg !1116
  %64 = sitofp i32 %63 to double, !dbg !1116
  %65 = fadd double %62, %64, !dbg !1117
  store double %65, double* %12, align 8, !dbg !1114
  call void @llvm.dbg.declare(metadata double* %13, metadata !1118, metadata !66), !dbg !1119
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %14, metadata !1120, metadata !66), !dbg !1121
  call void @llvm.dbg.declare(metadata i32* %15, metadata !1122, metadata !66), !dbg !1123
  call void @llvm.dbg.declare(metadata i32* %16, metadata !1124, metadata !66), !dbg !1125
  call void @llvm.dbg.declare(metadata double* %17, metadata !1126, metadata !66), !dbg !1127
  %66 = load double, double* %12, align 8, !dbg !1128
  %67 = load double, double* %6, align 8, !dbg !1129
  %68 = fsub double %67, 1.000000e+00, !dbg !1130
  %69 = fmul double 5.000000e-01, %68, !dbg !1131
  %70 = fadd double %66, %69, !dbg !1132
  store double %70, double* %17, align 8, !dbg !1127
  call void @llvm.dbg.declare(metadata double* %18, metadata !1133, metadata !66), !dbg !1134
  %71 = load double, double* %17, align 8, !dbg !1135
  %72 = call double @log(double %71) #5, !dbg !1136
  store double %72, double* %18, align 8, !dbg !1134
  call void @llvm.dbg.declare(metadata double* %19, metadata !1137, metadata !66), !dbg !1138
  %73 = load double, double* %6, align 8, !dbg !1139
  %74 = load double, double* %18, align 8, !dbg !1140
  %75 = fmul double %73, %74, !dbg !1141
  store double %75, double* %19, align 8, !dbg !1138
  call void @llvm.dbg.declare(metadata double* %20, metadata !1142, metadata !66), !dbg !1143
  store double 0.000000e+00, double* %20, align 8, !dbg !1143
  %76 = load double, double* %17, align 8, !dbg !1144
  %77 = fcmp olt double %76, 0x5FBA20BD700C2C3D, !dbg !1146
  br i1 %77, label %78, label %179, !dbg !1147

; <label>:78:                                     ; preds = %59
  call void @llvm.dbg.declare(metadata i32* %21, metadata !1148, metadata !66), !dbg !1150
  %79 = load double, double* %18, align 8, !dbg !1151
  %80 = fdiv double 0x40325E4F7B2737FA, %79, !dbg !1152
  %81 = fadd double %80, 1.000000e+00, !dbg !1153
  %82 = fptosi double %81 to i32, !dbg !1154
  store i32 %82, i32* %21, align 4, !dbg !1150
  call void @llvm.dbg.declare(metadata double* %22, metadata !1155, metadata !66), !dbg !1156
  %83 = load double, double* %17, align 8, !dbg !1157
  %84 = fdiv double 1.000000e+00, %83, !dbg !1158
  %85 = load double, double* %17, align 8, !dbg !1159
  %86 = fdiv double %84, %85, !dbg !1160
  store double %86, double* %22, align 8, !dbg !1156
  call void @llvm.dbg.declare(metadata double* %23, metadata !1161, metadata !66), !dbg !1162
  %87 = load double, double* %6, align 8, !dbg !1163
  %88 = fadd double %87, 1.000000e+00, !dbg !1164
  %89 = fmul double 5.000000e-01, %88, !dbg !1165
  store double %89, double* %23, align 8, !dbg !1162
  call void @llvm.dbg.declare(metadata double* %24, metadata !1166, metadata !66), !dbg !1167
  %90 = load double, double* %22, align 8, !dbg !1168
  store double %90, double* %24, align 8, !dbg !1167
  call void @llvm.dbg.declare(metadata [24 x double]* %25, metadata !1169, metadata !66), !dbg !1173
  call void @llvm.dbg.declare(metadata i32* %26, metadata !1174, metadata !66), !dbg !1175
  call void @llvm.dbg.declare(metadata i32* %27, metadata !1176, metadata !66), !dbg !1177
  %91 = getelementptr inbounds [24 x double], [24 x double]* %25, i64 0, i64 1, !dbg !1178
  store double 1.000000e+00, double* %91, align 8, !dbg !1179
  %92 = load double, double* %23, align 8, !dbg !1180
  %93 = fsub double -0.000000e+00, %92, !dbg !1181
  %94 = fdiv double %93, 1.200000e+01, !dbg !1182
  %95 = getelementptr inbounds [24 x double], [24 x double]* %25, i64 0, i64 2, !dbg !1183
  store double %94, double* %95, align 16, !dbg !1184
  %96 = getelementptr inbounds [24 x double], [24 x double]* %25, i64 0, i64 2, !dbg !1185
  %97 = load double, double* %96, align 16, !dbg !1185
  %98 = load double, double* %24, align 8, !dbg !1186
  %99 = fmul double %97, %98, !dbg !1187
  store double %99, double* %20, align 8, !dbg !1188
  %100 = load i32, i32* %21, align 4, !dbg !1189
  %101 = icmp sgt i32 %100, 20, !dbg !1191
  br i1 %101, label %102, label %109, !dbg !1192

; <label>:102:                                    ; preds = %78
  %103 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1193
  %104 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %103, i32 0, i32 0, !dbg !1195
  store double 0.000000e+00, double* %104, align 8, !dbg !1196
  %105 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1197
  %106 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %105, i32 0, i32 1, !dbg !1198
  store double 0.000000e+00, double* %106, align 8, !dbg !1199
  br label %107, !dbg !1200, !llvm.loop !1201

; <label>:107:                                    ; preds = %102
  call void @gsl_error(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 128, i32 7), !dbg !1202
  store i32 7, i32* %4, align 4, !dbg !1202
  br label %313, !dbg !1202
                                                  ; No predecessors!
  br label %109, !dbg !1205

; <label>:109:                                    ; preds = %108, %78
  store i32 2, i32* %26, align 4, !dbg !1206
  br label %110, !dbg !1208

; <label>:110:                                    ; preds = %175, %109
  %111 = load i32, i32* %26, align 4, !dbg !1209
  %112 = load i32, i32* %21, align 4, !dbg !1212
  %113 = icmp sle i32 %111, %112, !dbg !1213
  br i1 %113, label %114, label %178, !dbg !1214

; <label>:114:                                    ; preds = %110
  call void @llvm.dbg.declare(metadata double* %28, metadata !1215, metadata !66), !dbg !1217
  store double 0.000000e+00, double* %28, align 8, !dbg !1217
  store i32 1, i32* %27, align 4, !dbg !1218
  br label %115, !dbg !1220

; <label>:115:                                    ; preds = %134, %114
  %116 = load i32, i32* %27, align 4, !dbg !1221
  %117 = load i32, i32* %26, align 4, !dbg !1224
  %118 = icmp sle i32 %116, %117, !dbg !1225
  br i1 %118, label %119, label %137, !dbg !1226

; <label>:119:                                    ; preds = %115
  %120 = load i32, i32* %26, align 4, !dbg !1227
  %121 = load i32, i32* %27, align 4, !dbg !1229
  %122 = sub nsw i32 %120, %121, !dbg !1230
  %123 = add nsw i32 %122, 1, !dbg !1231
  %124 = sext i32 %123 to i64, !dbg !1232
  %125 = getelementptr inbounds [21 x double], [21 x double]* @bern, i64 0, i64 %124, !dbg !1232
  %126 = load double, double* %125, align 8, !dbg !1232
  %127 = load i32, i32* %27, align 4, !dbg !1233
  %128 = sext i32 %127 to i64, !dbg !1234
  %129 = getelementptr inbounds [24 x double], [24 x double]* %25, i64 0, i64 %128, !dbg !1234
  %130 = load double, double* %129, align 8, !dbg !1234
  %131 = fmul double %126, %130, !dbg !1235
  %132 = load double, double* %28, align 8, !dbg !1236
  %133 = fadd double %132, %131, !dbg !1236
  store double %133, double* %28, align 8, !dbg !1236
  br label %134, !dbg !1237

; <label>:134:                                    ; preds = %119
  %135 = load i32, i32* %27, align 4, !dbg !1238
  %136 = add nsw i32 %135, 1, !dbg !1238
  store i32 %136, i32* %27, align 4, !dbg !1238
  br label %115, !dbg !1240, !llvm.loop !1241

; <label>:137:                                    ; preds = %115
  %138 = load double, double* %23, align 8, !dbg !1243
  %139 = fsub double -0.000000e+00, %138, !dbg !1244
  %140 = load double, double* %28, align 8, !dbg !1245
  %141 = fmul double %139, %140, !dbg !1246
  %142 = load i32, i32* %26, align 4, !dbg !1247
  %143 = sitofp i32 %142 to double, !dbg !1247
  %144 = fdiv double %141, %143, !dbg !1248
  %145 = load i32, i32* %26, align 4, !dbg !1249
  %146 = add nsw i32 %145, 1, !dbg !1250
  %147 = sext i32 %146 to i64, !dbg !1251
  %148 = getelementptr inbounds [24 x double], [24 x double]* %25, i64 0, i64 %147, !dbg !1251
  store double %144, double* %148, align 8, !dbg !1252
  %149 = load i32, i32* %26, align 4, !dbg !1253
  %150 = mul nsw i32 2, %149, !dbg !1254
  %151 = sub nsw i32 %150, 2, !dbg !1255
  %152 = sitofp i32 %151 to double, !dbg !1256
  %153 = load double, double* %6, align 8, !dbg !1257
  %154 = fsub double %152, %153, !dbg !1258
  %155 = load i32, i32* %26, align 4, !dbg !1259
  %156 = mul nsw i32 2, %155, !dbg !1260
  %157 = sub nsw i32 %156, 1, !dbg !1261
  %158 = sitofp i32 %157 to double, !dbg !1262
  %159 = load double, double* %6, align 8, !dbg !1263
  %160 = fsub double %158, %159, !dbg !1264
  %161 = fmul double %154, %160, !dbg !1265
  %162 = load double, double* %22, align 8, !dbg !1266
  %163 = fmul double %161, %162, !dbg !1267
  %164 = load double, double* %24, align 8, !dbg !1268
  %165 = fmul double %164, %163, !dbg !1268
  store double %165, double* %24, align 8, !dbg !1268
  %166 = load i32, i32* %26, align 4, !dbg !1269
  %167 = add nsw i32 %166, 1, !dbg !1270
  %168 = sext i32 %167 to i64, !dbg !1271
  %169 = getelementptr inbounds [24 x double], [24 x double]* %25, i64 0, i64 %168, !dbg !1271
  %170 = load double, double* %169, align 8, !dbg !1271
  %171 = load double, double* %24, align 8, !dbg !1272
  %172 = fmul double %170, %171, !dbg !1273
  %173 = load double, double* %20, align 8, !dbg !1274
  %174 = fadd double %173, %172, !dbg !1274
  store double %174, double* %20, align 8, !dbg !1274
  br label %175, !dbg !1275

; <label>:175:                                    ; preds = %137
  %176 = load i32, i32* %26, align 4, !dbg !1276
  %177 = add nsw i32 %176, 1, !dbg !1276
  store i32 %177, i32* %26, align 4, !dbg !1276
  br label %110, !dbg !1278, !llvm.loop !1279

; <label>:178:                                    ; preds = %110
  br label %179, !dbg !1281

; <label>:179:                                    ; preds = %178, %59
  %180 = load double, double* %19, align 8, !dbg !1282
  %181 = call i32 @gsl_sf_expm1_e(double %180, %struct.gsl_sf_result_struct* %14), !dbg !1283
  store i32 %181, i32* %15, align 4, !dbg !1284
  %182 = load i32, i32* %15, align 4, !dbg !1285
  %183 = icmp ne i32 %182, 0, !dbg !1287
  br i1 %183, label %184, label %190, !dbg !1288

; <label>:184:                                    ; preds = %179
  %185 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1289
  %186 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %185, i32 0, i32 0, !dbg !1291
  store double 0.000000e+00, double* %186, align 8, !dbg !1292
  %187 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1293
  %188 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %187, i32 0, i32 1, !dbg !1294
  store double 0.000000e+00, double* %188, align 8, !dbg !1295
  %189 = load i32, i32* %15, align 4, !dbg !1296
  store i32 %189, i32* %4, align 4, !dbg !1297
  br label %313, !dbg !1297

; <label>:190:                                    ; preds = %179
  %191 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 0, !dbg !1298
  %192 = load double, double* %191, align 8, !dbg !1298
  %193 = load double, double* %19, align 8, !dbg !1299
  %194 = fdiv double %192, %193, !dbg !1300
  %195 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 0, !dbg !1301
  store double %194, double* %195, align 8, !dbg !1302
  %196 = load double, double* %6, align 8, !dbg !1303
  %197 = fsub double %196, 1.000000e+00, !dbg !1304
  %198 = load double, double* %20, align 8, !dbg !1305
  %199 = fmul double %198, %197, !dbg !1305
  store double %199, double* %20, align 8, !dbg !1305
  %200 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 0, !dbg !1306
  %201 = load double, double* %200, align 8, !dbg !1306
  %202 = load double, double* %18, align 8, !dbg !1307
  %203 = load double, double* %19, align 8, !dbg !1308
  %204 = load double, double* %20, align 8, !dbg !1309
  %205 = fmul double %203, %204, !dbg !1310
  %206 = fadd double %202, %205, !dbg !1311
  %207 = fmul double %201, %206, !dbg !1312
  %208 = load double, double* %20, align 8, !dbg !1313
  %209 = fadd double %207, %208, !dbg !1314
  store double %209, double* %13, align 8, !dbg !1315
  %210 = load i32, i32* %11, align 4, !dbg !1316
  %211 = sub nsw i32 %210, 1, !dbg !1318
  store i32 %211, i32* %16, align 4, !dbg !1319
  br label %212, !dbg !1320

; <label>:212:                                    ; preds = %229, %190
  %213 = load i32, i32* %16, align 4, !dbg !1321
  %214 = icmp sge i32 %213, 0, !dbg !1324
  br i1 %214, label %215, label %232, !dbg !1325

; <label>:215:                                    ; preds = %212
  call void @llvm.dbg.declare(metadata double* %29, metadata !1326, metadata !66), !dbg !1328
  %216 = load double, double* %10, align 8, !dbg !1329
  %217 = load i32, i32* %16, align 4, !dbg !1330
  %218 = sitofp i32 %217 to double, !dbg !1330
  %219 = fadd double %216, %218, !dbg !1331
  %220 = fdiv double 1.000000e+00, %219, !dbg !1332
  store double %220, double* %29, align 8, !dbg !1328
  %221 = load double, double* %13, align 8, !dbg !1333
  %222 = load double, double* %29, align 8, !dbg !1334
  %223 = fsub double %221, %222, !dbg !1335
  %224 = load double, double* %6, align 8, !dbg !1336
  %225 = load double, double* %29, align 8, !dbg !1337
  %226 = fmul double %224, %225, !dbg !1338
  %227 = fadd double 1.000000e+00, %226, !dbg !1339
  %228 = fdiv double %223, %227, !dbg !1340
  store double %228, double* %13, align 8, !dbg !1341
  br label %229, !dbg !1342

; <label>:229:                                    ; preds = %215
  %230 = load i32, i32* %16, align 4, !dbg !1343
  %231 = add nsw i32 %230, -1, !dbg !1343
  store i32 %231, i32* %16, align 4, !dbg !1343
  br label %212, !dbg !1345, !llvm.loop !1346

; <label>:232:                                    ; preds = %212
  %233 = load double, double* %10, align 8, !dbg !1348
  %234 = load double, double* %5, align 8, !dbg !1350
  %235 = fcmp oeq double %233, %234, !dbg !1351
  br i1 %235, label %236, label %252, !dbg !1352

; <label>:236:                                    ; preds = %232
  %237 = load double, double* %13, align 8, !dbg !1353
  %238 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1355
  %239 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %238, i32 0, i32 0, !dbg !1356
  store double %237, double* %239, align 8, !dbg !1357
  %240 = load i32, i32* %11, align 4, !dbg !1358
  %241 = sitofp i32 %240 to double, !dbg !1358
  %242 = call double @fabs(double %241) #1, !dbg !1359
  %243 = fadd double %242, 1.000000e+00, !dbg !1360
  %244 = fmul double 0x3CC0000000000000, %243, !dbg !1361
  %245 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1362
  %246 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %245, i32 0, i32 0, !dbg !1363
  %247 = load double, double* %246, align 8, !dbg !1363
  %248 = call double @fabs(double %247) #1, !dbg !1364
  %249 = fmul double %244, %248, !dbg !1366
  %250 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1367
  %251 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %250, i32 0, i32 1, !dbg !1368
  store double %249, double* %251, align 8, !dbg !1369
  store i32 0, i32* %4, align 4, !dbg !1370
  br label %313, !dbg !1370

; <label>:252:                                    ; preds = %232
  call void @llvm.dbg.declare(metadata double* %30, metadata !1371, metadata !66), !dbg !1373
  %253 = load double, double* %6, align 8, !dbg !1374
  %254 = fmul double 0x400921FB54442D18, %253, !dbg !1375
  %255 = call double @sin(double %254) #5, !dbg !1376
  %256 = load double, double* %6, align 8, !dbg !1377
  %257 = fdiv double %255, %256, !dbg !1378
  store double %257, double* %30, align 8, !dbg !1373
  call void @llvm.dbg.declare(metadata double* %31, metadata !1379, metadata !66), !dbg !1380
  %258 = load double, double* %6, align 8, !dbg !1381
  %259 = fmul double 0x3FF921FB54442D18, %258, !dbg !1382
  %260 = call double @sin(double %259) #5, !dbg !1383
  store double %260, double* %31, align 8, !dbg !1380
  call void @llvm.dbg.declare(metadata double* %32, metadata !1384, metadata !66), !dbg !1385
  %261 = load double, double* %30, align 8, !dbg !1386
  %262 = load double, double* %12, align 8, !dbg !1387
  %263 = fmul double 0x400921FB54442D18, %262, !dbg !1388
  %264 = call double @tan(double %263) #5, !dbg !1389
  %265 = fdiv double %261, %264, !dbg !1390
  store double %265, double* %32, align 8, !dbg !1385
  call void @llvm.dbg.declare(metadata double* %33, metadata !1391, metadata !66), !dbg !1392
  %266 = load double, double* %31, align 8, !dbg !1393
  %267 = fmul double 2.000000e+00, %266, !dbg !1394
  %268 = load double, double* %31, align 8, !dbg !1395
  %269 = load double, double* %6, align 8, !dbg !1396
  %270 = fdiv double %268, %269, !dbg !1397
  %271 = fmul double %267, %270, !dbg !1398
  store double %271, double* %33, align 8, !dbg !1392
  call void @llvm.dbg.declare(metadata double* %34, metadata !1399, metadata !66), !dbg !1400
  %272 = load double, double* %32, align 8, !dbg !1401
  %273 = load double, double* %33, align 8, !dbg !1402
  %274 = fsub double %272, %273, !dbg !1403
  store double %274, double* %34, align 8, !dbg !1400
  %275 = load double, double* %13, align 8, !dbg !1404
  %276 = load double, double* %6, align 8, !dbg !1405
  %277 = load double, double* %34, align 8, !dbg !1406
  %278 = fmul double %276, %277, !dbg !1407
  %279 = fadd double 1.000000e+00, %278, !dbg !1408
  %280 = fmul double %275, %279, !dbg !1409
  %281 = load double, double* %34, align 8, !dbg !1410
  %282 = fadd double %280, %281, !dbg !1411
  %283 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1412
  %284 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %283, i32 0, i32 0, !dbg !1413
  store double %282, double* %284, align 8, !dbg !1414
  %285 = load double, double* %13, align 8, !dbg !1415
  %286 = load double, double* %6, align 8, !dbg !1416
  %287 = fmul double %285, %286, !dbg !1417
  %288 = call double @fabs(double %287) #1, !dbg !1418
  %289 = fadd double %288, 1.000000e+00, !dbg !1419
  %290 = fmul double %289, 0x3CB0000000000000, !dbg !1420
  %291 = load double, double* %32, align 8, !dbg !1421
  %292 = call double @fabs(double %291) #1, !dbg !1422
  %293 = load double, double* %33, align 8, !dbg !1424
  %294 = call double @fabs(double %293) #1, !dbg !1425
  %295 = fadd double %292, %294, !dbg !1427
  %296 = fmul double %290, %295, !dbg !1428
  %297 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1429
  %298 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %297, i32 0, i32 1, !dbg !1430
  store double %296, double* %298, align 8, !dbg !1431
  %299 = load i32, i32* %11, align 4, !dbg !1432
  %300 = sitofp i32 %299 to double, !dbg !1432
  %301 = call double @fabs(double %300) #1, !dbg !1433
  %302 = fadd double %301, 1.000000e+00, !dbg !1434
  %303 = fmul double 0x3CC0000000000000, %302, !dbg !1435
  %304 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1436
  %305 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %304, i32 0, i32 0, !dbg !1437
  %306 = load double, double* %305, align 8, !dbg !1437
  %307 = call double @fabs(double %306) #1, !dbg !1438
  %308 = fmul double %303, %307, !dbg !1439
  %309 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1440
  %310 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %309, i32 0, i32 1, !dbg !1441
  %311 = load double, double* %310, align 8, !dbg !1442
  %312 = fadd double %311, %308, !dbg !1442
  store double %312, double* %310, align 8, !dbg !1442
  store i32 0, i32* %4, align 4, !dbg !1443
  br label %313, !dbg !1443

; <label>:313:                                    ; preds = %252, %236, %184, %107, %37
  %314 = load i32, i32* %4, align 4, !dbg !1444
  ret i32 %314, !dbg !1444
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_lnpoch(double, double) #0 !dbg !1445 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca %struct.gsl_sf_result_struct, align 8
  %7 = alloca i32, align 4
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !1448, metadata !66), !dbg !1449
  store double %1, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !1450, metadata !66), !dbg !1451
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %6, metadata !1452, metadata !66), !dbg !1453
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1454, metadata !66), !dbg !1453
  %8 = load double, double* %4, align 8, !dbg !1453
  %9 = load double, double* %5, align 8, !dbg !1453
  %10 = call i32 @gsl_sf_lnpoch_e(double %8, double %9, %struct.gsl_sf_result_struct* %6), !dbg !1453
  store i32 %10, i32* %7, align 4, !dbg !1453
  %11 = load i32, i32* %7, align 4, !dbg !1455
  %12 = icmp ne i32 %11, 0, !dbg !1455
  br i1 %12, label %13, label %19, !dbg !1453

; <label>:13:                                     ; preds = %2
  br label %14, !dbg !1457, !llvm.loop !1460

; <label>:14:                                     ; preds = %13
  %15 = load i32, i32* %7, align 4, !dbg !1462
  call void @gsl_error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 454, i32 %15), !dbg !1462
  %16 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !1462
  %17 = load double, double* %16, align 8, !dbg !1462
  store double %17, double* %3, align 8, !dbg !1462
  br label %22, !dbg !1462
                                                  ; No predecessors!
  br label %19, !dbg !1465

; <label>:19:                                     ; preds = %18, %2
  %20 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !1467
  %21 = load double, double* %20, align 8, !dbg !1467
  store double %21, double* %3, align 8, !dbg !1467
  br label %22, !dbg !1467

; <label>:22:                                     ; preds = %19, %14
  %23 = load double, double* %3, align 8, !dbg !1469
  ret double %23, !dbg !1469
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_poch(double, double) #0 !dbg !1470 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca %struct.gsl_sf_result_struct, align 8
  %7 = alloca i32, align 4
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !1471, metadata !66), !dbg !1472
  store double %1, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !1473, metadata !66), !dbg !1474
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %6, metadata !1475, metadata !66), !dbg !1476
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1477, metadata !66), !dbg !1476
  %8 = load double, double* %4, align 8, !dbg !1476
  %9 = load double, double* %5, align 8, !dbg !1476
  %10 = call i32 @gsl_sf_poch_e(double %8, double %9, %struct.gsl_sf_result_struct* %6), !dbg !1476
  store i32 %10, i32* %7, align 4, !dbg !1476
  %11 = load i32, i32* %7, align 4, !dbg !1478
  %12 = icmp ne i32 %11, 0, !dbg !1478
  br i1 %12, label %13, label %19, !dbg !1476

; <label>:13:                                     ; preds = %2
  br label %14, !dbg !1480, !llvm.loop !1483

; <label>:14:                                     ; preds = %13
  %15 = load i32, i32* %7, align 4, !dbg !1485
  call void @gsl_error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 459, i32 %15), !dbg !1485
  %16 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !1485
  %17 = load double, double* %16, align 8, !dbg !1485
  store double %17, double* %3, align 8, !dbg !1485
  br label %22, !dbg !1485
                                                  ; No predecessors!
  br label %19, !dbg !1488

; <label>:19:                                     ; preds = %18, %2
  %20 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !1490
  %21 = load double, double* %20, align 8, !dbg !1490
  store double %21, double* %3, align 8, !dbg !1490
  br label %22, !dbg !1490

; <label>:22:                                     ; preds = %19, %14
  %23 = load double, double* %3, align 8, !dbg !1492
  ret double %23, !dbg !1492
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_pochrel(double, double) #0 !dbg !1493 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca %struct.gsl_sf_result_struct, align 8
  %7 = alloca i32, align 4
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !1494, metadata !66), !dbg !1495
  store double %1, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !1496, metadata !66), !dbg !1497
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %6, metadata !1498, metadata !66), !dbg !1499
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1500, metadata !66), !dbg !1499
  %8 = load double, double* %4, align 8, !dbg !1499
  %9 = load double, double* %5, align 8, !dbg !1499
  %10 = call i32 @gsl_sf_pochrel_e(double %8, double %9, %struct.gsl_sf_result_struct* %6), !dbg !1499
  store i32 %10, i32* %7, align 4, !dbg !1499
  %11 = load i32, i32* %7, align 4, !dbg !1501
  %12 = icmp ne i32 %11, 0, !dbg !1501
  br i1 %12, label %13, label %19, !dbg !1499

; <label>:13:                                     ; preds = %2
  br label %14, !dbg !1503, !llvm.loop !1506

; <label>:14:                                     ; preds = %13
  %15 = load i32, i32* %7, align 4, !dbg !1508
  call void @gsl_error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 464, i32 %15), !dbg !1508
  %16 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !1508
  %17 = load double, double* %16, align 8, !dbg !1508
  store double %17, double* %3, align 8, !dbg !1508
  br label %22, !dbg !1508
                                                  ; No predecessors!
  br label %19, !dbg !1511

; <label>:19:                                     ; preds = %18, %2
  %20 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !1513
  %21 = load double, double* %20, align 8, !dbg !1513
  store double %21, double* %3, align 8, !dbg !1513
  br label %22, !dbg !1513

; <label>:22:                                     ; preds = %19, %14
  %23 = load double, double* %3, align 8, !dbg !1515
  ret double %23, !dbg !1515
}

declare double @GSL_MAX_DBL(double, double) #2

declare i32 @gsl_sf_gammainv_e(double, %struct.gsl_sf_result_struct*) #2

declare i32 @gsl_sf_lngamma_e(double, %struct.gsl_sf_result_struct*) #2

declare double @gsl_sf_pow_int(double, i32) #2

declare i32 @gsl_sf_log_1plusx_e(double, %struct.gsl_sf_result_struct*) #2

declare i32 @gsl_sf_psi_e(double, %struct.gsl_sf_result_struct*) #2

declare i32 @gsl_sf_expm1_e(double, %struct.gsl_sf_result_struct*) #2

; Function Attrs: nounwind
declare double @tan(double) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!50, !51, !52}
!llvm.ident = !{!53}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !41, globals: !43)
!1 = !DIFile(filename: "poch.c", directory: "/fpcc/gsl-2.5/specfunc")
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
!43 = !{!44}
!44 = distinct !DIGlobalVariable(name: "bern", scope: !0, file: !1, line: 34, type: !45, isLocal: true, isDefinition: true, variable: [21 x double]* @bern)
!45 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 1344, align: 64, elements: !48)
!46 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !47)
!47 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!48 = !{!49}
!49 = !DISubrange(count: 21)
!50 = !{i32 2, !"Dwarf Version", i32 4}
!51 = !{i32 2, !"Debug Info Version", i32 3}
!52 = !{i32 1, !"PIC Level", i32 2}
!53 = !{!"clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)"}
!54 = distinct !DISubprogram(name: "gsl_sf_lnpoch_e", scope: !1, file: !1, line: 282, type: !55, isLocal: false, isDefinition: true, scopeLine: 283, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !64)
!55 = !DISubroutineType(types: !56)
!56 = !{!42, !46, !46, !57}
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64, align: 64)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !59, line: 41, baseType: !60)
!59 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/fpcc/gsl-2.5/specfunc")
!60 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !59, line: 37, size: 128, align: 64, elements: !61)
!61 = !{!62, !63}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !60, file: !59, line: 38, baseType: !47, size: 64, align: 64)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !60, file: !59, line: 39, baseType: !47, size: 64, align: 64, offset: 64)
!64 = !{}
!65 = !DILocalVariable(name: "a", arg: 1, scope: !54, file: !1, line: 282, type: !46)
!66 = !DIExpression()
!67 = !DILocation(line: 282, column: 30, scope: !54)
!68 = !DILocalVariable(name: "x", arg: 2, scope: !54, file: !1, line: 282, type: !46)
!69 = !DILocation(line: 282, column: 46, scope: !54)
!70 = !DILocalVariable(name: "result", arg: 3, scope: !54, file: !1, line: 282, type: !57)
!71 = !DILocation(line: 282, column: 65, scope: !54)
!72 = !DILocation(line: 286, column: 6, scope: !73)
!73 = distinct !DILexicalBlock(scope: !54, file: !1, line: 286, column: 6)
!74 = !DILocation(line: 286, column: 8, scope: !73)
!75 = !DILocation(line: 286, column: 15, scope: !73)
!76 = !DILocation(line: 286, column: 18, scope: !77)
!77 = !DILexicalBlockFile(scope: !73, file: !1, discriminator: 1)
!78 = !DILocation(line: 286, column: 20, scope: !77)
!79 = !DILocation(line: 286, column: 19, scope: !77)
!80 = !DILocation(line: 286, column: 22, scope: !77)
!81 = !DILocation(line: 286, column: 6, scope: !77)
!82 = !DILocation(line: 287, column: 5, scope: !83)
!83 = distinct !DILexicalBlock(scope: !73, file: !1, line: 286, column: 30)
!84 = distinct !{!84, !82}
!85 = !DILocation(line: 287, column: 5, scope: !86)
!86 = !DILexicalBlockFile(scope: !87, file: !1, discriminator: 1)
!87 = distinct !DILexicalBlock(scope: !83, file: !1, line: 287, column: 5)
!88 = distinct !{!88, !89}
!89 = !DILocation(line: 287, column: 5, scope: !87)
!90 = !DILocation(line: 287, column: 5, scope: !91)
!91 = !DILexicalBlockFile(scope: !92, file: !1, discriminator: 2)
!92 = distinct !DILexicalBlock(scope: !87, file: !1, line: 287, column: 5)
!93 = !DILocation(line: 287, column: 5, scope: !94)
!94 = !DILexicalBlockFile(scope: !87, file: !1, discriminator: 3)
!95 = !DILocation(line: 288, column: 3, scope: !83)
!96 = !DILocation(line: 289, column: 11, scope: !97)
!97 = distinct !DILexicalBlock(scope: !73, file: !1, line: 289, column: 11)
!98 = !DILocation(line: 289, column: 13, scope: !97)
!99 = !DILocation(line: 289, column: 11, scope: !73)
!100 = !DILocation(line: 290, column: 5, scope: !101)
!101 = distinct !DILexicalBlock(scope: !97, file: !1, line: 289, column: 21)
!102 = !DILocation(line: 290, column: 13, scope: !101)
!103 = !DILocation(line: 290, column: 17, scope: !101)
!104 = !DILocation(line: 291, column: 5, scope: !101)
!105 = !DILocation(line: 291, column: 13, scope: !101)
!106 = !DILocation(line: 291, column: 17, scope: !101)
!107 = !DILocation(line: 292, column: 5, scope: !101)
!108 = !DILocation(line: 295, column: 23, scope: !109)
!109 = distinct !DILexicalBlock(scope: !97, file: !1, line: 294, column: 8)
!110 = !DILocation(line: 295, column: 26, scope: !109)
!111 = !DILocation(line: 295, column: 29, scope: !109)
!112 = !DILocation(line: 295, column: 12, scope: !109)
!113 = !DILocation(line: 295, column: 5, scope: !109)
!114 = !DILocation(line: 297, column: 1, scope: !54)
!115 = distinct !DISubprogram(name: "lnpoch_pos", scope: !1, file: !1, line: 190, type: !55, isLocal: true, isDefinition: true, scopeLine: 191, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !64)
!116 = !DILocalVariable(name: "a", arg: 1, scope: !115, file: !1, line: 190, type: !46)
!117 = !DILocation(line: 190, column: 25, scope: !115)
!118 = !DILocalVariable(name: "x", arg: 2, scope: !115, file: !1, line: 190, type: !46)
!119 = !DILocation(line: 190, column: 41, scope: !115)
!120 = !DILocalVariable(name: "result", arg: 3, scope: !115, file: !1, line: 190, type: !57)
!121 = !DILocation(line: 190, column: 60, scope: !115)
!122 = !DILocalVariable(name: "absx", scope: !115, file: !1, line: 192, type: !47)
!123 = !DILocation(line: 192, column: 10, scope: !115)
!124 = !DILocation(line: 192, column: 22, scope: !115)
!125 = !DILocation(line: 192, column: 17, scope: !115)
!126 = !DILocation(line: 194, column: 6, scope: !127)
!127 = distinct !DILexicalBlock(scope: !115, file: !1, line: 194, column: 6)
!128 = !DILocation(line: 194, column: 17, scope: !127)
!129 = !DILocation(line: 194, column: 16, scope: !127)
!130 = !DILocation(line: 194, column: 11, scope: !127)
!131 = !DILocation(line: 194, column: 19, scope: !127)
!132 = !DILocation(line: 194, column: 22, scope: !133)
!133 = !DILexicalBlockFile(scope: !127, file: !1, discriminator: 1)
!134 = !DILocation(line: 194, column: 43, scope: !133)
!135 = !DILocation(line: 194, column: 31, scope: !133)
!136 = !DILocation(line: 194, column: 27, scope: !137)
!137 = !DILexicalBlockFile(scope: !133, file: !1, discriminator: 2)
!138 = !DILocation(line: 194, column: 26, scope: !133)
!139 = !DILocation(line: 194, column: 51, scope: !133)
!140 = !DILocation(line: 194, column: 6, scope: !133)
!141 = !DILocation(line: 195, column: 8, scope: !142)
!142 = distinct !DILexicalBlock(scope: !143, file: !1, line: 195, column: 8)
!143 = distinct !DILexicalBlock(scope: !127, file: !1, line: 194, column: 58)
!144 = !DILocation(line: 195, column: 10, scope: !142)
!145 = !DILocation(line: 195, column: 30, scope: !142)
!146 = !DILocation(line: 195, column: 33, scope: !147)
!147 = !DILexicalBlockFile(scope: !142, file: !1, discriminator: 1)
!148 = !DILocation(line: 195, column: 35, scope: !147)
!149 = !DILocation(line: 195, column: 34, scope: !147)
!150 = !DILocation(line: 195, column: 37, scope: !147)
!151 = !DILocation(line: 195, column: 8, scope: !147)
!152 = !DILocalVariable(name: "g1", scope: !153, file: !1, line: 200, type: !58)
!153 = distinct !DILexicalBlock(scope: !142, file: !1, line: 195, column: 58)
!154 = !DILocation(line: 200, column: 21, scope: !153)
!155 = !DILocalVariable(name: "g2", scope: !153, file: !1, line: 201, type: !58)
!156 = !DILocation(line: 201, column: 21, scope: !153)
!157 = !DILocation(line: 202, column: 25, scope: !153)
!158 = !DILocation(line: 202, column: 7, scope: !153)
!159 = !DILocation(line: 203, column: 25, scope: !153)
!160 = !DILocation(line: 203, column: 27, scope: !153)
!161 = !DILocation(line: 203, column: 26, scope: !153)
!162 = !DILocation(line: 203, column: 7, scope: !153)
!163 = !DILocation(line: 204, column: 30, scope: !153)
!164 = !DILocation(line: 204, column: 37, scope: !153)
!165 = !DILocation(line: 204, column: 33, scope: !153)
!166 = !DILocation(line: 204, column: 23, scope: !153)
!167 = !DILocation(line: 204, column: 22, scope: !153)
!168 = !DILocation(line: 204, column: 7, scope: !153)
!169 = !DILocation(line: 204, column: 15, scope: !153)
!170 = !DILocation(line: 204, column: 20, scope: !153)
!171 = !DILocation(line: 205, column: 25, scope: !153)
!172 = !DILocation(line: 205, column: 37, scope: !153)
!173 = !DILocation(line: 205, column: 29, scope: !153)
!174 = !DILocation(line: 205, column: 28, scope: !153)
!175 = !DILocation(line: 205, column: 47, scope: !153)
!176 = !DILocation(line: 205, column: 59, scope: !153)
!177 = !DILocation(line: 205, column: 51, scope: !178)
!178 = !DILexicalBlockFile(scope: !153, file: !1, discriminator: 1)
!179 = !DILocation(line: 205, column: 50, scope: !153)
!180 = !DILocation(line: 205, column: 42, scope: !153)
!181 = !DILocation(line: 205, column: 7, scope: !153)
!182 = !DILocation(line: 205, column: 15, scope: !153)
!183 = !DILocation(line: 205, column: 20, scope: !153)
!184 = !DILocation(line: 206, column: 51, scope: !153)
!185 = !DILocation(line: 206, column: 59, scope: !153)
!186 = !DILocation(line: 206, column: 46, scope: !153)
!187 = !DILocation(line: 206, column: 44, scope: !153)
!188 = !DILocation(line: 206, column: 7, scope: !153)
!189 = !DILocation(line: 206, column: 15, scope: !153)
!190 = !DILocation(line: 206, column: 19, scope: !153)
!191 = !DILocation(line: 207, column: 7, scope: !153)
!192 = !DILocalVariable(name: "lg1", scope: !193, file: !1, line: 212, type: !58)
!193 = distinct !DILexicalBlock(scope: !142, file: !1, line: 209, column: 10)
!194 = !DILocation(line: 212, column: 21, scope: !193)
!195 = !DILocalVariable(name: "lg2", scope: !193, file: !1, line: 213, type: !58)
!196 = !DILocation(line: 213, column: 21, scope: !193)
!197 = !DILocalVariable(name: "stat_1", scope: !193, file: !1, line: 214, type: !42)
!198 = !DILocation(line: 214, column: 11, scope: !193)
!199 = !DILocation(line: 214, column: 37, scope: !193)
!200 = !DILocation(line: 214, column: 20, scope: !193)
!201 = !DILocalVariable(name: "stat_2", scope: !193, file: !1, line: 215, type: !42)
!202 = !DILocation(line: 215, column: 11, scope: !193)
!203 = !DILocation(line: 215, column: 37, scope: !193)
!204 = !DILocation(line: 215, column: 39, scope: !193)
!205 = !DILocation(line: 215, column: 38, scope: !193)
!206 = !DILocation(line: 215, column: 20, scope: !193)
!207 = !DILocation(line: 216, column: 26, scope: !193)
!208 = !DILocation(line: 216, column: 36, scope: !193)
!209 = !DILocation(line: 216, column: 30, scope: !193)
!210 = !DILocation(line: 216, column: 7, scope: !193)
!211 = !DILocation(line: 216, column: 15, scope: !193)
!212 = !DILocation(line: 216, column: 20, scope: !193)
!213 = !DILocation(line: 217, column: 26, scope: !193)
!214 = !DILocation(line: 217, column: 36, scope: !193)
!215 = !DILocation(line: 217, column: 30, scope: !193)
!216 = !DILocation(line: 217, column: 7, scope: !193)
!217 = !DILocation(line: 217, column: 15, scope: !193)
!218 = !DILocation(line: 217, column: 20, scope: !193)
!219 = !DILocation(line: 218, column: 51, scope: !193)
!220 = !DILocation(line: 218, column: 59, scope: !193)
!221 = !DILocation(line: 218, column: 46, scope: !193)
!222 = !DILocation(line: 218, column: 44, scope: !193)
!223 = !DILocation(line: 218, column: 7, scope: !193)
!224 = !DILocation(line: 218, column: 15, scope: !193)
!225 = !DILocation(line: 218, column: 19, scope: !193)
!226 = !DILocation(line: 219, column: 14, scope: !193)
!227 = !DILocation(line: 219, column: 14, scope: !228)
!228 = !DILexicalBlockFile(scope: !193, file: !1, discriminator: 1)
!229 = !DILocation(line: 219, column: 14, scope: !230)
!230 = !DILexicalBlockFile(scope: !193, file: !1, discriminator: 2)
!231 = !DILocation(line: 219, column: 14, scope: !232)
!232 = !DILexicalBlockFile(scope: !193, file: !1, discriminator: 3)
!233 = !DILocation(line: 219, column: 14, scope: !234)
!234 = !DILexicalBlockFile(scope: !193, file: !1, discriminator: 4)
!235 = !DILocation(line: 219, column: 14, scope: !236)
!236 = !DILexicalBlockFile(scope: !193, file: !1, discriminator: 5)
!237 = !DILocation(line: 219, column: 14, scope: !238)
!238 = !DILexicalBlockFile(scope: !193, file: !1, discriminator: 6)
!239 = !DILocation(line: 219, column: 7, scope: !238)
!240 = !DILocation(line: 222, column: 11, scope: !241)
!241 = distinct !DILexicalBlock(scope: !127, file: !1, line: 222, column: 11)
!242 = !DILocation(line: 222, column: 22, scope: !241)
!243 = !DILocation(line: 222, column: 21, scope: !241)
!244 = !DILocation(line: 222, column: 16, scope: !241)
!245 = !DILocation(line: 222, column: 24, scope: !241)
!246 = !DILocation(line: 222, column: 27, scope: !247)
!247 = !DILexicalBlockFile(scope: !241, file: !1, discriminator: 1)
!248 = !DILocation(line: 222, column: 29, scope: !247)
!249 = !DILocation(line: 222, column: 11, scope: !247)
!250 = !DILocalVariable(name: "eps", scope: !251, file: !1, line: 236, type: !46)
!251 = distinct !DILexicalBlock(scope: !241, file: !1, line: 222, column: 37)
!252 = !DILocation(line: 236, column: 18, scope: !251)
!253 = !DILocation(line: 236, column: 24, scope: !251)
!254 = !DILocation(line: 236, column: 26, scope: !251)
!255 = !DILocation(line: 236, column: 25, scope: !251)
!256 = !DILocalVariable(name: "den", scope: !251, file: !1, line: 237, type: !46)
!257 = !DILocation(line: 237, column: 18, scope: !251)
!258 = !DILocation(line: 237, column: 30, scope: !251)
!259 = !DILocation(line: 237, column: 28, scope: !251)
!260 = !DILocalVariable(name: "d3", scope: !251, file: !1, line: 238, type: !46)
!261 = !DILocation(line: 238, column: 18, scope: !251)
!262 = !DILocation(line: 238, column: 23, scope: !251)
!263 = !DILocation(line: 238, column: 27, scope: !251)
!264 = !DILocation(line: 238, column: 26, scope: !251)
!265 = !DILocation(line: 238, column: 31, scope: !251)
!266 = !DILocation(line: 238, column: 30, scope: !251)
!267 = !DILocalVariable(name: "d5", scope: !251, file: !1, line: 239, type: !46)
!268 = !DILocation(line: 239, column: 18, scope: !251)
!269 = !DILocation(line: 239, column: 23, scope: !251)
!270 = !DILocation(line: 239, column: 26, scope: !251)
!271 = !DILocation(line: 239, column: 25, scope: !251)
!272 = !DILocation(line: 239, column: 30, scope: !251)
!273 = !DILocation(line: 239, column: 29, scope: !251)
!274 = !DILocalVariable(name: "d7", scope: !251, file: !1, line: 240, type: !46)
!275 = !DILocation(line: 240, column: 18, scope: !251)
!276 = !DILocation(line: 240, column: 23, scope: !251)
!277 = !DILocation(line: 240, column: 26, scope: !251)
!278 = !DILocation(line: 240, column: 25, scope: !251)
!279 = !DILocation(line: 240, column: 30, scope: !251)
!280 = !DILocation(line: 240, column: 29, scope: !251)
!281 = !DILocalVariable(name: "c1", scope: !251, file: !1, line: 241, type: !46)
!282 = !DILocation(line: 241, column: 18, scope: !251)
!283 = !DILocation(line: 241, column: 24, scope: !251)
!284 = !DILocation(line: 241, column: 23, scope: !251)
!285 = !DILocation(line: 241, column: 28, scope: !251)
!286 = !DILocation(line: 241, column: 27, scope: !251)
!287 = !DILocalVariable(name: "c3", scope: !251, file: !1, line: 242, type: !46)
!288 = !DILocation(line: 242, column: 18, scope: !251)
!289 = !DILocation(line: 242, column: 24, scope: !251)
!290 = !DILocation(line: 242, column: 23, scope: !251)
!291 = !DILocation(line: 242, column: 33, scope: !251)
!292 = !DILocation(line: 242, column: 42, scope: !251)
!293 = !DILocation(line: 242, column: 41, scope: !251)
!294 = !DILocation(line: 242, column: 36, scope: !251)
!295 = !DILocation(line: 242, column: 32, scope: !251)
!296 = !DILocation(line: 242, column: 27, scope: !251)
!297 = !DILocation(line: 242, column: 48, scope: !251)
!298 = !DILocation(line: 242, column: 47, scope: !251)
!299 = !DILocalVariable(name: "c5", scope: !251, file: !1, line: 243, type: !46)
!300 = !DILocation(line: 243, column: 18, scope: !251)
!301 = !DILocation(line: 243, column: 24, scope: !251)
!302 = !DILocation(line: 243, column: 23, scope: !251)
!303 = !DILocation(line: 243, column: 33, scope: !251)
!304 = !DILocation(line: 243, column: 43, scope: !251)
!305 = !DILocation(line: 243, column: 53, scope: !251)
!306 = !DILocation(line: 243, column: 62, scope: !251)
!307 = !DILocation(line: 243, column: 61, scope: !251)
!308 = !DILocation(line: 243, column: 56, scope: !251)
!309 = !DILocation(line: 243, column: 52, scope: !251)
!310 = !DILocation(line: 243, column: 46, scope: !251)
!311 = !DILocation(line: 243, column: 42, scope: !251)
!312 = !DILocation(line: 243, column: 36, scope: !251)
!313 = !DILocation(line: 243, column: 32, scope: !251)
!314 = !DILocation(line: 243, column: 27, scope: !251)
!315 = !DILocation(line: 243, column: 70, scope: !251)
!316 = !DILocation(line: 243, column: 69, scope: !251)
!317 = !DILocalVariable(name: "c7", scope: !251, file: !1, line: 244, type: !46)
!318 = !DILocation(line: 244, column: 18, scope: !251)
!319 = !DILocation(line: 244, column: 24, scope: !251)
!320 = !DILocation(line: 244, column: 23, scope: !251)
!321 = !DILocation(line: 244, column: 33, scope: !251)
!322 = !DILocation(line: 244, column: 43, scope: !251)
!323 = !DILocation(line: 244, column: 53, scope: !251)
!324 = !DILocation(line: 244, column: 63, scope: !251)
!325 = !DILocation(line: 244, column: 73, scope: !251)
!326 = !DILocation(line: 244, column: 82, scope: !251)
!327 = !DILocation(line: 244, column: 81, scope: !251)
!328 = !DILocation(line: 244, column: 76, scope: !251)
!329 = !DILocation(line: 244, column: 72, scope: !251)
!330 = !DILocation(line: 244, column: 66, scope: !251)
!331 = !DILocation(line: 244, column: 62, scope: !251)
!332 = !DILocation(line: 244, column: 56, scope: !251)
!333 = !DILocation(line: 244, column: 52, scope: !251)
!334 = !DILocation(line: 244, column: 46, scope: !251)
!335 = !DILocation(line: 244, column: 42, scope: !251)
!336 = !DILocation(line: 244, column: 36, scope: !251)
!337 = !DILocation(line: 244, column: 32, scope: !251)
!338 = !DILocation(line: 244, column: 27, scope: !251)
!339 = !DILocation(line: 244, column: 92, scope: !251)
!340 = !DILocation(line: 244, column: 91, scope: !251)
!341 = !DILocalVariable(name: "p8", scope: !251, file: !1, line: 245, type: !46)
!342 = !DILocation(line: 245, column: 18, scope: !251)
!343 = !DILocation(line: 245, column: 42, scope: !251)
!344 = !DILocation(line: 245, column: 41, scope: !251)
!345 = !DILocation(line: 245, column: 23, scope: !251)
!346 = !DILocalVariable(name: "c8", scope: !251, file: !1, line: 246, type: !46)
!347 = !DILocation(line: 246, column: 18, scope: !251)
!348 = !DILocation(line: 246, column: 27, scope: !251)
!349 = !DILocation(line: 246, column: 26, scope: !251)
!350 = !DILocation(line: 246, column: 42, scope: !251)
!351 = !DILocalVariable(name: "c9", scope: !251, file: !1, line: 247, type: !46)
!352 = !DILocation(line: 247, column: 18, scope: !251)
!353 = !DILocation(line: 247, column: 28, scope: !251)
!354 = !DILocation(line: 247, column: 36, scope: !251)
!355 = !DILocation(line: 247, column: 35, scope: !251)
!356 = !DILocation(line: 247, column: 30, scope: !251)
!357 = !DILocation(line: 247, column: 26, scope: !251)
!358 = !DILocation(line: 247, column: 42, scope: !251)
!359 = !DILocalVariable(name: "a4", scope: !251, file: !1, line: 248, type: !46)
!360 = !DILocation(line: 248, column: 18, scope: !251)
!361 = !DILocation(line: 248, column: 23, scope: !251)
!362 = !DILocation(line: 248, column: 25, scope: !251)
!363 = !DILocation(line: 248, column: 24, scope: !251)
!364 = !DILocation(line: 248, column: 27, scope: !251)
!365 = !DILocation(line: 248, column: 26, scope: !251)
!366 = !DILocation(line: 248, column: 29, scope: !251)
!367 = !DILocation(line: 248, column: 28, scope: !251)
!368 = !DILocalVariable(name: "a6", scope: !251, file: !1, line: 249, type: !46)
!369 = !DILocation(line: 249, column: 18, scope: !251)
!370 = !DILocation(line: 249, column: 23, scope: !251)
!371 = !DILocation(line: 249, column: 26, scope: !251)
!372 = !DILocation(line: 249, column: 25, scope: !251)
!373 = !DILocation(line: 249, column: 28, scope: !251)
!374 = !DILocation(line: 249, column: 27, scope: !251)
!375 = !DILocalVariable(name: "ser_1", scope: !251, file: !1, line: 250, type: !46)
!376 = !DILocation(line: 250, column: 18, scope: !251)
!377 = !DILocation(line: 250, column: 26, scope: !251)
!378 = !DILocation(line: 250, column: 31, scope: !251)
!379 = !DILocation(line: 250, column: 40, scope: !251)
!380 = !DILocation(line: 250, column: 39, scope: !251)
!381 = !DILocation(line: 250, column: 42, scope: !251)
!382 = !DILocation(line: 250, column: 41, scope: !251)
!383 = !DILocation(line: 250, column: 33, scope: !251)
!384 = !DILocation(line: 250, column: 29, scope: !251)
!385 = !DILocation(line: 250, column: 47, scope: !251)
!386 = !DILocation(line: 250, column: 57, scope: !251)
!387 = !DILocation(line: 250, column: 56, scope: !251)
!388 = !DILocation(line: 250, column: 49, scope: !251)
!389 = !DILocation(line: 250, column: 45, scope: !251)
!390 = !DILocation(line: 250, column: 63, scope: !251)
!391 = !DILocation(line: 250, column: 73, scope: !251)
!392 = !DILocation(line: 250, column: 72, scope: !251)
!393 = !DILocation(line: 250, column: 65, scope: !251)
!394 = !DILocation(line: 250, column: 61, scope: !251)
!395 = !DILocalVariable(name: "ser_2", scope: !251, file: !1, line: 251, type: !46)
!396 = !DILocation(line: 251, column: 18, scope: !251)
!397 = !DILocation(line: 251, column: 26, scope: !251)
!398 = !DILocation(line: 251, column: 35, scope: !251)
!399 = !DILocation(line: 251, column: 34, scope: !251)
!400 = !DILocation(line: 251, column: 38, scope: !251)
!401 = !DILocation(line: 251, column: 37, scope: !251)
!402 = !DILocation(line: 251, column: 40, scope: !251)
!403 = !DILocation(line: 251, column: 39, scope: !251)
!404 = !DILocation(line: 251, column: 28, scope: !251)
!405 = !DILocation(line: 251, column: 62, scope: !251)
!406 = !DILocation(line: 251, column: 60, scope: !251)
!407 = !DILocation(line: 251, column: 66, scope: !251)
!408 = !DILocation(line: 251, column: 69, scope: !251)
!409 = !DILocation(line: 251, column: 68, scope: !251)
!410 = !DILocation(line: 251, column: 64, scope: !251)
!411 = !DILocation(line: 251, column: 43, scope: !251)
!412 = !DILocalVariable(name: "ser", scope: !251, file: !1, line: 252, type: !46)
!413 = !DILocation(line: 252, column: 18, scope: !251)
!414 = !DILocation(line: 252, column: 25, scope: !251)
!415 = !DILocation(line: 252, column: 33, scope: !251)
!416 = !DILocation(line: 252, column: 31, scope: !251)
!417 = !DILocation(line: 252, column: 47, scope: !251)
!418 = !DILocation(line: 252, column: 46, scope: !251)
!419 = !DILocation(line: 252, column: 39, scope: !251)
!420 = !DILocalVariable(name: "term1", scope: !251, file: !1, line: 254, type: !47)
!421 = !DILocation(line: 254, column: 12, scope: !251)
!422 = !DILocation(line: 254, column: 20, scope: !251)
!423 = !DILocation(line: 254, column: 28, scope: !251)
!424 = !DILocation(line: 254, column: 29, scope: !251)
!425 = !DILocation(line: 254, column: 24, scope: !251)
!426 = !DILocation(line: 254, column: 22, scope: !251)
!427 = !DILocalVariable(name: "term2", scope: !251, file: !1, line: 255, type: !47)
!428 = !DILocation(line: 255, column: 12, scope: !251)
!429 = !DILocalVariable(name: "ln_1peps", scope: !251, file: !1, line: 256, type: !58)
!430 = !DILocation(line: 256, column: 19, scope: !251)
!431 = !DILocation(line: 257, column: 25, scope: !251)
!432 = !DILocation(line: 257, column: 5, scope: !251)
!433 = !DILocation(line: 258, column: 14, scope: !251)
!434 = !DILocation(line: 258, column: 18, scope: !251)
!435 = !DILocation(line: 258, column: 16, scope: !251)
!436 = !DILocation(line: 258, column: 20, scope: !251)
!437 = !DILocation(line: 258, column: 38, scope: !251)
!438 = !DILocation(line: 258, column: 27, scope: !251)
!439 = !DILocation(line: 258, column: 11, scope: !251)
!440 = !DILocation(line: 260, column: 20, scope: !251)
!441 = !DILocation(line: 260, column: 28, scope: !251)
!442 = !DILocation(line: 260, column: 26, scope: !251)
!443 = !DILocation(line: 260, column: 36, scope: !251)
!444 = !DILocation(line: 260, column: 34, scope: !251)
!445 = !DILocation(line: 260, column: 5, scope: !251)
!446 = !DILocation(line: 260, column: 13, scope: !251)
!447 = !DILocation(line: 260, column: 18, scope: !251)
!448 = !DILocation(line: 261, column: 41, scope: !251)
!449 = !DILocation(line: 261, column: 36, scope: !251)
!450 = !DILocation(line: 261, column: 35, scope: !251)
!451 = !DILocation(line: 261, column: 5, scope: !251)
!452 = !DILocation(line: 261, column: 13, scope: !251)
!453 = !DILocation(line: 261, column: 18, scope: !251)
!454 = !DILocation(line: 262, column: 26, scope: !251)
!455 = !DILocation(line: 262, column: 30, scope: !251)
!456 = !DILocation(line: 262, column: 28, scope: !251)
!457 = !DILocation(line: 262, column: 32, scope: !251)
!458 = !DILocation(line: 262, column: 48, scope: !251)
!459 = !DILocation(line: 262, column: 38, scope: !251)
!460 = !DILocation(line: 262, column: 20, scope: !251)
!461 = !DILocation(line: 262, column: 5, scope: !251)
!462 = !DILocation(line: 262, column: 13, scope: !251)
!463 = !DILocation(line: 262, column: 17, scope: !251)
!464 = !DILocation(line: 263, column: 34, scope: !251)
!465 = !DILocation(line: 263, column: 20, scope: !251)
!466 = !DILocation(line: 263, column: 39, scope: !251)
!467 = !DILocation(line: 263, column: 65, scope: !251)
!468 = !DILocation(line: 263, column: 60, scope: !469)
!469 = !DILexicalBlockFile(scope: !251, file: !1, discriminator: 1)
!470 = !DILocation(line: 263, column: 75, scope: !251)
!471 = !DILocation(line: 263, column: 70, scope: !472)
!472 = !DILexicalBlockFile(scope: !251, file: !1, discriminator: 2)
!473 = !DILocation(line: 263, column: 68, scope: !251)
!474 = !DILocation(line: 263, column: 78, scope: !251)
!475 = !DILocation(line: 263, column: 57, scope: !251)
!476 = !DILocation(line: 263, column: 5, scope: !251)
!477 = !DILocation(line: 263, column: 13, scope: !251)
!478 = !DILocation(line: 263, column: 17, scope: !251)
!479 = !DILocation(line: 264, column: 49, scope: !251)
!480 = !DILocation(line: 264, column: 57, scope: !251)
!481 = !DILocation(line: 264, column: 44, scope: !251)
!482 = !DILocation(line: 264, column: 42, scope: !251)
!483 = !DILocation(line: 264, column: 5, scope: !251)
!484 = !DILocation(line: 264, column: 13, scope: !251)
!485 = !DILocation(line: 264, column: 17, scope: !251)
!486 = !DILocation(line: 265, column: 5, scope: !251)
!487 = !DILocalVariable(name: "poch_rel", scope: !488, file: !1, line: 268, type: !58)
!488 = distinct !DILexicalBlock(scope: !241, file: !1, line: 267, column: 8)
!489 = !DILocation(line: 268, column: 19, scope: !488)
!490 = !DILocalVariable(name: "stat_p", scope: !488, file: !1, line: 269, type: !42)
!491 = !DILocation(line: 269, column: 9, scope: !488)
!492 = !DILocation(line: 269, column: 33, scope: !488)
!493 = !DILocation(line: 269, column: 36, scope: !488)
!494 = !DILocation(line: 269, column: 18, scope: !488)
!495 = !DILocalVariable(name: "eps", scope: !488, file: !1, line: 270, type: !47)
!496 = !DILocation(line: 270, column: 12, scope: !488)
!497 = !DILocation(line: 270, column: 18, scope: !488)
!498 = !DILocation(line: 270, column: 29, scope: !488)
!499 = !DILocation(line: 270, column: 19, scope: !488)
!500 = !DILocalVariable(name: "stat_e", scope: !488, file: !1, line: 271, type: !42)
!501 = !DILocation(line: 271, column: 9, scope: !488)
!502 = !DILocation(line: 271, column: 38, scope: !488)
!503 = !DILocation(line: 271, column: 43, scope: !488)
!504 = !DILocation(line: 271, column: 18, scope: !488)
!505 = !DILocation(line: 272, column: 31, scope: !488)
!506 = !DILocation(line: 272, column: 44, scope: !488)
!507 = !DILocation(line: 272, column: 33, scope: !488)
!508 = !DILocation(line: 272, column: 57, scope: !488)
!509 = !DILocation(line: 272, column: 55, scope: !488)
!510 = !DILocation(line: 272, column: 48, scope: !488)
!511 = !DILocation(line: 272, column: 26, scope: !488)
!512 = !DILocation(line: 272, column: 24, scope: !488)
!513 = !DILocation(line: 272, column: 5, scope: !488)
!514 = !DILocation(line: 272, column: 13, scope: !488)
!515 = !DILocation(line: 272, column: 18, scope: !488)
!516 = !DILocation(line: 273, column: 49, scope: !488)
!517 = !DILocation(line: 273, column: 57, scope: !488)
!518 = !DILocation(line: 273, column: 44, scope: !488)
!519 = !DILocation(line: 273, column: 42, scope: !488)
!520 = !DILocation(line: 273, column: 5, scope: !488)
!521 = !DILocation(line: 273, column: 13, scope: !488)
!522 = !DILocation(line: 273, column: 17, scope: !488)
!523 = !DILocation(line: 274, column: 12, scope: !488)
!524 = !DILocation(line: 274, column: 12, scope: !525)
!525 = !DILexicalBlockFile(scope: !488, file: !1, discriminator: 1)
!526 = !DILocation(line: 274, column: 12, scope: !527)
!527 = !DILexicalBlockFile(scope: !488, file: !1, discriminator: 2)
!528 = !DILocation(line: 274, column: 12, scope: !529)
!529 = !DILexicalBlockFile(scope: !488, file: !1, discriminator: 3)
!530 = !DILocation(line: 274, column: 12, scope: !531)
!531 = !DILexicalBlockFile(scope: !488, file: !1, discriminator: 4)
!532 = !DILocation(line: 274, column: 12, scope: !533)
!533 = !DILexicalBlockFile(scope: !488, file: !1, discriminator: 5)
!534 = !DILocation(line: 274, column: 12, scope: !535)
!535 = !DILexicalBlockFile(scope: !488, file: !1, discriminator: 6)
!536 = !DILocation(line: 274, column: 5, scope: !535)
!537 = !DILocation(line: 276, column: 1, scope: !115)
!538 = distinct !DISubprogram(name: "gsl_sf_lnpoch_sgn_e", scope: !1, file: !1, line: 301, type: !539, isLocal: false, isDefinition: true, scopeLine: 303, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !64)
!539 = !DISubroutineType(types: !540)
!540 = !{!42, !46, !46, !57, !541}
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64, align: 64)
!542 = !DILocalVariable(name: "a", arg: 1, scope: !538, file: !1, line: 301, type: !46)
!543 = !DILocation(line: 301, column: 34, scope: !538)
!544 = !DILocalVariable(name: "x", arg: 2, scope: !538, file: !1, line: 301, type: !46)
!545 = !DILocation(line: 301, column: 50, scope: !538)
!546 = !DILocalVariable(name: "result", arg: 3, scope: !538, file: !1, line: 302, type: !57)
!547 = !DILocation(line: 302, column: 40, scope: !538)
!548 = !DILocalVariable(name: "sgn", arg: 4, scope: !538, file: !1, line: 302, type: !541)
!549 = !DILocation(line: 302, column: 57, scope: !538)
!550 = !DILocation(line: 304, column: 6, scope: !551)
!551 = distinct !DILexicalBlock(scope: !538, file: !1, line: 304, column: 6)
!552 = !DILocation(line: 304, column: 8, scope: !551)
!553 = !DILocation(line: 304, column: 6, scope: !538)
!554 = !DILocation(line: 305, column: 6, scope: !555)
!555 = distinct !DILexicalBlock(scope: !551, file: !1, line: 304, column: 16)
!556 = !DILocation(line: 305, column: 10, scope: !555)
!557 = !DILocation(line: 306, column: 5, scope: !555)
!558 = !DILocation(line: 306, column: 13, scope: !555)
!559 = !DILocation(line: 306, column: 17, scope: !555)
!560 = !DILocation(line: 307, column: 5, scope: !555)
!561 = !DILocation(line: 307, column: 13, scope: !555)
!562 = !DILocation(line: 307, column: 17, scope: !555)
!563 = !DILocation(line: 308, column: 5, scope: !555)
!564 = !DILocation(line: 310, column: 11, scope: !565)
!565 = distinct !DILexicalBlock(scope: !551, file: !1, line: 310, column: 11)
!566 = !DILocation(line: 310, column: 13, scope: !565)
!567 = !DILocation(line: 310, column: 19, scope: !565)
!568 = !DILocation(line: 310, column: 22, scope: !569)
!569 = !DILexicalBlockFile(scope: !565, file: !1, discriminator: 1)
!570 = !DILocation(line: 310, column: 24, scope: !569)
!571 = !DILocation(line: 310, column: 23, scope: !569)
!572 = !DILocation(line: 310, column: 26, scope: !569)
!573 = !DILocation(line: 310, column: 11, scope: !569)
!574 = !DILocation(line: 311, column: 6, scope: !575)
!575 = distinct !DILexicalBlock(scope: !565, file: !1, line: 310, column: 33)
!576 = !DILocation(line: 311, column: 10, scope: !575)
!577 = !DILocation(line: 312, column: 23, scope: !575)
!578 = !DILocation(line: 312, column: 26, scope: !575)
!579 = !DILocation(line: 312, column: 29, scope: !575)
!580 = !DILocation(line: 312, column: 12, scope: !575)
!581 = !DILocation(line: 312, column: 5, scope: !575)
!582 = !DILocation(line: 314, column: 12, scope: !583)
!583 = distinct !DILexicalBlock(scope: !565, file: !1, line: 314, column: 12)
!584 = !DILocation(line: 314, column: 14, scope: !583)
!585 = !DILocation(line: 314, column: 19, scope: !583)
!586 = !DILocation(line: 314, column: 22, scope: !587)
!587 = !DILexicalBlockFile(scope: !583, file: !1, discriminator: 1)
!588 = !DILocation(line: 314, column: 33, scope: !587)
!589 = !DILocation(line: 314, column: 27, scope: !587)
!590 = !DILocation(line: 314, column: 24, scope: !587)
!591 = !DILocation(line: 314, column: 12, scope: !587)
!592 = !DILocation(line: 316, column: 9, scope: !593)
!593 = distinct !DILexicalBlock(scope: !594, file: !1, line: 316, column: 9)
!594 = distinct !DILexicalBlock(scope: !583, file: !1, line: 314, column: 37)
!595 = !DILocation(line: 316, column: 13, scope: !593)
!596 = !DILocation(line: 316, column: 11, scope: !593)
!597 = !DILocation(line: 316, column: 15, scope: !593)
!598 = !DILocation(line: 316, column: 20, scope: !593)
!599 = !DILocation(line: 316, column: 23, scope: !600)
!600 = !DILexicalBlockFile(scope: !593, file: !1, discriminator: 1)
!601 = !DILocation(line: 316, column: 34, scope: !600)
!602 = !DILocation(line: 316, column: 28, scope: !600)
!603 = !DILocation(line: 316, column: 25, scope: !600)
!604 = !DILocation(line: 316, column: 9, scope: !600)
!605 = !DILocalVariable(name: "result_pos", scope: !606, file: !1, line: 318, type: !58)
!606 = distinct !DILexicalBlock(scope: !593, file: !1, line: 316, column: 38)
!607 = !DILocation(line: 318, column: 21, scope: !606)
!608 = !DILocalVariable(name: "stat", scope: !606, file: !1, line: 321, type: !42)
!609 = !DILocation(line: 321, column: 11, scope: !606)
!610 = !DILocation(line: 321, column: 31, scope: !606)
!611 = !DILocation(line: 321, column: 30, scope: !606)
!612 = !DILocation(line: 321, column: 35, scope: !606)
!613 = !DILocation(line: 321, column: 34, scope: !606)
!614 = !DILocation(line: 321, column: 18, scope: !606)
!615 = !DILocalVariable(name: "f", scope: !606, file: !1, line: 322, type: !47)
!616 = !DILocation(line: 322, column: 14, scope: !606)
!617 = !DILocation(line: 322, column: 23, scope: !606)
!618 = !DILocation(line: 322, column: 28, scope: !606)
!619 = !DILocation(line: 322, column: 32, scope: !606)
!620 = !DILocation(line: 322, column: 30, scope: !606)
!621 = !DILocation(line: 322, column: 25, scope: !606)
!622 = !DILocation(line: 322, column: 18, scope: !606)
!623 = !DILocalVariable(name: "s", scope: !606, file: !1, line: 323, type: !47)
!624 = !DILocation(line: 323, column: 14, scope: !606)
!625 = !DILocation(line: 323, column: 24, scope: !606)
!626 = !DILocation(line: 323, column: 19, scope: !606)
!627 = !DILocation(line: 323, column: 30, scope: !606)
!628 = !DILocation(line: 323, column: 18, scope: !606)
!629 = !DILocation(line: 324, column: 21, scope: !606)
!630 = !DILocation(line: 324, column: 36, scope: !606)
!631 = !DILocation(line: 324, column: 23, scope: !606)
!632 = !DILocation(line: 324, column: 7, scope: !606)
!633 = !DILocation(line: 324, column: 15, scope: !606)
!634 = !DILocation(line: 324, column: 19, scope: !606)
!635 = !DILocation(line: 325, column: 32, scope: !606)
!636 = !DILocation(line: 325, column: 62, scope: !606)
!637 = !DILocation(line: 325, column: 60, scope: !606)
!638 = !DILocation(line: 325, column: 36, scope: !606)
!639 = !DILocation(line: 325, column: 7, scope: !606)
!640 = !DILocation(line: 325, column: 15, scope: !606)
!641 = !DILocation(line: 325, column: 19, scope: !606)
!642 = !DILocation(line: 326, column: 14, scope: !606)
!643 = !DILocation(line: 326, column: 8, scope: !606)
!644 = !DILocation(line: 326, column: 12, scope: !606)
!645 = !DILocation(line: 327, column: 14, scope: !606)
!646 = !DILocation(line: 327, column: 7, scope: !606)
!647 = !DILocation(line: 328, column: 16, scope: !648)
!648 = distinct !DILexicalBlock(scope: !593, file: !1, line: 328, column: 16)
!649 = !DILocation(line: 328, column: 20, scope: !648)
!650 = !DILocation(line: 328, column: 18, scope: !648)
!651 = !DILocation(line: 328, column: 22, scope: !648)
!652 = !DILocation(line: 328, column: 16, scope: !593)
!653 = !DILocalVariable(name: "stat", scope: !654, file: !1, line: 331, type: !42)
!654 = distinct !DILexicalBlock(scope: !648, file: !1, line: 328, column: 28)
!655 = !DILocation(line: 331, column: 11, scope: !654)
!656 = !DILocation(line: 331, column: 41, scope: !654)
!657 = !DILocation(line: 331, column: 40, scope: !654)
!658 = !DILocation(line: 331, column: 43, scope: !654)
!659 = !DILocation(line: 331, column: 48, scope: !654)
!660 = !DILocation(line: 331, column: 56, scope: !654)
!661 = !DILocation(line: 331, column: 18, scope: !654)
!662 = !DILocalVariable(name: "s", scope: !654, file: !1, line: 332, type: !47)
!663 = !DILocation(line: 332, column: 14, scope: !654)
!664 = !DILocation(line: 332, column: 25, scope: !654)
!665 = !DILocation(line: 332, column: 24, scope: !654)
!666 = !DILocation(line: 332, column: 19, scope: !654)
!667 = !DILocation(line: 332, column: 31, scope: !654)
!668 = !DILocation(line: 332, column: 18, scope: !654)
!669 = !DILocation(line: 333, column: 15, scope: !654)
!670 = !DILocation(line: 333, column: 8, scope: !654)
!671 = !DILocation(line: 333, column: 12, scope: !654)
!672 = !DILocation(line: 334, column: 14, scope: !654)
!673 = !DILocation(line: 334, column: 7, scope: !654)
!674 = !DILocation(line: 337, column: 7, scope: !675)
!675 = distinct !DILexicalBlock(scope: !648, file: !1, line: 335, column: 12)
!676 = !DILocation(line: 337, column: 15, scope: !675)
!677 = !DILocation(line: 337, column: 19, scope: !675)
!678 = !DILocation(line: 338, column: 7, scope: !675)
!679 = !DILocation(line: 338, column: 15, scope: !675)
!680 = !DILocation(line: 338, column: 19, scope: !675)
!681 = !DILocation(line: 339, column: 8, scope: !675)
!682 = !DILocation(line: 339, column: 12, scope: !675)
!683 = !DILocation(line: 340, column: 7, scope: !675)
!684 = !DILocation(line: 342, column: 13, scope: !685)
!685 = distinct !DILexicalBlock(scope: !583, file: !1, line: 342, column: 13)
!686 = !DILocation(line: 342, column: 15, scope: !685)
!687 = !DILocation(line: 342, column: 21, scope: !685)
!688 = !DILocation(line: 342, column: 24, scope: !689)
!689 = !DILexicalBlockFile(scope: !685, file: !1, discriminator: 1)
!690 = !DILocation(line: 342, column: 26, scope: !689)
!691 = !DILocation(line: 342, column: 25, scope: !689)
!692 = !DILocation(line: 342, column: 28, scope: !689)
!693 = !DILocation(line: 342, column: 13, scope: !689)
!694 = !DILocalVariable(name: "sin_1", scope: !695, file: !1, line: 345, type: !47)
!695 = distinct !DILexicalBlock(scope: !685, file: !1, line: 342, column: 35)
!696 = !DILocation(line: 345, column: 12, scope: !695)
!697 = !DILocation(line: 345, column: 38, scope: !695)
!698 = !DILocation(line: 345, column: 36, scope: !695)
!699 = !DILocation(line: 345, column: 29, scope: !695)
!700 = !DILocation(line: 345, column: 20, scope: !695)
!701 = !DILocalVariable(name: "sin_2", scope: !695, file: !1, line: 346, type: !47)
!702 = !DILocation(line: 346, column: 12, scope: !695)
!703 = !DILocation(line: 346, column: 38, scope: !695)
!704 = !DILocation(line: 346, column: 36, scope: !695)
!705 = !DILocation(line: 346, column: 42, scope: !695)
!706 = !DILocation(line: 346, column: 40, scope: !695)
!707 = !DILocation(line: 346, column: 29, scope: !695)
!708 = !DILocation(line: 346, column: 20, scope: !695)
!709 = !DILocation(line: 347, column: 8, scope: !710)
!710 = distinct !DILexicalBlock(scope: !695, file: !1, line: 347, column: 8)
!711 = !DILocation(line: 347, column: 14, scope: !710)
!712 = !DILocation(line: 347, column: 21, scope: !710)
!713 = !DILocation(line: 347, column: 24, scope: !714)
!714 = !DILexicalBlockFile(scope: !710, file: !1, discriminator: 1)
!715 = !DILocation(line: 347, column: 30, scope: !714)
!716 = !DILocation(line: 347, column: 8, scope: !714)
!717 = !DILocation(line: 348, column: 8, scope: !718)
!718 = distinct !DILexicalBlock(scope: !710, file: !1, line: 347, column: 38)
!719 = !DILocation(line: 348, column: 12, scope: !718)
!720 = !DILocation(line: 349, column: 7, scope: !718)
!721 = distinct !{!721, !720}
!722 = !DILocation(line: 349, column: 7, scope: !723)
!723 = !DILexicalBlockFile(scope: !724, file: !1, discriminator: 1)
!724 = distinct !DILexicalBlock(scope: !718, file: !1, line: 349, column: 7)
!725 = distinct !{!725, !726}
!726 = !DILocation(line: 349, column: 7, scope: !724)
!727 = !DILocation(line: 349, column: 7, scope: !728)
!728 = !DILexicalBlockFile(scope: !729, file: !1, discriminator: 2)
!729 = distinct !DILexicalBlock(scope: !724, file: !1, line: 349, column: 7)
!730 = !DILocation(line: 349, column: 7, scope: !731)
!731 = !DILexicalBlockFile(scope: !724, file: !1, discriminator: 3)
!732 = !DILocation(line: 350, column: 5, scope: !718)
!733 = !DILocalVariable(name: "lnp_pos", scope: !734, file: !1, line: 352, type: !58)
!734 = distinct !DILexicalBlock(scope: !710, file: !1, line: 351, column: 10)
!735 = !DILocation(line: 352, column: 21, scope: !734)
!736 = !DILocalVariable(name: "stat_pp", scope: !734, file: !1, line: 353, type: !42)
!737 = !DILocation(line: 353, column: 11, scope: !734)
!738 = !DILocation(line: 353, column: 38, scope: !734)
!739 = !DILocation(line: 353, column: 37, scope: !734)
!740 = !DILocation(line: 353, column: 42, scope: !734)
!741 = !DILocation(line: 353, column: 41, scope: !734)
!742 = !DILocation(line: 353, column: 23, scope: !734)
!743 = !DILocalVariable(name: "lnterm", scope: !734, file: !1, line: 354, type: !47)
!744 = !DILocation(line: 354, column: 14, scope: !734)
!745 = !DILocation(line: 354, column: 32, scope: !734)
!746 = !DILocation(line: 354, column: 38, scope: !734)
!747 = !DILocation(line: 354, column: 37, scope: !734)
!748 = !DILocation(line: 354, column: 27, scope: !734)
!749 = !DILocation(line: 354, column: 23, scope: !750)
!750 = !DILexicalBlockFile(scope: !734, file: !1, discriminator: 1)
!751 = !DILocation(line: 355, column: 22, scope: !734)
!752 = !DILocation(line: 355, column: 39, scope: !734)
!753 = !DILocation(line: 355, column: 29, scope: !734)
!754 = !DILocation(line: 355, column: 7, scope: !734)
!755 = !DILocation(line: 355, column: 15, scope: !734)
!756 = !DILocation(line: 355, column: 20, scope: !734)
!757 = !DILocation(line: 356, column: 30, scope: !734)
!758 = !DILocation(line: 356, column: 7, scope: !734)
!759 = !DILocation(line: 356, column: 15, scope: !734)
!760 = !DILocation(line: 356, column: 20, scope: !734)
!761 = !DILocation(line: 357, column: 56, scope: !734)
!762 = !DILocation(line: 357, column: 55, scope: !734)
!763 = !DILocation(line: 357, column: 47, scope: !734)
!764 = !DILocation(line: 357, column: 70, scope: !734)
!765 = !DILocation(line: 357, column: 69, scope: !734)
!766 = !DILocation(line: 357, column: 72, scope: !734)
!767 = !DILocation(line: 357, column: 71, scope: !734)
!768 = !DILocation(line: 357, column: 61, scope: !750)
!769 = !DILocation(line: 357, column: 59, scope: !734)
!770 = !DILocation(line: 357, column: 44, scope: !734)
!771 = !DILocation(line: 357, column: 83, scope: !734)
!772 = !DILocation(line: 357, column: 78, scope: !773)
!773 = !DILexicalBlockFile(scope: !734, file: !1, discriminator: 2)
!774 = !DILocation(line: 357, column: 76, scope: !734)
!775 = !DILocation(line: 357, column: 7, scope: !734)
!776 = !DILocation(line: 357, column: 15, scope: !734)
!777 = !DILocation(line: 357, column: 19, scope: !734)
!778 = !DILocation(line: 358, column: 51, scope: !734)
!779 = !DILocation(line: 358, column: 59, scope: !734)
!780 = !DILocation(line: 358, column: 46, scope: !734)
!781 = !DILocation(line: 358, column: 44, scope: !734)
!782 = !DILocation(line: 358, column: 7, scope: !734)
!783 = !DILocation(line: 358, column: 15, scope: !734)
!784 = !DILocation(line: 358, column: 19, scope: !734)
!785 = !DILocation(line: 359, column: 14, scope: !734)
!786 = !DILocation(line: 359, column: 8, scope: !734)
!787 = !DILocation(line: 359, column: 12, scope: !734)
!788 = !DILocation(line: 360, column: 14, scope: !734)
!789 = !DILocation(line: 360, column: 7, scope: !734)
!790 = !DILocation(line: 362, column: 3, scope: !695)
!791 = !DILocalVariable(name: "lg_apn", scope: !792, file: !1, line: 366, type: !58)
!792 = distinct !DILexicalBlock(scope: !685, file: !1, line: 363, column: 8)
!793 = !DILocation(line: 366, column: 19, scope: !792)
!794 = !DILocalVariable(name: "lg_a", scope: !792, file: !1, line: 367, type: !58)
!795 = !DILocation(line: 367, column: 19, scope: !792)
!796 = !DILocalVariable(name: "s_apn", scope: !792, file: !1, line: 368, type: !47)
!797 = !DILocation(line: 368, column: 12, scope: !792)
!798 = !DILocalVariable(name: "s_a", scope: !792, file: !1, line: 368, type: !47)
!799 = !DILocation(line: 368, column: 19, scope: !792)
!800 = !DILocalVariable(name: "stat_apn", scope: !792, file: !1, line: 369, type: !42)
!801 = !DILocation(line: 369, column: 9, scope: !792)
!802 = !DILocation(line: 369, column: 41, scope: !792)
!803 = !DILocation(line: 369, column: 43, scope: !792)
!804 = !DILocation(line: 369, column: 42, scope: !792)
!805 = !DILocation(line: 369, column: 20, scope: !792)
!806 = !DILocalVariable(name: "stat_a", scope: !792, file: !1, line: 370, type: !42)
!807 = !DILocation(line: 370, column: 9, scope: !792)
!808 = !DILocation(line: 370, column: 41, scope: !792)
!809 = !DILocation(line: 370, column: 20, scope: !792)
!810 = !DILocation(line: 371, column: 8, scope: !811)
!811 = distinct !DILexicalBlock(scope: !792, file: !1, line: 371, column: 8)
!812 = !DILocation(line: 371, column: 17, scope: !811)
!813 = !DILocation(line: 371, column: 32, scope: !811)
!814 = !DILocation(line: 371, column: 35, scope: !815)
!815 = !DILexicalBlockFile(scope: !811, file: !1, discriminator: 1)
!816 = !DILocation(line: 371, column: 42, scope: !815)
!817 = !DILocation(line: 371, column: 8, scope: !815)
!818 = !DILocation(line: 372, column: 29, scope: !819)
!819 = distinct !DILexicalBlock(scope: !811, file: !1, line: 371, column: 58)
!820 = !DILocation(line: 372, column: 40, scope: !819)
!821 = !DILocation(line: 372, column: 33, scope: !819)
!822 = !DILocation(line: 372, column: 7, scope: !819)
!823 = !DILocation(line: 372, column: 15, scope: !819)
!824 = !DILocation(line: 372, column: 20, scope: !819)
!825 = !DILocation(line: 373, column: 29, scope: !819)
!826 = !DILocation(line: 373, column: 40, scope: !819)
!827 = !DILocation(line: 373, column: 33, scope: !819)
!828 = !DILocation(line: 373, column: 7, scope: !819)
!829 = !DILocation(line: 373, column: 15, scope: !819)
!830 = !DILocation(line: 373, column: 20, scope: !819)
!831 = !DILocation(line: 374, column: 51, scope: !819)
!832 = !DILocation(line: 374, column: 59, scope: !819)
!833 = !DILocation(line: 374, column: 46, scope: !819)
!834 = !DILocation(line: 374, column: 44, scope: !819)
!835 = !DILocation(line: 374, column: 7, scope: !819)
!836 = !DILocation(line: 374, column: 15, scope: !819)
!837 = !DILocation(line: 374, column: 19, scope: !819)
!838 = !DILocation(line: 375, column: 14, scope: !819)
!839 = !DILocation(line: 375, column: 20, scope: !819)
!840 = !DILocation(line: 375, column: 18, scope: !819)
!841 = !DILocation(line: 375, column: 8, scope: !819)
!842 = !DILocation(line: 375, column: 12, scope: !819)
!843 = !DILocation(line: 376, column: 7, scope: !819)
!844 = !DILocation(line: 378, column: 13, scope: !845)
!845 = distinct !DILexicalBlock(scope: !811, file: !1, line: 378, column: 13)
!846 = !DILocation(line: 378, column: 22, scope: !845)
!847 = !DILocation(line: 378, column: 34, scope: !845)
!848 = !DILocation(line: 378, column: 37, scope: !849)
!849 = !DILexicalBlockFile(scope: !845, file: !1, discriminator: 1)
!850 = !DILocation(line: 378, column: 44, scope: !849)
!851 = !DILocation(line: 378, column: 13, scope: !849)
!852 = !DILocation(line: 379, column: 8, scope: !853)
!853 = distinct !DILexicalBlock(scope: !845, file: !1, line: 378, column: 56)
!854 = !DILocation(line: 379, column: 12, scope: !853)
!855 = !DILocation(line: 380, column: 7, scope: !853)
!856 = distinct !{!856, !855}
!857 = !DILocation(line: 380, column: 7, scope: !858)
!858 = !DILexicalBlockFile(scope: !859, file: !1, discriminator: 1)
!859 = distinct !DILexicalBlock(scope: !853, file: !1, line: 380, column: 7)
!860 = distinct !{!860, !861}
!861 = !DILocation(line: 380, column: 7, scope: !859)
!862 = !DILocation(line: 380, column: 7, scope: !863)
!863 = !DILexicalBlockFile(scope: !864, file: !1, discriminator: 2)
!864 = distinct !DILexicalBlock(scope: !859, file: !1, line: 380, column: 7)
!865 = !DILocation(line: 380, column: 7, scope: !866)
!866 = !DILexicalBlockFile(scope: !859, file: !1, discriminator: 3)
!867 = !DILocation(line: 381, column: 5, scope: !853)
!868 = !DILocation(line: 383, column: 7, scope: !869)
!869 = distinct !DILexicalBlock(scope: !845, file: !1, line: 382, column: 10)
!870 = !DILocation(line: 383, column: 15, scope: !869)
!871 = !DILocation(line: 383, column: 19, scope: !869)
!872 = !DILocation(line: 384, column: 7, scope: !869)
!873 = !DILocation(line: 384, column: 15, scope: !869)
!874 = !DILocation(line: 384, column: 19, scope: !869)
!875 = !DILocation(line: 385, column: 8, scope: !869)
!876 = !DILocation(line: 385, column: 12, scope: !869)
!877 = !DILocation(line: 386, column: 7, scope: !869)
!878 = !DILocation(line: 389, column: 1, scope: !538)
!879 = distinct !DISubprogram(name: "gsl_sf_poch_e", scope: !1, file: !1, line: 393, type: !55, isLocal: false, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !64)
!880 = !DILocalVariable(name: "a", arg: 1, scope: !879, file: !1, line: 393, type: !46)
!881 = !DILocation(line: 393, column: 28, scope: !879)
!882 = !DILocalVariable(name: "x", arg: 2, scope: !879, file: !1, line: 393, type: !46)
!883 = !DILocation(line: 393, column: 44, scope: !879)
!884 = !DILocalVariable(name: "result", arg: 3, scope: !879, file: !1, line: 393, type: !57)
!885 = !DILocation(line: 393, column: 63, scope: !879)
!886 = !DILocation(line: 397, column: 6, scope: !887)
!887 = distinct !DILexicalBlock(scope: !879, file: !1, line: 397, column: 6)
!888 = !DILocation(line: 397, column: 8, scope: !887)
!889 = !DILocation(line: 397, column: 6, scope: !879)
!890 = !DILocation(line: 398, column: 5, scope: !891)
!891 = distinct !DILexicalBlock(scope: !887, file: !1, line: 397, column: 16)
!892 = !DILocation(line: 398, column: 13, scope: !891)
!893 = !DILocation(line: 398, column: 17, scope: !891)
!894 = !DILocation(line: 399, column: 5, scope: !891)
!895 = !DILocation(line: 399, column: 13, scope: !891)
!896 = !DILocation(line: 399, column: 17, scope: !891)
!897 = !DILocation(line: 400, column: 5, scope: !891)
!898 = !DILocalVariable(name: "lnpoch", scope: !899, file: !1, line: 402, type: !58)
!899 = distinct !DILexicalBlock(scope: !887, file: !1, line: 401, column: 10)
!900 = !DILocation(line: 402, column: 19, scope: !899)
!901 = !DILocalVariable(name: "sgn", scope: !899, file: !1, line: 403, type: !47)
!902 = !DILocation(line: 403, column: 12, scope: !899)
!903 = !DILocalVariable(name: "stat_lnpoch", scope: !899, file: !1, line: 404, type: !42)
!904 = !DILocation(line: 404, column: 9, scope: !899)
!905 = !DILocation(line: 404, column: 43, scope: !899)
!906 = !DILocation(line: 404, column: 46, scope: !899)
!907 = !DILocation(line: 404, column: 23, scope: !899)
!908 = !DILocation(line: 405, column: 16, scope: !909)
!909 = distinct !DILexicalBlock(scope: !899, file: !1, line: 405, column: 9)
!910 = !DILocation(line: 405, column: 20, scope: !909)
!911 = !DILocation(line: 405, column: 9, scope: !899)
!912 = !DILocation(line: 406, column: 7, scope: !913)
!913 = distinct !DILexicalBlock(scope: !909, file: !1, line: 405, column: 35)
!914 = !DILocation(line: 406, column: 15, scope: !913)
!915 = !DILocation(line: 406, column: 19, scope: !913)
!916 = !DILocation(line: 407, column: 7, scope: !913)
!917 = !DILocation(line: 407, column: 15, scope: !913)
!918 = !DILocation(line: 407, column: 19, scope: !913)
!919 = !DILocation(line: 408, column: 14, scope: !913)
!920 = !DILocation(line: 408, column: 7, scope: !913)
!921 = !DILocalVariable(name: "stat_exp", scope: !922, file: !1, line: 410, type: !42)
!922 = distinct !DILexicalBlock(scope: !909, file: !1, line: 409, column: 12)
!923 = !DILocation(line: 410, column: 11, scope: !922)
!924 = !DILocation(line: 410, column: 49, scope: !922)
!925 = !DILocation(line: 410, column: 61, scope: !922)
!926 = !DILocation(line: 410, column: 66, scope: !922)
!927 = !DILocation(line: 410, column: 25, scope: !922)
!928 = !DILocation(line: 411, column: 22, scope: !922)
!929 = !DILocation(line: 411, column: 7, scope: !922)
!930 = !DILocation(line: 411, column: 15, scope: !922)
!931 = !DILocation(line: 411, column: 19, scope: !922)
!932 = !DILocation(line: 412, column: 51, scope: !922)
!933 = !DILocation(line: 412, column: 59, scope: !922)
!934 = !DILocation(line: 412, column: 46, scope: !922)
!935 = !DILocation(line: 412, column: 44, scope: !922)
!936 = !DILocation(line: 412, column: 7, scope: !922)
!937 = !DILocation(line: 412, column: 15, scope: !922)
!938 = !DILocation(line: 412, column: 19, scope: !922)
!939 = !DILocation(line: 413, column: 14, scope: !922)
!940 = !DILocation(line: 413, column: 14, scope: !941)
!941 = !DILexicalBlockFile(scope: !922, file: !1, discriminator: 1)
!942 = !DILocation(line: 413, column: 14, scope: !943)
!943 = !DILexicalBlockFile(scope: !922, file: !1, discriminator: 2)
!944 = !DILocation(line: 413, column: 14, scope: !945)
!945 = !DILexicalBlockFile(scope: !922, file: !1, discriminator: 3)
!946 = !DILocation(line: 413, column: 14, scope: !947)
!947 = !DILexicalBlockFile(scope: !922, file: !1, discriminator: 4)
!948 = !DILocation(line: 413, column: 14, scope: !949)
!949 = !DILexicalBlockFile(scope: !922, file: !1, discriminator: 5)
!950 = !DILocation(line: 413, column: 14, scope: !951)
!951 = !DILexicalBlockFile(scope: !922, file: !1, discriminator: 6)
!952 = !DILocation(line: 413, column: 7, scope: !951)
!953 = !DILocation(line: 416, column: 1, scope: !879)
!954 = distinct !DISubprogram(name: "gsl_sf_pochrel_e", scope: !1, file: !1, line: 420, type: !55, isLocal: false, isDefinition: true, scopeLine: 421, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !64)
!955 = !DILocalVariable(name: "a", arg: 1, scope: !954, file: !1, line: 420, type: !46)
!956 = !DILocation(line: 420, column: 31, scope: !954)
!957 = !DILocalVariable(name: "x", arg: 2, scope: !954, file: !1, line: 420, type: !46)
!958 = !DILocation(line: 420, column: 47, scope: !954)
!959 = !DILocalVariable(name: "result", arg: 3, scope: !954, file: !1, line: 420, type: !57)
!960 = !DILocation(line: 420, column: 66, scope: !954)
!961 = !DILocalVariable(name: "absx", scope: !954, file: !1, line: 422, type: !46)
!962 = !DILocation(line: 422, column: 16, scope: !954)
!963 = !DILocation(line: 422, column: 28, scope: !954)
!964 = !DILocation(line: 422, column: 23, scope: !954)
!965 = !DILocalVariable(name: "absa", scope: !954, file: !1, line: 423, type: !46)
!966 = !DILocation(line: 423, column: 16, scope: !954)
!967 = !DILocation(line: 423, column: 28, scope: !954)
!968 = !DILocation(line: 423, column: 23, scope: !954)
!969 = !DILocation(line: 427, column: 6, scope: !970)
!970 = distinct !DILexicalBlock(scope: !954, file: !1, line: 427, column: 6)
!971 = !DILocation(line: 427, column: 17, scope: !970)
!972 = !DILocation(line: 427, column: 16, scope: !970)
!973 = !DILocation(line: 427, column: 11, scope: !970)
!974 = !DILocation(line: 427, column: 22, scope: !970)
!975 = !DILocation(line: 427, column: 25, scope: !976)
!976 = !DILexicalBlockFile(scope: !970, file: !1, discriminator: 1)
!977 = !DILocation(line: 427, column: 34, scope: !976)
!978 = !DILocation(line: 427, column: 34, scope: !979)
!979 = !DILexicalBlockFile(scope: !970, file: !1, discriminator: 2)
!980 = !DILocation(line: 427, column: 34, scope: !981)
!981 = !DILexicalBlockFile(scope: !970, file: !1, discriminator: 3)
!982 = !DILocation(line: 427, column: 34, scope: !983)
!983 = !DILexicalBlockFile(scope: !970, file: !1, discriminator: 4)
!984 = !DILocation(line: 427, column: 30, scope: !983)
!985 = !DILocation(line: 427, column: 29, scope: !983)
!986 = !DILocation(line: 427, column: 53, scope: !983)
!987 = !DILocation(line: 427, column: 6, scope: !983)
!988 = !DILocalVariable(name: "lnpoch", scope: !989, file: !1, line: 428, type: !58)
!989 = distinct !DILexicalBlock(scope: !970, file: !1, line: 427, column: 60)
!990 = !DILocation(line: 428, column: 19, scope: !989)
!991 = !DILocalVariable(name: "sgn", scope: !989, file: !1, line: 429, type: !47)
!992 = !DILocation(line: 429, column: 12, scope: !989)
!993 = !DILocalVariable(name: "stat_poch", scope: !989, file: !1, line: 430, type: !42)
!994 = !DILocation(line: 430, column: 9, scope: !989)
!995 = !DILocation(line: 430, column: 41, scope: !989)
!996 = !DILocation(line: 430, column: 44, scope: !989)
!997 = !DILocation(line: 430, column: 21, scope: !989)
!998 = !DILocation(line: 431, column: 15, scope: !999)
!999 = distinct !DILexicalBlock(scope: !989, file: !1, line: 431, column: 8)
!1000 = !DILocation(line: 431, column: 19, scope: !999)
!1001 = !DILocation(line: 431, column: 8, scope: !989)
!1002 = !DILocation(line: 432, column: 7, scope: !1003)
!1003 = distinct !DILexicalBlock(scope: !999, file: !1, line: 431, column: 38)
!1004 = distinct !{!1004, !1002}
!1005 = !DILocation(line: 432, column: 7, scope: !1006)
!1006 = !DILexicalBlockFile(scope: !1007, file: !1, discriminator: 1)
!1007 = distinct !DILexicalBlock(scope: !1003, file: !1, line: 432, column: 7)
!1008 = distinct !{!1008, !1009}
!1009 = !DILocation(line: 432, column: 7, scope: !1007)
!1010 = !DILocation(line: 432, column: 7, scope: !1011)
!1011 = !DILexicalBlockFile(scope: !1012, file: !1, discriminator: 2)
!1012 = distinct !DILexicalBlock(scope: !1007, file: !1, line: 432, column: 7)
!1013 = !DILocation(line: 432, column: 7, scope: !1014)
!1014 = !DILexicalBlockFile(scope: !1007, file: !1, discriminator: 3)
!1015 = !DILocation(line: 433, column: 5, scope: !1003)
!1016 = !DILocalVariable(name: "el", scope: !1017, file: !1, line: 435, type: !46)
!1017 = distinct !DILexicalBlock(scope: !999, file: !1, line: 434, column: 10)
!1018 = !DILocation(line: 435, column: 20, scope: !1017)
!1019 = !DILocation(line: 435, column: 36, scope: !1017)
!1020 = !DILocation(line: 435, column: 25, scope: !1017)
!1021 = !DILocation(line: 436, column: 23, scope: !1017)
!1022 = !DILocation(line: 436, column: 27, scope: !1017)
!1023 = !DILocation(line: 436, column: 26, scope: !1017)
!1024 = !DILocation(line: 436, column: 30, scope: !1017)
!1025 = !DILocation(line: 436, column: 37, scope: !1017)
!1026 = !DILocation(line: 436, column: 36, scope: !1017)
!1027 = !DILocation(line: 436, column: 7, scope: !1017)
!1028 = !DILocation(line: 436, column: 15, scope: !1017)
!1029 = !DILocation(line: 436, column: 20, scope: !1017)
!1030 = !DILocation(line: 437, column: 27, scope: !1017)
!1031 = !DILocation(line: 437, column: 35, scope: !1017)
!1032 = !DILocation(line: 437, column: 22, scope: !1017)
!1033 = !DILocation(line: 437, column: 50, scope: !1017)
!1034 = !DILocation(line: 437, column: 54, scope: !1017)
!1035 = !DILocation(line: 437, column: 40, scope: !1017)
!1036 = !DILocation(line: 437, column: 7, scope: !1017)
!1037 = !DILocation(line: 437, column: 15, scope: !1017)
!1038 = !DILocation(line: 437, column: 20, scope: !1017)
!1039 = !DILocation(line: 438, column: 52, scope: !1017)
!1040 = !DILocation(line: 438, column: 56, scope: !1017)
!1041 = !DILocation(line: 438, column: 55, scope: !1017)
!1042 = !DILocation(line: 438, column: 47, scope: !1017)
!1043 = !DILocation(line: 438, column: 60, scope: !1017)
!1044 = !DILocation(line: 438, column: 44, scope: !1017)
!1045 = !DILocation(line: 438, column: 74, scope: !1017)
!1046 = !DILocation(line: 438, column: 69, scope: !1047)
!1047 = !DILexicalBlockFile(scope: !1017, file: !1, discriminator: 1)
!1048 = !DILocation(line: 438, column: 67, scope: !1017)
!1049 = !DILocation(line: 438, column: 7, scope: !1017)
!1050 = !DILocation(line: 438, column: 15, scope: !1017)
!1051 = !DILocation(line: 438, column: 19, scope: !1017)
!1052 = !DILocation(line: 439, column: 14, scope: !1017)
!1053 = !DILocation(line: 439, column: 7, scope: !1017)
!1054 = !DILocation(line: 441, column: 3, scope: !989)
!1055 = !DILocation(line: 443, column: 27, scope: !1056)
!1056 = distinct !DILexicalBlock(scope: !970, file: !1, line: 442, column: 8)
!1057 = !DILocation(line: 443, column: 30, scope: !1056)
!1058 = !DILocation(line: 443, column: 33, scope: !1056)
!1059 = !DILocation(line: 443, column: 12, scope: !1056)
!1060 = !DILocation(line: 443, column: 5, scope: !1056)
!1061 = !DILocation(line: 445, column: 1, scope: !954)
!1062 = distinct !DISubprogram(name: "pochrel_smallx", scope: !1, file: !1, line: 84, type: !55, isLocal: true, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !64)
!1063 = !DILocalVariable(name: "a", arg: 1, scope: !1062, file: !1, line: 84, type: !46)
!1064 = !DILocation(line: 84, column: 29, scope: !1062)
!1065 = !DILocalVariable(name: "x", arg: 2, scope: !1062, file: !1, line: 84, type: !46)
!1066 = !DILocation(line: 84, column: 45, scope: !1062)
!1067 = !DILocalVariable(name: "result", arg: 3, scope: !1062, file: !1, line: 84, type: !57)
!1068 = !DILocation(line: 84, column: 64, scope: !1062)
!1069 = !DILocalVariable(name: "SQTBIG", scope: !1062, file: !1, line: 90, type: !46)
!1070 = !DILocation(line: 90, column: 16, scope: !1062)
!1071 = !DILocalVariable(name: "ALNEPS", scope: !1062, file: !1, line: 91, type: !46)
!1072 = !DILocation(line: 91, column: 16, scope: !1062)
!1073 = !DILocation(line: 93, column: 6, scope: !1074)
!1074 = distinct !DILexicalBlock(scope: !1062, file: !1, line: 93, column: 6)
!1075 = !DILocation(line: 93, column: 8, scope: !1074)
!1076 = !DILocation(line: 93, column: 6, scope: !1062)
!1077 = !DILocation(line: 94, column: 25, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !1074, file: !1, line: 93, column: 16)
!1079 = !DILocation(line: 94, column: 28, scope: !1078)
!1080 = !DILocation(line: 94, column: 12, scope: !1078)
!1081 = !DILocation(line: 94, column: 5, scope: !1078)
!1082 = !DILocalVariable(name: "bp", scope: !1083, file: !1, line: 97, type: !46)
!1083 = distinct !DILexicalBlock(scope: !1074, file: !1, line: 96, column: 8)
!1084 = !DILocation(line: 97, column: 18, scope: !1083)
!1085 = !DILocation(line: 97, column: 29, scope: !1083)
!1086 = !DILocation(line: 97, column: 31, scope: !1083)
!1087 = !DILocation(line: 97, column: 28, scope: !1083)
!1088 = !DILocation(line: 97, column: 45, scope: !1089)
!1089 = !DILexicalBlockFile(scope: !1083, file: !1, discriminator: 1)
!1090 = !DILocation(line: 97, column: 44, scope: !1089)
!1091 = !DILocation(line: 97, column: 47, scope: !1089)
!1092 = !DILocation(line: 97, column: 46, scope: !1089)
!1093 = !DILocation(line: 97, column: 28, scope: !1089)
!1094 = !DILocation(line: 97, column: 51, scope: !1095)
!1095 = !DILexicalBlockFile(scope: !1083, file: !1, discriminator: 2)
!1096 = !DILocation(line: 97, column: 28, scope: !1095)
!1097 = !DILocation(line: 97, column: 28, scope: !1098)
!1098 = !DILexicalBlockFile(scope: !1083, file: !1, discriminator: 3)
!1099 = !DILocation(line: 97, column: 18, scope: !1098)
!1100 = !DILocalVariable(name: "incr", scope: !1083, file: !1, line: 98, type: !1101)
!1101 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!1102 = !DILocation(line: 98, column: 18, scope: !1083)
!1103 = !DILocation(line: 98, column: 28, scope: !1083)
!1104 = !DILocation(line: 98, column: 31, scope: !1083)
!1105 = !DILocation(line: 98, column: 27, scope: !1083)
!1106 = !DILocation(line: 98, column: 46, scope: !1089)
!1107 = !DILocation(line: 98, column: 45, scope: !1089)
!1108 = !DILocation(line: 98, column: 27, scope: !1089)
!1109 = !DILocation(line: 98, column: 27, scope: !1095)
!1110 = !DILocation(line: 98, column: 27, scope: !1098)
!1111 = !DILocation(line: 98, column: 25, scope: !1098)
!1112 = !DILocation(line: 98, column: 18, scope: !1098)
!1113 = !DILocalVariable(name: "b", scope: !1083, file: !1, line: 99, type: !46)
!1114 = !DILocation(line: 99, column: 18, scope: !1083)
!1115 = !DILocation(line: 99, column: 25, scope: !1083)
!1116 = !DILocation(line: 99, column: 30, scope: !1083)
!1117 = !DILocation(line: 99, column: 28, scope: !1083)
!1118 = !DILocalVariable(name: "dpoch1", scope: !1083, file: !1, line: 100, type: !47)
!1119 = !DILocation(line: 100, column: 12, scope: !1083)
!1120 = !DILocalVariable(name: "dexprl", scope: !1083, file: !1, line: 101, type: !58)
!1121 = !DILocation(line: 101, column: 19, scope: !1083)
!1122 = !DILocalVariable(name: "stat_dexprl", scope: !1083, file: !1, line: 102, type: !42)
!1123 = !DILocation(line: 102, column: 9, scope: !1083)
!1124 = !DILocalVariable(name: "i", scope: !1083, file: !1, line: 103, type: !42)
!1125 = !DILocation(line: 103, column: 9, scope: !1083)
!1126 = !DILocalVariable(name: "var", scope: !1083, file: !1, line: 105, type: !47)
!1127 = !DILocation(line: 105, column: 12, scope: !1083)
!1128 = !DILocation(line: 105, column: 21, scope: !1083)
!1129 = !DILocation(line: 105, column: 30, scope: !1083)
!1130 = !DILocation(line: 105, column: 31, scope: !1083)
!1131 = !DILocation(line: 105, column: 28, scope: !1083)
!1132 = !DILocation(line: 105, column: 23, scope: !1083)
!1133 = !DILocalVariable(name: "alnvar", scope: !1083, file: !1, line: 106, type: !47)
!1134 = !DILocation(line: 106, column: 12, scope: !1083)
!1135 = !DILocation(line: 106, column: 25, scope: !1083)
!1136 = !DILocation(line: 106, column: 21, scope: !1083)
!1137 = !DILocalVariable(name: "q", scope: !1083, file: !1, line: 107, type: !47)
!1138 = !DILocation(line: 107, column: 12, scope: !1083)
!1139 = !DILocation(line: 107, column: 16, scope: !1083)
!1140 = !DILocation(line: 107, column: 18, scope: !1083)
!1141 = !DILocation(line: 107, column: 17, scope: !1083)
!1142 = !DILocalVariable(name: "poly1", scope: !1083, file: !1, line: 109, type: !47)
!1143 = !DILocation(line: 109, column: 12, scope: !1083)
!1144 = !DILocation(line: 111, column: 8, scope: !1145)
!1145 = distinct !DILexicalBlock(scope: !1083, file: !1, line: 111, column: 8)
!1146 = !DILocation(line: 111, column: 12, scope: !1145)
!1147 = !DILocation(line: 111, column: 8, scope: !1083)
!1148 = !DILocalVariable(name: "nterms", scope: !1149, file: !1, line: 112, type: !1101)
!1149 = distinct !DILexicalBlock(scope: !1145, file: !1, line: 111, column: 22)
!1150 = !DILocation(line: 112, column: 17, scope: !1149)
!1151 = !DILocation(line: 112, column: 44, scope: !1149)
!1152 = !DILocation(line: 112, column: 43, scope: !1149)
!1153 = !DILocation(line: 112, column: 51, scope: !1149)
!1154 = !DILocation(line: 112, column: 26, scope: !1149)
!1155 = !DILocalVariable(name: "var2", scope: !1149, file: !1, line: 113, type: !46)
!1156 = !DILocation(line: 113, column: 20, scope: !1149)
!1157 = !DILocation(line: 113, column: 32, scope: !1149)
!1158 = !DILocation(line: 113, column: 31, scope: !1149)
!1159 = !DILocation(line: 113, column: 37, scope: !1149)
!1160 = !DILocation(line: 113, column: 36, scope: !1149)
!1161 = !DILocalVariable(name: "rho", scope: !1149, file: !1, line: 114, type: !46)
!1162 = !DILocation(line: 114, column: 20, scope: !1149)
!1163 = !DILocation(line: 114, column: 34, scope: !1149)
!1164 = !DILocation(line: 114, column: 36, scope: !1149)
!1165 = !DILocation(line: 114, column: 31, scope: !1149)
!1166 = !DILocalVariable(name: "term", scope: !1149, file: !1, line: 115, type: !47)
!1167 = !DILocation(line: 115, column: 14, scope: !1149)
!1168 = !DILocation(line: 115, column: 21, scope: !1149)
!1169 = !DILocalVariable(name: "gbern", scope: !1149, file: !1, line: 116, type: !1170)
!1170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 1536, align: 64, elements: !1171)
!1171 = !{!1172}
!1172 = !DISubrange(count: 24)
!1173 = !DILocation(line: 116, column: 14, scope: !1149)
!1174 = !DILocalVariable(name: "k", scope: !1149, file: !1, line: 117, type: !42)
!1175 = !DILocation(line: 117, column: 11, scope: !1149)
!1176 = !DILocalVariable(name: "j", scope: !1149, file: !1, line: 117, type: !42)
!1177 = !DILocation(line: 117, column: 14, scope: !1149)
!1178 = !DILocation(line: 119, column: 7, scope: !1149)
!1179 = !DILocation(line: 119, column: 16, scope: !1149)
!1180 = !DILocation(line: 120, column: 19, scope: !1149)
!1181 = !DILocation(line: 120, column: 18, scope: !1149)
!1182 = !DILocation(line: 120, column: 22, scope: !1149)
!1183 = !DILocation(line: 120, column: 7, scope: !1149)
!1184 = !DILocation(line: 120, column: 16, scope: !1149)
!1185 = !DILocation(line: 121, column: 15, scope: !1149)
!1186 = !DILocation(line: 121, column: 26, scope: !1149)
!1187 = !DILocation(line: 121, column: 24, scope: !1149)
!1188 = !DILocation(line: 121, column: 13, scope: !1149)
!1189 = !DILocation(line: 123, column: 10, scope: !1190)
!1190 = distinct !DILexicalBlock(scope: !1149, file: !1, line: 123, column: 10)
!1191 = !DILocation(line: 123, column: 17, scope: !1190)
!1192 = !DILocation(line: 123, column: 10, scope: !1149)
!1193 = !DILocation(line: 126, column: 9, scope: !1194)
!1194 = distinct !DILexicalBlock(scope: !1190, file: !1, line: 123, column: 23)
!1195 = !DILocation(line: 126, column: 17, scope: !1194)
!1196 = !DILocation(line: 126, column: 21, scope: !1194)
!1197 = !DILocation(line: 127, column: 9, scope: !1194)
!1198 = !DILocation(line: 127, column: 17, scope: !1194)
!1199 = !DILocation(line: 127, column: 21, scope: !1194)
!1200 = !DILocation(line: 128, column: 9, scope: !1194)
!1201 = distinct !{!1201, !1200}
!1202 = !DILocation(line: 128, column: 9, scope: !1203)
!1203 = !DILexicalBlockFile(scope: !1204, file: !1, discriminator: 1)
!1204 = distinct !DILexicalBlock(scope: !1194, file: !1, line: 128, column: 9)
!1205 = !DILocation(line: 129, column: 7, scope: !1194)
!1206 = !DILocation(line: 131, column: 12, scope: !1207)
!1207 = distinct !DILexicalBlock(scope: !1149, file: !1, line: 131, column: 7)
!1208 = !DILocation(line: 131, column: 11, scope: !1207)
!1209 = !DILocation(line: 131, column: 16, scope: !1210)
!1210 = !DILexicalBlockFile(scope: !1211, file: !1, discriminator: 1)
!1211 = distinct !DILexicalBlock(scope: !1207, file: !1, line: 131, column: 7)
!1212 = !DILocation(line: 131, column: 19, scope: !1210)
!1213 = !DILocation(line: 131, column: 17, scope: !1210)
!1214 = !DILocation(line: 131, column: 7, scope: !1210)
!1215 = !DILocalVariable(name: "gbk", scope: !1216, file: !1, line: 132, type: !47)
!1216 = distinct !DILexicalBlock(scope: !1211, file: !1, line: 131, column: 32)
!1217 = !DILocation(line: 132, column: 16, scope: !1216)
!1218 = !DILocation(line: 133, column: 14, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !1216, file: !1, line: 133, column: 9)
!1220 = !DILocation(line: 133, column: 13, scope: !1219)
!1221 = !DILocation(line: 133, column: 18, scope: !1222)
!1222 = !DILexicalBlockFile(scope: !1223, file: !1, discriminator: 1)
!1223 = distinct !DILexicalBlock(scope: !1219, file: !1, line: 133, column: 9)
!1224 = !DILocation(line: 133, column: 21, scope: !1222)
!1225 = !DILocation(line: 133, column: 19, scope: !1222)
!1226 = !DILocation(line: 133, column: 9, scope: !1222)
!1227 = !DILocation(line: 134, column: 23, scope: !1228)
!1228 = distinct !DILexicalBlock(scope: !1223, file: !1, line: 133, column: 29)
!1229 = !DILocation(line: 134, column: 25, scope: !1228)
!1230 = !DILocation(line: 134, column: 24, scope: !1228)
!1231 = !DILocation(line: 134, column: 26, scope: !1228)
!1232 = !DILocation(line: 134, column: 18, scope: !1228)
!1233 = !DILocation(line: 134, column: 36, scope: !1228)
!1234 = !DILocation(line: 134, column: 30, scope: !1228)
!1235 = !DILocation(line: 134, column: 29, scope: !1228)
!1236 = !DILocation(line: 134, column: 15, scope: !1228)
!1237 = !DILocation(line: 135, column: 9, scope: !1228)
!1238 = !DILocation(line: 133, column: 25, scope: !1239)
!1239 = !DILexicalBlockFile(scope: !1223, file: !1, discriminator: 2)
!1240 = !DILocation(line: 133, column: 9, scope: !1239)
!1241 = distinct !{!1241, !1242}
!1242 = !DILocation(line: 133, column: 9, scope: !1216)
!1243 = !DILocation(line: 136, column: 23, scope: !1216)
!1244 = !DILocation(line: 136, column: 22, scope: !1216)
!1245 = !DILocation(line: 136, column: 27, scope: !1216)
!1246 = !DILocation(line: 136, column: 26, scope: !1216)
!1247 = !DILocation(line: 136, column: 31, scope: !1216)
!1248 = !DILocation(line: 136, column: 30, scope: !1216)
!1249 = !DILocation(line: 136, column: 15, scope: !1216)
!1250 = !DILocation(line: 136, column: 16, scope: !1216)
!1251 = !DILocation(line: 136, column: 9, scope: !1216)
!1252 = !DILocation(line: 136, column: 20, scope: !1216)
!1253 = !DILocation(line: 138, column: 21, scope: !1216)
!1254 = !DILocation(line: 138, column: 20, scope: !1216)
!1255 = !DILocation(line: 138, column: 22, scope: !1216)
!1256 = !DILocation(line: 138, column: 19, scope: !1216)
!1257 = !DILocation(line: 138, column: 25, scope: !1216)
!1258 = !DILocation(line: 138, column: 24, scope: !1216)
!1259 = !DILocation(line: 138, column: 31, scope: !1216)
!1260 = !DILocation(line: 138, column: 30, scope: !1216)
!1261 = !DILocation(line: 138, column: 32, scope: !1216)
!1262 = !DILocation(line: 138, column: 29, scope: !1216)
!1263 = !DILocation(line: 138, column: 35, scope: !1216)
!1264 = !DILocation(line: 138, column: 34, scope: !1216)
!1265 = !DILocation(line: 138, column: 27, scope: !1216)
!1266 = !DILocation(line: 138, column: 38, scope: !1216)
!1267 = !DILocation(line: 138, column: 37, scope: !1216)
!1268 = !DILocation(line: 138, column: 15, scope: !1216)
!1269 = !DILocation(line: 139, column: 24, scope: !1216)
!1270 = !DILocation(line: 139, column: 25, scope: !1216)
!1271 = !DILocation(line: 139, column: 18, scope: !1216)
!1272 = !DILocation(line: 139, column: 29, scope: !1216)
!1273 = !DILocation(line: 139, column: 28, scope: !1216)
!1274 = !DILocation(line: 139, column: 15, scope: !1216)
!1275 = !DILocation(line: 140, column: 7, scope: !1216)
!1276 = !DILocation(line: 131, column: 28, scope: !1277)
!1277 = !DILexicalBlockFile(scope: !1211, file: !1, discriminator: 2)
!1278 = !DILocation(line: 131, column: 7, scope: !1277)
!1279 = distinct !{!1279, !1280}
!1280 = !DILocation(line: 131, column: 7, scope: !1149)
!1281 = !DILocation(line: 141, column: 5, scope: !1149)
!1282 = !DILocation(line: 143, column: 34, scope: !1083)
!1283 = !DILocation(line: 143, column: 19, scope: !1083)
!1284 = !DILocation(line: 143, column: 17, scope: !1083)
!1285 = !DILocation(line: 144, column: 8, scope: !1286)
!1286 = distinct !DILexicalBlock(scope: !1083, file: !1, line: 144, column: 8)
!1287 = !DILocation(line: 144, column: 20, scope: !1286)
!1288 = !DILocation(line: 144, column: 8, scope: !1083)
!1289 = !DILocation(line: 145, column: 7, scope: !1290)
!1290 = distinct !DILexicalBlock(scope: !1286, file: !1, line: 144, column: 36)
!1291 = !DILocation(line: 145, column: 15, scope: !1290)
!1292 = !DILocation(line: 145, column: 19, scope: !1290)
!1293 = !DILocation(line: 146, column: 7, scope: !1290)
!1294 = !DILocation(line: 146, column: 15, scope: !1290)
!1295 = !DILocation(line: 146, column: 19, scope: !1290)
!1296 = !DILocation(line: 147, column: 14, scope: !1290)
!1297 = !DILocation(line: 147, column: 7, scope: !1290)
!1298 = !DILocation(line: 149, column: 25, scope: !1083)
!1299 = !DILocation(line: 149, column: 29, scope: !1083)
!1300 = !DILocation(line: 149, column: 28, scope: !1083)
!1301 = !DILocation(line: 149, column: 12, scope: !1083)
!1302 = !DILocation(line: 149, column: 16, scope: !1083)
!1303 = !DILocation(line: 150, column: 15, scope: !1083)
!1304 = !DILocation(line: 150, column: 17, scope: !1083)
!1305 = !DILocation(line: 150, column: 11, scope: !1083)
!1306 = !DILocation(line: 151, column: 21, scope: !1083)
!1307 = !DILocation(line: 151, column: 28, scope: !1083)
!1308 = !DILocation(line: 151, column: 37, scope: !1083)
!1309 = !DILocation(line: 151, column: 41, scope: !1083)
!1310 = !DILocation(line: 151, column: 39, scope: !1083)
!1311 = !DILocation(line: 151, column: 35, scope: !1083)
!1312 = !DILocation(line: 151, column: 25, scope: !1083)
!1313 = !DILocation(line: 151, column: 50, scope: !1083)
!1314 = !DILocation(line: 151, column: 48, scope: !1083)
!1315 = !DILocation(line: 151, column: 12, scope: !1083)
!1316 = !DILocation(line: 153, column: 11, scope: !1317)
!1317 = distinct !DILexicalBlock(scope: !1083, file: !1, line: 153, column: 5)
!1318 = !DILocation(line: 153, column: 15, scope: !1317)
!1319 = !DILocation(line: 153, column: 10, scope: !1317)
!1320 = !DILocation(line: 153, column: 9, scope: !1317)
!1321 = !DILocation(line: 153, column: 19, scope: !1322)
!1322 = !DILexicalBlockFile(scope: !1323, file: !1, discriminator: 1)
!1323 = distinct !DILexicalBlock(scope: !1317, file: !1, line: 153, column: 5)
!1324 = !DILocation(line: 153, column: 21, scope: !1322)
!1325 = !DILocation(line: 153, column: 5, scope: !1322)
!1326 = !DILocalVariable(name: "binv", scope: !1327, file: !1, line: 158, type: !47)
!1327 = distinct !DILexicalBlock(scope: !1323, file: !1, line: 153, column: 32)
!1328 = !DILocation(line: 158, column: 14, scope: !1327)
!1329 = !DILocation(line: 158, column: 26, scope: !1327)
!1330 = !DILocation(line: 158, column: 29, scope: !1327)
!1331 = !DILocation(line: 158, column: 28, scope: !1327)
!1332 = !DILocation(line: 158, column: 24, scope: !1327)
!1333 = !DILocation(line: 159, column: 17, scope: !1327)
!1334 = !DILocation(line: 159, column: 26, scope: !1327)
!1335 = !DILocation(line: 159, column: 24, scope: !1327)
!1336 = !DILocation(line: 159, column: 41, scope: !1327)
!1337 = !DILocation(line: 159, column: 43, scope: !1327)
!1338 = !DILocation(line: 159, column: 42, scope: !1327)
!1339 = !DILocation(line: 159, column: 39, scope: !1327)
!1340 = !DILocation(line: 159, column: 32, scope: !1327)
!1341 = !DILocation(line: 159, column: 14, scope: !1327)
!1342 = !DILocation(line: 160, column: 5, scope: !1327)
!1343 = !DILocation(line: 153, column: 28, scope: !1344)
!1344 = !DILexicalBlockFile(scope: !1323, file: !1, discriminator: 2)
!1345 = !DILocation(line: 153, column: 5, scope: !1344)
!1346 = distinct !{!1346, !1347}
!1347 = !DILocation(line: 153, column: 5, scope: !1083)
!1348 = !DILocation(line: 162, column: 8, scope: !1349)
!1349 = distinct !DILexicalBlock(scope: !1083, file: !1, line: 162, column: 8)
!1350 = !DILocation(line: 162, column: 14, scope: !1349)
!1351 = !DILocation(line: 162, column: 11, scope: !1349)
!1352 = !DILocation(line: 162, column: 8, scope: !1083)
!1353 = !DILocation(line: 163, column: 21, scope: !1354)
!1354 = distinct !DILexicalBlock(scope: !1349, file: !1, line: 162, column: 17)
!1355 = !DILocation(line: 163, column: 7, scope: !1354)
!1356 = !DILocation(line: 163, column: 15, scope: !1354)
!1357 = !DILocation(line: 163, column: 19, scope: !1354)
!1358 = !DILocation(line: 164, column: 51, scope: !1354)
!1359 = !DILocation(line: 164, column: 46, scope: !1354)
!1360 = !DILocation(line: 164, column: 57, scope: !1354)
!1361 = !DILocation(line: 164, column: 43, scope: !1354)
!1362 = !DILocation(line: 164, column: 71, scope: !1354)
!1363 = !DILocation(line: 164, column: 79, scope: !1354)
!1364 = !DILocation(line: 164, column: 66, scope: !1365)
!1365 = !DILexicalBlockFile(scope: !1354, file: !1, discriminator: 1)
!1366 = !DILocation(line: 164, column: 64, scope: !1354)
!1367 = !DILocation(line: 164, column: 7, scope: !1354)
!1368 = !DILocation(line: 164, column: 15, scope: !1354)
!1369 = !DILocation(line: 164, column: 19, scope: !1354)
!1370 = !DILocation(line: 165, column: 7, scope: !1354)
!1371 = !DILocalVariable(name: "sinpxx", scope: !1372, file: !1, line: 172, type: !47)
!1372 = distinct !DILexicalBlock(scope: !1349, file: !1, line: 167, column: 10)
!1373 = !DILocation(line: 172, column: 14, scope: !1372)
!1374 = !DILocation(line: 172, column: 32, scope: !1372)
!1375 = !DILocation(line: 172, column: 31, scope: !1372)
!1376 = !DILocation(line: 172, column: 23, scope: !1372)
!1377 = !DILocation(line: 172, column: 35, scope: !1372)
!1378 = !DILocation(line: 172, column: 34, scope: !1372)
!1379 = !DILocalVariable(name: "sinpx2", scope: !1372, file: !1, line: 173, type: !47)
!1380 = !DILocation(line: 173, column: 14, scope: !1372)
!1381 = !DILocation(line: 173, column: 36, scope: !1372)
!1382 = !DILocation(line: 173, column: 35, scope: !1372)
!1383 = !DILocation(line: 173, column: 23, scope: !1372)
!1384 = !DILocalVariable(name: "t1", scope: !1372, file: !1, line: 174, type: !47)
!1385 = !DILocation(line: 174, column: 14, scope: !1372)
!1386 = !DILocation(line: 174, column: 19, scope: !1372)
!1387 = !DILocation(line: 174, column: 35, scope: !1372)
!1388 = !DILocation(line: 174, column: 34, scope: !1372)
!1389 = !DILocation(line: 174, column: 26, scope: !1372)
!1390 = !DILocation(line: 174, column: 25, scope: !1372)
!1391 = !DILocalVariable(name: "t2", scope: !1372, file: !1, line: 175, type: !47)
!1392 = !DILocation(line: 175, column: 14, scope: !1372)
!1393 = !DILocation(line: 175, column: 23, scope: !1372)
!1394 = !DILocation(line: 175, column: 22, scope: !1372)
!1395 = !DILocation(line: 175, column: 31, scope: !1372)
!1396 = !DILocation(line: 175, column: 38, scope: !1372)
!1397 = !DILocation(line: 175, column: 37, scope: !1372)
!1398 = !DILocation(line: 175, column: 29, scope: !1372)
!1399 = !DILocalVariable(name: "trig", scope: !1372, file: !1, line: 176, type: !47)
!1400 = !DILocation(line: 176, column: 14, scope: !1372)
!1401 = !DILocation(line: 176, column: 22, scope: !1372)
!1402 = !DILocation(line: 176, column: 27, scope: !1372)
!1403 = !DILocation(line: 176, column: 25, scope: !1372)
!1404 = !DILocation(line: 177, column: 22, scope: !1372)
!1405 = !DILocation(line: 177, column: 38, scope: !1372)
!1406 = !DILocation(line: 177, column: 40, scope: !1372)
!1407 = !DILocation(line: 177, column: 39, scope: !1372)
!1408 = !DILocation(line: 177, column: 36, scope: !1372)
!1409 = !DILocation(line: 177, column: 29, scope: !1372)
!1410 = !DILocation(line: 177, column: 48, scope: !1372)
!1411 = !DILocation(line: 177, column: 46, scope: !1372)
!1412 = !DILocation(line: 177, column: 7, scope: !1372)
!1413 = !DILocation(line: 177, column: 15, scope: !1372)
!1414 = !DILocation(line: 177, column: 20, scope: !1372)
!1415 = !DILocation(line: 178, column: 28, scope: !1372)
!1416 = !DILocation(line: 178, column: 35, scope: !1372)
!1417 = !DILocation(line: 178, column: 34, scope: !1372)
!1418 = !DILocation(line: 178, column: 23, scope: !1372)
!1419 = !DILocation(line: 178, column: 38, scope: !1372)
!1420 = !DILocation(line: 178, column: 45, scope: !1372)
!1421 = !DILocation(line: 178, column: 71, scope: !1372)
!1422 = !DILocation(line: 178, column: 66, scope: !1423)
!1423 = !DILexicalBlockFile(scope: !1372, file: !1, discriminator: 1)
!1424 = !DILocation(line: 178, column: 82, scope: !1372)
!1425 = !DILocation(line: 178, column: 77, scope: !1426)
!1426 = !DILexicalBlockFile(scope: !1372, file: !1, discriminator: 2)
!1427 = !DILocation(line: 178, column: 75, scope: !1372)
!1428 = !DILocation(line: 178, column: 63, scope: !1372)
!1429 = !DILocation(line: 178, column: 7, scope: !1372)
!1430 = !DILocation(line: 178, column: 15, scope: !1372)
!1431 = !DILocation(line: 178, column: 20, scope: !1372)
!1432 = !DILocation(line: 179, column: 52, scope: !1372)
!1433 = !DILocation(line: 179, column: 47, scope: !1372)
!1434 = !DILocation(line: 179, column: 58, scope: !1372)
!1435 = !DILocation(line: 179, column: 44, scope: !1372)
!1436 = !DILocation(line: 179, column: 72, scope: !1372)
!1437 = !DILocation(line: 179, column: 80, scope: !1372)
!1438 = !DILocation(line: 179, column: 67, scope: !1423)
!1439 = !DILocation(line: 179, column: 65, scope: !1372)
!1440 = !DILocation(line: 179, column: 7, scope: !1372)
!1441 = !DILocation(line: 179, column: 15, scope: !1372)
!1442 = !DILocation(line: 179, column: 19, scope: !1372)
!1443 = !DILocation(line: 180, column: 7, scope: !1372)
!1444 = !DILocation(line: 183, column: 1, scope: !1062)
!1445 = distinct !DISubprogram(name: "gsl_sf_lnpoch", scope: !1, file: !1, line: 452, type: !1446, isLocal: false, isDefinition: true, scopeLine: 453, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !64)
!1446 = !DISubroutineType(types: !1447)
!1447 = !{!47, !46, !46}
!1448 = !DILocalVariable(name: "a", arg: 1, scope: !1445, file: !1, line: 452, type: !46)
!1449 = !DILocation(line: 452, column: 35, scope: !1445)
!1450 = !DILocalVariable(name: "x", arg: 2, scope: !1445, file: !1, line: 452, type: !46)
!1451 = !DILocation(line: 452, column: 51, scope: !1445)
!1452 = !DILocalVariable(name: "result", scope: !1445, file: !1, line: 454, type: !58)
!1453 = !DILocation(line: 454, column: 3, scope: !1445)
!1454 = !DILocalVariable(name: "status", scope: !1445, file: !1, line: 454, type: !42)
!1455 = !DILocation(line: 454, column: 3, scope: !1456)
!1456 = distinct !DILexicalBlock(scope: !1445, file: !1, line: 454, column: 3)
!1457 = !DILocation(line: 454, column: 3, scope: !1458)
!1458 = !DILexicalBlockFile(scope: !1459, file: !1, discriminator: 1)
!1459 = distinct !DILexicalBlock(scope: !1456, file: !1, line: 454, column: 3)
!1460 = distinct !{!1460, !1461}
!1461 = !DILocation(line: 454, column: 3, scope: !1459)
!1462 = !DILocation(line: 454, column: 3, scope: !1463)
!1463 = !DILexicalBlockFile(scope: !1464, file: !1, discriminator: 2)
!1464 = distinct !DILexicalBlock(scope: !1459, file: !1, line: 454, column: 3)
!1465 = !DILocation(line: 454, column: 3, scope: !1466)
!1466 = !DILexicalBlockFile(scope: !1459, file: !1, discriminator: 3)
!1467 = !DILocation(line: 454, column: 3, scope: !1468)
!1468 = !DILexicalBlockFile(scope: !1445, file: !1, discriminator: 4)
!1469 = !DILocation(line: 455, column: 1, scope: !1445)
!1470 = distinct !DISubprogram(name: "gsl_sf_poch", scope: !1, file: !1, line: 457, type: !1446, isLocal: false, isDefinition: true, scopeLine: 458, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !64)
!1471 = !DILocalVariable(name: "a", arg: 1, scope: !1470, file: !1, line: 457, type: !46)
!1472 = !DILocation(line: 457, column: 33, scope: !1470)
!1473 = !DILocalVariable(name: "x", arg: 2, scope: !1470, file: !1, line: 457, type: !46)
!1474 = !DILocation(line: 457, column: 49, scope: !1470)
!1475 = !DILocalVariable(name: "result", scope: !1470, file: !1, line: 459, type: !58)
!1476 = !DILocation(line: 459, column: 3, scope: !1470)
!1477 = !DILocalVariable(name: "status", scope: !1470, file: !1, line: 459, type: !42)
!1478 = !DILocation(line: 459, column: 3, scope: !1479)
!1479 = distinct !DILexicalBlock(scope: !1470, file: !1, line: 459, column: 3)
!1480 = !DILocation(line: 459, column: 3, scope: !1481)
!1481 = !DILexicalBlockFile(scope: !1482, file: !1, discriminator: 1)
!1482 = distinct !DILexicalBlock(scope: !1479, file: !1, line: 459, column: 3)
!1483 = distinct !{!1483, !1484}
!1484 = !DILocation(line: 459, column: 3, scope: !1482)
!1485 = !DILocation(line: 459, column: 3, scope: !1486)
!1486 = !DILexicalBlockFile(scope: !1487, file: !1, discriminator: 2)
!1487 = distinct !DILexicalBlock(scope: !1482, file: !1, line: 459, column: 3)
!1488 = !DILocation(line: 459, column: 3, scope: !1489)
!1489 = !DILexicalBlockFile(scope: !1482, file: !1, discriminator: 3)
!1490 = !DILocation(line: 459, column: 3, scope: !1491)
!1491 = !DILexicalBlockFile(scope: !1470, file: !1, discriminator: 4)
!1492 = !DILocation(line: 460, column: 1, scope: !1470)
!1493 = distinct !DISubprogram(name: "gsl_sf_pochrel", scope: !1, file: !1, line: 462, type: !1446, isLocal: false, isDefinition: true, scopeLine: 463, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !64)
!1494 = !DILocalVariable(name: "a", arg: 1, scope: !1493, file: !1, line: 462, type: !46)
!1495 = !DILocation(line: 462, column: 36, scope: !1493)
!1496 = !DILocalVariable(name: "x", arg: 2, scope: !1493, file: !1, line: 462, type: !46)
!1497 = !DILocation(line: 462, column: 52, scope: !1493)
!1498 = !DILocalVariable(name: "result", scope: !1493, file: !1, line: 464, type: !58)
!1499 = !DILocation(line: 464, column: 3, scope: !1493)
!1500 = !DILocalVariable(name: "status", scope: !1493, file: !1, line: 464, type: !42)
!1501 = !DILocation(line: 464, column: 3, scope: !1502)
!1502 = distinct !DILexicalBlock(scope: !1493, file: !1, line: 464, column: 3)
!1503 = !DILocation(line: 464, column: 3, scope: !1504)
!1504 = !DILexicalBlockFile(scope: !1505, file: !1, discriminator: 1)
!1505 = distinct !DILexicalBlock(scope: !1502, file: !1, line: 464, column: 3)
!1506 = distinct !{!1506, !1507}
!1507 = !DILocation(line: 464, column: 3, scope: !1505)
!1508 = !DILocation(line: 464, column: 3, scope: !1509)
!1509 = !DILexicalBlockFile(scope: !1510, file: !1, discriminator: 2)
!1510 = distinct !DILexicalBlock(scope: !1505, file: !1, line: 464, column: 3)
!1511 = !DILocation(line: 464, column: 3, scope: !1512)
!1512 = !DILexicalBlockFile(scope: !1505, file: !1, discriminator: 3)
!1513 = !DILocation(line: 464, column: 3, scope: !1514)
!1514 = !DILexicalBlockFile(scope: !1493, file: !1, discriminator: 4)
!1515 = !DILocation(line: 465, column: 1, scope: !1493)
