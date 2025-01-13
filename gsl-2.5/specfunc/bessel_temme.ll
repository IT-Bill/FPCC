; ModuleID = 'bessel_temme.c'
source_filename = "bessel_temme.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.cheb_series_struct = type { double*, i32, double, double, i32 }
%struct.gsl_sf_result_struct = type { double, double }

@g1_cs = internal global %struct.cheb_series_struct { double* getelementptr inbounds ([14 x double], [14 x double]* @g1_dat, i32 0, i32 0), i32 13, double -1.000000e+00, double 1.000000e+00, i32 7 }, align 8
@g2_cs = internal global %struct.cheb_series_struct { double* getelementptr inbounds ([15 x double], [15 x double]* @g2_dat, i32 0, i32 0), i32 14, double -1.000000e+00, double 1.000000e+00, i32 8 }, align 8
@g1_dat = internal global [14 x double] [double 0xBFF2529792FE2917, double 0x3F7A0DD6818D61BF, double 0x3F5E83B08852701D, double 0x3F24083A360DB22F, double 0x3EF1D81738E657AD, double 0xBEA5ACE21C9E49D4, double 0xBE6BD210D42EA355, double 0x3DFF0DBFD1B8B9C7, double 0x3DC1D4922A661984, double 0x3D6808C44F2106C2, double 0x3D1FEC573C54F7E4, double 0xBCCCC7FD6547EEBE, double 0xBC83712DD7FD5DAE, double 0xBBE598C5460217E6], align 16
@g2_dat = internal global [15 x double] [double 0x3FFE1F50E9F9E9DA, double 0xBFB3D66D838E9AA7, double 0xBF92B1E364CE7F7D, double 0x3F44C4B99F9A8A1E, double 0x3F13FBA52E885960, double 0xBEB005C3B83B8EA6, double 0xBE77DF090B838554, double 0xBE20C4C973386FFA, double 0xBDD9D6E073FDD7CB, double 0x3D949DABBF046C8F, double 0x3D4FE3990CCF9916, double 0xBCD51F6FD990EBC7, double 0xBC944DA74212ED24, double 0xBC467C1053694F01, double 0xBBF633DBD22DEF21], align 16

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_bessel_Y_temme(double, double, %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct*) #0 !dbg !68 {
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca %struct.gsl_sf_result_struct*, align 8
  %8 = alloca %struct.gsl_sf_result_struct*, align 8
  %9 = alloca i32, align 4
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
  %23 = alloca double, align 8
  %24 = alloca double, align 8
  %25 = alloca double, align 8
  %26 = alloca double, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca double, align 8
  %30 = alloca double, align 8
  %31 = alloca double, align 8
  %32 = alloca double, align 8
  %33 = alloca i32, align 4
  %34 = alloca double, align 8
  %35 = alloca double, align 8
  %36 = alloca double, align 8
  store double %0, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !80, metadata !81), !dbg !82
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !83, metadata !81), !dbg !84
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %7, metadata !85, metadata !81), !dbg !86
  store %struct.gsl_sf_result_struct* %3, %struct.gsl_sf_result_struct** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %8, metadata !87, metadata !81), !dbg !88
  call void @llvm.dbg.declare(metadata i32* %9, metadata !89, metadata !81), !dbg !91
  store i32 15000, i32* %9, align 4, !dbg !91
  call void @llvm.dbg.declare(metadata double* %10, metadata !92, metadata !81), !dbg !93
  %37 = load double, double* %6, align 8, !dbg !94
  %38 = fmul double 5.000000e-01, %37, !dbg !95
  store double %38, double* %10, align 8, !dbg !93
  call void @llvm.dbg.declare(metadata double* %11, metadata !96, metadata !81), !dbg !97
  %39 = load double, double* %10, align 8, !dbg !98
  %40 = call double @log(double %39) #5, !dbg !99
  store double %40, double* %11, align 8, !dbg !97
  call void @llvm.dbg.declare(metadata double* %12, metadata !100, metadata !81), !dbg !101
  %41 = load double, double* %5, align 8, !dbg !102
  %42 = load double, double* %11, align 8, !dbg !103
  %43 = fmul double %41, %42, !dbg !104
  %44 = call double @exp(double %43) #5, !dbg !105
  store double %44, double* %12, align 8, !dbg !101
  call void @llvm.dbg.declare(metadata double* %13, metadata !106, metadata !81), !dbg !107
  %45 = load double, double* %5, align 8, !dbg !108
  %46 = fmul double 0x400921FB54442D18, %45, !dbg !109
  store double %46, double* %13, align 8, !dbg !107
  call void @llvm.dbg.declare(metadata double* %14, metadata !110, metadata !81), !dbg !111
  %47 = load double, double* %13, align 8, !dbg !112
  %48 = fdiv double %47, 2.000000e+00, !dbg !113
  store double %48, double* %14, align 8, !dbg !111
  call void @llvm.dbg.declare(metadata double* %15, metadata !114, metadata !81), !dbg !115
  %49 = load double, double* %5, align 8, !dbg !116
  %50 = fsub double -0.000000e+00, %49, !dbg !117
  %51 = load double, double* %11, align 8, !dbg !118
  %52 = fmul double %50, %51, !dbg !119
  store double %52, double* %15, align 8, !dbg !115
  call void @llvm.dbg.declare(metadata double* %16, metadata !120, metadata !81), !dbg !121
  %53 = load double, double* %13, align 8, !dbg !122
  %54 = call double @fabs(double %53) #1, !dbg !123
  %55 = fcmp olt double %54, 0x3CB0000000000000, !dbg !124
  br i1 %55, label %56, label %57, !dbg !123

; <label>:56:                                     ; preds = %4
  br label %62, !dbg !125

; <label>:57:                                     ; preds = %4
  %58 = load double, double* %13, align 8, !dbg !127
  %59 = load double, double* %13, align 8, !dbg !129
  %60 = call double @sin(double %59) #5, !dbg !130
  %61 = fdiv double %58, %60, !dbg !131
  br label %62, !dbg !132

; <label>:62:                                     ; preds = %57, %56
  %63 = phi double [ 1.000000e+00, %56 ], [ %61, %57 ], !dbg !133
  store double %63, double* %16, align 8, !dbg !135
  call void @llvm.dbg.declare(metadata double* %17, metadata !136, metadata !81), !dbg !137
  %64 = load double, double* %15, align 8, !dbg !138
  %65 = call double @fabs(double %64) #1, !dbg !139
  %66 = fcmp olt double %65, 0x3CB0000000000000, !dbg !140
  br i1 %66, label %67, label %68, !dbg !139

; <label>:67:                                     ; preds = %62
  br label %73, !dbg !141

; <label>:68:                                     ; preds = %62
  %69 = load double, double* %15, align 8, !dbg !142
  %70 = call double @sinh(double %69) #5, !dbg !143
  %71 = load double, double* %15, align 8, !dbg !144
  %72 = fdiv double %70, %71, !dbg !145
  br label %73, !dbg !146

; <label>:73:                                     ; preds = %68, %67
  %74 = phi double [ 1.000000e+00, %67 ], [ %72, %68 ], !dbg !147
  store double %74, double* %17, align 8, !dbg !148
  call void @llvm.dbg.declare(metadata double* %18, metadata !149, metadata !81), !dbg !150
  %75 = load double, double* %14, align 8, !dbg !151
  %76 = call double @fabs(double %75) #1, !dbg !152
  %77 = fcmp olt double %76, 0x3CB0000000000000, !dbg !153
  br i1 %77, label %78, label %79, !dbg !152

; <label>:78:                                     ; preds = %73
  br label %84, !dbg !154

; <label>:79:                                     ; preds = %73
  %80 = load double, double* %14, align 8, !dbg !155
  %81 = call double @sin(double %80) #5, !dbg !156
  %82 = load double, double* %14, align 8, !dbg !157
  %83 = fdiv double %81, %82, !dbg !158
  br label %84, !dbg !159

; <label>:84:                                     ; preds = %79, %78
  %85 = phi double [ 1.000000e+00, %78 ], [ %83, %79 ], !dbg !160
  store double %85, double* %18, align 8, !dbg !161
  call void @llvm.dbg.declare(metadata double* %19, metadata !162, metadata !81), !dbg !163
  %86 = load double, double* %5, align 8, !dbg !164
  %87 = fmul double %86, 0x400921FB54442D18, !dbg !165
  %88 = fmul double %87, 0x400921FB54442D18, !dbg !166
  %89 = fmul double %88, 5.000000e-01, !dbg !167
  %90 = load double, double* %18, align 8, !dbg !168
  %91 = fmul double %89, %90, !dbg !169
  %92 = load double, double* %18, align 8, !dbg !170
  %93 = fmul double %91, %92, !dbg !171
  store double %93, double* %19, align 8, !dbg !163
  call void @llvm.dbg.declare(metadata double* %20, metadata !172, metadata !81), !dbg !173
  call void @llvm.dbg.declare(metadata double* %21, metadata !174, metadata !81), !dbg !175
  call void @llvm.dbg.declare(metadata double* %22, metadata !176, metadata !81), !dbg !177
  call void @llvm.dbg.declare(metadata double* %23, metadata !178, metadata !81), !dbg !179
  call void @llvm.dbg.declare(metadata double* %24, metadata !180, metadata !81), !dbg !181
  call void @llvm.dbg.declare(metadata double* %25, metadata !182, metadata !81), !dbg !183
  call void @llvm.dbg.declare(metadata double* %26, metadata !184, metadata !81), !dbg !185
  call void @llvm.dbg.declare(metadata i32* %27, metadata !186, metadata !81), !dbg !187
  store i32 0, i32* %27, align 4, !dbg !187
  call void @llvm.dbg.declare(metadata i32* %28, metadata !188, metadata !81), !dbg !189
  call void @llvm.dbg.declare(metadata double* %29, metadata !190, metadata !81), !dbg !191
  call void @llvm.dbg.declare(metadata double* %30, metadata !192, metadata !81), !dbg !193
  call void @llvm.dbg.declare(metadata double* %31, metadata !194, metadata !81), !dbg !195
  call void @llvm.dbg.declare(metadata double* %32, metadata !196, metadata !81), !dbg !197
  call void @llvm.dbg.declare(metadata i32* %33, metadata !198, metadata !81), !dbg !199
  %94 = load double, double* %5, align 8, !dbg !200
  %95 = call i32 @gsl_sf_temme_gamma(double %94, double* %29, double* %30, double* %31, double* %32), !dbg !201
  store i32 %95, i32* %33, align 4, !dbg !199
  %96 = load double, double* %16, align 8, !dbg !202
  %97 = fmul double 0x3FE45F306DC9C883, %96, !dbg !203
  %98 = load double, double* %15, align 8, !dbg !204
  %99 = call double @cosh(double %98) #5, !dbg !205
  %100 = load double, double* %31, align 8, !dbg !206
  %101 = fmul double %99, %100, !dbg !207
  %102 = load double, double* %17, align 8, !dbg !208
  %103 = load double, double* %11, align 8, !dbg !209
  %104 = fmul double %102, %103, !dbg !210
  %105 = load double, double* %32, align 8, !dbg !211
  %106 = fmul double %104, %105, !dbg !212
  %107 = fsub double %101, %106, !dbg !213
  %108 = fmul double %97, %107, !dbg !214
  store double %108, double* %22, align 8, !dbg !215
  %109 = load double, double* %12, align 8, !dbg !216
  %110 = fdiv double 0x3FD45F306DC9C883, %109, !dbg !217
  %111 = load double, double* %29, align 8, !dbg !218
  %112 = fmul double %110, %111, !dbg !219
  store double %112, double* %23, align 8, !dbg !220
  %113 = load double, double* %12, align 8, !dbg !221
  %114 = fmul double 0x3FD45F306DC9C883, %113, !dbg !222
  %115 = load double, double* %30, align 8, !dbg !223
  %116 = fmul double %114, %115, !dbg !224
  store double %116, double* %24, align 8, !dbg !225
  %117 = load double, double* %23, align 8, !dbg !226
  store double %117, double* %25, align 8, !dbg !227
  store double 1.000000e+00, double* %26, align 8, !dbg !228
  %118 = load double, double* %22, align 8, !dbg !229
  %119 = load double, double* %19, align 8, !dbg !230
  %120 = load double, double* %24, align 8, !dbg !231
  %121 = fmul double %119, %120, !dbg !232
  %122 = fadd double %118, %121, !dbg !233
  store double %122, double* %20, align 8, !dbg !234
  %123 = load double, double* %23, align 8, !dbg !235
  store double %123, double* %21, align 8, !dbg !236
  br label %124, !dbg !237

; <label>:124:                                    ; preds = %201, %84
  %125 = load i32, i32* %27, align 4, !dbg !238
  %126 = icmp slt i32 %125, 15000, !dbg !239
  br i1 %126, label %127, label %202, !dbg !240

