; ModuleID = 'trig.c'
source_filename = "trig.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.cheb_series_struct = type { double*, i32, double, double, i32 }
%struct.gsl_sf_result_struct = type { double, double }

@sin_cs = internal global %struct.cheb_series_struct { double* getelementptr inbounds ([12 x double], [12 x double]* @sin_data, i32 0, i32 0), i32 11, double -1.000000e+00, double 1.000000e+00, i32 11 }, align 8
@cos_cs = internal global %struct.cheb_series_struct { double* getelementptr inbounds ([11 x double], [11 x double]* @cos_data, i32 0, i32 0), i32 10, double -1.000000e+00, double 1.000000e+00, i32 10 }, align 8
@.str = private unnamed_addr constant [9 x i8] c"overflow\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"trig.c\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"domain error\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@sinc_cs = internal global %struct.cheb_series_struct { double* getelementptr inbounds ([17 x double], [17 x double]* @sinc_data, i32 0, i32 0), i32 16, double -1.000000e+00, double 1.000000e+00, i32 10 }, align 8
@.str.4 = private unnamed_addr constant [25 x i8] c"gsl_sf_sin_e(x, &result)\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"gsl_sf_cos_e(x, &result)\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"gsl_sf_hypot_e(x, y, &result)\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"gsl_sf_lnsinh_e(x, &result)\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"gsl_sf_lncosh_e(x, &result)\00", align 1
@.str.9 = private unnamed_addr constant [38 x i8] c"gsl_sf_angle_restrict_symm_e(&result)\00", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c"gsl_sf_angle_restrict_pos_e(&result)\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"gsl_sf_sinc_e(x, &result)\00", align 1
@sin_data = internal global [12 x double] [double 0xBFD516D6ED5A909E, double 0x3F64C95F8909975F, double 0x3F4484E2F770F8F9, double 0xBED3806BE0E5860C, double 0xBEA3192DC15885EE, double 0x3E30035896CBFD12, double 0x3DF4CCB1745F7AEF, double 0xBD7E9CA84CF05BCA, double 0xBD3DB5727EAFF830, double 0x3CC359222F7327B9, double 0x3C7DF529F4EE609B, double 0xBC01720EAB8B78D9], align 16
@cos_data = internal global [11 x double] [double 0x3FC52B8F3111FF6A, double 0xBF4BCDF9CE308462, double 0xBF2B89555B0F99C2, double 0x3EB38F2B9C42CF35, double 0x3E833C6A8FD9C1B5, double 0xBE09B0EA9D1E67BC, double 0xBDD0C261C93AC254, double 0x3D5475A7A2BEFBF3, double 0x3D13F154A7D83B0B, double 0xBC9629F4559019C6, double 0xBC513B0F0BC54B44], align 16
@sinc_data = internal global [17 x double] [double 0x3FF2236C458DF176, double 0xBFE10BB1D1FADB31, double 0xBFB17BA739316447, double 0x3FA11A49A6A2DE0A, double 0x3F585764A3A18F58, double 0xBF4810C5BEB07E26, double 0xBEF1A7B93C444C96, double 0x3EE18836CC9A4A27, double 0x3E7F826FAA026E58, double 0xBE6F5C50282A7513, double 0xBE030FC0EBFC7D02, double 0x3DF2FF14EAC02F28, double 0x3D80AC013C73A0B7, double 0xBD70A0F82E42094C, double -4.900690e-15, double 2.445383e-15, double 9.925000e-18], align 16

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_sin_e(double, %struct.gsl_sf_result_struct*) #0 !dbg !73 {
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
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca double, align 8
  %17 = alloca %struct.gsl_sf_result_struct, align 8
  %18 = alloca double, align 8
  %19 = alloca %struct.gsl_sf_result_struct, align 8
  %20 = alloca double, align 8
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !84, metadata !85), !dbg !86
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %5, metadata !87, metadata !85), !dbg !88
  call void @llvm.dbg.declare(metadata double* %6, metadata !89, metadata !85), !dbg !92
  store double 0x3FE921FB40000000, double* %6, align 8, !dbg !92
  call void @llvm.dbg.declare(metadata double* %7, metadata !93, metadata !85), !dbg !94
  store double 0x3E64442D00000000, double* %7, align 8, !dbg !94
  call void @llvm.dbg.declare(metadata double* %8, metadata !95, metadata !85), !dbg !96
  store double 0x3CE8469898CC5170, double* %8, align 8, !dbg !96
  call void @llvm.dbg.declare(metadata double* %9, metadata !97, metadata !85), !dbg !98
  %21 = load double, double* %4, align 8, !dbg !99
  %22 = fcmp oge double %21, 0.000000e+00, !dbg !99
  %23 = select i1 %22, i32 1, i32 -1, !dbg !99
  %24 = sitofp i32 %23 to double, !dbg !99
  store double %24, double* %9, align 8, !dbg !98
  call void @llvm.dbg.declare(metadata double* %10, metadata !100, metadata !85), !dbg !101
  %25 = load double, double* %4, align 8, !dbg !102
  %26 = call double @fabs(double %25) #1, !dbg !103
  store double %26, double* %10, align 8, !dbg !101
  %27 = load double, double* %10, align 8, !dbg !104
  %28 = fcmp olt double %27, 0x3F20000000000000, !dbg !106
  br i1 %28, label %29, label %49, !dbg !107

; <label>:29:                                     ; preds = %2
  call void @llvm.dbg.declare(metadata double* %11, metadata !108, metadata !85), !dbg !110
  %30 = load double, double* %4, align 8, !dbg !111
  %31 = load double, double* %4, align 8, !dbg !112
  %32 = fmul double %30, %31, !dbg !113
  store double %32, double* %11, align 8, !dbg !110
  %33 = load double, double* %4, align 8, !dbg !114
  %34 = load double, double* %11, align 8, !dbg !115
  %35 = fdiv double %34, 6.000000e+00, !dbg !116
  %36 = fsub double 1.000000e+00, %35, !dbg !117
  %37 = fmul double %33, %36, !dbg !118
  %38 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !119
  %39 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %38, i32 0, i32 0, !dbg !120
  store double %37, double* %39, align 8, !dbg !121
  %40 = load double, double* %4, align 8, !dbg !122
  %41 = load double, double* %11, align 8, !dbg !123
  %42 = fmul double %40, %41, !dbg !124
  %43 = load double, double* %11, align 8, !dbg !125
  %44 = fmul double %42, %43, !dbg !126
  %45 = fdiv double %44, 1.000000e+02, !dbg !127
  %46 = call double @fabs(double %45) #1, !dbg !128
  %47 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !129
  %48 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %47, i32 0, i32 1, !dbg !130
  store double %46, double* %48, align 8, !dbg !131
  store i32 0, i32* %3, align 4, !dbg !132
  br label %186, !dbg !132

; <label>:49:                                     ; preds = %2
  call void @llvm.dbg.declare(metadata double* %12, metadata !133, metadata !85), !dbg !135
  %50 = load double, double* %9, align 8, !dbg !136
  store double %50, double* %12, align 8, !dbg !135
  call void @llvm.dbg.declare(metadata double* %13, metadata !137, metadata !85), !dbg !138
  %51 = load double, double* %10, align 8, !dbg !139
  %52 = fdiv double %51, 0x3FE921FB54442D18, !dbg !140
  %53 = call double @floor(double %52) #1, !dbg !141
  store double %53, double* %13, align 8, !dbg !138
  call void @llvm.dbg.declare(metadata i32* %14, metadata !142, metadata !85), !dbg !143
  %54 = load double, double* %13, align 8, !dbg !144
  %55 = load double, double* %13, align 8, !dbg !145
  %56 = call double @ldexp(double %55, i32 -3) #6, !dbg !146
  %57 = call double @floor(double %56) #1, !dbg !147
  %58 = call double @ldexp(double %57, i32 3) #6, !dbg !149
  %59 = fsub double %54, %58, !dbg !151
  %60 = fptosi double %59 to i32, !dbg !144
  store i32 %60, i32* %14, align 4, !dbg !143
  call void @llvm.dbg.declare(metadata i32* %15, metadata !152, metadata !85), !dbg !153
  call void @llvm.dbg.declare(metadata double* %16, metadata !154, metadata !85), !dbg !155
  %61 = load i32, i32* %14, align 4, !dbg !156
  %62 = and i32 %61, 1, !dbg !156
  %63 = icmp ne i32 %62, 0, !dbg !156
  br i1 %63, label %64, label %71, !dbg !158

; <label>:64:                                     ; preds = %49
  %65 = load i32, i32* %14, align 4, !dbg !159
  %66 = add nsw i32 %65, 1, !dbg !159
  store i32 %66, i32* %14, align 4, !dbg !159
  %67 = load i32, i32* %14, align 4, !dbg !161
  %68 = and i32 %67, 7, !dbg !161
  store i32 %68, i32* %14, align 4, !dbg !161
  %69 = load double, double* %13, align 8, !dbg !162
  %70 = fadd double %69, 1.000000e+00, !dbg !162
  store double %70, double* %13, align 8, !dbg !162
  br label %71, !dbg !163

; <label>:71:                                     ; preds = %64, %49
  %72 = load i32, i32* %14, align 4, !dbg !164
  %73 = icmp sgt i32 %72, 3, !dbg !166
  br i1 %73, label %74, label %79, !dbg !167

; <label>:74:                                     ; preds = %71
  %75 = load i32, i32* %14, align 4, !dbg !168
  %76 = sub nsw i32 %75, 4, !dbg !168
  store i32 %76, i32* %14, align 4, !dbg !168
  %77 = load double, double* %12, align 8, !dbg !170
  %78 = fsub double -0.000000e+00, %77, !dbg !171
  store double %78, double* %12, align 8, !dbg !172
  br label %79, !dbg !173

; <label>:79:                                     ; preds = %74, %71
  %80 = load double, double* %10, align 8, !dbg !174
  %81 = load double, double* %13, align 8, !dbg !175
  %82 = fmul double %81, 0x3FE921FB40000000, !dbg !176
  %83 = fsub double %80, %82, !dbg !177
  %84 = load double, double* %13, align 8, !dbg !178
  %85 = fmul double %84, 0x3E64442D00000000, !dbg !179
  %86 = fsub double %83, %85, !dbg !180
  %87 = load double, double* %13, align 8, !dbg !181
  %88 = fmul double %87, 0x3CE8469898CC5170, !dbg !182
  %89 = fsub double %86, %88, !dbg !183
  store double %89, double* %16, align 8, !dbg !184
  %90 = load i32, i32* %14, align 4, !dbg !185
  %91 = icmp eq i32 %90, 0, !dbg !187
  br i1 %91, label %92, label %111, !dbg !188

; <label>:92:                                     ; preds = %79
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %17, metadata !189, metadata !85), !dbg !191
  call void @llvm.dbg.declare(metadata double* %18, metadata !192, metadata !85), !dbg !193
  %93 = load double, double* %16, align 8, !dbg !194
  %94 = call double @fabs(double %93) #1, !dbg !195
  %95 = fmul double 8.000000e+00, %94, !dbg !196
  %96 = fdiv double %95, 0x400921FB54442D18, !dbg !197
  %97 = fsub double %96, 1.000000e+00, !dbg !198
  store double %97, double* %18, align 8, !dbg !193
  %98 = load double, double* %18, align 8, !dbg !199
  %99 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @sin_cs, double %98, %struct.gsl_sf_result_struct* %17), !dbg !200
  store i32 %99, i32* %15, align 4, !dbg !201
  %100 = load double, double* %16, align 8, !dbg !202
  %101 = load double, double* %16, align 8, !dbg !203
  %102 = load double, double* %16, align 8, !dbg !204
  %103 = fmul double %101, %102, !dbg !205
  %104 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %17, i32 0, i32 0, !dbg !206
  %105 = load double, double* %104, align 8, !dbg !206
  %106 = fmul double %103, %105, !dbg !207
  %107 = fadd double 1.000000e+00, %106, !dbg !208
  %108 = fmul double %100, %107, !dbg !209
  %109 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !210
  %110 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %109, i32 0, i32 0, !dbg !211
  store double %108, double* %110, align 8, !dbg !212
  br label %134, !dbg !213

; <label>:111:                                    ; preds = %79
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %19, metadata !214, metadata !85), !dbg !216
  call void @llvm.dbg.declare(metadata double* %20, metadata !217, metadata !85), !dbg !218
  %112 = load double, double* %16, align 8, !dbg !219
  %113 = call double @fabs(double %112) #1, !dbg !220
  %114 = fmul double 8.000000e+00, %113, !dbg !221
  %115 = fdiv double %114, 0x400921FB54442D18, !dbg !222
  %116 = fsub double %115, 1.000000e+00, !dbg !223
  store double %116, double* %20, align 8, !dbg !218
  %117 = load double, double* %20, align 8, !dbg !224
  %118 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @cos_cs, double %117, %struct.gsl_sf_result_struct* %19), !dbg !225
  store i32 %118, i32* %15, align 4, !dbg !226
  %119 = load double, double* %16, align 8, !dbg !227
  %120 = fmul double 5.000000e-01, %119, !dbg !228
  %121 = load double, double* %16, align 8, !dbg !229
  %122 = fmul double %120, %121, !dbg !230
  %123 = load double, double* %16, align 8, !dbg !231
  %124 = load double, double* %16, align 8, !dbg !232
  %125 = fmul double %123, %124, !dbg !233
  %126 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %19, i32 0, i32 0, !dbg !234
  %127 = load double, double* %126, align 8, !dbg !234
  %128 = fmul double %125, %127, !dbg !235
  %129 = fsub double 1.000000e+00, %128, !dbg !236
  %130 = fmul double %122, %129, !dbg !237
  %131 = fsub double 1.000000e+00, %130, !dbg !238
  %132 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !239
  %133 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %132, i32 0, i32 0, !dbg !240
  store double %131, double* %133, align 8, !dbg !241
  br label %134

; <label>:134:                                    ; preds = %111, %92
  %135 = load double, double* %12, align 8, !dbg !242
  %136 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !243
  %137 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %136, i32 0, i32 0, !dbg !244
  %138 = load double, double* %137, align 8, !dbg !245
  %139 = fmul double %138, %135, !dbg !245
  store double %139, double* %137, align 8, !dbg !245
  %140 = load double, double* %10, align 8, !dbg !246
  %141 = fcmp ogt double %140, 0x4330000000000000, !dbg !248
  br i1 %141, label %142, label %149, !dbg !249

; <label>:142:                                    ; preds = %134
  %143 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !250
  %144 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %143, i32 0, i32 0, !dbg !252
  %145 = load double, double* %144, align 8, !dbg !252
  %146 = call double @fabs(double %145) #1, !dbg !253
  %147 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !254
  %148 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %147, i32 0, i32 1, !dbg !255
  store double %146, double* %148, align 8, !dbg !256
  br label %184, !dbg !257

; <label>:149:                                    ; preds = %134
  %150 = load double, double* %10, align 8, !dbg !258
  %151 = fcmp ogt double %150, 0x41F9000000000000, !dbg !260
  br i1 %151, label %152, label %163, !dbg !261

; <label>:152:                                    ; preds = %149
  %153 = load double, double* %10, align 8, !dbg !262
  %154 = fmul double 2.000000e+00, %153, !dbg !264
  %155 = fmul double %154, 0x3CB0000000000000, !dbg !265
  %156 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !266
  %157 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %156, i32 0, i32 0, !dbg !267
  %158 = load double, double* %157, align 8, !dbg !267
  %159 = call double @fabs(double %158) #1, !dbg !268
  %160 = fmul double %155, %159, !dbg !269
  %161 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !270
  %162 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %161, i32 0, i32 1, !dbg !271
  store double %160, double* %162, align 8, !dbg !272
  br label %183, !dbg !273

; <label>:163:                                    ; preds = %149
  %164 = load double, double* %10, align 8, !dbg !274
  %165 = fcmp ogt double %164, 0x415999999999999A, !dbg !276
  br i1 %165, label %166, label %174, !dbg !277

; <label>:166:                                    ; preds = %163
  %167 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !278
  %168 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %167, i32 0, i32 0, !dbg !280
  %169 = load double, double* %168, align 8, !dbg !280
  %170 = call double @fabs(double %169) #1, !dbg !281
  %171 = fmul double 0x3E60000000000000, %170, !dbg !282
  %172 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !283
  %173 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %172, i32 0, i32 1, !dbg !284
  store double %171, double* %173, align 8, !dbg !285
  br label %182, !dbg !286

; <label>:174:                                    ; preds = %163
  %175 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !287
  %176 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %175, i32 0, i32 0, !dbg !289
  %177 = load double, double* %176, align 8, !dbg !289
  %178 = call double @fabs(double %177) #1, !dbg !290
  %179 = fmul double 0x3CC0000000000000, %178, !dbg !291
  %180 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !292
  %181 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %180, i32 0, i32 1, !dbg !293
  store double %179, double* %181, align 8, !dbg !294
  br label %182

; <label>:182:                                    ; preds = %174, %166
  br label %183

; <label>:183:                                    ; preds = %182, %152
  br label %184

; <label>:184:                                    ; preds = %183, %142
  %185 = load i32, i32* %15, align 4, !dbg !295
  store i32 %185, i32* %3, align 4, !dbg !296
  br label %186, !dbg !296

; <label>:186:                                    ; preds = %184, %29
  %187 = load i32, i32* %3, align 4, !dbg !297
  ret i32 %187, !dbg !297
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readnone
declare double @fabs(double) #2

; Function Attrs: nounwind readnone
declare double @floor(double) #2

; Function Attrs: nounwind
declare double @ldexp(double, i32) #3

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @cheb_eval_e(%struct.cheb_series_struct*, double, %struct.gsl_sf_result_struct*) #4 !dbg !298 {
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
  call void @llvm.dbg.declare(metadata %struct.cheb_series_struct** %4, metadata !304, metadata !85), !dbg !305
  store double %1, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !306, metadata !85), !dbg !307
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %6, metadata !308, metadata !85), !dbg !309
  call void @llvm.dbg.declare(metadata i32* %7, metadata !310, metadata !85), !dbg !311
  call void @llvm.dbg.declare(metadata double* %8, metadata !312, metadata !85), !dbg !313
  store double 0.000000e+00, double* %8, align 8, !dbg !313
  call void @llvm.dbg.declare(metadata double* %9, metadata !314, metadata !85), !dbg !315
  store double 0.000000e+00, double* %9, align 8, !dbg !315
  call void @llvm.dbg.declare(metadata double* %10, metadata !316, metadata !85), !dbg !317
  %15 = load double, double* %5, align 8, !dbg !318
  %16 = fmul double 2.000000e+00, %15, !dbg !319
  %17 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !320
  %18 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %17, i32 0, i32 2, !dbg !321
  %19 = load double, double* %18, align 8, !dbg !321
  %20 = fsub double %16, %19, !dbg !322
  %21 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !323
  %22 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %21, i32 0, i32 3, !dbg !324
  %23 = load double, double* %22, align 8, !dbg !324
  %24 = fsub double %20, %23, !dbg !325
  %25 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !326
  %26 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %25, i32 0, i32 3, !dbg !327
  %27 = load double, double* %26, align 8, !dbg !327
  %28 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !328
  %29 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %28, i32 0, i32 2, !dbg !329
  %30 = load double, double* %29, align 8, !dbg !329
  %31 = fsub double %27, %30, !dbg !330
  %32 = fdiv double %24, %31, !dbg !331
  store double %32, double* %10, align 8, !dbg !317
  call void @llvm.dbg.declare(metadata double* %11, metadata !332, metadata !85), !dbg !333
  %33 = load double, double* %10, align 8, !dbg !334
  %34 = fmul double 2.000000e+00, %33, !dbg !335
  store double %34, double* %11, align 8, !dbg !333
  call void @llvm.dbg.declare(metadata double* %12, metadata !336, metadata !85), !dbg !337
  store double 0.000000e+00, double* %12, align 8, !dbg !337
  %35 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !338
  %36 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %35, i32 0, i32 1, !dbg !340
  %37 = load i32, i32* %36, align 8, !dbg !340
  store i32 %37, i32* %7, align 4, !dbg !341
  br label %38, !dbg !342

; <label>:38:                                     ; preds = %75, %3
  %39 = load i32, i32* %7, align 4, !dbg !343
  %40 = icmp sge i32 %39, 1, !dbg !346
  br i1 %40, label %41, label %78, !dbg !347

; <label>:41:                                     ; preds = %38
  call void @llvm.dbg.declare(metadata double* %13, metadata !348, metadata !85), !dbg !350
  %42 = load double, double* %8, align 8, !dbg !351
  store double %42, double* %13, align 8, !dbg !350
  %43 = load double, double* %11, align 8, !dbg !352
  %44 = load double, double* %8, align 8, !dbg !353
  %45 = fmul double %43, %44, !dbg !354
  %46 = load double, double* %9, align 8, !dbg !355
  %47 = fsub double %45, %46, !dbg !356
  %48 = load i32, i32* %7, align 4, !dbg !357
  %49 = sext i32 %48 to i64, !dbg !358
  %50 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !358
  %51 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %50, i32 0, i32 0, !dbg !359
  %52 = load double*, double** %51, align 8, !dbg !359
  %53 = getelementptr inbounds double, double* %52, i64 %49, !dbg !358
  %54 = load double, double* %53, align 8, !dbg !358
  %55 = fadd double %47, %54, !dbg !360
  store double %55, double* %8, align 8, !dbg !361
  %56 = load double, double* %11, align 8, !dbg !362
  %57 = load double, double* %13, align 8, !dbg !363
  %58 = fmul double %56, %57, !dbg !364
  %59 = call double @fabs(double %58) #1, !dbg !365
  %60 = load double, double* %9, align 8, !dbg !366
  %61 = call double @fabs(double %60) #1, !dbg !367
  %62 = fadd double %59, %61, !dbg !369
  %63 = load i32, i32* %7, align 4, !dbg !370
  %64 = sext i32 %63 to i64, !dbg !371
  %65 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !371
  %66 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %65, i32 0, i32 0, !dbg !372
  %67 = load double*, double** %66, align 8, !dbg !372
  %68 = getelementptr inbounds double, double* %67, i64 %64, !dbg !371
  %69 = load double, double* %68, align 8, !dbg !371
  %70 = call double @fabs(double %69) #1, !dbg !373
  %71 = fadd double %62, %70, !dbg !375
  %72 = load double, double* %12, align 8, !dbg !376
  %73 = fadd double %72, %71, !dbg !376
  store double %73, double* %12, align 8, !dbg !376
  %74 = load double, double* %13, align 8, !dbg !377
  store double %74, double* %9, align 8, !dbg !378
  br label %75, !dbg !379

; <label>:75:                                     ; preds = %41
  %76 = load i32, i32* %7, align 4, !dbg !380
  %77 = add nsw i32 %76, -1, !dbg !380
  store i32 %77, i32* %7, align 4, !dbg !380
  br label %38, !dbg !382, !llvm.loop !383

; <label>:78:                                     ; preds = %38
  call void @llvm.dbg.declare(metadata double* %14, metadata !385, metadata !85), !dbg !387
  %79 = load double, double* %8, align 8, !dbg !388
  store double %79, double* %14, align 8, !dbg !387
  %80 = load double, double* %10, align 8, !dbg !389
  %81 = load double, double* %8, align 8, !dbg !390
  %82 = fmul double %80, %81, !dbg !391
  %83 = load double, double* %9, align 8, !dbg !392
  %84 = fsub double %82, %83, !dbg !393
  %85 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !394
  %86 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %85, i32 0, i32 0, !dbg !395
  %87 = load double*, double** %86, align 8, !dbg !395
  %88 = getelementptr inbounds double, double* %87, i64 0, !dbg !394
  %89 = load double, double* %88, align 8, !dbg !394
  %90 = fmul double 5.000000e-01, %89, !dbg !396
  %91 = fadd double %84, %90, !dbg !397
  store double %91, double* %8, align 8, !dbg !398
  %92 = load double, double* %10, align 8, !dbg !399
  %93 = load double, double* %14, align 8, !dbg !400
  %94 = fmul double %92, %93, !dbg !401
  %95 = call double @fabs(double %94) #1, !dbg !402
  %96 = load double, double* %9, align 8, !dbg !403
  %97 = call double @fabs(double %96) #1, !dbg !404
  %98 = fadd double %95, %97, !dbg !406
  %99 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !407
  %100 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %99, i32 0, i32 0, !dbg !408
  %101 = load double*, double** %100, align 8, !dbg !408
  %102 = getelementptr inbounds double, double* %101, i64 0, !dbg !407
  %103 = load double, double* %102, align 8, !dbg !407
  %104 = call double @fabs(double %103) #1, !dbg !409
  %105 = fmul double 5.000000e-01, %104, !dbg !411
  %106 = fadd double %98, %105, !dbg !412
  %107 = load double, double* %12, align 8, !dbg !413
  %108 = fadd double %107, %106, !dbg !413
  store double %108, double* %12, align 8, !dbg !413
  %109 = load double, double* %8, align 8, !dbg !414
  %110 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !415
  %111 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %110, i32 0, i32 0, !dbg !416
  store double %109, double* %111, align 8, !dbg !417
  %112 = load double, double* %12, align 8, !dbg !418
  %113 = fmul double 0x3CB0000000000000, %112, !dbg !419
  %114 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !420
  %115 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %114, i32 0, i32 1, !dbg !421
  %116 = load i32, i32* %115, align 8, !dbg !421
  %117 = sext i32 %116 to i64, !dbg !422
  %118 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !422
  %119 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %118, i32 0, i32 0, !dbg !423
  %120 = load double*, double** %119, align 8, !dbg !423
  %121 = getelementptr inbounds double, double* %120, i64 %117, !dbg !422
  %122 = load double, double* %121, align 8, !dbg !422
  %123 = call double @fabs(double %122) #1, !dbg !424
  %124 = fadd double %113, %123, !dbg !425
  %125 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !426
  %126 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %125, i32 0, i32 1, !dbg !427
  store double %124, double* %126, align 8, !dbg !428
  ret i32 0, !dbg !429
}

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_cos_e(double, %struct.gsl_sf_result_struct*) #0 !dbg !430 {
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
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca double, align 8
  %16 = alloca %struct.gsl_sf_result_struct, align 8
  %17 = alloca double, align 8
  %18 = alloca %struct.gsl_sf_result_struct, align 8
  %19 = alloca double, align 8
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !431, metadata !85), !dbg !432
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %5, metadata !433, metadata !85), !dbg !434
  call void @llvm.dbg.declare(metadata double* %6, metadata !435, metadata !85), !dbg !437
  store double 0x3FE921FB40000000, double* %6, align 8, !dbg !437
  call void @llvm.dbg.declare(metadata double* %7, metadata !438, metadata !85), !dbg !439
  store double 0x3E64442D00000000, double* %7, align 8, !dbg !439
  call void @llvm.dbg.declare(metadata double* %8, metadata !440, metadata !85), !dbg !441
  store double 0x3CE8469898CC5170, double* %8, align 8, !dbg !441
  call void @llvm.dbg.declare(metadata double* %9, metadata !442, metadata !85), !dbg !443
  %20 = load double, double* %4, align 8, !dbg !444
  %21 = call double @fabs(double %20) #1, !dbg !445
  store double %21, double* %9, align 8, !dbg !443
  %22 = load double, double* %9, align 8, !dbg !446
  %23 = fcmp olt double %22, 0x3F20000000000000, !dbg !448
  br i1 %23, label %24, label %40, !dbg !449

; <label>:24:                                     ; preds = %2
  call void @llvm.dbg.declare(metadata double* %10, metadata !450, metadata !85), !dbg !452
  %25 = load double, double* %4, align 8, !dbg !453
  %26 = load double, double* %4, align 8, !dbg !454
  %27 = fmul double %25, %26, !dbg !455
  store double %27, double* %10, align 8, !dbg !452
  %28 = load double, double* %10, align 8, !dbg !456
  %29 = fmul double 5.000000e-01, %28, !dbg !457
  %30 = fsub double 1.000000e+00, %29, !dbg !458
  %31 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !459
  %32 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %31, i32 0, i32 0, !dbg !460
  store double %30, double* %32, align 8, !dbg !461
  %33 = load double, double* %10, align 8, !dbg !462
  %34 = load double, double* %10, align 8, !dbg !463
  %35 = fmul double %33, %34, !dbg !464
  %36 = fdiv double %35, 1.200000e+01, !dbg !465
  %37 = call double @fabs(double %36) #1, !dbg !466
  %38 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !467
  %39 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %38, i32 0, i32 1, !dbg !468
  store double %37, double* %39, align 8, !dbg !469
  store i32 0, i32* %3, align 4, !dbg !470
  br label %182, !dbg !470

; <label>:40:                                     ; preds = %2
  call void @llvm.dbg.declare(metadata double* %11, metadata !471, metadata !85), !dbg !473
  store double 1.000000e+00, double* %11, align 8, !dbg !473
  call void @llvm.dbg.declare(metadata double* %12, metadata !474, metadata !85), !dbg !475
  %41 = load double, double* %9, align 8, !dbg !476
  %42 = fdiv double %41, 0x3FE921FB54442D18, !dbg !477
  %43 = call double @floor(double %42) #1, !dbg !478
  store double %43, double* %12, align 8, !dbg !475
  call void @llvm.dbg.declare(metadata i32* %13, metadata !479, metadata !85), !dbg !480
  %44 = load double, double* %12, align 8, !dbg !481
  %45 = load double, double* %12, align 8, !dbg !482
  %46 = call double @ldexp(double %45, i32 -3) #6, !dbg !483
  %47 = call double @floor(double %46) #1, !dbg !484
  %48 = call double @ldexp(double %47, i32 3) #6, !dbg !486
  %49 = fsub double %44, %48, !dbg !488
  %50 = fptosi double %49 to i32, !dbg !481
  store i32 %50, i32* %13, align 4, !dbg !480
  call void @llvm.dbg.declare(metadata i32* %14, metadata !489, metadata !85), !dbg !490
  call void @llvm.dbg.declare(metadata double* %15, metadata !491, metadata !85), !dbg !492
  %51 = load i32, i32* %13, align 4, !dbg !493
  %52 = and i32 %51, 1, !dbg !493
  %53 = icmp ne i32 %52, 0, !dbg !493
  br i1 %53, label %54, label %61, !dbg !495

; <label>:54:                                     ; preds = %40
  %55 = load i32, i32* %13, align 4, !dbg !496
  %56 = add nsw i32 %55, 1, !dbg !496
  store i32 %56, i32* %13, align 4, !dbg !496
  %57 = load i32, i32* %13, align 4, !dbg !498
  %58 = and i32 %57, 7, !dbg !498
  store i32 %58, i32* %13, align 4, !dbg !498
  %59 = load double, double* %12, align 8, !dbg !499
  %60 = fadd double %59, 1.000000e+00, !dbg !499
  store double %60, double* %12, align 8, !dbg !499
  br label %61, !dbg !500

; <label>:61:                                     ; preds = %54, %40
  %62 = load i32, i32* %13, align 4, !dbg !501
  %63 = icmp sgt i32 %62, 3, !dbg !503
  br i1 %63, label %64, label %69, !dbg !504

; <label>:64:                                     ; preds = %61
  %65 = load i32, i32* %13, align 4, !dbg !505
  %66 = sub nsw i32 %65, 4, !dbg !505
  store i32 %66, i32* %13, align 4, !dbg !505
  %67 = load double, double* %11, align 8, !dbg !507
  %68 = fsub double -0.000000e+00, %67, !dbg !508
  store double %68, double* %11, align 8, !dbg !509
  br label %69, !dbg !510

; <label>:69:                                     ; preds = %64, %61
  %70 = load i32, i32* %13, align 4, !dbg !511
  %71 = icmp sgt i32 %70, 1, !dbg !513
  br i1 %71, label %72, label %75, !dbg !514

; <label>:72:                                     ; preds = %69
  %73 = load double, double* %11, align 8, !dbg !515
  %74 = fsub double -0.000000e+00, %73, !dbg !517
  store double %74, double* %11, align 8, !dbg !518
  br label %75, !dbg !519

; <label>:75:                                     ; preds = %72, %69
  %76 = load double, double* %9, align 8, !dbg !520
  %77 = load double, double* %12, align 8, !dbg !521
  %78 = fmul double %77, 0x3FE921FB40000000, !dbg !522
  %79 = fsub double %76, %78, !dbg !523
  %80 = load double, double* %12, align 8, !dbg !524
  %81 = fmul double %80, 0x3E64442D00000000, !dbg !525
  %82 = fsub double %79, %81, !dbg !526
  %83 = load double, double* %12, align 8, !dbg !527
  %84 = fmul double %83, 0x3CE8469898CC5170, !dbg !528
  %85 = fsub double %82, %84, !dbg !529
  store double %85, double* %15, align 8, !dbg !530
  %86 = load i32, i32* %13, align 4, !dbg !531
  %87 = icmp eq i32 %86, 0, !dbg !533
  br i1 %87, label %88, label %111, !dbg !534

; <label>:88:                                     ; preds = %75
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %16, metadata !535, metadata !85), !dbg !537
  call void @llvm.dbg.declare(metadata double* %17, metadata !538, metadata !85), !dbg !539
  %89 = load double, double* %15, align 8, !dbg !540
  %90 = call double @fabs(double %89) #1, !dbg !541
  %91 = fmul double 8.000000e+00, %90, !dbg !542
  %92 = fdiv double %91, 0x400921FB54442D18, !dbg !543
  %93 = fsub double %92, 1.000000e+00, !dbg !544
  store double %93, double* %17, align 8, !dbg !539
  %94 = load double, double* %17, align 8, !dbg !545
  %95 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @cos_cs, double %94, %struct.gsl_sf_result_struct* %16), !dbg !546
  store i32 %95, i32* %14, align 4, !dbg !547
  %96 = load double, double* %15, align 8, !dbg !548
  %97 = fmul double 5.000000e-01, %96, !dbg !549
  %98 = load double, double* %15, align 8, !dbg !550
  %99 = fmul double %97, %98, !dbg !551
  %100 = load double, double* %15, align 8, !dbg !552
  %101 = load double, double* %15, align 8, !dbg !553
  %102 = fmul double %100, %101, !dbg !554
  %103 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %16, i32 0, i32 0, !dbg !555
  %104 = load double, double* %103, align 8, !dbg !555
  %105 = fmul double %102, %104, !dbg !556
  %106 = fsub double 1.000000e+00, %105, !dbg !557
  %107 = fmul double %99, %106, !dbg !558
  %108 = fsub double 1.000000e+00, %107, !dbg !559
  %109 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !560
  %110 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %109, i32 0, i32 0, !dbg !561
  store double %108, double* %110, align 8, !dbg !562
  br label %130, !dbg !563

; <label>:111:                                    ; preds = %75
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %18, metadata !564, metadata !85), !dbg !566
  call void @llvm.dbg.declare(metadata double* %19, metadata !567, metadata !85), !dbg !568
  %112 = load double, double* %15, align 8, !dbg !569
  %113 = call double @fabs(double %112) #1, !dbg !570
  %114 = fmul double 8.000000e+00, %113, !dbg !571
  %115 = fdiv double %114, 0x400921FB54442D18, !dbg !572
  %116 = fsub double %115, 1.000000e+00, !dbg !573
  store double %116, double* %19, align 8, !dbg !568
  %117 = load double, double* %19, align 8, !dbg !574
  %118 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @sin_cs, double %117, %struct.gsl_sf_result_struct* %18), !dbg !575
  store i32 %118, i32* %14, align 4, !dbg !576
  %119 = load double, double* %15, align 8, !dbg !577
  %120 = load double, double* %15, align 8, !dbg !578
  %121 = load double, double* %15, align 8, !dbg !579
  %122 = fmul double %120, %121, !dbg !580
  %123 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %18, i32 0, i32 0, !dbg !581
  %124 = load double, double* %123, align 8, !dbg !581
  %125 = fmul double %122, %124, !dbg !582
  %126 = fadd double 1.000000e+00, %125, !dbg !583
  %127 = fmul double %119, %126, !dbg !584
  %128 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !585
  %129 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %128, i32 0, i32 0, !dbg !586
  store double %127, double* %129, align 8, !dbg !587
  br label %130

