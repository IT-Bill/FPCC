; ModuleID = 'dawson.ll'
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
@0 = private unnamed_addr constant [16 x i8] c"gsl_sf_dawson_e\00"
@1 = private unnamed_addr constant [10 x i8] c"dawson.ll\00"
@2 = private unnamed_addr constant [12 x i8] c"cheb_eval_e\00"
@3 = private unnamed_addr constant [10 x i8] c"dawson.ll\00"
@4 = private unnamed_addr constant [14 x i8] c"gsl_sf_dawson\00"
@5 = private unnamed_addr constant [10 x i8] c"dawson.ll\00"

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
  %17 = call i1 @fCmpInstHandler(double %15, double 0x3E5399999999999A, i1 %16, i32 4, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @1, i32 0, i32 0), i64 94521165254128, i32 234, i32 8), !dbg !103
  br i1 %17, label %18, label %24, !dbg !103

; <label>:18:                                     ; preds = %2
  %19 = load double, double* %4, align 8, !dbg !104
  %20 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !106
  %21 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %20, i32 0, i32 0, !dbg !107
  store double %19, double* %21, align 8, !dbg !108
  %22 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !109
  %23 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %22, i32 0, i32 1, !dbg !110
  store double 0.000000e+00, double* %23, align 8, !dbg !111
  store i32 0, i32* %3, align 4, !dbg !112
  br label %151, !dbg !112

; <label>:24:                                     ; preds = %2
  %25 = load double, double* %9, align 8, !dbg !113
  %26 = fcmp olt double %25, 1.000000e+00, !dbg !115
  %27 = call i1 @fCmpInstHandler(double %25, double 1.000000e+00, i1 %26, i32 4, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @1, i32 0, i32 0), i64 94521165260560, i32 239, i32 13), !dbg !116
  br i1 %27, label %28, label %57, !dbg !116

; <label>:28:                                     ; preds = %24
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %10, metadata !117, metadata !85), !dbg !119
  %29 = load double, double* %9, align 8, !dbg !120
  %30 = fmul double 2.000000e+00, %29, !dbg !121
  call void @fMulHandler(double 2.000000e+00, double %29, double %30, i64 0, i64 94521165262744, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @1, i32 0, i32 0), i64 94521165263216, i32 241, i32 29), !dbg !122
  %31 = load double, double* %9, align 8, !dbg !122
  %32 = fmul double %30, %31, !dbg !123
  call void @fMulHandler(double %30, double %31, double %32, i64 94521165263216, i64 94521165263576, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @1, i32 0, i32 0), i64 94521165263984, i32 241, i32 31), !dbg !124
  %33 = fsub double %32, 1.000000e+00, !dbg !124
  call void @fSubHandler(double %32, double 1.000000e+00, double %33, i64 94521165263984, i64 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @1, i32 0, i32 0), i64 94521165264432, i32 241, i32 34), !dbg !125
  %34 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @daw_cs, double %33, %struct.gsl_sf_result_struct* %10), !dbg !125
  %35 = load double, double* %4, align 8, !dbg !126
  %36 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !127
  %37 = load double, double* %36, align 8, !dbg !127
  %38 = fadd double 7.500000e-01, %37, !dbg !128
  call void @fAddHandler(double 7.500000e-01, double %37, double %38, i64 0, i64 94521165267400, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @1, i32 0, i32 0), i64 94521165269168, i32 242, i32 29), !dbg !129
  %39 = fmul double %35, %38, !dbg !129
  call void @fMulHandler(double %35, double %38, double %39, i64 94521165266600, i64 94521165269168, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @1, i32 0, i32 0), i64 94521165269552, i32 242, i32 21), !dbg !130
  %40 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !130
  %41 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %40, i32 0, i32 0, !dbg !131
  store double %39, double* %41, align 8, !dbg !132
  %42 = load double, double* %9, align 8, !dbg !133
  %43 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 1, !dbg !134
  %44 = load double, double* %43, align 8, !dbg !134
  %45 = fmul double %42, %44, !dbg !135
  call void @fMulHandler(double %42, double %44, double %45, i64 94521165271192, i64 94521165272024, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @1, i32 0, i32 0), i64 94521165273696, i32 243, i32 21), !dbg !136
  %46 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !136
  %47 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %46, i32 0, i32 1, !dbg !137
  store double %45, double* %47, align 8, !dbg !138
  %48 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !139
  %49 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %48, i32 0, i32 0, !dbg !140
  %50 = load double, double* %49, align 8, !dbg !140
  %51 = call double @fabs(double %50) #1, !dbg !141
  %52 = fmul double 0x3CC0000000000000, %51, !dbg !142
  call void @fMulHandler(double 0x3CC0000000000000, double %51, double %52, i64 0, i64 94521165277904, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @1, i32 0, i32 0), i64 94521165278448, i32 244, i32 42), !dbg !143
  %53 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !143
  %54 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %53, i32 0, i32 1, !dbg !144
  %55 = load double, double* %54, align 8, !dbg !145
  %56 = fadd double %55, %52, !dbg !145
  call void @fAddHandler(double %55, double %52, double %56, i64 94521165279672, i64 94521165278448, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @1, i32 0, i32 0), i64 94521165280080, i32 244, i32 17), !dbg !145
  store double %56, double* %54, align 8, !dbg !145
  store i32 0, i32* %3, align 4, !dbg !146
  br label %151, !dbg !146

