; ModuleID = 'dawson.c'
source_filename = "dawson.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.cheb_series_struct = type { double*, i32, double, double, i32 }
%struct.gsl_sf_result_struct = type { double, double }

@daw_cs = internal global %struct.cheb_series_struct { double* getelementptr inbounds ([21 x double], [21 x double]* @daw_data, i32 0, i32 0), i32 15, double -1.000000e+00, double 1.000000e+00, i32 9 }, align 8
@daw2_cs = internal global %struct.cheb_series_struct { double* getelementptr inbounds ([45 x double], [45 x double]* @daw2_data, i32 0, i32 0), i32 32, double -1.000000e+00, double 1.000000e+00, i32 21 }, align 8
@dawa_cs = internal global %struct.cheb_series_struct { double* getelementptr inbounds ([75 x double], [75 x double]* @dawa_data, i32 0, i32 0), i32 34, double -1.000000e+00, double 1.000000e+00, i32 12 }, align 8
@.str = private unnamed_addr constant [10 x i8] c"underflow\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"dawson.c\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"gsl_sf_dawson_e(x, &result)\00", align 1
@daw_data = internal global [21 x double] [double 0xBF7A0446B6A047AB, double 0xBFCD5D36A2FEBAA2, double 0x3F96A960C71C2024, double 0xBF5962171D4449B8, double 0x3F164675C923024B, double 0xBED00E91D1DDB2CC, double 0x3E83A254B2042A30, double 0xBE34D6CFA0BFB118, double 0x3DE38954915CDF24, double 0xBD90664BD406D80F, double 0x3D38ECA8AA8115C7, double 0xBCE14CF6E3298ACA, double 0x3C861A775B56A32B, double 0xBC2A27844D78FB8E, double 0x3BCCD1C8F2E59C07, double 0xBB6DB662F1B93CB2, double 0x3B0CC7D6317FCBF0, double 0xBAAA49C011FE5A2D, double 0x3A46B73DCDF8AE30, double 0xB9E29FB87EA698C9, double 0x397D0CFA9615C26E], align 16
@daw2_data = internal global [45 x double] [double 0xBFAD203BAD075A7E, double 0xBFD45BF89979C28E, double 0x3FCAB7F110F77DE9, double 0xBFBFEFE277D6B8AE, double 0x3FB15FE1FE2DD440, double 0xBFA13BC57D12B1F8, double 0x3F8F410B63CBF9D6, double 0xBF7A00BFDAACF5FD, double 0x3F63EDAFF55A6C54, double 0xBF4C409E8E0E013D, double 0x3F3298CC8B65B18A, double 0xBF16D255517D468C, double 0x3EFA335B419BC716, double 0xBEDC3C5A76DA5E32, double 0x3EBCA7319897900B, double 0xBE9B7594EF2423AB, double 0x3E78EB1C963CA04A, double 0xBE557731F765A815, double 0x3E3197FBC1EBB7CE, double 0xBE0B7FB9A62066A3, double 0x3DE48804BE136212, double 0xBDBD58010FBAB11B, double 0x3D941ABCF31B5A45, double 0xBD6A744538A5B7C7, double 0x3D40BCF0DD546BAF, double 0xBD1465D7DB3342CB, double 0x3CE7F83F7D7255F0, double 0xBCBB31976B7758C1, double 0x3C8DD1B2D773A13C, double 0xBC5FA34B20104378, double 0x3C304186C8888A7C, double 0xBC0031F42A31CF19, double 0x3BCF4FE733AE863D, double 0xBB9D65AD005E36B3, double 0x3B6AD34009EBA9B8, double 0xBB37CF4F36739C1C, double 0x3B0492372916CA1B, double 0xBAD14FE7797A38D6, double 0x3A9C66DA84DDDD59, double 0xBA66B8F108CD7DA1, double 0x3A31BD93A50DC810, double 0xB9FB0CA6D841FE00, double 0x39C4258F3BC8FDF4, double 0xB98D55D87F2EBFF6, double 0x3954E30C2E4018C3], align 16
@dawa_data = internal global [75 x double] [double 0x3F914F81B52477FF, double 0x3F81C88664782ACB, double 0x3F2FC87E5A1534EC, double 0x3EEA72EBE42F3C64, double 0x3EB1E461D1E674CE, double 0x3E823A99FD495526, double 0x3E574FB73DEC6968, double 0x3E28A09F6DAEE138, double 0xBDEA21BB93012865, double 0xBDF549AC4DB378F2, double 0xBDDC4BDCFB1B88E8, double 0xBD9B8888E5ABDFA0, double 0x3DA2D49D734CA03C, double 0x3D8AADCF7CE26C53, double 0xBD51C22586B0D8FE, double 0xBD5DA126B9F708EB, double 0xBD28F1F26A699F7C, double 0x3D2BA5CCC7A7E306, double 0x3D0BD439E7B2505B, double 0xBCFA11F47A326CA1, double 0xBCE48F99FF441BCB, double 0x3CCB8406EB8FBD45, double 0x3CBBC0D9974CCDF8, double 0xBCA14AF7C914AE05, double 0xBC92327EEFF6F078, double 0x3C79D203AACA578D, double 0x3C6707D4AD73B703, double 0xBC55966E133698EF, double 0xBC3A7EC08F7A5EAE, double 0x3C32D4B2F50E7317, double 0x3C06B5D5562C6032, double 0xBC102733CAE7CD1A, double 0x3BA45F038F3C5FF6, double 0x3BE9CC16E863BC10, double 0xBBC3717FC31D168B, double 0xBBC1B4A7AFC33613, double 0x3BAF00AFD189FA16, double 0x3B90BB7F3F7856AD, double 0xBB9159A2B5C21B8A, double 0x3B4201B884155C79, double 0x3B6DCD511157BEF1, double 0xBB520EC23AD69D3B, double 0xBB4122097E37E29F, double 0x3B3AB6426A19574B, double 0xBAB0D5FA1B179B1A, double 0xBB19360FB4F71B1B, double 0x3B0076D0DA422040, double 0x3AEAC2A9787CA046, double 0xBAE94DD5C20BBC4C, double 0x3AB2DBD4295BCAEF, double 0x3AC5C9F11044BA62, double 0xBAB5005537E324E4, double 0xBA8843516EEDCF96, double 0x3A9A427E51DC9CBE, double 0xBA7D7C2B21B9D2C3, double 0xBA6EA1E97294F8DB, double 0x3A6C44BC85276A29, double 0xBA3F4E2AC74A654D, double 0xBA4765656E433D76, double 0x3A3D141FFC75D173, double 0xB9D88A9FFF428782, double 0xBA1F0E1BEB5FCC7D, double 0x3A0DB17ADFF1C89D, double 0x39D98273DE9B0D6E, double 0xB9F39D9583B90109, double 0x39DEFE10411B6BFF, double 0x39BB8AB08187210B, double 0xB9C884AD1F7E7324, double 0x39B0F978D2C5C9CF, double 0x39959FD8A79BDEE4, double 0xB99EEC7EB82081F0, double 0x3983F57289C3A49A, double 0x396E0074C5F18089, double 0xB973DC5E9E955393, double 0x3959853CCB837398], align 16

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_dawson_e(double, %struct.gsl_sf_result_struct*) #0 !dbg !73 {
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca %struct.gsl_sf_result_struct*, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca %struct.gsl_sf_result_struct, align 8
  %11 = alloca %struct.gsl_sf_result_struct, align 8
  %12 = alloca %struct.gsl_sf_result_struct, align 8
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !84, metadata !85), !dbg !86
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %5, metadata !87, metadata !85), !dbg !88
  call void @llvm.dbg.declare(metadata double* %6, metadata !89, metadata !85), !dbg !91
  store double 0x3E5399999999999A, double* %6, align 8, !dbg !91
  call void @llvm.dbg.declare(metadata double* %7, metadata !92, metadata !85), !dbg !93
  store double 0x4186A09E667F3BCC, double* %7, align 8, !dbg !93
  call void @llvm.dbg.declare(metadata double* %8, metadata !94, metadata !85), !dbg !95
  store double 0x7FB9999999999999, double* %8, align 8, !dbg !95
  call void @llvm.dbg.declare(metadata double* %9, metadata !96, metadata !85), !dbg !97
  %13 = load double, double* %4, align 8, !dbg !98
  %14 = call double @fabs(double %13) #1, !dbg !99
  store double %14, double* %9, align 8, !dbg !97
  %15 = load double, double* %9, align 8, !dbg !100
  %16 = fcmp olt double %15, 0x3E5399999999999A, !dbg !102
  br i1 %16, label %17, label %23, !dbg !103