; <label>:127:                                    ; preds = %124
  call void @llvm.dbg.declare(metadata double* %34, metadata !241, metadata !81), !dbg !243
  call void @llvm.dbg.declare(metadata double* %35, metadata !244, metadata !81), !dbg !245
  call void @llvm.dbg.declare(metadata double* %36, metadata !246, metadata !81), !dbg !247
  %128 = load i32, i32* %27, align 4, !dbg !248
  %129 = add nsw i32 %128, 1, !dbg !248
  store i32 %129, i32* %27, align 4, !dbg !248
  %130 = load i32, i32* %27, align 4, !dbg !249
  %131 = sitofp i32 %130 to double, !dbg !249
  %132 = load double, double* %22, align 8, !dbg !250
  %133 = fmul double %131, %132, !dbg !251
  %134 = load double, double* %23, align 8, !dbg !252
  %135 = fadd double %133, %134, !dbg !253
  %136 = load double, double* %24, align 8, !dbg !254
  %137 = fadd double %135, %136, !dbg !255
  %138 = load i32, i32* %27, align 4, !dbg !256
  %139 = load i32, i32* %27, align 4, !dbg !257
  %140 = mul nsw i32 %138, %139, !dbg !258
  %141 = sitofp i32 %140 to double, !dbg !256
  %142 = load double, double* %5, align 8, !dbg !259
  %143 = load double, double* %5, align 8, !dbg !260
  %144 = fmul double %142, %143, !dbg !261
  %145 = fsub double %141, %144, !dbg !262
  %146 = fdiv double %137, %145, !dbg !263
  store double %146, double* %22, align 8, !dbg !264
  %147 = load double, double* %10, align 8, !dbg !265
  %148 = fsub double -0.000000e+00, %147, !dbg !266
  %149 = load double, double* %10, align 8, !dbg !267
  %150 = fmul double %148, %149, !dbg !268
  %151 = load i32, i32* %27, align 4, !dbg !269
  %152 = sitofp i32 %151 to double, !dbg !269
  %153 = fdiv double %150, %152, !dbg !270
  %154 = load double, double* %26, align 8, !dbg !271
  %155 = fmul double %154, %153, !dbg !271
  store double %155, double* %26, align 8, !dbg !271
  %156 = load i32, i32* %27, align 4, !dbg !272
  %157 = sitofp i32 %156 to double, !dbg !272
  %158 = load double, double* %5, align 8, !dbg !273
  %159 = fsub double %157, %158, !dbg !274
  %160 = load double, double* %23, align 8, !dbg !275
  %161 = fdiv double %160, %159, !dbg !275
  store double %161, double* %23, align 8, !dbg !275
  %162 = load i32, i32* %27, align 4, !dbg !276
  %163 = sitofp i32 %162 to double, !dbg !276
  %164 = load double, double* %5, align 8, !dbg !277
  %165 = fadd double %163, %164, !dbg !278
  %166 = load double, double* %24, align 8, !dbg !279
  %167 = fdiv double %166, %165, !dbg !279
  store double %167, double* %24, align 8, !dbg !279
  %168 = load double, double* %22, align 8, !dbg !280
  %169 = load double, double* %19, align 8, !dbg !281
  %170 = load double, double* %24, align 8, !dbg !282
  %171 = fmul double %169, %170, !dbg !283
  %172 = fadd double %168, %171, !dbg !284
  store double %172, double* %36, align 8, !dbg !285
  %173 = load i32, i32* %27, align 4, !dbg !286
  %174 = sub nsw i32 0, %173, !dbg !287
  %175 = sitofp i32 %174 to double, !dbg !287
  %176 = load double, double* %36, align 8, !dbg !288
  %177 = fmul double %175, %176, !dbg !289
  %178 = load double, double* %23, align 8, !dbg !290
  %179 = fadd double %177, %178, !dbg !291
  store double %179, double* %25, align 8, !dbg !292
  %180 = load double, double* %26, align 8, !dbg !293
  %181 = load double, double* %36, align 8, !dbg !294
  %182 = fmul double %180, %181, !dbg !295
  store double %182, double* %34, align 8, !dbg !296
  %183 = load double, double* %26, align 8, !dbg !297
  %184 = load double, double* %25, align 8, !dbg !298
  %185 = fmul double %183, %184, !dbg !299
  store double %185, double* %35, align 8, !dbg !300
  %186 = load double, double* %34, align 8, !dbg !301
  %187 = load double, double* %20, align 8, !dbg !302
  %188 = fadd double %187, %186, !dbg !302
  store double %188, double* %20, align 8, !dbg !302
  %189 = load double, double* %35, align 8, !dbg !303
  %190 = load double, double* %21, align 8, !dbg !304
  %191 = fadd double %190, %189, !dbg !304
  store double %191, double* %21, align 8, !dbg !304
  %192 = load double, double* %34, align 8, !dbg !305
  %193 = call double @fabs(double %192) #1, !dbg !307
  %194 = load double, double* %20, align 8, !dbg !308
  %195 = call double @fabs(double %194) #1, !dbg !309
  %196 = fadd double 1.000000e+00, %195, !dbg !311
  %197 = fmul double 5.000000e-01, %196, !dbg !312
  %198 = fmul double %197, 0x3CB0000000000000, !dbg !313
  %199 = fcmp olt double %193, %198, !dbg !314
  br i1 %199, label %200, label %201, !dbg !315

; <label>:200:                                    ; preds = %127
  br label %202, !dbg !316

; <label>:201:                                    ; preds = %127
  br label %124, !dbg !318, !llvm.loop !319

; <label>:202:                                    ; preds = %200, %124
  %203 = load double, double* %20, align 8, !dbg !320
  %204 = fsub double -0.000000e+00, %203, !dbg !321
  %205 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !322
  %206 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %205, i32 0, i32 0, !dbg !323
  store double %204, double* %206, align 8, !dbg !324
  %207 = load i32, i32* %27, align 4, !dbg !325
  %208 = sitofp i32 %207 to double, !dbg !325
  %209 = fmul double 5.000000e-01, %208, !dbg !326
  %210 = fadd double 2.000000e+00, %209, !dbg !327
  %211 = fmul double %210, 0x3CB0000000000000, !dbg !328
  %212 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !329
  %213 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %212, i32 0, i32 0, !dbg !330
  %214 = load double, double* %213, align 8, !dbg !330
  %215 = call double @fabs(double %214) #1, !dbg !331
  %216 = fmul double %211, %215, !dbg !332
  %217 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !333
  %218 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %217, i32 0, i32 1, !dbg !334
  store double %216, double* %218, align 8, !dbg !335
  %219 = load double, double* %21, align 8, !dbg !336
  %220 = fsub double -0.000000e+00, %219, !dbg !337
  %221 = fmul double %220, 2.000000e+00, !dbg !338
  %222 = load double, double* %6, align 8, !dbg !339
  %223 = fdiv double %221, %222, !dbg !340
  %224 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !341
  %225 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %224, i32 0, i32 0, !dbg !342
  store double %223, double* %225, align 8, !dbg !343
  %226 = load i32, i32* %27, align 4, !dbg !344
  %227 = sitofp i32 %226 to double, !dbg !344
  %228 = fmul double 5.000000e-01, %227, !dbg !345
  %229 = fadd double 2.000000e+00, %228, !dbg !346
  %230 = fmul double %229, 0x3CB0000000000000, !dbg !347
  %231 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !348
  %232 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %231, i32 0, i32 0, !dbg !349
  %233 = load double, double* %232, align 8, !dbg !349
  %234 = call double @fabs(double %233) #1, !dbg !350
  %235 = fmul double %230, %234, !dbg !351
  %236 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !352
  %237 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %236, i32 0, i32 1, !dbg !353
  store double %235, double* %237, align 8, !dbg !354
  %238 = load i32, i32* %27, align 4, !dbg !355
  %239 = icmp sge i32 %238, 15000, !dbg !356
  %240 = select i1 %239, i32 11, i32 0, !dbg !355
  store i32 %240, i32* %28, align 4, !dbg !357
  %241 = load i32, i32* %28, align 4, !dbg !358
  %242 = icmp ne i32 %241, 0, !dbg !358
  br i1 %242, label %243, label %245, !dbg !358

; <label>:243:                                    ; preds = %202
  %244 = load i32, i32* %28, align 4, !dbg !359
  br label %253, !dbg !359

; <label>:245:                                    ; preds = %202
  %246 = load i32, i32* %33, align 4, !dbg !360
  %247 = icmp ne i32 %246, 0, !dbg !360
  br i1 %247, label %248, label %250, !dbg !360

; <label>:248:                                    ; preds = %245
  %249 = load i32, i32* %33, align 4, !dbg !361
  br label %251, !dbg !361

; <label>:250:                                    ; preds = %245
  br label %251, !dbg !362

; <label>:251:                                    ; preds = %250, %248
  %252 = phi i32 [ %249, %248 ], [ 0, %250 ], !dbg !364
  br label %253, !dbg !364

; <label>:253:                                    ; preds = %251, %243
  %254 = phi i32 [ %244, %243 ], [ %252, %251 ], !dbg !366
  ret i32 %254, !dbg !368
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare double @log(double) #2

; Function Attrs: nounwind
declare double @exp(double) #2

; Function Attrs: nounwind readnone
declare double @fabs(double) #3

; Function Attrs: nounwind
declare double @sin(double) #2

; Function Attrs: nounwind
declare double @sinh(double) #2

; Function Attrs: nounwind uwtable
define internal i32 @gsl_sf_temme_gamma(double, double*, double*, double*, double*) #0 !dbg !369 {
  %6 = alloca double, align 8
  %7 = alloca double*, align 8
  %8 = alloca double*, align 8
  %9 = alloca double*, align 8
  %10 = alloca double*, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca %struct.gsl_sf_result_struct, align 8
  %14 = alloca %struct.gsl_sf_result_struct, align 8
  store double %0, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !372, metadata !81), !dbg !373
  store double* %1, double** %7, align 8
  call void @llvm.dbg.declare(metadata double** %7, metadata !374, metadata !81), !dbg !375
  store double* %2, double** %8, align 8
  call void @llvm.dbg.declare(metadata double** %8, metadata !376, metadata !81), !dbg !377
  store double* %3, double** %9, align 8
  call void @llvm.dbg.declare(metadata double** %9, metadata !378, metadata !81), !dbg !379
  store double* %4, double** %10, align 8
  call void @llvm.dbg.declare(metadata double** %10, metadata !380, metadata !81), !dbg !381
  call void @llvm.dbg.declare(metadata double* %11, metadata !382, metadata !81), !dbg !383
  %15 = load double, double* %6, align 8, !dbg !384
  %16 = call double @fabs(double %15) #1, !dbg !385
  store double %16, double* %11, align 8, !dbg !383
  call void @llvm.dbg.declare(metadata double* %12, metadata !386, metadata !81), !dbg !387
  %17 = load double, double* %11, align 8, !dbg !388
  %18 = fmul double 4.000000e+00, %17, !dbg !389
  %19 = fsub double %18, 1.000000e+00, !dbg !390
  store double %19, double* %12, align 8, !dbg !387
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %13, metadata !391, metadata !81), !dbg !392
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %14, metadata !393, metadata !81), !dbg !394
  %20 = load double, double* %12, align 8, !dbg !395
  %21 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @g1_cs, double %20, %struct.gsl_sf_result_struct* %13), !dbg !396
  %22 = load double, double* %12, align 8, !dbg !397
  %23 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @g2_cs, double %22, %struct.gsl_sf_result_struct* %14), !dbg !398
  %24 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %13, i32 0, i32 0, !dbg !399
  %25 = load double, double* %24, align 8, !dbg !399
  %26 = load double*, double** %9, align 8, !dbg !400
  store double %25, double* %26, align 8, !dbg !401
  %27 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 0, !dbg !402
  %28 = load double, double* %27, align 8, !dbg !402
  %29 = load double*, double** %10, align 8, !dbg !403
  store double %28, double* %29, align 8, !dbg !404
  %30 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 0, !dbg !405
  %31 = load double, double* %30, align 8, !dbg !405
  %32 = load double, double* %6, align 8, !dbg !406
  %33 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %13, i32 0, i32 0, !dbg !407
  %34 = load double, double* %33, align 8, !dbg !407
  %35 = fmul double %32, %34, !dbg !408
  %36 = fadd double %31, %35, !dbg !409
  %37 = fdiv double 1.000000e+00, %36, !dbg !410
  %38 = load double*, double** %8, align 8, !dbg !411
  store double %37, double* %38, align 8, !dbg !412
  %39 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 0, !dbg !413
  %40 = load double, double* %39, align 8, !dbg !413
  %41 = load double, double* %6, align 8, !dbg !414
  %42 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %13, i32 0, i32 0, !dbg !415
  %43 = load double, double* %42, align 8, !dbg !415
  %44 = fmul double %41, %43, !dbg !416
  %45 = fsub double %40, %44, !dbg !417
  %46 = fdiv double 1.000000e+00, %45, !dbg !418
  %47 = load double*, double** %7, align 8, !dbg !419
  store double %46, double* %47, align 8, !dbg !420
  ret i32 0, !dbg !421
}

