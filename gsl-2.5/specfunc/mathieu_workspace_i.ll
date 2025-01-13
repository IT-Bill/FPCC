; ModuleID = 'mathieu_workspace.ll'
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
@0 = private unnamed_addr constant [21 x i8] c"gsl_sf_mathieu_alloc\00"
@1 = private unnamed_addr constant [21 x i8] c"mathieu_workspace.ll\00"
@2 = private unnamed_addr constant [20 x i8] c"gsl_sf_mathieu_free\00"
@3 = private unnamed_addr constant [21 x i8] c"mathieu_workspace.ll\00"

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
  call void @callTwoArgsHandler(i32 15, double %19, double 3.700000e-01, double %20, i64 94019924219856, i64 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @1, i32 0, i32 0), i64 94019924223304, i32 38, i32 28), !dbg !143
  %21 = fmul double 2.100000e+00, %20, !dbg !143
  call void @fMulHandler(double 2.100000e+00, double %20, double %21, i64 0, i64 94019924223304, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @1, i32 0, i32 0), i64 94019924223872, i32 38, i32 27), !dbg !144
  %22 = fptosi double %21 to i32, !dbg !144
  %23 = add nsw i32 %22, 9, !dbg !145
  store i32 %23, i32* %9, align 4, !dbg !146
  %24 = load i32, i32* %9, align 4, !dbg !147
  %25 = add i32 %24, 20, !dbg !147
  store i32 %25, i32* %9, align 4, !dbg !147
  %26 = load i64, i64* %4, align 8, !dbg !148
  %27 = add i64 %26, 1, !dbg !150
  %28 = icmp eq i64 %27, 0, !dbg !151
  %29 = call i1 @iCmpInstHandler(i64 %27, i64 0, i1 %28, i32 32, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @1, i32 0, i32 0), i64 94019924228656, i32 41, i32 14), !dbg !152
  br i1 %29, label %30, label %33, !dbg !152

; <label>:30:                                     ; preds = %2
  br label %31, !dbg !153, !llvm.loop !155

; <label>:31:                                     ; preds = %30
  call void @gsl_error(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0), i32 43, i32 4), !dbg !156
  store %struct.gsl_sf_mathieu_workspace* null, %struct.gsl_sf_mathieu_workspace** %3, align 8, !dbg !156
  br label %409, !dbg !156
                                                  ; No predecessors!
  br label %33, !dbg !159

; <label>:33:                                     ; preds = %32, %2
  %34 = call noalias i8* @malloc(i64 128) #5, !dbg !160
  %35 = bitcast i8* %34 to %struct.gsl_sf_mathieu_workspace*, !dbg !161
  store %struct.gsl_sf_mathieu_workspace* %35, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !162
  %36 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !163
  %37 = icmp eq %struct.gsl_sf_mathieu_workspace* %36, null, !dbg !165
  br i1 %37, label %38, label %41, !dbg !166

; <label>:38:                                     ; preds = %33
  br label %39, !dbg !167, !llvm.loop !169

; <label>:39:                                     ; preds = %38
  call void @gsl_error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0), i32 50, i32 8), !dbg !170
  store %struct.gsl_sf_mathieu_workspace* null, %struct.gsl_sf_mathieu_workspace** %3, align 8, !dbg !170
  br label %409, !dbg !170
                                                  ; No predecessors!
  br label %41, !dbg !173

