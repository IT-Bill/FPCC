; ModuleID = 'coupling.c'
source_filename = "coupling.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsl_sf_result_struct = type { double, double }

@.str = private unnamed_addr constant [13 x i8] c"domain error\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"coupling.c\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"overflow\00", align 1
@.str.3 = private unnamed_addr constant [78 x i8] c"gsl_sf_coupling_3j_e(two_ja, two_jb, two_jc, two_ma, two_mb, two_mc, &result)\00", align 1
@.str.4 = private unnamed_addr constant [78 x i8] c"gsl_sf_coupling_6j_e(two_ja, two_jb, two_jc, two_jd, two_je, two_jf, &result)\00", align 1
@.str.5 = private unnamed_addr constant [82 x i8] c"gsl_sf_coupling_RacahW_e(two_ja, two_jb, two_jc, two_jd, two_je, two_jf, &result)\00", align 1
@.str.6 = private unnamed_addr constant [102 x i8] c"gsl_sf_coupling_9j_e(two_ja, two_jb, two_jc, two_jd, two_je, two_jf, two_jg, two_jh, two_ji, &result)\00", align 1

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_coupling_3j_e(i32, i32, i32, i32, i32, i32, %struct.gsl_sf_result_struct*) #0 !dbg !45 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.gsl_sf_result_struct*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca double, align 8
  %32 = alloca double, align 8
  %33 = alloca double, align 8
  %34 = alloca %struct.gsl_sf_result_struct, align 8
  %35 = alloca %struct.gsl_sf_result_struct, align 8
  %36 = alloca %struct.gsl_sf_result_struct, align 8
  %37 = alloca %struct.gsl_sf_result_struct, align 8
  %38 = alloca %struct.gsl_sf_result_struct, align 8
  %39 = alloca %struct.gsl_sf_result_struct, align 8
  %40 = alloca %struct.gsl_sf_result_struct, align 8
  %41 = alloca %struct.gsl_sf_result_struct, align 8
  %42 = alloca %struct.gsl_sf_result_struct, align 8
  %43 = alloca %struct.gsl_sf_result_struct, align 8
  %44 = alloca %struct.gsl_sf_result_struct, align 8
  store i32 %0, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !58, metadata !59), !dbg !60
  store i32 %1, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !61, metadata !59), !dbg !62
  store i32 %2, i32* %11, align 4
  call void @llvm.dbg.declare(metadata i32* %11, metadata !63, metadata !59), !dbg !64
  store i32 %3, i32* %12, align 4
  call void @llvm.dbg.declare(metadata i32* %12, metadata !65, metadata !59), !dbg !66
  store i32 %4, i32* %13, align 4
  call void @llvm.dbg.declare(metadata i32* %13, metadata !67, metadata !59), !dbg !68
  store i32 %5, i32* %14, align 4
  call void @llvm.dbg.declare(metadata i32* %14, metadata !69, metadata !59), !dbg !70
  store %struct.gsl_sf_result_struct* %6, %struct.gsl_sf_result_struct** %15, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %15, metadata !71, metadata !59), !dbg !72
  %45 = load i32, i32* %9, align 4, !dbg !73
  %46 = icmp slt i32 %45, 0, !dbg !75
  br i1 %46, label %53, label %47, !dbg !76

; <label>:47:                                     ; preds = %7
  %48 = load i32, i32* %10, align 4, !dbg !77
  %49 = icmp slt i32 %48, 0, !dbg !79
  br i1 %49, label %53, label %50, !dbg !80

; <label>:50:                                     ; preds = %47
  %51 = load i32, i32* %11, align 4, !dbg !81
  %52 = icmp slt i32 %51, 0, !dbg !83
  br i1 %52, label %53, label %62, !dbg !84

; <label>:53:                                     ; preds = %50, %47, %7
  br label %54, !dbg !85, !llvm.loop !87

; <label>:54:                                     ; preds = %53
  %55 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %15, align 8, !dbg !88
  %56 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %55, i32 0, i32 0, !dbg !88
  store double 0x7FF8000000000000, double* %56, align 8, !dbg !88
  %57 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %15, align 8, !dbg !88
  %58 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %57, i32 0, i32 1, !dbg !88
  store double 0x7FF8000000000000, double* %58, align 8, !dbg !88
  br label %59, !dbg !88, !llvm.loop !91

; <label>:59:                                     ; preds = %54
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 120, i32 1), !dbg !93
  store i32 1, i32* %8, align 4, !dbg !93
  br label %368, !dbg !93
                                                  ; No predecessors!
  br label %61, !dbg !96

; <label>:61:                                     ; preds = %60
  br label %368, !dbg !98

; <label>:62:                                     ; preds = %50
  %63 = load i32, i32* %9, align 4, !dbg !99
  %64 = load i32, i32* %10, align 4, !dbg !101
  %65 = load i32, i32* %11, align 4, !dbg !102
  %66 = call i32 @triangle_selection_fails(i32 %63, i32 %64, i32 %65), !dbg !103
  %67 = icmp ne i32 %66, 0, !dbg !103
  br i1 %67, label %77, label %68, !dbg !104

; <label>:68:                                     ; preds = %62
  %69 = load i32, i32* %9, align 4, !dbg !105
  %70 = load i32, i32* %10, align 4, !dbg !107
  %71 = load i32, i32* %11, align 4, !dbg !108
  %72 = load i32, i32* %12, align 4, !dbg !109
  %73 = load i32, i32* %13, align 4, !dbg !110
  %74 = load i32, i32* %14, align 4, !dbg !111
  %75 = call i32 @m_selection_fails(i32 %69, i32 %70, i32 %71, i32 %72, i32 %73, i32 %74), !dbg !112
  %76 = icmp ne i32 %75, 0, !dbg !112
  br i1 %76, label %77, label %82, !dbg !113

; <label>:77:                                     ; preds = %68, %62
  %78 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %15, align 8, !dbg !114
  %79 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %78, i32 0, i32 0, !dbg !116
  store double 0.000000e+00, double* %79, align 8, !dbg !117
  %80 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %15, align 8, !dbg !118
  %81 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %80, i32 0, i32 1, !dbg !119
  store double 0.000000e+00, double* %81, align 8, !dbg !120
  store i32 0, i32* %8, align 4, !dbg !121
  br label %368, !dbg !121

; <label>:82:                                     ; preds = %68
  %83 = load i32, i32* %12, align 4, !dbg !122
  %84 = icmp eq i32 %83, 0, !dbg !124
  br i1 %84, label %85, label %104, !dbg !125

; <label>:85:                                     ; preds = %82
  %86 = load i32, i32* %13, align 4, !dbg !126
  %87 = icmp eq i32 %86, 0, !dbg !128
  br i1 %87, label %88, label %104, !dbg !129

; <label>:88:                                     ; preds = %85
  %89 = load i32, i32* %14, align 4, !dbg !130
  %90 = icmp eq i32 %89, 0, !dbg !132
  br i1 %90, label %91, label %104, !dbg !133

; <label>:91:                                     ; preds = %88
  %92 = load i32, i32* %9, align 4, !dbg !134
  %93 = load i32, i32* %10, align 4, !dbg !135
  %94 = add nsw i32 %92, %93, !dbg !136
  %95 = load i32, i32* %11, align 4, !dbg !137
  %96 = add nsw i32 %94, %95, !dbg !138
  %97 = srem i32 %96, 4, !dbg !139
  %98 = icmp eq i32 %97, 2, !dbg !140
  br i1 %98, label %99, label %104, !dbg !141

; <label>:99:                                     ; preds = %91
  %100 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %15, align 8, !dbg !143
  %101 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %100, i32 0, i32 0, !dbg !145
  store double 0.000000e+00, double* %101, align 8, !dbg !146
  %102 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %15, align 8, !dbg !147
  %103 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %102, i32 0, i32 1, !dbg !148
  store double 0.000000e+00, double* %103, align 8, !dbg !149
  store i32 0, i32* %8, align 4, !dbg !150
  br label %368, !dbg !150

; <label>:104:                                    ; preds = %91, %88, %85, %82
  call void @llvm.dbg.declare(metadata i32* %16, metadata !151, metadata !59), !dbg !153
  %105 = load i32, i32* %9, align 4, !dbg !154
  %106 = sub nsw i32 0, %105, !dbg !155
  %107 = load i32, i32* %10, align 4, !dbg !156
  %108 = add nsw i32 %106, %107, !dbg !157
  %109 = load i32, i32* %11, align 4, !dbg !158
  %110 = add nsw i32 %108, %109, !dbg !159
  %111 = sdiv i32 %110, 2, !dbg !160
  store i32 %111, i32* %16, align 4, !dbg !153
  call void @llvm.dbg.declare(metadata i32* %17, metadata !161, metadata !59), !dbg !162
  %112 = load i32, i32* %9, align 4, !dbg !163
  %113 = load i32, i32* %10, align 4, !dbg !164
  %114 = sub nsw i32 %112, %113, !dbg !165
  %115 = load i32, i32* %11, align 4, !dbg !166
  %116 = add nsw i32 %114, %115, !dbg !167
  %117 = sdiv i32 %116, 2, !dbg !168
  store i32 %117, i32* %17, align 4, !dbg !162
  call void @llvm.dbg.declare(metadata i32* %18, metadata !169, metadata !59), !dbg !170
  %118 = load i32, i32* %9, align 4, !dbg !171
  %119 = load i32, i32* %10, align 4, !dbg !172
  %120 = add nsw i32 %118, %119, !dbg !173
  %121 = load i32, i32* %11, align 4, !dbg !174
  %122 = sub nsw i32 %120, %121, !dbg !175
  %123 = sdiv i32 %122, 2, !dbg !176
  store i32 %123, i32* %18, align 4, !dbg !170
  call void @llvm.dbg.declare(metadata i32* %19, metadata !177, metadata !59), !dbg !178
  %124 = load i32, i32* %9, align 4, !dbg !179
  %125 = load i32, i32* %12, align 4, !dbg !180
  %126 = sub nsw i32 %124, %125, !dbg !181
  %127 = sdiv i32 %126, 2, !dbg !182
  store i32 %127, i32* %19, align 4, !dbg !178
  call void @llvm.dbg.declare(metadata i32* %20, metadata !183, metadata !59), !dbg !184
  %128 = load i32, i32* %10, align 4, !dbg !185
  %129 = load i32, i32* %13, align 4, !dbg !186
  %130 = sub nsw i32 %128, %129, !dbg !187
  %131 = sdiv i32 %130, 2, !dbg !188
  store i32 %131, i32* %20, align 4, !dbg !184
  call void @llvm.dbg.declare(metadata i32* %21, metadata !189, metadata !59), !dbg !190
  %132 = load i32, i32* %11, align 4, !dbg !191
  %133 = load i32, i32* %14, align 4, !dbg !192
  %134 = sub nsw i32 %132, %133, !dbg !193
  %135 = sdiv i32 %134, 2, !dbg !194
  store i32 %135, i32* %21, align 4, !dbg !190
  call void @llvm.dbg.declare(metadata i32* %22, metadata !195, metadata !59), !dbg !196
  %136 = load i32, i32* %9, align 4, !dbg !197
  %137 = load i32, i32* %12, align 4, !dbg !198
  %138 = add nsw i32 %136, %137, !dbg !199
  %139 = sdiv i32 %138, 2, !dbg !200
  store i32 %139, i32* %22, align 4, !dbg !196
  call void @llvm.dbg.declare(metadata i32* %23, metadata !201, metadata !59), !dbg !202
  %140 = load i32, i32* %10, align 4, !dbg !203
  %141 = load i32, i32* %13, align 4, !dbg !204
  %142 = add nsw i32 %140, %141, !dbg !205
  %143 = sdiv i32 %142, 2, !dbg !206
  store i32 %143, i32* %23, align 4, !dbg !202
  call void @llvm.dbg.declare(metadata i32* %24, metadata !207, metadata !59), !dbg !208
  %144 = load i32, i32* %11, align 4, !dbg !209
  %145 = load i32, i32* %14, align 4, !dbg !210
  %146 = add nsw i32 %144, %145, !dbg !211
  %147 = sdiv i32 %146, 2, !dbg !212
  store i32 %147, i32* %24, align 4, !dbg !208
  call void @llvm.dbg.declare(metadata i32* %25, metadata !213, metadata !59), !dbg !214
  %148 = load i32, i32* %9, align 4, !dbg !215
  %149 = load i32, i32* %10, align 4, !dbg !216
  %150 = add nsw i32 %148, %149, !dbg !217
  %151 = load i32, i32* %11, align 4, !dbg !218
  %152 = add nsw i32 %150, %151, !dbg !219
  %153 = sdiv i32 %152, 2, !dbg !220
  store i32 %153, i32* %25, align 4, !dbg !214
  call void @llvm.dbg.declare(metadata i32* %26, metadata !221, metadata !59), !dbg !222
  %154 = load i32, i32* %23, align 4, !dbg !223
  %155 = load i32, i32* %21, align 4, !dbg !224
  %156 = sub nsw i32 %154, %155, !dbg !225
  %157 = load i32, i32* %19, align 4, !dbg !226
  %158 = load i32, i32* %24, align 4, !dbg !227
  %159 = sub nsw i32 %157, %158, !dbg !228
  %160 = call i32 @locMax3(i32 0, i32 %156, i32 %159), !dbg !229
  store i32 %160, i32* %26, align 4, !dbg !222
  call void @llvm.dbg.declare(metadata i32* %27, metadata !230, metadata !59), !dbg !231
  %161 = load i32, i32* %18, align 4, !dbg !232
  %162 = load i32, i32* %19, align 4, !dbg !233
  %163 = load i32, i32* %23, align 4, !dbg !234
  %164 = call i32 @locMin3(i32 %161, i32 %162, i32 %163), !dbg !235
  store i32 %164, i32* %27, align 4, !dbg !231
  call void @llvm.dbg.declare(metadata i32* %28, metadata !236, metadata !59), !dbg !237
  call void @llvm.dbg.declare(metadata i32* %29, metadata !238, metadata !59), !dbg !239
  %165 = load i32, i32* %26, align 4, !dbg !240
  %166 = load i32, i32* %22, align 4, !dbg !240
  %167 = sub nsw i32 %165, %166, !dbg !240
  %168 = load i32, i32* %20, align 4, !dbg !240
  %169 = add nsw i32 %167, %168, !dbg !240
  %170 = and i32 %169, 1, !dbg !240
  %171 = icmp ne i32 %170, 0, !dbg !240
  %172 = select i1 %171, i32 -1, i32 1, !dbg !240
  store i32 %172, i32* %29, align 4, !dbg !239
  call void @llvm.dbg.declare(metadata i32* %30, metadata !241, metadata !59), !dbg !242
  store i32 0, i32* %30, align 4, !dbg !242
  call void @llvm.dbg.declare(metadata double* %31, metadata !243, metadata !59), !dbg !244
  store double 0.000000e+00, double* %31, align 8, !dbg !244
  call void @llvm.dbg.declare(metadata double* %32, metadata !245, metadata !59), !dbg !246
  store double 0.000000e+00, double* %32, align 8, !dbg !246
  call void @llvm.dbg.declare(metadata double* %33, metadata !247, metadata !59), !dbg !248
  store double 0.000000e+00, double* %33, align 8, !dbg !248
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %34, metadata !249, metadata !59), !dbg !250
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %35, metadata !251, metadata !59), !dbg !252
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %36, metadata !253, metadata !59), !dbg !254
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %37, metadata !255, metadata !59), !dbg !256
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %38, metadata !257, metadata !59), !dbg !258
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %39, metadata !259, metadata !59), !dbg !260
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %40, metadata !261, metadata !59), !dbg !262
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %41, metadata !263, metadata !59), !dbg !264
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %42, metadata !265, metadata !59), !dbg !266
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %43, metadata !267, metadata !59), !dbg !268
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %44, metadata !269, metadata !59), !dbg !270
  %173 = load i32, i32* %9, align 4, !dbg !271
  %174 = load i32, i32* %18, align 4, !dbg !272
  %175 = call i32 @gsl_sf_lnchoose_e(i32 %173, i32 %174, %struct.gsl_sf_result_struct* %37), !dbg !273
  %176 = load i32, i32* %30, align 4, !dbg !274
  %177 = add nsw i32 %176, %175, !dbg !274
  store i32 %177, i32* %30, align 4, !dbg !274
  %178 = load i32, i32* %10, align 4, !dbg !275
  %179 = load i32, i32* %18, align 4, !dbg !276
  %180 = call i32 @gsl_sf_lnchoose_e(i32 %178, i32 %179, %struct.gsl_sf_result_struct* %38), !dbg !277
  %181 = load i32, i32* %30, align 4, !dbg !278
  %182 = add nsw i32 %181, %180, !dbg !278
  store i32 %182, i32* %30, align 4, !dbg !278
  %183 = load i32, i32* %25, align 4, !dbg !279
  %184 = add nsw i32 %183, 1, !dbg !280
  %185 = load i32, i32* %18, align 4, !dbg !281
  %186 = call i32 @gsl_sf_lnchoose_e(i32 %184, i32 %185, %struct.gsl_sf_result_struct* %39), !dbg !282
  %187 = load i32, i32* %30, align 4, !dbg !283
  %188 = add nsw i32 %187, %186, !dbg !283
  store i32 %188, i32* %30, align 4, !dbg !283
  %189 = load i32, i32* %9, align 4, !dbg !284
  %190 = load i32, i32* %19, align 4, !dbg !285
  %191 = call i32 @gsl_sf_lnchoose_e(i32 %189, i32 %190, %struct.gsl_sf_result_struct* %40), !dbg !286
  %192 = load i32, i32* %30, align 4, !dbg !287
  %193 = add nsw i32 %192, %191, !dbg !287
  store i32 %193, i32* %30, align 4, !dbg !287
  %194 = load i32, i32* %10, align 4, !dbg !288
  %195 = load i32, i32* %20, align 4, !dbg !289
  %196 = call i32 @gsl_sf_lnchoose_e(i32 %194, i32 %195, %struct.gsl_sf_result_struct* %41), !dbg !290
  %197 = load i32, i32* %30, align 4, !dbg !291
  %198 = add nsw i32 %197, %196, !dbg !291
  store i32 %198, i32* %30, align 4, !dbg !291
  %199 = load i32, i32* %11, align 4, !dbg !292
  %200 = load i32, i32* %24, align 4, !dbg !293
  %201 = call i32 @gsl_sf_lnchoose_e(i32 %199, i32 %200, %struct.gsl_sf_result_struct* %42), !dbg !294
  %202 = load i32, i32* %30, align 4, !dbg !295
  %203 = add nsw i32 %202, %201, !dbg !295
  store i32 %203, i32* %30, align 4, !dbg !295
  %204 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %37, i32 0, i32 0, !dbg !296
  %205 = load double, double* %204, align 8, !dbg !296
  %206 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %38, i32 0, i32 0, !dbg !297
  %207 = load double, double* %206, align 8, !dbg !297
  %208 = fadd double %205, %207, !dbg !298
  %209 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %39, i32 0, i32 0, !dbg !299
  %210 = load double, double* %209, align 8, !dbg !299
  %211 = fsub double %208, %210, !dbg !300
  %212 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %40, i32 0, i32 0, !dbg !301
  %213 = load double, double* %212, align 8, !dbg !301
  %214 = fsub double %211, %213, !dbg !302
  %215 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %41, i32 0, i32 0, !dbg !303
  %216 = load double, double* %215, align 8, !dbg !303
  %217 = fsub double %214, %216, !dbg !304
  %218 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %42, i32 0, i32 0, !dbg !305
  %219 = load double, double* %218, align 8, !dbg !305
  %220 = fsub double %217, %219, !dbg !306
  %221 = load i32, i32* %11, align 4, !dbg !307
  %222 = sitofp i32 %221 to double, !dbg !307
  %223 = fadd double %222, 1.000000e+00, !dbg !308
  %224 = call double @log(double %223) #6, !dbg !309
  %225 = fsub double %220, %224, !dbg !310
  %226 = fmul double 5.000000e-01, %225, !dbg !311
  %227 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %44, i32 0, i32 0, !dbg !312
  store double %226, double* %227, align 8, !dbg !313
  %228 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %37, i32 0, i32 1, !dbg !314
  %229 = load double, double* %228, align 8, !dbg !314
  %230 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %38, i32 0, i32 1, !dbg !315
  %231 = load double, double* %230, align 8, !dbg !315
  %232 = fadd double %229, %231, !dbg !316
  %233 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %39, i32 0, i32 1, !dbg !317
  %234 = load double, double* %233, align 8, !dbg !317
  %235 = fadd double %232, %234, !dbg !318
  %236 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %40, i32 0, i32 1, !dbg !319
  %237 = load double, double* %236, align 8, !dbg !319
  %238 = fadd double %235, %237, !dbg !320
  %239 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %41, i32 0, i32 1, !dbg !321
  %240 = load double, double* %239, align 8, !dbg !321
  %241 = fadd double %238, %240, !dbg !322
  %242 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %42, i32 0, i32 1, !dbg !323
  %243 = load double, double* %242, align 8, !dbg !323
  %244 = fadd double %241, %243, !dbg !324
  %245 = load i32, i32* %11, align 4, !dbg !325
  %246 = sitofp i32 %245 to double, !dbg !325
  %247 = fadd double %246, 1.000000e+00, !dbg !326
  %248 = call double @log(double %247) #6, !dbg !327
  %249 = fmul double 0x3CB0000000000000, %248, !dbg !328
  %250 = fadd double %244, %249, !dbg !329
  %251 = fmul double 5.000000e-01, %250, !dbg !330
  %252 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %44, i32 0, i32 1, !dbg !331
  store double %251, double* %252, align 8, !dbg !332
  %253 = load i32, i32* %26, align 4, !dbg !333
  store i32 %253, i32* %28, align 4, !dbg !335
  br label %254, !dbg !336

; <label>:254:                                    ; preds = %334, %104
  %255 = load i32, i32* %28, align 4, !dbg !337
  %256 = load i32, i32* %27, align 4, !dbg !340
  %257 = icmp sle i32 %255, %256, !dbg !341
  br i1 %257, label %258, label %337, !dbg !342

; <label>:258:                                    ; preds = %254
  %259 = load i32, i32* %18, align 4, !dbg !343
  %260 = load i32, i32* %28, align 4, !dbg !345
  %261 = call i32 @gsl_sf_lnchoose_e(i32 %259, i32 %260, %struct.gsl_sf_result_struct* %34), !dbg !346
  %262 = load i32, i32* %30, align 4, !dbg !347
  %263 = add nsw i32 %262, %261, !dbg !347
  store i32 %263, i32* %30, align 4, !dbg !347
  %264 = load i32, i32* %17, align 4, !dbg !348
  %265 = load i32, i32* %19, align 4, !dbg !349
  %266 = load i32, i32* %28, align 4, !dbg !350
  %267 = sub nsw i32 %265, %266, !dbg !351
  %268 = call i32 @gsl_sf_lnchoose_e(i32 %264, i32 %267, %struct.gsl_sf_result_struct* %35), !dbg !352
  %269 = load i32, i32* %30, align 4, !dbg !353
  %270 = add nsw i32 %269, %268, !dbg !353
  store i32 %270, i32* %30, align 4, !dbg !353
  %271 = load i32, i32* %16, align 4, !dbg !354
  %272 = load i32, i32* %23, align 4, !dbg !355
  %273 = load i32, i32* %28, align 4, !dbg !356
  %274 = sub nsw i32 %272, %273, !dbg !357
  %275 = call i32 @gsl_sf_lnchoose_e(i32 %271, i32 %274, %struct.gsl_sf_result_struct* %36), !dbg !358
  %276 = load i32, i32* %30, align 4, !dbg !359
  %277 = add nsw i32 %276, %275, !dbg !359
  store i32 %277, i32* %30, align 4, !dbg !359
  %278 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %34, i32 0, i32 0, !dbg !360
  %279 = load double, double* %278, align 8, !dbg !360
  %280 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %35, i32 0, i32 0, !dbg !361
  %281 = load double, double* %280, align 8, !dbg !361
  %282 = fadd double %279, %281, !dbg !362
  %283 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %36, i32 0, i32 0, !dbg !363
  %284 = load double, double* %283, align 8, !dbg !363
  %285 = fadd double %282, %284, !dbg !364
  %286 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %44, i32 0, i32 0, !dbg !365
  %287 = load double, double* %286, align 8, !dbg !365
  %288 = fadd double %285, %287, !dbg !366
  %289 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %34, i32 0, i32 1, !dbg !367
  %290 = load double, double* %289, align 8, !dbg !367
  %291 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %35, i32 0, i32 1, !dbg !368
  %292 = load double, double* %291, align 8, !dbg !368
  %293 = fadd double %290, %292, !dbg !369
  %294 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %36, i32 0, i32 1, !dbg !370
  %295 = load double, double* %294, align 8, !dbg !370
  %296 = fadd double %293, %295, !dbg !371
  %297 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %44, i32 0, i32 1, !dbg !372
  %298 = load double, double* %297, align 8, !dbg !372
  %299 = fadd double %296, %298, !dbg !373
  %300 = call i32 @gsl_sf_exp_err_e(double %288, double %299, %struct.gsl_sf_result_struct* %43), !dbg !374
  %301 = load i32, i32* %30, align 4, !dbg !375
  %302 = add nsw i32 %301, %300, !dbg !375
  store i32 %302, i32* %30, align 4, !dbg !375
  %303 = load i32, i32* %30, align 4, !dbg !376
  %304 = icmp ne i32 %303, 0, !dbg !378
  br i1 %304, label %305, label %314, !dbg !379

; <label>:305:                                    ; preds = %258
  br label %306, !dbg !380, !llvm.loop !382

; <label>:306:                                    ; preds = %305
  %307 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %15, align 8, !dbg !383
  %308 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %307, i32 0, i32 0, !dbg !383
  store double 0x7FF0000000000000, double* %308, align 8, !dbg !383
  %309 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %15, align 8, !dbg !383
  %310 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %309, i32 0, i32 1, !dbg !383
  store double 0x7FF0000000000000, double* %310, align 8, !dbg !383
  br label %311, !dbg !383, !llvm.loop !386

; <label>:311:                                    ; preds = %306
  call void @gsl_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 175, i32 16), !dbg !388
  store i32 16, i32* %8, align 4, !dbg !388
  br label %368, !dbg !388
                                                  ; No predecessors!
  br label %313, !dbg !391

; <label>:313:                                    ; preds = %312
  br label %314, !dbg !393

; <label>:314:                                    ; preds = %313, %258
  %315 = load i32, i32* %29, align 4, !dbg !394
  %316 = icmp slt i32 %315, 0, !dbg !396
  br i1 %316, label %317, label %322, !dbg !397

; <label>:317:                                    ; preds = %314
  %318 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %43, i32 0, i32 0, !dbg !398
  %319 = load double, double* %318, align 8, !dbg !398
  %320 = load double, double* %32, align 8, !dbg !400
  %321 = fadd double %320, %319, !dbg !400
  store double %321, double* %32, align 8, !dbg !400
  br label %327, !dbg !401

; <label>:322:                                    ; preds = %314
  %323 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %43, i32 0, i32 0, !dbg !402
  %324 = load double, double* %323, align 8, !dbg !402
  %325 = load double, double* %31, align 8, !dbg !404
  %326 = fadd double %325, %324, !dbg !404
  store double %326, double* %31, align 8, !dbg !404
  br label %327

; <label>:327:                                    ; preds = %322, %317
  %328 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %43, i32 0, i32 1, !dbg !405
  %329 = load double, double* %328, align 8, !dbg !405
  %330 = load double, double* %33, align 8, !dbg !406
  %331 = fadd double %330, %329, !dbg !406
  store double %331, double* %33, align 8, !dbg !406
  %332 = load i32, i32* %29, align 4, !dbg !407
  %333 = sub nsw i32 0, %332, !dbg !408
  store i32 %333, i32* %29, align 4, !dbg !409
  br label %334, !dbg !410

; <label>:334:                                    ; preds = %327
  %335 = load i32, i32* %28, align 4, !dbg !411
  %336 = add nsw i32 %335, 1, !dbg !411
  store i32 %336, i32* %28, align 4, !dbg !411
  br label %254, !dbg !413, !llvm.loop !414

; <label>:337:                                    ; preds = %254
  %338 = load double, double* %31, align 8, !dbg !416
  %339 = load double, double* %32, align 8, !dbg !417
  %340 = fsub double %338, %339, !dbg !418
  %341 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %15, align 8, !dbg !419
  %342 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %341, i32 0, i32 0, !dbg !420
  store double %340, double* %342, align 8, !dbg !421
  %343 = load double, double* %33, align 8, !dbg !422
  %344 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %15, align 8, !dbg !423
  %345 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %344, i32 0, i32 1, !dbg !424
  store double %343, double* %345, align 8, !dbg !425
  %346 = load double, double* %31, align 8, !dbg !426
  %347 = load double, double* %32, align 8, !dbg !427
  %348 = fadd double %346, %347, !dbg !428
  %349 = fmul double 0x3CC0000000000000, %348, !dbg !429
  %350 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %15, align 8, !dbg !430
  %351 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %350, i32 0, i32 1, !dbg !431
  %352 = load double, double* %351, align 8, !dbg !432
  %353 = fadd double %352, %349, !dbg !432
  store double %353, double* %351, align 8, !dbg !432
  %354 = load i32, i32* %27, align 4, !dbg !433
  %355 = load i32, i32* %26, align 4, !dbg !434
  %356 = sub nsw i32 %354, %355, !dbg !435
  %357 = sitofp i32 %356 to double, !dbg !436
  %358 = fmul double 0x3CC0000000000000, %357, !dbg !437
  %359 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %15, align 8, !dbg !438
  %360 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %359, i32 0, i32 0, !dbg !439
  %361 = load double, double* %360, align 8, !dbg !439
  %362 = call double @fabs(double %361) #1, !dbg !440
  %363 = fmul double %358, %362, !dbg !441
  %364 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %15, align 8, !dbg !442
  %365 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %364, i32 0, i32 1, !dbg !443
  %366 = load double, double* %365, align 8, !dbg !444
  %367 = fadd double %366, %363, !dbg !444
  store double %367, double* %365, align 8, !dbg !444
  store i32 0, i32* %8, align 4, !dbg !445
  br label %368, !dbg !445

; <label>:368:                                    ; preds = %59, %77, %99, %311, %337, %61
  %369 = load i32, i32* %8, align 4, !dbg !446
  ret i32 %369, !dbg !446
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @gsl_error(i8*, i8*, i32, i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @triangle_selection_fails(i32, i32, i32) #0 !dbg !447 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !450, metadata !59), !dbg !451
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !452, metadata !59), !dbg !453
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !454, metadata !59), !dbg !455
  %7 = load i32, i32* %5, align 4, !dbg !456
  %8 = load i32, i32* %4, align 4, !dbg !457
  %9 = load i32, i32* %6, align 4, !dbg !458
  %10 = sub nsw i32 %8, %9, !dbg !459
  %11 = call i32 @abs(i32 %10) #1, !dbg !460
  %12 = icmp slt i32 %7, %11, !dbg !461
  br i1 %12, label %27, label %13, !dbg !462

; <label>:13:                                     ; preds = %3
  %14 = load i32, i32* %5, align 4, !dbg !463
  %15 = load i32, i32* %4, align 4, !dbg !465
  %16 = load i32, i32* %6, align 4, !dbg !466
  %17 = add nsw i32 %15, %16, !dbg !467
  %18 = icmp sgt i32 %14, %17, !dbg !468
  br i1 %18, label %27, label %19, !dbg !469