; <label>:17:                                     ; preds = %2
  %18 = load double, double* %4, align 8, !dbg !104
  %19 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !106
  %20 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %19, i32 0, i32 0, !dbg !107
  store double %18, double* %20, align 8, !dbg !108
  %21 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !109
  %22 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %21, i32 0, i32 1, !dbg !110
  store double 0.000000e+00, double* %22, align 8, !dbg !111
  store i32 0, i32* %3, align 4, !dbg !112
  br label %146, !dbg !112

; <label>:23:                                     ; preds = %2
  %24 = load double, double* %9, align 8, !dbg !113
  %25 = fcmp olt double %24, 1.000000e+00, !dbg !115
  br i1 %25, label %26, label %55, !dbg !116

; <label>:26:                                     ; preds = %23
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %10, metadata !117, metadata !85), !dbg !119
  %27 = load double, double* %9, align 8, !dbg !120
  %28 = fmul double 2.000000e+00, %27, !dbg !121
  %29 = load double, double* %9, align 8, !dbg !122
  %30 = fmul double %28, %29, !dbg !123
  %31 = fsub double %30, 1.000000e+00, !dbg !124
  %32 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @daw_cs, double %31, %struct.gsl_sf_result_struct* %10), !dbg !125
  %33 = load double, double* %4, align 8, !dbg !126
  %34 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !127
  %35 = load double, double* %34, align 8, !dbg !127
  %36 = fadd double 7.500000e-01, %35, !dbg !128
  %37 = fmul double %33, %36, !dbg !129
  %38 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !130
  %39 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %38, i32 0, i32 0, !dbg !131
  store double %37, double* %39, align 8, !dbg !132
  %40 = load double, double* %9, align 8, !dbg !133
  %41 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 1, !dbg !134
  %42 = load double, double* %41, align 8, !dbg !134
  %43 = fmul double %40, %42, !dbg !135
  %44 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !136
  %45 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %44, i32 0, i32 1, !dbg !137
  store double %43, double* %45, align 8, !dbg !138
  %46 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !139
  %47 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %46, i32 0, i32 0, !dbg !140
  %48 = load double, double* %47, align 8, !dbg !140
  %49 = call double @fabs(double %48) #1, !dbg !141
  %50 = fmul double 0x3CC0000000000000, %49, !dbg !142
  %51 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !143
  %52 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %51, i32 0, i32 1, !dbg !144
  %53 = load double, double* %52, align 8, !dbg !145
  %54 = fadd double %53, %50, !dbg !145
  store double %54, double* %52, align 8, !dbg !145
  store i32 0, i32* %3, align 4, !dbg !146
  br label %146, !dbg !146

; <label>:55:                                     ; preds = %23
  %56 = load double, double* %9, align 8, !dbg !147
  %57 = fcmp olt double %56, 4.000000e+00, !dbg !149
  br i1 %57, label %58, label %87, !dbg !150

; <label>:58:                                     ; preds = %55
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %11, metadata !151, metadata !85), !dbg !153
  %59 = load double, double* %9, align 8, !dbg !154
  %60 = fmul double 1.250000e-01, %59, !dbg !155
  %61 = load double, double* %9, align 8, !dbg !156
  %62 = fmul double %60, %61, !dbg !157
  %63 = fsub double %62, 1.000000e+00, !dbg !158
  %64 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @daw2_cs, double %63, %struct.gsl_sf_result_struct* %11), !dbg !159
  %65 = load double, double* %4, align 8, !dbg !160
  %66 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 0, !dbg !161
  %67 = load double, double* %66, align 8, !dbg !161
  %68 = fadd double 2.500000e-01, %67, !dbg !162
  %69 = fmul double %65, %68, !dbg !163
  %70 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !164
  %71 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %70, i32 0, i32 0, !dbg !165
  store double %69, double* %71, align 8, !dbg !166
  %72 = load double, double* %9, align 8, !dbg !167
  %73 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 1, !dbg !168
  %74 = load double, double* %73, align 8, !dbg !168
  %75 = fmul double %72, %74, !dbg !169
  %76 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !170
  %77 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %76, i32 0, i32 1, !dbg !171
  store double %75, double* %77, align 8, !dbg !172
  %78 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !173
  %79 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %78, i32 0, i32 0, !dbg !174
  %80 = load double, double* %79, align 8, !dbg !174
  %81 = call double @fabs(double %80) #1, !dbg !175
  %82 = fmul double 0x3CC0000000000000, %81, !dbg !176
  %83 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !177
  %84 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %83, i32 0, i32 1, !dbg !178
  %85 = load double, double* %84, align 8, !dbg !179
  %86 = fadd double %85, %82, !dbg !179
  store double %86, double* %84, align 8, !dbg !179
  store i32 0, i32* %3, align 4, !dbg !180
  br label %146, !dbg !180