; <label>:41:                                     ; preds = %40, %33
  %42 = load i32, i32* %9, align 4, !dbg !174
  %43 = load i32, i32* %7, align 4, !dbg !175
  %44 = add i32 %43, %42, !dbg !175
  store i32 %44, i32* %7, align 4, !dbg !175
  %45 = load i32, i32* %9, align 4, !dbg !176
  %46 = load i32, i32* %8, align 4, !dbg !177
  %47 = add i32 %46, %45, !dbg !177
  store i32 %47, i32* %8, align 4, !dbg !177
  %48 = load i64, i64* %4, align 8, !dbg !178
  %49 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !179
  %50 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %49, i32 0, i32 0, !dbg !180
  store i64 %48, i64* %50, align 8, !dbg !181
  %51 = load i32, i32* %7, align 4, !dbg !182
  %52 = zext i32 %51 to i64, !dbg !182
  %53 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !183
  %54 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %53, i32 0, i32 1, !dbg !184
  store i64 %52, i64* %54, align 8, !dbg !185
  %55 = load i32, i32* %8, align 4, !dbg !186
  %56 = zext i32 %55 to i64, !dbg !186
  %57 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !187
  %58 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %57, i32 0, i32 2, !dbg !188
  store i64 %56, i64* %58, align 8, !dbg !189
  %59 = load i32, i32* %9, align 4, !dbg !190
  %60 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !191
  %61 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %60, i32 0, i32 3, !dbg !192
  store i32 %59, i32* %61, align 8, !dbg !193
  %62 = load i64, i64* %4, align 8, !dbg !194
  %63 = add i64 %62, 1, !dbg !195
  %64 = mul i64 %63, 8, !dbg !196
  %65 = call noalias i8* @malloc(i64 %64) #5, !dbg !197
  %66 = bitcast i8* %65 to double*, !dbg !198
  %67 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !199
  %68 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %67, i32 0, i32 6, !dbg !200
  store double* %66, double** %68, align 8, !dbg !201
  %69 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !202
  %70 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %69, i32 0, i32 6, !dbg !204
  %71 = load double*, double** %70, align 8, !dbg !204
  %72 = icmp eq double* %71, null, !dbg !205
  br i1 %72, label %73, label %78, !dbg !206

; <label>:73:                                     ; preds = %41
  %74 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !207
  %75 = bitcast %struct.gsl_sf_mathieu_workspace* %74 to i8*, !dbg !207
  call void @free(i8* %75) #5, !dbg !209
  br label %76, !dbg !210, !llvm.loop !211

; <label>:76:                                     ; preds = %73
  call void @gsl_error(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0), i32 68, i32 8), !dbg !212
  store %struct.gsl_sf_mathieu_workspace* null, %struct.gsl_sf_mathieu_workspace** %3, align 8, !dbg !212
  br label %409, !dbg !212
                                                  ; No predecessors!
  br label %78, !dbg !215

; <label>:78:                                     ; preds = %77, %41
  %79 = load i64, i64* %4, align 8, !dbg !216
  %80 = add i64 %79, 1, !dbg !217
  %81 = mul i64 %80, 8, !dbg !218
  %82 = call noalias i8* @malloc(i64 %81) #5, !dbg !219
  %83 = bitcast i8* %82 to double*, !dbg !220
  %84 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !221
  %85 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %84, i32 0, i32 7, !dbg !222
  store double* %83, double** %85, align 8, !dbg !223
  %86 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !224
  %87 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %86, i32 0, i32 7, !dbg !226
  %88 = load double*, double** %87, align 8, !dbg !226
  %89 = icmp eq double* %88, null, !dbg !227
  br i1 %89, label %90, label %99, !dbg !228

; <label>:90:                                     ; preds = %78
  %91 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !229
  %92 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %91, i32 0, i32 6, !dbg !231
  %93 = load double*, double** %92, align 8, !dbg !231
  %94 = bitcast double* %93 to i8*, !dbg !229
  call void @free(i8* %94) #5, !dbg !232
  %95 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !233
  %96 = bitcast %struct.gsl_sf_mathieu_workspace* %95 to i8*, !dbg !233
  call void @free(i8* %96) #5, !dbg !234
  br label %97, !dbg !235, !llvm.loop !236

; <label>:97:                                     ; preds = %90
  call void @gsl_error(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0), i32 77, i32 8), !dbg !237
  store %struct.gsl_sf_mathieu_workspace* null, %struct.gsl_sf_mathieu_workspace** %3, align 8, !dbg !237
  br label %409, !dbg !237
                                                  ; No predecessors!
  br label %99, !dbg !240