; <label>:57:                                     ; preds = %24
  %58 = load double, double* %9, align 8, !dbg !147
  %59 = fcmp olt double %58, 4.000000e+00, !dbg !149
  %60 = call i1 @fCmpInstHandler(double %58, double 4.000000e+00, i1 %59, i32 4, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @1, i32 0, i32 0), i64 94521165284368, i32 247, i32 13), !dbg !150
  br i1 %60, label %61, label %90, !dbg !150

; <label>:61:                                     ; preds = %57
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %11, metadata !151, metadata !85), !dbg !153
  %62 = load double, double* %9, align 8, !dbg !154
  %63 = fmul double 1.250000e-01, %62, !dbg !155
  call void @fMulHandler(double 1.250000e-01, double %62, double %63, i64 0, i64 94521165286600, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @1, i32 0, i32 0), i64 94521165287072, i32 249, i32 32), !dbg !156
  %64 = load double, double* %9, align 8, !dbg !156
  %65 = fmul double %63, %64, !dbg !157
  call void @fMulHandler(double %63, double %64, double %65, i64 94521165287072, i64 94521165287432, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @1, i32 0, i32 0), i64 94521165287840, i32 249, i32 34), !dbg !158
  %66 = fsub double %65, 1.000000e+00, !dbg !158
  call void @fSubHandler(double %65, double 1.000000e+00, double %66, i64 94521165287840, i64 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @1, i32 0, i32 0), i64 94521165288288, i32 249, i32 37), !dbg !159
  %67 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @daw2_cs, double %66, %struct.gsl_sf_result_struct* %11), !dbg !159
  %68 = load double, double* %4, align 8, !dbg !160
  %69 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 0, !dbg !161
  %70 = load double, double* %69, align 8, !dbg !161
  %71 = fadd double 2.500000e-01, %70, !dbg !162
  call void @fAddHandler(double 2.500000e-01, double %70, double %71, i64 0, i64 94521165291080, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @1, i32 0, i32 0), i64 94521165292848, i32 250, i32 29), !dbg !163
  %72 = fmul double %68, %71, !dbg !163
  call void @fMulHandler(double %68, double %71, double %72, i64 94521165290280, i64 94521165292848, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @1, i32 0, i32 0), i64 94521165293232, i32 250, i32 21), !dbg !164
  %73 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !164
  %74 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %73, i32 0, i32 0, !dbg !165
  store double %72, double* %74, align 8, !dbg !166
  %75 = load double, double* %9, align 8, !dbg !167
  %76 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 1, !dbg !168
  %77 = load double, double* %76, align 8, !dbg !168
  %78 = fmul double %75, %77, !dbg !169
  call void @fMulHandler(double %75, double %77, double %78, i64 94521165294872, i64 94521165295704, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @1, i32 0, i32 0), i64 94521165297376, i32 251, i32 21), !dbg !170
  %79 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !170
  %80 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %79, i32 0, i32 1, !dbg !171
  store double %78, double* %80, align 8, !dbg !172
  %81 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !173
  %82 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %81, i32 0, i32 0, !dbg !174
  %83 = load double, double* %82, align 8, !dbg !174
  %84 = call double @fabs(double %83) #1, !dbg !175
  %85 = fmul double 0x3CC0000000000000, %84, !dbg !176
  call void @fMulHandler(double 0x3CC0000000000000, double %84, double %85, i64 0, i64 94521165301584, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @1, i32 0, i32 0), i64 94521165302064, i32 252, i32 42), !dbg !177
  %86 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !177
  %87 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %86, i32 0, i32 1, !dbg !178
  %88 = load double, double* %87, align 8, !dbg !179
  %89 = fadd double %88, %85, !dbg !179
  call void @fAddHandler(double %88, double %85, double %89, i64 94521165303288, i64 94521165302064, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @1, i32 0, i32 0), i64 94521165303696, i32 252, i32 17), !dbg !179
  store double %89, double* %87, align 8, !dbg !179
  store i32 0, i32* %3, align 4, !dbg !180
  br label %151, !dbg !180