; <label>:19:                                     ; preds = %13
  %20 = load i32, i32* %4, align 4, !dbg !470
  %21 = load i32, i32* %5, align 4, !dbg !470
  %22 = add nsw i32 %20, %21, !dbg !470
  %23 = load i32, i32* %6, align 4, !dbg !470
  %24 = add nsw i32 %22, %23, !dbg !470
  %25 = and i32 %24, 1, !dbg !470
  %26 = icmp ne i32 %25, 0, !dbg !471
  br label %27, !dbg !471

; <label>:27:                                     ; preds = %19, %13, %3
  %28 = phi i1 [ true, %13 ], [ true, %3 ], [ %26, %19 ]
  %29 = zext i1 %28 to i32, !dbg !473
  ret i32 %29, !dbg !475
}

; Function Attrs: nounwind uwtable
define internal i32 @m_selection_fails(i32, i32, i32, i32, i32, i32) #0 !dbg !476 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !479, metadata !59), !dbg !480
  store i32 %1, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !481, metadata !59), !dbg !482
  store i32 %2, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !483, metadata !59), !dbg !484
  store i32 %3, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !485, metadata !59), !dbg !486
  store i32 %4, i32* %11, align 4
  call void @llvm.dbg.declare(metadata i32* %11, metadata !487, metadata !59), !dbg !488
  store i32 %5, i32* %12, align 4
  call void @llvm.dbg.declare(metadata i32* %12, metadata !489, metadata !59), !dbg !490
  %13 = load i32, i32* %10, align 4, !dbg !491
  %14 = call i32 @abs(i32 %13) #1, !dbg !492
  %15 = load i32, i32* %7, align 4, !dbg !493
  %16 = icmp sgt i32 %14, %15, !dbg !494
  br i1 %16, label %52, label %17, !dbg !495

; <label>:17:                                     ; preds = %6
  %18 = load i32, i32* %11, align 4, !dbg !496
  %19 = call i32 @abs(i32 %18) #1, !dbg !498
  %20 = load i32, i32* %8, align 4, !dbg !499
  %21 = icmp sgt i32 %19, %20, !dbg !500
  br i1 %21, label %52, label %22, !dbg !501

; <label>:22:                                     ; preds = %17
  %23 = load i32, i32* %12, align 4, !dbg !502
  %24 = call i32 @abs(i32 %23) #1, !dbg !503
  %25 = load i32, i32* %9, align 4, !dbg !504
  %26 = icmp sgt i32 %24, %25, !dbg !505
  br i1 %26, label %52, label %27, !dbg !506

; <label>:27:                                     ; preds = %22
  %28 = load i32, i32* %7, align 4, !dbg !507
  %29 = load i32, i32* %10, align 4, !dbg !507
  %30 = add nsw i32 %28, %29, !dbg !507
  %31 = and i32 %30, 1, !dbg !507
  %32 = icmp ne i32 %31, 0, !dbg !507
  br i1 %32, label %52, label %33, !dbg !508

; <label>:33:                                     ; preds = %27
  %34 = load i32, i32* %8, align 4, !dbg !509
  %35 = load i32, i32* %11, align 4, !dbg !509
  %36 = add nsw i32 %34, %35, !dbg !509
  %37 = and i32 %36, 1, !dbg !509
  %38 = icmp ne i32 %37, 0, !dbg !509
  br i1 %38, label %52, label %39, !dbg !510

; <label>:39:                                     ; preds = %33
  %40 = load i32, i32* %9, align 4, !dbg !511
  %41 = load i32, i32* %12, align 4, !dbg !511
  %42 = add nsw i32 %40, %41, !dbg !511
  %43 = and i32 %42, 1, !dbg !511
  %44 = icmp ne i32 %43, 0, !dbg !511
  br i1 %44, label %52, label %45, !dbg !512

; <label>:45:                                     ; preds = %39
  %46 = load i32, i32* %10, align 4, !dbg !513
  %47 = load i32, i32* %11, align 4, !dbg !514
  %48 = add nsw i32 %46, %47, !dbg !515
  %49 = load i32, i32* %12, align 4, !dbg !516
  %50 = add nsw i32 %48, %49, !dbg !517
  %51 = icmp ne i32 %50, 0, !dbg !518
  br label %52, !dbg !519

; <label>:52:                                     ; preds = %45, %39, %33, %27, %22, %17, %6
  %53 = phi i1 [ true, %39 ], [ true, %33 ], [ true, %27 ], [ true, %22 ], [ true, %17 ], [ true, %6 ], [ %51, %45 ]
  %54 = zext i1 %53 to i32, !dbg !520
  ret i32 %54, !dbg !522
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @locMax3(i32, i32, i32) #3 !dbg !523 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !527, metadata !59), !dbg !528
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !529, metadata !59), !dbg !530
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !531, metadata !59), !dbg !532
  call void @llvm.dbg.declare(metadata i32* %7, metadata !533, metadata !59), !dbg !534
  %8 = load i32, i32* %4, align 4, !dbg !535
  %9 = load i32, i32* %5, align 4, !dbg !535
  %10 = icmp sgt i32 %8, %9, !dbg !535
  br i1 %10, label %11, label %13, !dbg !535

; <label>:11:                                     ; preds = %3
  %12 = load i32, i32* %4, align 4, !dbg !536
  br label %15, !dbg !536

; <label>:13:                                     ; preds = %3
  %14 = load i32, i32* %5, align 4, !dbg !538
  br label %15, !dbg !538

; <label>:15:                                     ; preds = %13, %11
  %16 = phi i32 [ %12, %11 ], [ %14, %13 ], !dbg !540
  store i32 %16, i32* %7, align 4, !dbg !542
  %17 = load i32, i32* %7, align 4, !dbg !543
  %18 = load i32, i32* %6, align 4, !dbg !543
  %19 = icmp sgt i32 %17, %18, !dbg !543
  br i1 %19, label %20, label %22, !dbg !543

; <label>:20:                                     ; preds = %15
  %21 = load i32, i32* %7, align 4, !dbg !544
  br label %24, !dbg !544

; <label>:22:                                     ; preds = %15
  %23 = load i32, i32* %6, align 4, !dbg !545
  br label %24, !dbg !545

; <label>:24:                                     ; preds = %22, %20
  %25 = phi i32 [ %21, %20 ], [ %23, %22 ], !dbg !546
  ret i32 %25, !dbg !547
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @locMin3(i32, i32, i32) #3 !dbg !548 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !549, metadata !59), !dbg !550
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !551, metadata !59), !dbg !552
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !553, metadata !59), !dbg !554
  call void @llvm.dbg.declare(metadata i32* %7, metadata !555, metadata !59), !dbg !556
  %8 = load i32, i32* %4, align 4, !dbg !557
  %9 = load i32, i32* %5, align 4, !dbg !557
  %10 = icmp slt i32 %8, %9, !dbg !557
  br i1 %10, label %11, label %13, !dbg !557

; <label>:11:                                     ; preds = %3
  %12 = load i32, i32* %4, align 4, !dbg !558
  br label %15, !dbg !558

; <label>:13:                                     ; preds = %3
  %14 = load i32, i32* %5, align 4, !dbg !560
  br label %15, !dbg !560

; <label>:15:                                     ; preds = %13, %11
  %16 = phi i32 [ %12, %11 ], [ %14, %13 ], !dbg !562
  store i32 %16, i32* %7, align 4, !dbg !564
  %17 = load i32, i32* %7, align 4, !dbg !565
  %18 = load i32, i32* %6, align 4, !dbg !565
  %19 = icmp slt i32 %17, %18, !dbg !565
  br i1 %19, label %20, label %22, !dbg !565

; <label>:20:                                     ; preds = %15
  %21 = load i32, i32* %7, align 4, !dbg !566
  br label %24, !dbg !566

; <label>:22:                                     ; preds = %15
  %23 = load i32, i32* %6, align 4, !dbg !567
  br label %24, !dbg !567

; <label>:24:                                     ; preds = %22, %20
  %25 = phi i32 [ %21, %20 ], [ %23, %22 ], !dbg !568
  ret i32 %25, !dbg !569
}

declare i32 @gsl_sf_lnchoose_e(i32, i32, %struct.gsl_sf_result_struct*) #2

; Function Attrs: nounwind
declare double @log(double) #4

declare i32 @gsl_sf_exp_err_e(double, double, %struct.gsl_sf_result_struct*) #2

; Function Attrs: nounwind readnone
declare double @fabs(double) #5

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_coupling_6j_e(i32, i32, i32, i32, i32, i32, %struct.gsl_sf_result_struct*) #0 !dbg !570 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.gsl_sf_result_struct*, align 8
  %16 = alloca %struct.gsl_sf_result_struct, align 8
  %17 = alloca %struct.gsl_sf_result_struct, align 8
  %18 = alloca %struct.gsl_sf_result_struct, align 8
  %19 = alloca %struct.gsl_sf_result_struct, align 8
  %20 = alloca %struct.gsl_sf_result_struct, align 8
  %21 = alloca %struct.gsl_sf_result_struct, align 8
  %22 = alloca %struct.gsl_sf_result_struct, align 8
  %23 = alloca double, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca double, align 8
  %28 = alloca double, align 8
  %29 = alloca double, align 8
  %30 = alloca double, align 8
  %31 = alloca i32, align 4
  %32 = alloca double, align 8
  %33 = alloca double, align 8
  %34 = alloca %struct.gsl_sf_result_struct, align 8
  %35 = alloca %struct.gsl_sf_result_struct, align 8
  %36 = alloca %struct.gsl_sf_result_struct, align 8
  %37 = alloca %struct.gsl_sf_result_struct, align 8
  store i32 %0, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !571, metadata !59), !dbg !572
  store i32 %1, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !573, metadata !59), !dbg !574
  store i32 %2, i32* %11, align 4
  call void @llvm.dbg.declare(metadata i32* %11, metadata !575, metadata !59), !dbg !576
  store i32 %3, i32* %12, align 4
  call void @llvm.dbg.declare(metadata i32* %12, metadata !577, metadata !59), !dbg !578
  store i32 %4, i32* %13, align 4
  call void @llvm.dbg.declare(metadata i32* %13, metadata !579, metadata !59), !dbg !580
  store i32 %5, i32* %14, align 4
  call void @llvm.dbg.declare(metadata i32* %14, metadata !581, metadata !59), !dbg !582
  store %struct.gsl_sf_result_struct* %6, %struct.gsl_sf_result_struct** %15, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %15, metadata !583, metadata !59), !dbg !584
  %38 = load i32, i32* %9, align 4, !dbg !585
  %39 = icmp slt i32 %38, 0, !dbg !587
  br i1 %39, label %55, label %40, !dbg !588

; <label>:40:                                     ; preds = %7
  %41 = load i32, i32* %10, align 4, !dbg !589
  %42 = icmp slt i32 %41, 0, !dbg !591
  br i1 %42, label %55, label %43, !dbg !592

; <label>:43:                                     ; preds = %40
  %44 = load i32, i32* %11, align 4, !dbg !593
  %45 = icmp slt i32 %44, 0, !dbg !595
  br i1 %45, label %55, label %46, !dbg !596

; <label>:46:                                     ; preds = %43
  %47 = load i32, i32* %12, align 4, !dbg !597
  %48 = icmp slt i32 %47, 0, !dbg !598
  br i1 %48, label %55, label %49, !dbg !599

; <label>:49:                                     ; preds = %46
  %50 = load i32, i32* %13, align 4, !dbg !600
  %51 = icmp slt i32 %50, 0, !dbg !601
  br i1 %51, label %55, label %52, !dbg !602

; <label>:52:                                     ; preds = %49
  %53 = load i32, i32* %14, align 4, !dbg !603
  %54 = icmp slt i32 %53, 0, !dbg !605
  br i1 %54, label %55, label %64, !dbg !606

; <label>:55:                                     ; preds = %52, %49, %46, %43, %40, %7
  br label %56, !dbg !608, !llvm.loop !610

; <label>:56:                                     ; preds = %55
  %57 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %15, align 8, !dbg !611
  %58 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %57, i32 0, i32 0, !dbg !611
  store double 0x7FF8000000000000, double* %58, align 8, !dbg !611
  %59 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %15, align 8, !dbg !611
  %60 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %59, i32 0, i32 1, !dbg !611
  store double 0x7FF8000000000000, double* %60, align 8, !dbg !611
  br label %61, !dbg !611, !llvm.loop !614

; <label>:61:                                     ; preds = %56
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 221, i32 1), !dbg !616
  store i32 1, i32* %8, align 4, !dbg !616
  br label %524, !dbg !616
                                                  ; No predecessors!
  br label %63, !dbg !619

; <label>:63:                                     ; preds = %62
  br label %524, !dbg !621

; <label>:64:                                     ; preds = %52
  %65 = load i32, i32* %9, align 4, !dbg !622
  %66 = load i32, i32* %10, align 4, !dbg !624
  %67 = load i32, i32* %11, align 4, !dbg !625
  %68 = call i32 @triangle_selection_fails(i32 %65, i32 %66, i32 %67), !dbg !626
  %69 = icmp ne i32 %68, 0, !dbg !626
  br i1 %69, label %88, label %70, !dbg !627

; <label>:70:                                     ; preds = %64
  %71 = load i32, i32* %9, align 4, !dbg !628
  %72 = load i32, i32* %13, align 4, !dbg !630
  %73 = load i32, i32* %14, align 4, !dbg !631
  %74 = call i32 @triangle_selection_fails(i32 %71, i32 %72, i32 %73), !dbg !632
  %75 = icmp ne i32 %74, 0, !dbg !632
  br i1 %75, label %88, label %76, !dbg !633

; <label>:76:                                     ; preds = %70
  %77 = load i32, i32* %10, align 4, !dbg !634
  %78 = load i32, i32* %12, align 4, !dbg !635
  %79 = load i32, i32* %14, align 4, !dbg !636
  %80 = call i32 @triangle_selection_fails(i32 %77, i32 %78, i32 %79), !dbg !637
  %81 = icmp ne i32 %80, 0, !dbg !637
  br i1 %81, label %88, label %82, !dbg !638

; <label>:82:                                     ; preds = %76
  %83 = load i32, i32* %13, align 4, !dbg !639
  %84 = load i32, i32* %12, align 4, !dbg !640
  %85 = load i32, i32* %11, align 4, !dbg !641
  %86 = call i32 @triangle_selection_fails(i32 %83, i32 %84, i32 %85), !dbg !642
  %87 = icmp ne i32 %86, 0, !dbg !642
  br i1 %87, label %88, label %93, !dbg !643

; <label>:88:                                     ; preds = %82, %76, %70, %64
  %89 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %15, align 8, !dbg !644
  %90 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %89, i32 0, i32 0, !dbg !646
  store double 0.000000e+00, double* %90, align 8, !dbg !647
  %91 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %15, align 8, !dbg !648
  %92 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %91, i32 0, i32 1, !dbg !649
  store double 0.000000e+00, double* %92, align 8, !dbg !650
  store i32 0, i32* %8, align 4, !dbg !651
  br label %524, !dbg !651

; <label>:93:                                     ; preds = %82
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %16, metadata !652, metadata !59), !dbg !654
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %17, metadata !655, metadata !59), !dbg !656
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %18, metadata !657, metadata !59), !dbg !658
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %19, metadata !659, metadata !59), !dbg !660
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %20, metadata !661, metadata !59), !dbg !662
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %21, metadata !663, metadata !59), !dbg !664
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %22, metadata !665, metadata !59), !dbg !666
  call void @llvm.dbg.declare(metadata double* %23, metadata !667, metadata !59), !dbg !668
  call void @llvm.dbg.declare(metadata i32* %24, metadata !669, metadata !59), !dbg !670
  call void @llvm.dbg.declare(metadata i32* %25, metadata !671, metadata !59), !dbg !672
  call void @llvm.dbg.declare(metadata i32* %26, metadata !673, metadata !59), !dbg !674
  call void @llvm.dbg.declare(metadata double* %27, metadata !675, metadata !59), !dbg !676
  call void @llvm.dbg.declare(metadata double* %28, metadata !677, metadata !59), !dbg !678
  store double 0.000000e+00, double* %28, align 8, !dbg !678
  call void @llvm.dbg.declare(metadata double* %29, metadata !679, metadata !59), !dbg !680
  store double 0.000000e+00, double* %29, align 8, !dbg !680
  call void @llvm.dbg.declare(metadata double* %30, metadata !681, metadata !59), !dbg !682
  store double 0.000000e+00, double* %30, align 8, !dbg !682
  call void @llvm.dbg.declare(metadata i32* %31, metadata !683, metadata !59), !dbg !684
  store i32 0, i32* %31, align 4, !dbg !684
  %94 = load i32, i32* %9, align 4, !dbg !685
  %95 = load i32, i32* %10, align 4, !dbg !686
  %96 = load i32, i32* %11, align 4, !dbg !687
  %97 = call i32 @delta(i32 %94, i32 %95, i32 %96, %struct.gsl_sf_result_struct* %17), !dbg !688
  %98 = load i32, i32* %31, align 4, !dbg !689
  %99 = add nsw i32 %98, %97, !dbg !689
  store i32 %99, i32* %31, align 4, !dbg !689
  %100 = load i32, i32* %9, align 4, !dbg !690
  %101 = load i32, i32* %13, align 4, !dbg !691
  %102 = load i32, i32* %14, align 4, !dbg !692
  %103 = call i32 @delta(i32 %100, i32 %101, i32 %102, %struct.gsl_sf_result_struct* %18), !dbg !693
  %104 = load i32, i32* %31, align 4, !dbg !694
  %105 = add nsw i32 %104, %103, !dbg !694
  store i32 %105, i32* %31, align 4, !dbg !694
  %106 = load i32, i32* %10, align 4, !dbg !695
  %107 = load i32, i32* %12, align 4, !dbg !696
  %108 = load i32, i32* %14, align 4, !dbg !697
  %109 = call i32 @delta(i32 %106, i32 %107, i32 %108, %struct.gsl_sf_result_struct* %19), !dbg !698
  %110 = load i32, i32* %31, align 4, !dbg !699
  %111 = add nsw i32 %110, %109, !dbg !699
  store i32 %111, i32* %31, align 4, !dbg !699
  %112 = load i32, i32* %13, align 4, !dbg !700
  %113 = load i32, i32* %12, align 4, !dbg !701
  %114 = load i32, i32* %11, align 4, !dbg !702
  %115 = call i32 @delta(i32 %112, i32 %113, i32 %114, %struct.gsl_sf_result_struct* %20), !dbg !703
  %116 = load i32, i32* %31, align 4, !dbg !704
  %117 = add nsw i32 %116, %115, !dbg !704
  store i32 %117, i32* %31, align 4, !dbg !704
  %118 = load i32, i32* %31, align 4, !dbg !705
  %119 = icmp ne i32 %118, 0, !dbg !707
  br i1 %119, label %120, label %129, !dbg !708

; <label>:120:                                    ; preds = %93
  br label %121, !dbg !709, !llvm.loop !711

; <label>:121:                                    ; preds = %120
  %122 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %15, align 8, !dbg !712
  %123 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %122, i32 0, i32 0, !dbg !712
  store double 0x7FF0000000000000, double* %123, align 8, !dbg !712
  %124 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %15, align 8, !dbg !712
  %125 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %124, i32 0, i32 1, !dbg !712
  store double 0x7FF0000000000000, double* %125, align 8, !dbg !712
  br label %126, !dbg !712, !llvm.loop !715

; <label>:126:                                    ; preds = %121
  call void @gsl_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 247, i32 16), !dbg !717
  store i32 16, i32* %8, align 4, !dbg !717
  br label %524, !dbg !717
                                                  ; No predecessors!
  br label %128, !dbg !720

; <label>:128:                                    ; preds = %127
  br label %129, !dbg !722

; <label>:129:                                    ; preds = %128, %93
  %130 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %17, i32 0, i32 0, !dbg !723
  %131 = load double, double* %130, align 8, !dbg !723
  %132 = call double @sqrt(double %131) #6, !dbg !724
  %133 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %18, i32 0, i32 0, !dbg !725
  %134 = load double, double* %133, align 8, !dbg !725
  %135 = call double @sqrt(double %134) #6, !dbg !726
  %136 = fmul double %132, %135, !dbg !728
  %137 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %19, i32 0, i32 0, !dbg !729
  %138 = load double, double* %137, align 8, !dbg !729
  %139 = call double @sqrt(double %138) #6, !dbg !730
  %140 = fmul double %136, %139, !dbg !732
  %141 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %20, i32 0, i32 0, !dbg !733
  %142 = load double, double* %141, align 8, !dbg !733
  %143 = call double @sqrt(double %142) #6, !dbg !734
  %144 = fmul double %140, %143, !dbg !736
  store double %144, double* %23, align 8, !dbg !737
  %145 = load i32, i32* %9, align 4, !dbg !738
  %146 = load i32, i32* %12, align 4, !dbg !739
  %147 = add nsw i32 %145, %146, !dbg !740
  %148 = load i32, i32* %11, align 4, !dbg !741
  %149 = sub nsw i32 %147, %148, !dbg !742
  %150 = load i32, i32* %14, align 4, !dbg !743
  %151 = sub nsw i32 %149, %150, !dbg !744
  %152 = load i32, i32* %10, align 4, !dbg !745
  %153 = load i32, i32* %13, align 4, !dbg !746
  %154 = add nsw i32 %152, %153, !dbg !747
  %155 = load i32, i32* %11, align 4, !dbg !748
  %156 = sub nsw i32 %154, %155, !dbg !749
  %157 = load i32, i32* %14, align 4, !dbg !750
  %158 = sub nsw i32 %156, %157, !dbg !751
  %159 = call i32 @locMax3(i32 0, i32 %151, i32 %158), !dbg !752
  store i32 %159, i32* %25, align 4, !dbg !753
  %160 = load i32, i32* %9, align 4, !dbg !754
  %161 = load i32, i32* %10, align 4, !dbg !755
  %162 = add nsw i32 %160, %161, !dbg !756
  %163 = load i32, i32* %13, align 4, !dbg !757
  %164 = add nsw i32 %162, %163, !dbg !758
  %165 = load i32, i32* %12, align 4, !dbg !759
  %166 = add nsw i32 %164, %165, !dbg !760
  %167 = add nsw i32 %166, 2, !dbg !761
  %168 = load i32, i32* %9, align 4, !dbg !762
  %169 = load i32, i32* %10, align 4, !dbg !763
  %170 = add nsw i32 %168, %169, !dbg !764
  %171 = load i32, i32* %11, align 4, !dbg !765
  %172 = sub nsw i32 %170, %171, !dbg !766
  %173 = load i32, i32* %13, align 4, !dbg !767
  %174 = load i32, i32* %12, align 4, !dbg !768
  %175 = add nsw i32 %173, %174, !dbg !769
  %176 = load i32, i32* %11, align 4, !dbg !770
  %177 = sub nsw i32 %175, %176, !dbg !771
  %178 = load i32, i32* %9, align 4, !dbg !772
  %179 = load i32, i32* %13, align 4, !dbg !773
  %180 = add nsw i32 %178, %179, !dbg !774
  %181 = load i32, i32* %14, align 4, !dbg !775
  %182 = sub nsw i32 %180, %181, !dbg !776
  %183 = load i32, i32* %10, align 4, !dbg !777
  %184 = load i32, i32* %12, align 4, !dbg !778
  %185 = add nsw i32 %183, %184, !dbg !779
  %186 = load i32, i32* %14, align 4, !dbg !780
  %187 = sub nsw i32 %185, %186, !dbg !781
  %188 = call i32 @locMin5(i32 %167, i32 %172, i32 %177, i32 %182, i32 %187), !dbg !782
  store i32 %188, i32* %26, align 4, !dbg !783
  %189 = load i32, i32* %9, align 4, !dbg !784
  %190 = load i32, i32* %10, align 4, !dbg !784
  %191 = add nsw i32 %189, %190, !dbg !784
  %192 = load i32, i32* %13, align 4, !dbg !784
  %193 = add nsw i32 %191, %192, !dbg !784
  %194 = load i32, i32* %12, align 4, !dbg !784
  %195 = add nsw i32 %193, %194, !dbg !784
  %196 = load i32, i32* %25, align 4, !dbg !784
  %197 = add nsw i32 %195, %196, !dbg !784
  %198 = sdiv i32 %197, 2, !dbg !784
  %199 = and i32 %198, 1, !dbg !784
  %200 = icmp ne i32 %199, 0, !dbg !784
  %201 = select i1 %200, double -1.000000e+00, double 1.000000e+00, !dbg !784
  store double %201, double* %27, align 8, !dbg !785
  %202 = load i32, i32* %25, align 4, !dbg !786
  store i32 %202, i32* %24, align 4, !dbg !788
  br label %203, !dbg !789

; <label>:203:                                    ; preds = %481, %129
  %204 = load i32, i32* %24, align 4, !dbg !790
  %205 = load i32, i32* %26, align 4, !dbg !793
  %206 = icmp sle i32 %204, %205, !dbg !794
  br i1 %206, label %207, label %484, !dbg !795

; <label>:207:                                    ; preds = %203
  call void @llvm.dbg.declare(metadata double* %32, metadata !796, metadata !59), !dbg !798
  call void @llvm.dbg.declare(metadata double* %33, metadata !799, metadata !59), !dbg !800
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %34, metadata !801, metadata !59), !dbg !802
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %35, metadata !803, metadata !59), !dbg !804
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %36, metadata !805, metadata !59), !dbg !806
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %37, metadata !807, metadata !59), !dbg !808
  store i32 0, i32* %31, align 4, !dbg !809
  %208 = load i32, i32* %9, align 4, !dbg !810
  %209 = load i32, i32* %10, align 4, !dbg !811
  %210 = add nsw i32 %208, %209, !dbg !812
  %211 = load i32, i32* %13, align 4, !dbg !813
  %212 = add nsw i32 %210, %211, !dbg !814
  %213 = load i32, i32* %12, align 4, !dbg !815
  %214 = add nsw i32 %212, %213, !dbg !816
  %215 = load i32, i32* %24, align 4, !dbg !817
  %216 = sub nsw i32 %214, %215, !dbg !818
  %217 = sdiv i32 %216, 2, !dbg !819
  %218 = add nsw i32 %217, 1, !dbg !820
  %219 = call i32 @gsl_sf_fact_e(i32 %218, %struct.gsl_sf_result_struct* %16), !dbg !821
  %220 = load i32, i32* %31, align 4, !dbg !822
  %221 = add nsw i32 %220, %219, !dbg !822
  store i32 %221, i32* %31, align 4, !dbg !822
  %222 = load i32, i32* %24, align 4, !dbg !823
  %223 = sdiv i32 %222, 2, !dbg !824
  %224 = call i32 @gsl_sf_fact_e(i32 %223, %struct.gsl_sf_result_struct* %36), !dbg !825
  %225 = load i32, i32* %31, align 4, !dbg !826
  %226 = add nsw i32 %225, %224, !dbg !826
  store i32 %226, i32* %31, align 4, !dbg !826
  %227 = load i32, i32* %11, align 4, !dbg !827
  %228 = load i32, i32* %14, align 4, !dbg !828
  %229 = add nsw i32 %227, %228, !dbg !829
  %230 = load i32, i32* %9, align 4, !dbg !830
  %231 = sub nsw i32 %229, %230, !dbg !831
  %232 = load i32, i32* %12, align 4, !dbg !832
  %233 = sub nsw i32 %231, %232, !dbg !833
  %234 = load i32, i32* %24, align 4, !dbg !834
  %235 = add nsw i32 %233, %234, !dbg !835
  %236 = sdiv i32 %235, 2, !dbg !836
  %237 = call i32 @gsl_sf_fact_e(i32 %236, %struct.gsl_sf_result_struct* %37), !dbg !837
  %238 = load i32, i32* %31, align 4, !dbg !838
  %239 = add nsw i32 %238, %237, !dbg !838
  store i32 %239, i32* %31, align 4, !dbg !838
  %240 = load i32, i32* %11, align 4, !dbg !839
  %241 = load i32, i32* %14, align 4, !dbg !840
  %242 = add nsw i32 %240, %241, !dbg !841
  %243 = load i32, i32* %10, align 4, !dbg !842
  %244 = sub nsw i32 %242, %243, !dbg !843
  %245 = load i32, i32* %13, align 4, !dbg !844
  %246 = sub nsw i32 %244, %245, !dbg !845
  %247 = load i32, i32* %24, align 4, !dbg !846
  %248 = add nsw i32 %246, %247, !dbg !847
  %249 = sdiv i32 %248, 2, !dbg !848
  %250 = call i32 @gsl_sf_fact_e(i32 %249, %struct.gsl_sf_result_struct* %18), !dbg !849
  %251 = load i32, i32* %31, align 4, !dbg !850
  %252 = add nsw i32 %251, %250, !dbg !850
  store i32 %252, i32* %31, align 4, !dbg !850
  %253 = load i32, i32* %9, align 4, !dbg !851
  %254 = load i32, i32* %10, align 4, !dbg !852
  %255 = add nsw i32 %253, %254, !dbg !853
  %256 = load i32, i32* %11, align 4, !dbg !854
  %257 = sub nsw i32 %255, %256, !dbg !855
  %258 = load i32, i32* %24, align 4, !dbg !856
  %259 = sub nsw i32 %257, %258, !dbg !857
  %260 = sdiv i32 %259, 2, !dbg !858
  %261 = call i32 @gsl_sf_fact_e(i32 %260, %struct.gsl_sf_result_struct* %19), !dbg !859
  %262 = load i32, i32* %31, align 4, !dbg !860
  %263 = add nsw i32 %262, %261, !dbg !860
  store i32 %263, i32* %31, align 4, !dbg !860
  %264 = load i32, i32* %13, align 4, !dbg !861
  %265 = load i32, i32* %12, align 4, !dbg !862
  %266 = add nsw i32 %264, %265, !dbg !863
  %267 = load i32, i32* %11, align 4, !dbg !864
  %268 = sub nsw i32 %266, %267, !dbg !865
  %269 = load i32, i32* %24, align 4, !dbg !866
  %270 = sub nsw i32 %268, %269, !dbg !867
  %271 = sdiv i32 %270, 2, !dbg !868
  %272 = call i32 @gsl_sf_fact_e(i32 %271, %struct.gsl_sf_result_struct* %20), !dbg !869
  %273 = load i32, i32* %31, align 4, !dbg !870
  %274 = add nsw i32 %273, %272, !dbg !870
  store i32 %274, i32* %31, align 4, !dbg !870
  %275 = load i32, i32* %9, align 4, !dbg !871
  %276 = load i32, i32* %13, align 4, !dbg !872
  %277 = add nsw i32 %275, %276, !dbg !873
  %278 = load i32, i32* %14, align 4, !dbg !874
  %279 = sub nsw i32 %277, %278, !dbg !875
  %280 = load i32, i32* %24, align 4, !dbg !876
  %281 = sub nsw i32 %279, %280, !dbg !877
  %282 = sdiv i32 %281, 2, !dbg !878
  %283 = call i32 @gsl_sf_fact_e(i32 %282, %struct.gsl_sf_result_struct* %21), !dbg !879
  %284 = load i32, i32* %31, align 4, !dbg !880
  %285 = add nsw i32 %284, %283, !dbg !880
  store i32 %285, i32* %31, align 4, !dbg !880
  %286 = load i32, i32* %10, align 4, !dbg !881
  %287 = load i32, i32* %12, align 4, !dbg !882
  %288 = add nsw i32 %286, %287, !dbg !883
  %289 = load i32, i32* %14, align 4, !dbg !884
  %290 = sub nsw i32 %288, %289, !dbg !885
  %291 = load i32, i32* %24, align 4, !dbg !886
  %292 = sub nsw i32 %290, %291, !dbg !887
  %293 = sdiv i32 %292, 2, !dbg !888
  %294 = call i32 @gsl_sf_fact_e(i32 %293, %struct.gsl_sf_result_struct* %22), !dbg !889
  %295 = load i32, i32* %31, align 4, !dbg !890
  %296 = add nsw i32 %295, %294, !dbg !890
  store i32 %296, i32* %31, align 4, !dbg !890
  %297 = load i32, i32* %31, align 4, !dbg !891
  %298 = icmp ne i32 %297, 0, !dbg !893
  br i1 %298, label %299, label %308, !dbg !894

