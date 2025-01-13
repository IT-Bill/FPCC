; ModuleID = 'transport.c'
source_filename = "transport.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.cheb_series_struct = type { double*, i32, double, double, i32 }
%struct.gsl_sf_result_struct = type { double, double }

@.str = private unnamed_addr constant [13 x i8] c"domain error\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"transport.c\00", align 1
@transport2_cs = internal global %struct.cheb_series_struct { double* getelementptr inbounds ([18 x double], [18 x double]* @transport2_data, i32 0, i32 0), i32 17, double -1.000000e+00, double 1.000000e+00, i32 9 }, align 8
@.str.2 = private unnamed_addr constant [10 x i8] c"underflow\00", align 1
@transport3_cs = internal global %struct.cheb_series_struct { double* getelementptr inbounds ([18 x double], [18 x double]* @transport3_data, i32 0, i32 0), i32 17, double -1.000000e+00, double 1.000000e+00, i32 9 }, align 8
@transport4_cs = internal global %struct.cheb_series_struct { double* getelementptr inbounds ([18 x double], [18 x double]* @transport4_data, i32 0, i32 0), i32 17, double -1.000000e+00, double 1.000000e+00, i32 9 }, align 8
@transport5_cs = internal global %struct.cheb_series_struct { double* getelementptr inbounds ([18 x double], [18 x double]* @transport5_data, i32 0, i32 0), i32 17, double -1.000000e+00, double 1.000000e+00, i32 9 }, align 8
@.str.3 = private unnamed_addr constant [33 x i8] c"gsl_sf_transport_2_e(x, &result)\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"gsl_sf_transport_3_e(x, &result)\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"gsl_sf_transport_4_e(x, &result)\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"gsl_sf_transport_5_e(x, &result)\00", align 1
@transport2_data = internal global [18 x double] [double 0x3FFABF87E1C2EC5A, double 0xBFC2E8FE05B7962E, double 0x3F8E5AAC37970104, double 0xBF5741F3FCD8EC6D, double 0x3F21200673AC48C2, double 0xBEE891C0FF6AB45C, double 0x3EB156342B6F95A3, double 0xBE7835E3255CABA5, double 0x3E40C9D5DA57D05B, double 0xBE072C952CD0DB82, double 0x3DCFE205175455EF, double 0xBD95E1157E634485, double 4.259610e-13, double -3.642200e-14, double 3.111000e-15, double -2.650000e-16, double 2.300000e-17, double -1.900000e-18], align 16
@transport3_data = internal global [18 x double] [double 0x3FE86268210BF994, double 0xBFBB0D7A0737D22F, double 0x3F8887D23DA99021, double 0xBF53E591B41BDEEF, double 0x3F1E47BE4B1355CF, double 0xBEE630F3EBFC4735, double 0x3EAFCAAC8324D282, double 0xBE767277EA433DA4, double 0x3E3F666E33A011A8, double 0xBE05D20AD0633D40, double 0x3DCE30271CB6635B, double 0xBD94CFEA591C410C, double 4.067695e-13, double -3.489710e-14, double 2.989200e-15, double -2.560000e-16, double 2.190000e-17, double -1.900000e-18], align 16
@transport4_data = internal global [18 x double] [double 0x3FDEC4B96CE072D7, double 0xBFB4EDD0F63A372D, double 0x3F84890A0D717976, double 0xBF515DAF65D257C9, double 0x3F1B1E74322AC8DA, double 0xBEE439BA7381C78A, double 0x3EAD585D8DBDE38E, double 0xBE74EB745E2FBF7D, double 0x3E3D7C2282A13B94, double 0xBE049D474D98CD42, double 0x3DCCA993D8D1E82A, double 0xBD93D7E0D24F3E5F, double 3.892159e-13, double -3.349360e-14, double 2.876700e-15, double -2.467000e-16, double 2.110000e-17, double -1.800000e-18], align 16
@transport5_data = internal global [18 x double] [double 0x3FD641FDB8C434D0, double 0xBFB10353423E261E, double 0x3F81A2AE9B8EEFF8, double 0xBF4ECA8224607386, double 0x3F188B91C4AA294E, double 0xBEE29322F19BD157, double 0x3EAB3E4BF1523CF8, double 0xBE73959CA06AE57E, double 0x3E3BC986C095CE12, double 0xBE03887E5037223C, double 0x3DCB482E98E7C80D, double -4.310940e-12, double 3.731000e-13, double -3.219800e-14, double 2.772000e-15, double -2.380000e-16, double 2.100000e-17, double -1.800000e-18], align 16

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_transport_2_e(double, %struct.gsl_sf_result_struct*) #0 !dbg !70 {
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca %struct.gsl_sf_result_struct*, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca %struct.gsl_sf_result_struct, align 8
  %9 = alloca i32, align 4
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca i32, align 4
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !82, metadata !83), !dbg !84
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %5, metadata !85, metadata !83), !dbg !86
  call void @llvm.dbg.declare(metadata double* %6, metadata !87, metadata !83), !dbg !88
  store double 0x400A51A6625307D3, double* %6, align 8, !dbg !88
  %19 = load double, double* %4, align 8, !dbg !89
  %20 = fcmp olt double %19, 0.000000e+00, !dbg !91
  br i1 %20, label %21, label %30, !dbg !92

; <label>:21:                                     ; preds = %2
  br label %22, !dbg !93, !llvm.loop !95

; <label>:22:                                     ; preds = %21
  %23 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !96
  %24 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %23, i32 0, i32 0, !dbg !96
  store double 0x7FF8000000000000, double* %24, align 8, !dbg !96
  %25 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !96
  %26 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %25, i32 0, i32 1, !dbg !96
  store double 0x7FF8000000000000, double* %26, align 8, !dbg !96
  br label %27, !dbg !96, !llvm.loop !99

; <label>:27:                                     ; preds = %22
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 178, i32 1), !dbg !101
  store i32 1, i32* %3, align 4, !dbg !101
  br label %193, !dbg !101
                                                  ; No predecessors!
  br label %29, !dbg !104

; <label>:29:                                     ; preds = %28
  br label %193, !dbg !106

; <label>:30:                                     ; preds = %2
  %31 = load double, double* %4, align 8, !dbg !107
  %32 = fcmp olt double %31, 0x3E68000000000000, !dbg !109
  br i1 %32, label %33, label %47, !dbg !110

; <label>:33:                                     ; preds = %30
  %34 = load double, double* %4, align 8, !dbg !111
  %35 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !113
  %36 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %35, i32 0, i32 0, !dbg !114
  store double %34, double* %36, align 8, !dbg !115
  %37 = load double, double* %4, align 8, !dbg !116
  %38 = call double @fabs(double %37) #1, !dbg !117
  %39 = fmul double 0x3CB0000000000000, %38, !dbg !118
  %40 = load double, double* %4, align 8, !dbg !119
  %41 = load double, double* %4, align 8, !dbg !120
  %42 = fmul double %40, %41, !dbg !121
  %43 = fdiv double %42, 2.000000e+00, !dbg !122
  %44 = fadd double %39, %43, !dbg !123
  %45 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !124
  %46 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %45, i32 0, i32 1, !dbg !125
  store double %44, double* %46, align 8, !dbg !126
  store i32 0, i32* %3, align 4, !dbg !127
  br label %193, !dbg !127

; <label>:47:                                     ; preds = %30
  %48 = load double, double* %4, align 8, !dbg !128
  %49 = fcmp ole double %48, 4.000000e+00, !dbg !130
  br i1 %49, label %50, label %80, !dbg !131

; <label>:50:                                     ; preds = %47
  call void @llvm.dbg.declare(metadata double* %7, metadata !132, metadata !83), !dbg !134
  %51 = load double, double* %4, align 8, !dbg !135
  %52 = load double, double* %4, align 8, !dbg !136
  %53 = fmul double %51, %52, !dbg !137
  %54 = fdiv double %53, 8.000000e+00, !dbg !138
  %55 = fsub double %54, 5.000000e-01, !dbg !139
  %56 = fsub double %55, 5.000000e-01, !dbg !140
  store double %56, double* %7, align 8, !dbg !134
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %8, metadata !141, metadata !83), !dbg !142
  %57 = load double, double* %7, align 8, !dbg !143
  %58 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @transport2_cs, double %57, %struct.gsl_sf_result_struct* %8), !dbg !144
  %59 = load double, double* %4, align 8, !dbg !145
  %60 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 0, !dbg !146
  %61 = load double, double* %60, align 8, !dbg !146
  %62 = fmul double %59, %61, !dbg !147
  %63 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !148
  %64 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %63, i32 0, i32 0, !dbg !149
  store double %62, double* %64, align 8, !dbg !150
  %65 = load double, double* %4, align 8, !dbg !151
  %66 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 1, !dbg !152
  %67 = load double, double* %66, align 8, !dbg !152
  %68 = fmul double %65, %67, !dbg !153
  %69 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !154
  %70 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %69, i32 0, i32 1, !dbg !155
  store double %68, double* %70, align 8, !dbg !156
  %71 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !157
  %72 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %71, i32 0, i32 0, !dbg !158
  %73 = load double, double* %72, align 8, !dbg !158
  %74 = call double @fabs(double %73) #1, !dbg !159
  %75 = fmul double 0x3CC0000000000000, %74, !dbg !160
  %76 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !161
  %77 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %76, i32 0, i32 1, !dbg !162
  %78 = load double, double* %77, align 8, !dbg !163
  %79 = fadd double %78, %75, !dbg !163
  store double %79, double* %77, align 8, !dbg !163
  store i32 0, i32* %3, align 4, !dbg !164
  br label %193, !dbg !164

; <label>:80:                                     ; preds = %47
  %81 = load double, double* %4, align 8, !dbg !165
  %82 = fcmp olt double %81, 0x404205966F2B4F12, !dbg !167
  br i1 %82, label %83, label %125, !dbg !168

; <label>:83:                                     ; preds = %80
  call void @llvm.dbg.declare(metadata i32* %9, metadata !169, metadata !83), !dbg !172
  %84 = load double, double* %4, align 8, !dbg !173
  %85 = fdiv double 0x404205966F2B4F12, %84, !dbg !174
  %86 = fptosi double %85 to i32, !dbg !175
  %87 = add nsw i32 %86, 1, !dbg !176
  store i32 %87, i32* %9, align 4, !dbg !172
  call void @llvm.dbg.declare(metadata double* %10, metadata !177, metadata !83), !dbg !178
  %88 = load i32, i32* %9, align 4, !dbg !179
  %89 = load double, double* %4, align 8, !dbg !180
  %90 = fsub double -0.000000e+00, %89, !dbg !181
  %91 = call double @exp(double %90) #6, !dbg !182
  %92 = load double, double* %4, align 8, !dbg !183
  %93 = call double @transport_sumexp(i32 %88, i32 2, double %91, double %92), !dbg !184
  store double %93, double* %10, align 8, !dbg !178
  call void @llvm.dbg.declare(metadata double* %11, metadata !186, metadata !83), !dbg !187
  %94 = load double, double* %4, align 8, !dbg !188
  %95 = call double @log(double %94) #6, !dbg !189
  %96 = fmul double 2.000000e+00, %95, !dbg !190
  %97 = load double, double* %4, align 8, !dbg !191
  %98 = fsub double %96, %97, !dbg !192
  %99 = load double, double* %10, align 8, !dbg !193
  %100 = call double @log(double %99) #6, !dbg !194
  %101 = fadd double %98, %100, !dbg !195
  store double %101, double* %11, align 8, !dbg !187
  %102 = load double, double* %11, align 8, !dbg !196
  %103 = fcmp olt double %102, 0xC04205966F2B4F12, !dbg !198
  br i1 %103, label %104, label %109, !dbg !199

; <label>:104:                                    ; preds = %83
  %105 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !200
  %106 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %105, i32 0, i32 0, !dbg !202
  store double 0x400A51A6625307D3, double* %106, align 8, !dbg !203
  %107 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !204
  %108 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %107, i32 0, i32 1, !dbg !205
  store double 0x3CDA51A6625307D3, double* %108, align 8, !dbg !206
  br label %124, !dbg !207

; <label>:109:                                    ; preds = %83
  call void @llvm.dbg.declare(metadata double* %12, metadata !208, metadata !83), !dbg !210
  %110 = load double, double* %11, align 8, !dbg !211
  %111 = call double @exp(double %110) #6, !dbg !212
  store double %111, double* %12, align 8, !dbg !210
  %112 = load double, double* %12, align 8, !dbg !213
  %113 = fsub double 0x400A51A6625307D3, %112, !dbg !214
  %114 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !215
  %115 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %114, i32 0, i32 0, !dbg !216
  store double %113, double* %115, align 8, !dbg !217
  %116 = load double, double* %11, align 8, !dbg !218
  %117 = call double @fabs(double %116) #1, !dbg !219
  %118 = load double, double* %12, align 8, !dbg !220
  %119 = fmul double %117, %118, !dbg !221
  %120 = fadd double 0x400A51A6625307D3, %119, !dbg !222
  %121 = fmul double 0x3CC0000000000000, %120, !dbg !223
  %122 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !224
  %123 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %122, i32 0, i32 1, !dbg !225
  store double %121, double* %123, align 8, !dbg !226
  br label %124

; <label>:124:                                    ; preds = %109, %104
  store i32 0, i32* %3, align 4, !dbg !227
  br label %193, !dbg !227

; <label>:125:                                    ; preds = %80
  %126 = load double, double* %4, align 8, !dbg !228
  %127 = fcmp olt double %126, 0x4340000000000000, !dbg !230
  br i1 %127, label %128, label %163, !dbg !231

; <label>:128:                                    ; preds = %125
  call void @llvm.dbg.declare(metadata i32* %13, metadata !232, metadata !83), !dbg !234
  store i32 1, i32* %13, align 4, !dbg !234
  call void @llvm.dbg.declare(metadata double* %14, metadata !235, metadata !83), !dbg !236
  %129 = load double, double* %4, align 8, !dbg !237
  %130 = call double @transport_sumexp(i32 1, i32 2, double 1.000000e+00, double %129), !dbg !238
  store double %130, double* %14, align 8, !dbg !236
  call void @llvm.dbg.declare(metadata double* %15, metadata !239, metadata !83), !dbg !240
  %131 = load double, double* %4, align 8, !dbg !241
  %132 = call double @log(double %131) #6, !dbg !242
  %133 = fmul double 2.000000e+00, %132, !dbg !243
  %134 = load double, double* %4, align 8, !dbg !244
  %135 = fsub double %133, %134, !dbg !245
  %136 = load double, double* %14, align 8, !dbg !246
  %137 = call double @log(double %136) #6, !dbg !247
  %138 = fadd double %135, %137, !dbg !249
  store double %138, double* %15, align 8, !dbg !240
  %139 = load double, double* %15, align 8, !dbg !250
  %140 = fcmp olt double %139, 0xC04205966F2B4F12, !dbg !252
  br i1 %140, label %141, label %146, !dbg !253

; <label>:141:                                    ; preds = %128
  %142 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !254
  %143 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %142, i32 0, i32 0, !dbg !256
  store double 0x400A51A6625307D3, double* %143, align 8, !dbg !257
  %144 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !258
  %145 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %144, i32 0, i32 1, !dbg !259
  store double 0x3CDA51A6625307D3, double* %145, align 8, !dbg !260
  br label %162, !dbg !261

; <label>:146:                                    ; preds = %128
  call void @llvm.dbg.declare(metadata double* %16, metadata !262, metadata !83), !dbg !264
  %147 = load double, double* %15, align 8, !dbg !265
  %148 = call double @exp(double %147) #6, !dbg !266
  store double %148, double* %16, align 8, !dbg !264
  %149 = load double, double* %16, align 8, !dbg !267
  %150 = fsub double 0x400A51A6625307D3, %149, !dbg !268
  %151 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !269
  %152 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %151, i32 0, i32 0, !dbg !270
  store double %150, double* %152, align 8, !dbg !271
  %153 = load double, double* %15, align 8, !dbg !272
  %154 = call double @fabs(double %153) #1, !dbg !273
  %155 = fadd double %154, 1.000000e+00, !dbg !274
  %156 = load double, double* %16, align 8, !dbg !275
  %157 = fmul double %155, %156, !dbg !276
  %158 = fadd double 0x400A51A6625307D3, %157, !dbg !277
  %159 = fmul double 0x3CC0000000000000, %158, !dbg !278
  %160 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !279
  %161 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %160, i32 0, i32 1, !dbg !280
  store double %159, double* %161, align 8, !dbg !281
  br label %162

; <label>:162:                                    ; preds = %146, %141
  store i32 0, i32* %3, align 4, !dbg !282
  br label %193, !dbg !282

; <label>:163:                                    ; preds = %125
  call void @llvm.dbg.declare(metadata double* %17, metadata !283, metadata !83), !dbg !285
  %164 = load double, double* %4, align 8, !dbg !286
  %165 = call double @log(double %164) #6, !dbg !287
  %166 = fmul double 2.000000e+00, %165, !dbg !288
  %167 = load double, double* %4, align 8, !dbg !289
  %168 = fsub double %166, %167, !dbg !290
  store double %168, double* %17, align 8, !dbg !285
  %169 = load double, double* %17, align 8, !dbg !291
  %170 = fcmp olt double %169, 0xC04205966F2B4F12, !dbg !293
  br i1 %170, label %171, label %176, !dbg !294

; <label>:171:                                    ; preds = %163
  %172 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !295
  %173 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %172, i32 0, i32 0, !dbg !297
  store double 0x400A51A6625307D3, double* %173, align 8, !dbg !298
  %174 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !299
  %175 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %174, i32 0, i32 1, !dbg !300
  store double 0x3CDA51A6625307D3, double* %175, align 8, !dbg !301
  br label %192, !dbg !302

; <label>:176:                                    ; preds = %163
  call void @llvm.dbg.declare(metadata double* %18, metadata !303, metadata !83), !dbg !305
  %177 = load double, double* %17, align 8, !dbg !306
  %178 = call double @exp(double %177) #6, !dbg !307
  store double %178, double* %18, align 8, !dbg !305
  %179 = load double, double* %18, align 8, !dbg !308
  %180 = fsub double 0x400A51A6625307D3, %179, !dbg !309
  %181 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !310
  %182 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %181, i32 0, i32 0, !dbg !311
  store double %180, double* %182, align 8, !dbg !312
  %183 = load double, double* %17, align 8, !dbg !313
  %184 = call double @fabs(double %183) #1, !dbg !314
  %185 = fadd double %184, 1.000000e+00, !dbg !315
  %186 = load double, double* %18, align 8, !dbg !316
  %187 = fmul double %185, %186, !dbg !317
  %188 = fadd double 0x400A51A6625307D3, %187, !dbg !318
  %189 = fmul double 0x3CC0000000000000, %188, !dbg !319
  %190 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !320
  %191 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %190, i32 0, i32 1, !dbg !321
  store double %189, double* %191, align 8, !dbg !322
  br label %192

; <label>:192:                                    ; preds = %176, %171
  store i32 0, i32* %3, align 4, !dbg !323
  br label %193, !dbg !323

; <label>:193:                                    ; preds = %27, %33, %50, %124, %162, %192, %29
  %194 = load i32, i32* %3, align 4, !dbg !324
  ret i32 %194, !dbg !324
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @gsl_error(i8*, i8*, i32, i32) #2

; Function Attrs: nounwind readnone
declare double @fabs(double) #3

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @cheb_eval_e(%struct.cheb_series_struct*, double, %struct.gsl_sf_result_struct*) #4 !dbg !325 {
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
  call void @llvm.dbg.declare(metadata %struct.cheb_series_struct** %4, metadata !331, metadata !83), !dbg !332
  store double %1, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !333, metadata !83), !dbg !334
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %6, metadata !335, metadata !83), !dbg !336
  call void @llvm.dbg.declare(metadata i32* %7, metadata !337, metadata !83), !dbg !338
  call void @llvm.dbg.declare(metadata double* %8, metadata !339, metadata !83), !dbg !340
  store double 0.000000e+00, double* %8, align 8, !dbg !340
  call void @llvm.dbg.declare(metadata double* %9, metadata !341, metadata !83), !dbg !342
  store double 0.000000e+00, double* %9, align 8, !dbg !342
  call void @llvm.dbg.declare(metadata double* %10, metadata !343, metadata !83), !dbg !344
  %15 = load double, double* %5, align 8, !dbg !345
  %16 = fmul double 2.000000e+00, %15, !dbg !346
  %17 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !347
  %18 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %17, i32 0, i32 2, !dbg !348
  %19 = load double, double* %18, align 8, !dbg !348
  %20 = fsub double %16, %19, !dbg !349
  %21 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !350
  %22 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %21, i32 0, i32 3, !dbg !351
  %23 = load double, double* %22, align 8, !dbg !351
  %24 = fsub double %20, %23, !dbg !352
  %25 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !353
  %26 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %25, i32 0, i32 3, !dbg !354
  %27 = load double, double* %26, align 8, !dbg !354
  %28 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !355
  %29 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %28, i32 0, i32 2, !dbg !356
  %30 = load double, double* %29, align 8, !dbg !356
  %31 = fsub double %27, %30, !dbg !357
  %32 = fdiv double %24, %31, !dbg !358
  store double %32, double* %10, align 8, !dbg !344
  call void @llvm.dbg.declare(metadata double* %11, metadata !359, metadata !83), !dbg !360
  %33 = load double, double* %10, align 8, !dbg !361
  %34 = fmul double 2.000000e+00, %33, !dbg !362
  store double %34, double* %11, align 8, !dbg !360
  call void @llvm.dbg.declare(metadata double* %12, metadata !363, metadata !83), !dbg !364
  store double 0.000000e+00, double* %12, align 8, !dbg !364
  %35 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !365
  %36 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %35, i32 0, i32 1, !dbg !367
  %37 = load i32, i32* %36, align 8, !dbg !367
  store i32 %37, i32* %7, align 4, !dbg !368
  br label %38, !dbg !369

; <label>:38:                                     ; preds = %75, %3
  %39 = load i32, i32* %7, align 4, !dbg !370
  %40 = icmp sge i32 %39, 1, !dbg !373
  br i1 %40, label %41, label %78, !dbg !374

; <label>:41:                                     ; preds = %38
  call void @llvm.dbg.declare(metadata double* %13, metadata !375, metadata !83), !dbg !377
  %42 = load double, double* %8, align 8, !dbg !378
  store double %42, double* %13, align 8, !dbg !377
  %43 = load double, double* %11, align 8, !dbg !379
  %44 = load double, double* %8, align 8, !dbg !380
  %45 = fmul double %43, %44, !dbg !381
  %46 = load double, double* %9, align 8, !dbg !382
  %47 = fsub double %45, %46, !dbg !383
  %48 = load i32, i32* %7, align 4, !dbg !384
  %49 = sext i32 %48 to i64, !dbg !385
  %50 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !385
  %51 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %50, i32 0, i32 0, !dbg !386
  %52 = load double*, double** %51, align 8, !dbg !386
  %53 = getelementptr inbounds double, double* %52, i64 %49, !dbg !385
  %54 = load double, double* %53, align 8, !dbg !385
  %55 = fadd double %47, %54, !dbg !387
  store double %55, double* %8, align 8, !dbg !388
  %56 = load double, double* %11, align 8, !dbg !389
  %57 = load double, double* %13, align 8, !dbg !390
  %58 = fmul double %56, %57, !dbg !391
  %59 = call double @fabs(double %58) #1, !dbg !392
  %60 = load double, double* %9, align 8, !dbg !393
  %61 = call double @fabs(double %60) #1, !dbg !394
  %62 = fadd double %59, %61, !dbg !396
  %63 = load i32, i32* %7, align 4, !dbg !397
  %64 = sext i32 %63 to i64, !dbg !398
  %65 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !398
  %66 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %65, i32 0, i32 0, !dbg !399
  %67 = load double*, double** %66, align 8, !dbg !399
  %68 = getelementptr inbounds double, double* %67, i64 %64, !dbg !398
  %69 = load double, double* %68, align 8, !dbg !398
  %70 = call double @fabs(double %69) #1, !dbg !400
  %71 = fadd double %62, %70, !dbg !402
  %72 = load double, double* %12, align 8, !dbg !403
  %73 = fadd double %72, %71, !dbg !403
  store double %73, double* %12, align 8, !dbg !403
  %74 = load double, double* %13, align 8, !dbg !404
  store double %74, double* %9, align 8, !dbg !405
  br label %75, !dbg !406

