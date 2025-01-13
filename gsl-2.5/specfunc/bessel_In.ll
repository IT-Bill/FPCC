; ModuleID = 'bessel_In.c'
source_filename = "bessel_In.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsl_sf_result_struct = type { double, double }

@.str = private unnamed_addr constant [13 x i8] c"domain error\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"bessel_In.c\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"overflow\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"gsl_sf_bessel_In_scaled_e(n, x, &result)\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"gsl_sf_bessel_In_e(n, x, &result)\00", align 1

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_bessel_In_scaled_e(i32, double, %struct.gsl_sf_result_struct*) #0 !dbg !48 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca %struct.gsl_sf_result_struct*, align 8
  %8 = alloca double, align 8
  %9 = alloca %struct.gsl_sf_result_struct, align 8
  %10 = alloca double, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.gsl_sf_result_struct, align 8
  %13 = alloca i32, align 4
  %14 = alloca double, align 8
  %15 = alloca i32, align 4
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.gsl_sf_result_struct, align 8
  %23 = alloca %struct.gsl_sf_result_struct, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca double, align 8
  %27 = alloca double, align 8
  %28 = alloca double, align 8
  %29 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !60, metadata !61), !dbg !62
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !63, metadata !61), !dbg !64
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %7, metadata !65, metadata !61), !dbg !66
  call void @llvm.dbg.declare(metadata double* %8, metadata !67, metadata !61), !dbg !68
  %30 = load double, double* %6, align 8, !dbg !69
  %31 = call double @fabs(double %30) #1, !dbg !70
  store double %31, double* %8, align 8, !dbg !68
  %32 = load i32, i32* %5, align 4, !dbg !71
  %33 = call i32 @abs(i32 %32) #1, !dbg !72
  store i32 %33, i32* %5, align 4, !dbg !73
  %34 = load i32, i32* %5, align 4, !dbg !74
  %35 = icmp eq i32 %34, 0, !dbg !76
  br i1 %35, label %36, label %40, !dbg !77

; <label>:36:                                     ; preds = %3
  %37 = load double, double* %6, align 8, !dbg !78
  %38 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !80
  %39 = call i32 @gsl_sf_bessel_I0_scaled_e(double %37, %struct.gsl_sf_result_struct* %38), !dbg !81
  store i32 %39, i32* %4, align 4, !dbg !82
  br label %326, !dbg !82

; <label>:40:                                     ; preds = %3
  %41 = load i32, i32* %5, align 4, !dbg !83
  %42 = icmp eq i32 %41, 1, !dbg !85
  br i1 %42, label %43, label %47, !dbg !86

; <label>:43:                                     ; preds = %40
  %44 = load double, double* %6, align 8, !dbg !87
  %45 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !89
  %46 = call i32 @gsl_sf_bessel_I1_scaled_e(double %44, %struct.gsl_sf_result_struct* %45), !dbg !90
  store i32 %46, i32* %4, align 4, !dbg !91
  br label %326, !dbg !91

; <label>:47:                                     ; preds = %40
  %48 = load double, double* %6, align 8, !dbg !92
  %49 = fcmp oeq double %48, 0.000000e+00, !dbg !94
  br i1 %49, label %50, label %55, !dbg !95

; <label>:50:                                     ; preds = %47
  %51 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !96
  %52 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %51, i32 0, i32 0, !dbg !98
  store double 0.000000e+00, double* %52, align 8, !dbg !99
  %53 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !100
  %54 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %53, i32 0, i32 1, !dbg !101
  store double 0.000000e+00, double* %54, align 8, !dbg !102
  store i32 0, i32* %4, align 4, !dbg !103
  br label %326, !dbg !103

; <label>:55:                                     ; preds = %47
  %56 = load double, double* %6, align 8, !dbg !104
  %57 = load double, double* %6, align 8, !dbg !106
  %58 = fmul double %56, %57, !dbg !107
  %59 = load i32, i32* %5, align 4, !dbg !108
  %60 = sitofp i32 %59 to double, !dbg !108
  %61 = fadd double %60, 1.000000e+00, !dbg !109
  %62 = fmul double 1.000000e+01, %61, !dbg !110
  %63 = fdiv double %62, 0x4005BF0A8B145769, !dbg !111
  %64 = fcmp olt double %58, %63, !dbg !112
  br i1 %64, label %65, label %109, !dbg !113

; <label>:65:                                     ; preds = %55
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %9, metadata !114, metadata !61), !dbg !116
  call void @llvm.dbg.declare(metadata double* %10, metadata !117, metadata !61), !dbg !118
  %66 = load double, double* %8, align 8, !dbg !119
  %67 = fsub double -0.000000e+00, %66, !dbg !120
  %68 = call double @exp(double %67) #5, !dbg !121
  store double %68, double* %10, align 8, !dbg !118
  call void @llvm.dbg.declare(metadata i32* %11, metadata !122, metadata !61), !dbg !123
  %69 = load i32, i32* %5, align 4, !dbg !124
  %70 = sitofp i32 %69 to double, !dbg !125
  %71 = load double, double* %8, align 8, !dbg !126
  %72 = call i32 @gsl_sf_bessel_IJ_taylor_e(double %70, double %71, i32 1, i32 50, double 0x3CB0000000000000, %struct.gsl_sf_result_struct* %9), !dbg !127
  store i32 %72, i32* %11, align 4, !dbg !123
  %73 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %9, i32 0, i32 0, !dbg !128
  %74 = load double, double* %73, align 8, !dbg !128
  %75 = load double, double* %10, align 8, !dbg !129
  %76 = fmul double %74, %75, !dbg !130
  %77 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !131
  %78 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %77, i32 0, i32 0, !dbg !132
  store double %76, double* %78, align 8, !dbg !133
  %79 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %9, i32 0, i32 1, !dbg !134
  %80 = load double, double* %79, align 8, !dbg !134
  %81 = load double, double* %10, align 8, !dbg !135
  %82 = fmul double %80, %81, !dbg !136
  %83 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !137
  %84 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %83, i32 0, i32 1, !dbg !138
  store double %82, double* %84, align 8, !dbg !139
  %85 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !140
  %86 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %85, i32 0, i32 0, !dbg !141
  %87 = load double, double* %86, align 8, !dbg !141
  %88 = call double @fabs(double %87) #1, !dbg !142
  %89 = fmul double 0x3CC0000000000000, %88, !dbg !143
  %90 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !144
  %91 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %90, i32 0, i32 1, !dbg !145
  %92 = load double, double* %91, align 8, !dbg !146
  %93 = fadd double %92, %89, !dbg !146
  store double %93, double* %91, align 8, !dbg !146
  %94 = load double, double* %6, align 8, !dbg !147
  %95 = fcmp olt double %94, 0.000000e+00, !dbg !149
  br i1 %95, label %96, label %107, !dbg !150

; <label>:96:                                     ; preds = %65
  %97 = load i32, i32* %5, align 4, !dbg !151
  %98 = and i32 %97, 1, !dbg !151
  %99 = icmp ne i32 %98, 0, !dbg !151
  br i1 %99, label %100, label %107, !dbg !153

; <label>:100:                                    ; preds = %96
  %101 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !154
  %102 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %101, i32 0, i32 0, !dbg !156
  %103 = load double, double* %102, align 8, !dbg !156
  %104 = fsub double -0.000000e+00, %103, !dbg !157
  %105 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !158
  %106 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %105, i32 0, i32 0, !dbg !159
  store double %104, double* %106, align 8, !dbg !160
  br label %107, !dbg !158

; <label>:107:                                    ; preds = %100, %96, %65
  %108 = load i32, i32* %11, align 4, !dbg !161
  store i32 %108, i32* %4, align 4, !dbg !162
  br label %326, !dbg !162

; <label>:109:                                    ; preds = %55
  %110 = load i32, i32* %5, align 4, !dbg !163
  %111 = icmp slt i32 %110, 150, !dbg !165
  br i1 %111, label %112, label %195, !dbg !166

; <label>:112:                                    ; preds = %109
  %113 = load double, double* %8, align 8, !dbg !167
  %114 = fcmp olt double %113, 1.000000e+07, !dbg !169
  br i1 %114, label %115, label %195, !dbg !170

; <label>:115:                                    ; preds = %112
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %12, metadata !171, metadata !61), !dbg !173
  call void @llvm.dbg.declare(metadata i32* %13, metadata !174, metadata !61), !dbg !175
  %116 = load double, double* %8, align 8, !dbg !176
  %117 = call i32 @gsl_sf_bessel_I0_scaled_e(double %116, %struct.gsl_sf_result_struct* %12), !dbg !177
  store i32 %117, i32* %13, align 4, !dbg !175
  call void @llvm.dbg.declare(metadata double* %14, metadata !178, metadata !61), !dbg !179
  call void @llvm.dbg.declare(metadata i32* %15, metadata !180, metadata !61), !dbg !181
  %118 = load i32, i32* %5, align 4, !dbg !182
  %119 = sitofp i32 %118 to double, !dbg !183
  %120 = load double, double* %8, align 8, !dbg !184
  %121 = call i32 @gsl_sf_bessel_I_CF1_ser(double %119, double %120, double* %14), !dbg !185
  store i32 %121, i32* %15, align 4, !dbg !181
  call void @llvm.dbg.declare(metadata double* %16, metadata !186, metadata !61), !dbg !187
  %122 = load double, double* %14, align 8, !dbg !188
  %123 = fmul double %122, 0x2000000000000000, !dbg !189
  store double %123, double* %16, align 8, !dbg !187
  call void @llvm.dbg.declare(metadata double* %17, metadata !190, metadata !61), !dbg !191
  store double 0x2000000000000000, double* %17, align 8, !dbg !191
  call void @llvm.dbg.declare(metadata double* %18, metadata !192, metadata !61), !dbg !193
  call void @llvm.dbg.declare(metadata i32* %19, metadata !194, metadata !61), !dbg !195
  %124 = load i32, i32* %5, align 4, !dbg !196
  store i32 %124, i32* %19, align 4, !dbg !198
  br label %125, !dbg !199

; <label>:125:                                    ; preds = %140, %115
  %126 = load i32, i32* %19, align 4, !dbg !200
  %127 = icmp sge i32 %126, 1, !dbg !203
  br i1 %127, label %128, label %143, !dbg !204

; <label>:128:                                    ; preds = %125
  %129 = load double, double* %16, align 8, !dbg !205
  %130 = load i32, i32* %19, align 4, !dbg !207
  %131 = sitofp i32 %130 to double, !dbg !207
  %132 = fmul double 2.000000e+00, %131, !dbg !208
  %133 = load double, double* %8, align 8, !dbg !209
  %134 = fdiv double %132, %133, !dbg !210
  %135 = load double, double* %17, align 8, !dbg !211
  %136 = fmul double %134, %135, !dbg !212
  %137 = fadd double %129, %136, !dbg !213
  store double %137, double* %18, align 8, !dbg !214
  %138 = load double, double* %17, align 8, !dbg !215
  store double %138, double* %16, align 8, !dbg !216
  %139 = load double, double* %18, align 8, !dbg !217
  store double %139, double* %17, align 8, !dbg !218
  br label %140, !dbg !219

; <label>:140:                                    ; preds = %128
  %141 = load i32, i32* %19, align 4, !dbg !220
  %142 = add nsw i32 %141, -1, !dbg !220
  store i32 %142, i32* %19, align 4, !dbg !220
  br label %125, !dbg !222, !llvm.loop !223

; <label>:143:                                    ; preds = %125
  %144 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %12, i32 0, i32 0, !dbg !225
  %145 = load double, double* %144, align 8, !dbg !225
  %146 = load double, double* %17, align 8, !dbg !226
  %147 = fdiv double 0x2000000000000000, %146, !dbg !227
  %148 = fmul double %145, %147, !dbg !228
  %149 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !229
  %150 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %149, i32 0, i32 0, !dbg !230
  store double %148, double* %150, align 8, !dbg !231
  %151 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %12, i32 0, i32 1, !dbg !232
  %152 = load double, double* %151, align 8, !dbg !232
  %153 = load double, double* %17, align 8, !dbg !233
  %154 = fdiv double 0x2000000000000000, %153, !dbg !234
  %155 = fmul double %152, %154, !dbg !235
  %156 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !236
  %157 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %156, i32 0, i32 1, !dbg !237
  store double %155, double* %157, align 8, !dbg !238
  %158 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !239
  %159 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %158, i32 0, i32 0, !dbg !240
  %160 = load double, double* %159, align 8, !dbg !240
  %161 = call double @fabs(double %160) #1, !dbg !241
  %162 = fmul double 0x3CC0000000000000, %161, !dbg !242
  %163 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !243
  %164 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %163, i32 0, i32 1, !dbg !244
  %165 = load double, double* %164, align 8, !dbg !245
  %166 = fadd double %165, %162, !dbg !245
  store double %166, double* %164, align 8, !dbg !245
  %167 = load double, double* %6, align 8, !dbg !246
  %168 = fcmp olt double %167, 0.000000e+00, !dbg !248
  br i1 %168, label %169, label %180, !dbg !249

; <label>:169:                                    ; preds = %143
  %170 = load i32, i32* %5, align 4, !dbg !250
  %171 = and i32 %170, 1, !dbg !250
  %172 = icmp ne i32 %171, 0, !dbg !250
  br i1 %172, label %173, label %180, !dbg !252

; <label>:173:                                    ; preds = %169
  %174 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !253
  %175 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %174, i32 0, i32 0, !dbg !255
  %176 = load double, double* %175, align 8, !dbg !255
  %177 = fsub double -0.000000e+00, %176, !dbg !256
  %178 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !257
  %179 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %178, i32 0, i32 0, !dbg !258
  store double %177, double* %179, align 8, !dbg !259
  br label %180, !dbg !257

; <label>:180:                                    ; preds = %173, %169, %143
  %181 = load i32, i32* %13, align 4, !dbg !260
  %182 = icmp ne i32 %181, 0, !dbg !260
  br i1 %182, label %183, label %185, !dbg !260

; <label>:183:                                    ; preds = %180
  %184 = load i32, i32* %13, align 4, !dbg !261
  br label %193, !dbg !261

; <label>:185:                                    ; preds = %180
  %186 = load i32, i32* %15, align 4, !dbg !263
  %187 = icmp ne i32 %186, 0, !dbg !263
  br i1 %187, label %188, label %190, !dbg !263

; <label>:188:                                    ; preds = %185
  %189 = load i32, i32* %15, align 4, !dbg !265
  br label %191, !dbg !265