; <label>:299:                                    ; preds = %207
  br label %300, !dbg !895, !llvm.loop !897

; <label>:300:                                    ; preds = %299
  %301 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %15, align 8, !dbg !898
  %302 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %301, i32 0, i32 0, !dbg !898
  store double 0x7FF0000000000000, double* %302, align 8, !dbg !898
  %303 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %15, align 8, !dbg !898
  %304 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %303, i32 0, i32 1, !dbg !898
  store double 0x7FF0000000000000, double* %304, align 8, !dbg !898
  br label %305, !dbg !898, !llvm.loop !901

; <label>:305:                                    ; preds = %300
  call void @gsl_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 282, i32 16), !dbg !903
  store i32 16, i32* %8, align 4, !dbg !903
  br label %524, !dbg !903
                                                  ; No predecessors!
  br label %307, !dbg !906

; <label>:307:                                    ; preds = %306
  br label %308, !dbg !908

; <label>:308:                                    ; preds = %307, %207
  %309 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %36, i32 0, i32 0, !dbg !909
  %310 = load double, double* %309, align 8, !dbg !909
  %311 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %37, i32 0, i32 0, !dbg !910
  %312 = load double, double* %311, align 8, !dbg !910
  %313 = fmul double %310, %312, !dbg !911
  %314 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %17, i32 0, i32 0, !dbg !912
  store double %313, double* %314, align 8, !dbg !913
  %315 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %36, i32 0, i32 1, !dbg !914
  %316 = load double, double* %315, align 8, !dbg !914
  %317 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %37, i32 0, i32 0, !dbg !915
  %318 = load double, double* %317, align 8, !dbg !915
  %319 = call double @fabs(double %318) #1, !dbg !916
  %320 = fmul double %316, %319, !dbg !917
  %321 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %36, i32 0, i32 0, !dbg !918
  %322 = load double, double* %321, align 8, !dbg !918
  %323 = call double @fabs(double %322) #1, !dbg !919
  %324 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %37, i32 0, i32 1, !dbg !921
  %325 = load double, double* %324, align 8, !dbg !921
  %326 = fmul double %323, %325, !dbg !922
  %327 = fadd double %320, %326, !dbg !923
  %328 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %17, i32 0, i32 1, !dbg !924
  store double %327, double* %328, align 8, !dbg !925
  %329 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %17, i32 0, i32 0, !dbg !926
  %330 = load double, double* %329, align 8, !dbg !926
  %331 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %18, i32 0, i32 0, !dbg !927
  %332 = load double, double* %331, align 8, !dbg !927
  %333 = fmul double %330, %332, !dbg !928
  %334 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %19, i32 0, i32 0, !dbg !929
  %335 = load double, double* %334, align 8, !dbg !929
  %336 = fmul double %333, %335, !dbg !930
  %337 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %34, i32 0, i32 0, !dbg !931
  store double %336, double* %337, align 8, !dbg !932
  %338 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %17, i32 0, i32 1, !dbg !933
  %339 = load double, double* %338, align 8, !dbg !933
  %340 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %18, i32 0, i32 0, !dbg !934
  %341 = load double, double* %340, align 8, !dbg !934
  %342 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %19, i32 0, i32 0, !dbg !935
  %343 = load double, double* %342, align 8, !dbg !935
  %344 = fmul double %341, %343, !dbg !936
  %345 = call double @fabs(double %344) #1, !dbg !937
  %346 = fmul double %339, %345, !dbg !938
  %347 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %34, i32 0, i32 1, !dbg !939
  store double %346, double* %347, align 8, !dbg !940
  %348 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %18, i32 0, i32 1, !dbg !941
  %349 = load double, double* %348, align 8, !dbg !941
  %350 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %17, i32 0, i32 0, !dbg !942
  %351 = load double, double* %350, align 8, !dbg !942
  %352 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %19, i32 0, i32 0, !dbg !943
  %353 = load double, double* %352, align 8, !dbg !943
  %354 = fmul double %351, %353, !dbg !944
  %355 = call double @fabs(double %354) #1, !dbg !945
  %356 = fmul double %349, %355, !dbg !946
  %357 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %34, i32 0, i32 1, !dbg !947
  %358 = load double, double* %357, align 8, !dbg !948
  %359 = fadd double %358, %356, !dbg !948
  store double %359, double* %357, align 8, !dbg !948
  %360 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %19, i32 0, i32 1, !dbg !949
  %361 = load double, double* %360, align 8, !dbg !949
  %362 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %17, i32 0, i32 0, !dbg !950
  %363 = load double, double* %362, align 8, !dbg !950
  %364 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %18, i32 0, i32 0, !dbg !951
  %365 = load double, double* %364, align 8, !dbg !951
  %366 = fmul double %363, %365, !dbg !952
  %367 = call double @fabs(double %366) #1, !dbg !953
  %368 = fmul double %361, %367, !dbg !954
  %369 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %34, i32 0, i32 1, !dbg !955
  %370 = load double, double* %369, align 8, !dbg !956
  %371 = fadd double %370, %368, !dbg !956
  store double %371, double* %369, align 8, !dbg !956
  %372 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %20, i32 0, i32 0, !dbg !957
  %373 = load double, double* %372, align 8, !dbg !957
  %374 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %21, i32 0, i32 0, !dbg !958
  %375 = load double, double* %374, align 8, !dbg !958
  %376 = fmul double %373, %375, !dbg !959
  %377 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %22, i32 0, i32 0, !dbg !960
  %378 = load double, double* %377, align 8, !dbg !960
  %379 = fmul double %376, %378, !dbg !961
  %380 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %35, i32 0, i32 0, !dbg !962
  store double %379, double* %380, align 8, !dbg !963
  %381 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %20, i32 0, i32 1, !dbg !964
  %382 = load double, double* %381, align 8, !dbg !964
  %383 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %21, i32 0, i32 0, !dbg !965
  %384 = load double, double* %383, align 8, !dbg !965
  %385 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %22, i32 0, i32 0, !dbg !966
  %386 = load double, double* %385, align 8, !dbg !966
  %387 = fmul double %384, %386, !dbg !967
  %388 = call double @fabs(double %387) #1, !dbg !968
  %389 = fmul double %382, %388, !dbg !969
  %390 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %35, i32 0, i32 1, !dbg !970
  store double %389, double* %390, align 8, !dbg !971
  %391 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %21, i32 0, i32 1, !dbg !972
  %392 = load double, double* %391, align 8, !dbg !972
  %393 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %20, i32 0, i32 0, !dbg !973
  %394 = load double, double* %393, align 8, !dbg !973
  %395 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %22, i32 0, i32 0, !dbg !974
  %396 = load double, double* %395, align 8, !dbg !974
  %397 = fmul double %394, %396, !dbg !975
  %398 = call double @fabs(double %397) #1, !dbg !976
  %399 = fmul double %392, %398, !dbg !977
  %400 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %35, i32 0, i32 1, !dbg !978
  %401 = load double, double* %400, align 8, !dbg !979
  %402 = fadd double %401, %399, !dbg !979
  store double %402, double* %400, align 8, !dbg !979
  %403 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %22, i32 0, i32 1, !dbg !980
  %404 = load double, double* %403, align 8, !dbg !980
  %405 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %20, i32 0, i32 0, !dbg !981
  %406 = load double, double* %405, align 8, !dbg !981
  %407 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %21, i32 0, i32 0, !dbg !982
  %408 = load double, double* %407, align 8, !dbg !982
  %409 = fmul double %406, %408, !dbg !983
  %410 = call double @fabs(double %409) #1, !dbg !984
  %411 = fmul double %404, %410, !dbg !985
  %412 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %35, i32 0, i32 1, !dbg !986
  %413 = load double, double* %412, align 8, !dbg !987
  %414 = fadd double %413, %411, !dbg !987
  store double %414, double* %412, align 8, !dbg !987
  %415 = load double, double* %27, align 8, !dbg !988
  %416 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %16, i32 0, i32 0, !dbg !989
  %417 = load double, double* %416, align 8, !dbg !989
  %418 = fmul double %415, %417, !dbg !990
  %419 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %34, i32 0, i32 0, !dbg !991
  %420 = load double, double* %419, align 8, !dbg !991
  %421 = fdiv double %418, %420, !dbg !992
  %422 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %35, i32 0, i32 0, !dbg !993
  %423 = load double, double* %422, align 8, !dbg !993
  %424 = fdiv double %421, %423, !dbg !994
  store double %424, double* %32, align 8, !dbg !995
  %425 = load double, double* %27, align 8, !dbg !996
  %426 = fsub double -0.000000e+00, %425, !dbg !997
  store double %426, double* %27, align 8, !dbg !998
  %427 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %16, i32 0, i32 1, !dbg !999
  %428 = load double, double* %427, align 8, !dbg !999
  %429 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %34, i32 0, i32 0, !dbg !1000
  %430 = load double, double* %429, align 8, !dbg !1000
  %431 = call double @fabs(double %430) #1, !dbg !1001
  %432 = fdiv double %428, %431, !dbg !1002
  %433 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %35, i32 0, i32 0, !dbg !1003
  %434 = load double, double* %433, align 8, !dbg !1003
  %435 = call double @fabs(double %434) #1, !dbg !1004
  %436 = fdiv double %432, %435, !dbg !1005
  store double %436, double* %33, align 8, !dbg !1006
  %437 = load double, double* %32, align 8, !dbg !1007
  %438 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %34, i32 0, i32 0, !dbg !1008
  %439 = load double, double* %438, align 8, !dbg !1008
  %440 = fdiv double %437, %439, !dbg !1009
  %441 = call double @fabs(double %440) #1, !dbg !1010
  %442 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %34, i32 0, i32 1, !dbg !1011
  %443 = load double, double* %442, align 8, !dbg !1011
  %444 = fmul double %441, %443, !dbg !1012
  %445 = load double, double* %33, align 8, !dbg !1013
  %446 = fadd double %445, %444, !dbg !1013
  store double %446, double* %33, align 8, !dbg !1013
  %447 = load double, double* %32, align 8, !dbg !1014
  %448 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %35, i32 0, i32 0, !dbg !1015
  %449 = load double, double* %448, align 8, !dbg !1015
  %450 = fdiv double %447, %449, !dbg !1016
  %451 = call double @fabs(double %450) #1, !dbg !1017
  %452 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %35, i32 0, i32 1, !dbg !1018
  %453 = load double, double* %452, align 8, !dbg !1018
  %454 = fmul double %451, %453, !dbg !1019
  %455 = load double, double* %33, align 8, !dbg !1020
  %456 = fadd double %455, %454, !dbg !1020
  store double %456, double* %33, align 8, !dbg !1020
  %457 = load double, double* %32, align 8, !dbg !1021
  %458 = fcmp oge double %457, 0.000000e+00, !dbg !1023
  br i1 %458, label %459, label %465, !dbg !1024

; <label>:459:                                    ; preds = %308
  %460 = load double, double* %23, align 8, !dbg !1025
  %461 = load double, double* %32, align 8, !dbg !1027
  %462 = fmul double %460, %461, !dbg !1028
  %463 = load double, double* %28, align 8, !dbg !1029
  %464 = fadd double %463, %462, !dbg !1029
  store double %464, double* %28, align 8, !dbg !1029
  br label %471, !dbg !1030

; <label>:465:                                    ; preds = %308
  %466 = load double, double* %23, align 8, !dbg !1031
  %467 = load double, double* %32, align 8, !dbg !1033
  %468 = fmul double %466, %467, !dbg !1034
  %469 = load double, double* %29, align 8, !dbg !1035
  %470 = fsub double %469, %468, !dbg !1035
  store double %470, double* %29, align 8, !dbg !1035
  br label %471

; <label>:471:                                    ; preds = %465, %459
  %472 = load double, double* %23, align 8, !dbg !1036
  %473 = load double, double* %23, align 8, !dbg !1037
  %474 = fmul double %472, %473, !dbg !1038
  %475 = load double, double* %33, align 8, !dbg !1039
  %476 = fmul double %474, %475, !dbg !1040
  %477 = load double, double* %33, align 8, !dbg !1041
  %478 = fmul double %476, %477, !dbg !1042
  %479 = load double, double* %30, align 8, !dbg !1043
  %480 = fadd double %479, %478, !dbg !1043
  store double %480, double* %30, align 8, !dbg !1043
  br label %481, !dbg !1044

; <label>:481:                                    ; preds = %471
  %482 = load i32, i32* %24, align 4, !dbg !1045
  %483 = add nsw i32 %482, 2, !dbg !1045
  store i32 %483, i32* %24, align 4, !dbg !1045
  br label %203, !dbg !1047, !llvm.loop !1048

; <label>:484:                                    ; preds = %203
  %485 = load double, double* %28, align 8, !dbg !1050
  %486 = load double, double* %29, align 8, !dbg !1051
  %487 = fsub double %485, %486, !dbg !1052
  %488 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %15, align 8, !dbg !1053
  %489 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %488, i32 0, i32 0, !dbg !1054
  store double %487, double* %489, align 8, !dbg !1055
  %490 = load double, double* %28, align 8, !dbg !1056
  %491 = load double, double* %29, align 8, !dbg !1057
  %492 = fadd double %490, %491, !dbg !1058
  %493 = fmul double 0x3CC0000000000000, %492, !dbg !1059
  %494 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %15, align 8, !dbg !1060
  %495 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %494, i32 0, i32 1, !dbg !1061
  store double %493, double* %495, align 8, !dbg !1062
  %496 = load double, double* %30, align 8, !dbg !1063
  %497 = load i32, i32* %26, align 4, !dbg !1064
  %498 = load i32, i32* %25, align 4, !dbg !1065
  %499 = sub nsw i32 %497, %498, !dbg !1066
  %500 = sitofp i32 %499 to double, !dbg !1067
  %501 = fmul double 5.000000e-01, %500, !dbg !1068
  %502 = fadd double %501, 1.000000e+00, !dbg !1069
  %503 = fdiv double %496, %502, !dbg !1070
  %504 = call double @sqrt(double %503) #6, !dbg !1071
  %505 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %15, align 8, !dbg !1072
  %506 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %505, i32 0, i32 1, !dbg !1073
  %507 = load double, double* %506, align 8, !dbg !1074
  %508 = fadd double %507, %504, !dbg !1074
  store double %508, double* %506, align 8, !dbg !1074
  %509 = load i32, i32* %26, align 4, !dbg !1075
  %510 = load i32, i32* %25, align 4, !dbg !1076
  %511 = sub nsw i32 %509, %510, !dbg !1077
  %512 = sitofp i32 %511 to double, !dbg !1075
  %513 = fadd double %512, 2.000000e+00, !dbg !1078
  %514 = fmul double 0x3CC0000000000000, %513, !dbg !1079
  %515 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %15, align 8, !dbg !1080
  %516 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %515, i32 0, i32 0, !dbg !1081
  %517 = load double, double* %516, align 8, !dbg !1081
  %518 = call double @fabs(double %517) #1, !dbg !1082
  %519 = fmul double %514, %518, !dbg !1083
  %520 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %15, align 8, !dbg !1084
  %521 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %520, i32 0, i32 1, !dbg !1085
  %522 = load double, double* %521, align 8, !dbg !1086
  %523 = fadd double %522, %519, !dbg !1086
  store double %523, double* %521, align 8, !dbg !1086
  store i32 0, i32* %8, align 4, !dbg !1087
  br label %524, !dbg !1087

; <label>:524:                                    ; preds = %61, %88, %126, %305, %484, %63
  %525 = load i32, i32* %8, align 4, !dbg !1088
  ret i32 %525, !dbg !1088
}

; Function Attrs: nounwind uwtable
define internal i32 @delta(i32, i32, i32, %struct.gsl_sf_result_struct*) #0 !dbg !1089 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.gsl_sf_result_struct*, align 8
  %10 = alloca %struct.gsl_sf_result_struct, align 8
  %11 = alloca %struct.gsl_sf_result_struct, align 8
  %12 = alloca %struct.gsl_sf_result_struct, align 8
  %13 = alloca %struct.gsl_sf_result_struct, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1092, metadata !59), !dbg !1093
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1094, metadata !59), !dbg !1095
  store i32 %2, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1096, metadata !59), !dbg !1097
  store %struct.gsl_sf_result_struct* %3, %struct.gsl_sf_result_struct** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %9, metadata !1098, metadata !59), !dbg !1099
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %10, metadata !1100, metadata !59), !dbg !1101
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %11, metadata !1102, metadata !59), !dbg !1103
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %12, metadata !1104, metadata !59), !dbg !1105
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %13, metadata !1106, metadata !59), !dbg !1107
  call void @llvm.dbg.declare(metadata i32* %14, metadata !1108, metadata !59), !dbg !1109
  store i32 0, i32* %14, align 4, !dbg !1109
  %15 = load i32, i32* %6, align 4, !dbg !1110
  %16 = load i32, i32* %7, align 4, !dbg !1111
  %17 = add nsw i32 %15, %16, !dbg !1112
  %18 = load i32, i32* %8, align 4, !dbg !1113
  %19 = sub nsw i32 %17, %18, !dbg !1114
  %20 = sdiv i32 %19, 2, !dbg !1115
  %21 = call i32 @gsl_sf_fact_e(i32 %20, %struct.gsl_sf_result_struct* %10), !dbg !1116
  %22 = load i32, i32* %14, align 4, !dbg !1117
  %23 = add nsw i32 %22, %21, !dbg !1117
  store i32 %23, i32* %14, align 4, !dbg !1117
  %24 = load i32, i32* %6, align 4, !dbg !1118
  %25 = load i32, i32* %8, align 4, !dbg !1119
  %26 = add nsw i32 %24, %25, !dbg !1120
  %27 = load i32, i32* %7, align 4, !dbg !1121
  %28 = sub nsw i32 %26, %27, !dbg !1122
  %29 = sdiv i32 %28, 2, !dbg !1123
  %30 = call i32 @gsl_sf_fact_e(i32 %29, %struct.gsl_sf_result_struct* %11), !dbg !1124
  %31 = load i32, i32* %14, align 4, !dbg !1125
  %32 = add nsw i32 %31, %30, !dbg !1125
  store i32 %32, i32* %14, align 4, !dbg !1125
  %33 = load i32, i32* %7, align 4, !dbg !1126
  %34 = load i32, i32* %8, align 4, !dbg !1127
  %35 = add nsw i32 %33, %34, !dbg !1128
  %36 = load i32, i32* %6, align 4, !dbg !1129
  %37 = sub nsw i32 %35, %36, !dbg !1130
  %38 = sdiv i32 %37, 2, !dbg !1131
  %39 = call i32 @gsl_sf_fact_e(i32 %38, %struct.gsl_sf_result_struct* %12), !dbg !1132
  %40 = load i32, i32* %14, align 4, !dbg !1133
  %41 = add nsw i32 %40, %39, !dbg !1133
  store i32 %41, i32* %14, align 4, !dbg !1133
  %42 = load i32, i32* %6, align 4, !dbg !1134
  %43 = load i32, i32* %7, align 4, !dbg !1135
  %44 = add nsw i32 %42, %43, !dbg !1136
  %45 = load i32, i32* %8, align 4, !dbg !1137
  %46 = add nsw i32 %44, %45, !dbg !1138
  %47 = sdiv i32 %46, 2, !dbg !1139
  %48 = add nsw i32 %47, 1, !dbg !1140
  %49 = call i32 @gsl_sf_fact_e(i32 %48, %struct.gsl_sf_result_struct* %13), !dbg !1141
  %50 = load i32, i32* %14, align 4, !dbg !1142
  %51 = add nsw i32 %50, %49, !dbg !1142
  store i32 %51, i32* %14, align 4, !dbg !1142
  %52 = load i32, i32* %14, align 4, !dbg !1143
  %53 = icmp ne i32 %52, 0, !dbg !1145
  br i1 %53, label %54, label %63, !dbg !1146

; <label>:54:                                     ; preds = %4
  br label %55, !dbg !1147, !llvm.loop !1149

; <label>:55:                                     ; preds = %54
  %56 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1150
  %57 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %56, i32 0, i32 0, !dbg !1150
  store double 0x7FF0000000000000, double* %57, align 8, !dbg !1150
  %58 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1150
  %59 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %58, i32 0, i32 1, !dbg !1150
  store double 0x7FF0000000000000, double* %59, align 8, !dbg !1150
  br label %60, !dbg !1150, !llvm.loop !1153

; <label>:60:                                     ; preds = %55
  call void @gsl_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 72, i32 16), !dbg !1155
  store i32 16, i32* %5, align 4, !dbg !1155
  br label %84, !dbg !1155
                                                  ; No predecessors!
  br label %62, !dbg !1158

; <label>:62:                                     ; preds = %61
  br label %63, !dbg !1160

; <label>:63:                                     ; preds = %62, %4
  %64 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !1161
  %65 = load double, double* %64, align 8, !dbg !1161
  %66 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 0, !dbg !1162
  %67 = load double, double* %66, align 8, !dbg !1162
  %68 = fmul double %65, %67, !dbg !1163
  %69 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %12, i32 0, i32 0, !dbg !1164
  %70 = load double, double* %69, align 8, !dbg !1164
  %71 = fmul double %68, %70, !dbg !1165
  %72 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %13, i32 0, i32 0, !dbg !1166
  %73 = load double, double* %72, align 8, !dbg !1166
  %74 = fdiv double %71, %73, !dbg !1167
  %75 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1168
  %76 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %75, i32 0, i32 0, !dbg !1169
  store double %74, double* %76, align 8, !dbg !1170
  %77 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1171
  %78 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %77, i32 0, i32 0, !dbg !1172
  %79 = load double, double* %78, align 8, !dbg !1172
  %80 = call double @fabs(double %79) #1, !dbg !1173
  %81 = fmul double 0x3CD0000000000000, %80, !dbg !1174
  %82 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1175
  %83 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %82, i32 0, i32 1, !dbg !1176
  store double %81, double* %83, align 8, !dbg !1177
  store i32 0, i32* %5, align 4, !dbg !1178
  br label %84, !dbg !1178

; <label>:84:                                     ; preds = %63, %60
  %85 = load i32, i32* %5, align 4, !dbg !1179
  ret i32 %85, !dbg !1179
}

; Function Attrs: nounwind
declare double @sqrt(double) #4

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @locMin5(i32, i32, i32, i32, i32) #3 !dbg !1180 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1183, metadata !59), !dbg !1184
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1185, metadata !59), !dbg !1186
  store i32 %2, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1187, metadata !59), !dbg !1188
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1189, metadata !59), !dbg !1190
  store i32 %4, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1191, metadata !59), !dbg !1192
  call void @llvm.dbg.declare(metadata i32* %11, metadata !1193, metadata !59), !dbg !1194
  %14 = load i32, i32* %6, align 4, !dbg !1195
  %15 = load i32, i32* %7, align 4, !dbg !1195
  %16 = icmp slt i32 %14, %15, !dbg !1195
  br i1 %16, label %17, label %19, !dbg !1195

; <label>:17:                                     ; preds = %5
  %18 = load i32, i32* %6, align 4, !dbg !1196
  br label %21, !dbg !1196

; <label>:19:                                     ; preds = %5
  %20 = load i32, i32* %7, align 4, !dbg !1198
  br label %21, !dbg !1198

; <label>:21:                                     ; preds = %19, %17
  %22 = phi i32 [ %18, %17 ], [ %20, %19 ], !dbg !1200
  store i32 %22, i32* %11, align 4, !dbg !1202
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1203, metadata !59), !dbg !1204
  %23 = load i32, i32* %8, align 4, !dbg !1205
  %24 = load i32, i32* %9, align 4, !dbg !1205
  %25 = icmp slt i32 %23, %24, !dbg !1205
  br i1 %25, label %26, label %28, !dbg !1205

; <label>:26:                                     ; preds = %21
  %27 = load i32, i32* %8, align 4, !dbg !1206
  br label %30, !dbg !1206

; <label>:28:                                     ; preds = %21
  %29 = load i32, i32* %9, align 4, !dbg !1207
  br label %30, !dbg !1207

; <label>:30:                                     ; preds = %28, %26
  %31 = phi i32 [ %27, %26 ], [ %29, %28 ], !dbg !1208
  store i32 %31, i32* %12, align 4, !dbg !1209
  call void @llvm.dbg.declare(metadata i32* %13, metadata !1210, metadata !59), !dbg !1211
  %32 = load i32, i32* %11, align 4, !dbg !1212
  %33 = load i32, i32* %12, align 4, !dbg !1212
  %34 = icmp slt i32 %32, %33, !dbg !1212
  br i1 %34, label %35, label %37, !dbg !1212

; <label>:35:                                     ; preds = %30
  %36 = load i32, i32* %11, align 4, !dbg !1213
  br label %39, !dbg !1213

; <label>:37:                                     ; preds = %30
  %38 = load i32, i32* %12, align 4, !dbg !1214
  br label %39, !dbg !1214

; <label>:39:                                     ; preds = %37, %35
  %40 = phi i32 [ %36, %35 ], [ %38, %37 ], !dbg !1215
  store i32 %40, i32* %13, align 4, !dbg !1216
  %41 = load i32, i32* %10, align 4, !dbg !1217
  %42 = load i32, i32* %13, align 4, !dbg !1217
  %43 = icmp slt i32 %41, %42, !dbg !1217
  br i1 %43, label %44, label %46, !dbg !1217

; <label>:44:                                     ; preds = %39
  %45 = load i32, i32* %10, align 4, !dbg !1218
  br label %48, !dbg !1218

; <label>:46:                                     ; preds = %39
  %47 = load i32, i32* %13, align 4, !dbg !1219
  br label %48, !dbg !1219

; <label>:48:                                     ; preds = %46, %44
  %49 = phi i32 [ %45, %44 ], [ %47, %46 ], !dbg !1220
  ret i32 %49, !dbg !1221
}

declare i32 @gsl_sf_fact_e(i32, %struct.gsl_sf_result_struct*) #2

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_coupling_RacahW_e(i32, i32, i32, i32, i32, i32, %struct.gsl_sf_result_struct*) #0 !dbg !1222 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.gsl_sf_result_struct*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1223, metadata !59), !dbg !1224
  store i32 %1, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1225, metadata !59), !dbg !1226
  store i32 %2, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1227, metadata !59), !dbg !1228
  store i32 %3, i32* %11, align 4
  call void @llvm.dbg.declare(metadata i32* %11, metadata !1229, metadata !59), !dbg !1230
  store i32 %4, i32* %12, align 4
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1231, metadata !59), !dbg !1232
  store i32 %5, i32* %13, align 4
  call void @llvm.dbg.declare(metadata i32* %13, metadata !1233, metadata !59), !dbg !1234
  store %struct.gsl_sf_result_struct* %6, %struct.gsl_sf_result_struct** %14, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %14, metadata !1235, metadata !59), !dbg !1236
  call void @llvm.dbg.declare(metadata i32* %15, metadata !1237, metadata !59), !dbg !1238
  %17 = load i32, i32* %8, align 4, !dbg !1239
  %18 = load i32, i32* %9, align 4, !dbg !1240
  %19 = load i32, i32* %12, align 4, !dbg !1241
  %20 = load i32, i32* %11, align 4, !dbg !1242
  %21 = load i32, i32* %10, align 4, !dbg !1243
  %22 = load i32, i32* %13, align 4, !dbg !1244
  %23 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %14, align 8, !dbg !1245
  %24 = call i32 @gsl_sf_coupling_6j_e(i32 %17, i32 %18, i32 %19, i32 %20, i32 %21, i32 %22, %struct.gsl_sf_result_struct* %23), !dbg !1246
  store i32 %24, i32* %15, align 4, !dbg !1238
  call void @llvm.dbg.declare(metadata i32* %16, metadata !1247, metadata !59), !dbg !1248
  %25 = load i32, i32* %8, align 4, !dbg !1249
  %26 = load i32, i32* %9, align 4, !dbg !1250
  %27 = add nsw i32 %25, %26, !dbg !1251
  %28 = load i32, i32* %10, align 4, !dbg !1252
  %29 = add nsw i32 %27, %28, !dbg !1253
  %30 = load i32, i32* %11, align 4, !dbg !1254
  %31 = add nsw i32 %29, %30, !dbg !1255
  %32 = sdiv i32 %31, 2, !dbg !1256
  store i32 %32, i32* %16, align 4, !dbg !1248
  %33 = load i32, i32* %16, align 4, !dbg !1257
  %34 = and i32 %33, 1, !dbg !1257
  %35 = icmp ne i32 %34, 0, !dbg !1257
  %36 = select i1 %35, double -1.000000e+00, double 1.000000e+00, !dbg !1257
  %37 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %14, align 8, !dbg !1258
  %38 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %37, i32 0, i32 0, !dbg !1259
  %39 = load double, double* %38, align 8, !dbg !1260
  %40 = fmul double %39, %36, !dbg !1260
  store double %40, double* %38, align 8, !dbg !1260
  %41 = load i32, i32* %15, align 4, !dbg !1261
  ret i32 %41, !dbg !1262
}

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_coupling_9j_e(i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.gsl_sf_result_struct*) #0 !dbg !1263 {
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.gsl_sf_result_struct*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca double, align 8
  %26 = alloca double, align 8
  %27 = alloca double, align 8
  %28 = alloca double, align 8
  %29 = alloca %struct.gsl_sf_result_struct, align 8
  %30 = alloca %struct.gsl_sf_result_struct, align 8
  %31 = alloca %struct.gsl_sf_result_struct, align 8
  %32 = alloca double, align 8
  %33 = alloca double, align 8
  %34 = alloca i32, align 4
  store i32 %0, i32* %12, align 4
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1266, metadata !59), !dbg !1267
  store i32 %1, i32* %13, align 4
  call void @llvm.dbg.declare(metadata i32* %13, metadata !1268, metadata !59), !dbg !1269
  store i32 %2, i32* %14, align 4
  call void @llvm.dbg.declare(metadata i32* %14, metadata !1270, metadata !59), !dbg !1271
  store i32 %3, i32* %15, align 4
  call void @llvm.dbg.declare(metadata i32* %15, metadata !1272, metadata !59), !dbg !1273
  store i32 %4, i32* %16, align 4
  call void @llvm.dbg.declare(metadata i32* %16, metadata !1274, metadata !59), !dbg !1275
  store i32 %5, i32* %17, align 4
  call void @llvm.dbg.declare(metadata i32* %17, metadata !1276, metadata !59), !dbg !1277
  store i32 %6, i32* %18, align 4
  call void @llvm.dbg.declare(metadata i32* %18, metadata !1278, metadata !59), !dbg !1279
  store i32 %7, i32* %19, align 4
  call void @llvm.dbg.declare(metadata i32* %19, metadata !1280, metadata !59), !dbg !1281
  store i32 %8, i32* %20, align 4
  call void @llvm.dbg.declare(metadata i32* %20, metadata !1282, metadata !59), !dbg !1283
  store %struct.gsl_sf_result_struct* %9, %struct.gsl_sf_result_struct** %21, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %21, metadata !1284, metadata !59), !dbg !1285
  %35 = load i32, i32* %12, align 4, !dbg !1286
  %36 = icmp slt i32 %35, 0, !dbg !1288
  br i1 %36, label %61, label %37, !dbg !1289

; <label>:37:                                     ; preds = %10
  %38 = load i32, i32* %13, align 4, !dbg !1290
  %39 = icmp slt i32 %38, 0, !dbg !1292
  br i1 %39, label %61, label %40, !dbg !1293

; <label>:40:                                     ; preds = %37
  %41 = load i32, i32* %14, align 4, !dbg !1294
  %42 = icmp slt i32 %41, 0, !dbg !1296
  br i1 %42, label %61, label %43, !dbg !1297