; <label>:90:                                     ; preds = %57
  %91 = load double, double* %9, align 8, !dbg !181
  %92 = fcmp olt double %91, 0x4186A09E667F3BCC, !dbg !183
  %93 = call i1 @fCmpInstHandler(double %91, double 0x4186A09E667F3BCC, i1 %92, i32 4, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @1, i32 0, i32 0), i64 94521165307888, i32 255, i32 13), !dbg !184
  br i1 %93, label %94, label %123, !dbg !184

; <label>:94:                                     ; preds = %90
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %12, metadata !185, metadata !85), !dbg !187
  %95 = load double, double* %9, align 8, !dbg !188
  %96 = load double, double* %9, align 8, !dbg !189
  %97 = fmul double %95, %96, !dbg !190
  call void @fMulHandler(double %95, double %96, double %97, i64 94521165310056, i64 94521165310408, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @1, i32 0, i32 0), i64 94521165310816, i32 257, i32 34), !dbg !191
  %98 = fdiv double 3.200000e+01, %97, !dbg !191
  call void @fDivHandler(double 3.200000e+01, double %97, double %98, i64 0, i64 94521165310816, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @1, i32 0, i32 0), i64 94521165311328, i32 257, i32 31), !dbg !192
  %99 = fsub double %98, 1.000000e+00, !dbg !192
  call void @fSubHandler(double %98, double 1.000000e+00, double %99, i64 94521165311328, i64 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @1, i32 0, i32 0), i64 94521165311744, i32 257, i32 38), !dbg !193
  %100 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @dawa_cs, double %99, %struct.gsl_sf_result_struct* %12), !dbg !193
  %101 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %12, i32 0, i32 0, !dbg !194
  %102 = load double, double* %101, align 8, !dbg !194
  %103 = fadd double 5.000000e-01, %102, !dbg !195
  call void @fAddHandler(double 5.000000e-01, double %102, double %103, i64 0, i64 94521165313112, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @1, i32 0, i32 0), i64 94521165314880, i32 258, i32 25), !dbg !196
  %104 = load double, double* %4, align 8, !dbg !196
  %105 = fdiv double %103, %104, !dbg !197
  call void @fDivHandler(double %103, double %104, double %105, i64 94521165314880, i64 94521165315240, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @1, i32 0, i32 0), i64 94521165315648, i32 258, i32 41), !dbg !198
  %106 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !198
  %107 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %106, i32 0, i32 0, !dbg !199
  store double %105, double* %107, align 8, !dbg !200
  %108 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %12, i32 0, i32 1, !dbg !201
  %109 = load double, double* %108, align 8, !dbg !201
  %110 = load double, double* %9, align 8, !dbg !202
  %111 = fdiv double %109, %110, !dbg !203
  call void @fDivHandler(double %109, double %110, double %111, i64 94521165317736, i64 94521165319384, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @1, i32 0, i32 0), i64 94521165319792, i32 259, i32 33), !dbg !204
  %112 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !204
  %113 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %112, i32 0, i32 1, !dbg !205
  store double %111, double* %113, align 8, !dbg !206
  %114 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !207
  %115 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %114, i32 0, i32 0, !dbg !208
  %116 = load double, double* %115, align 8, !dbg !208
  %117 = call double @fabs(double %116) #1, !dbg !209
  %118 = fmul double 0x3CC0000000000000, %117, !dbg !210
  call void @fMulHandler(double 0x3CC0000000000000, double %117, double %118, i64 0, i64 94521165324000, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @1, i32 0, i32 0), i64 94521165324480, i32 260, i32 42), !dbg !211
  %119 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !211
  %120 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %119, i32 0, i32 1, !dbg !212
  %121 = load double, double* %120, align 8, !dbg !213
  %122 = fadd double %121, %118, !dbg !213
  call void @fAddHandler(double %121, double %118, double %122, i64 94521165325704, i64 94521165324480, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @1, i32 0, i32 0), i64 94521165326112, i32 260, i32 17), !dbg !213
  store double %122, double* %120, align 8, !dbg !213
  store i32 0, i32* %3, align 4, !dbg !214
  br label %151, !dbg !214

