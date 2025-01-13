; ModuleID = 'bessel_Yn.c'
source_filename = "bessel_Yn.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsl_sf_result_struct = type { double, double }

@.str = private unnamed_addr constant [13 x i8] c"domain error\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"bessel_Yn.c\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"gsl_sf_bessel_Yn_e(n, x, &result)\00", align 1

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_bessel_Yn_e(i32, double, %struct.gsl_sf_result_struct*) #0 !dbg !48 {
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
  %15 = alloca %struct.gsl_sf_result_struct, align 8
  %16 = alloca %struct.gsl_sf_result_struct, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  %22 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !61, metadata !62), !dbg !63
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !64, metadata !62), !dbg !65
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %7, metadata !66, metadata !62), !dbg !67
  call void @llvm.dbg.declare(metadata i32* %8, metadata !68, metadata !62), !dbg !69
  store i32 1, i32* %8, align 4, !dbg !69
  %23 = load i32, i32* %5, align 4, !dbg !70
  %24 = icmp slt i32 %23, 0, !dbg !72
  br i1 %24, label %25, label %33, !dbg !73

; <label>:25:                                     ; preds = %3
  %26 = load i32, i32* %5, align 4, !dbg !74
  %27 = sub nsw i32 0, %26, !dbg !76
  store i32 %27, i32* %5, align 4, !dbg !77
  %28 = load i32, i32* %5, align 4, !dbg !78
  %29 = and i32 %28, 1, !dbg !78
  %30 = icmp ne i32 %29, 0, !dbg !78
  br i1 %30, label %31, label %32, !dbg !80

; <label>:31:                                     ; preds = %25
  store i32 -1, i32* %8, align 4, !dbg !81
  br label %32, !dbg !83

; <label>:32:                                     ; preds = %31, %25
  br label %33, !dbg !84

; <label>:33:                                     ; preds = %32, %3
  %34 = load i32, i32* %5, align 4, !dbg !85
  %35 = icmp eq i32 %34, 0, !dbg !87
  br i1 %35, label %36, label %47, !dbg !88

; <label>:36:                                     ; preds = %33
  call void @llvm.dbg.declare(metadata i32* %9, metadata !89, metadata !62), !dbg !91
  %37 = load double, double* %6, align 8, !dbg !92
  %38 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !93
  %39 = call i32 @gsl_sf_bessel_Y0_e(double %37, %struct.gsl_sf_result_struct* %38), !dbg !94
  store i32 %39, i32* %9, align 4, !dbg !91
  %40 = load i32, i32* %8, align 4, !dbg !95
  %41 = sitofp i32 %40 to double, !dbg !95
  %42 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !96
  %43 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %42, i32 0, i32 0, !dbg !97
  %44 = load double, double* %43, align 8, !dbg !98
  %45 = fmul double %44, %41, !dbg !98
  store double %45, double* %43, align 8, !dbg !98
  %46 = load i32, i32* %9, align 4, !dbg !99
  store i32 %46, i32* %4, align 4, !dbg !100
  br label %205, !dbg !100

; <label>:47:                                     ; preds = %33
  %48 = load i32, i32* %5, align 4, !dbg !101
  %49 = icmp eq i32 %48, 1, !dbg !103
  br i1 %49, label %50, label %61, !dbg !104

; <label>:50:                                     ; preds = %47
  call void @llvm.dbg.declare(metadata i32* %10, metadata !105, metadata !62), !dbg !107
  %51 = load double, double* %6, align 8, !dbg !108
  %52 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !109
  %53 = call i32 @gsl_sf_bessel_Y1_e(double %51, %struct.gsl_sf_result_struct* %52), !dbg !110
  store i32 %53, i32* %10, align 4, !dbg !107
  %54 = load i32, i32* %8, align 4, !dbg !111
  %55 = sitofp i32 %54 to double, !dbg !111
  %56 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !112
  %57 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %56, i32 0, i32 0, !dbg !113
  %58 = load double, double* %57, align 8, !dbg !114
  %59 = fmul double %58, %55, !dbg !114
  store double %59, double* %57, align 8, !dbg !114
  %60 = load i32, i32* %10, align 4, !dbg !115
  store i32 %60, i32* %4, align 4, !dbg !116
  br label %205, !dbg !116

; <label>:61:                                     ; preds = %47
  %62 = load double, double* %6, align 8, !dbg !117
  %63 = fcmp ole double %62, 0.000000e+00, !dbg !120
  br i1 %63, label %64, label %73, !dbg !121

; <label>:64:                                     ; preds = %61
  br label %65, !dbg !122, !llvm.loop !124

; <label>:65:                                     ; preds = %64
  %66 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !125
  %67 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %66, i32 0, i32 0, !dbg !125
  store double 0x7FF8000000000000, double* %67, align 8, !dbg !125
  %68 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !125
  %69 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %68, i32 0, i32 1, !dbg !125
  store double 0x7FF8000000000000, double* %69, align 8, !dbg !125
  br label %70, !dbg !125, !llvm.loop !128

; <label>:70:                                     ; preds = %65
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 125, i32 1), !dbg !130
  store i32 1, i32* %4, align 4, !dbg !130
  br label %205, !dbg !130
                                                  ; No predecessors!
  br label %72, !dbg !133

; <label>:72:                                     ; preds = %71
  br label %73, !dbg !135

; <label>:73:                                     ; preds = %72, %61
  %74 = load double, double* %6, align 8, !dbg !136
  %75 = fcmp olt double %74, 5.000000e+00, !dbg !138
  br i1 %75, label %76, label %88, !dbg !139

; <label>:76:                                     ; preds = %73
  call void @llvm.dbg.declare(metadata i32* %11, metadata !140, metadata !62), !dbg !142
  %77 = load i32, i32* %5, align 4, !dbg !143
  %78 = load double, double* %6, align 8, !dbg !144
  %79 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !145
  %80 = call i32 @bessel_Yn_small_x(i32 %77, double %78, %struct.gsl_sf_result_struct* %79), !dbg !146
  store i32 %80, i32* %11, align 4, !dbg !142
  %81 = load i32, i32* %8, align 4, !dbg !147
  %82 = sitofp i32 %81 to double, !dbg !147
  %83 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !148
  %84 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %83, i32 0, i32 0, !dbg !149
  %85 = load double, double* %84, align 8, !dbg !150
  %86 = fmul double %85, %82, !dbg !150
  store double %86, double* %84, align 8, !dbg !150
  %87 = load i32, i32* %11, align 4, !dbg !151
  store i32 %87, i32* %4, align 4, !dbg !152
  br label %205, !dbg !152

; <label>:88:                                     ; preds = %73
  %89 = load double, double* %6, align 8, !dbg !153
  %90 = fmul double 0x3ED965FEA53D6E41, %89, !dbg !155
  %91 = load i32, i32* %5, align 4, !dbg !156
  %92 = load i32, i32* %5, align 4, !dbg !157
  %93 = mul nsw i32 %91, %92, !dbg !158
  %94 = sitofp i32 %93 to double, !dbg !156
  %95 = fadd double %94, 1.000000e+00, !dbg !159
  %96 = fcmp ogt double %90, %95, !dbg !160
  br i1 %96, label %97, label %110, !dbg !161

; <label>:97:                                     ; preds = %88
  call void @llvm.dbg.declare(metadata i32* %12, metadata !162, metadata !62), !dbg !164
  %98 = load i32, i32* %5, align 4, !dbg !165
  %99 = sitofp i32 %98 to double, !dbg !166
  %100 = load double, double* %6, align 8, !dbg !167
  %101 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !168
  %102 = call i32 @gsl_sf_bessel_Ynu_asympx_e(double %99, double %100, %struct.gsl_sf_result_struct* %101), !dbg !169
  store i32 %102, i32* %12, align 4, !dbg !164
  %103 = load i32, i32* %8, align 4, !dbg !170
  %104 = sitofp i32 %103 to double, !dbg !170
  %105 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !171
  %106 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %105, i32 0, i32 0, !dbg !172
  %107 = load double, double* %106, align 8, !dbg !173
  %108 = fmul double %107, %104, !dbg !173
  store double %108, double* %106, align 8, !dbg !173
  %109 = load i32, i32* %12, align 4, !dbg !174
  store i32 %109, i32* %4, align 4, !dbg !175
  br label %205, !dbg !175

; <label>:110:                                    ; preds = %88
  %111 = load i32, i32* %5, align 4, !dbg !176
  %112 = icmp sgt i32 %111, 50, !dbg !178
  br i1 %112, label %113, label %126, !dbg !179

; <label>:113:                                    ; preds = %110
  call void @llvm.dbg.declare(metadata i32* %13, metadata !180, metadata !62), !dbg !182
  %114 = load i32, i32* %5, align 4, !dbg !183
  %115 = sitofp i32 %114 to double, !dbg !184
  %116 = load double, double* %6, align 8, !dbg !185
  %117 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !186
  %118 = call i32 @gsl_sf_bessel_Ynu_asymp_Olver_e(double %115, double %116, %struct.gsl_sf_result_struct* %117), !dbg !187
  store i32 %118, i32* %13, align 4, !dbg !182
  %119 = load i32, i32* %8, align 4, !dbg !188
  %120 = sitofp i32 %119 to double, !dbg !188
  %121 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !189
  %122 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %121, i32 0, i32 0, !dbg !190
  %123 = load double, double* %122, align 8, !dbg !191
  %124 = fmul double %123, %120, !dbg !191
  store double %124, double* %122, align 8, !dbg !191
  %125 = load i32, i32* %13, align 4, !dbg !192
  store i32 %125, i32* %4, align 4, !dbg !193
  br label %205, !dbg !193

; <label>:126:                                    ; preds = %110
  call void @llvm.dbg.declare(metadata double* %14, metadata !194, metadata !62), !dbg !196
  %127 = load double, double* %6, align 8, !dbg !197
  %128 = fdiv double 2.000000e+00, %127, !dbg !198
  store double %128, double* %14, align 8, !dbg !196
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %15, metadata !199, metadata !62), !dbg !200
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %16, metadata !201, metadata !62), !dbg !202
  call void @llvm.dbg.declare(metadata i32* %17, metadata !203, metadata !62), !dbg !204
  %129 = load double, double* %6, align 8, !dbg !205
  %130 = call i32 @gsl_sf_bessel_Y1_e(double %129, %struct.gsl_sf_result_struct* %15), !dbg !206
  store i32 %130, i32* %17, align 4, !dbg !204
  call void @llvm.dbg.declare(metadata i32* %18, metadata !207, metadata !62), !dbg !208
  %131 = load double, double* %6, align 8, !dbg !209
  %132 = call i32 @gsl_sf_bessel_Y0_e(double %131, %struct.gsl_sf_result_struct* %16), !dbg !210
  store i32 %132, i32* %18, align 4, !dbg !208
  call void @llvm.dbg.declare(metadata double* %19, metadata !211, metadata !62), !dbg !212
  %133 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %16, i32 0, i32 0, !dbg !213
  %134 = load double, double* %133, align 8, !dbg !213
  store double %134, double* %19, align 8, !dbg !212
  call void @llvm.dbg.declare(metadata double* %20, metadata !214, metadata !62), !dbg !215
  %135 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %15, i32 0, i32 0, !dbg !216
  %136 = load double, double* %135, align 8, !dbg !216
  store double %136, double* %20, align 8, !dbg !215
  call void @llvm.dbg.declare(metadata double* %21, metadata !217, metadata !62), !dbg !218
  call void @llvm.dbg.declare(metadata i32* %22, metadata !219, metadata !62), !dbg !220
  store i32 1, i32* %22, align 4, !dbg !221
  br label %137, !dbg !223