; <label>:99:                                     ; preds = %98, %78
  %100 = load i32, i32* %7, align 4, !dbg !241
  %101 = zext i32 %100 to i64, !dbg !241
  %102 = mul i64 %101, 8, !dbg !242
  %103 = call noalias i8* @malloc(i64 %102) #5, !dbg !243
  %104 = bitcast i8* %103 to double*, !dbg !244
  %105 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !245
  %106 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %105, i32 0, i32 8, !dbg !246
  store double* %104, double** %106, align 8, !dbg !247
  %107 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !248
  %108 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %107, i32 0, i32 8, !dbg !250
  %109 = load double*, double** %108, align 8, !dbg !250
  %110 = icmp eq double* %109, null, !dbg !251
  br i1 %110, label %111, label %124, !dbg !252

; <label>:111:                                    ; preds = %99
  %112 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !253
  %113 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %112, i32 0, i32 6, !dbg !255
  %114 = load double*, double** %113, align 8, !dbg !255
  %115 = bitcast double* %114 to i8*, !dbg !253
  call void @free(i8* %115) #5, !dbg !256
  %116 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !257
  %117 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %116, i32 0, i32 7, !dbg !258
  %118 = load double*, double** %117, align 8, !dbg !258
  %119 = bitcast double* %118 to i8*, !dbg !257
  call void @free(i8* %119) #5, !dbg !259
  %120 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !260
  %121 = bitcast %struct.gsl_sf_mathieu_workspace* %120 to i8*, !dbg !260
  call void @free(i8* %121) #5, !dbg !261
  br label %122, !dbg !262, !llvm.loop !263

; <label>:122:                                    ; preds = %111
  call void @gsl_error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0), i32 89, i32 8), !dbg !264
  store %struct.gsl_sf_mathieu_workspace* null, %struct.gsl_sf_mathieu_workspace** %3, align 8, !dbg !264
  br label %409, !dbg !264
                                                  ; No predecessors!
  br label %124, !dbg !267

; <label>:124:                                    ; preds = %123, %99
  %125 = load i32, i32* %7, align 4, !dbg !268
  %126 = zext i32 %125 to i64, !dbg !268
  %127 = mul i64 %126, 8, !dbg !269
  %128 = call noalias i8* @malloc(i64 %127) #5, !dbg !270
  %129 = bitcast i8* %128 to double*, !dbg !271
  %130 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !272
  %131 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %130, i32 0, i32 9, !dbg !273
  store double* %129, double** %131, align 8, !dbg !274
  %132 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !275
  %133 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %132, i32 0, i32 9, !dbg !277
  %134 = load double*, double** %133, align 8, !dbg !277
  %135 = icmp eq double* %134, null, !dbg !278
  br i1 %135, label %136, label %153, !dbg !279

; <label>:136:                                    ; preds = %124
  %137 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !280
  %138 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %137, i32 0, i32 8, !dbg !282
  %139 = load double*, double** %138, align 8, !dbg !282
  %140 = bitcast double* %139 to i8*, !dbg !280
  call void @free(i8* %140) #5, !dbg !283
  %141 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !284
  %142 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %141, i32 0, i32 6, !dbg !285
  %143 = load double*, double** %142, align 8, !dbg !285
  %144 = bitcast double* %143 to i8*, !dbg !284
  call void @free(i8* %144) #5, !dbg !286
  %145 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !287
  %146 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %145, i32 0, i32 7, !dbg !288
  %147 = load double*, double** %146, align 8, !dbg !288
  %148 = bitcast double* %147 to i8*, !dbg !287
  call void @free(i8* %148) #5, !dbg !289
  %149 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !290
  %150 = bitcast %struct.gsl_sf_mathieu_workspace* %149 to i8*, !dbg !290
  call void @free(i8* %150) #5, !dbg !291
  br label %151, !dbg !292, !llvm.loop !293

; <label>:151:                                    ; preds = %136
  call void @gsl_error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0), i32 99, i32 8), !dbg !294
  store %struct.gsl_sf_mathieu_workspace* null, %struct.gsl_sf_mathieu_workspace** %3, align 8, !dbg !294
  br label %409, !dbg !294
                                                  ; No predecessors!
  br label %153, !dbg !297