; <label>:130:                                    ; preds = %111, %88
  %131 = load double, double* %11, align 8, !dbg !588
  %132 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !589
  %133 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %132, i32 0, i32 0, !dbg !590
  %134 = load double, double* %133, align 8, !dbg !591
  %135 = fmul double %134, %131, !dbg !591
  store double %135, double* %133, align 8, !dbg !591
  %136 = load double, double* %9, align 8, !dbg !592
  %137 = fcmp ogt double %136, 0x4330000000000000, !dbg !594
  br i1 %137, label %138, label %145, !dbg !595

; <label>:138:                                    ; preds = %130
  %139 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !596
  %140 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %139, i32 0, i32 0, !dbg !598
  %141 = load double, double* %140, align 8, !dbg !598
  %142 = call double @fabs(double %141) #1, !dbg !599
  %143 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !600
  %144 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %143, i32 0, i32 1, !dbg !601
  store double %142, double* %144, align 8, !dbg !602
  br label %180, !dbg !603

; <label>:145:                                    ; preds = %130
  %146 = load double, double* %9, align 8, !dbg !604
  %147 = fcmp ogt double %146, 0x41F9000000000000, !dbg !606
  br i1 %147, label %148, label %159, !dbg !607

; <label>:148:                                    ; preds = %145
  %149 = load double, double* %9, align 8, !dbg !608
  %150 = fmul double 2.000000e+00, %149, !dbg !610
  %151 = fmul double %150, 0x3CB0000000000000, !dbg !611
  %152 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !612
  %153 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %152, i32 0, i32 0, !dbg !613
  %154 = load double, double* %153, align 8, !dbg !613
  %155 = call double @fabs(double %154) #1, !dbg !614
  %156 = fmul double %151, %155, !dbg !615
  %157 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !616
  %158 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %157, i32 0, i32 1, !dbg !617
  store double %156, double* %158, align 8, !dbg !618
  br label %179, !dbg !619

; <label>:159:                                    ; preds = %145
  %160 = load double, double* %9, align 8, !dbg !620
  %161 = fcmp ogt double %160, 0x415999999999999A, !dbg !622
  br i1 %161, label %162, label %170, !dbg !623

; <label>:162:                                    ; preds = %159
  %163 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !624
  %164 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %163, i32 0, i32 0, !dbg !626
  %165 = load double, double* %164, align 8, !dbg !626
  %166 = call double @fabs(double %165) #1, !dbg !627
  %167 = fmul double 0x3E60000000000000, %166, !dbg !628
  %168 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !629
  %169 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %168, i32 0, i32 1, !dbg !630
  store double %167, double* %169, align 8, !dbg !631
  br label %178, !dbg !632

; <label>:170:                                    ; preds = %159
  %171 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !633
  %172 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %171, i32 0, i32 0, !dbg !635
  %173 = load double, double* %172, align 8, !dbg !635
  %174 = call double @fabs(double %173) #1, !dbg !636
  %175 = fmul double 0x3CC0000000000000, %174, !dbg !637
  %176 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !638
  %177 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %176, i32 0, i32 1, !dbg !639
  store double %175, double* %177, align 8, !dbg !640
  br label %178

; <label>:178:                                    ; preds = %170, %162
  br label %179

; <label>:179:                                    ; preds = %178, %148
  br label %180

; <label>:180:                                    ; preds = %179, %138
  %181 = load i32, i32* %14, align 4, !dbg !641
  store i32 %181, i32* %3, align 4, !dbg !642
  br label %182, !dbg !642

; <label>:182:                                    ; preds = %180, %24
  %183 = load i32, i32* %3, align 4, !dbg !643
  ret i32 %183, !dbg !643
}

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_hypot_e(double, double, %struct.gsl_sf_result_struct*) #0 !dbg !644 {
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca %struct.gsl_sf_result_struct*, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  store double %0, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !647, metadata !85), !dbg !648
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !649, metadata !85), !dbg !650
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %7, metadata !651, metadata !85), !dbg !652
  %14 = load double, double* %5, align 8, !dbg !653
  %15 = fcmp oeq double %14, 0.000000e+00, !dbg !655
  br i1 %15, label %16, label %24, !dbg !656

; <label>:16:                                     ; preds = %3
  %17 = load double, double* %6, align 8, !dbg !657
  %18 = fcmp oeq double %17, 0.000000e+00, !dbg !659
  br i1 %18, label %19, label %24, !dbg !660

; <label>:19:                                     ; preds = %16
  %20 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !661
  %21 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %20, i32 0, i32 0, !dbg !663
  store double 0.000000e+00, double* %21, align 8, !dbg !664
  %22 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !665
  %23 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %22, i32 0, i32 1, !dbg !666
  store double 0.000000e+00, double* %23, align 8, !dbg !667
  store i32 0, i32* %4, align 4, !dbg !668
  br label %70, !dbg !668

; <label>:24:                                     ; preds = %16, %3
  call void @llvm.dbg.declare(metadata double* %8, metadata !669, metadata !85), !dbg !671
  %25 = load double, double* %5, align 8, !dbg !672
  %26 = call double @fabs(double %25) #1, !dbg !673
  store double %26, double* %8, align 8, !dbg !671
  call void @llvm.dbg.declare(metadata double* %9, metadata !674, metadata !85), !dbg !675
  %27 = load double, double* %6, align 8, !dbg !676
  %28 = call double @fabs(double %27) #1, !dbg !677
  store double %28, double* %9, align 8, !dbg !675
  call void @llvm.dbg.declare(metadata double* %10, metadata !678, metadata !85), !dbg !679
  %29 = load double, double* %8, align 8, !dbg !680
  %30 = load double, double* %9, align 8, !dbg !681
  %31 = call double @GSL_MIN_DBL(double %29, double %30), !dbg !682
  store double %31, double* %10, align 8, !dbg !679
  call void @llvm.dbg.declare(metadata double* %11, metadata !683, metadata !85), !dbg !684
  %32 = load double, double* %8, align 8, !dbg !685
  %33 = load double, double* %9, align 8, !dbg !686
  %34 = call double @GSL_MAX_DBL(double %32, double %33), !dbg !687
  store double %34, double* %11, align 8, !dbg !684
  call void @llvm.dbg.declare(metadata double* %12, metadata !688, metadata !85), !dbg !689
  %35 = load double, double* %10, align 8, !dbg !690
  %36 = load double, double* %11, align 8, !dbg !691
  %37 = fdiv double %35, %36, !dbg !692
  store double %37, double* %12, align 8, !dbg !689
  call void @llvm.dbg.declare(metadata double* %13, metadata !693, metadata !85), !dbg !694
  %38 = load double, double* %12, align 8, !dbg !695
  %39 = load double, double* %12, align 8, !dbg !696
  %40 = fmul double %38, %39, !dbg !697
  %41 = fadd double 1.000000e+00, %40, !dbg !698
  %42 = call double @sqrt(double %41) #6, !dbg !699
  store double %42, double* %13, align 8, !dbg !694
  %43 = load double, double* %11, align 8, !dbg !700
  %44 = load double, double* %13, align 8, !dbg !702
  %45 = fdiv double 0x7FEFFFFFFFFFFFFF, %44, !dbg !703
  %46 = fcmp olt double %43, %45, !dbg !704
  br i1 %46, label %47, label %60, !dbg !705

; <label>:47:                                     ; preds = %24
  %48 = load double, double* %11, align 8, !dbg !706
  %49 = load double, double* %13, align 8, !dbg !708
  %50 = fmul double %48, %49, !dbg !709
  %51 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !710
  %52 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %51, i32 0, i32 0, !dbg !711
  store double %50, double* %52, align 8, !dbg !712
  %53 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !713
  %54 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %53, i32 0, i32 0, !dbg !714
  %55 = load double, double* %54, align 8, !dbg !714
  %56 = call double @fabs(double %55) #1, !dbg !715
  %57 = fmul double 0x3CC0000000000000, %56, !dbg !716
  %58 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !717
  %59 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %58, i32 0, i32 1, !dbg !718
  store double %57, double* %59, align 8, !dbg !719
  store i32 0, i32* %4, align 4, !dbg !720
  br label %70, !dbg !720

; <label>:60:                                     ; preds = %24
  br label %61, !dbg !721, !llvm.loop !723

; <label>:61:                                     ; preds = %60
  %62 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !724
  %63 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %62, i32 0, i32 0, !dbg !724
  store double 0x7FF0000000000000, double* %63, align 8, !dbg !724
  %64 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !724
  %65 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %64, i32 0, i32 1, !dbg !724
  store double 0x7FF0000000000000, double* %65, align 8, !dbg !724
  br label %66, !dbg !724, !llvm.loop !727

; <label>:66:                                     ; preds = %61
  call void @gsl_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 335, i32 16), !dbg !729
  store i32 16, i32* %4, align 4, !dbg !729
  br label %70, !dbg !729
                                                  ; No predecessors!
  br label %68, !dbg !732

; <label>:68:                                     ; preds = %67
  br label %69

; <label>:69:                                     ; preds = %68
  br label %70

; <label>:70:                                     ; preds = %19, %47, %66, %69
  %71 = load i32, i32* %4, align 4, !dbg !734
  ret i32 %71, !dbg !734
}

declare double @GSL_MIN_DBL(double, double) #5

declare double @GSL_MAX_DBL(double, double) #5

; Function Attrs: nounwind
declare double @sqrt(double) #3

declare void @gsl_error(i8*, i8*, i32, i32) #5

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_complex_sin_e(double, double, %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct*) #0 !dbg !735 {
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca %struct.gsl_sf_result_struct*, align 8
  %9 = alloca %struct.gsl_sf_result_struct*, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  store double %0, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !738, metadata !85), !dbg !739
  store double %1, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !740, metadata !85), !dbg !741
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %8, metadata !742, metadata !85), !dbg !743
  store %struct.gsl_sf_result_struct* %3, %struct.gsl_sf_result_struct** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %9, metadata !744, metadata !85), !dbg !745
  %15 = load double, double* %7, align 8, !dbg !746
  %16 = call double @fabs(double %15) #1, !dbg !748
  %17 = fcmp olt double %16, 1.000000e+00, !dbg !749
  br i1 %17, label %18, label %50, !dbg !750

; <label>:18:                                     ; preds = %4
  call void @llvm.dbg.declare(metadata double* %10, metadata !751, metadata !85), !dbg !753
  call void @llvm.dbg.declare(metadata double* %11, metadata !754, metadata !85), !dbg !755
  %19 = load double, double* %7, align 8, !dbg !756
  %20 = call i32 @sinh_series(double %19, double* %11), !dbg !757
  %21 = load double, double* %7, align 8, !dbg !758
  %22 = call i32 @cosh_m1_series(double %21, double* %10), !dbg !759
  %23 = load double, double* %6, align 8, !dbg !760
  %24 = call double @sin(double %23) #6, !dbg !761
  %25 = load double, double* %10, align 8, !dbg !762
  %26 = fadd double %25, 1.000000e+00, !dbg !763
  %27 = fmul double %24, %26, !dbg !764
  %28 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !765
  %29 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %28, i32 0, i32 0, !dbg !766
  store double %27, double* %29, align 8, !dbg !767
  %30 = load double, double* %6, align 8, !dbg !768
  %31 = call double @cos(double %30) #6, !dbg !769
  %32 = load double, double* %11, align 8, !dbg !770
  %33 = fmul double %31, %32, !dbg !771
  %34 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !772
  %35 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %34, i32 0, i32 0, !dbg !773
  store double %33, double* %35, align 8, !dbg !774
  %36 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !775
  %37 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %36, i32 0, i32 0, !dbg !776
  %38 = load double, double* %37, align 8, !dbg !776
  %39 = call double @fabs(double %38) #1, !dbg !777
  %40 = fmul double 0x3CC0000000000000, %39, !dbg !778
  %41 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !779
  %42 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %41, i32 0, i32 1, !dbg !780
  store double %40, double* %42, align 8, !dbg !781
  %43 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !782
  %44 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %43, i32 0, i32 0, !dbg !783
  %45 = load double, double* %44, align 8, !dbg !783
  %46 = call double @fabs(double %45) #1, !dbg !784
  %47 = fmul double 0x3CC0000000000000, %46, !dbg !785
  %48 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !786
  %49 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %48, i32 0, i32 1, !dbg !787
  store double %47, double* %49, align 8, !dbg !788
  store i32 0, i32* %5, align 4, !dbg !789
  br label %107, !dbg !789

; <label>:50:                                     ; preds = %4
  %51 = load double, double* %7, align 8, !dbg !790
  %52 = call double @fabs(double %51) #1, !dbg !792
  %53 = fcmp olt double %52, 0x40862E42FEFA39EF, !dbg !793
  br i1 %53, label %54, label %93, !dbg !794

; <label>:54:                                     ; preds = %50
  call void @llvm.dbg.declare(metadata double* %12, metadata !795, metadata !85), !dbg !797
  %55 = load double, double* %7, align 8, !dbg !798
  %56 = call double @exp(double %55) #6, !dbg !799
  store double %56, double* %12, align 8, !dbg !797
  call void @llvm.dbg.declare(metadata double* %13, metadata !800, metadata !85), !dbg !801
  %57 = load double, double* %12, align 8, !dbg !802
  %58 = load double, double* %12, align 8, !dbg !803
  %59 = fdiv double 1.000000e+00, %58, !dbg !804
  %60 = fadd double %57, %59, !dbg !805
  %61 = fmul double 5.000000e-01, %60, !dbg !806
  store double %61, double* %13, align 8, !dbg !801
  call void @llvm.dbg.declare(metadata double* %14, metadata !807, metadata !85), !dbg !808
  %62 = load double, double* %12, align 8, !dbg !809
  %63 = load double, double* %12, align 8, !dbg !810
  %64 = fdiv double 1.000000e+00, %63, !dbg !811
  %65 = fsub double %62, %64, !dbg !812
  %66 = fmul double 5.000000e-01, %65, !dbg !813
  store double %66, double* %14, align 8, !dbg !808
  %67 = load double, double* %6, align 8, !dbg !814
  %68 = call double @sin(double %67) #6, !dbg !815
  %69 = load double, double* %13, align 8, !dbg !816
  %70 = fmul double %68, %69, !dbg !817
  %71 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !818
  %72 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %71, i32 0, i32 0, !dbg !819
  store double %70, double* %72, align 8, !dbg !820
  %73 = load double, double* %6, align 8, !dbg !821
  %74 = call double @cos(double %73) #6, !dbg !822
  %75 = load double, double* %14, align 8, !dbg !823
  %76 = fmul double %74, %75, !dbg !824
  %77 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !825
  %78 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %77, i32 0, i32 0, !dbg !826
  store double %76, double* %78, align 8, !dbg !827
  %79 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !828
  %80 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %79, i32 0, i32 0, !dbg !829
  %81 = load double, double* %80, align 8, !dbg !829
  %82 = call double @fabs(double %81) #1, !dbg !830
  %83 = fmul double 0x3CC0000000000000, %82, !dbg !831
  %84 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !832
  %85 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %84, i32 0, i32 1, !dbg !833
  store double %83, double* %85, align 8, !dbg !834
  %86 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !835
  %87 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %86, i32 0, i32 0, !dbg !836
  %88 = load double, double* %87, align 8, !dbg !836
  %89 = call double @fabs(double %88) #1, !dbg !837
  %90 = fmul double 0x3CC0000000000000, %89, !dbg !838
  %91 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !839
  %92 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %91, i32 0, i32 1, !dbg !840
  store double %90, double* %92, align 8, !dbg !841
  store i32 0, i32* %5, align 4, !dbg !842
  br label %107, !dbg !842

; <label>:93:                                     ; preds = %50
  br label %94, !dbg !843, !llvm.loop !845

; <label>:94:                                     ; preds = %93
  %95 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !846
  %96 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %95, i32 0, i32 0, !dbg !846
  store double 0x7FF0000000000000, double* %96, align 8, !dbg !846
  %97 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !846
  %98 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %97, i32 0, i32 1, !dbg !846
  store double 0x7FF0000000000000, double* %98, align 8, !dbg !846
  %99 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !846
  %100 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %99, i32 0, i32 0, !dbg !846
  store double 0x7FF0000000000000, double* %100, align 8, !dbg !846
  %101 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !846
  %102 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %101, i32 0, i32 1, !dbg !846
  store double 0x7FF0000000000000, double* %102, align 8, !dbg !846
  br label %103, !dbg !846, !llvm.loop !849

; <label>:103:                                    ; preds = %94
  call void @gsl_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 369, i32 16), !dbg !851
  store i32 16, i32* %5, align 4, !dbg !851
  br label %107, !dbg !851
                                                  ; No predecessors!
  br label %105, !dbg !854

; <label>:105:                                    ; preds = %104
  br label %106

; <label>:106:                                    ; preds = %105
  br label %107

; <label>:107:                                    ; preds = %18, %54, %103, %106
  %108 = load i32, i32* %5, align 4, !dbg !856
  ret i32 %108, !dbg !856
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @sinh_series(double, double*) #4 !dbg !857 {
  %3 = alloca double, align 8
  %4 = alloca double*, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !860, metadata !85), !dbg !861
  store double* %1, double** %4, align 8
  call void @llvm.dbg.declare(metadata double** %4, metadata !862, metadata !85), !dbg !863
  call void @llvm.dbg.declare(metadata double* %5, metadata !864, metadata !85), !dbg !865
  %14 = load double, double* %3, align 8, !dbg !866
  %15 = load double, double* %3, align 8, !dbg !867
  %16 = fmul double %14, %15, !dbg !868
  store double %16, double* %5, align 8, !dbg !865
  call void @llvm.dbg.declare(metadata double* %6, metadata !869, metadata !85), !dbg !870
  store double 0x3FC5555555555555, double* %6, align 8, !dbg !870
  call void @llvm.dbg.declare(metadata double* %7, metadata !871, metadata !85), !dbg !872
  store double 0x3F81111111111111, double* %7, align 8, !dbg !872
  call void @llvm.dbg.declare(metadata double* %8, metadata !873, metadata !85), !dbg !874
  store double 0x3F2A01A01A01A01A, double* %8, align 8, !dbg !874
  call void @llvm.dbg.declare(metadata double* %9, metadata !875, metadata !85), !dbg !876
  store double 0x3EC71DE3A556C734, double* %9, align 8, !dbg !876
  call void @llvm.dbg.declare(metadata double* %10, metadata !877, metadata !85), !dbg !878
  store double 0x3E5AE64567F544E4, double* %10, align 8, !dbg !878
  call void @llvm.dbg.declare(metadata double* %11, metadata !879, metadata !85), !dbg !880
  store double 0x3DE6124613A86D09, double* %11, align 8, !dbg !880
  call void @llvm.dbg.declare(metadata double* %12, metadata !881, metadata !85), !dbg !882
  store double 0x3D6AE7F3E733B81F, double* %12, align 8, !dbg !882
  call void @llvm.dbg.declare(metadata double* %13, metadata !883, metadata !85), !dbg !884
  store double 0x3CE952C77030AD4A, double* %13, align 8, !dbg !884
  %17 = load double, double* %3, align 8, !dbg !885
  %18 = load double, double* %5, align 8, !dbg !886
  %19 = load double, double* %5, align 8, !dbg !887
  %20 = load double, double* %5, align 8, !dbg !888
  %21 = load double, double* %5, align 8, !dbg !889
  %22 = load double, double* %5, align 8, !dbg !890
  %23 = load double, double* %5, align 8, !dbg !891
  %24 = load double, double* %5, align 8, !dbg !892
  %25 = load double, double* %5, align 8, !dbg !893
  %26 = fmul double %25, 0x3CE952C77030AD4A, !dbg !894
  %27 = fadd double 0x3D6AE7F3E733B81F, %26, !dbg !895
  %28 = fmul double %24, %27, !dbg !896
  %29 = fadd double 0x3DE6124613A86D09, %28, !dbg !897
  %30 = fmul double %23, %29, !dbg !898
  %31 = fadd double 0x3E5AE64567F544E4, %30, !dbg !899
  %32 = fmul double %22, %31, !dbg !900
  %33 = fadd double 0x3EC71DE3A556C734, %32, !dbg !901
  %34 = fmul double %21, %33, !dbg !902
  %35 = fadd double 0x3F2A01A01A01A01A, %34, !dbg !903
  %36 = fmul double %20, %35, !dbg !904
  %37 = fadd double 0x3F81111111111111, %36, !dbg !905
  %38 = fmul double %19, %37, !dbg !906
  %39 = fadd double 0x3FC5555555555555, %38, !dbg !907
  %40 = fmul double %18, %39, !dbg !908
  %41 = fadd double 1.000000e+00, %40, !dbg !909
  %42 = fmul double %17, %41, !dbg !910
  %43 = load double*, double** %4, align 8, !dbg !911
  store double %42, double* %43, align 8, !dbg !912
  ret i32 0, !dbg !913
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @cosh_m1_series(double, double*) #4 !dbg !914 {
  %3 = alloca double, align 8
  %4 = alloca double*, align 8
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
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !915, metadata !85), !dbg !916
  store double* %1, double** %4, align 8
  call void @llvm.dbg.declare(metadata double** %4, metadata !917, metadata !85), !dbg !918
  call void @llvm.dbg.declare(metadata double* %5, metadata !919, metadata !85), !dbg !920
  %15 = load double, double* %3, align 8, !dbg !921
  %16 = load double, double* %3, align 8, !dbg !922
  %17 = fmul double %15, %16, !dbg !923
  store double %17, double* %5, align 8, !dbg !920
  call void @llvm.dbg.declare(metadata double* %6, metadata !924, metadata !85), !dbg !925
  store double 5.000000e-01, double* %6, align 8, !dbg !925
  call void @llvm.dbg.declare(metadata double* %7, metadata !926, metadata !85), !dbg !927
  store double 0x3FA5555555555555, double* %7, align 8, !dbg !927
  call void @llvm.dbg.declare(metadata double* %8, metadata !928, metadata !85), !dbg !929
  store double 0x3F56C16C16C16C17, double* %8, align 8, !dbg !929
  call void @llvm.dbg.declare(metadata double* %9, metadata !930, metadata !85), !dbg !931
  store double 0x3EFA01A01A01A01A, double* %9, align 8, !dbg !931
  call void @llvm.dbg.declare(metadata double* %10, metadata !932, metadata !85), !dbg !933
  store double 0x3E927E4FB7789F5C, double* %10, align 8, !dbg !933
  call void @llvm.dbg.declare(metadata double* %11, metadata !934, metadata !85), !dbg !935
  store double 0x3E21EED8EFF8D898, double* %11, align 8, !dbg !935
  call void @llvm.dbg.declare(metadata double* %12, metadata !936, metadata !85), !dbg !937
  store double 0x3DA93974A8C07C9D, double* %12, align 8, !dbg !937
  call void @llvm.dbg.declare(metadata double* %13, metadata !938, metadata !85), !dbg !939
  store double 0x3D2AE7F3E733B81F, double* %13, align 8, !dbg !939
  call void @llvm.dbg.declare(metadata double* %14, metadata !940, metadata !85), !dbg !941
  store double 0x3CA6827863B97D97, double* %14, align 8, !dbg !941
  %18 = load double, double* %5, align 8, !dbg !942
  %19 = load double, double* %5, align 8, !dbg !943
  %20 = load double, double* %5, align 8, !dbg !944
  %21 = load double, double* %5, align 8, !dbg !945
  %22 = load double, double* %5, align 8, !dbg !946
  %23 = load double, double* %5, align 8, !dbg !947
  %24 = load double, double* %5, align 8, !dbg !948
  %25 = load double, double* %5, align 8, !dbg !949
  %26 = load double, double* %5, align 8, !dbg !950
  %27 = fmul double %26, 0x3CA6827863B97D97, !dbg !951
  %28 = fadd double 0x3D2AE7F3E733B81F, %27, !dbg !952
  %29 = fmul double %25, %28, !dbg !953
  %30 = fadd double 0x3DA93974A8C07C9D, %29, !dbg !954
  %31 = fmul double %24, %30, !dbg !955
  %32 = fadd double 0x3E21EED8EFF8D898, %31, !dbg !956
  %33 = fmul double %23, %32, !dbg !957
  %34 = fadd double 0x3E927E4FB7789F5C, %33, !dbg !958
  %35 = fmul double %22, %34, !dbg !959
  %36 = fadd double 0x3EFA01A01A01A01A, %35, !dbg !960
  %37 = fmul double %21, %36, !dbg !961
  %38 = fadd double 0x3F56C16C16C16C17, %37, !dbg !962
  %39 = fmul double %20, %38, !dbg !963
  %40 = fadd double 0x3FA5555555555555, %39, !dbg !964
  %41 = fmul double %19, %40, !dbg !965
  %42 = fadd double 5.000000e-01, %41, !dbg !966
  %43 = fmul double %18, %42, !dbg !967
  %44 = load double*, double** %4, align 8, !dbg !968
  store double %43, double* %44, align 8, !dbg !969
  ret i32 0, !dbg !970
}

; Function Attrs: nounwind
declare double @sin(double) #3

; Function Attrs: nounwind
declare double @cos(double) #3

; Function Attrs: nounwind
declare double @exp(double) #3

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_complex_cos_e(double, double, %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct*) #0 !dbg !971 {
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca %struct.gsl_sf_result_struct*, align 8
  %9 = alloca %struct.gsl_sf_result_struct*, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  store double %0, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !972, metadata !85), !dbg !973
  store double %1, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !974, metadata !85), !dbg !975
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %8, metadata !976, metadata !85), !dbg !977
  store %struct.gsl_sf_result_struct* %3, %struct.gsl_sf_result_struct** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %9, metadata !978, metadata !85), !dbg !979
  %15 = load double, double* %7, align 8, !dbg !980
  %16 = call double @fabs(double %15) #1, !dbg !982
  %17 = fcmp olt double %16, 1.000000e+00, !dbg !983
  br i1 %17, label %18, label %51, !dbg !984

; <label>:18:                                     ; preds = %4
  call void @llvm.dbg.declare(metadata double* %10, metadata !985, metadata !85), !dbg !987
  call void @llvm.dbg.declare(metadata double* %11, metadata !988, metadata !85), !dbg !989
  %19 = load double, double* %7, align 8, !dbg !990
  %20 = call i32 @sinh_series(double %19, double* %11), !dbg !991
  %21 = load double, double* %7, align 8, !dbg !992
  %22 = call i32 @cosh_m1_series(double %21, double* %10), !dbg !993
  %23 = load double, double* %6, align 8, !dbg !994
  %24 = call double @cos(double %23) #6, !dbg !995
  %25 = load double, double* %10, align 8, !dbg !996
  %26 = fadd double %25, 1.000000e+00, !dbg !997
  %27 = fmul double %24, %26, !dbg !998
  %28 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !999
  %29 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %28, i32 0, i32 0, !dbg !1000
  store double %27, double* %29, align 8, !dbg !1001
  %30 = load double, double* %6, align 8, !dbg !1002
  %31 = call double @sin(double %30) #6, !dbg !1003
  %32 = fsub double -0.000000e+00, %31, !dbg !1004
  %33 = load double, double* %11, align 8, !dbg !1005
  %34 = fmul double %32, %33, !dbg !1006
  %35 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1007
  %36 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %35, i32 0, i32 0, !dbg !1008
  store double %34, double* %36, align 8, !dbg !1009
  %37 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !1010
  %38 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %37, i32 0, i32 0, !dbg !1011
  %39 = load double, double* %38, align 8, !dbg !1011
  %40 = call double @fabs(double %39) #1, !dbg !1012
  %41 = fmul double 0x3CC0000000000000, %40, !dbg !1013
  %42 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !1014
  %43 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %42, i32 0, i32 1, !dbg !1015
  store double %41, double* %43, align 8, !dbg !1016
  %44 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1017
  %45 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %44, i32 0, i32 0, !dbg !1018
  %46 = load double, double* %45, align 8, !dbg !1018
  %47 = call double @fabs(double %46) #1, !dbg !1019
  %48 = fmul double 0x3CC0000000000000, %47, !dbg !1020
  %49 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1021
  %50 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %49, i32 0, i32 1, !dbg !1022
  store double %48, double* %50, align 8, !dbg !1023
  store i32 0, i32* %5, align 4, !dbg !1024
  br label %109, !dbg !1024

; <label>:51:                                     ; preds = %4
  %52 = load double, double* %7, align 8, !dbg !1025
  %53 = call double @fabs(double %52) #1, !dbg !1027
  %54 = fcmp olt double %53, 0x40862E42FEFA39EF, !dbg !1028
  br i1 %54, label %55, label %95, !dbg !1029

; <label>:55:                                     ; preds = %51
  call void @llvm.dbg.declare(metadata double* %12, metadata !1030, metadata !85), !dbg !1032
  %56 = load double, double* %7, align 8, !dbg !1033
  %57 = call double @exp(double %56) #6, !dbg !1034
  store double %57, double* %12, align 8, !dbg !1032
  call void @llvm.dbg.declare(metadata double* %13, metadata !1035, metadata !85), !dbg !1036
  %58 = load double, double* %12, align 8, !dbg !1037
  %59 = load double, double* %12, align 8, !dbg !1038
  %60 = fdiv double 1.000000e+00, %59, !dbg !1039
  %61 = fadd double %58, %60, !dbg !1040
  %62 = fmul double 5.000000e-01, %61, !dbg !1041
  store double %62, double* %13, align 8, !dbg !1036
  call void @llvm.dbg.declare(metadata double* %14, metadata !1042, metadata !85), !dbg !1043
  %63 = load double, double* %12, align 8, !dbg !1044
  %64 = load double, double* %12, align 8, !dbg !1045
  %65 = fdiv double 1.000000e+00, %64, !dbg !1046
  %66 = fsub double %63, %65, !dbg !1047
  %67 = fmul double 5.000000e-01, %66, !dbg !1048
  store double %67, double* %14, align 8, !dbg !1043
  %68 = load double, double* %6, align 8, !dbg !1049
  %69 = call double @cos(double %68) #6, !dbg !1050
  %70 = load double, double* %13, align 8, !dbg !1051
  %71 = fmul double %69, %70, !dbg !1052
  %72 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !1053
  %73 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %72, i32 0, i32 0, !dbg !1054
  store double %71, double* %73, align 8, !dbg !1055
  %74 = load double, double* %6, align 8, !dbg !1056
  %75 = call double @sin(double %74) #6, !dbg !1057
  %76 = fsub double -0.000000e+00, %75, !dbg !1058
  %77 = load double, double* %14, align 8, !dbg !1059
  %78 = fmul double %76, %77, !dbg !1060
  %79 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1061
  %80 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %79, i32 0, i32 0, !dbg !1062
  store double %78, double* %80, align 8, !dbg !1063
  %81 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !1064
  %82 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %81, i32 0, i32 0, !dbg !1065
  %83 = load double, double* %82, align 8, !dbg !1065
  %84 = call double @fabs(double %83) #1, !dbg !1066
  %85 = fmul double 0x3CC0000000000000, %84, !dbg !1067
  %86 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !1068
  %87 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %86, i32 0, i32 1, !dbg !1069
  store double %85, double* %87, align 8, !dbg !1070
  %88 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1071
  %89 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %88, i32 0, i32 0, !dbg !1072
  %90 = load double, double* %89, align 8, !dbg !1072
  %91 = call double @fabs(double %90) #1, !dbg !1073
  %92 = fmul double 0x3CC0000000000000, %91, !dbg !1074
  %93 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1075
  %94 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %93, i32 0, i32 1, !dbg !1076
  store double %92, double* %94, align 8, !dbg !1077
  store i32 0, i32* %5, align 4, !dbg !1078
  br label %109, !dbg !1078

; <label>:95:                                     ; preds = %51
  br label %96, !dbg !1079, !llvm.loop !1081

; <label>:96:                                     ; preds = %95
  %97 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !1082
  %98 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %97, i32 0, i32 0, !dbg !1082
  store double 0x7FF0000000000000, double* %98, align 8, !dbg !1082
  %99 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !1082
  %100 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %99, i32 0, i32 1, !dbg !1082
  store double 0x7FF0000000000000, double* %100, align 8, !dbg !1082
  %101 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1082
  %102 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %101, i32 0, i32 0, !dbg !1082
  store double 0x7FF0000000000000, double* %102, align 8, !dbg !1082
  %103 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1082
  %104 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %103, i32 0, i32 1, !dbg !1082
  store double 0x7FF0000000000000, double* %104, align 8, !dbg !1082
  br label %105, !dbg !1082, !llvm.loop !1085

; <label>:105:                                    ; preds = %96
  call void @gsl_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 402, i32 16), !dbg !1087
  store i32 16, i32* %5, align 4, !dbg !1087
  br label %109, !dbg !1087
                                                  ; No predecessors!
  br label %107, !dbg !1090

; <label>:107:                                    ; preds = %106
  br label %108

; <label>:108:                                    ; preds = %107
  br label %109

; <label>:109:                                    ; preds = %18, %55, %105, %108
  %110 = load i32, i32* %5, align 4, !dbg !1092
  ret i32 %110, !dbg !1092
}

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_complex_logsin_e(double, double, %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct*) #0 !dbg !1093 {
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca %struct.gsl_sf_result_struct*, align 8
  %9 = alloca %struct.gsl_sf_result_struct*, align 8
  %10 = alloca %struct.gsl_sf_result_struct, align 8
  %11 = alloca %struct.gsl_sf_result_struct, align 8
  %12 = alloca i32, align 4
  store double %0, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !1094, metadata !85), !dbg !1095
  store double %1, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !1096, metadata !85), !dbg !1097
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %8, metadata !1098, metadata !85), !dbg !1099
  store %struct.gsl_sf_result_struct* %3, %struct.gsl_sf_result_struct** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %9, metadata !1100, metadata !85), !dbg !1101
  %13 = load double, double* %7, align 8, !dbg !1102
  %14 = fcmp ogt double %13, 6.000000e+01, !dbg !1104
  br i1 %14, label %15, label %38, !dbg !1105

; <label>:15:                                     ; preds = %4
  %16 = load double, double* %7, align 8, !dbg !1106
  %17 = fadd double 0xBFE62E42FEFA39EF, %16, !dbg !1108
  %18 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !1109
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %18, i32 0, i32 0, !dbg !1110
  store double %17, double* %19, align 8, !dbg !1111
  %20 = load double, double* %6, align 8, !dbg !1112
  %21 = fsub double 0x3FF921FB54442D18, %20, !dbg !1113
  %22 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1114
  %23 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %22, i32 0, i32 0, !dbg !1115
  store double %21, double* %23, align 8, !dbg !1116
  %24 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !1117
  %25 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %24, i32 0, i32 0, !dbg !1118
  %26 = load double, double* %25, align 8, !dbg !1118
  %27 = call double @fabs(double %26) #1, !dbg !1119
  %28 = fmul double 0x3CC0000000000000, %27, !dbg !1120
  %29 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !1121
  %30 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %29, i32 0, i32 1, !dbg !1122
  store double %28, double* %30, align 8, !dbg !1123
  %31 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1124
  %32 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %31, i32 0, i32 0, !dbg !1125
  %33 = load double, double* %32, align 8, !dbg !1125
  %34 = call double @fabs(double %33) #1, !dbg !1126
  %35 = fmul double 0x3CC0000000000000, %34, !dbg !1127
  %36 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1128
  %37 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %36, i32 0, i32 1, !dbg !1129
  store double %35, double* %37, align 8, !dbg !1130
  br label %92, !dbg !1131