; <label>:43:                                     ; preds = %40
  %44 = load i32, i32* %15, align 4, !dbg !1298
  %45 = icmp slt i32 %44, 0, !dbg !1299
  br i1 %45, label %61, label %46, !dbg !1300

; <label>:46:                                     ; preds = %43
  %47 = load i32, i32* %16, align 4, !dbg !1301
  %48 = icmp slt i32 %47, 0, !dbg !1302
  br i1 %48, label %61, label %49, !dbg !1303

; <label>:49:                                     ; preds = %46
  %50 = load i32, i32* %17, align 4, !dbg !1304
  %51 = icmp slt i32 %50, 0, !dbg !1306
  br i1 %51, label %61, label %52, !dbg !1307

; <label>:52:                                     ; preds = %49
  %53 = load i32, i32* %18, align 4, !dbg !1308
  %54 = icmp slt i32 %53, 0, !dbg !1309
  br i1 %54, label %61, label %55, !dbg !1310

; <label>:55:                                     ; preds = %52
  %56 = load i32, i32* %19, align 4, !dbg !1311
  %57 = icmp slt i32 %56, 0, !dbg !1312
  br i1 %57, label %61, label %58, !dbg !1313

; <label>:58:                                     ; preds = %55
  %59 = load i32, i32* %20, align 4, !dbg !1314
  %60 = icmp slt i32 %59, 0, !dbg !1315
  br i1 %60, label %61, label %70, !dbg !1316

; <label>:61:                                     ; preds = %58, %55, %52, %49, %46, %43, %40, %37, %10
  br label %62, !dbg !1318, !llvm.loop !1320

; <label>:62:                                     ; preds = %61
  %63 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %21, align 8, !dbg !1321
  %64 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %63, i32 0, i32 0, !dbg !1321
  store double 0x7FF8000000000000, double* %64, align 8, !dbg !1321
  %65 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %21, align 8, !dbg !1321
  %66 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %65, i32 0, i32 1, !dbg !1321
  store double 0x7FF8000000000000, double* %66, align 8, !dbg !1321
  br label %67, !dbg !1321, !llvm.loop !1324

; <label>:67:                                     ; preds = %62
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 348, i32 1), !dbg !1326
  store i32 1, i32* %11, align 4, !dbg !1326
  br label %300, !dbg !1326
                                                  ; No predecessors!
  br label %69, !dbg !1329

; <label>:69:                                     ; preds = %68
  br label %300, !dbg !1331

; <label>:70:                                     ; preds = %58
  %71 = load i32, i32* %12, align 4, !dbg !1332
  %72 = load i32, i32* %13, align 4, !dbg !1334
  %73 = load i32, i32* %14, align 4, !dbg !1335
  %74 = call i32 @triangle_selection_fails(i32 %71, i32 %72, i32 %73), !dbg !1336
  %75 = icmp ne i32 %74, 0, !dbg !1336
  br i1 %75, label %106, label %76, !dbg !1337

; <label>:76:                                     ; preds = %70
  %77 = load i32, i32* %15, align 4, !dbg !1338
  %78 = load i32, i32* %16, align 4, !dbg !1340
  %79 = load i32, i32* %17, align 4, !dbg !1341
  %80 = call i32 @triangle_selection_fails(i32 %77, i32 %78, i32 %79), !dbg !1342
  %81 = icmp ne i32 %80, 0, !dbg !1342
  br i1 %81, label %106, label %82, !dbg !1343

; <label>:82:                                     ; preds = %76
  %83 = load i32, i32* %18, align 4, !dbg !1344
  %84 = load i32, i32* %19, align 4, !dbg !1345
  %85 = load i32, i32* %20, align 4, !dbg !1346
  %86 = call i32 @triangle_selection_fails(i32 %83, i32 %84, i32 %85), !dbg !1347
  %87 = icmp ne i32 %86, 0, !dbg !1347
  br i1 %87, label %106, label %88, !dbg !1348

; <label>:88:                                     ; preds = %82
  %89 = load i32, i32* %12, align 4, !dbg !1349
  %90 = load i32, i32* %15, align 4, !dbg !1350
  %91 = load i32, i32* %18, align 4, !dbg !1351
  %92 = call i32 @triangle_selection_fails(i32 %89, i32 %90, i32 %91), !dbg !1352
  %93 = icmp ne i32 %92, 0, !dbg !1352
  br i1 %93, label %106, label %94, !dbg !1353

; <label>:94:                                     ; preds = %88
  %95 = load i32, i32* %13, align 4, !dbg !1354
  %96 = load i32, i32* %16, align 4, !dbg !1355
  %97 = load i32, i32* %19, align 4, !dbg !1356
  %98 = call i32 @triangle_selection_fails(i32 %95, i32 %96, i32 %97), !dbg !1357
  %99 = icmp ne i32 %98, 0, !dbg !1357
  br i1 %99, label %106, label %100, !dbg !1358

; <label>:100:                                    ; preds = %94
  %101 = load i32, i32* %14, align 4, !dbg !1359
  %102 = load i32, i32* %17, align 4, !dbg !1360
  %103 = load i32, i32* %20, align 4, !dbg !1361
  %104 = call i32 @triangle_selection_fails(i32 %101, i32 %102, i32 %103), !dbg !1362
  %105 = icmp ne i32 %104, 0, !dbg !1362
  br i1 %105, label %106, label %111, !dbg !1363

; <label>:106:                                    ; preds = %100, %94, %88, %82, %76, %70
  %107 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %21, align 8, !dbg !1364
  %108 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %107, i32 0, i32 0, !dbg !1366
  store double 0.000000e+00, double* %108, align 8, !dbg !1367
  %109 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %21, align 8, !dbg !1368
  %110 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %109, i32 0, i32 1, !dbg !1369
  store double 0.000000e+00, double* %110, align 8, !dbg !1370
  store i32 0, i32* %11, align 4, !dbg !1371
  br label %300, !dbg !1371

; <label>:111:                                    ; preds = %100
  call void @llvm.dbg.declare(metadata i32* %22, metadata !1372, metadata !59), !dbg !1374
  call void @llvm.dbg.declare(metadata i32* %23, metadata !1375, metadata !59), !dbg !1376
  %112 = load i32, i32* %12, align 4, !dbg !1377
  %113 = load i32, i32* %20, align 4, !dbg !1378
  %114 = sub nsw i32 %112, %113, !dbg !1379
  %115 = call i32 @abs(i32 %114) #1, !dbg !1380
  %116 = load i32, i32* %19, align 4, !dbg !1381
  %117 = load i32, i32* %15, align 4, !dbg !1382
  %118 = sub nsw i32 %116, %117, !dbg !1383
  %119 = call i32 @abs(i32 %118) #1, !dbg !1384
  %120 = load i32, i32* %13, align 4, !dbg !1386
  %121 = load i32, i32* %17, align 4, !dbg !1387
  %122 = sub nsw i32 %120, %121, !dbg !1388
  %123 = call i32 @abs(i32 %122) #1, !dbg !1389
  %124 = call i32 @locMax3(i32 %115, i32 %119, i32 %123), !dbg !1391
  store i32 %124, i32* %23, align 4, !dbg !1376
  call void @llvm.dbg.declare(metadata i32* %24, metadata !1393, metadata !59), !dbg !1394
  %125 = load i32, i32* %12, align 4, !dbg !1395
  %126 = load i32, i32* %20, align 4, !dbg !1396
  %127 = add nsw i32 %125, %126, !dbg !1397
  %128 = load i32, i32* %19, align 4, !dbg !1398
  %129 = load i32, i32* %15, align 4, !dbg !1399
  %130 = add nsw i32 %128, %129, !dbg !1400
  %131 = load i32, i32* %13, align 4, !dbg !1401
  %132 = load i32, i32* %17, align 4, !dbg !1402
  %133 = add nsw i32 %131, %132, !dbg !1403
  %134 = call i32 @locMin3(i32 %127, i32 %130, i32 %133), !dbg !1404
  store i32 %134, i32* %24, align 4, !dbg !1394
  call void @llvm.dbg.declare(metadata double* %25, metadata !1405, metadata !59), !dbg !1406
  store double 0.000000e+00, double* %25, align 8, !dbg !1406
  call void @llvm.dbg.declare(metadata double* %26, metadata !1407, metadata !59), !dbg !1408
  store double 0.000000e+00, double* %26, align 8, !dbg !1408
  call void @llvm.dbg.declare(metadata double* %27, metadata !1409, metadata !59), !dbg !1410
  store double 0.000000e+00, double* %27, align 8, !dbg !1410
  call void @llvm.dbg.declare(metadata double* %28, metadata !1411, metadata !59), !dbg !1412
  %135 = load i32, i32* %23, align 4, !dbg !1413
  store i32 %135, i32* %22, align 4, !dbg !1415
  br label %136, !dbg !1416

; <label>:136:                                    ; preds = %251, %111
  %137 = load i32, i32* %22, align 4, !dbg !1417
  %138 = load i32, i32* %24, align 4, !dbg !1420
  %139 = icmp sle i32 %137, %138, !dbg !1421
  br i1 %139, label %140, label %254, !dbg !1422

; <label>:140:                                    ; preds = %136
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %29, metadata !1423, metadata !59), !dbg !1425
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %30, metadata !1426, metadata !59), !dbg !1427
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %31, metadata !1428, metadata !59), !dbg !1429
  call void @llvm.dbg.declare(metadata double* %32, metadata !1430, metadata !59), !dbg !1431
  call void @llvm.dbg.declare(metadata double* %33, metadata !1432, metadata !59), !dbg !1433
  call void @llvm.dbg.declare(metadata i32* %34, metadata !1434, metadata !59), !dbg !1435
  store i32 0, i32* %34, align 4, !dbg !1435
  %141 = load i32, i32* %12, align 4, !dbg !1436
  %142 = load i32, i32* %20, align 4, !dbg !1437
  %143 = load i32, i32* %22, align 4, !dbg !1438
  %144 = load i32, i32* %19, align 4, !dbg !1439
  %145 = load i32, i32* %15, align 4, !dbg !1440
  %146 = load i32, i32* %18, align 4, !dbg !1441
  %147 = call i32 @gsl_sf_coupling_6j_e(i32 %141, i32 %142, i32 %143, i32 %144, i32 %145, i32 %146, %struct.gsl_sf_result_struct* %29), !dbg !1442
  %148 = load i32, i32* %34, align 4, !dbg !1443
  %149 = add nsw i32 %148, %147, !dbg !1443
  store i32 %149, i32* %34, align 4, !dbg !1443
  %150 = load i32, i32* %13, align 4, !dbg !1444
  %151 = load i32, i32* %17, align 4, !dbg !1445
  %152 = load i32, i32* %22, align 4, !dbg !1446
  %153 = load i32, i32* %15, align 4, !dbg !1447
  %154 = load i32, i32* %19, align 4, !dbg !1448
  %155 = load i32, i32* %16, align 4, !dbg !1449
  %156 = call i32 @gsl_sf_coupling_6j_e(i32 %150, i32 %151, i32 %152, i32 %153, i32 %154, i32 %155, %struct.gsl_sf_result_struct* %30), !dbg !1450
  %157 = load i32, i32* %34, align 4, !dbg !1451
  %158 = add nsw i32 %157, %156, !dbg !1451
  store i32 %158, i32* %34, align 4, !dbg !1451
  %159 = load i32, i32* %12, align 4, !dbg !1452
  %160 = load i32, i32* %20, align 4, !dbg !1453
  %161 = load i32, i32* %22, align 4, !dbg !1454
  %162 = load i32, i32* %17, align 4, !dbg !1455
  %163 = load i32, i32* %13, align 4, !dbg !1456
  %164 = load i32, i32* %14, align 4, !dbg !1457
  %165 = call i32 @gsl_sf_coupling_6j_e(i32 %159, i32 %160, i32 %161, i32 %162, i32 %163, i32 %164, %struct.gsl_sf_result_struct* %31), !dbg !1458
  %166 = load i32, i32* %34, align 4, !dbg !1459
  %167 = add nsw i32 %166, %165, !dbg !1459
  store i32 %167, i32* %34, align 4, !dbg !1459
  %168 = load i32, i32* %34, align 4, !dbg !1460
  %169 = icmp ne i32 %168, 0, !dbg !1462
  br i1 %169, label %170, label %179, !dbg !1463

; <label>:170:                                    ; preds = %140
  br label %171, !dbg !1464, !llvm.loop !1466

; <label>:171:                                    ; preds = %170
  %172 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %21, align 8, !dbg !1467
  %173 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %172, i32 0, i32 0, !dbg !1467
  store double 0x7FF0000000000000, double* %173, align 8, !dbg !1467
  %174 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %21, align 8, !dbg !1467
  %175 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %174, i32 0, i32 1, !dbg !1467
  store double 0x7FF0000000000000, double* %175, align 8, !dbg !1467
  br label %176, !dbg !1467, !llvm.loop !1470

; <label>:176:                                    ; preds = %171
  call void @gsl_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 380, i32 16), !dbg !1472
  store i32 16, i32* %11, align 4, !dbg !1472
  br label %300, !dbg !1472
                                                  ; No predecessors!
  br label %178, !dbg !1475

; <label>:178:                                    ; preds = %177
  br label %179, !dbg !1477

; <label>:179:                                    ; preds = %178, %140
  %180 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %29, i32 0, i32 0, !dbg !1478
  %181 = load double, double* %180, align 8, !dbg !1478
  %182 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %30, i32 0, i32 0, !dbg !1479
  %183 = load double, double* %182, align 8, !dbg !1479
  %184 = fmul double %181, %183, !dbg !1480
  %185 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %31, i32 0, i32 0, !dbg !1481
  %186 = load double, double* %185, align 8, !dbg !1481
  %187 = fmul double %184, %186, !dbg !1482
  store double %187, double* %32, align 8, !dbg !1483
  %188 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %29, i32 0, i32 1, !dbg !1484
  %189 = load double, double* %188, align 8, !dbg !1484
  %190 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %30, i32 0, i32 0, !dbg !1485
  %191 = load double, double* %190, align 8, !dbg !1485
  %192 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %31, i32 0, i32 0, !dbg !1486
  %193 = load double, double* %192, align 8, !dbg !1486
  %194 = fmul double %191, %193, !dbg !1487
  %195 = call double @fabs(double %194) #1, !dbg !1488
  %196 = fmul double %189, %195, !dbg !1489
  store double %196, double* %33, align 8, !dbg !1490
  %197 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %30, i32 0, i32 1, !dbg !1491
  %198 = load double, double* %197, align 8, !dbg !1491
  %199 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %29, i32 0, i32 0, !dbg !1492
  %200 = load double, double* %199, align 8, !dbg !1492
  %201 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %31, i32 0, i32 0, !dbg !1493
  %202 = load double, double* %201, align 8, !dbg !1493
  %203 = fmul double %200, %202, !dbg !1494
  %204 = call double @fabs(double %203) #1, !dbg !1495
  %205 = fmul double %198, %204, !dbg !1496
  %206 = load double, double* %33, align 8, !dbg !1497
  %207 = fadd double %206, %205, !dbg !1497
  store double %207, double* %33, align 8, !dbg !1497
  %208 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %31, i32 0, i32 1, !dbg !1498
  %209 = load double, double* %208, align 8, !dbg !1498
  %210 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %29, i32 0, i32 0, !dbg !1499
  %211 = load double, double* %210, align 8, !dbg !1499
  %212 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %30, i32 0, i32 0, !dbg !1500
  %213 = load double, double* %212, align 8, !dbg !1500
  %214 = fmul double %211, %213, !dbg !1501
  %215 = call double @fabs(double %214) #1, !dbg !1502
  %216 = fmul double %209, %215, !dbg !1503
  %217 = load double, double* %33, align 8, !dbg !1504
  %218 = fadd double %217, %216, !dbg !1504
  store double %218, double* %33, align 8, !dbg !1504
  %219 = load double, double* %32, align 8, !dbg !1505
  %220 = fcmp oge double %219, 0.000000e+00, !dbg !1507
  br i1 %220, label %221, label %229, !dbg !1508

; <label>:221:                                    ; preds = %179
  %222 = load i32, i32* %22, align 4, !dbg !1509
  %223 = add nsw i32 %222, 1, !dbg !1511
  %224 = sitofp i32 %223 to double, !dbg !1512
  %225 = load double, double* %32, align 8, !dbg !1513
  %226 = fmul double %224, %225, !dbg !1514
  %227 = load double, double* %25, align 8, !dbg !1515
  %228 = fadd double %227, %226, !dbg !1515
  store double %228, double* %25, align 8, !dbg !1515
  br label %237, !dbg !1516

; <label>:229:                                    ; preds = %179
  %230 = load i32, i32* %22, align 4, !dbg !1517
  %231 = add nsw i32 %230, 1, !dbg !1519
  %232 = sitofp i32 %231 to double, !dbg !1520
  %233 = load double, double* %32, align 8, !dbg !1521
  %234 = fmul double %232, %233, !dbg !1522
  %235 = load double, double* %26, align 8, !dbg !1523
  %236 = fsub double %235, %234, !dbg !1523
  store double %236, double* %26, align 8, !dbg !1523
  br label %237

; <label>:237:                                    ; preds = %229, %221
  %238 = load i32, i32* %22, align 4, !dbg !1524
  %239 = add nsw i32 %238, 1, !dbg !1525
  %240 = sitofp i32 %239 to double, !dbg !1526
  %241 = load double, double* %33, align 8, !dbg !1527
  %242 = fmul double %240, %241, !dbg !1528
  %243 = load i32, i32* %22, align 4, !dbg !1529
  %244 = add nsw i32 %243, 1, !dbg !1530
  %245 = sitofp i32 %244 to double, !dbg !1531
  %246 = load double, double* %33, align 8, !dbg !1532
  %247 = fmul double %245, %246, !dbg !1533
  %248 = fmul double %242, %247, !dbg !1534
  %249 = load double, double* %27, align 8, !dbg !1535
  %250 = fadd double %249, %248, !dbg !1535
  store double %250, double* %27, align 8, !dbg !1535
  br label %251, !dbg !1536

; <label>:251:                                    ; preds = %237
  %252 = load i32, i32* %22, align 4, !dbg !1537
  %253 = add nsw i32 %252, 2, !dbg !1537
  store i32 %253, i32* %22, align 4, !dbg !1537
  br label %136, !dbg !1539, !llvm.loop !1540

; <label>:254:                                    ; preds = %136
  %255 = load i32, i32* %23, align 4, !dbg !1542
  %256 = and i32 %255, 1, !dbg !1542
  %257 = icmp ne i32 %256, 0, !dbg !1542
  %258 = select i1 %257, double -1.000000e+00, double 1.000000e+00, !dbg !1542
  store double %258, double* %28, align 8, !dbg !1543
  %259 = load double, double* %28, align 8, !dbg !1544
  %260 = load double, double* %25, align 8, !dbg !1545
  %261 = load double, double* %26, align 8, !dbg !1546
  %262 = fsub double %260, %261, !dbg !1547
  %263 = fmul double %259, %262, !dbg !1548
  %264 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %21, align 8, !dbg !1549
  %265 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %264, i32 0, i32 0, !dbg !1550
  store double %263, double* %265, align 8, !dbg !1551
  %266 = load double, double* %25, align 8, !dbg !1552
  %267 = load double, double* %26, align 8, !dbg !1553
  %268 = fadd double %266, %267, !dbg !1554
  %269 = fmul double 0x3CC0000000000000, %268, !dbg !1555
  %270 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %21, align 8, !dbg !1556
  %271 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %270, i32 0, i32 1, !dbg !1557
  store double %269, double* %271, align 8, !dbg !1558
  %272 = load double, double* %27, align 8, !dbg !1559
  %273 = load i32, i32* %24, align 4, !dbg !1560
  %274 = load i32, i32* %23, align 4, !dbg !1561
  %275 = sub nsw i32 %273, %274, !dbg !1562
  %276 = sitofp i32 %275 to double, !dbg !1563
  %277 = fmul double 5.000000e-01, %276, !dbg !1564
  %278 = fadd double %277, 1.000000e+00, !dbg !1565
  %279 = fdiv double %272, %278, !dbg !1566
  %280 = call double @sqrt(double %279) #6, !dbg !1567
  %281 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %21, align 8, !dbg !1568
  %282 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %281, i32 0, i32 1, !dbg !1569
  %283 = load double, double* %282, align 8, !dbg !1570
  %284 = fadd double %283, %280, !dbg !1570
  store double %284, double* %282, align 8, !dbg !1570
  %285 = load i32, i32* %24, align 4, !dbg !1571
  %286 = load i32, i32* %23, align 4, !dbg !1572
  %287 = sub nsw i32 %285, %286, !dbg !1573
  %288 = sitofp i32 %287 to double, !dbg !1571
  %289 = fadd double %288, 2.000000e+00, !dbg !1574
  %290 = fmul double 0x3CC0000000000000, %289, !dbg !1575
  %291 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %21, align 8, !dbg !1576
  %292 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %291, i32 0, i32 0, !dbg !1577
  %293 = load double, double* %292, align 8, !dbg !1577
  %294 = call double @fabs(double %293) #1, !dbg !1578
  %295 = fmul double %290, %294, !dbg !1579
  %296 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %21, align 8, !dbg !1580
  %297 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %296, i32 0, i32 1, !dbg !1581
  %298 = load double, double* %297, align 8, !dbg !1582
  %299 = fadd double %298, %295, !dbg !1582
  store double %299, double* %297, align 8, !dbg !1582
  store i32 0, i32* %11, align 4, !dbg !1583
  br label %300, !dbg !1583

; <label>:300:                                    ; preds = %67, %106, %176, %254, %69
  %301 = load i32, i32* %11, align 4, !dbg !1584
  ret i32 %301, !dbg !1584
}

; Function Attrs: nounwind readnone
declare i32 @abs(i32) #5

; Function Attrs: nounwind uwtable
define double @gsl_sf_coupling_3j(i32, i32, i32, i32, i32, i32) #0 !dbg !1585 {
  %7 = alloca double, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.gsl_sf_result_struct, align 8
  %15 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1588, metadata !59), !dbg !1589
  store i32 %1, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1590, metadata !59), !dbg !1591
  store i32 %2, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1592, metadata !59), !dbg !1593
  store i32 %3, i32* %11, align 4
  call void @llvm.dbg.declare(metadata i32* %11, metadata !1594, metadata !59), !dbg !1595
  store i32 %4, i32* %12, align 4
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1596, metadata !59), !dbg !1597
  store i32 %5, i32* %13, align 4
  call void @llvm.dbg.declare(metadata i32* %13, metadata !1598, metadata !59), !dbg !1599
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %14, metadata !1600, metadata !59), !dbg !1601
  call void @llvm.dbg.declare(metadata i32* %15, metadata !1602, metadata !59), !dbg !1601
  %16 = load i32, i32* %8, align 4, !dbg !1601
  %17 = load i32, i32* %9, align 4, !dbg !1601
  %18 = load i32, i32* %10, align 4, !dbg !1601
  %19 = load i32, i32* %11, align 4, !dbg !1601
  %20 = load i32, i32* %12, align 4, !dbg !1601
  %21 = load i32, i32* %13, align 4, !dbg !1601
  %22 = call i32 @gsl_sf_coupling_3j_e(i32 %16, i32 %17, i32 %18, i32 %19, i32 %20, i32 %21, %struct.gsl_sf_result_struct* %14), !dbg !1601
  store i32 %22, i32* %15, align 4, !dbg !1601
  %23 = load i32, i32* %15, align 4, !dbg !1603
  %24 = icmp ne i32 %23, 0, !dbg !1603
  br i1 %24, label %25, label %31, !dbg !1601

; <label>:25:                                     ; preds = %6
  br label %26, !dbg !1605, !llvm.loop !1608

; <label>:26:                                     ; preds = %25
  %27 = load i32, i32* %15, align 4, !dbg !1610
  call void @gsl_error(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 418, i32 %27), !dbg !1610
  %28 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 0, !dbg !1610
  %29 = load double, double* %28, align 8, !dbg !1610
  store double %29, double* %7, align 8, !dbg !1610
  br label %34, !dbg !1610
                                                  ; No predecessors!
  br label %31, !dbg !1613

; <label>:31:                                     ; preds = %30, %6
  %32 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 0, !dbg !1615
  %33 = load double, double* %32, align 8, !dbg !1615
  store double %33, double* %7, align 8, !dbg !1615
  br label %34, !dbg !1615

; <label>:34:                                     ; preds = %31, %26
  %35 = load double, double* %7, align 8, !dbg !1617
  ret double %35, !dbg !1617
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_coupling_6j(i32, i32, i32, i32, i32, i32) #0 !dbg !1618 {
  %7 = alloca double, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.gsl_sf_result_struct, align 8
  %15 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1619, metadata !59), !dbg !1620
  store i32 %1, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1621, metadata !59), !dbg !1622
  store i32 %2, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1623, metadata !59), !dbg !1624
  store i32 %3, i32* %11, align 4
  call void @llvm.dbg.declare(metadata i32* %11, metadata !1625, metadata !59), !dbg !1626
  store i32 %4, i32* %12, align 4
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1627, metadata !59), !dbg !1628
  store i32 %5, i32* %13, align 4
  call void @llvm.dbg.declare(metadata i32* %13, metadata !1629, metadata !59), !dbg !1630
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %14, metadata !1631, metadata !59), !dbg !1632
  call void @llvm.dbg.declare(metadata i32* %15, metadata !1633, metadata !59), !dbg !1632
  %16 = load i32, i32* %8, align 4, !dbg !1632
  %17 = load i32, i32* %9, align 4, !dbg !1632
  %18 = load i32, i32* %10, align 4, !dbg !1632
  %19 = load i32, i32* %11, align 4, !dbg !1632
  %20 = load i32, i32* %12, align 4, !dbg !1632
  %21 = load i32, i32* %13, align 4, !dbg !1632
  %22 = call i32 @gsl_sf_coupling_6j_e(i32 %16, i32 %17, i32 %18, i32 %19, i32 %20, i32 %21, %struct.gsl_sf_result_struct* %14), !dbg !1632
  store i32 %22, i32* %15, align 4, !dbg !1632
  %23 = load i32, i32* %15, align 4, !dbg !1634
  %24 = icmp ne i32 %23, 0, !dbg !1634
  br i1 %24, label %25, label %31, !dbg !1632

; <label>:25:                                     ; preds = %6
  br label %26, !dbg !1636, !llvm.loop !1639

; <label>:26:                                     ; preds = %25
  %27 = load i32, i32* %15, align 4, !dbg !1641
  call void @gsl_error(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 439, i32 %27), !dbg !1641
  %28 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 0, !dbg !1641
  %29 = load double, double* %28, align 8, !dbg !1641
  store double %29, double* %7, align 8, !dbg !1641
  br label %34, !dbg !1641
                                                  ; No predecessors!
  br label %31, !dbg !1644

; <label>:31:                                     ; preds = %30, %6
  %32 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 0, !dbg !1646
  %33 = load double, double* %32, align 8, !dbg !1646
  store double %33, double* %7, align 8, !dbg !1646
  br label %34, !dbg !1646

; <label>:34:                                     ; preds = %31, %26
  %35 = load double, double* %7, align 8, !dbg !1648
  ret double %35, !dbg !1648
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_coupling_RacahW(i32, i32, i32, i32, i32, i32) #0 !dbg !1649 {
  %7 = alloca double, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.gsl_sf_result_struct, align 8
  %15 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1650, metadata !59), !dbg !1651
  store i32 %1, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1652, metadata !59), !dbg !1653
  store i32 %2, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1654, metadata !59), !dbg !1655
  store i32 %3, i32* %11, align 4
  call void @llvm.dbg.declare(metadata i32* %11, metadata !1656, metadata !59), !dbg !1657
  store i32 %4, i32* %12, align 4
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1658, metadata !59), !dbg !1659
  store i32 %5, i32* %13, align 4
  call void @llvm.dbg.declare(metadata i32* %13, metadata !1660, metadata !59), !dbg !1661
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %14, metadata !1662, metadata !59), !dbg !1663
  call void @llvm.dbg.declare(metadata i32* %15, metadata !1664, metadata !59), !dbg !1663
  %16 = load i32, i32* %8, align 4, !dbg !1663
  %17 = load i32, i32* %9, align 4, !dbg !1663
  %18 = load i32, i32* %10, align 4, !dbg !1663
  %19 = load i32, i32* %11, align 4, !dbg !1663
  %20 = load i32, i32* %12, align 4, !dbg !1663
  %21 = load i32, i32* %13, align 4, !dbg !1663
  %22 = call i32 @gsl_sf_coupling_RacahW_e(i32 %16, i32 %17, i32 %18, i32 %19, i32 %20, i32 %21, %struct.gsl_sf_result_struct* %14), !dbg !1663
  store i32 %22, i32* %15, align 4, !dbg !1663
  %23 = load i32, i32* %15, align 4, !dbg !1665
  %24 = icmp ne i32 %23, 0, !dbg !1665
  br i1 %24, label %25, label %31, !dbg !1663

; <label>:25:                                     ; preds = %6
  br label %26, !dbg !1667, !llvm.loop !1670

; <label>:26:                                     ; preds = %25
  %27 = load i32, i32* %15, align 4, !dbg !1672
  call void @gsl_error(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 448, i32 %27), !dbg !1672
  %28 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 0, !dbg !1672
  %29 = load double, double* %28, align 8, !dbg !1672
  store double %29, double* %7, align 8, !dbg !1672
  br label %34, !dbg !1672
                                                  ; No predecessors!
  br label %31, !dbg !1675

; <label>:31:                                     ; preds = %30, %6
  %32 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 0, !dbg !1677
  %33 = load double, double* %32, align 8, !dbg !1677
  store double %33, double* %7, align 8, !dbg !1677
  br label %34, !dbg !1677

; <label>:34:                                     ; preds = %31, %26
  %35 = load double, double* %7, align 8, !dbg !1679
  ret double %35, !dbg !1679
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_coupling_9j(i32, i32, i32, i32, i32, i32, i32, i32, i32) #0 !dbg !1680 {
  %10 = alloca double, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.gsl_sf_result_struct, align 8
  %21 = alloca i32, align 4
  store i32 %0, i32* %11, align 4
  call void @llvm.dbg.declare(metadata i32* %11, metadata !1683, metadata !59), !dbg !1684
  store i32 %1, i32* %12, align 4
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1685, metadata !59), !dbg !1686
  store i32 %2, i32* %13, align 4
  call void @llvm.dbg.declare(metadata i32* %13, metadata !1687, metadata !59), !dbg !1688
  store i32 %3, i32* %14, align 4
  call void @llvm.dbg.declare(metadata i32* %14, metadata !1689, metadata !59), !dbg !1690
  store i32 %4, i32* %15, align 4
  call void @llvm.dbg.declare(metadata i32* %15, metadata !1691, metadata !59), !dbg !1692
  store i32 %5, i32* %16, align 4
  call void @llvm.dbg.declare(metadata i32* %16, metadata !1693, metadata !59), !dbg !1694
  store i32 %6, i32* %17, align 4
  call void @llvm.dbg.declare(metadata i32* %17, metadata !1695, metadata !59), !dbg !1696
  store i32 %7, i32* %18, align 4
  call void @llvm.dbg.declare(metadata i32* %18, metadata !1697, metadata !59), !dbg !1698
  store i32 %8, i32* %19, align 4
  call void @llvm.dbg.declare(metadata i32* %19, metadata !1699, metadata !59), !dbg !1700
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %20, metadata !1701, metadata !59), !dbg !1702
  call void @llvm.dbg.declare(metadata i32* %21, metadata !1703, metadata !59), !dbg !1702
  %22 = load i32, i32* %11, align 4, !dbg !1702
  %23 = load i32, i32* %12, align 4, !dbg !1702
  %24 = load i32, i32* %13, align 4, !dbg !1702
  %25 = load i32, i32* %14, align 4, !dbg !1702
  %26 = load i32, i32* %15, align 4, !dbg !1702
  %27 = load i32, i32* %16, align 4, !dbg !1702
  %28 = load i32, i32* %17, align 4, !dbg !1702
  %29 = load i32, i32* %18, align 4, !dbg !1702
  %30 = load i32, i32* %19, align 4, !dbg !1702
  %31 = call i32 @gsl_sf_coupling_9j_e(i32 %22, i32 %23, i32 %24, i32 %25, i32 %26, i32 %27, i32 %28, i32 %29, i32 %30, %struct.gsl_sf_result_struct* %20), !dbg !1702
  store i32 %31, i32* %21, align 4, !dbg !1702
  %32 = load i32, i32* %21, align 4, !dbg !1704
  %33 = icmp ne i32 %32, 0, !dbg !1704
  br i1 %33, label %34, label %40, !dbg !1702