; <label>:75:                                     ; preds = %41
  %76 = load i32, i32* %7, align 4, !dbg !407
  %77 = add nsw i32 %76, -1, !dbg !407
  store i32 %77, i32* %7, align 4, !dbg !407
  br label %38, !dbg !409, !llvm.loop !410

; <label>:78:                                     ; preds = %38
  call void @llvm.dbg.declare(metadata double* %14, metadata !412, metadata !83), !dbg !414
  %79 = load double, double* %8, align 8, !dbg !415
  store double %79, double* %14, align 8, !dbg !414
  %80 = load double, double* %10, align 8, !dbg !416
  %81 = load double, double* %8, align 8, !dbg !417
  %82 = fmul double %80, %81, !dbg !418
  %83 = load double, double* %9, align 8, !dbg !419
  %84 = fsub double %82, %83, !dbg !420
  %85 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !421
  %86 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %85, i32 0, i32 0, !dbg !422
  %87 = load double*, double** %86, align 8, !dbg !422
  %88 = getelementptr inbounds double, double* %87, i64 0, !dbg !421
  %89 = load double, double* %88, align 8, !dbg !421
  %90 = fmul double 5.000000e-01, %89, !dbg !423
  %91 = fadd double %84, %90, !dbg !424
  store double %91, double* %8, align 8, !dbg !425
  %92 = load double, double* %10, align 8, !dbg !426
  %93 = load double, double* %14, align 8, !dbg !427
  %94 = fmul double %92, %93, !dbg !428
  %95 = call double @fabs(double %94) #1, !dbg !429
  %96 = load double, double* %9, align 8, !dbg !430
  %97 = call double @fabs(double %96) #1, !dbg !431
  %98 = fadd double %95, %97, !dbg !433
  %99 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !434
  %100 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %99, i32 0, i32 0, !dbg !435
  %101 = load double*, double** %100, align 8, !dbg !435
  %102 = getelementptr inbounds double, double* %101, i64 0, !dbg !434
  %103 = load double, double* %102, align 8, !dbg !434
  %104 = call double @fabs(double %103) #1, !dbg !436
  %105 = fmul double 5.000000e-01, %104, !dbg !438
  %106 = fadd double %98, %105, !dbg !439
  %107 = load double, double* %12, align 8, !dbg !440
  %108 = fadd double %107, %106, !dbg !440
  store double %108, double* %12, align 8, !dbg !440
  %109 = load double, double* %8, align 8, !dbg !441
  %110 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !442
  %111 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %110, i32 0, i32 0, !dbg !443
  store double %109, double* %111, align 8, !dbg !444
  %112 = load double, double* %12, align 8, !dbg !445
  %113 = fmul double 0x3CB0000000000000, %112, !dbg !446
  %114 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !447
  %115 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %114, i32 0, i32 1, !dbg !448
  %116 = load i32, i32* %115, align 8, !dbg !448
  %117 = sext i32 %116 to i64, !dbg !449
  %118 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !449
  %119 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %118, i32 0, i32 0, !dbg !450
  %120 = load double*, double** %119, align 8, !dbg !450
  %121 = getelementptr inbounds double, double* %120, i64 %117, !dbg !449
  %122 = load double, double* %121, align 8, !dbg !449
  %123 = call double @fabs(double %122) #1, !dbg !451
  %124 = fadd double %113, %123, !dbg !452
  %125 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !453
  %126 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %125, i32 0, i32 1, !dbg !454
  store double %124, double* %126, align 8, !dbg !455
  ret i32 0, !dbg !456
}

; Function Attrs: nounwind uwtable
define internal double @transport_sumexp(i32, i32, double, double) #0 !dbg !457 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !460, metadata !83), !dbg !461
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !462, metadata !83), !dbg !463
  store double %2, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !464, metadata !83), !dbg !465
  store double %3, double* %8, align 8
  call void @llvm.dbg.declare(metadata double* %8, metadata !466, metadata !83), !dbg !467
  call void @llvm.dbg.declare(metadata double* %9, metadata !468, metadata !83), !dbg !469
  %16 = load i32, i32* %5, align 4, !dbg !470
  %17 = sitofp i32 %16 to double, !dbg !471
  store double %17, double* %9, align 8, !dbg !469
  call void @llvm.dbg.declare(metadata double* %10, metadata !472, metadata !83), !dbg !473
  store double 0.000000e+00, double* %10, align 8, !dbg !473
  call void @llvm.dbg.declare(metadata i32* %11, metadata !474, metadata !83), !dbg !475
  store i32 1, i32* %11, align 4, !dbg !476
  br label %18, !dbg !478

; <label>:18:                                     ; preds = %52, %4
  %19 = load i32, i32* %11, align 4, !dbg !479
  %20 = load i32, i32* %5, align 4, !dbg !482
  %21 = icmp sle i32 %19, %20, !dbg !483
  br i1 %21, label %22, label %55, !dbg !484

; <label>:22:                                     ; preds = %18
  call void @llvm.dbg.declare(metadata double* %12, metadata !485, metadata !83), !dbg !487
  store double 1.000000e+00, double* %12, align 8, !dbg !487
  call void @llvm.dbg.declare(metadata double* %13, metadata !488, metadata !83), !dbg !489
  %23 = load double, double* %9, align 8, !dbg !490
  %24 = load double, double* %8, align 8, !dbg !491
  %25 = fmul double %23, %24, !dbg !492
  %26 = fdiv double 1.000000e+00, %25, !dbg !493
  store double %26, double* %13, align 8, !dbg !489
  call void @llvm.dbg.declare(metadata double* %14, metadata !494, metadata !83), !dbg !495
  store double 1.000000e+00, double* %14, align 8, !dbg !495
  call void @llvm.dbg.declare(metadata i32* %15, metadata !496, metadata !83), !dbg !497
  store i32 1, i32* %15, align 4, !dbg !498
  br label %27, !dbg !500

; <label>:27:                                     ; preds = %40, %22
  %28 = load i32, i32* %15, align 4, !dbg !501
  %29 = load i32, i32* %6, align 4, !dbg !504
  %30 = icmp sle i32 %28, %29, !dbg !505
  br i1 %30, label %31, label %43, !dbg !506

; <label>:31:                                     ; preds = %27
  %32 = load double, double* %12, align 8, !dbg !507
  %33 = load double, double* %14, align 8, !dbg !509
  %34 = fmul double %32, %33, !dbg !510
  %35 = load double, double* %13, align 8, !dbg !511
  %36 = fmul double %34, %35, !dbg !512
  %37 = fadd double %36, 1.000000e+00, !dbg !513
  store double %37, double* %12, align 8, !dbg !514
  %38 = load double, double* %14, align 8, !dbg !515
  %39 = fadd double %38, 1.000000e+00, !dbg !515
  store double %39, double* %14, align 8, !dbg !515
  br label %40, !dbg !516

; <label>:40:                                     ; preds = %31
  %41 = load i32, i32* %15, align 4, !dbg !517
  %42 = add nsw i32 %41, 1, !dbg !517
  store i32 %42, i32* %15, align 4, !dbg !517
  br label %27, !dbg !519, !llvm.loop !520

; <label>:43:                                     ; preds = %27
  %44 = load double, double* %7, align 8, !dbg !522
  %45 = load double, double* %10, align 8, !dbg !523
  %46 = fmul double %45, %44, !dbg !523
  store double %46, double* %10, align 8, !dbg !523
  %47 = load double, double* %12, align 8, !dbg !524
  %48 = load double, double* %10, align 8, !dbg !525
  %49 = fadd double %48, %47, !dbg !525
  store double %49, double* %10, align 8, !dbg !525
  %50 = load double, double* %9, align 8, !dbg !526
  %51 = fsub double %50, 1.000000e+00, !dbg !526
  store double %51, double* %9, align 8, !dbg !526
  br label %52, !dbg !527

; <label>:52:                                     ; preds = %43
  %53 = load i32, i32* %11, align 4, !dbg !528
  %54 = add nsw i32 %53, 1, !dbg !528
  store i32 %54, i32* %11, align 4, !dbg !528
  br label %18, !dbg !530, !llvm.loop !531

; <label>:55:                                     ; preds = %18
  %56 = load double, double* %10, align 8, !dbg !533
  ret double %56, !dbg !534
}

; Function Attrs: nounwind
declare double @exp(double) #5

; Function Attrs: nounwind
declare double @log(double) #5

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_transport_3_e(double, %struct.gsl_sf_result_struct*) #0 !dbg !535 {
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca %struct.gsl_sf_result_struct*, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca %struct.gsl_sf_result_struct, align 8
  %10 = alloca i32, align 4
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca i32, align 4
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !536, metadata !83), !dbg !537
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %5, metadata !538, metadata !83), !dbg !539
  call void @llvm.dbg.declare(metadata double* %6, metadata !540, metadata !83), !dbg !541
  store double 0x401CD97007680932, double* %6, align 8, !dbg !541
  %20 = load double, double* %4, align 8, !dbg !542
  %21 = fcmp olt double %20, 0.000000e+00, !dbg !544
  br i1 %21, label %22, label %31, !dbg !545

; <label>:22:                                     ; preds = %2
  br label %23, !dbg !546, !llvm.loop !548

; <label>:23:                                     ; preds = %22
  %24 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !549
  %25 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %24, i32 0, i32 0, !dbg !549
  store double 0x7FF8000000000000, double* %25, align 8, !dbg !549
  %26 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !549
  %27 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %26, i32 0, i32 1, !dbg !549
  store double 0x7FF8000000000000, double* %27, align 8, !dbg !549
  br label %28, !dbg !549, !llvm.loop !552

; <label>:28:                                     ; preds = %23
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 248, i32 1), !dbg !554
  store i32 1, i32* %3, align 4, !dbg !554
  br label %211, !dbg !554
                                                  ; No predecessors!
  br label %30, !dbg !557

; <label>:30:                                     ; preds = %29
  br label %211, !dbg !559

; <label>:31:                                     ; preds = %2
  %32 = load double, double* %4, align 8, !dbg !560
  %33 = fcmp oeq double %32, 0.000000e+00, !dbg !562
  br i1 %33, label %34, label %39, !dbg !563

; <label>:34:                                     ; preds = %31
  %35 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !564
  %36 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %35, i32 0, i32 0, !dbg !566
  store double 0.000000e+00, double* %36, align 8, !dbg !567
  %37 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !568
  %38 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %37, i32 0, i32 1, !dbg !569
  store double 0.000000e+00, double* %38, align 8, !dbg !570
  store i32 0, i32* %3, align 4, !dbg !571
  br label %211, !dbg !571

; <label>:39:                                     ; preds = %31
  %40 = load double, double* %4, align 8, !dbg !572
  %41 = fcmp olt double %40, 0x3E68000000000000, !dbg !574
  br i1 %41, label %42, label %64, !dbg !575

; <label>:42:                                     ; preds = %39
  %43 = load double, double* %4, align 8, !dbg !576
  %44 = fmul double 5.000000e-01, %43, !dbg !578
  %45 = load double, double* %4, align 8, !dbg !579
  %46 = fmul double %44, %45, !dbg !580
  %47 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !581
  %48 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %47, i32 0, i32 0, !dbg !582
  store double %46, double* %48, align 8, !dbg !583
  %49 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !584
  %50 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %49, i32 0, i32 0, !dbg !585
  %51 = load double, double* %50, align 8, !dbg !585
  %52 = fmul double 0x3CC0000000000000, %51, !dbg !586
  %53 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !587
  %54 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %53, i32 0, i32 1, !dbg !588
  store double %52, double* %54, align 8, !dbg !589
  %55 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !590
  %56 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %55, i32 0, i32 0, !dbg !590
  %57 = load double, double* %56, align 8, !dbg !590
  %58 = call double @fabs(double %57) #1, !dbg !590
  %59 = fcmp olt double %58, 0x10000000000000, !dbg !590
  br i1 %59, label %60, label %63, !dbg !592

; <label>:60:                                     ; preds = %42
  br label %61, !dbg !593, !llvm.loop !595

; <label>:61:                                     ; preds = %60
  call void @gsl_error(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 258, i32 15), !dbg !596
  store i32 15, i32* %3, align 4, !dbg !596
  br label %211, !dbg !596
                                                  ; No predecessors!
  br label %63, !dbg !599

; <label>:63:                                     ; preds = %62, %42
  store i32 0, i32* %3, align 4, !dbg !601
  br label %211, !dbg !601

; <label>:64:                                     ; preds = %39
  %65 = load double, double* %4, align 8, !dbg !602
  %66 = fcmp ole double %65, 4.000000e+00, !dbg !604
  br i1 %66, label %67, label %98, !dbg !605

; <label>:67:                                     ; preds = %64
  call void @llvm.dbg.declare(metadata double* %7, metadata !606, metadata !83), !dbg !608
  %68 = load double, double* %4, align 8, !dbg !609
  %69 = load double, double* %4, align 8, !dbg !610
  %70 = fmul double %68, %69, !dbg !611
  store double %70, double* %7, align 8, !dbg !608
  call void @llvm.dbg.declare(metadata double* %8, metadata !612, metadata !83), !dbg !613
  %71 = load double, double* %7, align 8, !dbg !614
  %72 = fdiv double %71, 8.000000e+00, !dbg !615
  %73 = fsub double %72, 5.000000e-01, !dbg !616
  %74 = fsub double %73, 5.000000e-01, !dbg !617
  store double %74, double* %8, align 8, !dbg !613
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %9, metadata !618, metadata !83), !dbg !619
  %75 = load double, double* %8, align 8, !dbg !620
  %76 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @transport3_cs, double %75, %struct.gsl_sf_result_struct* %9), !dbg !621
  %77 = load double, double* %7, align 8, !dbg !622
  %78 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %9, i32 0, i32 0, !dbg !623
  %79 = load double, double* %78, align 8, !dbg !623
  %80 = fmul double %77, %79, !dbg !624
  %81 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !625
  %82 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %81, i32 0, i32 0, !dbg !626
  store double %80, double* %82, align 8, !dbg !627
  %83 = load double, double* %7, align 8, !dbg !628
  %84 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %9, i32 0, i32 1, !dbg !629
  %85 = load double, double* %84, align 8, !dbg !629
  %86 = fmul double %83, %85, !dbg !630
  %87 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !631
  %88 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %87, i32 0, i32 1, !dbg !632
  store double %86, double* %88, align 8, !dbg !633
  %89 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !634
  %90 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %89, i32 0, i32 0, !dbg !635
  %91 = load double, double* %90, align 8, !dbg !635
  %92 = call double @fabs(double %91) #1, !dbg !636
  %93 = fmul double 0x3CB0000000000000, %92, !dbg !637
  %94 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !638
  %95 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %94, i32 0, i32 1, !dbg !639
  %96 = load double, double* %95, align 8, !dbg !640
  %97 = fadd double %96, %93, !dbg !640
  store double %97, double* %95, align 8, !dbg !640
  store i32 0, i32* %3, align 4, !dbg !641
  br label %211, !dbg !641

; <label>:98:                                     ; preds = %64
  %99 = load double, double* %4, align 8, !dbg !642
  %100 = fcmp olt double %99, 0x404205966F2B4F12, !dbg !644
  br i1 %100, label %101, label %143, !dbg !645

; <label>:101:                                    ; preds = %98
  call void @llvm.dbg.declare(metadata i32* %10, metadata !646, metadata !83), !dbg !648
  %102 = load double, double* %4, align 8, !dbg !649
  %103 = fdiv double 0x404205966F2B4F12, %102, !dbg !650
  %104 = fptosi double %103 to i32, !dbg !651
  %105 = add nsw i32 %104, 1, !dbg !652
  store i32 %105, i32* %10, align 4, !dbg !648
  call void @llvm.dbg.declare(metadata double* %11, metadata !653, metadata !83), !dbg !654
  %106 = load i32, i32* %10, align 4, !dbg !655
  %107 = load double, double* %4, align 8, !dbg !656
  %108 = fsub double -0.000000e+00, %107, !dbg !657
  %109 = call double @exp(double %108) #6, !dbg !658
  %110 = load double, double* %4, align 8, !dbg !659
  %111 = call double @transport_sumexp(i32 %106, i32 3, double %109, double %110), !dbg !660
  store double %111, double* %11, align 8, !dbg !654
  call void @llvm.dbg.declare(metadata double* %12, metadata !662, metadata !83), !dbg !663
  %112 = load double, double* %4, align 8, !dbg !664
  %113 = call double @log(double %112) #6, !dbg !665
  %114 = fmul double 3.000000e+00, %113, !dbg !666
  %115 = load double, double* %4, align 8, !dbg !667
  %116 = fsub double %114, %115, !dbg !668
  %117 = load double, double* %11, align 8, !dbg !669
  %118 = call double @log(double %117) #6, !dbg !670
  %119 = fadd double %116, %118, !dbg !671
  store double %119, double* %12, align 8, !dbg !663
  %120 = load double, double* %12, align 8, !dbg !672
  %121 = fcmp olt double %120, 0xC04205966F2B4F12, !dbg !674
  br i1 %121, label %122, label %127, !dbg !675

; <label>:122:                                    ; preds = %101
  %123 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !676
  %124 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %123, i32 0, i32 0, !dbg !678
  store double 0x401CD97007680932, double* %124, align 8, !dbg !679
  %125 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !680
  %126 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %125, i32 0, i32 1, !dbg !681
  store double 0x3CECD97007680932, double* %126, align 8, !dbg !682
  br label %142, !dbg !683

; <label>:127:                                    ; preds = %101
  call void @llvm.dbg.declare(metadata double* %13, metadata !684, metadata !83), !dbg !686
  %128 = load double, double* %12, align 8, !dbg !687
  %129 = call double @exp(double %128) #6, !dbg !688
  store double %129, double* %13, align 8, !dbg !686
  %130 = load double, double* %13, align 8, !dbg !689
  %131 = fsub double 0x401CD97007680932, %130, !dbg !690
  %132 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !691
  %133 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %132, i32 0, i32 0, !dbg !692
  store double %131, double* %133, align 8, !dbg !693
  %134 = load double, double* %12, align 8, !dbg !694
  %135 = call double @fabs(double %134) #1, !dbg !695
  %136 = load double, double* %13, align 8, !dbg !696
  %137 = fmul double %135, %136, !dbg !697
  %138 = fadd double 0x401CD97007680932, %137, !dbg !698
  %139 = fmul double 0x3CC0000000000000, %138, !dbg !699
  %140 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !700
  %141 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %140, i32 0, i32 1, !dbg !701
  store double %139, double* %141, align 8, !dbg !702
  br label %142

; <label>:142:                                    ; preds = %127, %122
  store i32 0, i32* %3, align 4, !dbg !703
  br label %211, !dbg !703

; <label>:143:                                    ; preds = %98
  %144 = load double, double* %4, align 8, !dbg !704
  %145 = fcmp olt double %144, 0x4348000000000000, !dbg !706
  br i1 %145, label %146, label %181, !dbg !707

; <label>:146:                                    ; preds = %143
  call void @llvm.dbg.declare(metadata i32* %14, metadata !708, metadata !83), !dbg !710
  store i32 1, i32* %14, align 4, !dbg !710
  call void @llvm.dbg.declare(metadata double* %15, metadata !711, metadata !83), !dbg !712
  %147 = load double, double* %4, align 8, !dbg !713
  %148 = call double @transport_sumexp(i32 1, i32 3, double 1.000000e+00, double %147), !dbg !714
  store double %148, double* %15, align 8, !dbg !712
  call void @llvm.dbg.declare(metadata double* %16, metadata !715, metadata !83), !dbg !716
  %149 = load double, double* %4, align 8, !dbg !717
  %150 = call double @log(double %149) #6, !dbg !718
  %151 = fmul double 3.000000e+00, %150, !dbg !719
  %152 = load double, double* %4, align 8, !dbg !720
  %153 = fsub double %151, %152, !dbg !721
  %154 = load double, double* %15, align 8, !dbg !722
  %155 = call double @log(double %154) #6, !dbg !723
  %156 = fadd double %153, %155, !dbg !725
  store double %156, double* %16, align 8, !dbg !716
  %157 = load double, double* %16, align 8, !dbg !726
  %158 = fcmp olt double %157, 0xC04205966F2B4F12, !dbg !728
  br i1 %158, label %159, label %164, !dbg !729

; <label>:159:                                    ; preds = %146
  %160 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !730
  %161 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %160, i32 0, i32 0, !dbg !732
  store double 0x401CD97007680932, double* %161, align 8, !dbg !733
  %162 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !734
  %163 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %162, i32 0, i32 1, !dbg !735
  store double 0x3CECD97007680932, double* %163, align 8, !dbg !736
  br label %180, !dbg !737

; <label>:164:                                    ; preds = %146
  call void @llvm.dbg.declare(metadata double* %17, metadata !738, metadata !83), !dbg !740
  %165 = load double, double* %16, align 8, !dbg !741
  %166 = call double @exp(double %165) #6, !dbg !742
  store double %166, double* %17, align 8, !dbg !740
  %167 = load double, double* %17, align 8, !dbg !743
  %168 = fsub double 0x401CD97007680932, %167, !dbg !744
  %169 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !745
  %170 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %169, i32 0, i32 0, !dbg !746
  store double %168, double* %170, align 8, !dbg !747
  %171 = load double, double* %16, align 8, !dbg !748
  %172 = call double @fabs(double %171) #1, !dbg !749
  %173 = fadd double %172, 1.000000e+00, !dbg !750
  %174 = load double, double* %17, align 8, !dbg !751
  %175 = fmul double %173, %174, !dbg !752
  %176 = fadd double 0x401CD97007680932, %175, !dbg !753
  %177 = fmul double 0x3CC0000000000000, %176, !dbg !754
  %178 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !755
  %179 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %178, i32 0, i32 1, !dbg !756
  store double %177, double* %179, align 8, !dbg !757
  br label %180

; <label>:180:                                    ; preds = %164, %159
  store i32 0, i32* %3, align 4, !dbg !758
  br label %211, !dbg !758

; <label>:181:                                    ; preds = %143
  call void @llvm.dbg.declare(metadata double* %18, metadata !759, metadata !83), !dbg !761
  %182 = load double, double* %4, align 8, !dbg !762
  %183 = call double @log(double %182) #6, !dbg !763
  %184 = fmul double 3.000000e+00, %183, !dbg !764
  %185 = load double, double* %4, align 8, !dbg !765
  %186 = fsub double %184, %185, !dbg !766
  store double %186, double* %18, align 8, !dbg !761
  %187 = load double, double* %18, align 8, !dbg !767
  %188 = fcmp olt double %187, 0xC04205966F2B4F12, !dbg !769
  br i1 %188, label %189, label %194, !dbg !770

; <label>:189:                                    ; preds = %181
  %190 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !771
  %191 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %190, i32 0, i32 0, !dbg !773
  store double 0x401CD97007680932, double* %191, align 8, !dbg !774
  %192 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !775
  %193 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %192, i32 0, i32 1, !dbg !776
  store double 0x3CECD97007680932, double* %193, align 8, !dbg !777
  br label %210, !dbg !778

; <label>:194:                                    ; preds = %181
  call void @llvm.dbg.declare(metadata double* %19, metadata !779, metadata !83), !dbg !781
  %195 = load double, double* %18, align 8, !dbg !782
  %196 = call double @exp(double %195) #6, !dbg !783
  store double %196, double* %19, align 8, !dbg !781
  %197 = load double, double* %19, align 8, !dbg !784
  %198 = fsub double 0x401CD97007680932, %197, !dbg !785
  %199 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !786
  %200 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %199, i32 0, i32 0, !dbg !787
  store double %198, double* %200, align 8, !dbg !788
  %201 = load double, double* %18, align 8, !dbg !789
  %202 = call double @fabs(double %201) #1, !dbg !790
  %203 = fadd double %202, 1.000000e+00, !dbg !791
  %204 = load double, double* %19, align 8, !dbg !792
  %205 = fmul double %203, %204, !dbg !793
  %206 = fadd double 0x401CD97007680932, %205, !dbg !794
  %207 = fmul double 0x3CC0000000000000, %206, !dbg !795
  %208 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !796
  %209 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %208, i32 0, i32 1, !dbg !797
  store double %207, double* %209, align 8, !dbg !798
  br label %210