; Function Attrs: nounwind
declare double @cosh(double) #2

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_bessel_K_scaled_temme(double, double, double*, double*, double*) #0 !dbg !422 {
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double*, align 8
  %9 = alloca double*, align 8
  %10 = alloca double*, align 8
  %11 = alloca i32, align 4
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
  %23 = alloca double, align 8
  %24 = alloca double, align 8
  %25 = alloca double, align 8
  %26 = alloca double, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca double, align 8
  %30 = alloca double, align 8
  %31 = alloca double, align 8
  %32 = alloca double, align 8
  %33 = alloca i32, align 4
  %34 = alloca double, align 8
  %35 = alloca double, align 8
  store double %0, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !425, metadata !81), !dbg !426
  store double %1, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !427, metadata !81), !dbg !428
  store double* %2, double** %8, align 8
  call void @llvm.dbg.declare(metadata double** %8, metadata !429, metadata !81), !dbg !430
  store double* %3, double** %9, align 8
  call void @llvm.dbg.declare(metadata double** %9, metadata !431, metadata !81), !dbg !432
  store double* %4, double** %10, align 8
  call void @llvm.dbg.declare(metadata double** %10, metadata !433, metadata !81), !dbg !434
  call void @llvm.dbg.declare(metadata i32* %11, metadata !435, metadata !81), !dbg !436
  store i32 15000, i32* %11, align 4, !dbg !436
  call void @llvm.dbg.declare(metadata double* %12, metadata !437, metadata !81), !dbg !438
  %36 = load double, double* %7, align 8, !dbg !439
  %37 = fmul double 5.000000e-01, %36, !dbg !440
  store double %37, double* %12, align 8, !dbg !438
  call void @llvm.dbg.declare(metadata double* %13, metadata !441, metadata !81), !dbg !442
  %38 = load double, double* %12, align 8, !dbg !443
  %39 = call double @log(double %38) #5, !dbg !444
  store double %39, double* %13, align 8, !dbg !442
  call void @llvm.dbg.declare(metadata double* %14, metadata !445, metadata !81), !dbg !446
  %40 = load double, double* %6, align 8, !dbg !447
  %41 = load double, double* %13, align 8, !dbg !448
  %42 = fmul double %40, %41, !dbg !449
  %43 = call double @exp(double %42) #5, !dbg !450
  store double %43, double* %14, align 8, !dbg !446
  call void @llvm.dbg.declare(metadata double* %15, metadata !451, metadata !81), !dbg !452
  %44 = load double, double* %6, align 8, !dbg !453
  %45 = fmul double 0x400921FB54442D18, %44, !dbg !454
  store double %45, double* %15, align 8, !dbg !452
  call void @llvm.dbg.declare(metadata double* %16, metadata !455, metadata !81), !dbg !456
  %46 = load double, double* %6, align 8, !dbg !457
  %47 = fsub double -0.000000e+00, %46, !dbg !458
  %48 = load double, double* %13, align 8, !dbg !459
  %49 = fmul double %47, %48, !dbg !460
  store double %49, double* %16, align 8, !dbg !456
  call void @llvm.dbg.declare(metadata double* %17, metadata !461, metadata !81), !dbg !462
  %50 = load double, double* %15, align 8, !dbg !463
  %51 = call double @fabs(double %50) #1, !dbg !464
  %52 = fcmp olt double %51, 0x3CB0000000000000, !dbg !465
  br i1 %52, label %53, label %54, !dbg !464

; <label>:53:                                     ; preds = %5
  br label %59, !dbg !466

; <label>:54:                                     ; preds = %5
  %55 = load double, double* %15, align 8, !dbg !468
  %56 = load double, double* %15, align 8, !dbg !470
  %57 = call double @sin(double %56) #5, !dbg !471
  %58 = fdiv double %55, %57, !dbg !472
  br label %59, !dbg !473

; <label>:59:                                     ; preds = %54, %53
  %60 = phi double [ 1.000000e+00, %53 ], [ %58, %54 ], !dbg !474
  store double %60, double* %17, align 8, !dbg !476
  call void @llvm.dbg.declare(metadata double* %18, metadata !477, metadata !81), !dbg !478
  %61 = load double, double* %16, align 8, !dbg !479
  %62 = call double @fabs(double %61) #1, !dbg !480
  %63 = fcmp olt double %62, 0x3CB0000000000000, !dbg !481
  br i1 %63, label %64, label %65, !dbg !480

; <label>:64:                                     ; preds = %59
  br label %70, !dbg !482

; <label>:65:                                     ; preds = %59
  %66 = load double, double* %16, align 8, !dbg !483
  %67 = call double @sinh(double %66) #5, !dbg !484
  %68 = load double, double* %16, align 8, !dbg !485
  %69 = fdiv double %67, %68, !dbg !486
  br label %70, !dbg !487

; <label>:70:                                     ; preds = %65, %64
  %71 = phi double [ 1.000000e+00, %64 ], [ %69, %65 ], !dbg !488
  store double %71, double* %18, align 8, !dbg !489
  call void @llvm.dbg.declare(metadata double* %19, metadata !490, metadata !81), !dbg !491
  %72 = load double, double* %7, align 8, !dbg !492
  %73 = call double @exp(double %72) #5, !dbg !493
  store double %73, double* %19, align 8, !dbg !491
  call void @llvm.dbg.declare(metadata double* %20, metadata !494, metadata !81), !dbg !495
  call void @llvm.dbg.declare(metadata double* %21, metadata !496, metadata !81), !dbg !497
  call void @llvm.dbg.declare(metadata double* %22, metadata !498, metadata !81), !dbg !499
  call void @llvm.dbg.declare(metadata double* %23, metadata !500, metadata !81), !dbg !501
  call void @llvm.dbg.declare(metadata double* %24, metadata !502, metadata !81), !dbg !503
  call void @llvm.dbg.declare(metadata double* %25, metadata !504, metadata !81), !dbg !505
  call void @llvm.dbg.declare(metadata double* %26, metadata !506, metadata !81), !dbg !507
  call void @llvm.dbg.declare(metadata i32* %27, metadata !508, metadata !81), !dbg !509
  store i32 0, i32* %27, align 4, !dbg !509
  call void @llvm.dbg.declare(metadata i32* %28, metadata !510, metadata !81), !dbg !511
  call void @llvm.dbg.declare(metadata double* %29, metadata !512, metadata !81), !dbg !513
  call void @llvm.dbg.declare(metadata double* %30, metadata !514, metadata !81), !dbg !515
  call void @llvm.dbg.declare(metadata double* %31, metadata !516, metadata !81), !dbg !517
  call void @llvm.dbg.declare(metadata double* %32, metadata !518, metadata !81), !dbg !519
  call void @llvm.dbg.declare(metadata i32* %33, metadata !520, metadata !81), !dbg !521
  %74 = load double, double* %6, align 8, !dbg !522
  %75 = call i32 @gsl_sf_temme_gamma(double %74, double* %29, double* %30, double* %31, double* %32), !dbg !523
  store i32 %75, i32* %33, align 4, !dbg !521
  %76 = load double, double* %17, align 8, !dbg !524
  %77 = load double, double* %16, align 8, !dbg !525
  %78 = call double @cosh(double %77) #5, !dbg !526
  %79 = load double, double* %31, align 8, !dbg !527
  %80 = fmul double %78, %79, !dbg !528
  %81 = load double, double* %18, align 8, !dbg !529
  %82 = load double, double* %13, align 8, !dbg !530
  %83 = fmul double %81, %82, !dbg !531
  %84 = load double, double* %32, align 8, !dbg !532
  %85 = fmul double %83, %84, !dbg !533
  %86 = fsub double %80, %85, !dbg !534
  %87 = fmul double %76, %86, !dbg !535
  store double %87, double* %22, align 8, !dbg !536
  %88 = load double, double* %14, align 8, !dbg !537
  %89 = fdiv double 5.000000e-01, %88, !dbg !538
  %90 = load double, double* %29, align 8, !dbg !539
  %91 = fmul double %89, %90, !dbg !540
  store double %91, double* %23, align 8, !dbg !541
  %92 = load double, double* %14, align 8, !dbg !542
  %93 = fmul double 5.000000e-01, %92, !dbg !543
  %94 = load double, double* %30, align 8, !dbg !544
  %95 = fmul double %93, %94, !dbg !545
  store double %95, double* %24, align 8, !dbg !546
  %96 = load double, double* %23, align 8, !dbg !547
  store double %96, double* %25, align 8, !dbg !548
  store double 1.000000e+00, double* %26, align 8, !dbg !549
  %97 = load double, double* %22, align 8, !dbg !550
  store double %97, double* %20, align 8, !dbg !551
  %98 = load double, double* %25, align 8, !dbg !552
  store double %98, double* %21, align 8, !dbg !553
  br label %99, !dbg !554

; <label>:99:                                     ; preds = %169, %70
  %100 = load i32, i32* %27, align 4, !dbg !555
  %101 = icmp slt i32 %100, 15000, !dbg !556
  br i1 %101, label %102, label %170, !dbg !557

; <label>:102:                                    ; preds = %99
  call void @llvm.dbg.declare(metadata double* %34, metadata !558, metadata !81), !dbg !560
  call void @llvm.dbg.declare(metadata double* %35, metadata !561, metadata !81), !dbg !562
  %103 = load i32, i32* %27, align 4, !dbg !563
  %104 = add nsw i32 %103, 1, !dbg !563
  store i32 %104, i32* %27, align 4, !dbg !563
  %105 = load i32, i32* %27, align 4, !dbg !564
  %106 = sitofp i32 %105 to double, !dbg !564
  %107 = load double, double* %22, align 8, !dbg !565
  %108 = fmul double %106, %107, !dbg !566
  %109 = load double, double* %23, align 8, !dbg !567
  %110 = fadd double %108, %109, !dbg !568
  %111 = load double, double* %24, align 8, !dbg !569
  %112 = fadd double %110, %111, !dbg !570
  %113 = load i32, i32* %27, align 4, !dbg !571
  %114 = load i32, i32* %27, align 4, !dbg !572
  %115 = mul nsw i32 %113, %114, !dbg !573
  %116 = sitofp i32 %115 to double, !dbg !571
  %117 = load double, double* %6, align 8, !dbg !574
  %118 = load double, double* %6, align 8, !dbg !575
  %119 = fmul double %117, %118, !dbg !576
  %120 = fsub double %116, %119, !dbg !577
  %121 = fdiv double %112, %120, !dbg !578
  store double %121, double* %22, align 8, !dbg !579
  %122 = load double, double* %12, align 8, !dbg !580
  %123 = load double, double* %12, align 8, !dbg !581
  %124 = fmul double %122, %123, !dbg !582
  %125 = load i32, i32* %27, align 4, !dbg !583
  %126 = sitofp i32 %125 to double, !dbg !583
  %127 = fdiv double %124, %126, !dbg !584
  %128 = load double, double* %26, align 8, !dbg !585
  %129 = fmul double %128, %127, !dbg !585
  store double %129, double* %26, align 8, !dbg !585
  %130 = load i32, i32* %27, align 4, !dbg !586
  %131 = sitofp i32 %130 to double, !dbg !586
  %132 = load double, double* %6, align 8, !dbg !587
  %133 = fsub double %131, %132, !dbg !588
  %134 = load double, double* %23, align 8, !dbg !589
  %135 = fdiv double %134, %133, !dbg !589
  store double %135, double* %23, align 8, !dbg !589
  %136 = load i32, i32* %27, align 4, !dbg !590
  %137 = sitofp i32 %136 to double, !dbg !590
  %138 = load double, double* %6, align 8, !dbg !591
  %139 = fadd double %137, %138, !dbg !592
  %140 = load double, double* %24, align 8, !dbg !593
  %141 = fdiv double %140, %139, !dbg !593
  store double %141, double* %24, align 8, !dbg !593
  %142 = load i32, i32* %27, align 4, !dbg !594
  %143 = sub nsw i32 0, %142, !dbg !595
  %144 = sitofp i32 %143 to double, !dbg !595
  %145 = load double, double* %22, align 8, !dbg !596
  %146 = fmul double %144, %145, !dbg !597
  %147 = load double, double* %23, align 8, !dbg !598
  %148 = fadd double %146, %147, !dbg !599
  store double %148, double* %25, align 8, !dbg !600
  %149 = load double, double* %26, align 8, !dbg !601
  %150 = load double, double* %22, align 8, !dbg !602
  %151 = fmul double %149, %150, !dbg !603
  store double %151, double* %34, align 8, !dbg !604
  %152 = load double, double* %26, align 8, !dbg !605
  %153 = load double, double* %25, align 8, !dbg !606
  %154 = fmul double %152, %153, !dbg !607
  store double %154, double* %35, align 8, !dbg !608
  %155 = load double, double* %34, align 8, !dbg !609
  %156 = load double, double* %20, align 8, !dbg !610
  %157 = fadd double %156, %155, !dbg !610
  store double %157, double* %20, align 8, !dbg !610
  %158 = load double, double* %35, align 8, !dbg !611
  %159 = load double, double* %21, align 8, !dbg !612
  %160 = fadd double %159, %158, !dbg !612
  store double %160, double* %21, align 8, !dbg !612
  %161 = load double, double* %34, align 8, !dbg !613
  %162 = call double @fabs(double %161) #1, !dbg !615
  %163 = load double, double* %20, align 8, !dbg !616
  %164 = call double @fabs(double %163) #1, !dbg !617
  %165 = fmul double 5.000000e-01, %164, !dbg !619
  %166 = fmul double %165, 0x3CB0000000000000, !dbg !620
  %167 = fcmp olt double %162, %166, !dbg !621
  br i1 %167, label %168, label %169, !dbg !622

; <label>:168:                                    ; preds = %102
  br label %170, !dbg !623

; <label>:169:                                    ; preds = %102
  br label %99, !dbg !625, !llvm.loop !626