; <label>:87:                                     ; preds = %55
  %88 = load double, double* %9, align 8, !dbg !181
  %89 = fcmp olt double %88, 0x4186A09E667F3BCC, !dbg !183
  br i1 %89, label %90, label %119, !dbg !184

; <label>:90:                                     ; preds = %87
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %12, metadata !185, metadata !85), !dbg !187
  %91 = load double, double* %9, align 8, !dbg !188
  %92 = load double, double* %9, align 8, !dbg !189
  %93 = fmul double %91, %92, !dbg !190
  %94 = fdiv double 3.200000e+01, %93, !dbg !191
  %95 = fsub double %94, 1.000000e+00, !dbg !192
  %96 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @dawa_cs, double %95, %struct.gsl_sf_result_struct* %12), !dbg !193
  %97 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %12, i32 0, i32 0, !dbg !194
  %98 = load double, double* %97, align 8, !dbg !194
  %99 = fadd double 5.000000e-01, %98, !dbg !195
  %100 = load double, double* %4, align 8, !dbg !196
  %101 = fdiv double %99, %100, !dbg !197
  %102 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !198
  %103 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %102, i32 0, i32 0, !dbg !199
  store double %101, double* %103, align 8, !dbg !200
  %104 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %12, i32 0, i32 1, !dbg !201
  %105 = load double, double* %104, align 8, !dbg !201
  %106 = load double, double* %9, align 8, !dbg !202
  %107 = fdiv double %105, %106, !dbg !203
  %108 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !204
  %109 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %108, i32 0, i32 1, !dbg !205
  store double %107, double* %109, align 8, !dbg !206
  %110 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !207
  %111 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %110, i32 0, i32 0, !dbg !208
  %112 = load double, double* %111, align 8, !dbg !208
  %113 = call double @fabs(double %112) #1, !dbg !209
  %114 = fmul double 0x3CC0000000000000, %113, !dbg !210
  %115 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !211
  %116 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %115, i32 0, i32 1, !dbg !212
  %117 = load double, double* %116, align 8, !dbg !213
  %118 = fadd double %117, %114, !dbg !213
  store double %118, double* %116, align 8, !dbg !213
  store i32 0, i32* %3, align 4, !dbg !214
  br label %146, !dbg !214

; <label>:119:                                    ; preds = %87
  %120 = load double, double* %9, align 8, !dbg !215
  %121 = fcmp olt double %120, 0x7FB9999999999999, !dbg !217
  br i1 %121, label %122, label %133, !dbg !218

; <label>:122:                                    ; preds = %119
  %123 = load double, double* %4, align 8, !dbg !219
  %124 = fdiv double 5.000000e-01, %123, !dbg !221
  %125 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !222
  %126 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %125, i32 0, i32 0, !dbg !223
  store double %124, double* %126, align 8, !dbg !224
  %127 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !225
  %128 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %127, i32 0, i32 0, !dbg !226
  %129 = load double, double* %128, align 8, !dbg !226
  %130 = fmul double 0x3CC0000000000000, %129, !dbg !227
  %131 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !228
  %132 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %131, i32 0, i32 1, !dbg !229
  store double %130, double* %132, align 8, !dbg !230
  store i32 0, i32* %3, align 4, !dbg !231
  br label %146, !dbg !231

; <label>:133:                                    ; preds = %119
  br label %134, !dbg !232, !llvm.loop !234

; <label>:134:                                    ; preds = %133
  %135 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !235
  %136 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %135, i32 0, i32 0, !dbg !235
  store double 0.000000e+00, double* %136, align 8, !dbg !235
  %137 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !235
  %138 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %137, i32 0, i32 1, !dbg !235
  store double 0x10000000000000, double* %138, align 8, !dbg !235
  br label %139, !dbg !235, !llvm.loop !238

; <label>:139:                                    ; preds = %134
  call void @gsl_error(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 269, i32 15), !dbg !240
  store i32 15, i32* %3, align 4, !dbg !240
  br label %146, !dbg !240
                                                  ; No predecessors!
  br label %141, !dbg !243

; <label>:141:                                    ; preds = %140
  br label %142

; <label>:142:                                    ; preds = %141
  br label %143

; <label>:143:                                    ; preds = %142
  br label %144

; <label>:144:                                    ; preds = %143
  br label %145

; <label>:145:                                    ; preds = %144
  br label %146

; <label>:146:                                    ; preds = %17, %26, %58, %90, %122, %139, %145
  %147 = load i32, i32* %3, align 4, !dbg !245
  ret i32 %147, !dbg !245
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readnone
declare double @fabs(double) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @cheb_eval_e(%struct.cheb_series_struct*, double, %struct.gsl_sf_result_struct*) #3 !dbg !246 {
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
  call void @llvm.dbg.declare(metadata %struct.cheb_series_struct** %4, metadata !252, metadata !85), !dbg !253
  store double %1, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !254, metadata !85), !dbg !255
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %6, metadata !256, metadata !85), !dbg !257
  call void @llvm.dbg.declare(metadata i32* %7, metadata !258, metadata !85), !dbg !259
  call void @llvm.dbg.declare(metadata double* %8, metadata !260, metadata !85), !dbg !261
  store double 0.000000e+00, double* %8, align 8, !dbg !261
  call void @llvm.dbg.declare(metadata double* %9, metadata !262, metadata !85), !dbg !263
  store double 0.000000e+00, double* %9, align 8, !dbg !263
  call void @llvm.dbg.declare(metadata double* %10, metadata !264, metadata !85), !dbg !265
  %15 = load double, double* %5, align 8, !dbg !266
  %16 = fmul double 2.000000e+00, %15, !dbg !267
  %17 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !268
  %18 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %17, i32 0, i32 2, !dbg !269
  %19 = load double, double* %18, align 8, !dbg !269
  %20 = fsub double %16, %19, !dbg !270
  %21 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !271
  %22 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %21, i32 0, i32 3, !dbg !272
  %23 = load double, double* %22, align 8, !dbg !272
  %24 = fsub double %20, %23, !dbg !273
  %25 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !274
  %26 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %25, i32 0, i32 3, !dbg !275
  %27 = load double, double* %26, align 8, !dbg !275
  %28 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !276
  %29 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %28, i32 0, i32 2, !dbg !277
  %30 = load double, double* %29, align 8, !dbg !277
  %31 = fsub double %27, %30, !dbg !278
  %32 = fdiv double %24, %31, !dbg !279
  store double %32, double* %10, align 8, !dbg !265
  call void @llvm.dbg.declare(metadata double* %11, metadata !280, metadata !85), !dbg !281
  %33 = load double, double* %10, align 8, !dbg !282
  %34 = fmul double 2.000000e+00, %33, !dbg !283
  store double %34, double* %11, align 8, !dbg !281
  call void @llvm.dbg.declare(metadata double* %12, metadata !284, metadata !85), !dbg !285
  store double 0.000000e+00, double* %12, align 8, !dbg !285
  %35 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !286
  %36 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %35, i32 0, i32 1, !dbg !288
  %37 = load i32, i32* %36, align 8, !dbg !288
  store i32 %37, i32* %7, align 4, !dbg !289
  br label %38, !dbg !290