; <label>:123:                                    ; preds = %90
  %124 = load double, double* %9, align 8, !dbg !215
  %125 = fcmp olt double %124, 0x7FB9999999999999, !dbg !217
  %126 = call i1 @fCmpInstHandler(double %124, double 0x7FB9999999999999, i1 %125, i32 4, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @1, i32 0, i32 0), i64 94521165330304, i32 263, i32 13), !dbg !218
  br i1 %126, label %127, label %138, !dbg !218

; <label>:127:                                    ; preds = %123
  %128 = load double, double* %4, align 8, !dbg !219
  %129 = fdiv double 5.000000e-01, %128, !dbg !221
  call void @fDivHandler(double 5.000000e-01, double %128, double %129, i64 0, i64 94521165331416, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @1, i32 0, i32 0), i64 94521165331792, i32 264, i32 22), !dbg !222
  %130 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !222
  %131 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %130, i32 0, i32 0, !dbg !223
  store double %129, double* %131, align 8, !dbg !224
  %132 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !225
  %133 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %132, i32 0, i32 0, !dbg !226
  %134 = load double, double* %133, align 8, !dbg !226
  %135 = fmul double 0x3CC0000000000000, %134, !dbg !227
  call void @fMulHandler(double 0x3CC0000000000000, double %134, double %135, i64 0, i64 94521165336296, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @1, i32 0, i32 0), i64 94521165337968, i32 265, i32 41), !dbg !228
  %136 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !228
  %137 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %136, i32 0, i32 1, !dbg !229
  store double %135, double* %137, align 8, !dbg !230
  store i32 0, i32* %3, align 4, !dbg !231
  br label %151, !dbg !231

; <label>:138:                                    ; preds = %123
  br label %139, !dbg !232, !llvm.loop !234

; <label>:139:                                    ; preds = %138
  %140 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !235
  %141 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %140, i32 0, i32 0, !dbg !235
  store double 0.000000e+00, double* %141, align 8, !dbg !235
  %142 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !235
  %143 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %142, i32 0, i32 1, !dbg !235
  store double 0x10000000000000, double* %143, align 8, !dbg !235
  br label %144, !dbg !235, !llvm.loop !238

; <label>:144:                                    ; preds = %139
  call void @gsl_error(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 269, i32 15), !dbg !240
  store i32 15, i32* %3, align 4, !dbg !240
  br label %151, !dbg !240
                                                  ; No predecessors!
  br label %146, !dbg !243

; <label>:146:                                    ; preds = %145
  br label %147

; <label>:147:                                    ; preds = %146
  br label %148

; <label>:148:                                    ; preds = %147
  br label %149

; <label>:149:                                    ; preds = %148
  br label %150

; <label>:150:                                    ; preds = %149
  br label %151