; <label>:34:                                     ; preds = %9
  br label %35, !dbg !1706, !llvm.loop !1709

; <label>:35:                                     ; preds = %34
  %36 = load i32, i32* %21, align 4, !dbg !1711
  call void @gsl_error(i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 459, i32 %36), !dbg !1711
  %37 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %20, i32 0, i32 0, !dbg !1711
  %38 = load double, double* %37, align 8, !dbg !1711
  store double %38, double* %10, align 8, !dbg !1711
  br label %43, !dbg !1711
                                                  ; No predecessors!
  br label %40, !dbg !1714

; <label>:40:                                     ; preds = %39, %9
  %41 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %20, i32 0, i32 0, !dbg !1716
  %42 = load double, double* %41, align 8, !dbg !1716
  store double %42, double* %10, align 8, !dbg !1716
  br label %43, !dbg !1716

; <label>:43:                                     ; preds = %40, %35
  %44 = load double, double* %10, align 8, !dbg !1718
  ret double %44, !dbg !1718
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!41, !42, !43}
!llvm.ident = !{!44}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "coupling.c", directory: "/fpcc/gsl-2.5/specfunc")
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
!45 = distinct !DISubprogram(name: "gsl_sf_coupling_3j_e", scope: !1, file: !1, line: 113, type: !46, isLocal: false, isDefinition: true, scopeLine: 116, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !57)
!46 = !DISubroutineType(types: !47)
!47 = !{!48, !48, !48, !48, !48, !48, !48, !49}
!48 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64, align: 64)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !51, line: 41, baseType: !52)
!51 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/fpcc/gsl-2.5/specfunc")
!52 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !51, line: 37, size: 128, align: 64, elements: !53)
!53 = !{!54, !56}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !52, file: !51, line: 38, baseType: !55, size: 64, align: 64)
!55 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !52, file: !51, line: 39, baseType: !55, size: 64, align: 64, offset: 64)
!57 = !{}
!58 = !DILocalVariable(name: "two_ja", arg: 1, scope: !45, file: !1, line: 113, type: !48)
!59 = !DIExpression()
!60 = !DILocation(line: 113, column: 27, scope: !45)
!61 = !DILocalVariable(name: "two_jb", arg: 2, scope: !45, file: !1, line: 113, type: !48)
!62 = !DILocation(line: 113, column: 39, scope: !45)
!63 = !DILocalVariable(name: "two_jc", arg: 3, scope: !45, file: !1, line: 113, type: !48)
!64 = !DILocation(line: 113, column: 51, scope: !45)
!65 = !DILocalVariable(name: "two_ma", arg: 4, scope: !45, file: !1, line: 114, type: !48)
!66 = !DILocation(line: 114, column: 27, scope: !45)
!67 = !DILocalVariable(name: "two_mb", arg: 5, scope: !45, file: !1, line: 114, type: !48)
!68 = !DILocation(line: 114, column: 39, scope: !45)
!69 = !DILocalVariable(name: "two_mc", arg: 6, scope: !45, file: !1, line: 114, type: !48)
!70 = !DILocation(line: 114, column: 51, scope: !45)
!71 = !DILocalVariable(name: "result", arg: 7, scope: !45, file: !1, line: 115, type: !49)
!72 = !DILocation(line: 115, column: 39, scope: !45)
!73 = !DILocation(line: 119, column: 6, scope: !74)
!74 = distinct !DILexicalBlock(scope: !45, file: !1, line: 119, column: 6)
!75 = !DILocation(line: 119, column: 13, scope: !74)
!76 = !DILocation(line: 119, column: 17, scope: !74)
!77 = !DILocation(line: 119, column: 20, scope: !78)
!78 = !DILexicalBlockFile(scope: !74, file: !1, discriminator: 1)
!79 = !DILocation(line: 119, column: 27, scope: !78)
!80 = !DILocation(line: 119, column: 31, scope: !78)
!81 = !DILocation(line: 119, column: 34, scope: !82)
!82 = !DILexicalBlockFile(scope: !74, file: !1, discriminator: 2)
!83 = !DILocation(line: 119, column: 41, scope: !82)
!84 = !DILocation(line: 119, column: 6, scope: !82)
!85 = !DILocation(line: 120, column: 5, scope: !86)
!86 = distinct !DILexicalBlock(scope: !74, file: !1, line: 119, column: 46)
!87 = distinct !{!87, !85}
!88 = !DILocation(line: 120, column: 5, scope: !89)
!89 = !DILexicalBlockFile(scope: !90, file: !1, discriminator: 1)
!90 = distinct !DILexicalBlock(scope: !86, file: !1, line: 120, column: 5)
!91 = distinct !{!91, !92}
!92 = !DILocation(line: 120, column: 5, scope: !90)
!93 = !DILocation(line: 120, column: 5, scope: !94)
!94 = !DILexicalBlockFile(scope: !95, file: !1, discriminator: 2)
!95 = distinct !DILexicalBlock(scope: !90, file: !1, line: 120, column: 5)
!96 = !DILocation(line: 120, column: 5, scope: !97)
!97 = !DILexicalBlockFile(scope: !90, file: !1, discriminator: 3)
!98 = !DILocation(line: 121, column: 3, scope: !86)
!99 = !DILocation(line: 122, column: 40, scope: !100)
!100 = distinct !DILexicalBlock(scope: !74, file: !1, line: 122, column: 15)
!101 = !DILocation(line: 122, column: 48, scope: !100)
!102 = !DILocation(line: 122, column: 56, scope: !100)
!103 = !DILocation(line: 122, column: 15, scope: !100)
!104 = !DILocation(line: 123, column: 12, scope: !100)
!105 = !DILocation(line: 123, column: 33, scope: !106)
!106 = !DILexicalBlockFile(scope: !100, file: !1, discriminator: 1)
!107 = !DILocation(line: 123, column: 41, scope: !106)
!108 = !DILocation(line: 123, column: 49, scope: !106)
!109 = !DILocation(line: 123, column: 57, scope: !106)
!110 = !DILocation(line: 123, column: 65, scope: !106)
!111 = !DILocation(line: 123, column: 73, scope: !106)
!112 = !DILocation(line: 123, column: 15, scope: !106)
!113 = !DILocation(line: 122, column: 15, scope: !78)
!114 = !DILocation(line: 125, column: 5, scope: !115)
!115 = distinct !DILexicalBlock(scope: !100, file: !1, line: 124, column: 8)
!116 = !DILocation(line: 125, column: 13, scope: !115)
!117 = !DILocation(line: 125, column: 17, scope: !115)
!118 = !DILocation(line: 126, column: 5, scope: !115)
!119 = !DILocation(line: 126, column: 13, scope: !115)
!120 = !DILocation(line: 126, column: 17, scope: !115)
!121 = !DILocation(line: 127, column: 5, scope: !115)
!122 = !DILocation(line: 129, column: 13, scope: !123)
!123 = distinct !DILexicalBlock(scope: !100, file: !1, line: 129, column: 13)
!124 = !DILocation(line: 129, column: 20, scope: !123)
!125 = !DILocation(line: 129, column: 25, scope: !123)
!126 = !DILocation(line: 129, column: 28, scope: !127)
!127 = !DILexicalBlockFile(scope: !123, file: !1, discriminator: 1)
!128 = !DILocation(line: 129, column: 35, scope: !127)
!129 = !DILocation(line: 129, column: 40, scope: !127)
!130 = !DILocation(line: 129, column: 43, scope: !131)
!131 = !DILexicalBlockFile(scope: !123, file: !1, discriminator: 2)
!132 = !DILocation(line: 129, column: 50, scope: !131)
!133 = !DILocation(line: 130, column: 13, scope: !123)
!134 = !DILocation(line: 130, column: 18, scope: !127)
!135 = !DILocation(line: 130, column: 27, scope: !127)
!136 = !DILocation(line: 130, column: 25, scope: !127)
!137 = !DILocation(line: 130, column: 36, scope: !127)
!138 = !DILocation(line: 130, column: 34, scope: !127)
!139 = !DILocation(line: 130, column: 44, scope: !127)
!140 = !DILocation(line: 130, column: 48, scope: !127)
!141 = !DILocation(line: 129, column: 13, scope: !142)
!142 = !DILexicalBlockFile(scope: !100, file: !1, discriminator: 3)
!143 = !DILocation(line: 132, column: 5, scope: !144)
!144 = distinct !DILexicalBlock(scope: !123, file: !1, line: 130, column: 56)
!145 = !DILocation(line: 132, column: 13, scope: !144)
!146 = !DILocation(line: 132, column: 17, scope: !144)
!147 = !DILocation(line: 133, column: 5, scope: !144)
!148 = !DILocation(line: 133, column: 13, scope: !144)
!149 = !DILocation(line: 133, column: 17, scope: !144)
!150 = !DILocation(line: 134, column: 5, scope: !144)
!151 = !DILocalVariable(name: "jca", scope: !152, file: !1, line: 137, type: !48)
!152 = distinct !DILexicalBlock(scope: !123, file: !1, line: 136, column: 8)
!153 = !DILocation(line: 137, column: 9, scope: !152)
!154 = !DILocation(line: 137, column: 18, scope: !152)
!155 = !DILocation(line: 137, column: 17, scope: !152)
!156 = !DILocation(line: 137, column: 27, scope: !152)
!157 = !DILocation(line: 137, column: 25, scope: !152)
!158 = !DILocation(line: 137, column: 36, scope: !152)
!159 = !DILocation(line: 137, column: 34, scope: !152)
!160 = !DILocation(line: 137, column: 44, scope: !152)
!161 = !DILocalVariable(name: "jcb", scope: !152, file: !1, line: 138, type: !48)
!162 = !DILocation(line: 138, column: 9, scope: !152)
!163 = !DILocation(line: 138, column: 18, scope: !152)
!164 = !DILocation(line: 138, column: 27, scope: !152)
!165 = !DILocation(line: 138, column: 25, scope: !152)
!166 = !DILocation(line: 138, column: 36, scope: !152)
!167 = !DILocation(line: 138, column: 34, scope: !152)
!168 = !DILocation(line: 138, column: 44, scope: !152)
!169 = !DILocalVariable(name: "jcc", scope: !152, file: !1, line: 139, type: !48)
!170 = !DILocation(line: 139, column: 9, scope: !152)
!171 = !DILocation(line: 139, column: 18, scope: !152)
!172 = !DILocation(line: 139, column: 27, scope: !152)
!173 = !DILocation(line: 139, column: 25, scope: !152)
!174 = !DILocation(line: 139, column: 36, scope: !152)
!175 = !DILocation(line: 139, column: 34, scope: !152)
!176 = !DILocation(line: 139, column: 44, scope: !152)
!177 = !DILocalVariable(name: "jmma", scope: !152, file: !1, line: 140, type: !48)
!178 = !DILocation(line: 140, column: 9, scope: !152)
!179 = !DILocation(line: 140, column: 18, scope: !152)
!180 = !DILocation(line: 140, column: 27, scope: !152)
!181 = !DILocation(line: 140, column: 25, scope: !152)
!182 = !DILocation(line: 140, column: 35, scope: !152)
!183 = !DILocalVariable(name: "jmmb", scope: !152, file: !1, line: 141, type: !48)
!184 = !DILocation(line: 141, column: 9, scope: !152)
!185 = !DILocation(line: 141, column: 18, scope: !152)
!186 = !DILocation(line: 141, column: 27, scope: !152)
!187 = !DILocation(line: 141, column: 25, scope: !152)
!188 = !DILocation(line: 141, column: 35, scope: !152)
!189 = !DILocalVariable(name: "jmmc", scope: !152, file: !1, line: 142, type: !48)
!190 = !DILocation(line: 142, column: 9, scope: !152)
!191 = !DILocation(line: 142, column: 18, scope: !152)
!192 = !DILocation(line: 142, column: 27, scope: !152)
!193 = !DILocation(line: 142, column: 25, scope: !152)
!194 = !DILocation(line: 142, column: 35, scope: !152)
!195 = !DILocalVariable(name: "jpma", scope: !152, file: !1, line: 143, type: !48)
!196 = !DILocation(line: 143, column: 9, scope: !152)
!197 = !DILocation(line: 143, column: 18, scope: !152)
!198 = !DILocation(line: 143, column: 27, scope: !152)
!199 = !DILocation(line: 143, column: 25, scope: !152)
!200 = !DILocation(line: 143, column: 35, scope: !152)
!201 = !DILocalVariable(name: "jpmb", scope: !152, file: !1, line: 144, type: !48)
!202 = !DILocation(line: 144, column: 9, scope: !152)
!203 = !DILocation(line: 144, column: 18, scope: !152)
!204 = !DILocation(line: 144, column: 27, scope: !152)
!205 = !DILocation(line: 144, column: 25, scope: !152)
!206 = !DILocation(line: 144, column: 35, scope: !152)
!207 = !DILocalVariable(name: "jpmc", scope: !152, file: !1, line: 145, type: !48)
!208 = !DILocation(line: 145, column: 9, scope: !152)
!209 = !DILocation(line: 145, column: 18, scope: !152)
!210 = !DILocation(line: 145, column: 27, scope: !152)
!211 = !DILocation(line: 145, column: 25, scope: !152)
!212 = !DILocation(line: 145, column: 35, scope: !152)
!213 = !DILocalVariable(name: "jsum", scope: !152, file: !1, line: 146, type: !48)
!214 = !DILocation(line: 146, column: 9, scope: !152)
!215 = !DILocation(line: 146, column: 18, scope: !152)
!216 = !DILocation(line: 146, column: 27, scope: !152)
!217 = !DILocation(line: 146, column: 25, scope: !152)
!218 = !DILocation(line: 146, column: 36, scope: !152)
!219 = !DILocation(line: 146, column: 34, scope: !152)
!220 = !DILocation(line: 146, column: 44, scope: !152)
!221 = !DILocalVariable(name: "kmin", scope: !152, file: !1, line: 147, type: !48)
!222 = !DILocation(line: 147, column: 9, scope: !152)
!223 = !DILocation(line: 147, column: 28, scope: !152)
!224 = !DILocation(line: 147, column: 35, scope: !152)
!225 = !DILocation(line: 147, column: 33, scope: !152)
!226 = !DILocation(line: 147, column: 41, scope: !152)
!227 = !DILocation(line: 147, column: 48, scope: !152)
!228 = !DILocation(line: 147, column: 46, scope: !152)
!229 = !DILocation(line: 147, column: 16, scope: !152)
!230 = !DILocalVariable(name: "kmax", scope: !152, file: !1, line: 148, type: !48)
!231 = !DILocation(line: 148, column: 9, scope: !152)
!232 = !DILocation(line: 148, column: 25, scope: !152)
!233 = !DILocation(line: 148, column: 30, scope: !152)
!234 = !DILocation(line: 148, column: 36, scope: !152)
!235 = !DILocation(line: 148, column: 16, scope: !152)
!236 = !DILocalVariable(name: "k", scope: !152, file: !1, line: 149, type: !48)
!237 = !DILocation(line: 149, column: 9, scope: !152)
!238 = !DILocalVariable(name: "sign", scope: !152, file: !1, line: 149, type: !48)
!239 = !DILocation(line: 149, column: 12, scope: !152)
!240 = !DILocation(line: 149, column: 19, scope: !152)
!241 = !DILocalVariable(name: "status", scope: !152, file: !1, line: 150, type: !48)
!242 = !DILocation(line: 150, column: 9, scope: !152)
!243 = !DILocalVariable(name: "sum_pos", scope: !152, file: !1, line: 151, type: !55)
!244 = !DILocation(line: 151, column: 12, scope: !152)
!245 = !DILocalVariable(name: "sum_neg", scope: !152, file: !1, line: 151, type: !55)
!246 = !DILocation(line: 151, column: 27, scope: !152)
!247 = !DILocalVariable(name: "sum_err", scope: !152, file: !1, line: 151, type: !55)
!248 = !DILocation(line: 151, column: 42, scope: !152)
!249 = !DILocalVariable(name: "bc1", scope: !152, file: !1, line: 152, type: !50)
!250 = !DILocation(line: 152, column: 19, scope: !152)
!251 = !DILocalVariable(name: "bc2", scope: !152, file: !1, line: 152, type: !50)
!252 = !DILocation(line: 152, column: 24, scope: !152)
!253 = !DILocalVariable(name: "bc3", scope: !152, file: !1, line: 152, type: !50)
!254 = !DILocation(line: 152, column: 29, scope: !152)
!255 = !DILocalVariable(name: "bcn1", scope: !152, file: !1, line: 152, type: !50)
!256 = !DILocation(line: 152, column: 34, scope: !152)
!257 = !DILocalVariable(name: "bcn2", scope: !152, file: !1, line: 152, type: !50)
!258 = !DILocation(line: 152, column: 40, scope: !152)
!259 = !DILocalVariable(name: "bcd1", scope: !152, file: !1, line: 152, type: !50)
!260 = !DILocation(line: 152, column: 46, scope: !152)
!261 = !DILocalVariable(name: "bcd2", scope: !152, file: !1, line: 152, type: !50)
!262 = !DILocation(line: 152, column: 52, scope: !152)
!263 = !DILocalVariable(name: "bcd3", scope: !152, file: !1, line: 152, type: !50)
!264 = !DILocation(line: 152, column: 58, scope: !152)
!265 = !DILocalVariable(name: "bcd4", scope: !152, file: !1, line: 152, type: !50)
!266 = !DILocation(line: 152, column: 64, scope: !152)
!267 = !DILocalVariable(name: "term", scope: !152, file: !1, line: 152, type: !50)
!268 = !DILocation(line: 152, column: 70, scope: !152)
!269 = !DILocalVariable(name: "lnorm", scope: !152, file: !1, line: 152, type: !50)
!270 = !DILocation(line: 152, column: 76, scope: !152)
!271 = !DILocation(line: 154, column: 34, scope: !152)
!272 = !DILocation(line: 154, column: 42, scope: !152)
!273 = !DILocation(line: 154, column: 15, scope: !152)
!274 = !DILocation(line: 154, column: 12, scope: !152)
!275 = !DILocation(line: 155, column: 34, scope: !152)
!276 = !DILocation(line: 155, column: 42, scope: !152)
!277 = !DILocation(line: 155, column: 15, scope: !152)
!278 = !DILocation(line: 155, column: 12, scope: !152)
!279 = !DILocation(line: 156, column: 34, scope: !152)
!280 = !DILocation(line: 156, column: 38, scope: !152)
!281 = !DILocation(line: 156, column: 42, scope: !152)
!282 = !DILocation(line: 156, column: 15, scope: !152)
!283 = !DILocation(line: 156, column: 12, scope: !152)
!284 = !DILocation(line: 157, column: 34, scope: !152)
!285 = !DILocation(line: 157, column: 42, scope: !152)
!286 = !DILocation(line: 157, column: 15, scope: !152)
!287 = !DILocation(line: 157, column: 12, scope: !152)
!288 = !DILocation(line: 158, column: 34, scope: !152)
!289 = !DILocation(line: 158, column: 42, scope: !152)
!290 = !DILocation(line: 158, column: 15, scope: !152)
!291 = !DILocation(line: 158, column: 12, scope: !152)
!292 = !DILocation(line: 159, column: 34, scope: !152)
!293 = !DILocation(line: 159, column: 42, scope: !152)
!294 = !DILocation(line: 159, column: 15, scope: !152)
!295 = !DILocation(line: 159, column: 12, scope: !152)
!296 = !DILocation(line: 161, column: 29, scope: !152)
!297 = !DILocation(line: 161, column: 40, scope: !152)
!298 = !DILocation(line: 161, column: 33, scope: !152)
!299 = !DILocation(line: 161, column: 51, scope: !152)
!300 = !DILocation(line: 161, column: 44, scope: !152)
!301 = !DILocation(line: 161, column: 62, scope: !152)
!302 = !DILocation(line: 161, column: 55, scope: !152)
!303 = !DILocation(line: 161, column: 73, scope: !152)
!304 = !DILocation(line: 161, column: 66, scope: !152)
!305 = !DILocation(line: 162, column: 31, scope: !152)
!306 = !DILocation(line: 162, column: 24, scope: !152)
!307 = !DILocation(line: 162, column: 41, scope: !152)
!308 = !DILocation(line: 162, column: 48, scope: !152)
!309 = !DILocation(line: 162, column: 37, scope: !152)
!310 = !DILocation(line: 162, column: 35, scope: !152)
!311 = !DILocation(line: 161, column: 21, scope: !152)
!312 = !DILocation(line: 161, column: 11, scope: !152)
!313 = !DILocation(line: 161, column: 15, scope: !152)
!314 = !DILocation(line: 163, column: 29, scope: !152)
!315 = !DILocation(line: 163, column: 40, scope: !152)
!316 = !DILocation(line: 163, column: 33, scope: !152)
!317 = !DILocation(line: 163, column: 51, scope: !152)
!318 = !DILocation(line: 163, column: 44, scope: !152)
!319 = !DILocation(line: 163, column: 62, scope: !152)
!320 = !DILocation(line: 163, column: 55, scope: !152)
!321 = !DILocation(line: 163, column: 73, scope: !152)
!322 = !DILocation(line: 163, column: 66, scope: !152)
!323 = !DILocation(line: 164, column: 31, scope: !152)
!324 = !DILocation(line: 164, column: 24, scope: !152)
!325 = !DILocation(line: 164, column: 59, scope: !152)
!326 = !DILocation(line: 164, column: 66, scope: !152)
!327 = !DILocation(line: 164, column: 55, scope: !152)
!328 = !DILocation(line: 164, column: 53, scope: !152)
!329 = !DILocation(line: 164, column: 35, scope: !152)
!330 = !DILocation(line: 163, column: 21, scope: !152)
!331 = !DILocation(line: 163, column: 11, scope: !152)
!332 = !DILocation(line: 163, column: 15, scope: !152)
!333 = !DILocation(line: 166, column: 14, scope: !334)
!334 = distinct !DILexicalBlock(scope: !152, file: !1, line: 166, column: 5)
!335 = !DILocation(line: 166, column: 12, scope: !334)
!336 = !DILocation(line: 166, column: 10, scope: !334)
!337 = !DILocation(line: 166, column: 20, scope: !338)
!338 = !DILexicalBlockFile(scope: !339, file: !1, discriminator: 1)
!339 = distinct !DILexicalBlock(scope: !334, file: !1, line: 166, column: 5)
!340 = !DILocation(line: 166, column: 25, scope: !338)
!341 = !DILocation(line: 166, column: 22, scope: !338)
!342 = !DILocation(line: 166, column: 5, scope: !338)
!343 = !DILocation(line: 167, column: 36, scope: !344)
!344 = distinct !DILexicalBlock(scope: !339, file: !1, line: 166, column: 36)
!345 = !DILocation(line: 167, column: 41, scope: !344)
!346 = !DILocation(line: 167, column: 17, scope: !344)
!347 = !DILocation(line: 167, column: 14, scope: !344)
!348 = !DILocation(line: 168, column: 36, scope: !344)
!349 = !DILocation(line: 168, column: 41, scope: !344)
!350 = !DILocation(line: 168, column: 48, scope: !344)
!351 = !DILocation(line: 168, column: 46, scope: !344)
!352 = !DILocation(line: 168, column: 17, scope: !344)
!353 = !DILocation(line: 168, column: 14, scope: !344)
!354 = !DILocation(line: 169, column: 36, scope: !344)
!355 = !DILocation(line: 169, column: 41, scope: !344)
!356 = !DILocation(line: 169, column: 48, scope: !344)
!357 = !DILocation(line: 169, column: 46, scope: !344)
!358 = !DILocation(line: 169, column: 17, scope: !344)
!359 = !DILocation(line: 169, column: 14, scope: !344)
!360 = !DILocation(line: 170, column: 38, scope: !344)
!361 = !DILocation(line: 170, column: 48, scope: !344)
!362 = !DILocation(line: 170, column: 42, scope: !344)
!363 = !DILocation(line: 170, column: 58, scope: !344)
!364 = !DILocation(line: 170, column: 52, scope: !344)
!365 = !DILocation(line: 170, column: 70, scope: !344)
!366 = !DILocation(line: 170, column: 62, scope: !344)
!367 = !DILocation(line: 171, column: 38, scope: !344)
!368 = !DILocation(line: 171, column: 48, scope: !344)
!369 = !DILocation(line: 171, column: 42, scope: !344)
!370 = !DILocation(line: 171, column: 58, scope: !344)
!371 = !DILocation(line: 171, column: 52, scope: !344)
!372 = !DILocation(line: 171, column: 70, scope: !344)
!373 = !DILocation(line: 171, column: 62, scope: !344)
!374 = !DILocation(line: 170, column: 17, scope: !344)
!375 = !DILocation(line: 170, column: 14, scope: !344)
!376 = !DILocation(line: 174, column: 11, scope: !377)
!377 = distinct !DILexicalBlock(scope: !344, file: !1, line: 174, column: 11)
!378 = !DILocation(line: 174, column: 18, scope: !377)
!379 = !DILocation(line: 174, column: 11, scope: !344)
!380 = !DILocation(line: 175, column: 9, scope: !381)
!381 = distinct !DILexicalBlock(scope: !377, file: !1, line: 174, column: 24)
!382 = distinct !{!382, !380}
!383 = !DILocation(line: 175, column: 9, scope: !384)
!384 = !DILexicalBlockFile(scope: !385, file: !1, discriminator: 1)
!385 = distinct !DILexicalBlock(scope: !381, file: !1, line: 175, column: 9)
!386 = distinct !{!386, !387}
!387 = !DILocation(line: 175, column: 9, scope: !385)
!388 = !DILocation(line: 175, column: 9, scope: !389)
!389 = !DILexicalBlockFile(scope: !390, file: !1, discriminator: 2)
!390 = distinct !DILexicalBlock(scope: !385, file: !1, line: 175, column: 9)
!391 = !DILocation(line: 175, column: 9, scope: !392)
!392 = !DILexicalBlockFile(scope: !385, file: !1, discriminator: 3)
!393 = !DILocation(line: 176, column: 7, scope: !381)
!394 = !DILocation(line: 178, column: 11, scope: !395)
!395 = distinct !DILexicalBlock(scope: !344, file: !1, line: 178, column: 11)
!396 = !DILocation(line: 178, column: 16, scope: !395)
!397 = !DILocation(line: 178, column: 11, scope: !344)
!398 = !DILocation(line: 179, column: 25, scope: !399)
!399 = distinct !DILexicalBlock(scope: !395, file: !1, line: 178, column: 21)
!400 = !DILocation(line: 179, column: 17, scope: !399)
!401 = !DILocation(line: 180, column: 7, scope: !399)
!402 = !DILocation(line: 181, column: 25, scope: !403)
!403 = distinct !DILexicalBlock(scope: !395, file: !1, line: 180, column: 14)
!404 = !DILocation(line: 181, column: 17, scope: !403)
!405 = !DILocation(line: 184, column: 23, scope: !344)
!406 = !DILocation(line: 184, column: 15, scope: !344)
!407 = !DILocation(line: 186, column: 15, scope: !344)
!408 = !DILocation(line: 186, column: 14, scope: !344)
!409 = !DILocation(line: 186, column: 12, scope: !344)
!410 = !DILocation(line: 187, column: 5, scope: !344)
!411 = !DILocation(line: 166, column: 32, scope: !412)
!412 = !DILexicalBlockFile(scope: !339, file: !1, discriminator: 2)
!413 = !DILocation(line: 166, column: 5, scope: !412)
!414 = distinct !{!414, !415}
!415 = !DILocation(line: 166, column: 5, scope: !152)
!416 = !DILocation(line: 189, column: 20, scope: !152)
!417 = !DILocation(line: 189, column: 30, scope: !152)
!418 = !DILocation(line: 189, column: 28, scope: !152)
!419 = !DILocation(line: 189, column: 5, scope: !152)
!420 = !DILocation(line: 189, column: 13, scope: !152)
!421 = !DILocation(line: 189, column: 18, scope: !152)
!422 = !DILocation(line: 190, column: 20, scope: !152)
!423 = !DILocation(line: 190, column: 5, scope: !152)
!424 = !DILocation(line: 190, column: 13, scope: !152)
!425 = !DILocation(line: 190, column: 18, scope: !152)
!426 = !DILocation(line: 191, column: 45, scope: !152)
!427 = !DILocation(line: 191, column: 55, scope: !152)
!428 = !DILocation(line: 191, column: 53, scope: !152)
!429 = !DILocation(line: 191, column: 42, scope: !152)
!430 = !DILocation(line: 191, column: 5, scope: !152)
!431 = !DILocation(line: 191, column: 13, scope: !152)
!432 = !DILocation(line: 191, column: 17, scope: !152)
!433 = !DILocation(line: 192, column: 45, scope: !152)
!434 = !DILocation(line: 192, column: 52, scope: !152)
!435 = !DILocation(line: 192, column: 50, scope: !152)
!436 = !DILocation(line: 192, column: 44, scope: !152)
!437 = !DILocation(line: 192, column: 42, scope: !152)
!438 = !DILocation(line: 192, column: 65, scope: !152)
!439 = !DILocation(line: 192, column: 73, scope: !152)
!440 = !DILocation(line: 192, column: 60, scope: !152)
!441 = !DILocation(line: 192, column: 58, scope: !152)
!442 = !DILocation(line: 192, column: 5, scope: !152)
!443 = !DILocation(line: 192, column: 13, scope: !152)
!444 = !DILocation(line: 192, column: 17, scope: !152)
!445 = !DILocation(line: 194, column: 5, scope: !152)
!446 = !DILocation(line: 196, column: 1, scope: !45)
!447 = distinct !DISubprogram(name: "triangle_selection_fails", scope: !1, file: !1, line: 82, type: !448, isLocal: true, isDefinition: true, scopeLine: 83, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !57)
!448 = !DISubroutineType(types: !449)
!449 = !{!48, !48, !48, !48}
!450 = !DILocalVariable(name: "two_ja", arg: 1, scope: !447, file: !1, line: 82, type: !48)
!451 = !DILocation(line: 82, column: 30, scope: !447)
!452 = !DILocalVariable(name: "two_jb", arg: 2, scope: !447, file: !1, line: 82, type: !48)
!453 = !DILocation(line: 82, column: 42, scope: !447)
!454 = !DILocalVariable(name: "two_jc", arg: 3, scope: !447, file: !1, line: 82, type: !48)
!455 = !DILocation(line: 82, column: 54, scope: !447)
!456 = !DILocation(line: 87, column: 13, scope: !447)
!457 = !DILocation(line: 87, column: 26, scope: !447)
!458 = !DILocation(line: 87, column: 35, scope: !447)
!459 = !DILocation(line: 87, column: 33, scope: !447)
!460 = !DILocation(line: 87, column: 22, scope: !447)
!461 = !DILocation(line: 87, column: 20, scope: !447)
!462 = !DILocation(line: 87, column: 44, scope: !447)
!463 = !DILocation(line: 87, column: 48, scope: !464)
!464 = !DILexicalBlockFile(scope: !447, file: !1, discriminator: 1)
!465 = !DILocation(line: 87, column: 57, scope: !464)
!466 = !DILocation(line: 87, column: 66, scope: !464)
!467 = !DILocation(line: 87, column: 64, scope: !464)
!468 = !DILocation(line: 87, column: 55, scope: !464)
!469 = !DILocation(line: 87, column: 74, scope: !464)
!470 = !DILocation(line: 88, column: 12, scope: !447)
!471 = !DILocation(line: 87, column: 74, scope: !472)
!472 = !DILexicalBlockFile(scope: !447, file: !1, discriminator: 2)
!473 = !DILocation(line: 87, column: 74, scope: !474)
!474 = !DILexicalBlockFile(scope: !447, file: !1, discriminator: 3)
!475 = !DILocation(line: 87, column: 3, scope: !474)
!476 = distinct !DISubprogram(name: "m_selection_fails", scope: !1, file: !1, line: 94, type: !477, isLocal: true, isDefinition: true, scopeLine: 96, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !57)
!477 = !DISubroutineType(types: !478)
!478 = !{!48, !48, !48, !48, !48, !48, !48}
!479 = !DILocalVariable(name: "two_ja", arg: 1, scope: !476, file: !1, line: 94, type: !48)
!480 = !DILocation(line: 94, column: 23, scope: !476)
!481 = !DILocalVariable(name: "two_jb", arg: 2, scope: !476, file: !1, line: 94, type: !48)
!482 = !DILocation(line: 94, column: 35, scope: !476)
!483 = !DILocalVariable(name: "two_jc", arg: 3, scope: !476, file: !1, line: 94, type: !48)
!484 = !DILocation(line: 94, column: 47, scope: !476)
!485 = !DILocalVariable(name: "two_ma", arg: 4, scope: !476, file: !1, line: 95, type: !48)
!486 = !DILocation(line: 95, column: 23, scope: !476)
!487 = !DILocalVariable(name: "two_mb", arg: 5, scope: !476, file: !1, line: 95, type: !48)
!488 = !DILocation(line: 95, column: 35, scope: !476)
!489 = !DILocalVariable(name: "two_mc", arg: 6, scope: !476, file: !1, line: 95, type: !48)
!490 = !DILocation(line: 95, column: 47, scope: !476)
!491 = !DILocation(line: 98, column: 14, scope: !476)
!492 = !DILocation(line: 98, column: 10, scope: !476)
!493 = !DILocation(line: 98, column: 24, scope: !476)
!494 = !DILocation(line: 98, column: 22, scope: !476)
!495 = !DILocation(line: 99, column: 7, scope: !476)
!496 = !DILocation(line: 99, column: 14, scope: !497)
!497 = !DILexicalBlockFile(scope: !476, file: !1, discriminator: 1)
!498 = !DILocation(line: 99, column: 10, scope: !497)
!499 = !DILocation(line: 99, column: 24, scope: !497)
!500 = !DILocation(line: 99, column: 22, scope: !497)
!501 = !DILocation(line: 100, column: 7, scope: !476)
!502 = !DILocation(line: 100, column: 14, scope: !497)
!503 = !DILocation(line: 100, column: 10, scope: !497)
!504 = !DILocation(line: 100, column: 24, scope: !497)
!505 = !DILocation(line: 100, column: 22, scope: !497)
!506 = !DILocation(line: 101, column: 7, scope: !476)
!507 = !DILocation(line: 101, column: 10, scope: !497)
!508 = !DILocation(line: 102, column: 7, scope: !476)
!509 = !DILocation(line: 102, column: 10, scope: !497)
!510 = !DILocation(line: 103, column: 7, scope: !476)
!511 = !DILocation(line: 103, column: 10, scope: !497)
!512 = !DILocation(line: 104, column: 7, scope: !476)
!513 = !DILocation(line: 104, column: 11, scope: !497)
!514 = !DILocation(line: 104, column: 20, scope: !497)
!515 = !DILocation(line: 104, column: 18, scope: !497)
!516 = !DILocation(line: 104, column: 29, scope: !497)
!517 = !DILocation(line: 104, column: 27, scope: !497)
!518 = !DILocation(line: 104, column: 37, scope: !497)
!519 = !DILocation(line: 104, column: 7, scope: !497)
!520 = !DILocation(line: 104, column: 7, scope: !521)
!521 = !DILexicalBlockFile(scope: !476, file: !1, discriminator: 2)
!522 = !DILocation(line: 97, column: 3, scope: !476)
!523 = distinct !DISubprogram(name: "locMax3", scope: !1, file: !1, line: 34, type: !524, isLocal: true, isDefinition: true, scopeLine: 35, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !57)
!524 = !DISubroutineType(types: !525)
!525 = !{!48, !526, !526, !526}
!526 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !48)
!527 = !DILocalVariable(name: "a", arg: 1, scope: !523, file: !1, line: 34, type: !526)
!528 = !DILocation(line: 34, column: 23, scope: !523)
!529 = !DILocalVariable(name: "b", arg: 2, scope: !523, file: !1, line: 34, type: !526)
!530 = !DILocation(line: 34, column: 36, scope: !523)
!531 = !DILocalVariable(name: "c", arg: 3, scope: !523, file: !1, line: 34, type: !526)
!532 = !DILocation(line: 34, column: 49, scope: !523)
!533 = !DILocalVariable(name: "d", scope: !523, file: !1, line: 36, type: !48)
!534 = !DILocation(line: 36, column: 7, scope: !523)
!535 = !DILocation(line: 36, column: 11, scope: !523)
!536 = !DILocation(line: 36, column: 11, scope: !537)
!537 = !DILexicalBlockFile(scope: !523, file: !1, discriminator: 1)
!538 = !DILocation(line: 36, column: 11, scope: !539)
!539 = !DILexicalBlockFile(scope: !523, file: !1, discriminator: 2)
!540 = !DILocation(line: 36, column: 11, scope: !541)
!541 = !DILexicalBlockFile(scope: !523, file: !1, discriminator: 3)
!542 = !DILocation(line: 36, column: 7, scope: !541)
!543 = !DILocation(line: 37, column: 10, scope: !523)
!544 = !DILocation(line: 37, column: 10, scope: !537)
!545 = !DILocation(line: 37, column: 10, scope: !539)
!546 = !DILocation(line: 37, column: 10, scope: !541)
!547 = !DILocation(line: 37, column: 3, scope: !541)
!548 = distinct !DISubprogram(name: "locMin3", scope: !1, file: !1, line: 42, type: !524, isLocal: true, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !57)
!549 = !DILocalVariable(name: "a", arg: 1, scope: !548, file: !1, line: 42, type: !526)
!550 = !DILocation(line: 42, column: 23, scope: !548)
!551 = !DILocalVariable(name: "b", arg: 2, scope: !548, file: !1, line: 42, type: !526)
!552 = !DILocation(line: 42, column: 36, scope: !548)
!553 = !DILocalVariable(name: "c", arg: 3, scope: !548, file: !1, line: 42, type: !526)
!554 = !DILocation(line: 42, column: 49, scope: !548)
!555 = !DILocalVariable(name: "d", scope: !548, file: !1, line: 44, type: !48)
!556 = !DILocation(line: 44, column: 7, scope: !548)
!557 = !DILocation(line: 44, column: 11, scope: !548)
!558 = !DILocation(line: 44, column: 11, scope: !559)
!559 = !DILexicalBlockFile(scope: !548, file: !1, discriminator: 1)
!560 = !DILocation(line: 44, column: 11, scope: !561)
!561 = !DILexicalBlockFile(scope: !548, file: !1, discriminator: 2)
!562 = !DILocation(line: 44, column: 11, scope: !563)
!563 = !DILexicalBlockFile(scope: !548, file: !1, discriminator: 3)
!564 = !DILocation(line: 44, column: 7, scope: !563)
!565 = !DILocation(line: 45, column: 10, scope: !548)
!566 = !DILocation(line: 45, column: 10, scope: !559)
!567 = !DILocation(line: 45, column: 10, scope: !561)
!568 = !DILocation(line: 45, column: 10, scope: !563)
!569 = !DILocation(line: 45, column: 3, scope: !563)
!570 = distinct !DISubprogram(name: "gsl_sf_coupling_6j_e", scope: !1, file: !1, line: 212, type: !46, isLocal: false, isDefinition: true, scopeLine: 215, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !57)
!571 = !DILocalVariable(name: "two_ja", arg: 1, scope: !570, file: !1, line: 212, type: !48)
!572 = !DILocation(line: 212, column: 26, scope: !570)
!573 = !DILocalVariable(name: "two_jb", arg: 2, scope: !570, file: !1, line: 212, type: !48)
!574 = !DILocation(line: 212, column: 38, scope: !570)
!575 = !DILocalVariable(name: "two_jc", arg: 3, scope: !570, file: !1, line: 212, type: !48)
!576 = !DILocation(line: 212, column: 50, scope: !570)
!577 = !DILocalVariable(name: "two_jd", arg: 4, scope: !570, file: !1, line: 213, type: !48)
!578 = !DILocation(line: 213, column: 26, scope: !570)
!579 = !DILocalVariable(name: "two_je", arg: 5, scope: !570, file: !1, line: 213, type: !48)
!580 = !DILocation(line: 213, column: 38, scope: !570)
!581 = !DILocalVariable(name: "two_jf", arg: 6, scope: !570, file: !1, line: 213, type: !48)
!582 = !DILocation(line: 213, column: 50, scope: !570)
!583 = !DILocalVariable(name: "result", arg: 7, scope: !570, file: !1, line: 214, type: !49)
!584 = !DILocation(line: 214, column: 38, scope: !570)
!585 = !DILocation(line: 218, column: 9, scope: !586)
!586 = distinct !DILexicalBlock(scope: !570, file: !1, line: 218, column: 9)
!587 = !DILocation(line: 218, column: 16, scope: !586)
!588 = !DILocation(line: 218, column: 20, scope: !586)
!589 = !DILocation(line: 218, column: 23, scope: !590)
!590 = !DILexicalBlockFile(scope: !586, file: !1, discriminator: 1)
!591 = !DILocation(line: 218, column: 30, scope: !590)
!592 = !DILocation(line: 218, column: 34, scope: !590)
!593 = !DILocation(line: 218, column: 37, scope: !594)
!594 = !DILexicalBlockFile(scope: !586, file: !1, discriminator: 2)
!595 = !DILocation(line: 218, column: 44, scope: !594)
!596 = !DILocation(line: 219, column: 6, scope: !586)
!597 = !DILocation(line: 219, column: 9, scope: !590)
!598 = !DILocation(line: 219, column: 16, scope: !590)
!599 = !DILocation(line: 219, column: 20, scope: !590)
!600 = !DILocation(line: 219, column: 23, scope: !594)
!601 = !DILocation(line: 219, column: 30, scope: !594)
!602 = !DILocation(line: 219, column: 34, scope: !594)
!603 = !DILocation(line: 219, column: 37, scope: !604)
!604 = !DILexicalBlockFile(scope: !586, file: !1, discriminator: 3)
!605 = !DILocation(line: 219, column: 44, scope: !604)
!606 = !DILocation(line: 218, column: 9, scope: !607)
!607 = !DILexicalBlockFile(scope: !570, file: !1, discriminator: 3)
!608 = !DILocation(line: 221, column: 5, scope: !609)
!609 = distinct !DILexicalBlock(scope: !586, file: !1, line: 220, column: 8)
!610 = distinct !{!610, !608}
!611 = !DILocation(line: 221, column: 5, scope: !612)
!612 = !DILexicalBlockFile(scope: !613, file: !1, discriminator: 1)
!613 = distinct !DILexicalBlock(scope: !609, file: !1, line: 221, column: 5)
!614 = distinct !{!614, !615}
!615 = !DILocation(line: 221, column: 5, scope: !613)
!616 = !DILocation(line: 221, column: 5, scope: !617)
!617 = !DILexicalBlockFile(scope: !618, file: !1, discriminator: 2)
!618 = distinct !DILexicalBlock(scope: !613, file: !1, line: 221, column: 5)
!619 = !DILocation(line: 221, column: 5, scope: !620)
!620 = !DILexicalBlockFile(scope: !613, file: !1, discriminator: 3)
!621 = !DILocation(line: 222, column: 3, scope: !609)
!622 = !DILocation(line: 223, column: 39, scope: !623)
!623 = distinct !DILexicalBlock(scope: !586, file: !1, line: 223, column: 14)
!624 = !DILocation(line: 223, column: 47, scope: !623)
!625 = !DILocation(line: 223, column: 55, scope: !623)
!626 = !DILocation(line: 223, column: 14, scope: !623)
!627 = !DILocation(line: 224, column: 11, scope: !623)
!628 = !DILocation(line: 224, column: 39, scope: !629)
!629 = !DILexicalBlockFile(scope: !623, file: !1, discriminator: 1)
!630 = !DILocation(line: 224, column: 47, scope: !629)
!631 = !DILocation(line: 224, column: 55, scope: !629)
!632 = !DILocation(line: 224, column: 14, scope: !629)
!633 = !DILocation(line: 225, column: 11, scope: !623)
!634 = !DILocation(line: 225, column: 39, scope: !629)
!635 = !DILocation(line: 225, column: 47, scope: !629)
!636 = !DILocation(line: 225, column: 55, scope: !629)
!637 = !DILocation(line: 225, column: 14, scope: !629)
!638 = !DILocation(line: 226, column: 11, scope: !623)
!639 = !DILocation(line: 226, column: 39, scope: !629)
!640 = !DILocation(line: 226, column: 47, scope: !629)
!641 = !DILocation(line: 226, column: 55, scope: !629)
!642 = !DILocation(line: 226, column: 14, scope: !629)
!643 = !DILocation(line: 223, column: 14, scope: !590)
!644 = !DILocation(line: 228, column: 5, scope: !645)
!645 = distinct !DILexicalBlock(scope: !623, file: !1, line: 227, column: 8)
!646 = !DILocation(line: 228, column: 13, scope: !645)
!647 = !DILocation(line: 228, column: 17, scope: !645)
!648 = !DILocation(line: 229, column: 5, scope: !645)
!649 = !DILocation(line: 229, column: 13, scope: !645)
!650 = !DILocation(line: 229, column: 17, scope: !645)
!651 = !DILocation(line: 230, column: 5, scope: !645)
!652 = !DILocalVariable(name: "n1", scope: !653, file: !1, line: 233, type: !50)
!653 = distinct !DILexicalBlock(scope: !623, file: !1, line: 232, column: 8)
!654 = !DILocation(line: 233, column: 19, scope: !653)
!655 = !DILocalVariable(name: "d1", scope: !653, file: !1, line: 234, type: !50)
!656 = !DILocation(line: 234, column: 19, scope: !653)
!657 = !DILocalVariable(name: "d2", scope: !653, file: !1, line: 234, type: !50)
!658 = !DILocation(line: 234, column: 23, scope: !653)
!659 = !DILocalVariable(name: "d3", scope: !653, file: !1, line: 234, type: !50)
!660 = !DILocation(line: 234, column: 27, scope: !653)
!661 = !DILocalVariable(name: "d4", scope: !653, file: !1, line: 234, type: !50)
!662 = !DILocation(line: 234, column: 31, scope: !653)
!663 = !DILocalVariable(name: "d5", scope: !653, file: !1, line: 234, type: !50)
!664 = !DILocation(line: 234, column: 35, scope: !653)
!665 = !DILocalVariable(name: "d6", scope: !653, file: !1, line: 234, type: !50)
!666 = !DILocation(line: 234, column: 39, scope: !653)
!667 = !DILocalVariable(name: "norm", scope: !653, file: !1, line: 235, type: !55)
!668 = !DILocation(line: 235, column: 12, scope: !653)
!669 = !DILocalVariable(name: "tk", scope: !653, file: !1, line: 236, type: !48)
!670 = !DILocation(line: 236, column: 9, scope: !653)
!671 = !DILocalVariable(name: "tkmin", scope: !653, file: !1, line: 236, type: !48)
!672 = !DILocation(line: 236, column: 13, scope: !653)
!673 = !DILocalVariable(name: "tkmax", scope: !653, file: !1, line: 236, type: !48)
!674 = !DILocation(line: 236, column: 20, scope: !653)
!675 = !DILocalVariable(name: "phase", scope: !653, file: !1, line: 237, type: !55)
!676 = !DILocation(line: 237, column: 12, scope: !653)
!677 = !DILocalVariable(name: "sum_pos", scope: !653, file: !1, line: 238, type: !55)
!678 = !DILocation(line: 238, column: 12, scope: !653)
!679 = !DILocalVariable(name: "sum_neg", scope: !653, file: !1, line: 239, type: !55)
!680 = !DILocation(line: 239, column: 12, scope: !653)
!681 = !DILocalVariable(name: "sumsq_err", scope: !653, file: !1, line: 240, type: !55)
!682 = !DILocation(line: 240, column: 12, scope: !653)
!683 = !DILocalVariable(name: "status", scope: !653, file: !1, line: 241, type: !48)
!684 = !DILocation(line: 241, column: 9, scope: !653)
!685 = !DILocation(line: 242, column: 21, scope: !653)
!686 = !DILocation(line: 242, column: 29, scope: !653)
!687 = !DILocation(line: 242, column: 37, scope: !653)
!688 = !DILocation(line: 242, column: 15, scope: !653)
!689 = !DILocation(line: 242, column: 12, scope: !653)
!690 = !DILocation(line: 243, column: 21, scope: !653)
!691 = !DILocation(line: 243, column: 29, scope: !653)
!692 = !DILocation(line: 243, column: 37, scope: !653)
!693 = !DILocation(line: 243, column: 15, scope: !653)
!694 = !DILocation(line: 243, column: 12, scope: !653)
!695 = !DILocation(line: 244, column: 21, scope: !653)
!696 = !DILocation(line: 244, column: 29, scope: !653)
!697 = !DILocation(line: 244, column: 37, scope: !653)
!698 = !DILocation(line: 244, column: 15, scope: !653)
!699 = !DILocation(line: 244, column: 12, scope: !653)
!700 = !DILocation(line: 245, column: 21, scope: !653)
!701 = !DILocation(line: 245, column: 29, scope: !653)
!702 = !DILocation(line: 245, column: 37, scope: !653)
!703 = !DILocation(line: 245, column: 15, scope: !653)
!704 = !DILocation(line: 245, column: 12, scope: !653)
!705 = !DILocation(line: 246, column: 8, scope: !706)
!706 = distinct !DILexicalBlock(scope: !653, file: !1, line: 246, column: 8)
!707 = !DILocation(line: 246, column: 15, scope: !706)
!708 = !DILocation(line: 246, column: 8, scope: !653)
!709 = !DILocation(line: 247, column: 7, scope: !710)
!710 = distinct !DILexicalBlock(scope: !706, file: !1, line: 246, column: 31)
!711 = distinct !{!711, !709}
!712 = !DILocation(line: 247, column: 7, scope: !713)
!713 = !DILexicalBlockFile(scope: !714, file: !1, discriminator: 1)
!714 = distinct !DILexicalBlock(scope: !710, file: !1, line: 247, column: 7)
!715 = distinct !{!715, !716}
!716 = !DILocation(line: 247, column: 7, scope: !714)
!717 = !DILocation(line: 247, column: 7, scope: !718)
!718 = !DILexicalBlockFile(scope: !719, file: !1, discriminator: 2)
!719 = distinct !DILexicalBlock(scope: !714, file: !1, line: 247, column: 7)
!720 = !DILocation(line: 247, column: 7, scope: !721)
!721 = !DILexicalBlockFile(scope: !714, file: !1, discriminator: 3)
!722 = !DILocation(line: 248, column: 5, scope: !710)
!723 = !DILocation(line: 249, column: 20, scope: !653)
!724 = !DILocation(line: 249, column: 12, scope: !653)
!725 = !DILocation(line: 249, column: 35, scope: !653)
!726 = !DILocation(line: 249, column: 27, scope: !727)
!727 = !DILexicalBlockFile(scope: !653, file: !1, discriminator: 1)
!728 = !DILocation(line: 249, column: 25, scope: !653)
!729 = !DILocation(line: 249, column: 50, scope: !653)
!730 = !DILocation(line: 249, column: 42, scope: !731)
!731 = !DILexicalBlockFile(scope: !653, file: !1, discriminator: 2)
!732 = !DILocation(line: 249, column: 40, scope: !653)
!733 = !DILocation(line: 249, column: 65, scope: !653)
!734 = !DILocation(line: 249, column: 57, scope: !735)
!735 = !DILexicalBlockFile(scope: !653, file: !1, discriminator: 3)
!736 = !DILocation(line: 249, column: 55, scope: !653)
!737 = !DILocation(line: 249, column: 10, scope: !653)
!738 = !DILocation(line: 252, column: 20, scope: !653)
!739 = !DILocation(line: 252, column: 29, scope: !653)
!740 = !DILocation(line: 252, column: 27, scope: !653)
!741 = !DILocation(line: 252, column: 38, scope: !653)
!742 = !DILocation(line: 252, column: 36, scope: !653)
!743 = !DILocation(line: 252, column: 47, scope: !653)
!744 = !DILocation(line: 252, column: 45, scope: !653)
!745 = !DILocation(line: 253, column: 20, scope: !653)
!746 = !DILocation(line: 253, column: 29, scope: !653)
!747 = !DILocation(line: 253, column: 27, scope: !653)
!748 = !DILocation(line: 253, column: 38, scope: !653)
!749 = !DILocation(line: 253, column: 36, scope: !653)
!750 = !DILocation(line: 253, column: 47, scope: !653)
!751 = !DILocation(line: 253, column: 45, scope: !653)
!752 = !DILocation(line: 251, column: 13, scope: !653)
!753 = !DILocation(line: 251, column: 11, scope: !653)
!754 = !DILocation(line: 255, column: 21, scope: !653)
!755 = !DILocation(line: 255, column: 30, scope: !653)
!756 = !DILocation(line: 255, column: 28, scope: !653)
!757 = !DILocation(line: 255, column: 39, scope: !653)
!758 = !DILocation(line: 255, column: 37, scope: !653)
!759 = !DILocation(line: 255, column: 48, scope: !653)
!760 = !DILocation(line: 255, column: 46, scope: !653)
!761 = !DILocation(line: 255, column: 55, scope: !653)
!762 = !DILocation(line: 256, column: 21, scope: !653)
!763 = !DILocation(line: 256, column: 30, scope: !653)
!764 = !DILocation(line: 256, column: 28, scope: !653)
!765 = !DILocation(line: 256, column: 39, scope: !653)
!766 = !DILocation(line: 256, column: 37, scope: !653)
!767 = !DILocation(line: 257, column: 21, scope: !653)
!768 = !DILocation(line: 257, column: 30, scope: !653)
!769 = !DILocation(line: 257, column: 28, scope: !653)
!770 = !DILocation(line: 257, column: 39, scope: !653)
!771 = !DILocation(line: 257, column: 37, scope: !653)
!772 = !DILocation(line: 258, column: 21, scope: !653)
!773 = !DILocation(line: 258, column: 30, scope: !653)
!774 = !DILocation(line: 258, column: 28, scope: !653)
!775 = !DILocation(line: 258, column: 39, scope: !653)
!776 = !DILocation(line: 258, column: 37, scope: !653)
!777 = !DILocation(line: 259, column: 21, scope: !653)
!778 = !DILocation(line: 259, column: 30, scope: !653)
!779 = !DILocation(line: 259, column: 28, scope: !653)
!780 = !DILocation(line: 259, column: 39, scope: !653)
!781 = !DILocation(line: 259, column: 37, scope: !653)
!782 = !DILocation(line: 255, column: 13, scope: !653)
!783 = !DILocation(line: 255, column: 11, scope: !653)
!784 = !DILocation(line: 261, column: 13, scope: !653)
!785 = !DILocation(line: 261, column: 11, scope: !653)
!786 = !DILocation(line: 265, column: 12, scope: !787)
!787 = distinct !DILexicalBlock(scope: !653, file: !1, line: 265, column: 5)
!788 = !DILocation(line: 265, column: 11, scope: !787)
!789 = !DILocation(line: 265, column: 9, scope: !787)
!790 = !DILocation(line: 265, column: 19, scope: !791)
!791 = !DILexicalBlockFile(scope: !792, file: !1, discriminator: 1)
!792 = distinct !DILexicalBlock(scope: !787, file: !1, line: 265, column: 5)
!793 = !DILocation(line: 265, column: 23, scope: !791)
!794 = !DILocation(line: 265, column: 21, scope: !791)
!795 = !DILocation(line: 265, column: 5, scope: !791)
!796 = !DILocalVariable(name: "term", scope: !797, file: !1, line: 266, type: !55)
!797 = distinct !DILexicalBlock(scope: !792, file: !1, line: 265, column: 39)
!798 = !DILocation(line: 266, column: 14, scope: !797)
!799 = !DILocalVariable(name: "term_err", scope: !797, file: !1, line: 267, type: !55)
!800 = !DILocation(line: 267, column: 14, scope: !797)
!801 = !DILocalVariable(name: "den_1", scope: !797, file: !1, line: 268, type: !50)
!802 = !DILocation(line: 268, column: 21, scope: !797)
!803 = !DILocalVariable(name: "den_2", scope: !797, file: !1, line: 268, type: !50)
!804 = !DILocation(line: 268, column: 28, scope: !797)
!805 = !DILocalVariable(name: "d1_a", scope: !797, file: !1, line: 269, type: !50)
!806 = !DILocation(line: 269, column: 21, scope: !797)
!807 = !DILocalVariable(name: "d1_b", scope: !797, file: !1, line: 269, type: !50)
!808 = !DILocation(line: 269, column: 27, scope: !797)
!809 = !DILocation(line: 270, column: 14, scope: !797)
!810 = !DILocation(line: 272, column: 32, scope: !797)
!811 = !DILocation(line: 272, column: 41, scope: !797)
!812 = !DILocation(line: 272, column: 39, scope: !797)
!813 = !DILocation(line: 272, column: 50, scope: !797)
!814 = !DILocation(line: 272, column: 48, scope: !797)
!815 = !DILocation(line: 272, column: 59, scope: !797)
!816 = !DILocation(line: 272, column: 57, scope: !797)
!817 = !DILocation(line: 272, column: 68, scope: !797)
!818 = !DILocation(line: 272, column: 66, scope: !797)
!819 = !DILocation(line: 272, column: 71, scope: !797)
!820 = !DILocation(line: 272, column: 74, scope: !797)
!821 = !DILocation(line: 272, column: 17, scope: !797)
!822 = !DILocation(line: 272, column: 14, scope: !797)
!823 = !DILocation(line: 273, column: 31, scope: !797)
!824 = !DILocation(line: 273, column: 33, scope: !797)
!825 = !DILocation(line: 273, column: 17, scope: !797)
!826 = !DILocation(line: 273, column: 14, scope: !797)
!827 = !DILocation(line: 274, column: 32, scope: !797)
!828 = !DILocation(line: 274, column: 41, scope: !797)
!829 = !DILocation(line: 274, column: 39, scope: !797)
!830 = !DILocation(line: 274, column: 50, scope: !797)
!831 = !DILocation(line: 274, column: 48, scope: !797)
!832 = !DILocation(line: 274, column: 59, scope: !797)
!833 = !DILocation(line: 274, column: 57, scope: !797)
!834 = !DILocation(line: 274, column: 68, scope: !797)
!835 = !DILocation(line: 274, column: 66, scope: !797)
!836 = !DILocation(line: 274, column: 71, scope: !797)
!837 = !DILocation(line: 274, column: 17, scope: !797)
!838 = !DILocation(line: 274, column: 14, scope: !797)
!839 = !DILocation(line: 275, column: 32, scope: !797)
!840 = !DILocation(line: 275, column: 41, scope: !797)
!841 = !DILocation(line: 275, column: 39, scope: !797)
!842 = !DILocation(line: 275, column: 50, scope: !797)
!843 = !DILocation(line: 275, column: 48, scope: !797)
!844 = !DILocation(line: 275, column: 59, scope: !797)
!845 = !DILocation(line: 275, column: 57, scope: !797)
!846 = !DILocation(line: 275, column: 68, scope: !797)
!847 = !DILocation(line: 275, column: 66, scope: !797)
!848 = !DILocation(line: 275, column: 71, scope: !797)
!849 = !DILocation(line: 275, column: 17, scope: !797)
!850 = !DILocation(line: 275, column: 14, scope: !797)
!851 = !DILocation(line: 276, column: 32, scope: !797)
!852 = !DILocation(line: 276, column: 41, scope: !797)
!853 = !DILocation(line: 276, column: 39, scope: !797)
!854 = !DILocation(line: 276, column: 50, scope: !797)
!855 = !DILocation(line: 276, column: 48, scope: !797)
!856 = !DILocation(line: 276, column: 59, scope: !797)
!857 = !DILocation(line: 276, column: 57, scope: !797)
!858 = !DILocation(line: 276, column: 62, scope: !797)
!859 = !DILocation(line: 276, column: 17, scope: !797)
!860 = !DILocation(line: 276, column: 14, scope: !797)
!861 = !DILocation(line: 277, column: 32, scope: !797)
!862 = !DILocation(line: 277, column: 41, scope: !797)
!863 = !DILocation(line: 277, column: 39, scope: !797)
!864 = !DILocation(line: 277, column: 50, scope: !797)
!865 = !DILocation(line: 277, column: 48, scope: !797)
!866 = !DILocation(line: 277, column: 59, scope: !797)
!867 = !DILocation(line: 277, column: 57, scope: !797)
!868 = !DILocation(line: 277, column: 62, scope: !797)
!869 = !DILocation(line: 277, column: 17, scope: !797)
!870 = !DILocation(line: 277, column: 14, scope: !797)
!871 = !DILocation(line: 278, column: 32, scope: !797)
!872 = !DILocation(line: 278, column: 41, scope: !797)
!873 = !DILocation(line: 278, column: 39, scope: !797)
!874 = !DILocation(line: 278, column: 50, scope: !797)
!875 = !DILocation(line: 278, column: 48, scope: !797)
!876 = !DILocation(line: 278, column: 59, scope: !797)
!877 = !DILocation(line: 278, column: 57, scope: !797)
!878 = !DILocation(line: 278, column: 62, scope: !797)
!879 = !DILocation(line: 278, column: 17, scope: !797)
!880 = !DILocation(line: 278, column: 14, scope: !797)
!881 = !DILocation(line: 279, column: 32, scope: !797)
!882 = !DILocation(line: 279, column: 41, scope: !797)
!883 = !DILocation(line: 279, column: 39, scope: !797)
!884 = !DILocation(line: 279, column: 50, scope: !797)
!885 = !DILocation(line: 279, column: 48, scope: !797)
!886 = !DILocation(line: 279, column: 59, scope: !797)
!887 = !DILocation(line: 279, column: 57, scope: !797)
!888 = !DILocation(line: 279, column: 62, scope: !797)
!889 = !DILocation(line: 279, column: 17, scope: !797)
!890 = !DILocation(line: 279, column: 14, scope: !797)
!891 = !DILocation(line: 281, column: 10, scope: !892)
!892 = distinct !DILexicalBlock(scope: !797, file: !1, line: 281, column: 10)
!893 = !DILocation(line: 281, column: 17, scope: !892)
!894 = !DILocation(line: 281, column: 10, scope: !797)
!895 = !DILocation(line: 282, column: 9, scope: !896)
!896 = distinct !DILexicalBlock(scope: !892, file: !1, line: 281, column: 33)
!897 = distinct !{!897, !895}
!898 = !DILocation(line: 282, column: 9, scope: !899)
!899 = !DILexicalBlockFile(scope: !900, file: !1, discriminator: 1)
!900 = distinct !DILexicalBlock(scope: !896, file: !1, line: 282, column: 9)
!901 = distinct !{!901, !902}
!902 = !DILocation(line: 282, column: 9, scope: !900)
!903 = !DILocation(line: 282, column: 9, scope: !904)
!904 = !DILexicalBlockFile(scope: !905, file: !1, discriminator: 2)
!905 = distinct !DILexicalBlock(scope: !900, file: !1, line: 282, column: 9)
!906 = !DILocation(line: 282, column: 9, scope: !907)
!907 = !DILexicalBlockFile(scope: !900, file: !1, discriminator: 3)
!908 = !DILocation(line: 283, column: 7, scope: !896)
!909 = !DILocation(line: 285, column: 21, scope: !797)
!910 = !DILocation(line: 285, column: 32, scope: !797)
!911 = !DILocation(line: 285, column: 25, scope: !797)
!912 = !DILocation(line: 285, column: 10, scope: !797)
!913 = !DILocation(line: 285, column: 14, scope: !797)
!914 = !DILocation(line: 286, column: 21, scope: !797)
!915 = !DILocation(line: 286, column: 37, scope: !797)
!916 = !DILocation(line: 286, column: 27, scope: !797)
!917 = !DILocation(line: 286, column: 25, scope: !797)
!918 = !DILocation(line: 286, column: 54, scope: !797)
!919 = !DILocation(line: 286, column: 44, scope: !920)
!920 = !DILexicalBlockFile(scope: !797, file: !1, discriminator: 1)
!921 = !DILocation(line: 286, column: 66, scope: !797)
!922 = !DILocation(line: 286, column: 59, scope: !797)
!923 = !DILocation(line: 286, column: 42, scope: !797)
!924 = !DILocation(line: 286, column: 10, scope: !797)
!925 = !DILocation(line: 286, column: 14, scope: !797)
!926 = !DILocation(line: 288, column: 23, scope: !797)
!927 = !DILocation(line: 288, column: 30, scope: !797)
!928 = !DILocation(line: 288, column: 26, scope: !797)
!929 = !DILocation(line: 288, column: 37, scope: !797)
!930 = !DILocation(line: 288, column: 33, scope: !797)
!931 = !DILocation(line: 288, column: 13, scope: !797)
!932 = !DILocation(line: 288, column: 18, scope: !797)
!933 = !DILocation(line: 289, column: 23, scope: !797)
!934 = !DILocation(line: 289, column: 37, scope: !797)
!935 = !DILocation(line: 289, column: 44, scope: !797)
!936 = !DILocation(line: 289, column: 40, scope: !797)
!937 = !DILocation(line: 289, column: 29, scope: !797)
!938 = !DILocation(line: 289, column: 27, scope: !797)
!939 = !DILocation(line: 289, column: 13, scope: !797)
!940 = !DILocation(line: 289, column: 18, scope: !797)
!941 = !DILocation(line: 290, column: 23, scope: !797)
!942 = !DILocation(line: 290, column: 37, scope: !797)
!943 = !DILocation(line: 290, column: 44, scope: !797)
!944 = !DILocation(line: 290, column: 40, scope: !797)
!945 = !DILocation(line: 290, column: 29, scope: !797)
!946 = !DILocation(line: 290, column: 27, scope: !797)
!947 = !DILocation(line: 290, column: 13, scope: !797)
!948 = !DILocation(line: 290, column: 17, scope: !797)
!949 = !DILocation(line: 291, column: 23, scope: !797)
!950 = !DILocation(line: 291, column: 37, scope: !797)
!951 = !DILocation(line: 291, column: 44, scope: !797)
!952 = !DILocation(line: 291, column: 40, scope: !797)
!953 = !DILocation(line: 291, column: 29, scope: !797)
!954 = !DILocation(line: 291, column: 27, scope: !797)
!955 = !DILocation(line: 291, column: 13, scope: !797)
!956 = !DILocation(line: 291, column: 17, scope: !797)
!957 = !DILocation(line: 293, column: 23, scope: !797)
!958 = !DILocation(line: 293, column: 30, scope: !797)
!959 = !DILocation(line: 293, column: 26, scope: !797)
!960 = !DILocation(line: 293, column: 37, scope: !797)
!961 = !DILocation(line: 293, column: 33, scope: !797)
!962 = !DILocation(line: 293, column: 13, scope: !797)
!963 = !DILocation(line: 293, column: 18, scope: !797)
!964 = !DILocation(line: 294, column: 23, scope: !797)
!965 = !DILocation(line: 294, column: 37, scope: !797)
!966 = !DILocation(line: 294, column: 44, scope: !797)
!967 = !DILocation(line: 294, column: 40, scope: !797)
!968 = !DILocation(line: 294, column: 29, scope: !797)
!969 = !DILocation(line: 294, column: 27, scope: !797)
!970 = !DILocation(line: 294, column: 13, scope: !797)
!971 = !DILocation(line: 294, column: 18, scope: !797)
!972 = !DILocation(line: 295, column: 23, scope: !797)
!973 = !DILocation(line: 295, column: 37, scope: !797)
!974 = !DILocation(line: 295, column: 44, scope: !797)
!975 = !DILocation(line: 295, column: 40, scope: !797)
!976 = !DILocation(line: 295, column: 29, scope: !797)
!977 = !DILocation(line: 295, column: 27, scope: !797)
!978 = !DILocation(line: 295, column: 13, scope: !797)
!979 = !DILocation(line: 295, column: 17, scope: !797)
!980 = !DILocation(line: 296, column: 23, scope: !797)
!981 = !DILocation(line: 296, column: 37, scope: !797)
!982 = !DILocation(line: 296, column: 44, scope: !797)
!983 = !DILocation(line: 296, column: 40, scope: !797)
!984 = !DILocation(line: 296, column: 29, scope: !797)
!985 = !DILocation(line: 296, column: 27, scope: !797)
!986 = !DILocation(line: 296, column: 13, scope: !797)
!987 = !DILocation(line: 296, column: 17, scope: !797)
!988 = !DILocation(line: 298, column: 15, scope: !797)
!989 = !DILocation(line: 298, column: 26, scope: !797)
!990 = !DILocation(line: 298, column: 21, scope: !797)
!991 = !DILocation(line: 298, column: 38, scope: !797)
!992 = !DILocation(line: 298, column: 30, scope: !797)
!993 = !DILocation(line: 298, column: 50, scope: !797)
!994 = !DILocation(line: 298, column: 42, scope: !797)
!995 = !DILocation(line: 298, column: 13, scope: !797)
!996 = !DILocation(line: 299, column: 16, scope: !797)
!997 = !DILocation(line: 299, column: 15, scope: !797)
!998 = !DILocation(line: 299, column: 13, scope: !797)
!999 = !DILocation(line: 300, column: 22, scope: !797)
!1000 = !DILocation(line: 300, column: 39, scope: !797)
!1001 = !DILocation(line: 300, column: 28, scope: !797)
!1002 = !DILocation(line: 300, column: 26, scope: !797)
!1003 = !DILocation(line: 300, column: 57, scope: !797)
!1004 = !DILocation(line: 300, column: 46, scope: !920)
!1005 = !DILocation(line: 300, column: 44, scope: !797)
!1006 = !DILocation(line: 300, column: 17, scope: !797)
!1007 = !DILocation(line: 301, column: 24, scope: !797)
!1008 = !DILocation(line: 301, column: 37, scope: !797)
!1009 = !DILocation(line: 301, column: 29, scope: !797)
!1010 = !DILocation(line: 301, column: 19, scope: !797)
!1011 = !DILocation(line: 301, column: 50, scope: !797)
!1012 = !DILocation(line: 301, column: 42, scope: !797)
!1013 = !DILocation(line: 301, column: 16, scope: !797)
!1014 = !DILocation(line: 302, column: 24, scope: !797)
!1015 = !DILocation(line: 302, column: 37, scope: !797)
!1016 = !DILocation(line: 302, column: 29, scope: !797)
!1017 = !DILocation(line: 302, column: 19, scope: !797)
!1018 = !DILocation(line: 302, column: 50, scope: !797)
!1019 = !DILocation(line: 302, column: 42, scope: !797)
!1020 = !DILocation(line: 302, column: 16, scope: !797)
!1021 = !DILocation(line: 304, column: 10, scope: !1022)
!1022 = distinct !DILexicalBlock(scope: !797, file: !1, line: 304, column: 10)
!1023 = !DILocation(line: 304, column: 15, scope: !1022)
!1024 = !DILocation(line: 304, column: 10, scope: !797)
!1025 = !DILocation(line: 305, column: 20, scope: !1026)
!1026 = distinct !DILexicalBlock(scope: !1022, file: !1, line: 304, column: 23)
!1027 = !DILocation(line: 305, column: 25, scope: !1026)
!1028 = !DILocation(line: 305, column: 24, scope: !1026)
!1029 = !DILocation(line: 305, column: 17, scope: !1026)
!1030 = !DILocation(line: 306, column: 7, scope: !1026)
!1031 = !DILocation(line: 308, column: 20, scope: !1032)
!1032 = distinct !DILexicalBlock(scope: !1022, file: !1, line: 307, column: 12)
!1033 = !DILocation(line: 308, column: 25, scope: !1032)
!1034 = !DILocation(line: 308, column: 24, scope: !1032)
!1035 = !DILocation(line: 308, column: 17, scope: !1032)
!1036 = !DILocation(line: 311, column: 20, scope: !797)
!1037 = !DILocation(line: 311, column: 25, scope: !797)
!1038 = !DILocation(line: 311, column: 24, scope: !797)
!1039 = !DILocation(line: 311, column: 32, scope: !797)
!1040 = !DILocation(line: 311, column: 30, scope: !797)
!1041 = !DILocation(line: 311, column: 41, scope: !797)
!1042 = !DILocation(line: 311, column: 40, scope: !797)
!1043 = !DILocation(line: 311, column: 17, scope: !797)
!1044 = !DILocation(line: 312, column: 5, scope: !797)
!1045 = !DILocation(line: 265, column: 33, scope: !1046)
!1046 = !DILexicalBlockFile(scope: !792, file: !1, discriminator: 2)
!1047 = !DILocation(line: 265, column: 5, scope: !1046)
!1048 = distinct !{!1048, !1049}
!1049 = !DILocation(line: 265, column: 5, scope: !653)
!1050 = !DILocation(line: 314, column: 20, scope: !653)
!1051 = !DILocation(line: 314, column: 30, scope: !653)
!1052 = !DILocation(line: 314, column: 28, scope: !653)
!1053 = !DILocation(line: 314, column: 5, scope: !653)
!1054 = !DILocation(line: 314, column: 13, scope: !653)
!1055 = !DILocation(line: 314, column: 18, scope: !653)
!1056 = !DILocation(line: 315, column: 45, scope: !653)
!1057 = !DILocation(line: 315, column: 55, scope: !653)
!1058 = !DILocation(line: 315, column: 53, scope: !653)
!1059 = !DILocation(line: 315, column: 42, scope: !653)
!1060 = !DILocation(line: 315, column: 5, scope: !653)
!1061 = !DILocation(line: 315, column: 13, scope: !653)
!1062 = !DILocation(line: 315, column: 18, scope: !653)
!1063 = !DILocation(line: 316, column: 25, scope: !653)
!1064 = !DILocation(line: 316, column: 43, scope: !653)
!1065 = !DILocation(line: 316, column: 49, scope: !653)
!1066 = !DILocation(line: 316, column: 48, scope: !653)
!1067 = !DILocation(line: 316, column: 42, scope: !653)
!1068 = !DILocation(line: 316, column: 41, scope: !653)
!1069 = !DILocation(line: 316, column: 55, scope: !653)
!1070 = !DILocation(line: 316, column: 35, scope: !653)
!1071 = !DILocation(line: 316, column: 20, scope: !653)
!1072 = !DILocation(line: 316, column: 5, scope: !653)
!1073 = !DILocation(line: 316, column: 13, scope: !653)
!1074 = !DILocation(line: 316, column: 17, scope: !653)
!1075 = !DILocation(line: 317, column: 45, scope: !653)
!1076 = !DILocation(line: 317, column: 53, scope: !653)
!1077 = !DILocation(line: 317, column: 51, scope: !653)
!1078 = !DILocation(line: 317, column: 59, scope: !653)
!1079 = !DILocation(line: 317, column: 42, scope: !653)
!1080 = !DILocation(line: 317, column: 73, scope: !653)
!1081 = !DILocation(line: 317, column: 81, scope: !653)
!1082 = !DILocation(line: 317, column: 68, scope: !653)
!1083 = !DILocation(line: 317, column: 66, scope: !653)
!1084 = !DILocation(line: 317, column: 5, scope: !653)
!1085 = !DILocation(line: 317, column: 13, scope: !653)
!1086 = !DILocation(line: 317, column: 17, scope: !653)
!1087 = !DILocation(line: 319, column: 5, scope: !653)
!1088 = !DILocation(line: 321, column: 1, scope: !570)
!1089 = distinct !DISubprogram(name: "delta", scope: !1, file: !1, line: 63, type: !1090, isLocal: true, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !57)
!1090 = !DISubroutineType(types: !1091)
!1091 = !{!48, !48, !48, !48, !49}
!1092 = !DILocalVariable(name: "ta", arg: 1, scope: !1089, file: !1, line: 63, type: !48)
!1093 = !DILocation(line: 63, column: 11, scope: !1089)
!1094 = !DILocalVariable(name: "tb", arg: 2, scope: !1089, file: !1, line: 63, type: !48)
!1095 = !DILocation(line: 63, column: 19, scope: !1089)
!1096 = !DILocalVariable(name: "tc", arg: 3, scope: !1089, file: !1, line: 63, type: !48)
!1097 = !DILocation(line: 63, column: 27, scope: !1089)
!1098 = !DILocalVariable(name: "d", arg: 4, scope: !1089, file: !1, line: 63, type: !49)
!1099 = !DILocation(line: 63, column: 47, scope: !1089)
!1100 = !DILocalVariable(name: "f1", scope: !1089, file: !1, line: 65, type: !50)
!1101 = !DILocation(line: 65, column: 17, scope: !1089)
!1102 = !DILocalVariable(name: "f2", scope: !1089, file: !1, line: 65, type: !50)
!1103 = !DILocation(line: 65, column: 21, scope: !1089)
!1104 = !DILocalVariable(name: "f3", scope: !1089, file: !1, line: 65, type: !50)
!1105 = !DILocation(line: 65, column: 25, scope: !1089)
!1106 = !DILocalVariable(name: "f4", scope: !1089, file: !1, line: 65, type: !50)
!1107 = !DILocation(line: 65, column: 29, scope: !1089)
!1108 = !DILocalVariable(name: "status", scope: !1089, file: !1, line: 66, type: !48)
!1109 = !DILocation(line: 66, column: 7, scope: !1089)
!1110 = !DILocation(line: 67, column: 28, scope: !1089)
!1111 = !DILocation(line: 67, column: 33, scope: !1089)
!1112 = !DILocation(line: 67, column: 31, scope: !1089)
!1113 = !DILocation(line: 67, column: 38, scope: !1089)
!1114 = !DILocation(line: 67, column: 36, scope: !1089)
!1115 = !DILocation(line: 67, column: 41, scope: !1089)
!1116 = !DILocation(line: 67, column: 13, scope: !1089)
!1117 = !DILocation(line: 67, column: 10, scope: !1089)
!1118 = !DILocation(line: 68, column: 28, scope: !1089)
!1119 = !DILocation(line: 68, column: 33, scope: !1089)
!1120 = !DILocation(line: 68, column: 31, scope: !1089)
!1121 = !DILocation(line: 68, column: 38, scope: !1089)
!1122 = !DILocation(line: 68, column: 36, scope: !1089)
!1123 = !DILocation(line: 68, column: 41, scope: !1089)
!1124 = !DILocation(line: 68, column: 13, scope: !1089)
!1125 = !DILocation(line: 68, column: 10, scope: !1089)
!1126 = !DILocation(line: 69, column: 28, scope: !1089)
!1127 = !DILocation(line: 69, column: 33, scope: !1089)
!1128 = !DILocation(line: 69, column: 31, scope: !1089)
!1129 = !DILocation(line: 69, column: 38, scope: !1089)
!1130 = !DILocation(line: 69, column: 36, scope: !1089)
!1131 = !DILocation(line: 69, column: 41, scope: !1089)
!1132 = !DILocation(line: 69, column: 13, scope: !1089)
!1133 = !DILocation(line: 69, column: 10, scope: !1089)
!1134 = !DILocation(line: 70, column: 28, scope: !1089)
!1135 = !DILocation(line: 70, column: 33, scope: !1089)
!1136 = !DILocation(line: 70, column: 31, scope: !1089)
!1137 = !DILocation(line: 70, column: 38, scope: !1089)
!1138 = !DILocation(line: 70, column: 36, scope: !1089)
!1139 = !DILocation(line: 70, column: 41, scope: !1089)
!1140 = !DILocation(line: 70, column: 44, scope: !1089)
!1141 = !DILocation(line: 70, column: 13, scope: !1089)
!1142 = !DILocation(line: 70, column: 10, scope: !1089)
!1143 = !DILocation(line: 71, column: 6, scope: !1144)
!1144 = distinct !DILexicalBlock(scope: !1089, file: !1, line: 71, column: 6)
!1145 = !DILocation(line: 71, column: 13, scope: !1144)
!1146 = !DILocation(line: 71, column: 6, scope: !1089)
!1147 = !DILocation(line: 72, column: 5, scope: !1148)
!1148 = distinct !DILexicalBlock(scope: !1144, file: !1, line: 71, column: 19)
!1149 = distinct !{!1149, !1147}
!1150 = !DILocation(line: 72, column: 5, scope: !1151)
!1151 = !DILexicalBlockFile(scope: !1152, file: !1, discriminator: 1)
!1152 = distinct !DILexicalBlock(scope: !1148, file: !1, line: 72, column: 5)
!1153 = distinct !{!1153, !1154}
!1154 = !DILocation(line: 72, column: 5, scope: !1152)
!1155 = !DILocation(line: 72, column: 5, scope: !1156)
!1156 = !DILexicalBlockFile(scope: !1157, file: !1, discriminator: 2)
!1157 = distinct !DILexicalBlock(scope: !1152, file: !1, line: 72, column: 5)
!1158 = !DILocation(line: 72, column: 5, scope: !1159)
!1159 = !DILexicalBlockFile(scope: !1152, file: !1, discriminator: 3)
!1160 = !DILocation(line: 73, column: 3, scope: !1148)
!1161 = !DILocation(line: 74, column: 15, scope: !1089)
!1162 = !DILocation(line: 74, column: 24, scope: !1089)
!1163 = !DILocation(line: 74, column: 19, scope: !1089)
!1164 = !DILocation(line: 74, column: 33, scope: !1089)
!1165 = !DILocation(line: 74, column: 28, scope: !1089)
!1166 = !DILocation(line: 74, column: 42, scope: !1089)
!1167 = !DILocation(line: 74, column: 37, scope: !1089)
!1168 = !DILocation(line: 74, column: 3, scope: !1089)
!1169 = !DILocation(line: 74, column: 6, scope: !1089)
!1170 = !DILocation(line: 74, column: 10, scope: !1089)
!1171 = !DILocation(line: 75, column: 41, scope: !1089)
!1172 = !DILocation(line: 75, column: 44, scope: !1089)
!1173 = !DILocation(line: 75, column: 36, scope: !1089)
!1174 = !DILocation(line: 75, column: 34, scope: !1089)
!1175 = !DILocation(line: 75, column: 3, scope: !1089)
!1176 = !DILocation(line: 75, column: 6, scope: !1089)
!1177 = !DILocation(line: 75, column: 10, scope: !1089)
!1178 = !DILocation(line: 76, column: 3, scope: !1089)
!1179 = !DILocation(line: 77, column: 1, scope: !1089)
!1180 = distinct !DISubprogram(name: "locMin5", scope: !1, file: !1, line: 50, type: !1181, isLocal: true, isDefinition: true, scopeLine: 51, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !57)
!1181 = !DISubroutineType(types: !1182)
!1182 = !{!48, !526, !526, !526, !526, !526}
!1183 = !DILocalVariable(name: "a", arg: 1, scope: !1180, file: !1, line: 50, type: !526)
!1184 = !DILocation(line: 50, column: 23, scope: !1180)
!1185 = !DILocalVariable(name: "b", arg: 2, scope: !1180, file: !1, line: 50, type: !526)
!1186 = !DILocation(line: 50, column: 36, scope: !1180)
!1187 = !DILocalVariable(name: "c", arg: 3, scope: !1180, file: !1, line: 50, type: !526)
!1188 = !DILocation(line: 50, column: 49, scope: !1180)
!1189 = !DILocalVariable(name: "d", arg: 4, scope: !1180, file: !1, line: 50, type: !526)
!1190 = !DILocation(line: 50, column: 62, scope: !1180)
!1191 = !DILocalVariable(name: "e", arg: 5, scope: !1180, file: !1, line: 50, type: !526)
!1192 = !DILocation(line: 50, column: 75, scope: !1180)
!1193 = !DILocalVariable(name: "f", scope: !1180, file: !1, line: 52, type: !48)
!1194 = !DILocation(line: 52, column: 7, scope: !1180)
!1195 = !DILocation(line: 52, column: 11, scope: !1180)
!1196 = !DILocation(line: 52, column: 11, scope: !1197)
!1197 = !DILexicalBlockFile(scope: !1180, file: !1, discriminator: 1)
!1198 = !DILocation(line: 52, column: 11, scope: !1199)
!1199 = !DILexicalBlockFile(scope: !1180, file: !1, discriminator: 2)
!1200 = !DILocation(line: 52, column: 11, scope: !1201)
!1201 = !DILexicalBlockFile(scope: !1180, file: !1, discriminator: 3)
!1202 = !DILocation(line: 52, column: 7, scope: !1201)
!1203 = !DILocalVariable(name: "g", scope: !1180, file: !1, line: 53, type: !48)
!1204 = !DILocation(line: 53, column: 7, scope: !1180)
!1205 = !DILocation(line: 53, column: 11, scope: !1180)
!1206 = !DILocation(line: 53, column: 11, scope: !1197)
!1207 = !DILocation(line: 53, column: 11, scope: !1199)
!1208 = !DILocation(line: 53, column: 11, scope: !1201)
!1209 = !DILocation(line: 53, column: 7, scope: !1201)
!1210 = !DILocalVariable(name: "h", scope: !1180, file: !1, line: 54, type: !48)
!1211 = !DILocation(line: 54, column: 7, scope: !1180)
!1212 = !DILocation(line: 54, column: 11, scope: !1180)
!1213 = !DILocation(line: 54, column: 11, scope: !1197)
!1214 = !DILocation(line: 54, column: 11, scope: !1199)
!1215 = !DILocation(line: 54, column: 11, scope: !1201)
!1216 = !DILocation(line: 54, column: 7, scope: !1201)
!1217 = !DILocation(line: 55, column: 10, scope: !1180)
!1218 = !DILocation(line: 55, column: 10, scope: !1197)
!1219 = !DILocation(line: 55, column: 10, scope: !1199)
!1220 = !DILocation(line: 55, column: 10, scope: !1201)
!1221 = !DILocation(line: 55, column: 3, scope: !1201)
!1222 = distinct !DISubprogram(name: "gsl_sf_coupling_RacahW_e", scope: !1, file: !1, line: 325, type: !46, isLocal: false, isDefinition: true, scopeLine: 328, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !57)
!1223 = !DILocalVariable(name: "two_ja", arg: 1, scope: !1222, file: !1, line: 325, type: !48)
!1224 = !DILocation(line: 325, column: 30, scope: !1222)
!1225 = !DILocalVariable(name: "two_jb", arg: 2, scope: !1222, file: !1, line: 325, type: !48)
!1226 = !DILocation(line: 325, column: 42, scope: !1222)
!1227 = !DILocalVariable(name: "two_jc", arg: 3, scope: !1222, file: !1, line: 325, type: !48)
!1228 = !DILocation(line: 325, column: 54, scope: !1222)
!1229 = !DILocalVariable(name: "two_jd", arg: 4, scope: !1222, file: !1, line: 326, type: !48)
!1230 = !DILocation(line: 326, column: 30, scope: !1222)
!1231 = !DILocalVariable(name: "two_je", arg: 5, scope: !1222, file: !1, line: 326, type: !48)
!1232 = !DILocation(line: 326, column: 42, scope: !1222)
!1233 = !DILocalVariable(name: "two_jf", arg: 6, scope: !1222, file: !1, line: 326, type: !48)
!1234 = !DILocation(line: 326, column: 54, scope: !1222)
!1235 = !DILocalVariable(name: "result", arg: 7, scope: !1222, file: !1, line: 327, type: !49)
!1236 = !DILocation(line: 327, column: 42, scope: !1222)
!1237 = !DILocalVariable(name: "status", scope: !1222, file: !1, line: 329, type: !48)
!1238 = !DILocation(line: 329, column: 7, scope: !1222)
!1239 = !DILocation(line: 329, column: 37, scope: !1222)
!1240 = !DILocation(line: 329, column: 45, scope: !1222)
!1241 = !DILocation(line: 329, column: 53, scope: !1222)
!1242 = !DILocation(line: 329, column: 61, scope: !1222)
!1243 = !DILocation(line: 329, column: 69, scope: !1222)
!1244 = !DILocation(line: 329, column: 77, scope: !1222)
!1245 = !DILocation(line: 329, column: 85, scope: !1222)
!1246 = !DILocation(line: 329, column: 16, scope: !1222)
!1247 = !DILocalVariable(name: "phase_sum", scope: !1222, file: !1, line: 330, type: !48)
!1248 = !DILocation(line: 330, column: 7, scope: !1222)
!1249 = !DILocation(line: 330, column: 20, scope: !1222)
!1250 = !DILocation(line: 330, column: 29, scope: !1222)
!1251 = !DILocation(line: 330, column: 27, scope: !1222)
!1252 = !DILocation(line: 330, column: 38, scope: !1222)
!1253 = !DILocation(line: 330, column: 36, scope: !1222)
!1254 = !DILocation(line: 330, column: 47, scope: !1222)
!1255 = !DILocation(line: 330, column: 45, scope: !1222)
!1256 = !DILocation(line: 330, column: 54, scope: !1222)
!1257 = !DILocation(line: 331, column: 20, scope: !1222)
!1258 = !DILocation(line: 331, column: 3, scope: !1222)
!1259 = !DILocation(line: 331, column: 11, scope: !1222)
!1260 = !DILocation(line: 331, column: 15, scope: !1222)
!1261 = !DILocation(line: 332, column: 10, scope: !1222)
!1262 = !DILocation(line: 332, column: 3, scope: !1222)
!1263 = distinct !DISubprogram(name: "gsl_sf_coupling_9j_e", scope: !1, file: !1, line: 337, type: !1264, isLocal: false, isDefinition: true, scopeLine: 341, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !57)
!1264 = !DISubroutineType(types: !1265)
!1265 = !{!48, !48, !48, !48, !48, !48, !48, !48, !48, !48, !49}
!1266 = !DILocalVariable(name: "two_ja", arg: 1, scope: !1263, file: !1, line: 337, type: !48)
!1267 = !DILocation(line: 337, column: 26, scope: !1263)
!1268 = !DILocalVariable(name: "two_jb", arg: 2, scope: !1263, file: !1, line: 337, type: !48)
!1269 = !DILocation(line: 337, column: 38, scope: !1263)
!1270 = !DILocalVariable(name: "two_jc", arg: 3, scope: !1263, file: !1, line: 337, type: !48)
!1271 = !DILocation(line: 337, column: 50, scope: !1263)
!1272 = !DILocalVariable(name: "two_jd", arg: 4, scope: !1263, file: !1, line: 338, type: !48)
!1273 = !DILocation(line: 338, column: 26, scope: !1263)
!1274 = !DILocalVariable(name: "two_je", arg: 5, scope: !1263, file: !1, line: 338, type: !48)
!1275 = !DILocation(line: 338, column: 38, scope: !1263)
!1276 = !DILocalVariable(name: "two_jf", arg: 6, scope: !1263, file: !1, line: 338, type: !48)
!1277 = !DILocation(line: 338, column: 50, scope: !1263)
!1278 = !DILocalVariable(name: "two_jg", arg: 7, scope: !1263, file: !1, line: 339, type: !48)
!1279 = !DILocation(line: 339, column: 26, scope: !1263)
!1280 = !DILocalVariable(name: "two_jh", arg: 8, scope: !1263, file: !1, line: 339, type: !48)
!1281 = !DILocation(line: 339, column: 38, scope: !1263)
!1282 = !DILocalVariable(name: "two_ji", arg: 9, scope: !1263, file: !1, line: 339, type: !48)
!1283 = !DILocation(line: 339, column: 50, scope: !1263)
!1284 = !DILocalVariable(name: "result", arg: 10, scope: !1263, file: !1, line: 340, type: !49)
!1285 = !DILocation(line: 340, column: 38, scope: !1263)
!1286 = !DILocation(line: 344, column: 9, scope: !1287)
!1287 = distinct !DILexicalBlock(scope: !1263, file: !1, line: 344, column: 9)
!1288 = !DILocation(line: 344, column: 16, scope: !1287)
!1289 = !DILocation(line: 344, column: 20, scope: !1287)
!1290 = !DILocation(line: 344, column: 23, scope: !1291)
!1291 = !DILexicalBlockFile(scope: !1287, file: !1, discriminator: 1)
!1292 = !DILocation(line: 344, column: 30, scope: !1291)
!1293 = !DILocation(line: 344, column: 34, scope: !1291)
!1294 = !DILocation(line: 344, column: 37, scope: !1295)
!1295 = !DILexicalBlockFile(scope: !1287, file: !1, discriminator: 2)
!1296 = !DILocation(line: 344, column: 44, scope: !1295)
!1297 = !DILocation(line: 345, column: 6, scope: !1287)
!1298 = !DILocation(line: 345, column: 9, scope: !1291)
!1299 = !DILocation(line: 345, column: 16, scope: !1291)
!1300 = !DILocation(line: 345, column: 20, scope: !1291)
!1301 = !DILocation(line: 345, column: 23, scope: !1295)
!1302 = !DILocation(line: 345, column: 30, scope: !1295)
!1303 = !DILocation(line: 345, column: 34, scope: !1295)
!1304 = !DILocation(line: 345, column: 37, scope: !1305)
!1305 = !DILexicalBlockFile(scope: !1287, file: !1, discriminator: 3)
!1306 = !DILocation(line: 345, column: 44, scope: !1305)
!1307 = !DILocation(line: 346, column: 6, scope: !1287)
!1308 = !DILocation(line: 346, column: 9, scope: !1291)
!1309 = !DILocation(line: 346, column: 16, scope: !1291)
!1310 = !DILocation(line: 346, column: 20, scope: !1291)
!1311 = !DILocation(line: 346, column: 23, scope: !1295)
!1312 = !DILocation(line: 346, column: 30, scope: !1295)
!1313 = !DILocation(line: 346, column: 34, scope: !1295)
!1314 = !DILocation(line: 346, column: 37, scope: !1305)
!1315 = !DILocation(line: 346, column: 44, scope: !1305)
!1316 = !DILocation(line: 344, column: 9, scope: !1317)
!1317 = !DILexicalBlockFile(scope: !1263, file: !1, discriminator: 3)
!1318 = !DILocation(line: 348, column: 5, scope: !1319)
!1319 = distinct !DILexicalBlock(scope: !1287, file: !1, line: 347, column: 8)
!1320 = distinct !{!1320, !1318}
!1321 = !DILocation(line: 348, column: 5, scope: !1322)
!1322 = !DILexicalBlockFile(scope: !1323, file: !1, discriminator: 1)
!1323 = distinct !DILexicalBlock(scope: !1319, file: !1, line: 348, column: 5)
!1324 = distinct !{!1324, !1325}
!1325 = !DILocation(line: 348, column: 5, scope: !1323)
!1326 = !DILocation(line: 348, column: 5, scope: !1327)
!1327 = !DILexicalBlockFile(scope: !1328, file: !1, discriminator: 2)
!1328 = distinct !DILexicalBlock(scope: !1323, file: !1, line: 348, column: 5)
!1329 = !DILocation(line: 348, column: 5, scope: !1330)
!1330 = !DILexicalBlockFile(scope: !1323, file: !1, discriminator: 3)
!1331 = !DILocation(line: 349, column: 3, scope: !1319)
!1332 = !DILocation(line: 350, column: 39, scope: !1333)
!1333 = distinct !DILexicalBlock(scope: !1287, file: !1, line: 350, column: 14)
!1334 = !DILocation(line: 350, column: 47, scope: !1333)
!1335 = !DILocation(line: 350, column: 55, scope: !1333)
!1336 = !DILocation(line: 350, column: 14, scope: !1333)
!1337 = !DILocation(line: 351, column: 11, scope: !1333)
!1338 = !DILocation(line: 351, column: 39, scope: !1339)
!1339 = !DILexicalBlockFile(scope: !1333, file: !1, discriminator: 1)
!1340 = !DILocation(line: 351, column: 47, scope: !1339)
!1341 = !DILocation(line: 351, column: 55, scope: !1339)
!1342 = !DILocation(line: 351, column: 14, scope: !1339)
!1343 = !DILocation(line: 352, column: 11, scope: !1333)
!1344 = !DILocation(line: 352, column: 39, scope: !1339)
!1345 = !DILocation(line: 352, column: 47, scope: !1339)
!1346 = !DILocation(line: 352, column: 55, scope: !1339)
!1347 = !DILocation(line: 352, column: 14, scope: !1339)
!1348 = !DILocation(line: 353, column: 11, scope: !1333)
!1349 = !DILocation(line: 353, column: 39, scope: !1339)
!1350 = !DILocation(line: 353, column: 47, scope: !1339)
!1351 = !DILocation(line: 353, column: 55, scope: !1339)
!1352 = !DILocation(line: 353, column: 14, scope: !1339)
!1353 = !DILocation(line: 354, column: 11, scope: !1333)
!1354 = !DILocation(line: 354, column: 39, scope: !1339)
!1355 = !DILocation(line: 354, column: 47, scope: !1339)
!1356 = !DILocation(line: 354, column: 55, scope: !1339)
!1357 = !DILocation(line: 354, column: 14, scope: !1339)
!1358 = !DILocation(line: 355, column: 11, scope: !1333)
!1359 = !DILocation(line: 355, column: 39, scope: !1339)
!1360 = !DILocation(line: 355, column: 47, scope: !1339)
!1361 = !DILocation(line: 355, column: 55, scope: !1339)
!1362 = !DILocation(line: 355, column: 14, scope: !1339)
!1363 = !DILocation(line: 350, column: 14, scope: !1291)
!1364 = !DILocation(line: 357, column: 5, scope: !1365)
!1365 = distinct !DILexicalBlock(scope: !1333, file: !1, line: 356, column: 8)
!1366 = !DILocation(line: 357, column: 13, scope: !1365)
!1367 = !DILocation(line: 357, column: 17, scope: !1365)
!1368 = !DILocation(line: 358, column: 5, scope: !1365)
!1369 = !DILocation(line: 358, column: 13, scope: !1365)
!1370 = !DILocation(line: 358, column: 17, scope: !1365)
!1371 = !DILocation(line: 359, column: 5, scope: !1365)
!1372 = !DILocalVariable(name: "tk", scope: !1373, file: !1, line: 362, type: !48)
!1373 = distinct !DILexicalBlock(scope: !1333, file: !1, line: 361, column: 8)
!1374 = !DILocation(line: 362, column: 9, scope: !1373)
!1375 = !DILocalVariable(name: "tkmin", scope: !1373, file: !1, line: 363, type: !48)
!1376 = !DILocation(line: 363, column: 9, scope: !1373)
!1377 = !DILocation(line: 363, column: 29, scope: !1373)
!1378 = !DILocation(line: 363, column: 36, scope: !1373)
!1379 = !DILocation(line: 363, column: 35, scope: !1373)
!1380 = !DILocation(line: 363, column: 25, scope: !1373)
!1381 = !DILocation(line: 363, column: 49, scope: !1373)
!1382 = !DILocation(line: 363, column: 56, scope: !1373)
!1383 = !DILocation(line: 363, column: 55, scope: !1373)
!1384 = !DILocation(line: 363, column: 45, scope: !1385)
!1385 = !DILexicalBlockFile(scope: !1373, file: !1, discriminator: 1)
!1386 = !DILocation(line: 363, column: 69, scope: !1373)
!1387 = !DILocation(line: 363, column: 76, scope: !1373)
!1388 = !DILocation(line: 363, column: 75, scope: !1373)
!1389 = !DILocation(line: 363, column: 65, scope: !1390)
!1390 = !DILexicalBlockFile(scope: !1373, file: !1, discriminator: 2)
!1391 = !DILocation(line: 363, column: 17, scope: !1392)
!1392 = !DILexicalBlockFile(scope: !1373, file: !1, discriminator: 3)
!1393 = !DILocalVariable(name: "tkmax", scope: !1373, file: !1, line: 364, type: !48)
!1394 = !DILocation(line: 364, column: 9, scope: !1373)
!1395 = !DILocation(line: 364, column: 25, scope: !1373)
!1396 = !DILocation(line: 364, column: 34, scope: !1373)
!1397 = !DILocation(line: 364, column: 32, scope: !1373)
!1398 = !DILocation(line: 364, column: 42, scope: !1373)
!1399 = !DILocation(line: 364, column: 51, scope: !1373)
!1400 = !DILocation(line: 364, column: 49, scope: !1373)
!1401 = !DILocation(line: 364, column: 59, scope: !1373)
!1402 = !DILocation(line: 364, column: 68, scope: !1373)
!1403 = !DILocation(line: 364, column: 66, scope: !1373)
!1404 = !DILocation(line: 364, column: 17, scope: !1373)
!1405 = !DILocalVariable(name: "sum_pos", scope: !1373, file: !1, line: 365, type: !55)
!1406 = !DILocation(line: 365, column: 12, scope: !1373)
!1407 = !DILocalVariable(name: "sum_neg", scope: !1373, file: !1, line: 366, type: !55)
!1408 = !DILocation(line: 366, column: 12, scope: !1373)
!1409 = !DILocalVariable(name: "sumsq_err", scope: !1373, file: !1, line: 367, type: !55)
!1410 = !DILocation(line: 367, column: 12, scope: !1373)
!1411 = !DILocalVariable(name: "phase", scope: !1373, file: !1, line: 368, type: !55)
!1412 = !DILocation(line: 368, column: 12, scope: !1373)
!1413 = !DILocation(line: 369, column: 12, scope: !1414)
!1414 = distinct !DILexicalBlock(scope: !1373, file: !1, line: 369, column: 5)
!1415 = !DILocation(line: 369, column: 11, scope: !1414)
!1416 = !DILocation(line: 369, column: 9, scope: !1414)
!1417 = !DILocation(line: 369, column: 19, scope: !1418)
!1418 = !DILexicalBlockFile(scope: !1419, file: !1, discriminator: 1)
!1419 = distinct !DILexicalBlock(scope: !1414, file: !1, line: 369, column: 5)
!1420 = !DILocation(line: 369, column: 23, scope: !1418)
!1421 = !DILocation(line: 369, column: 21, scope: !1418)
!1422 = !DILocation(line: 369, column: 5, scope: !1418)
!1423 = !DILocalVariable(name: "s1", scope: !1424, file: !1, line: 370, type: !50)
!1424 = distinct !DILexicalBlock(scope: !1419, file: !1, line: 369, column: 39)
!1425 = !DILocation(line: 370, column: 21, scope: !1424)
!1426 = !DILocalVariable(name: "s2", scope: !1424, file: !1, line: 370, type: !50)
!1427 = !DILocation(line: 370, column: 25, scope: !1424)
!1428 = !DILocalVariable(name: "s3", scope: !1424, file: !1, line: 370, type: !50)
!1429 = !DILocation(line: 370, column: 29, scope: !1424)
!1430 = !DILocalVariable(name: "term", scope: !1424, file: !1, line: 371, type: !55)
!1431 = !DILocation(line: 371, column: 14, scope: !1424)
!1432 = !DILocalVariable(name: "term_err", scope: !1424, file: !1, line: 372, type: !55)
!1433 = !DILocation(line: 372, column: 14, scope: !1424)
!1434 = !DILocalVariable(name: "status", scope: !1424, file: !1, line: 373, type: !48)
!1435 = !DILocation(line: 373, column: 11, scope: !1424)
!1436 = !DILocation(line: 375, column: 38, scope: !1424)
!1437 = !DILocation(line: 375, column: 46, scope: !1424)
!1438 = !DILocation(line: 375, column: 54, scope: !1424)
!1439 = !DILocation(line: 375, column: 59, scope: !1424)
!1440 = !DILocation(line: 375, column: 67, scope: !1424)
!1441 = !DILocation(line: 375, column: 75, scope: !1424)
!1442 = !DILocation(line: 375, column: 17, scope: !1424)
!1443 = !DILocation(line: 375, column: 14, scope: !1424)
!1444 = !DILocation(line: 376, column: 38, scope: !1424)
!1445 = !DILocation(line: 376, column: 46, scope: !1424)
!1446 = !DILocation(line: 376, column: 54, scope: !1424)
!1447 = !DILocation(line: 376, column: 59, scope: !1424)
!1448 = !DILocation(line: 376, column: 67, scope: !1424)
!1449 = !DILocation(line: 376, column: 75, scope: !1424)
!1450 = !DILocation(line: 376, column: 17, scope: !1424)
!1451 = !DILocation(line: 376, column: 14, scope: !1424)
!1452 = !DILocation(line: 377, column: 38, scope: !1424)
!1453 = !DILocation(line: 377, column: 46, scope: !1424)
!1454 = !DILocation(line: 377, column: 54, scope: !1424)
!1455 = !DILocation(line: 377, column: 59, scope: !1424)
!1456 = !DILocation(line: 377, column: 67, scope: !1424)
!1457 = !DILocation(line: 377, column: 75, scope: !1424)
!1458 = !DILocation(line: 377, column: 17, scope: !1424)
!1459 = !DILocation(line: 377, column: 14, scope: !1424)
!1460 = !DILocation(line: 379, column: 10, scope: !1461)
!1461 = distinct !DILexicalBlock(scope: !1424, file: !1, line: 379, column: 10)
!1462 = !DILocation(line: 379, column: 17, scope: !1461)
!1463 = !DILocation(line: 379, column: 10, scope: !1424)
!1464 = !DILocation(line: 380, column: 9, scope: !1465)
!1465 = distinct !DILexicalBlock(scope: !1461, file: !1, line: 379, column: 33)
!1466 = distinct !{!1466, !1464}
!1467 = !DILocation(line: 380, column: 9, scope: !1468)
!1468 = !DILexicalBlockFile(scope: !1469, file: !1, discriminator: 1)
!1469 = distinct !DILexicalBlock(scope: !1465, file: !1, line: 380, column: 9)
!1470 = distinct !{!1470, !1471}
!1471 = !DILocation(line: 380, column: 9, scope: !1469)
!1472 = !DILocation(line: 380, column: 9, scope: !1473)
!1473 = !DILexicalBlockFile(scope: !1474, file: !1, discriminator: 2)
!1474 = distinct !DILexicalBlock(scope: !1469, file: !1, line: 380, column: 9)
!1475 = !DILocation(line: 380, column: 9, scope: !1476)
!1476 = !DILexicalBlockFile(scope: !1469, file: !1, discriminator: 3)
!1477 = !DILocation(line: 381, column: 7, scope: !1465)
!1478 = !DILocation(line: 382, column: 17, scope: !1424)
!1479 = !DILocation(line: 382, column: 26, scope: !1424)
!1480 = !DILocation(line: 382, column: 21, scope: !1424)
!1481 = !DILocation(line: 382, column: 35, scope: !1424)
!1482 = !DILocation(line: 382, column: 30, scope: !1424)
!1483 = !DILocation(line: 382, column: 12, scope: !1424)
!1484 = !DILocation(line: 383, column: 22, scope: !1424)
!1485 = !DILocation(line: 383, column: 36, scope: !1424)
!1486 = !DILocation(line: 383, column: 43, scope: !1424)
!1487 = !DILocation(line: 383, column: 39, scope: !1424)
!1488 = !DILocation(line: 383, column: 28, scope: !1424)
!1489 = !DILocation(line: 383, column: 26, scope: !1424)
!1490 = !DILocation(line: 383, column: 17, scope: !1424)
!1491 = !DILocation(line: 384, column: 22, scope: !1424)
!1492 = !DILocation(line: 384, column: 36, scope: !1424)
!1493 = !DILocation(line: 384, column: 43, scope: !1424)
!1494 = !DILocation(line: 384, column: 39, scope: !1424)
!1495 = !DILocation(line: 384, column: 28, scope: !1424)
!1496 = !DILocation(line: 384, column: 26, scope: !1424)
!1497 = !DILocation(line: 384, column: 16, scope: !1424)
!1498 = !DILocation(line: 385, column: 22, scope: !1424)
!1499 = !DILocation(line: 385, column: 36, scope: !1424)
!1500 = !DILocation(line: 385, column: 43, scope: !1424)
!1501 = !DILocation(line: 385, column: 39, scope: !1424)
!1502 = !DILocation(line: 385, column: 28, scope: !1424)
!1503 = !DILocation(line: 385, column: 26, scope: !1424)
!1504 = !DILocation(line: 385, column: 16, scope: !1424)
!1505 = !DILocation(line: 387, column: 10, scope: !1506)
!1506 = distinct !DILexicalBlock(scope: !1424, file: !1, line: 387, column: 10)
!1507 = !DILocation(line: 387, column: 15, scope: !1506)
!1508 = !DILocation(line: 387, column: 10, scope: !1424)
!1509 = !DILocation(line: 388, column: 21, scope: !1510)
!1510 = distinct !DILexicalBlock(scope: !1506, file: !1, line: 387, column: 23)
!1511 = !DILocation(line: 388, column: 24, scope: !1510)
!1512 = !DILocation(line: 388, column: 20, scope: !1510)
!1513 = !DILocation(line: 388, column: 31, scope: !1510)
!1514 = !DILocation(line: 388, column: 29, scope: !1510)
!1515 = !DILocation(line: 388, column: 17, scope: !1510)
!1516 = !DILocation(line: 389, column: 7, scope: !1510)
!1517 = !DILocation(line: 391, column: 21, scope: !1518)
!1518 = distinct !DILexicalBlock(scope: !1506, file: !1, line: 390, column: 12)
!1519 = !DILocation(line: 391, column: 24, scope: !1518)
!1520 = !DILocation(line: 391, column: 20, scope: !1518)
!1521 = !DILocation(line: 391, column: 31, scope: !1518)
!1522 = !DILocation(line: 391, column: 29, scope: !1518)
!1523 = !DILocation(line: 391, column: 17, scope: !1518)
!1524 = !DILocation(line: 394, column: 22, scope: !1424)
!1525 = !DILocation(line: 394, column: 24, scope: !1424)
!1526 = !DILocation(line: 394, column: 21, scope: !1424)
!1527 = !DILocation(line: 394, column: 30, scope: !1424)
!1528 = !DILocation(line: 394, column: 28, scope: !1424)
!1529 = !DILocation(line: 394, column: 44, scope: !1424)
!1530 = !DILocation(line: 394, column: 46, scope: !1424)
!1531 = !DILocation(line: 394, column: 43, scope: !1424)
!1532 = !DILocation(line: 394, column: 52, scope: !1424)
!1533 = !DILocation(line: 394, column: 50, scope: !1424)
!1534 = !DILocation(line: 394, column: 40, scope: !1424)
!1535 = !DILocation(line: 394, column: 17, scope: !1424)
!1536 = !DILocation(line: 395, column: 5, scope: !1424)
!1537 = !DILocation(line: 369, column: 33, scope: !1538)
!1538 = !DILexicalBlockFile(scope: !1419, file: !1, discriminator: 2)
!1539 = !DILocation(line: 369, column: 5, scope: !1538)
!1540 = distinct !{!1540, !1541}
!1541 = !DILocation(line: 369, column: 5, scope: !1373)
!1542 = !DILocation(line: 397, column: 13, scope: !1373)
!1543 = !DILocation(line: 397, column: 11, scope: !1373)
!1544 = !DILocation(line: 399, column: 20, scope: !1373)
!1545 = !DILocation(line: 399, column: 29, scope: !1373)
!1546 = !DILocation(line: 399, column: 39, scope: !1373)
!1547 = !DILocation(line: 399, column: 37, scope: !1373)
!1548 = !DILocation(line: 399, column: 26, scope: !1373)
!1549 = !DILocation(line: 399, column: 5, scope: !1373)
!1550 = !DILocation(line: 399, column: 13, scope: !1373)
!1551 = !DILocation(line: 399, column: 18, scope: !1373)
!1552 = !DILocation(line: 400, column: 45, scope: !1373)
!1553 = !DILocation(line: 400, column: 55, scope: !1373)
!1554 = !DILocation(line: 400, column: 53, scope: !1373)
!1555 = !DILocation(line: 400, column: 42, scope: !1373)
!1556 = !DILocation(line: 400, column: 5, scope: !1373)
!1557 = !DILocation(line: 400, column: 13, scope: !1373)
!1558 = !DILocation(line: 400, column: 18, scope: !1373)
!1559 = !DILocation(line: 401, column: 25, scope: !1373)
!1560 = !DILocation(line: 401, column: 43, scope: !1373)
!1561 = !DILocation(line: 401, column: 49, scope: !1373)
!1562 = !DILocation(line: 401, column: 48, scope: !1373)
!1563 = !DILocation(line: 401, column: 42, scope: !1373)
!1564 = !DILocation(line: 401, column: 41, scope: !1373)
!1565 = !DILocation(line: 401, column: 55, scope: !1373)
!1566 = !DILocation(line: 401, column: 35, scope: !1373)
!1567 = !DILocation(line: 401, column: 20, scope: !1373)
!1568 = !DILocation(line: 401, column: 5, scope: !1373)
!1569 = !DILocation(line: 401, column: 13, scope: !1373)
!1570 = !DILocation(line: 401, column: 17, scope: !1373)
!1571 = !DILocation(line: 402, column: 45, scope: !1373)
!1572 = !DILocation(line: 402, column: 51, scope: !1373)
!1573 = !DILocation(line: 402, column: 50, scope: !1373)
!1574 = !DILocation(line: 402, column: 57, scope: !1373)
!1575 = !DILocation(line: 402, column: 42, scope: !1373)
!1576 = !DILocation(line: 402, column: 71, scope: !1373)
!1577 = !DILocation(line: 402, column: 79, scope: !1373)
!1578 = !DILocation(line: 402, column: 66, scope: !1373)
!1579 = !DILocation(line: 402, column: 64, scope: !1373)
!1580 = !DILocation(line: 402, column: 5, scope: !1373)
!1581 = !DILocation(line: 402, column: 13, scope: !1373)
!1582 = !DILocation(line: 402, column: 17, scope: !1373)
!1583 = !DILocation(line: 404, column: 5, scope: !1373)
!1584 = !DILocation(line: 406, column: 1, scope: !1263)
!1585 = distinct !DISubprogram(name: "gsl_sf_coupling_3j", scope: !1, file: !1, line: 413, type: !1586, isLocal: false, isDefinition: true, scopeLine: 415, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !57)
!1586 = !DISubroutineType(types: !1587)
!1587 = !{!55, !48, !48, !48, !48, !48, !48}
!1588 = !DILocalVariable(name: "two_ja", arg: 1, scope: !1585, file: !1, line: 413, type: !48)
!1589 = !DILocation(line: 413, column: 31, scope: !1585)
!1590 = !DILocalVariable(name: "two_jb", arg: 2, scope: !1585, file: !1, line: 413, type: !48)
!1591 = !DILocation(line: 413, column: 43, scope: !1585)
!1592 = !DILocalVariable(name: "two_jc", arg: 3, scope: !1585, file: !1, line: 413, type: !48)
!1593 = !DILocation(line: 413, column: 55, scope: !1585)
!1594 = !DILocalVariable(name: "two_ma", arg: 4, scope: !1585, file: !1, line: 414, type: !48)
!1595 = !DILocation(line: 414, column: 31, scope: !1585)
!1596 = !DILocalVariable(name: "two_mb", arg: 5, scope: !1585, file: !1, line: 414, type: !48)
!1597 = !DILocation(line: 414, column: 43, scope: !1585)
!1598 = !DILocalVariable(name: "two_mc", arg: 6, scope: !1585, file: !1, line: 414, type: !48)
!1599 = !DILocation(line: 414, column: 55, scope: !1585)
!1600 = !DILocalVariable(name: "result", scope: !1585, file: !1, line: 416, type: !50)
!1601 = !DILocation(line: 416, column: 3, scope: !1585)
!1602 = !DILocalVariable(name: "status", scope: !1585, file: !1, line: 416, type: !48)
!1603 = !DILocation(line: 416, column: 3, scope: !1604)
!1604 = distinct !DILexicalBlock(scope: !1585, file: !1, line: 416, column: 3)
!1605 = !DILocation(line: 416, column: 3, scope: !1606)
!1606 = !DILexicalBlockFile(scope: !1607, file: !1, discriminator: 1)
!1607 = distinct !DILexicalBlock(scope: !1604, file: !1, line: 416, column: 3)
!1608 = distinct !{!1608, !1609}
!1609 = !DILocation(line: 416, column: 3, scope: !1607)
!1610 = !DILocation(line: 416, column: 3, scope: !1611)
!1611 = !DILexicalBlockFile(scope: !1612, file: !1, discriminator: 2)
!1612 = distinct !DILexicalBlock(scope: !1607, file: !1, line: 416, column: 3)
!1613 = !DILocation(line: 416, column: 3, scope: !1614)
!1614 = !DILexicalBlockFile(scope: !1607, file: !1, discriminator: 3)
!1615 = !DILocation(line: 416, column: 3, scope: !1616)
!1616 = !DILexicalBlockFile(scope: !1585, file: !1, discriminator: 4)
!1617 = !DILocation(line: 419, column: 1, scope: !1585)
!1618 = distinct !DISubprogram(name: "gsl_sf_coupling_6j", scope: !1, file: !1, line: 434, type: !1586, isLocal: false, isDefinition: true, scopeLine: 436, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !57)
!1619 = !DILocalVariable(name: "two_ja", arg: 1, scope: !1618, file: !1, line: 434, type: !48)
!1620 = !DILocation(line: 434, column: 31, scope: !1618)
!1621 = !DILocalVariable(name: "two_jb", arg: 2, scope: !1618, file: !1, line: 434, type: !48)
!1622 = !DILocation(line: 434, column: 43, scope: !1618)
!1623 = !DILocalVariable(name: "two_jc", arg: 3, scope: !1618, file: !1, line: 434, type: !48)
!1624 = !DILocation(line: 434, column: 55, scope: !1618)
!1625 = !DILocalVariable(name: "two_jd", arg: 4, scope: !1618, file: !1, line: 435, type: !48)
!1626 = !DILocation(line: 435, column: 31, scope: !1618)
!1627 = !DILocalVariable(name: "two_je", arg: 5, scope: !1618, file: !1, line: 435, type: !48)
!1628 = !DILocation(line: 435, column: 43, scope: !1618)
!1629 = !DILocalVariable(name: "two_jf", arg: 6, scope: !1618, file: !1, line: 435, type: !48)
!1630 = !DILocation(line: 435, column: 55, scope: !1618)
!1631 = !DILocalVariable(name: "result", scope: !1618, file: !1, line: 437, type: !50)
!1632 = !DILocation(line: 437, column: 3, scope: !1618)
!1633 = !DILocalVariable(name: "status", scope: !1618, file: !1, line: 437, type: !48)
!1634 = !DILocation(line: 437, column: 3, scope: !1635)
!1635 = distinct !DILexicalBlock(scope: !1618, file: !1, line: 437, column: 3)
!1636 = !DILocation(line: 437, column: 3, scope: !1637)
!1637 = !DILexicalBlockFile(scope: !1638, file: !1, discriminator: 1)
!1638 = distinct !DILexicalBlock(scope: !1635, file: !1, line: 437, column: 3)
!1639 = distinct !{!1639, !1640}
!1640 = !DILocation(line: 437, column: 3, scope: !1638)
!1641 = !DILocation(line: 437, column: 3, scope: !1642)
!1642 = !DILexicalBlockFile(scope: !1643, file: !1, discriminator: 2)
!1643 = distinct !DILexicalBlock(scope: !1638, file: !1, line: 437, column: 3)
!1644 = !DILocation(line: 437, column: 3, scope: !1645)
!1645 = !DILexicalBlockFile(scope: !1638, file: !1, discriminator: 3)
!1646 = !DILocation(line: 437, column: 3, scope: !1647)
!1647 = !DILexicalBlockFile(scope: !1618, file: !1, discriminator: 4)
!1648 = !DILocation(line: 440, column: 1, scope: !1618)
!1649 = distinct !DISubprogram(name: "gsl_sf_coupling_RacahW", scope: !1, file: !1, line: 443, type: !1586, isLocal: false, isDefinition: true, scopeLine: 445, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !57)
!1650 = !DILocalVariable(name: "two_ja", arg: 1, scope: !1649, file: !1, line: 443, type: !48)
!1651 = !DILocation(line: 443, column: 35, scope: !1649)
!1652 = !DILocalVariable(name: "two_jb", arg: 2, scope: !1649, file: !1, line: 443, type: !48)
!1653 = !DILocation(line: 443, column: 47, scope: !1649)
!1654 = !DILocalVariable(name: "two_jc", arg: 3, scope: !1649, file: !1, line: 443, type: !48)
!1655 = !DILocation(line: 443, column: 59, scope: !1649)
!1656 = !DILocalVariable(name: "two_jd", arg: 4, scope: !1649, file: !1, line: 444, type: !48)
!1657 = !DILocation(line: 444, column: 31, scope: !1649)
!1658 = !DILocalVariable(name: "two_je", arg: 5, scope: !1649, file: !1, line: 444, type: !48)
!1659 = !DILocation(line: 444, column: 43, scope: !1649)
!1660 = !DILocalVariable(name: "two_jf", arg: 6, scope: !1649, file: !1, line: 444, type: !48)
!1661 = !DILocation(line: 444, column: 55, scope: !1649)
!1662 = !DILocalVariable(name: "result", scope: !1649, file: !1, line: 446, type: !50)
!1663 = !DILocation(line: 446, column: 3, scope: !1649)
!1664 = !DILocalVariable(name: "status", scope: !1649, file: !1, line: 446, type: !48)
!1665 = !DILocation(line: 446, column: 3, scope: !1666)
!1666 = distinct !DILexicalBlock(scope: !1649, file: !1, line: 446, column: 3)
!1667 = !DILocation(line: 446, column: 3, scope: !1668)
!1668 = !DILexicalBlockFile(scope: !1669, file: !1, discriminator: 1)
!1669 = distinct !DILexicalBlock(scope: !1666, file: !1, line: 446, column: 3)
!1670 = distinct !{!1670, !1671}
!1671 = !DILocation(line: 446, column: 3, scope: !1669)
!1672 = !DILocation(line: 446, column: 3, scope: !1673)
!1673 = !DILexicalBlockFile(scope: !1674, file: !1, discriminator: 2)
!1674 = distinct !DILexicalBlock(scope: !1669, file: !1, line: 446, column: 3)
!1675 = !DILocation(line: 446, column: 3, scope: !1676)
!1676 = !DILexicalBlockFile(scope: !1669, file: !1, discriminator: 3)
!1677 = !DILocation(line: 446, column: 3, scope: !1678)
!1678 = !DILexicalBlockFile(scope: !1649, file: !1, discriminator: 4)
!1679 = !DILocation(line: 449, column: 1, scope: !1649)
!1680 = distinct !DISubprogram(name: "gsl_sf_coupling_9j", scope: !1, file: !1, line: 452, type: !1681, isLocal: false, isDefinition: true, scopeLine: 455, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !57)
!1681 = !DISubroutineType(types: !1682)
!1682 = !{!55, !48, !48, !48, !48, !48, !48, !48, !48, !48}
!1683 = !DILocalVariable(name: "two_ja", arg: 1, scope: !1680, file: !1, line: 452, type: !48)
!1684 = !DILocation(line: 452, column: 31, scope: !1680)
!1685 = !DILocalVariable(name: "two_jb", arg: 2, scope: !1680, file: !1, line: 452, type: !48)
!1686 = !DILocation(line: 452, column: 43, scope: !1680)
!1687 = !DILocalVariable(name: "two_jc", arg: 3, scope: !1680, file: !1, line: 452, type: !48)
!1688 = !DILocation(line: 452, column: 55, scope: !1680)
!1689 = !DILocalVariable(name: "two_jd", arg: 4, scope: !1680, file: !1, line: 453, type: !48)
!1690 = !DILocation(line: 453, column: 31, scope: !1680)
!1691 = !DILocalVariable(name: "two_je", arg: 5, scope: !1680, file: !1, line: 453, type: !48)
!1692 = !DILocation(line: 453, column: 43, scope: !1680)
!1693 = !DILocalVariable(name: "two_jf", arg: 6, scope: !1680, file: !1, line: 453, type: !48)
!1694 = !DILocation(line: 453, column: 55, scope: !1680)
!1695 = !DILocalVariable(name: "two_jg", arg: 7, scope: !1680, file: !1, line: 454, type: !48)
!1696 = !DILocation(line: 454, column: 31, scope: !1680)
!1697 = !DILocalVariable(name: "two_jh", arg: 8, scope: !1680, file: !1, line: 454, type: !48)
!1698 = !DILocation(line: 454, column: 43, scope: !1680)
!1699 = !DILocalVariable(name: "two_ji", arg: 9, scope: !1680, file: !1, line: 454, type: !48)
!1700 = !DILocation(line: 454, column: 55, scope: !1680)
!1701 = !DILocalVariable(name: "result", scope: !1680, file: !1, line: 456, type: !50)
!1702 = !DILocation(line: 456, column: 3, scope: !1680)
!1703 = !DILocalVariable(name: "status", scope: !1680, file: !1, line: 456, type: !48)
!1704 = !DILocation(line: 456, column: 3, scope: !1705)
!1705 = distinct !DILexicalBlock(scope: !1680, file: !1, line: 456, column: 3)
!1706 = !DILocation(line: 456, column: 3, scope: !1707)
!1707 = !DILexicalBlockFile(scope: !1708, file: !1, discriminator: 1)
!1708 = distinct !DILexicalBlock(scope: !1705, file: !1, line: 456, column: 3)
!1709 = distinct !{!1709, !1710}
!1710 = !DILocation(line: 456, column: 3, scope: !1708)
!1711 = !DILocation(line: 456, column: 3, scope: !1712)
!1712 = !DILexicalBlockFile(scope: !1713, file: !1, discriminator: 2)
!1713 = distinct !DILexicalBlock(scope: !1708, file: !1, line: 456, column: 3)
!1714 = !DILocation(line: 456, column: 3, scope: !1715)
!1715 = !DILexicalBlockFile(scope: !1708, file: !1, discriminator: 3)
!1716 = !DILocation(line: 456, column: 3, scope: !1717)
!1717 = !DILexicalBlockFile(scope: !1680, file: !1, discriminator: 4)
!1718 = !DILocation(line: 460, column: 1, scope: !1680)