; <label>:153:                                    ; preds = %152, %124
  %154 = load i32, i32* %7, align 4, !dbg !298
  %155 = mul i32 3, %154, !dbg !299
  %156 = zext i32 %155 to i64, !dbg !300
  %157 = mul i64 %156, 8, !dbg !301
  %158 = call noalias i8* @malloc(i64 %157) #5, !dbg !302
  %159 = bitcast i8* %158 to double*, !dbg !303
  %160 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !304
  %161 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %160, i32 0, i32 10, !dbg !305
  store double* %159, double** %161, align 8, !dbg !306
  %162 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !307
  %163 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %162, i32 0, i32 10, !dbg !309
  %164 = load double*, double** %163, align 8, !dbg !309
  %165 = icmp eq double* %164, null, !dbg !310
  br i1 %165, label %166, label %187, !dbg !311

; <label>:166:                                    ; preds = %153
  %167 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !312
  %168 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %167, i32 0, i32 9, !dbg !314
  %169 = load double*, double** %168, align 8, !dbg !314
  %170 = bitcast double* %169 to i8*, !dbg !312
  call void @free(i8* %170) #5, !dbg !315
  %171 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !316
  %172 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %171, i32 0, i32 8, !dbg !317
  %173 = load double*, double** %172, align 8, !dbg !317
  %174 = bitcast double* %173 to i8*, !dbg !316
  call void @free(i8* %174) #5, !dbg !318
  %175 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !319
  %176 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %175, i32 0, i32 6, !dbg !320
  %177 = load double*, double** %176, align 8, !dbg !320
  %178 = bitcast double* %177 to i8*, !dbg !319
  call void @free(i8* %178) #5, !dbg !321
  %179 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !322
  %180 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %179, i32 0, i32 7, !dbg !323
  %181 = load double*, double** %180, align 8, !dbg !323
  %182 = bitcast double* %181 to i8*, !dbg !322
  call void @free(i8* %182) #5, !dbg !324
  %183 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !325
  %184 = bitcast %struct.gsl_sf_mathieu_workspace* %183 to i8*, !dbg !325
  call void @free(i8* %184) #5, !dbg !326
  br label %185, !dbg !327, !llvm.loop !328

; <label>:185:                                    ; preds = %166
  call void @gsl_error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0), i32 110, i32 8), !dbg !329
  store %struct.gsl_sf_mathieu_workspace* null, %struct.gsl_sf_mathieu_workspace** %3, align 8, !dbg !329
  br label %409, !dbg !329
                                                  ; No predecessors!
  br label %187, !dbg !332

; <label>:187:                                    ; preds = %186, %153
  %188 = load i32, i32* %7, align 4, !dbg !333
  %189 = zext i32 %188 to i64, !dbg !333
  %190 = mul i64 %189, 8, !dbg !334
  %191 = call noalias i8* @malloc(i64 %190) #5, !dbg !335
  %192 = bitcast i8* %191 to double*, !dbg !336
  %193 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !337
  %194 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %193, i32 0, i32 11, !dbg !338
  store double* %192, double** %194, align 8, !dbg !339
  %195 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !340
  %196 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %195, i32 0, i32 11, !dbg !342
  %197 = load double*, double** %196, align 8, !dbg !342
  %198 = icmp eq double* %197, null, !dbg !343
  br i1 %198, label %199, label %224, !dbg !344