; <label>:137:                                    ; preds = %152, %126
  %138 = load i32, i32* %22, align 4, !dbg !224
  %139 = load i32, i32* %5, align 4, !dbg !227
  %140 = icmp slt i32 %138, %139, !dbg !228
  br i1 %140, label %141, label %155, !dbg !229

; <label>:141:                                    ; preds = %137
  %142 = load i32, i32* %22, align 4, !dbg !230
  %143 = sitofp i32 %142 to double, !dbg !230
  %144 = load double, double* %14, align 8, !dbg !232
  %145 = fmul double %143, %144, !dbg !233
  %146 = load double, double* %20, align 8, !dbg !234
  %147 = fmul double %145, %146, !dbg !235
  %148 = load double, double* %19, align 8, !dbg !236
  %149 = fsub double %147, %148, !dbg !237
  store double %149, double* %21, align 8, !dbg !238
  %150 = load double, double* %20, align 8, !dbg !239
  store double %150, double* %19, align 8, !dbg !240
  %151 = load double, double* %21, align 8, !dbg !241
  store double %151, double* %20, align 8, !dbg !242
  br label %152, !dbg !243

; <label>:152:                                    ; preds = %141
  %153 = load i32, i32* %22, align 4, !dbg !244
  %154 = add nsw i32 %153, 1, !dbg !244
  store i32 %154, i32* %22, align 4, !dbg !244
  br label %137, !dbg !246, !llvm.loop !247

; <label>:155:                                    ; preds = %137
  %156 = load i32, i32* %8, align 4, !dbg !249
  %157 = sitofp i32 %156 to double, !dbg !249
  %158 = load double, double* %20, align 8, !dbg !250
  %159 = fmul double %157, %158, !dbg !251
  %160 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !252
  %161 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %160, i32 0, i32 0, !dbg !253
  store double %159, double* %161, align 8, !dbg !254
  %162 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !255
  %163 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %162, i32 0, i32 0, !dbg !256
  %164 = load double, double* %163, align 8, !dbg !256
  %165 = call double @fabs(double %164) #1, !dbg !257
  %166 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %15, i32 0, i32 1, !dbg !258
  %167 = load double, double* %166, align 8, !dbg !258
  %168 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %15, i32 0, i32 0, !dbg !259
  %169 = load double, double* %168, align 8, !dbg !259
  %170 = fdiv double %167, %169, !dbg !260
  %171 = call double @fabs(double %170) #1, !dbg !261
  %172 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %16, i32 0, i32 1, !dbg !263
  %173 = load double, double* %172, align 8, !dbg !263
  %174 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %16, i32 0, i32 0, !dbg !264
  %175 = load double, double* %174, align 8, !dbg !264
  %176 = fdiv double %173, %175, !dbg !265
  %177 = call double @fabs(double %176) #1, !dbg !266
  %178 = fadd double %171, %177, !dbg !268
  %179 = fmul double %165, %178, !dbg !269
  %180 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !270
  %181 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %180, i32 0, i32 1, !dbg !271
  store double %179, double* %181, align 8, !dbg !272
  %182 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !273
  %183 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %182, i32 0, i32 0, !dbg !274
  %184 = load double, double* %183, align 8, !dbg !274
  %185 = call double @fabs(double %184) #1, !dbg !275
  %186 = fmul double 0x3CC0000000000000, %185, !dbg !276
  %187 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !277
  %188 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %187, i32 0, i32 1, !dbg !278
  %189 = load double, double* %188, align 8, !dbg !279
  %190 = fadd double %189, %186, !dbg !279
  store double %190, double* %188, align 8, !dbg !279
  %191 = load i32, i32* %17, align 4, !dbg !280
  %192 = icmp ne i32 %191, 0, !dbg !280
  br i1 %192, label %193, label %195, !dbg !280

; <label>:193:                                    ; preds = %155
  %194 = load i32, i32* %17, align 4, !dbg !281
  br label %203, !dbg !281

; <label>:195:                                    ; preds = %155
  %196 = load i32, i32* %18, align 4, !dbg !282
  %197 = icmp ne i32 %196, 0, !dbg !282
  br i1 %197, label %198, label %200, !dbg !282

; <label>:198:                                    ; preds = %195
  %199 = load i32, i32* %18, align 4, !dbg !283
  br label %201, !dbg !283

; <label>:200:                                    ; preds = %195
  br label %201, !dbg !285

; <label>:201:                                    ; preds = %200, %198
  %202 = phi i32 [ %199, %198 ], [ 0, %200 ], !dbg !287
  br label %203, !dbg !287

; <label>:203:                                    ; preds = %201, %193
  %204 = phi i32 [ %194, %193 ], [ %202, %201 ], !dbg !289
  store i32 %204, i32* %4, align 4, !dbg !291
  br label %205, !dbg !291

; <label>:205:                                    ; preds = %203, %113, %97, %76, %70, %50, %36
  %206 = load i32, i32* %4, align 4, !dbg !292
  ret i32 %206, !dbg !292
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @gsl_sf_bessel_Y0_e(double, %struct.gsl_sf_result_struct*) #2

declare i32 @gsl_sf_bessel_Y1_e(double, %struct.gsl_sf_result_struct*) #2

declare void @gsl_error(i8*, i8*, i32, i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @bessel_Yn_small_x(i32, double, %struct.gsl_sf_result_struct*) #0 !dbg !293 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca %struct.gsl_sf_result_struct*, align 8
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca %struct.gsl_sf_result_struct, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.gsl_sf_result_struct, align 8
  %21 = alloca %struct.gsl_sf_result_struct, align 8
  %22 = alloca double, align 8
  %23 = alloca double, align 8
  %24 = alloca double, align 8
  %25 = alloca double, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !297, metadata !62), !dbg !298
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !299, metadata !62), !dbg !300
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %7, metadata !301, metadata !62), !dbg !302
  call void @llvm.dbg.declare(metadata i32* %8, metadata !303, metadata !62), !dbg !304
  call void @llvm.dbg.declare(metadata double* %9, metadata !305, metadata !62), !dbg !306
  %26 = load double, double* %6, align 8, !dbg !307
  %27 = fmul double 2.500000e-01, %26, !dbg !308
  %28 = load double, double* %6, align 8, !dbg !309
  %29 = fmul double %27, %28, !dbg !310
  store double %29, double* %9, align 8, !dbg !306
  call void @llvm.dbg.declare(metadata double* %10, metadata !311, metadata !62), !dbg !312
  %30 = load double, double* %6, align 8, !dbg !313
  %31 = fmul double 5.000000e-01, %30, !dbg !314
  %32 = call double @log(double %31) #5, !dbg !315
  store double %32, double* %10, align 8, !dbg !312
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %11, metadata !316, metadata !62), !dbg !317
  call void @llvm.dbg.declare(metadata double* %12, metadata !318, metadata !62), !dbg !319
  call void @llvm.dbg.declare(metadata double* %13, metadata !320, metadata !62), !dbg !321
  call void @llvm.dbg.declare(metadata double* %14, metadata !322, metadata !62), !dbg !323
  call void @llvm.dbg.declare(metadata double* %15, metadata !324, metadata !62), !dbg !325
  call void @llvm.dbg.declare(metadata double* %16, metadata !326, metadata !62), !dbg !327
  call void @llvm.dbg.declare(metadata double* %17, metadata !328, metadata !62), !dbg !329
  call void @llvm.dbg.declare(metadata double* %18, metadata !330, metadata !62), !dbg !331
  %33 = load i32, i32* %5, align 4, !dbg !332
  %34 = sub nsw i32 %33, 1, !dbg !333
  %35 = call i32 @gsl_sf_lnfact_e(i32 %34, %struct.gsl_sf_result_struct* %11), !dbg !334
  %36 = load i32, i32* %5, align 4, !dbg !335
  %37 = sub nsw i32 0, %36, !dbg !336
  %38 = sitofp i32 %37 to double, !dbg !336
  %39 = load double, double* %10, align 8, !dbg !337
  %40 = fmul double %38, %39, !dbg !338
  %41 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 0, !dbg !339
  %42 = load double, double* %41, align 8, !dbg !339
  %43 = fadd double %40, %42, !dbg !340
  store double %43, double* %15, align 8, !dbg !341
  %44 = load double, double* %15, align 8, !dbg !342
  %45 = fcmp ogt double %44, 0x40861642FEFA39EF, !dbg !344
  br i1 %45, label %46, label %49, !dbg !345

; <label>:46:                                     ; preds = %3
  br label %47, !dbg !346, !llvm.loop !348

; <label>:47:                                     ; preds = %46
  call void @gsl_error(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 51, i32 16), !dbg !350
  store i32 16, i32* %4, align 4, !dbg !350
  br label %190, !dbg !350
                                                  ; No predecessors!
  br label %49, !dbg !353

; <label>:49:                                     ; preds = %48, %3
  store double 1.000000e+00, double* %14, align 8, !dbg !355
  store double 1.000000e+00, double* %12, align 8, !dbg !356
  store i32 1, i32* %8, align 4, !dbg !357
  br label %50, !dbg !359

; <label>:50:                                     ; preds = %69, %49
  %51 = load i32, i32* %8, align 4, !dbg !360
  %52 = load i32, i32* %5, align 4, !dbg !363
  %53 = sub nsw i32 %52, 1, !dbg !364
  %54 = icmp sle i32 %51, %53, !dbg !365
  br i1 %54, label %55, label %72, !dbg !366

; <label>:55:                                     ; preds = %50
  %56 = load double, double* %9, align 8, !dbg !367
  %57 = load i32, i32* %8, align 4, !dbg !369
  %58 = load i32, i32* %5, align 4, !dbg !370
  %59 = load i32, i32* %8, align 4, !dbg !371
  %60 = sub nsw i32 %58, %59, !dbg !372
  %61 = mul nsw i32 %57, %60, !dbg !373
  %62 = sitofp i32 %61 to double, !dbg !374
  %63 = fdiv double %56, %62, !dbg !375
  %64 = load double, double* %12, align 8, !dbg !376
  %65 = fmul double %64, %63, !dbg !376
  store double %65, double* %12, align 8, !dbg !376
  %66 = load double, double* %12, align 8, !dbg !377
  %67 = load double, double* %14, align 8, !dbg !378
  %68 = fadd double %67, %66, !dbg !378
  store double %68, double* %14, align 8, !dbg !378
  br label %69, !dbg !379

; <label>:69:                                     ; preds = %55
  %70 = load i32, i32* %8, align 4, !dbg !380
  %71 = add nsw i32 %70, 1, !dbg !380
  store i32 %71, i32* %8, align 4, !dbg !380
  br label %50, !dbg !382, !llvm.loop !383

; <label>:72:                                     ; preds = %50
  %73 = load double, double* %15, align 8, !dbg !385
  %74 = call double @exp(double %73) #5, !dbg !386
  %75 = fsub double -0.000000e+00, %74, !dbg !387
  %76 = load double, double* %14, align 8, !dbg !388
  %77 = fmul double %75, %76, !dbg !389
  %78 = fdiv double %77, 0x400921FB54442D18, !dbg !390
  store double %78, double* %13, align 8, !dbg !391
  %79 = load i32, i32* %5, align 4, !dbg !392
  %80 = sitofp i32 %79 to double, !dbg !392
  %81 = load double, double* %10, align 8, !dbg !393
  %82 = fmul double %80, %81, !dbg !394
  %83 = call double @exp(double %82) #5, !dbg !395
  %84 = fsub double -0.000000e+00, %83, !dbg !396
  %85 = fdiv double %84, 0x400921FB54442D18, !dbg !397
  store double %85, double* %18, align 8, !dbg !398
  %86 = load double, double* %18, align 8, !dbg !399
  %87 = call double @fabs(double %86) #1, !dbg !401
  %88 = fcmp ogt double %87, 0.000000e+00, !dbg !402
  br i1 %88, label %89, label %163, !dbg !403