; <label>:170:                                    ; preds = %168, %99
  %171 = load double, double* %20, align 8, !dbg !627
  %172 = load double, double* %19, align 8, !dbg !628
  %173 = fmul double %171, %172, !dbg !629
  %174 = load double*, double** %8, align 8, !dbg !630
  store double %173, double* %174, align 8, !dbg !631
  %175 = load double, double* %21, align 8, !dbg !632
  %176 = fmul double %175, 2.000000e+00, !dbg !633
  %177 = load double, double* %7, align 8, !dbg !634
  %178 = fdiv double %176, %177, !dbg !635
  %179 = load double, double* %19, align 8, !dbg !636
  %180 = fmul double %178, %179, !dbg !637
  %181 = load double*, double** %9, align 8, !dbg !638
  store double %180, double* %181, align 8, !dbg !639
  %182 = load double*, double** %9, align 8, !dbg !640
  %183 = load double, double* %182, align 8, !dbg !641
  %184 = fsub double -0.000000e+00, %183, !dbg !642
  %185 = load double, double* %6, align 8, !dbg !643
  %186 = load double, double* %7, align 8, !dbg !644
  %187 = fdiv double %185, %186, !dbg !645
  %188 = load double*, double** %8, align 8, !dbg !646
  %189 = load double, double* %188, align 8, !dbg !647
  %190 = fmul double %187, %189, !dbg !648
  %191 = fadd double %184, %190, !dbg !649
  %192 = load double*, double** %10, align 8, !dbg !650
  store double %191, double* %192, align 8, !dbg !651
  %193 = load i32, i32* %27, align 4, !dbg !652
  %194 = icmp eq i32 %193, 15000, !dbg !653
  %195 = select i1 %194, i32 11, i32 0, !dbg !652
  store i32 %195, i32* %28, align 4, !dbg !654
  %196 = load i32, i32* %28, align 4, !dbg !655
  %197 = icmp ne i32 %196, 0, !dbg !655
  br i1 %197, label %198, label %200, !dbg !655

; <label>:198:                                    ; preds = %170
  %199 = load i32, i32* %28, align 4, !dbg !656
  br label %208, !dbg !656

; <label>:200:                                    ; preds = %170
  %201 = load i32, i32* %33, align 4, !dbg !657
  %202 = icmp ne i32 %201, 0, !dbg !657
  br i1 %202, label %203, label %205, !dbg !657

; <label>:203:                                    ; preds = %200
  %204 = load i32, i32* %33, align 4, !dbg !658
  br label %206, !dbg !658

; <label>:205:                                    ; preds = %200
  br label %206, !dbg !659

; <label>:206:                                    ; preds = %205, %203
  %207 = phi i32 [ %204, %203 ], [ 0, %205 ], !dbg !661
  br label %208, !dbg !661

; <label>:208:                                    ; preds = %206, %198
  %209 = phi i32 [ %199, %198 ], [ %207, %206 ], !dbg !663
  ret i32 %209, !dbg !665
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @cheb_eval_e(%struct.cheb_series_struct*, double, %struct.gsl_sf_result_struct*) #4 !dbg !666 {
  %4 = alloca %struct.cheb_series_struct*, align 8
  %5 = alloca double, align 8
  %6 = alloca %struct.gsl_sf_result_struct*, align 8
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  store %struct.cheb_series_struct* %0, %struct.cheb_series_struct** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.cheb_series_struct** %4, metadata !672, metadata !81), !dbg !673
  store double %1, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !674, metadata !81), !dbg !675
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %6, metadata !676, metadata !81), !dbg !677
  call void @llvm.dbg.declare(metadata i32* %7, metadata !678, metadata !81), !dbg !679
  call void @llvm.dbg.declare(metadata double* %8, metadata !680, metadata !81), !dbg !681
  store double 0.000000e+00, double* %8, align 8, !dbg !681
  call void @llvm.dbg.declare(metadata double* %9, metadata !682, metadata !81), !dbg !683
  store double 0.000000e+00, double* %9, align 8, !dbg !683
  call void @llvm.dbg.declare(metadata double* %10, metadata !684, metadata !81), !dbg !685
  %15 = load double, double* %5, align 8, !dbg !686
  %16 = fmul double 2.000000e+00, %15, !dbg !687
  %17 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !688
  %18 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %17, i32 0, i32 2, !dbg !689
  %19 = load double, double* %18, align 8, !dbg !689
  %20 = fsub double %16, %19, !dbg !690
  %21 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !691
  %22 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %21, i32 0, i32 3, !dbg !692
  %23 = load double, double* %22, align 8, !dbg !692
  %24 = fsub double %20, %23, !dbg !693
  %25 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !694
  %26 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %25, i32 0, i32 3, !dbg !695
  %27 = load double, double* %26, align 8, !dbg !695
  %28 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !696
  %29 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %28, i32 0, i32 2, !dbg !697
  %30 = load double, double* %29, align 8, !dbg !697
  %31 = fsub double %27, %30, !dbg !698
  %32 = fdiv double %24, %31, !dbg !699
  store double %32, double* %10, align 8, !dbg !685
  call void @llvm.dbg.declare(metadata double* %11, metadata !700, metadata !81), !dbg !701
  %33 = load double, double* %10, align 8, !dbg !702
  %34 = fmul double 2.000000e+00, %33, !dbg !703
  store double %34, double* %11, align 8, !dbg !701
  call void @llvm.dbg.declare(metadata double* %12, metadata !704, metadata !81), !dbg !705
  store double 0.000000e+00, double* %12, align 8, !dbg !705
  %35 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !706
  %36 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %35, i32 0, i32 1, !dbg !708
  %37 = load i32, i32* %36, align 8, !dbg !708
  store i32 %37, i32* %7, align 4, !dbg !709
  br label %38, !dbg !710

; <label>:38:                                     ; preds = %75, %3
  %39 = load i32, i32* %7, align 4, !dbg !711
  %40 = icmp sge i32 %39, 1, !dbg !714
  br i1 %40, label %41, label %78, !dbg !715

; <label>:41:                                     ; preds = %38
  call void @llvm.dbg.declare(metadata double* %13, metadata !716, metadata !81), !dbg !718
  %42 = load double, double* %8, align 8, !dbg !719
  store double %42, double* %13, align 8, !dbg !718
  %43 = load double, double* %11, align 8, !dbg !720
  %44 = load double, double* %8, align 8, !dbg !721
  %45 = fmul double %43, %44, !dbg !722
  %46 = load double, double* %9, align 8, !dbg !723
  %47 = fsub double %45, %46, !dbg !724
  %48 = load i32, i32* %7, align 4, !dbg !725
  %49 = sext i32 %48 to i64, !dbg !726
  %50 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !726
  %51 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %50, i32 0, i32 0, !dbg !727
  %52 = load double*, double** %51, align 8, !dbg !727
  %53 = getelementptr inbounds double, double* %52, i64 %49, !dbg !726
  %54 = load double, double* %53, align 8, !dbg !726
  %55 = fadd double %47, %54, !dbg !728
  store double %55, double* %8, align 8, !dbg !729
  %56 = load double, double* %11, align 8, !dbg !730
  %57 = load double, double* %13, align 8, !dbg !731
  %58 = fmul double %56, %57, !dbg !732
  %59 = call double @fabs(double %58) #1, !dbg !733
  %60 = load double, double* %9, align 8, !dbg !734
  %61 = call double @fabs(double %60) #1, !dbg !735
  %62 = fadd double %59, %61, !dbg !737
  %63 = load i32, i32* %7, align 4, !dbg !738
  %64 = sext i32 %63 to i64, !dbg !739
  %65 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !739
  %66 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %65, i32 0, i32 0, !dbg !740
  %67 = load double*, double** %66, align 8, !dbg !740
  %68 = getelementptr inbounds double, double* %67, i64 %64, !dbg !739
  %69 = load double, double* %68, align 8, !dbg !739
  %70 = call double @fabs(double %69) #1, !dbg !741
  %71 = fadd double %62, %70, !dbg !743
  %72 = load double, double* %12, align 8, !dbg !744
  %73 = fadd double %72, %71, !dbg !744
  store double %73, double* %12, align 8, !dbg !744
  %74 = load double, double* %13, align 8, !dbg !745
  store double %74, double* %9, align 8, !dbg !746
  br label %75, !dbg !747

; <label>:75:                                     ; preds = %41
  %76 = load i32, i32* %7, align 4, !dbg !748
  %77 = add nsw i32 %76, -1, !dbg !748
  store i32 %77, i32* %7, align 4, !dbg !748
  br label %38, !dbg !750, !llvm.loop !751