; <label>:210:                                    ; preds = %194, %189
  store i32 0, i32* %3, align 4, !dbg !799
  br label %211, !dbg !799

; <label>:211:                                    ; preds = %28, %34, %61, %63, %67, %142, %180, %210, %30
  %212 = load i32, i32* %3, align 4, !dbg !800
  ret i32 %212, !dbg !800
}

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_transport_4_e(double, %struct.gsl_sf_result_struct*) #0 !dbg !801 {
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca %struct.gsl_sf_result_struct*, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca %struct.gsl_sf_result_struct, align 8
  %10 = alloca i32, align 4
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca i32, align 4
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !802, metadata !83), !dbg !803
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %5, metadata !804, metadata !83), !dbg !805
  call void @llvm.dbg.declare(metadata double* %6, metadata !806, metadata !83), !dbg !807
  store double 0x4039F9CB402BC46C, double* %6, align 8, !dbg !807
  %20 = load double, double* %4, align 8, !dbg !808
  %21 = fcmp olt double %20, 0.000000e+00, !dbg !810
  br i1 %21, label %22, label %31, !dbg !811

; <label>:22:                                     ; preds = %2
  br label %23, !dbg !812, !llvm.loop !814

; <label>:23:                                     ; preds = %22
  %24 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !815
  %25 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %24, i32 0, i32 0, !dbg !815
  store double 0x7FF8000000000000, double* %25, align 8, !dbg !815
  %26 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !815
  %27 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %26, i32 0, i32 1, !dbg !815
  store double 0x7FF8000000000000, double* %27, align 8, !dbg !815
  br label %28, !dbg !815, !llvm.loop !818

; <label>:28:                                     ; preds = %23
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 325, i32 1), !dbg !820
  store i32 1, i32* %3, align 4, !dbg !820
  br label %218, !dbg !820
                                                  ; No predecessors!
  br label %30, !dbg !823

; <label>:30:                                     ; preds = %29
  br label %218, !dbg !825

; <label>:31:                                     ; preds = %2
  %32 = load double, double* %4, align 8, !dbg !826
  %33 = fcmp oeq double %32, 0.000000e+00, !dbg !828
  br i1 %33, label %34, label %39, !dbg !829

; <label>:34:                                     ; preds = %31
  %35 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !830
  %36 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %35, i32 0, i32 0, !dbg !832
  store double 0.000000e+00, double* %36, align 8, !dbg !833
  %37 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !834
  %38 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %37, i32 0, i32 1, !dbg !835
  store double 0.000000e+00, double* %38, align 8, !dbg !836
  store i32 0, i32* %3, align 4, !dbg !837
  br label %218, !dbg !837

; <label>:39:                                     ; preds = %31
  %40 = load double, double* %4, align 8, !dbg !838
  %41 = fcmp olt double %40, 0x3E68000000000000, !dbg !840
  br i1 %41, label %42, label %66, !dbg !841

; <label>:42:                                     ; preds = %39
  %43 = load double, double* %4, align 8, !dbg !842
  %44 = load double, double* %4, align 8, !dbg !844
  %45 = fmul double %43, %44, !dbg !845
  %46 = load double, double* %4, align 8, !dbg !846
  %47 = fmul double %45, %46, !dbg !847
  %48 = fdiv double %47, 3.000000e+00, !dbg !848
  %49 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !849
  %50 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %49, i32 0, i32 0, !dbg !850
  store double %48, double* %50, align 8, !dbg !851
  %51 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !852
  %52 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %51, i32 0, i32 0, !dbg !853
  %53 = load double, double* %52, align 8, !dbg !853
  %54 = fmul double 0x3CC8000000000000, %53, !dbg !854
  %55 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !855
  %56 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %55, i32 0, i32 1, !dbg !856
  store double %54, double* %56, align 8, !dbg !857
  %57 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !858
  %58 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %57, i32 0, i32 0, !dbg !858
  %59 = load double, double* %58, align 8, !dbg !858
  %60 = call double @fabs(double %59) #1, !dbg !858
  %61 = fcmp olt double %60, 0x10000000000000, !dbg !858
  br i1 %61, label %62, label %65, !dbg !860

; <label>:62:                                     ; preds = %42
  br label %63, !dbg !861, !llvm.loop !863

; <label>:63:                                     ; preds = %62
  call void @gsl_error(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 335, i32 15), !dbg !864
  store i32 15, i32* %3, align 4, !dbg !864
  br label %218, !dbg !864
                                                  ; No predecessors!
  br label %65, !dbg !867

; <label>:65:                                     ; preds = %64, %42
  store i32 0, i32* %3, align 4, !dbg !869
  br label %218, !dbg !869

; <label>:66:                                     ; preds = %39
  %67 = load double, double* %4, align 8, !dbg !870
  %68 = fcmp ole double %67, 4.000000e+00, !dbg !872
  br i1 %68, label %69, label %104, !dbg !873

; <label>:69:                                     ; preds = %66
  call void @llvm.dbg.declare(metadata double* %7, metadata !874, metadata !83), !dbg !876
  %70 = load double, double* %4, align 8, !dbg !877
  %71 = load double, double* %4, align 8, !dbg !878
  %72 = fmul double %70, %71, !dbg !879
  store double %72, double* %7, align 8, !dbg !876
  call void @llvm.dbg.declare(metadata double* %8, metadata !880, metadata !83), !dbg !881
  %73 = load double, double* %7, align 8, !dbg !882
  %74 = fdiv double %73, 8.000000e+00, !dbg !883
  %75 = fsub double %74, 5.000000e-01, !dbg !884
  %76 = fsub double %75, 5.000000e-01, !dbg !885
  store double %76, double* %8, align 8, !dbg !881
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %9, metadata !886, metadata !83), !dbg !887
  %77 = load double, double* %8, align 8, !dbg !888
  %78 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @transport4_cs, double %77, %struct.gsl_sf_result_struct* %9), !dbg !889
  %79 = load double, double* %7, align 8, !dbg !890
  %80 = load double, double* %4, align 8, !dbg !891
  %81 = fmul double %79, %80, !dbg !892
  %82 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %9, i32 0, i32 0, !dbg !893
  %83 = load double, double* %82, align 8, !dbg !893
  %84 = fmul double %81, %83, !dbg !894
  %85 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !895
  %86 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %85, i32 0, i32 0, !dbg !896
  store double %84, double* %86, align 8, !dbg !897
  %87 = load double, double* %7, align 8, !dbg !898
  %88 = load double, double* %4, align 8, !dbg !899
  %89 = fmul double %87, %88, !dbg !900
  %90 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %9, i32 0, i32 1, !dbg !901
  %91 = load double, double* %90, align 8, !dbg !901
  %92 = fmul double %89, %91, !dbg !902
  %93 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !903
  %94 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %93, i32 0, i32 1, !dbg !904
  store double %92, double* %94, align 8, !dbg !905
  %95 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !906
  %96 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %95, i32 0, i32 0, !dbg !907
  %97 = load double, double* %96, align 8, !dbg !907
  %98 = call double @fabs(double %97) #1, !dbg !908
  %99 = fmul double 0x3CC0000000000000, %98, !dbg !909
  %100 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !910
  %101 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %100, i32 0, i32 1, !dbg !911
  %102 = load double, double* %101, align 8, !dbg !912
  %103 = fadd double %102, %99, !dbg !912
  store double %103, double* %101, align 8, !dbg !912
  store i32 0, i32* %3, align 4, !dbg !913
  br label %218, !dbg !913

; <label>:104:                                    ; preds = %66
  %105 = load double, double* %4, align 8, !dbg !914
  %106 = fcmp olt double %105, 0x404205966F2B4F12, !dbg !916
  br i1 %106, label %107, label %150, !dbg !917

; <label>:107:                                    ; preds = %104
  call void @llvm.dbg.declare(metadata i32* %10, metadata !918, metadata !83), !dbg !920
  %108 = load double, double* %4, align 8, !dbg !921
  %109 = fdiv double 0x404205966F2B4F12, %108, !dbg !922
  %110 = fptosi double %109 to i32, !dbg !923
  %111 = add nsw i32 %110, 1, !dbg !924
  store i32 %111, i32* %10, align 4, !dbg !920
  call void @llvm.dbg.declare(metadata double* %11, metadata !925, metadata !83), !dbg !926
  %112 = load i32, i32* %10, align 4, !dbg !927
  %113 = load double, double* %4, align 8, !dbg !928
  %114 = fsub double -0.000000e+00, %113, !dbg !929
  %115 = call double @exp(double %114) #6, !dbg !930
  %116 = load double, double* %4, align 8, !dbg !931
  %117 = call double @transport_sumexp(i32 %112, i32 4, double %115, double %116), !dbg !932
  store double %117, double* %11, align 8, !dbg !926
  call void @llvm.dbg.declare(metadata double* %12, metadata !934, metadata !83), !dbg !935
  %118 = load double, double* %4, align 8, !dbg !936
  %119 = call double @log(double %118) #6, !dbg !937
  %120 = fmul double 4.000000e+00, %119, !dbg !938
  %121 = load double, double* %4, align 8, !dbg !939
  %122 = fsub double %120, %121, !dbg !940
  %123 = load double, double* %11, align 8, !dbg !941
  %124 = call double @log(double %123) #6, !dbg !942
  %125 = fadd double %122, %124, !dbg !943
  store double %125, double* %12, align 8, !dbg !935
  %126 = load double, double* %12, align 8, !dbg !944
  %127 = fcmp olt double %126, 0xC04205966F2B4F12, !dbg !946
  br i1 %127, label %128, label %133, !dbg !947

; <label>:128:                                    ; preds = %107
  %129 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !948
  %130 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %129, i32 0, i32 0, !dbg !950
  store double 0x4039F9CB402BC46C, double* %130, align 8, !dbg !951
  %131 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !952
  %132 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %131, i32 0, i32 1, !dbg !953
  store double 0x3D09F9CB402BC46C, double* %132, align 8, !dbg !954
  br label %149, !dbg !955

; <label>:133:                                    ; preds = %107
  call void @llvm.dbg.declare(metadata double* %13, metadata !956, metadata !83), !dbg !958
  %134 = load double, double* %12, align 8, !dbg !959
  %135 = call double @exp(double %134) #6, !dbg !960
  store double %135, double* %13, align 8, !dbg !958
  %136 = load double, double* %13, align 8, !dbg !961
  %137 = fsub double 0x4039F9CB402BC46C, %136, !dbg !962
  %138 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !963
  %139 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %138, i32 0, i32 0, !dbg !964
  store double %137, double* %139, align 8, !dbg !965
  %140 = load double, double* %12, align 8, !dbg !966
  %141 = call double @fabs(double %140) #1, !dbg !967
  %142 = fadd double %141, 1.000000e+00, !dbg !968
  %143 = load double, double* %13, align 8, !dbg !969
  %144 = fmul double %142, %143, !dbg !970
  %145 = fadd double 0x4039F9CB402BC46C, %144, !dbg !971
  %146 = fmul double 0x3CC0000000000000, %145, !dbg !972
  %147 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !973
  %148 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %147, i32 0, i32 1, !dbg !974
  store double %146, double* %148, align 8, !dbg !975
  br label %149

; <label>:149:                                    ; preds = %133, %128
  store i32 0, i32* %3, align 4, !dbg !976
  br label %218, !dbg !976

; <label>:150:                                    ; preds = %104
  %151 = load double, double* %4, align 8, !dbg !977
  %152 = fcmp olt double %151, 0x4348000000000000, !dbg !979
  br i1 %152, label %153, label %188, !dbg !980

; <label>:153:                                    ; preds = %150
  call void @llvm.dbg.declare(metadata i32* %14, metadata !981, metadata !83), !dbg !983
  store i32 1, i32* %14, align 4, !dbg !983
  call void @llvm.dbg.declare(metadata double* %15, metadata !984, metadata !83), !dbg !985
  %154 = load double, double* %4, align 8, !dbg !986
  %155 = call double @transport_sumexp(i32 1, i32 4, double 1.000000e+00, double %154), !dbg !987
  store double %155, double* %15, align 8, !dbg !985
  call void @llvm.dbg.declare(metadata double* %16, metadata !988, metadata !83), !dbg !989
  %156 = load double, double* %4, align 8, !dbg !990
  %157 = call double @log(double %156) #6, !dbg !991
  %158 = fmul double 4.000000e+00, %157, !dbg !992
  %159 = load double, double* %4, align 8, !dbg !993
  %160 = fsub double %158, %159, !dbg !994
  %161 = load double, double* %15, align 8, !dbg !995
  %162 = call double @log(double %161) #6, !dbg !996
  %163 = fadd double %160, %162, !dbg !998
  store double %163, double* %16, align 8, !dbg !989
  %164 = load double, double* %16, align 8, !dbg !999
  %165 = fcmp olt double %164, 0xC04205966F2B4F12, !dbg !1001
  br i1 %165, label %166, label %171, !dbg !1002

; <label>:166:                                    ; preds = %153
  %167 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1003
  %168 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %167, i32 0, i32 0, !dbg !1005
  store double 0x4039F9CB402BC46C, double* %168, align 8, !dbg !1006
  %169 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1007
  %170 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %169, i32 0, i32 1, !dbg !1008
  store double 0x3D09F9CB402BC46C, double* %170, align 8, !dbg !1009
  br label %187, !dbg !1010

; <label>:171:                                    ; preds = %153
  call void @llvm.dbg.declare(metadata double* %17, metadata !1011, metadata !83), !dbg !1013
  %172 = load double, double* %16, align 8, !dbg !1014
  %173 = call double @exp(double %172) #6, !dbg !1015
  store double %173, double* %17, align 8, !dbg !1013
  %174 = load double, double* %17, align 8, !dbg !1016
  %175 = fsub double 0x4039F9CB402BC46C, %174, !dbg !1017
  %176 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1018
  %177 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %176, i32 0, i32 0, !dbg !1019
  store double %175, double* %177, align 8, !dbg !1020
  %178 = load double, double* %16, align 8, !dbg !1021
  %179 = call double @fabs(double %178) #1, !dbg !1022
  %180 = fadd double %179, 1.000000e+00, !dbg !1023
  %181 = load double, double* %17, align 8, !dbg !1024
  %182 = fmul double %180, %181, !dbg !1025
  %183 = fadd double 0x4039F9CB402BC46C, %182, !dbg !1026
  %184 = fmul double 0x3CC0000000000000, %183, !dbg !1027
  %185 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1028
  %186 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %185, i32 0, i32 1, !dbg !1029
  store double %184, double* %186, align 8, !dbg !1030
  br label %187

; <label>:187:                                    ; preds = %171, %166
  store i32 0, i32* %3, align 4, !dbg !1031
  br label %218, !dbg !1031

; <label>:188:                                    ; preds = %150
  call void @llvm.dbg.declare(metadata double* %18, metadata !1032, metadata !83), !dbg !1034
  %189 = load double, double* %4, align 8, !dbg !1035
  %190 = call double @log(double %189) #6, !dbg !1036
  %191 = fmul double 4.000000e+00, %190, !dbg !1037
  %192 = load double, double* %4, align 8, !dbg !1038
  %193 = fsub double %191, %192, !dbg !1039
  store double %193, double* %18, align 8, !dbg !1034
  %194 = load double, double* %18, align 8, !dbg !1040
  %195 = fcmp olt double %194, 0xC04205966F2B4F12, !dbg !1042
  br i1 %195, label %196, label %201, !dbg !1043

; <label>:196:                                    ; preds = %188
  %197 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1044
  %198 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %197, i32 0, i32 0, !dbg !1046
  store double 0x4039F9CB402BC46C, double* %198, align 8, !dbg !1047
  %199 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1048
  %200 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %199, i32 0, i32 1, !dbg !1049
  store double 0x3D09F9CB402BC46C, double* %200, align 8, !dbg !1050
  br label %217, !dbg !1051

; <label>:201:                                    ; preds = %188
  call void @llvm.dbg.declare(metadata double* %19, metadata !1052, metadata !83), !dbg !1054
  %202 = load double, double* %18, align 8, !dbg !1055
  %203 = call double @exp(double %202) #6, !dbg !1056
  store double %203, double* %19, align 8, !dbg !1054
  %204 = load double, double* %19, align 8, !dbg !1057
  %205 = fsub double 0x4039F9CB402BC46C, %204, !dbg !1058
  %206 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1059
  %207 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %206, i32 0, i32 0, !dbg !1060
  store double %205, double* %207, align 8, !dbg !1061
  %208 = load double, double* %18, align 8, !dbg !1062
  %209 = call double @fabs(double %208) #1, !dbg !1063
  %210 = fadd double %209, 1.000000e+00, !dbg !1064
  %211 = load double, double* %19, align 8, !dbg !1065
  %212 = fmul double %210, %211, !dbg !1066
  %213 = fadd double 0x4039F9CB402BC46C, %212, !dbg !1067
  %214 = fmul double 0x3CC0000000000000, %213, !dbg !1068
  %215 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1069
  %216 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %215, i32 0, i32 1, !dbg !1070
  store double %214, double* %216, align 8, !dbg !1071
  br label %217

; <label>:217:                                    ; preds = %201, %196
  store i32 0, i32* %3, align 4, !dbg !1072
  br label %218, !dbg !1072

; <label>:218:                                    ; preds = %28, %34, %63, %65, %69, %149, %187, %217, %30
  %219 = load i32, i32* %3, align 4, !dbg !1073
  ret i32 %219, !dbg !1073
}

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_transport_5_e(double, %struct.gsl_sf_result_struct*) #0 !dbg !1074 {
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca %struct.gsl_sf_result_struct*, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca %struct.gsl_sf_result_struct, align 8
  %10 = alloca i32, align 4
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca i32, align 4
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !1075, metadata !83), !dbg !1076
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %5, metadata !1077, metadata !83), !dbg !1078
  call void @llvm.dbg.declare(metadata double* %6, metadata !1079, metadata !83), !dbg !1080
  store double 0x405F1B9AEBBBAA02, double* %6, align 8, !dbg !1080
  %20 = load double, double* %4, align 8, !dbg !1081
  %21 = fcmp olt double %20, 0.000000e+00, !dbg !1083
  br i1 %21, label %22, label %31, !dbg !1084

; <label>:22:                                     ; preds = %2
  br label %23, !dbg !1085, !llvm.loop !1087

; <label>:23:                                     ; preds = %22
  %24 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1088
  %25 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %24, i32 0, i32 0, !dbg !1088
  store double 0x7FF8000000000000, double* %25, align 8, !dbg !1088
  %26 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1088
  %27 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %26, i32 0, i32 1, !dbg !1088
  store double 0x7FF8000000000000, double* %27, align 8, !dbg !1088
  br label %28, !dbg !1088, !llvm.loop !1091

; <label>:28:                                     ; preds = %23
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 402, i32 1), !dbg !1093
  store i32 1, i32* %3, align 4, !dbg !1093
  br label %220, !dbg !1093
                                                  ; No predecessors!
  br label %30, !dbg !1096

; <label>:30:                                     ; preds = %29
  br label %220, !dbg !1098

; <label>:31:                                     ; preds = %2
  %32 = load double, double* %4, align 8, !dbg !1099
  %33 = fcmp oeq double %32, 0.000000e+00, !dbg !1101
  br i1 %33, label %34, label %39, !dbg !1102

; <label>:34:                                     ; preds = %31
  %35 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1103
  %36 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %35, i32 0, i32 0, !dbg !1105
  store double 0.000000e+00, double* %36, align 8, !dbg !1106
  %37 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1107
  %38 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %37, i32 0, i32 1, !dbg !1108
  store double 0.000000e+00, double* %38, align 8, !dbg !1109
  store i32 0, i32* %3, align 4, !dbg !1110
  br label %220, !dbg !1110

; <label>:39:                                     ; preds = %31
  %40 = load double, double* %4, align 8, !dbg !1111
  %41 = fcmp olt double %40, 0x3E68000000000000, !dbg !1113
  br i1 %41, label %42, label %68, !dbg !1114

; <label>:42:                                     ; preds = %39
  %43 = load double, double* %4, align 8, !dbg !1115
  %44 = load double, double* %4, align 8, !dbg !1117
  %45 = fmul double %43, %44, !dbg !1118
  %46 = load double, double* %4, align 8, !dbg !1119
  %47 = fmul double %45, %46, !dbg !1120
  %48 = load double, double* %4, align 8, !dbg !1121
  %49 = fmul double %47, %48, !dbg !1122
  %50 = fdiv double %49, 4.000000e+00, !dbg !1123
  %51 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1124
  %52 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %51, i32 0, i32 0, !dbg !1125
  store double %50, double* %52, align 8, !dbg !1126
  %53 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1127
  %54 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %53, i32 0, i32 0, !dbg !1128
  %55 = load double, double* %54, align 8, !dbg !1128
  %56 = fmul double 0x3CD0000000000000, %55, !dbg !1129
  %57 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1130
  %58 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %57, i32 0, i32 1, !dbg !1131
  store double %56, double* %58, align 8, !dbg !1132
  %59 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1133
  %60 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %59, i32 0, i32 0, !dbg !1133
  %61 = load double, double* %60, align 8, !dbg !1133
  %62 = call double @fabs(double %61) #1, !dbg !1133
  %63 = fcmp olt double %62, 0x10000000000000, !dbg !1133
  br i1 %63, label %64, label %67, !dbg !1135

; <label>:64:                                     ; preds = %42
  br label %65, !dbg !1136, !llvm.loop !1138

; <label>:65:                                     ; preds = %64
  call void @gsl_error(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 412, i32 15), !dbg !1139
  store i32 15, i32* %3, align 4, !dbg !1139
  br label %220, !dbg !1139
                                                  ; No predecessors!
  br label %67, !dbg !1142

; <label>:67:                                     ; preds = %66, %42
  store i32 0, i32* %3, align 4, !dbg !1144
  br label %220, !dbg !1144

; <label>:68:                                     ; preds = %39
  %69 = load double, double* %4, align 8, !dbg !1145
  %70 = fcmp ole double %69, 4.000000e+00, !dbg !1147
  br i1 %70, label %71, label %106, !dbg !1148

; <label>:71:                                     ; preds = %68
  call void @llvm.dbg.declare(metadata double* %7, metadata !1149, metadata !83), !dbg !1151
  %72 = load double, double* %4, align 8, !dbg !1152
  %73 = load double, double* %4, align 8, !dbg !1153
  %74 = fmul double %72, %73, !dbg !1154
  store double %74, double* %7, align 8, !dbg !1151
  call void @llvm.dbg.declare(metadata double* %8, metadata !1155, metadata !83), !dbg !1156
  %75 = load double, double* %7, align 8, !dbg !1157
  %76 = fdiv double %75, 8.000000e+00, !dbg !1158
  %77 = fsub double %76, 5.000000e-01, !dbg !1159
  %78 = fsub double %77, 5.000000e-01, !dbg !1160
  store double %78, double* %8, align 8, !dbg !1156
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %9, metadata !1161, metadata !83), !dbg !1162
  %79 = load double, double* %8, align 8, !dbg !1163
  %80 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @transport5_cs, double %79, %struct.gsl_sf_result_struct* %9), !dbg !1164
  %81 = load double, double* %7, align 8, !dbg !1165
  %82 = load double, double* %7, align 8, !dbg !1166
  %83 = fmul double %81, %82, !dbg !1167
  %84 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %9, i32 0, i32 0, !dbg !1168
  %85 = load double, double* %84, align 8, !dbg !1168
  %86 = fmul double %83, %85, !dbg !1169
  %87 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1170
  %88 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %87, i32 0, i32 0, !dbg !1171
  store double %86, double* %88, align 8, !dbg !1172
  %89 = load double, double* %7, align 8, !dbg !1173
  %90 = load double, double* %7, align 8, !dbg !1174
  %91 = fmul double %89, %90, !dbg !1175
  %92 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %9, i32 0, i32 1, !dbg !1176
  %93 = load double, double* %92, align 8, !dbg !1176
  %94 = fmul double %91, %93, !dbg !1177
  %95 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1178
  %96 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %95, i32 0, i32 1, !dbg !1179
  store double %94, double* %96, align 8, !dbg !1180
  %97 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1181
  %98 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %97, i32 0, i32 0, !dbg !1182
  %99 = load double, double* %98, align 8, !dbg !1182
  %100 = call double @fabs(double %99) #1, !dbg !1183
  %101 = fmul double 0x3CC0000000000000, %100, !dbg !1184
  %102 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1185
  %103 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %102, i32 0, i32 1, !dbg !1186
  %104 = load double, double* %103, align 8, !dbg !1187
  %105 = fadd double %104, %101, !dbg !1187
  store double %105, double* %103, align 8, !dbg !1187
  store i32 0, i32* %3, align 4, !dbg !1188
  br label %220, !dbg !1188