; <label>:199:                                    ; preds = %187
  %200 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !345
  %201 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %200, i32 0, i32 10, !dbg !347
  %202 = load double*, double** %201, align 8, !dbg !347
  %203 = bitcast double* %202 to i8*, !dbg !345
  call void @free(i8* %203) #5, !dbg !348
  %204 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !349
  %205 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %204, i32 0, i32 9, !dbg !350
  %206 = load double*, double** %205, align 8, !dbg !350
  %207 = bitcast double* %206 to i8*, !dbg !349
  call void @free(i8* %207) #5, !dbg !351
  %208 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !352
  %209 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %208, i32 0, i32 8, !dbg !353
  %210 = load double*, double** %209, align 8, !dbg !353
  %211 = bitcast double* %210 to i8*, !dbg !352
  call void @free(i8* %211) #5, !dbg !354
  %212 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !355
  %213 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %212, i32 0, i32 6, !dbg !356
  %214 = load double*, double** %213, align 8, !dbg !356
  %215 = bitcast double* %214 to i8*, !dbg !355
  call void @free(i8* %215) #5, !dbg !357
  %216 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !358
  %217 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %216, i32 0, i32 7, !dbg !359
  %218 = load double*, double** %217, align 8, !dbg !359
  %219 = bitcast double* %218 to i8*, !dbg !358
  call void @free(i8* %219) #5, !dbg !360
  %220 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !361
  %221 = bitcast %struct.gsl_sf_mathieu_workspace* %220 to i8*, !dbg !361
  call void @free(i8* %221) #5, !dbg !362
  br label %222, !dbg !363, !llvm.loop !364

; <label>:222:                                    ; preds = %199
  call void @gsl_error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0), i32 122, i32 8), !dbg !365
  store %struct.gsl_sf_mathieu_workspace* null, %struct.gsl_sf_mathieu_workspace** %3, align 8, !dbg !365
  br label %409, !dbg !365
                                                  ; No predecessors!
  br label %224, !dbg !368

; <label>:224:                                    ; preds = %223, %187
  %225 = load i32, i32* %7, align 4, !dbg !369
  %226 = load i32, i32* %7, align 4, !dbg !370
  %227 = mul i32 %225, %226, !dbg !371
  %228 = zext i32 %227 to i64, !dbg !369
  %229 = mul i64 %228, 8, !dbg !372
  %230 = call noalias i8* @malloc(i64 %229) #5, !dbg !373
  %231 = bitcast i8* %230 to double*, !dbg !374
  %232 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !375
  %233 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %232, i32 0, i32 12, !dbg !376
  store double* %231, double** %233, align 8, !dbg !377
  %234 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !378
  %235 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %234, i32 0, i32 12, !dbg !380
  %236 = load double*, double** %235, align 8, !dbg !380
  %237 = icmp eq double* %236, null, !dbg !381
  br i1 %237, label %238, label %267, !dbg !382

; <label>:238:                                    ; preds = %224
  %239 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !383
  %240 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %239, i32 0, i32 11, !dbg !385
  %241 = load double*, double** %240, align 8, !dbg !385
  %242 = bitcast double* %241 to i8*, !dbg !383
  call void @free(i8* %242) #5, !dbg !386
  %243 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !387
  %244 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %243, i32 0, i32 10, !dbg !388
  %245 = load double*, double** %244, align 8, !dbg !388
  %246 = bitcast double* %245 to i8*, !dbg !387
  call void @free(i8* %246) #5, !dbg !389
  %247 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !390
  %248 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %247, i32 0, i32 9, !dbg !391
  %249 = load double*, double** %248, align 8, !dbg !391
  %250 = bitcast double* %249 to i8*, !dbg !390
  call void @free(i8* %250) #5, !dbg !392
  %251 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !393
  %252 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %251, i32 0, i32 8, !dbg !394
  %253 = load double*, double** %252, align 8, !dbg !394
  %254 = bitcast double* %253 to i8*, !dbg !393
  call void @free(i8* %254) #5, !dbg !395
  %255 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !396
  %256 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %255, i32 0, i32 6, !dbg !397
  %257 = load double*, double** %256, align 8, !dbg !397
  %258 = bitcast double* %257 to i8*, !dbg !396
  call void @free(i8* %258) #5, !dbg !398
  %259 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !399
  %260 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %259, i32 0, i32 7, !dbg !400
  %261 = load double*, double** %260, align 8, !dbg !400
  %262 = bitcast double* %261 to i8*, !dbg !399
  call void @free(i8* %262) #5, !dbg !401
  %263 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !402
  %264 = bitcast %struct.gsl_sf_mathieu_workspace* %263 to i8*, !dbg !402
  call void @free(i8* %264) #5, !dbg !403
  br label %265, !dbg !404, !llvm.loop !405