; <label>:190:                                    ; preds = %185
  br label %191, !dbg !267

; <label>:191:                                    ; preds = %190, %188
  %192 = phi i32 [ %189, %188 ], [ 0, %190 ], !dbg !269
  br label %193, !dbg !269

; <label>:193:                                    ; preds = %191, %183
  %194 = phi i32 [ %184, %183 ], [ %192, %191 ], !dbg !271
  store i32 %194, i32* %4, align 4, !dbg !273
  br label %326, !dbg !273

; <label>:195:                                    ; preds = %112, %109
  %196 = load i32, i32* %5, align 4, !dbg !274
  %197 = load i32, i32* %5, align 4, !dbg !274
  %198 = mul nsw i32 %196, %197, !dbg !274
  %199 = sitofp i32 %198 to double, !dbg !274
  %200 = fdiv double 2.900000e-01, %199, !dbg !274
  %201 = load i32, i32* %5, align 4, !dbg !274
  %202 = load i32, i32* %5, align 4, !dbg !274
  %203 = mul nsw i32 %201, %202, !dbg !274
  %204 = sitofp i32 %203 to double, !dbg !274
  %205 = load double, double* %6, align 8, !dbg !274
  %206 = load double, double* %6, align 8, !dbg !274
  %207 = fmul double %205, %206, !dbg !274
  %208 = fadd double %204, %207, !dbg !274
  %209 = fdiv double 5.000000e-01, %208, !dbg !274
  %210 = fcmp olt double %200, %209, !dbg !274
  br i1 %210, label %211, label %217, !dbg !274

; <label>:211:                                    ; preds = %195
  %212 = load i32, i32* %5, align 4, !dbg !276
  %213 = load i32, i32* %5, align 4, !dbg !276
  %214 = mul nsw i32 %212, %213, !dbg !276
  %215 = sitofp i32 %214 to double, !dbg !276
  %216 = fdiv double 2.900000e-01, %215, !dbg !276
  br label %227, !dbg !276

; <label>:217:                                    ; preds = %195
  %218 = load i32, i32* %5, align 4, !dbg !278
  %219 = load i32, i32* %5, align 4, !dbg !278
  %220 = mul nsw i32 %218, %219, !dbg !278
  %221 = sitofp i32 %220 to double, !dbg !278
  %222 = load double, double* %6, align 8, !dbg !278
  %223 = load double, double* %6, align 8, !dbg !278
  %224 = fmul double %222, %223, !dbg !278
  %225 = fadd double %221, %224, !dbg !278
  %226 = fdiv double 5.000000e-01, %225, !dbg !278
  br label %227, !dbg !278

; <label>:227:                                    ; preds = %217, %211
  %228 = phi double [ %216, %211 ], [ %226, %217 ], !dbg !280
  %229 = fcmp olt double %228, 0x3EC965FEA53D6E41, !dbg !282
  br i1 %229, label %230, label %251, !dbg !280

; <label>:230:                                    ; preds = %227
  call void @llvm.dbg.declare(metadata i32* %20, metadata !283, metadata !61), !dbg !285
  %231 = load i32, i32* %5, align 4, !dbg !286
  %232 = sitofp i32 %231 to double, !dbg !287
  %233 = load double, double* %8, align 8, !dbg !288
  %234 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !289
  %235 = call i32 @gsl_sf_bessel_Inu_scaled_asymp_unif_e(double %232, double %233, %struct.gsl_sf_result_struct* %234), !dbg !290
  store i32 %235, i32* %20, align 4, !dbg !285
  %236 = load double, double* %6, align 8, !dbg !291
  %237 = fcmp olt double %236, 0.000000e+00, !dbg !293
  br i1 %237, label %238, label %249, !dbg !294

; <label>:238:                                    ; preds = %230
  %239 = load i32, i32* %5, align 4, !dbg !295
  %240 = and i32 %239, 1, !dbg !295
  %241 = icmp ne i32 %240, 0, !dbg !295
  br i1 %241, label %242, label %249, !dbg !297

; <label>:242:                                    ; preds = %238
  %243 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !298
  %244 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %243, i32 0, i32 0, !dbg !300
  %245 = load double, double* %244, align 8, !dbg !300
  %246 = fsub double -0.000000e+00, %245, !dbg !301
  %247 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !302
  %248 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %247, i32 0, i32 0, !dbg !303
  store double %246, double* %248, align 8, !dbg !304
  br label %249, !dbg !302

; <label>:249:                                    ; preds = %242, %238, %230
  %250 = load i32, i32* %20, align 4, !dbg !305
  store i32 %250, i32* %4, align 4, !dbg !306
  br label %326, !dbg !306

; <label>:251:                                    ; preds = %227
  call void @llvm.dbg.declare(metadata i32* %21, metadata !307, metadata !61), !dbg !310
  store i32 489, i32* %21, align 4, !dbg !310
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %22, metadata !311, metadata !61), !dbg !312
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %23, metadata !313, metadata !61), !dbg !314
  call void @llvm.dbg.declare(metadata i32* %24, metadata !315, metadata !61), !dbg !316
  %252 = load double, double* %8, align 8, !dbg !317
  %253 = call i32 @gsl_sf_bessel_Inu_scaled_asymp_unif_e(double 4.900000e+02, double %252, %struct.gsl_sf_result_struct* %22), !dbg !318
  store i32 %253, i32* %24, align 4, !dbg !316
  call void @llvm.dbg.declare(metadata i32* %25, metadata !319, metadata !61), !dbg !320
  %254 = load double, double* %8, align 8, !dbg !321
  %255 = call i32 @gsl_sf_bessel_Inu_scaled_asymp_unif_e(double 4.890000e+02, double %254, %struct.gsl_sf_result_struct* %23), !dbg !322
  store i32 %255, i32* %25, align 4, !dbg !320
  call void @llvm.dbg.declare(metadata double* %26, metadata !323, metadata !61), !dbg !324
  %256 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %22, i32 0, i32 0, !dbg !325
  %257 = load double, double* %256, align 8, !dbg !325
  store double %257, double* %26, align 8, !dbg !324
  call void @llvm.dbg.declare(metadata double* %27, metadata !326, metadata !61), !dbg !327
  %258 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %23, i32 0, i32 0, !dbg !328
  %259 = load double, double* %258, align 8, !dbg !328
  store double %259, double* %27, align 8, !dbg !327
  call void @llvm.dbg.declare(metadata double* %28, metadata !329, metadata !61), !dbg !330
  call void @llvm.dbg.declare(metadata i32* %29, metadata !331, metadata !61), !dbg !332
  store i32 489, i32* %29, align 4, !dbg !333
  br label %260, !dbg !335

; <label>:260:                                    ; preds = %276, %251
  %261 = load i32, i32* %29, align 4, !dbg !336
  %262 = load i32, i32* %5, align 4, !dbg !339
  %263 = icmp sgt i32 %261, %262, !dbg !340
  br i1 %263, label %264, label %279, !dbg !341

; <label>:264:                                    ; preds = %260
  %265 = load double, double* %26, align 8, !dbg !342
  %266 = load i32, i32* %29, align 4, !dbg !344
  %267 = sitofp i32 %266 to double, !dbg !344
  %268 = fmul double 2.000000e+00, %267, !dbg !345
  %269 = load double, double* %8, align 8, !dbg !346
  %270 = fdiv double %268, %269, !dbg !347
  %271 = load double, double* %27, align 8, !dbg !348
  %272 = fmul double %270, %271, !dbg !349
  %273 = fadd double %265, %272, !dbg !350
  store double %273, double* %28, align 8, !dbg !351
  %274 = load double, double* %27, align 8, !dbg !352
  store double %274, double* %26, align 8, !dbg !353
  %275 = load double, double* %28, align 8, !dbg !354
  store double %275, double* %27, align 8, !dbg !355
  br label %276, !dbg !356

; <label>:276:                                    ; preds = %264
  %277 = load i32, i32* %29, align 4, !dbg !357
  %278 = add nsw i32 %277, -1, !dbg !357
  store i32 %278, i32* %29, align 4, !dbg !357
  br label %260, !dbg !359, !llvm.loop !360

; <label>:279:                                    ; preds = %260
  %280 = load double, double* %27, align 8, !dbg !362
  %281 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !363
  %282 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %281, i32 0, i32 0, !dbg !364
  store double %280, double* %282, align 8, !dbg !365
  %283 = load double, double* %27, align 8, !dbg !366
  %284 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %22, i32 0, i32 1, !dbg !367
  %285 = load double, double* %284, align 8, !dbg !367
  %286 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %22, i32 0, i32 0, !dbg !368
  %287 = load double, double* %286, align 8, !dbg !368
  %288 = fdiv double %285, %287, !dbg !369
  %289 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %23, i32 0, i32 1, !dbg !370
  %290 = load double, double* %289, align 8, !dbg !370
  %291 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %23, i32 0, i32 0, !dbg !371
  %292 = load double, double* %291, align 8, !dbg !371
  %293 = fdiv double %290, %292, !dbg !372
  %294 = fadd double %288, %293, !dbg !373
  %295 = fmul double %283, %294, !dbg !374
  %296 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !375
  %297 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %296, i32 0, i32 1, !dbg !376
  store double %295, double* %297, align 8, !dbg !377
  %298 = load double, double* %6, align 8, !dbg !378
  %299 = fcmp olt double %298, 0.000000e+00, !dbg !380
  br i1 %299, label %300, label %311, !dbg !381

; <label>:300:                                    ; preds = %279
  %301 = load i32, i32* %5, align 4, !dbg !382
  %302 = and i32 %301, 1, !dbg !382
  %303 = icmp ne i32 %302, 0, !dbg !382
  br i1 %303, label %304, label %311, !dbg !384

; <label>:304:                                    ; preds = %300
  %305 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !385
  %306 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %305, i32 0, i32 0, !dbg !387
  %307 = load double, double* %306, align 8, !dbg !387
  %308 = fsub double -0.000000e+00, %307, !dbg !388
  %309 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !389
  %310 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %309, i32 0, i32 0, !dbg !390
  store double %308, double* %310, align 8, !dbg !391
  br label %311, !dbg !389

; <label>:311:                                    ; preds = %304, %300, %279
  %312 = load i32, i32* %24, align 4, !dbg !392
  %313 = icmp ne i32 %312, 0, !dbg !392
  br i1 %313, label %314, label %316, !dbg !392

; <label>:314:                                    ; preds = %311
  %315 = load i32, i32* %24, align 4, !dbg !393
  br label %324, !dbg !393

; <label>:316:                                    ; preds = %311
  %317 = load i32, i32* %25, align 4, !dbg !395
  %318 = icmp ne i32 %317, 0, !dbg !395
  br i1 %318, label %319, label %321, !dbg !395

; <label>:319:                                    ; preds = %316
  %320 = load i32, i32* %25, align 4, !dbg !397
  br label %322, !dbg !397

; <label>:321:                                    ; preds = %316
  br label %322, !dbg !399

; <label>:322:                                    ; preds = %321, %319
  %323 = phi i32 [ %320, %319 ], [ 0, %321 ], !dbg !401
  br label %324, !dbg !401

; <label>:324:                                    ; preds = %322, %314
  %325 = phi i32 [ %315, %314 ], [ %323, %322 ], !dbg !403
  store i32 %325, i32* %4, align 4, !dbg !405
  br label %326, !dbg !405

; <label>:326:                                    ; preds = %324, %249, %193, %107, %50, %43, %36
  %327 = load i32, i32* %4, align 4, !dbg !406
  ret i32 %327, !dbg !406
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readnone
declare double @fabs(double) #2

; Function Attrs: nounwind readnone
declare i32 @abs(i32) #2

declare i32 @gsl_sf_bessel_I0_scaled_e(double, %struct.gsl_sf_result_struct*) #3

declare i32 @gsl_sf_bessel_I1_scaled_e(double, %struct.gsl_sf_result_struct*) #3

; Function Attrs: nounwind
declare double @exp(double) #4

declare i32 @gsl_sf_bessel_IJ_taylor_e(double, double, i32, i32, double, %struct.gsl_sf_result_struct*) #3

declare i32 @gsl_sf_bessel_I_CF1_ser(double, double, double*) #3

declare i32 @gsl_sf_bessel_Inu_scaled_asymp_unif_e(double, double, %struct.gsl_sf_result_struct*) #3

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_bessel_In_scaled_array(i32, i32, double, double*) #0 !dbg !407 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca double*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.gsl_sf_result_struct, align 8
  %13 = alloca i32, align 4
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca %struct.gsl_sf_result_struct, align 8
  %17 = alloca %struct.gsl_sf_result_struct, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  %22 = alloca double, align 8
  %23 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !411, metadata !61), !dbg !412
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !413, metadata !61), !dbg !414
  store double %2, double* %8, align 8
  call void @llvm.dbg.declare(metadata double* %8, metadata !415, metadata !61), !dbg !416
  store double* %3, double** %9, align 8
  call void @llvm.dbg.declare(metadata double** %9, metadata !417, metadata !61), !dbg !418
  %24 = load i32, i32* %7, align 4, !dbg !419
  %25 = load i32, i32* %6, align 4, !dbg !421
  %26 = icmp slt i32 %24, %25, !dbg !422
  br i1 %26, label %30, label %27, !dbg !423

; <label>:27:                                     ; preds = %4
  %28 = load i32, i32* %6, align 4, !dbg !424
  %29 = icmp slt i32 %28, 0, !dbg !426
  br i1 %29, label %30, label %48, !dbg !427

; <label>:30:                                     ; preds = %27, %4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !428, metadata !61), !dbg !430
  store i32 0, i32* %10, align 4, !dbg !431
  br label %31, !dbg !433

; <label>:31:                                     ; preds = %42, %30
  %32 = load i32, i32* %10, align 4, !dbg !434
  %33 = load i32, i32* %7, align 4, !dbg !437
  %34 = load i32, i32* %6, align 4, !dbg !438
  %35 = sub nsw i32 %33, %34, !dbg !439
  %36 = icmp sle i32 %32, %35, !dbg !440
  br i1 %36, label %37, label %45, !dbg !441

; <label>:37:                                     ; preds = %31
  %38 = load i32, i32* %10, align 4, !dbg !442
  %39 = sext i32 %38 to i64, !dbg !444
  %40 = load double*, double** %9, align 8, !dbg !444
  %41 = getelementptr inbounds double, double* %40, i64 %39, !dbg !444
  store double 0.000000e+00, double* %41, align 8, !dbg !445
  br label %42, !dbg !444