; <label>:151:                                    ; preds = %150, %144, %127, %94, %61, %28, %18
  %152 = load i32, i32* %3, align 4, !dbg !245
  ret i32 %152, !dbg !245
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
  call void @fMulHandler(double 2.000000e+00, double %15, double %16, i64 0, i64 94521165265448, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94521165368096, i32 11, i32 19), !dbg !268
  %17 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !268
  %18 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %17, i32 0, i32 2, !dbg !269
  %19 = load double, double* %18, align 8, !dbg !269
  %20 = fsub double %16, %19, !dbg !270
  call void @fSubHandler(double %16, double %19, double %20, i64 94521165368096, i64 94521165209432, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94521165370832, i32 11, i32 22), !dbg !271
  %21 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !271
  %22 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %21, i32 0, i32 3, !dbg !272
  %23 = load double, double* %22, align 8, !dbg !272
  %24 = fsub double %20, %23, !dbg !273
  call void @fSubHandler(double %20, double %23, double %24, i64 94521165370832, i64 94521165372120, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94521165373792, i32 11, i32 30), !dbg !274
  %25 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !274
  %26 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %25, i32 0, i32 3, !dbg !275
  %27 = load double, double* %26, align 8, !dbg !275
  %28 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !276
  %29 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %28, i32 0, i32 2, !dbg !277
  %30 = load double, double* %29, align 8, !dbg !277
  %31 = fsub double %27, %30, !dbg !278
  call void @fSubHandler(double %27, double %30, double %31, i64 94521165375016, i64 94521165377496, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94521165379168, i32 11, i32 48), !dbg !279
  %32 = fdiv double %24, %31, !dbg !279
  call void @fDivHandler(double %24, double %31, double %32, i64 94521165373792, i64 94521165379168, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94521165379584, i32 11, i32 39), !dbg !265
  store double %32, double* %10, align 8, !dbg !265
  call void @llvm.dbg.declare(metadata double* %11, metadata !280, metadata !85), !dbg !281
  %33 = load double, double* %10, align 8, !dbg !282
  %34 = fmul double 2.000000e+00, %33, !dbg !283
  call void @fMulHandler(double 2.000000e+00, double %33, double %34, i64 0, i64 94521165382632, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94521165383040, i32 12, i32 19), !dbg !281
  store double %34, double* %11, align 8, !dbg !281
  call void @llvm.dbg.declare(metadata double* %12, metadata !284, metadata !85), !dbg !285
  store double 0.000000e+00, double* %12, align 8, !dbg !285
  %35 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !286
  %36 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %35, i32 0, i32 1, !dbg !288
  %37 = load i32, i32* %36, align 8, !dbg !288
  store i32 %37, i32* %7, align 4, !dbg !289
  br label %38, !dbg !290

; <label>:38:                                     ; preds = %77, %3
  %39 = load i32, i32* %7, align 4, !dbg !291
  %40 = icmp sge i32 %39, 1, !dbg !294
  %41 = sext i32 %39 to i64, !dbg !295
  %42 = call i1 @iCmpInstHandler(i64 %41, i64 1, i1 %40, i32 39, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94521165391616, i32 16, i32 23), !dbg !295
  br i1 %42, label %43, label %80, !dbg !295