; <label>:38:                                     ; preds = %4
  %39 = load double, double* %7, align 8, !dbg !1132
  %40 = fcmp olt double %39, -6.000000e+01, !dbg !1134
  br i1 %40, label %41, label %64, !dbg !1135

; <label>:41:                                     ; preds = %38
  %42 = load double, double* %7, align 8, !dbg !1136
  %43 = fsub double 0xBFE62E42FEFA39EF, %42, !dbg !1138
  %44 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !1139
  %45 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %44, i32 0, i32 0, !dbg !1140
  store double %43, double* %45, align 8, !dbg !1141
  %46 = load double, double* %6, align 8, !dbg !1142
  %47 = fadd double 0xBFF921FB54442D18, %46, !dbg !1143
  %48 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1144
  %49 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %48, i32 0, i32 0, !dbg !1145
  store double %47, double* %49, align 8, !dbg !1146
  %50 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !1147
  %51 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %50, i32 0, i32 0, !dbg !1148
  %52 = load double, double* %51, align 8, !dbg !1148
  %53 = call double @fabs(double %52) #1, !dbg !1149
  %54 = fmul double 0x3CC0000000000000, %53, !dbg !1150
  %55 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !1151
  %56 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %55, i32 0, i32 1, !dbg !1152
  store double %54, double* %56, align 8, !dbg !1153
  %57 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1154
  %58 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %57, i32 0, i32 0, !dbg !1155
  %59 = load double, double* %58, align 8, !dbg !1155
  %60 = call double @fabs(double %59) #1, !dbg !1156
  %61 = fmul double 0x3CC0000000000000, %60, !dbg !1157
  %62 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1158
  %63 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %62, i32 0, i32 1, !dbg !1159
  store double %61, double* %63, align 8, !dbg !1160
  br label %91, !dbg !1161

; <label>:64:                                     ; preds = %38
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %10, metadata !1162, metadata !85), !dbg !1164
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %11, metadata !1165, metadata !85), !dbg !1166
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1167, metadata !85), !dbg !1168
  %65 = load double, double* %6, align 8, !dbg !1169
  %66 = load double, double* %7, align 8, !dbg !1170
  %67 = call i32 @gsl_sf_complex_sin_e(double %65, double %66, %struct.gsl_sf_result_struct* %10, %struct.gsl_sf_result_struct* %11), !dbg !1171
  %68 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !1172
  %69 = load double, double* %68, align 8, !dbg !1172
  %70 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 0, !dbg !1173
  %71 = load double, double* %70, align 8, !dbg !1173
  %72 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !1174
  %73 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1175
  %74 = call i32 @gsl_sf_complex_log_e(double %69, double %71, %struct.gsl_sf_result_struct* %72, %struct.gsl_sf_result_struct* %73), !dbg !1176
  store i32 %74, i32* %12, align 4, !dbg !1177
  %75 = load i32, i32* %12, align 4, !dbg !1178
  %76 = icmp eq i32 %75, 1, !dbg !1180
  br i1 %76, label %77, label %90, !dbg !1181

; <label>:77:                                     ; preds = %64
  br label %78, !dbg !1182, !llvm.loop !1184

; <label>:78:                                     ; preds = %77
  %79 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !1185
  %80 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %79, i32 0, i32 0, !dbg !1185
  store double 0x7FF8000000000000, double* %80, align 8, !dbg !1185
  %81 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !1185
  %82 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %81, i32 0, i32 1, !dbg !1185
  store double 0x7FF8000000000000, double* %82, align 8, !dbg !1185
  %83 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1185
  %84 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %83, i32 0, i32 0, !dbg !1185
  store double 0x7FF8000000000000, double* %84, align 8, !dbg !1185
  %85 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1185
  %86 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %85, i32 0, i32 1, !dbg !1185
  store double 0x7FF8000000000000, double* %86, align 8, !dbg !1185
  br label %87, !dbg !1185, !llvm.loop !1188

; <label>:87:                                     ; preds = %78
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 432, i32 1), !dbg !1190
  store i32 1, i32* %5, align 4, !dbg !1190
  br label %96, !dbg !1190
                                                  ; No predecessors!
  br label %89, !dbg !1193

; <label>:89:                                     ; preds = %88
  br label %90, !dbg !1195

; <label>:90:                                     ; preds = %89, %64
  br label %91

; <label>:91:                                     ; preds = %90, %41
  br label %92

; <label>:92:                                     ; preds = %91, %15
  %93 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1196
  %94 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %93, i32 0, i32 0, !dbg !1197
  %95 = call i32 @gsl_sf_angle_restrict_symm_e(double* %94), !dbg !1198
  store i32 %95, i32* %5, align 4, !dbg !1199
  br label %96, !dbg !1199

; <label>:96:                                     ; preds = %92, %87
  %97 = load i32, i32* %5, align 4, !dbg !1200
  ret i32 %97, !dbg !1200
}

declare i32 @gsl_sf_complex_log_e(double, double, %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct*) #5

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_angle_restrict_symm_e(double*) #0 !dbg !1201 {
  %2 = alloca double*, align 8
  %3 = alloca %struct.gsl_sf_result_struct, align 8
  %4 = alloca i32, align 4
  store double* %0, double** %2, align 8
  call void @llvm.dbg.declare(metadata double** %2, metadata !1204, metadata !85), !dbg !1205
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %3, metadata !1206, metadata !85), !dbg !1207
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1208, metadata !85), !dbg !1209
  %5 = load double*, double** %2, align 8, !dbg !1210
  %6 = load double, double* %5, align 8, !dbg !1211
  %7 = call i32 @gsl_sf_angle_restrict_symm_err_e(double %6, %struct.gsl_sf_result_struct* %3), !dbg !1212
  store i32 %7, i32* %4, align 4, !dbg !1209
  %8 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %3, i32 0, i32 0, !dbg !1213
  %9 = load double, double* %8, align 8, !dbg !1213
  %10 = load double*, double** %2, align 8, !dbg !1214
  store double %9, double* %10, align 8, !dbg !1215
  %11 = load i32, i32* %4, align 4, !dbg !1216
  ret i32 %11, !dbg !1217
}

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_lnsinh_e(double, %struct.gsl_sf_result_struct*) #0 !dbg !1218 {
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca %struct.gsl_sf_result_struct*, align 8
  %6 = alloca double, align 8
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !1221, metadata !85), !dbg !1222
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %5, metadata !1223, metadata !85), !dbg !1224
  %7 = load double, double* %4, align 8, !dbg !1225
  %8 = fcmp ole double %7, 0.000000e+00, !dbg !1227
  br i1 %8, label %9, label %18, !dbg !1228

; <label>:9:                                      ; preds = %2
  br label %10, !dbg !1229, !llvm.loop !1231

; <label>:10:                                     ; preds = %9
  %11 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1232
  %12 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 0, !dbg !1232
  store double 0x7FF8000000000000, double* %12, align 8, !dbg !1232
  %13 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1232
  %14 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %13, i32 0, i32 1, !dbg !1232
  store double 0x7FF8000000000000, double* %14, align 8, !dbg !1232
  br label %15, !dbg !1232, !llvm.loop !1235

; <label>:15:                                     ; preds = %10
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 445, i32 1), !dbg !1237
  store i32 1, i32* %3, align 4, !dbg !1237
  br label %69, !dbg !1237
                                                  ; No predecessors!
  br label %17, !dbg !1240

; <label>:17:                                     ; preds = %16
  br label %69, !dbg !1242

; <label>:18:                                     ; preds = %2
  %19 = load double, double* %4, align 8, !dbg !1243
  %20 = call double @fabs(double %19) #1, !dbg !1245
  %21 = fcmp olt double %20, 1.000000e+00, !dbg !1246
  br i1 %21, label %22, label %36, !dbg !1247

; <label>:22:                                     ; preds = %18
  call void @llvm.dbg.declare(metadata double* %6, metadata !1248, metadata !85), !dbg !1250
  %23 = load double, double* %4, align 8, !dbg !1251
  %24 = call i32 @sinh_series(double %23, double* %6), !dbg !1252
  %25 = load double, double* %6, align 8, !dbg !1253
  %26 = call double @log(double %25) #6, !dbg !1254
  %27 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1255
  %28 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %27, i32 0, i32 0, !dbg !1256
  store double %26, double* %28, align 8, !dbg !1257
  %29 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1258
  %30 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %29, i32 0, i32 0, !dbg !1259
  %31 = load double, double* %30, align 8, !dbg !1259
  %32 = call double @fabs(double %31) #1, !dbg !1260
  %33 = fmul double 0x3CC0000000000000, %32, !dbg !1261
  %34 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1262
  %35 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %34, i32 0, i32 1, !dbg !1263
  store double %33, double* %35, align 8, !dbg !1264
  store i32 0, i32* %3, align 4, !dbg !1265
  br label %69, !dbg !1265

; <label>:36:                                     ; preds = %18
  %37 = load double, double* %4, align 8, !dbg !1266
  %38 = fcmp olt double %37, 0x403205966F2B4F12, !dbg !1268
  br i1 %38, label %39, label %57, !dbg !1269

; <label>:39:                                     ; preds = %36
  %40 = load double, double* %4, align 8, !dbg !1270
  %41 = load double, double* %4, align 8, !dbg !1272
  %42 = fmul double -2.000000e+00, %41, !dbg !1273
  %43 = call double @exp(double %42) #6, !dbg !1274
  %44 = fsub double 1.000000e+00, %43, !dbg !1275
  %45 = fmul double 5.000000e-01, %44, !dbg !1276
  %46 = call double @log(double %45) #6, !dbg !1277
  %47 = fadd double %40, %46, !dbg !1279
  %48 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1280
  %49 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %48, i32 0, i32 0, !dbg !1281
  store double %47, double* %49, align 8, !dbg !1282
  %50 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1283
  %51 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %50, i32 0, i32 0, !dbg !1284
  %52 = load double, double* %51, align 8, !dbg !1284
  %53 = call double @fabs(double %52) #1, !dbg !1285
  %54 = fmul double 0x3CC0000000000000, %53, !dbg !1286
  %55 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1287
  %56 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %55, i32 0, i32 1, !dbg !1288
  store double %54, double* %56, align 8, !dbg !1289
  store i32 0, i32* %3, align 4, !dbg !1290
  br label %69, !dbg !1290

; <label>:57:                                     ; preds = %36
  %58 = load double, double* %4, align 8, !dbg !1291
  %59 = fadd double 0xBFE62E42FEFA39EF, %58, !dbg !1293
  %60 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1294
  %61 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %60, i32 0, i32 0, !dbg !1295
  store double %59, double* %61, align 8, !dbg !1296
  %62 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1297
  %63 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %62, i32 0, i32 0, !dbg !1298
  %64 = load double, double* %63, align 8, !dbg !1298
  %65 = call double @fabs(double %64) #1, !dbg !1299
  %66 = fmul double 0x3CC0000000000000, %65, !dbg !1300
  %67 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1301
  %68 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %67, i32 0, i32 1, !dbg !1302
  store double %66, double* %68, align 8, !dbg !1303
  store i32 0, i32* %3, align 4, !dbg !1304
  br label %69, !dbg !1304

; <label>:69:                                     ; preds = %15, %22, %39, %57, %17
  %70 = load i32, i32* %3, align 4, !dbg !1305
  ret i32 %70, !dbg !1305
}

; Function Attrs: nounwind
declare double @log(double) #3

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_lncosh_e(double, %struct.gsl_sf_result_struct*) #0 !dbg !1306 {
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca %struct.gsl_sf_result_struct*, align 8
  %6 = alloca double, align 8
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !1307, metadata !85), !dbg !1308
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %5, metadata !1309, metadata !85), !dbg !1310
  %7 = load double, double* %4, align 8, !dbg !1311
  %8 = call double @fabs(double %7) #1, !dbg !1313
  %9 = fcmp olt double %8, 1.000000e+00, !dbg !1314
  br i1 %9, label %10, label %16, !dbg !1315

; <label>:10:                                     ; preds = %2
  call void @llvm.dbg.declare(metadata double* %6, metadata !1316, metadata !85), !dbg !1318
  %11 = load double, double* %4, align 8, !dbg !1319
  %12 = call i32 @cosh_m1_series(double %11, double* %6), !dbg !1320
  %13 = load double, double* %6, align 8, !dbg !1321
  %14 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1322
  %15 = call i32 @gsl_sf_log_1plusx_e(double %13, %struct.gsl_sf_result_struct* %14), !dbg !1323
  store i32 %15, i32* %3, align 4, !dbg !1324
  br label %53, !dbg !1324

; <label>:16:                                     ; preds = %2
  %17 = load double, double* %4, align 8, !dbg !1325
  %18 = call double @fabs(double %17) #1, !dbg !1327
  %19 = fcmp olt double %18, 0x403205966F2B4F12, !dbg !1328
  br i1 %19, label %20, label %40, !dbg !1329

; <label>:20:                                     ; preds = %16
  %21 = load double, double* %4, align 8, !dbg !1330
  %22 = call double @fabs(double %21) #1, !dbg !1332
  %23 = load double, double* %4, align 8, !dbg !1333
  %24 = call double @fabs(double %23) #1, !dbg !1334
  %25 = fmul double -2.000000e+00, %24, !dbg !1336
  %26 = call double @exp(double %25) #6, !dbg !1337
  %27 = fadd double 1.000000e+00, %26, !dbg !1339
  %28 = fmul double 5.000000e-01, %27, !dbg !1340
  %29 = call double @log(double %28) #6, !dbg !1341
  %30 = fadd double %22, %29, !dbg !1343
  %31 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1344
  %32 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %31, i32 0, i32 0, !dbg !1345
  store double %30, double* %32, align 8, !dbg !1346
  %33 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1347
  %34 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %33, i32 0, i32 0, !dbg !1348
  %35 = load double, double* %34, align 8, !dbg !1348
  %36 = call double @fabs(double %35) #1, !dbg !1349
  %37 = fmul double 0x3CC0000000000000, %36, !dbg !1350
  %38 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1351
  %39 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %38, i32 0, i32 1, !dbg !1352
  store double %37, double* %39, align 8, !dbg !1353
  store i32 0, i32* %3, align 4, !dbg !1354
  br label %53, !dbg !1354

; <label>:40:                                     ; preds = %16
  %41 = load double, double* %4, align 8, !dbg !1355
  %42 = call double @fabs(double %41) #1, !dbg !1357
  %43 = fadd double 0xBFE62E42FEFA39EF, %42, !dbg !1358
  %44 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1359
  %45 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %44, i32 0, i32 0, !dbg !1360
  store double %43, double* %45, align 8, !dbg !1361
  %46 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1362
  %47 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %46, i32 0, i32 0, !dbg !1363
  %48 = load double, double* %47, align 8, !dbg !1363
  %49 = call double @fabs(double %48) #1, !dbg !1364
  %50 = fmul double 0x3CC0000000000000, %49, !dbg !1365
  %51 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1366
  %52 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %51, i32 0, i32 1, !dbg !1367
  store double %50, double* %52, align 8, !dbg !1368
  store i32 0, i32* %3, align 4, !dbg !1369
  br label %53, !dbg !1369

; <label>:53:                                     ; preds = %40, %20, %10
  %54 = load i32, i32* %3, align 4, !dbg !1370
  ret i32 %54, !dbg !1370
}

declare i32 @gsl_sf_log_1plusx_e(double, %struct.gsl_sf_result_struct*) #5

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_polar_to_rect(double, double, %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct*) #0 !dbg !1371 {
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca %struct.gsl_sf_result_struct*, align 8
  %8 = alloca %struct.gsl_sf_result_struct*, align 8
  %9 = alloca double, align 8
  %10 = alloca i32, align 4
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  store double %0, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !1372, metadata !85), !dbg !1373
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !1374, metadata !85), !dbg !1375
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %7, metadata !1376, metadata !85), !dbg !1377
  store %struct.gsl_sf_result_struct* %3, %struct.gsl_sf_result_struct** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %8, metadata !1378, metadata !85), !dbg !1379
  call void @llvm.dbg.declare(metadata double* %9, metadata !1380, metadata !85), !dbg !1381
  %13 = load double, double* %6, align 8, !dbg !1382
  store double %13, double* %9, align 8, !dbg !1381
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1383, metadata !85), !dbg !1384
  %14 = call i32 @gsl_sf_angle_restrict_symm_e(double* %9), !dbg !1385
  store i32 %14, i32* %10, align 4, !dbg !1384
  call void @llvm.dbg.declare(metadata double* %11, metadata !1386, metadata !85), !dbg !1387
  %15 = load double, double* %9, align 8, !dbg !1388
  %16 = call double @cos(double %15) #6, !dbg !1389
  store double %16, double* %11, align 8, !dbg !1387
  call void @llvm.dbg.declare(metadata double* %12, metadata !1390, metadata !85), !dbg !1391
  %17 = load double, double* %9, align 8, !dbg !1392
  %18 = call double @sin(double %17) #6, !dbg !1393
  store double %18, double* %12, align 8, !dbg !1391
  %19 = load double, double* %5, align 8, !dbg !1394
  %20 = load double, double* %9, align 8, !dbg !1395
  %21 = call double @cos(double %20) #6, !dbg !1396
  %22 = fmul double %19, %21, !dbg !1397
  %23 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1398
  %24 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %23, i32 0, i32 0, !dbg !1399
  store double %22, double* %24, align 8, !dbg !1400
  %25 = load double, double* %5, align 8, !dbg !1401
  %26 = load double, double* %9, align 8, !dbg !1402
  %27 = call double @sin(double %26) #6, !dbg !1403
  %28 = fmul double %25, %27, !dbg !1404
  %29 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !1405
  %30 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %29, i32 0, i32 0, !dbg !1406
  store double %28, double* %30, align 8, !dbg !1407
  %31 = load double, double* %5, align 8, !dbg !1408
  %32 = load double, double* %12, align 8, !dbg !1409
  %33 = fmul double %32, 0x3CB0000000000000, !dbg !1410
  %34 = load double, double* %9, align 8, !dbg !1411
  %35 = fmul double %33, %34, !dbg !1412
  %36 = call double @fabs(double %35) #1, !dbg !1413
  %37 = fmul double %31, %36, !dbg !1414
  %38 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1415
  %39 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %38, i32 0, i32 1, !dbg !1416
  store double %37, double* %39, align 8, !dbg !1417
  %40 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1418
  %41 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %40, i32 0, i32 0, !dbg !1419
  %42 = load double, double* %41, align 8, !dbg !1419
  %43 = call double @fabs(double %42) #1, !dbg !1420
  %44 = fmul double 0x3CC0000000000000, %43, !dbg !1421
  %45 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1422
  %46 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %45, i32 0, i32 1, !dbg !1423
  %47 = load double, double* %46, align 8, !dbg !1424
  %48 = fadd double %47, %44, !dbg !1424
  store double %48, double* %46, align 8, !dbg !1424
  %49 = load double, double* %5, align 8, !dbg !1425
  %50 = load double, double* %11, align 8, !dbg !1426
  %51 = fmul double %50, 0x3CB0000000000000, !dbg !1427
  %52 = load double, double* %9, align 8, !dbg !1428
  %53 = fmul double %51, %52, !dbg !1429
  %54 = call double @fabs(double %53) #1, !dbg !1430
  %55 = fmul double %49, %54, !dbg !1431
  %56 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !1432
  %57 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %56, i32 0, i32 1, !dbg !1433
  store double %55, double* %57, align 8, !dbg !1434
  %58 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !1435
  %59 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %58, i32 0, i32 0, !dbg !1436
  %60 = load double, double* %59, align 8, !dbg !1436
  %61 = call double @fabs(double %60) #1, !dbg !1437
  %62 = fmul double 0x3CC0000000000000, %61, !dbg !1438
  %63 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !1439
  %64 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %63, i32 0, i32 1, !dbg !1440
  %65 = load double, double* %64, align 8, !dbg !1441
  %66 = fadd double %65, %62, !dbg !1441
  store double %66, double* %64, align 8, !dbg !1441
  %67 = load i32, i32* %10, align 4, !dbg !1442
  ret i32 %67, !dbg !1443
}

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_rect_to_polar(double, double, %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct*) #0 !dbg !1444 {
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca %struct.gsl_sf_result_struct*, align 8
  %9 = alloca %struct.gsl_sf_result_struct*, align 8
  %10 = alloca i32, align 4
  store double %0, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !1445, metadata !85), !dbg !1446
  store double %1, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !1447, metadata !85), !dbg !1448
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %8, metadata !1449, metadata !85), !dbg !1450
  store %struct.gsl_sf_result_struct* %3, %struct.gsl_sf_result_struct** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %9, metadata !1451, metadata !85), !dbg !1452
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1453, metadata !85), !dbg !1454
  %11 = load double, double* %6, align 8, !dbg !1455
  %12 = load double, double* %7, align 8, !dbg !1456
  %13 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !1457
  %14 = call i32 @gsl_sf_hypot_e(double %11, double %12, %struct.gsl_sf_result_struct* %13), !dbg !1458
  store i32 %14, i32* %10, align 4, !dbg !1454
  %15 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !1459
  %16 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %15, i32 0, i32 0, !dbg !1461
  %17 = load double, double* %16, align 8, !dbg !1461
  %18 = fcmp ogt double %17, 0.000000e+00, !dbg !1462
  br i1 %18, label %19, label %33, !dbg !1463

; <label>:19:                                     ; preds = %4
  %20 = load double, double* %7, align 8, !dbg !1464
  %21 = load double, double* %6, align 8, !dbg !1466
  %22 = call double @atan2(double %20, double %21) #6, !dbg !1467
  %23 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1468
  %24 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %23, i32 0, i32 0, !dbg !1469
  store double %22, double* %24, align 8, !dbg !1470
  %25 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1471
  %26 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %25, i32 0, i32 0, !dbg !1472
  %27 = load double, double* %26, align 8, !dbg !1472
  %28 = call double @fabs(double %27) #1, !dbg !1473
  %29 = fmul double 0x3CC0000000000000, %28, !dbg !1474
  %30 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1475
  %31 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %30, i32 0, i32 1, !dbg !1476
  store double %29, double* %31, align 8, !dbg !1477
  %32 = load i32, i32* %10, align 4, !dbg !1478
  store i32 %32, i32* %5, align 4, !dbg !1479
  br label %42, !dbg !1479

; <label>:33:                                     ; preds = %4
  br label %34, !dbg !1480, !llvm.loop !1482

; <label>:34:                                     ; preds = %33
  %35 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1483
  %36 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %35, i32 0, i32 0, !dbg !1483
  store double 0x7FF8000000000000, double* %36, align 8, !dbg !1483
  %37 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1483
  %38 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %37, i32 0, i32 1, !dbg !1483
  store double 0x7FF8000000000000, double* %38, align 8, !dbg !1483
  br label %39, !dbg !1483, !llvm.loop !1486

; <label>:39:                                     ; preds = %34
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 528, i32 1), !dbg !1488
  store i32 1, i32* %5, align 4, !dbg !1488
  br label %42, !dbg !1488
                                                  ; No predecessors!
  br label %41, !dbg !1491

; <label>:41:                                     ; preds = %40
  br label %42

; <label>:42:                                     ; preds = %19, %39, %41
  %43 = load i32, i32* %5, align 4, !dbg !1493
  ret i32 %43, !dbg !1493
}

; Function Attrs: nounwind
declare double @atan2(double, double) #3

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_angle_restrict_symm_err_e(double, %struct.gsl_sf_result_struct*) #0 !dbg !1494 {
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
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !1495, metadata !85), !dbg !1496
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %5, metadata !1497, metadata !85), !dbg !1498
  call void @llvm.dbg.declare(metadata double* %6, metadata !1499, metadata !85), !dbg !1500
  store double 0x400921FB40000000, double* %6, align 8, !dbg !1500
  call void @llvm.dbg.declare(metadata double* %7, metadata !1501, metadata !85), !dbg !1502
  store double 0x3E84442D00000000, double* %7, align 8, !dbg !1502
  call void @llvm.dbg.declare(metadata double* %8, metadata !1503, metadata !85), !dbg !1504
  store double 0x3D08469898CC5170, double* %8, align 8, !dbg !1504
  call void @llvm.dbg.declare(metadata double* %9, metadata !1505, metadata !85), !dbg !1506
  store double 0x401921FB54442D18, double* %9, align 8, !dbg !1506
  call void @llvm.dbg.declare(metadata double* %10, metadata !1507, metadata !85), !dbg !1508
  %13 = load double, double* %4, align 8, !dbg !1509
  %14 = fcmp oge double %13, 0.000000e+00, !dbg !1509
  %15 = select i1 %14, i32 1, i32 -1, !dbg !1509
  %16 = mul nsw i32 %15, 2, !dbg !1510
  %17 = sitofp i32 %16 to double, !dbg !1509
  %18 = load double, double* %4, align 8, !dbg !1511
  %19 = call double @fabs(double %18) #1, !dbg !1512
  %20 = fdiv double %19, 0x401921FB54442D18, !dbg !1513
  %21 = call double @floor(double %20) #1, !dbg !1514
  %22 = fmul double %17, %21, !dbg !1516
  store double %22, double* %10, align 8, !dbg !1508
  call void @llvm.dbg.declare(metadata double* %11, metadata !1517, metadata !85), !dbg !1518
  %23 = load double, double* %4, align 8, !dbg !1519
  %24 = load double, double* %10, align 8, !dbg !1520
  %25 = fmul double %24, 0x400921FB40000000, !dbg !1521
  %26 = fsub double %23, %25, !dbg !1522
  %27 = load double, double* %10, align 8, !dbg !1523
  %28 = fmul double %27, 0x3E84442D00000000, !dbg !1524
  %29 = fsub double %26, %28, !dbg !1525
  %30 = load double, double* %10, align 8, !dbg !1526
  %31 = fmul double %30, 0x3D08469898CC5170, !dbg !1527
  %32 = fsub double %29, %31, !dbg !1528
  store double %32, double* %11, align 8, !dbg !1518
  %33 = load double, double* %11, align 8, !dbg !1529
  %34 = fcmp ogt double %33, 0x400921FB54442D18, !dbg !1531
  br i1 %34, label %35, label %40, !dbg !1532

; <label>:35:                                     ; preds = %2
  %36 = load double, double* %11, align 8, !dbg !1533
  %37 = fsub double %36, 0x401921FB40000000, !dbg !1536
  %38 = fsub double %37, 0x3E94442D00000000, !dbg !1537
  %39 = fsub double %38, 0x3D18469898CC5170, !dbg !1538
  store double %39, double* %11, align 8, !dbg !1539
  br label %49, !dbg !1540

; <label>:40:                                     ; preds = %2
  %41 = load double, double* %11, align 8, !dbg !1541
  %42 = fcmp olt double %41, 0xC00921FB54442D18, !dbg !1543
  br i1 %42, label %43, label %48, !dbg !1544

; <label>:43:                                     ; preds = %40
  %44 = load double, double* %11, align 8, !dbg !1545
  %45 = fadd double %44, 0x401921FB40000000, !dbg !1547
  %46 = fadd double %45, 0x3E94442D00000000, !dbg !1548
  %47 = fadd double %46, 0x3D18469898CC5170, !dbg !1549
  store double %47, double* %11, align 8, !dbg !1550
  br label %48, !dbg !1551

; <label>:48:                                     ; preds = %43, %40
  br label %49

; <label>:49:                                     ; preds = %48, %35
  %50 = load double, double* %11, align 8, !dbg !1552
  %51 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1553
  %52 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %51, i32 0, i32 0, !dbg !1554
  store double %50, double* %52, align 8, !dbg !1555
  %53 = load double, double* %4, align 8, !dbg !1556
  %54 = call double @fabs(double %53) #1, !dbg !1558
  %55 = fcmp ogt double %54, 0x42F0000000000000, !dbg !1559
  br i1 %55, label %56, label %63, !dbg !1560

; <label>:56:                                     ; preds = %49
  %57 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1561
  %58 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %57, i32 0, i32 0, !dbg !1563
  store double 0x7FF8000000000000, double* %58, align 8, !dbg !1564
  %59 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1565
  %60 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %59, i32 0, i32 1, !dbg !1566
  store double 0x7FF8000000000000, double* %60, align 8, !dbg !1567
  br label %61, !dbg !1568, !llvm.loop !1569

; <label>:61:                                     ; preds = %56
  call void @gsl_error(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 552, i32 17), !dbg !1570
  store i32 17, i32* %3, align 4, !dbg !1570
  br label %94, !dbg !1570
                                                  ; No predecessors!
  br label %94, !dbg !1573

; <label>:63:                                     ; preds = %49
  %64 = load double, double* %4, align 8, !dbg !1574
  %65 = call double @fabs(double %64) #1, !dbg !1576
  %66 = fcmp ogt double %65, 4.194304e+06, !dbg !1577
  br i1 %66, label %67, label %77, !dbg !1578

; <label>:67:                                     ; preds = %63
  %68 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1579
  %69 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %68, i32 0, i32 0, !dbg !1581
  %70 = load double, double* %69, align 8, !dbg !1581
  %71 = load double, double* %4, align 8, !dbg !1582
  %72 = fsub double %70, %71, !dbg !1583
  %73 = call double @fabs(double %72) #1, !dbg !1584
  %74 = fmul double 0x3CC0000000000000, %73, !dbg !1585
  %75 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1586
  %76 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %75, i32 0, i32 1, !dbg !1587
  store double %74, double* %76, align 8, !dbg !1588
  store i32 0, i32* %3, align 4, !dbg !1589
  br label %94, !dbg !1589

; <label>:77:                                     ; preds = %63
  call void @llvm.dbg.declare(metadata double* %12, metadata !1590, metadata !85), !dbg !1592
  %78 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1593
  %79 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %78, i32 0, i32 0, !dbg !1594
  %80 = load double, double* %79, align 8, !dbg !1594
  %81 = load double, double* %4, align 8, !dbg !1595
  %82 = fsub double %80, %81, !dbg !1596
  %83 = call double @fabs(double %82) #1, !dbg !1597
  store double %83, double* %12, align 8, !dbg !1592
  %84 = load double, double* %12, align 8, !dbg !1598
  %85 = fcmp olt double %84, 0x400921FB54442D18, !dbg !1599
  br i1 %85, label %86, label %88, !dbg !1600

; <label>:86:                                     ; preds = %77
  %87 = load double, double* %12, align 8, !dbg !1601
  br label %89, !dbg !1603

; <label>:88:                                     ; preds = %77
  br label %89, !dbg !1604

; <label>:89:                                     ; preds = %88, %86
  %90 = phi double [ %87, %86 ], [ 0x400921FB54442D18, %88 ], !dbg !1606
  %91 = fmul double 0x3CC0000000000000, %90, !dbg !1608
  %92 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1609
  %93 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %92, i32 0, i32 1, !dbg !1610
  store double %91, double* %93, align 8, !dbg !1611
  store i32 0, i32* %3, align 4, !dbg !1612
  br label %94, !dbg !1612

; <label>:94:                                     ; preds = %61, %67, %89, %62
  %95 = load i32, i32* %3, align 4, !dbg !1613
  ret i32 %95, !dbg !1613
}

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_angle_restrict_pos_err_e(double, %struct.gsl_sf_result_struct*) #0 !dbg !1614 {
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
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !1615, metadata !85), !dbg !1616
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %5, metadata !1617, metadata !85), !dbg !1618
  call void @llvm.dbg.declare(metadata double* %6, metadata !1619, metadata !85), !dbg !1620
  store double 0x400921FB40000000, double* %6, align 8, !dbg !1620
  call void @llvm.dbg.declare(metadata double* %7, metadata !1621, metadata !85), !dbg !1622
  store double 0x3E84442D00000000, double* %7, align 8, !dbg !1622
  call void @llvm.dbg.declare(metadata double* %8, metadata !1623, metadata !85), !dbg !1624
  store double 0x3D08469898CC5170, double* %8, align 8, !dbg !1624
  call void @llvm.dbg.declare(metadata double* %9, metadata !1625, metadata !85), !dbg !1626
  store double 0x401921FB54442D18, double* %9, align 8, !dbg !1626
  call void @llvm.dbg.declare(metadata double* %10, metadata !1627, metadata !85), !dbg !1628
  %13 = load double, double* %4, align 8, !dbg !1629
  %14 = fdiv double %13, 0x401921FB54442D18, !dbg !1630
  %15 = call double @floor(double %14) #1, !dbg !1631
  %16 = fmul double 2.000000e+00, %15, !dbg !1632
  store double %16, double* %10, align 8, !dbg !1628
  call void @llvm.dbg.declare(metadata double* %11, metadata !1633, metadata !85), !dbg !1634
  %17 = load double, double* %4, align 8, !dbg !1635
  %18 = load double, double* %10, align 8, !dbg !1636
  %19 = fmul double %18, 0x400921FB40000000, !dbg !1637
  %20 = fsub double %17, %19, !dbg !1638
  %21 = load double, double* %10, align 8, !dbg !1639
  %22 = fmul double %21, 0x3E84442D00000000, !dbg !1640
  %23 = fsub double %20, %22, !dbg !1641
  %24 = load double, double* %10, align 8, !dbg !1642
  %25 = fmul double %24, 0x3D08469898CC5170, !dbg !1643
  %26 = fsub double %23, %25, !dbg !1644
  store double %26, double* %11, align 8, !dbg !1634
  %27 = load double, double* %11, align 8, !dbg !1645
  %28 = fcmp ogt double %27, 0x401921FB54442D18, !dbg !1647
  br i1 %28, label %29, label %34, !dbg !1648

; <label>:29:                                     ; preds = %2
  %30 = load double, double* %11, align 8, !dbg !1649
  %31 = fsub double %30, 0x401921FB40000000, !dbg !1652
  %32 = fsub double %31, 0x3E94442D00000000, !dbg !1653
  %33 = fsub double %32, 0x3D18469898CC5170, !dbg !1654
  store double %33, double* %11, align 8, !dbg !1655
  br label %43, !dbg !1656

; <label>:34:                                     ; preds = %2
  %35 = load double, double* %11, align 8, !dbg !1657
  %36 = fcmp olt double %35, 0.000000e+00, !dbg !1659
  br i1 %36, label %37, label %42, !dbg !1660

; <label>:37:                                     ; preds = %34
  %38 = load double, double* %11, align 8, !dbg !1661
  %39 = fadd double %38, 0x401921FB40000000, !dbg !1663
  %40 = fadd double %39, 0x3E94442D00000000, !dbg !1664
  %41 = fadd double %40, 0x3D18469898CC5170, !dbg !1665
  store double %41, double* %11, align 8, !dbg !1666
  br label %42, !dbg !1667

; <label>:42:                                     ; preds = %37, %34
  br label %43

; <label>:43:                                     ; preds = %42, %29
  %44 = load double, double* %11, align 8, !dbg !1668
  %45 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1669
  %46 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %45, i32 0, i32 0, !dbg !1670
  store double %44, double* %46, align 8, !dbg !1671
  %47 = load double, double* %4, align 8, !dbg !1672
  %48 = call double @fabs(double %47) #1, !dbg !1674
  %49 = fcmp ogt double %48, 0x42F0000000000000, !dbg !1675
  br i1 %49, label %50, label %61, !dbg !1676