; <label>:42:                                     ; preds = %37
  %43 = load i32, i32* %10, align 4, !dbg !446
  %44 = add nsw i32 %43, 1, !dbg !446
  store i32 %44, i32* %10, align 4, !dbg !446
  br label %31, !dbg !448, !llvm.loop !449

; <label>:45:                                     ; preds = %31
  br label %46, !dbg !451, !llvm.loop !452

; <label>:46:                                     ; preds = %45
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 120, i32 1), !dbg !453
  store i32 1, i32* %5, align 4, !dbg !453
  br label %174, !dbg !453
                                                  ; No predecessors!
  br label %174, !dbg !456

; <label>:48:                                     ; preds = %27
  %49 = load double, double* %8, align 8, !dbg !457
  %50 = fcmp oeq double %49, 0.000000e+00, !dbg !459
  br i1 %50, label %51, label %73, !dbg !460

; <label>:51:                                     ; preds = %48
  call void @llvm.dbg.declare(metadata i32* %11, metadata !461, metadata !61), !dbg !463
  store i32 0, i32* %11, align 4, !dbg !464
  br label %52, !dbg !466

; <label>:52:                                     ; preds = %63, %51
  %53 = load i32, i32* %11, align 4, !dbg !467
  %54 = load i32, i32* %7, align 4, !dbg !470
  %55 = load i32, i32* %6, align 4, !dbg !471
  %56 = sub nsw i32 %54, %55, !dbg !472
  %57 = icmp sle i32 %53, %56, !dbg !473
  br i1 %57, label %58, label %66, !dbg !474

; <label>:58:                                     ; preds = %52
  %59 = load i32, i32* %11, align 4, !dbg !475
  %60 = sext i32 %59 to i64, !dbg !477
  %61 = load double*, double** %9, align 8, !dbg !477
  %62 = getelementptr inbounds double, double* %61, i64 %60, !dbg !477
  store double 0.000000e+00, double* %62, align 8, !dbg !478
  br label %63, !dbg !477

; <label>:63:                                     ; preds = %58
  %64 = load i32, i32* %11, align 4, !dbg !479
  %65 = add nsw i32 %64, 1, !dbg !479
  store i32 %65, i32* %11, align 4, !dbg !479
  br label %52, !dbg !481, !llvm.loop !482

; <label>:66:                                     ; preds = %52
  %67 = load i32, i32* %6, align 4, !dbg !484
  %68 = icmp eq i32 %67, 0, !dbg !486
  br i1 %68, label %69, label %72, !dbg !487

; <label>:69:                                     ; preds = %66
  %70 = load double*, double** %9, align 8, !dbg !488
  %71 = getelementptr inbounds double, double* %70, i64 0, !dbg !488
  store double 1.000000e+00, double* %71, align 8, !dbg !490
  br label %72, !dbg !488

; <label>:72:                                     ; preds = %69, %66
  store i32 0, i32* %5, align 4, !dbg !491
  br label %174, !dbg !491

; <label>:73:                                     ; preds = %48
  %74 = load i32, i32* %7, align 4, !dbg !492
  %75 = icmp eq i32 %74, 0, !dbg !494
  br i1 %75, label %76, label %84, !dbg !495

; <label>:76:                                     ; preds = %73
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %12, metadata !496, metadata !61), !dbg !498
  call void @llvm.dbg.declare(metadata i32* %13, metadata !499, metadata !61), !dbg !500
  %77 = load double, double* %8, align 8, !dbg !501
  %78 = call i32 @gsl_sf_bessel_I0_scaled_e(double %77, %struct.gsl_sf_result_struct* %12), !dbg !502
  store i32 %78, i32* %13, align 4, !dbg !500
  %79 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %12, i32 0, i32 0, !dbg !503
  %80 = load double, double* %79, align 8, !dbg !503
  %81 = load double*, double** %9, align 8, !dbg !504
  %82 = getelementptr inbounds double, double* %81, i64 0, !dbg !504
  store double %80, double* %82, align 8, !dbg !505
  %83 = load i32, i32* %13, align 4, !dbg !506
  store i32 %83, i32* %5, align 4, !dbg !507
  br label %174, !dbg !507

; <label>:84:                                     ; preds = %73
  call void @llvm.dbg.declare(metadata double* %14, metadata !508, metadata !61), !dbg !510
  %85 = load double, double* %8, align 8, !dbg !511
  %86 = call double @fabs(double %85) #1, !dbg !512
  store double %86, double* %14, align 8, !dbg !510
  call void @llvm.dbg.declare(metadata double* %15, metadata !513, metadata !61), !dbg !514
  %87 = load double, double* %14, align 8, !dbg !515
  %88 = fdiv double 2.000000e+00, %87, !dbg !516
  store double %88, double* %15, align 8, !dbg !514
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %16, metadata !517, metadata !61), !dbg !518
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %17, metadata !519, metadata !61), !dbg !520
  call void @llvm.dbg.declare(metadata i32* %18, metadata !521, metadata !61), !dbg !522
  %89 = load i32, i32* %7, align 4, !dbg !523
  %90 = add nsw i32 %89, 1, !dbg !524
  %91 = load double, double* %14, align 8, !dbg !525
  %92 = call i32 @gsl_sf_bessel_In_scaled_e(i32 %90, double %91, %struct.gsl_sf_result_struct* %16), !dbg !526
  store i32 %92, i32* %18, align 4, !dbg !522
  call void @llvm.dbg.declare(metadata i32* %19, metadata !527, metadata !61), !dbg !528
  %93 = load i32, i32* %7, align 4, !dbg !529
  %94 = load double, double* %14, align 8, !dbg !530
  %95 = call i32 @gsl_sf_bessel_In_scaled_e(i32 %93, double %94, %struct.gsl_sf_result_struct* %17), !dbg !531
  store i32 %95, i32* %19, align 4, !dbg !528
  call void @llvm.dbg.declare(metadata double* %20, metadata !532, metadata !61), !dbg !533
  %96 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %16, i32 0, i32 0, !dbg !534
  %97 = load double, double* %96, align 8, !dbg !534
  store double %97, double* %20, align 8, !dbg !533
  call void @llvm.dbg.declare(metadata double* %21, metadata !535, metadata !61), !dbg !536
  %98 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %17, i32 0, i32 0, !dbg !537
  %99 = load double, double* %98, align 8, !dbg !537
  store double %99, double* %21, align 8, !dbg !536
  call void @llvm.dbg.declare(metadata double* %22, metadata !538, metadata !61), !dbg !539
  call void @llvm.dbg.declare(metadata i32* %23, metadata !540, metadata !61), !dbg !541
  %100 = load i32, i32* %7, align 4, !dbg !542
  store i32 %100, i32* %23, align 4, !dbg !544
  br label %101, !dbg !545

; <label>:101:                                    ; preds = %123, %84
  %102 = load i32, i32* %23, align 4, !dbg !546
  %103 = load i32, i32* %6, align 4, !dbg !549
  %104 = icmp sge i32 %102, %103, !dbg !550
  br i1 %104, label %105, label %126, !dbg !551

; <label>:105:                                    ; preds = %101
  %106 = load double, double* %21, align 8, !dbg !552
  %107 = load i32, i32* %23, align 4, !dbg !554
  %108 = load i32, i32* %6, align 4, !dbg !555
  %109 = sub nsw i32 %107, %108, !dbg !556
  %110 = sext i32 %109 to i64, !dbg !557
  %111 = load double*, double** %9, align 8, !dbg !557
  %112 = getelementptr inbounds double, double* %111, i64 %110, !dbg !557
  store double %106, double* %112, align 8, !dbg !558
  %113 = load double, double* %20, align 8, !dbg !559
  %114 = load i32, i32* %23, align 4, !dbg !560
  %115 = sitofp i32 %114 to double, !dbg !560
  %116 = load double, double* %15, align 8, !dbg !561
  %117 = fmul double %115, %116, !dbg !562
  %118 = load double, double* %21, align 8, !dbg !563
  %119 = fmul double %117, %118, !dbg !564
  %120 = fadd double %113, %119, !dbg !565
  store double %120, double* %22, align 8, !dbg !566
  %121 = load double, double* %21, align 8, !dbg !567
  store double %121, double* %20, align 8, !dbg !568
  %122 = load double, double* %22, align 8, !dbg !569
  store double %122, double* %21, align 8, !dbg !570
  br label %123, !dbg !571

; <label>:123:                                    ; preds = %105
  %124 = load i32, i32* %23, align 4, !dbg !572
  %125 = add nsw i32 %124, -1, !dbg !572
  store i32 %125, i32* %23, align 4, !dbg !572
  br label %101, !dbg !574, !llvm.loop !575

; <label>:126:                                    ; preds = %101
  %127 = load double, double* %8, align 8, !dbg !577
  %128 = fcmp olt double %127, 0.000000e+00, !dbg !579
  br i1 %128, label %129, label %159, !dbg !580

; <label>:129:                                    ; preds = %126
  %130 = load i32, i32* %6, align 4, !dbg !581
  store i32 %130, i32* %23, align 4, !dbg !584
  br label %131, !dbg !585

; <label>:131:                                    ; preds = %155, %129
  %132 = load i32, i32* %23, align 4, !dbg !586
  %133 = load i32, i32* %7, align 4, !dbg !589
  %134 = icmp sle i32 %132, %133, !dbg !590
  br i1 %134, label %135, label %158, !dbg !591

; <label>:135:                                    ; preds = %131
  %136 = load i32, i32* %23, align 4, !dbg !592
  %137 = and i32 %136, 1, !dbg !592
  %138 = icmp ne i32 %137, 0, !dbg !592
  br i1 %138, label %139, label %154, !dbg !595

; <label>:139:                                    ; preds = %135
  %140 = load i32, i32* %23, align 4, !dbg !596
  %141 = load i32, i32* %6, align 4, !dbg !598
  %142 = sub nsw i32 %140, %141, !dbg !599
  %143 = sext i32 %142 to i64, !dbg !600
  %144 = load double*, double** %9, align 8, !dbg !600
  %145 = getelementptr inbounds double, double* %144, i64 %143, !dbg !600
  %146 = load double, double* %145, align 8, !dbg !600
  %147 = fsub double -0.000000e+00, %146, !dbg !601
  %148 = load i32, i32* %23, align 4, !dbg !602
  %149 = load i32, i32* %6, align 4, !dbg !603
  %150 = sub nsw i32 %148, %149, !dbg !604
  %151 = sext i32 %150 to i64, !dbg !605
  %152 = load double*, double** %9, align 8, !dbg !605
  %153 = getelementptr inbounds double, double* %152, i64 %151, !dbg !605
  store double %147, double* %153, align 8, !dbg !606
  br label %154, !dbg !605

; <label>:154:                                    ; preds = %139, %135
  br label %155, !dbg !607

; <label>:155:                                    ; preds = %154
  %156 = load i32, i32* %23, align 4, !dbg !608
  %157 = add nsw i32 %156, 1, !dbg !608
  store i32 %157, i32* %23, align 4, !dbg !608
  br label %131, !dbg !610, !llvm.loop !611

; <label>:158:                                    ; preds = %131
  br label %159, !dbg !613

; <label>:159:                                    ; preds = %158, %126
  %160 = load i32, i32* %18, align 4, !dbg !614
  %161 = icmp ne i32 %160, 0, !dbg !614
  br i1 %161, label %162, label %164, !dbg !614

; <label>:162:                                    ; preds = %159
  %163 = load i32, i32* %18, align 4, !dbg !615
  br label %172, !dbg !615

; <label>:164:                                    ; preds = %159
  %165 = load i32, i32* %19, align 4, !dbg !617
  %166 = icmp ne i32 %165, 0, !dbg !617
  br i1 %166, label %167, label %169, !dbg !617

; <label>:167:                                    ; preds = %164
  %168 = load i32, i32* %19, align 4, !dbg !619
  br label %170, !dbg !619

; <label>:169:                                    ; preds = %164
  br label %170, !dbg !621

; <label>:170:                                    ; preds = %169, %167
  %171 = phi i32 [ %168, %167 ], [ 0, %169 ], !dbg !623
  br label %172, !dbg !623

; <label>:172:                                    ; preds = %170, %162
  %173 = phi i32 [ %163, %162 ], [ %171, %170 ], !dbg !625
  store i32 %173, i32* %5, align 4, !dbg !627
  br label %174, !dbg !627

; <label>:174:                                    ; preds = %46, %72, %76, %172, %47
  %175 = load i32, i32* %5, align 4, !dbg !628
  ret i32 %175, !dbg !628
}

declare void @gsl_error(i8*, i8*, i32, i32) #3

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_bessel_In_e(i32, double, %struct.gsl_sf_result_struct*) #0 !dbg !629 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca %struct.gsl_sf_result_struct*, align 8
  %8 = alloca double, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.gsl_sf_result_struct, align 8
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !632, metadata !61), !dbg !633
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !634, metadata !61), !dbg !635
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %7, metadata !636, metadata !61), !dbg !637
  call void @llvm.dbg.declare(metadata double* %8, metadata !638, metadata !61), !dbg !639
  %13 = load double, double* %6, align 8, !dbg !640
  %14 = call double @fabs(double %13) #1, !dbg !641
  store double %14, double* %8, align 8, !dbg !639
  call void @llvm.dbg.declare(metadata i32* %9, metadata !642, metadata !61), !dbg !643
  %15 = load i32, i32* %5, align 4, !dbg !644
  %16 = call i32 @abs(i32 %15) #1, !dbg !645
  store i32 %16, i32* %9, align 4, !dbg !643
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %10, metadata !646, metadata !61), !dbg !647
  call void @llvm.dbg.declare(metadata i32* %11, metadata !648, metadata !61), !dbg !649
  %17 = load i32, i32* %9, align 4, !dbg !650
  %18 = load double, double* %8, align 8, !dbg !651
  %19 = call i32 @gsl_sf_bessel_In_scaled_e(i32 %17, double %18, %struct.gsl_sf_result_struct* %10), !dbg !652
  store i32 %19, i32* %11, align 4, !dbg !649
  %20 = load double, double* %8, align 8, !dbg !653
  %21 = fcmp ogt double %20, 0x40862642FEFA39EF, !dbg !655
  br i1 %21, label %22, label %31, !dbg !656

; <label>:22:                                     ; preds = %3
  br label %23, !dbg !657, !llvm.loop !659

