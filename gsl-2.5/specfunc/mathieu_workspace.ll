; ModuleID = 'mathieu_workspace.c'
source_filename = "mathieu_workspace.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsl_sf_mathieu_workspace = type { i64, i64, i64, i32, double, double, double*, double*, double*, double*, double*, double*, double*, %struct.gsl_vector*, %struct.gsl_matrix*, %struct.gsl_eigen_symmv_workspace* }
%struct.gsl_vector = type { i64, i64, double*, %struct.gsl_block_struct*, i32 }
%struct.gsl_block_struct = type { i64, double* }
%struct.gsl_matrix = type { i64, i64, i64, double*, %struct.gsl_block_struct*, i32 }
%struct.gsl_eigen_symmv_workspace = type { i64, double*, double*, double*, double* }

@.str = private unnamed_addr constant [42 x i8] c"matrix dimension must be positive integer\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"mathieu_workspace.c\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"failed to allocate space for workspace\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"Error allocating memory for characteristic a values\00", align 1
@.str.4 = private unnamed_addr constant [52 x i8] c"Error allocating memory for characteristic b values\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"failed to allocate space for diagonal\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"failed to allocate space for eval\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"failed to allocate space for evec\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"failed to allocate space for wmat\00", align 1

; Function Attrs: nounwind uwtable
define %struct.gsl_sf_mathieu_workspace* @gsl_sf_mathieu_alloc(i64, double) #0 !dbg !112 {
  %3 = alloca %struct.gsl_sf_mathieu_workspace*, align 8
  %4 = alloca i64, align 8
  %5 = alloca double, align 8
  %6 = alloca %struct.gsl_sf_mathieu_workspace*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !118, metadata !119), !dbg !120
  store double %1, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !121, metadata !119), !dbg !122
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_mathieu_workspace** %6, metadata !123, metadata !119), !dbg !124
  call void @llvm.dbg.declare(metadata i32* %7, metadata !125, metadata !119), !dbg !127
  %10 = load i64, i64* %4, align 8, !dbg !128
  %11 = udiv i64 %10, 2, !dbg !129
  %12 = add i64 %11, 1, !dbg !130
  %13 = trunc i64 %12 to i32, !dbg !128
  store i32 %13, i32* %7, align 4, !dbg !127
  call void @llvm.dbg.declare(metadata i32* %8, metadata !131, metadata !119), !dbg !132
  %14 = load i64, i64* %4, align 8, !dbg !133
  %15 = add i64 %14, 1, !dbg !134
  %16 = udiv i64 %15, 2, !dbg !135
  %17 = trunc i64 %16 to i32, !dbg !136
  store i32 %17, i32* %8, align 4, !dbg !132
  call void @llvm.dbg.declare(metadata i32* %9, metadata !137, metadata !119), !dbg !138
  %18 = load double, double* %5, align 8, !dbg !139
  %19 = call double @fabs(double %18) #1, !dbg !140
  %20 = call double @pow(double %19, double 3.700000e-01) #5, !dbg !141
  %21 = fmul double 2.100000e+00, %20, !dbg !143
  %22 = fptosi double %21 to i32, !dbg !144
  %23 = add nsw i32 %22, 9, !dbg !145
  store i32 %23, i32* %9, align 4, !dbg !146
  %24 = load i32, i32* %9, align 4, !dbg !147
  %25 = add i32 %24, 20, !dbg !147
  store i32 %25, i32* %9, align 4, !dbg !147
  %26 = load i64, i64* %4, align 8, !dbg !148
  %27 = add i64 %26, 1, !dbg !150
  %28 = icmp eq i64 %27, 0, !dbg !151
  br i1 %28, label %29, label %32, !dbg !152

; <label>:29:                                     ; preds = %2
  br label %30, !dbg !153, !llvm.loop !155

; <label>:30:                                     ; preds = %29
  call void @gsl_error(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0), i32 43, i32 4), !dbg !156
  store %struct.gsl_sf_mathieu_workspace* null, %struct.gsl_sf_mathieu_workspace** %3, align 8, !dbg !156
  br label %408, !dbg !156
                                                  ; No predecessors!
  br label %32, !dbg !159

; <label>:32:                                     ; preds = %31, %2
  %33 = call noalias i8* @malloc(i64 128) #5, !dbg !160
  %34 = bitcast i8* %33 to %struct.gsl_sf_mathieu_workspace*, !dbg !161
  store %struct.gsl_sf_mathieu_workspace* %34, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !162
  %35 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !163
  %36 = icmp eq %struct.gsl_sf_mathieu_workspace* %35, null, !dbg !165
  br i1 %36, label %37, label %40, !dbg !166

; <label>:37:                                     ; preds = %32
  br label %38, !dbg !167, !llvm.loop !169

; <label>:38:                                     ; preds = %37
  call void @gsl_error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0), i32 50, i32 8), !dbg !170
  store %struct.gsl_sf_mathieu_workspace* null, %struct.gsl_sf_mathieu_workspace** %3, align 8, !dbg !170
  br label %408, !dbg !170
                                                  ; No predecessors!
  br label %40, !dbg !173

; <label>:40:                                     ; preds = %39, %32
  %41 = load i32, i32* %9, align 4, !dbg !174
  %42 = load i32, i32* %7, align 4, !dbg !175
  %43 = add i32 %42, %41, !dbg !175
  store i32 %43, i32* %7, align 4, !dbg !175
  %44 = load i32, i32* %9, align 4, !dbg !176
  %45 = load i32, i32* %8, align 4, !dbg !177
  %46 = add i32 %45, %44, !dbg !177
  store i32 %46, i32* %8, align 4, !dbg !177
  %47 = load i64, i64* %4, align 8, !dbg !178
  %48 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !179
  %49 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %48, i32 0, i32 0, !dbg !180
  store i64 %47, i64* %49, align 8, !dbg !181
  %50 = load i32, i32* %7, align 4, !dbg !182
  %51 = zext i32 %50 to i64, !dbg !182
  %52 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !183
  %53 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %52, i32 0, i32 1, !dbg !184
  store i64 %51, i64* %53, align 8, !dbg !185
  %54 = load i32, i32* %8, align 4, !dbg !186
  %55 = zext i32 %54 to i64, !dbg !186
  %56 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !187
  %57 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %56, i32 0, i32 2, !dbg !188
  store i64 %55, i64* %57, align 8, !dbg !189
  %58 = load i32, i32* %9, align 4, !dbg !190
  %59 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !191
  %60 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %59, i32 0, i32 3, !dbg !192
  store i32 %58, i32* %60, align 8, !dbg !193
  %61 = load i64, i64* %4, align 8, !dbg !194
  %62 = add i64 %61, 1, !dbg !195
  %63 = mul i64 %62, 8, !dbg !196
  %64 = call noalias i8* @malloc(i64 %63) #5, !dbg !197
  %65 = bitcast i8* %64 to double*, !dbg !198
  %66 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !199
  %67 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %66, i32 0, i32 6, !dbg !200
  store double* %65, double** %67, align 8, !dbg !201
  %68 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !202
  %69 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %68, i32 0, i32 6, !dbg !204
  %70 = load double*, double** %69, align 8, !dbg !204
  %71 = icmp eq double* %70, null, !dbg !205
  br i1 %71, label %72, label %77, !dbg !206

; <label>:72:                                     ; preds = %40
  %73 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !207
  %74 = bitcast %struct.gsl_sf_mathieu_workspace* %73 to i8*, !dbg !207
  call void @free(i8* %74) #5, !dbg !209
  br label %75, !dbg !210, !llvm.loop !211

; <label>:75:                                     ; preds = %72
  call void @gsl_error(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0), i32 68, i32 8), !dbg !212
  store %struct.gsl_sf_mathieu_workspace* null, %struct.gsl_sf_mathieu_workspace** %3, align 8, !dbg !212
  br label %408, !dbg !212
                                                  ; No predecessors!
  br label %77, !dbg !215

; <label>:77:                                     ; preds = %76, %40
  %78 = load i64, i64* %4, align 8, !dbg !216
  %79 = add i64 %78, 1, !dbg !217
  %80 = mul i64 %79, 8, !dbg !218
  %81 = call noalias i8* @malloc(i64 %80) #5, !dbg !219
  %82 = bitcast i8* %81 to double*, !dbg !220
  %83 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !221
  %84 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %83, i32 0, i32 7, !dbg !222
  store double* %82, double** %84, align 8, !dbg !223
  %85 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !224
  %86 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %85, i32 0, i32 7, !dbg !226
  %87 = load double*, double** %86, align 8, !dbg !226
  %88 = icmp eq double* %87, null, !dbg !227
  br i1 %88, label %89, label %98, !dbg !228

; <label>:89:                                     ; preds = %77
  %90 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !229
  %91 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %90, i32 0, i32 6, !dbg !231
  %92 = load double*, double** %91, align 8, !dbg !231
  %93 = bitcast double* %92 to i8*, !dbg !229
  call void @free(i8* %93) #5, !dbg !232
  %94 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !233
  %95 = bitcast %struct.gsl_sf_mathieu_workspace* %94 to i8*, !dbg !233
  call void @free(i8* %95) #5, !dbg !234
  br label %96, !dbg !235, !llvm.loop !236

; <label>:96:                                     ; preds = %89
  call void @gsl_error(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0), i32 77, i32 8), !dbg !237
  store %struct.gsl_sf_mathieu_workspace* null, %struct.gsl_sf_mathieu_workspace** %3, align 8, !dbg !237
  br label %408, !dbg !237
                                                  ; No predecessors!
  br label %98, !dbg !240