; <label>:265:                                    ; preds = %238
  call void @gsl_error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0), i32 135, i32 8), !dbg !406
  store %struct.gsl_sf_mathieu_workspace* null, %struct.gsl_sf_mathieu_workspace** %3, align 8, !dbg !406
  br label %409, !dbg !406
                                                  ; No predecessors!
  br label %267, !dbg !409

; <label>:267:                                    ; preds = %266, %224
  %268 = load i32, i32* %7, align 4, !dbg !410
  %269 = zext i32 %268 to i64, !dbg !410
  %270 = call %struct.gsl_vector* @gsl_vector_alloc(i64 %269), !dbg !411
  %271 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !412
  %272 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %271, i32 0, i32 13, !dbg !413
  store %struct.gsl_vector* %270, %struct.gsl_vector** %272, align 8, !dbg !414
  %273 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !415
  %274 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %273, i32 0, i32 13, !dbg !417
  %275 = load %struct.gsl_vector*, %struct.gsl_vector** %274, align 8, !dbg !417
  %276 = icmp eq %struct.gsl_vector* %275, null, !dbg !418
  br i1 %276, label %277, label %310, !dbg !419

; <label>:277:                                    ; preds = %267
  %278 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !420
  %279 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %278, i32 0, i32 12, !dbg !422
  %280 = load double*, double** %279, align 8, !dbg !422
  %281 = bitcast double* %280 to i8*, !dbg !420
  call void @free(i8* %281) #5, !dbg !423
  %282 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !424
  %283 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %282, i32 0, i32 11, !dbg !425
  %284 = load double*, double** %283, align 8, !dbg !425
  %285 = bitcast double* %284 to i8*, !dbg !424
  call void @free(i8* %285) #5, !dbg !426
  %286 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !427
  %287 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %286, i32 0, i32 10, !dbg !428
  %288 = load double*, double** %287, align 8, !dbg !428
  %289 = bitcast double* %288 to i8*, !dbg !427
  call void @free(i8* %289) #5, !dbg !429
  %290 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !430
  %291 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %290, i32 0, i32 9, !dbg !431
  %292 = load double*, double** %291, align 8, !dbg !431
  %293 = bitcast double* %292 to i8*, !dbg !430
  call void @free(i8* %293) #5, !dbg !432
  %294 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !433
  %295 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %294, i32 0, i32 8, !dbg !434
  %296 = load double*, double** %295, align 8, !dbg !434
  %297 = bitcast double* %296 to i8*, !dbg !433
  call void @free(i8* %297) #5, !dbg !435
  %298 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !436
  %299 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %298, i32 0, i32 6, !dbg !437
  %300 = load double*, double** %299, align 8, !dbg !437
  %301 = bitcast double* %300 to i8*, !dbg !436
  call void @free(i8* %301) #5, !dbg !438
  %302 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !439
  %303 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %302, i32 0, i32 7, !dbg !440
  %304 = load double*, double** %303, align 8, !dbg !440
  %305 = bitcast double* %304 to i8*, !dbg !439
  call void @free(i8* %305) #5, !dbg !441
  %306 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !442
  %307 = bitcast %struct.gsl_sf_mathieu_workspace* %306 to i8*, !dbg !442
  call void @free(i8* %307) #5, !dbg !443
  br label %308, !dbg !444, !llvm.loop !445

; <label>:308:                                    ; preds = %277
  call void @gsl_error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0), i32 150, i32 8), !dbg !446
  store %struct.gsl_sf_mathieu_workspace* null, %struct.gsl_sf_mathieu_workspace** %3, align 8, !dbg !446
  br label %409, !dbg !446
                                                  ; No predecessors!
  br label %310, !dbg !449