; <label>:23:                                     ; preds = %22
  %24 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !660
  %25 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %24, i32 0, i32 0, !dbg !660
  store double 0x7FF0000000000000, double* %25, align 8, !dbg !660
  %26 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !660
  %27 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %26, i32 0, i32 1, !dbg !660
  store double 0x7FF0000000000000, double* %27, align 8, !dbg !660
  br label %28, !dbg !660, !llvm.loop !663

; <label>:28:                                     ; preds = %23
  call void @gsl_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 179, i32 16), !dbg !665
  store i32 16, i32* %4, align 4, !dbg !665
  br label %72, !dbg !665
                                                  ; No predecessors!
  br label %30, !dbg !668

; <label>:30:                                     ; preds = %29
  br label %72, !dbg !670

; <label>:31:                                     ; preds = %3
  call void @llvm.dbg.declare(metadata double* %12, metadata !671, metadata !61), !dbg !673
  %32 = load double, double* %8, align 8, !dbg !674
  %33 = call double @exp(double %32) #5, !dbg !675
  store double %33, double* %12, align 8, !dbg !673
  %34 = load double, double* %12, align 8, !dbg !676
  %35 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !677
  %36 = load double, double* %35, align 8, !dbg !677
  %37 = fmul double %34, %36, !dbg !678
  %38 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !679
  %39 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %38, i32 0, i32 0, !dbg !680
  store double %37, double* %39, align 8, !dbg !681
  %40 = load double, double* %12, align 8, !dbg !682
  %41 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 1, !dbg !683
  %42 = load double, double* %41, align 8, !dbg !683
  %43 = fmul double %40, %42, !dbg !684
  %44 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !685
  %45 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %44, i32 0, i32 1, !dbg !686
  store double %43, double* %45, align 8, !dbg !687
  %46 = load double, double* %8, align 8, !dbg !688
  %47 = fmul double %46, 0x3CB0000000000000, !dbg !689
  %48 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !690
  %49 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %48, i32 0, i32 0, !dbg !691
  %50 = load double, double* %49, align 8, !dbg !691
  %51 = call double @fabs(double %50) #1, !dbg !692
  %52 = fmul double %47, %51, !dbg !693
  %53 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !694
  %54 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %53, i32 0, i32 1, !dbg !695
  %55 = load double, double* %54, align 8, !dbg !696
  %56 = fadd double %55, %52, !dbg !696
  store double %56, double* %54, align 8, !dbg !696
  %57 = load double, double* %6, align 8, !dbg !697
  %58 = fcmp olt double %57, 0.000000e+00, !dbg !699
  br i1 %58, label %59, label %70, !dbg !700

; <label>:59:                                     ; preds = %31
  %60 = load i32, i32* %9, align 4, !dbg !701
  %61 = and i32 %60, 1, !dbg !701
  %62 = icmp ne i32 %61, 0, !dbg !701
  br i1 %62, label %63, label %70, !dbg !703

; <label>:63:                                     ; preds = %59
  %64 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !704
  %65 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %64, i32 0, i32 0, !dbg !706
  %66 = load double, double* %65, align 8, !dbg !706
  %67 = fsub double -0.000000e+00, %66, !dbg !707
  %68 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !708
  %69 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %68, i32 0, i32 0, !dbg !709
  store double %67, double* %69, align 8, !dbg !710
  br label %70, !dbg !708

; <label>:70:                                     ; preds = %63, %59, %31
  %71 = load i32, i32* %11, align 4, !dbg !711
  store i32 %71, i32* %4, align 4, !dbg !712
  br label %72, !dbg !712

; <label>:72:                                     ; preds = %28, %70, %30
  %73 = load i32, i32* %4, align 4, !dbg !713
  ret i32 %73, !dbg !713
}

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_bessel_In_array(i32, i32, double, double*) #0 !dbg !714 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca double*, align 8
  %10 = alloca double, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca double, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !715, metadata !61), !dbg !716
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !717, metadata !61), !dbg !718
  store double %2, double* %8, align 8
  call void @llvm.dbg.declare(metadata double* %8, metadata !719, metadata !61), !dbg !720
  store double* %3, double** %9, align 8
  call void @llvm.dbg.declare(metadata double** %9, metadata !721, metadata !61), !dbg !722
  call void @llvm.dbg.declare(metadata double* %10, metadata !723, metadata !61), !dbg !724
  %15 = load double, double* %8, align 8, !dbg !725
  %16 = call double @fabs(double %15) #1, !dbg !726
  store double %16, double* %10, align 8, !dbg !724
  %17 = load double, double* %10, align 8, !dbg !727
  %18 = fcmp ogt double %17, 0x40862642FEFA39EF, !dbg !729
  br i1 %18, label %19, label %37, !dbg !730

; <label>:19:                                     ; preds = %4
  call void @llvm.dbg.declare(metadata i32* %11, metadata !731, metadata !61), !dbg !733
  store i32 0, i32* %11, align 4, !dbg !734
  br label %20, !dbg !736

; <label>:20:                                     ; preds = %31, %19
  %21 = load i32, i32* %11, align 4, !dbg !737
  %22 = load i32, i32* %7, align 4, !dbg !740
  %23 = load i32, i32* %6, align 4, !dbg !741
  %24 = sub nsw i32 %22, %23, !dbg !742
  %25 = icmp sle i32 %21, %24, !dbg !743
  br i1 %25, label %26, label %34, !dbg !744

; <label>:26:                                     ; preds = %20
  %27 = load i32, i32* %11, align 4, !dbg !745
  %28 = sext i32 %27 to i64, !dbg !747
  %29 = load double*, double** %9, align 8, !dbg !747
  %30 = getelementptr inbounds double, double* %29, i64 %28, !dbg !747
  store double 0.000000e+00, double* %30, align 8, !dbg !748
  br label %31, !dbg !747

; <label>:31:                                     ; preds = %26
  %32 = load i32, i32* %11, align 4, !dbg !749
  %33 = add nsw i32 %32, 1, !dbg !749
  store i32 %33, i32* %11, align 4, !dbg !749
  br label %20, !dbg !751, !llvm.loop !752

; <label>:34:                                     ; preds = %20
  br label %35, !dbg !754, !llvm.loop !755

; <label>:35:                                     ; preds = %34
  call void @gsl_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 202, i32 16), !dbg !756
  store i32 16, i32* %5, align 4, !dbg !756
  br label %64, !dbg !756
                                                  ; No predecessors!
  br label %64, !dbg !759

; <label>:37:                                     ; preds = %4
  call void @llvm.dbg.declare(metadata i32* %12, metadata !760, metadata !61), !dbg !762
  call void @llvm.dbg.declare(metadata double* %13, metadata !763, metadata !61), !dbg !764
  %38 = load double, double* %10, align 8, !dbg !765
  %39 = call double @exp(double %38) #5, !dbg !766
  store double %39, double* %13, align 8, !dbg !764
  call void @llvm.dbg.declare(metadata i32* %14, metadata !767, metadata !61), !dbg !768
  %40 = load i32, i32* %6, align 4, !dbg !769
  %41 = load i32, i32* %7, align 4, !dbg !770
  %42 = load double, double* %8, align 8, !dbg !771
  %43 = load double*, double** %9, align 8, !dbg !772
  %44 = call i32 @gsl_sf_bessel_In_scaled_array(i32 %40, i32 %41, double %42, double* %43), !dbg !773
  store i32 %44, i32* %14, align 4, !dbg !768
  store i32 0, i32* %12, align 4, !dbg !774
  br label %45, !dbg !776

; <label>:45:                                     ; preds = %59, %37
  %46 = load i32, i32* %12, align 4, !dbg !777
  %47 = load i32, i32* %7, align 4, !dbg !780
  %48 = load i32, i32* %6, align 4, !dbg !781
  %49 = sub nsw i32 %47, %48, !dbg !782
  %50 = icmp sle i32 %46, %49, !dbg !783
  br i1 %50, label %51, label %62, !dbg !784

; <label>:51:                                     ; preds = %45
  %52 = load double, double* %13, align 8, !dbg !785
  %53 = load i32, i32* %12, align 4, !dbg !787
  %54 = sext i32 %53 to i64, !dbg !788
  %55 = load double*, double** %9, align 8, !dbg !788
  %56 = getelementptr inbounds double, double* %55, i64 %54, !dbg !788
  %57 = load double, double* %56, align 8, !dbg !789
  %58 = fmul double %57, %52, !dbg !789
  store double %58, double* %56, align 8, !dbg !789
  br label %59, !dbg !788

; <label>:59:                                     ; preds = %51
  %60 = load i32, i32* %12, align 4, !dbg !790
  %61 = add nsw i32 %60, 1, !dbg !790
  store i32 %61, i32* %12, align 4, !dbg !790
  br label %45, !dbg !792, !llvm.loop !793

; <label>:62:                                     ; preds = %45
  %63 = load i32, i32* %14, align 4, !dbg !795
  store i32 %63, i32* %5, align 4, !dbg !796
  br label %64, !dbg !796

; <label>:64:                                     ; preds = %35, %62, %36
  %65 = load i32, i32* %5, align 4, !dbg !797
  ret i32 %65, !dbg !797
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_bessel_In_scaled(i32, double) #0 !dbg !798 {
  %3 = alloca double, align 8
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca %struct.gsl_sf_result_struct, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !801, metadata !61), !dbg !802
  store double %1, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !803, metadata !61), !dbg !804
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %6, metadata !805, metadata !61), !dbg !806
  call void @llvm.dbg.declare(metadata i32* %7, metadata !807, metadata !61), !dbg !806
  %8 = load i32, i32* %4, align 4, !dbg !806
  %9 = load double, double* %5, align 8, !dbg !806
  %10 = call i32 @gsl_sf_bessel_In_scaled_e(i32 %8, double %9, %struct.gsl_sf_result_struct* %6), !dbg !806
  store i32 %10, i32* %7, align 4, !dbg !806
  %11 = load i32, i32* %7, align 4, !dbg !808
  %12 = icmp ne i32 %11, 0, !dbg !808
  br i1 %12, label %13, label %19, !dbg !806

; <label>:13:                                     ; preds = %2
  br label %14, !dbg !810, !llvm.loop !813

; <label>:14:                                     ; preds = %13
  %15 = load i32, i32* %7, align 4, !dbg !815
  call void @gsl_error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 219, i32 %15), !dbg !815
  %16 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !815
  %17 = load double, double* %16, align 8, !dbg !815
  store double %17, double* %3, align 8, !dbg !815
  br label %22, !dbg !815
                                                  ; No predecessors!
  br label %19, !dbg !818

; <label>:19:                                     ; preds = %18, %2
  %20 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !820
  %21 = load double, double* %20, align 8, !dbg !820
  store double %21, double* %3, align 8, !dbg !820
  br label %22, !dbg !820

; <label>:22:                                     ; preds = %19, %14
  %23 = load double, double* %3, align 8, !dbg !822
  ret double %23, !dbg !822
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_bessel_In(i32, double) #0 !dbg !823 {
  %3 = alloca double, align 8
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca %struct.gsl_sf_result_struct, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !824, metadata !61), !dbg !825
  store double %1, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !826, metadata !61), !dbg !827
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %6, metadata !828, metadata !61), !dbg !829
  call void @llvm.dbg.declare(metadata i32* %7, metadata !830, metadata !61), !dbg !829
  %8 = load i32, i32* %4, align 4, !dbg !829
  %9 = load double, double* %5, align 8, !dbg !829
  %10 = call i32 @gsl_sf_bessel_In_e(i32 %8, double %9, %struct.gsl_sf_result_struct* %6), !dbg !829
  store i32 %10, i32* %7, align 4, !dbg !829
  %11 = load i32, i32* %7, align 4, !dbg !831
  %12 = icmp ne i32 %11, 0, !dbg !831
  br i1 %12, label %13, label %19, !dbg !829

; <label>:13:                                     ; preds = %2
  br label %14, !dbg !833, !llvm.loop !836

; <label>:14:                                     ; preds = %13
  %15 = load i32, i32* %7, align 4, !dbg !838
  call void @gsl_error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 224, i32 %15), !dbg !838
  %16 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !838
  %17 = load double, double* %16, align 8, !dbg !838
  store double %17, double* %3, align 8, !dbg !838
  br label %22, !dbg !838
                                                  ; No predecessors!
  br label %19, !dbg !841

; <label>:19:                                     ; preds = %18, %2
  %20 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !843
  %21 = load double, double* %20, align 8, !dbg !843
  store double %21, double* %3, align 8, !dbg !843
  br label %22, !dbg !843