; <label>:50:                                     ; preds = %43
  %51 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1677
  %52 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %51, i32 0, i32 0, !dbg !1679
  store double 0x7FF8000000000000, double* %52, align 8, !dbg !1680
  %53 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1681
  %54 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %53, i32 0, i32 0, !dbg !1682
  %55 = load double, double* %54, align 8, !dbg !1682
  %56 = call double @fabs(double %55) #1, !dbg !1683
  %57 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1684
  %58 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %57, i32 0, i32 1, !dbg !1685
  store double %56, double* %58, align 8, !dbg !1686
  br label %59, !dbg !1687, !llvm.loop !1688

; <label>:59:                                     ; preds = %50
  call void @gsl_error(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 588, i32 17), !dbg !1689
  store i32 17, i32* %3, align 4, !dbg !1689
  br label %92, !dbg !1689
                                                  ; No predecessors!
  br label %92, !dbg !1692

; <label>:61:                                     ; preds = %43
  %62 = load double, double* %4, align 8, !dbg !1693
  %63 = call double @fabs(double %62) #1, !dbg !1695
  %64 = fcmp ogt double %63, 4.194304e+06, !dbg !1696
  br i1 %64, label %65, label %75, !dbg !1697

; <label>:65:                                     ; preds = %61
  %66 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1698
  %67 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %66, i32 0, i32 0, !dbg !1700
  %68 = load double, double* %67, align 8, !dbg !1700
  %69 = load double, double* %4, align 8, !dbg !1701
  %70 = fsub double %68, %69, !dbg !1702
  %71 = call double @fabs(double %70) #1, !dbg !1703
  %72 = fmul double 0x3CB0000000000000, %71, !dbg !1704
  %73 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1705
  %74 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %73, i32 0, i32 1, !dbg !1706
  store double %72, double* %74, align 8, !dbg !1707
  store i32 0, i32* %3, align 4, !dbg !1708
  br label %92, !dbg !1708

; <label>:75:                                     ; preds = %61
  call void @llvm.dbg.declare(metadata double* %12, metadata !1709, metadata !85), !dbg !1711
  %76 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1712
  %77 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %76, i32 0, i32 0, !dbg !1713
  %78 = load double, double* %77, align 8, !dbg !1713
  %79 = load double, double* %4, align 8, !dbg !1714
  %80 = fsub double %78, %79, !dbg !1715
  %81 = call double @fabs(double %80) #1, !dbg !1716
  store double %81, double* %12, align 8, !dbg !1711
  %82 = load double, double* %12, align 8, !dbg !1717
  %83 = fcmp olt double %82, 0x400921FB54442D18, !dbg !1718
  br i1 %83, label %84, label %86, !dbg !1719

; <label>:84:                                     ; preds = %75
  %85 = load double, double* %12, align 8, !dbg !1720
  br label %87, !dbg !1722

; <label>:86:                                     ; preds = %75
  br label %87, !dbg !1723

; <label>:87:                                     ; preds = %86, %84
  %88 = phi double [ %85, %84 ], [ 0x400921FB54442D18, %86 ], !dbg !1725
  %89 = fmul double 0x3CC0000000000000, %88, !dbg !1727
  %90 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1728
  %91 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %90, i32 0, i32 1, !dbg !1729
  store double %89, double* %91, align 8, !dbg !1730
  store i32 0, i32* %3, align 4, !dbg !1731
  br label %92, !dbg !1731

; <label>:92:                                     ; preds = %59, %65, %87, %60
  %93 = load i32, i32* %3, align 4, !dbg !1732
  ret i32 %93, !dbg !1732
}

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_angle_restrict_pos_e(double*) #0 !dbg !1733 {
  %2 = alloca double*, align 8
  %3 = alloca %struct.gsl_sf_result_struct, align 8
  %4 = alloca i32, align 4
  store double* %0, double** %2, align 8
  call void @llvm.dbg.declare(metadata double** %2, metadata !1734, metadata !85), !dbg !1735
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %3, metadata !1736, metadata !85), !dbg !1737
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1738, metadata !85), !dbg !1739
  %5 = load double*, double** %2, align 8, !dbg !1740
  %6 = load double, double* %5, align 8, !dbg !1741
  %7 = call i32 @gsl_sf_angle_restrict_pos_err_e(double %6, %struct.gsl_sf_result_struct* %3), !dbg !1742
  store i32 %7, i32* %4, align 4, !dbg !1739
  %8 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %3, i32 0, i32 0, !dbg !1743
  %9 = load double, double* %8, align 8, !dbg !1743
  %10 = load double*, double** %2, align 8, !dbg !1744
  store double %9, double* %10, align 8, !dbg !1745
  %11 = load i32, i32* %4, align 4, !dbg !1746
  ret i32 %11, !dbg !1747
}

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_sin_err_e(double, double, %struct.gsl_sf_result_struct*) #0 !dbg !1748 {
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca %struct.gsl_sf_result_struct*, align 8
  %7 = alloca i32, align 4
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !1749, metadata !85), !dbg !1750
  store double %1, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !1751, metadata !85), !dbg !1752
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %6, metadata !1753, metadata !85), !dbg !1754
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1755, metadata !85), !dbg !1756
  %8 = load double, double* %4, align 8, !dbg !1757
  %9 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !1758
  %10 = call i32 @gsl_sf_sin_e(double %8, %struct.gsl_sf_result_struct* %9), !dbg !1759
  store i32 %10, i32* %7, align 4, !dbg !1756
  %11 = load double, double* %4, align 8, !dbg !1760
  %12 = call double @cos(double %11) #6, !dbg !1761
  %13 = load double, double* %5, align 8, !dbg !1762
  %14 = fmul double %12, %13, !dbg !1763
  %15 = call double @fabs(double %14) #1, !dbg !1764
  %16 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !1766
  %17 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %16, i32 0, i32 1, !dbg !1767
  %18 = load double, double* %17, align 8, !dbg !1768
  %19 = fadd double %18, %15, !dbg !1768
  store double %19, double* %17, align 8, !dbg !1768
  %20 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !1769
  %21 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %20, i32 0, i32 0, !dbg !1770
  %22 = load double, double* %21, align 8, !dbg !1770
  %23 = call double @fabs(double %22) #1, !dbg !1771
  %24 = fmul double 0x3CB0000000000000, %23, !dbg !1772
  %25 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !1773
  %26 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %25, i32 0, i32 1, !dbg !1774
  %27 = load double, double* %26, align 8, !dbg !1775
  %28 = fadd double %27, %24, !dbg !1775
  store double %28, double* %26, align 8, !dbg !1775
  %29 = load i32, i32* %7, align 4, !dbg !1776
  ret i32 %29, !dbg !1777
}

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_cos_err_e(double, double, %struct.gsl_sf_result_struct*) #0 !dbg !1778 {
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca %struct.gsl_sf_result_struct*, align 8
  %7 = alloca i32, align 4
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !1779, metadata !85), !dbg !1780
  store double %1, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !1781, metadata !85), !dbg !1782
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %6, metadata !1783, metadata !85), !dbg !1784
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1785, metadata !85), !dbg !1786
  %8 = load double, double* %4, align 8, !dbg !1787
  %9 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !1788
  %10 = call i32 @gsl_sf_cos_e(double %8, %struct.gsl_sf_result_struct* %9), !dbg !1789
  store i32 %10, i32* %7, align 4, !dbg !1786
  %11 = load double, double* %4, align 8, !dbg !1790
  %12 = call double @sin(double %11) #6, !dbg !1791
  %13 = load double, double* %5, align 8, !dbg !1792
  %14 = fmul double %12, %13, !dbg !1793
  %15 = call double @fabs(double %14) #1, !dbg !1794
  %16 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !1796
  %17 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %16, i32 0, i32 1, !dbg !1797
  %18 = load double, double* %17, align 8, !dbg !1798
  %19 = fadd double %18, %15, !dbg !1798
  store double %19, double* %17, align 8, !dbg !1798
  %20 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !1799
  %21 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %20, i32 0, i32 0, !dbg !1800
  %22 = load double, double* %21, align 8, !dbg !1800
  %23 = call double @fabs(double %22) #1, !dbg !1801
  %24 = fmul double 0x3CB0000000000000, %23, !dbg !1802
  %25 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !1803
  %26 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %25, i32 0, i32 1, !dbg !1804
  %27 = load double, double* %26, align 8, !dbg !1805
  %28 = fadd double %27, %24, !dbg !1805
  store double %28, double* %26, align 8, !dbg !1805
  %29 = load i32, i32* %7, align 4, !dbg !1806
  ret i32 %29, !dbg !1807
}

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_sinc_e(double, %struct.gsl_sf_result_struct*) #0 !dbg !1808 {
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca %struct.gsl_sf_result_struct*, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca %struct.gsl_sf_result_struct, align 8
  %9 = alloca i32, align 4
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !1809, metadata !85), !dbg !1810
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %5, metadata !1811, metadata !85), !dbg !1812
  call void @llvm.dbg.declare(metadata double* %6, metadata !1813, metadata !85), !dbg !1815
  %10 = load double, double* %4, align 8, !dbg !1816
  %11 = call double @fabs(double %10) #1, !dbg !1817
  store double %11, double* %6, align 8, !dbg !1815
  %12 = load double, double* %6, align 8, !dbg !1818
  %13 = fcmp olt double %12, 8.000000e-01, !dbg !1820
  br i1 %13, label %14, label %20, !dbg !1821

; <label>:14:                                     ; preds = %2
  %15 = load double, double* %6, align 8, !dbg !1822
  %16 = fmul double 2.000000e+00, %15, !dbg !1824
  %17 = fsub double %16, 1.000000e+00, !dbg !1825
  %18 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1826
  %19 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @sinc_cs, double %17, %struct.gsl_sf_result_struct* %18), !dbg !1827
  store i32 %19, i32* %3, align 4, !dbg !1828
  br label %63, !dbg !1828

; <label>:20:                                     ; preds = %2
  %21 = load double, double* %6, align 8, !dbg !1829
  %22 = fcmp olt double %21, 1.000000e+02, !dbg !1831
  br i1 %22, label %23, label %39, !dbg !1832

; <label>:23:                                     ; preds = %20
  %24 = load double, double* %6, align 8, !dbg !1833
  %25 = fmul double 0x400921FB54442D18, %24, !dbg !1835
  %26 = call double @sin(double %25) #6, !dbg !1836
  %27 = load double, double* %6, align 8, !dbg !1837
  %28 = fmul double 0x400921FB54442D18, %27, !dbg !1838
  %29 = fdiv double %26, %28, !dbg !1839
  %30 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1840
  %31 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %30, i32 0, i32 0, !dbg !1841
  store double %29, double* %31, align 8, !dbg !1842
  %32 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1843
  %33 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %32, i32 0, i32 0, !dbg !1844
  %34 = load double, double* %33, align 8, !dbg !1844
  %35 = call double @fabs(double %34) #1, !dbg !1845
  %36 = fmul double 0x3CC0000000000000, %35, !dbg !1846
  %37 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1847
  %38 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %37, i32 0, i32 1, !dbg !1848
  store double %36, double* %38, align 8, !dbg !1849
  store i32 0, i32* %3, align 4, !dbg !1850
  br label %63, !dbg !1850

; <label>:39:                                     ; preds = %20
  call void @llvm.dbg.declare(metadata double* %7, metadata !1851, metadata !85), !dbg !1853
  %40 = load double, double* %6, align 8, !dbg !1854
  %41 = fmul double 0x400921FB54442D18, %40, !dbg !1855
  store double %41, double* %7, align 8, !dbg !1853
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %8, metadata !1856, metadata !85), !dbg !1857
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1858, metadata !85), !dbg !1859
  %42 = load double, double* %7, align 8, !dbg !1860
  %43 = call i32 @gsl_sf_sin_e(double %42, %struct.gsl_sf_result_struct* %8), !dbg !1861
  store i32 %43, i32* %9, align 4, !dbg !1859
  %44 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 0, !dbg !1862
  %45 = load double, double* %44, align 8, !dbg !1862
  %46 = load double, double* %7, align 8, !dbg !1863
  %47 = fdiv double %45, %46, !dbg !1864
  %48 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1865
  %49 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %48, i32 0, i32 0, !dbg !1866
  store double %47, double* %49, align 8, !dbg !1867
  %50 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 1, !dbg !1868
  %51 = load double, double* %50, align 8, !dbg !1868
  %52 = load double, double* %7, align 8, !dbg !1869
  %53 = fdiv double %51, %52, !dbg !1870
  %54 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1871
  %55 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %54, i32 0, i32 0, !dbg !1872
  %56 = load double, double* %55, align 8, !dbg !1872
  %57 = call double @fabs(double %56) #1, !dbg !1873
  %58 = fmul double 0x3CC0000000000000, %57, !dbg !1874
  %59 = fadd double %53, %58, !dbg !1875
  %60 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1876
  %61 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %60, i32 0, i32 1, !dbg !1877
  store double %59, double* %61, align 8, !dbg !1878
  %62 = load i32, i32* %9, align 4, !dbg !1879
  store i32 %62, i32* %3, align 4, !dbg !1880
  br label %63, !dbg !1880

; <label>:63:                                     ; preds = %39, %23, %14
  %64 = load i32, i32* %3, align 4, !dbg !1881
  ret i32 %64, !dbg !1881
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_sin(double) #0 !dbg !1882 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct, align 8
  %5 = alloca i32, align 4
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !1885, metadata !85), !dbg !1886
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %4, metadata !1887, metadata !85), !dbg !1888
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1889, metadata !85), !dbg !1888
  %6 = load double, double* %3, align 8, !dbg !1888
  %7 = call i32 @gsl_sf_sin_e(double %6, %struct.gsl_sf_result_struct* %4), !dbg !1888
  store i32 %7, i32* %5, align 4, !dbg !1888
  %8 = load i32, i32* %5, align 4, !dbg !1890
  %9 = icmp ne i32 %8, 0, !dbg !1890
  br i1 %9, label %10, label %16, !dbg !1888

; <label>:10:                                     ; preds = %1
  br label %11, !dbg !1892, !llvm.loop !1895

; <label>:11:                                     ; preds = %10
  %12 = load i32, i32* %5, align 4, !dbg !1897
  call void @gsl_error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 726, i32 %12), !dbg !1897
  %13 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !1897
  %14 = load double, double* %13, align 8, !dbg !1897
  store double %14, double* %2, align 8, !dbg !1897
  br label %19, !dbg !1897
                                                  ; No predecessors!
  br label %16, !dbg !1900

; <label>:16:                                     ; preds = %15, %1
  %17 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !1902
  %18 = load double, double* %17, align 8, !dbg !1902
  store double %18, double* %2, align 8, !dbg !1902
  br label %19, !dbg !1902

; <label>:19:                                     ; preds = %16, %11
  %20 = load double, double* %2, align 8, !dbg !1904
  ret double %20, !dbg !1904
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_cos(double) #0 !dbg !1905 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct, align 8
  %5 = alloca i32, align 4
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !1906, metadata !85), !dbg !1907
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %4, metadata !1908, metadata !85), !dbg !1909
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1910, metadata !85), !dbg !1909
  %6 = load double, double* %3, align 8, !dbg !1909
  %7 = call i32 @gsl_sf_cos_e(double %6, %struct.gsl_sf_result_struct* %4), !dbg !1909
  store i32 %7, i32* %5, align 4, !dbg !1909
  %8 = load i32, i32* %5, align 4, !dbg !1911
  %9 = icmp ne i32 %8, 0, !dbg !1911
  br i1 %9, label %10, label %16, !dbg !1909

; <label>:10:                                     ; preds = %1
  br label %11, !dbg !1913, !llvm.loop !1916

; <label>:11:                                     ; preds = %10
  %12 = load i32, i32* %5, align 4, !dbg !1918
  call void @gsl_error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 731, i32 %12), !dbg !1918
  %13 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !1918
  %14 = load double, double* %13, align 8, !dbg !1918
  store double %14, double* %2, align 8, !dbg !1918
  br label %19, !dbg !1918
                                                  ; No predecessors!
  br label %16, !dbg !1921

; <label>:16:                                     ; preds = %15, %1
  %17 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !1923
  %18 = load double, double* %17, align 8, !dbg !1923
  store double %18, double* %2, align 8, !dbg !1923
  br label %19, !dbg !1923

; <label>:19:                                     ; preds = %16, %11
  %20 = load double, double* %2, align 8, !dbg !1925
  ret double %20, !dbg !1925
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_hypot(double, double) #0 !dbg !1926 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca %struct.gsl_sf_result_struct, align 8
  %7 = alloca i32, align 4
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !1929, metadata !85), !dbg !1930
  store double %1, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !1931, metadata !85), !dbg !1932
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %6, metadata !1933, metadata !85), !dbg !1934
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1935, metadata !85), !dbg !1934
  %8 = load double, double* %4, align 8, !dbg !1934
  %9 = load double, double* %5, align 8, !dbg !1934
  %10 = call i32 @gsl_sf_hypot_e(double %8, double %9, %struct.gsl_sf_result_struct* %6), !dbg !1934
  store i32 %10, i32* %7, align 4, !dbg !1934
  %11 = load i32, i32* %7, align 4, !dbg !1936
  %12 = icmp ne i32 %11, 0, !dbg !1936
  br i1 %12, label %13, label %19, !dbg !1934

; <label>:13:                                     ; preds = %2
  br label %14, !dbg !1938, !llvm.loop !1941

; <label>:14:                                     ; preds = %13
  %15 = load i32, i32* %7, align 4, !dbg !1943
  call void @gsl_error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 736, i32 %15), !dbg !1943
  %16 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !1943
  %17 = load double, double* %16, align 8, !dbg !1943
  store double %17, double* %3, align 8, !dbg !1943
  br label %22, !dbg !1943
                                                  ; No predecessors!
  br label %19, !dbg !1946

; <label>:19:                                     ; preds = %18, %2
  %20 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !1948
  %21 = load double, double* %20, align 8, !dbg !1948
  store double %21, double* %3, align 8, !dbg !1948
  br label %22, !dbg !1948

; <label>:22:                                     ; preds = %19, %14
  %23 = load double, double* %3, align 8, !dbg !1950
  ret double %23, !dbg !1950
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_lnsinh(double) #0 !dbg !1951 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct, align 8
  %5 = alloca i32, align 4
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !1952, metadata !85), !dbg !1953
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %4, metadata !1954, metadata !85), !dbg !1955
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1956, metadata !85), !dbg !1955
  %6 = load double, double* %3, align 8, !dbg !1955
  %7 = call i32 @gsl_sf_lnsinh_e(double %6, %struct.gsl_sf_result_struct* %4), !dbg !1955
  store i32 %7, i32* %5, align 4, !dbg !1955
  %8 = load i32, i32* %5, align 4, !dbg !1957
  %9 = icmp ne i32 %8, 0, !dbg !1957
  br i1 %9, label %10, label %16, !dbg !1955

; <label>:10:                                     ; preds = %1
  br label %11, !dbg !1959, !llvm.loop !1962

; <label>:11:                                     ; preds = %10
  %12 = load i32, i32* %5, align 4, !dbg !1964
  call void @gsl_error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 741, i32 %12), !dbg !1964
  %13 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !1964
  %14 = load double, double* %13, align 8, !dbg !1964
  store double %14, double* %2, align 8, !dbg !1964
  br label %19, !dbg !1964
                                                  ; No predecessors!
  br label %16, !dbg !1967

; <label>:16:                                     ; preds = %15, %1
  %17 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !1969
  %18 = load double, double* %17, align 8, !dbg !1969
  store double %18, double* %2, align 8, !dbg !1969
  br label %19, !dbg !1969

; <label>:19:                                     ; preds = %16, %11
  %20 = load double, double* %2, align 8, !dbg !1971
  ret double %20, !dbg !1971
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_lncosh(double) #0 !dbg !1972 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct, align 8
  %5 = alloca i32, align 4
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !1973, metadata !85), !dbg !1974
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %4, metadata !1975, metadata !85), !dbg !1976
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1977, metadata !85), !dbg !1976
  %6 = load double, double* %3, align 8, !dbg !1976
  %7 = call i32 @gsl_sf_lncosh_e(double %6, %struct.gsl_sf_result_struct* %4), !dbg !1976
  store i32 %7, i32* %5, align 4, !dbg !1976
  %8 = load i32, i32* %5, align 4, !dbg !1978
  %9 = icmp ne i32 %8, 0, !dbg !1978
  br i1 %9, label %10, label %16, !dbg !1976

; <label>:10:                                     ; preds = %1
  br label %11, !dbg !1980, !llvm.loop !1983

; <label>:11:                                     ; preds = %10
  %12 = load i32, i32* %5, align 4, !dbg !1985
  call void @gsl_error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 746, i32 %12), !dbg !1985
  %13 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !1985
  %14 = load double, double* %13, align 8, !dbg !1985
  store double %14, double* %2, align 8, !dbg !1985
  br label %19, !dbg !1985
                                                  ; No predecessors!
  br label %16, !dbg !1988

; <label>:16:                                     ; preds = %15, %1
  %17 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !1990
  %18 = load double, double* %17, align 8, !dbg !1990
  store double %18, double* %2, align 8, !dbg !1990
  br label %19, !dbg !1990

; <label>:19:                                     ; preds = %16, %11
  %20 = load double, double* %2, align 8, !dbg !1992
  ret double %20, !dbg !1992
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_angle_restrict_symm(double) #0 !dbg !1993 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !1994, metadata !85), !dbg !1995
  call void @llvm.dbg.declare(metadata double* %4, metadata !1996, metadata !85), !dbg !1997
  %6 = load double, double* %3, align 8, !dbg !1998
  store double %6, double* %4, align 8, !dbg !1997
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1999, metadata !85), !dbg !2000
  %7 = call i32 @gsl_sf_angle_restrict_symm_e(double* %4), !dbg !2000
  store i32 %7, i32* %5, align 4, !dbg !2000
  %8 = load i32, i32* %5, align 4, !dbg !2001
  %9 = icmp ne i32 %8, 0, !dbg !2001
  br i1 %9, label %10, label %15, !dbg !2000

; <label>:10:                                     ; preds = %1
  br label %11, !dbg !2003, !llvm.loop !2006

; <label>:11:                                     ; preds = %10
  %12 = load i32, i32* %5, align 4, !dbg !2008
  call void @gsl_error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 752, i32 %12), !dbg !2008
  %13 = load double, double* %4, align 8, !dbg !2008
  store double %13, double* %2, align 8, !dbg !2008
  br label %17, !dbg !2008
                                                  ; No predecessors!
  br label %15, !dbg !2011

; <label>:15:                                     ; preds = %14, %1
  %16 = load double, double* %4, align 8, !dbg !2013
  store double %16, double* %2, align 8, !dbg !2013
  br label %17, !dbg !2013

; <label>:17:                                     ; preds = %15, %11
  %18 = load double, double* %2, align 8, !dbg !2015
  ret double %18, !dbg !2015
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_angle_restrict_pos(double) #0 !dbg !2016 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !2017, metadata !85), !dbg !2018
  call void @llvm.dbg.declare(metadata double* %4, metadata !2019, metadata !85), !dbg !2020
  %6 = load double, double* %3, align 8, !dbg !2021
  store double %6, double* %4, align 8, !dbg !2020
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2022, metadata !85), !dbg !2023
  %7 = call i32 @gsl_sf_angle_restrict_pos_e(double* %4), !dbg !2023
  store i32 %7, i32* %5, align 4, !dbg !2023
  %8 = load i32, i32* %5, align 4, !dbg !2024
  %9 = icmp ne i32 %8, 0, !dbg !2024
  br i1 %9, label %10, label %15, !dbg !2023

; <label>:10:                                     ; preds = %1
  br label %11, !dbg !2026, !llvm.loop !2029

; <label>:11:                                     ; preds = %10
  %12 = load i32, i32* %5, align 4, !dbg !2031
  call void @gsl_error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 758, i32 %12), !dbg !2031
  %13 = load double, double* %4, align 8, !dbg !2031
  store double %13, double* %2, align 8, !dbg !2031
  br label %17, !dbg !2031
                                                  ; No predecessors!
  br label %15, !dbg !2034

; <label>:15:                                     ; preds = %14, %1
  %16 = load double, double* %4, align 8, !dbg !2036
  store double %16, double* %2, align 8, !dbg !2036
  br label %17, !dbg !2036

; <label>:17:                                     ; preds = %15, %11
  %18 = load double, double* %2, align 8, !dbg !2038
  ret double %18, !dbg !2038
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_sinc(double) #0 !dbg !2039 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct, align 8
  %5 = alloca i32, align 4
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !2040, metadata !85), !dbg !2041
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %4, metadata !2042, metadata !85), !dbg !2043
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2044, metadata !85), !dbg !2043
  %6 = load double, double* %3, align 8, !dbg !2043
  %7 = call i32 @gsl_sf_sinc_e(double %6, %struct.gsl_sf_result_struct* %4), !dbg !2043
  store i32 %7, i32* %5, align 4, !dbg !2043
  %8 = load i32, i32* %5, align 4, !dbg !2045
  %9 = icmp ne i32 %8, 0, !dbg !2045
  br i1 %9, label %10, label %16, !dbg !2043

; <label>:10:                                     ; preds = %1
  br label %11, !dbg !2047, !llvm.loop !2050

; <label>:11:                                     ; preds = %10
  %12 = load i32, i32* %5, align 4, !dbg !2052
  call void @gsl_error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 770, i32 %12), !dbg !2052
  %13 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !2052
  %14 = load double, double* %13, align 8, !dbg !2052
  store double %14, double* %2, align 8, !dbg !2052
  br label %19, !dbg !2052
                                                  ; No predecessors!
  br label %16, !dbg !2055

; <label>:16:                                     ; preds = %15, %1
  %17 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !2057
  %18 = load double, double* %17, align 8, !dbg !2057
  store double %18, double* %2, align 8, !dbg !2057
  br label %19, !dbg !2057