; <label>:310:                                    ; preds = %309, %267
  %311 = load i32, i32* %7, align 4, !dbg !450
  %312 = zext i32 %311 to i64, !dbg !450
  %313 = load i32, i32* %7, align 4, !dbg !451
  %314 = zext i32 %313 to i64, !dbg !451
  %315 = call %struct.gsl_matrix* @gsl_matrix_alloc(i64 %312, i64 %314), !dbg !452
  %316 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !453
  %317 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %316, i32 0, i32 14, !dbg !454
  store %struct.gsl_matrix* %315, %struct.gsl_matrix** %317, align 8, !dbg !455
  %318 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !456
  %319 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %318, i32 0, i32 14, !dbg !458
  %320 = load %struct.gsl_matrix*, %struct.gsl_matrix** %319, align 8, !dbg !458
  %321 = icmp eq %struct.gsl_matrix* %320, null, !dbg !459
  br i1 %321, label %322, label %358, !dbg !460

; <label>:322:                                    ; preds = %310
  %323 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !461
  %324 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %323, i32 0, i32 13, !dbg !463
  %325 = load %struct.gsl_vector*, %struct.gsl_vector** %324, align 8, !dbg !463
  call void @gsl_vector_free(%struct.gsl_vector* %325), !dbg !464
  %326 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !465
  %327 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %326, i32 0, i32 12, !dbg !466
  %328 = load double*, double** %327, align 8, !dbg !466
  %329 = bitcast double* %328 to i8*, !dbg !465
  call void @free(i8* %329) #5, !dbg !467
  %330 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !468
  %331 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %330, i32 0, i32 11, !dbg !469
  %332 = load double*, double** %331, align 8, !dbg !469
  %333 = bitcast double* %332 to i8*, !dbg !468
  call void @free(i8* %333) #5, !dbg !470
  %334 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !471
  %335 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %334, i32 0, i32 10, !dbg !472
  %336 = load double*, double** %335, align 8, !dbg !472
  %337 = bitcast double* %336 to i8*, !dbg !471
  call void @free(i8* %337) #5, !dbg !473
  %338 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !474
  %339 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %338, i32 0, i32 9, !dbg !475
  %340 = load double*, double** %339, align 8, !dbg !475
  %341 = bitcast double* %340 to i8*, !dbg !474
  call void @free(i8* %341) #5, !dbg !476
  %342 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !477
  %343 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %342, i32 0, i32 8, !dbg !478
  %344 = load double*, double** %343, align 8, !dbg !478
  %345 = bitcast double* %344 to i8*, !dbg !477
  call void @free(i8* %345) #5, !dbg !479
  %346 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !480
  %347 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %346, i32 0, i32 6, !dbg !481
  %348 = load double*, double** %347, align 8, !dbg !481
  %349 = bitcast double* %348 to i8*, !dbg !480
  call void @free(i8* %349) #5, !dbg !482
  %350 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !483
  %351 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %350, i32 0, i32 7, !dbg !484
  %352 = load double*, double** %351, align 8, !dbg !484
  %353 = bitcast double* %352 to i8*, !dbg !483
  call void @free(i8* %353) #5, !dbg !485
  %354 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !486
  %355 = bitcast %struct.gsl_sf_mathieu_workspace* %354 to i8*, !dbg !486
  call void @free(i8* %355) #5, !dbg !487
  br label %356, !dbg !488, !llvm.loop !489

; <label>:356:                                    ; preds = %322
  call void @gsl_error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0), i32 166, i32 8), !dbg !490
  store %struct.gsl_sf_mathieu_workspace* null, %struct.gsl_sf_mathieu_workspace** %3, align 8, !dbg !490
  br label %409, !dbg !490
                                                  ; No predecessors!
  br label %358, !dbg !493

; <label>:358:                                    ; preds = %357, %310
  %359 = load i32, i32* %7, align 4, !dbg !494
  %360 = zext i32 %359 to i64, !dbg !494
  %361 = call %struct.gsl_eigen_symmv_workspace* @gsl_eigen_symmv_alloc(i64 %360), !dbg !495
  %362 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !496
  %363 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %362, i32 0, i32 15, !dbg !497
  store %struct.gsl_eigen_symmv_workspace* %361, %struct.gsl_eigen_symmv_workspace** %363, align 8, !dbg !498
  %364 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !499
  %365 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %364, i32 0, i32 15, !dbg !501
  %366 = load %struct.gsl_eigen_symmv_workspace*, %struct.gsl_eigen_symmv_workspace** %365, align 8, !dbg !501
  %367 = icmp eq %struct.gsl_eigen_symmv_workspace* %366, null, !dbg !502
  br i1 %367, label %368, label %407, !dbg !503