; <label>:22:                                     ; preds = %19, %14
  %23 = load double, double* %3, align 8, !dbg !845
  ret double %23, !dbg !845
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!44, !45, !46}
!llvm.ident = !{!47}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !41)
!1 = !DIFile(filename: "bessel_In.c", directory: "/fpcc/gsl-2.5/specfunc")
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
!43 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!44 = !{i32 2, !"Dwarf Version", i32 4}
!45 = !{i32 2, !"Debug Info Version", i32 3}
!46 = !{i32 1, !"PIC Level", i32 2}
!47 = !{!"clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)"}
!48 = distinct !DISubprogram(name: "gsl_sf_bessel_In_scaled_e", scope: !1, file: !1, line: 35, type: !49, isLocal: false, isDefinition: true, scopeLine: 36, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !59)
!49 = !DISubroutineType(types: !50)
!50 = !{!43, !43, !51, !52}
!51 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64, align: 64)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !54, line: 41, baseType: !55)
!54 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/fpcc/gsl-2.5/specfunc")
!55 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !54, line: 37, size: 128, align: 64, elements: !56)
!56 = !{!57, !58}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !55, file: !54, line: 38, baseType: !42, size: 64, align: 64)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !55, file: !54, line: 39, baseType: !42, size: 64, align: 64, offset: 64)
!59 = !{}
!60 = !DILocalVariable(name: "n", arg: 1, scope: !48, file: !1, line: 35, type: !43)
!61 = !DIExpression()
!62 = !DILocation(line: 35, column: 31, scope: !48)
!63 = !DILocalVariable(name: "x", arg: 2, scope: !48, file: !1, line: 35, type: !51)
!64 = !DILocation(line: 35, column: 47, scope: !48)
!65 = !DILocalVariable(name: "result", arg: 3, scope: !48, file: !1, line: 35, type: !52)
!66 = !DILocation(line: 35, column: 66, scope: !48)
!67 = !DILocalVariable(name: "ax", scope: !48, file: !1, line: 37, type: !51)
!68 = !DILocation(line: 37, column: 16, scope: !48)
!69 = !DILocation(line: 37, column: 26, scope: !48)
!70 = !DILocation(line: 37, column: 21, scope: !48)
!71 = !DILocation(line: 39, column: 11, scope: !48)
!72 = !DILocation(line: 39, column: 7, scope: !48)
!73 = !DILocation(line: 39, column: 5, scope: !48)
!74 = !DILocation(line: 43, column: 6, scope: !75)
!75 = distinct !DILexicalBlock(scope: !48, file: !1, line: 43, column: 6)
!76 = !DILocation(line: 43, column: 8, scope: !75)
!77 = !DILocation(line: 43, column: 6, scope: !48)
!78 = !DILocation(line: 44, column: 38, scope: !79)
!79 = distinct !DILexicalBlock(scope: !75, file: !1, line: 43, column: 14)
!80 = !DILocation(line: 44, column: 41, scope: !79)
!81 = !DILocation(line: 44, column: 12, scope: !79)
!82 = !DILocation(line: 44, column: 5, scope: !79)
!83 = !DILocation(line: 46, column: 11, scope: !84)
!84 = distinct !DILexicalBlock(scope: !75, file: !1, line: 46, column: 11)
!85 = !DILocation(line: 46, column: 13, scope: !84)
!86 = !DILocation(line: 46, column: 11, scope: !75)
!87 = !DILocation(line: 47, column: 38, scope: !88)
!88 = distinct !DILexicalBlock(scope: !84, file: !1, line: 46, column: 19)
!89 = !DILocation(line: 47, column: 41, scope: !88)
!90 = !DILocation(line: 47, column: 12, scope: !88)
!91 = !DILocation(line: 47, column: 5, scope: !88)
!92 = !DILocation(line: 49, column: 11, scope: !93)
!93 = distinct !DILexicalBlock(scope: !84, file: !1, line: 49, column: 11)
!94 = !DILocation(line: 49, column: 13, scope: !93)
!95 = !DILocation(line: 49, column: 11, scope: !84)
!96 = !DILocation(line: 50, column: 5, scope: !97)
!97 = distinct !DILexicalBlock(scope: !93, file: !1, line: 49, column: 21)
!98 = !DILocation(line: 50, column: 13, scope: !97)
!99 = !DILocation(line: 50, column: 17, scope: !97)
!100 = !DILocation(line: 51, column: 5, scope: !97)
!101 = !DILocation(line: 51, column: 13, scope: !97)
!102 = !DILocation(line: 51, column: 17, scope: !97)
!103 = !DILocation(line: 52, column: 5, scope: !97)
!104 = !DILocation(line: 54, column: 11, scope: !105)
!105 = distinct !DILexicalBlock(scope: !93, file: !1, line: 54, column: 11)
!106 = !DILocation(line: 54, column: 13, scope: !105)
!107 = !DILocation(line: 54, column: 12, scope: !105)
!108 = !DILocation(line: 54, column: 23, scope: !105)
!109 = !DILocation(line: 54, column: 24, scope: !105)
!110 = !DILocation(line: 54, column: 21, scope: !105)
!111 = !DILocation(line: 54, column: 29, scope: !105)
!112 = !DILocation(line: 54, column: 15, scope: !105)
!113 = !DILocation(line: 54, column: 11, scope: !93)
!114 = !DILocalVariable(name: "t", scope: !115, file: !1, line: 55, type: !53)
!115 = distinct !DILexicalBlock(scope: !105, file: !1, line: 54, column: 35)
!116 = !DILocation(line: 55, column: 19, scope: !115)
!117 = !DILocalVariable(name: "ex", scope: !115, file: !1, line: 56, type: !42)
!118 = !DILocation(line: 56, column: 12, scope: !115)
!119 = !DILocation(line: 56, column: 24, scope: !115)
!120 = !DILocation(line: 56, column: 23, scope: !115)
!121 = !DILocation(line: 56, column: 19, scope: !115)
!122 = !DILocalVariable(name: "stat_In", scope: !115, file: !1, line: 57, type: !43)
!123 = !DILocation(line: 57, column: 9, scope: !115)
!124 = !DILocation(line: 57, column: 53, scope: !115)
!125 = !DILocation(line: 57, column: 45, scope: !115)
!126 = !DILocation(line: 57, column: 56, scope: !115)
!127 = !DILocation(line: 57, column: 19, scope: !115)
!128 = !DILocation(line: 58, column: 22, scope: !115)
!129 = !DILocation(line: 58, column: 28, scope: !115)
!130 = !DILocation(line: 58, column: 26, scope: !115)
!131 = !DILocation(line: 58, column: 5, scope: !115)
!132 = !DILocation(line: 58, column: 13, scope: !115)
!133 = !DILocation(line: 58, column: 18, scope: !115)
!134 = !DILocation(line: 59, column: 22, scope: !115)
!135 = !DILocation(line: 59, column: 28, scope: !115)
!136 = !DILocation(line: 59, column: 26, scope: !115)
!137 = !DILocation(line: 59, column: 5, scope: !115)
!138 = !DILocation(line: 59, column: 13, scope: !115)
!139 = !DILocation(line: 59, column: 18, scope: !115)
!140 = !DILocation(line: 60, column: 49, scope: !115)
!141 = !DILocation(line: 60, column: 57, scope: !115)
!142 = !DILocation(line: 60, column: 44, scope: !115)
!143 = !DILocation(line: 60, column: 42, scope: !115)
!144 = !DILocation(line: 60, column: 5, scope: !115)
!145 = !DILocation(line: 60, column: 13, scope: !115)
!146 = !DILocation(line: 60, column: 17, scope: !115)
!147 = !DILocation(line: 61, column: 8, scope: !148)
!148 = distinct !DILexicalBlock(scope: !115, file: !1, line: 61, column: 8)
!149 = !DILocation(line: 61, column: 10, scope: !148)
!150 = !DILocation(line: 61, column: 16, scope: !148)
!151 = !DILocation(line: 61, column: 19, scope: !152)
!152 = !DILexicalBlockFile(scope: !148, file: !1, discriminator: 1)
!153 = !DILocation(line: 61, column: 8, scope: !152)
!154 = !DILocation(line: 61, column: 49, scope: !155)
!155 = !DILexicalBlockFile(scope: !148, file: !1, discriminator: 2)
!156 = !DILocation(line: 61, column: 57, scope: !155)
!157 = !DILocation(line: 61, column: 48, scope: !155)
!158 = !DILocation(line: 61, column: 34, scope: !155)
!159 = !DILocation(line: 61, column: 42, scope: !155)
!160 = !DILocation(line: 61, column: 46, scope: !155)
!161 = !DILocation(line: 62, column: 12, scope: !115)
!162 = !DILocation(line: 62, column: 5, scope: !115)
!163 = !DILocation(line: 64, column: 11, scope: !164)
!164 = distinct !DILexicalBlock(scope: !105, file: !1, line: 64, column: 11)
!165 = !DILocation(line: 64, column: 13, scope: !164)
!166 = !DILocation(line: 64, column: 19, scope: !164)
!167 = !DILocation(line: 64, column: 22, scope: !168)
!168 = !DILexicalBlockFile(scope: !164, file: !1, discriminator: 1)
!169 = !DILocation(line: 64, column: 25, scope: !168)
!170 = !DILocation(line: 64, column: 11, scope: !168)
!171 = !DILocalVariable(name: "I0_scaled", scope: !172, file: !1, line: 65, type: !53)
!172 = distinct !DILexicalBlock(scope: !164, file: !1, line: 64, column: 32)
!173 = !DILocation(line: 65, column: 19, scope: !172)
!174 = !DILocalVariable(name: "stat_I0", scope: !172, file: !1, line: 66, type: !43)
!175 = !DILocation(line: 66, column: 9, scope: !172)
!176 = !DILocation(line: 66, column: 45, scope: !172)
!177 = !DILocation(line: 66, column: 19, scope: !172)
!178 = !DILocalVariable(name: "rat", scope: !172, file: !1, line: 67, type: !42)
!179 = !DILocation(line: 67, column: 12, scope: !172)
!180 = !DILocalVariable(name: "stat_CF1", scope: !172, file: !1, line: 68, type: !43)
!181 = !DILocation(line: 68, column: 9, scope: !172)
!182 = !DILocation(line: 68, column: 52, scope: !172)
!183 = !DILocation(line: 68, column: 44, scope: !172)
!184 = !DILocation(line: 68, column: 55, scope: !172)
!185 = !DILocation(line: 68, column: 20, scope: !172)
!186 = !DILocalVariable(name: "Ikp1", scope: !172, file: !1, line: 69, type: !42)
!187 = !DILocation(line: 69, column: 12, scope: !172)
!188 = !DILocation(line: 69, column: 19, scope: !172)
!189 = !DILocation(line: 69, column: 23, scope: !172)
!190 = !DILocalVariable(name: "Ik", scope: !172, file: !1, line: 70, type: !42)
!191 = !DILocation(line: 70, column: 12, scope: !172)
!192 = !DILocalVariable(name: "Ikm1", scope: !172, file: !1, line: 71, type: !42)
!193 = !DILocation(line: 71, column: 12, scope: !172)
!194 = !DILocalVariable(name: "k", scope: !172, file: !1, line: 72, type: !43)
!195 = !DILocation(line: 72, column: 9, scope: !172)
!196 = !DILocation(line: 73, column: 11, scope: !197)
!197 = distinct !DILexicalBlock(scope: !172, file: !1, line: 73, column: 5)
!198 = !DILocation(line: 73, column: 10, scope: !197)
!199 = !DILocation(line: 73, column: 9, scope: !197)
!200 = !DILocation(line: 73, column: 14, scope: !201)
!201 = !DILexicalBlockFile(scope: !202, file: !1, discriminator: 1)
!202 = distinct !DILexicalBlock(scope: !197, file: !1, line: 73, column: 5)
!203 = !DILocation(line: 73, column: 16, scope: !201)
!204 = !DILocation(line: 73, column: 5, scope: !201)
!205 = !DILocation(line: 74, column: 14, scope: !206)
!206 = distinct !DILexicalBlock(scope: !202, file: !1, line: 73, column: 27)
!207 = !DILocation(line: 74, column: 25, scope: !206)
!208 = !DILocation(line: 74, column: 24, scope: !206)
!209 = !DILocation(line: 74, column: 27, scope: !206)
!210 = !DILocation(line: 74, column: 26, scope: !206)
!211 = !DILocation(line: 74, column: 32, scope: !206)
!212 = !DILocation(line: 74, column: 30, scope: !206)
!213 = !DILocation(line: 74, column: 19, scope: !206)
!214 = !DILocation(line: 74, column: 12, scope: !206)
!215 = !DILocation(line: 75, column: 14, scope: !206)
!216 = !DILocation(line: 75, column: 12, scope: !206)
!217 = !DILocation(line: 76, column: 14, scope: !206)
!218 = !DILocation(line: 76, column: 12, scope: !206)
!219 = !DILocation(line: 77, column: 5, scope: !206)
!220 = !DILocation(line: 73, column: 23, scope: !221)
!221 = !DILexicalBlockFile(scope: !202, file: !1, discriminator: 2)
!222 = !DILocation(line: 73, column: 5, scope: !221)
!223 = distinct !{!223, !224}
!224 = !DILocation(line: 73, column: 5, scope: !172)
!225 = !DILocation(line: 78, column: 30, scope: !172)
!226 = !DILocation(line: 78, column: 56, scope: !172)
!227 = !DILocation(line: 78, column: 54, scope: !172)
!228 = !DILocation(line: 78, column: 34, scope: !172)
!229 = !DILocation(line: 78, column: 5, scope: !172)
!230 = !DILocation(line: 78, column: 13, scope: !172)
!231 = !DILocation(line: 78, column: 18, scope: !172)
!232 = !DILocation(line: 79, column: 30, scope: !172)
!233 = !DILocation(line: 79, column: 56, scope: !172)
!234 = !DILocation(line: 79, column: 54, scope: !172)
!235 = !DILocation(line: 79, column: 34, scope: !172)
!236 = !DILocation(line: 79, column: 5, scope: !172)
!237 = !DILocation(line: 79, column: 13, scope: !172)
!238 = !DILocation(line: 79, column: 18, scope: !172)
!239 = !DILocation(line: 80, column: 49, scope: !172)
!240 = !DILocation(line: 80, column: 57, scope: !172)
!241 = !DILocation(line: 80, column: 44, scope: !172)
!242 = !DILocation(line: 80, column: 42, scope: !172)
!243 = !DILocation(line: 80, column: 5, scope: !172)
!244 = !DILocation(line: 80, column: 13, scope: !172)
!245 = !DILocation(line: 80, column: 17, scope: !172)
!246 = !DILocation(line: 81, column: 8, scope: !247)
!247 = distinct !DILexicalBlock(scope: !172, file: !1, line: 81, column: 8)
!248 = !DILocation(line: 81, column: 10, scope: !247)
!249 = !DILocation(line: 81, column: 16, scope: !247)
!250 = !DILocation(line: 81, column: 19, scope: !251)
!251 = !DILexicalBlockFile(scope: !247, file: !1, discriminator: 1)
!252 = !DILocation(line: 81, column: 8, scope: !251)
!253 = !DILocation(line: 81, column: 49, scope: !254)
!254 = !DILexicalBlockFile(scope: !247, file: !1, discriminator: 2)
!255 = !DILocation(line: 81, column: 57, scope: !254)
!256 = !DILocation(line: 81, column: 48, scope: !254)
!257 = !DILocation(line: 81, column: 34, scope: !254)
!258 = !DILocation(line: 81, column: 42, scope: !254)
!259 = !DILocation(line: 81, column: 46, scope: !254)
!260 = !DILocation(line: 82, column: 12, scope: !172)
!261 = !DILocation(line: 82, column: 12, scope: !262)
!262 = !DILexicalBlockFile(scope: !172, file: !1, discriminator: 1)
!263 = !DILocation(line: 82, column: 12, scope: !264)
!264 = !DILexicalBlockFile(scope: !172, file: !1, discriminator: 2)
!265 = !DILocation(line: 82, column: 12, scope: !266)
!266 = !DILexicalBlockFile(scope: !172, file: !1, discriminator: 3)
!267 = !DILocation(line: 82, column: 12, scope: !268)
!268 = !DILexicalBlockFile(scope: !172, file: !1, discriminator: 4)
!269 = !DILocation(line: 82, column: 12, scope: !270)
!270 = !DILexicalBlockFile(scope: !172, file: !1, discriminator: 5)
!271 = !DILocation(line: 82, column: 12, scope: !272)
!272 = !DILexicalBlockFile(scope: !172, file: !1, discriminator: 6)
!273 = !DILocation(line: 82, column: 5, scope: !272)
!274 = !DILocation(line: 84, column: 12, scope: !275)
!275 = distinct !DILexicalBlock(scope: !164, file: !1, line: 84, column: 12)
!276 = !DILocation(line: 84, column: 12, scope: !277)
!277 = !DILexicalBlockFile(scope: !275, file: !1, discriminator: 1)
!278 = !DILocation(line: 84, column: 12, scope: !279)
!279 = !DILexicalBlockFile(scope: !275, file: !1, discriminator: 2)
!280 = !DILocation(line: 84, column: 12, scope: !281)
!281 = !DILexicalBlockFile(scope: !275, file: !1, discriminator: 3)
!282 = !DILocation(line: 84, column: 51, scope: !281)
!283 = !DILocalVariable(name: "stat_as", scope: !284, file: !1, line: 85, type: !43)
!284 = distinct !DILexicalBlock(scope: !275, file: !1, line: 84, column: 80)
!285 = !DILocation(line: 85, column: 9, scope: !284)
!286 = !DILocation(line: 85, column: 65, scope: !284)
!287 = !DILocation(line: 85, column: 57, scope: !284)
!288 = !DILocation(line: 85, column: 68, scope: !284)
!289 = !DILocation(line: 85, column: 72, scope: !284)
!290 = !DILocation(line: 85, column: 19, scope: !284)
!291 = !DILocation(line: 86, column: 8, scope: !292)
!292 = distinct !DILexicalBlock(scope: !284, file: !1, line: 86, column: 8)
!293 = !DILocation(line: 86, column: 10, scope: !292)
!294 = !DILocation(line: 86, column: 16, scope: !292)
!295 = !DILocation(line: 86, column: 19, scope: !296)
!296 = !DILexicalBlockFile(scope: !292, file: !1, discriminator: 1)
!297 = !DILocation(line: 86, column: 8, scope: !296)
!298 = !DILocation(line: 86, column: 49, scope: !299)
!299 = !DILexicalBlockFile(scope: !292, file: !1, discriminator: 2)
!300 = !DILocation(line: 86, column: 57, scope: !299)
!301 = !DILocation(line: 86, column: 48, scope: !299)
!302 = !DILocation(line: 86, column: 34, scope: !299)
!303 = !DILocation(line: 86, column: 42, scope: !299)
!304 = !DILocation(line: 86, column: 46, scope: !299)
!305 = !DILocation(line: 87, column: 12, scope: !284)
!306 = !DILocation(line: 87, column: 5, scope: !284)
!307 = !DILocalVariable(name: "nhi", scope: !308, file: !1, line: 90, type: !309)
!308 = distinct !DILexicalBlock(scope: !275, file: !1, line: 89, column: 8)
!309 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!310 = !DILocation(line: 90, column: 15, scope: !308)
!311 = !DILocalVariable(name: "r_Ikp1", scope: !308, file: !1, line: 91, type: !53)
!312 = !DILocation(line: 91, column: 19, scope: !308)
!313 = !DILocalVariable(name: "r_Ik", scope: !308, file: !1, line: 92, type: !53)
!314 = !DILocation(line: 92, column: 19, scope: !308)
!315 = !DILocalVariable(name: "stat_a1", scope: !308, file: !1, line: 93, type: !43)
!316 = !DILocation(line: 93, column: 9, scope: !308)
!317 = !DILocation(line: 93, column: 70, scope: !308)
!318 = !DILocation(line: 93, column: 19, scope: !308)
!319 = !DILocalVariable(name: "stat_a2", scope: !308, file: !1, line: 94, type: !43)
!320 = !DILocation(line: 94, column: 9, scope: !308)
!321 = !DILocation(line: 94, column: 70, scope: !308)
!322 = !DILocation(line: 94, column: 19, scope: !308)
!323 = !DILocalVariable(name: "Ikp1", scope: !308, file: !1, line: 95, type: !42)
!324 = !DILocation(line: 95, column: 12, scope: !308)
!325 = !DILocation(line: 95, column: 26, scope: !308)
!326 = !DILocalVariable(name: "Ik", scope: !308, file: !1, line: 96, type: !42)
!327 = !DILocation(line: 96, column: 12, scope: !308)
!328 = !DILocation(line: 96, column: 24, scope: !308)
!329 = !DILocalVariable(name: "Ikm1", scope: !308, file: !1, line: 97, type: !42)
!330 = !DILocation(line: 97, column: 12, scope: !308)
!331 = !DILocalVariable(name: "k", scope: !308, file: !1, line: 98, type: !43)
!332 = !DILocation(line: 98, column: 9, scope: !308)
!333 = !DILocation(line: 99, column: 10, scope: !334)
!334 = distinct !DILexicalBlock(scope: !308, file: !1, line: 99, column: 5)
!335 = !DILocation(line: 99, column: 9, scope: !334)
!336 = !DILocation(line: 99, column: 16, scope: !337)
!337 = !DILexicalBlockFile(scope: !338, file: !1, discriminator: 1)
!338 = distinct !DILexicalBlock(scope: !334, file: !1, line: 99, column: 5)
!339 = !DILocation(line: 99, column: 20, scope: !337)
!340 = !DILocation(line: 99, column: 18, scope: !337)
!341 = !DILocation(line: 99, column: 5, scope: !337)
!342 = !DILocation(line: 100, column: 14, scope: !343)
!343 = distinct !DILexicalBlock(scope: !338, file: !1, line: 99, column: 28)
!344 = !DILocation(line: 100, column: 25, scope: !343)
!345 = !DILocation(line: 100, column: 24, scope: !343)
!346 = !DILocation(line: 100, column: 27, scope: !343)
!347 = !DILocation(line: 100, column: 26, scope: !343)
!348 = !DILocation(line: 100, column: 32, scope: !343)
!349 = !DILocation(line: 100, column: 30, scope: !343)
!350 = !DILocation(line: 100, column: 19, scope: !343)
!351 = !DILocation(line: 100, column: 12, scope: !343)
!352 = !DILocation(line: 101, column: 14, scope: !343)
!353 = !DILocation(line: 101, column: 12, scope: !343)
!354 = !DILocation(line: 102, column: 14, scope: !343)
!355 = !DILocation(line: 102, column: 12, scope: !343)
!356 = !DILocation(line: 103, column: 5, scope: !343)
!357 = !DILocation(line: 99, column: 24, scope: !358)
!358 = !DILexicalBlockFile(scope: !338, file: !1, discriminator: 2)
!359 = !DILocation(line: 99, column: 5, scope: !358)
!360 = distinct !{!360, !361}
!361 = !DILocation(line: 99, column: 5, scope: !308)
!362 = !DILocation(line: 104, column: 19, scope: !308)
!363 = !DILocation(line: 104, column: 5, scope: !308)
!364 = !DILocation(line: 104, column: 13, scope: !308)
!365 = !DILocation(line: 104, column: 17, scope: !308)
!366 = !DILocation(line: 105, column: 19, scope: !308)
!367 = !DILocation(line: 105, column: 32, scope: !308)
!368 = !DILocation(line: 105, column: 43, scope: !308)
!369 = !DILocation(line: 105, column: 35, scope: !308)
!370 = !DILocation(line: 105, column: 54, scope: !308)
!371 = !DILocation(line: 105, column: 63, scope: !308)
!372 = !DILocation(line: 105, column: 57, scope: !308)
!373 = !DILocation(line: 105, column: 47, scope: !308)
!374 = !DILocation(line: 105, column: 22, scope: !308)
!375 = !DILocation(line: 105, column: 5, scope: !308)
!376 = !DILocation(line: 105, column: 13, scope: !308)
!377 = !DILocation(line: 105, column: 17, scope: !308)
!378 = !DILocation(line: 106, column: 8, scope: !379)
!379 = distinct !DILexicalBlock(scope: !308, file: !1, line: 106, column: 8)
!380 = !DILocation(line: 106, column: 10, scope: !379)
!381 = !DILocation(line: 106, column: 16, scope: !379)
!382 = !DILocation(line: 106, column: 19, scope: !383)
!383 = !DILexicalBlockFile(scope: !379, file: !1, discriminator: 1)
!384 = !DILocation(line: 106, column: 8, scope: !383)
!385 = !DILocation(line: 106, column: 49, scope: !386)
!386 = !DILexicalBlockFile(scope: !379, file: !1, discriminator: 2)
!387 = !DILocation(line: 106, column: 57, scope: !386)
!388 = !DILocation(line: 106, column: 48, scope: !386)
!389 = !DILocation(line: 106, column: 34, scope: !386)
!390 = !DILocation(line: 106, column: 42, scope: !386)
!391 = !DILocation(line: 106, column: 46, scope: !386)
!392 = !DILocation(line: 107, column: 12, scope: !308)
!393 = !DILocation(line: 107, column: 12, scope: !394)
!394 = !DILexicalBlockFile(scope: !308, file: !1, discriminator: 1)
!395 = !DILocation(line: 107, column: 12, scope: !396)
!396 = !DILexicalBlockFile(scope: !308, file: !1, discriminator: 2)
!397 = !DILocation(line: 107, column: 12, scope: !398)
!398 = !DILexicalBlockFile(scope: !308, file: !1, discriminator: 3)
!399 = !DILocation(line: 107, column: 12, scope: !400)
!400 = !DILexicalBlockFile(scope: !308, file: !1, discriminator: 4)
!401 = !DILocation(line: 107, column: 12, scope: !402)
!402 = !DILexicalBlockFile(scope: !308, file: !1, discriminator: 5)
!403 = !DILocation(line: 107, column: 12, scope: !404)
!404 = !DILexicalBlockFile(scope: !308, file: !1, discriminator: 6)
!405 = !DILocation(line: 107, column: 5, scope: !404)
!406 = !DILocation(line: 109, column: 1, scope: !48)
!407 = distinct !DISubprogram(name: "gsl_sf_bessel_In_scaled_array", scope: !1, file: !1, line: 113, type: !408, isLocal: false, isDefinition: true, scopeLine: 114, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !59)
!408 = !DISubroutineType(types: !409)
!409 = !{!43, !309, !309, !51, !410}
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64, align: 64)
!411 = !DILocalVariable(name: "nmin", arg: 1, scope: !407, file: !1, line: 113, type: !309)
!412 = !DILocation(line: 113, column: 41, scope: !407)
!413 = !DILocalVariable(name: "nmax", arg: 2, scope: !407, file: !1, line: 113, type: !309)
!414 = !DILocation(line: 113, column: 57, scope: !407)
!415 = !DILocalVariable(name: "x", arg: 3, scope: !407, file: !1, line: 113, type: !51)
!416 = !DILocation(line: 113, column: 76, scope: !407)
!417 = !DILocalVariable(name: "result_array", arg: 4, scope: !407, file: !1, line: 113, type: !410)
!418 = !DILocation(line: 113, column: 88, scope: !407)
!419 = !DILocation(line: 117, column: 6, scope: !420)
!420 = distinct !DILexicalBlock(scope: !407, file: !1, line: 117, column: 6)
!421 = !DILocation(line: 117, column: 13, scope: !420)
!422 = !DILocation(line: 117, column: 11, scope: !420)
!423 = !DILocation(line: 117, column: 18, scope: !420)
!424 = !DILocation(line: 117, column: 21, scope: !425)
!425 = !DILexicalBlockFile(scope: !420, file: !1, discriminator: 1)
!426 = !DILocation(line: 117, column: 26, scope: !425)
!427 = !DILocation(line: 117, column: 6, scope: !425)
!428 = !DILocalVariable(name: "j", scope: !429, file: !1, line: 118, type: !43)
!429 = distinct !DILexicalBlock(scope: !420, file: !1, line: 117, column: 31)
!430 = !DILocation(line: 118, column: 9, scope: !429)
!431 = !DILocation(line: 119, column: 10, scope: !432)
!432 = distinct !DILexicalBlock(scope: !429, file: !1, line: 119, column: 5)
!433 = !DILocation(line: 119, column: 9, scope: !432)
!434 = !DILocation(line: 119, column: 14, scope: !435)
!435 = !DILexicalBlockFile(scope: !436, file: !1, discriminator: 1)
!436 = distinct !DILexicalBlock(scope: !432, file: !1, line: 119, column: 5)
!437 = !DILocation(line: 119, column: 17, scope: !435)
!438 = !DILocation(line: 119, column: 22, scope: !435)
!439 = !DILocation(line: 119, column: 21, scope: !435)
!440 = !DILocation(line: 119, column: 15, scope: !435)
!441 = !DILocation(line: 119, column: 5, scope: !435)
!442 = !DILocation(line: 119, column: 46, scope: !443)
!443 = !DILexicalBlockFile(scope: !436, file: !1, discriminator: 2)
!444 = !DILocation(line: 119, column: 33, scope: !443)
!445 = !DILocation(line: 119, column: 49, scope: !443)
!446 = !DILocation(line: 119, column: 29, scope: !447)
!447 = !DILexicalBlockFile(scope: !436, file: !1, discriminator: 3)
!448 = !DILocation(line: 119, column: 5, scope: !447)
!449 = distinct !{!449, !450}
!450 = !DILocation(line: 119, column: 5, scope: !429)
!451 = !DILocation(line: 120, column: 5, scope: !429)
!452 = distinct !{!452, !451}
!453 = !DILocation(line: 120, column: 5, scope: !454)
!454 = !DILexicalBlockFile(scope: !455, file: !1, discriminator: 1)
!455 = distinct !DILexicalBlock(scope: !429, file: !1, line: 120, column: 5)
!456 = !DILocation(line: 121, column: 3, scope: !429)
!457 = !DILocation(line: 122, column: 11, scope: !458)
!458 = distinct !DILexicalBlock(scope: !420, file: !1, line: 122, column: 11)
!459 = !DILocation(line: 122, column: 13, scope: !458)
!460 = !DILocation(line: 122, column: 11, scope: !420)
!461 = !DILocalVariable(name: "j", scope: !462, file: !1, line: 123, type: !43)
!462 = distinct !DILexicalBlock(scope: !458, file: !1, line: 122, column: 21)
!463 = !DILocation(line: 123, column: 9, scope: !462)
!464 = !DILocation(line: 124, column: 10, scope: !465)
!465 = distinct !DILexicalBlock(scope: !462, file: !1, line: 124, column: 5)
!466 = !DILocation(line: 124, column: 9, scope: !465)
!467 = !DILocation(line: 124, column: 14, scope: !468)
!468 = !DILexicalBlockFile(scope: !469, file: !1, discriminator: 1)
!469 = distinct !DILexicalBlock(scope: !465, file: !1, line: 124, column: 5)
!470 = !DILocation(line: 124, column: 17, scope: !468)
!471 = !DILocation(line: 124, column: 22, scope: !468)
!472 = !DILocation(line: 124, column: 21, scope: !468)
!473 = !DILocation(line: 124, column: 15, scope: !468)
!474 = !DILocation(line: 124, column: 5, scope: !468)
!475 = !DILocation(line: 124, column: 46, scope: !476)
!476 = !DILexicalBlockFile(scope: !469, file: !1, discriminator: 2)
!477 = !DILocation(line: 124, column: 33, scope: !476)
!478 = !DILocation(line: 124, column: 49, scope: !476)
!479 = !DILocation(line: 124, column: 29, scope: !480)
!480 = !DILexicalBlockFile(scope: !469, file: !1, discriminator: 3)
!481 = !DILocation(line: 124, column: 5, scope: !480)
!482 = distinct !{!482, !483}
!483 = !DILocation(line: 124, column: 5, scope: !462)
!484 = !DILocation(line: 125, column: 8, scope: !485)
!485 = distinct !DILexicalBlock(scope: !462, file: !1, line: 125, column: 8)
!486 = !DILocation(line: 125, column: 13, scope: !485)
!487 = !DILocation(line: 125, column: 8, scope: !462)
!488 = !DILocation(line: 125, column: 19, scope: !489)
!489 = !DILexicalBlockFile(scope: !485, file: !1, discriminator: 1)
!490 = !DILocation(line: 125, column: 35, scope: !489)
!491 = !DILocation(line: 126, column: 5, scope: !462)
!492 = !DILocation(line: 128, column: 11, scope: !493)
!493 = distinct !DILexicalBlock(scope: !458, file: !1, line: 128, column: 11)
!494 = !DILocation(line: 128, column: 16, scope: !493)
!495 = !DILocation(line: 128, column: 11, scope: !458)
!496 = !DILocalVariable(name: "I0_scaled", scope: !497, file: !1, line: 129, type: !53)
!497 = distinct !DILexicalBlock(scope: !493, file: !1, line: 128, column: 22)
!498 = !DILocation(line: 129, column: 19, scope: !497)
!499 = !DILocalVariable(name: "stat", scope: !497, file: !1, line: 130, type: !43)
!500 = !DILocation(line: 130, column: 9, scope: !497)
!501 = !DILocation(line: 130, column: 42, scope: !497)
!502 = !DILocation(line: 130, column: 16, scope: !497)
!503 = !DILocation(line: 131, column: 33, scope: !497)
!504 = !DILocation(line: 131, column: 5, scope: !497)
!505 = !DILocation(line: 131, column: 21, scope: !497)
!506 = !DILocation(line: 132, column: 12, scope: !497)
!507 = !DILocation(line: 132, column: 5, scope: !497)
!508 = !DILocalVariable(name: "ax", scope: !509, file: !1, line: 135, type: !51)
!509 = distinct !DILexicalBlock(scope: !493, file: !1, line: 134, column: 8)
!510 = !DILocation(line: 135, column: 18, scope: !509)
!511 = !DILocation(line: 135, column: 28, scope: !509)
!512 = !DILocation(line: 135, column: 23, scope: !509)
!513 = !DILocalVariable(name: "two_over_x", scope: !509, file: !1, line: 136, type: !51)
!514 = !DILocation(line: 136, column: 18, scope: !509)
!515 = !DILocation(line: 136, column: 35, scope: !509)
!516 = !DILocation(line: 136, column: 34, scope: !509)
!517 = !DILocalVariable(name: "r_Inp1", scope: !509, file: !1, line: 139, type: !53)
!518 = !DILocation(line: 139, column: 19, scope: !509)
!519 = !DILocalVariable(name: "r_In", scope: !509, file: !1, line: 140, type: !53)
!520 = !DILocation(line: 140, column: 19, scope: !509)
!521 = !DILocalVariable(name: "stat_0", scope: !509, file: !1, line: 141, type: !43)
!522 = !DILocation(line: 141, column: 9, scope: !509)
!523 = !DILocation(line: 141, column: 44, scope: !509)
!524 = !DILocation(line: 141, column: 48, scope: !509)
!525 = !DILocation(line: 141, column: 52, scope: !509)
!526 = !DILocation(line: 141, column: 18, scope: !509)
!527 = !DILocalVariable(name: "stat_1", scope: !509, file: !1, line: 142, type: !43)
!528 = !DILocation(line: 142, column: 9, scope: !509)
!529 = !DILocation(line: 142, column: 44, scope: !509)
!530 = !DILocation(line: 142, column: 52, scope: !509)
!531 = !DILocation(line: 142, column: 18, scope: !509)
!532 = !DILocalVariable(name: "Inp1", scope: !509, file: !1, line: 143, type: !42)
!533 = !DILocation(line: 143, column: 12, scope: !509)
!534 = !DILocation(line: 143, column: 26, scope: !509)
!535 = !DILocalVariable(name: "In", scope: !509, file: !1, line: 144, type: !42)
!536 = !DILocation(line: 144, column: 12, scope: !509)
!537 = !DILocation(line: 144, column: 24, scope: !509)
!538 = !DILocalVariable(name: "Inm1", scope: !509, file: !1, line: 145, type: !42)
!539 = !DILocation(line: 145, column: 12, scope: !509)
!540 = !DILocalVariable(name: "n", scope: !509, file: !1, line: 146, type: !43)
!541 = !DILocation(line: 146, column: 9, scope: !509)
!542 = !DILocation(line: 148, column: 11, scope: !543)
!543 = distinct !DILexicalBlock(scope: !509, file: !1, line: 148, column: 5)
!544 = !DILocation(line: 148, column: 10, scope: !543)
!545 = !DILocation(line: 148, column: 9, scope: !543)
!546 = !DILocation(line: 148, column: 17, scope: !547)
!547 = !DILexicalBlockFile(scope: !548, file: !1, discriminator: 1)
!548 = distinct !DILexicalBlock(scope: !543, file: !1, line: 148, column: 5)
!549 = !DILocation(line: 148, column: 20, scope: !547)
!550 = !DILocation(line: 148, column: 18, scope: !547)
!551 = !DILocation(line: 148, column: 5, scope: !547)
!552 = !DILocation(line: 149, column: 30, scope: !553)
!553 = distinct !DILexicalBlock(scope: !548, file: !1, line: 148, column: 31)
!554 = !DILocation(line: 149, column: 20, scope: !553)
!555 = !DILocation(line: 149, column: 22, scope: !553)
!556 = !DILocation(line: 149, column: 21, scope: !553)
!557 = !DILocation(line: 149, column: 7, scope: !553)
!558 = !DILocation(line: 149, column: 28, scope: !553)
!559 = !DILocation(line: 150, column: 14, scope: !553)
!560 = !DILocation(line: 150, column: 21, scope: !553)
!561 = !DILocation(line: 150, column: 25, scope: !553)
!562 = !DILocation(line: 150, column: 23, scope: !553)
!563 = !DILocation(line: 150, column: 38, scope: !553)
!564 = !DILocation(line: 150, column: 36, scope: !553)
!565 = !DILocation(line: 150, column: 19, scope: !553)
!566 = !DILocation(line: 150, column: 12, scope: !553)
!567 = !DILocation(line: 151, column: 14, scope: !553)
!568 = !DILocation(line: 151, column: 12, scope: !553)
!569 = !DILocation(line: 152, column: 14, scope: !553)
!570 = !DILocation(line: 152, column: 12, scope: !553)
!571 = !DILocation(line: 153, column: 5, scope: !553)
!572 = !DILocation(line: 148, column: 27, scope: !573)
!573 = !DILexicalBlockFile(scope: !548, file: !1, discriminator: 2)
!574 = !DILocation(line: 148, column: 5, scope: !573)
!575 = distinct !{!575, !576}
!576 = !DILocation(line: 148, column: 5, scope: !509)
!577 = !DILocation(line: 156, column: 8, scope: !578)
!578 = distinct !DILexicalBlock(scope: !509, file: !1, line: 156, column: 8)
!579 = !DILocation(line: 156, column: 10, scope: !578)
!580 = !DILocation(line: 156, column: 8, scope: !509)
!581 = !DILocation(line: 157, column: 13, scope: !582)
!582 = distinct !DILexicalBlock(scope: !583, file: !1, line: 157, column: 7)
!583 = distinct !DILexicalBlock(scope: !578, file: !1, line: 156, column: 17)
!584 = !DILocation(line: 157, column: 12, scope: !582)
!585 = !DILocation(line: 157, column: 11, scope: !582)
!586 = !DILocation(line: 157, column: 19, scope: !587)
!587 = !DILexicalBlockFile(scope: !588, file: !1, discriminator: 1)
!588 = distinct !DILexicalBlock(scope: !582, file: !1, line: 157, column: 7)
!589 = !DILocation(line: 157, column: 22, scope: !587)
!590 = !DILocation(line: 157, column: 20, scope: !587)
!591 = !DILocation(line: 157, column: 7, scope: !587)
!592 = !DILocation(line: 158, column: 12, scope: !593)
!593 = distinct !DILexicalBlock(scope: !594, file: !1, line: 158, column: 12)
!594 = distinct !DILexicalBlock(scope: !588, file: !1, line: 157, column: 33)
!595 = !DILocation(line: 158, column: 12, scope: !594)
!596 = !DILocation(line: 158, column: 64, scope: !597)
!597 = !DILexicalBlockFile(scope: !593, file: !1, discriminator: 1)
!598 = !DILocation(line: 158, column: 66, scope: !597)
!599 = !DILocation(line: 158, column: 65, scope: !597)
!600 = !DILocation(line: 158, column: 51, scope: !597)
!601 = !DILocation(line: 158, column: 50, scope: !597)
!602 = !DILocation(line: 158, column: 40, scope: !597)
!603 = !DILocation(line: 158, column: 42, scope: !597)
!604 = !DILocation(line: 158, column: 41, scope: !597)
!605 = !DILocation(line: 158, column: 27, scope: !597)
!606 = !DILocation(line: 158, column: 48, scope: !597)
!607 = !DILocation(line: 159, column: 7, scope: !594)
!608 = !DILocation(line: 157, column: 29, scope: !609)
!609 = !DILexicalBlockFile(scope: !588, file: !1, discriminator: 2)
!610 = !DILocation(line: 157, column: 7, scope: !609)
!611 = distinct !{!611, !612}
!612 = !DILocation(line: 157, column: 7, scope: !583)
!613 = !DILocation(line: 160, column: 5, scope: !583)
!614 = !DILocation(line: 162, column: 12, scope: !509)
!615 = !DILocation(line: 162, column: 12, scope: !616)
!616 = !DILexicalBlockFile(scope: !509, file: !1, discriminator: 1)
!617 = !DILocation(line: 162, column: 12, scope: !618)
!618 = !DILexicalBlockFile(scope: !509, file: !1, discriminator: 2)
!619 = !DILocation(line: 162, column: 12, scope: !620)
!620 = !DILexicalBlockFile(scope: !509, file: !1, discriminator: 3)
!621 = !DILocation(line: 162, column: 12, scope: !622)
!622 = !DILexicalBlockFile(scope: !509, file: !1, discriminator: 4)
!623 = !DILocation(line: 162, column: 12, scope: !624)
!624 = !DILexicalBlockFile(scope: !509, file: !1, discriminator: 5)
!625 = !DILocation(line: 162, column: 12, scope: !626)
!626 = !DILexicalBlockFile(scope: !509, file: !1, discriminator: 6)
!627 = !DILocation(line: 162, column: 5, scope: !626)
!628 = !DILocation(line: 164, column: 1, scope: !407)
!629 = distinct !DISubprogram(name: "gsl_sf_bessel_In_e", scope: !1, file: !1, line: 168, type: !630, isLocal: false, isDefinition: true, scopeLine: 169, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !59)
!630 = !DISubroutineType(types: !631)
!631 = !{!43, !309, !51, !52}
!632 = !DILocalVariable(name: "n_in", arg: 1, scope: !629, file: !1, line: 168, type: !309)
!633 = !DILocation(line: 168, column: 30, scope: !629)
!634 = !DILocalVariable(name: "x", arg: 2, scope: !629, file: !1, line: 168, type: !51)
!635 = !DILocation(line: 168, column: 49, scope: !629)
!636 = !DILocalVariable(name: "result", arg: 3, scope: !629, file: !1, line: 168, type: !52)
!637 = !DILocation(line: 168, column: 68, scope: !629)
!638 = !DILocalVariable(name: "ax", scope: !629, file: !1, line: 170, type: !51)
!639 = !DILocation(line: 170, column: 16, scope: !629)
!640 = !DILocation(line: 170, column: 26, scope: !629)
!641 = !DILocation(line: 170, column: 21, scope: !629)
!642 = !DILocalVariable(name: "n", scope: !629, file: !1, line: 171, type: !309)
!643 = !DILocation(line: 171, column: 13, scope: !629)
!644 = !DILocation(line: 171, column: 21, scope: !629)
!645 = !DILocation(line: 171, column: 17, scope: !629)
!646 = !DILocalVariable(name: "In_scaled", scope: !629, file: !1, line: 172, type: !53)
!647 = !DILocation(line: 172, column: 17, scope: !629)
!648 = !DILocalVariable(name: "stat_In_scaled", scope: !629, file: !1, line: 173, type: !309)
!649 = !DILocation(line: 173, column: 13, scope: !629)
!650 = !DILocation(line: 173, column: 56, scope: !629)
!651 = !DILocation(line: 173, column: 59, scope: !629)
!652 = !DILocation(line: 173, column: 30, scope: !629)
!653 = !DILocation(line: 178, column: 6, scope: !654)
!654 = distinct !DILexicalBlock(scope: !629, file: !1, line: 178, column: 6)
!655 = !DILocation(line: 178, column: 9, scope: !654)
!656 = !DILocation(line: 178, column: 6, scope: !629)
!657 = !DILocation(line: 179, column: 5, scope: !658)
!658 = distinct !DILexicalBlock(scope: !654, file: !1, line: 178, column: 34)
!659 = distinct !{!659, !657}
!660 = !DILocation(line: 179, column: 5, scope: !661)
!661 = !DILexicalBlockFile(scope: !662, file: !1, discriminator: 1)
!662 = distinct !DILexicalBlock(scope: !658, file: !1, line: 179, column: 5)
!663 = distinct !{!663, !664}
!664 = !DILocation(line: 179, column: 5, scope: !662)
!665 = !DILocation(line: 179, column: 5, scope: !666)
!666 = !DILexicalBlockFile(scope: !667, file: !1, discriminator: 2)
!667 = distinct !DILexicalBlock(scope: !662, file: !1, line: 179, column: 5)
!668 = !DILocation(line: 179, column: 5, scope: !669)
!669 = !DILexicalBlockFile(scope: !662, file: !1, discriminator: 3)
!670 = !DILocation(line: 180, column: 3, scope: !658)
!671 = !DILocalVariable(name: "ex", scope: !672, file: !1, line: 182, type: !51)
!672 = distinct !DILexicalBlock(scope: !654, file: !1, line: 181, column: 8)
!673 = !DILocation(line: 182, column: 18, scope: !672)
!674 = !DILocation(line: 182, column: 27, scope: !672)
!675 = !DILocation(line: 182, column: 23, scope: !672)
!676 = !DILocation(line: 183, column: 20, scope: !672)
!677 = !DILocation(line: 183, column: 35, scope: !672)
!678 = !DILocation(line: 183, column: 23, scope: !672)
!679 = !DILocation(line: 183, column: 5, scope: !672)
!680 = !DILocation(line: 183, column: 13, scope: !672)
!681 = !DILocation(line: 183, column: 18, scope: !672)
!682 = !DILocation(line: 184, column: 20, scope: !672)
!683 = !DILocation(line: 184, column: 35, scope: !672)
!684 = !DILocation(line: 184, column: 23, scope: !672)
!685 = !DILocation(line: 184, column: 5, scope: !672)
!686 = !DILocation(line: 184, column: 13, scope: !672)
!687 = !DILocation(line: 184, column: 18, scope: !672)
!688 = !DILocation(line: 185, column: 20, scope: !672)
!689 = !DILocation(line: 185, column: 23, scope: !672)
!690 = !DILocation(line: 185, column: 48, scope: !672)
!691 = !DILocation(line: 185, column: 56, scope: !672)
!692 = !DILocation(line: 185, column: 43, scope: !672)
!693 = !DILocation(line: 185, column: 41, scope: !672)
!694 = !DILocation(line: 185, column: 5, scope: !672)
!695 = !DILocation(line: 185, column: 13, scope: !672)
!696 = !DILocation(line: 185, column: 17, scope: !672)
!697 = !DILocation(line: 186, column: 8, scope: !698)
!698 = distinct !DILexicalBlock(scope: !672, file: !1, line: 186, column: 8)
!699 = !DILocation(line: 186, column: 10, scope: !698)
!700 = !DILocation(line: 186, column: 16, scope: !698)
!701 = !DILocation(line: 186, column: 19, scope: !702)
!702 = !DILexicalBlockFile(scope: !698, file: !1, discriminator: 1)
!703 = !DILocation(line: 186, column: 8, scope: !702)
!704 = !DILocation(line: 186, column: 49, scope: !705)
!705 = !DILexicalBlockFile(scope: !698, file: !1, discriminator: 2)
!706 = !DILocation(line: 186, column: 57, scope: !705)
!707 = !DILocation(line: 186, column: 48, scope: !705)
!708 = !DILocation(line: 186, column: 34, scope: !705)
!709 = !DILocation(line: 186, column: 42, scope: !705)
!710 = !DILocation(line: 186, column: 46, scope: !705)
!711 = !DILocation(line: 187, column: 12, scope: !672)
!712 = !DILocation(line: 187, column: 5, scope: !672)
!713 = !DILocation(line: 189, column: 1, scope: !629)
!714 = distinct !DISubprogram(name: "gsl_sf_bessel_In_array", scope: !1, file: !1, line: 193, type: !408, isLocal: false, isDefinition: true, scopeLine: 194, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !59)
!715 = !DILocalVariable(name: "nmin", arg: 1, scope: !714, file: !1, line: 193, type: !309)
!716 = !DILocation(line: 193, column: 34, scope: !714)
!717 = !DILocalVariable(name: "nmax", arg: 2, scope: !714, file: !1, line: 193, type: !309)
!718 = !DILocation(line: 193, column: 50, scope: !714)
!719 = !DILocalVariable(name: "x", arg: 3, scope: !714, file: !1, line: 193, type: !51)
!720 = !DILocation(line: 193, column: 69, scope: !714)
!721 = !DILocalVariable(name: "result_array", arg: 4, scope: !714, file: !1, line: 193, type: !410)
!722 = !DILocation(line: 193, column: 81, scope: !714)
!723 = !DILocalVariable(name: "ax", scope: !714, file: !1, line: 195, type: !42)
!724 = !DILocation(line: 195, column: 10, scope: !714)
!725 = !DILocation(line: 195, column: 20, scope: !714)
!726 = !DILocation(line: 195, column: 15, scope: !714)
!727 = !DILocation(line: 199, column: 6, scope: !728)
!728 = distinct !DILexicalBlock(scope: !714, file: !1, line: 199, column: 6)
!729 = !DILocation(line: 199, column: 9, scope: !728)
!730 = !DILocation(line: 199, column: 6, scope: !714)
!731 = !DILocalVariable(name: "j", scope: !732, file: !1, line: 200, type: !43)
!732 = distinct !DILexicalBlock(scope: !728, file: !1, line: 199, column: 34)
!733 = !DILocation(line: 200, column: 9, scope: !732)
!734 = !DILocation(line: 201, column: 10, scope: !735)
!735 = distinct !DILexicalBlock(scope: !732, file: !1, line: 201, column: 5)
!736 = !DILocation(line: 201, column: 9, scope: !735)
!737 = !DILocation(line: 201, column: 14, scope: !738)
!738 = !DILexicalBlockFile(scope: !739, file: !1, discriminator: 1)
!739 = distinct !DILexicalBlock(scope: !735, file: !1, line: 201, column: 5)
!740 = !DILocation(line: 201, column: 17, scope: !738)
!741 = !DILocation(line: 201, column: 22, scope: !738)
!742 = !DILocation(line: 201, column: 21, scope: !738)
!743 = !DILocation(line: 201, column: 15, scope: !738)
!744 = !DILocation(line: 201, column: 5, scope: !738)
!745 = !DILocation(line: 201, column: 46, scope: !746)
!746 = !DILexicalBlockFile(scope: !739, file: !1, discriminator: 2)
!747 = !DILocation(line: 201, column: 33, scope: !746)
!748 = !DILocation(line: 201, column: 49, scope: !746)
!749 = !DILocation(line: 201, column: 29, scope: !750)
!750 = !DILexicalBlockFile(scope: !739, file: !1, discriminator: 3)
!751 = !DILocation(line: 201, column: 5, scope: !750)
!752 = distinct !{!752, !753}
!753 = !DILocation(line: 201, column: 5, scope: !732)
!754 = !DILocation(line: 202, column: 5, scope: !732)
!755 = distinct !{!755, !754}
!756 = !DILocation(line: 202, column: 5, scope: !757)
!757 = !DILexicalBlockFile(scope: !758, file: !1, discriminator: 1)
!758 = distinct !DILexicalBlock(scope: !732, file: !1, line: 202, column: 5)
!759 = !DILocation(line: 203, column: 3, scope: !732)
!760 = !DILocalVariable(name: "j", scope: !761, file: !1, line: 205, type: !43)
!761 = distinct !DILexicalBlock(scope: !728, file: !1, line: 204, column: 8)
!762 = !DILocation(line: 205, column: 9, scope: !761)
!763 = !DILocalVariable(name: "eax", scope: !761, file: !1, line: 206, type: !42)
!764 = !DILocation(line: 206, column: 12, scope: !761)
!765 = !DILocation(line: 206, column: 22, scope: !761)
!766 = !DILocation(line: 206, column: 18, scope: !761)
!767 = !DILocalVariable(name: "status", scope: !761, file: !1, line: 207, type: !43)
!768 = !DILocation(line: 207, column: 9, scope: !761)
!769 = !DILocation(line: 207, column: 48, scope: !761)
!770 = !DILocation(line: 207, column: 54, scope: !761)
!771 = !DILocation(line: 207, column: 60, scope: !761)
!772 = !DILocation(line: 207, column: 63, scope: !761)
!773 = !DILocation(line: 207, column: 18, scope: !761)
!774 = !DILocation(line: 208, column: 10, scope: !775)
!775 = distinct !DILexicalBlock(scope: !761, file: !1, line: 208, column: 5)
!776 = !DILocation(line: 208, column: 9, scope: !775)
!777 = !DILocation(line: 208, column: 14, scope: !778)
!778 = !DILexicalBlockFile(scope: !779, file: !1, discriminator: 1)
!779 = distinct !DILexicalBlock(scope: !775, file: !1, line: 208, column: 5)
!780 = !DILocation(line: 208, column: 17, scope: !778)
!781 = !DILocation(line: 208, column: 22, scope: !778)
!782 = !DILocation(line: 208, column: 21, scope: !778)
!783 = !DILocation(line: 208, column: 15, scope: !778)
!784 = !DILocation(line: 208, column: 5, scope: !778)
!785 = !DILocation(line: 208, column: 52, scope: !786)
!786 = !DILexicalBlockFile(scope: !779, file: !1, discriminator: 2)
!787 = !DILocation(line: 208, column: 46, scope: !786)
!788 = !DILocation(line: 208, column: 33, scope: !786)
!789 = !DILocation(line: 208, column: 49, scope: !786)
!790 = !DILocation(line: 208, column: 29, scope: !791)
!791 = !DILexicalBlockFile(scope: !779, file: !1, discriminator: 3)
!792 = !DILocation(line: 208, column: 5, scope: !791)
!793 = distinct !{!793, !794}
!794 = !DILocation(line: 208, column: 5, scope: !761)
!795 = !DILocation(line: 209, column: 12, scope: !761)
!796 = !DILocation(line: 209, column: 5, scope: !761)
!797 = !DILocation(line: 211, column: 1, scope: !714)
!798 = distinct !DISubprogram(name: "gsl_sf_bessel_In_scaled", scope: !1, file: !1, line: 217, type: !799, isLocal: false, isDefinition: true, scopeLine: 218, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !59)
!799 = !DISubroutineType(types: !800)
!800 = !{!42, !309, !51}
!801 = !DILocalVariable(name: "n", arg: 1, scope: !798, file: !1, line: 217, type: !309)
!802 = !DILocation(line: 217, column: 42, scope: !798)
!803 = !DILocalVariable(name: "x", arg: 2, scope: !798, file: !1, line: 217, type: !51)
!804 = !DILocation(line: 217, column: 58, scope: !798)
!805 = !DILocalVariable(name: "result", scope: !798, file: !1, line: 219, type: !53)
!806 = !DILocation(line: 219, column: 3, scope: !798)
!807 = !DILocalVariable(name: "status", scope: !798, file: !1, line: 219, type: !43)
!808 = !DILocation(line: 219, column: 3, scope: !809)
!809 = distinct !DILexicalBlock(scope: !798, file: !1, line: 219, column: 3)
!810 = !DILocation(line: 219, column: 3, scope: !811)
!811 = !DILexicalBlockFile(scope: !812, file: !1, discriminator: 1)
!812 = distinct !DILexicalBlock(scope: !809, file: !1, line: 219, column: 3)
!813 = distinct !{!813, !814}
!814 = !DILocation(line: 219, column: 3, scope: !812)
!815 = !DILocation(line: 219, column: 3, scope: !816)
!816 = !DILexicalBlockFile(scope: !817, file: !1, discriminator: 2)
!817 = distinct !DILexicalBlock(scope: !812, file: !1, line: 219, column: 3)
!818 = !DILocation(line: 219, column: 3, scope: !819)
!819 = !DILexicalBlockFile(scope: !812, file: !1, discriminator: 3)
!820 = !DILocation(line: 219, column: 3, scope: !821)
!821 = !DILexicalBlockFile(scope: !798, file: !1, discriminator: 4)
!822 = !DILocation(line: 220, column: 1, scope: !798)
!823 = distinct !DISubprogram(name: "gsl_sf_bessel_In", scope: !1, file: !1, line: 222, type: !799, isLocal: false, isDefinition: true, scopeLine: 223, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !59)
!824 = !DILocalVariable(name: "n", arg: 1, scope: !823, file: !1, line: 222, type: !309)
!825 = !DILocation(line: 222, column: 35, scope: !823)
!826 = !DILocalVariable(name: "x", arg: 2, scope: !823, file: !1, line: 222, type: !51)
!827 = !DILocation(line: 222, column: 51, scope: !823)
!828 = !DILocalVariable(name: "result", scope: !823, file: !1, line: 224, type: !53)
!829 = !DILocation(line: 224, column: 3, scope: !823)
!830 = !DILocalVariable(name: "status", scope: !823, file: !1, line: 224, type: !43)
!831 = !DILocation(line: 224, column: 3, scope: !832)
!832 = distinct !DILexicalBlock(scope: !823, file: !1, line: 224, column: 3)
!833 = !DILocation(line: 224, column: 3, scope: !834)
!834 = !DILexicalBlockFile(scope: !835, file: !1, discriminator: 1)
!835 = distinct !DILexicalBlock(scope: !832, file: !1, line: 224, column: 3)
!836 = distinct !{!836, !837}
!837 = !DILocation(line: 224, column: 3, scope: !835)
!838 = !DILocation(line: 224, column: 3, scope: !839)
!839 = !DILexicalBlockFile(scope: !840, file: !1, discriminator: 2)
!840 = distinct !DILexicalBlock(scope: !835, file: !1, line: 224, column: 3)
!841 = !DILocation(line: 224, column: 3, scope: !842)
!842 = !DILexicalBlockFile(scope: !835, file: !1, discriminator: 3)
!843 = !DILocation(line: 224, column: 3, scope: !844)
!844 = !DILexicalBlockFile(scope: !823, file: !1, discriminator: 4)
!845 = !DILocation(line: 225, column: 1, scope: !823)