; <label>:38:                                     ; preds = %75, %3
  %39 = load i32, i32* %7, align 4, !dbg !291
  %40 = icmp sge i32 %39, 1, !dbg !294
  br i1 %40, label %41, label %78, !dbg !295

; <label>:41:                                     ; preds = %38
  call void @llvm.dbg.declare(metadata double* %13, metadata !296, metadata !85), !dbg !298
  %42 = load double, double* %8, align 8, !dbg !299
  store double %42, double* %13, align 8, !dbg !298
  %43 = load double, double* %11, align 8, !dbg !300
  %44 = load double, double* %8, align 8, !dbg !301
  %45 = fmul double %43, %44, !dbg !302
  %46 = load double, double* %9, align 8, !dbg !303
  %47 = fsub double %45, %46, !dbg !304
  %48 = load i32, i32* %7, align 4, !dbg !305
  %49 = sext i32 %48 to i64, !dbg !306
  %50 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !306
  %51 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %50, i32 0, i32 0, !dbg !307
  %52 = load double*, double** %51, align 8, !dbg !307
  %53 = getelementptr inbounds double, double* %52, i64 %49, !dbg !306
  %54 = load double, double* %53, align 8, !dbg !306
  %55 = fadd double %47, %54, !dbg !308
  store double %55, double* %8, align 8, !dbg !309
  %56 = load double, double* %11, align 8, !dbg !310
  %57 = load double, double* %13, align 8, !dbg !311
  %58 = fmul double %56, %57, !dbg !312
  %59 = call double @fabs(double %58) #1, !dbg !313
  %60 = load double, double* %9, align 8, !dbg !314
  %61 = call double @fabs(double %60) #1, !dbg !315
  %62 = fadd double %59, %61, !dbg !317
  %63 = load i32, i32* %7, align 4, !dbg !318
  %64 = sext i32 %63 to i64, !dbg !319
  %65 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !319
  %66 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %65, i32 0, i32 0, !dbg !320
  %67 = load double*, double** %66, align 8, !dbg !320
  %68 = getelementptr inbounds double, double* %67, i64 %64, !dbg !319
  %69 = load double, double* %68, align 8, !dbg !319
  %70 = call double @fabs(double %69) #1, !dbg !321
  %71 = fadd double %62, %70, !dbg !323
  %72 = load double, double* %12, align 8, !dbg !324
  %73 = fadd double %72, %71, !dbg !324
  store double %73, double* %12, align 8, !dbg !324
  %74 = load double, double* %13, align 8, !dbg !325
  store double %74, double* %9, align 8, !dbg !326
  br label %75, !dbg !327

; <label>:75:                                     ; preds = %41
  %76 = load i32, i32* %7, align 4, !dbg !328
  %77 = add nsw i32 %76, -1, !dbg !328
  store i32 %77, i32* %7, align 4, !dbg !328
  br label %38, !dbg !330, !llvm.loop !331

; <label>:78:                                     ; preds = %38
  call void @llvm.dbg.declare(metadata double* %14, metadata !333, metadata !85), !dbg !335
  %79 = load double, double* %8, align 8, !dbg !336
  store double %79, double* %14, align 8, !dbg !335
  %80 = load double, double* %10, align 8, !dbg !337
  %81 = load double, double* %8, align 8, !dbg !338
  %82 = fmul double %80, %81, !dbg !339
  %83 = load double, double* %9, align 8, !dbg !340
  %84 = fsub double %82, %83, !dbg !341
  %85 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !342
  %86 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %85, i32 0, i32 0, !dbg !343
  %87 = load double*, double** %86, align 8, !dbg !343
  %88 = getelementptr inbounds double, double* %87, i64 0, !dbg !342
  %89 = load double, double* %88, align 8, !dbg !342
  %90 = fmul double 5.000000e-01, %89, !dbg !344
  %91 = fadd double %84, %90, !dbg !345
  store double %91, double* %8, align 8, !dbg !346
  %92 = load double, double* %10, align 8, !dbg !347
  %93 = load double, double* %14, align 8, !dbg !348
  %94 = fmul double %92, %93, !dbg !349
  %95 = call double @fabs(double %94) #1, !dbg !350
  %96 = load double, double* %9, align 8, !dbg !351
  %97 = call double @fabs(double %96) #1, !dbg !352
  %98 = fadd double %95, %97, !dbg !354
  %99 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !355
  %100 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %99, i32 0, i32 0, !dbg !356
  %101 = load double*, double** %100, align 8, !dbg !356
  %102 = getelementptr inbounds double, double* %101, i64 0, !dbg !355
  %103 = load double, double* %102, align 8, !dbg !355
  %104 = call double @fabs(double %103) #1, !dbg !357
  %105 = fmul double 5.000000e-01, %104, !dbg !359
  %106 = fadd double %98, %105, !dbg !360
  %107 = load double, double* %12, align 8, !dbg !361
  %108 = fadd double %107, %106, !dbg !361
  store double %108, double* %12, align 8, !dbg !361
  %109 = load double, double* %8, align 8, !dbg !362
  %110 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !363
  %111 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %110, i32 0, i32 0, !dbg !364
  store double %109, double* %111, align 8, !dbg !365
  %112 = load double, double* %12, align 8, !dbg !366
  %113 = fmul double 0x3CB0000000000000, %112, !dbg !367
  %114 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !368
  %115 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %114, i32 0, i32 1, !dbg !369
  %116 = load i32, i32* %115, align 8, !dbg !369
  %117 = sext i32 %116 to i64, !dbg !370
  %118 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !370
  %119 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %118, i32 0, i32 0, !dbg !371
  %120 = load double*, double** %119, align 8, !dbg !371
  %121 = getelementptr inbounds double, double* %120, i64 %117, !dbg !370
  %122 = load double, double* %121, align 8, !dbg !370
  %123 = call double @fabs(double %122) #1, !dbg !372
  %124 = fadd double %113, %123, !dbg !373
  %125 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !374
  %126 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %125, i32 0, i32 1, !dbg !375
  store double %124, double* %126, align 8, !dbg !376
  ret i32 0, !dbg !377
}

declare void @gsl_error(i8*, i8*, i32, i32) #4