; <label>:89:                                     ; preds = %72
  call void @llvm.dbg.declare(metadata i32* %19, metadata !404, metadata !62), !dbg !406
  store i32 20, i32* %19, align 4, !dbg !406
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %20, metadata !407, metadata !62), !dbg !408
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %21, metadata !409, metadata !62), !dbg !410
  call void @llvm.dbg.declare(metadata double* %22, metadata !411, metadata !62), !dbg !412
  store double 1.000000e+00, double* %22, align 8, !dbg !412
  call void @llvm.dbg.declare(metadata double* %23, metadata !413, metadata !62), !dbg !414
  store double 1.000000e+00, double* %23, align 8, !dbg !414
  call void @llvm.dbg.declare(metadata double* %24, metadata !415, metadata !62), !dbg !416
  store double 0xBFE2788CFC6FB619, double* %24, align 8, !dbg !416
  call void @llvm.dbg.declare(metadata double* %25, metadata !417, metadata !62), !dbg !418
  %90 = load i32, i32* %5, align 4, !dbg !419
  %91 = call i32 @gsl_sf_psi_int_e(i32 %90, %struct.gsl_sf_result_struct* %20), !dbg !420
  %92 = load i32, i32* %5, align 4, !dbg !421
  %93 = call i32 @gsl_sf_fact_e(i32 %92, %struct.gsl_sf_result_struct* %21), !dbg !422
  %94 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %20, i32 0, i32 0, !dbg !423
  %95 = load double, double* %94, align 8, !dbg !423
  %96 = load i32, i32* %5, align 4, !dbg !424
  %97 = sitofp i32 %96 to double, !dbg !424
  %98 = fdiv double 1.000000e+00, %97, !dbg !425
  %99 = fadd double %95, %98, !dbg !426
  store double %99, double* %25, align 8, !dbg !427
  %100 = load double, double* %24, align 8, !dbg !428
  %101 = load double, double* %25, align 8, !dbg !429
  %102 = fadd double %100, %101, !dbg !430
  %103 = load double, double* %10, align 8, !dbg !431
  %104 = fmul double 2.000000e+00, %103, !dbg !432
  %105 = fsub double %102, %104, !dbg !433
  %106 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %21, i32 0, i32 0, !dbg !434
  %107 = load double, double* %106, align 8, !dbg !434
  %108 = fdiv double %105, %107, !dbg !435
  store double %108, double* %17, align 8, !dbg !436
  store i32 1, i32* %8, align 4, !dbg !437
  br label %109, !dbg !439

; <label>:109:                                    ; preds = %156, %89
  %110 = load i32, i32* %8, align 4, !dbg !440
  %111 = icmp slt i32 %110, 20, !dbg !443
  br i1 %111, label %112, label %159, !dbg !444

; <label>:112:                                    ; preds = %109
  %113 = load i32, i32* %8, align 4, !dbg !445
  %114 = sitofp i32 %113 to double, !dbg !445
  %115 = fdiv double 1.000000e+00, %114, !dbg !447
  %116 = load double, double* %24, align 8, !dbg !448
  %117 = fadd double %116, %115, !dbg !448
  store double %117, double* %24, align 8, !dbg !448
  %118 = load i32, i32* %5, align 4, !dbg !449
  %119 = load i32, i32* %8, align 4, !dbg !450
  %120 = add nsw i32 %118, %119, !dbg !451
  %121 = sitofp i32 %120 to double, !dbg !452
  %122 = fdiv double 1.000000e+00, %121, !dbg !453
  %123 = load double, double* %25, align 8, !dbg !454
  %124 = fadd double %123, %122, !dbg !454
  store double %124, double* %25, align 8, !dbg !454
  %125 = load i32, i32* %8, align 4, !dbg !455
  %126 = sitofp i32 %125 to double, !dbg !455
  %127 = load double, double* %23, align 8, !dbg !456
  %128 = fmul double %127, %126, !dbg !456
  store double %128, double* %23, align 8, !dbg !456
  %129 = load i32, i32* %5, align 4, !dbg !457
  %130 = load i32, i32* %8, align 4, !dbg !458
  %131 = add nsw i32 %129, %130, !dbg !459
  %132 = sitofp i32 %131 to double, !dbg !457
  %133 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %21, i32 0, i32 0, !dbg !460
  %134 = load double, double* %133, align 8, !dbg !461
  %135 = fmul double %134, %132, !dbg !461
  store double %135, double* %133, align 8, !dbg !461
  %136 = load double, double* %9, align 8, !dbg !462
  %137 = fsub double -0.000000e+00, %136, !dbg !463
  %138 = load double, double* %22, align 8, !dbg !464
  %139 = fmul double %138, %137, !dbg !464
  store double %139, double* %22, align 8, !dbg !464
  %140 = load double, double* %22, align 8, !dbg !465
  %141 = load double, double* %24, align 8, !dbg !466
  %142 = load double, double* %25, align 8, !dbg !467
  %143 = fadd double %141, %142, !dbg !468
  %144 = load double, double* %10, align 8, !dbg !469
  %145 = fmul double 2.000000e+00, %144, !dbg !470
  %146 = fsub double %143, %145, !dbg !471
  %147 = fmul double %140, %146, !dbg !472
  %148 = load double, double* %23, align 8, !dbg !473
  %149 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %21, i32 0, i32 0, !dbg !474
  %150 = load double, double* %149, align 8, !dbg !474
  %151 = fmul double %148, %150, !dbg !475
  %152 = fdiv double %147, %151, !dbg !476
  store double %152, double* %12, align 8, !dbg !477
  %153 = load double, double* %12, align 8, !dbg !478
  %154 = load double, double* %17, align 8, !dbg !479
  %155 = fadd double %154, %153, !dbg !479
  store double %155, double* %17, align 8, !dbg !479
  br label %156, !dbg !480

; <label>:156:                                    ; preds = %112
  %157 = load i32, i32* %8, align 4, !dbg !481
  %158 = add nsw i32 %157, 1, !dbg !481
  store i32 %158, i32* %8, align 4, !dbg !481
  br label %109, !dbg !483, !llvm.loop !484

; <label>:159:                                    ; preds = %109
  %160 = load double, double* %18, align 8, !dbg !486
  %161 = load double, double* %17, align 8, !dbg !487
  %162 = fmul double %160, %161, !dbg !488
  store double %162, double* %16, align 8, !dbg !489
  br label %164, !dbg !490

; <label>:163:                                    ; preds = %72
  store double 0.000000e+00, double* %16, align 8, !dbg !491
  br label %164

; <label>:164:                                    ; preds = %163, %159
  %165 = load double, double* %13, align 8, !dbg !493
  %166 = load double, double* %16, align 8, !dbg !494
  %167 = fadd double %165, %166, !dbg !495
  %168 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !496
  %169 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %168, i32 0, i32 0, !dbg !497
  store double %167, double* %169, align 8, !dbg !498
  %170 = load double, double* %15, align 8, !dbg !499
  %171 = call double @fabs(double %170) #1, !dbg !500
  %172 = load double, double* %13, align 8, !dbg !501
  %173 = call double @fabs(double %172) #1, !dbg !502
  %174 = fmul double %171, %173, !dbg !504
  %175 = load double, double* %16, align 8, !dbg !505
  %176 = call double @fabs(double %175) #1, !dbg !506
  %177 = fadd double %174, %176, !dbg !508
  %178 = fmul double 0x3CB0000000000000, %177, !dbg !509
  %179 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !510
  %180 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %179, i32 0, i32 1, !dbg !511
  store double %178, double* %180, align 8, !dbg !512
  %181 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !513
  %182 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %181, i32 0, i32 0, !dbg !514
  %183 = load double, double* %182, align 8, !dbg !514
  %184 = call double @fabs(double %183) #1, !dbg !515
  %185 = fmul double 0x3CC0000000000000, %184, !dbg !516
  %186 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !517
  %187 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %186, i32 0, i32 1, !dbg !518
  %188 = load double, double* %187, align 8, !dbg !519
  %189 = fadd double %188, %185, !dbg !519
  store double %189, double* %187, align 8, !dbg !519
  store i32 0, i32* %4, align 4, !dbg !520
  br label %190, !dbg !520

; <label>:190:                                    ; preds = %164, %47
  %191 = load i32, i32* %4, align 4, !dbg !521
  ret i32 %191, !dbg !521
}

declare i32 @gsl_sf_bessel_Ynu_asympx_e(double, double, %struct.gsl_sf_result_struct*) #2

declare i32 @gsl_sf_bessel_Ynu_asymp_Olver_e(double, double, %struct.gsl_sf_result_struct*) #2

; Function Attrs: nounwind readnone
declare double @fabs(double) #3

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_bessel_Yn_array(i32, i32, double, double*) #0 !dbg !522 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca double*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.gsl_sf_result_struct, align 8
  %12 = alloca %struct.gsl_sf_result_struct, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !526, metadata !62), !dbg !527
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !528, metadata !62), !dbg !529
  store double %2, double* %8, align 8
  call void @llvm.dbg.declare(metadata double* %8, metadata !530, metadata !62), !dbg !531
  store double* %3, double** %9, align 8
  call void @llvm.dbg.declare(metadata double** %9, metadata !532, metadata !62), !dbg !533
  %20 = load i32, i32* %6, align 4, !dbg !534
  %21 = icmp slt i32 %20, 0, !dbg !536
  br i1 %21, label %29, label %22, !dbg !537

; <label>:22:                                     ; preds = %4
  %23 = load i32, i32* %7, align 4, !dbg !538
  %24 = load i32, i32* %6, align 4, !dbg !540
  %25 = icmp slt i32 %23, %24, !dbg !541
  br i1 %25, label %29, label %26, !dbg !542

; <label>:26:                                     ; preds = %22
  %27 = load double, double* %8, align 8, !dbg !543
  %28 = fcmp ole double %27, 0.000000e+00, !dbg !545
  br i1 %28, label %29, label %47, !dbg !546

; <label>:29:                                     ; preds = %26, %22, %4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !547, metadata !62), !dbg !549
  store i32 0, i32* %10, align 4, !dbg !550
  br label %30, !dbg !552

; <label>:30:                                     ; preds = %41, %29
  %31 = load i32, i32* %10, align 4, !dbg !553
  %32 = load i32, i32* %7, align 4, !dbg !556
  %33 = load i32, i32* %6, align 4, !dbg !557
  %34 = sub nsw i32 %32, %33, !dbg !558
  %35 = icmp sle i32 %31, %34, !dbg !559
  br i1 %35, label %36, label %44, !dbg !560

; <label>:36:                                     ; preds = %30
  %37 = load i32, i32* %10, align 4, !dbg !561
  %38 = sext i32 %37 to i64, !dbg !563
  %39 = load double*, double** %9, align 8, !dbg !563
  %40 = getelementptr inbounds double, double* %39, i64 %38, !dbg !563
  store double 0.000000e+00, double* %40, align 8, !dbg !564
  br label %41, !dbg !563

; <label>:41:                                     ; preds = %36
  %42 = load i32, i32* %10, align 4, !dbg !565
  %43 = add nsw i32 %42, 1, !dbg !565
  store i32 %43, i32* %10, align 4, !dbg !565
  br label %30, !dbg !567, !llvm.loop !568

; <label>:44:                                     ; preds = %30
  br label %45, !dbg !570, !llvm.loop !571

; <label>:45:                                     ; preds = %44
  call void @gsl_error(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 176, i32 1), !dbg !572
  store i32 1, i32* %5, align 4, !dbg !572
  br label %127, !dbg !572
                                                  ; No predecessors!
  br label %127, !dbg !575