; <label>:19:                                     ; preds = %16, %11
  %20 = load double, double* %2, align 8, !dbg !2059
  ret double %20, !dbg !2059
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!69, !70, !71}
!llvm.ident = !{!72}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, globals: !41)
!1 = !DIFile(filename: "trig.c", directory: "/fpcc/gsl-2.5/specfunc")
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
!41 = !{!42, !55, !59, !60, !64, !65}
!42 = distinct !DIGlobalVariable(name: "sin_cs", scope: !0, file: !1, line: 124, type: !43, isLocal: true, isDefinition: true, variable: %struct.cheb_series_struct* @sin_cs)
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
!55 = distinct !DIGlobalVariable(name: "sin_data", scope: !0, file: !1, line: 110, type: !56, isLocal: true, isDefinition: true, variable: [12 x double]* @sin_data)
!56 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 768, align: 64, elements: !57)
!57 = !{!58}
!58 = !DISubrange(count: 12)
!59 = distinct !DIGlobalVariable(name: "cos_cs", scope: !0, file: !1, line: 147, type: !43, isLocal: true, isDefinition: true, variable: %struct.cheb_series_struct* @cos_cs)
!60 = distinct !DIGlobalVariable(name: "cos_data", scope: !0, file: !1, line: 134, type: !61, isLocal: true, isDefinition: true, variable: [11 x double]* @cos_data)
!61 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 704, align: 64, elements: !62)
!62 = !{!63}
!63 = !DISubrange(count: 11)
!64 = distinct !DIGlobalVariable(name: "sinc_cs", scope: !0, file: !1, line: 99, type: !43, isLocal: true, isDefinition: true, variable: %struct.cheb_series_struct* @sinc_cs)
!65 = distinct !DIGlobalVariable(name: "sinc_data", scope: !0, file: !1, line: 80, type: !66, isLocal: true, isDefinition: true, variable: [17 x double]* @sinc_data)
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 1088, align: 64, elements: !67)
!67 = !{!68}
!68 = !DISubrange(count: 17)
!69 = !{i32 2, !"Dwarf Version", i32 4}
!70 = !{i32 2, !"Debug Info Version", i32 3}
!71 = !{i32 1, !"PIC Level", i32 2}
!72 = !{!"clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)"}
!73 = distinct !DISubprogram(name: "gsl_sf_sin_e", scope: !1, file: !1, line: 163, type: !74, isLocal: false, isDefinition: true, scopeLine: 164, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !83)
!74 = !DISubroutineType(types: !75)
!75 = !{!51, !49, !76}
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64, align: 64)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !78, line: 41, baseType: !79)
!78 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/fpcc/gsl-2.5/specfunc")
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !78, line: 37, size: 128, align: 64, elements: !80)
!80 = !{!81, !82}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !79, file: !78, line: 38, baseType: !49, size: 64, align: 64)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !79, file: !78, line: 39, baseType: !49, size: 64, align: 64, offset: 64)
!83 = !{}
!84 = !DILocalVariable(name: "x", arg: 1, scope: !73, file: !1, line: 163, type: !49)
!85 = !DIExpression()
!86 = !DILocation(line: 163, column: 21, scope: !73)
!87 = !DILocalVariable(name: "result", arg: 2, scope: !73, file: !1, line: 163, type: !76)
!88 = !DILocation(line: 163, column: 40, scope: !73)
!89 = !DILocalVariable(name: "P1", scope: !90, file: !1, line: 168, type: !91)
!90 = distinct !DILexicalBlock(scope: !73, file: !1, line: 167, column: 3)
!91 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !49)
!92 = !DILocation(line: 168, column: 18, scope: !90)
!93 = !DILocalVariable(name: "P2", scope: !90, file: !1, line: 169, type: !91)
!94 = !DILocation(line: 169, column: 18, scope: !90)
!95 = !DILocalVariable(name: "P3", scope: !90, file: !1, line: 170, type: !91)
!96 = !DILocation(line: 170, column: 18, scope: !90)
!97 = !DILocalVariable(name: "sgn_x", scope: !90, file: !1, line: 172, type: !91)
!98 = !DILocation(line: 172, column: 18, scope: !90)
!99 = !DILocation(line: 172, column: 26, scope: !90)
!100 = !DILocalVariable(name: "abs_x", scope: !90, file: !1, line: 173, type: !91)
!101 = !DILocation(line: 173, column: 18, scope: !90)
!102 = !DILocation(line: 173, column: 31, scope: !90)
!103 = !DILocation(line: 173, column: 26, scope: !90)
!104 = !DILocation(line: 175, column: 8, scope: !105)
!105 = distinct !DILexicalBlock(scope: !90, file: !1, line: 175, column: 8)
!106 = !DILocation(line: 175, column: 14, scope: !105)
!107 = !DILocation(line: 175, column: 8, scope: !90)
!108 = !DILocalVariable(name: "x2", scope: !109, file: !1, line: 176, type: !91)
!109 = distinct !DILexicalBlock(scope: !105, file: !1, line: 175, column: 39)
!110 = !DILocation(line: 176, column: 20, scope: !109)
!111 = !DILocation(line: 176, column: 25, scope: !109)
!112 = !DILocation(line: 176, column: 27, scope: !109)
!113 = !DILocation(line: 176, column: 26, scope: !109)
!114 = !DILocation(line: 177, column: 21, scope: !109)
!115 = !DILocation(line: 177, column: 32, scope: !109)
!116 = !DILocation(line: 177, column: 34, scope: !109)
!117 = !DILocation(line: 177, column: 30, scope: !109)
!118 = !DILocation(line: 177, column: 23, scope: !109)
!119 = !DILocation(line: 177, column: 7, scope: !109)
!120 = !DILocation(line: 177, column: 15, scope: !109)
!121 = !DILocation(line: 177, column: 19, scope: !109)
!122 = !DILocation(line: 178, column: 26, scope: !109)
!123 = !DILocation(line: 178, column: 28, scope: !109)
!124 = !DILocation(line: 178, column: 27, scope: !109)
!125 = !DILocation(line: 178, column: 31, scope: !109)
!126 = !DILocation(line: 178, column: 30, scope: !109)
!127 = !DILocation(line: 178, column: 34, scope: !109)
!128 = !DILocation(line: 178, column: 21, scope: !109)
!129 = !DILocation(line: 178, column: 7, scope: !109)
!130 = !DILocation(line: 178, column: 15, scope: !109)
!131 = !DILocation(line: 178, column: 19, scope: !109)
!132 = !DILocation(line: 179, column: 7, scope: !109)
!133 = !DILocalVariable(name: "sgn_result", scope: !134, file: !1, line: 182, type: !49)
!134 = distinct !DILexicalBlock(scope: !105, file: !1, line: 181, column: 10)
!135 = !DILocation(line: 182, column: 14, scope: !134)
!136 = !DILocation(line: 182, column: 27, scope: !134)
!137 = !DILocalVariable(name: "y", scope: !134, file: !1, line: 183, type: !49)
!138 = !DILocation(line: 183, column: 14, scope: !134)
!139 = !DILocation(line: 183, column: 24, scope: !134)
!140 = !DILocation(line: 183, column: 29, scope: !134)
!141 = !DILocation(line: 183, column: 18, scope: !134)
!142 = !DILocalVariable(name: "octant", scope: !134, file: !1, line: 184, type: !51)
!143 = !DILocation(line: 184, column: 11, scope: !134)
!144 = !DILocation(line: 184, column: 20, scope: !134)
!145 = !DILocation(line: 184, column: 42, scope: !134)
!146 = !DILocation(line: 184, column: 36, scope: !134)
!147 = !DILocation(line: 184, column: 30, scope: !148)
!148 = !DILexicalBlockFile(scope: !134, file: !1, discriminator: 1)
!149 = !DILocation(line: 184, column: 24, scope: !150)
!150 = !DILexicalBlockFile(scope: !134, file: !1, discriminator: 2)
!151 = !DILocation(line: 184, column: 22, scope: !134)
!152 = !DILocalVariable(name: "stat_cs", scope: !134, file: !1, line: 185, type: !51)
!153 = !DILocation(line: 185, column: 11, scope: !134)
!154 = !DILocalVariable(name: "z", scope: !134, file: !1, line: 186, type: !49)
!155 = !DILocation(line: 186, column: 14, scope: !134)
!156 = !DILocation(line: 188, column: 10, scope: !157)
!157 = distinct !DILexicalBlock(scope: !134, file: !1, line: 188, column: 10)
!158 = !DILocation(line: 188, column: 10, scope: !134)
!159 = !DILocation(line: 189, column: 16, scope: !160)
!160 = distinct !DILexicalBlock(scope: !157, file: !1, line: 188, column: 30)
!161 = !DILocation(line: 190, column: 16, scope: !160)
!162 = !DILocation(line: 191, column: 11, scope: !160)
!163 = !DILocation(line: 192, column: 7, scope: !160)
!164 = !DILocation(line: 194, column: 10, scope: !165)
!165 = distinct !DILexicalBlock(scope: !134, file: !1, line: 194, column: 10)
!166 = !DILocation(line: 194, column: 17, scope: !165)
!167 = !DILocation(line: 194, column: 10, scope: !134)
!168 = !DILocation(line: 195, column: 16, scope: !169)
!169 = distinct !DILexicalBlock(scope: !165, file: !1, line: 194, column: 22)
!170 = !DILocation(line: 196, column: 23, scope: !169)
!171 = !DILocation(line: 196, column: 22, scope: !169)
!172 = !DILocation(line: 196, column: 20, scope: !169)
!173 = !DILocation(line: 197, column: 7, scope: !169)
!174 = !DILocation(line: 199, column: 13, scope: !134)
!175 = !DILocation(line: 199, column: 21, scope: !134)
!176 = !DILocation(line: 199, column: 23, scope: !134)
!177 = !DILocation(line: 199, column: 19, scope: !134)
!178 = !DILocation(line: 199, column: 31, scope: !134)
!179 = !DILocation(line: 199, column: 33, scope: !134)
!180 = !DILocation(line: 199, column: 29, scope: !134)
!181 = !DILocation(line: 199, column: 41, scope: !134)
!182 = !DILocation(line: 199, column: 43, scope: !134)
!183 = !DILocation(line: 199, column: 39, scope: !134)
!184 = !DILocation(line: 199, column: 9, scope: !134)
!185 = !DILocation(line: 201, column: 10, scope: !186)
!186 = distinct !DILexicalBlock(scope: !134, file: !1, line: 201, column: 10)
!187 = !DILocation(line: 201, column: 17, scope: !186)
!188 = !DILocation(line: 201, column: 10, scope: !134)
!189 = !DILocalVariable(name: "sin_cs_result", scope: !190, file: !1, line: 202, type: !77)
!190 = distinct !DILexicalBlock(scope: !186, file: !1, line: 201, column: 23)
!191 = !DILocation(line: 202, column: 23, scope: !190)
!192 = !DILocalVariable(name: "t", scope: !190, file: !1, line: 203, type: !91)
!193 = !DILocation(line: 203, column: 22, scope: !190)
!194 = !DILocation(line: 203, column: 35, scope: !190)
!195 = !DILocation(line: 203, column: 30, scope: !190)
!196 = !DILocation(line: 203, column: 29, scope: !190)
!197 = !DILocation(line: 203, column: 37, scope: !190)
!198 = !DILocation(line: 203, column: 43, scope: !190)
!199 = !DILocation(line: 204, column: 40, scope: !190)
!200 = !DILocation(line: 204, column: 19, scope: !190)
!201 = !DILocation(line: 204, column: 17, scope: !190)
!202 = !DILocation(line: 205, column: 23, scope: !190)
!203 = !DILocation(line: 205, column: 34, scope: !190)
!204 = !DILocation(line: 205, column: 36, scope: !190)
!205 = !DILocation(line: 205, column: 35, scope: !190)
!206 = !DILocation(line: 205, column: 54, scope: !190)
!207 = !DILocation(line: 205, column: 38, scope: !190)
!208 = !DILocation(line: 205, column: 32, scope: !190)
!209 = !DILocation(line: 205, column: 25, scope: !190)
!210 = !DILocation(line: 205, column: 9, scope: !190)
!211 = !DILocation(line: 205, column: 17, scope: !190)
!212 = !DILocation(line: 205, column: 21, scope: !190)
!213 = !DILocation(line: 206, column: 7, scope: !190)
!214 = !DILocalVariable(name: "cos_cs_result", scope: !215, file: !1, line: 208, type: !77)
!215 = distinct !DILexicalBlock(scope: !186, file: !1, line: 207, column: 12)
!216 = !DILocation(line: 208, column: 23, scope: !215)
!217 = !DILocalVariable(name: "t", scope: !215, file: !1, line: 209, type: !91)
!218 = !DILocation(line: 209, column: 22, scope: !215)
!219 = !DILocation(line: 209, column: 35, scope: !215)
!220 = !DILocation(line: 209, column: 30, scope: !215)
!221 = !DILocation(line: 209, column: 29, scope: !215)
!222 = !DILocation(line: 209, column: 37, scope: !215)
!223 = !DILocation(line: 209, column: 43, scope: !215)
!224 = !DILocation(line: 210, column: 40, scope: !215)
!225 = !DILocation(line: 210, column: 19, scope: !215)
!226 = !DILocation(line: 210, column: 17, scope: !215)
!227 = !DILocation(line: 211, column: 33, scope: !215)
!228 = !DILocation(line: 211, column: 32, scope: !215)
!229 = !DILocation(line: 211, column: 35, scope: !215)
!230 = !DILocation(line: 211, column: 34, scope: !215)
!231 = !DILocation(line: 211, column: 46, scope: !215)
!232 = !DILocation(line: 211, column: 48, scope: !215)
!233 = !DILocation(line: 211, column: 47, scope: !215)
!234 = !DILocation(line: 211, column: 66, scope: !215)
!235 = !DILocation(line: 211, column: 50, scope: !215)
!236 = !DILocation(line: 211, column: 44, scope: !215)
!237 = !DILocation(line: 211, column: 37, scope: !215)
!238 = !DILocation(line: 211, column: 27, scope: !215)
!239 = !DILocation(line: 211, column: 9, scope: !215)
!240 = !DILocation(line: 211, column: 17, scope: !215)
!241 = !DILocation(line: 211, column: 21, scope: !215)
!242 = !DILocation(line: 214, column: 22, scope: !134)
!243 = !DILocation(line: 214, column: 7, scope: !134)
!244 = !DILocation(line: 214, column: 15, scope: !134)
!245 = !DILocation(line: 214, column: 19, scope: !134)
!246 = !DILocation(line: 216, column: 10, scope: !247)
!247 = distinct !DILexicalBlock(scope: !134, file: !1, line: 216, column: 10)
!248 = !DILocation(line: 216, column: 16, scope: !247)
!249 = !DILocation(line: 216, column: 10, scope: !134)
!250 = !DILocation(line: 217, column: 28, scope: !251)
!251 = distinct !DILexicalBlock(scope: !247, file: !1, line: 216, column: 39)
!252 = !DILocation(line: 217, column: 36, scope: !251)
!253 = !DILocation(line: 217, column: 23, scope: !251)
!254 = !DILocation(line: 217, column: 9, scope: !251)
!255 = !DILocation(line: 217, column: 17, scope: !251)
!256 = !DILocation(line: 217, column: 21, scope: !251)
!257 = !DILocation(line: 218, column: 7, scope: !251)
!258 = !DILocation(line: 219, column: 15, scope: !259)
!259 = distinct !DILexicalBlock(scope: !247, file: !1, line: 219, column: 15)
!260 = !DILocation(line: 219, column: 21, scope: !259)
!261 = !DILocation(line: 219, column: 15, scope: !247)
!262 = !DILocation(line: 220, column: 29, scope: !263)
!263 = distinct !DILexicalBlock(scope: !259, file: !1, line: 219, column: 51)
!264 = !DILocation(line: 220, column: 27, scope: !263)
!265 = !DILocation(line: 220, column: 35, scope: !263)
!266 = !DILocation(line: 220, column: 60, scope: !263)
!267 = !DILocation(line: 220, column: 68, scope: !263)
!268 = !DILocation(line: 220, column: 55, scope: !263)
!269 = !DILocation(line: 220, column: 53, scope: !263)
!270 = !DILocation(line: 220, column: 9, scope: !263)
!271 = !DILocation(line: 220, column: 17, scope: !263)
!272 = !DILocation(line: 220, column: 21, scope: !263)
!273 = !DILocation(line: 221, column: 7, scope: !263)
!274 = !DILocation(line: 222, column: 15, scope: !275)
!275 = distinct !DILexicalBlock(scope: !259, file: !1, line: 222, column: 15)
!276 = !DILocation(line: 222, column: 21, scope: !275)
!277 = !DILocation(line: 222, column: 15, scope: !259)
!278 = !DILocation(line: 223, column: 57, scope: !279)
!279 = distinct !DILexicalBlock(scope: !275, file: !1, line: 222, column: 49)
!280 = !DILocation(line: 223, column: 65, scope: !279)
!281 = !DILocation(line: 223, column: 52, scope: !279)
!282 = !DILocation(line: 223, column: 50, scope: !279)
!283 = !DILocation(line: 223, column: 9, scope: !279)
!284 = !DILocation(line: 223, column: 17, scope: !279)
!285 = !DILocation(line: 223, column: 21, scope: !279)
!286 = !DILocation(line: 224, column: 7, scope: !279)
!287 = !DILocation(line: 226, column: 52, scope: !288)
!288 = distinct !DILexicalBlock(scope: !275, file: !1, line: 225, column: 12)
!289 = !DILocation(line: 226, column: 60, scope: !288)
!290 = !DILocation(line: 226, column: 47, scope: !288)
!291 = !DILocation(line: 226, column: 45, scope: !288)
!292 = !DILocation(line: 226, column: 9, scope: !288)
!293 = !DILocation(line: 226, column: 17, scope: !288)
!294 = !DILocation(line: 226, column: 21, scope: !288)
!295 = !DILocation(line: 229, column: 14, scope: !134)
!296 = !DILocation(line: 229, column: 7, scope: !134)
!297 = !DILocation(line: 232, column: 1, scope: !73)
!298 = distinct !DISubprogram(name: "cheb_eval_e", scope: !299, file: !299, line: 3, type: !300, isLocal: true, isDefinition: true, scopeLine: 6, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !83)
!299 = !DIFile(filename: "./cheb_eval.c", directory: "/fpcc/gsl-2.5/specfunc")
!300 = !DISubroutineType(types: !301)
!301 = !{!51, !302, !91, !76}
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64, align: 64)
!303 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!304 = !DILocalVariable(name: "cs", arg: 1, scope: !298, file: !299, line: 3, type: !302)
!305 = !DILocation(line: 3, column: 33, scope: !298)
!306 = !DILocalVariable(name: "x", arg: 2, scope: !298, file: !299, line: 4, type: !91)
!307 = !DILocation(line: 4, column: 26, scope: !298)
!308 = !DILocalVariable(name: "result", arg: 3, scope: !298, file: !299, line: 5, type: !76)
!309 = !DILocation(line: 5, column: 29, scope: !298)
!310 = !DILocalVariable(name: "j", scope: !298, file: !299, line: 7, type: !51)
!311 = !DILocation(line: 7, column: 7, scope: !298)
!312 = !DILocalVariable(name: "d", scope: !298, file: !299, line: 8, type: !49)
!313 = !DILocation(line: 8, column: 10, scope: !298)
!314 = !DILocalVariable(name: "dd", scope: !298, file: !299, line: 9, type: !49)
!315 = !DILocation(line: 9, column: 10, scope: !298)
!316 = !DILocalVariable(name: "y", scope: !298, file: !299, line: 11, type: !49)
!317 = !DILocation(line: 11, column: 10, scope: !298)
!318 = !DILocation(line: 11, column: 20, scope: !298)
!319 = !DILocation(line: 11, column: 19, scope: !298)
!320 = !DILocation(line: 11, column: 24, scope: !298)
!321 = !DILocation(line: 11, column: 28, scope: !298)
!322 = !DILocation(line: 11, column: 22, scope: !298)
!323 = !DILocation(line: 11, column: 32, scope: !298)
!324 = !DILocation(line: 11, column: 36, scope: !298)
!325 = !DILocation(line: 11, column: 30, scope: !298)
!326 = !DILocation(line: 11, column: 42, scope: !298)
!327 = !DILocation(line: 11, column: 46, scope: !298)
!328 = !DILocation(line: 11, column: 50, scope: !298)
!329 = !DILocation(line: 11, column: 54, scope: !298)
!330 = !DILocation(line: 11, column: 48, scope: !298)
!331 = !DILocation(line: 11, column: 39, scope: !298)
!332 = !DILocalVariable(name: "y2", scope: !298, file: !299, line: 12, type: !49)
!333 = !DILocation(line: 12, column: 10, scope: !298)
!334 = !DILocation(line: 12, column: 21, scope: !298)
!335 = !DILocation(line: 12, column: 19, scope: !298)
!336 = !DILocalVariable(name: "e", scope: !298, file: !299, line: 14, type: !49)
!337 = !DILocation(line: 14, column: 10, scope: !298)
!338 = !DILocation(line: 16, column: 11, scope: !339)
!339 = distinct !DILexicalBlock(scope: !298, file: !299, line: 16, column: 3)
!340 = !DILocation(line: 16, column: 15, scope: !339)
!341 = !DILocation(line: 16, column: 9, scope: !339)
!342 = !DILocation(line: 16, column: 7, scope: !339)
!343 = !DILocation(line: 16, column: 22, scope: !344)
!344 = !DILexicalBlockFile(scope: !345, file: !299, discriminator: 1)
!345 = distinct !DILexicalBlock(scope: !339, file: !299, line: 16, column: 3)
!346 = !DILocation(line: 16, column: 23, scope: !344)
!347 = !DILocation(line: 16, column: 3, scope: !344)
!348 = !DILocalVariable(name: "temp", scope: !349, file: !299, line: 17, type: !49)
!349 = distinct !DILexicalBlock(scope: !345, file: !299, line: 16, column: 33)
!350 = !DILocation(line: 17, column: 12, scope: !349)
!351 = !DILocation(line: 17, column: 19, scope: !349)
!352 = !DILocation(line: 18, column: 9, scope: !349)
!353 = !DILocation(line: 18, column: 12, scope: !349)
!354 = !DILocation(line: 18, column: 11, scope: !349)
!355 = !DILocation(line: 18, column: 16, scope: !349)
!356 = !DILocation(line: 18, column: 14, scope: !349)
!357 = !DILocation(line: 18, column: 27, scope: !349)
!358 = !DILocation(line: 18, column: 21, scope: !349)
!359 = !DILocation(line: 18, column: 25, scope: !349)
!360 = !DILocation(line: 18, column: 19, scope: !349)
!361 = !DILocation(line: 18, column: 7, scope: !349)
!362 = !DILocation(line: 19, column: 15, scope: !349)
!363 = !DILocation(line: 19, column: 18, scope: !349)
!364 = !DILocation(line: 19, column: 17, scope: !349)
!365 = !DILocation(line: 19, column: 10, scope: !349)
!366 = !DILocation(line: 19, column: 31, scope: !349)
!367 = !DILocation(line: 19, column: 26, scope: !368)
!368 = !DILexicalBlockFile(scope: !349, file: !299, discriminator: 1)
!369 = !DILocation(line: 19, column: 24, scope: !349)
!370 = !DILocation(line: 19, column: 48, scope: !349)
!371 = !DILocation(line: 19, column: 42, scope: !349)
!372 = !DILocation(line: 19, column: 46, scope: !349)
!373 = !DILocation(line: 19, column: 37, scope: !374)
!374 = !DILexicalBlockFile(scope: !349, file: !299, discriminator: 2)
!375 = !DILocation(line: 19, column: 35, scope: !349)
!376 = !DILocation(line: 19, column: 7, scope: !349)
!377 = !DILocation(line: 20, column: 10, scope: !349)
!378 = !DILocation(line: 20, column: 8, scope: !349)
!379 = !DILocation(line: 21, column: 3, scope: !349)
!380 = !DILocation(line: 16, column: 29, scope: !381)
!381 = !DILexicalBlockFile(scope: !345, file: !299, discriminator: 2)
!382 = !DILocation(line: 16, column: 3, scope: !381)
!383 = distinct !{!383, !384}
!384 = !DILocation(line: 16, column: 3, scope: !298)
!385 = !DILocalVariable(name: "temp", scope: !386, file: !299, line: 24, type: !49)
!386 = distinct !DILexicalBlock(scope: !298, file: !299, line: 23, column: 3)
!387 = !DILocation(line: 24, column: 12, scope: !386)
!388 = !DILocation(line: 24, column: 19, scope: !386)
!389 = !DILocation(line: 25, column: 9, scope: !386)
!390 = !DILocation(line: 25, column: 11, scope: !386)
!391 = !DILocation(line: 25, column: 10, scope: !386)
!392 = !DILocation(line: 25, column: 15, scope: !386)
!393 = !DILocation(line: 25, column: 13, scope: !386)
!394 = !DILocation(line: 25, column: 26, scope: !386)
!395 = !DILocation(line: 25, column: 30, scope: !386)
!396 = !DILocation(line: 25, column: 24, scope: !386)
!397 = !DILocation(line: 25, column: 18, scope: !386)
!398 = !DILocation(line: 25, column: 7, scope: !386)
!399 = !DILocation(line: 26, column: 15, scope: !386)
!400 = !DILocation(line: 26, column: 17, scope: !386)
!401 = !DILocation(line: 26, column: 16, scope: !386)
!402 = !DILocation(line: 26, column: 10, scope: !386)
!403 = !DILocation(line: 26, column: 30, scope: !386)
!404 = !DILocation(line: 26, column: 25, scope: !405)
!405 = !DILexicalBlockFile(scope: !386, file: !299, discriminator: 1)
!406 = !DILocation(line: 26, column: 23, scope: !386)
!407 = !DILocation(line: 26, column: 47, scope: !386)
!408 = !DILocation(line: 26, column: 51, scope: !386)
!409 = !DILocation(line: 26, column: 42, scope: !410)
!410 = !DILexicalBlockFile(scope: !386, file: !299, discriminator: 2)
!411 = !DILocation(line: 26, column: 40, scope: !386)
!412 = !DILocation(line: 26, column: 34, scope: !386)
!413 = !DILocation(line: 26, column: 7, scope: !386)
!414 = !DILocation(line: 29, column: 17, scope: !298)
!415 = !DILocation(line: 29, column: 3, scope: !298)
!416 = !DILocation(line: 29, column: 11, scope: !298)
!417 = !DILocation(line: 29, column: 15, scope: !298)
!418 = !DILocation(line: 30, column: 35, scope: !298)
!419 = !DILocation(line: 30, column: 33, scope: !298)
!420 = !DILocation(line: 30, column: 50, scope: !298)
!421 = !DILocation(line: 30, column: 54, scope: !298)
!422 = !DILocation(line: 30, column: 44, scope: !298)
!423 = !DILocation(line: 30, column: 48, scope: !298)
!424 = !DILocation(line: 30, column: 39, scope: !298)
!425 = !DILocation(line: 30, column: 37, scope: !298)
!426 = !DILocation(line: 30, column: 3, scope: !298)
!427 = !DILocation(line: 30, column: 11, scope: !298)
!428 = !DILocation(line: 30, column: 15, scope: !298)
!429 = !DILocation(line: 32, column: 3, scope: !298)
!430 = distinct !DISubprogram(name: "gsl_sf_cos_e", scope: !1, file: !1, line: 236, type: !74, isLocal: false, isDefinition: true, scopeLine: 237, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !83)
!431 = !DILocalVariable(name: "x", arg: 1, scope: !430, file: !1, line: 236, type: !49)
!432 = !DILocation(line: 236, column: 21, scope: !430)
!433 = !DILocalVariable(name: "result", arg: 2, scope: !430, file: !1, line: 236, type: !76)
!434 = !DILocation(line: 236, column: 40, scope: !430)
!435 = !DILocalVariable(name: "P1", scope: !436, file: !1, line: 241, type: !91)
!436 = distinct !DILexicalBlock(scope: !430, file: !1, line: 240, column: 3)
!437 = !DILocation(line: 241, column: 18, scope: !436)
!438 = !DILocalVariable(name: "P2", scope: !436, file: !1, line: 242, type: !91)
!439 = !DILocation(line: 242, column: 18, scope: !436)
!440 = !DILocalVariable(name: "P3", scope: !436, file: !1, line: 243, type: !91)
!441 = !DILocation(line: 243, column: 18, scope: !436)
!442 = !DILocalVariable(name: "abs_x", scope: !436, file: !1, line: 245, type: !91)
!443 = !DILocation(line: 245, column: 18, scope: !436)
!444 = !DILocation(line: 245, column: 31, scope: !436)
!445 = !DILocation(line: 245, column: 26, scope: !436)
!446 = !DILocation(line: 247, column: 8, scope: !447)
!447 = distinct !DILexicalBlock(scope: !436, file: !1, line: 247, column: 8)
!448 = !DILocation(line: 247, column: 14, scope: !447)
!449 = !DILocation(line: 247, column: 8, scope: !436)
!450 = !DILocalVariable(name: "x2", scope: !451, file: !1, line: 248, type: !91)
!451 = distinct !DILexicalBlock(scope: !447, file: !1, line: 247, column: 39)
!452 = !DILocation(line: 248, column: 20, scope: !451)
!453 = !DILocation(line: 248, column: 25, scope: !451)
!454 = !DILocation(line: 248, column: 27, scope: !451)
!455 = !DILocation(line: 248, column: 26, scope: !451)
!456 = !DILocation(line: 249, column: 31, scope: !451)
!457 = !DILocation(line: 249, column: 30, scope: !451)
!458 = !DILocation(line: 249, column: 25, scope: !451)
!459 = !DILocation(line: 249, column: 7, scope: !451)
!460 = !DILocation(line: 249, column: 15, scope: !451)
!461 = !DILocation(line: 249, column: 19, scope: !451)
!462 = !DILocation(line: 250, column: 26, scope: !451)
!463 = !DILocation(line: 250, column: 29, scope: !451)
!464 = !DILocation(line: 250, column: 28, scope: !451)
!465 = !DILocation(line: 250, column: 31, scope: !451)
!466 = !DILocation(line: 250, column: 21, scope: !451)
!467 = !DILocation(line: 250, column: 7, scope: !451)
!468 = !DILocation(line: 250, column: 15, scope: !451)
!469 = !DILocation(line: 250, column: 19, scope: !451)
!470 = !DILocation(line: 251, column: 7, scope: !451)
!471 = !DILocalVariable(name: "sgn_result", scope: !472, file: !1, line: 254, type: !49)
!472 = distinct !DILexicalBlock(scope: !447, file: !1, line: 253, column: 10)
!473 = !DILocation(line: 254, column: 14, scope: !472)
!474 = !DILocalVariable(name: "y", scope: !472, file: !1, line: 255, type: !49)
!475 = !DILocation(line: 255, column: 14, scope: !472)
!476 = !DILocation(line: 255, column: 24, scope: !472)
!477 = !DILocation(line: 255, column: 29, scope: !472)
!478 = !DILocation(line: 255, column: 18, scope: !472)
!479 = !DILocalVariable(name: "octant", scope: !472, file: !1, line: 256, type: !51)
!480 = !DILocation(line: 256, column: 11, scope: !472)
!481 = !DILocation(line: 256, column: 20, scope: !472)
!482 = !DILocation(line: 256, column: 42, scope: !472)
!483 = !DILocation(line: 256, column: 36, scope: !472)
!484 = !DILocation(line: 256, column: 30, scope: !485)
!485 = !DILexicalBlockFile(scope: !472, file: !1, discriminator: 1)
!486 = !DILocation(line: 256, column: 24, scope: !487)
!487 = !DILexicalBlockFile(scope: !472, file: !1, discriminator: 2)
!488 = !DILocation(line: 256, column: 22, scope: !472)
!489 = !DILocalVariable(name: "stat_cs", scope: !472, file: !1, line: 257, type: !51)
!490 = !DILocation(line: 257, column: 11, scope: !472)
!491 = !DILocalVariable(name: "z", scope: !472, file: !1, line: 258, type: !49)
!492 = !DILocation(line: 258, column: 14, scope: !472)
!493 = !DILocation(line: 260, column: 10, scope: !494)
!494 = distinct !DILexicalBlock(scope: !472, file: !1, line: 260, column: 10)
!495 = !DILocation(line: 260, column: 10, scope: !472)
!496 = !DILocation(line: 261, column: 16, scope: !497)
!497 = distinct !DILexicalBlock(scope: !494, file: !1, line: 260, column: 30)
!498 = !DILocation(line: 262, column: 16, scope: !497)
!499 = !DILocation(line: 263, column: 11, scope: !497)
!500 = !DILocation(line: 264, column: 7, scope: !497)
!501 = !DILocation(line: 266, column: 10, scope: !502)
!502 = distinct !DILexicalBlock(scope: !472, file: !1, line: 266, column: 10)
!503 = !DILocation(line: 266, column: 17, scope: !502)
!504 = !DILocation(line: 266, column: 10, scope: !472)
!505 = !DILocation(line: 267, column: 16, scope: !506)
!506 = distinct !DILexicalBlock(scope: !502, file: !1, line: 266, column: 22)
!507 = !DILocation(line: 268, column: 23, scope: !506)
!508 = !DILocation(line: 268, column: 22, scope: !506)
!509 = !DILocation(line: 268, column: 20, scope: !506)
!510 = !DILocation(line: 269, column: 7, scope: !506)
!511 = !DILocation(line: 271, column: 10, scope: !512)
!512 = distinct !DILexicalBlock(scope: !472, file: !1, line: 271, column: 10)
!513 = !DILocation(line: 271, column: 17, scope: !512)
!514 = !DILocation(line: 271, column: 10, scope: !472)
!515 = !DILocation(line: 272, column: 23, scope: !516)
!516 = distinct !DILexicalBlock(scope: !512, file: !1, line: 271, column: 22)
!517 = !DILocation(line: 272, column: 22, scope: !516)
!518 = !DILocation(line: 272, column: 20, scope: !516)
!519 = !DILocation(line: 273, column: 7, scope: !516)
!520 = !DILocation(line: 275, column: 13, scope: !472)
!521 = !DILocation(line: 275, column: 21, scope: !472)
!522 = !DILocation(line: 275, column: 23, scope: !472)
!523 = !DILocation(line: 275, column: 19, scope: !472)
!524 = !DILocation(line: 275, column: 31, scope: !472)
!525 = !DILocation(line: 275, column: 33, scope: !472)
!526 = !DILocation(line: 275, column: 29, scope: !472)
!527 = !DILocation(line: 275, column: 41, scope: !472)
!528 = !DILocation(line: 275, column: 43, scope: !472)
!529 = !DILocation(line: 275, column: 39, scope: !472)
!530 = !DILocation(line: 275, column: 9, scope: !472)
!531 = !DILocation(line: 277, column: 10, scope: !532)
!532 = distinct !DILexicalBlock(scope: !472, file: !1, line: 277, column: 10)
!533 = !DILocation(line: 277, column: 17, scope: !532)
!534 = !DILocation(line: 277, column: 10, scope: !472)
!535 = !DILocalVariable(name: "cos_cs_result", scope: !536, file: !1, line: 278, type: !77)
!536 = distinct !DILexicalBlock(scope: !532, file: !1, line: 277, column: 23)
!537 = !DILocation(line: 278, column: 23, scope: !536)
!538 = !DILocalVariable(name: "t", scope: !536, file: !1, line: 279, type: !91)
!539 = !DILocation(line: 279, column: 22, scope: !536)
!540 = !DILocation(line: 279, column: 35, scope: !536)
!541 = !DILocation(line: 279, column: 30, scope: !536)
!542 = !DILocation(line: 279, column: 29, scope: !536)
!543 = !DILocation(line: 279, column: 37, scope: !536)
!544 = !DILocation(line: 279, column: 43, scope: !536)
!545 = !DILocation(line: 280, column: 40, scope: !536)
!546 = !DILocation(line: 280, column: 19, scope: !536)
!547 = !DILocation(line: 280, column: 17, scope: !536)
!548 = !DILocation(line: 281, column: 33, scope: !536)
!549 = !DILocation(line: 281, column: 32, scope: !536)
!550 = !DILocation(line: 281, column: 35, scope: !536)
!551 = !DILocation(line: 281, column: 34, scope: !536)
!552 = !DILocation(line: 281, column: 46, scope: !536)
!553 = !DILocation(line: 281, column: 48, scope: !536)
!554 = !DILocation(line: 281, column: 47, scope: !536)
!555 = !DILocation(line: 281, column: 66, scope: !536)
!556 = !DILocation(line: 281, column: 50, scope: !536)
!557 = !DILocation(line: 281, column: 44, scope: !536)
!558 = !DILocation(line: 281, column: 37, scope: !536)
!559 = !DILocation(line: 281, column: 27, scope: !536)
!560 = !DILocation(line: 281, column: 9, scope: !536)
!561 = !DILocation(line: 281, column: 17, scope: !536)
!562 = !DILocation(line: 281, column: 21, scope: !536)
!563 = !DILocation(line: 282, column: 7, scope: !536)
!564 = !DILocalVariable(name: "sin_cs_result", scope: !565, file: !1, line: 284, type: !77)
!565 = distinct !DILexicalBlock(scope: !532, file: !1, line: 283, column: 12)
!566 = !DILocation(line: 284, column: 23, scope: !565)
!567 = !DILocalVariable(name: "t", scope: !565, file: !1, line: 285, type: !91)
!568 = !DILocation(line: 285, column: 22, scope: !565)
!569 = !DILocation(line: 285, column: 35, scope: !565)
!570 = !DILocation(line: 285, column: 30, scope: !565)
!571 = !DILocation(line: 285, column: 29, scope: !565)
!572 = !DILocation(line: 285, column: 37, scope: !565)
!573 = !DILocation(line: 285, column: 43, scope: !565)
!574 = !DILocation(line: 286, column: 40, scope: !565)
!575 = !DILocation(line: 286, column: 19, scope: !565)
!576 = !DILocation(line: 286, column: 17, scope: !565)
!577 = !DILocation(line: 287, column: 23, scope: !565)
!578 = !DILocation(line: 287, column: 34, scope: !565)
!579 = !DILocation(line: 287, column: 36, scope: !565)
!580 = !DILocation(line: 287, column: 35, scope: !565)
!581 = !DILocation(line: 287, column: 54, scope: !565)
!582 = !DILocation(line: 287, column: 38, scope: !565)
!583 = !DILocation(line: 287, column: 32, scope: !565)
!584 = !DILocation(line: 287, column: 25, scope: !565)
!585 = !DILocation(line: 287, column: 9, scope: !565)
!586 = !DILocation(line: 287, column: 17, scope: !565)
!587 = !DILocation(line: 287, column: 21, scope: !565)
!588 = !DILocation(line: 290, column: 22, scope: !472)
!589 = !DILocation(line: 290, column: 7, scope: !472)
!590 = !DILocation(line: 290, column: 15, scope: !472)
!591 = !DILocation(line: 290, column: 19, scope: !472)
!592 = !DILocation(line: 292, column: 10, scope: !593)
!593 = distinct !DILexicalBlock(scope: !472, file: !1, line: 292, column: 10)
!594 = !DILocation(line: 292, column: 16, scope: !593)
!595 = !DILocation(line: 292, column: 10, scope: !472)
!596 = !DILocation(line: 293, column: 28, scope: !597)
!597 = distinct !DILexicalBlock(scope: !593, file: !1, line: 292, column: 39)
!598 = !DILocation(line: 293, column: 36, scope: !597)
!599 = !DILocation(line: 293, column: 23, scope: !597)
!600 = !DILocation(line: 293, column: 9, scope: !597)
!601 = !DILocation(line: 293, column: 17, scope: !597)
!602 = !DILocation(line: 293, column: 21, scope: !597)
!603 = !DILocation(line: 294, column: 7, scope: !597)
!604 = !DILocation(line: 295, column: 15, scope: !605)
!605 = distinct !DILexicalBlock(scope: !593, file: !1, line: 295, column: 15)
!606 = !DILocation(line: 295, column: 21, scope: !605)
!607 = !DILocation(line: 295, column: 15, scope: !593)
!608 = !DILocation(line: 296, column: 29, scope: !609)
!609 = distinct !DILexicalBlock(scope: !605, file: !1, line: 295, column: 51)
!610 = !DILocation(line: 296, column: 27, scope: !609)
!611 = !DILocation(line: 296, column: 35, scope: !609)
!612 = !DILocation(line: 296, column: 60, scope: !609)
!613 = !DILocation(line: 296, column: 68, scope: !609)
!614 = !DILocation(line: 296, column: 55, scope: !609)
!615 = !DILocation(line: 296, column: 53, scope: !609)
!616 = !DILocation(line: 296, column: 9, scope: !609)
!617 = !DILocation(line: 296, column: 17, scope: !609)
!618 = !DILocation(line: 296, column: 21, scope: !609)
!619 = !DILocation(line: 297, column: 7, scope: !609)
!620 = !DILocation(line: 298, column: 15, scope: !621)
!621 = distinct !DILexicalBlock(scope: !605, file: !1, line: 298, column: 15)
!622 = !DILocation(line: 298, column: 21, scope: !621)
!623 = !DILocation(line: 298, column: 15, scope: !605)
!624 = !DILocation(line: 299, column: 57, scope: !625)
!625 = distinct !DILexicalBlock(scope: !621, file: !1, line: 298, column: 49)
!626 = !DILocation(line: 299, column: 65, scope: !625)
!627 = !DILocation(line: 299, column: 52, scope: !625)
!628 = !DILocation(line: 299, column: 50, scope: !625)
!629 = !DILocation(line: 299, column: 9, scope: !625)
!630 = !DILocation(line: 299, column: 17, scope: !625)
!631 = !DILocation(line: 299, column: 21, scope: !625)
!632 = !DILocation(line: 300, column: 7, scope: !625)
!633 = !DILocation(line: 302, column: 52, scope: !634)
!634 = distinct !DILexicalBlock(scope: !621, file: !1, line: 301, column: 12)
!635 = !DILocation(line: 302, column: 60, scope: !634)
!636 = !DILocation(line: 302, column: 47, scope: !634)
!637 = !DILocation(line: 302, column: 45, scope: !634)
!638 = !DILocation(line: 302, column: 9, scope: !634)
!639 = !DILocation(line: 302, column: 17, scope: !634)
!640 = !DILocation(line: 302, column: 21, scope: !634)
!641 = !DILocation(line: 305, column: 14, scope: !472)
!642 = !DILocation(line: 305, column: 7, scope: !472)
!643 = !DILocation(line: 308, column: 1, scope: !430)
!644 = distinct !DISubprogram(name: "gsl_sf_hypot_e", scope: !1, file: !1, line: 312, type: !645, isLocal: false, isDefinition: true, scopeLine: 313, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !83)
!645 = !DISubroutineType(types: !646)
!646 = !{!51, !91, !91, !76}
!647 = !DILocalVariable(name: "x", arg: 1, scope: !644, file: !1, line: 312, type: !91)
!648 = !DILocation(line: 312, column: 29, scope: !644)
!649 = !DILocalVariable(name: "y", arg: 2, scope: !644, file: !1, line: 312, type: !91)
!650 = !DILocation(line: 312, column: 45, scope: !644)
!651 = !DILocalVariable(name: "result", arg: 3, scope: !644, file: !1, line: 312, type: !76)
!652 = !DILocation(line: 312, column: 64, scope: !644)
!653 = !DILocation(line: 316, column: 6, scope: !654)
!654 = distinct !DILexicalBlock(scope: !644, file: !1, line: 316, column: 6)
!655 = !DILocation(line: 316, column: 8, scope: !654)
!656 = !DILocation(line: 316, column: 15, scope: !654)
!657 = !DILocation(line: 316, column: 18, scope: !658)
!658 = !DILexicalBlockFile(scope: !654, file: !1, discriminator: 1)
!659 = !DILocation(line: 316, column: 20, scope: !658)
!660 = !DILocation(line: 316, column: 6, scope: !658)
!661 = !DILocation(line: 317, column: 5, scope: !662)
!662 = distinct !DILexicalBlock(scope: !654, file: !1, line: 316, column: 28)
!663 = !DILocation(line: 317, column: 13, scope: !662)
!664 = !DILocation(line: 317, column: 17, scope: !662)
!665 = !DILocation(line: 318, column: 5, scope: !662)
!666 = !DILocation(line: 318, column: 13, scope: !662)
!667 = !DILocation(line: 318, column: 17, scope: !662)
!668 = !DILocation(line: 319, column: 5, scope: !662)
!669 = !DILocalVariable(name: "a", scope: !670, file: !1, line: 322, type: !91)
!670 = distinct !DILexicalBlock(scope: !654, file: !1, line: 321, column: 8)
!671 = !DILocation(line: 322, column: 18, scope: !670)
!672 = !DILocation(line: 322, column: 27, scope: !670)
!673 = !DILocation(line: 322, column: 22, scope: !670)
!674 = !DILocalVariable(name: "b", scope: !670, file: !1, line: 323, type: !91)
!675 = !DILocation(line: 323, column: 18, scope: !670)
!676 = !DILocation(line: 323, column: 27, scope: !670)
!677 = !DILocation(line: 323, column: 22, scope: !670)
!678 = !DILocalVariable(name: "min", scope: !670, file: !1, line: 324, type: !91)
!679 = !DILocation(line: 324, column: 18, scope: !670)
!680 = !DILocation(line: 324, column: 36, scope: !670)
!681 = !DILocation(line: 324, column: 38, scope: !670)
!682 = !DILocation(line: 324, column: 24, scope: !670)
!683 = !DILocalVariable(name: "max", scope: !670, file: !1, line: 325, type: !91)
!684 = !DILocation(line: 325, column: 18, scope: !670)
!685 = !DILocation(line: 325, column: 36, scope: !670)
!686 = !DILocation(line: 325, column: 38, scope: !670)
!687 = !DILocation(line: 325, column: 24, scope: !670)
!688 = !DILocalVariable(name: "rat", scope: !670, file: !1, line: 326, type: !91)
!689 = !DILocation(line: 326, column: 18, scope: !670)
!690 = !DILocation(line: 326, column: 24, scope: !670)
!691 = !DILocation(line: 326, column: 28, scope: !670)
!692 = !DILocation(line: 326, column: 27, scope: !670)
!693 = !DILocalVariable(name: "root_term", scope: !670, file: !1, line: 327, type: !91)
!694 = !DILocation(line: 327, column: 18, scope: !670)
!695 = !DILocation(line: 327, column: 41, scope: !670)
!696 = !DILocation(line: 327, column: 45, scope: !670)
!697 = !DILocation(line: 327, column: 44, scope: !670)
!698 = !DILocation(line: 327, column: 39, scope: !670)
!699 = !DILocation(line: 327, column: 30, scope: !670)
!700 = !DILocation(line: 329, column: 8, scope: !701)
!701 = distinct !DILexicalBlock(scope: !670, file: !1, line: 329, column: 8)
!702 = !DILocation(line: 329, column: 26, scope: !701)
!703 = !DILocation(line: 329, column: 25, scope: !701)
!704 = !DILocation(line: 329, column: 12, scope: !701)
!705 = !DILocation(line: 329, column: 8, scope: !670)
!706 = !DILocation(line: 330, column: 21, scope: !707)
!707 = distinct !DILexicalBlock(scope: !701, file: !1, line: 329, column: 37)
!708 = !DILocation(line: 330, column: 27, scope: !707)
!709 = !DILocation(line: 330, column: 25, scope: !707)
!710 = !DILocation(line: 330, column: 7, scope: !707)
!711 = !DILocation(line: 330, column: 15, scope: !707)
!712 = !DILocation(line: 330, column: 19, scope: !707)
!713 = !DILocation(line: 331, column: 50, scope: !707)
!714 = !DILocation(line: 331, column: 58, scope: !707)
!715 = !DILocation(line: 331, column: 45, scope: !707)
!716 = !DILocation(line: 331, column: 43, scope: !707)
!717 = !DILocation(line: 331, column: 7, scope: !707)
!718 = !DILocation(line: 331, column: 15, scope: !707)
!719 = !DILocation(line: 331, column: 19, scope: !707)
!720 = !DILocation(line: 332, column: 7, scope: !707)
!721 = !DILocation(line: 335, column: 7, scope: !722)
!722 = distinct !DILexicalBlock(scope: !701, file: !1, line: 334, column: 10)
!723 = distinct !{!723, !721}
!724 = !DILocation(line: 335, column: 7, scope: !725)
!725 = !DILexicalBlockFile(scope: !726, file: !1, discriminator: 1)
!726 = distinct !DILexicalBlock(scope: !722, file: !1, line: 335, column: 7)
!727 = distinct !{!727, !728}
!728 = !DILocation(line: 335, column: 7, scope: !726)
!729 = !DILocation(line: 335, column: 7, scope: !730)
!730 = !DILexicalBlockFile(scope: !731, file: !1, discriminator: 2)
!731 = distinct !DILexicalBlock(scope: !726, file: !1, line: 335, column: 7)
!732 = !DILocation(line: 335, column: 7, scope: !733)
!733 = !DILexicalBlockFile(scope: !726, file: !1, discriminator: 3)
!734 = !DILocation(line: 338, column: 1, scope: !644)
!735 = distinct !DISubprogram(name: "gsl_sf_complex_sin_e", scope: !1, file: !1, line: 342, type: !736, isLocal: false, isDefinition: true, scopeLine: 344, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !83)
!736 = !DISubroutineType(types: !737)
!737 = !{!51, !91, !91, !76, !76}
!738 = !DILocalVariable(name: "zr", arg: 1, scope: !735, file: !1, line: 342, type: !91)
!739 = !DILocation(line: 342, column: 35, scope: !735)
!740 = !DILocalVariable(name: "zi", arg: 2, scope: !735, file: !1, line: 342, type: !91)
!741 = !DILocation(line: 342, column: 52, scope: !735)
!742 = !DILocalVariable(name: "szr", arg: 3, scope: !735, file: !1, line: 343, type: !76)
!743 = !DILocation(line: 343, column: 41, scope: !735)
!744 = !DILocalVariable(name: "szi", arg: 4, scope: !735, file: !1, line: 343, type: !76)
!745 = !DILocation(line: 343, column: 62, scope: !735)
!746 = !DILocation(line: 348, column: 11, scope: !747)
!747 = distinct !DILexicalBlock(scope: !735, file: !1, line: 348, column: 6)
!748 = !DILocation(line: 348, column: 6, scope: !747)
!749 = !DILocation(line: 348, column: 15, scope: !747)
!750 = !DILocation(line: 348, column: 6, scope: !735)
!751 = !DILocalVariable(name: "ch_m1", scope: !752, file: !1, line: 349, type: !49)
!752 = distinct !DILexicalBlock(scope: !747, file: !1, line: 348, column: 22)
!753 = !DILocation(line: 349, column: 12, scope: !752)
!754 = !DILocalVariable(name: "sh", scope: !752, file: !1, line: 349, type: !49)
!755 = !DILocation(line: 349, column: 19, scope: !752)
!756 = !DILocation(line: 350, column: 17, scope: !752)
!757 = !DILocation(line: 350, column: 5, scope: !752)
!758 = !DILocation(line: 351, column: 20, scope: !752)
!759 = !DILocation(line: 351, column: 5, scope: !752)
!760 = !DILocation(line: 352, column: 20, scope: !752)
!761 = !DILocation(line: 352, column: 16, scope: !752)
!762 = !DILocation(line: 352, column: 25, scope: !752)
!763 = !DILocation(line: 352, column: 31, scope: !752)
!764 = !DILocation(line: 352, column: 23, scope: !752)
!765 = !DILocation(line: 352, column: 5, scope: !752)
!766 = !DILocation(line: 352, column: 10, scope: !752)
!767 = !DILocation(line: 352, column: 14, scope: !752)
!768 = !DILocation(line: 353, column: 20, scope: !752)
!769 = !DILocation(line: 353, column: 16, scope: !752)
!770 = !DILocation(line: 353, column: 24, scope: !752)
!771 = !DILocation(line: 353, column: 23, scope: !752)
!772 = !DILocation(line: 353, column: 5, scope: !752)
!773 = !DILocation(line: 353, column: 10, scope: !752)
!774 = !DILocation(line: 353, column: 14, scope: !752)
!775 = !DILocation(line: 354, column: 45, scope: !752)
!776 = !DILocation(line: 354, column: 50, scope: !752)
!777 = !DILocation(line: 354, column: 40, scope: !752)
!778 = !DILocation(line: 354, column: 38, scope: !752)
!779 = !DILocation(line: 354, column: 5, scope: !752)
!780 = !DILocation(line: 354, column: 10, scope: !752)
!781 = !DILocation(line: 354, column: 14, scope: !752)
!782 = !DILocation(line: 355, column: 45, scope: !752)
!783 = !DILocation(line: 355, column: 50, scope: !752)
!784 = !DILocation(line: 355, column: 40, scope: !752)
!785 = !DILocation(line: 355, column: 38, scope: !752)
!786 = !DILocation(line: 355, column: 5, scope: !752)
!787 = !DILocation(line: 355, column: 10, scope: !752)
!788 = !DILocation(line: 355, column: 14, scope: !752)
!789 = !DILocation(line: 356, column: 5, scope: !752)
!790 = !DILocation(line: 358, column: 16, scope: !791)
!791 = distinct !DILexicalBlock(scope: !747, file: !1, line: 358, column: 11)
!792 = !DILocation(line: 358, column: 11, scope: !791)
!793 = !DILocation(line: 358, column: 20, scope: !791)
!794 = !DILocation(line: 358, column: 11, scope: !747)
!795 = !DILocalVariable(name: "ex", scope: !796, file: !1, line: 359, type: !49)
!796 = distinct !DILexicalBlock(scope: !791, file: !1, line: 358, column: 39)
!797 = !DILocation(line: 359, column: 12, scope: !796)
!798 = !DILocation(line: 359, column: 21, scope: !796)
!799 = !DILocation(line: 359, column: 17, scope: !796)
!800 = !DILocalVariable(name: "ch", scope: !796, file: !1, line: 360, type: !49)
!801 = !DILocation(line: 360, column: 12, scope: !796)
!802 = !DILocation(line: 360, column: 22, scope: !796)
!803 = !DILocation(line: 360, column: 29, scope: !796)
!804 = !DILocation(line: 360, column: 28, scope: !796)
!805 = !DILocation(line: 360, column: 24, scope: !796)
!806 = !DILocation(line: 360, column: 20, scope: !796)
!807 = !DILocalVariable(name: "sh", scope: !796, file: !1, line: 361, type: !49)
!808 = !DILocation(line: 361, column: 12, scope: !796)
!809 = !DILocation(line: 361, column: 22, scope: !796)
!810 = !DILocation(line: 361, column: 29, scope: !796)
!811 = !DILocation(line: 361, column: 28, scope: !796)
!812 = !DILocation(line: 361, column: 24, scope: !796)
!813 = !DILocation(line: 361, column: 20, scope: !796)
!814 = !DILocation(line: 362, column: 20, scope: !796)
!815 = !DILocation(line: 362, column: 16, scope: !796)
!816 = !DILocation(line: 362, column: 24, scope: !796)
!817 = !DILocation(line: 362, column: 23, scope: !796)
!818 = !DILocation(line: 362, column: 5, scope: !796)
!819 = !DILocation(line: 362, column: 10, scope: !796)
!820 = !DILocation(line: 362, column: 14, scope: !796)
!821 = !DILocation(line: 363, column: 20, scope: !796)
!822 = !DILocation(line: 363, column: 16, scope: !796)
!823 = !DILocation(line: 363, column: 24, scope: !796)
!824 = !DILocation(line: 363, column: 23, scope: !796)
!825 = !DILocation(line: 363, column: 5, scope: !796)
!826 = !DILocation(line: 363, column: 10, scope: !796)
!827 = !DILocation(line: 363, column: 14, scope: !796)
!828 = !DILocation(line: 364, column: 45, scope: !796)
!829 = !DILocation(line: 364, column: 50, scope: !796)
!830 = !DILocation(line: 364, column: 40, scope: !796)
!831 = !DILocation(line: 364, column: 38, scope: !796)
!832 = !DILocation(line: 364, column: 5, scope: !796)
!833 = !DILocation(line: 364, column: 10, scope: !796)
!834 = !DILocation(line: 364, column: 14, scope: !796)
!835 = !DILocation(line: 365, column: 45, scope: !796)
!836 = !DILocation(line: 365, column: 50, scope: !796)
!837 = !DILocation(line: 365, column: 40, scope: !796)
!838 = !DILocation(line: 365, column: 38, scope: !796)
!839 = !DILocation(line: 365, column: 5, scope: !796)
!840 = !DILocation(line: 365, column: 10, scope: !796)
!841 = !DILocation(line: 365, column: 14, scope: !796)
!842 = !DILocation(line: 366, column: 5, scope: !796)
!843 = !DILocation(line: 369, column: 5, scope: !844)
!844 = distinct !DILexicalBlock(scope: !791, file: !1, line: 368, column: 8)
!845 = distinct !{!845, !843}
!846 = !DILocation(line: 369, column: 5, scope: !847)
!847 = !DILexicalBlockFile(scope: !848, file: !1, discriminator: 1)
!848 = distinct !DILexicalBlock(scope: !844, file: !1, line: 369, column: 5)
!849 = distinct !{!849, !850}
!850 = !DILocation(line: 369, column: 5, scope: !848)
!851 = !DILocation(line: 369, column: 5, scope: !852)
!852 = !DILexicalBlockFile(scope: !853, file: !1, discriminator: 2)
!853 = distinct !DILexicalBlock(scope: !848, file: !1, line: 369, column: 5)
!854 = !DILocation(line: 369, column: 5, scope: !855)
!855 = !DILexicalBlockFile(scope: !848, file: !1, discriminator: 3)
!856 = !DILocation(line: 371, column: 1, scope: !735)
!857 = distinct !DISubprogram(name: "sinh_series", scope: !1, file: !1, line: 39, type: !858, isLocal: true, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !83)
!858 = !DISubroutineType(types: !859)
!859 = !{!51, !91, !48}
!860 = !DILocalVariable(name: "x", arg: 1, scope: !857, file: !1, line: 39, type: !91)
!861 = !DILocation(line: 39, column: 26, scope: !857)
!862 = !DILocalVariable(name: "result", arg: 2, scope: !857, file: !1, line: 39, type: !48)
!863 = !DILocation(line: 39, column: 38, scope: !857)
!864 = !DILocalVariable(name: "y", scope: !857, file: !1, line: 41, type: !91)
!865 = !DILocation(line: 41, column: 16, scope: !857)
!866 = !DILocation(line: 41, column: 20, scope: !857)
!867 = !DILocation(line: 41, column: 22, scope: !857)
!868 = !DILocation(line: 41, column: 21, scope: !857)
!869 = !DILocalVariable(name: "c0", scope: !857, file: !1, line: 42, type: !91)
!870 = !DILocation(line: 42, column: 16, scope: !857)
!871 = !DILocalVariable(name: "c1", scope: !857, file: !1, line: 43, type: !91)
!872 = !DILocation(line: 43, column: 16, scope: !857)
!873 = !DILocalVariable(name: "c2", scope: !857, file: !1, line: 44, type: !91)
!874 = !DILocation(line: 44, column: 16, scope: !857)
!875 = !DILocalVariable(name: "c3", scope: !857, file: !1, line: 45, type: !91)
!876 = !DILocation(line: 45, column: 16, scope: !857)
!877 = !DILocalVariable(name: "c4", scope: !857, file: !1, line: 46, type: !91)
!878 = !DILocation(line: 46, column: 16, scope: !857)
!879 = !DILocalVariable(name: "c5", scope: !857, file: !1, line: 47, type: !91)
!880 = !DILocation(line: 47, column: 16, scope: !857)
!881 = !DILocalVariable(name: "c6", scope: !857, file: !1, line: 48, type: !91)
!882 = !DILocation(line: 48, column: 16, scope: !857)
!883 = !DILocalVariable(name: "c7", scope: !857, file: !1, line: 49, type: !91)
!884 = !DILocation(line: 49, column: 16, scope: !857)
!885 = !DILocation(line: 50, column: 13, scope: !857)
!886 = !DILocation(line: 50, column: 22, scope: !857)
!887 = !DILocation(line: 50, column: 28, scope: !857)
!888 = !DILocation(line: 50, column: 34, scope: !857)
!889 = !DILocation(line: 50, column: 40, scope: !857)
!890 = !DILocation(line: 50, column: 46, scope: !857)
!891 = !DILocation(line: 50, column: 52, scope: !857)
!892 = !DILocation(line: 50, column: 58, scope: !857)
!893 = !DILocation(line: 50, column: 64, scope: !857)
!894 = !DILocation(line: 50, column: 65, scope: !857)
!895 = !DILocation(line: 50, column: 63, scope: !857)
!896 = !DILocation(line: 50, column: 59, scope: !857)
!897 = !DILocation(line: 50, column: 57, scope: !857)
!898 = !DILocation(line: 50, column: 53, scope: !857)
!899 = !DILocation(line: 50, column: 51, scope: !857)
!900 = !DILocation(line: 50, column: 47, scope: !857)
!901 = !DILocation(line: 50, column: 45, scope: !857)
!902 = !DILocation(line: 50, column: 41, scope: !857)
!903 = !DILocation(line: 50, column: 39, scope: !857)
!904 = !DILocation(line: 50, column: 35, scope: !857)
!905 = !DILocation(line: 50, column: 33, scope: !857)
!906 = !DILocation(line: 50, column: 29, scope: !857)
!907 = !DILocation(line: 50, column: 27, scope: !857)
!908 = !DILocation(line: 50, column: 23, scope: !857)
!909 = !DILocation(line: 50, column: 20, scope: !857)
!910 = !DILocation(line: 50, column: 14, scope: !857)
!911 = !DILocation(line: 50, column: 4, scope: !857)
!912 = !DILocation(line: 50, column: 11, scope: !857)
!913 = !DILocation(line: 51, column: 3, scope: !857)
!914 = distinct !DISubprogram(name: "cosh_m1_series", scope: !1, file: !1, line: 61, type: !858, isLocal: true, isDefinition: true, scopeLine: 62, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !83)
!915 = !DILocalVariable(name: "x", arg: 1, scope: !914, file: !1, line: 61, type: !91)
!916 = !DILocation(line: 61, column: 29, scope: !914)
!917 = !DILocalVariable(name: "result", arg: 2, scope: !914, file: !1, line: 61, type: !48)
!918 = !DILocation(line: 61, column: 41, scope: !914)
!919 = !DILocalVariable(name: "y", scope: !914, file: !1, line: 63, type: !91)
!920 = !DILocation(line: 63, column: 16, scope: !914)
!921 = !DILocation(line: 63, column: 20, scope: !914)
!922 = !DILocation(line: 63, column: 22, scope: !914)
!923 = !DILocation(line: 63, column: 21, scope: !914)
!924 = !DILocalVariable(name: "c0", scope: !914, file: !1, line: 64, type: !91)
!925 = !DILocation(line: 64, column: 16, scope: !914)
!926 = !DILocalVariable(name: "c1", scope: !914, file: !1, line: 65, type: !91)
!927 = !DILocation(line: 65, column: 16, scope: !914)
!928 = !DILocalVariable(name: "c2", scope: !914, file: !1, line: 66, type: !91)
!929 = !DILocation(line: 66, column: 16, scope: !914)
!930 = !DILocalVariable(name: "c3", scope: !914, file: !1, line: 67, type: !91)
!931 = !DILocation(line: 67, column: 16, scope: !914)
!932 = !DILocalVariable(name: "c4", scope: !914, file: !1, line: 68, type: !91)
!933 = !DILocation(line: 68, column: 16, scope: !914)
!934 = !DILocalVariable(name: "c5", scope: !914, file: !1, line: 69, type: !91)
!935 = !DILocation(line: 69, column: 16, scope: !914)
!936 = !DILocalVariable(name: "c6", scope: !914, file: !1, line: 70, type: !91)
!937 = !DILocation(line: 70, column: 16, scope: !914)
!938 = !DILocalVariable(name: "c7", scope: !914, file: !1, line: 71, type: !91)
!939 = !DILocation(line: 71, column: 16, scope: !914)
!940 = !DILocalVariable(name: "c8", scope: !914, file: !1, line: 72, type: !91)
!941 = !DILocation(line: 72, column: 16, scope: !914)
!942 = !DILocation(line: 73, column: 13, scope: !914)
!943 = !DILocation(line: 73, column: 19, scope: !914)
!944 = !DILocation(line: 73, column: 25, scope: !914)
!945 = !DILocation(line: 73, column: 31, scope: !914)
!946 = !DILocation(line: 73, column: 37, scope: !914)
!947 = !DILocation(line: 73, column: 43, scope: !914)
!948 = !DILocation(line: 73, column: 49, scope: !914)
!949 = !DILocation(line: 73, column: 55, scope: !914)
!950 = !DILocation(line: 73, column: 61, scope: !914)
!951 = !DILocation(line: 73, column: 62, scope: !914)
!952 = !DILocation(line: 73, column: 60, scope: !914)
!953 = !DILocation(line: 73, column: 56, scope: !914)
!954 = !DILocation(line: 73, column: 54, scope: !914)
!955 = !DILocation(line: 73, column: 50, scope: !914)
!956 = !DILocation(line: 73, column: 48, scope: !914)
!957 = !DILocation(line: 73, column: 44, scope: !914)
!958 = !DILocation(line: 73, column: 42, scope: !914)
!959 = !DILocation(line: 73, column: 38, scope: !914)
!960 = !DILocation(line: 73, column: 36, scope: !914)
!961 = !DILocation(line: 73, column: 32, scope: !914)
!962 = !DILocation(line: 73, column: 30, scope: !914)
!963 = !DILocation(line: 73, column: 26, scope: !914)
!964 = !DILocation(line: 73, column: 24, scope: !914)
!965 = !DILocation(line: 73, column: 20, scope: !914)
!966 = !DILocation(line: 73, column: 18, scope: !914)
!967 = !DILocation(line: 73, column: 14, scope: !914)
!968 = !DILocation(line: 73, column: 4, scope: !914)
!969 = !DILocation(line: 73, column: 11, scope: !914)
!970 = !DILocation(line: 74, column: 3, scope: !914)
!971 = distinct !DISubprogram(name: "gsl_sf_complex_cos_e", scope: !1, file: !1, line: 375, type: !736, isLocal: false, isDefinition: true, scopeLine: 377, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !83)
!972 = !DILocalVariable(name: "zr", arg: 1, scope: !971, file: !1, line: 375, type: !91)
!973 = !DILocation(line: 375, column: 35, scope: !971)
!974 = !DILocalVariable(name: "zi", arg: 2, scope: !971, file: !1, line: 375, type: !91)
!975 = !DILocation(line: 375, column: 52, scope: !971)
!976 = !DILocalVariable(name: "czr", arg: 3, scope: !971, file: !1, line: 376, type: !76)
!977 = !DILocation(line: 376, column: 41, scope: !971)
!978 = !DILocalVariable(name: "czi", arg: 4, scope: !971, file: !1, line: 376, type: !76)
!979 = !DILocation(line: 376, column: 62, scope: !971)
!980 = !DILocation(line: 381, column: 11, scope: !981)
!981 = distinct !DILexicalBlock(scope: !971, file: !1, line: 381, column: 6)
!982 = !DILocation(line: 381, column: 6, scope: !981)
!983 = !DILocation(line: 381, column: 15, scope: !981)
!984 = !DILocation(line: 381, column: 6, scope: !971)
!985 = !DILocalVariable(name: "ch_m1", scope: !986, file: !1, line: 382, type: !49)
!986 = distinct !DILexicalBlock(scope: !981, file: !1, line: 381, column: 22)
!987 = !DILocation(line: 382, column: 12, scope: !986)
!988 = !DILocalVariable(name: "sh", scope: !986, file: !1, line: 382, type: !49)
!989 = !DILocation(line: 382, column: 19, scope: !986)
!990 = !DILocation(line: 383, column: 17, scope: !986)
!991 = !DILocation(line: 383, column: 5, scope: !986)
!992 = !DILocation(line: 384, column: 20, scope: !986)
!993 = !DILocation(line: 384, column: 5, scope: !986)
!994 = !DILocation(line: 385, column: 21, scope: !986)
!995 = !DILocation(line: 385, column: 17, scope: !986)
!996 = !DILocation(line: 385, column: 26, scope: !986)
!997 = !DILocation(line: 385, column: 32, scope: !986)
!998 = !DILocation(line: 385, column: 24, scope: !986)
!999 = !DILocation(line: 385, column: 5, scope: !986)
!1000 = !DILocation(line: 385, column: 10, scope: !986)
!1001 = !DILocation(line: 385, column: 14, scope: !986)
!1002 = !DILocation(line: 386, column: 21, scope: !986)
!1003 = !DILocation(line: 386, column: 17, scope: !986)
!1004 = !DILocation(line: 386, column: 16, scope: !986)
!1005 = !DILocation(line: 386, column: 25, scope: !986)
!1006 = !DILocation(line: 386, column: 24, scope: !986)
!1007 = !DILocation(line: 386, column: 5, scope: !986)
!1008 = !DILocation(line: 386, column: 10, scope: !986)
!1009 = !DILocation(line: 386, column: 14, scope: !986)
!1010 = !DILocation(line: 387, column: 45, scope: !986)
!1011 = !DILocation(line: 387, column: 50, scope: !986)
!1012 = !DILocation(line: 387, column: 40, scope: !986)
!1013 = !DILocation(line: 387, column: 38, scope: !986)
!1014 = !DILocation(line: 387, column: 5, scope: !986)
!1015 = !DILocation(line: 387, column: 10, scope: !986)
!1016 = !DILocation(line: 387, column: 14, scope: !986)
!1017 = !DILocation(line: 388, column: 45, scope: !986)
!1018 = !DILocation(line: 388, column: 50, scope: !986)
!1019 = !DILocation(line: 388, column: 40, scope: !986)
!1020 = !DILocation(line: 388, column: 38, scope: !986)
!1021 = !DILocation(line: 388, column: 5, scope: !986)
!1022 = !DILocation(line: 388, column: 10, scope: !986)
!1023 = !DILocation(line: 388, column: 14, scope: !986)
!1024 = !DILocation(line: 389, column: 5, scope: !986)
!1025 = !DILocation(line: 391, column: 16, scope: !1026)
!1026 = distinct !DILexicalBlock(scope: !981, file: !1, line: 391, column: 11)
!1027 = !DILocation(line: 391, column: 11, scope: !1026)
!1028 = !DILocation(line: 391, column: 20, scope: !1026)
!1029 = !DILocation(line: 391, column: 11, scope: !981)
!1030 = !DILocalVariable(name: "ex", scope: !1031, file: !1, line: 392, type: !49)
!1031 = distinct !DILexicalBlock(scope: !1026, file: !1, line: 391, column: 39)
!1032 = !DILocation(line: 392, column: 12, scope: !1031)
!1033 = !DILocation(line: 392, column: 21, scope: !1031)
!1034 = !DILocation(line: 392, column: 17, scope: !1031)
!1035 = !DILocalVariable(name: "ch", scope: !1031, file: !1, line: 393, type: !49)
!1036 = !DILocation(line: 393, column: 12, scope: !1031)
!1037 = !DILocation(line: 393, column: 22, scope: !1031)
!1038 = !DILocation(line: 393, column: 29, scope: !1031)
!1039 = !DILocation(line: 393, column: 28, scope: !1031)
!1040 = !DILocation(line: 393, column: 24, scope: !1031)
!1041 = !DILocation(line: 393, column: 20, scope: !1031)
!1042 = !DILocalVariable(name: "sh", scope: !1031, file: !1, line: 394, type: !49)
!1043 = !DILocation(line: 394, column: 12, scope: !1031)
!1044 = !DILocation(line: 394, column: 22, scope: !1031)
!1045 = !DILocation(line: 394, column: 29, scope: !1031)
!1046 = !DILocation(line: 394, column: 28, scope: !1031)
!1047 = !DILocation(line: 394, column: 24, scope: !1031)
!1048 = !DILocation(line: 394, column: 20, scope: !1031)
!1049 = !DILocation(line: 395, column: 21, scope: !1031)
!1050 = !DILocation(line: 395, column: 17, scope: !1031)
!1051 = !DILocation(line: 395, column: 25, scope: !1031)
!1052 = !DILocation(line: 395, column: 24, scope: !1031)
!1053 = !DILocation(line: 395, column: 5, scope: !1031)
!1054 = !DILocation(line: 395, column: 10, scope: !1031)
!1055 = !DILocation(line: 395, column: 14, scope: !1031)
!1056 = !DILocation(line: 396, column: 21, scope: !1031)
!1057 = !DILocation(line: 396, column: 17, scope: !1031)
!1058 = !DILocation(line: 396, column: 16, scope: !1031)
!1059 = !DILocation(line: 396, column: 25, scope: !1031)
!1060 = !DILocation(line: 396, column: 24, scope: !1031)
!1061 = !DILocation(line: 396, column: 5, scope: !1031)
!1062 = !DILocation(line: 396, column: 10, scope: !1031)
!1063 = !DILocation(line: 396, column: 14, scope: !1031)
!1064 = !DILocation(line: 397, column: 45, scope: !1031)
!1065 = !DILocation(line: 397, column: 50, scope: !1031)
!1066 = !DILocation(line: 397, column: 40, scope: !1031)
!1067 = !DILocation(line: 397, column: 38, scope: !1031)
!1068 = !DILocation(line: 397, column: 5, scope: !1031)
!1069 = !DILocation(line: 397, column: 10, scope: !1031)
!1070 = !DILocation(line: 397, column: 14, scope: !1031)
!1071 = !DILocation(line: 398, column: 45, scope: !1031)
!1072 = !DILocation(line: 398, column: 50, scope: !1031)
!1073 = !DILocation(line: 398, column: 40, scope: !1031)
!1074 = !DILocation(line: 398, column: 38, scope: !1031)
!1075 = !DILocation(line: 398, column: 5, scope: !1031)
!1076 = !DILocation(line: 398, column: 10, scope: !1031)
!1077 = !DILocation(line: 398, column: 14, scope: !1031)
!1078 = !DILocation(line: 399, column: 5, scope: !1031)
!1079 = !DILocation(line: 402, column: 5, scope: !1080)
!1080 = distinct !DILexicalBlock(scope: !1026, file: !1, line: 401, column: 8)
!1081 = distinct !{!1081, !1079}
!1082 = !DILocation(line: 402, column: 5, scope: !1083)
!1083 = !DILexicalBlockFile(scope: !1084, file: !1, discriminator: 1)
!1084 = distinct !DILexicalBlock(scope: !1080, file: !1, line: 402, column: 5)
!1085 = distinct !{!1085, !1086}
!1086 = !DILocation(line: 402, column: 5, scope: !1084)
!1087 = !DILocation(line: 402, column: 5, scope: !1088)
!1088 = !DILexicalBlockFile(scope: !1089, file: !1, discriminator: 2)
!1089 = distinct !DILexicalBlock(scope: !1084, file: !1, line: 402, column: 5)
!1090 = !DILocation(line: 402, column: 5, scope: !1091)
!1091 = !DILexicalBlockFile(scope: !1084, file: !1, discriminator: 3)
!1092 = !DILocation(line: 404, column: 1, scope: !971)
!1093 = distinct !DISubprogram(name: "gsl_sf_complex_logsin_e", scope: !1, file: !1, line: 408, type: !736, isLocal: false, isDefinition: true, scopeLine: 410, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !83)
!1094 = !DILocalVariable(name: "zr", arg: 1, scope: !1093, file: !1, line: 408, type: !91)
!1095 = !DILocation(line: 408, column: 38, scope: !1093)
!1096 = !DILocalVariable(name: "zi", arg: 2, scope: !1093, file: !1, line: 408, type: !91)
!1097 = !DILocation(line: 408, column: 55, scope: !1093)
!1098 = !DILocalVariable(name: "lszr", arg: 3, scope: !1093, file: !1, line: 409, type: !76)
!1099 = !DILocation(line: 409, column: 44, scope: !1093)
!1100 = !DILocalVariable(name: "lszi", arg: 4, scope: !1093, file: !1, line: 409, type: !76)
!1101 = !DILocation(line: 409, column: 66, scope: !1093)
!1102 = !DILocation(line: 414, column: 6, scope: !1103)
!1103 = distinct !DILexicalBlock(scope: !1093, file: !1, line: 414, column: 6)
!1104 = !DILocation(line: 414, column: 9, scope: !1103)
!1105 = !DILocation(line: 414, column: 6, scope: !1093)
!1106 = !DILocation(line: 415, column: 26, scope: !1107)
!1107 = distinct !DILexicalBlock(scope: !1103, file: !1, line: 414, column: 17)
!1108 = !DILocation(line: 415, column: 24, scope: !1107)
!1109 = !DILocation(line: 415, column: 5, scope: !1107)
!1110 = !DILocation(line: 415, column: 11, scope: !1107)
!1111 = !DILocation(line: 415, column: 15, scope: !1107)
!1112 = !DILocation(line: 416, column: 29, scope: !1107)
!1113 = !DILocation(line: 416, column: 27, scope: !1107)
!1114 = !DILocation(line: 416, column: 5, scope: !1107)
!1115 = !DILocation(line: 416, column: 11, scope: !1107)
!1116 = !DILocation(line: 416, column: 15, scope: !1107)
!1117 = !DILocation(line: 417, column: 46, scope: !1107)
!1118 = !DILocation(line: 417, column: 52, scope: !1107)
!1119 = !DILocation(line: 417, column: 41, scope: !1107)
!1120 = !DILocation(line: 417, column: 39, scope: !1107)
!1121 = !DILocation(line: 417, column: 5, scope: !1107)
!1122 = !DILocation(line: 417, column: 11, scope: !1107)
!1123 = !DILocation(line: 417, column: 15, scope: !1107)
!1124 = !DILocation(line: 418, column: 46, scope: !1107)
!1125 = !DILocation(line: 418, column: 52, scope: !1107)
!1126 = !DILocation(line: 418, column: 41, scope: !1107)
!1127 = !DILocation(line: 418, column: 39, scope: !1107)
!1128 = !DILocation(line: 418, column: 5, scope: !1107)
!1129 = !DILocation(line: 418, column: 11, scope: !1107)
!1130 = !DILocation(line: 418, column: 15, scope: !1107)
!1131 = !DILocation(line: 419, column: 3, scope: !1107)
!1132 = !DILocation(line: 420, column: 11, scope: !1133)
!1133 = distinct !DILexicalBlock(scope: !1103, file: !1, line: 420, column: 11)
!1134 = !DILocation(line: 420, column: 14, scope: !1133)
!1135 = !DILocation(line: 420, column: 11, scope: !1103)
!1136 = !DILocation(line: 421, column: 26, scope: !1137)
!1137 = distinct !DILexicalBlock(scope: !1133, file: !1, line: 420, column: 23)
!1138 = !DILocation(line: 421, column: 24, scope: !1137)
!1139 = !DILocation(line: 421, column: 5, scope: !1137)
!1140 = !DILocation(line: 421, column: 11, scope: !1137)
!1141 = !DILocation(line: 421, column: 15, scope: !1137)
!1142 = !DILocation(line: 422, column: 29, scope: !1137)
!1143 = !DILocation(line: 422, column: 27, scope: !1137)
!1144 = !DILocation(line: 422, column: 5, scope: !1137)
!1145 = !DILocation(line: 422, column: 11, scope: !1137)
!1146 = !DILocation(line: 422, column: 15, scope: !1137)
!1147 = !DILocation(line: 423, column: 46, scope: !1137)
!1148 = !DILocation(line: 423, column: 52, scope: !1137)
!1149 = !DILocation(line: 423, column: 41, scope: !1137)
!1150 = !DILocation(line: 423, column: 39, scope: !1137)
!1151 = !DILocation(line: 423, column: 5, scope: !1137)
!1152 = !DILocation(line: 423, column: 11, scope: !1137)
!1153 = !DILocation(line: 423, column: 15, scope: !1137)
!1154 = !DILocation(line: 424, column: 46, scope: !1137)
!1155 = !DILocation(line: 424, column: 52, scope: !1137)
!1156 = !DILocation(line: 424, column: 41, scope: !1137)
!1157 = !DILocation(line: 424, column: 39, scope: !1137)
!1158 = !DILocation(line: 424, column: 5, scope: !1137)
!1159 = !DILocation(line: 424, column: 11, scope: !1137)
!1160 = !DILocation(line: 424, column: 15, scope: !1137)
!1161 = !DILocation(line: 425, column: 3, scope: !1137)
!1162 = !DILocalVariable(name: "sin_r", scope: !1163, file: !1, line: 427, type: !77)
!1163 = distinct !DILexicalBlock(scope: !1133, file: !1, line: 426, column: 8)
!1164 = !DILocation(line: 427, column: 19, scope: !1163)
!1165 = !DILocalVariable(name: "sin_i", scope: !1163, file: !1, line: 427, type: !77)
!1166 = !DILocation(line: 427, column: 26, scope: !1163)
!1167 = !DILocalVariable(name: "status", scope: !1163, file: !1, line: 428, type: !51)
!1168 = !DILocation(line: 428, column: 9, scope: !1163)
!1169 = !DILocation(line: 429, column: 26, scope: !1163)
!1170 = !DILocation(line: 429, column: 30, scope: !1163)
!1171 = !DILocation(line: 429, column: 5, scope: !1163)
!1172 = !DILocation(line: 430, column: 41, scope: !1163)
!1173 = !DILocation(line: 430, column: 52, scope: !1163)
!1174 = !DILocation(line: 430, column: 57, scope: !1163)
!1175 = !DILocation(line: 430, column: 63, scope: !1163)
!1176 = !DILocation(line: 430, column: 14, scope: !1163)
!1177 = !DILocation(line: 430, column: 12, scope: !1163)
!1178 = !DILocation(line: 431, column: 8, scope: !1179)
!1179 = distinct !DILexicalBlock(scope: !1163, file: !1, line: 431, column: 8)
!1180 = !DILocation(line: 431, column: 15, scope: !1179)
!1181 = !DILocation(line: 431, column: 8, scope: !1163)
!1182 = !DILocation(line: 432, column: 7, scope: !1183)
!1183 = distinct !DILexicalBlock(scope: !1179, file: !1, line: 431, column: 28)
!1184 = distinct !{!1184, !1182}
!1185 = !DILocation(line: 432, column: 7, scope: !1186)
!1186 = !DILexicalBlockFile(scope: !1187, file: !1, discriminator: 1)
!1187 = distinct !DILexicalBlock(scope: !1183, file: !1, line: 432, column: 7)
!1188 = distinct !{!1188, !1189}
!1189 = !DILocation(line: 432, column: 7, scope: !1187)
!1190 = !DILocation(line: 432, column: 7, scope: !1191)
!1191 = !DILexicalBlockFile(scope: !1192, file: !1, discriminator: 2)
!1192 = distinct !DILexicalBlock(scope: !1187, file: !1, line: 432, column: 7)
!1193 = !DILocation(line: 432, column: 7, scope: !1194)
!1194 = !DILexicalBlockFile(scope: !1187, file: !1, discriminator: 3)
!1195 = !DILocation(line: 433, column: 5, scope: !1183)
!1196 = !DILocation(line: 435, column: 41, scope: !1093)
!1197 = !DILocation(line: 435, column: 47, scope: !1093)
!1198 = !DILocation(line: 435, column: 10, scope: !1093)
!1199 = !DILocation(line: 435, column: 3, scope: !1093)
!1200 = !DILocation(line: 436, column: 1, scope: !1093)
!1201 = distinct !DISubprogram(name: "gsl_sf_angle_restrict_symm_e", scope: !1, file: !1, line: 602, type: !1202, isLocal: false, isDefinition: true, scopeLine: 603, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !83)
!1202 = !DISubroutineType(types: !1203)
!1203 = !{!51, !48}
!1204 = !DILocalVariable(name: "theta", arg: 1, scope: !1201, file: !1, line: 602, type: !48)
!1205 = !DILocation(line: 602, column: 43, scope: !1201)
!1206 = !DILocalVariable(name: "r", scope: !1201, file: !1, line: 604, type: !77)
!1207 = !DILocation(line: 604, column: 17, scope: !1201)
!1208 = !DILocalVariable(name: "stat", scope: !1201, file: !1, line: 605, type: !51)
!1209 = !DILocation(line: 605, column: 7, scope: !1201)
!1210 = !DILocation(line: 605, column: 48, scope: !1201)
!1211 = !DILocation(line: 605, column: 47, scope: !1201)
!1212 = !DILocation(line: 605, column: 14, scope: !1201)
!1213 = !DILocation(line: 606, column: 14, scope: !1201)
!1214 = !DILocation(line: 606, column: 4, scope: !1201)
!1215 = !DILocation(line: 606, column: 10, scope: !1201)
!1216 = !DILocation(line: 607, column: 10, scope: !1201)
!1217 = !DILocation(line: 607, column: 3, scope: !1201)
!1218 = distinct !DISubprogram(name: "gsl_sf_lnsinh_e", scope: !1, file: !1, line: 440, type: !1219, isLocal: false, isDefinition: true, scopeLine: 441, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !83)
!1219 = !DISubroutineType(types: !1220)
!1220 = !{!51, !91, !76}
!1221 = !DILocalVariable(name: "x", arg: 1, scope: !1218, file: !1, line: 440, type: !91)
!1222 = !DILocation(line: 440, column: 30, scope: !1218)
!1223 = !DILocalVariable(name: "result", arg: 2, scope: !1218, file: !1, line: 440, type: !76)
!1224 = !DILocation(line: 440, column: 49, scope: !1218)
!1225 = !DILocation(line: 444, column: 6, scope: !1226)
!1226 = distinct !DILexicalBlock(scope: !1218, file: !1, line: 444, column: 6)
!1227 = !DILocation(line: 444, column: 8, scope: !1226)
!1228 = !DILocation(line: 444, column: 6, scope: !1218)
!1229 = !DILocation(line: 445, column: 5, scope: !1230)
!1230 = distinct !DILexicalBlock(scope: !1226, file: !1, line: 444, column: 16)
!1231 = distinct !{!1231, !1229}
!1232 = !DILocation(line: 445, column: 5, scope: !1233)
!1233 = !DILexicalBlockFile(scope: !1234, file: !1, discriminator: 1)
!1234 = distinct !DILexicalBlock(scope: !1230, file: !1, line: 445, column: 5)
!1235 = distinct !{!1235, !1236}
!1236 = !DILocation(line: 445, column: 5, scope: !1234)
!1237 = !DILocation(line: 445, column: 5, scope: !1238)
!1238 = !DILexicalBlockFile(scope: !1239, file: !1, discriminator: 2)
!1239 = distinct !DILexicalBlock(scope: !1234, file: !1, line: 445, column: 5)
!1240 = !DILocation(line: 445, column: 5, scope: !1241)
!1241 = !DILexicalBlockFile(scope: !1234, file: !1, discriminator: 3)
!1242 = !DILocation(line: 446, column: 3, scope: !1230)
!1243 = !DILocation(line: 447, column: 16, scope: !1244)
!1244 = distinct !DILexicalBlock(scope: !1226, file: !1, line: 447, column: 11)
!1245 = !DILocation(line: 447, column: 11, scope: !1244)
!1246 = !DILocation(line: 447, column: 19, scope: !1244)
!1247 = !DILocation(line: 447, column: 11, scope: !1226)
!1248 = !DILocalVariable(name: "eps", scope: !1249, file: !1, line: 448, type: !49)
!1249 = distinct !DILexicalBlock(scope: !1244, file: !1, line: 447, column: 26)
!1250 = !DILocation(line: 448, column: 12, scope: !1249)
!1251 = !DILocation(line: 449, column: 17, scope: !1249)
!1252 = !DILocation(line: 449, column: 5, scope: !1249)
!1253 = !DILocation(line: 450, column: 23, scope: !1249)
!1254 = !DILocation(line: 450, column: 19, scope: !1249)
!1255 = !DILocation(line: 450, column: 5, scope: !1249)
!1256 = !DILocation(line: 450, column: 13, scope: !1249)
!1257 = !DILocation(line: 450, column: 17, scope: !1249)
!1258 = !DILocation(line: 451, column: 48, scope: !1249)
!1259 = !DILocation(line: 451, column: 56, scope: !1249)
!1260 = !DILocation(line: 451, column: 43, scope: !1249)
!1261 = !DILocation(line: 451, column: 41, scope: !1249)
!1262 = !DILocation(line: 451, column: 5, scope: !1249)
!1263 = !DILocation(line: 451, column: 13, scope: !1249)
!1264 = !DILocation(line: 451, column: 17, scope: !1249)
!1265 = !DILocation(line: 452, column: 5, scope: !1249)
!1266 = !DILocation(line: 454, column: 11, scope: !1267)
!1267 = distinct !DILexicalBlock(scope: !1244, file: !1, line: 454, column: 11)
!1268 = !DILocation(line: 454, column: 13, scope: !1267)
!1269 = !DILocation(line: 454, column: 11, scope: !1244)
!1270 = !DILocation(line: 455, column: 19, scope: !1271)
!1271 = distinct !DILexicalBlock(scope: !1267, file: !1, line: 454, column: 41)
!1272 = !DILocation(line: 455, column: 47, scope: !1271)
!1273 = !DILocation(line: 455, column: 46, scope: !1271)
!1274 = !DILocation(line: 455, column: 38, scope: !1271)
!1275 = !DILocation(line: 455, column: 36, scope: !1271)
!1276 = !DILocation(line: 455, column: 30, scope: !1271)
!1277 = !DILocation(line: 455, column: 23, scope: !1278)
!1278 = !DILexicalBlockFile(scope: !1271, file: !1, discriminator: 1)
!1279 = !DILocation(line: 455, column: 21, scope: !1271)
!1280 = !DILocation(line: 455, column: 5, scope: !1271)
!1281 = !DILocation(line: 455, column: 13, scope: !1271)
!1282 = !DILocation(line: 455, column: 17, scope: !1271)
!1283 = !DILocation(line: 456, column: 48, scope: !1271)
!1284 = !DILocation(line: 456, column: 56, scope: !1271)
!1285 = !DILocation(line: 456, column: 43, scope: !1271)
!1286 = !DILocation(line: 456, column: 41, scope: !1271)
!1287 = !DILocation(line: 456, column: 5, scope: !1271)
!1288 = !DILocation(line: 456, column: 13, scope: !1271)
!1289 = !DILocation(line: 456, column: 17, scope: !1271)
!1290 = !DILocation(line: 457, column: 5, scope: !1271)
!1291 = !DILocation(line: 460, column: 28, scope: !1292)
!1292 = distinct !DILexicalBlock(scope: !1267, file: !1, line: 459, column: 8)
!1293 = !DILocation(line: 460, column: 26, scope: !1292)
!1294 = !DILocation(line: 460, column: 5, scope: !1292)
!1295 = !DILocation(line: 460, column: 13, scope: !1292)
!1296 = !DILocation(line: 460, column: 17, scope: !1292)
!1297 = !DILocation(line: 461, column: 48, scope: !1292)
!1298 = !DILocation(line: 461, column: 56, scope: !1292)
!1299 = !DILocation(line: 461, column: 43, scope: !1292)
!1300 = !DILocation(line: 461, column: 41, scope: !1292)
!1301 = !DILocation(line: 461, column: 5, scope: !1292)
!1302 = !DILocation(line: 461, column: 13, scope: !1292)
!1303 = !DILocation(line: 461, column: 17, scope: !1292)
!1304 = !DILocation(line: 462, column: 5, scope: !1292)
!1305 = !DILocation(line: 464, column: 1, scope: !1218)
!1306 = distinct !DISubprogram(name: "gsl_sf_lncosh_e", scope: !1, file: !1, line: 467, type: !1219, isLocal: false, isDefinition: true, scopeLine: 468, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !83)
!1307 = !DILocalVariable(name: "x", arg: 1, scope: !1306, file: !1, line: 467, type: !91)
!1308 = !DILocation(line: 467, column: 34, scope: !1306)
!1309 = !DILocalVariable(name: "result", arg: 2, scope: !1306, file: !1, line: 467, type: !76)
!1310 = !DILocation(line: 467, column: 53, scope: !1306)
!1311 = !DILocation(line: 471, column: 11, scope: !1312)
!1312 = distinct !DILexicalBlock(scope: !1306, file: !1, line: 471, column: 6)
!1313 = !DILocation(line: 471, column: 6, scope: !1312)
!1314 = !DILocation(line: 471, column: 14, scope: !1312)
!1315 = !DILocation(line: 471, column: 6, scope: !1306)
!1316 = !DILocalVariable(name: "eps", scope: !1317, file: !1, line: 472, type: !49)
!1317 = distinct !DILexicalBlock(scope: !1312, file: !1, line: 471, column: 21)
!1318 = !DILocation(line: 472, column: 12, scope: !1317)
!1319 = !DILocation(line: 473, column: 20, scope: !1317)
!1320 = !DILocation(line: 473, column: 5, scope: !1317)
!1321 = !DILocation(line: 474, column: 32, scope: !1317)
!1322 = !DILocation(line: 474, column: 37, scope: !1317)
!1323 = !DILocation(line: 474, column: 12, scope: !1317)
!1324 = !DILocation(line: 474, column: 5, scope: !1317)
!1325 = !DILocation(line: 476, column: 16, scope: !1326)
!1326 = distinct !DILexicalBlock(scope: !1312, file: !1, line: 476, column: 11)
!1327 = !DILocation(line: 476, column: 11, scope: !1326)
!1328 = !DILocation(line: 476, column: 19, scope: !1326)
!1329 = !DILocation(line: 476, column: 11, scope: !1312)
!1330 = !DILocation(line: 477, column: 24, scope: !1331)
!1331 = distinct !DILexicalBlock(scope: !1326, file: !1, line: 476, column: 47)
!1332 = !DILocation(line: 477, column: 19, scope: !1331)
!1333 = !DILocation(line: 477, column: 58, scope: !1331)
!1334 = !DILocation(line: 477, column: 53, scope: !1335)
!1335 = !DILexicalBlockFile(scope: !1331, file: !1, discriminator: 1)
!1336 = !DILocation(line: 477, column: 52, scope: !1331)
!1337 = !DILocation(line: 477, column: 44, scope: !1338)
!1338 = !DILexicalBlockFile(scope: !1331, file: !1, discriminator: 2)
!1339 = !DILocation(line: 477, column: 42, scope: !1331)
!1340 = !DILocation(line: 477, column: 36, scope: !1331)
!1341 = !DILocation(line: 477, column: 29, scope: !1342)
!1342 = !DILexicalBlockFile(scope: !1331, file: !1, discriminator: 3)
!1343 = !DILocation(line: 477, column: 27, scope: !1331)
!1344 = !DILocation(line: 477, column: 5, scope: !1331)
!1345 = !DILocation(line: 477, column: 13, scope: !1331)
!1346 = !DILocation(line: 477, column: 17, scope: !1331)
!1347 = !DILocation(line: 478, column: 48, scope: !1331)
!1348 = !DILocation(line: 478, column: 56, scope: !1331)
!1349 = !DILocation(line: 478, column: 43, scope: !1331)
!1350 = !DILocation(line: 478, column: 41, scope: !1331)
!1351 = !DILocation(line: 478, column: 5, scope: !1331)
!1352 = !DILocation(line: 478, column: 13, scope: !1331)
!1353 = !DILocation(line: 478, column: 17, scope: !1331)
!1354 = !DILocation(line: 479, column: 5, scope: !1331)
!1355 = !DILocation(line: 482, column: 33, scope: !1356)
!1356 = distinct !DILexicalBlock(scope: !1326, file: !1, line: 481, column: 8)
!1357 = !DILocation(line: 482, column: 28, scope: !1356)
!1358 = !DILocation(line: 482, column: 26, scope: !1356)
!1359 = !DILocation(line: 482, column: 5, scope: !1356)
!1360 = !DILocation(line: 482, column: 13, scope: !1356)
!1361 = !DILocation(line: 482, column: 17, scope: !1356)
!1362 = !DILocation(line: 483, column: 48, scope: !1356)
!1363 = !DILocation(line: 483, column: 56, scope: !1356)
!1364 = !DILocation(line: 483, column: 43, scope: !1356)
!1365 = !DILocation(line: 483, column: 41, scope: !1356)
!1366 = !DILocation(line: 483, column: 5, scope: !1356)
!1367 = !DILocation(line: 483, column: 13, scope: !1356)
!1368 = !DILocation(line: 483, column: 17, scope: !1356)
!1369 = !DILocation(line: 484, column: 5, scope: !1356)
!1370 = !DILocation(line: 486, column: 1, scope: !1306)
!1371 = distinct !DISubprogram(name: "gsl_sf_polar_to_rect", scope: !1, file: !1, line: 500, type: !736, isLocal: false, isDefinition: true, scopeLine: 502, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !83)
!1372 = !DILocalVariable(name: "r", arg: 1, scope: !1371, file: !1, line: 500, type: !91)
!1373 = !DILocation(line: 500, column: 35, scope: !1371)
!1374 = !DILocalVariable(name: "theta", arg: 2, scope: !1371, file: !1, line: 500, type: !91)
!1375 = !DILocation(line: 500, column: 51, scope: !1371)
!1376 = !DILocalVariable(name: "x", arg: 3, scope: !1371, file: !1, line: 501, type: !76)
!1377 = !DILocation(line: 501, column: 43, scope: !1371)
!1378 = !DILocalVariable(name: "y", arg: 4, scope: !1371, file: !1, line: 501, type: !76)
!1379 = !DILocation(line: 501, column: 62, scope: !1371)
!1380 = !DILocalVariable(name: "t", scope: !1371, file: !1, line: 503, type: !49)
!1381 = !DILocation(line: 503, column: 10, scope: !1371)
!1382 = !DILocation(line: 503, column: 16, scope: !1371)
!1383 = !DILocalVariable(name: "status", scope: !1371, file: !1, line: 504, type: !51)
!1384 = !DILocation(line: 504, column: 7, scope: !1371)
!1385 = !DILocation(line: 504, column: 16, scope: !1371)
!1386 = !DILocalVariable(name: "c", scope: !1371, file: !1, line: 505, type: !49)
!1387 = !DILocation(line: 505, column: 10, scope: !1371)
!1388 = !DILocation(line: 505, column: 18, scope: !1371)
!1389 = !DILocation(line: 505, column: 14, scope: !1371)
!1390 = !DILocalVariable(name: "s", scope: !1371, file: !1, line: 506, type: !49)
!1391 = !DILocation(line: 506, column: 10, scope: !1371)
!1392 = !DILocation(line: 506, column: 18, scope: !1371)
!1393 = !DILocation(line: 506, column: 14, scope: !1371)
!1394 = !DILocation(line: 507, column: 12, scope: !1371)
!1395 = !DILocation(line: 507, column: 20, scope: !1371)
!1396 = !DILocation(line: 507, column: 16, scope: !1371)
!1397 = !DILocation(line: 507, column: 14, scope: !1371)
!1398 = !DILocation(line: 507, column: 3, scope: !1371)
!1399 = !DILocation(line: 507, column: 6, scope: !1371)
!1400 = !DILocation(line: 507, column: 10, scope: !1371)
!1401 = !DILocation(line: 508, column: 12, scope: !1371)
!1402 = !DILocation(line: 508, column: 20, scope: !1371)
!1403 = !DILocation(line: 508, column: 16, scope: !1371)
!1404 = !DILocation(line: 508, column: 14, scope: !1371)
!1405 = !DILocation(line: 508, column: 3, scope: !1371)
!1406 = !DILocation(line: 508, column: 6, scope: !1371)
!1407 = !DILocation(line: 508, column: 10, scope: !1371)
!1408 = !DILocation(line: 509, column: 13, scope: !1371)
!1409 = !DILocation(line: 509, column: 22, scope: !1371)
!1410 = !DILocation(line: 509, column: 24, scope: !1371)
!1411 = !DILocation(line: 509, column: 44, scope: !1371)
!1412 = !DILocation(line: 509, column: 42, scope: !1371)
!1413 = !DILocation(line: 509, column: 17, scope: !1371)
!1414 = !DILocation(line: 509, column: 15, scope: !1371)
!1415 = !DILocation(line: 509, column: 3, scope: !1371)
!1416 = !DILocation(line: 509, column: 6, scope: !1371)
!1417 = !DILocation(line: 509, column: 11, scope: !1371)
!1418 = !DILocation(line: 510, column: 42, scope: !1371)
!1419 = !DILocation(line: 510, column: 45, scope: !1371)
!1420 = !DILocation(line: 510, column: 37, scope: !1371)
!1421 = !DILocation(line: 510, column: 35, scope: !1371)
!1422 = !DILocation(line: 510, column: 3, scope: !1371)
!1423 = !DILocation(line: 510, column: 6, scope: !1371)
!1424 = !DILocation(line: 510, column: 10, scope: !1371)
!1425 = !DILocation(line: 511, column: 13, scope: !1371)
!1426 = !DILocation(line: 511, column: 22, scope: !1371)
!1427 = !DILocation(line: 511, column: 24, scope: !1371)
!1428 = !DILocation(line: 511, column: 44, scope: !1371)
!1429 = !DILocation(line: 511, column: 42, scope: !1371)
!1430 = !DILocation(line: 511, column: 17, scope: !1371)
!1431 = !DILocation(line: 511, column: 15, scope: !1371)
!1432 = !DILocation(line: 511, column: 3, scope: !1371)
!1433 = !DILocation(line: 511, column: 6, scope: !1371)
!1434 = !DILocation(line: 511, column: 11, scope: !1371)
!1435 = !DILocation(line: 512, column: 42, scope: !1371)
!1436 = !DILocation(line: 512, column: 45, scope: !1371)
!1437 = !DILocation(line: 512, column: 37, scope: !1371)
!1438 = !DILocation(line: 512, column: 35, scope: !1371)
!1439 = !DILocation(line: 512, column: 3, scope: !1371)
!1440 = !DILocation(line: 512, column: 6, scope: !1371)
!1441 = !DILocation(line: 512, column: 10, scope: !1371)
!1442 = !DILocation(line: 513, column: 10, scope: !1371)
!1443 = !DILocation(line: 513, column: 3, scope: !1371)
!1444 = distinct !DISubprogram(name: "gsl_sf_rect_to_polar", scope: !1, file: !1, line: 518, type: !736, isLocal: false, isDefinition: true, scopeLine: 520, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !83)
!1445 = !DILocalVariable(name: "x", arg: 1, scope: !1444, file: !1, line: 518, type: !91)
!1446 = !DILocation(line: 518, column: 35, scope: !1444)
!1447 = !DILocalVariable(name: "y", arg: 2, scope: !1444, file: !1, line: 518, type: !91)
!1448 = !DILocation(line: 518, column: 51, scope: !1444)
!1449 = !DILocalVariable(name: "r", arg: 3, scope: !1444, file: !1, line: 519, type: !76)
!1450 = !DILocation(line: 519, column: 43, scope: !1444)
!1451 = !DILocalVariable(name: "theta", arg: 4, scope: !1444, file: !1, line: 519, type: !76)
!1452 = !DILocation(line: 519, column: 62, scope: !1444)
!1453 = !DILocalVariable(name: "stat_h", scope: !1444, file: !1, line: 521, type: !51)
!1454 = !DILocation(line: 521, column: 7, scope: !1444)
!1455 = !DILocation(line: 521, column: 31, scope: !1444)
!1456 = !DILocation(line: 521, column: 34, scope: !1444)
!1457 = !DILocation(line: 521, column: 37, scope: !1444)
!1458 = !DILocation(line: 521, column: 16, scope: !1444)
!1459 = !DILocation(line: 522, column: 6, scope: !1460)
!1460 = distinct !DILexicalBlock(scope: !1444, file: !1, line: 522, column: 6)
!1461 = !DILocation(line: 522, column: 9, scope: !1460)
!1462 = !DILocation(line: 522, column: 13, scope: !1460)
!1463 = !DILocation(line: 522, column: 6, scope: !1444)
!1464 = !DILocation(line: 523, column: 24, scope: !1465)
!1465 = distinct !DILexicalBlock(scope: !1460, file: !1, line: 522, column: 20)
!1466 = !DILocation(line: 523, column: 27, scope: !1465)
!1467 = !DILocation(line: 523, column: 18, scope: !1465)
!1468 = !DILocation(line: 523, column: 5, scope: !1465)
!1469 = !DILocation(line: 523, column: 12, scope: !1465)
!1470 = !DILocation(line: 523, column: 16, scope: !1465)
!1471 = !DILocation(line: 524, column: 47, scope: !1465)
!1472 = !DILocation(line: 524, column: 54, scope: !1465)
!1473 = !DILocation(line: 524, column: 42, scope: !1465)
!1474 = !DILocation(line: 524, column: 40, scope: !1465)
!1475 = !DILocation(line: 524, column: 5, scope: !1465)
!1476 = !DILocation(line: 524, column: 12, scope: !1465)
!1477 = !DILocation(line: 524, column: 16, scope: !1465)
!1478 = !DILocation(line: 525, column: 12, scope: !1465)
!1479 = !DILocation(line: 525, column: 5, scope: !1465)
!1480 = !DILocation(line: 528, column: 5, scope: !1481)
!1481 = distinct !DILexicalBlock(scope: !1460, file: !1, line: 527, column: 8)
!1482 = distinct !{!1482, !1480}
!1483 = !DILocation(line: 528, column: 5, scope: !1484)
!1484 = !DILexicalBlockFile(scope: !1485, file: !1, discriminator: 1)
!1485 = distinct !DILexicalBlock(scope: !1481, file: !1, line: 528, column: 5)
!1486 = distinct !{!1486, !1487}
!1487 = !DILocation(line: 528, column: 5, scope: !1485)
!1488 = !DILocation(line: 528, column: 5, scope: !1489)
!1489 = !DILexicalBlockFile(scope: !1490, file: !1, discriminator: 2)
!1490 = distinct !DILexicalBlock(scope: !1485, file: !1, line: 528, column: 5)
!1491 = !DILocation(line: 528, column: 5, scope: !1492)
!1492 = !DILexicalBlockFile(scope: !1485, file: !1, discriminator: 3)
!1493 = !DILocation(line: 530, column: 1, scope: !1444)
!1494 = distinct !DISubprogram(name: "gsl_sf_angle_restrict_symm_err_e", scope: !1, file: !1, line: 533, type: !1219, isLocal: false, isDefinition: true, scopeLine: 534, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !83)
!1495 = !DILocalVariable(name: "theta", arg: 1, scope: !1494, file: !1, line: 533, type: !91)
!1496 = !DILocation(line: 533, column: 51, scope: !1494)
!1497 = !DILocalVariable(name: "result", arg: 2, scope: !1494, file: !1, line: 533, type: !76)
!1498 = !DILocation(line: 533, column: 74, scope: !1494)
!1499 = !DILocalVariable(name: "P1", scope: !1494, file: !1, line: 536, type: !91)
!1500 = !DILocation(line: 536, column: 16, scope: !1494)
!1501 = !DILocalVariable(name: "P2", scope: !1494, file: !1, line: 537, type: !91)
!1502 = !DILocation(line: 537, column: 16, scope: !1494)
!1503 = !DILocalVariable(name: "P3", scope: !1494, file: !1, line: 538, type: !91)
!1504 = !DILocation(line: 538, column: 16, scope: !1494)
!1505 = !DILocalVariable(name: "TwoPi", scope: !1494, file: !1, line: 539, type: !91)
!1506 = !DILocation(line: 539, column: 16, scope: !1494)
!1507 = !DILocalVariable(name: "y", scope: !1494, file: !1, line: 541, type: !91)
!1508 = !DILocation(line: 541, column: 16, scope: !1494)
!1509 = !DILocation(line: 541, column: 20, scope: !1494)
!1510 = !DILocation(line: 541, column: 36, scope: !1494)
!1511 = !DILocation(line: 541, column: 53, scope: !1494)
!1512 = !DILocation(line: 541, column: 48, scope: !1494)
!1513 = !DILocation(line: 541, column: 59, scope: !1494)
!1514 = !DILocation(line: 541, column: 42, scope: !1515)
!1515 = !DILexicalBlockFile(scope: !1494, file: !1, discriminator: 1)
!1516 = !DILocation(line: 541, column: 40, scope: !1494)
!1517 = !DILocalVariable(name: "r", scope: !1494, file: !1, line: 542, type: !49)
!1518 = !DILocation(line: 542, column: 10, scope: !1494)
!1519 = !DILocation(line: 542, column: 16, scope: !1494)
!1520 = !DILocation(line: 542, column: 24, scope: !1494)
!1521 = !DILocation(line: 542, column: 25, scope: !1494)
!1522 = !DILocation(line: 542, column: 22, scope: !1494)
!1523 = !DILocation(line: 542, column: 32, scope: !1494)
!1524 = !DILocation(line: 542, column: 33, scope: !1494)
!1525 = !DILocation(line: 542, column: 30, scope: !1494)
!1526 = !DILocation(line: 542, column: 40, scope: !1494)
!1527 = !DILocation(line: 542, column: 41, scope: !1494)
!1528 = !DILocation(line: 542, column: 38, scope: !1494)
!1529 = !DILocation(line: 544, column: 6, scope: !1530)
!1530 = distinct !DILexicalBlock(scope: !1494, file: !1, line: 544, column: 6)
!1531 = !DILocation(line: 544, column: 8, scope: !1530)
!1532 = !DILocation(line: 544, column: 6, scope: !1494)
!1533 = !DILocation(line: 544, column: 26, scope: !1534)
!1534 = !DILexicalBlockFile(scope: !1535, file: !1, discriminator: 1)
!1535 = distinct !DILexicalBlock(scope: !1530, file: !1, line: 544, column: 17)
!1536 = !DILocation(line: 544, column: 27, scope: !1534)
!1537 = !DILocation(line: 544, column: 33, scope: !1534)
!1538 = !DILocation(line: 544, column: 39, scope: !1534)
!1539 = !DILocation(line: 544, column: 21, scope: !1534)
!1540 = !DILocation(line: 544, column: 47, scope: !1534)
!1541 = !DILocation(line: 545, column: 12, scope: !1542)
!1542 = distinct !DILexicalBlock(scope: !1530, file: !1, line: 545, column: 12)
!1543 = !DILocation(line: 545, column: 14, scope: !1542)
!1544 = !DILocation(line: 545, column: 12, scope: !1530)
!1545 = !DILocation(line: 545, column: 30, scope: !1546)
!1546 = !DILexicalBlockFile(scope: !1542, file: !1, discriminator: 1)
!1547 = !DILocation(line: 545, column: 31, scope: !1546)
!1548 = !DILocation(line: 545, column: 37, scope: !1546)
!1549 = !DILocation(line: 545, column: 43, scope: !1546)
!1550 = !DILocation(line: 545, column: 25, scope: !1546)
!1551 = !DILocation(line: 545, column: 23, scope: !1546)
!1552 = !DILocation(line: 547, column: 17, scope: !1494)
!1553 = !DILocation(line: 547, column: 3, scope: !1494)
!1554 = !DILocation(line: 547, column: 11, scope: !1494)
!1555 = !DILocation(line: 547, column: 15, scope: !1494)
!1556 = !DILocation(line: 549, column: 11, scope: !1557)
!1557 = distinct !DILexicalBlock(scope: !1494, file: !1, line: 549, column: 6)
!1558 = !DILocation(line: 549, column: 6, scope: !1557)
!1559 = !DILocation(line: 549, column: 18, scope: !1557)
!1560 = !DILocation(line: 549, column: 6, scope: !1494)
!1561 = !DILocation(line: 550, column: 5, scope: !1562)
!1562 = distinct !DILexicalBlock(scope: !1557, file: !1, line: 549, column: 44)
!1563 = !DILocation(line: 550, column: 13, scope: !1562)
!1564 = !DILocation(line: 550, column: 17, scope: !1562)
!1565 = !DILocation(line: 551, column: 5, scope: !1562)
!1566 = !DILocation(line: 551, column: 13, scope: !1562)
!1567 = !DILocation(line: 551, column: 17, scope: !1562)
!1568 = !DILocation(line: 552, column: 5, scope: !1562)
!1569 = distinct !{!1569, !1568}
!1570 = !DILocation(line: 552, column: 5, scope: !1571)
!1571 = !DILexicalBlockFile(scope: !1572, file: !1, discriminator: 1)
!1572 = distinct !DILexicalBlock(scope: !1562, file: !1, line: 552, column: 5)
!1573 = !DILocation(line: 553, column: 3, scope: !1562)
!1574 = !DILocation(line: 554, column: 16, scope: !1575)
!1575 = distinct !DILexicalBlock(scope: !1557, file: !1, line: 554, column: 11)
!1576 = !DILocation(line: 554, column: 11, scope: !1575)
!1577 = !DILocation(line: 554, column: 23, scope: !1575)
!1578 = !DILocation(line: 554, column: 11, scope: !1557)
!1579 = !DILocation(line: 555, column: 48, scope: !1580)
!1580 = distinct !DILexicalBlock(scope: !1575, file: !1, line: 554, column: 54)
!1581 = !DILocation(line: 555, column: 56, scope: !1580)
!1582 = !DILocation(line: 555, column: 62, scope: !1580)
!1583 = !DILocation(line: 555, column: 60, scope: !1580)
!1584 = !DILocation(line: 555, column: 43, scope: !1580)
!1585 = !DILocation(line: 555, column: 41, scope: !1580)
!1586 = !DILocation(line: 555, column: 5, scope: !1580)
!1587 = !DILocation(line: 555, column: 13, scope: !1580)
!1588 = !DILocation(line: 555, column: 17, scope: !1580)
!1589 = !DILocation(line: 556, column: 5, scope: !1580)
!1590 = !DILocalVariable(name: "delta", scope: !1591, file: !1, line: 559, type: !49)
!1591 = distinct !DILexicalBlock(scope: !1575, file: !1, line: 558, column: 8)
!1592 = !DILocation(line: 559, column: 12, scope: !1591)
!1593 = !DILocation(line: 559, column: 25, scope: !1591)
!1594 = !DILocation(line: 559, column: 33, scope: !1591)
!1595 = !DILocation(line: 559, column: 39, scope: !1591)
!1596 = !DILocation(line: 559, column: 37, scope: !1591)
!1597 = !DILocation(line: 559, column: 20, scope: !1591)
!1598 = !DILocation(line: 560, column: 45, scope: !1591)
!1599 = !DILocation(line: 560, column: 51, scope: !1591)
!1600 = !DILocation(line: 560, column: 44, scope: !1591)
!1601 = !DILocation(line: 560, column: 61, scope: !1602)
!1602 = !DILexicalBlockFile(scope: !1591, file: !1, discriminator: 1)
!1603 = !DILocation(line: 560, column: 44, scope: !1602)
!1604 = !DILocation(line: 560, column: 44, scope: !1605)
!1605 = !DILexicalBlockFile(scope: !1591, file: !1, discriminator: 2)
!1606 = !DILocation(line: 560, column: 44, scope: !1607)
!1607 = !DILexicalBlockFile(scope: !1591, file: !1, discriminator: 3)
!1608 = !DILocation(line: 560, column: 41, scope: !1607)
!1609 = !DILocation(line: 560, column: 5, scope: !1607)
!1610 = !DILocation(line: 560, column: 13, scope: !1607)
!1611 = !DILocation(line: 560, column: 17, scope: !1607)
!1612 = !DILocation(line: 561, column: 5, scope: !1591)
!1613 = !DILocation(line: 563, column: 1, scope: !1494)
!1614 = distinct !DISubprogram(name: "gsl_sf_angle_restrict_pos_err_e", scope: !1, file: !1, line: 566, type: !1219, isLocal: false, isDefinition: true, scopeLine: 567, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !83)
!1615 = !DILocalVariable(name: "theta", arg: 1, scope: !1614, file: !1, line: 566, type: !91)
!1616 = !DILocation(line: 566, column: 50, scope: !1614)
!1617 = !DILocalVariable(name: "result", arg: 2, scope: !1614, file: !1, line: 566, type: !76)
!1618 = !DILocation(line: 566, column: 73, scope: !1614)
!1619 = !DILocalVariable(name: "P1", scope: !1614, file: !1, line: 569, type: !91)
!1620 = !DILocation(line: 569, column: 16, scope: !1614)
!1621 = !DILocalVariable(name: "P2", scope: !1614, file: !1, line: 570, type: !91)
!1622 = !DILocation(line: 570, column: 16, scope: !1614)
!1623 = !DILocalVariable(name: "P3", scope: !1614, file: !1, line: 571, type: !91)
!1624 = !DILocation(line: 571, column: 16, scope: !1614)
!1625 = !DILocalVariable(name: "TwoPi", scope: !1614, file: !1, line: 572, type: !91)
!1626 = !DILocation(line: 572, column: 16, scope: !1614)
!1627 = !DILocalVariable(name: "y", scope: !1614, file: !1, line: 574, type: !91)
!1628 = !DILocation(line: 574, column: 16, scope: !1614)
!1629 = !DILocation(line: 574, column: 28, scope: !1614)
!1630 = !DILocation(line: 574, column: 33, scope: !1614)
!1631 = !DILocation(line: 574, column: 22, scope: !1614)
!1632 = !DILocation(line: 574, column: 21, scope: !1614)
!1633 = !DILocalVariable(name: "r", scope: !1614, file: !1, line: 576, type: !49)
!1634 = !DILocation(line: 576, column: 10, scope: !1614)
!1635 = !DILocation(line: 576, column: 16, scope: !1614)
!1636 = !DILocation(line: 576, column: 24, scope: !1614)
!1637 = !DILocation(line: 576, column: 25, scope: !1614)
!1638 = !DILocation(line: 576, column: 22, scope: !1614)
!1639 = !DILocation(line: 576, column: 32, scope: !1614)
!1640 = !DILocation(line: 576, column: 33, scope: !1614)
!1641 = !DILocation(line: 576, column: 30, scope: !1614)
!1642 = !DILocation(line: 576, column: 40, scope: !1614)
!1643 = !DILocation(line: 576, column: 41, scope: !1614)
!1644 = !DILocation(line: 576, column: 38, scope: !1614)
!1645 = !DILocation(line: 578, column: 6, scope: !1646)
!1646 = distinct !DILexicalBlock(scope: !1614, file: !1, line: 578, column: 6)
!1647 = !DILocation(line: 578, column: 8, scope: !1646)
!1648 = !DILocation(line: 578, column: 6, scope: !1614)
!1649 = !DILocation(line: 578, column: 25, scope: !1650)
!1650 = !DILexicalBlockFile(scope: !1651, file: !1, discriminator: 1)
!1651 = distinct !DILexicalBlock(scope: !1646, file: !1, line: 578, column: 17)
!1652 = !DILocation(line: 578, column: 26, scope: !1650)
!1653 = !DILocation(line: 578, column: 32, scope: !1650)
!1654 = !DILocation(line: 578, column: 38, scope: !1650)
!1655 = !DILocation(line: 578, column: 20, scope: !1650)
!1656 = !DILocation(line: 578, column: 46, scope: !1650)
!1657 = !DILocation(line: 579, column: 12, scope: !1658)
!1658 = distinct !DILexicalBlock(scope: !1646, file: !1, line: 579, column: 12)
!1659 = !DILocation(line: 579, column: 14, scope: !1658)
!1660 = !DILocation(line: 579, column: 12, scope: !1646)
!1661 = !DILocation(line: 580, column: 12, scope: !1662)
!1662 = distinct !DILexicalBlock(scope: !1658, file: !1, line: 579, column: 19)
!1663 = !DILocation(line: 580, column: 13, scope: !1662)
!1664 = !DILocation(line: 580, column: 19, scope: !1662)
!1665 = !DILocation(line: 580, column: 25, scope: !1662)
!1666 = !DILocation(line: 580, column: 7, scope: !1662)
!1667 = !DILocation(line: 581, column: 3, scope: !1662)
!1668 = !DILocation(line: 583, column: 17, scope: !1614)
!1669 = !DILocation(line: 583, column: 3, scope: !1614)
!1670 = !DILocation(line: 583, column: 11, scope: !1614)
!1671 = !DILocation(line: 583, column: 15, scope: !1614)
!1672 = !DILocation(line: 585, column: 11, scope: !1673)
!1673 = distinct !DILexicalBlock(scope: !1614, file: !1, line: 585, column: 6)
!1674 = !DILocation(line: 585, column: 6, scope: !1673)
!1675 = !DILocation(line: 585, column: 18, scope: !1673)
!1676 = !DILocation(line: 585, column: 6, scope: !1614)
!1677 = !DILocation(line: 586, column: 5, scope: !1678)
!1678 = distinct !DILexicalBlock(scope: !1673, file: !1, line: 585, column: 44)
!1679 = !DILocation(line: 586, column: 13, scope: !1678)
!1680 = !DILocation(line: 586, column: 17, scope: !1678)
!1681 = !DILocation(line: 587, column: 24, scope: !1678)
!1682 = !DILocation(line: 587, column: 32, scope: !1678)
!1683 = !DILocation(line: 587, column: 19, scope: !1678)
!1684 = !DILocation(line: 587, column: 5, scope: !1678)
!1685 = !DILocation(line: 587, column: 13, scope: !1678)
!1686 = !DILocation(line: 587, column: 17, scope: !1678)
!1687 = !DILocation(line: 588, column: 5, scope: !1678)
!1688 = distinct !{!1688, !1687}
!1689 = !DILocation(line: 588, column: 5, scope: !1690)
!1690 = !DILexicalBlockFile(scope: !1691, file: !1, discriminator: 1)
!1691 = distinct !DILexicalBlock(scope: !1678, file: !1, line: 588, column: 5)
!1692 = !DILocation(line: 589, column: 3, scope: !1678)
!1693 = !DILocation(line: 590, column: 16, scope: !1694)
!1694 = distinct !DILexicalBlock(scope: !1673, file: !1, line: 590, column: 11)
!1695 = !DILocation(line: 590, column: 11, scope: !1694)
!1696 = !DILocation(line: 590, column: 23, scope: !1694)
!1697 = !DILocation(line: 590, column: 11, scope: !1673)
!1698 = !DILocation(line: 591, column: 42, scope: !1699)
!1699 = distinct !DILexicalBlock(scope: !1694, file: !1, line: 590, column: 54)
!1700 = !DILocation(line: 591, column: 50, scope: !1699)
!1701 = !DILocation(line: 591, column: 56, scope: !1699)
!1702 = !DILocation(line: 591, column: 54, scope: !1699)
!1703 = !DILocation(line: 591, column: 37, scope: !1699)
!1704 = !DILocation(line: 591, column: 35, scope: !1699)
!1705 = !DILocation(line: 591, column: 5, scope: !1699)
!1706 = !DILocation(line: 591, column: 13, scope: !1699)
!1707 = !DILocation(line: 591, column: 17, scope: !1699)
!1708 = !DILocation(line: 592, column: 5, scope: !1699)
!1709 = !DILocalVariable(name: "delta", scope: !1710, file: !1, line: 595, type: !49)
!1710 = distinct !DILexicalBlock(scope: !1694, file: !1, line: 594, column: 8)
!1711 = !DILocation(line: 595, column: 12, scope: !1710)
!1712 = !DILocation(line: 595, column: 25, scope: !1710)
!1713 = !DILocation(line: 595, column: 33, scope: !1710)
!1714 = !DILocation(line: 595, column: 39, scope: !1710)
!1715 = !DILocation(line: 595, column: 37, scope: !1710)
!1716 = !DILocation(line: 595, column: 20, scope: !1710)
!1717 = !DILocation(line: 596, column: 45, scope: !1710)
!1718 = !DILocation(line: 596, column: 51, scope: !1710)
!1719 = !DILocation(line: 596, column: 44, scope: !1710)
!1720 = !DILocation(line: 596, column: 61, scope: !1721)
!1721 = !DILexicalBlockFile(scope: !1710, file: !1, discriminator: 1)
!1722 = !DILocation(line: 596, column: 44, scope: !1721)
!1723 = !DILocation(line: 596, column: 44, scope: !1724)
!1724 = !DILexicalBlockFile(scope: !1710, file: !1, discriminator: 2)
!1725 = !DILocation(line: 596, column: 44, scope: !1726)
!1726 = !DILexicalBlockFile(scope: !1710, file: !1, discriminator: 3)
!1727 = !DILocation(line: 596, column: 41, scope: !1726)
!1728 = !DILocation(line: 596, column: 5, scope: !1726)
!1729 = !DILocation(line: 596, column: 13, scope: !1726)
!1730 = !DILocation(line: 596, column: 17, scope: !1726)
!1731 = !DILocation(line: 597, column: 5, scope: !1710)
!1732 = !DILocation(line: 599, column: 1, scope: !1614)
!1733 = distinct !DISubprogram(name: "gsl_sf_angle_restrict_pos_e", scope: !1, file: !1, line: 611, type: !1202, isLocal: false, isDefinition: true, scopeLine: 612, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !83)
!1734 = !DILocalVariable(name: "theta", arg: 1, scope: !1733, file: !1, line: 611, type: !48)
!1735 = !DILocation(line: 611, column: 42, scope: !1733)
!1736 = !DILocalVariable(name: "r", scope: !1733, file: !1, line: 613, type: !77)
!1737 = !DILocation(line: 613, column: 17, scope: !1733)
!1738 = !DILocalVariable(name: "stat", scope: !1733, file: !1, line: 614, type: !51)
!1739 = !DILocation(line: 614, column: 7, scope: !1733)
!1740 = !DILocation(line: 614, column: 47, scope: !1733)
!1741 = !DILocation(line: 614, column: 46, scope: !1733)
!1742 = !DILocation(line: 614, column: 14, scope: !1733)
!1743 = !DILocation(line: 615, column: 14, scope: !1733)
!1744 = !DILocation(line: 615, column: 4, scope: !1733)
!1745 = !DILocation(line: 615, column: 10, scope: !1733)
!1746 = !DILocation(line: 616, column: 10, scope: !1733)
!1747 = !DILocation(line: 616, column: 3, scope: !1733)
!1748 = distinct !DISubprogram(name: "gsl_sf_sin_err_e", scope: !1, file: !1, line: 620, type: !645, isLocal: false, isDefinition: true, scopeLine: 621, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !83)
!1749 = !DILocalVariable(name: "x", arg: 1, scope: !1748, file: !1, line: 620, type: !91)
!1750 = !DILocation(line: 620, column: 35, scope: !1748)
!1751 = !DILocalVariable(name: "dx", arg: 2, scope: !1748, file: !1, line: 620, type: !91)
!1752 = !DILocation(line: 620, column: 51, scope: !1748)
!1753 = !DILocalVariable(name: "result", arg: 3, scope: !1748, file: !1, line: 620, type: !76)
!1754 = !DILocation(line: 620, column: 71, scope: !1748)
!1755 = !DILocalVariable(name: "stat_s", scope: !1748, file: !1, line: 622, type: !51)
!1756 = !DILocation(line: 622, column: 7, scope: !1748)
!1757 = !DILocation(line: 622, column: 29, scope: !1748)
!1758 = !DILocation(line: 622, column: 32, scope: !1748)
!1759 = !DILocation(line: 622, column: 16, scope: !1748)
!1760 = !DILocation(line: 623, column: 27, scope: !1748)
!1761 = !DILocation(line: 623, column: 23, scope: !1748)
!1762 = !DILocation(line: 623, column: 32, scope: !1748)
!1763 = !DILocation(line: 623, column: 30, scope: !1748)
!1764 = !DILocation(line: 623, column: 18, scope: !1765)
!1765 = !DILexicalBlockFile(scope: !1748, file: !1, discriminator: 1)
!1766 = !DILocation(line: 623, column: 3, scope: !1748)
!1767 = !DILocation(line: 623, column: 11, scope: !1748)
!1768 = !DILocation(line: 623, column: 15, scope: !1748)
!1769 = !DILocation(line: 624, column: 41, scope: !1748)
!1770 = !DILocation(line: 624, column: 49, scope: !1748)
!1771 = !DILocation(line: 624, column: 36, scope: !1748)
!1772 = !DILocation(line: 624, column: 34, scope: !1748)
!1773 = !DILocation(line: 624, column: 3, scope: !1748)
!1774 = !DILocation(line: 624, column: 11, scope: !1748)
!1775 = !DILocation(line: 624, column: 15, scope: !1748)
!1776 = !DILocation(line: 625, column: 10, scope: !1748)
!1777 = !DILocation(line: 625, column: 3, scope: !1748)
!1778 = distinct !DISubprogram(name: "gsl_sf_cos_err_e", scope: !1, file: !1, line: 629, type: !645, isLocal: false, isDefinition: true, scopeLine: 630, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !83)
!1779 = !DILocalVariable(name: "x", arg: 1, scope: !1778, file: !1, line: 629, type: !91)
!1780 = !DILocation(line: 629, column: 35, scope: !1778)
!1781 = !DILocalVariable(name: "dx", arg: 2, scope: !1778, file: !1, line: 629, type: !91)
!1782 = !DILocation(line: 629, column: 51, scope: !1778)
!1783 = !DILocalVariable(name: "result", arg: 3, scope: !1778, file: !1, line: 629, type: !76)
!1784 = !DILocation(line: 629, column: 71, scope: !1778)
!1785 = !DILocalVariable(name: "stat_c", scope: !1778, file: !1, line: 631, type: !51)
!1786 = !DILocation(line: 631, column: 7, scope: !1778)
!1787 = !DILocation(line: 631, column: 29, scope: !1778)
!1788 = !DILocation(line: 631, column: 32, scope: !1778)
!1789 = !DILocation(line: 631, column: 16, scope: !1778)
!1790 = !DILocation(line: 632, column: 27, scope: !1778)
!1791 = !DILocation(line: 632, column: 23, scope: !1778)
!1792 = !DILocation(line: 632, column: 32, scope: !1778)
!1793 = !DILocation(line: 632, column: 30, scope: !1778)
!1794 = !DILocation(line: 632, column: 18, scope: !1795)
!1795 = !DILexicalBlockFile(scope: !1778, file: !1, discriminator: 1)
!1796 = !DILocation(line: 632, column: 3, scope: !1778)
!1797 = !DILocation(line: 632, column: 11, scope: !1778)
!1798 = !DILocation(line: 632, column: 15, scope: !1778)
!1799 = !DILocation(line: 633, column: 41, scope: !1778)
!1800 = !DILocation(line: 633, column: 49, scope: !1778)
!1801 = !DILocation(line: 633, column: 36, scope: !1778)
!1802 = !DILocation(line: 633, column: 34, scope: !1778)
!1803 = !DILocation(line: 633, column: 3, scope: !1778)
!1804 = !DILocation(line: 633, column: 11, scope: !1778)
!1805 = !DILocation(line: 633, column: 15, scope: !1778)
!1806 = !DILocation(line: 634, column: 10, scope: !1778)
!1807 = !DILocation(line: 634, column: 3, scope: !1778)
!1808 = distinct !DISubprogram(name: "gsl_sf_sinc_e", scope: !1, file: !1, line: 682, type: !74, isLocal: false, isDefinition: true, scopeLine: 683, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !83)
!1809 = !DILocalVariable(name: "x", arg: 1, scope: !1808, file: !1, line: 682, type: !49)
!1810 = !DILocation(line: 682, column: 26, scope: !1808)
!1811 = !DILocalVariable(name: "result", arg: 2, scope: !1808, file: !1, line: 682, type: !76)
!1812 = !DILocation(line: 682, column: 45, scope: !1808)
!1813 = !DILocalVariable(name: "ax", scope: !1814, file: !1, line: 687, type: !91)
!1814 = distinct !DILexicalBlock(scope: !1808, file: !1, line: 686, column: 3)
!1815 = !DILocation(line: 687, column: 18, scope: !1814)
!1816 = !DILocation(line: 687, column: 28, scope: !1814)
!1817 = !DILocation(line: 687, column: 23, scope: !1814)
!1818 = !DILocation(line: 689, column: 8, scope: !1819)
!1819 = distinct !DILexicalBlock(scope: !1814, file: !1, line: 689, column: 8)
!1820 = !DILocation(line: 689, column: 11, scope: !1819)
!1821 = !DILocation(line: 689, column: 8, scope: !1814)
!1822 = !DILocation(line: 694, column: 40, scope: !1823)
!1823 = distinct !DILexicalBlock(scope: !1819, file: !1, line: 689, column: 18)
!1824 = !DILocation(line: 694, column: 39, scope: !1823)
!1825 = !DILocation(line: 694, column: 42, scope: !1823)
!1826 = !DILocation(line: 694, column: 48, scope: !1823)
!1827 = !DILocation(line: 694, column: 14, scope: !1823)
!1828 = !DILocation(line: 694, column: 7, scope: !1823)
!1829 = !DILocation(line: 696, column: 13, scope: !1830)
!1830 = distinct !DILexicalBlock(scope: !1819, file: !1, line: 696, column: 13)
!1831 = !DILocation(line: 696, column: 16, scope: !1830)
!1832 = !DILocation(line: 696, column: 13, scope: !1819)
!1833 = !DILocation(line: 701, column: 32, scope: !1834)
!1834 = distinct !DILexicalBlock(scope: !1830, file: !1, line: 696, column: 25)
!1835 = !DILocation(line: 701, column: 30, scope: !1834)
!1836 = !DILocation(line: 701, column: 21, scope: !1834)
!1837 = !DILocation(line: 701, column: 44, scope: !1834)
!1838 = !DILocation(line: 701, column: 42, scope: !1834)
!1839 = !DILocation(line: 701, column: 35, scope: !1834)
!1840 = !DILocation(line: 701, column: 7, scope: !1834)
!1841 = !DILocation(line: 701, column: 15, scope: !1834)
!1842 = !DILocation(line: 701, column: 19, scope: !1834)
!1843 = !DILocation(line: 702, column: 50, scope: !1834)
!1844 = !DILocation(line: 702, column: 58, scope: !1834)
!1845 = !DILocation(line: 702, column: 45, scope: !1834)
!1846 = !DILocation(line: 702, column: 43, scope: !1834)
!1847 = !DILocation(line: 702, column: 7, scope: !1834)
!1848 = !DILocation(line: 702, column: 15, scope: !1834)
!1849 = !DILocation(line: 702, column: 19, scope: !1834)
!1850 = !DILocation(line: 703, column: 7, scope: !1834)
!1851 = !DILocalVariable(name: "r", scope: !1852, file: !1, line: 708, type: !91)
!1852 = distinct !DILexicalBlock(scope: !1830, file: !1, line: 705, column: 10)
!1853 = !DILocation(line: 708, column: 20, scope: !1852)
!1854 = !DILocation(line: 708, column: 29, scope: !1852)
!1855 = !DILocation(line: 708, column: 28, scope: !1852)
!1856 = !DILocalVariable(name: "s", scope: !1852, file: !1, line: 709, type: !77)
!1857 = !DILocation(line: 709, column: 21, scope: !1852)
!1858 = !DILocalVariable(name: "stat_s", scope: !1852, file: !1, line: 710, type: !51)
!1859 = !DILocation(line: 710, column: 11, scope: !1852)
!1860 = !DILocation(line: 710, column: 33, scope: !1852)
!1861 = !DILocation(line: 710, column: 20, scope: !1852)
!1862 = !DILocation(line: 711, column: 23, scope: !1852)
!1863 = !DILocation(line: 711, column: 27, scope: !1852)
!1864 = !DILocation(line: 711, column: 26, scope: !1852)
!1865 = !DILocation(line: 711, column: 7, scope: !1852)
!1866 = !DILocation(line: 711, column: 15, scope: !1852)
!1867 = !DILocation(line: 711, column: 19, scope: !1852)
!1868 = !DILocation(line: 712, column: 23, scope: !1852)
!1869 = !DILocation(line: 712, column: 27, scope: !1852)
!1870 = !DILocation(line: 712, column: 26, scope: !1852)
!1871 = !DILocation(line: 712, column: 60, scope: !1852)
!1872 = !DILocation(line: 712, column: 68, scope: !1852)
!1873 = !DILocation(line: 712, column: 55, scope: !1852)
!1874 = !DILocation(line: 712, column: 53, scope: !1852)
!1875 = !DILocation(line: 712, column: 29, scope: !1852)
!1876 = !DILocation(line: 712, column: 7, scope: !1852)
!1877 = !DILocation(line: 712, column: 15, scope: !1852)
!1878 = !DILocation(line: 712, column: 19, scope: !1852)
!1879 = !DILocation(line: 713, column: 14, scope: !1852)
!1880 = !DILocation(line: 713, column: 7, scope: !1852)
!1881 = !DILocation(line: 716, column: 1, scope: !1808)
!1882 = distinct !DISubprogram(name: "gsl_sf_sin", scope: !1, file: !1, line: 724, type: !1883, isLocal: false, isDefinition: true, scopeLine: 725, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !83)
!1883 = !DISubroutineType(types: !1884)
!1884 = !{!49, !91}
!1885 = !DILocalVariable(name: "x", arg: 1, scope: !1882, file: !1, line: 724, type: !91)
!1886 = !DILocation(line: 724, column: 32, scope: !1882)
!1887 = !DILocalVariable(name: "result", scope: !1882, file: !1, line: 726, type: !77)
!1888 = !DILocation(line: 726, column: 3, scope: !1882)
!1889 = !DILocalVariable(name: "status", scope: !1882, file: !1, line: 726, type: !51)
!1890 = !DILocation(line: 726, column: 3, scope: !1891)
!1891 = distinct !DILexicalBlock(scope: !1882, file: !1, line: 726, column: 3)
!1892 = !DILocation(line: 726, column: 3, scope: !1893)
!1893 = !DILexicalBlockFile(scope: !1894, file: !1, discriminator: 1)
!1894 = distinct !DILexicalBlock(scope: !1891, file: !1, line: 726, column: 3)
!1895 = distinct !{!1895, !1896}
!1896 = !DILocation(line: 726, column: 3, scope: !1894)
!1897 = !DILocation(line: 726, column: 3, scope: !1898)
!1898 = !DILexicalBlockFile(scope: !1899, file: !1, discriminator: 2)
!1899 = distinct !DILexicalBlock(scope: !1894, file: !1, line: 726, column: 3)
!1900 = !DILocation(line: 726, column: 3, scope: !1901)
!1901 = !DILexicalBlockFile(scope: !1894, file: !1, discriminator: 3)
!1902 = !DILocation(line: 726, column: 3, scope: !1903)
!1903 = !DILexicalBlockFile(scope: !1882, file: !1, discriminator: 4)
!1904 = !DILocation(line: 727, column: 1, scope: !1882)
!1905 = distinct !DISubprogram(name: "gsl_sf_cos", scope: !1, file: !1, line: 729, type: !1883, isLocal: false, isDefinition: true, scopeLine: 730, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !83)
!1906 = !DILocalVariable(name: "x", arg: 1, scope: !1905, file: !1, line: 729, type: !91)
!1907 = !DILocation(line: 729, column: 32, scope: !1905)
!1908 = !DILocalVariable(name: "result", scope: !1905, file: !1, line: 731, type: !77)
!1909 = !DILocation(line: 731, column: 3, scope: !1905)
!1910 = !DILocalVariable(name: "status", scope: !1905, file: !1, line: 731, type: !51)
!1911 = !DILocation(line: 731, column: 3, scope: !1912)
!1912 = distinct !DILexicalBlock(scope: !1905, file: !1, line: 731, column: 3)
!1913 = !DILocation(line: 731, column: 3, scope: !1914)
!1914 = !DILexicalBlockFile(scope: !1915, file: !1, discriminator: 1)
!1915 = distinct !DILexicalBlock(scope: !1912, file: !1, line: 731, column: 3)
!1916 = distinct !{!1916, !1917}
!1917 = !DILocation(line: 731, column: 3, scope: !1915)
!1918 = !DILocation(line: 731, column: 3, scope: !1919)
!1919 = !DILexicalBlockFile(scope: !1920, file: !1, discriminator: 2)
!1920 = distinct !DILexicalBlock(scope: !1915, file: !1, line: 731, column: 3)
!1921 = !DILocation(line: 731, column: 3, scope: !1922)
!1922 = !DILexicalBlockFile(scope: !1915, file: !1, discriminator: 3)
!1923 = !DILocation(line: 731, column: 3, scope: !1924)
!1924 = !DILexicalBlockFile(scope: !1905, file: !1, discriminator: 4)
!1925 = !DILocation(line: 732, column: 1, scope: !1905)
!1926 = distinct !DISubprogram(name: "gsl_sf_hypot", scope: !1, file: !1, line: 734, type: !1927, isLocal: false, isDefinition: true, scopeLine: 735, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !83)
!1927 = !DISubroutineType(types: !1928)
!1928 = !{!49, !91, !91}
!1929 = !DILocalVariable(name: "x", arg: 1, scope: !1926, file: !1, line: 734, type: !91)
!1930 = !DILocation(line: 734, column: 34, scope: !1926)
!1931 = !DILocalVariable(name: "y", arg: 2, scope: !1926, file: !1, line: 734, type: !91)
!1932 = !DILocation(line: 734, column: 50, scope: !1926)
!1933 = !DILocalVariable(name: "result", scope: !1926, file: !1, line: 736, type: !77)
!1934 = !DILocation(line: 736, column: 3, scope: !1926)
!1935 = !DILocalVariable(name: "status", scope: !1926, file: !1, line: 736, type: !51)
!1936 = !DILocation(line: 736, column: 3, scope: !1937)
!1937 = distinct !DILexicalBlock(scope: !1926, file: !1, line: 736, column: 3)
!1938 = !DILocation(line: 736, column: 3, scope: !1939)
!1939 = !DILexicalBlockFile(scope: !1940, file: !1, discriminator: 1)
!1940 = distinct !DILexicalBlock(scope: !1937, file: !1, line: 736, column: 3)
!1941 = distinct !{!1941, !1942}
!1942 = !DILocation(line: 736, column: 3, scope: !1940)
!1943 = !DILocation(line: 736, column: 3, scope: !1944)
!1944 = !DILexicalBlockFile(scope: !1945, file: !1, discriminator: 2)
!1945 = distinct !DILexicalBlock(scope: !1940, file: !1, line: 736, column: 3)
!1946 = !DILocation(line: 736, column: 3, scope: !1947)
!1947 = !DILexicalBlockFile(scope: !1940, file: !1, discriminator: 3)
!1948 = !DILocation(line: 736, column: 3, scope: !1949)
!1949 = !DILexicalBlockFile(scope: !1926, file: !1, discriminator: 4)
!1950 = !DILocation(line: 737, column: 1, scope: !1926)
!1951 = distinct !DISubprogram(name: "gsl_sf_lnsinh", scope: !1, file: !1, line: 739, type: !1883, isLocal: false, isDefinition: true, scopeLine: 740, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !83)
!1952 = !DILocalVariable(name: "x", arg: 1, scope: !1951, file: !1, line: 739, type: !91)
!1953 = !DILocation(line: 739, column: 35, scope: !1951)
!1954 = !DILocalVariable(name: "result", scope: !1951, file: !1, line: 741, type: !77)
!1955 = !DILocation(line: 741, column: 3, scope: !1951)
!1956 = !DILocalVariable(name: "status", scope: !1951, file: !1, line: 741, type: !51)
!1957 = !DILocation(line: 741, column: 3, scope: !1958)
!1958 = distinct !DILexicalBlock(scope: !1951, file: !1, line: 741, column: 3)
!1959 = !DILocation(line: 741, column: 3, scope: !1960)
!1960 = !DILexicalBlockFile(scope: !1961, file: !1, discriminator: 1)
!1961 = distinct !DILexicalBlock(scope: !1958, file: !1, line: 741, column: 3)
!1962 = distinct !{!1962, !1963}
!1963 = !DILocation(line: 741, column: 3, scope: !1961)
!1964 = !DILocation(line: 741, column: 3, scope: !1965)
!1965 = !DILexicalBlockFile(scope: !1966, file: !1, discriminator: 2)
!1966 = distinct !DILexicalBlock(scope: !1961, file: !1, line: 741, column: 3)
!1967 = !DILocation(line: 741, column: 3, scope: !1968)
!1968 = !DILexicalBlockFile(scope: !1961, file: !1, discriminator: 3)
!1969 = !DILocation(line: 741, column: 3, scope: !1970)
!1970 = !DILexicalBlockFile(scope: !1951, file: !1, discriminator: 4)
!1971 = !DILocation(line: 742, column: 1, scope: !1951)
!1972 = distinct !DISubprogram(name: "gsl_sf_lncosh", scope: !1, file: !1, line: 744, type: !1883, isLocal: false, isDefinition: true, scopeLine: 745, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !83)
!1973 = !DILocalVariable(name: "x", arg: 1, scope: !1972, file: !1, line: 744, type: !91)
!1974 = !DILocation(line: 744, column: 35, scope: !1972)
!1975 = !DILocalVariable(name: "result", scope: !1972, file: !1, line: 746, type: !77)
!1976 = !DILocation(line: 746, column: 3, scope: !1972)
!1977 = !DILocalVariable(name: "status", scope: !1972, file: !1, line: 746, type: !51)
!1978 = !DILocation(line: 746, column: 3, scope: !1979)
!1979 = distinct !DILexicalBlock(scope: !1972, file: !1, line: 746, column: 3)
!1980 = !DILocation(line: 746, column: 3, scope: !1981)
!1981 = !DILexicalBlockFile(scope: !1982, file: !1, discriminator: 1)
!1982 = distinct !DILexicalBlock(scope: !1979, file: !1, line: 746, column: 3)
!1983 = distinct !{!1983, !1984}
!1984 = !DILocation(line: 746, column: 3, scope: !1982)
!1985 = !DILocation(line: 746, column: 3, scope: !1986)
!1986 = !DILexicalBlockFile(scope: !1987, file: !1, discriminator: 2)
!1987 = distinct !DILexicalBlock(scope: !1982, file: !1, line: 746, column: 3)
!1988 = !DILocation(line: 746, column: 3, scope: !1989)
!1989 = !DILexicalBlockFile(scope: !1982, file: !1, discriminator: 3)
!1990 = !DILocation(line: 746, column: 3, scope: !1991)
!1991 = !DILexicalBlockFile(scope: !1972, file: !1, discriminator: 4)
!1992 = !DILocation(line: 747, column: 1, scope: !1972)
!1993 = distinct !DISubprogram(name: "gsl_sf_angle_restrict_symm", scope: !1, file: !1, line: 749, type: !1883, isLocal: false, isDefinition: true, scopeLine: 750, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !83)
!1994 = !DILocalVariable(name: "theta", arg: 1, scope: !1993, file: !1, line: 749, type: !91)
!1995 = !DILocation(line: 749, column: 48, scope: !1993)
!1996 = !DILocalVariable(name: "result", scope: !1993, file: !1, line: 751, type: !49)
!1997 = !DILocation(line: 751, column: 10, scope: !1993)
!1998 = !DILocation(line: 751, column: 19, scope: !1993)
!1999 = !DILocalVariable(name: "status", scope: !1993, file: !1, line: 752, type: !51)
!2000 = !DILocation(line: 752, column: 3, scope: !1993)
!2001 = !DILocation(line: 752, column: 3, scope: !2002)
!2002 = distinct !DILexicalBlock(scope: !1993, file: !1, line: 752, column: 3)
!2003 = !DILocation(line: 752, column: 3, scope: !2004)
!2004 = !DILexicalBlockFile(scope: !2005, file: !1, discriminator: 1)
!2005 = distinct !DILexicalBlock(scope: !2002, file: !1, line: 752, column: 3)
!2006 = distinct !{!2006, !2007}
!2007 = !DILocation(line: 752, column: 3, scope: !2005)
!2008 = !DILocation(line: 752, column: 3, scope: !2009)
!2009 = !DILexicalBlockFile(scope: !2010, file: !1, discriminator: 2)
!2010 = distinct !DILexicalBlock(scope: !2005, file: !1, line: 752, column: 3)
!2011 = !DILocation(line: 752, column: 3, scope: !2012)
!2012 = !DILexicalBlockFile(scope: !2005, file: !1, discriminator: 3)
!2013 = !DILocation(line: 752, column: 3, scope: !2014)
!2014 = !DILexicalBlockFile(scope: !1993, file: !1, discriminator: 4)
!2015 = !DILocation(line: 753, column: 1, scope: !1993)
!2016 = distinct !DISubprogram(name: "gsl_sf_angle_restrict_pos", scope: !1, file: !1, line: 755, type: !1883, isLocal: false, isDefinition: true, scopeLine: 756, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !83)
!2017 = !DILocalVariable(name: "theta", arg: 1, scope: !2016, file: !1, line: 755, type: !91)
!2018 = !DILocation(line: 755, column: 47, scope: !2016)
!2019 = !DILocalVariable(name: "result", scope: !2016, file: !1, line: 757, type: !49)
!2020 = !DILocation(line: 757, column: 10, scope: !2016)
!2021 = !DILocation(line: 757, column: 19, scope: !2016)
!2022 = !DILocalVariable(name: "status", scope: !2016, file: !1, line: 758, type: !51)
!2023 = !DILocation(line: 758, column: 3, scope: !2016)
!2024 = !DILocation(line: 758, column: 3, scope: !2025)
!2025 = distinct !DILexicalBlock(scope: !2016, file: !1, line: 758, column: 3)
!2026 = !DILocation(line: 758, column: 3, scope: !2027)
!2027 = !DILexicalBlockFile(scope: !2028, file: !1, discriminator: 1)
!2028 = distinct !DILexicalBlock(scope: !2025, file: !1, line: 758, column: 3)
!2029 = distinct !{!2029, !2030}
!2030 = !DILocation(line: 758, column: 3, scope: !2028)
!2031 = !DILocation(line: 758, column: 3, scope: !2032)
!2032 = !DILexicalBlockFile(scope: !2033, file: !1, discriminator: 2)
!2033 = distinct !DILexicalBlock(scope: !2028, file: !1, line: 758, column: 3)
!2034 = !DILocation(line: 758, column: 3, scope: !2035)
!2035 = !DILexicalBlockFile(scope: !2028, file: !1, discriminator: 3)
!2036 = !DILocation(line: 758, column: 3, scope: !2037)
!2037 = !DILexicalBlockFile(scope: !2016, file: !1, discriminator: 4)
!2038 = !DILocation(line: 759, column: 1, scope: !2016)
!2039 = distinct !DISubprogram(name: "gsl_sf_sinc", scope: !1, file: !1, line: 768, type: !1883, isLocal: false, isDefinition: true, scopeLine: 769, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !83)
!2040 = !DILocalVariable(name: "x", arg: 1, scope: !2039, file: !1, line: 768, type: !91)
!2041 = !DILocation(line: 768, column: 33, scope: !2039)
!2042 = !DILocalVariable(name: "result", scope: !2039, file: !1, line: 770, type: !77)
!2043 = !DILocation(line: 770, column: 3, scope: !2039)
!2044 = !DILocalVariable(name: "status", scope: !2039, file: !1, line: 770, type: !51)
!2045 = !DILocation(line: 770, column: 3, scope: !2046)
!2046 = distinct !DILexicalBlock(scope: !2039, file: !1, line: 770, column: 3)
!2047 = !DILocation(line: 770, column: 3, scope: !2048)
!2048 = !DILexicalBlockFile(scope: !2049, file: !1, discriminator: 1)
!2049 = distinct !DILexicalBlock(scope: !2046, file: !1, line: 770, column: 3)
!2050 = distinct !{!2050, !2051}
!2051 = !DILocation(line: 770, column: 3, scope: !2049)
!2052 = !DILocation(line: 770, column: 3, scope: !2053)
!2053 = !DILexicalBlockFile(scope: !2054, file: !1, discriminator: 2)
!2054 = distinct !DILexicalBlock(scope: !2049, file: !1, line: 770, column: 3)
!2055 = !DILocation(line: 770, column: 3, scope: !2056)
!2056 = !DILexicalBlockFile(scope: !2049, file: !1, discriminator: 3)
!2057 = !DILocation(line: 770, column: 3, scope: !2058)
!2058 = !DILexicalBlockFile(scope: !2039, file: !1, discriminator: 4)
!2059 = !DILocation(line: 771, column: 1, scope: !2039)