; <label>:106:                                    ; preds = %68
  %107 = load double, double* %4, align 8, !dbg !1189
  %108 = fcmp olt double %107, 0x404205966F2B4F12, !dbg !1191
  br i1 %108, label %109, label %152, !dbg !1192

; <label>:109:                                    ; preds = %106
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1193, metadata !83), !dbg !1195
  %110 = load double, double* %4, align 8, !dbg !1196
  %111 = fdiv double 0x404205966F2B4F12, %110, !dbg !1197
  %112 = fptosi double %111 to i32, !dbg !1198
  %113 = add nsw i32 %112, 1, !dbg !1199
  store i32 %113, i32* %10, align 4, !dbg !1195
  call void @llvm.dbg.declare(metadata double* %11, metadata !1200, metadata !83), !dbg !1201
  %114 = load i32, i32* %10, align 4, !dbg !1202
  %115 = load double, double* %4, align 8, !dbg !1203
  %116 = fsub double -0.000000e+00, %115, !dbg !1204
  %117 = call double @exp(double %116) #6, !dbg !1205
  %118 = load double, double* %4, align 8, !dbg !1206
  %119 = call double @transport_sumexp(i32 %114, i32 5, double %117, double %118), !dbg !1207
  store double %119, double* %11, align 8, !dbg !1201
  call void @llvm.dbg.declare(metadata double* %12, metadata !1209, metadata !83), !dbg !1210
  %120 = load double, double* %4, align 8, !dbg !1211
  %121 = call double @log(double %120) #6, !dbg !1212
  %122 = fmul double 5.000000e+00, %121, !dbg !1213
  %123 = load double, double* %4, align 8, !dbg !1214
  %124 = fsub double %122, %123, !dbg !1215
  %125 = load double, double* %11, align 8, !dbg !1216
  %126 = call double @log(double %125) #6, !dbg !1217
  %127 = fadd double %124, %126, !dbg !1218
  store double %127, double* %12, align 8, !dbg !1210
  %128 = load double, double* %12, align 8, !dbg !1219
  %129 = fcmp olt double %128, 0xC04205966F2B4F12, !dbg !1221
  br i1 %129, label %130, label %135, !dbg !1222

; <label>:130:                                    ; preds = %109
  %131 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1223
  %132 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %131, i32 0, i32 0, !dbg !1225
  store double 0x405F1B9AEBBBAA02, double* %132, align 8, !dbg !1226
  %133 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1227
  %134 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %133, i32 0, i32 1, !dbg !1228
  store double 0x3D2F1B9AEBBBAA02, double* %134, align 8, !dbg !1229
  br label %151, !dbg !1230

; <label>:135:                                    ; preds = %109
  call void @llvm.dbg.declare(metadata double* %13, metadata !1231, metadata !83), !dbg !1233
  %136 = load double, double* %12, align 8, !dbg !1234
  %137 = call double @exp(double %136) #6, !dbg !1235
  store double %137, double* %13, align 8, !dbg !1233
  %138 = load double, double* %13, align 8, !dbg !1236
  %139 = fsub double 0x405F1B9AEBBBAA02, %138, !dbg !1237
  %140 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1238
  %141 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %140, i32 0, i32 0, !dbg !1239
  store double %139, double* %141, align 8, !dbg !1240
  %142 = load double, double* %12, align 8, !dbg !1241
  %143 = call double @fabs(double %142) #1, !dbg !1242
  %144 = fadd double %143, 1.000000e+00, !dbg !1243
  %145 = load double, double* %13, align 8, !dbg !1244
  %146 = fmul double %144, %145, !dbg !1245
  %147 = fadd double 0x405F1B9AEBBBAA02, %146, !dbg !1246
  %148 = fmul double 0x3CC0000000000000, %147, !dbg !1247
  %149 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1248
  %150 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %149, i32 0, i32 1, !dbg !1249
  store double %148, double* %150, align 8, !dbg !1250
  br label %151

; <label>:151:                                    ; preds = %135, %130
  store i32 0, i32* %3, align 4, !dbg !1251
  br label %220, !dbg !1251

; <label>:152:                                    ; preds = %106
  %153 = load double, double* %4, align 8, !dbg !1252
  %154 = fcmp olt double %153, 0x4348000000000000, !dbg !1254
  br i1 %154, label %155, label %190, !dbg !1255

; <label>:155:                                    ; preds = %152
  call void @llvm.dbg.declare(metadata i32* %14, metadata !1256, metadata !83), !dbg !1258
  store i32 1, i32* %14, align 4, !dbg !1258
  call void @llvm.dbg.declare(metadata double* %15, metadata !1259, metadata !83), !dbg !1260
  %156 = load double, double* %4, align 8, !dbg !1261
  %157 = call double @transport_sumexp(i32 1, i32 5, double 1.000000e+00, double %156), !dbg !1262
  store double %157, double* %15, align 8, !dbg !1260
  call void @llvm.dbg.declare(metadata double* %16, metadata !1263, metadata !83), !dbg !1264
  %158 = load double, double* %4, align 8, !dbg !1265
  %159 = call double @log(double %158) #6, !dbg !1266
  %160 = fmul double 5.000000e+00, %159, !dbg !1267
  %161 = load double, double* %4, align 8, !dbg !1268
  %162 = fsub double %160, %161, !dbg !1269
  %163 = load double, double* %15, align 8, !dbg !1270
  %164 = call double @log(double %163) #6, !dbg !1271
  %165 = fadd double %162, %164, !dbg !1273
  store double %165, double* %16, align 8, !dbg !1264
  %166 = load double, double* %16, align 8, !dbg !1274
  %167 = fcmp olt double %166, 0xC04205966F2B4F12, !dbg !1276
  br i1 %167, label %168, label %173, !dbg !1277

; <label>:168:                                    ; preds = %155
  %169 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1278
  %170 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %169, i32 0, i32 0, !dbg !1280
  store double 0x405F1B9AEBBBAA02, double* %170, align 8, !dbg !1281
  %171 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1282
  %172 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %171, i32 0, i32 1, !dbg !1283
  store double 0x3D2F1B9AEBBBAA02, double* %172, align 8, !dbg !1284
  br label %189, !dbg !1285

; <label>:173:                                    ; preds = %155
  call void @llvm.dbg.declare(metadata double* %17, metadata !1286, metadata !83), !dbg !1288
  %174 = load double, double* %16, align 8, !dbg !1289
  %175 = call double @exp(double %174) #6, !dbg !1290
  store double %175, double* %17, align 8, !dbg !1288
  %176 = load double, double* %17, align 8, !dbg !1291
  %177 = fsub double 0x405F1B9AEBBBAA02, %176, !dbg !1292
  %178 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1293
  %179 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %178, i32 0, i32 0, !dbg !1294
  store double %177, double* %179, align 8, !dbg !1295
  %180 = load double, double* %16, align 8, !dbg !1296
  %181 = call double @fabs(double %180) #1, !dbg !1297
  %182 = fadd double %181, 1.000000e+00, !dbg !1298
  %183 = load double, double* %17, align 8, !dbg !1299
  %184 = fmul double %182, %183, !dbg !1300
  %185 = fadd double 0x405F1B9AEBBBAA02, %184, !dbg !1301
  %186 = fmul double 0x3CC0000000000000, %185, !dbg !1302
  %187 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1303
  %188 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %187, i32 0, i32 1, !dbg !1304
  store double %186, double* %188, align 8, !dbg !1305
  br label %189

; <label>:189:                                    ; preds = %173, %168
  store i32 0, i32* %3, align 4, !dbg !1306
  br label %220, !dbg !1306

; <label>:190:                                    ; preds = %152
  call void @llvm.dbg.declare(metadata double* %18, metadata !1307, metadata !83), !dbg !1309
  %191 = load double, double* %4, align 8, !dbg !1310
  %192 = call double @log(double %191) #6, !dbg !1311
  %193 = fmul double 5.000000e+00, %192, !dbg !1312
  %194 = load double, double* %4, align 8, !dbg !1313
  %195 = fsub double %193, %194, !dbg !1314
  store double %195, double* %18, align 8, !dbg !1309
  %196 = load double, double* %18, align 8, !dbg !1315
  %197 = fcmp olt double %196, 0xC04205966F2B4F12, !dbg !1317
  br i1 %197, label %198, label %203, !dbg !1318

; <label>:198:                                    ; preds = %190
  %199 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1319
  %200 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %199, i32 0, i32 0, !dbg !1321
  store double 0x405F1B9AEBBBAA02, double* %200, align 8, !dbg !1322
  %201 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1323
  %202 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %201, i32 0, i32 1, !dbg !1324
  store double 0x3D2F1B9AEBBBAA02, double* %202, align 8, !dbg !1325
  br label %219, !dbg !1326

; <label>:203:                                    ; preds = %190
  call void @llvm.dbg.declare(metadata double* %19, metadata !1327, metadata !83), !dbg !1329
  %204 = load double, double* %18, align 8, !dbg !1330
  %205 = call double @exp(double %204) #6, !dbg !1331
  store double %205, double* %19, align 8, !dbg !1329
  %206 = load double, double* %19, align 8, !dbg !1332
  %207 = fsub double 0x405F1B9AEBBBAA02, %206, !dbg !1333
  %208 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1334
  %209 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %208, i32 0, i32 0, !dbg !1335
  store double %207, double* %209, align 8, !dbg !1336
  %210 = load double, double* %18, align 8, !dbg !1337
  %211 = call double @fabs(double %210) #1, !dbg !1338
  %212 = fadd double %211, 1.000000e+00, !dbg !1339
  %213 = load double, double* %19, align 8, !dbg !1340
  %214 = fmul double %212, %213, !dbg !1341
  %215 = fadd double 0x405F1B9AEBBBAA02, %214, !dbg !1342
  %216 = fmul double 0x3CC0000000000000, %215, !dbg !1343
  %217 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1344
  %218 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %217, i32 0, i32 1, !dbg !1345
  store double %216, double* %218, align 8, !dbg !1346
  br label %219

; <label>:219:                                    ; preds = %203, %198
  store i32 0, i32* %3, align 4, !dbg !1347
  br label %220, !dbg !1347

; <label>:220:                                    ; preds = %28, %34, %65, %67, %71, %151, %189, %219, %30
  %221 = load i32, i32* %3, align 4, !dbg !1348
  ret i32 %221, !dbg !1348
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_transport_2(double) #0 !dbg !1349 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct, align 8
  %5 = alloca i32, align 4
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !1352, metadata !83), !dbg !1353
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %4, metadata !1354, metadata !83), !dbg !1355
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1356, metadata !83), !dbg !1355
  %6 = load double, double* %3, align 8, !dbg !1355
  %7 = call i32 @gsl_sf_transport_2_e(double %6, %struct.gsl_sf_result_struct* %4), !dbg !1355
  store i32 %7, i32* %5, align 4, !dbg !1355
  %8 = load i32, i32* %5, align 4, !dbg !1357
  %9 = icmp ne i32 %8, 0, !dbg !1357
  br i1 %9, label %10, label %16, !dbg !1355

; <label>:10:                                     ; preds = %1
  br label %11, !dbg !1359, !llvm.loop !1362

; <label>:11:                                     ; preds = %10
  %12 = load i32, i32* %5, align 4, !dbg !1364
  call void @gsl_error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 476, i32 %12), !dbg !1364
  %13 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !1364
  %14 = load double, double* %13, align 8, !dbg !1364
  store double %14, double* %2, align 8, !dbg !1364
  br label %19, !dbg !1364
                                                  ; No predecessors!
  br label %16, !dbg !1367

; <label>:16:                                     ; preds = %15, %1
  %17 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !1369
  %18 = load double, double* %17, align 8, !dbg !1369
  store double %18, double* %2, align 8, !dbg !1369
  br label %19, !dbg !1369

; <label>:19:                                     ; preds = %16, %11
  %20 = load double, double* %2, align 8, !dbg !1371
  ret double %20, !dbg !1371
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_transport_3(double) #0 !dbg !1372 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct, align 8
  %5 = alloca i32, align 4
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !1373, metadata !83), !dbg !1374
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %4, metadata !1375, metadata !83), !dbg !1376
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1377, metadata !83), !dbg !1376
  %6 = load double, double* %3, align 8, !dbg !1376
  %7 = call i32 @gsl_sf_transport_3_e(double %6, %struct.gsl_sf_result_struct* %4), !dbg !1376
  store i32 %7, i32* %5, align 4, !dbg !1376
  %8 = load i32, i32* %5, align 4, !dbg !1378
  %9 = icmp ne i32 %8, 0, !dbg !1378
  br i1 %9, label %10, label %16, !dbg !1376

; <label>:10:                                     ; preds = %1
  br label %11, !dbg !1380, !llvm.loop !1383

; <label>:11:                                     ; preds = %10
  %12 = load i32, i32* %5, align 4, !dbg !1385
  call void @gsl_error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 481, i32 %12), !dbg !1385
  %13 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !1385
  %14 = load double, double* %13, align 8, !dbg !1385
  store double %14, double* %2, align 8, !dbg !1385
  br label %19, !dbg !1385
                                                  ; No predecessors!
  br label %16, !dbg !1388

; <label>:16:                                     ; preds = %15, %1
  %17 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !1390
  %18 = load double, double* %17, align 8, !dbg !1390
  store double %18, double* %2, align 8, !dbg !1390
  br label %19, !dbg !1390

; <label>:19:                                     ; preds = %16, %11
  %20 = load double, double* %2, align 8, !dbg !1392
  ret double %20, !dbg !1392
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_transport_4(double) #0 !dbg !1393 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct, align 8
  %5 = alloca i32, align 4
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !1394, metadata !83), !dbg !1395
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %4, metadata !1396, metadata !83), !dbg !1397
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1398, metadata !83), !dbg !1397
  %6 = load double, double* %3, align 8, !dbg !1397
  %7 = call i32 @gsl_sf_transport_4_e(double %6, %struct.gsl_sf_result_struct* %4), !dbg !1397
  store i32 %7, i32* %5, align 4, !dbg !1397
  %8 = load i32, i32* %5, align 4, !dbg !1399
  %9 = icmp ne i32 %8, 0, !dbg !1399
  br i1 %9, label %10, label %16, !dbg !1397

; <label>:10:                                     ; preds = %1
  br label %11, !dbg !1401, !llvm.loop !1404

; <label>:11:                                     ; preds = %10
  %12 = load i32, i32* %5, align 4, !dbg !1406
  call void @gsl_error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 486, i32 %12), !dbg !1406
  %13 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !1406
  %14 = load double, double* %13, align 8, !dbg !1406
  store double %14, double* %2, align 8, !dbg !1406
  br label %19, !dbg !1406
                                                  ; No predecessors!
  br label %16, !dbg !1409

; <label>:16:                                     ; preds = %15, %1
  %17 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !1411
  %18 = load double, double* %17, align 8, !dbg !1411
  store double %18, double* %2, align 8, !dbg !1411
  br label %19, !dbg !1411

; <label>:19:                                     ; preds = %16, %11
  %20 = load double, double* %2, align 8, !dbg !1413
  ret double %20, !dbg !1413
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_transport_5(double) #0 !dbg !1414 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct, align 8
  %5 = alloca i32, align 4
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !1415, metadata !83), !dbg !1416
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %4, metadata !1417, metadata !83), !dbg !1418
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1419, metadata !83), !dbg !1418
  %6 = load double, double* %3, align 8, !dbg !1418
  %7 = call i32 @gsl_sf_transport_5_e(double %6, %struct.gsl_sf_result_struct* %4), !dbg !1418
  store i32 %7, i32* %5, align 4, !dbg !1418
  %8 = load i32, i32* %5, align 4, !dbg !1420
  %9 = icmp ne i32 %8, 0, !dbg !1420
  br i1 %9, label %10, label %16, !dbg !1418

; <label>:10:                                     ; preds = %1
  br label %11, !dbg !1422, !llvm.loop !1425

; <label>:11:                                     ; preds = %10
  %12 = load i32, i32* %5, align 4, !dbg !1427
  call void @gsl_error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 491, i32 %12), !dbg !1427
  %13 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !1427
  %14 = load double, double* %13, align 8, !dbg !1427
  store double %14, double* %2, align 8, !dbg !1427
  br label %19, !dbg !1427
                                                  ; No predecessors!
  br label %16, !dbg !1430

; <label>:16:                                     ; preds = %15, %1
  %17 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !1432
  %18 = load double, double* %17, align 8, !dbg !1432
  store double %18, double* %2, align 8, !dbg !1432
  br label %19, !dbg !1432