; <label>:47:                                     ; preds = %26
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %11, metadata !576, metadata !62), !dbg !578
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %12, metadata !579, metadata !62), !dbg !580
  call void @llvm.dbg.declare(metadata i32* %13, metadata !581, metadata !62), !dbg !582
  %48 = load i32, i32* %6, align 4, !dbg !583
  %49 = load double, double* %8, align 8, !dbg !584
  %50 = call i32 @gsl_sf_bessel_Yn_e(i32 %48, double %49, %struct.gsl_sf_result_struct* %11), !dbg !585
  store i32 %50, i32* %13, align 4, !dbg !582
  call void @llvm.dbg.declare(metadata i32* %14, metadata !586, metadata !62), !dbg !587
  %51 = load i32, i32* %6, align 4, !dbg !588
  %52 = add nsw i32 %51, 1, !dbg !589
  %53 = load double, double* %8, align 8, !dbg !590
  %54 = call i32 @gsl_sf_bessel_Yn_e(i32 %52, double %53, %struct.gsl_sf_result_struct* %12), !dbg !591
  store i32 %54, i32* %14, align 4, !dbg !587
  call void @llvm.dbg.declare(metadata double* %15, metadata !592, metadata !62), !dbg !593
  call void @llvm.dbg.declare(metadata double* %16, metadata !594, metadata !62), !dbg !595
  %55 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %12, i32 0, i32 0, !dbg !596
  %56 = load double, double* %55, align 8, !dbg !596
  store double %56, double* %16, align 8, !dbg !595
  call void @llvm.dbg.declare(metadata double* %17, metadata !597, metadata !62), !dbg !598
  %57 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 0, !dbg !599
  %58 = load double, double* %57, align 8, !dbg !599
  store double %58, double* %17, align 8, !dbg !598
  call void @llvm.dbg.declare(metadata i32* %18, metadata !600, metadata !62), !dbg !601
  call void @llvm.dbg.declare(metadata i32* %19, metadata !602, metadata !62), !dbg !603
  %59 = load i32, i32* %13, align 4, !dbg !604
  %60 = icmp ne i32 %59, 0, !dbg !604
  br i1 %60, label %61, label %63, !dbg !604

; <label>:61:                                     ; preds = %47
  %62 = load i32, i32* %13, align 4, !dbg !605
  br label %71, !dbg !605

; <label>:63:                                     ; preds = %47
  %64 = load i32, i32* %14, align 4, !dbg !607
  %65 = icmp ne i32 %64, 0, !dbg !607
  br i1 %65, label %66, label %68, !dbg !607

; <label>:66:                                     ; preds = %63
  %67 = load i32, i32* %14, align 4, !dbg !609
  br label %69, !dbg !609

; <label>:68:                                     ; preds = %63
  br label %69, !dbg !611

; <label>:69:                                     ; preds = %68, %66
  %70 = phi i32 [ %67, %66 ], [ 0, %68 ], !dbg !613
  br label %71, !dbg !613

; <label>:71:                                     ; preds = %69, %61
  %72 = phi i32 [ %62, %61 ], [ %70, %69 ], !dbg !615
  store i32 %72, i32* %19, align 4, !dbg !617
  %73 = load i32, i32* %19, align 4, !dbg !618
  %74 = icmp eq i32 %73, 0, !dbg !620
  br i1 %74, label %75, label %108, !dbg !621

; <label>:75:                                     ; preds = %71
  %76 = load i32, i32* %6, align 4, !dbg !622
  %77 = add nsw i32 %76, 1, !dbg !625
  store i32 %77, i32* %18, align 4, !dbg !626
  br label %78, !dbg !627

; <label>:78:                                     ; preds = %104, %75
  %79 = load i32, i32* %18, align 4, !dbg !628
  %80 = load i32, i32* %7, align 4, !dbg !631
  %81 = add nsw i32 %80, 1, !dbg !632
  %82 = icmp sle i32 %79, %81, !dbg !633
  br i1 %82, label %83, label %107, !dbg !634

; <label>:83:                                     ; preds = %78
  %84 = load double, double* %17, align 8, !dbg !635
  %85 = load i32, i32* %18, align 4, !dbg !637
  %86 = load i32, i32* %6, align 4, !dbg !638
  %87 = sub nsw i32 %85, %86, !dbg !639
  %88 = sub nsw i32 %87, 1, !dbg !640
  %89 = sext i32 %88 to i64, !dbg !641
  %90 = load double*, double** %9, align 8, !dbg !641
  %91 = getelementptr inbounds double, double* %90, i64 %89, !dbg !641
  store double %84, double* %91, align 8, !dbg !642
  %92 = load double, double* %17, align 8, !dbg !643
  %93 = fsub double -0.000000e+00, %92, !dbg !644
  %94 = load i32, i32* %18, align 4, !dbg !645
  %95 = sitofp i32 %94 to double, !dbg !645
  %96 = fmul double 2.000000e+00, %95, !dbg !646
  %97 = load double, double* %8, align 8, !dbg !647
  %98 = fdiv double %96, %97, !dbg !648
  %99 = load double, double* %16, align 8, !dbg !649
  %100 = fmul double %98, %99, !dbg !650
  %101 = fadd double %93, %100, !dbg !651
  store double %101, double* %15, align 8, !dbg !652
  %102 = load double, double* %16, align 8, !dbg !653
  store double %102, double* %17, align 8, !dbg !654
  %103 = load double, double* %15, align 8, !dbg !655
  store double %103, double* %16, align 8, !dbg !656
  br label %104, !dbg !657

; <label>:104:                                    ; preds = %83
  %105 = load i32, i32* %18, align 4, !dbg !658
  %106 = add nsw i32 %105, 1, !dbg !658
  store i32 %106, i32* %18, align 4, !dbg !658
  br label %78, !dbg !660, !llvm.loop !661

; <label>:107:                                    ; preds = %78
  br label %125, !dbg !663

; <label>:108:                                    ; preds = %71
  %109 = load i32, i32* %6, align 4, !dbg !664
  store i32 %109, i32* %18, align 4, !dbg !667
  br label %110, !dbg !668

; <label>:110:                                    ; preds = %121, %108
  %111 = load i32, i32* %18, align 4, !dbg !669
  %112 = load i32, i32* %7, align 4, !dbg !672
  %113 = icmp sle i32 %111, %112, !dbg !673
  br i1 %113, label %114, label %124, !dbg !674

; <label>:114:                                    ; preds = %110
  %115 = load i32, i32* %18, align 4, !dbg !675
  %116 = load i32, i32* %6, align 4, !dbg !677
  %117 = sub nsw i32 %115, %116, !dbg !678
  %118 = sext i32 %117 to i64, !dbg !679
  %119 = load double*, double** %9, align 8, !dbg !679
  %120 = getelementptr inbounds double, double* %119, i64 %118, !dbg !679
  store double 0.000000e+00, double* %120, align 8, !dbg !680
  br label %121, !dbg !681

; <label>:121:                                    ; preds = %114
  %122 = load i32, i32* %18, align 4, !dbg !682
  %123 = add nsw i32 %122, 1, !dbg !682
  store i32 %123, i32* %18, align 4, !dbg !682
  br label %110, !dbg !684, !llvm.loop !685

; <label>:124:                                    ; preds = %110
  br label %125

; <label>:125:                                    ; preds = %124, %107
  %126 = load i32, i32* %19, align 4, !dbg !687
  store i32 %126, i32* %5, align 4, !dbg !688
  br label %127, !dbg !688

; <label>:127:                                    ; preds = %45, %125, %46
  %128 = load i32, i32* %5, align 4, !dbg !689
  ret i32 %128, !dbg !689
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_bessel_Yn(i32, double) #0 !dbg !690 {
  %3 = alloca double, align 8
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca %struct.gsl_sf_result_struct, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !693, metadata !62), !dbg !694
  store double %1, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !695, metadata !62), !dbg !696
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %6, metadata !697, metadata !62), !dbg !698
  call void @llvm.dbg.declare(metadata i32* %7, metadata !699, metadata !62), !dbg !698
  %8 = load i32, i32* %4, align 4, !dbg !698
  %9 = load double, double* %5, align 8, !dbg !698
  %10 = call i32 @gsl_sf_bessel_Yn_e(i32 %8, double %9, %struct.gsl_sf_result_struct* %6), !dbg !698
  store i32 %10, i32* %7, align 4, !dbg !698
  %11 = load i32, i32* %7, align 4, !dbg !700
  %12 = icmp ne i32 %11, 0, !dbg !700
  br i1 %12, label %13, label %19, !dbg !698

; <label>:13:                                     ; preds = %2
  br label %14, !dbg !702, !llvm.loop !705

; <label>:14:                                     ; preds = %13
  %15 = load i32, i32* %7, align 4, !dbg !707
  call void @gsl_error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 215, i32 %15), !dbg !707
  %16 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !707
  %17 = load double, double* %16, align 8, !dbg !707
  store double %17, double* %3, align 8, !dbg !707
  br label %22, !dbg !707
                                                  ; No predecessors!
  br label %19, !dbg !710

; <label>:19:                                     ; preds = %18, %2
  %20 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !712
  %21 = load double, double* %20, align 8, !dbg !712
  store double %21, double* %3, align 8, !dbg !712
  br label %22, !dbg !712

; <label>:22:                                     ; preds = %19, %14
  %23 = load double, double* %3, align 8, !dbg !714
  ret double %23, !dbg !714
}

; Function Attrs: nounwind
declare double @log(double) #4

declare i32 @gsl_sf_lnfact_e(i32, %struct.gsl_sf_result_struct*) #2

; Function Attrs: nounwind
declare double @exp(double) #4

declare i32 @gsl_sf_psi_int_e(i32, %struct.gsl_sf_result_struct*) #2