; <label>:98:                                     ; preds = %97, %77
  %99 = load i32, i32* %7, align 4, !dbg !241
  %100 = zext i32 %99 to i64, !dbg !241
  %101 = mul i64 %100, 8, !dbg !242
  %102 = call noalias i8* @malloc(i64 %101) #5, !dbg !243
  %103 = bitcast i8* %102 to double*, !dbg !244
  %104 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !245
  %105 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %104, i32 0, i32 8, !dbg !246
  store double* %103, double** %105, align 8, !dbg !247
  %106 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !248
  %107 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %106, i32 0, i32 8, !dbg !250
  %108 = load double*, double** %107, align 8, !dbg !250
  %109 = icmp eq double* %108, null, !dbg !251
  br i1 %109, label %110, label %123, !dbg !252

; <label>:110:                                    ; preds = %98
  %111 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !253
  %112 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %111, i32 0, i32 6, !dbg !255
  %113 = load double*, double** %112, align 8, !dbg !255
  %114 = bitcast double* %113 to i8*, !dbg !253
  call void @free(i8* %114) #5, !dbg !256
  %115 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !257
  %116 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %115, i32 0, i32 7, !dbg !258
  %117 = load double*, double** %116, align 8, !dbg !258
  %118 = bitcast double* %117 to i8*, !dbg !257
  call void @free(i8* %118) #5, !dbg !259
  %119 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !260
  %120 = bitcast %struct.gsl_sf_mathieu_workspace* %119 to i8*, !dbg !260
  call void @free(i8* %120) #5, !dbg !261
  br label %121, !dbg !262, !llvm.loop !263

; <label>:121:                                    ; preds = %110
  call void @gsl_error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0), i32 89, i32 8), !dbg !264
  store %struct.gsl_sf_mathieu_workspace* null, %struct.gsl_sf_mathieu_workspace** %3, align 8, !dbg !264
  br label %408, !dbg !264
                                                  ; No predecessors!
  br label %123, !dbg !267

; <label>:123:                                    ; preds = %122, %98
  %124 = load i32, i32* %7, align 4, !dbg !268
  %125 = zext i32 %124 to i64, !dbg !268
  %126 = mul i64 %125, 8, !dbg !269
  %127 = call noalias i8* @malloc(i64 %126) #5, !dbg !270
  %128 = bitcast i8* %127 to double*, !dbg !271
  %129 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !272
  %130 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %129, i32 0, i32 9, !dbg !273
  store double* %128, double** %130, align 8, !dbg !274
  %131 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !275
  %132 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %131, i32 0, i32 9, !dbg !277
  %133 = load double*, double** %132, align 8, !dbg !277
  %134 = icmp eq double* %133, null, !dbg !278
  br i1 %134, label %135, label %152, !dbg !279

; <label>:135:                                    ; preds = %123
  %136 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !280
  %137 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %136, i32 0, i32 8, !dbg !282
  %138 = load double*, double** %137, align 8, !dbg !282
  %139 = bitcast double* %138 to i8*, !dbg !280
  call void @free(i8* %139) #5, !dbg !283
  %140 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !284
  %141 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %140, i32 0, i32 6, !dbg !285
  %142 = load double*, double** %141, align 8, !dbg !285
  %143 = bitcast double* %142 to i8*, !dbg !284
  call void @free(i8* %143) #5, !dbg !286
  %144 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !287
  %145 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %144, i32 0, i32 7, !dbg !288
  %146 = load double*, double** %145, align 8, !dbg !288
  %147 = bitcast double* %146 to i8*, !dbg !287
  call void @free(i8* %147) #5, !dbg !289
  %148 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !290
  %149 = bitcast %struct.gsl_sf_mathieu_workspace* %148 to i8*, !dbg !290
  call void @free(i8* %149) #5, !dbg !291
  br label %150, !dbg !292, !llvm.loop !293

; <label>:150:                                    ; preds = %135
  call void @gsl_error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0), i32 99, i32 8), !dbg !294
  store %struct.gsl_sf_mathieu_workspace* null, %struct.gsl_sf_mathieu_workspace** %3, align 8, !dbg !294
  br label %408, !dbg !294
                                                  ; No predecessors!
  br label %152, !dbg !297

; <label>:152:                                    ; preds = %151, %123
  %153 = load i32, i32* %7, align 4, !dbg !298
  %154 = mul i32 3, %153, !dbg !299
  %155 = zext i32 %154 to i64, !dbg !300
  %156 = mul i64 %155, 8, !dbg !301
  %157 = call noalias i8* @malloc(i64 %156) #5, !dbg !302
  %158 = bitcast i8* %157 to double*, !dbg !303
  %159 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !304
  %160 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %159, i32 0, i32 10, !dbg !305
  store double* %158, double** %160, align 8, !dbg !306
  %161 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !307
  %162 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %161, i32 0, i32 10, !dbg !309
  %163 = load double*, double** %162, align 8, !dbg !309
  %164 = icmp eq double* %163, null, !dbg !310
  br i1 %164, label %165, label %186, !dbg !311

; <label>:165:                                    ; preds = %152
  %166 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !312
  %167 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %166, i32 0, i32 9, !dbg !314
  %168 = load double*, double** %167, align 8, !dbg !314
  %169 = bitcast double* %168 to i8*, !dbg !312
  call void @free(i8* %169) #5, !dbg !315
  %170 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !316
  %171 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %170, i32 0, i32 8, !dbg !317
  %172 = load double*, double** %171, align 8, !dbg !317
  %173 = bitcast double* %172 to i8*, !dbg !316
  call void @free(i8* %173) #5, !dbg !318
  %174 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !319
  %175 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %174, i32 0, i32 6, !dbg !320
  %176 = load double*, double** %175, align 8, !dbg !320
  %177 = bitcast double* %176 to i8*, !dbg !319
  call void @free(i8* %177) #5, !dbg !321
  %178 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !322
  %179 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %178, i32 0, i32 7, !dbg !323
  %180 = load double*, double** %179, align 8, !dbg !323
  %181 = bitcast double* %180 to i8*, !dbg !322
  call void @free(i8* %181) #5, !dbg !324
  %182 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !325
  %183 = bitcast %struct.gsl_sf_mathieu_workspace* %182 to i8*, !dbg !325
  call void @free(i8* %183) #5, !dbg !326
  br label %184, !dbg !327, !llvm.loop !328

; <label>:184:                                    ; preds = %165
  call void @gsl_error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0), i32 110, i32 8), !dbg !329
  store %struct.gsl_sf_mathieu_workspace* null, %struct.gsl_sf_mathieu_workspace** %3, align 8, !dbg !329
  br label %408, !dbg !329
                                                  ; No predecessors!
  br label %186, !dbg !332

; <label>:186:                                    ; preds = %185, %152
  %187 = load i32, i32* %7, align 4, !dbg !333
  %188 = zext i32 %187 to i64, !dbg !333
  %189 = mul i64 %188, 8, !dbg !334
  %190 = call noalias i8* @malloc(i64 %189) #5, !dbg !335
  %191 = bitcast i8* %190 to double*, !dbg !336
  %192 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !337
  %193 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %192, i32 0, i32 11, !dbg !338
  store double* %191, double** %193, align 8, !dbg !339
  %194 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !340
  %195 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %194, i32 0, i32 11, !dbg !342
  %196 = load double*, double** %195, align 8, !dbg !342
  %197 = icmp eq double* %196, null, !dbg !343
  br i1 %197, label %198, label %223, !dbg !344

; <label>:198:                                    ; preds = %186
  %199 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !345
  %200 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %199, i32 0, i32 10, !dbg !347
  %201 = load double*, double** %200, align 8, !dbg !347
  %202 = bitcast double* %201 to i8*, !dbg !345
  call void @free(i8* %202) #5, !dbg !348
  %203 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !349
  %204 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %203, i32 0, i32 9, !dbg !350
  %205 = load double*, double** %204, align 8, !dbg !350
  %206 = bitcast double* %205 to i8*, !dbg !349
  call void @free(i8* %206) #5, !dbg !351
  %207 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !352
  %208 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %207, i32 0, i32 8, !dbg !353
  %209 = load double*, double** %208, align 8, !dbg !353
  %210 = bitcast double* %209 to i8*, !dbg !352
  call void @free(i8* %210) #5, !dbg !354
  %211 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !355
  %212 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %211, i32 0, i32 6, !dbg !356
  %213 = load double*, double** %212, align 8, !dbg !356
  %214 = bitcast double* %213 to i8*, !dbg !355
  call void @free(i8* %214) #5, !dbg !357
  %215 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !358
  %216 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %215, i32 0, i32 7, !dbg !359
  %217 = load double*, double** %216, align 8, !dbg !359
  %218 = bitcast double* %217 to i8*, !dbg !358
  call void @free(i8* %218) #5, !dbg !360
  %219 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !361
  %220 = bitcast %struct.gsl_sf_mathieu_workspace* %219 to i8*, !dbg !361
  call void @free(i8* %220) #5, !dbg !362
  br label %221, !dbg !363, !llvm.loop !364

; <label>:221:                                    ; preds = %198
  call void @gsl_error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0), i32 122, i32 8), !dbg !365
  store %struct.gsl_sf_mathieu_workspace* null, %struct.gsl_sf_mathieu_workspace** %3, align 8, !dbg !365
  br label %408, !dbg !365
                                                  ; No predecessors!
  br label %223, !dbg !368