; Function Attrs: nounwind uwtable
define double @gsl_sf_dawson(double) #0 !dbg !378 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct, align 8
  %5 = alloca i32, align 4
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !381, metadata !85), !dbg !382
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %4, metadata !383, metadata !85), !dbg !384
  call void @llvm.dbg.declare(metadata i32* %5, metadata !385, metadata !85), !dbg !384
  %6 = load double, double* %3, align 8, !dbg !384
  %7 = call i32 @gsl_sf_dawson_e(double %6, %struct.gsl_sf_result_struct* %4), !dbg !384
  store i32 %7, i32* %5, align 4, !dbg !384
  %8 = load i32, i32* %5, align 4, !dbg !386
  %9 = icmp ne i32 %8, 0, !dbg !386
  br i1 %9, label %10, label %16, !dbg !384

; <label>:10:                                     ; preds = %1
  br label %11, !dbg !388, !llvm.loop !391

; <label>:11:                                     ; preds = %10
  %12 = load i32, i32* %5, align 4, !dbg !393
  call void @gsl_error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 280, i32 %12), !dbg !393
  %13 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !393
  %14 = load double, double* %13, align 8, !dbg !393
  store double %14, double* %2, align 8, !dbg !393
  br label %19, !dbg !393
                                                  ; No predecessors!
  br label %16, !dbg !396

; <label>:16:                                     ; preds = %15, %1
  %17 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !398
  %18 = load double, double* %17, align 8, !dbg !398
  store double %18, double* %2, align 8, !dbg !398
  br label %19, !dbg !398