declare i32 @gsl_sf_fact_e(i32, %struct.gsl_sf_result_struct*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!44, !45, !46}
!llvm.ident = !{!47}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !41)
!1 = !DIFile(filename: "bessel_Yn.c", directory: "/fpcc/gsl-2.5/specfunc")
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
!43 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!44 = !{i32 2, !"Dwarf Version", i32 4}
!45 = !{i32 2, !"Debug Info Version", i32 3}
!46 = !{i32 1, !"PIC Level", i32 2}
!47 = !{!"clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)"}
!48 = distinct !DISubprogram(name: "gsl_sf_bessel_Yn_e", scope: !1, file: !1, line: 101, type: !49, isLocal: false, isDefinition: true, scopeLine: 102, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !60)
!49 = !DISubroutineType(types: !50)
!50 = !{!51, !51, !52, !53}
!51 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!52 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64, align: 64)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !55, line: 41, baseType: !56)
!55 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/fpcc/gsl-2.5/specfunc")
!56 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !55, line: 37, size: 128, align: 64, elements: !57)
!57 = !{!58, !59}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !56, file: !55, line: 38, baseType: !42, size: 64, align: 64)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !56, file: !55, line: 39, baseType: !42, size: 64, align: 64, offset: 64)
!60 = !{}
!61 = !DILocalVariable(name: "n", arg: 1, scope: !48, file: !1, line: 101, type: !51)
!62 = !DIExpression()
!63 = !DILocation(line: 101, column: 24, scope: !48)
!64 = !DILocalVariable(name: "x", arg: 2, scope: !48, file: !1, line: 101, type: !52)
!65 = !DILocation(line: 101, column: 40, scope: !48)
!66 = !DILocalVariable(name: "result", arg: 3, scope: !48, file: !1, line: 101, type: !53)
!67 = !DILocation(line: 101, column: 59, scope: !48)
!68 = !DILocalVariable(name: "sign", scope: !48, file: !1, line: 103, type: !51)
!69 = !DILocation(line: 103, column: 7, scope: !48)
!70 = !DILocation(line: 105, column: 6, scope: !71)
!71 = distinct !DILexicalBlock(scope: !48, file: !1, line: 105, column: 6)
!72 = !DILocation(line: 105, column: 8, scope: !71)
!73 = !DILocation(line: 105, column: 6, scope: !48)
!74 = !DILocation(line: 107, column: 10, scope: !75)
!75 = distinct !DILexicalBlock(scope: !71, file: !1, line: 105, column: 13)
!76 = !DILocation(line: 107, column: 9, scope: !75)
!77 = !DILocation(line: 107, column: 7, scope: !75)
!78 = !DILocation(line: 108, column: 8, scope: !79)
!79 = distinct !DILexicalBlock(scope: !75, file: !1, line: 108, column: 8)
!80 = !DILocation(line: 108, column: 8, scope: !75)
!81 = !DILocation(line: 108, column: 28, scope: !82)
!82 = !DILexicalBlockFile(scope: !79, file: !1, discriminator: 1)
!83 = !DILocation(line: 108, column: 23, scope: !82)
!84 = !DILocation(line: 109, column: 3, scope: !75)
!85 = !DILocation(line: 113, column: 6, scope: !86)
!86 = distinct !DILexicalBlock(scope: !48, file: !1, line: 113, column: 6)
!87 = !DILocation(line: 113, column: 8, scope: !86)
!88 = !DILocation(line: 113, column: 6, scope: !48)
!89 = !DILocalVariable(name: "status", scope: !90, file: !1, line: 114, type: !51)
!90 = distinct !DILexicalBlock(scope: !86, file: !1, line: 113, column: 14)
!91 = !DILocation(line: 114, column: 9, scope: !90)
!92 = !DILocation(line: 114, column: 37, scope: !90)
!93 = !DILocation(line: 114, column: 40, scope: !90)
!94 = !DILocation(line: 114, column: 18, scope: !90)
!95 = !DILocation(line: 115, column: 20, scope: !90)
!96 = !DILocation(line: 115, column: 5, scope: !90)
!97 = !DILocation(line: 115, column: 13, scope: !90)
!98 = !DILocation(line: 115, column: 17, scope: !90)
!99 = !DILocation(line: 116, column: 12, scope: !90)
!100 = !DILocation(line: 116, column: 5, scope: !90)
!101 = !DILocation(line: 118, column: 11, scope: !102)
!102 = distinct !DILexicalBlock(scope: !86, file: !1, line: 118, column: 11)
!103 = !DILocation(line: 118, column: 13, scope: !102)
!104 = !DILocation(line: 118, column: 11, scope: !86)
!105 = !DILocalVariable(name: "status", scope: !106, file: !1, line: 119, type: !51)
!106 = distinct !DILexicalBlock(scope: !102, file: !1, line: 118, column: 19)
!107 = !DILocation(line: 119, column: 9, scope: !106)
!108 = !DILocation(line: 119, column: 37, scope: !106)
!109 = !DILocation(line: 119, column: 40, scope: !106)
!110 = !DILocation(line: 119, column: 18, scope: !106)
!111 = !DILocation(line: 120, column: 20, scope: !106)
!112 = !DILocation(line: 120, column: 5, scope: !106)
!113 = !DILocation(line: 120, column: 13, scope: !106)
!114 = !DILocation(line: 120, column: 17, scope: !106)
!115 = !DILocation(line: 121, column: 12, scope: !106)
!116 = !DILocation(line: 121, column: 5, scope: !106)
!117 = !DILocation(line: 124, column: 8, scope: !118)
!118 = distinct !DILexicalBlock(scope: !119, file: !1, line: 124, column: 8)
!119 = distinct !DILexicalBlock(scope: !102, file: !1, line: 123, column: 8)
!120 = !DILocation(line: 124, column: 10, scope: !118)
!121 = !DILocation(line: 124, column: 8, scope: !119)
!122 = !DILocation(line: 125, column: 7, scope: !123)
!123 = distinct !DILexicalBlock(scope: !118, file: !1, line: 124, column: 18)
!124 = distinct !{!124, !122}
!125 = !DILocation(line: 125, column: 7, scope: !126)
!126 = !DILexicalBlockFile(scope: !127, file: !1, discriminator: 1)
!127 = distinct !DILexicalBlock(scope: !123, file: !1, line: 125, column: 7)
!128 = distinct !{!128, !129}
!129 = !DILocation(line: 125, column: 7, scope: !127)
!130 = !DILocation(line: 125, column: 7, scope: !131)
!131 = !DILexicalBlockFile(scope: !132, file: !1, discriminator: 2)
!132 = distinct !DILexicalBlock(scope: !127, file: !1, line: 125, column: 7)
!133 = !DILocation(line: 125, column: 7, scope: !134)
!134 = !DILexicalBlockFile(scope: !127, file: !1, discriminator: 3)
!135 = !DILocation(line: 126, column: 5, scope: !123)
!136 = !DILocation(line: 127, column: 8, scope: !137)
!137 = distinct !DILexicalBlock(scope: !119, file: !1, line: 127, column: 8)
!138 = !DILocation(line: 127, column: 10, scope: !137)
!139 = !DILocation(line: 127, column: 8, scope: !119)
!140 = !DILocalVariable(name: "status", scope: !141, file: !1, line: 128, type: !51)
!141 = distinct !DILexicalBlock(scope: !137, file: !1, line: 127, column: 17)
!142 = !DILocation(line: 128, column: 11, scope: !141)
!143 = !DILocation(line: 128, column: 38, scope: !141)
!144 = !DILocation(line: 128, column: 41, scope: !141)
!145 = !DILocation(line: 128, column: 44, scope: !141)
!146 = !DILocation(line: 128, column: 20, scope: !141)
!147 = !DILocation(line: 129, column: 22, scope: !141)
!148 = !DILocation(line: 129, column: 7, scope: !141)
!149 = !DILocation(line: 129, column: 15, scope: !141)
!150 = !DILocation(line: 129, column: 19, scope: !141)
!151 = !DILocation(line: 130, column: 14, scope: !141)
!152 = !DILocation(line: 130, column: 7, scope: !141)
!153 = !DILocation(line: 132, column: 37, scope: !154)
!154 = distinct !DILexicalBlock(scope: !137, file: !1, line: 132, column: 13)
!155 = !DILocation(line: 132, column: 35, scope: !154)
!156 = !DILocation(line: 132, column: 42, scope: !154)
!157 = !DILocation(line: 132, column: 44, scope: !154)
!158 = !DILocation(line: 132, column: 43, scope: !154)
!159 = !DILocation(line: 132, column: 46, scope: !154)
!160 = !DILocation(line: 132, column: 39, scope: !154)
!161 = !DILocation(line: 132, column: 13, scope: !137)
!162 = !DILocalVariable(name: "status", scope: !163, file: !1, line: 133, type: !51)
!163 = distinct !DILexicalBlock(scope: !154, file: !1, line: 132, column: 54)
!164 = !DILocation(line: 133, column: 11, scope: !163)
!165 = !DILocation(line: 133, column: 55, scope: !163)
!166 = !DILocation(line: 133, column: 47, scope: !163)
!167 = !DILocation(line: 133, column: 58, scope: !163)
!168 = !DILocation(line: 133, column: 61, scope: !163)
!169 = !DILocation(line: 133, column: 20, scope: !163)
!170 = !DILocation(line: 134, column: 22, scope: !163)
!171 = !DILocation(line: 134, column: 7, scope: !163)
!172 = !DILocation(line: 134, column: 15, scope: !163)
!173 = !DILocation(line: 134, column: 19, scope: !163)
!174 = !DILocation(line: 135, column: 14, scope: !163)
!175 = !DILocation(line: 135, column: 7, scope: !163)
!176 = !DILocation(line: 137, column: 13, scope: !177)
!177 = distinct !DILexicalBlock(scope: !154, file: !1, line: 137, column: 13)
!178 = !DILocation(line: 137, column: 15, scope: !177)
!179 = !DILocation(line: 137, column: 13, scope: !154)
!180 = !DILocalVariable(name: "status", scope: !181, file: !1, line: 138, type: !51)
!181 = distinct !DILexicalBlock(scope: !177, file: !1, line: 137, column: 21)
!182 = !DILocation(line: 138, column: 11, scope: !181)
!183 = !DILocation(line: 138, column: 60, scope: !181)
!184 = !DILocation(line: 138, column: 52, scope: !181)
!185 = !DILocation(line: 138, column: 63, scope: !181)
!186 = !DILocation(line: 138, column: 66, scope: !181)
!187 = !DILocation(line: 138, column: 20, scope: !181)
!188 = !DILocation(line: 139, column: 22, scope: !181)
!189 = !DILocation(line: 139, column: 7, scope: !181)
!190 = !DILocation(line: 139, column: 15, scope: !181)
!191 = !DILocation(line: 139, column: 19, scope: !181)
!192 = !DILocation(line: 140, column: 14, scope: !181)
!193 = !DILocation(line: 140, column: 7, scope: !181)
!194 = !DILocalVariable(name: "two_over_x", scope: !195, file: !1, line: 143, type: !42)
!195 = distinct !DILexicalBlock(scope: !177, file: !1, line: 142, column: 10)
!196 = !DILocation(line: 143, column: 14, scope: !195)
!197 = !DILocation(line: 143, column: 31, scope: !195)
!198 = !DILocation(line: 143, column: 30, scope: !195)
!199 = !DILocalVariable(name: "r_by", scope: !195, file: !1, line: 144, type: !54)
!200 = !DILocation(line: 144, column: 21, scope: !195)
!201 = !DILocalVariable(name: "r_bym", scope: !195, file: !1, line: 145, type: !54)
!202 = !DILocation(line: 145, column: 21, scope: !195)
!203 = !DILocalVariable(name: "stat_1", scope: !195, file: !1, line: 146, type: !51)
!204 = !DILocation(line: 146, column: 11, scope: !195)
!205 = !DILocation(line: 146, column: 39, scope: !195)
!206 = !DILocation(line: 146, column: 20, scope: !195)
!207 = !DILocalVariable(name: "stat_0", scope: !195, file: !1, line: 147, type: !51)
!208 = !DILocation(line: 147, column: 11, scope: !195)
!209 = !DILocation(line: 147, column: 39, scope: !195)
!210 = !DILocation(line: 147, column: 20, scope: !195)
!211 = !DILocalVariable(name: "bym", scope: !195, file: !1, line: 148, type: !42)
!212 = !DILocation(line: 148, column: 14, scope: !195)
!213 = !DILocation(line: 148, column: 26, scope: !195)
!214 = !DILocalVariable(name: "by", scope: !195, file: !1, line: 149, type: !42)
!215 = !DILocation(line: 149, column: 14, scope: !195)
!216 = !DILocation(line: 149, column: 25, scope: !195)
!217 = !DILocalVariable(name: "byp", scope: !195, file: !1, line: 150, type: !42)
!218 = !DILocation(line: 150, column: 14, scope: !195)
!219 = !DILocalVariable(name: "j", scope: !195, file: !1, line: 151, type: !51)
!220 = !DILocation(line: 151, column: 11, scope: !195)
!221 = !DILocation(line: 153, column: 12, scope: !222)
!222 = distinct !DILexicalBlock(scope: !195, file: !1, line: 153, column: 7)
!223 = !DILocation(line: 153, column: 11, scope: !222)
!224 = !DILocation(line: 153, column: 16, scope: !225)
!225 = !DILexicalBlockFile(scope: !226, file: !1, discriminator: 1)
!226 = distinct !DILexicalBlock(scope: !222, file: !1, line: 153, column: 7)
!227 = !DILocation(line: 153, column: 18, scope: !225)
!228 = !DILocation(line: 153, column: 17, scope: !225)
!229 = !DILocation(line: 153, column: 7, scope: !225)
!230 = !DILocation(line: 154, column: 15, scope: !231)
!231 = distinct !DILexicalBlock(scope: !226, file: !1, line: 153, column: 26)
!232 = !DILocation(line: 154, column: 17, scope: !231)
!233 = !DILocation(line: 154, column: 16, scope: !231)
!234 = !DILocation(line: 154, column: 28, scope: !231)
!235 = !DILocation(line: 154, column: 27, scope: !231)
!236 = !DILocation(line: 154, column: 33, scope: !231)
!237 = !DILocation(line: 154, column: 31, scope: !231)
!238 = !DILocation(line: 154, column: 13, scope: !231)
!239 = !DILocation(line: 155, column: 15, scope: !231)
!240 = !DILocation(line: 155, column: 13, scope: !231)
!241 = !DILocation(line: 156, column: 15, scope: !231)
!242 = !DILocation(line: 156, column: 13, scope: !231)
!243 = !DILocation(line: 157, column: 7, scope: !231)
!244 = !DILocation(line: 153, column: 22, scope: !245)
!245 = !DILexicalBlockFile(scope: !226, file: !1, discriminator: 2)
!246 = !DILocation(line: 153, column: 7, scope: !245)
!247 = distinct !{!247, !248}
!248 = !DILocation(line: 153, column: 7, scope: !195)
!249 = !DILocation(line: 158, column: 22, scope: !195)
!250 = !DILocation(line: 158, column: 29, scope: !195)
!251 = !DILocation(line: 158, column: 27, scope: !195)
!252 = !DILocation(line: 158, column: 7, scope: !195)
!253 = !DILocation(line: 158, column: 15, scope: !195)
!254 = !DILocation(line: 158, column: 20, scope: !195)
!255 = !DILocation(line: 159, column: 27, scope: !195)
!256 = !DILocation(line: 159, column: 35, scope: !195)
!257 = !DILocation(line: 159, column: 22, scope: !195)
!258 = !DILocation(line: 159, column: 53, scope: !195)
!259 = !DILocation(line: 159, column: 62, scope: !195)
!260 = !DILocation(line: 159, column: 56, scope: !195)
!261 = !DILocation(line: 159, column: 43, scope: !262)
!262 = !DILexicalBlockFile(scope: !195, file: !1, discriminator: 1)
!263 = !DILocation(line: 159, column: 80, scope: !195)
!264 = !DILocation(line: 159, column: 90, scope: !195)
!265 = !DILocation(line: 159, column: 83, scope: !195)
!266 = !DILocation(line: 159, column: 69, scope: !267)
!267 = !DILexicalBlockFile(scope: !195, file: !1, discriminator: 2)
!268 = !DILocation(line: 159, column: 67, scope: !195)
!269 = !DILocation(line: 159, column: 40, scope: !195)
!270 = !DILocation(line: 159, column: 7, scope: !195)
!271 = !DILocation(line: 159, column: 15, scope: !195)
!272 = !DILocation(line: 159, column: 20, scope: !195)
!273 = !DILocation(line: 160, column: 51, scope: !195)
!274 = !DILocation(line: 160, column: 59, scope: !195)
!275 = !DILocation(line: 160, column: 46, scope: !195)
!276 = !DILocation(line: 160, column: 44, scope: !195)
!277 = !DILocation(line: 160, column: 7, scope: !195)
!278 = !DILocation(line: 160, column: 15, scope: !195)
!279 = !DILocation(line: 160, column: 19, scope: !195)
!280 = !DILocation(line: 162, column: 14, scope: !195)
!281 = !DILocation(line: 162, column: 14, scope: !262)
!282 = !DILocation(line: 162, column: 14, scope: !267)
!283 = !DILocation(line: 162, column: 14, scope: !284)
!284 = !DILexicalBlockFile(scope: !195, file: !1, discriminator: 3)
!285 = !DILocation(line: 162, column: 14, scope: !286)
!286 = !DILexicalBlockFile(scope: !195, file: !1, discriminator: 4)
!287 = !DILocation(line: 162, column: 14, scope: !288)
!288 = !DILexicalBlockFile(scope: !195, file: !1, discriminator: 5)
!289 = !DILocation(line: 162, column: 14, scope: !290)
!290 = !DILexicalBlockFile(scope: !195, file: !1, discriminator: 6)
!291 = !DILocation(line: 162, column: 7, scope: !290)
!292 = !DILocation(line: 165, column: 1, scope: !48)
!293 = distinct !DISubprogram(name: "bessel_Yn_small_x", scope: !1, file: !1, line: 38, type: !294, isLocal: true, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !60)
!294 = !DISubroutineType(types: !295)
!295 = !{!51, !296, !52, !53}
!296 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !51)
!297 = !DILocalVariable(name: "n", arg: 1, scope: !293, file: !1, line: 38, type: !296)
!298 = !DILocation(line: 38, column: 40, scope: !293)
!299 = !DILocalVariable(name: "x", arg: 2, scope: !293, file: !1, line: 38, type: !52)
!300 = !DILocation(line: 38, column: 56, scope: !293)
!301 = !DILocalVariable(name: "result", arg: 3, scope: !293, file: !1, line: 38, type: !53)
!302 = !DILocation(line: 38, column: 75, scope: !293)
!303 = !DILocalVariable(name: "k", scope: !293, file: !1, line: 40, type: !51)
!304 = !DILocation(line: 40, column: 7, scope: !293)
!305 = !DILocalVariable(name: "y", scope: !293, file: !1, line: 41, type: !42)
!306 = !DILocation(line: 41, column: 10, scope: !293)
!307 = !DILocation(line: 41, column: 21, scope: !293)
!308 = !DILocation(line: 41, column: 19, scope: !293)
!309 = !DILocation(line: 41, column: 25, scope: !293)
!310 = !DILocation(line: 41, column: 23, scope: !293)
!311 = !DILocalVariable(name: "ln_x_2", scope: !293, file: !1, line: 42, type: !42)
!312 = !DILocation(line: 42, column: 10, scope: !293)
!313 = !DILocation(line: 42, column: 27, scope: !293)
!314 = !DILocation(line: 42, column: 26, scope: !293)
!315 = !DILocation(line: 42, column: 19, scope: !293)
!316 = !DILocalVariable(name: "ln_nm1_fact", scope: !293, file: !1, line: 43, type: !54)
!317 = !DILocation(line: 43, column: 17, scope: !293)
!318 = !DILocalVariable(name: "k_term", scope: !293, file: !1, line: 44, type: !42)
!319 = !DILocation(line: 44, column: 10, scope: !293)
!320 = !DILocalVariable(name: "term1", scope: !293, file: !1, line: 45, type: !42)
!321 = !DILocation(line: 45, column: 10, scope: !293)
!322 = !DILocalVariable(name: "sum1", scope: !293, file: !1, line: 45, type: !42)
!323 = !DILocation(line: 45, column: 17, scope: !293)
!324 = !DILocalVariable(name: "ln_pre1", scope: !293, file: !1, line: 45, type: !42)
!325 = !DILocation(line: 45, column: 23, scope: !293)
!326 = !DILocalVariable(name: "term2", scope: !293, file: !1, line: 46, type: !42)
!327 = !DILocation(line: 46, column: 10, scope: !293)
!328 = !DILocalVariable(name: "sum2", scope: !293, file: !1, line: 46, type: !42)
!329 = !DILocation(line: 46, column: 17, scope: !293)
!330 = !DILocalVariable(name: "pre2", scope: !293, file: !1, line: 46, type: !42)
!331 = !DILocation(line: 46, column: 23, scope: !293)
!332 = !DILocation(line: 48, column: 34, scope: !293)
!333 = !DILocation(line: 48, column: 35, scope: !293)
!334 = !DILocation(line: 48, column: 3, scope: !293)
!335 = !DILocation(line: 50, column: 14, scope: !293)
!336 = !DILocation(line: 50, column: 13, scope: !293)
!337 = !DILocation(line: 50, column: 16, scope: !293)
!338 = !DILocation(line: 50, column: 15, scope: !293)
!339 = !DILocation(line: 50, column: 37, scope: !293)
!340 = !DILocation(line: 50, column: 23, scope: !293)
!341 = !DILocation(line: 50, column: 11, scope: !293)
!342 = !DILocation(line: 51, column: 6, scope: !343)
!343 = distinct !DILexicalBlock(scope: !293, file: !1, line: 51, column: 6)
!344 = !DILocation(line: 51, column: 14, scope: !343)
!345 = !DILocation(line: 51, column: 6, scope: !293)
!346 = !DILocation(line: 51, column: 39, scope: !347)
!347 = !DILexicalBlockFile(scope: !343, file: !1, discriminator: 1)
!348 = distinct !{!348, !349}
!349 = !DILocation(line: 51, column: 39, scope: !343)
!350 = !DILocation(line: 51, column: 39, scope: !351)
!351 = !DILexicalBlockFile(scope: !352, file: !1, discriminator: 2)
!352 = distinct !DILexicalBlock(scope: !343, file: !1, line: 51, column: 39)
!353 = !DILocation(line: 51, column: 39, scope: !354)
!354 = !DILexicalBlockFile(scope: !352, file: !1, discriminator: 3)
!355 = !DILocation(line: 53, column: 8, scope: !293)
!356 = !DILocation(line: 54, column: 10, scope: !293)
!357 = !DILocation(line: 55, column: 8, scope: !358)
!358 = distinct !DILexicalBlock(scope: !293, file: !1, line: 55, column: 3)
!359 = !DILocation(line: 55, column: 7, scope: !358)
!360 = !DILocation(line: 55, column: 12, scope: !361)
!361 = !DILexicalBlockFile(scope: !362, file: !1, discriminator: 1)
!362 = distinct !DILexicalBlock(scope: !358, file: !1, line: 55, column: 3)
!363 = !DILocation(line: 55, column: 15, scope: !361)
!364 = !DILocation(line: 55, column: 16, scope: !361)
!365 = !DILocation(line: 55, column: 13, scope: !361)
!366 = !DILocation(line: 55, column: 3, scope: !361)
!367 = !DILocation(line: 56, column: 15, scope: !368)
!368 = distinct !DILexicalBlock(scope: !362, file: !1, line: 55, column: 25)
!369 = !DILocation(line: 56, column: 18, scope: !368)
!370 = !DILocation(line: 56, column: 23, scope: !368)
!371 = !DILocation(line: 56, column: 25, scope: !368)
!372 = !DILocation(line: 56, column: 24, scope: !368)
!373 = !DILocation(line: 56, column: 20, scope: !368)
!374 = !DILocation(line: 56, column: 17, scope: !368)
!375 = !DILocation(line: 56, column: 16, scope: !368)
!376 = !DILocation(line: 56, column: 12, scope: !368)
!377 = !DILocation(line: 57, column: 13, scope: !368)
!378 = !DILocation(line: 57, column: 10, scope: !368)
!379 = !DILocation(line: 58, column: 3, scope: !368)
!380 = !DILocation(line: 55, column: 21, scope: !381)
!381 = !DILexicalBlockFile(scope: !362, file: !1, discriminator: 2)
!382 = !DILocation(line: 55, column: 3, scope: !381)
!383 = distinct !{!383, !384}
!384 = !DILocation(line: 55, column: 3, scope: !293)
!385 = !DILocation(line: 59, column: 16, scope: !293)
!386 = !DILocation(line: 59, column: 12, scope: !293)
!387 = !DILocation(line: 59, column: 11, scope: !293)
!388 = !DILocation(line: 59, column: 27, scope: !293)
!389 = !DILocation(line: 59, column: 25, scope: !293)
!390 = !DILocation(line: 59, column: 32, scope: !293)
!391 = !DILocation(line: 59, column: 9, scope: !293)
!392 = !DILocation(line: 61, column: 15, scope: !293)
!393 = !DILocation(line: 61, column: 17, scope: !293)
!394 = !DILocation(line: 61, column: 16, scope: !293)
!395 = !DILocation(line: 61, column: 11, scope: !293)
!396 = !DILocation(line: 61, column: 10, scope: !293)
!397 = !DILocation(line: 61, column: 25, scope: !293)
!398 = !DILocation(line: 61, column: 8, scope: !293)
!399 = !DILocation(line: 62, column: 11, scope: !400)
!400 = distinct !DILexicalBlock(scope: !293, file: !1, line: 62, column: 6)
!401 = !DILocation(line: 62, column: 6, scope: !400)
!402 = !DILocation(line: 62, column: 17, scope: !400)
!403 = !DILocation(line: 62, column: 6, scope: !293)
!404 = !DILocalVariable(name: "KMAX", scope: !405, file: !1, line: 63, type: !296)
!405 = distinct !DILexicalBlock(scope: !400, file: !1, line: 62, column: 24)
!406 = !DILocation(line: 63, column: 15, scope: !405)
!407 = !DILocalVariable(name: "psi_n", scope: !405, file: !1, line: 64, type: !54)
!408 = !DILocation(line: 64, column: 19, scope: !405)
!409 = !DILocalVariable(name: "npk_fact", scope: !405, file: !1, line: 65, type: !54)
!410 = !DILocation(line: 65, column: 19, scope: !405)
!411 = !DILocalVariable(name: "yk", scope: !405, file: !1, line: 66, type: !42)
!412 = !DILocation(line: 66, column: 12, scope: !405)
!413 = !DILocalVariable(name: "k_fact", scope: !405, file: !1, line: 67, type: !42)
!414 = !DILocation(line: 67, column: 12, scope: !405)
!415 = !DILocalVariable(name: "psi_kp1", scope: !405, file: !1, line: 68, type: !42)
!416 = !DILocation(line: 68, column: 12, scope: !405)
!417 = !DILocalVariable(name: "psi_npkp1", scope: !405, file: !1, line: 69, type: !42)
!418 = !DILocation(line: 69, column: 12, scope: !405)
!419 = !DILocation(line: 70, column: 22, scope: !405)
!420 = !DILocation(line: 70, column: 5, scope: !405)
!421 = !DILocation(line: 71, column: 33, scope: !405)
!422 = !DILocation(line: 71, column: 5, scope: !405)
!423 = !DILocation(line: 72, column: 23, scope: !405)
!424 = !DILocation(line: 72, column: 33, scope: !405)
!425 = !DILocation(line: 72, column: 32, scope: !405)
!426 = !DILocation(line: 72, column: 27, scope: !405)
!427 = !DILocation(line: 72, column: 15, scope: !405)
!428 = !DILocation(line: 73, column: 13, scope: !405)
!429 = !DILocation(line: 73, column: 23, scope: !405)
!430 = !DILocation(line: 73, column: 21, scope: !405)
!431 = !DILocation(line: 73, column: 39, scope: !405)
!432 = !DILocation(line: 73, column: 38, scope: !405)
!433 = !DILocation(line: 73, column: 33, scope: !405)
!434 = !DILocation(line: 73, column: 56, scope: !405)
!435 = !DILocation(line: 73, column: 46, scope: !405)
!436 = !DILocation(line: 73, column: 10, scope: !405)
!437 = !DILocation(line: 74, column: 10, scope: !438)
!438 = distinct !DILexicalBlock(scope: !405, file: !1, line: 74, column: 5)
!439 = !DILocation(line: 74, column: 9, scope: !438)
!440 = !DILocation(line: 74, column: 14, scope: !441)
!441 = !DILexicalBlockFile(scope: !442, file: !1, discriminator: 1)
!442 = distinct !DILexicalBlock(scope: !438, file: !1, line: 74, column: 5)
!443 = !DILocation(line: 74, column: 15, scope: !441)
!444 = !DILocation(line: 74, column: 5, scope: !441)
!445 = !DILocation(line: 75, column: 23, scope: !446)
!446 = distinct !DILexicalBlock(scope: !442, file: !1, line: 74, column: 27)
!447 = !DILocation(line: 75, column: 22, scope: !446)
!448 = !DILocation(line: 75, column: 17, scope: !446)
!449 = !DILocation(line: 76, column: 24, scope: !446)
!450 = !DILocation(line: 76, column: 26, scope: !446)
!451 = !DILocation(line: 76, column: 25, scope: !446)
!452 = !DILocation(line: 76, column: 23, scope: !446)
!453 = !DILocation(line: 76, column: 22, scope: !446)
!454 = !DILocation(line: 76, column: 17, scope: !446)
!455 = !DILocation(line: 77, column: 19, scope: !446)
!456 = !DILocation(line: 77, column: 16, scope: !446)
!457 = !DILocation(line: 78, column: 23, scope: !446)
!458 = !DILocation(line: 78, column: 25, scope: !446)
!459 = !DILocation(line: 78, column: 24, scope: !446)
!460 = !DILocation(line: 78, column: 16, scope: !446)
!461 = !DILocation(line: 78, column: 20, scope: !446)
!462 = !DILocation(line: 79, column: 14, scope: !446)
!463 = !DILocation(line: 79, column: 13, scope: !446)
!464 = !DILocation(line: 79, column: 10, scope: !446)
!465 = !DILocation(line: 80, column: 16, scope: !446)
!466 = !DILocation(line: 80, column: 20, scope: !446)
!467 = !DILocation(line: 80, column: 30, scope: !446)
!468 = !DILocation(line: 80, column: 28, scope: !446)
!469 = !DILocation(line: 80, column: 46, scope: !446)
!470 = !DILocation(line: 80, column: 45, scope: !446)
!471 = !DILocation(line: 80, column: 40, scope: !446)
!472 = !DILocation(line: 80, column: 18, scope: !446)
!473 = !DILocation(line: 80, column: 55, scope: !446)
!474 = !DILocation(line: 80, column: 71, scope: !446)
!475 = !DILocation(line: 80, column: 61, scope: !446)
!476 = !DILocation(line: 80, column: 53, scope: !446)
!477 = !DILocation(line: 80, column: 14, scope: !446)
!478 = !DILocation(line: 81, column: 15, scope: !446)
!479 = !DILocation(line: 81, column: 12, scope: !446)
!480 = !DILocation(line: 82, column: 5, scope: !446)
!481 = !DILocation(line: 74, column: 23, scope: !482)
!482 = !DILexicalBlockFile(scope: !442, file: !1, discriminator: 2)
!483 = !DILocation(line: 74, column: 5, scope: !482)
!484 = distinct !{!484, !485}
!485 = !DILocation(line: 74, column: 5, scope: !405)
!486 = !DILocation(line: 83, column: 13, scope: !405)
!487 = !DILocation(line: 83, column: 20, scope: !405)
!488 = !DILocation(line: 83, column: 18, scope: !405)
!489 = !DILocation(line: 83, column: 11, scope: !405)
!490 = !DILocation(line: 84, column: 3, scope: !405)
!491 = !DILocation(line: 86, column: 11, scope: !492)
!492 = distinct !DILexicalBlock(scope: !400, file: !1, line: 85, column: 8)
!493 = !DILocation(line: 89, column: 18, scope: !293)
!494 = !DILocation(line: 89, column: 26, scope: !293)
!495 = !DILocation(line: 89, column: 24, scope: !293)
!496 = !DILocation(line: 89, column: 3, scope: !293)
!497 = !DILocation(line: 89, column: 11, scope: !293)
!498 = !DILocation(line: 89, column: 16, scope: !293)
!499 = !DILocation(line: 90, column: 42, scope: !293)
!500 = !DILocation(line: 90, column: 37, scope: !293)
!501 = !DILocation(line: 90, column: 56, scope: !293)
!502 = !DILocation(line: 90, column: 51, scope: !503)
!503 = !DILexicalBlockFile(scope: !293, file: !1, discriminator: 1)
!504 = !DILocation(line: 90, column: 50, scope: !293)
!505 = !DILocation(line: 90, column: 70, scope: !293)
!506 = !DILocation(line: 90, column: 65, scope: !507)
!507 = !DILexicalBlockFile(scope: !293, file: !1, discriminator: 2)
!508 = !DILocation(line: 90, column: 63, scope: !293)
!509 = !DILocation(line: 90, column: 34, scope: !293)
!510 = !DILocation(line: 90, column: 3, scope: !293)
!511 = !DILocation(line: 90, column: 11, scope: !293)
!512 = !DILocation(line: 90, column: 16, scope: !293)
!513 = !DILocation(line: 91, column: 47, scope: !293)
!514 = !DILocation(line: 91, column: 55, scope: !293)
!515 = !DILocation(line: 91, column: 42, scope: !293)
!516 = !DILocation(line: 91, column: 40, scope: !293)
!517 = !DILocation(line: 91, column: 3, scope: !293)
!518 = !DILocation(line: 91, column: 11, scope: !293)
!519 = !DILocation(line: 91, column: 15, scope: !293)
!520 = !DILocation(line: 93, column: 3, scope: !293)
!521 = !DILocation(line: 94, column: 1, scope: !293)
!522 = distinct !DISubprogram(name: "gsl_sf_bessel_Yn_array", scope: !1, file: !1, line: 169, type: !523, isLocal: false, isDefinition: true, scopeLine: 170, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !60)
!523 = !DISubroutineType(types: !524)
!524 = !{!51, !296, !296, !52, !525}
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64, align: 64)
!526 = !DILocalVariable(name: "nmin", arg: 1, scope: !522, file: !1, line: 169, type: !296)
!527 = !DILocation(line: 169, column: 34, scope: !522)
!528 = !DILocalVariable(name: "nmax", arg: 2, scope: !522, file: !1, line: 169, type: !296)
!529 = !DILocation(line: 169, column: 50, scope: !522)
!530 = !DILocalVariable(name: "x", arg: 3, scope: !522, file: !1, line: 169, type: !52)
!531 = !DILocation(line: 169, column: 69, scope: !522)
!532 = !DILocalVariable(name: "result_array", arg: 4, scope: !522, file: !1, line: 169, type: !525)
!533 = !DILocation(line: 169, column: 81, scope: !522)
!534 = !DILocation(line: 173, column: 6, scope: !535)
!535 = distinct !DILexicalBlock(scope: !522, file: !1, line: 173, column: 6)
!536 = !DILocation(line: 173, column: 11, scope: !535)
!537 = !DILocation(line: 173, column: 15, scope: !535)
!538 = !DILocation(line: 173, column: 18, scope: !539)
!539 = !DILexicalBlockFile(scope: !535, file: !1, discriminator: 1)
!540 = !DILocation(line: 173, column: 25, scope: !539)
!541 = !DILocation(line: 173, column: 23, scope: !539)
!542 = !DILocation(line: 173, column: 30, scope: !539)
!543 = !DILocation(line: 173, column: 33, scope: !544)
!544 = !DILexicalBlockFile(scope: !535, file: !1, discriminator: 2)
!545 = !DILocation(line: 173, column: 35, scope: !544)
!546 = !DILocation(line: 173, column: 6, scope: !544)
!547 = !DILocalVariable(name: "j", scope: !548, file: !1, line: 174, type: !51)
!548 = distinct !DILexicalBlock(scope: !535, file: !1, line: 173, column: 43)
!549 = !DILocation(line: 174, column: 9, scope: !548)
!550 = !DILocation(line: 175, column: 10, scope: !551)
!551 = distinct !DILexicalBlock(scope: !548, file: !1, line: 175, column: 5)
!552 = !DILocation(line: 175, column: 9, scope: !551)
!553 = !DILocation(line: 175, column: 14, scope: !554)
!554 = !DILexicalBlockFile(scope: !555, file: !1, discriminator: 1)
!555 = distinct !DILexicalBlock(scope: !551, file: !1, line: 175, column: 5)
!556 = !DILocation(line: 175, column: 17, scope: !554)
!557 = !DILocation(line: 175, column: 22, scope: !554)
!558 = !DILocation(line: 175, column: 21, scope: !554)
!559 = !DILocation(line: 175, column: 15, scope: !554)
!560 = !DILocation(line: 175, column: 5, scope: !554)
!561 = !DILocation(line: 175, column: 46, scope: !562)
!562 = !DILexicalBlockFile(scope: !555, file: !1, discriminator: 2)
!563 = !DILocation(line: 175, column: 33, scope: !562)
!564 = !DILocation(line: 175, column: 49, scope: !562)
!565 = !DILocation(line: 175, column: 29, scope: !566)
!566 = !DILexicalBlockFile(scope: !555, file: !1, discriminator: 3)
!567 = !DILocation(line: 175, column: 5, scope: !566)
!568 = distinct !{!568, !569}
!569 = !DILocation(line: 175, column: 5, scope: !548)
!570 = !DILocation(line: 176, column: 5, scope: !548)
!571 = distinct !{!571, !570}
!572 = !DILocation(line: 176, column: 5, scope: !573)
!573 = !DILexicalBlockFile(scope: !574, file: !1, discriminator: 1)
!574 = distinct !DILexicalBlock(scope: !548, file: !1, line: 176, column: 5)
!575 = !DILocation(line: 177, column: 3, scope: !548)
!576 = !DILocalVariable(name: "r_Ynm1", scope: !577, file: !1, line: 179, type: !54)
!577 = distinct !DILexicalBlock(scope: !535, file: !1, line: 178, column: 8)
!578 = !DILocation(line: 179, column: 19, scope: !577)
!579 = !DILocalVariable(name: "r_Yn", scope: !577, file: !1, line: 180, type: !54)
!580 = !DILocation(line: 180, column: 19, scope: !577)
!581 = !DILocalVariable(name: "stat_nm1", scope: !577, file: !1, line: 181, type: !51)
!582 = !DILocation(line: 181, column: 9, scope: !577)
!583 = !DILocation(line: 181, column: 39, scope: !577)
!584 = !DILocation(line: 181, column: 47, scope: !577)
!585 = !DILocation(line: 181, column: 20, scope: !577)
!586 = !DILocalVariable(name: "stat_n", scope: !577, file: !1, line: 182, type: !51)
!587 = !DILocation(line: 182, column: 9, scope: !577)
!588 = !DILocation(line: 182, column: 39, scope: !577)
!589 = !DILocation(line: 182, column: 43, scope: !577)
!590 = !DILocation(line: 182, column: 47, scope: !577)
!591 = !DILocation(line: 182, column: 20, scope: !577)
!592 = !DILocalVariable(name: "Ynp1", scope: !577, file: !1, line: 183, type: !42)
!593 = !DILocation(line: 183, column: 12, scope: !577)
!594 = !DILocalVariable(name: "Yn", scope: !577, file: !1, line: 184, type: !42)
!595 = !DILocation(line: 184, column: 12, scope: !577)
!596 = !DILocation(line: 184, column: 24, scope: !577)
!597 = !DILocalVariable(name: "Ynm1", scope: !577, file: !1, line: 185, type: !42)
!598 = !DILocation(line: 185, column: 12, scope: !577)
!599 = !DILocation(line: 185, column: 26, scope: !577)
!600 = !DILocalVariable(name: "n", scope: !577, file: !1, line: 186, type: !51)
!601 = !DILocation(line: 186, column: 9, scope: !577)
!602 = !DILocalVariable(name: "stat", scope: !577, file: !1, line: 188, type: !51)
!603 = !DILocation(line: 188, column: 9, scope: !577)
!604 = !DILocation(line: 188, column: 16, scope: !577)
!605 = !DILocation(line: 188, column: 16, scope: !606)
!606 = !DILexicalBlockFile(scope: !577, file: !1, discriminator: 1)
!607 = !DILocation(line: 188, column: 16, scope: !608)
!608 = !DILexicalBlockFile(scope: !577, file: !1, discriminator: 2)
!609 = !DILocation(line: 188, column: 16, scope: !610)
!610 = !DILexicalBlockFile(scope: !577, file: !1, discriminator: 3)
!611 = !DILocation(line: 188, column: 16, scope: !612)
!612 = !DILexicalBlockFile(scope: !577, file: !1, discriminator: 4)
!613 = !DILocation(line: 188, column: 16, scope: !614)
!614 = !DILexicalBlockFile(scope: !577, file: !1, discriminator: 5)
!615 = !DILocation(line: 188, column: 16, scope: !616)
!616 = !DILexicalBlockFile(scope: !577, file: !1, discriminator: 6)
!617 = !DILocation(line: 188, column: 9, scope: !616)
!618 = !DILocation(line: 190, column: 8, scope: !619)
!619 = distinct !DILexicalBlock(scope: !577, file: !1, line: 190, column: 8)
!620 = !DILocation(line: 190, column: 13, scope: !619)
!621 = !DILocation(line: 190, column: 8, scope: !577)
!622 = !DILocation(line: 191, column: 13, scope: !623)
!623 = distinct !DILexicalBlock(scope: !624, file: !1, line: 191, column: 7)
!624 = distinct !DILexicalBlock(scope: !619, file: !1, line: 190, column: 29)
!625 = !DILocation(line: 191, column: 17, scope: !623)
!626 = !DILocation(line: 191, column: 12, scope: !623)
!627 = !DILocation(line: 191, column: 11, scope: !623)
!628 = !DILocation(line: 191, column: 21, scope: !629)
!629 = !DILexicalBlockFile(scope: !630, file: !1, discriminator: 1)
!630 = distinct !DILexicalBlock(scope: !623, file: !1, line: 191, column: 7)
!631 = !DILocation(line: 191, column: 24, scope: !629)
!632 = !DILocation(line: 191, column: 28, scope: !629)
!633 = !DILocation(line: 191, column: 22, scope: !629)
!634 = !DILocation(line: 191, column: 7, scope: !629)
!635 = !DILocation(line: 192, column: 34, scope: !636)
!636 = distinct !DILexicalBlock(scope: !630, file: !1, line: 191, column: 37)
!637 = !DILocation(line: 192, column: 22, scope: !636)
!638 = !DILocation(line: 192, column: 24, scope: !636)
!639 = !DILocation(line: 192, column: 23, scope: !636)
!640 = !DILocation(line: 192, column: 28, scope: !636)
!641 = !DILocation(line: 192, column: 9, scope: !636)
!642 = !DILocation(line: 192, column: 32, scope: !636)
!643 = !DILocation(line: 193, column: 17, scope: !636)
!644 = !DILocation(line: 193, column: 16, scope: !636)
!645 = !DILocation(line: 193, column: 28, scope: !636)
!646 = !DILocation(line: 193, column: 27, scope: !636)
!647 = !DILocation(line: 193, column: 30, scope: !636)
!648 = !DILocation(line: 193, column: 29, scope: !636)
!649 = !DILocation(line: 193, column: 34, scope: !636)
!650 = !DILocation(line: 193, column: 32, scope: !636)
!651 = !DILocation(line: 193, column: 22, scope: !636)
!652 = !DILocation(line: 193, column: 14, scope: !636)
!653 = !DILocation(line: 194, column: 16, scope: !636)
!654 = !DILocation(line: 194, column: 14, scope: !636)
!655 = !DILocation(line: 195, column: 16, scope: !636)
!656 = !DILocation(line: 195, column: 14, scope: !636)
!657 = !DILocation(line: 196, column: 7, scope: !636)
!658 = !DILocation(line: 191, column: 33, scope: !659)
!659 = !DILexicalBlockFile(scope: !630, file: !1, discriminator: 2)
!660 = !DILocation(line: 191, column: 7, scope: !659)
!661 = distinct !{!661, !662}
!662 = !DILocation(line: 191, column: 7, scope: !624)
!663 = !DILocation(line: 197, column: 5, scope: !624)
!664 = !DILocation(line: 199, column: 13, scope: !665)
!665 = distinct !DILexicalBlock(scope: !666, file: !1, line: 199, column: 7)
!666 = distinct !DILexicalBlock(scope: !619, file: !1, line: 198, column: 10)
!667 = !DILocation(line: 199, column: 12, scope: !665)
!668 = !DILocation(line: 199, column: 11, scope: !665)
!669 = !DILocation(line: 199, column: 19, scope: !670)
!670 = !DILexicalBlockFile(scope: !671, file: !1, discriminator: 1)
!671 = distinct !DILexicalBlock(scope: !665, file: !1, line: 199, column: 7)
!672 = !DILocation(line: 199, column: 22, scope: !670)
!673 = !DILocation(line: 199, column: 20, scope: !670)
!674 = !DILocation(line: 199, column: 7, scope: !670)
!675 = !DILocation(line: 200, column: 22, scope: !676)
!676 = distinct !DILexicalBlock(scope: !671, file: !1, line: 199, column: 33)
!677 = !DILocation(line: 200, column: 24, scope: !676)
!678 = !DILocation(line: 200, column: 23, scope: !676)
!679 = !DILocation(line: 200, column: 9, scope: !676)
!680 = !DILocation(line: 200, column: 30, scope: !676)
!681 = !DILocation(line: 201, column: 7, scope: !676)
!682 = !DILocation(line: 199, column: 29, scope: !683)
!683 = !DILexicalBlockFile(scope: !671, file: !1, discriminator: 2)
!684 = !DILocation(line: 199, column: 7, scope: !683)
!685 = distinct !{!685, !686}
!686 = !DILocation(line: 199, column: 7, scope: !666)
!687 = !DILocation(line: 204, column: 12, scope: !577)
!688 = !DILocation(line: 204, column: 5, scope: !577)
!689 = !DILocation(line: 206, column: 1, scope: !522)
!690 = distinct !DISubprogram(name: "gsl_sf_bessel_Yn", scope: !1, file: !1, line: 213, type: !691, isLocal: false, isDefinition: true, scopeLine: 214, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !60)
!691 = !DISubroutineType(types: !692)
!692 = !{!42, !296, !52}
!693 = !DILocalVariable(name: "n", arg: 1, scope: !690, file: !1, line: 213, type: !296)
!694 = !DILocation(line: 213, column: 35, scope: !690)
!695 = !DILocalVariable(name: "x", arg: 2, scope: !690, file: !1, line: 213, type: !52)
!696 = !DILocation(line: 213, column: 51, scope: !690)
!697 = !DILocalVariable(name: "result", scope: !690, file: !1, line: 215, type: !54)
!698 = !DILocation(line: 215, column: 3, scope: !690)
!699 = !DILocalVariable(name: "status", scope: !690, file: !1, line: 215, type: !51)
!700 = !DILocation(line: 215, column: 3, scope: !701)
!701 = distinct !DILexicalBlock(scope: !690, file: !1, line: 215, column: 3)
!702 = !DILocation(line: 215, column: 3, scope: !703)
!703 = !DILexicalBlockFile(scope: !704, file: !1, discriminator: 1)
!704 = distinct !DILexicalBlock(scope: !701, file: !1, line: 215, column: 3)
!705 = distinct !{!705, !706}
!706 = !DILocation(line: 215, column: 3, scope: !704)
!707 = !DILocation(line: 215, column: 3, scope: !708)
!708 = !DILexicalBlockFile(scope: !709, file: !1, discriminator: 2)
!709 = distinct !DILexicalBlock(scope: !704, file: !1, line: 215, column: 3)
!710 = !DILocation(line: 215, column: 3, scope: !711)
!711 = !DILexicalBlockFile(scope: !704, file: !1, discriminator: 3)
!712 = !DILocation(line: 215, column: 3, scope: !713)
!713 = !DILexicalBlockFile(scope: !690, file: !1, discriminator: 4)
!714 = !DILocation(line: 216, column: 1, scope: !690)