; <label>:223:                                    ; preds = %222, %186
  %224 = load i32, i32* %7, align 4, !dbg !369
  %225 = load i32, i32* %7, align 4, !dbg !370
  %226 = mul i32 %224, %225, !dbg !371
  %227 = zext i32 %226 to i64, !dbg !369
  %228 = mul i64 %227, 8, !dbg !372
  %229 = call noalias i8* @malloc(i64 %228) #5, !dbg !373
  %230 = bitcast i8* %229 to double*, !dbg !374
  %231 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !375
  %232 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %231, i32 0, i32 12, !dbg !376
  store double* %230, double** %232, align 8, !dbg !377
  %233 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !378
  %234 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %233, i32 0, i32 12, !dbg !380
  %235 = load double*, double** %234, align 8, !dbg !380
  %236 = icmp eq double* %235, null, !dbg !381
  br i1 %236, label %237, label %266, !dbg !382

; <label>:237:                                    ; preds = %223
  %238 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !383
  %239 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %238, i32 0, i32 11, !dbg !385
  %240 = load double*, double** %239, align 8, !dbg !385
  %241 = bitcast double* %240 to i8*, !dbg !383
  call void @free(i8* %241) #5, !dbg !386
  %242 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !387
  %243 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %242, i32 0, i32 10, !dbg !388
  %244 = load double*, double** %243, align 8, !dbg !388
  %245 = bitcast double* %244 to i8*, !dbg !387
  call void @free(i8* %245) #5, !dbg !389
  %246 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !390
  %247 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %246, i32 0, i32 9, !dbg !391
  %248 = load double*, double** %247, align 8, !dbg !391
  %249 = bitcast double* %248 to i8*, !dbg !390
  call void @free(i8* %249) #5, !dbg !392
  %250 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !393
  %251 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %250, i32 0, i32 8, !dbg !394
  %252 = load double*, double** %251, align 8, !dbg !394
  %253 = bitcast double* %252 to i8*, !dbg !393
  call void @free(i8* %253) #5, !dbg !395
  %254 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !396
  %255 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %254, i32 0, i32 6, !dbg !397
  %256 = load double*, double** %255, align 8, !dbg !397
  %257 = bitcast double* %256 to i8*, !dbg !396
  call void @free(i8* %257) #5, !dbg !398
  %258 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !399
  %259 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %258, i32 0, i32 7, !dbg !400
  %260 = load double*, double** %259, align 8, !dbg !400
  %261 = bitcast double* %260 to i8*, !dbg !399
  call void @free(i8* %261) #5, !dbg !401
  %262 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !402
  %263 = bitcast %struct.gsl_sf_mathieu_workspace* %262 to i8*, !dbg !402
  call void @free(i8* %263) #5, !dbg !403
  br label %264, !dbg !404, !llvm.loop !405

; <label>:264:                                    ; preds = %237
  call void @gsl_error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0), i32 135, i32 8), !dbg !406
  store %struct.gsl_sf_mathieu_workspace* null, %struct.gsl_sf_mathieu_workspace** %3, align 8, !dbg !406
  br label %408, !dbg !406
                                                  ; No predecessors!
  br label %266, !dbg !409

; <label>:266:                                    ; preds = %265, %223
  %267 = load i32, i32* %7, align 4, !dbg !410
  %268 = zext i32 %267 to i64, !dbg !410
  %269 = call %struct.gsl_vector* @gsl_vector_alloc(i64 %268), !dbg !411
  %270 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !412
  %271 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %270, i32 0, i32 13, !dbg !413
  store %struct.gsl_vector* %269, %struct.gsl_vector** %271, align 8, !dbg !414
  %272 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !415
  %273 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %272, i32 0, i32 13, !dbg !417
  %274 = load %struct.gsl_vector*, %struct.gsl_vector** %273, align 8, !dbg !417
  %275 = icmp eq %struct.gsl_vector* %274, null, !dbg !418
  br i1 %275, label %276, label %309, !dbg !419

; <label>:276:                                    ; preds = %266
  %277 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !420
  %278 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %277, i32 0, i32 12, !dbg !422
  %279 = load double*, double** %278, align 8, !dbg !422
  %280 = bitcast double* %279 to i8*, !dbg !420
  call void @free(i8* %280) #5, !dbg !423
  %281 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !424
  %282 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %281, i32 0, i32 11, !dbg !425
  %283 = load double*, double** %282, align 8, !dbg !425
  %284 = bitcast double* %283 to i8*, !dbg !424
  call void @free(i8* %284) #5, !dbg !426
  %285 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !427
  %286 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %285, i32 0, i32 10, !dbg !428
  %287 = load double*, double** %286, align 8, !dbg !428
  %288 = bitcast double* %287 to i8*, !dbg !427
  call void @free(i8* %288) #5, !dbg !429
  %289 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !430
  %290 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %289, i32 0, i32 9, !dbg !431
  %291 = load double*, double** %290, align 8, !dbg !431
  %292 = bitcast double* %291 to i8*, !dbg !430
  call void @free(i8* %292) #5, !dbg !432
  %293 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !433
  %294 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %293, i32 0, i32 8, !dbg !434
  %295 = load double*, double** %294, align 8, !dbg !434
  %296 = bitcast double* %295 to i8*, !dbg !433
  call void @free(i8* %296) #5, !dbg !435
  %297 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !436
  %298 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %297, i32 0, i32 6, !dbg !437
  %299 = load double*, double** %298, align 8, !dbg !437
  %300 = bitcast double* %299 to i8*, !dbg !436
  call void @free(i8* %300) #5, !dbg !438
  %301 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !439
  %302 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %301, i32 0, i32 7, !dbg !440
  %303 = load double*, double** %302, align 8, !dbg !440
  %304 = bitcast double* %303 to i8*, !dbg !439
  call void @free(i8* %304) #5, !dbg !441
  %305 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !442
  %306 = bitcast %struct.gsl_sf_mathieu_workspace* %305 to i8*, !dbg !442
  call void @free(i8* %306) #5, !dbg !443
  br label %307, !dbg !444, !llvm.loop !445

; <label>:307:                                    ; preds = %276
  call void @gsl_error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0), i32 150, i32 8), !dbg !446
  store %struct.gsl_sf_mathieu_workspace* null, %struct.gsl_sf_mathieu_workspace** %3, align 8, !dbg !446
  br label %408, !dbg !446
                                                  ; No predecessors!
  br label %309, !dbg !449

; <label>:309:                                    ; preds = %308, %266
  %310 = load i32, i32* %7, align 4, !dbg !450
  %311 = zext i32 %310 to i64, !dbg !450
  %312 = load i32, i32* %7, align 4, !dbg !451
  %313 = zext i32 %312 to i64, !dbg !451
  %314 = call %struct.gsl_matrix* @gsl_matrix_alloc(i64 %311, i64 %313), !dbg !452
  %315 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !453
  %316 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %315, i32 0, i32 14, !dbg !454
  store %struct.gsl_matrix* %314, %struct.gsl_matrix** %316, align 8, !dbg !455
  %317 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !456
  %318 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %317, i32 0, i32 14, !dbg !458
  %319 = load %struct.gsl_matrix*, %struct.gsl_matrix** %318, align 8, !dbg !458
  %320 = icmp eq %struct.gsl_matrix* %319, null, !dbg !459
  br i1 %320, label %321, label %357, !dbg !460

; <label>:321:                                    ; preds = %309
  %322 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !461
  %323 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %322, i32 0, i32 13, !dbg !463
  %324 = load %struct.gsl_vector*, %struct.gsl_vector** %323, align 8, !dbg !463
  call void @gsl_vector_free(%struct.gsl_vector* %324), !dbg !464
  %325 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !465
  %326 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %325, i32 0, i32 12, !dbg !466
  %327 = load double*, double** %326, align 8, !dbg !466
  %328 = bitcast double* %327 to i8*, !dbg !465
  call void @free(i8* %328) #5, !dbg !467
  %329 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !468
  %330 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %329, i32 0, i32 11, !dbg !469
  %331 = load double*, double** %330, align 8, !dbg !469
  %332 = bitcast double* %331 to i8*, !dbg !468
  call void @free(i8* %332) #5, !dbg !470
  %333 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !471
  %334 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %333, i32 0, i32 10, !dbg !472
  %335 = load double*, double** %334, align 8, !dbg !472
  %336 = bitcast double* %335 to i8*, !dbg !471
  call void @free(i8* %336) #5, !dbg !473
  %337 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !474
  %338 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %337, i32 0, i32 9, !dbg !475
  %339 = load double*, double** %338, align 8, !dbg !475
  %340 = bitcast double* %339 to i8*, !dbg !474
  call void @free(i8* %340) #5, !dbg !476
  %341 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !477
  %342 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %341, i32 0, i32 8, !dbg !478
  %343 = load double*, double** %342, align 8, !dbg !478
  %344 = bitcast double* %343 to i8*, !dbg !477
  call void @free(i8* %344) #5, !dbg !479
  %345 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !480
  %346 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %345, i32 0, i32 6, !dbg !481
  %347 = load double*, double** %346, align 8, !dbg !481
  %348 = bitcast double* %347 to i8*, !dbg !480
  call void @free(i8* %348) #5, !dbg !482
  %349 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !483
  %350 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %349, i32 0, i32 7, !dbg !484
  %351 = load double*, double** %350, align 8, !dbg !484
  %352 = bitcast double* %351 to i8*, !dbg !483
  call void @free(i8* %352) #5, !dbg !485
  %353 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !486
  %354 = bitcast %struct.gsl_sf_mathieu_workspace* %353 to i8*, !dbg !486
  call void @free(i8* %354) #5, !dbg !487
  br label %355, !dbg !488, !llvm.loop !489

; <label>:355:                                    ; preds = %321
  call void @gsl_error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0), i32 166, i32 8), !dbg !490
  store %struct.gsl_sf_mathieu_workspace* null, %struct.gsl_sf_mathieu_workspace** %3, align 8, !dbg !490
  br label %408, !dbg !490
                                                  ; No predecessors!
  br label %357, !dbg !493