; <label>:78:                                     ; preds = %38
  call void @llvm.dbg.declare(metadata double* %14, metadata !753, metadata !81), !dbg !755
  %79 = load double, double* %8, align 8, !dbg !756
  store double %79, double* %14, align 8, !dbg !755
  %80 = load double, double* %10, align 8, !dbg !757
  %81 = load double, double* %8, align 8, !dbg !758
  %82 = fmul double %80, %81, !dbg !759
  %83 = load double, double* %9, align 8, !dbg !760
  %84 = fsub double %82, %83, !dbg !761
  %85 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !762
  %86 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %85, i32 0, i32 0, !dbg !763
  %87 = load double*, double** %86, align 8, !dbg !763
  %88 = getelementptr inbounds double, double* %87, i64 0, !dbg !762
  %89 = load double, double* %88, align 8, !dbg !762
  %90 = fmul double 5.000000e-01, %89, !dbg !764
  %91 = fadd double %84, %90, !dbg !765
  store double %91, double* %8, align 8, !dbg !766
  %92 = load double, double* %10, align 8, !dbg !767
  %93 = load double, double* %14, align 8, !dbg !768
  %94 = fmul double %92, %93, !dbg !769
  %95 = call double @fabs(double %94) #1, !dbg !770
  %96 = load double, double* %9, align 8, !dbg !771
  %97 = call double @fabs(double %96) #1, !dbg !772
  %98 = fadd double %95, %97, !dbg !774
  %99 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !775
  %100 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %99, i32 0, i32 0, !dbg !776
  %101 = load double*, double** %100, align 8, !dbg !776
  %102 = getelementptr inbounds double, double* %101, i64 0, !dbg !775
  %103 = load double, double* %102, align 8, !dbg !775
  %104 = call double @fabs(double %103) #1, !dbg !777
  %105 = fmul double 5.000000e-01, %104, !dbg !779
  %106 = fadd double %98, %105, !dbg !780
  %107 = load double, double* %12, align 8, !dbg !781
  %108 = fadd double %107, %106, !dbg !781
  store double %108, double* %12, align 8, !dbg !781
  %109 = load double, double* %8, align 8, !dbg !782
  %110 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !783
  %111 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %110, i32 0, i32 0, !dbg !784
  store double %109, double* %111, align 8, !dbg !785
  %112 = load double, double* %12, align 8, !dbg !786
  %113 = fmul double 0x3CB0000000000000, %112, !dbg !787
  %114 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !788
  %115 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %114, i32 0, i32 1, !dbg !789
  %116 = load i32, i32* %115, align 8, !dbg !789
  %117 = sext i32 %116 to i64, !dbg !790
  %118 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !790
  %119 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %118, i32 0, i32 0, !dbg !791
  %120 = load double*, double** %119, align 8, !dbg !791
  %121 = getelementptr inbounds double, double* %120, i64 %117, !dbg !790
  %122 = load double, double* %121, align 8, !dbg !790
  %123 = call double @fabs(double %122) #1, !dbg !792
  %124 = fadd double %113, %123, !dbg !793
  %125 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !794
  %126 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %125, i32 0, i32 1, !dbg !795
  store double %124, double* %126, align 8, !dbg !796
  ret i32 0, !dbg !797
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!64, !65, !66}
!llvm.ident = !{!67}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, globals: !41)
!1 = !DIFile(filename: "bessel_temme.c", directory: "/fpcc/gsl-2.5/specfunc")
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
!41 = !{!42, !55, !59, !60}
!42 = distinct !DIGlobalVariable(name: "g1_cs", scope: !0, file: !1, line: 52, type: !43, isLocal: true, isDefinition: true, variable: %struct.cheb_series_struct* @g1_cs)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "cheb_series", file: !44, line: 29, baseType: !45)
!44 = !DIFile(filename: "./chebyshev.h", directory: "/fpcc/gsl-2.5/specfunc")
!45 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cheb_series_struct", file: !44, line: 22, size: 320, align: 64, elements: !46)
!46 = !{!47, !50, !52, !53, !54}
!47 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !45, file: !44, line: 23, baseType: !48, size: 64, align: 64)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64, align: 64)
!49 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "order", scope: !45, file: !44, line: 24, baseType: !51, size: 32, align: 32, offset: 64)
!51 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !45, file: !44, line: 25, baseType: !49, size: 64, align: 64, offset: 128)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !45, file: !44, line: 26, baseType: !49, size: 64, align: 64, offset: 192)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "order_sp", scope: !45, file: !44, line: 27, baseType: !51, size: 32, align: 32, offset: 256)
!55 = distinct !DIGlobalVariable(name: "g1_dat", scope: !0, file: !1, line: 36, type: !56, isLocal: true, isDefinition: true, variable: [14 x double]* @g1_dat)
!56 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 896, align: 64, elements: !57)
!57 = !{!58}
!58 = !DISubrange(count: 14)
!59 = distinct !DIGlobalVariable(name: "g2_cs", scope: !0, file: !1, line: 78, type: !43, isLocal: true, isDefinition: true, variable: %struct.cheb_series_struct* @g2_cs)
!60 = distinct !DIGlobalVariable(name: "g2_dat", scope: !0, file: !1, line: 60, type: !61, isLocal: true, isDefinition: true, variable: [15 x double]* @g2_dat)
!61 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 960, align: 64, elements: !62)
!62 = !{!63}
!63 = !DISubrange(count: 15)
!64 = !{i32 2, !"Dwarf Version", i32 4}
!65 = !{i32 2, !"Debug Info Version", i32 3}
!66 = !{i32 1, !"PIC Level", i32 2}
!67 = !{!"clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)"}
!68 = distinct !DISubprogram(name: "gsl_sf_bessel_Y_temme", scope: !1, file: !1, line: 105, type: !69, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !79)
!69 = !DISubroutineType(types: !70)
!70 = !{!51, !71, !71, !72, !72}
!71 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !49)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64, align: 64)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !74, line: 41, baseType: !75)
!74 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/fpcc/gsl-2.5/specfunc")
!75 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !74, line: 37, size: 128, align: 64, elements: !76)
!76 = !{!77, !78}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !75, file: !74, line: 38, baseType: !49, size: 64, align: 64)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !75, file: !74, line: 39, baseType: !49, size: 64, align: 64, offset: 64)
!79 = !{}
!80 = !DILocalVariable(name: "nu", arg: 1, scope: !68, file: !1, line: 105, type: !71)
!81 = !DIExpression()
!82 = !DILocation(line: 105, column: 36, scope: !68)
!83 = !DILocalVariable(name: "x", arg: 2, scope: !68, file: !1, line: 105, type: !71)
!84 = !DILocation(line: 105, column: 53, scope: !68)
!85 = !DILocalVariable(name: "Ynu", arg: 3, scope: !68, file: !1, line: 106, type: !72)
!86 = !DILocation(line: 106, column: 39, scope: !68)
!87 = !DILocalVariable(name: "Ynup1", arg: 4, scope: !68, file: !1, line: 107, type: !72)
!88 = !DILocation(line: 107, column: 39, scope: !68)
!89 = !DILocalVariable(name: "max_iter", scope: !68, file: !1, line: 109, type: !90)
!90 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !51)
!91 = !DILocation(line: 109, column: 13, scope: !68)
!92 = !DILocalVariable(name: "half_x", scope: !68, file: !1, line: 111, type: !71)
!93 = !DILocation(line: 111, column: 16, scope: !68)
!94 = !DILocation(line: 111, column: 31, scope: !68)
!95 = !DILocation(line: 111, column: 29, scope: !68)
!96 = !DILocalVariable(name: "ln_half_x", scope: !68, file: !1, line: 112, type: !71)
!97 = !DILocation(line: 112, column: 16, scope: !68)
!98 = !DILocation(line: 112, column: 32, scope: !68)
!99 = !DILocation(line: 112, column: 28, scope: !68)
!100 = !DILocalVariable(name: "half_x_nu", scope: !68, file: !1, line: 113, type: !71)
!101 = !DILocation(line: 113, column: 16, scope: !68)
!102 = !DILocation(line: 113, column: 32, scope: !68)
!103 = !DILocation(line: 113, column: 35, scope: !68)
!104 = !DILocation(line: 113, column: 34, scope: !68)
!105 = !DILocation(line: 113, column: 28, scope: !68)
!106 = !DILocalVariable(name: "pi_nu", scope: !68, file: !1, line: 114, type: !71)
!107 = !DILocation(line: 114, column: 16, scope: !68)
!108 = !DILocation(line: 114, column: 33, scope: !68)
!109 = !DILocation(line: 114, column: 31, scope: !68)
!110 = !DILocalVariable(name: "alpha", scope: !68, file: !1, line: 115, type: !71)
!111 = !DILocation(line: 115, column: 16, scope: !68)
!112 = !DILocation(line: 115, column: 26, scope: !68)
!113 = !DILocation(line: 115, column: 32, scope: !68)
!114 = !DILocalVariable(name: "sigma", scope: !68, file: !1, line: 116, type: !71)
!115 = !DILocation(line: 116, column: 16, scope: !68)
!116 = !DILocation(line: 116, column: 27, scope: !68)
!117 = !DILocation(line: 116, column: 26, scope: !68)
!118 = !DILocation(line: 116, column: 32, scope: !68)
!119 = !DILocation(line: 116, column: 30, scope: !68)
!120 = !DILocalVariable(name: "sinrat", scope: !68, file: !1, line: 117, type: !71)
!121 = !DILocation(line: 117, column: 16, scope: !68)
!122 = !DILocation(line: 117, column: 32, scope: !68)
!123 = !DILocation(line: 117, column: 27, scope: !68)
!124 = !DILocation(line: 117, column: 39, scope: !68)
!125 = !DILocation(line: 117, column: 27, scope: !126)
!126 = !DILexicalBlockFile(scope: !68, file: !1, discriminator: 1)
!127 = !DILocation(line: 117, column: 65, scope: !128)
!128 = !DILexicalBlockFile(scope: !68, file: !1, discriminator: 2)
!129 = !DILocation(line: 117, column: 75, scope: !128)
!130 = !DILocation(line: 117, column: 71, scope: !128)
!131 = !DILocation(line: 117, column: 70, scope: !128)
!132 = !DILocation(line: 117, column: 27, scope: !128)
!133 = !DILocation(line: 117, column: 27, scope: !134)
!134 = !DILexicalBlockFile(scope: !68, file: !1, discriminator: 3)
!135 = !DILocation(line: 117, column: 16, scope: !134)
!136 = !DILocalVariable(name: "sinhrat", scope: !68, file: !1, line: 118, type: !71)
!137 = !DILocation(line: 118, column: 16, scope: !68)
!138 = !DILocation(line: 118, column: 32, scope: !68)
!139 = !DILocation(line: 118, column: 27, scope: !68)
!140 = !DILocation(line: 118, column: 39, scope: !68)
!141 = !DILocation(line: 118, column: 27, scope: !126)
!142 = !DILocation(line: 118, column: 70, scope: !128)
!143 = !DILocation(line: 118, column: 65, scope: !128)
!144 = !DILocation(line: 118, column: 77, scope: !128)
!145 = !DILocation(line: 118, column: 76, scope: !128)
!146 = !DILocation(line: 118, column: 27, scope: !128)
!147 = !DILocation(line: 118, column: 27, scope: !134)
!148 = !DILocation(line: 118, column: 16, scope: !134)
!149 = !DILocalVariable(name: "sinhalf", scope: !68, file: !1, line: 119, type: !71)
!150 = !DILocation(line: 119, column: 16, scope: !68)
!151 = !DILocation(line: 119, column: 32, scope: !68)
!152 = !DILocation(line: 119, column: 27, scope: !68)
!153 = !DILocation(line: 119, column: 39, scope: !68)
!154 = !DILocation(line: 119, column: 27, scope: !126)
!155 = !DILocation(line: 119, column: 69, scope: !128)
!156 = !DILocation(line: 119, column: 65, scope: !128)
!157 = !DILocation(line: 119, column: 76, scope: !128)
!158 = !DILocation(line: 119, column: 75, scope: !128)
!159 = !DILocation(line: 119, column: 27, scope: !128)
!160 = !DILocation(line: 119, column: 27, scope: !134)
!161 = !DILocation(line: 119, column: 16, scope: !134)
!162 = !DILocalVariable(name: "sin_sqr", scope: !68, file: !1, line: 120, type: !71)
!163 = !DILocation(line: 120, column: 16, scope: !68)
!164 = !DILocation(line: 120, column: 26, scope: !68)
!165 = !DILocation(line: 120, column: 28, scope: !68)
!166 = !DILocation(line: 120, column: 33, scope: !68)
!167 = !DILocation(line: 120, column: 38, scope: !68)
!168 = !DILocation(line: 120, column: 45, scope: !68)
!169 = !DILocation(line: 120, column: 43, scope: !68)
!170 = !DILocation(line: 120, column: 53, scope: !68)
!171 = !DILocation(line: 120, column: 52, scope: !68)
!172 = !DILocalVariable(name: "sum0", scope: !68, file: !1, line: 122, type: !49)
!173 = !DILocation(line: 122, column: 10, scope: !68)
!174 = !DILocalVariable(name: "sum1", scope: !68, file: !1, line: 122, type: !49)
!175 = !DILocation(line: 122, column: 16, scope: !68)
!176 = !DILocalVariable(name: "fk", scope: !68, file: !1, line: 123, type: !49)
!177 = !DILocation(line: 123, column: 10, scope: !68)
!178 = !DILocalVariable(name: "pk", scope: !68, file: !1, line: 123, type: !49)
!179 = !DILocation(line: 123, column: 14, scope: !68)
!180 = !DILocalVariable(name: "qk", scope: !68, file: !1, line: 123, type: !49)
!181 = !DILocation(line: 123, column: 18, scope: !68)
!182 = !DILocalVariable(name: "hk", scope: !68, file: !1, line: 123, type: !49)
!183 = !DILocation(line: 123, column: 22, scope: !68)
!184 = !DILocalVariable(name: "ck", scope: !68, file: !1, line: 123, type: !49)
!185 = !DILocation(line: 123, column: 26, scope: !68)
!186 = !DILocalVariable(name: "k", scope: !68, file: !1, line: 124, type: !51)
!187 = !DILocation(line: 124, column: 7, scope: !68)
!188 = !DILocalVariable(name: "stat_iter", scope: !68, file: !1, line: 125, type: !51)
!189 = !DILocation(line: 125, column: 7, scope: !68)
!190 = !DILocalVariable(name: "g_1pnu", scope: !68, file: !1, line: 127, type: !49)
!191 = !DILocation(line: 127, column: 10, scope: !68)
!192 = !DILocalVariable(name: "g_1mnu", scope: !68, file: !1, line: 127, type: !49)
!193 = !DILocation(line: 127, column: 18, scope: !68)
!194 = !DILocalVariable(name: "g1", scope: !68, file: !1, line: 127, type: !49)
!195 = !DILocation(line: 127, column: 26, scope: !68)
!196 = !DILocalVariable(name: "g2", scope: !68, file: !1, line: 127, type: !49)
!197 = !DILocation(line: 127, column: 30, scope: !68)
!198 = !DILocalVariable(name: "stat_g", scope: !68, file: !1, line: 128, type: !51)
!199 = !DILocation(line: 128, column: 7, scope: !68)
!200 = !DILocation(line: 128, column: 35, scope: !68)
!201 = !DILocation(line: 128, column: 16, scope: !68)
!202 = !DILocation(line: 130, column: 19, scope: !68)
!203 = !DILocation(line: 130, column: 17, scope: !68)
!204 = !DILocation(line: 130, column: 34, scope: !68)
!205 = !DILocation(line: 130, column: 29, scope: !68)
!206 = !DILocation(line: 130, column: 41, scope: !68)
!207 = !DILocation(line: 130, column: 40, scope: !68)
!208 = !DILocation(line: 130, column: 46, scope: !68)
!209 = !DILocation(line: 130, column: 54, scope: !68)
!210 = !DILocation(line: 130, column: 53, scope: !68)
!211 = !DILocation(line: 130, column: 64, scope: !68)
!212 = !DILocation(line: 130, column: 63, scope: !68)
!213 = !DILocation(line: 130, column: 44, scope: !68)
!214 = !DILocation(line: 130, column: 26, scope: !68)
!215 = !DILocation(line: 130, column: 6, scope: !68)
!216 = !DILocation(line: 131, column: 18, scope: !68)
!217 = !DILocation(line: 131, column: 17, scope: !68)
!218 = !DILocation(line: 131, column: 30, scope: !68)
!219 = !DILocation(line: 131, column: 28, scope: !68)
!220 = !DILocation(line: 131, column: 6, scope: !68)
!221 = !DILocation(line: 132, column: 18, scope: !68)
!222 = !DILocation(line: 132, column: 17, scope: !68)
!223 = !DILocation(line: 132, column: 30, scope: !68)
!224 = !DILocation(line: 132, column: 28, scope: !68)
!225 = !DILocation(line: 132, column: 6, scope: !68)
!226 = !DILocation(line: 133, column: 8, scope: !68)
!227 = !DILocation(line: 133, column: 6, scope: !68)
!228 = !DILocation(line: 134, column: 6, scope: !68)
!229 = !DILocation(line: 136, column: 10, scope: !68)
!230 = !DILocation(line: 136, column: 15, scope: !68)
!231 = !DILocation(line: 136, column: 25, scope: !68)
!232 = !DILocation(line: 136, column: 23, scope: !68)
!233 = !DILocation(line: 136, column: 13, scope: !68)
!234 = !DILocation(line: 136, column: 8, scope: !68)
!235 = !DILocation(line: 137, column: 10, scope: !68)
!236 = !DILocation(line: 137, column: 8, scope: !68)
!237 = !DILocation(line: 139, column: 3, scope: !68)
!238 = !DILocation(line: 139, column: 9, scope: !126)
!239 = !DILocation(line: 139, column: 11, scope: !126)
!240 = !DILocation(line: 139, column: 3, scope: !126)
!241 = !DILocalVariable(name: "del0", scope: !242, file: !1, line: 140, type: !49)
!242 = distinct !DILexicalBlock(scope: !68, file: !1, line: 139, column: 23)
!243 = !DILocation(line: 140, column: 12, scope: !242)
!244 = !DILocalVariable(name: "del1", scope: !242, file: !1, line: 141, type: !49)
!245 = !DILocation(line: 141, column: 12, scope: !242)
!246 = !DILocalVariable(name: "gk", scope: !242, file: !1, line: 142, type: !49)
!247 = !DILocation(line: 142, column: 12, scope: !242)
!248 = !DILocation(line: 143, column: 6, scope: !242)
!249 = !DILocation(line: 144, column: 12, scope: !242)
!250 = !DILocation(line: 144, column: 14, scope: !242)
!251 = !DILocation(line: 144, column: 13, scope: !242)
!252 = !DILocation(line: 144, column: 19, scope: !242)
!253 = !DILocation(line: 144, column: 17, scope: !242)
!254 = !DILocation(line: 144, column: 24, scope: !242)
!255 = !DILocation(line: 144, column: 22, scope: !242)
!256 = !DILocation(line: 144, column: 29, scope: !242)
!257 = !DILocation(line: 144, column: 31, scope: !242)
!258 = !DILocation(line: 144, column: 30, scope: !242)
!259 = !DILocation(line: 144, column: 33, scope: !242)
!260 = !DILocation(line: 144, column: 36, scope: !242)
!261 = !DILocation(line: 144, column: 35, scope: !242)
!262 = !DILocation(line: 144, column: 32, scope: !242)
!263 = !DILocation(line: 144, column: 27, scope: !242)
!264 = !DILocation(line: 144, column: 9, scope: !242)
!265 = !DILocation(line: 145, column: 12, scope: !242)
!266 = !DILocation(line: 145, column: 11, scope: !242)
!267 = !DILocation(line: 145, column: 19, scope: !242)
!268 = !DILocation(line: 145, column: 18, scope: !242)
!269 = !DILocation(line: 145, column: 26, scope: !242)
!270 = !DILocation(line: 145, column: 25, scope: !242)
!271 = !DILocation(line: 145, column: 8, scope: !242)
!272 = !DILocation(line: 146, column: 12, scope: !242)
!273 = !DILocation(line: 146, column: 16, scope: !242)
!274 = !DILocation(line: 146, column: 14, scope: !242)
!275 = !DILocation(line: 146, column: 8, scope: !242)
!276 = !DILocation(line: 147, column: 12, scope: !242)
!277 = !DILocation(line: 147, column: 16, scope: !242)
!278 = !DILocation(line: 147, column: 14, scope: !242)
!279 = !DILocation(line: 147, column: 8, scope: !242)
!280 = !DILocation(line: 148, column: 11, scope: !242)
!281 = !DILocation(line: 148, column: 16, scope: !242)
!282 = !DILocation(line: 148, column: 26, scope: !242)
!283 = !DILocation(line: 148, column: 24, scope: !242)
!284 = !DILocation(line: 148, column: 14, scope: !242)
!285 = !DILocation(line: 148, column: 9, scope: !242)
!286 = !DILocation(line: 149, column: 12, scope: !242)
!287 = !DILocation(line: 149, column: 11, scope: !242)
!288 = !DILocation(line: 149, column: 14, scope: !242)
!289 = !DILocation(line: 149, column: 13, scope: !242)
!290 = !DILocation(line: 149, column: 19, scope: !242)
!291 = !DILocation(line: 149, column: 17, scope: !242)
!292 = !DILocation(line: 149, column: 9, scope: !242)
!293 = !DILocation(line: 150, column: 12, scope: !242)
!294 = !DILocation(line: 150, column: 17, scope: !242)
!295 = !DILocation(line: 150, column: 15, scope: !242)
!296 = !DILocation(line: 150, column: 10, scope: !242)
!297 = !DILocation(line: 151, column: 12, scope: !242)
!298 = !DILocation(line: 151, column: 17, scope: !242)
!299 = !DILocation(line: 151, column: 15, scope: !242)
!300 = !DILocation(line: 151, column: 10, scope: !242)
!301 = !DILocation(line: 152, column: 13, scope: !242)
!302 = !DILocation(line: 152, column: 10, scope: !242)
!303 = !DILocation(line: 153, column: 13, scope: !242)
!304 = !DILocation(line: 153, column: 10, scope: !242)
!305 = !DILocation(line: 154, column: 13, scope: !306)
!306 = distinct !DILexicalBlock(scope: !242, file: !1, line: 154, column: 8)
!307 = !DILocation(line: 154, column: 8, scope: !306)
!308 = !DILocation(line: 154, column: 37, scope: !306)
!309 = !DILocation(line: 154, column: 32, scope: !310)
!310 = !DILexicalBlockFile(scope: !306, file: !1, discriminator: 2)
!311 = !DILocation(line: 154, column: 30, scope: !306)
!312 = !DILocation(line: 154, column: 24, scope: !306)
!313 = !DILocation(line: 154, column: 43, scope: !306)
!314 = !DILocation(line: 154, column: 19, scope: !306)
!315 = !DILocation(line: 154, column: 8, scope: !242)
!316 = !DILocation(line: 154, column: 61, scope: !317)
!317 = !DILexicalBlockFile(scope: !306, file: !1, discriminator: 1)
!318 = !DILocation(line: 139, column: 3, scope: !128)
!319 = distinct !{!319, !237}
!320 = !DILocation(line: 157, column: 17, scope: !68)
!321 = !DILocation(line: 157, column: 16, scope: !68)
!322 = !DILocation(line: 157, column: 3, scope: !68)
!323 = !DILocation(line: 157, column: 8, scope: !68)
!324 = !DILocation(line: 157, column: 14, scope: !68)
!325 = !DILocation(line: 158, column: 27, scope: !68)
!326 = !DILocation(line: 158, column: 26, scope: !68)
!327 = !DILocation(line: 158, column: 21, scope: !68)
!328 = !DILocation(line: 158, column: 30, scope: !68)
!329 = !DILocation(line: 158, column: 55, scope: !68)
!330 = !DILocation(line: 158, column: 60, scope: !68)
!331 = !DILocation(line: 158, column: 50, scope: !68)
!332 = !DILocation(line: 158, column: 48, scope: !68)
!333 = !DILocation(line: 158, column: 3, scope: !68)
!334 = !DILocation(line: 158, column: 8, scope: !68)
!335 = !DILocation(line: 158, column: 14, scope: !68)
!336 = !DILocation(line: 159, column: 17, scope: !68)
!337 = !DILocation(line: 159, column: 16, scope: !68)
!338 = !DILocation(line: 159, column: 22, scope: !68)
!339 = !DILocation(line: 159, column: 28, scope: !68)
!340 = !DILocation(line: 159, column: 27, scope: !68)
!341 = !DILocation(line: 159, column: 3, scope: !68)
!342 = !DILocation(line: 159, column: 10, scope: !68)
!343 = !DILocation(line: 159, column: 14, scope: !68)
!344 = !DILocation(line: 160, column: 27, scope: !68)
!345 = !DILocation(line: 160, column: 26, scope: !68)
!346 = !DILocation(line: 160, column: 21, scope: !68)
!347 = !DILocation(line: 160, column: 30, scope: !68)
!348 = !DILocation(line: 160, column: 55, scope: !68)
!349 = !DILocation(line: 160, column: 62, scope: !68)
!350 = !DILocation(line: 160, column: 50, scope: !68)
!351 = !DILocation(line: 160, column: 48, scope: !68)
!352 = !DILocation(line: 160, column: 3, scope: !68)
!353 = !DILocation(line: 160, column: 10, scope: !68)
!354 = !DILocation(line: 160, column: 14, scope: !68)
!355 = !DILocation(line: 162, column: 17, scope: !68)
!356 = !DILocation(line: 162, column: 19, scope: !68)
!357 = !DILocation(line: 162, column: 13, scope: !68)
!358 = !DILocation(line: 163, column: 10, scope: !68)
!359 = !DILocation(line: 163, column: 10, scope: !126)
!360 = !DILocation(line: 163, column: 10, scope: !128)
!361 = !DILocation(line: 163, column: 10, scope: !134)
!362 = !DILocation(line: 163, column: 10, scope: !363)
!363 = !DILexicalBlockFile(scope: !68, file: !1, discriminator: 4)
!364 = !DILocation(line: 163, column: 10, scope: !365)
!365 = !DILexicalBlockFile(scope: !68, file: !1, discriminator: 5)
!366 = !DILocation(line: 163, column: 10, scope: !367)
!367 = !DILexicalBlockFile(scope: !68, file: !1, discriminator: 6)
!368 = !DILocation(line: 163, column: 3, scope: !367)
!369 = distinct !DISubprogram(name: "gsl_sf_temme_gamma", scope: !1, file: !1, line: 88, type: !370, isLocal: true, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !79)
!370 = !DISubroutineType(types: !371)
!371 = !{!51, !71, !48, !48, !48, !48}
!372 = !DILocalVariable(name: "nu", arg: 1, scope: !369, file: !1, line: 88, type: !71)
!373 = !DILocation(line: 88, column: 33, scope: !369)
!374 = !DILocalVariable(name: "g_1pnu", arg: 2, scope: !369, file: !1, line: 88, type: !48)
!375 = !DILocation(line: 88, column: 46, scope: !369)
!376 = !DILocalVariable(name: "g_1mnu", arg: 3, scope: !369, file: !1, line: 88, type: !48)
!377 = !DILocation(line: 88, column: 63, scope: !369)
!378 = !DILocalVariable(name: "g1", arg: 4, scope: !369, file: !1, line: 88, type: !48)
!379 = !DILocation(line: 88, column: 80, scope: !369)
!380 = !DILocalVariable(name: "g2", arg: 5, scope: !369, file: !1, line: 88, type: !48)
!381 = !DILocation(line: 88, column: 93, scope: !369)
!382 = !DILocalVariable(name: "anu", scope: !369, file: !1, line: 90, type: !71)
!383 = !DILocation(line: 90, column: 16, scope: !369)
!384 = !DILocation(line: 90, column: 27, scope: !369)
!385 = !DILocation(line: 90, column: 22, scope: !369)
!386 = !DILocalVariable(name: "x", scope: !369, file: !1, line: 91, type: !71)
!387 = !DILocation(line: 91, column: 16, scope: !369)
!388 = !DILocation(line: 91, column: 24, scope: !369)
!389 = !DILocation(line: 91, column: 23, scope: !369)
!390 = !DILocation(line: 91, column: 28, scope: !369)
!391 = !DILocalVariable(name: "r_g1", scope: !369, file: !1, line: 92, type: !73)
!392 = !DILocation(line: 92, column: 17, scope: !369)
!393 = !DILocalVariable(name: "r_g2", scope: !369, file: !1, line: 93, type: !73)
!394 = !DILocation(line: 93, column: 17, scope: !369)
!395 = !DILocation(line: 94, column: 23, scope: !369)
!396 = !DILocation(line: 94, column: 3, scope: !369)
!397 = !DILocation(line: 95, column: 23, scope: !369)
!398 = !DILocation(line: 95, column: 3, scope: !369)
!399 = !DILocation(line: 96, column: 14, scope: !369)
!400 = !DILocation(line: 96, column: 4, scope: !369)
!401 = !DILocation(line: 96, column: 7, scope: !369)
!402 = !DILocation(line: 97, column: 14, scope: !369)
!403 = !DILocation(line: 97, column: 4, scope: !369)
!404 = !DILocation(line: 97, column: 7, scope: !369)
!405 = !DILocation(line: 98, column: 23, scope: !369)
!406 = !DILocation(line: 98, column: 29, scope: !369)
!407 = !DILocation(line: 98, column: 39, scope: !369)
!408 = !DILocation(line: 98, column: 32, scope: !369)
!409 = !DILocation(line: 98, column: 27, scope: !369)
!410 = !DILocation(line: 98, column: 16, scope: !369)
!411 = !DILocation(line: 98, column: 4, scope: !369)
!412 = !DILocation(line: 98, column: 11, scope: !369)
!413 = !DILocation(line: 99, column: 23, scope: !369)
!414 = !DILocation(line: 99, column: 29, scope: !369)
!415 = !DILocation(line: 99, column: 39, scope: !369)
!416 = !DILocation(line: 99, column: 32, scope: !369)
!417 = !DILocation(line: 99, column: 27, scope: !369)
!418 = !DILocation(line: 99, column: 16, scope: !369)
!419 = !DILocation(line: 99, column: 4, scope: !369)
!420 = !DILocation(line: 99, column: 11, scope: !369)
!421 = !DILocation(line: 100, column: 3, scope: !369)
!422 = distinct !DISubprogram(name: "gsl_sf_bessel_K_scaled_temme", scope: !1, file: !1, line: 168, type: !423, isLocal: false, isDefinition: true, scopeLine: 170, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !79)
!423 = !DISubroutineType(types: !424)
!424 = !{!51, !71, !71, !48, !48, !48}
!425 = !DILocalVariable(name: "nu", arg: 1, scope: !422, file: !1, line: 168, type: !71)
!426 = !DILocation(line: 168, column: 43, scope: !422)
!427 = !DILocalVariable(name: "x", arg: 2, scope: !422, file: !1, line: 168, type: !71)
!428 = !DILocation(line: 168, column: 60, scope: !422)
!429 = !DILocalVariable(name: "K_nu", arg: 3, scope: !422, file: !1, line: 169, type: !48)
!430 = !DILocation(line: 169, column: 39, scope: !422)
!431 = !DILocalVariable(name: "K_nup1", arg: 4, scope: !422, file: !1, line: 169, type: !48)
!432 = !DILocation(line: 169, column: 54, scope: !422)
!433 = !DILocalVariable(name: "Kp_nu", arg: 5, scope: !422, file: !1, line: 169, type: !48)
!434 = !DILocation(line: 169, column: 71, scope: !422)
!435 = !DILocalVariable(name: "max_iter", scope: !422, file: !1, line: 171, type: !90)
!436 = !DILocation(line: 171, column: 13, scope: !422)
!437 = !DILocalVariable(name: "half_x", scope: !422, file: !1, line: 173, type: !71)
!438 = !DILocation(line: 173, column: 16, scope: !422)
!439 = !DILocation(line: 173, column: 34, scope: !422)
!440 = !DILocation(line: 173, column: 32, scope: !422)
!441 = !DILocalVariable(name: "ln_half_x", scope: !422, file: !1, line: 174, type: !71)
!442 = !DILocation(line: 174, column: 16, scope: !422)
!443 = !DILocation(line: 174, column: 32, scope: !422)
!444 = !DILocation(line: 174, column: 28, scope: !422)
!445 = !DILocalVariable(name: "half_x_nu", scope: !422, file: !1, line: 175, type: !71)
!446 = !DILocation(line: 175, column: 16, scope: !422)
!447 = !DILocation(line: 175, column: 32, scope: !422)
!448 = !DILocation(line: 175, column: 35, scope: !422)
!449 = !DILocation(line: 175, column: 34, scope: !422)
!450 = !DILocation(line: 175, column: 28, scope: !422)
!451 = !DILocalVariable(name: "pi_nu", scope: !422, file: !1, line: 176, type: !71)
!452 = !DILocation(line: 176, column: 16, scope: !422)
!453 = !DILocation(line: 176, column: 33, scope: !422)
!454 = !DILocation(line: 176, column: 31, scope: !422)
!455 = !DILocalVariable(name: "sigma", scope: !422, file: !1, line: 177, type: !71)
!456 = !DILocation(line: 177, column: 16, scope: !422)
!457 = !DILocation(line: 177, column: 27, scope: !422)
!458 = !DILocation(line: 177, column: 26, scope: !422)
!459 = !DILocation(line: 177, column: 32, scope: !422)
!460 = !DILocation(line: 177, column: 30, scope: !422)
!461 = !DILocalVariable(name: "sinrat", scope: !422, file: !1, line: 178, type: !71)
!462 = !DILocation(line: 178, column: 16, scope: !422)
!463 = !DILocation(line: 178, column: 32, scope: !422)
!464 = !DILocation(line: 178, column: 27, scope: !422)
!465 = !DILocation(line: 178, column: 39, scope: !422)
!466 = !DILocation(line: 178, column: 27, scope: !467)
!467 = !DILexicalBlockFile(scope: !422, file: !1, discriminator: 1)
!468 = !DILocation(line: 178, column: 65, scope: !469)
!469 = !DILexicalBlockFile(scope: !422, file: !1, discriminator: 2)
!470 = !DILocation(line: 178, column: 75, scope: !469)
!471 = !DILocation(line: 178, column: 71, scope: !469)
!472 = !DILocation(line: 178, column: 70, scope: !469)
!473 = !DILocation(line: 178, column: 27, scope: !469)
!474 = !DILocation(line: 178, column: 27, scope: !475)
!475 = !DILexicalBlockFile(scope: !422, file: !1, discriminator: 3)
!476 = !DILocation(line: 178, column: 16, scope: !475)
!477 = !DILocalVariable(name: "sinhrat", scope: !422, file: !1, line: 179, type: !71)
!478 = !DILocation(line: 179, column: 16, scope: !422)
!479 = !DILocation(line: 179, column: 32, scope: !422)
!480 = !DILocation(line: 179, column: 27, scope: !422)
!481 = !DILocation(line: 179, column: 39, scope: !422)
!482 = !DILocation(line: 179, column: 27, scope: !467)
!483 = !DILocation(line: 179, column: 70, scope: !469)
!484 = !DILocation(line: 179, column: 65, scope: !469)
!485 = !DILocation(line: 179, column: 77, scope: !469)
!486 = !DILocation(line: 179, column: 76, scope: !469)
!487 = !DILocation(line: 179, column: 27, scope: !469)
!488 = !DILocation(line: 179, column: 27, scope: !475)
!489 = !DILocation(line: 179, column: 16, scope: !475)
!490 = !DILocalVariable(name: "ex", scope: !422, file: !1, line: 180, type: !71)
!491 = !DILocation(line: 180, column: 16, scope: !422)
!492 = !DILocation(line: 180, column: 25, scope: !422)
!493 = !DILocation(line: 180, column: 21, scope: !422)
!494 = !DILocalVariable(name: "sum0", scope: !422, file: !1, line: 182, type: !49)
!495 = !DILocation(line: 182, column: 10, scope: !422)
!496 = !DILocalVariable(name: "sum1", scope: !422, file: !1, line: 182, type: !49)
!497 = !DILocation(line: 182, column: 16, scope: !422)
!498 = !DILocalVariable(name: "fk", scope: !422, file: !1, line: 183, type: !49)
!499 = !DILocation(line: 183, column: 10, scope: !422)
!500 = !DILocalVariable(name: "pk", scope: !422, file: !1, line: 183, type: !49)
!501 = !DILocation(line: 183, column: 14, scope: !422)
!502 = !DILocalVariable(name: "qk", scope: !422, file: !1, line: 183, type: !49)
!503 = !DILocation(line: 183, column: 18, scope: !422)
!504 = !DILocalVariable(name: "hk", scope: !422, file: !1, line: 183, type: !49)
!505 = !DILocation(line: 183, column: 22, scope: !422)
!506 = !DILocalVariable(name: "ck", scope: !422, file: !1, line: 183, type: !49)
!507 = !DILocation(line: 183, column: 26, scope: !422)
!508 = !DILocalVariable(name: "k", scope: !422, file: !1, line: 184, type: !51)
!509 = !DILocation(line: 184, column: 7, scope: !422)
!510 = !DILocalVariable(name: "stat_iter", scope: !422, file: !1, line: 185, type: !51)
!511 = !DILocation(line: 185, column: 7, scope: !422)
!512 = !DILocalVariable(name: "g_1pnu", scope: !422, file: !1, line: 187, type: !49)
!513 = !DILocation(line: 187, column: 10, scope: !422)
!514 = !DILocalVariable(name: "g_1mnu", scope: !422, file: !1, line: 187, type: !49)
!515 = !DILocation(line: 187, column: 18, scope: !422)
!516 = !DILocalVariable(name: "g1", scope: !422, file: !1, line: 187, type: !49)
!517 = !DILocation(line: 187, column: 26, scope: !422)
!518 = !DILocalVariable(name: "g2", scope: !422, file: !1, line: 187, type: !49)
!519 = !DILocation(line: 187, column: 30, scope: !422)
!520 = !DILocalVariable(name: "stat_g", scope: !422, file: !1, line: 188, type: !51)
!521 = !DILocation(line: 188, column: 7, scope: !422)
!522 = !DILocation(line: 188, column: 35, scope: !422)
!523 = !DILocation(line: 188, column: 16, scope: !422)
!524 = !DILocation(line: 190, column: 8, scope: !422)
!525 = !DILocation(line: 190, column: 23, scope: !422)
!526 = !DILocation(line: 190, column: 18, scope: !422)
!527 = !DILocation(line: 190, column: 30, scope: !422)
!528 = !DILocation(line: 190, column: 29, scope: !422)
!529 = !DILocation(line: 190, column: 35, scope: !422)
!530 = !DILocation(line: 190, column: 43, scope: !422)
!531 = !DILocation(line: 190, column: 42, scope: !422)
!532 = !DILocation(line: 190, column: 53, scope: !422)
!533 = !DILocation(line: 190, column: 52, scope: !422)
!534 = !DILocation(line: 190, column: 33, scope: !422)
!535 = !DILocation(line: 190, column: 15, scope: !422)
!536 = !DILocation(line: 190, column: 6, scope: !422)
!537 = !DILocation(line: 191, column: 12, scope: !422)
!538 = !DILocation(line: 191, column: 11, scope: !422)
!539 = !DILocation(line: 191, column: 24, scope: !422)
!540 = !DILocation(line: 191, column: 22, scope: !422)
!541 = !DILocation(line: 191, column: 6, scope: !422)
!542 = !DILocation(line: 192, column: 12, scope: !422)
!543 = !DILocation(line: 192, column: 11, scope: !422)
!544 = !DILocation(line: 192, column: 24, scope: !422)
!545 = !DILocation(line: 192, column: 22, scope: !422)
!546 = !DILocation(line: 192, column: 6, scope: !422)
!547 = !DILocation(line: 193, column: 8, scope: !422)
!548 = !DILocation(line: 193, column: 6, scope: !422)
!549 = !DILocation(line: 194, column: 6, scope: !422)
!550 = !DILocation(line: 195, column: 10, scope: !422)
!551 = !DILocation(line: 195, column: 8, scope: !422)
!552 = !DILocation(line: 196, column: 10, scope: !422)
!553 = !DILocation(line: 196, column: 8, scope: !422)
!554 = !DILocation(line: 197, column: 3, scope: !422)
!555 = !DILocation(line: 197, column: 9, scope: !467)
!556 = !DILocation(line: 197, column: 11, scope: !467)
!557 = !DILocation(line: 197, column: 3, scope: !467)
!558 = !DILocalVariable(name: "del0", scope: !559, file: !1, line: 198, type: !49)
!559 = distinct !DILexicalBlock(scope: !422, file: !1, line: 197, column: 23)
!560 = !DILocation(line: 198, column: 12, scope: !559)
!561 = !DILocalVariable(name: "del1", scope: !559, file: !1, line: 199, type: !49)
!562 = !DILocation(line: 199, column: 12, scope: !559)
!563 = !DILocation(line: 200, column: 6, scope: !559)
!564 = !DILocation(line: 201, column: 12, scope: !559)
!565 = !DILocation(line: 201, column: 14, scope: !559)
!566 = !DILocation(line: 201, column: 13, scope: !559)
!567 = !DILocation(line: 201, column: 19, scope: !559)
!568 = !DILocation(line: 201, column: 17, scope: !559)
!569 = !DILocation(line: 201, column: 24, scope: !559)
!570 = !DILocation(line: 201, column: 22, scope: !559)
!571 = !DILocation(line: 201, column: 29, scope: !559)
!572 = !DILocation(line: 201, column: 31, scope: !559)
!573 = !DILocation(line: 201, column: 30, scope: !559)
!574 = !DILocation(line: 201, column: 33, scope: !559)
!575 = !DILocation(line: 201, column: 36, scope: !559)
!576 = !DILocation(line: 201, column: 35, scope: !559)
!577 = !DILocation(line: 201, column: 32, scope: !559)
!578 = !DILocation(line: 201, column: 27, scope: !559)
!579 = !DILocation(line: 201, column: 9, scope: !559)
!580 = !DILocation(line: 202, column: 11, scope: !559)
!581 = !DILocation(line: 202, column: 18, scope: !559)
!582 = !DILocation(line: 202, column: 17, scope: !559)
!583 = !DILocation(line: 202, column: 25, scope: !559)
!584 = !DILocation(line: 202, column: 24, scope: !559)
!585 = !DILocation(line: 202, column: 8, scope: !559)
!586 = !DILocation(line: 203, column: 12, scope: !559)
!587 = !DILocation(line: 203, column: 16, scope: !559)
!588 = !DILocation(line: 203, column: 14, scope: !559)
!589 = !DILocation(line: 203, column: 8, scope: !559)
!590 = !DILocation(line: 204, column: 12, scope: !559)
!591 = !DILocation(line: 204, column: 16, scope: !559)
!592 = !DILocation(line: 204, column: 14, scope: !559)
!593 = !DILocation(line: 204, column: 8, scope: !559)
!594 = !DILocation(line: 205, column: 12, scope: !559)
!595 = !DILocation(line: 205, column: 11, scope: !559)
!596 = !DILocation(line: 205, column: 14, scope: !559)
!597 = !DILocation(line: 205, column: 13, scope: !559)
!598 = !DILocation(line: 205, column: 19, scope: !559)
!599 = !DILocation(line: 205, column: 17, scope: !559)
!600 = !DILocation(line: 205, column: 9, scope: !559)
!601 = !DILocation(line: 206, column: 12, scope: !559)
!602 = !DILocation(line: 206, column: 17, scope: !559)
!603 = !DILocation(line: 206, column: 15, scope: !559)
!604 = !DILocation(line: 206, column: 10, scope: !559)
!605 = !DILocation(line: 207, column: 12, scope: !559)
!606 = !DILocation(line: 207, column: 17, scope: !559)
!607 = !DILocation(line: 207, column: 15, scope: !559)
!608 = !DILocation(line: 207, column: 10, scope: !559)
!609 = !DILocation(line: 208, column: 13, scope: !559)
!610 = !DILocation(line: 208, column: 10, scope: !559)
!611 = !DILocation(line: 209, column: 13, scope: !559)
!612 = !DILocation(line: 209, column: 10, scope: !559)
!613 = !DILocation(line: 210, column: 13, scope: !614)
!614 = distinct !DILexicalBlock(scope: !559, file: !1, line: 210, column: 8)
!615 = !DILocation(line: 210, column: 8, scope: !614)
!616 = !DILocation(line: 210, column: 30, scope: !614)
!617 = !DILocation(line: 210, column: 25, scope: !618)
!618 = !DILexicalBlockFile(scope: !614, file: !1, discriminator: 2)
!619 = !DILocation(line: 210, column: 24, scope: !614)
!620 = !DILocation(line: 210, column: 35, scope: !614)
!621 = !DILocation(line: 210, column: 19, scope: !614)
!622 = !DILocation(line: 210, column: 8, scope: !559)
!623 = !DILocation(line: 210, column: 53, scope: !624)
!624 = !DILexicalBlockFile(scope: !614, file: !1, discriminator: 1)
!625 = !DILocation(line: 197, column: 3, scope: !469)
!626 = distinct !{!626, !554}
!627 = !DILocation(line: 213, column: 13, scope: !422)
!628 = !DILocation(line: 213, column: 20, scope: !422)
!629 = !DILocation(line: 213, column: 18, scope: !422)
!630 = !DILocation(line: 213, column: 4, scope: !422)
!631 = !DILocation(line: 213, column: 11, scope: !422)
!632 = !DILocation(line: 214, column: 13, scope: !422)
!633 = !DILocation(line: 214, column: 18, scope: !422)
!634 = !DILocation(line: 214, column: 24, scope: !422)
!635 = !DILocation(line: 214, column: 23, scope: !422)
!636 = !DILocation(line: 214, column: 28, scope: !422)
!637 = !DILocation(line: 214, column: 26, scope: !422)
!638 = !DILocation(line: 214, column: 4, scope: !422)
!639 = !DILocation(line: 214, column: 11, scope: !422)
!640 = !DILocation(line: 215, column: 16, scope: !422)
!641 = !DILocation(line: 215, column: 15, scope: !422)
!642 = !DILocation(line: 215, column: 13, scope: !422)
!643 = !DILocation(line: 215, column: 25, scope: !422)
!644 = !DILocation(line: 215, column: 28, scope: !422)
!645 = !DILocation(line: 215, column: 27, scope: !422)
!646 = !DILocation(line: 215, column: 33, scope: !422)
!647 = !DILocation(line: 215, column: 32, scope: !422)
!648 = !DILocation(line: 215, column: 30, scope: !422)
!649 = !DILocation(line: 215, column: 23, scope: !422)
!650 = !DILocation(line: 215, column: 4, scope: !422)
!651 = !DILocation(line: 215, column: 11, scope: !422)
!652 = !DILocation(line: 217, column: 17, scope: !422)
!653 = !DILocation(line: 217, column: 19, scope: !422)
!654 = !DILocation(line: 217, column: 13, scope: !422)
!655 = !DILocation(line: 218, column: 10, scope: !422)
!656 = !DILocation(line: 218, column: 10, scope: !467)
!657 = !DILocation(line: 218, column: 10, scope: !469)
!658 = !DILocation(line: 218, column: 10, scope: !475)
!659 = !DILocation(line: 218, column: 10, scope: !660)
!660 = !DILexicalBlockFile(scope: !422, file: !1, discriminator: 4)
!661 = !DILocation(line: 218, column: 10, scope: !662)
!662 = !DILexicalBlockFile(scope: !422, file: !1, discriminator: 5)
!663 = !DILocation(line: 218, column: 10, scope: !664)
!664 = !DILexicalBlockFile(scope: !422, file: !1, discriminator: 6)
!665 = !DILocation(line: 218, column: 3, scope: !664)
!666 = distinct !DISubprogram(name: "cheb_eval_e", scope: !667, file: !667, line: 3, type: !668, isLocal: true, isDefinition: true, scopeLine: 6, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !79)
!667 = !DIFile(filename: "./cheb_eval.c", directory: "/fpcc/gsl-2.5/specfunc")
!668 = !DISubroutineType(types: !669)
!669 = !{!51, !670, !71, !72}
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64, align: 64)
!671 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!672 = !DILocalVariable(name: "cs", arg: 1, scope: !666, file: !667, line: 3, type: !670)
!673 = !DILocation(line: 3, column: 33, scope: !666)
!674 = !DILocalVariable(name: "x", arg: 2, scope: !666, file: !667, line: 4, type: !71)
!675 = !DILocation(line: 4, column: 26, scope: !666)
!676 = !DILocalVariable(name: "result", arg: 3, scope: !666, file: !667, line: 5, type: !72)
!677 = !DILocation(line: 5, column: 29, scope: !666)
!678 = !DILocalVariable(name: "j", scope: !666, file: !667, line: 7, type: !51)
!679 = !DILocation(line: 7, column: 7, scope: !666)
!680 = !DILocalVariable(name: "d", scope: !666, file: !667, line: 8, type: !49)
!681 = !DILocation(line: 8, column: 10, scope: !666)
!682 = !DILocalVariable(name: "dd", scope: !666, file: !667, line: 9, type: !49)
!683 = !DILocation(line: 9, column: 10, scope: !666)
!684 = !DILocalVariable(name: "y", scope: !666, file: !667, line: 11, type: !49)
!685 = !DILocation(line: 11, column: 10, scope: !666)
!686 = !DILocation(line: 11, column: 20, scope: !666)
!687 = !DILocation(line: 11, column: 19, scope: !666)
!688 = !DILocation(line: 11, column: 24, scope: !666)
!689 = !DILocation(line: 11, column: 28, scope: !666)
!690 = !DILocation(line: 11, column: 22, scope: !666)
!691 = !DILocation(line: 11, column: 32, scope: !666)
!692 = !DILocation(line: 11, column: 36, scope: !666)
!693 = !DILocation(line: 11, column: 30, scope: !666)
!694 = !DILocation(line: 11, column: 42, scope: !666)
!695 = !DILocation(line: 11, column: 46, scope: !666)
!696 = !DILocation(line: 11, column: 50, scope: !666)
!697 = !DILocation(line: 11, column: 54, scope: !666)
!698 = !DILocation(line: 11, column: 48, scope: !666)
!699 = !DILocation(line: 11, column: 39, scope: !666)
!700 = !DILocalVariable(name: "y2", scope: !666, file: !667, line: 12, type: !49)
!701 = !DILocation(line: 12, column: 10, scope: !666)
!702 = !DILocation(line: 12, column: 21, scope: !666)
!703 = !DILocation(line: 12, column: 19, scope: !666)
!704 = !DILocalVariable(name: "e", scope: !666, file: !667, line: 14, type: !49)
!705 = !DILocation(line: 14, column: 10, scope: !666)
!706 = !DILocation(line: 16, column: 11, scope: !707)
!707 = distinct !DILexicalBlock(scope: !666, file: !667, line: 16, column: 3)
!708 = !DILocation(line: 16, column: 15, scope: !707)
!709 = !DILocation(line: 16, column: 9, scope: !707)
!710 = !DILocation(line: 16, column: 7, scope: !707)
!711 = !DILocation(line: 16, column: 22, scope: !712)
!712 = !DILexicalBlockFile(scope: !713, file: !667, discriminator: 1)
!713 = distinct !DILexicalBlock(scope: !707, file: !667, line: 16, column: 3)
!714 = !DILocation(line: 16, column: 23, scope: !712)
!715 = !DILocation(line: 16, column: 3, scope: !712)
!716 = !DILocalVariable(name: "temp", scope: !717, file: !667, line: 17, type: !49)
!717 = distinct !DILexicalBlock(scope: !713, file: !667, line: 16, column: 33)
!718 = !DILocation(line: 17, column: 12, scope: !717)
!719 = !DILocation(line: 17, column: 19, scope: !717)
!720 = !DILocation(line: 18, column: 9, scope: !717)
!721 = !DILocation(line: 18, column: 12, scope: !717)
!722 = !DILocation(line: 18, column: 11, scope: !717)
!723 = !DILocation(line: 18, column: 16, scope: !717)
!724 = !DILocation(line: 18, column: 14, scope: !717)
!725 = !DILocation(line: 18, column: 27, scope: !717)
!726 = !DILocation(line: 18, column: 21, scope: !717)
!727 = !DILocation(line: 18, column: 25, scope: !717)
!728 = !DILocation(line: 18, column: 19, scope: !717)
!729 = !DILocation(line: 18, column: 7, scope: !717)
!730 = !DILocation(line: 19, column: 15, scope: !717)
!731 = !DILocation(line: 19, column: 18, scope: !717)
!732 = !DILocation(line: 19, column: 17, scope: !717)
!733 = !DILocation(line: 19, column: 10, scope: !717)
!734 = !DILocation(line: 19, column: 31, scope: !717)
!735 = !DILocation(line: 19, column: 26, scope: !736)
!736 = !DILexicalBlockFile(scope: !717, file: !667, discriminator: 1)
!737 = !DILocation(line: 19, column: 24, scope: !717)
!738 = !DILocation(line: 19, column: 48, scope: !717)
!739 = !DILocation(line: 19, column: 42, scope: !717)
!740 = !DILocation(line: 19, column: 46, scope: !717)
!741 = !DILocation(line: 19, column: 37, scope: !742)
!742 = !DILexicalBlockFile(scope: !717, file: !667, discriminator: 2)
!743 = !DILocation(line: 19, column: 35, scope: !717)
!744 = !DILocation(line: 19, column: 7, scope: !717)
!745 = !DILocation(line: 20, column: 10, scope: !717)
!746 = !DILocation(line: 20, column: 8, scope: !717)
!747 = !DILocation(line: 21, column: 3, scope: !717)
!748 = !DILocation(line: 16, column: 29, scope: !749)
!749 = !DILexicalBlockFile(scope: !713, file: !667, discriminator: 2)
!750 = !DILocation(line: 16, column: 3, scope: !749)
!751 = distinct !{!751, !752}
!752 = !DILocation(line: 16, column: 3, scope: !666)
!753 = !DILocalVariable(name: "temp", scope: !754, file: !667, line: 24, type: !49)
!754 = distinct !DILexicalBlock(scope: !666, file: !667, line: 23, column: 3)
!755 = !DILocation(line: 24, column: 12, scope: !754)
!756 = !DILocation(line: 24, column: 19, scope: !754)
!757 = !DILocation(line: 25, column: 9, scope: !754)
!758 = !DILocation(line: 25, column: 11, scope: !754)
!759 = !DILocation(line: 25, column: 10, scope: !754)
!760 = !DILocation(line: 25, column: 15, scope: !754)
!761 = !DILocation(line: 25, column: 13, scope: !754)
!762 = !DILocation(line: 25, column: 26, scope: !754)
!763 = !DILocation(line: 25, column: 30, scope: !754)
!764 = !DILocation(line: 25, column: 24, scope: !754)
!765 = !DILocation(line: 25, column: 18, scope: !754)
!766 = !DILocation(line: 25, column: 7, scope: !754)
!767 = !DILocation(line: 26, column: 15, scope: !754)
!768 = !DILocation(line: 26, column: 17, scope: !754)
!769 = !DILocation(line: 26, column: 16, scope: !754)
!770 = !DILocation(line: 26, column: 10, scope: !754)
!771 = !DILocation(line: 26, column: 30, scope: !754)
!772 = !DILocation(line: 26, column: 25, scope: !773)
!773 = !DILexicalBlockFile(scope: !754, file: !667, discriminator: 1)
!774 = !DILocation(line: 26, column: 23, scope: !754)
!775 = !DILocation(line: 26, column: 47, scope: !754)
!776 = !DILocation(line: 26, column: 51, scope: !754)
!777 = !DILocation(line: 26, column: 42, scope: !778)
!778 = !DILexicalBlockFile(scope: !754, file: !667, discriminator: 2)
!779 = !DILocation(line: 26, column: 40, scope: !754)
!780 = !DILocation(line: 26, column: 34, scope: !754)
!781 = !DILocation(line: 26, column: 7, scope: !754)
!782 = !DILocation(line: 29, column: 17, scope: !666)
!783 = !DILocation(line: 29, column: 3, scope: !666)
!784 = !DILocation(line: 29, column: 11, scope: !666)
!785 = !DILocation(line: 29, column: 15, scope: !666)
!786 = !DILocation(line: 30, column: 35, scope: !666)
!787 = !DILocation(line: 30, column: 33, scope: !666)
!788 = !DILocation(line: 30, column: 50, scope: !666)
!789 = !DILocation(line: 30, column: 54, scope: !666)
!790 = !DILocation(line: 30, column: 44, scope: !666)
!791 = !DILocation(line: 30, column: 48, scope: !666)
!792 = !DILocation(line: 30, column: 39, scope: !666)
!793 = !DILocation(line: 30, column: 37, scope: !666)
!794 = !DILocation(line: 30, column: 3, scope: !666)
!795 = !DILocation(line: 30, column: 11, scope: !666)
!796 = !DILocation(line: 30, column: 15, scope: !666)
!797 = !DILocation(line: 32, column: 3, scope: !666)