; <label>:43:                                     ; preds = %38
  call void @llvm.dbg.declare(metadata double* %13, metadata !296, metadata !85), !dbg !298
  %44 = load double, double* %8, align 8, !dbg !299
  store double %44, double* %13, align 8, !dbg !298
  %45 = load double, double* %11, align 8, !dbg !300
  %46 = load double, double* %8, align 8, !dbg !301
  %47 = fmul double %45, %46, !dbg !302
  call void @fMulHandler(double %45, double %46, double %47, i64 94521165395816, i64 94521165396200, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94521165396608, i32 18, i32 11), !dbg !303
  %48 = load double, double* %9, align 8, !dbg !303
  %49 = fsub double %47, %48, !dbg !304
  call void @fSubHandler(double %47, double %48, double %49, i64 94521165396608, i64 94521165397000, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94521165397408, i32 18, i32 14), !dbg !305
  %50 = load i32, i32* %7, align 4, !dbg !305
  %51 = sext i32 %50 to i64, !dbg !306
  %52 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !306
  %53 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %52, i32 0, i32 0, !dbg !307
  %54 = load double*, double** %53, align 8, !dbg !307
  %55 = getelementptr inbounds double, double* %54, i64 %51, !dbg !306
  %56 = load double, double* %55, align 8, !dbg !306
  %57 = fadd double %49, %56, !dbg !308
  call void @fAddHandler(double %49, double %56, double %57, i64 94521165397408, i64 94521165402456, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94521165402576, i32 18, i32 19), !dbg !309
  store double %57, double* %8, align 8, !dbg !309
  %58 = load double, double* %11, align 8, !dbg !310
  %59 = load double, double* %13, align 8, !dbg !311
  %60 = fmul double %58, %59, !dbg !312
  call void @fMulHandler(double %58, double %59, double %60, i64 94521165403384, i64 94521165403768, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94521165404176, i32 19, i32 17), !dbg !313
  %61 = call double @fabs(double %60) #1, !dbg !313
  %62 = load double, double* %9, align 8, !dbg !314
  %63 = call double @fabs(double %62) #1, !dbg !315
  %64 = fadd double %61, %63, !dbg !317
  call void @fAddHandler(double %61, double %63, double %64, i64 94521165404656, i64 94521165405584, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94521165406064, i32 19, i32 24), !dbg !318
  %65 = load i32, i32* %7, align 4, !dbg !318
  %66 = sext i32 %65 to i64, !dbg !319
  %67 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !319
  %68 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %67, i32 0, i32 0, !dbg !320
  %69 = load double*, double** %68, align 8, !dbg !320
  %70 = getelementptr inbounds double, double* %69, i64 %66, !dbg !319
  %71 = load double, double* %70, align 8, !dbg !319
  %72 = call double @fabs(double %71) #1, !dbg !321
  %73 = fadd double %64, %72, !dbg !323
  call void @fAddHandler(double %64, double %72, double %73, i64 94521165406064, i64 94521165411296, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94521165411776, i32 19, i32 35), !dbg !324
  %74 = load double, double* %12, align 8, !dbg !324
  %75 = fadd double %74, %73, !dbg !324
  call void @fAddHandler(double %74, double %73, double %75, i64 94521165412168, i64 94521165411776, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94521165412576, i32 19, i32 7), !dbg !324
  store double %75, double* %12, align 8, !dbg !324
  %76 = load double, double* %13, align 8, !dbg !325
  store double %76, double* %9, align 8, !dbg !326
  br label %77, !dbg !327

; <label>:77:                                     ; preds = %43
  %78 = load i32, i32* %7, align 4, !dbg !328
  %79 = add nsw i32 %78, -1, !dbg !328
  store i32 %79, i32* %7, align 4, !dbg !328
  br label %38, !dbg !330, !llvm.loop !331