; <label>:357:                                    ; preds = %356, %309
  %358 = load i32, i32* %7, align 4, !dbg !494
  %359 = zext i32 %358 to i64, !dbg !494
  %360 = call %struct.gsl_eigen_symmv_workspace* @gsl_eigen_symmv_alloc(i64 %359), !dbg !495
  %361 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !496
  %362 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %361, i32 0, i32 15, !dbg !497
  store %struct.gsl_eigen_symmv_workspace* %360, %struct.gsl_eigen_symmv_workspace** %362, align 8, !dbg !498
  %363 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !499
  %364 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %363, i32 0, i32 15, !dbg !501
  %365 = load %struct.gsl_eigen_symmv_workspace*, %struct.gsl_eigen_symmv_workspace** %364, align 8, !dbg !501
  %366 = icmp eq %struct.gsl_eigen_symmv_workspace* %365, null, !dbg !502
  br i1 %366, label %367, label %406, !dbg !503

; <label>:367:                                    ; preds = %357
  %368 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !504
  %369 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %368, i32 0, i32 14, !dbg !506
  %370 = load %struct.gsl_matrix*, %struct.gsl_matrix** %369, align 8, !dbg !506
  call void @gsl_matrix_free(%struct.gsl_matrix* %370), !dbg !507
  %371 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !508
  %372 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %371, i32 0, i32 13, !dbg !509
  %373 = load %struct.gsl_vector*, %struct.gsl_vector** %372, align 8, !dbg !509
  call void @gsl_vector_free(%struct.gsl_vector* %373), !dbg !510
  %374 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !511
  %375 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %374, i32 0, i32 12, !dbg !512
  %376 = load double*, double** %375, align 8, !dbg !512
  %377 = bitcast double* %376 to i8*, !dbg !511
  call void @free(i8* %377) #5, !dbg !513
  %378 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !514
  %379 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %378, i32 0, i32 11, !dbg !515
  %380 = load double*, double** %379, align 8, !dbg !515
  %381 = bitcast double* %380 to i8*, !dbg !514
  call void @free(i8* %381) #5, !dbg !516
  %382 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !517
  %383 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %382, i32 0, i32 10, !dbg !518
  %384 = load double*, double** %383, align 8, !dbg !518
  %385 = bitcast double* %384 to i8*, !dbg !517
  call void @free(i8* %385) #5, !dbg !519
  %386 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !520
  %387 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %386, i32 0, i32 9, !dbg !521
  %388 = load double*, double** %387, align 8, !dbg !521
  %389 = bitcast double* %388 to i8*, !dbg !520
  call void @free(i8* %389) #5, !dbg !522
  %390 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !523
  %391 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %390, i32 0, i32 8, !dbg !524
  %392 = load double*, double** %391, align 8, !dbg !524
  %393 = bitcast double* %392 to i8*, !dbg !523
  call void @free(i8* %393) #5, !dbg !525
  %394 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !526
  %395 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %394, i32 0, i32 6, !dbg !527
  %396 = load double*, double** %395, align 8, !dbg !527
  %397 = bitcast double* %396 to i8*, !dbg !526
  call void @free(i8* %397) #5, !dbg !528
  %398 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !529
  %399 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %398, i32 0, i32 7, !dbg !530
  %400 = load double*, double** %399, align 8, !dbg !530
  %401 = bitcast double* %400 to i8*, !dbg !529
  call void @free(i8* %401) #5, !dbg !531
  %402 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !532
  %403 = bitcast %struct.gsl_sf_mathieu_workspace* %402 to i8*, !dbg !532
  call void @free(i8* %403) #5, !dbg !533
  br label %404, !dbg !534, !llvm.loop !535

; <label>:404:                                    ; preds = %367
  call void @gsl_error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0), i32 183, i32 8), !dbg !536
  store %struct.gsl_sf_mathieu_workspace* null, %struct.gsl_sf_mathieu_workspace** %3, align 8, !dbg !536
  br label %408, !dbg !536
                                                  ; No predecessors!
  br label %406, !dbg !539

; <label>:406:                                    ; preds = %405, %357
  %407 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !540
  store %struct.gsl_sf_mathieu_workspace* %407, %struct.gsl_sf_mathieu_workspace** %3, align 8, !dbg !541
  br label %408, !dbg !541

; <label>:408:                                    ; preds = %406, %404, %355, %307, %264, %221, %184, %150, %121, %96, %75, %38, %30
  %409 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %3, align 8, !dbg !542
  ret %struct.gsl_sf_mathieu_workspace* %409, !dbg !542
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare double @pow(double, double) #2

; Function Attrs: nounwind readnone
declare double @fabs(double) #3

declare void @gsl_error(i8*, i8*, i32, i32) #4

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind
declare void @free(i8*) #2

declare %struct.gsl_vector* @gsl_vector_alloc(i64) #4

declare %struct.gsl_matrix* @gsl_matrix_alloc(i64, i64) #4

declare void @gsl_vector_free(%struct.gsl_vector*) #4

declare %struct.gsl_eigen_symmv_workspace* @gsl_eigen_symmv_alloc(i64) #4

declare void @gsl_matrix_free(%struct.gsl_matrix*) #4

; Function Attrs: nounwind uwtable
define void @gsl_sf_mathieu_free(%struct.gsl_sf_mathieu_workspace*) #0 !dbg !543 {
  %2 = alloca %struct.gsl_sf_mathieu_workspace*, align 8
  store %struct.gsl_sf_mathieu_workspace* %0, %struct.gsl_sf_mathieu_workspace** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_mathieu_workspace** %2, metadata !546, metadata !119), !dbg !547
  %3 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %2, align 8, !dbg !548
  %4 = icmp ne %struct.gsl_sf_mathieu_workspace* %3, null, !dbg !548
  br i1 %4, label %6, label %5, !dbg !550

; <label>:5:                                      ; preds = %1
  br label %46, !dbg !551

; <label>:6:                                      ; preds = %1
  %7 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %2, align 8, !dbg !554
  %8 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %7, i32 0, i32 13, !dbg !555
  %9 = load %struct.gsl_vector*, %struct.gsl_vector** %8, align 8, !dbg !555
  call void @gsl_vector_free(%struct.gsl_vector* %9), !dbg !556
  %10 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %2, align 8, !dbg !557
  %11 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %10, i32 0, i32 14, !dbg !558
  %12 = load %struct.gsl_matrix*, %struct.gsl_matrix** %11, align 8, !dbg !558
  call void @gsl_matrix_free(%struct.gsl_matrix* %12), !dbg !559
  %13 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %2, align 8, !dbg !560
  %14 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %13, i32 0, i32 15, !dbg !561
  %15 = load %struct.gsl_eigen_symmv_workspace*, %struct.gsl_eigen_symmv_workspace** %14, align 8, !dbg !561
  call void @gsl_eigen_symmv_free(%struct.gsl_eigen_symmv_workspace* %15), !dbg !562
  %16 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %2, align 8, !dbg !563
  %17 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %16, i32 0, i32 6, !dbg !564
  %18 = load double*, double** %17, align 8, !dbg !564
  %19 = bitcast double* %18 to i8*, !dbg !563
  call void @free(i8* %19) #5, !dbg !565
  %20 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %2, align 8, !dbg !566
  %21 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %20, i32 0, i32 7, !dbg !567
  %22 = load double*, double** %21, align 8, !dbg !567
  %23 = bitcast double* %22 to i8*, !dbg !566
  call void @free(i8* %23) #5, !dbg !568
  %24 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %2, align 8, !dbg !569
  %25 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %24, i32 0, i32 8, !dbg !570
  %26 = load double*, double** %25, align 8, !dbg !570
  %27 = bitcast double* %26 to i8*, !dbg !569
  call void @free(i8* %27) #5, !dbg !571
  %28 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %2, align 8, !dbg !572
  %29 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %28, i32 0, i32 9, !dbg !573
  %30 = load double*, double** %29, align 8, !dbg !573
  %31 = bitcast double* %30 to i8*, !dbg !572
  call void @free(i8* %31) #5, !dbg !574
  %32 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %2, align 8, !dbg !575
  %33 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %32, i32 0, i32 10, !dbg !576
  %34 = load double*, double** %33, align 8, !dbg !576
  %35 = bitcast double* %34 to i8*, !dbg !575
  call void @free(i8* %35) #5, !dbg !577
  %36 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %2, align 8, !dbg !578
  %37 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %36, i32 0, i32 11, !dbg !579
  %38 = load double*, double** %37, align 8, !dbg !579
  %39 = bitcast double* %38 to i8*, !dbg !578
  call void @free(i8* %39) #5, !dbg !580
  %40 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %2, align 8, !dbg !581
  %41 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %40, i32 0, i32 12, !dbg !582
  %42 = load double*, double** %41, align 8, !dbg !582
  %43 = bitcast double* %42 to i8*, !dbg !581
  call void @free(i8* %43) #5, !dbg !583
  %44 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %2, align 8, !dbg !584
  %45 = bitcast %struct.gsl_sf_mathieu_workspace* %44 to i8*, !dbg !584
  call void @free(i8* %45) #5, !dbg !585
  br label %46, !dbg !586

; <label>:46:                                     ; preds = %6, %5
  ret void, !dbg !587
}