; <label>:19:                                     ; preds = %16, %11
  %20 = load double, double* %2, align 8, !dbg !1434
  ret double %20, !dbg !1434
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!66, !67, !68}
!llvm.ident = !{!69}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !41, globals: !44)
!1 = !DIFile(filename: "transport.c", directory: "/fpcc/gsl-2.5/specfunc")
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
!42 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!43 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!44 = !{!45, !56, !60, !61, !62, !63, !64, !65}
!45 = distinct !DIGlobalVariable(name: "transport2_cs", scope: !0, file: !1, line: 53, type: !46, isLocal: true, isDefinition: true, variable: %struct.cheb_series_struct* @transport2_cs)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "cheb_series", file: !47, line: 29, baseType: !48)
!47 = !DIFile(filename: "./chebyshev.h", directory: "/fpcc/gsl-2.5/specfunc")
!48 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cheb_series_struct", file: !47, line: 22, size: 320, align: 64, elements: !49)
!49 = !{!50, !52, !53, !54, !55}
!50 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !48, file: !47, line: 23, baseType: !51, size: 64, align: 64)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64, align: 64)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "order", scope: !48, file: !47, line: 24, baseType: !42, size: 32, align: 32, offset: 64)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !48, file: !47, line: 25, baseType: !43, size: 64, align: 64, offset: 128)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !48, file: !47, line: 26, baseType: !43, size: 64, align: 64, offset: 192)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "order_sp", scope: !48, file: !47, line: 27, baseType: !42, size: 32, align: 32, offset: 256)
!56 = distinct !DIGlobalVariable(name: "transport2_data", scope: !0, file: !1, line: 33, type: !57, isLocal: true, isDefinition: true, variable: [18 x double]* @transport2_data)
!57 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 1152, align: 64, elements: !58)
!58 = !{!59}
!59 = !DISubrange(count: 18)
!60 = distinct !DIGlobalVariable(name: "transport3_cs", scope: !0, file: !1, line: 80, type: !46, isLocal: true, isDefinition: true, variable: %struct.cheb_series_struct* @transport3_cs)
!61 = distinct !DIGlobalVariable(name: "transport3_data", scope: !0, file: !1, line: 60, type: !57, isLocal: true, isDefinition: true, variable: [18 x double]* @transport3_data)
!62 = distinct !DIGlobalVariable(name: "transport4_cs", scope: !0, file: !1, line: 108, type: !46, isLocal: true, isDefinition: true, variable: %struct.cheb_series_struct* @transport4_cs)
!63 = distinct !DIGlobalVariable(name: "transport4_data", scope: !0, file: !1, line: 88, type: !57, isLocal: true, isDefinition: true, variable: [18 x double]* @transport4_data)
!64 = distinct !DIGlobalVariable(name: "transport5_cs", scope: !0, file: !1, line: 136, type: !46, isLocal: true, isDefinition: true, variable: %struct.cheb_series_struct* @transport5_cs)
!65 = distinct !DIGlobalVariable(name: "transport5_data", scope: !0, file: !1, line: 116, type: !57, isLocal: true, isDefinition: true, variable: [18 x double]* @transport5_data)
!66 = !{i32 2, !"Dwarf Version", i32 4}
!67 = !{i32 2, !"Debug Info Version", i32 3}
!68 = !{i32 1, !"PIC Level", i32 2}
!69 = !{!"clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)"}
!70 = distinct !DISubprogram(name: "gsl_sf_transport_2_e", scope: !1, file: !1, line: 171, type: !71, isLocal: false, isDefinition: true, scopeLine: 172, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !81)
!71 = !DISubroutineType(types: !72)
!72 = !{!42, !73, !74}
!73 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64, align: 64)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !76, line: 41, baseType: !77)
!76 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/fpcc/gsl-2.5/specfunc")
!77 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !76, line: 37, size: 128, align: 64, elements: !78)
!78 = !{!79, !80}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !77, file: !76, line: 38, baseType: !43, size: 64, align: 64)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !77, file: !76, line: 39, baseType: !43, size: 64, align: 64, offset: 64)
!81 = !{}
!82 = !DILocalVariable(name: "x", arg: 1, scope: !70, file: !1, line: 171, type: !73)
!83 = !DIExpression()
!84 = !DILocation(line: 171, column: 35, scope: !70)
!85 = !DILocalVariable(name: "result", arg: 2, scope: !70, file: !1, line: 171, type: !74)
!86 = !DILocation(line: 171, column: 54, scope: !70)
!87 = !DILocalVariable(name: "val_infinity", scope: !70, file: !1, line: 173, type: !73)
!88 = !DILocation(line: 173, column: 16, scope: !70)
!89 = !DILocation(line: 177, column: 6, scope: !90)
!90 = distinct !DILexicalBlock(scope: !70, file: !1, line: 177, column: 6)
!91 = !DILocation(line: 177, column: 8, scope: !90)
!92 = !DILocation(line: 177, column: 6, scope: !70)
!93 = !DILocation(line: 178, column: 5, scope: !94)
!94 = distinct !DILexicalBlock(scope: !90, file: !1, line: 177, column: 15)
!95 = distinct !{!95, !93}
!96 = !DILocation(line: 178, column: 5, scope: !97)
!97 = !DILexicalBlockFile(scope: !98, file: !1, discriminator: 1)
!98 = distinct !DILexicalBlock(scope: !94, file: !1, line: 178, column: 5)
!99 = distinct !{!99, !100}
!100 = !DILocation(line: 178, column: 5, scope: !98)
!101 = !DILocation(line: 178, column: 5, scope: !102)
!102 = !DILexicalBlockFile(scope: !103, file: !1, discriminator: 2)
!103 = distinct !DILexicalBlock(scope: !98, file: !1, line: 178, column: 5)
!104 = !DILocation(line: 178, column: 5, scope: !105)
!105 = !DILexicalBlockFile(scope: !98, file: !1, discriminator: 3)
!106 = !DILocation(line: 179, column: 3, scope: !94)
!107 = !DILocation(line: 180, column: 11, scope: !108)
!108 = distinct !DILexicalBlock(scope: !90, file: !1, line: 180, column: 11)
!109 = !DILocation(line: 180, column: 13, scope: !108)
!110 = !DILocation(line: 180, column: 11, scope: !90)
!111 = !DILocation(line: 181, column: 19, scope: !112)
!112 = distinct !DILexicalBlock(scope: !108, file: !1, line: 180, column: 41)
!113 = !DILocation(line: 181, column: 5, scope: !112)
!114 = !DILocation(line: 181, column: 13, scope: !112)
!115 = !DILocation(line: 181, column: 17, scope: !112)
!116 = !DILocation(line: 182, column: 40, scope: !112)
!117 = !DILocation(line: 182, column: 35, scope: !112)
!118 = !DILocation(line: 182, column: 34, scope: !112)
!119 = !DILocation(line: 182, column: 45, scope: !112)
!120 = !DILocation(line: 182, column: 47, scope: !112)
!121 = !DILocation(line: 182, column: 46, scope: !112)
!122 = !DILocation(line: 182, column: 48, scope: !112)
!123 = !DILocation(line: 182, column: 43, scope: !112)
!124 = !DILocation(line: 182, column: 5, scope: !112)
!125 = !DILocation(line: 182, column: 13, scope: !112)
!126 = !DILocation(line: 182, column: 17, scope: !112)
!127 = !DILocation(line: 183, column: 5, scope: !112)
!128 = !DILocation(line: 185, column: 11, scope: !129)
!129 = distinct !DILexicalBlock(scope: !108, file: !1, line: 185, column: 11)
!130 = !DILocation(line: 185, column: 13, scope: !129)
!131 = !DILocation(line: 185, column: 11, scope: !108)
!132 = !DILocalVariable(name: "t", scope: !133, file: !1, line: 186, type: !43)
!133 = distinct !DILexicalBlock(scope: !129, file: !1, line: 185, column: 21)
!134 = !DILocation(line: 186, column: 12, scope: !133)
!135 = !DILocation(line: 186, column: 17, scope: !133)
!136 = !DILocation(line: 186, column: 19, scope: !133)
!137 = !DILocation(line: 186, column: 18, scope: !133)
!138 = !DILocation(line: 186, column: 20, scope: !133)
!139 = !DILocation(line: 186, column: 25, scope: !133)
!140 = !DILocation(line: 186, column: 32, scope: !133)
!141 = !DILocalVariable(name: "result_c", scope: !133, file: !1, line: 187, type: !75)
!142 = !DILocation(line: 187, column: 19, scope: !133)
!143 = !DILocation(line: 188, column: 33, scope: !133)
!144 = !DILocation(line: 188, column: 5, scope: !133)
!145 = !DILocation(line: 189, column: 20, scope: !133)
!146 = !DILocation(line: 189, column: 33, scope: !133)
!147 = !DILocation(line: 189, column: 22, scope: !133)
!148 = !DILocation(line: 189, column: 5, scope: !133)
!149 = !DILocation(line: 189, column: 13, scope: !133)
!150 = !DILocation(line: 189, column: 18, scope: !133)
!151 = !DILocation(line: 190, column: 20, scope: !133)
!152 = !DILocation(line: 190, column: 33, scope: !133)
!153 = !DILocation(line: 190, column: 22, scope: !133)
!154 = !DILocation(line: 190, column: 5, scope: !133)
!155 = !DILocation(line: 190, column: 13, scope: !133)
!156 = !DILocation(line: 190, column: 18, scope: !133)
!157 = !DILocation(line: 191, column: 49, scope: !133)
!158 = !DILocation(line: 191, column: 57, scope: !133)
!159 = !DILocation(line: 191, column: 44, scope: !133)
!160 = !DILocation(line: 191, column: 42, scope: !133)
!161 = !DILocation(line: 191, column: 5, scope: !133)
!162 = !DILocation(line: 191, column: 13, scope: !133)
!163 = !DILocation(line: 191, column: 17, scope: !133)
!164 = !DILocation(line: 192, column: 5, scope: !133)
!165 = !DILocation(line: 194, column: 11, scope: !166)
!166 = distinct !DILexicalBlock(scope: !129, file: !1, line: 194, column: 11)
!167 = !DILocation(line: 194, column: 13, scope: !166)
!168 = !DILocation(line: 194, column: 11, scope: !129)
!169 = !DILocalVariable(name: "numexp", scope: !170, file: !1, line: 195, type: !171)
!170 = distinct !DILexicalBlock(scope: !166, file: !1, line: 194, column: 37)
!171 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!172 = !DILocation(line: 195, column: 18, scope: !170)
!173 = !DILocation(line: 195, column: 56, scope: !170)
!174 = !DILocation(line: 195, column: 55, scope: !170)
!175 = !DILocation(line: 195, column: 27, scope: !170)
!176 = !DILocation(line: 195, column: 59, scope: !170)
!177 = !DILocalVariable(name: "sumexp", scope: !170, file: !1, line: 196, type: !73)
!178 = !DILocation(line: 196, column: 18, scope: !170)
!179 = !DILocation(line: 196, column: 44, scope: !170)
!180 = !DILocation(line: 196, column: 60, scope: !170)
!181 = !DILocation(line: 196, column: 59, scope: !170)
!182 = !DILocation(line: 196, column: 55, scope: !170)
!183 = !DILocation(line: 196, column: 64, scope: !170)
!184 = !DILocation(line: 196, column: 27, scope: !185)
!185 = !DILexicalBlockFile(scope: !170, file: !1, discriminator: 1)
!186 = !DILocalVariable(name: "t", scope: !170, file: !1, line: 197, type: !73)
!187 = !DILocation(line: 197, column: 18, scope: !170)
!188 = !DILocation(line: 197, column: 32, scope: !170)
!189 = !DILocation(line: 197, column: 28, scope: !170)
!190 = !DILocation(line: 197, column: 26, scope: !170)
!191 = !DILocation(line: 197, column: 37, scope: !170)
!192 = !DILocation(line: 197, column: 35, scope: !170)
!193 = !DILocation(line: 197, column: 45, scope: !170)
!194 = !DILocation(line: 197, column: 41, scope: !185)
!195 = !DILocation(line: 197, column: 39, scope: !170)
!196 = !DILocation(line: 198, column: 8, scope: !197)
!197 = distinct !DILexicalBlock(scope: !170, file: !1, line: 198, column: 8)
!198 = !DILocation(line: 198, column: 10, scope: !197)
!199 = !DILocation(line: 198, column: 8, scope: !170)
!200 = !DILocation(line: 199, column: 7, scope: !201)
!201 = distinct !DILexicalBlock(scope: !197, file: !1, line: 198, column: 33)
!202 = !DILocation(line: 199, column: 15, scope: !201)
!203 = !DILocation(line: 199, column: 20, scope: !201)
!204 = !DILocation(line: 200, column: 7, scope: !201)
!205 = !DILocation(line: 200, column: 15, scope: !201)
!206 = !DILocation(line: 200, column: 20, scope: !201)
!207 = !DILocation(line: 201, column: 5, scope: !201)
!208 = !DILocalVariable(name: "et", scope: !209, file: !1, line: 203, type: !73)
!209 = distinct !DILexicalBlock(scope: !197, file: !1, line: 202, column: 10)
!210 = !DILocation(line: 203, column: 20, scope: !209)
!211 = !DILocation(line: 203, column: 29, scope: !209)
!212 = !DILocation(line: 203, column: 25, scope: !209)
!213 = !DILocation(line: 204, column: 36, scope: !209)
!214 = !DILocation(line: 204, column: 34, scope: !209)
!215 = !DILocation(line: 204, column: 7, scope: !209)
!216 = !DILocation(line: 204, column: 15, scope: !209)
!217 = !DILocation(line: 204, column: 19, scope: !209)
!218 = !DILocation(line: 205, column: 66, scope: !209)
!219 = !DILocation(line: 205, column: 61, scope: !209)
!220 = !DILocation(line: 205, column: 71, scope: !209)
!221 = !DILocation(line: 205, column: 69, scope: !209)
!222 = !DILocation(line: 205, column: 59, scope: !209)
!223 = !DILocation(line: 205, column: 43, scope: !209)
!224 = !DILocation(line: 205, column: 7, scope: !209)
!225 = !DILocation(line: 205, column: 15, scope: !209)
!226 = !DILocation(line: 205, column: 19, scope: !209)
!227 = !DILocation(line: 207, column: 5, scope: !170)
!228 = !DILocation(line: 209, column: 11, scope: !229)
!229 = distinct !DILexicalBlock(scope: !166, file: !1, line: 209, column: 11)
!230 = !DILocation(line: 209, column: 13, scope: !229)
!231 = !DILocation(line: 209, column: 11, scope: !166)
!232 = !DILocalVariable(name: "numexp", scope: !233, file: !1, line: 210, type: !171)
!233 = distinct !DILexicalBlock(scope: !229, file: !1, line: 209, column: 36)
!234 = !DILocation(line: 210, column: 18, scope: !233)
!235 = !DILocalVariable(name: "sumexp", scope: !233, file: !1, line: 211, type: !73)
!236 = !DILocation(line: 211, column: 18, scope: !233)
!237 = !DILocation(line: 211, column: 60, scope: !233)
!238 = !DILocation(line: 211, column: 27, scope: !233)
!239 = !DILocalVariable(name: "t", scope: !233, file: !1, line: 212, type: !73)
!240 = !DILocation(line: 212, column: 18, scope: !233)
!241 = !DILocation(line: 212, column: 32, scope: !233)
!242 = !DILocation(line: 212, column: 28, scope: !233)
!243 = !DILocation(line: 212, column: 26, scope: !233)
!244 = !DILocation(line: 212, column: 37, scope: !233)
!245 = !DILocation(line: 212, column: 35, scope: !233)
!246 = !DILocation(line: 212, column: 45, scope: !233)
!247 = !DILocation(line: 212, column: 41, scope: !248)
!248 = !DILexicalBlockFile(scope: !233, file: !1, discriminator: 1)
!249 = !DILocation(line: 212, column: 39, scope: !233)
!250 = !DILocation(line: 213, column: 8, scope: !251)
!251 = distinct !DILexicalBlock(scope: !233, file: !1, line: 213, column: 8)
!252 = !DILocation(line: 213, column: 10, scope: !251)
!253 = !DILocation(line: 213, column: 8, scope: !233)
!254 = !DILocation(line: 214, column: 7, scope: !255)
!255 = distinct !DILexicalBlock(scope: !251, file: !1, line: 213, column: 33)
!256 = !DILocation(line: 214, column: 15, scope: !255)
!257 = !DILocation(line: 214, column: 19, scope: !255)
!258 = !DILocation(line: 215, column: 7, scope: !255)
!259 = !DILocation(line: 215, column: 15, scope: !255)
!260 = !DILocation(line: 215, column: 19, scope: !255)
!261 = !DILocation(line: 216, column: 5, scope: !255)
!262 = !DILocalVariable(name: "et", scope: !263, file: !1, line: 218, type: !73)
!263 = distinct !DILexicalBlock(scope: !251, file: !1, line: 217, column: 10)
!264 = !DILocation(line: 218, column: 20, scope: !263)
!265 = !DILocation(line: 218, column: 29, scope: !263)
!266 = !DILocation(line: 218, column: 25, scope: !263)
!267 = !DILocation(line: 219, column: 36, scope: !263)
!268 = !DILocation(line: 219, column: 34, scope: !263)
!269 = !DILocation(line: 219, column: 7, scope: !263)
!270 = !DILocation(line: 219, column: 15, scope: !263)
!271 = !DILocation(line: 219, column: 19, scope: !263)
!272 = !DILocation(line: 220, column: 67, scope: !263)
!273 = !DILocation(line: 220, column: 62, scope: !263)
!274 = !DILocation(line: 220, column: 69, scope: !263)
!275 = !DILocation(line: 220, column: 77, scope: !263)
!276 = !DILocation(line: 220, column: 75, scope: !263)
!277 = !DILocation(line: 220, column: 59, scope: !263)
!278 = !DILocation(line: 220, column: 43, scope: !263)
!279 = !DILocation(line: 220, column: 7, scope: !263)
!280 = !DILocation(line: 220, column: 15, scope: !263)
!281 = !DILocation(line: 220, column: 19, scope: !263)
!282 = !DILocation(line: 222, column: 5, scope: !233)
!283 = !DILocalVariable(name: "t", scope: !284, file: !1, line: 225, type: !73)
!284 = distinct !DILexicalBlock(scope: !229, file: !1, line: 224, column: 8)
!285 = !DILocation(line: 225, column: 18, scope: !284)
!286 = !DILocation(line: 225, column: 32, scope: !284)
!287 = !DILocation(line: 225, column: 28, scope: !284)
!288 = !DILocation(line: 225, column: 26, scope: !284)
!289 = !DILocation(line: 225, column: 37, scope: !284)
!290 = !DILocation(line: 225, column: 35, scope: !284)
!291 = !DILocation(line: 226, column: 8, scope: !292)
!292 = distinct !DILexicalBlock(scope: !284, file: !1, line: 226, column: 8)
!293 = !DILocation(line: 226, column: 10, scope: !292)
!294 = !DILocation(line: 226, column: 8, scope: !284)
!295 = !DILocation(line: 227, column: 7, scope: !296)
!296 = distinct !DILexicalBlock(scope: !292, file: !1, line: 226, column: 33)
!297 = !DILocation(line: 227, column: 15, scope: !296)
!298 = !DILocation(line: 227, column: 19, scope: !296)
!299 = !DILocation(line: 228, column: 7, scope: !296)
!300 = !DILocation(line: 228, column: 15, scope: !296)
!301 = !DILocation(line: 228, column: 19, scope: !296)
!302 = !DILocation(line: 229, column: 5, scope: !296)
!303 = !DILocalVariable(name: "et", scope: !304, file: !1, line: 231, type: !73)
!304 = distinct !DILexicalBlock(scope: !292, file: !1, line: 230, column: 10)
!305 = !DILocation(line: 231, column: 20, scope: !304)
!306 = !DILocation(line: 231, column: 29, scope: !304)
!307 = !DILocation(line: 231, column: 25, scope: !304)
!308 = !DILocation(line: 232, column: 36, scope: !304)
!309 = !DILocation(line: 232, column: 34, scope: !304)
!310 = !DILocation(line: 232, column: 7, scope: !304)
!311 = !DILocation(line: 232, column: 15, scope: !304)
!312 = !DILocation(line: 232, column: 19, scope: !304)
!313 = !DILocation(line: 233, column: 67, scope: !304)
!314 = !DILocation(line: 233, column: 62, scope: !304)
!315 = !DILocation(line: 233, column: 69, scope: !304)
!316 = !DILocation(line: 233, column: 77, scope: !304)
!317 = !DILocation(line: 233, column: 75, scope: !304)
!318 = !DILocation(line: 233, column: 59, scope: !304)
!319 = !DILocation(line: 233, column: 43, scope: !304)
!320 = !DILocation(line: 233, column: 7, scope: !304)
!321 = !DILocation(line: 233, column: 15, scope: !304)
!322 = !DILocation(line: 233, column: 19, scope: !304)
!323 = !DILocation(line: 235, column: 5, scope: !284)
!324 = !DILocation(line: 237, column: 1, scope: !70)
!325 = distinct !DISubprogram(name: "cheb_eval_e", scope: !326, file: !326, line: 3, type: !327, isLocal: true, isDefinition: true, scopeLine: 6, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !81)
!326 = !DIFile(filename: "./cheb_eval.c", directory: "/fpcc/gsl-2.5/specfunc")
!327 = !DISubroutineType(types: !328)
!328 = !{!42, !329, !73, !74}
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64, align: 64)
!330 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!331 = !DILocalVariable(name: "cs", arg: 1, scope: !325, file: !326, line: 3, type: !329)
!332 = !DILocation(line: 3, column: 33, scope: !325)
!333 = !DILocalVariable(name: "x", arg: 2, scope: !325, file: !326, line: 4, type: !73)
!334 = !DILocation(line: 4, column: 26, scope: !325)
!335 = !DILocalVariable(name: "result", arg: 3, scope: !325, file: !326, line: 5, type: !74)
!336 = !DILocation(line: 5, column: 29, scope: !325)
!337 = !DILocalVariable(name: "j", scope: !325, file: !326, line: 7, type: !42)
!338 = !DILocation(line: 7, column: 7, scope: !325)
!339 = !DILocalVariable(name: "d", scope: !325, file: !326, line: 8, type: !43)
!340 = !DILocation(line: 8, column: 10, scope: !325)
!341 = !DILocalVariable(name: "dd", scope: !325, file: !326, line: 9, type: !43)
!342 = !DILocation(line: 9, column: 10, scope: !325)
!343 = !DILocalVariable(name: "y", scope: !325, file: !326, line: 11, type: !43)
!344 = !DILocation(line: 11, column: 10, scope: !325)
!345 = !DILocation(line: 11, column: 20, scope: !325)
!346 = !DILocation(line: 11, column: 19, scope: !325)
!347 = !DILocation(line: 11, column: 24, scope: !325)
!348 = !DILocation(line: 11, column: 28, scope: !325)
!349 = !DILocation(line: 11, column: 22, scope: !325)
!350 = !DILocation(line: 11, column: 32, scope: !325)
!351 = !DILocation(line: 11, column: 36, scope: !325)
!352 = !DILocation(line: 11, column: 30, scope: !325)
!353 = !DILocation(line: 11, column: 42, scope: !325)
!354 = !DILocation(line: 11, column: 46, scope: !325)
!355 = !DILocation(line: 11, column: 50, scope: !325)
!356 = !DILocation(line: 11, column: 54, scope: !325)
!357 = !DILocation(line: 11, column: 48, scope: !325)
!358 = !DILocation(line: 11, column: 39, scope: !325)
!359 = !DILocalVariable(name: "y2", scope: !325, file: !326, line: 12, type: !43)
!360 = !DILocation(line: 12, column: 10, scope: !325)
!361 = !DILocation(line: 12, column: 21, scope: !325)
!362 = !DILocation(line: 12, column: 19, scope: !325)
!363 = !DILocalVariable(name: "e", scope: !325, file: !326, line: 14, type: !43)
!364 = !DILocation(line: 14, column: 10, scope: !325)
!365 = !DILocation(line: 16, column: 11, scope: !366)
!366 = distinct !DILexicalBlock(scope: !325, file: !326, line: 16, column: 3)
!367 = !DILocation(line: 16, column: 15, scope: !366)
!368 = !DILocation(line: 16, column: 9, scope: !366)
!369 = !DILocation(line: 16, column: 7, scope: !366)
!370 = !DILocation(line: 16, column: 22, scope: !371)
!371 = !DILexicalBlockFile(scope: !372, file: !326, discriminator: 1)
!372 = distinct !DILexicalBlock(scope: !366, file: !326, line: 16, column: 3)
!373 = !DILocation(line: 16, column: 23, scope: !371)
!374 = !DILocation(line: 16, column: 3, scope: !371)
!375 = !DILocalVariable(name: "temp", scope: !376, file: !326, line: 17, type: !43)
!376 = distinct !DILexicalBlock(scope: !372, file: !326, line: 16, column: 33)
!377 = !DILocation(line: 17, column: 12, scope: !376)
!378 = !DILocation(line: 17, column: 19, scope: !376)
!379 = !DILocation(line: 18, column: 9, scope: !376)
!380 = !DILocation(line: 18, column: 12, scope: !376)
!381 = !DILocation(line: 18, column: 11, scope: !376)
!382 = !DILocation(line: 18, column: 16, scope: !376)
!383 = !DILocation(line: 18, column: 14, scope: !376)
!384 = !DILocation(line: 18, column: 27, scope: !376)
!385 = !DILocation(line: 18, column: 21, scope: !376)
!386 = !DILocation(line: 18, column: 25, scope: !376)
!387 = !DILocation(line: 18, column: 19, scope: !376)
!388 = !DILocation(line: 18, column: 7, scope: !376)
!389 = !DILocation(line: 19, column: 15, scope: !376)
!390 = !DILocation(line: 19, column: 18, scope: !376)
!391 = !DILocation(line: 19, column: 17, scope: !376)
!392 = !DILocation(line: 19, column: 10, scope: !376)
!393 = !DILocation(line: 19, column: 31, scope: !376)
!394 = !DILocation(line: 19, column: 26, scope: !395)
!395 = !DILexicalBlockFile(scope: !376, file: !326, discriminator: 1)
!396 = !DILocation(line: 19, column: 24, scope: !376)
!397 = !DILocation(line: 19, column: 48, scope: !376)
!398 = !DILocation(line: 19, column: 42, scope: !376)
!399 = !DILocation(line: 19, column: 46, scope: !376)
!400 = !DILocation(line: 19, column: 37, scope: !401)
!401 = !DILexicalBlockFile(scope: !376, file: !326, discriminator: 2)
!402 = !DILocation(line: 19, column: 35, scope: !376)
!403 = !DILocation(line: 19, column: 7, scope: !376)
!404 = !DILocation(line: 20, column: 10, scope: !376)
!405 = !DILocation(line: 20, column: 8, scope: !376)
!406 = !DILocation(line: 21, column: 3, scope: !376)
!407 = !DILocation(line: 16, column: 29, scope: !408)
!408 = !DILexicalBlockFile(scope: !372, file: !326, discriminator: 2)
!409 = !DILocation(line: 16, column: 3, scope: !408)
!410 = distinct !{!410, !411}
!411 = !DILocation(line: 16, column: 3, scope: !325)
!412 = !DILocalVariable(name: "temp", scope: !413, file: !326, line: 24, type: !43)
!413 = distinct !DILexicalBlock(scope: !325, file: !326, line: 23, column: 3)
!414 = !DILocation(line: 24, column: 12, scope: !413)
!415 = !DILocation(line: 24, column: 19, scope: !413)
!416 = !DILocation(line: 25, column: 9, scope: !413)
!417 = !DILocation(line: 25, column: 11, scope: !413)
!418 = !DILocation(line: 25, column: 10, scope: !413)
!419 = !DILocation(line: 25, column: 15, scope: !413)
!420 = !DILocation(line: 25, column: 13, scope: !413)
!421 = !DILocation(line: 25, column: 26, scope: !413)
!422 = !DILocation(line: 25, column: 30, scope: !413)
!423 = !DILocation(line: 25, column: 24, scope: !413)
!424 = !DILocation(line: 25, column: 18, scope: !413)
!425 = !DILocation(line: 25, column: 7, scope: !413)
!426 = !DILocation(line: 26, column: 15, scope: !413)
!427 = !DILocation(line: 26, column: 17, scope: !413)
!428 = !DILocation(line: 26, column: 16, scope: !413)
!429 = !DILocation(line: 26, column: 10, scope: !413)
!430 = !DILocation(line: 26, column: 30, scope: !413)
!431 = !DILocation(line: 26, column: 25, scope: !432)
!432 = !DILexicalBlockFile(scope: !413, file: !326, discriminator: 1)
!433 = !DILocation(line: 26, column: 23, scope: !413)
!434 = !DILocation(line: 26, column: 47, scope: !413)
!435 = !DILocation(line: 26, column: 51, scope: !413)
!436 = !DILocation(line: 26, column: 42, scope: !437)
!437 = !DILexicalBlockFile(scope: !413, file: !326, discriminator: 2)
!438 = !DILocation(line: 26, column: 40, scope: !413)
!439 = !DILocation(line: 26, column: 34, scope: !413)
!440 = !DILocation(line: 26, column: 7, scope: !413)
!441 = !DILocation(line: 29, column: 17, scope: !325)
!442 = !DILocation(line: 29, column: 3, scope: !325)
!443 = !DILocation(line: 29, column: 11, scope: !325)
!444 = !DILocation(line: 29, column: 15, scope: !325)
!445 = !DILocation(line: 30, column: 35, scope: !325)
!446 = !DILocation(line: 30, column: 33, scope: !325)
!447 = !DILocation(line: 30, column: 50, scope: !325)
!448 = !DILocation(line: 30, column: 54, scope: !325)
!449 = !DILocation(line: 30, column: 44, scope: !325)
!450 = !DILocation(line: 30, column: 48, scope: !325)
!451 = !DILocation(line: 30, column: 39, scope: !325)
!452 = !DILocation(line: 30, column: 37, scope: !325)
!453 = !DILocation(line: 30, column: 3, scope: !325)
!454 = !DILocation(line: 30, column: 11, scope: !325)
!455 = !DILocation(line: 30, column: 15, scope: !325)
!456 = !DILocation(line: 32, column: 3, scope: !325)
!457 = distinct !DISubprogram(name: "transport_sumexp", scope: !1, file: !1, line: 146, type: !458, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !81)
!458 = !DISubroutineType(types: !459)
!459 = !{!43, !171, !171, !73, !43}
!460 = !DILocalVariable(name: "numexp", arg: 1, scope: !457, file: !1, line: 146, type: !171)
!461 = !DILocation(line: 146, column: 28, scope: !457)
!462 = !DILocalVariable(name: "order", arg: 2, scope: !457, file: !1, line: 146, type: !171)
!463 = !DILocation(line: 146, column: 46, scope: !457)
!464 = !DILocalVariable(name: "t", arg: 3, scope: !457, file: !1, line: 146, type: !73)
!465 = !DILocation(line: 146, column: 66, scope: !457)
!466 = !DILocalVariable(name: "x", arg: 4, scope: !457, file: !1, line: 146, type: !43)
!467 = !DILocation(line: 146, column: 76, scope: !457)
!468 = !DILocalVariable(name: "rk", scope: !457, file: !1, line: 148, type: !43)
!469 = !DILocation(line: 148, column: 10, scope: !457)
!470 = !DILocation(line: 148, column: 23, scope: !457)
!471 = !DILocation(line: 148, column: 15, scope: !457)
!472 = !DILocalVariable(name: "sumexp", scope: !457, file: !1, line: 149, type: !43)
!473 = !DILocation(line: 149, column: 10, scope: !457)
!474 = !DILocalVariable(name: "k", scope: !457, file: !1, line: 150, type: !42)
!475 = !DILocation(line: 150, column: 7, scope: !457)
!476 = !DILocation(line: 151, column: 8, scope: !477)
!477 = distinct !DILexicalBlock(scope: !457, file: !1, line: 151, column: 3)
!478 = !DILocation(line: 151, column: 7, scope: !477)
!479 = !DILocation(line: 151, column: 12, scope: !480)
!480 = !DILexicalBlockFile(scope: !481, file: !1, discriminator: 1)
!481 = distinct !DILexicalBlock(scope: !477, file: !1, line: 151, column: 3)
!482 = !DILocation(line: 151, column: 15, scope: !480)
!483 = !DILocation(line: 151, column: 13, scope: !480)
!484 = !DILocation(line: 151, column: 3, scope: !480)
!485 = !DILocalVariable(name: "sum2", scope: !486, file: !1, line: 152, type: !43)
!486 = distinct !DILexicalBlock(scope: !481, file: !1, line: 151, column: 28)
!487 = !DILocation(line: 152, column: 12, scope: !486)
!488 = !DILocalVariable(name: "xk", scope: !486, file: !1, line: 153, type: !43)
!489 = !DILocation(line: 153, column: 12, scope: !486)
!490 = !DILocation(line: 153, column: 23, scope: !486)
!491 = !DILocation(line: 153, column: 26, scope: !486)
!492 = !DILocation(line: 153, column: 25, scope: !486)
!493 = !DILocation(line: 153, column: 21, scope: !486)
!494 = !DILocalVariable(name: "xk1", scope: !486, file: !1, line: 154, type: !43)
!495 = !DILocation(line: 154, column: 12, scope: !486)
!496 = !DILocalVariable(name: "j", scope: !486, file: !1, line: 155, type: !42)
!497 = !DILocation(line: 155, column: 9, scope: !486)
!498 = !DILocation(line: 156, column: 10, scope: !499)
!499 = distinct !DILexicalBlock(scope: !486, file: !1, line: 156, column: 5)
!500 = !DILocation(line: 156, column: 9, scope: !499)
!501 = !DILocation(line: 156, column: 14, scope: !502)
!502 = !DILexicalBlockFile(scope: !503, file: !1, discriminator: 1)
!503 = distinct !DILexicalBlock(scope: !499, file: !1, line: 156, column: 5)
!504 = !DILocation(line: 156, column: 17, scope: !502)
!505 = !DILocation(line: 156, column: 15, scope: !502)
!506 = !DILocation(line: 156, column: 5, scope: !502)
!507 = !DILocation(line: 157, column: 14, scope: !508)
!508 = distinct !DILexicalBlock(scope: !503, file: !1, line: 156, column: 29)
!509 = !DILocation(line: 157, column: 19, scope: !508)
!510 = !DILocation(line: 157, column: 18, scope: !508)
!511 = !DILocation(line: 157, column: 23, scope: !508)
!512 = !DILocation(line: 157, column: 22, scope: !508)
!513 = !DILocation(line: 157, column: 26, scope: !508)
!514 = !DILocation(line: 157, column: 12, scope: !508)
!515 = !DILocation(line: 158, column: 11, scope: !508)
!516 = !DILocation(line: 159, column: 5, scope: !508)
!517 = !DILocation(line: 156, column: 25, scope: !518)
!518 = !DILexicalBlockFile(scope: !503, file: !1, discriminator: 2)
!519 = !DILocation(line: 156, column: 5, scope: !518)
!520 = distinct !{!520, !521}
!521 = !DILocation(line: 156, column: 5, scope: !486)
!522 = !DILocation(line: 160, column: 15, scope: !486)
!523 = !DILocation(line: 160, column: 12, scope: !486)
!524 = !DILocation(line: 161, column: 15, scope: !486)
!525 = !DILocation(line: 161, column: 12, scope: !486)
!526 = !DILocation(line: 162, column: 8, scope: !486)
!527 = !DILocation(line: 163, column: 3, scope: !486)
!528 = !DILocation(line: 151, column: 24, scope: !529)
!529 = !DILexicalBlockFile(scope: !481, file: !1, discriminator: 2)
!530 = !DILocation(line: 151, column: 3, scope: !529)
!531 = distinct !{!531, !532}
!532 = !DILocation(line: 151, column: 3, scope: !457)
!533 = !DILocation(line: 164, column: 10, scope: !457)
!534 = !DILocation(line: 164, column: 3, scope: !457)
!535 = distinct !DISubprogram(name: "gsl_sf_transport_3_e", scope: !1, file: !1, line: 241, type: !71, isLocal: false, isDefinition: true, scopeLine: 242, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !81)
!536 = !DILocalVariable(name: "x", arg: 1, scope: !535, file: !1, line: 241, type: !73)
!537 = !DILocation(line: 241, column: 35, scope: !535)
!538 = !DILocalVariable(name: "result", arg: 2, scope: !535, file: !1, line: 241, type: !74)
!539 = !DILocation(line: 241, column: 54, scope: !535)
!540 = !DILocalVariable(name: "val_infinity", scope: !535, file: !1, line: 243, type: !73)
!541 = !DILocation(line: 243, column: 16, scope: !535)
!542 = !DILocation(line: 247, column: 6, scope: !543)
!543 = distinct !DILexicalBlock(scope: !535, file: !1, line: 247, column: 6)
!544 = !DILocation(line: 247, column: 8, scope: !543)
!545 = !DILocation(line: 247, column: 6, scope: !535)
!546 = !DILocation(line: 248, column: 5, scope: !547)
!547 = distinct !DILexicalBlock(scope: !543, file: !1, line: 247, column: 15)
!548 = distinct !{!548, !546}
!549 = !DILocation(line: 248, column: 5, scope: !550)
!550 = !DILexicalBlockFile(scope: !551, file: !1, discriminator: 1)
!551 = distinct !DILexicalBlock(scope: !547, file: !1, line: 248, column: 5)
!552 = distinct !{!552, !553}
!553 = !DILocation(line: 248, column: 5, scope: !551)
!554 = !DILocation(line: 248, column: 5, scope: !555)
!555 = !DILexicalBlockFile(scope: !556, file: !1, discriminator: 2)
!556 = distinct !DILexicalBlock(scope: !551, file: !1, line: 248, column: 5)
!557 = !DILocation(line: 248, column: 5, scope: !558)
!558 = !DILexicalBlockFile(scope: !551, file: !1, discriminator: 3)
!559 = !DILocation(line: 249, column: 3, scope: !547)
!560 = !DILocation(line: 250, column: 11, scope: !561)
!561 = distinct !DILexicalBlock(scope: !543, file: !1, line: 250, column: 11)
!562 = !DILocation(line: 250, column: 13, scope: !561)
!563 = !DILocation(line: 250, column: 11, scope: !543)
!564 = !DILocation(line: 251, column: 5, scope: !565)
!565 = distinct !DILexicalBlock(scope: !561, file: !1, line: 250, column: 21)
!566 = !DILocation(line: 251, column: 13, scope: !565)
!567 = !DILocation(line: 251, column: 17, scope: !565)
!568 = !DILocation(line: 252, column: 5, scope: !565)
!569 = !DILocation(line: 252, column: 13, scope: !565)
!570 = !DILocation(line: 252, column: 17, scope: !565)
!571 = !DILocation(line: 253, column: 5, scope: !565)
!572 = !DILocation(line: 255, column: 11, scope: !573)
!573 = distinct !DILexicalBlock(scope: !561, file: !1, line: 255, column: 11)
!574 = !DILocation(line: 255, column: 13, scope: !573)
!575 = !DILocation(line: 255, column: 11, scope: !561)
!576 = !DILocation(line: 256, column: 23, scope: !577)
!577 = distinct !DILexicalBlock(scope: !573, file: !1, line: 255, column: 41)
!578 = !DILocation(line: 256, column: 22, scope: !577)
!579 = !DILocation(line: 256, column: 25, scope: !577)
!580 = !DILocation(line: 256, column: 24, scope: !577)
!581 = !DILocation(line: 256, column: 5, scope: !577)
!582 = !DILocation(line: 256, column: 13, scope: !577)
!583 = !DILocation(line: 256, column: 17, scope: !577)
!584 = !DILocation(line: 257, column: 43, scope: !577)
!585 = !DILocation(line: 257, column: 51, scope: !577)
!586 = !DILocation(line: 257, column: 41, scope: !577)
!587 = !DILocation(line: 257, column: 5, scope: !577)
!588 = !DILocation(line: 257, column: 13, scope: !577)
!589 = !DILocation(line: 257, column: 17, scope: !577)
!590 = !DILocation(line: 258, column: 5, scope: !591)
!591 = distinct !DILexicalBlock(scope: !577, file: !1, line: 258, column: 5)
!592 = !DILocation(line: 258, column: 5, scope: !577)
!593 = !DILocation(line: 258, column: 5, scope: !594)
!594 = !DILexicalBlockFile(scope: !591, file: !1, discriminator: 1)
!595 = distinct !{!595, !590}
!596 = !DILocation(line: 258, column: 5, scope: !597)
!597 = !DILexicalBlockFile(scope: !598, file: !1, discriminator: 2)
!598 = distinct !DILexicalBlock(scope: !591, file: !1, line: 258, column: 5)
!599 = !DILocation(line: 258, column: 5, scope: !600)
!600 = !DILexicalBlockFile(scope: !598, file: !1, discriminator: 3)
!601 = !DILocation(line: 259, column: 5, scope: !577)
!602 = !DILocation(line: 261, column: 11, scope: !603)
!603 = distinct !DILexicalBlock(scope: !573, file: !1, line: 261, column: 11)
!604 = !DILocation(line: 261, column: 13, scope: !603)
!605 = !DILocation(line: 261, column: 11, scope: !573)
!606 = !DILocalVariable(name: "x2", scope: !607, file: !1, line: 262, type: !73)
!607 = distinct !DILexicalBlock(scope: !603, file: !1, line: 261, column: 21)
!608 = !DILocation(line: 262, column: 18, scope: !607)
!609 = !DILocation(line: 262, column: 23, scope: !607)
!610 = !DILocation(line: 262, column: 25, scope: !607)
!611 = !DILocation(line: 262, column: 24, scope: !607)
!612 = !DILocalVariable(name: "t", scope: !607, file: !1, line: 263, type: !73)
!613 = !DILocation(line: 263, column: 18, scope: !607)
!614 = !DILocation(line: 263, column: 23, scope: !607)
!615 = !DILocation(line: 263, column: 25, scope: !607)
!616 = !DILocation(line: 263, column: 30, scope: !607)
!617 = !DILocation(line: 263, column: 37, scope: !607)
!618 = !DILocalVariable(name: "result_c", scope: !607, file: !1, line: 264, type: !75)
!619 = !DILocation(line: 264, column: 19, scope: !607)
!620 = !DILocation(line: 265, column: 33, scope: !607)
!621 = !DILocation(line: 265, column: 5, scope: !607)
!622 = !DILocation(line: 266, column: 20, scope: !607)
!623 = !DILocation(line: 266, column: 34, scope: !607)
!624 = !DILocation(line: 266, column: 23, scope: !607)
!625 = !DILocation(line: 266, column: 5, scope: !607)
!626 = !DILocation(line: 266, column: 13, scope: !607)
!627 = !DILocation(line: 266, column: 18, scope: !607)
!628 = !DILocation(line: 267, column: 20, scope: !607)
!629 = !DILocation(line: 267, column: 34, scope: !607)
!630 = !DILocation(line: 267, column: 23, scope: !607)
!631 = !DILocation(line: 267, column: 5, scope: !607)
!632 = !DILocation(line: 267, column: 13, scope: !607)
!633 = !DILocation(line: 267, column: 18, scope: !607)
!634 = !DILocation(line: 268, column: 43, scope: !607)
!635 = !DILocation(line: 268, column: 51, scope: !607)
!636 = !DILocation(line: 268, column: 38, scope: !607)
!637 = !DILocation(line: 268, column: 36, scope: !607)
!638 = !DILocation(line: 268, column: 5, scope: !607)
!639 = !DILocation(line: 268, column: 13, scope: !607)
!640 = !DILocation(line: 268, column: 17, scope: !607)
!641 = !DILocation(line: 269, column: 5, scope: !607)
!642 = !DILocation(line: 271, column: 11, scope: !643)
!643 = distinct !DILexicalBlock(scope: !603, file: !1, line: 271, column: 11)
!644 = !DILocation(line: 271, column: 13, scope: !643)
!645 = !DILocation(line: 271, column: 11, scope: !603)
!646 = !DILocalVariable(name: "numexp", scope: !647, file: !1, line: 272, type: !171)
!647 = distinct !DILexicalBlock(scope: !643, file: !1, line: 271, column: 37)
!648 = !DILocation(line: 272, column: 18, scope: !647)
!649 = !DILocation(line: 272, column: 56, scope: !647)
!650 = !DILocation(line: 272, column: 55, scope: !647)
!651 = !DILocation(line: 272, column: 27, scope: !647)
!652 = !DILocation(line: 272, column: 59, scope: !647)
!653 = !DILocalVariable(name: "sumexp", scope: !647, file: !1, line: 273, type: !73)
!654 = !DILocation(line: 273, column: 18, scope: !647)
!655 = !DILocation(line: 273, column: 44, scope: !647)
!656 = !DILocation(line: 273, column: 60, scope: !647)
!657 = !DILocation(line: 273, column: 59, scope: !647)
!658 = !DILocation(line: 273, column: 55, scope: !647)
!659 = !DILocation(line: 273, column: 64, scope: !647)
!660 = !DILocation(line: 273, column: 27, scope: !661)
!661 = !DILexicalBlockFile(scope: !647, file: !1, discriminator: 1)
!662 = !DILocalVariable(name: "t", scope: !647, file: !1, line: 274, type: !73)
!663 = !DILocation(line: 274, column: 18, scope: !647)
!664 = !DILocation(line: 274, column: 32, scope: !647)
!665 = !DILocation(line: 274, column: 28, scope: !647)
!666 = !DILocation(line: 274, column: 26, scope: !647)
!667 = !DILocation(line: 274, column: 37, scope: !647)
!668 = !DILocation(line: 274, column: 35, scope: !647)
!669 = !DILocation(line: 274, column: 45, scope: !647)
!670 = !DILocation(line: 274, column: 41, scope: !661)
!671 = !DILocation(line: 274, column: 39, scope: !647)
!672 = !DILocation(line: 275, column: 8, scope: !673)
!673 = distinct !DILexicalBlock(scope: !647, file: !1, line: 275, column: 8)
!674 = !DILocation(line: 275, column: 10, scope: !673)
!675 = !DILocation(line: 275, column: 8, scope: !647)
!676 = !DILocation(line: 276, column: 7, scope: !677)
!677 = distinct !DILexicalBlock(scope: !673, file: !1, line: 275, column: 33)
!678 = !DILocation(line: 276, column: 15, scope: !677)
!679 = !DILocation(line: 276, column: 19, scope: !677)
!680 = !DILocation(line: 277, column: 7, scope: !677)
!681 = !DILocation(line: 277, column: 15, scope: !677)
!682 = !DILocation(line: 277, column: 19, scope: !677)
!683 = !DILocation(line: 278, column: 5, scope: !677)
!684 = !DILocalVariable(name: "et", scope: !685, file: !1, line: 280, type: !73)
!685 = distinct !DILexicalBlock(scope: !673, file: !1, line: 279, column: 10)
!686 = !DILocation(line: 280, column: 20, scope: !685)
!687 = !DILocation(line: 280, column: 29, scope: !685)
!688 = !DILocation(line: 280, column: 25, scope: !685)
!689 = !DILocation(line: 281, column: 36, scope: !685)
!690 = !DILocation(line: 281, column: 34, scope: !685)
!691 = !DILocation(line: 281, column: 7, scope: !685)
!692 = !DILocation(line: 281, column: 15, scope: !685)
!693 = !DILocation(line: 281, column: 19, scope: !685)
!694 = !DILocation(line: 282, column: 66, scope: !685)
!695 = !DILocation(line: 282, column: 61, scope: !685)
!696 = !DILocation(line: 282, column: 71, scope: !685)
!697 = !DILocation(line: 282, column: 69, scope: !685)
!698 = !DILocation(line: 282, column: 59, scope: !685)
!699 = !DILocation(line: 282, column: 43, scope: !685)
!700 = !DILocation(line: 282, column: 7, scope: !685)
!701 = !DILocation(line: 282, column: 15, scope: !685)
!702 = !DILocation(line: 282, column: 19, scope: !685)
!703 = !DILocation(line: 284, column: 5, scope: !647)
!704 = !DILocation(line: 286, column: 11, scope: !705)
!705 = distinct !DILexicalBlock(scope: !643, file: !1, line: 286, column: 11)
!706 = !DILocation(line: 286, column: 13, scope: !705)
!707 = !DILocation(line: 286, column: 11, scope: !643)
!708 = !DILocalVariable(name: "numexp", scope: !709, file: !1, line: 287, type: !171)
!709 = distinct !DILexicalBlock(scope: !705, file: !1, line: 286, column: 36)
!710 = !DILocation(line: 287, column: 18, scope: !709)
!711 = !DILocalVariable(name: "sumexp", scope: !709, file: !1, line: 288, type: !73)
!712 = !DILocation(line: 288, column: 18, scope: !709)
!713 = !DILocation(line: 288, column: 60, scope: !709)
!714 = !DILocation(line: 288, column: 27, scope: !709)
!715 = !DILocalVariable(name: "t", scope: !709, file: !1, line: 289, type: !73)
!716 = !DILocation(line: 289, column: 18, scope: !709)
!717 = !DILocation(line: 289, column: 32, scope: !709)
!718 = !DILocation(line: 289, column: 28, scope: !709)
!719 = !DILocation(line: 289, column: 26, scope: !709)
!720 = !DILocation(line: 289, column: 37, scope: !709)
!721 = !DILocation(line: 289, column: 35, scope: !709)
!722 = !DILocation(line: 289, column: 45, scope: !709)
!723 = !DILocation(line: 289, column: 41, scope: !724)
!724 = !DILexicalBlockFile(scope: !709, file: !1, discriminator: 1)
!725 = !DILocation(line: 289, column: 39, scope: !709)
!726 = !DILocation(line: 290, column: 8, scope: !727)
!727 = distinct !DILexicalBlock(scope: !709, file: !1, line: 290, column: 8)
!728 = !DILocation(line: 290, column: 10, scope: !727)
!729 = !DILocation(line: 290, column: 8, scope: !709)
!730 = !DILocation(line: 291, column: 7, scope: !731)
!731 = distinct !DILexicalBlock(scope: !727, file: !1, line: 290, column: 33)
!732 = !DILocation(line: 291, column: 15, scope: !731)
!733 = !DILocation(line: 291, column: 19, scope: !731)
!734 = !DILocation(line: 292, column: 7, scope: !731)
!735 = !DILocation(line: 292, column: 15, scope: !731)
!736 = !DILocation(line: 292, column: 19, scope: !731)
!737 = !DILocation(line: 293, column: 5, scope: !731)
!738 = !DILocalVariable(name: "et", scope: !739, file: !1, line: 295, type: !73)
!739 = distinct !DILexicalBlock(scope: !727, file: !1, line: 294, column: 10)
!740 = !DILocation(line: 295, column: 20, scope: !739)
!741 = !DILocation(line: 295, column: 29, scope: !739)
!742 = !DILocation(line: 295, column: 25, scope: !739)
!743 = !DILocation(line: 296, column: 36, scope: !739)
!744 = !DILocation(line: 296, column: 34, scope: !739)
!745 = !DILocation(line: 296, column: 7, scope: !739)
!746 = !DILocation(line: 296, column: 15, scope: !739)
!747 = !DILocation(line: 296, column: 19, scope: !739)
!748 = !DILocation(line: 297, column: 67, scope: !739)
!749 = !DILocation(line: 297, column: 62, scope: !739)
!750 = !DILocation(line: 297, column: 69, scope: !739)
!751 = !DILocation(line: 297, column: 77, scope: !739)
!752 = !DILocation(line: 297, column: 75, scope: !739)
!753 = !DILocation(line: 297, column: 59, scope: !739)
!754 = !DILocation(line: 297, column: 43, scope: !739)
!755 = !DILocation(line: 297, column: 7, scope: !739)
!756 = !DILocation(line: 297, column: 15, scope: !739)
!757 = !DILocation(line: 297, column: 19, scope: !739)
!758 = !DILocation(line: 299, column: 5, scope: !709)
!759 = !DILocalVariable(name: "t", scope: !760, file: !1, line: 302, type: !73)
!760 = distinct !DILexicalBlock(scope: !705, file: !1, line: 301, column: 8)
!761 = !DILocation(line: 302, column: 18, scope: !760)
!762 = !DILocation(line: 302, column: 32, scope: !760)
!763 = !DILocation(line: 302, column: 28, scope: !760)
!764 = !DILocation(line: 302, column: 26, scope: !760)
!765 = !DILocation(line: 302, column: 37, scope: !760)
!766 = !DILocation(line: 302, column: 35, scope: !760)
!767 = !DILocation(line: 303, column: 8, scope: !768)
!768 = distinct !DILexicalBlock(scope: !760, file: !1, line: 303, column: 8)
!769 = !DILocation(line: 303, column: 10, scope: !768)
!770 = !DILocation(line: 303, column: 8, scope: !760)
!771 = !DILocation(line: 304, column: 7, scope: !772)
!772 = distinct !DILexicalBlock(scope: !768, file: !1, line: 303, column: 33)
!773 = !DILocation(line: 304, column: 15, scope: !772)
!774 = !DILocation(line: 304, column: 19, scope: !772)
!775 = !DILocation(line: 305, column: 7, scope: !772)
!776 = !DILocation(line: 305, column: 15, scope: !772)
!777 = !DILocation(line: 305, column: 19, scope: !772)
!778 = !DILocation(line: 306, column: 5, scope: !772)
!779 = !DILocalVariable(name: "et", scope: !780, file: !1, line: 308, type: !73)
!780 = distinct !DILexicalBlock(scope: !768, file: !1, line: 307, column: 10)
!781 = !DILocation(line: 308, column: 20, scope: !780)
!782 = !DILocation(line: 308, column: 29, scope: !780)
!783 = !DILocation(line: 308, column: 25, scope: !780)
!784 = !DILocation(line: 309, column: 36, scope: !780)
!785 = !DILocation(line: 309, column: 34, scope: !780)
!786 = !DILocation(line: 309, column: 7, scope: !780)
!787 = !DILocation(line: 309, column: 15, scope: !780)
!788 = !DILocation(line: 309, column: 19, scope: !780)
!789 = !DILocation(line: 310, column: 67, scope: !780)
!790 = !DILocation(line: 310, column: 62, scope: !780)
!791 = !DILocation(line: 310, column: 69, scope: !780)
!792 = !DILocation(line: 310, column: 77, scope: !780)
!793 = !DILocation(line: 310, column: 75, scope: !780)
!794 = !DILocation(line: 310, column: 59, scope: !780)
!795 = !DILocation(line: 310, column: 43, scope: !780)
!796 = !DILocation(line: 310, column: 7, scope: !780)
!797 = !DILocation(line: 310, column: 15, scope: !780)
!798 = !DILocation(line: 310, column: 19, scope: !780)
!799 = !DILocation(line: 312, column: 5, scope: !760)
!800 = !DILocation(line: 314, column: 1, scope: !535)
!801 = distinct !DISubprogram(name: "gsl_sf_transport_4_e", scope: !1, file: !1, line: 318, type: !71, isLocal: false, isDefinition: true, scopeLine: 319, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !81)
!802 = !DILocalVariable(name: "x", arg: 1, scope: !801, file: !1, line: 318, type: !73)
!803 = !DILocation(line: 318, column: 35, scope: !801)
!804 = !DILocalVariable(name: "result", arg: 2, scope: !801, file: !1, line: 318, type: !74)
!805 = !DILocation(line: 318, column: 54, scope: !801)
!806 = !DILocalVariable(name: "val_infinity", scope: !801, file: !1, line: 320, type: !73)
!807 = !DILocation(line: 320, column: 16, scope: !801)
!808 = !DILocation(line: 324, column: 6, scope: !809)
!809 = distinct !DILexicalBlock(scope: !801, file: !1, line: 324, column: 6)
!810 = !DILocation(line: 324, column: 8, scope: !809)
!811 = !DILocation(line: 324, column: 6, scope: !801)
!812 = !DILocation(line: 325, column: 5, scope: !813)
!813 = distinct !DILexicalBlock(scope: !809, file: !1, line: 324, column: 15)
!814 = distinct !{!814, !812}
!815 = !DILocation(line: 325, column: 5, scope: !816)
!816 = !DILexicalBlockFile(scope: !817, file: !1, discriminator: 1)
!817 = distinct !DILexicalBlock(scope: !813, file: !1, line: 325, column: 5)
!818 = distinct !{!818, !819}
!819 = !DILocation(line: 325, column: 5, scope: !817)
!820 = !DILocation(line: 325, column: 5, scope: !821)
!821 = !DILexicalBlockFile(scope: !822, file: !1, discriminator: 2)
!822 = distinct !DILexicalBlock(scope: !817, file: !1, line: 325, column: 5)
!823 = !DILocation(line: 325, column: 5, scope: !824)
!824 = !DILexicalBlockFile(scope: !817, file: !1, discriminator: 3)
!825 = !DILocation(line: 326, column: 3, scope: !813)
!826 = !DILocation(line: 327, column: 11, scope: !827)
!827 = distinct !DILexicalBlock(scope: !809, file: !1, line: 327, column: 11)
!828 = !DILocation(line: 327, column: 13, scope: !827)
!829 = !DILocation(line: 327, column: 11, scope: !809)
!830 = !DILocation(line: 328, column: 5, scope: !831)
!831 = distinct !DILexicalBlock(scope: !827, file: !1, line: 327, column: 21)
!832 = !DILocation(line: 328, column: 13, scope: !831)
!833 = !DILocation(line: 328, column: 17, scope: !831)
!834 = !DILocation(line: 329, column: 5, scope: !831)
!835 = !DILocation(line: 329, column: 13, scope: !831)
!836 = !DILocation(line: 329, column: 17, scope: !831)
!837 = !DILocation(line: 330, column: 5, scope: !831)
!838 = !DILocation(line: 332, column: 11, scope: !839)
!839 = distinct !DILexicalBlock(scope: !827, file: !1, line: 332, column: 11)
!840 = !DILocation(line: 332, column: 13, scope: !839)
!841 = !DILocation(line: 332, column: 11, scope: !827)
!842 = !DILocation(line: 333, column: 19, scope: !843)
!843 = distinct !DILexicalBlock(scope: !839, file: !1, line: 332, column: 41)
!844 = !DILocation(line: 333, column: 21, scope: !843)
!845 = !DILocation(line: 333, column: 20, scope: !843)
!846 = !DILocation(line: 333, column: 23, scope: !843)
!847 = !DILocation(line: 333, column: 22, scope: !843)
!848 = !DILocation(line: 333, column: 24, scope: !843)
!849 = !DILocation(line: 333, column: 5, scope: !843)
!850 = !DILocation(line: 333, column: 13, scope: !843)
!851 = !DILocation(line: 333, column: 17, scope: !843)
!852 = !DILocation(line: 334, column: 43, scope: !843)
!853 = !DILocation(line: 334, column: 51, scope: !843)
!854 = !DILocation(line: 334, column: 41, scope: !843)
!855 = !DILocation(line: 334, column: 5, scope: !843)
!856 = !DILocation(line: 334, column: 13, scope: !843)
!857 = !DILocation(line: 334, column: 17, scope: !843)
!858 = !DILocation(line: 335, column: 5, scope: !859)
!859 = distinct !DILexicalBlock(scope: !843, file: !1, line: 335, column: 5)
!860 = !DILocation(line: 335, column: 5, scope: !843)
!861 = !DILocation(line: 335, column: 5, scope: !862)
!862 = !DILexicalBlockFile(scope: !859, file: !1, discriminator: 1)
!863 = distinct !{!863, !858}
!864 = !DILocation(line: 335, column: 5, scope: !865)
!865 = !DILexicalBlockFile(scope: !866, file: !1, discriminator: 2)
!866 = distinct !DILexicalBlock(scope: !859, file: !1, line: 335, column: 5)
!867 = !DILocation(line: 335, column: 5, scope: !868)
!868 = !DILexicalBlockFile(scope: !866, file: !1, discriminator: 3)
!869 = !DILocation(line: 336, column: 5, scope: !843)
!870 = !DILocation(line: 338, column: 11, scope: !871)
!871 = distinct !DILexicalBlock(scope: !839, file: !1, line: 338, column: 11)
!872 = !DILocation(line: 338, column: 13, scope: !871)
!873 = !DILocation(line: 338, column: 11, scope: !839)
!874 = !DILocalVariable(name: "x2", scope: !875, file: !1, line: 339, type: !73)
!875 = distinct !DILexicalBlock(scope: !871, file: !1, line: 338, column: 21)
!876 = !DILocation(line: 339, column: 18, scope: !875)
!877 = !DILocation(line: 339, column: 23, scope: !875)
!878 = !DILocation(line: 339, column: 25, scope: !875)
!879 = !DILocation(line: 339, column: 24, scope: !875)
!880 = !DILocalVariable(name: "t", scope: !875, file: !1, line: 340, type: !73)
!881 = !DILocation(line: 340, column: 18, scope: !875)
!882 = !DILocation(line: 340, column: 23, scope: !875)
!883 = !DILocation(line: 340, column: 25, scope: !875)
!884 = !DILocation(line: 340, column: 30, scope: !875)
!885 = !DILocation(line: 340, column: 37, scope: !875)
!886 = !DILocalVariable(name: "result_c", scope: !875, file: !1, line: 341, type: !75)
!887 = !DILocation(line: 341, column: 19, scope: !875)
!888 = !DILocation(line: 342, column: 33, scope: !875)
!889 = !DILocation(line: 342, column: 5, scope: !875)
!890 = !DILocation(line: 343, column: 20, scope: !875)
!891 = !DILocation(line: 343, column: 23, scope: !875)
!892 = !DILocation(line: 343, column: 22, scope: !875)
!893 = !DILocation(line: 343, column: 36, scope: !875)
!894 = !DILocation(line: 343, column: 25, scope: !875)
!895 = !DILocation(line: 343, column: 5, scope: !875)
!896 = !DILocation(line: 343, column: 13, scope: !875)
!897 = !DILocation(line: 343, column: 18, scope: !875)
!898 = !DILocation(line: 344, column: 20, scope: !875)
!899 = !DILocation(line: 344, column: 23, scope: !875)
!900 = !DILocation(line: 344, column: 22, scope: !875)
!901 = !DILocation(line: 344, column: 36, scope: !875)
!902 = !DILocation(line: 344, column: 25, scope: !875)
!903 = !DILocation(line: 344, column: 5, scope: !875)
!904 = !DILocation(line: 344, column: 13, scope: !875)
!905 = !DILocation(line: 344, column: 18, scope: !875)
!906 = !DILocation(line: 345, column: 49, scope: !875)
!907 = !DILocation(line: 345, column: 57, scope: !875)
!908 = !DILocation(line: 345, column: 44, scope: !875)
!909 = !DILocation(line: 345, column: 42, scope: !875)
!910 = !DILocation(line: 345, column: 5, scope: !875)
!911 = !DILocation(line: 345, column: 13, scope: !875)
!912 = !DILocation(line: 345, column: 17, scope: !875)
!913 = !DILocation(line: 346, column: 5, scope: !875)
!914 = !DILocation(line: 348, column: 11, scope: !915)
!915 = distinct !DILexicalBlock(scope: !871, file: !1, line: 348, column: 11)
!916 = !DILocation(line: 348, column: 13, scope: !915)
!917 = !DILocation(line: 348, column: 11, scope: !871)
!918 = !DILocalVariable(name: "numexp", scope: !919, file: !1, line: 349, type: !171)
!919 = distinct !DILexicalBlock(scope: !915, file: !1, line: 348, column: 37)
!920 = !DILocation(line: 349, column: 18, scope: !919)
!921 = !DILocation(line: 349, column: 56, scope: !919)
!922 = !DILocation(line: 349, column: 55, scope: !919)
!923 = !DILocation(line: 349, column: 27, scope: !919)
!924 = !DILocation(line: 349, column: 59, scope: !919)
!925 = !DILocalVariable(name: "sumexp", scope: !919, file: !1, line: 350, type: !73)
!926 = !DILocation(line: 350, column: 18, scope: !919)
!927 = !DILocation(line: 350, column: 44, scope: !919)
!928 = !DILocation(line: 350, column: 60, scope: !919)
!929 = !DILocation(line: 350, column: 59, scope: !919)
!930 = !DILocation(line: 350, column: 55, scope: !919)
!931 = !DILocation(line: 350, column: 64, scope: !919)
!932 = !DILocation(line: 350, column: 27, scope: !933)
!933 = !DILexicalBlockFile(scope: !919, file: !1, discriminator: 1)
!934 = !DILocalVariable(name: "t", scope: !919, file: !1, line: 351, type: !73)
!935 = !DILocation(line: 351, column: 18, scope: !919)
!936 = !DILocation(line: 351, column: 32, scope: !919)
!937 = !DILocation(line: 351, column: 28, scope: !919)
!938 = !DILocation(line: 351, column: 26, scope: !919)
!939 = !DILocation(line: 351, column: 37, scope: !919)
!940 = !DILocation(line: 351, column: 35, scope: !919)
!941 = !DILocation(line: 351, column: 45, scope: !919)
!942 = !DILocation(line: 351, column: 41, scope: !933)
!943 = !DILocation(line: 351, column: 39, scope: !919)
!944 = !DILocation(line: 352, column: 8, scope: !945)
!945 = distinct !DILexicalBlock(scope: !919, file: !1, line: 352, column: 8)
!946 = !DILocation(line: 352, column: 10, scope: !945)
!947 = !DILocation(line: 352, column: 8, scope: !919)
!948 = !DILocation(line: 353, column: 7, scope: !949)
!949 = distinct !DILexicalBlock(scope: !945, file: !1, line: 352, column: 33)
!950 = !DILocation(line: 353, column: 15, scope: !949)
!951 = !DILocation(line: 353, column: 19, scope: !949)
!952 = !DILocation(line: 354, column: 7, scope: !949)
!953 = !DILocation(line: 354, column: 15, scope: !949)
!954 = !DILocation(line: 354, column: 19, scope: !949)
!955 = !DILocation(line: 355, column: 5, scope: !949)
!956 = !DILocalVariable(name: "et", scope: !957, file: !1, line: 357, type: !73)
!957 = distinct !DILexicalBlock(scope: !945, file: !1, line: 356, column: 10)
!958 = !DILocation(line: 357, column: 20, scope: !957)
!959 = !DILocation(line: 357, column: 29, scope: !957)
!960 = !DILocation(line: 357, column: 25, scope: !957)
!961 = !DILocation(line: 358, column: 36, scope: !957)
!962 = !DILocation(line: 358, column: 34, scope: !957)
!963 = !DILocation(line: 358, column: 7, scope: !957)
!964 = !DILocation(line: 358, column: 15, scope: !957)
!965 = !DILocation(line: 358, column: 19, scope: !957)
!966 = !DILocation(line: 359, column: 67, scope: !957)
!967 = !DILocation(line: 359, column: 62, scope: !957)
!968 = !DILocation(line: 359, column: 69, scope: !957)
!969 = !DILocation(line: 359, column: 77, scope: !957)
!970 = !DILocation(line: 359, column: 75, scope: !957)
!971 = !DILocation(line: 359, column: 59, scope: !957)
!972 = !DILocation(line: 359, column: 43, scope: !957)
!973 = !DILocation(line: 359, column: 7, scope: !957)
!974 = !DILocation(line: 359, column: 15, scope: !957)
!975 = !DILocation(line: 359, column: 19, scope: !957)
!976 = !DILocation(line: 361, column: 5, scope: !919)
!977 = !DILocation(line: 363, column: 11, scope: !978)
!978 = distinct !DILexicalBlock(scope: !915, file: !1, line: 363, column: 11)
!979 = !DILocation(line: 363, column: 13, scope: !978)
!980 = !DILocation(line: 363, column: 11, scope: !915)
!981 = !DILocalVariable(name: "numexp", scope: !982, file: !1, line: 364, type: !171)
!982 = distinct !DILexicalBlock(scope: !978, file: !1, line: 363, column: 36)
!983 = !DILocation(line: 364, column: 18, scope: !982)
!984 = !DILocalVariable(name: "sumexp", scope: !982, file: !1, line: 365, type: !73)
!985 = !DILocation(line: 365, column: 18, scope: !982)
!986 = !DILocation(line: 365, column: 60, scope: !982)
!987 = !DILocation(line: 365, column: 27, scope: !982)
!988 = !DILocalVariable(name: "t", scope: !982, file: !1, line: 366, type: !73)
!989 = !DILocation(line: 366, column: 18, scope: !982)
!990 = !DILocation(line: 366, column: 32, scope: !982)
!991 = !DILocation(line: 366, column: 28, scope: !982)
!992 = !DILocation(line: 366, column: 26, scope: !982)
!993 = !DILocation(line: 366, column: 37, scope: !982)
!994 = !DILocation(line: 366, column: 35, scope: !982)
!995 = !DILocation(line: 366, column: 45, scope: !982)
!996 = !DILocation(line: 366, column: 41, scope: !997)
!997 = !DILexicalBlockFile(scope: !982, file: !1, discriminator: 1)
!998 = !DILocation(line: 366, column: 39, scope: !982)
!999 = !DILocation(line: 367, column: 8, scope: !1000)
!1000 = distinct !DILexicalBlock(scope: !982, file: !1, line: 367, column: 8)
!1001 = !DILocation(line: 367, column: 10, scope: !1000)
!1002 = !DILocation(line: 367, column: 8, scope: !982)
!1003 = !DILocation(line: 368, column: 7, scope: !1004)
!1004 = distinct !DILexicalBlock(scope: !1000, file: !1, line: 367, column: 33)
!1005 = !DILocation(line: 368, column: 15, scope: !1004)
!1006 = !DILocation(line: 368, column: 19, scope: !1004)
!1007 = !DILocation(line: 369, column: 7, scope: !1004)
!1008 = !DILocation(line: 369, column: 15, scope: !1004)
!1009 = !DILocation(line: 369, column: 19, scope: !1004)
!1010 = !DILocation(line: 370, column: 5, scope: !1004)
!1011 = !DILocalVariable(name: "et", scope: !1012, file: !1, line: 372, type: !73)
!1012 = distinct !DILexicalBlock(scope: !1000, file: !1, line: 371, column: 10)
!1013 = !DILocation(line: 372, column: 20, scope: !1012)
!1014 = !DILocation(line: 372, column: 29, scope: !1012)
!1015 = !DILocation(line: 372, column: 25, scope: !1012)
!1016 = !DILocation(line: 373, column: 36, scope: !1012)
!1017 = !DILocation(line: 373, column: 34, scope: !1012)
!1018 = !DILocation(line: 373, column: 7, scope: !1012)
!1019 = !DILocation(line: 373, column: 15, scope: !1012)
!1020 = !DILocation(line: 373, column: 19, scope: !1012)
!1021 = !DILocation(line: 374, column: 67, scope: !1012)
!1022 = !DILocation(line: 374, column: 62, scope: !1012)
!1023 = !DILocation(line: 374, column: 69, scope: !1012)
!1024 = !DILocation(line: 374, column: 77, scope: !1012)
!1025 = !DILocation(line: 374, column: 75, scope: !1012)
!1026 = !DILocation(line: 374, column: 59, scope: !1012)
!1027 = !DILocation(line: 374, column: 43, scope: !1012)
!1028 = !DILocation(line: 374, column: 7, scope: !1012)
!1029 = !DILocation(line: 374, column: 15, scope: !1012)
!1030 = !DILocation(line: 374, column: 19, scope: !1012)
!1031 = !DILocation(line: 376, column: 5, scope: !982)
!1032 = !DILocalVariable(name: "t", scope: !1033, file: !1, line: 379, type: !73)
!1033 = distinct !DILexicalBlock(scope: !978, file: !1, line: 378, column: 8)
!1034 = !DILocation(line: 379, column: 18, scope: !1033)
!1035 = !DILocation(line: 379, column: 32, scope: !1033)
!1036 = !DILocation(line: 379, column: 28, scope: !1033)
!1037 = !DILocation(line: 379, column: 26, scope: !1033)
!1038 = !DILocation(line: 379, column: 37, scope: !1033)
!1039 = !DILocation(line: 379, column: 35, scope: !1033)
!1040 = !DILocation(line: 380, column: 8, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !1033, file: !1, line: 380, column: 8)
!1042 = !DILocation(line: 380, column: 10, scope: !1041)
!1043 = !DILocation(line: 380, column: 8, scope: !1033)
!1044 = !DILocation(line: 381, column: 7, scope: !1045)
!1045 = distinct !DILexicalBlock(scope: !1041, file: !1, line: 380, column: 33)
!1046 = !DILocation(line: 381, column: 15, scope: !1045)
!1047 = !DILocation(line: 381, column: 19, scope: !1045)
!1048 = !DILocation(line: 382, column: 7, scope: !1045)
!1049 = !DILocation(line: 382, column: 15, scope: !1045)
!1050 = !DILocation(line: 382, column: 19, scope: !1045)
!1051 = !DILocation(line: 383, column: 5, scope: !1045)
!1052 = !DILocalVariable(name: "et", scope: !1053, file: !1, line: 385, type: !73)
!1053 = distinct !DILexicalBlock(scope: !1041, file: !1, line: 384, column: 10)
!1054 = !DILocation(line: 385, column: 20, scope: !1053)
!1055 = !DILocation(line: 385, column: 29, scope: !1053)
!1056 = !DILocation(line: 385, column: 25, scope: !1053)
!1057 = !DILocation(line: 386, column: 36, scope: !1053)
!1058 = !DILocation(line: 386, column: 34, scope: !1053)
!1059 = !DILocation(line: 386, column: 7, scope: !1053)
!1060 = !DILocation(line: 386, column: 15, scope: !1053)
!1061 = !DILocation(line: 386, column: 19, scope: !1053)
!1062 = !DILocation(line: 387, column: 67, scope: !1053)
!1063 = !DILocation(line: 387, column: 62, scope: !1053)
!1064 = !DILocation(line: 387, column: 69, scope: !1053)
!1065 = !DILocation(line: 387, column: 77, scope: !1053)
!1066 = !DILocation(line: 387, column: 75, scope: !1053)
!1067 = !DILocation(line: 387, column: 59, scope: !1053)
!1068 = !DILocation(line: 387, column: 43, scope: !1053)
!1069 = !DILocation(line: 387, column: 7, scope: !1053)
!1070 = !DILocation(line: 387, column: 15, scope: !1053)
!1071 = !DILocation(line: 387, column: 19, scope: !1053)
!1072 = !DILocation(line: 389, column: 5, scope: !1033)
!1073 = !DILocation(line: 391, column: 1, scope: !801)
!1074 = distinct !DISubprogram(name: "gsl_sf_transport_5_e", scope: !1, file: !1, line: 395, type: !71, isLocal: false, isDefinition: true, scopeLine: 396, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !81)
!1075 = !DILocalVariable(name: "x", arg: 1, scope: !1074, file: !1, line: 395, type: !73)
!1076 = !DILocation(line: 395, column: 35, scope: !1074)
!1077 = !DILocalVariable(name: "result", arg: 2, scope: !1074, file: !1, line: 395, type: !74)
!1078 = !DILocation(line: 395, column: 54, scope: !1074)
!1079 = !DILocalVariable(name: "val_infinity", scope: !1074, file: !1, line: 397, type: !73)
!1080 = !DILocation(line: 397, column: 16, scope: !1074)
!1081 = !DILocation(line: 401, column: 6, scope: !1082)
!1082 = distinct !DILexicalBlock(scope: !1074, file: !1, line: 401, column: 6)
!1083 = !DILocation(line: 401, column: 8, scope: !1082)
!1084 = !DILocation(line: 401, column: 6, scope: !1074)
!1085 = !DILocation(line: 402, column: 5, scope: !1086)
!1086 = distinct !DILexicalBlock(scope: !1082, file: !1, line: 401, column: 15)
!1087 = distinct !{!1087, !1085}
!1088 = !DILocation(line: 402, column: 5, scope: !1089)
!1089 = !DILexicalBlockFile(scope: !1090, file: !1, discriminator: 1)
!1090 = distinct !DILexicalBlock(scope: !1086, file: !1, line: 402, column: 5)
!1091 = distinct !{!1091, !1092}
!1092 = !DILocation(line: 402, column: 5, scope: !1090)
!1093 = !DILocation(line: 402, column: 5, scope: !1094)
!1094 = !DILexicalBlockFile(scope: !1095, file: !1, discriminator: 2)
!1095 = distinct !DILexicalBlock(scope: !1090, file: !1, line: 402, column: 5)
!1096 = !DILocation(line: 402, column: 5, scope: !1097)
!1097 = !DILexicalBlockFile(scope: !1090, file: !1, discriminator: 3)
!1098 = !DILocation(line: 403, column: 3, scope: !1086)
!1099 = !DILocation(line: 404, column: 11, scope: !1100)
!1100 = distinct !DILexicalBlock(scope: !1082, file: !1, line: 404, column: 11)
!1101 = !DILocation(line: 404, column: 13, scope: !1100)
!1102 = !DILocation(line: 404, column: 11, scope: !1082)
!1103 = !DILocation(line: 405, column: 5, scope: !1104)
!1104 = distinct !DILexicalBlock(scope: !1100, file: !1, line: 404, column: 21)
!1105 = !DILocation(line: 405, column: 13, scope: !1104)
!1106 = !DILocation(line: 405, column: 17, scope: !1104)
!1107 = !DILocation(line: 406, column: 5, scope: !1104)
!1108 = !DILocation(line: 406, column: 13, scope: !1104)
!1109 = !DILocation(line: 406, column: 17, scope: !1104)
!1110 = !DILocation(line: 407, column: 5, scope: !1104)
!1111 = !DILocation(line: 409, column: 11, scope: !1112)
!1112 = distinct !DILexicalBlock(scope: !1100, file: !1, line: 409, column: 11)
!1113 = !DILocation(line: 409, column: 13, scope: !1112)
!1114 = !DILocation(line: 409, column: 11, scope: !1100)
!1115 = !DILocation(line: 410, column: 19, scope: !1116)
!1116 = distinct !DILexicalBlock(scope: !1112, file: !1, line: 409, column: 41)
!1117 = !DILocation(line: 410, column: 21, scope: !1116)
!1118 = !DILocation(line: 410, column: 20, scope: !1116)
!1119 = !DILocation(line: 410, column: 23, scope: !1116)
!1120 = !DILocation(line: 410, column: 22, scope: !1116)
!1121 = !DILocation(line: 410, column: 25, scope: !1116)
!1122 = !DILocation(line: 410, column: 24, scope: !1116)
!1123 = !DILocation(line: 410, column: 26, scope: !1116)
!1124 = !DILocation(line: 410, column: 5, scope: !1116)
!1125 = !DILocation(line: 410, column: 13, scope: !1116)
!1126 = !DILocation(line: 410, column: 17, scope: !1116)
!1127 = !DILocation(line: 411, column: 43, scope: !1116)
!1128 = !DILocation(line: 411, column: 51, scope: !1116)
!1129 = !DILocation(line: 411, column: 41, scope: !1116)
!1130 = !DILocation(line: 411, column: 5, scope: !1116)
!1131 = !DILocation(line: 411, column: 13, scope: !1116)
!1132 = !DILocation(line: 411, column: 17, scope: !1116)
!1133 = !DILocation(line: 412, column: 5, scope: !1134)
!1134 = distinct !DILexicalBlock(scope: !1116, file: !1, line: 412, column: 5)
!1135 = !DILocation(line: 412, column: 5, scope: !1116)
!1136 = !DILocation(line: 412, column: 5, scope: !1137)
!1137 = !DILexicalBlockFile(scope: !1134, file: !1, discriminator: 1)
!1138 = distinct !{!1138, !1133}
!1139 = !DILocation(line: 412, column: 5, scope: !1140)
!1140 = !DILexicalBlockFile(scope: !1141, file: !1, discriminator: 2)
!1141 = distinct !DILexicalBlock(scope: !1134, file: !1, line: 412, column: 5)
!1142 = !DILocation(line: 412, column: 5, scope: !1143)
!1143 = !DILexicalBlockFile(scope: !1141, file: !1, discriminator: 3)
!1144 = !DILocation(line: 413, column: 5, scope: !1116)
!1145 = !DILocation(line: 415, column: 11, scope: !1146)
!1146 = distinct !DILexicalBlock(scope: !1112, file: !1, line: 415, column: 11)
!1147 = !DILocation(line: 415, column: 13, scope: !1146)
!1148 = !DILocation(line: 415, column: 11, scope: !1112)
!1149 = !DILocalVariable(name: "x2", scope: !1150, file: !1, line: 416, type: !73)
!1150 = distinct !DILexicalBlock(scope: !1146, file: !1, line: 415, column: 21)
!1151 = !DILocation(line: 416, column: 18, scope: !1150)
!1152 = !DILocation(line: 416, column: 23, scope: !1150)
!1153 = !DILocation(line: 416, column: 25, scope: !1150)
!1154 = !DILocation(line: 416, column: 24, scope: !1150)
!1155 = !DILocalVariable(name: "t", scope: !1150, file: !1, line: 417, type: !73)
!1156 = !DILocation(line: 417, column: 18, scope: !1150)
!1157 = !DILocation(line: 417, column: 23, scope: !1150)
!1158 = !DILocation(line: 417, column: 25, scope: !1150)
!1159 = !DILocation(line: 417, column: 30, scope: !1150)
!1160 = !DILocation(line: 417, column: 37, scope: !1150)
!1161 = !DILocalVariable(name: "result_c", scope: !1150, file: !1, line: 418, type: !75)
!1162 = !DILocation(line: 418, column: 19, scope: !1150)
!1163 = !DILocation(line: 419, column: 33, scope: !1150)
!1164 = !DILocation(line: 419, column: 5, scope: !1150)
!1165 = !DILocation(line: 420, column: 20, scope: !1150)
!1166 = !DILocation(line: 420, column: 23, scope: !1150)
!1167 = !DILocation(line: 420, column: 22, scope: !1150)
!1168 = !DILocation(line: 420, column: 37, scope: !1150)
!1169 = !DILocation(line: 420, column: 26, scope: !1150)
!1170 = !DILocation(line: 420, column: 5, scope: !1150)
!1171 = !DILocation(line: 420, column: 13, scope: !1150)
!1172 = !DILocation(line: 420, column: 18, scope: !1150)
!1173 = !DILocation(line: 421, column: 20, scope: !1150)
!1174 = !DILocation(line: 421, column: 23, scope: !1150)
!1175 = !DILocation(line: 421, column: 22, scope: !1150)
!1176 = !DILocation(line: 421, column: 37, scope: !1150)
!1177 = !DILocation(line: 421, column: 26, scope: !1150)
!1178 = !DILocation(line: 421, column: 5, scope: !1150)
!1179 = !DILocation(line: 421, column: 13, scope: !1150)
!1180 = !DILocation(line: 421, column: 18, scope: !1150)
!1181 = !DILocation(line: 422, column: 49, scope: !1150)
!1182 = !DILocation(line: 422, column: 57, scope: !1150)
!1183 = !DILocation(line: 422, column: 44, scope: !1150)
!1184 = !DILocation(line: 422, column: 42, scope: !1150)
!1185 = !DILocation(line: 422, column: 5, scope: !1150)
!1186 = !DILocation(line: 422, column: 13, scope: !1150)
!1187 = !DILocation(line: 422, column: 17, scope: !1150)
!1188 = !DILocation(line: 423, column: 5, scope: !1150)
!1189 = !DILocation(line: 425, column: 11, scope: !1190)
!1190 = distinct !DILexicalBlock(scope: !1146, file: !1, line: 425, column: 11)
!1191 = !DILocation(line: 425, column: 13, scope: !1190)
!1192 = !DILocation(line: 425, column: 11, scope: !1146)
!1193 = !DILocalVariable(name: "numexp", scope: !1194, file: !1, line: 426, type: !171)
!1194 = distinct !DILexicalBlock(scope: !1190, file: !1, line: 425, column: 37)
!1195 = !DILocation(line: 426, column: 18, scope: !1194)
!1196 = !DILocation(line: 426, column: 56, scope: !1194)
!1197 = !DILocation(line: 426, column: 55, scope: !1194)
!1198 = !DILocation(line: 426, column: 27, scope: !1194)
!1199 = !DILocation(line: 426, column: 59, scope: !1194)
!1200 = !DILocalVariable(name: "sumexp", scope: !1194, file: !1, line: 427, type: !73)
!1201 = !DILocation(line: 427, column: 18, scope: !1194)
!1202 = !DILocation(line: 427, column: 44, scope: !1194)
!1203 = !DILocation(line: 427, column: 60, scope: !1194)
!1204 = !DILocation(line: 427, column: 59, scope: !1194)
!1205 = !DILocation(line: 427, column: 55, scope: !1194)
!1206 = !DILocation(line: 427, column: 64, scope: !1194)
!1207 = !DILocation(line: 427, column: 27, scope: !1208)
!1208 = !DILexicalBlockFile(scope: !1194, file: !1, discriminator: 1)
!1209 = !DILocalVariable(name: "t", scope: !1194, file: !1, line: 428, type: !73)
!1210 = !DILocation(line: 428, column: 18, scope: !1194)
!1211 = !DILocation(line: 428, column: 32, scope: !1194)
!1212 = !DILocation(line: 428, column: 28, scope: !1194)
!1213 = !DILocation(line: 428, column: 26, scope: !1194)
!1214 = !DILocation(line: 428, column: 37, scope: !1194)
!1215 = !DILocation(line: 428, column: 35, scope: !1194)
!1216 = !DILocation(line: 428, column: 45, scope: !1194)
!1217 = !DILocation(line: 428, column: 41, scope: !1208)
!1218 = !DILocation(line: 428, column: 39, scope: !1194)
!1219 = !DILocation(line: 429, column: 8, scope: !1220)
!1220 = distinct !DILexicalBlock(scope: !1194, file: !1, line: 429, column: 8)
!1221 = !DILocation(line: 429, column: 10, scope: !1220)
!1222 = !DILocation(line: 429, column: 8, scope: !1194)
!1223 = !DILocation(line: 430, column: 7, scope: !1224)
!1224 = distinct !DILexicalBlock(scope: !1220, file: !1, line: 429, column: 33)
!1225 = !DILocation(line: 430, column: 15, scope: !1224)
!1226 = !DILocation(line: 430, column: 19, scope: !1224)
!1227 = !DILocation(line: 431, column: 7, scope: !1224)
!1228 = !DILocation(line: 431, column: 15, scope: !1224)
!1229 = !DILocation(line: 431, column: 19, scope: !1224)
!1230 = !DILocation(line: 432, column: 5, scope: !1224)
!1231 = !DILocalVariable(name: "et", scope: !1232, file: !1, line: 434, type: !73)
!1232 = distinct !DILexicalBlock(scope: !1220, file: !1, line: 433, column: 10)
!1233 = !DILocation(line: 434, column: 20, scope: !1232)
!1234 = !DILocation(line: 434, column: 29, scope: !1232)
!1235 = !DILocation(line: 434, column: 25, scope: !1232)
!1236 = !DILocation(line: 435, column: 36, scope: !1232)
!1237 = !DILocation(line: 435, column: 34, scope: !1232)
!1238 = !DILocation(line: 435, column: 7, scope: !1232)
!1239 = !DILocation(line: 435, column: 15, scope: !1232)
!1240 = !DILocation(line: 435, column: 19, scope: !1232)
!1241 = !DILocation(line: 436, column: 67, scope: !1232)
!1242 = !DILocation(line: 436, column: 62, scope: !1232)
!1243 = !DILocation(line: 436, column: 69, scope: !1232)
!1244 = !DILocation(line: 436, column: 77, scope: !1232)
!1245 = !DILocation(line: 436, column: 75, scope: !1232)
!1246 = !DILocation(line: 436, column: 59, scope: !1232)
!1247 = !DILocation(line: 436, column: 43, scope: !1232)
!1248 = !DILocation(line: 436, column: 7, scope: !1232)
!1249 = !DILocation(line: 436, column: 15, scope: !1232)
!1250 = !DILocation(line: 436, column: 19, scope: !1232)
!1251 = !DILocation(line: 438, column: 5, scope: !1194)
!1252 = !DILocation(line: 440, column: 11, scope: !1253)
!1253 = distinct !DILexicalBlock(scope: !1190, file: !1, line: 440, column: 11)
!1254 = !DILocation(line: 440, column: 13, scope: !1253)
!1255 = !DILocation(line: 440, column: 11, scope: !1190)
!1256 = !DILocalVariable(name: "numexp", scope: !1257, file: !1, line: 441, type: !171)
!1257 = distinct !DILexicalBlock(scope: !1253, file: !1, line: 440, column: 36)
!1258 = !DILocation(line: 441, column: 18, scope: !1257)
!1259 = !DILocalVariable(name: "sumexp", scope: !1257, file: !1, line: 442, type: !73)
!1260 = !DILocation(line: 442, column: 18, scope: !1257)
!1261 = !DILocation(line: 442, column: 60, scope: !1257)
!1262 = !DILocation(line: 442, column: 27, scope: !1257)
!1263 = !DILocalVariable(name: "t", scope: !1257, file: !1, line: 443, type: !73)
!1264 = !DILocation(line: 443, column: 18, scope: !1257)
!1265 = !DILocation(line: 443, column: 32, scope: !1257)
!1266 = !DILocation(line: 443, column: 28, scope: !1257)
!1267 = !DILocation(line: 443, column: 26, scope: !1257)
!1268 = !DILocation(line: 443, column: 37, scope: !1257)
!1269 = !DILocation(line: 443, column: 35, scope: !1257)
!1270 = !DILocation(line: 443, column: 45, scope: !1257)
!1271 = !DILocation(line: 443, column: 41, scope: !1272)
!1272 = !DILexicalBlockFile(scope: !1257, file: !1, discriminator: 1)
!1273 = !DILocation(line: 443, column: 39, scope: !1257)
!1274 = !DILocation(line: 444, column: 8, scope: !1275)
!1275 = distinct !DILexicalBlock(scope: !1257, file: !1, line: 444, column: 8)
!1276 = !DILocation(line: 444, column: 10, scope: !1275)
!1277 = !DILocation(line: 444, column: 8, scope: !1257)
!1278 = !DILocation(line: 445, column: 7, scope: !1279)
!1279 = distinct !DILexicalBlock(scope: !1275, file: !1, line: 444, column: 33)
!1280 = !DILocation(line: 445, column: 15, scope: !1279)
!1281 = !DILocation(line: 445, column: 19, scope: !1279)
!1282 = !DILocation(line: 446, column: 7, scope: !1279)
!1283 = !DILocation(line: 446, column: 15, scope: !1279)
!1284 = !DILocation(line: 446, column: 19, scope: !1279)
!1285 = !DILocation(line: 447, column: 5, scope: !1279)
!1286 = !DILocalVariable(name: "et", scope: !1287, file: !1, line: 449, type: !73)
!1287 = distinct !DILexicalBlock(scope: !1275, file: !1, line: 448, column: 10)
!1288 = !DILocation(line: 449, column: 20, scope: !1287)
!1289 = !DILocation(line: 449, column: 29, scope: !1287)
!1290 = !DILocation(line: 449, column: 25, scope: !1287)
!1291 = !DILocation(line: 450, column: 36, scope: !1287)
!1292 = !DILocation(line: 450, column: 34, scope: !1287)
!1293 = !DILocation(line: 450, column: 7, scope: !1287)
!1294 = !DILocation(line: 450, column: 15, scope: !1287)
!1295 = !DILocation(line: 450, column: 19, scope: !1287)
!1296 = !DILocation(line: 451, column: 67, scope: !1287)
!1297 = !DILocation(line: 451, column: 62, scope: !1287)
!1298 = !DILocation(line: 451, column: 69, scope: !1287)
!1299 = !DILocation(line: 451, column: 77, scope: !1287)
!1300 = !DILocation(line: 451, column: 75, scope: !1287)
!1301 = !DILocation(line: 451, column: 59, scope: !1287)
!1302 = !DILocation(line: 451, column: 43, scope: !1287)
!1303 = !DILocation(line: 451, column: 7, scope: !1287)
!1304 = !DILocation(line: 451, column: 15, scope: !1287)
!1305 = !DILocation(line: 451, column: 19, scope: !1287)
!1306 = !DILocation(line: 453, column: 5, scope: !1257)
!1307 = !DILocalVariable(name: "t", scope: !1308, file: !1, line: 456, type: !73)
!1308 = distinct !DILexicalBlock(scope: !1253, file: !1, line: 455, column: 8)
!1309 = !DILocation(line: 456, column: 18, scope: !1308)
!1310 = !DILocation(line: 456, column: 32, scope: !1308)
!1311 = !DILocation(line: 456, column: 28, scope: !1308)
!1312 = !DILocation(line: 456, column: 26, scope: !1308)
!1313 = !DILocation(line: 456, column: 37, scope: !1308)
!1314 = !DILocation(line: 456, column: 35, scope: !1308)
!1315 = !DILocation(line: 457, column: 8, scope: !1316)
!1316 = distinct !DILexicalBlock(scope: !1308, file: !1, line: 457, column: 8)
!1317 = !DILocation(line: 457, column: 10, scope: !1316)
!1318 = !DILocation(line: 457, column: 8, scope: !1308)
!1319 = !DILocation(line: 458, column: 7, scope: !1320)
!1320 = distinct !DILexicalBlock(scope: !1316, file: !1, line: 457, column: 33)
!1321 = !DILocation(line: 458, column: 15, scope: !1320)
!1322 = !DILocation(line: 458, column: 19, scope: !1320)
!1323 = !DILocation(line: 459, column: 7, scope: !1320)
!1324 = !DILocation(line: 459, column: 15, scope: !1320)
!1325 = !DILocation(line: 459, column: 19, scope: !1320)
!1326 = !DILocation(line: 460, column: 5, scope: !1320)
!1327 = !DILocalVariable(name: "et", scope: !1328, file: !1, line: 462, type: !73)
!1328 = distinct !DILexicalBlock(scope: !1316, file: !1, line: 461, column: 10)
!1329 = !DILocation(line: 462, column: 20, scope: !1328)
!1330 = !DILocation(line: 462, column: 29, scope: !1328)
!1331 = !DILocation(line: 462, column: 25, scope: !1328)
!1332 = !DILocation(line: 463, column: 36, scope: !1328)
!1333 = !DILocation(line: 463, column: 34, scope: !1328)
!1334 = !DILocation(line: 463, column: 7, scope: !1328)
!1335 = !DILocation(line: 463, column: 15, scope: !1328)
!1336 = !DILocation(line: 463, column: 19, scope: !1328)
!1337 = !DILocation(line: 464, column: 67, scope: !1328)
!1338 = !DILocation(line: 464, column: 62, scope: !1328)
!1339 = !DILocation(line: 464, column: 69, scope: !1328)
!1340 = !DILocation(line: 464, column: 77, scope: !1328)
!1341 = !DILocation(line: 464, column: 75, scope: !1328)
!1342 = !DILocation(line: 464, column: 59, scope: !1328)
!1343 = !DILocation(line: 464, column: 43, scope: !1328)
!1344 = !DILocation(line: 464, column: 7, scope: !1328)
!1345 = !DILocation(line: 464, column: 15, scope: !1328)
!1346 = !DILocation(line: 464, column: 19, scope: !1328)
!1347 = !DILocation(line: 466, column: 5, scope: !1308)
!1348 = !DILocation(line: 468, column: 1, scope: !1074)
!1349 = distinct !DISubprogram(name: "gsl_sf_transport_2", scope: !1, file: !1, line: 474, type: !1350, isLocal: false, isDefinition: true, scopeLine: 475, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !81)
!1350 = !DISubroutineType(types: !1351)
!1351 = !{!43, !73}
!1352 = !DILocalVariable(name: "x", arg: 1, scope: !1349, file: !1, line: 474, type: !73)
!1353 = !DILocation(line: 474, column: 40, scope: !1349)
!1354 = !DILocalVariable(name: "result", scope: !1349, file: !1, line: 476, type: !75)
!1355 = !DILocation(line: 476, column: 3, scope: !1349)
!1356 = !DILocalVariable(name: "status", scope: !1349, file: !1, line: 476, type: !42)
!1357 = !DILocation(line: 476, column: 3, scope: !1358)
!1358 = distinct !DILexicalBlock(scope: !1349, file: !1, line: 476, column: 3)
!1359 = !DILocation(line: 476, column: 3, scope: !1360)
!1360 = !DILexicalBlockFile(scope: !1361, file: !1, discriminator: 1)
!1361 = distinct !DILexicalBlock(scope: !1358, file: !1, line: 476, column: 3)
!1362 = distinct !{!1362, !1363}
!1363 = !DILocation(line: 476, column: 3, scope: !1361)
!1364 = !DILocation(line: 476, column: 3, scope: !1365)
!1365 = !DILexicalBlockFile(scope: !1366, file: !1, discriminator: 2)
!1366 = distinct !DILexicalBlock(scope: !1361, file: !1, line: 476, column: 3)
!1367 = !DILocation(line: 476, column: 3, scope: !1368)
!1368 = !DILexicalBlockFile(scope: !1361, file: !1, discriminator: 3)
!1369 = !DILocation(line: 476, column: 3, scope: !1370)
!1370 = !DILexicalBlockFile(scope: !1349, file: !1, discriminator: 4)
!1371 = !DILocation(line: 477, column: 1, scope: !1349)
!1372 = distinct !DISubprogram(name: "gsl_sf_transport_3", scope: !1, file: !1, line: 479, type: !1350, isLocal: false, isDefinition: true, scopeLine: 480, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !81)
!1373 = !DILocalVariable(name: "x", arg: 1, scope: !1372, file: !1, line: 479, type: !73)
!1374 = !DILocation(line: 479, column: 40, scope: !1372)
!1375 = !DILocalVariable(name: "result", scope: !1372, file: !1, line: 481, type: !75)
!1376 = !DILocation(line: 481, column: 3, scope: !1372)
!1377 = !DILocalVariable(name: "status", scope: !1372, file: !1, line: 481, type: !42)
!1378 = !DILocation(line: 481, column: 3, scope: !1379)
!1379 = distinct !DILexicalBlock(scope: !1372, file: !1, line: 481, column: 3)
!1380 = !DILocation(line: 481, column: 3, scope: !1381)
!1381 = !DILexicalBlockFile(scope: !1382, file: !1, discriminator: 1)
!1382 = distinct !DILexicalBlock(scope: !1379, file: !1, line: 481, column: 3)
!1383 = distinct !{!1383, !1384}
!1384 = !DILocation(line: 481, column: 3, scope: !1382)
!1385 = !DILocation(line: 481, column: 3, scope: !1386)
!1386 = !DILexicalBlockFile(scope: !1387, file: !1, discriminator: 2)
!1387 = distinct !DILexicalBlock(scope: !1382, file: !1, line: 481, column: 3)
!1388 = !DILocation(line: 481, column: 3, scope: !1389)
!1389 = !DILexicalBlockFile(scope: !1382, file: !1, discriminator: 3)
!1390 = !DILocation(line: 481, column: 3, scope: !1391)
!1391 = !DILexicalBlockFile(scope: !1372, file: !1, discriminator: 4)
!1392 = !DILocation(line: 482, column: 1, scope: !1372)
!1393 = distinct !DISubprogram(name: "gsl_sf_transport_4", scope: !1, file: !1, line: 484, type: !1350, isLocal: false, isDefinition: true, scopeLine: 485, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !81)
!1394 = !DILocalVariable(name: "x", arg: 1, scope: !1393, file: !1, line: 484, type: !73)
!1395 = !DILocation(line: 484, column: 40, scope: !1393)
!1396 = !DILocalVariable(name: "result", scope: !1393, file: !1, line: 486, type: !75)
!1397 = !DILocation(line: 486, column: 3, scope: !1393)
!1398 = !DILocalVariable(name: "status", scope: !1393, file: !1, line: 486, type: !42)
!1399 = !DILocation(line: 486, column: 3, scope: !1400)
!1400 = distinct !DILexicalBlock(scope: !1393, file: !1, line: 486, column: 3)
!1401 = !DILocation(line: 486, column: 3, scope: !1402)
!1402 = !DILexicalBlockFile(scope: !1403, file: !1, discriminator: 1)
!1403 = distinct !DILexicalBlock(scope: !1400, file: !1, line: 486, column: 3)
!1404 = distinct !{!1404, !1405}
!1405 = !DILocation(line: 486, column: 3, scope: !1403)
!1406 = !DILocation(line: 486, column: 3, scope: !1407)
!1407 = !DILexicalBlockFile(scope: !1408, file: !1, discriminator: 2)
!1408 = distinct !DILexicalBlock(scope: !1403, file: !1, line: 486, column: 3)
!1409 = !DILocation(line: 486, column: 3, scope: !1410)
!1410 = !DILexicalBlockFile(scope: !1403, file: !1, discriminator: 3)
!1411 = !DILocation(line: 486, column: 3, scope: !1412)
!1412 = !DILexicalBlockFile(scope: !1393, file: !1, discriminator: 4)
!1413 = !DILocation(line: 487, column: 1, scope: !1393)
!1414 = distinct !DISubprogram(name: "gsl_sf_transport_5", scope: !1, file: !1, line: 489, type: !1350, isLocal: false, isDefinition: true, scopeLine: 490, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !81)
!1415 = !DILocalVariable(name: "x", arg: 1, scope: !1414, file: !1, line: 489, type: !73)
!1416 = !DILocation(line: 489, column: 40, scope: !1414)
!1417 = !DILocalVariable(name: "result", scope: !1414, file: !1, line: 491, type: !75)
!1418 = !DILocation(line: 491, column: 3, scope: !1414)
!1419 = !DILocalVariable(name: "status", scope: !1414, file: !1, line: 491, type: !42)
!1420 = !DILocation(line: 491, column: 3, scope: !1421)
!1421 = distinct !DILexicalBlock(scope: !1414, file: !1, line: 491, column: 3)
!1422 = !DILocation(line: 491, column: 3, scope: !1423)
!1423 = !DILexicalBlockFile(scope: !1424, file: !1, discriminator: 1)
!1424 = distinct !DILexicalBlock(scope: !1421, file: !1, line: 491, column: 3)
!1425 = distinct !{!1425, !1426}
!1426 = !DILocation(line: 491, column: 3, scope: !1424)
!1427 = !DILocation(line: 491, column: 3, scope: !1428)
!1428 = !DILexicalBlockFile(scope: !1429, file: !1, discriminator: 2)
!1429 = distinct !DILexicalBlock(scope: !1424, file: !1, line: 491, column: 3)
!1430 = !DILocation(line: 491, column: 3, scope: !1431)
!1431 = !DILexicalBlockFile(scope: !1424, file: !1, discriminator: 3)
!1432 = !DILocation(line: 491, column: 3, scope: !1433)
!1433 = !DILexicalBlockFile(scope: !1414, file: !1, discriminator: 4)
!1434 = !DILocation(line: 492, column: 1, scope: !1414)