; <label>:368:                                    ; preds = %358
  %369 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !504
  %370 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %369, i32 0, i32 14, !dbg !506
  %371 = load %struct.gsl_matrix*, %struct.gsl_matrix** %370, align 8, !dbg !506
  call void @gsl_matrix_free(%struct.gsl_matrix* %371), !dbg !507
  %372 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !508
  %373 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %372, i32 0, i32 13, !dbg !509
  %374 = load %struct.gsl_vector*, %struct.gsl_vector** %373, align 8, !dbg !509
  call void @gsl_vector_free(%struct.gsl_vector* %374), !dbg !510
  %375 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !511
  %376 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %375, i32 0, i32 12, !dbg !512
  %377 = load double*, double** %376, align 8, !dbg !512
  %378 = bitcast double* %377 to i8*, !dbg !511
  call void @free(i8* %378) #5, !dbg !513
  %379 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !514
  %380 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %379, i32 0, i32 11, !dbg !515
  %381 = load double*, double** %380, align 8, !dbg !515
  %382 = bitcast double* %381 to i8*, !dbg !514
  call void @free(i8* %382) #5, !dbg !516
  %383 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !517
  %384 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %383, i32 0, i32 10, !dbg !518
  %385 = load double*, double** %384, align 8, !dbg !518
  %386 = bitcast double* %385 to i8*, !dbg !517
  call void @free(i8* %386) #5, !dbg !519
  %387 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !520
  %388 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %387, i32 0, i32 9, !dbg !521
  %389 = load double*, double** %388, align 8, !dbg !521
  %390 = bitcast double* %389 to i8*, !dbg !520
  call void @free(i8* %390) #5, !dbg !522
  %391 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !523
  %392 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %391, i32 0, i32 8, !dbg !524
  %393 = load double*, double** %392, align 8, !dbg !524
  %394 = bitcast double* %393 to i8*, !dbg !523
  call void @free(i8* %394) #5, !dbg !525
  %395 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !526
  %396 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %395, i32 0, i32 6, !dbg !527
  %397 = load double*, double** %396, align 8, !dbg !527
  %398 = bitcast double* %397 to i8*, !dbg !526
  call void @free(i8* %398) #5, !dbg !528
  %399 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !529
  %400 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %399, i32 0, i32 7, !dbg !530
  %401 = load double*, double** %400, align 8, !dbg !530
  %402 = bitcast double* %401 to i8*, !dbg !529
  call void @free(i8* %402) #5, !dbg !531
  %403 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !532
  %404 = bitcast %struct.gsl_sf_mathieu_workspace* %403 to i8*, !dbg !532
  call void @free(i8* %404) #5, !dbg !533
  br label %405, !dbg !534, !llvm.loop !535

; <label>:405:                                    ; preds = %368
  call void @gsl_error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0), i32 183, i32 8), !dbg !536
  store %struct.gsl_sf_mathieu_workspace* null, %struct.gsl_sf_mathieu_workspace** %3, align 8, !dbg !536
  br label %409, !dbg !536
                                                  ; No predecessors!
  br label %407, !dbg !539

; <label>:407:                                    ; preds = %406, %358
  %408 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %6, align 8, !dbg !540
  store %struct.gsl_sf_mathieu_workspace* %408, %struct.gsl_sf_mathieu_workspace** %3, align 8, !dbg !541
  br label %409, !dbg !541

; <label>:409:                                    ; preds = %407, %405, %356, %308, %265, %222, %185, %151, %122, %97, %76, %39, %31
  %410 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %3, align 8, !dbg !542
  ret %struct.gsl_sf_mathieu_workspace* %410, !dbg !542
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