declare void @gsl_eigen_symmv_free(%struct.gsl_eigen_symmv_workspace*) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!108, !109, !110}
!llvm.ident = !{!111}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !41)
!1 = !DIFile(filename: "mathieu_workspace.c", directory: "/fpcc/gsl-2.5/specfunc")
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
!41 = !{!42, !43, !107, !59}
!42 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64, align: 64)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_mathieu_workspace", file: !45, line: 60, baseType: !46)
!45 = !DIFile(filename: "../gsl/gsl_sf_mathieu.h", directory: "/fpcc/gsl-2.5/specfunc")
!46 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !45, line: 42, size: 1024, align: 64, elements: !47)
!47 = !{!48, !52, !53, !54, !55, !57, !58, !60, !61, !62, !63, !64, !65, !66, !84, !96}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !46, file: !45, line: 44, baseType: !49, size: 64, align: 64)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !50, line: 62, baseType: !51)
!50 = !DIFile(filename: "/usr/lib/llvm-3.9/bin/../lib/clang/3.9.1/include/stddef.h", directory: "/fpcc/gsl-2.5/specfunc")
!51 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "even_order", scope: !46, file: !45, line: 45, baseType: !49, size: 64, align: 64, offset: 64)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "odd_order", scope: !46, file: !45, line: 46, baseType: !49, size: 64, align: 64, offset: 128)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "extra_values", scope: !46, file: !45, line: 47, baseType: !42, size: 32, align: 32, offset: 192)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "qa", scope: !46, file: !45, line: 48, baseType: !56, size: 64, align: 64, offset: 256)
!56 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "qb", scope: !46, file: !45, line: 49, baseType: !56, size: 64, align: 64, offset: 320)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "aa", scope: !46, file: !45, line: 50, baseType: !59, size: 64, align: 64, offset: 384)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64, align: 64)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !46, file: !45, line: 51, baseType: !59, size: 64, align: 64, offset: 448)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "dd", scope: !46, file: !45, line: 52, baseType: !59, size: 64, align: 64, offset: 512)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "ee", scope: !46, file: !45, line: 53, baseType: !59, size: 64, align: 64, offset: 576)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !46, file: !45, line: 54, baseType: !59, size: 64, align: 64, offset: 640)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "e2", scope: !46, file: !45, line: 55, baseType: !59, size: 64, align: 64, offset: 704)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "zz", scope: !46, file: !45, line: 56, baseType: !59, size: 64, align: 64, offset: 768)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "eval", scope: !46, file: !45, line: 57, baseType: !67, size: 64, align: 64, offset: 832)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64, align: 64)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_vector", file: !69, line: 50, baseType: !70)
!69 = !DIFile(filename: "../gsl/gsl_vector_double.h", directory: "/fpcc/gsl-2.5/specfunc")
!70 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !69, line: 42, size: 320, align: 64, elements: !71)
!71 = !{!72, !73, !74, !75, !83}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !70, file: !69, line: 44, baseType: !49, size: 64, align: 64)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "stride", scope: !70, file: !69, line: 45, baseType: !49, size: 64, align: 64, offset: 64)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !70, file: !69, line: 46, baseType: !59, size: 64, align: 64, offset: 128)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !70, file: !69, line: 47, baseType: !76, size: 64, align: 64, offset: 192)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64, align: 64)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_block", file: !78, line: 44, baseType: !79)
!78 = !DIFile(filename: "../gsl/gsl_block_double.h", directory: "/fpcc/gsl-2.5/specfunc")
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_block_struct", file: !78, line: 38, size: 128, align: 64, elements: !80)
!80 = !{!81, !82}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !79, file: !78, line: 40, baseType: !49, size: 64, align: 64)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !79, file: !78, line: 41, baseType: !59, size: 64, align: 64, offset: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !70, file: !69, line: 48, baseType: !42, size: 32, align: 32, offset: 256)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "evec", scope: !46, file: !45, line: 58, baseType: !85, size: 64, align: 64, offset: 896)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64, align: 64)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_matrix", file: !87, line: 50, baseType: !88)
!87 = !DIFile(filename: "../gsl/gsl_matrix_double.h", directory: "/fpcc/gsl-2.5/specfunc")
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !87, line: 42, size: 384, align: 64, elements: !89)
!89 = !{!90, !91, !92, !93, !94, !95}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "size1", scope: !88, file: !87, line: 44, baseType: !49, size: 64, align: 64)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "size2", scope: !88, file: !87, line: 45, baseType: !49, size: 64, align: 64, offset: 64)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "tda", scope: !88, file: !87, line: 46, baseType: !49, size: 64, align: 64, offset: 128)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !88, file: !87, line: 47, baseType: !59, size: 64, align: 64, offset: 192)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !88, file: !87, line: 48, baseType: !76, size: 64, align: 64, offset: 256)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !88, file: !87, line: 49, baseType: !42, size: 32, align: 32, offset: 320)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "wmat", scope: !46, file: !45, line: 59, baseType: !97, size: 64, align: 64, offset: 960)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64, align: 64)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_eigen_symmv_workspace", file: !99, line: 54, baseType: !100)
!99 = !DIFile(filename: "../gsl/gsl_eigen.h", directory: "/fpcc/gsl-2.5/specfunc")
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !99, line: 48, size: 320, align: 64, elements: !101)
!101 = !{!102, !103, !104, !105, !106}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !100, file: !99, line: 49, baseType: !49, size: 64, align: 64)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !100, file: !99, line: 50, baseType: !59, size: 64, align: 64, offset: 64)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !100, file: !99, line: 51, baseType: !59, size: 64, align: 64, offset: 128)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !100, file: !99, line: 52, baseType: !59, size: 64, align: 64, offset: 192)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "gs", scope: !100, file: !99, line: 53, baseType: !59, size: 64, align: 64, offset: 256)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!108 = !{i32 2, !"Dwarf Version", i32 4}
!109 = !{i32 2, !"Debug Info Version", i32 3}
!110 = !{i32 1, !"PIC Level", i32 2}
!111 = !{!"clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)"}
!112 = distinct !DISubprogram(name: "gsl_sf_mathieu_alloc", scope: !1, file: !1, line: 29, type: !113, isLocal: false, isDefinition: true, scopeLine: 31, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !117)
!113 = !DISubroutineType(types: !114)
!114 = !{!43, !115, !116}
!115 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !49)
!116 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !56)
!117 = !{}
!118 = !DILocalVariable(name: "nn", arg: 1, scope: !112, file: !1, line: 29, type: !115)
!119 = !DIExpression()
!120 = !DILocation(line: 29, column: 61, scope: !112)
!121 = !DILocalVariable(name: "qq", arg: 2, scope: !112, file: !1, line: 30, type: !116)
!122 = !DILocation(line: 30, column: 61, scope: !112)
!123 = !DILocalVariable(name: "workspace", scope: !112, file: !1, line: 32, type: !43)
!124 = !DILocation(line: 32, column: 29, scope: !112)
!125 = !DILocalVariable(name: "even_order", scope: !112, file: !1, line: 33, type: !126)
!126 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!127 = !DILocation(line: 33, column: 16, scope: !112)
!128 = !DILocation(line: 33, column: 29, scope: !112)
!129 = !DILocation(line: 33, column: 31, scope: !112)
!130 = !DILocation(line: 33, column: 34, scope: !112)
!131 = !DILocalVariable(name: "odd_order", scope: !112, file: !1, line: 33, type: !126)
!132 = !DILocation(line: 33, column: 39, scope: !112)
!133 = !DILocation(line: 33, column: 52, scope: !112)
!134 = !DILocation(line: 33, column: 55, scope: !112)
!135 = !DILocation(line: 33, column: 59, scope: !112)
!136 = !DILocation(line: 33, column: 51, scope: !112)
!137 = !DILocalVariable(name: "extra_values", scope: !112, file: !1, line: 34, type: !126)
!138 = !DILocation(line: 34, column: 16, scope: !112)
!139 = !DILocation(line: 38, column: 37, scope: !112)
!140 = !DILocation(line: 38, column: 32, scope: !112)
!141 = !DILocation(line: 38, column: 28, scope: !142)
!142 = !DILexicalBlockFile(scope: !112, file: !1, discriminator: 1)
!143 = !DILocation(line: 38, column: 27, scope: !112)
!144 = !DILocation(line: 38, column: 18, scope: !112)
!145 = !DILocation(line: 38, column: 49, scope: !112)
!146 = !DILocation(line: 38, column: 16, scope: !112)
!147 = !DILocation(line: 39, column: 16, scope: !112)
!148 = !DILocation(line: 41, column: 7, scope: !149)
!149 = distinct !DILexicalBlock(scope: !112, file: !1, line: 41, column: 7)
!150 = !DILocation(line: 41, column: 10, scope: !149)
!151 = !DILocation(line: 41, column: 14, scope: !149)
!152 = !DILocation(line: 41, column: 7, scope: !112)
!153 = !DILocation(line: 43, column: 7, scope: !154)
!154 = distinct !DILexicalBlock(scope: !149, file: !1, line: 42, column: 3)
!155 = distinct !{!155, !153}
!156 = !DILocation(line: 43, column: 7, scope: !157)
!157 = !DILexicalBlockFile(scope: !158, file: !1, discriminator: 1)
!158 = distinct !DILexicalBlock(scope: !154, file: !1, line: 43, column: 7)
!159 = !DILocation(line: 44, column: 3, scope: !154)
!160 = !DILocation(line: 47, column: 38, scope: !112)
!161 = !DILocation(line: 47, column: 10, scope: !112)
!162 = !DILocation(line: 46, column: 13, scope: !112)
!163 = !DILocation(line: 48, column: 7, scope: !164)
!164 = distinct !DILexicalBlock(scope: !112, file: !1, line: 48, column: 7)
!165 = !DILocation(line: 48, column: 17, scope: !164)
!166 = !DILocation(line: 48, column: 7, scope: !112)
!167 = !DILocation(line: 50, column: 7, scope: !168)
!168 = distinct !DILexicalBlock(scope: !164, file: !1, line: 49, column: 3)
!169 = distinct !{!169, !167}
!170 = !DILocation(line: 50, column: 7, scope: !171)
!171 = !DILexicalBlockFile(scope: !172, file: !1, discriminator: 1)
!172 = distinct !DILexicalBlock(scope: !168, file: !1, line: 50, column: 7)
!173 = !DILocation(line: 51, column: 3, scope: !168)
!174 = !DILocation(line: 54, column: 17, scope: !112)
!175 = !DILocation(line: 54, column: 14, scope: !112)
!176 = !DILocation(line: 55, column: 16, scope: !112)
!177 = !DILocation(line: 55, column: 13, scope: !112)
!178 = !DILocation(line: 57, column: 21, scope: !112)
!179 = !DILocation(line: 57, column: 3, scope: !112)
!180 = !DILocation(line: 57, column: 14, scope: !112)
!181 = !DILocation(line: 57, column: 19, scope: !112)
!182 = !DILocation(line: 58, column: 27, scope: !112)
!183 = !DILocation(line: 58, column: 3, scope: !112)
!184 = !DILocation(line: 58, column: 14, scope: !112)
!185 = !DILocation(line: 58, column: 25, scope: !112)
!186 = !DILocation(line: 59, column: 26, scope: !112)
!187 = !DILocation(line: 59, column: 3, scope: !112)
!188 = !DILocation(line: 59, column: 14, scope: !112)
!189 = !DILocation(line: 59, column: 24, scope: !112)
!190 = !DILocation(line: 60, column: 29, scope: !112)
!191 = !DILocation(line: 60, column: 3, scope: !112)
!192 = !DILocation(line: 60, column: 14, scope: !112)
!193 = !DILocation(line: 60, column: 27, scope: !112)
!194 = !DILocation(line: 63, column: 37, scope: !112)
!195 = !DILocation(line: 63, column: 39, scope: !112)
!196 = !DILocation(line: 63, column: 42, scope: !112)
!197 = !DILocation(line: 63, column: 29, scope: !112)
!198 = !DILocation(line: 63, column: 19, scope: !112)
!199 = !DILocation(line: 63, column: 3, scope: !112)
!200 = !DILocation(line: 63, column: 14, scope: !112)
!201 = !DILocation(line: 63, column: 17, scope: !112)
!202 = !DILocation(line: 64, column: 7, scope: !203)
!203 = distinct !DILexicalBlock(scope: !112, file: !1, line: 64, column: 7)
!204 = !DILocation(line: 64, column: 18, scope: !203)
!205 = !DILocation(line: 64, column: 21, scope: !203)
!206 = !DILocation(line: 64, column: 7, scope: !112)
!207 = !DILocation(line: 66, column: 12, scope: !208)
!208 = distinct !DILexicalBlock(scope: !203, file: !1, line: 65, column: 3)
!209 = !DILocation(line: 66, column: 7, scope: !208)
!210 = !DILocation(line: 67, column: 7, scope: !208)
!211 = distinct !{!211, !210}
!212 = !DILocation(line: 67, column: 7, scope: !213)
!213 = !DILexicalBlockFile(scope: !214, file: !1, discriminator: 1)
!214 = distinct !DILexicalBlock(scope: !208, file: !1, line: 67, column: 7)
!215 = !DILocation(line: 69, column: 3, scope: !208)
!216 = !DILocation(line: 71, column: 37, scope: !112)
!217 = !DILocation(line: 71, column: 39, scope: !112)
!218 = !DILocation(line: 71, column: 42, scope: !112)
!219 = !DILocation(line: 71, column: 29, scope: !112)
!220 = !DILocation(line: 71, column: 19, scope: !112)
!221 = !DILocation(line: 71, column: 3, scope: !112)
!222 = !DILocation(line: 71, column: 14, scope: !112)
!223 = !DILocation(line: 71, column: 17, scope: !112)
!224 = !DILocation(line: 72, column: 7, scope: !225)
!225 = distinct !DILexicalBlock(scope: !112, file: !1, line: 72, column: 7)
!226 = !DILocation(line: 72, column: 18, scope: !225)
!227 = !DILocation(line: 72, column: 21, scope: !225)
!228 = !DILocation(line: 72, column: 7, scope: !112)
!229 = !DILocation(line: 74, column: 12, scope: !230)
!230 = distinct !DILexicalBlock(scope: !225, file: !1, line: 73, column: 3)
!231 = !DILocation(line: 74, column: 23, scope: !230)
!232 = !DILocation(line: 74, column: 7, scope: !230)
!233 = !DILocation(line: 75, column: 12, scope: !230)
!234 = !DILocation(line: 75, column: 7, scope: !230)
!235 = !DILocation(line: 76, column: 7, scope: !230)
!236 = distinct !{!236, !235}
!237 = !DILocation(line: 76, column: 7, scope: !238)
!238 = !DILexicalBlockFile(scope: !239, file: !1, discriminator: 1)
!239 = distinct !DILexicalBlock(scope: !230, file: !1, line: 76, column: 7)
!240 = !DILocation(line: 78, column: 3, scope: !230)
!241 = !DILocation(line: 83, column: 36, scope: !112)
!242 = !DILocation(line: 83, column: 46, scope: !112)
!243 = !DILocation(line: 83, column: 29, scope: !112)
!244 = !DILocation(line: 83, column: 19, scope: !112)
!245 = !DILocation(line: 83, column: 3, scope: !112)
!246 = !DILocation(line: 83, column: 14, scope: !112)
!247 = !DILocation(line: 83, column: 17, scope: !112)
!248 = !DILocation(line: 84, column: 7, scope: !249)
!249 = distinct !DILexicalBlock(scope: !112, file: !1, line: 84, column: 7)
!250 = !DILocation(line: 84, column: 18, scope: !249)
!251 = !DILocation(line: 84, column: 21, scope: !249)
!252 = !DILocation(line: 84, column: 7, scope: !112)
!253 = !DILocation(line: 86, column: 12, scope: !254)
!254 = distinct !DILexicalBlock(scope: !249, file: !1, line: 85, column: 3)
!255 = !DILocation(line: 86, column: 23, scope: !254)
!256 = !DILocation(line: 86, column: 7, scope: !254)
!257 = !DILocation(line: 87, column: 12, scope: !254)
!258 = !DILocation(line: 87, column: 23, scope: !254)
!259 = !DILocation(line: 87, column: 7, scope: !254)
!260 = !DILocation(line: 88, column: 12, scope: !254)
!261 = !DILocation(line: 88, column: 7, scope: !254)
!262 = !DILocation(line: 89, column: 7, scope: !254)
!263 = distinct !{!263, !262}
!264 = !DILocation(line: 89, column: 7, scope: !265)
!265 = !DILexicalBlockFile(scope: !266, file: !1, discriminator: 1)
!266 = distinct !DILexicalBlock(scope: !254, file: !1, line: 89, column: 7)
!267 = !DILocation(line: 90, column: 3, scope: !254)
!268 = !DILocation(line: 92, column: 36, scope: !112)
!269 = !DILocation(line: 92, column: 46, scope: !112)
!270 = !DILocation(line: 92, column: 29, scope: !112)
!271 = !DILocation(line: 92, column: 19, scope: !112)
!272 = !DILocation(line: 92, column: 3, scope: !112)
!273 = !DILocation(line: 92, column: 14, scope: !112)
!274 = !DILocation(line: 92, column: 17, scope: !112)
!275 = !DILocation(line: 93, column: 7, scope: !276)
!276 = distinct !DILexicalBlock(scope: !112, file: !1, line: 93, column: 7)
!277 = !DILocation(line: 93, column: 18, scope: !276)
!278 = !DILocation(line: 93, column: 21, scope: !276)
!279 = !DILocation(line: 93, column: 7, scope: !112)
!280 = !DILocation(line: 95, column: 12, scope: !281)
!281 = distinct !DILexicalBlock(scope: !276, file: !1, line: 94, column: 3)
!282 = !DILocation(line: 95, column: 23, scope: !281)
!283 = !DILocation(line: 95, column: 7, scope: !281)
!284 = !DILocation(line: 96, column: 12, scope: !281)
!285 = !DILocation(line: 96, column: 23, scope: !281)
!286 = !DILocation(line: 96, column: 7, scope: !281)
!287 = !DILocation(line: 97, column: 12, scope: !281)
!288 = !DILocation(line: 97, column: 23, scope: !281)
!289 = !DILocation(line: 97, column: 7, scope: !281)
!290 = !DILocation(line: 98, column: 12, scope: !281)
!291 = !DILocation(line: 98, column: 7, scope: !281)
!292 = !DILocation(line: 99, column: 7, scope: !281)
!293 = distinct !{!293, !292}
!294 = !DILocation(line: 99, column: 7, scope: !295)
!295 = !DILexicalBlockFile(scope: !296, file: !1, discriminator: 1)
!296 = distinct !DILexicalBlock(scope: !281, file: !1, line: 99, column: 7)
!297 = !DILocation(line: 100, column: 3, scope: !281)
!298 = !DILocation(line: 102, column: 38, scope: !112)
!299 = !DILocation(line: 102, column: 37, scope: !112)
!300 = !DILocation(line: 102, column: 36, scope: !112)
!301 = !DILocation(line: 102, column: 48, scope: !112)
!302 = !DILocation(line: 102, column: 29, scope: !112)
!303 = !DILocation(line: 102, column: 19, scope: !112)
!304 = !DILocation(line: 102, column: 3, scope: !112)
!305 = !DILocation(line: 102, column: 14, scope: !112)
!306 = !DILocation(line: 102, column: 17, scope: !112)
!307 = !DILocation(line: 103, column: 7, scope: !308)
!308 = distinct !DILexicalBlock(scope: !112, file: !1, line: 103, column: 7)
!309 = !DILocation(line: 103, column: 18, scope: !308)
!310 = !DILocation(line: 103, column: 21, scope: !308)
!311 = !DILocation(line: 103, column: 7, scope: !112)
!312 = !DILocation(line: 105, column: 12, scope: !313)
!313 = distinct !DILexicalBlock(scope: !308, file: !1, line: 104, column: 3)
!314 = !DILocation(line: 105, column: 23, scope: !313)
!315 = !DILocation(line: 105, column: 7, scope: !313)
!316 = !DILocation(line: 106, column: 12, scope: !313)
!317 = !DILocation(line: 106, column: 23, scope: !313)
!318 = !DILocation(line: 106, column: 7, scope: !313)
!319 = !DILocation(line: 107, column: 12, scope: !313)
!320 = !DILocation(line: 107, column: 23, scope: !313)
!321 = !DILocation(line: 107, column: 7, scope: !313)
!322 = !DILocation(line: 108, column: 12, scope: !313)
!323 = !DILocation(line: 108, column: 23, scope: !313)
!324 = !DILocation(line: 108, column: 7, scope: !313)
!325 = !DILocation(line: 109, column: 12, scope: !313)
!326 = !DILocation(line: 109, column: 7, scope: !313)
!327 = !DILocation(line: 110, column: 7, scope: !313)
!328 = distinct !{!328, !327}
!329 = !DILocation(line: 110, column: 7, scope: !330)
!330 = !DILexicalBlockFile(scope: !331, file: !1, discriminator: 1)
!331 = distinct !DILexicalBlock(scope: !313, file: !1, line: 110, column: 7)
!332 = !DILocation(line: 111, column: 3, scope: !313)
!333 = !DILocation(line: 113, column: 36, scope: !112)
!334 = !DILocation(line: 113, column: 46, scope: !112)
!335 = !DILocation(line: 113, column: 29, scope: !112)
!336 = !DILocation(line: 113, column: 19, scope: !112)
!337 = !DILocation(line: 113, column: 3, scope: !112)
!338 = !DILocation(line: 113, column: 14, scope: !112)
!339 = !DILocation(line: 113, column: 17, scope: !112)
!340 = !DILocation(line: 114, column: 7, scope: !341)
!341 = distinct !DILexicalBlock(scope: !112, file: !1, line: 114, column: 7)
!342 = !DILocation(line: 114, column: 18, scope: !341)
!343 = !DILocation(line: 114, column: 21, scope: !341)
!344 = !DILocation(line: 114, column: 7, scope: !112)
!345 = !DILocation(line: 116, column: 12, scope: !346)
!346 = distinct !DILexicalBlock(scope: !341, file: !1, line: 115, column: 3)
!347 = !DILocation(line: 116, column: 23, scope: !346)
!348 = !DILocation(line: 116, column: 7, scope: !346)
!349 = !DILocation(line: 117, column: 12, scope: !346)
!350 = !DILocation(line: 117, column: 23, scope: !346)
!351 = !DILocation(line: 117, column: 7, scope: !346)
!352 = !DILocation(line: 118, column: 12, scope: !346)
!353 = !DILocation(line: 118, column: 23, scope: !346)
!354 = !DILocation(line: 118, column: 7, scope: !346)
!355 = !DILocation(line: 119, column: 12, scope: !346)
!356 = !DILocation(line: 119, column: 23, scope: !346)
!357 = !DILocation(line: 119, column: 7, scope: !346)
!358 = !DILocation(line: 120, column: 12, scope: !346)
!359 = !DILocation(line: 120, column: 23, scope: !346)
!360 = !DILocation(line: 120, column: 7, scope: !346)
!361 = !DILocation(line: 121, column: 12, scope: !346)
!362 = !DILocation(line: 121, column: 7, scope: !346)
!363 = !DILocation(line: 122, column: 7, scope: !346)
!364 = distinct !{!364, !363}
!365 = !DILocation(line: 122, column: 7, scope: !366)
!366 = !DILexicalBlockFile(scope: !367, file: !1, discriminator: 1)
!367 = distinct !DILexicalBlock(scope: !346, file: !1, line: 122, column: 7)
!368 = !DILocation(line: 123, column: 3, scope: !346)
!369 = !DILocation(line: 125, column: 36, scope: !112)
!370 = !DILocation(line: 125, column: 47, scope: !112)
!371 = !DILocation(line: 125, column: 46, scope: !112)
!372 = !DILocation(line: 125, column: 57, scope: !112)
!373 = !DILocation(line: 125, column: 29, scope: !112)
!374 = !DILocation(line: 125, column: 19, scope: !112)
!375 = !DILocation(line: 125, column: 3, scope: !112)
!376 = !DILocation(line: 125, column: 14, scope: !112)
!377 = !DILocation(line: 125, column: 17, scope: !112)
!378 = !DILocation(line: 126, column: 7, scope: !379)
!379 = distinct !DILexicalBlock(scope: !112, file: !1, line: 126, column: 7)
!380 = !DILocation(line: 126, column: 18, scope: !379)
!381 = !DILocation(line: 126, column: 21, scope: !379)
!382 = !DILocation(line: 126, column: 7, scope: !112)
!383 = !DILocation(line: 128, column: 12, scope: !384)
!384 = distinct !DILexicalBlock(scope: !379, file: !1, line: 127, column: 3)
!385 = !DILocation(line: 128, column: 23, scope: !384)
!386 = !DILocation(line: 128, column: 7, scope: !384)
!387 = !DILocation(line: 129, column: 12, scope: !384)
!388 = !DILocation(line: 129, column: 23, scope: !384)
!389 = !DILocation(line: 129, column: 7, scope: !384)
!390 = !DILocation(line: 130, column: 12, scope: !384)
!391 = !DILocation(line: 130, column: 23, scope: !384)
!392 = !DILocation(line: 130, column: 7, scope: !384)
!393 = !DILocation(line: 131, column: 12, scope: !384)
!394 = !DILocation(line: 131, column: 23, scope: !384)
!395 = !DILocation(line: 131, column: 7, scope: !384)
!396 = !DILocation(line: 132, column: 12, scope: !384)
!397 = !DILocation(line: 132, column: 23, scope: !384)
!398 = !DILocation(line: 132, column: 7, scope: !384)
!399 = !DILocation(line: 133, column: 12, scope: !384)
!400 = !DILocation(line: 133, column: 23, scope: !384)
!401 = !DILocation(line: 133, column: 7, scope: !384)
!402 = !DILocation(line: 134, column: 12, scope: !384)
!403 = !DILocation(line: 134, column: 7, scope: !384)
!404 = !DILocation(line: 135, column: 7, scope: !384)
!405 = distinct !{!405, !404}
!406 = !DILocation(line: 135, column: 7, scope: !407)
!407 = !DILexicalBlockFile(scope: !408, file: !1, discriminator: 1)
!408 = distinct !DILexicalBlock(scope: !384, file: !1, line: 135, column: 7)
!409 = !DILocation(line: 136, column: 3, scope: !384)
!410 = !DILocation(line: 138, column: 38, scope: !112)
!411 = !DILocation(line: 138, column: 21, scope: !112)
!412 = !DILocation(line: 138, column: 3, scope: !112)
!413 = !DILocation(line: 138, column: 14, scope: !112)
!414 = !DILocation(line: 138, column: 19, scope: !112)
!415 = !DILocation(line: 140, column: 7, scope: !416)
!416 = distinct !DILexicalBlock(scope: !112, file: !1, line: 140, column: 7)
!417 = !DILocation(line: 140, column: 18, scope: !416)
!418 = !DILocation(line: 140, column: 23, scope: !416)
!419 = !DILocation(line: 140, column: 7, scope: !112)
!420 = !DILocation(line: 142, column: 12, scope: !421)
!421 = distinct !DILexicalBlock(scope: !416, file: !1, line: 141, column: 5)
!422 = !DILocation(line: 142, column: 23, scope: !421)
!423 = !DILocation(line: 142, column: 7, scope: !421)
!424 = !DILocation(line: 143, column: 12, scope: !421)
!425 = !DILocation(line: 143, column: 23, scope: !421)
!426 = !DILocation(line: 143, column: 7, scope: !421)
!427 = !DILocation(line: 144, column: 12, scope: !421)
!428 = !DILocation(line: 144, column: 23, scope: !421)
!429 = !DILocation(line: 144, column: 7, scope: !421)
!430 = !DILocation(line: 145, column: 12, scope: !421)
!431 = !DILocation(line: 145, column: 23, scope: !421)
!432 = !DILocation(line: 145, column: 7, scope: !421)
!433 = !DILocation(line: 146, column: 12, scope: !421)
!434 = !DILocation(line: 146, column: 23, scope: !421)
!435 = !DILocation(line: 146, column: 7, scope: !421)
!436 = !DILocation(line: 147, column: 12, scope: !421)
!437 = !DILocation(line: 147, column: 23, scope: !421)
!438 = !DILocation(line: 147, column: 7, scope: !421)
!439 = !DILocation(line: 148, column: 12, scope: !421)
!440 = !DILocation(line: 148, column: 23, scope: !421)
!441 = !DILocation(line: 148, column: 7, scope: !421)
!442 = !DILocation(line: 149, column: 12, scope: !421)
!443 = !DILocation(line: 149, column: 7, scope: !421)
!444 = !DILocation(line: 150, column: 7, scope: !421)
!445 = distinct !{!445, !444}
!446 = !DILocation(line: 150, column: 7, scope: !447)
!447 = !DILexicalBlockFile(scope: !448, file: !1, discriminator: 1)
!448 = distinct !DILexicalBlock(scope: !421, file: !1, line: 150, column: 7)
!449 = !DILocation(line: 151, column: 5, scope: !421)
!450 = !DILocation(line: 153, column: 38, scope: !112)
!451 = !DILocation(line: 153, column: 50, scope: !112)
!452 = !DILocation(line: 153, column: 21, scope: !112)
!453 = !DILocation(line: 153, column: 3, scope: !112)
!454 = !DILocation(line: 153, column: 14, scope: !112)
!455 = !DILocation(line: 153, column: 19, scope: !112)
!456 = !DILocation(line: 155, column: 7, scope: !457)
!457 = distinct !DILexicalBlock(scope: !112, file: !1, line: 155, column: 7)
!458 = !DILocation(line: 155, column: 18, scope: !457)
!459 = !DILocation(line: 155, column: 23, scope: !457)
!460 = !DILocation(line: 155, column: 7, scope: !112)
!461 = !DILocation(line: 157, column: 24, scope: !462)
!462 = distinct !DILexicalBlock(scope: !457, file: !1, line: 156, column: 5)
!463 = !DILocation(line: 157, column: 35, scope: !462)
!464 = !DILocation(line: 157, column: 7, scope: !462)
!465 = !DILocation(line: 158, column: 12, scope: !462)
!466 = !DILocation(line: 158, column: 23, scope: !462)
!467 = !DILocation(line: 158, column: 7, scope: !462)
!468 = !DILocation(line: 159, column: 12, scope: !462)
!469 = !DILocation(line: 159, column: 23, scope: !462)
!470 = !DILocation(line: 159, column: 7, scope: !462)
!471 = !DILocation(line: 160, column: 12, scope: !462)
!472 = !DILocation(line: 160, column: 23, scope: !462)
!473 = !DILocation(line: 160, column: 7, scope: !462)
!474 = !DILocation(line: 161, column: 12, scope: !462)
!475 = !DILocation(line: 161, column: 23, scope: !462)
!476 = !DILocation(line: 161, column: 7, scope: !462)
!477 = !DILocation(line: 162, column: 12, scope: !462)
!478 = !DILocation(line: 162, column: 23, scope: !462)
!479 = !DILocation(line: 162, column: 7, scope: !462)
!480 = !DILocation(line: 163, column: 12, scope: !462)
!481 = !DILocation(line: 163, column: 23, scope: !462)
!482 = !DILocation(line: 163, column: 7, scope: !462)
!483 = !DILocation(line: 164, column: 12, scope: !462)
!484 = !DILocation(line: 164, column: 23, scope: !462)
!485 = !DILocation(line: 164, column: 7, scope: !462)
!486 = !DILocation(line: 165, column: 12, scope: !462)
!487 = !DILocation(line: 165, column: 7, scope: !462)
!488 = !DILocation(line: 166, column: 7, scope: !462)
!489 = distinct !{!489, !488}
!490 = !DILocation(line: 166, column: 7, scope: !491)
!491 = !DILexicalBlockFile(scope: !492, file: !1, discriminator: 1)
!492 = distinct !DILexicalBlock(scope: !462, file: !1, line: 166, column: 7)
!493 = !DILocation(line: 167, column: 5, scope: !462)
!494 = !DILocation(line: 169, column: 43, scope: !112)
!495 = !DILocation(line: 169, column: 21, scope: !112)
!496 = !DILocation(line: 169, column: 3, scope: !112)
!497 = !DILocation(line: 169, column: 14, scope: !112)
!498 = !DILocation(line: 169, column: 19, scope: !112)
!499 = !DILocation(line: 171, column: 7, scope: !500)
!500 = distinct !DILexicalBlock(scope: !112, file: !1, line: 171, column: 7)
!501 = !DILocation(line: 171, column: 18, scope: !500)
!502 = !DILocation(line: 171, column: 23, scope: !500)
!503 = !DILocation(line: 171, column: 7, scope: !112)
!504 = !DILocation(line: 173, column: 24, scope: !505)
!505 = distinct !DILexicalBlock(scope: !500, file: !1, line: 172, column: 5)
!506 = !DILocation(line: 173, column: 35, scope: !505)
!507 = !DILocation(line: 173, column: 7, scope: !505)
!508 = !DILocation(line: 174, column: 24, scope: !505)
!509 = !DILocation(line: 174, column: 35, scope: !505)
!510 = !DILocation(line: 174, column: 7, scope: !505)
!511 = !DILocation(line: 175, column: 12, scope: !505)
!512 = !DILocation(line: 175, column: 23, scope: !505)
!513 = !DILocation(line: 175, column: 7, scope: !505)
!514 = !DILocation(line: 176, column: 12, scope: !505)
!515 = !DILocation(line: 176, column: 23, scope: !505)
!516 = !DILocation(line: 176, column: 7, scope: !505)
!517 = !DILocation(line: 177, column: 12, scope: !505)
!518 = !DILocation(line: 177, column: 23, scope: !505)
!519 = !DILocation(line: 177, column: 7, scope: !505)
!520 = !DILocation(line: 178, column: 12, scope: !505)
!521 = !DILocation(line: 178, column: 23, scope: !505)
!522 = !DILocation(line: 178, column: 7, scope: !505)
!523 = !DILocation(line: 179, column: 12, scope: !505)
!524 = !DILocation(line: 179, column: 23, scope: !505)
!525 = !DILocation(line: 179, column: 7, scope: !505)
!526 = !DILocation(line: 180, column: 12, scope: !505)
!527 = !DILocation(line: 180, column: 23, scope: !505)
!528 = !DILocation(line: 180, column: 7, scope: !505)
!529 = !DILocation(line: 181, column: 12, scope: !505)
!530 = !DILocation(line: 181, column: 23, scope: !505)
!531 = !DILocation(line: 181, column: 7, scope: !505)
!532 = !DILocation(line: 182, column: 12, scope: !505)
!533 = !DILocation(line: 182, column: 7, scope: !505)
!534 = !DILocation(line: 183, column: 7, scope: !505)
!535 = distinct !{!535, !534}
!536 = !DILocation(line: 183, column: 7, scope: !537)
!537 = !DILexicalBlockFile(scope: !538, file: !1, discriminator: 1)
!538 = distinct !DILexicalBlock(scope: !505, file: !1, line: 183, column: 7)
!539 = !DILocation(line: 184, column: 5, scope: !505)
!540 = !DILocation(line: 186, column: 10, scope: !112)
!541 = !DILocation(line: 186, column: 3, scope: !112)
!542 = !DILocation(line: 187, column: 1, scope: !112)
!543 = distinct !DISubprogram(name: "gsl_sf_mathieu_free", scope: !1, file: !1, line: 190, type: !544, isLocal: false, isDefinition: true, scopeLine: 191, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !117)
!544 = !DISubroutineType(types: !545)
!545 = !{null, !43}
!546 = !DILocalVariable(name: "workspace", arg: 1, scope: !543, file: !1, line: 190, type: !43)
!547 = !DILocation(line: 190, column: 52, scope: !543)
!548 = !DILocation(line: 192, column: 3, scope: !549)
!549 = distinct !DILexicalBlock(scope: !543, file: !1, line: 192, column: 3)
!550 = !DILocation(line: 192, column: 3, scope: !543)
!551 = !DILocation(line: 192, column: 3, scope: !552)
!552 = !DILexicalBlockFile(scope: !553, file: !1, discriminator: 1)
!553 = distinct !DILexicalBlock(scope: !549, file: !1, line: 192, column: 3)
!554 = !DILocation(line: 193, column: 19, scope: !543)
!555 = !DILocation(line: 193, column: 30, scope: !543)
!556 = !DILocation(line: 193, column: 3, scope: !543)
!557 = !DILocation(line: 194, column: 19, scope: !543)
!558 = !DILocation(line: 194, column: 30, scope: !543)
!559 = !DILocation(line: 194, column: 3, scope: !543)
!560 = !DILocation(line: 195, column: 24, scope: !543)
!561 = !DILocation(line: 195, column: 35, scope: !543)
!562 = !DILocation(line: 195, column: 3, scope: !543)
!563 = !DILocation(line: 196, column: 8, scope: !543)
!564 = !DILocation(line: 196, column: 19, scope: !543)
!565 = !DILocation(line: 196, column: 3, scope: !543)
!566 = !DILocation(line: 197, column: 8, scope: !543)
!567 = !DILocation(line: 197, column: 19, scope: !543)
!568 = !DILocation(line: 197, column: 3, scope: !543)
!569 = !DILocation(line: 198, column: 8, scope: !543)
!570 = !DILocation(line: 198, column: 19, scope: !543)
!571 = !DILocation(line: 198, column: 3, scope: !543)
!572 = !DILocation(line: 199, column: 8, scope: !543)
!573 = !DILocation(line: 199, column: 19, scope: !543)
!574 = !DILocation(line: 199, column: 3, scope: !543)
!575 = !DILocation(line: 200, column: 8, scope: !543)
!576 = !DILocation(line: 200, column: 19, scope: !543)
!577 = !DILocation(line: 200, column: 3, scope: !543)
!578 = !DILocation(line: 201, column: 8, scope: !543)
!579 = !DILocation(line: 201, column: 19, scope: !543)
!580 = !DILocation(line: 201, column: 3, scope: !543)
!581 = !DILocation(line: 202, column: 8, scope: !543)
!582 = !DILocation(line: 202, column: 19, scope: !543)
!583 = !DILocation(line: 202, column: 3, scope: !543)
!584 = !DILocation(line: 203, column: 8, scope: !543)
!585 = !DILocation(line: 203, column: 3, scope: !543)
!586 = !DILocation(line: 204, column: 1, scope: !543)
!587 = !DILocation(line: 204, column: 1, scope: !588)
!588 = !DILexicalBlockFile(scope: !543, file: !1, discriminator: 1)