; <label>:80:                                     ; preds = %38
  call void @llvm.dbg.declare(metadata double* %14, metadata !333, metadata !85), !dbg !335
  %81 = load double, double* %8, align 8, !dbg !336
  store double %81, double* %14, align 8, !dbg !335
  %82 = load double, double* %10, align 8, !dbg !337
  %83 = load double, double* %8, align 8, !dbg !338
  %84 = fmul double %82, %83, !dbg !339
  call void @fMulHandler(double %82, double %83, double %84, i64 94521165421640, i64 94521165422024, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94521165422432, i32 25, i32 10), !dbg !340
  %85 = load double, double* %9, align 8, !dbg !340
  %86 = fsub double %84, %85, !dbg !341
  call void @fSubHandler(double %84, double %85, double %86, i64 94521165422432, i64 94521165422824, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94521165423232, i32 25, i32 13), !dbg !342
  %87 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !342
  %88 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %87, i32 0, i32 0, !dbg !343
  %89 = load double*, double** %88, align 8, !dbg !343
  %90 = getelementptr inbounds double, double* %89, i64 0, !dbg !342
  %91 = load double, double* %90, align 8, !dbg !342
  %92 = fmul double 5.000000e-01, %91, !dbg !344
  call void @fMulHandler(double 5.000000e-01, double %91, double %92, i64 0, i64 94521165427864, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94521165428016, i32 25, i32 24), !dbg !345
  %93 = fadd double %86, %92, !dbg !345
  call void @fAddHandler(double %86, double %92, double %93, i64 94521165423232, i64 94521165428016, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94521165428400, i32 25, i32 18), !dbg !346
  store double %93, double* %8, align 8, !dbg !346
  %94 = load double, double* %10, align 8, !dbg !347
  %95 = load double, double* %14, align 8, !dbg !348
  %96 = fmul double %94, %95, !dbg !349
  call void @fMulHandler(double %94, double %95, double %96, i64 94521165429208, i64 94521165429592, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94521165430000, i32 26, i32 16), !dbg !350
  %97 = call double @fabs(double %96) #1, !dbg !350
  %98 = load double, double* %9, align 8, !dbg !351
  %99 = call double @fabs(double %98) #1, !dbg !352
  %100 = fadd double %97, %99, !dbg !354
  call void @fAddHandler(double %97, double %99, double %100, i64 94521165430480, i64 94521165431408, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94521165431888, i32 26, i32 23), !dbg !355
  %101 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !355
  %102 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %101, i32 0, i32 0, !dbg !356
  %103 = load double*, double** %102, align 8, !dbg !356
  %104 = getelementptr inbounds double, double* %103, i64 0, !dbg !355
  %105 = load double, double* %104, align 8, !dbg !355
  %106 = call double @fabs(double %105) #1, !dbg !357
  %107 = fmul double 5.000000e-01, %106, !dbg !359
  call void @fMulHandler(double 5.000000e-01, double %106, double %107, i64 0, i64 94521165436640, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94521165437152, i32 26, i32 40), !dbg !360
  %108 = fadd double %100, %107, !dbg !360
  call void @fAddHandler(double %100, double %107, double %108, i64 94521165431888, i64 94521165437152, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94521165437536, i32 26, i32 34), !dbg !361
  %109 = load double, double* %12, align 8, !dbg !361
  %110 = fadd double %109, %108, !dbg !361
  call void @fAddHandler(double %109, double %108, double %110, i64 94521165437928, i64 94521165437536, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94521165438336, i32 26, i32 7), !dbg !361
  store double %110, double* %12, align 8, !dbg !361
  %111 = load double, double* %8, align 8, !dbg !362
  %112 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !363
  %113 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %112, i32 0, i32 0, !dbg !364
  store double %111, double* %113, align 8, !dbg !365
  %114 = load double, double* %12, align 8, !dbg !366
  %115 = fmul double 0x3CB0000000000000, %114, !dbg !367
  call void @fMulHandler(double 0x3CB0000000000000, double %114, double %115, i64 0, i64 94521165441752, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94521165442224, i32 30, i32 33), !dbg !368
  %116 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !368
  %117 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %116, i32 0, i32 1, !dbg !369
  %118 = load i32, i32* %117, align 8, !dbg !369
  %119 = sext i32 %118 to i64, !dbg !370
  %120 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !370
  %121 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %120, i32 0, i32 0, !dbg !371
  %122 = load double*, double** %121, align 8, !dbg !371
  %123 = getelementptr inbounds double, double* %122, i64 %119, !dbg !370
  %124 = load double, double* %123, align 8, !dbg !370
  %125 = call double @fabs(double %124) #1, !dbg !372
  %126 = fadd double %115, %125, !dbg !373
  call void @fAddHandler(double %115, double %125, double %126, i64 94521165442224, i64 94521165449552, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94521165450032, i32 30, i32 37), !dbg !374
  %127 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !374
  %128 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %127, i32 0, i32 1, !dbg !375
  store double %126, double* %128, align 8, !dbg !376
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
  %10 = sext i32 %8 to i64, !dbg !384
  %11 = call i1 @iCmpInstHandler(i64 %10, i64 0, i1 %9, i32 33, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @5, i32 0, i32 0), i64 94521165459376, i32 280, i32 3), !dbg !384
  br i1 %11, label %12, label %18, !dbg !384

; <label>:12:                                     ; preds = %1
  br label %13, !dbg !388, !llvm.loop !391

; <label>:13:                                     ; preds = %12
  %14 = load i32, i32* %5, align 4, !dbg !393
  call void @gsl_error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 280, i32 %14), !dbg !393
  %15 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !393
  %16 = load double, double* %15, align 8, !dbg !393
  store double %16, double* %2, align 8, !dbg !393
  br label %21, !dbg !393
                                                  ; No predecessors!
  br label %18, !dbg !396

; <label>:18:                                     ; preds = %17, %1
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !398
  %20 = load double, double* %19, align 8, !dbg !398
  store double %20, double* %2, align 8, !dbg !398
  br label %21, !dbg !398

; <label>:21:                                     ; preds = %18, %13
  %22 = load double, double* %2, align 8, !dbg !400
  ret double %22, !dbg !400
}

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