; <label>:19:                                     ; preds = %16, %11
  %20 = load double, double* %2, align 8, !dbg !400
  ret double %20, !dbg !400
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!69, !70, !71}
!llvm.ident = !{!72}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, globals: !41)
!1 = !DIFile(filename: "dawson.c", directory: "/fpcc/gsl-2.5/specfunc")
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
!42 = distinct !DIGlobalVariable(name: "daw_cs", scope: !0, file: !1, line: 77, type: !43, isLocal: true, isDefinition: true, variable: %struct.cheb_series_struct* @daw_cs)
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
!55 = distinct !DIGlobalVariable(name: "daw_data", scope: !0, file: !1, line: 54, type: !56, isLocal: true, isDefinition: true, variable: [21 x double]* @daw_data)
!56 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 1344, align: 64, elements: !57)
!57 = !{!58}
!58 = !DISubrange(count: 21)
!59 = distinct !DIGlobalVariable(name: "daw2_cs", scope: !0, file: !1, line: 131, type: !43, isLocal: true, isDefinition: true, variable: %struct.cheb_series_struct* @daw2_cs)
!60 = distinct !DIGlobalVariable(name: "daw2_data", scope: !0, file: !1, line: 84, type: !61, isLocal: true, isDefinition: true, variable: [45 x double]* @daw2_data)
!61 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 2880, align: 64, elements: !62)
!62 = !{!63}
!63 = !DISubrange(count: 45)
!64 = distinct !DIGlobalVariable(name: "dawa_cs", scope: !0, file: !1, line: 215, type: !43, isLocal: true, isDefinition: true, variable: %struct.cheb_series_struct* @dawa_cs)
!65 = distinct !DIGlobalVariable(name: "dawa_data", scope: !0, file: !1, line: 138, type: !66, isLocal: true, isDefinition: true, variable: [75 x double]* @dawa_data)
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 4800, align: 64, elements: !67)
!67 = !{!68}
!68 = !DISubrange(count: 75)
!69 = !{i32 2, !"Dwarf Version", i32 4}
!70 = !{i32 2, !"Debug Info Version", i32 3}
!71 = !{i32 1, !"PIC Level", i32 2}
!72 = !{!"clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)"}
!73 = distinct !DISubprogram(name: "gsl_sf_dawson_e", scope: !1, file: !1, line: 226, type: !74, isLocal: false, isDefinition: true, scopeLine: 227, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !83)
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
!84 = !DILocalVariable(name: "x", arg: 1, scope: !73, file: !1, line: 226, type: !49)
!85 = !DIExpression()
!86 = !DILocation(line: 226, column: 24, scope: !73)
!87 = !DILocalVariable(name: "result", arg: 2, scope: !73, file: !1, line: 226, type: !76)
!88 = !DILocation(line: 226, column: 43, scope: !73)
!89 = !DILocalVariable(name: "xsml", scope: !73, file: !1, line: 228, type: !90)
!90 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !49)
!91 = !DILocation(line: 228, column: 16, scope: !73)
!92 = !DILocalVariable(name: "xbig", scope: !73, file: !1, line: 229, type: !90)
!93 = !DILocation(line: 229, column: 16, scope: !73)
!94 = !DILocalVariable(name: "xmax", scope: !73, file: !1, line: 230, type: !90)
!95 = !DILocation(line: 230, column: 16, scope: !73)
!96 = !DILocalVariable(name: "y", scope: !73, file: !1, line: 232, type: !90)
!97 = !DILocation(line: 232, column: 16, scope: !73)
!98 = !DILocation(line: 232, column: 25, scope: !73)
!99 = !DILocation(line: 232, column: 20, scope: !73)
!100 = !DILocation(line: 234, column: 6, scope: !101)
!101 = distinct !DILexicalBlock(scope: !73, file: !1, line: 234, column: 6)
!102 = !DILocation(line: 234, column: 8, scope: !101)
!103 = !DILocation(line: 234, column: 6, scope: !73)
!104 = !DILocation(line: 235, column: 19, scope: !105)
!105 = distinct !DILexicalBlock(scope: !101, file: !1, line: 234, column: 16)
!106 = !DILocation(line: 235, column: 5, scope: !105)
!107 = !DILocation(line: 235, column: 13, scope: !105)
!108 = !DILocation(line: 235, column: 17, scope: !105)
!109 = !DILocation(line: 236, column: 5, scope: !105)
!110 = !DILocation(line: 236, column: 13, scope: !105)
!111 = !DILocation(line: 236, column: 17, scope: !105)
!112 = !DILocation(line: 237, column: 5, scope: !105)
!113 = !DILocation(line: 239, column: 11, scope: !114)
!114 = distinct !DILexicalBlock(scope: !101, file: !1, line: 239, column: 11)
!115 = !DILocation(line: 239, column: 13, scope: !114)
!116 = !DILocation(line: 239, column: 11, scope: !101)
!117 = !DILocalVariable(name: "result_c", scope: !118, file: !1, line: 240, type: !77)
!118 = distinct !DILexicalBlock(scope: !114, file: !1, line: 239, column: 20)
!119 = !DILocation(line: 240, column: 19, scope: !118)
!120 = !DILocation(line: 241, column: 30, scope: !118)
!121 = !DILocation(line: 241, column: 29, scope: !118)
!122 = !DILocation(line: 241, column: 32, scope: !118)
!123 = !DILocation(line: 241, column: 31, scope: !118)
!124 = !DILocation(line: 241, column: 34, scope: !118)
!125 = !DILocation(line: 241, column: 5, scope: !118)
!126 = !DILocation(line: 242, column: 19, scope: !118)
!127 = !DILocation(line: 242, column: 40, scope: !118)
!128 = !DILocation(line: 242, column: 29, scope: !118)
!129 = !DILocation(line: 242, column: 21, scope: !118)
!130 = !DILocation(line: 242, column: 5, scope: !118)
!131 = !DILocation(line: 242, column: 13, scope: !118)
!132 = !DILocation(line: 242, column: 17, scope: !118)
!133 = !DILocation(line: 243, column: 19, scope: !118)
!134 = !DILocation(line: 243, column: 32, scope: !118)
!135 = !DILocation(line: 243, column: 21, scope: !118)
!136 = !DILocation(line: 243, column: 5, scope: !118)
!137 = !DILocation(line: 243, column: 13, scope: !118)
!138 = !DILocation(line: 243, column: 17, scope: !118)
!139 = !DILocation(line: 244, column: 49, scope: !118)
!140 = !DILocation(line: 244, column: 57, scope: !118)
!141 = !DILocation(line: 244, column: 44, scope: !118)
!142 = !DILocation(line: 244, column: 42, scope: !118)
!143 = !DILocation(line: 244, column: 5, scope: !118)
!144 = !DILocation(line: 244, column: 13, scope: !118)
!145 = !DILocation(line: 244, column: 17, scope: !118)
!146 = !DILocation(line: 245, column: 5, scope: !118)
!147 = !DILocation(line: 247, column: 11, scope: !148)
!148 = distinct !DILexicalBlock(scope: !114, file: !1, line: 247, column: 11)
!149 = !DILocation(line: 247, column: 13, scope: !148)
!150 = !DILocation(line: 247, column: 11, scope: !114)
!151 = !DILocalVariable(name: "result_c", scope: !152, file: !1, line: 248, type: !77)
!152 = distinct !DILexicalBlock(scope: !148, file: !1, line: 247, column: 20)
!153 = !DILocation(line: 248, column: 19, scope: !152)
!154 = !DILocation(line: 249, column: 33, scope: !152)
!155 = !DILocation(line: 249, column: 32, scope: !152)
!156 = !DILocation(line: 249, column: 35, scope: !152)
!157 = !DILocation(line: 249, column: 34, scope: !152)
!158 = !DILocation(line: 249, column: 37, scope: !152)
!159 = !DILocation(line: 249, column: 5, scope: !152)
!160 = !DILocation(line: 250, column: 19, scope: !152)
!161 = !DILocation(line: 250, column: 40, scope: !152)
!162 = !DILocation(line: 250, column: 29, scope: !152)
!163 = !DILocation(line: 250, column: 21, scope: !152)
!164 = !DILocation(line: 250, column: 5, scope: !152)
!165 = !DILocation(line: 250, column: 13, scope: !152)
!166 = !DILocation(line: 250, column: 17, scope: !152)
!167 = !DILocation(line: 251, column: 19, scope: !152)
!168 = !DILocation(line: 251, column: 32, scope: !152)
!169 = !DILocation(line: 251, column: 21, scope: !152)
!170 = !DILocation(line: 251, column: 5, scope: !152)
!171 = !DILocation(line: 251, column: 13, scope: !152)
!172 = !DILocation(line: 251, column: 17, scope: !152)
!173 = !DILocation(line: 252, column: 49, scope: !152)
!174 = !DILocation(line: 252, column: 57, scope: !152)
!175 = !DILocation(line: 252, column: 44, scope: !152)
!176 = !DILocation(line: 252, column: 42, scope: !152)
!177 = !DILocation(line: 252, column: 5, scope: !152)
!178 = !DILocation(line: 252, column: 13, scope: !152)
!179 = !DILocation(line: 252, column: 17, scope: !152)
!180 = !DILocation(line: 253, column: 5, scope: !152)
!181 = !DILocation(line: 255, column: 11, scope: !182)
!182 = distinct !DILexicalBlock(scope: !148, file: !1, line: 255, column: 11)
!183 = !DILocation(line: 255, column: 13, scope: !182)
!184 = !DILocation(line: 255, column: 11, scope: !148)
!185 = !DILocalVariable(name: "result_c", scope: !186, file: !1, line: 256, type: !77)
!186 = distinct !DILexicalBlock(scope: !182, file: !1, line: 255, column: 21)
!187 = !DILocation(line: 256, column: 19, scope: !186)
!188 = !DILocation(line: 257, column: 33, scope: !186)
!189 = !DILocation(line: 257, column: 35, scope: !186)
!190 = !DILocation(line: 257, column: 34, scope: !186)
!191 = !DILocation(line: 257, column: 31, scope: !186)
!192 = !DILocation(line: 257, column: 38, scope: !186)
!193 = !DILocation(line: 257, column: 5, scope: !186)
!194 = !DILocation(line: 258, column: 36, scope: !186)
!195 = !DILocation(line: 258, column: 25, scope: !186)
!196 = !DILocation(line: 258, column: 43, scope: !186)
!197 = !DILocation(line: 258, column: 41, scope: !186)
!198 = !DILocation(line: 258, column: 5, scope: !186)
!199 = !DILocation(line: 258, column: 13, scope: !186)
!200 = !DILocation(line: 258, column: 18, scope: !186)
!201 = !DILocation(line: 259, column: 29, scope: !186)
!202 = !DILocation(line: 259, column: 35, scope: !186)
!203 = !DILocation(line: 259, column: 33, scope: !186)
!204 = !DILocation(line: 259, column: 5, scope: !186)
!205 = !DILocation(line: 259, column: 13, scope: !186)
!206 = !DILocation(line: 259, column: 18, scope: !186)
!207 = !DILocation(line: 260, column: 49, scope: !186)
!208 = !DILocation(line: 260, column: 57, scope: !186)
!209 = !DILocation(line: 260, column: 44, scope: !186)
!210 = !DILocation(line: 260, column: 42, scope: !186)
!211 = !DILocation(line: 260, column: 5, scope: !186)
!212 = !DILocation(line: 260, column: 13, scope: !186)
!213 = !DILocation(line: 260, column: 17, scope: !186)
!214 = !DILocation(line: 261, column: 5, scope: !186)
!215 = !DILocation(line: 263, column: 11, scope: !216)
!216 = distinct !DILexicalBlock(scope: !182, file: !1, line: 263, column: 11)
!217 = !DILocation(line: 263, column: 13, scope: !216)
!218 = !DILocation(line: 263, column: 11, scope: !182)
!219 = !DILocation(line: 264, column: 23, scope: !220)
!220 = distinct !DILexicalBlock(scope: !216, file: !1, line: 263, column: 21)
!221 = !DILocation(line: 264, column: 22, scope: !220)
!222 = !DILocation(line: 264, column: 5, scope: !220)
!223 = !DILocation(line: 264, column: 13, scope: !220)
!224 = !DILocation(line: 264, column: 17, scope: !220)
!225 = !DILocation(line: 265, column: 43, scope: !220)
!226 = !DILocation(line: 265, column: 51, scope: !220)
!227 = !DILocation(line: 265, column: 41, scope: !220)
!228 = !DILocation(line: 265, column: 5, scope: !220)
!229 = !DILocation(line: 265, column: 13, scope: !220)
!230 = !DILocation(line: 265, column: 17, scope: !220)
!231 = !DILocation(line: 266, column: 5, scope: !220)
!232 = !DILocation(line: 269, column: 5, scope: !233)
!233 = distinct !DILexicalBlock(scope: !216, file: !1, line: 268, column: 8)
!234 = distinct !{!234, !232}
!235 = !DILocation(line: 269, column: 5, scope: !236)
!236 = !DILexicalBlockFile(scope: !237, file: !1, discriminator: 1)
!237 = distinct !DILexicalBlock(scope: !233, file: !1, line: 269, column: 5)
!238 = distinct !{!238, !239}
!239 = !DILocation(line: 269, column: 5, scope: !237)
!240 = !DILocation(line: 269, column: 5, scope: !241)
!241 = !DILexicalBlockFile(scope: !242, file: !1, discriminator: 2)
!242 = distinct !DILexicalBlock(scope: !237, file: !1, line: 269, column: 5)
!243 = !DILocation(line: 269, column: 5, scope: !244)
!244 = !DILexicalBlockFile(scope: !237, file: !1, discriminator: 3)
!245 = !DILocation(line: 271, column: 1, scope: !73)
!246 = distinct !DISubprogram(name: "cheb_eval_e", scope: !247, file: !247, line: 3, type: !248, isLocal: true, isDefinition: true, scopeLine: 6, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !83)
!247 = !DIFile(filename: "./cheb_eval.c", directory: "/fpcc/gsl-2.5/specfunc")
!248 = !DISubroutineType(types: !249)
!249 = !{!51, !250, !90, !76}
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64, align: 64)
!251 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!252 = !DILocalVariable(name: "cs", arg: 1, scope: !246, file: !247, line: 3, type: !250)
!253 = !DILocation(line: 3, column: 33, scope: !246)
!254 = !DILocalVariable(name: "x", arg: 2, scope: !246, file: !247, line: 4, type: !90)
!255 = !DILocation(line: 4, column: 26, scope: !246)
!256 = !DILocalVariable(name: "result", arg: 3, scope: !246, file: !247, line: 5, type: !76)
!257 = !DILocation(line: 5, column: 29, scope: !246)
!258 = !DILocalVariable(name: "j", scope: !246, file: !247, line: 7, type: !51)
!259 = !DILocation(line: 7, column: 7, scope: !246)
!260 = !DILocalVariable(name: "d", scope: !246, file: !247, line: 8, type: !49)
!261 = !DILocation(line: 8, column: 10, scope: !246)
!262 = !DILocalVariable(name: "dd", scope: !246, file: !247, line: 9, type: !49)
!263 = !DILocation(line: 9, column: 10, scope: !246)
!264 = !DILocalVariable(name: "y", scope: !246, file: !247, line: 11, type: !49)
!265 = !DILocation(line: 11, column: 10, scope: !246)
!266 = !DILocation(line: 11, column: 20, scope: !246)
!267 = !DILocation(line: 11, column: 19, scope: !246)
!268 = !DILocation(line: 11, column: 24, scope: !246)
!269 = !DILocation(line: 11, column: 28, scope: !246)
!270 = !DILocation(line: 11, column: 22, scope: !246)
!271 = !DILocation(line: 11, column: 32, scope: !246)
!272 = !DILocation(line: 11, column: 36, scope: !246)
!273 = !DILocation(line: 11, column: 30, scope: !246)
!274 = !DILocation(line: 11, column: 42, scope: !246)
!275 = !DILocation(line: 11, column: 46, scope: !246)
!276 = !DILocation(line: 11, column: 50, scope: !246)
!277 = !DILocation(line: 11, column: 54, scope: !246)
!278 = !DILocation(line: 11, column: 48, scope: !246)
!279 = !DILocation(line: 11, column: 39, scope: !246)
!280 = !DILocalVariable(name: "y2", scope: !246, file: !247, line: 12, type: !49)
!281 = !DILocation(line: 12, column: 10, scope: !246)
!282 = !DILocation(line: 12, column: 21, scope: !246)
!283 = !DILocation(line: 12, column: 19, scope: !246)
!284 = !DILocalVariable(name: "e", scope: !246, file: !247, line: 14, type: !49)
!285 = !DILocation(line: 14, column: 10, scope: !246)
!286 = !DILocation(line: 16, column: 11, scope: !287)
!287 = distinct !DILexicalBlock(scope: !246, file: !247, line: 16, column: 3)
!288 = !DILocation(line: 16, column: 15, scope: !287)
!289 = !DILocation(line: 16, column: 9, scope: !287)
!290 = !DILocation(line: 16, column: 7, scope: !287)
!291 = !DILocation(line: 16, column: 22, scope: !292)
!292 = !DILexicalBlockFile(scope: !293, file: !247, discriminator: 1)
!293 = distinct !DILexicalBlock(scope: !287, file: !247, line: 16, column: 3)
!294 = !DILocation(line: 16, column: 23, scope: !292)
!295 = !DILocation(line: 16, column: 3, scope: !292)
!296 = !DILocalVariable(name: "temp", scope: !297, file: !247, line: 17, type: !49)
!297 = distinct !DILexicalBlock(scope: !293, file: !247, line: 16, column: 33)
!298 = !DILocation(line: 17, column: 12, scope: !297)
!299 = !DILocation(line: 17, column: 19, scope: !297)
!300 = !DILocation(line: 18, column: 9, scope: !297)
!301 = !DILocation(line: 18, column: 12, scope: !297)
!302 = !DILocation(line: 18, column: 11, scope: !297)
!303 = !DILocation(line: 18, column: 16, scope: !297)
!304 = !DILocation(line: 18, column: 14, scope: !297)
!305 = !DILocation(line: 18, column: 27, scope: !297)
!306 = !DILocation(line: 18, column: 21, scope: !297)
!307 = !DILocation(line: 18, column: 25, scope: !297)
!308 = !DILocation(line: 18, column: 19, scope: !297)
!309 = !DILocation(line: 18, column: 7, scope: !297)
!310 = !DILocation(line: 19, column: 15, scope: !297)
!311 = !DILocation(line: 19, column: 18, scope: !297)
!312 = !DILocation(line: 19, column: 17, scope: !297)
!313 = !DILocation(line: 19, column: 10, scope: !297)
!314 = !DILocation(line: 19, column: 31, scope: !297)
!315 = !DILocation(line: 19, column: 26, scope: !316)
!316 = !DILexicalBlockFile(scope: !297, file: !247, discriminator: 1)
!317 = !DILocation(line: 19, column: 24, scope: !297)
!318 = !DILocation(line: 19, column: 48, scope: !297)
!319 = !DILocation(line: 19, column: 42, scope: !297)
!320 = !DILocation(line: 19, column: 46, scope: !297)
!321 = !DILocation(line: 19, column: 37, scope: !322)
!322 = !DILexicalBlockFile(scope: !297, file: !247, discriminator: 2)
!323 = !DILocation(line: 19, column: 35, scope: !297)
!324 = !DILocation(line: 19, column: 7, scope: !297)
!325 = !DILocation(line: 20, column: 10, scope: !297)
!326 = !DILocation(line: 20, column: 8, scope: !297)
!327 = !DILocation(line: 21, column: 3, scope: !297)
!328 = !DILocation(line: 16, column: 29, scope: !329)
!329 = !DILexicalBlockFile(scope: !293, file: !247, discriminator: 2)
!330 = !DILocation(line: 16, column: 3, scope: !329)
!331 = distinct !{!331, !332}
!332 = !DILocation(line: 16, column: 3, scope: !246)
!333 = !DILocalVariable(name: "temp", scope: !334, file: !247, line: 24, type: !49)
!334 = distinct !DILexicalBlock(scope: !246, file: !247, line: 23, column: 3)
!335 = !DILocation(line: 24, column: 12, scope: !334)
!336 = !DILocation(line: 24, column: 19, scope: !334)
!337 = !DILocation(line: 25, column: 9, scope: !334)
!338 = !DILocation(line: 25, column: 11, scope: !334)
!339 = !DILocation(line: 25, column: 10, scope: !334)
!340 = !DILocation(line: 25, column: 15, scope: !334)
!341 = !DILocation(line: 25, column: 13, scope: !334)
!342 = !DILocation(line: 25, column: 26, scope: !334)
!343 = !DILocation(line: 25, column: 30, scope: !334)
!344 = !DILocation(line: 25, column: 24, scope: !334)
!345 = !DILocation(line: 25, column: 18, scope: !334)
!346 = !DILocation(line: 25, column: 7, scope: !334)
!347 = !DILocation(line: 26, column: 15, scope: !334)
!348 = !DILocation(line: 26, column: 17, scope: !334)
!349 = !DILocation(line: 26, column: 16, scope: !334)
!350 = !DILocation(line: 26, column: 10, scope: !334)
!351 = !DILocation(line: 26, column: 30, scope: !334)
!352 = !DILocation(line: 26, column: 25, scope: !353)
!353 = !DILexicalBlockFile(scope: !334, file: !247, discriminator: 1)
!354 = !DILocation(line: 26, column: 23, scope: !334)
!355 = !DILocation(line: 26, column: 47, scope: !334)
!356 = !DILocation(line: 26, column: 51, scope: !334)
!357 = !DILocation(line: 26, column: 42, scope: !358)
!358 = !DILexicalBlockFile(scope: !334, file: !247, discriminator: 2)
!359 = !DILocation(line: 26, column: 40, scope: !334)
!360 = !DILocation(line: 26, column: 34, scope: !334)
!361 = !DILocation(line: 26, column: 7, scope: !334)
!362 = !DILocation(line: 29, column: 17, scope: !246)
!363 = !DILocation(line: 29, column: 3, scope: !246)
!364 = !DILocation(line: 29, column: 11, scope: !246)
!365 = !DILocation(line: 29, column: 15, scope: !246)
!366 = !DILocation(line: 30, column: 35, scope: !246)
!367 = !DILocation(line: 30, column: 33, scope: !246)
!368 = !DILocation(line: 30, column: 50, scope: !246)
!369 = !DILocation(line: 30, column: 54, scope: !246)
!370 = !DILocation(line: 30, column: 44, scope: !246)
!371 = !DILocation(line: 30, column: 48, scope: !246)
!372 = !DILocation(line: 30, column: 39, scope: !246)
!373 = !DILocation(line: 30, column: 37, scope: !246)
!374 = !DILocation(line: 30, column: 3, scope: !246)
!375 = !DILocation(line: 30, column: 11, scope: !246)
!376 = !DILocation(line: 30, column: 15, scope: !246)
!377 = !DILocation(line: 32, column: 3, scope: !246)
!378 = distinct !DISubprogram(name: "gsl_sf_dawson", scope: !1, file: !1, line: 278, type: !379, isLocal: false, isDefinition: true, scopeLine: 279, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !83)
!379 = !DISubroutineType(types: !380)
!380 = !{!49, !49}
!381 = !DILocalVariable(name: "x", arg: 1, scope: !378, file: !1, line: 278, type: !49)
!382 = !DILocation(line: 278, column: 29, scope: !378)
!383 = !DILocalVariable(name: "result", scope: !378, file: !1, line: 280, type: !77)
!384 = !DILocation(line: 280, column: 3, scope: !378)
!385 = !DILocalVariable(name: "status", scope: !378, file: !1, line: 280, type: !51)
!386 = !DILocation(line: 280, column: 3, scope: !387)
!387 = distinct !DILexicalBlock(scope: !378, file: !1, line: 280, column: 3)
!388 = !DILocation(line: 280, column: 3, scope: !389)
!389 = !DILexicalBlockFile(scope: !390, file: !1, discriminator: 1)
!390 = distinct !DILexicalBlock(scope: !387, file: !1, line: 280, column: 3)
!391 = distinct !{!391, !392}
!392 = !DILocation(line: 280, column: 3, scope: !390)
!393 = !DILocation(line: 280, column: 3, scope: !394)
!394 = !DILexicalBlockFile(scope: !395, file: !1, discriminator: 2)
!395 = distinct !DILexicalBlock(scope: !390, file: !1, line: 280, column: 3)
!396 = !DILocation(line: 280, column: 3, scope: !397)
!397 = !DILexicalBlockFile(scope: !390, file: !1, discriminator: 3)
!398 = !DILocation(line: 280, column: 3, scope: !399)
!399 = !DILexicalBlockFile(scope: !378, file: !1, discriminator: 4)
!400 = !DILocation(line: 281, column: 1, scope: !378)
