; ModuleID = 'erfc.ll'
source_filename = "erfc.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.cheb_series_struct = type { double*, i32, double, double, i32 }
%struct.gsl_sf_result_struct = type { double, double }

@erfc_xlt1_cs = internal global %struct.cheb_series_struct { double* getelementptr inbounds ([20 x double], [20 x double]* @erfc_xlt1_data, i32 0, i32 0), i32 19, double -1.000000e+00, double 1.000000e+00, i32 12 }, align 8
@erfc_x15_cs = internal global %struct.cheb_series_struct { double* getelementptr inbounds ([25 x double], [25 x double]* @erfc_x15_data, i32 0, i32 0), i32 24, double -1.000000e+00, double 1.000000e+00, i32 16 }, align 8
@erfc_x510_cs = internal global %struct.cheb_series_struct { double* getelementptr inbounds ([20 x double], [20 x double]* @erfc_x510_data, i32 0, i32 0), i32 19, double -1.000000e+00, double 1.000000e+00, i32 12 }, align 8
@.str = private unnamed_addr constant [10 x i8] c"underflow\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"erfc.c\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"gsl_sf_erfc_e(x, &result)\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"gsl_sf_log_erfc_e(x, &result)\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"gsl_sf_erf_e(x, &result)\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"gsl_sf_erf_Z_e(x, &result)\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"gsl_sf_erf_Q_e(x, &result)\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"gsl_sf_hazard_e(x, &result)\00", align 1
@erfc_xlt1_data = internal global [20 x double] [double 0x3FF0F8C4631109E3, double 0xBFDB40B53A48A550, double 0x3FA95EF63F0A8AE4, double 0x3F72672F067D94C9, double 0xBF552ACB22C7C2DF, double 0xBEF341851CC64FD9, double 0x3EF72F6A74668F7E, double 0xBEA18F6F4CEFAE30, double 0xBE92AB2DA3D52CD5, double 0x3E4E503F8B1F83FD, double 0x3E2769E7FC58FB7D, double 0xBDEC5C14AA8B09E2, double 0xBDB78F46D533A139, double 0x3D839D4B4DFD3F8A, double 0x3D432CED20E8D32E, double 0xBD15F8A4A69AD905, double 0xBCC8B3CB61C1BA41, double 0x3CA4D3593CAA0DEF, double 0x3C46AEFBB5AD4103, double 0xBC3125E8E9559186], align 16
@erfc_x15_data = internal global [25 x double] [double 0x3FDC3078182C9217, double 0xBFC26D3E3FEE8E3B, double 0x3FA6EE41900A6C82, double 0xBF8B53A3D08875D6, double 0x3F6F54F0E91D1D2B, double 0xBF515881A3A7959E, double 0x3F329A5EEC13417F, double 0xBF135FC25807AC75, double 0x3EF3A289AD9E2CBC, double 0xBED366637AE0DD9B, double 0x3EB2B768687F5B5F, double 0xBE91A80027C4DCBB, double 0x3E704E72AAF45371, double 0xBE4D84FDB2423994, double 0x3E2A36797B47C292, double 0xBE06DAF077B2087A, double 0x3DE3952FE3EEF698, double 0xBDC0801C60271E8A, double 0x3D9B5D0819270339, double 0xBD765754815D58DE, double 0x3D51F89F818EFF27, double 0xBD2C7FF33A7EF88B, double 0x3D064943644A7314, double 0xBCE12CEB57FEF51A, double 0x3CB9479C0104005F], align 16
@erfc_x510_data = internal global [20 x double] [double 0x3FF1DE9E00858DCB, double 0x3F6E9B76C4E9CEC1, double 0xBF4E0932F096439F, double 0x3F2A187F3AD27F3B, double 0xBF051DCE0C57BB48, double 0x3EE048E2740EBE65, double 0xBEB83CB735D92F1E, double 0x3E91894E0607D396, double 0xBE68CB628154FEE7, double 0x3E412F70212F5859, double 0xBE176A258907C7A1, double 0x3DEF6A1BE28BC98F, double 0xBDC4C831AB780227, double 0x3D9B25A89D664688, double 0xBD7185AC0F3E6236, double 0x3D465EE3FB18244F, double 0xBD1C43E84FBBA814, double 0x3CF1AE75C867A5DA, double 0xBCC5E78A09AB991A, double 0x3C9A4DCDCED8EC98], align 16
@erfc8_sum.P = internal global [6 x double] [double 0x4007D4B780645377, double 0x401DA3930A99D8DF, double 0x4018A40E0D3E694C, double 0x40141381C5862508, double 0x3FF467E6DAD8642A, double 0x3FE20DD750429B62], align 16
@erfc8_sum.Q = internal global [7 x double] [double 0x400AF3DDB3BE0AF7, double 0x402337CA4DA961C6, double 0x403114D94D02EDA4, double 0x402819103A226D88, double 0x4022CAC4F877AA8B, double 0x4002158FFA22F7A8, double 1.000000e+00], align 16
@0 = private unnamed_addr constant [14 x i8] c"gsl_sf_erfc_e\00"
@1 = private unnamed_addr constant [8 x i8] c"erfc.ll\00"
@2 = private unnamed_addr constant [12 x i8] c"cheb_eval_e\00"
@3 = private unnamed_addr constant [8 x i8] c"erfc.ll\00"
@4 = private unnamed_addr constant [6 x i8] c"erfc8\00"
@5 = private unnamed_addr constant [8 x i8] c"erfc.ll\00"
@6 = private unnamed_addr constant [18 x i8] c"gsl_sf_log_erfc_e\00"
@7 = private unnamed_addr constant [8 x i8] c"erfc.ll\00"
@8 = private unnamed_addr constant [10 x i8] c"log_erfc8\00"
@9 = private unnamed_addr constant [8 x i8] c"erfc.ll\00"
@10 = private unnamed_addr constant [13 x i8] c"gsl_sf_erf_e\00"
@11 = private unnamed_addr constant [8 x i8] c"erfc.ll\00"
@12 = private unnamed_addr constant [10 x i8] c"erfseries\00"
@13 = private unnamed_addr constant [8 x i8] c"erfc.ll\00"
@14 = private unnamed_addr constant [15 x i8] c"gsl_sf_erf_Z_e\00"
@15 = private unnamed_addr constant [8 x i8] c"erfc.ll\00"
@16 = private unnamed_addr constant [15 x i8] c"gsl_sf_erf_Q_e\00"
@17 = private unnamed_addr constant [8 x i8] c"erfc.ll\00"
@18 = private unnamed_addr constant [16 x i8] c"gsl_sf_hazard_e\00"
@19 = private unnamed_addr constant [8 x i8] c"erfc.ll\00"
@20 = private unnamed_addr constant [12 x i8] c"gsl_sf_erfc\00"
@21 = private unnamed_addr constant [8 x i8] c"erfc.ll\00"
@22 = private unnamed_addr constant [16 x i8] c"gsl_sf_log_erfc\00"
@23 = private unnamed_addr constant [8 x i8] c"erfc.ll\00"
@24 = private unnamed_addr constant [11 x i8] c"gsl_sf_erf\00"
@25 = private unnamed_addr constant [8 x i8] c"erfc.ll\00"
@26 = private unnamed_addr constant [13 x i8] c"gsl_sf_erf_Z\00"
@27 = private unnamed_addr constant [8 x i8] c"erfc.ll\00"
@28 = private unnamed_addr constant [13 x i8] c"gsl_sf_erf_Q\00"
@29 = private unnamed_addr constant [8 x i8] c"erfc.ll\00"
@30 = private unnamed_addr constant [14 x i8] c"gsl_sf_hazard\00"
@31 = private unnamed_addr constant [8 x i8] c"erfc.ll\00"
@32 = private unnamed_addr constant [10 x i8] c"erfc8_sum\00"
@33 = private unnamed_addr constant [8 x i8] c"erfc.ll\00"

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_erfc_e(double, %struct.gsl_sf_result_struct*) #0 !dbg !82 {
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct*, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca %struct.gsl_sf_result_struct, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca %struct.gsl_sf_result_struct, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca %struct.gsl_sf_result_struct, align 8
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !92, metadata !93), !dbg !94
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %4, metadata !95, metadata !93), !dbg !96
  call void @llvm.dbg.declare(metadata double* %5, metadata !97, metadata !93), !dbg !99
  %16 = load double, double* %3, align 8, !dbg !100
  %17 = call double @fabs(double %16) #1, !dbg !101
  store double %17, double* %5, align 8, !dbg !99
  call void @llvm.dbg.declare(metadata double* %6, metadata !102, metadata !93), !dbg !103
  call void @llvm.dbg.declare(metadata double* %7, metadata !104, metadata !93), !dbg !105
  %18 = load double, double* %5, align 8, !dbg !106
  %19 = fcmp ole double %18, 1.000000e+00, !dbg !108
  %20 = call i1 @fCmpInstHandler(double %18, double 1.000000e+00, i1 %19, i32 5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 93989995448688, i32 263, i32 9), !dbg !109
  br i1 %20, label %21, label %31, !dbg !109

; <label>:21:                                     ; preds = %2
  call void @llvm.dbg.declare(metadata double* %8, metadata !110, metadata !93), !dbg !112
  %22 = load double, double* %5, align 8, !dbg !113
  %23 = fmul double 2.000000e+00, %22, !dbg !114
  call void @fMulHandler(double 2.000000e+00, double %22, double %23, i64 0, i64 93989995450824, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 93989995451296, i32 264, i32 19), !dbg !115
  %24 = fsub double %23, 1.000000e+00, !dbg !115
  call void @fSubHandler(double %23, double 1.000000e+00, double %24, i64 93989995451296, i64 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 93989995451712, i32 264, i32 23), !dbg !112
  store double %24, double* %8, align 8, !dbg !112
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %9, metadata !116, metadata !93), !dbg !117
  %25 = load double, double* %8, align 8, !dbg !118
  %26 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @erfc_xlt1_cs, double %25, %struct.gsl_sf_result_struct* %9), !dbg !119
  %27 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %9, i32 0, i32 0, !dbg !120
  %28 = load double, double* %27, align 8, !dbg !120
  store double %28, double* %6, align 8, !dbg !121
  %29 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %9, i32 0, i32 1, !dbg !122
  %30 = load double, double* %29, align 8, !dbg !122
  store double %30, double* %7, align 8, !dbg !123
  br label %104, !dbg !124

; <label>:31:                                     ; preds = %2
  %32 = load double, double* %5, align 8, !dbg !125
  %33 = fcmp ole double %32, 5.000000e+00, !dbg !127
  %34 = call i1 @fCmpInstHandler(double %32, double 5.000000e+00, i1 %33, i32 5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 93989995462048, i32 270, i32 14), !dbg !128
  br i1 %34, label %35, label %59, !dbg !128

; <label>:35:                                     ; preds = %31
  call void @llvm.dbg.declare(metadata double* %10, metadata !129, metadata !93), !dbg !131
  %36 = load double, double* %3, align 8, !dbg !132
  %37 = fsub double -0.000000e+00, %36, !dbg !133
  call void @fSubHandler(double -0.000000e+00, double %36, double %37, i64 0, i64 93989995464808, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 93989995465248, i32 271, i32 22), !dbg !134
  %38 = load double, double* %3, align 8, !dbg !134
  %39 = fmul double %37, %38, !dbg !135
  call void @fMulHandler(double %37, double %38, double %39, i64 93989995465248, i64 93989995465640, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 93989995466048, i32 271, i32 24), !dbg !136
  %40 = call double @exp(double %39) #6, !dbg !136
  call void @callOneArgHandler(i32 11, double %39, double %40, i64 93989995466048, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 93989995466800, i32 271, i32 18), !dbg !131
  store double %40, double* %10, align 8, !dbg !131
  call void @llvm.dbg.declare(metadata double* %11, metadata !137, metadata !93), !dbg !138
  %41 = load double, double* %5, align 8, !dbg !139
  %42 = fsub double %41, 3.000000e+00, !dbg !140
  call void @fSubHandler(double %41, double 3.000000e+00, double %42, i64 93989995470136, i64 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 93989995470608, i32 272, i32 23), !dbg !141
  %43 = fmul double 5.000000e-01, %42, !dbg !141
  call void @fMulHandler(double 5.000000e-01, double %42, double %43, i64 0, i64 93989995470608, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 93989995471088, i32 272, i32 19), !dbg !138
  store double %43, double* %11, align 8, !dbg !138
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %12, metadata !142, metadata !93), !dbg !143
  %44 = load double, double* %11, align 8, !dbg !144
  %45 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @erfc_x15_cs, double %44, %struct.gsl_sf_result_struct* %12), !dbg !145
  %46 = load double, double* %10, align 8, !dbg !146
  %47 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %12, i32 0, i32 0, !dbg !147
  %48 = load double, double* %47, align 8, !dbg !147
  %49 = fmul double %46, %48, !dbg !148
  call void @fMulHandler(double %46, double %48, double %49, i64 93989995475192, i64 93989995475992, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 93989995477664, i32 275, i32 17), !dbg !149
  store double %49, double* %6, align 8, !dbg !149
  %50 = load double, double* %10, align 8, !dbg !150
  %51 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %12, i32 0, i32 1, !dbg !151
  %52 = load double, double* %51, align 8, !dbg !151
  %53 = load double, double* %3, align 8, !dbg !152
  %54 = call double @fabs(double %53) #1, !dbg !153
  %55 = fmul double 2.000000e+00, %54, !dbg !154
  call void @fMulHandler(double 2.000000e+00, double %54, double %55, i64 0, i64 93989995481424, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 93989995481936, i32 276, i32 31), !dbg !155
  %56 = fmul double %55, 0x3CB0000000000000, !dbg !155
  call void @fMulHandler(double %55, double 0x3CB0000000000000, double %56, i64 93989995481936, i64 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 93989995482384, i32 276, i32 39), !dbg !156
  %57 = fadd double %52, %56, !dbg !156
  call void @fAddHandler(double %52, double %56, double %57, i64 93989995479304, i64 93989995482384, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 93989995482800, i32 276, i32 26), !dbg !157
  %58 = fmul double %50, %57, !dbg !157
  call void @fMulHandler(double %50, double %57, double %58, i64 93989995478472, i64 93989995482800, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 93989995483216, i32 276, i32 17), !dbg !158
  store double %58, double* %7, align 8, !dbg !158
  br label %103, !dbg !159

; <label>:59:                                     ; preds = %31
  %60 = load double, double* %5, align 8, !dbg !160
  %61 = fcmp olt double %60, 1.000000e+01, !dbg !162
  %62 = call i1 @fCmpInstHandler(double %60, double 1.000000e+01, i1 %61, i32 4, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 93989995484992, i32 278, i32 14), !dbg !163
  br i1 %62, label %63, label %91, !dbg !163

; <label>:63:                                     ; preds = %59
  call void @llvm.dbg.declare(metadata double* %13, metadata !164, metadata !93), !dbg !166
  %64 = load double, double* %3, align 8, !dbg !167
  %65 = fsub double -0.000000e+00, %64, !dbg !168
  call void @fSubHandler(double -0.000000e+00, double %64, double %65, i64 0, i64 93989995487128, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 93989995487504, i32 279, i32 25), !dbg !169
  %66 = load double, double* %3, align 8, !dbg !169
  %67 = fmul double %65, %66, !dbg !170
  call void @fMulHandler(double %65, double %66, double %67, i64 93989995487504, i64 93989995487896, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 93989995488304, i32 279, i32 27), !dbg !171
  %68 = call double @exp(double %67) #6, !dbg !171
  call void @callOneArgHandler(i32 11, double %67, double %68, i64 93989995488304, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 93989995489824, i32 279, i32 21), !dbg !172
  %69 = load double, double* %5, align 8, !dbg !172
  %70 = fdiv double %68, %69, !dbg !173
  call void @fDivHandler(double %68, double %69, double %70, i64 93989995489824, i64 93989995490280, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 93989995490688, i32 279, i32 31), !dbg !166
  store double %70, double* %13, align 8, !dbg !166
  call void @llvm.dbg.declare(metadata double* %14, metadata !174, metadata !93), !dbg !175
  %71 = load double, double* %5, align 8, !dbg !176
  %72 = fmul double 2.000000e+00, %71, !dbg !177
  call void @fMulHandler(double 2.000000e+00, double %71, double %72, i64 0, i64 93989995493880, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 93989995494288, i32 280, i32 20), !dbg !178
  %73 = fsub double %72, 1.500000e+01, !dbg !178
  call void @fSubHandler(double %72, double 1.500000e+01, double %73, i64 93989995494288, i64 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 93989995494768, i32 280, i32 24), !dbg !179
  %74 = fdiv double %73, 5.000000e+00, !dbg !179
  call void @fDivHandler(double %73, double 5.000000e+00, double %74, i64 93989995494768, i64 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 93989995495184, i32 280, i32 31), !dbg !175
  store double %74, double* %14, align 8, !dbg !175
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %15, metadata !180, metadata !93), !dbg !181
  %75 = load double, double* %14, align 8, !dbg !182
  %76 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @erfc_x510_cs, double %75, %struct.gsl_sf_result_struct* %15), !dbg !183
  %77 = load double, double* %13, align 8, !dbg !184
  %78 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %15, i32 0, i32 0, !dbg !185
  %79 = load double, double* %78, align 8, !dbg !185
  %80 = fmul double %77, %79, !dbg !186
  call void @fMulHandler(double %77, double %79, double %80, i64 93989995499288, i64 93989995500088, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 93989995501760, i32 283, i32 20), !dbg !187
  store double %80, double* %6, align 8, !dbg !187
  %81 = load double, double* %13, align 8, !dbg !188
  %82 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %15, i32 0, i32 1, !dbg !189
  %83 = load double, double* %82, align 8, !dbg !189
  %84 = load double, double* %3, align 8, !dbg !190
  %85 = call double @fabs(double %84) #1, !dbg !191
  %86 = fmul double 2.000000e+00, %85, !dbg !192
  call void @fMulHandler(double 2.000000e+00, double %85, double %86, i64 0, i64 93989995505520, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 93989995506032, i32 284, i32 34), !dbg !193
  %87 = fmul double %86, 0x3CB0000000000000, !dbg !193
  call void @fMulHandler(double %86, double 0x3CB0000000000000, double %87, i64 93989995506032, i64 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 93989995506416, i32 284, i32 42), !dbg !194
  %88 = fadd double %83, %87, !dbg !194
  call void @fAddHandler(double %83, double %87, double %88, i64 93989995503400, i64 93989995506416, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 93989995506832, i32 284, i32 29), !dbg !195
  %89 = fadd double %88, 0x3CB0000000000000, !dbg !195
  call void @fAddHandler(double %88, double 0x3CB0000000000000, double %89, i64 93989995506832, i64 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 93989995507248, i32 284, i32 59), !dbg !196
  %90 = fmul double %81, %89, !dbg !196
  call void @fMulHandler(double %81, double %89, double %90, i64 93989995502568, i64 93989995507248, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 93989995507664, i32 284, i32 20), !dbg !197
  store double %90, double* %7, align 8, !dbg !197
  br label %102, !dbg !198

; <label>:91:                                     ; preds = %59
  %92 = load double, double* %5, align 8, !dbg !199
  %93 = call double @erfc8(double %92), !dbg !201
  store double %93, double* %6, align 8, !dbg !202
  %94 = load double, double* %3, align 8, !dbg !203
  %95 = load double, double* %3, align 8, !dbg !204
  %96 = fmul double %94, %95, !dbg !205
  call void @fMulHandler(double %94, double %95, double %96, i64 93989995510552, i64 93989995510936, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 93989995511344, i32 288, i32 15), !dbg !206
  %97 = fadd double %96, 1.000000e+00, !dbg !206
  call void @fAddHandler(double %96, double 1.000000e+00, double %97, i64 93989995511344, i64 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 93989995511792, i32 288, i32 18), !dbg !207
  %98 = fmul double %97, 0x3CB0000000000000, !dbg !207
  call void @fMulHandler(double %97, double 0x3CB0000000000000, double %98, i64 93989995511792, i64 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 93989995512176, i32 288, i32 25), !dbg !208
  %99 = load double, double* %6, align 8, !dbg !208
  %100 = call double @fabs(double %99) #1, !dbg !209
  %101 = fmul double %98, %100, !dbg !210
  call void @fMulHandler(double %98, double %100, double %101, i64 93989995512176, i64 93989995513040, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 93989995513520, i32 288, i32 43), !dbg !211
  store double %101, double* %7, align 8, !dbg !211
  br label %102

; <label>:102:                                    ; preds = %91, %63
  br label %103

; <label>:103:                                    ; preds = %102, %35
  br label %104

; <label>:104:                                    ; preds = %103, %21
  %105 = load double, double* %3, align 8, !dbg !212
  %106 = fcmp olt double %105, 0.000000e+00, !dbg !214
  %107 = call i1 @fCmpInstHandler(double %105, double 0.000000e+00, i1 %106, i32 4, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 93989995514896, i32 291, i32 8), !dbg !215
  br i1 %107, label %108, label %125, !dbg !215

; <label>:108:                                    ; preds = %104
  %109 = load double, double* %6, align 8, !dbg !216
  %110 = fsub double 2.000000e+00, %109, !dbg !218
  call void @fSubHandler(double 2.000000e+00, double %109, double %110, i64 0, i64 93989995516008, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 93989995516384, i32 292, i32 24), !dbg !219
  %111 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %4, align 8, !dbg !219
  %112 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %111, i32 0, i32 0, !dbg !220
  store double %110, double* %112, align 8, !dbg !221
  %113 = load double, double* %7, align 8, !dbg !222
  %114 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %4, align 8, !dbg !223
  %115 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %114, i32 0, i32 1, !dbg !224
  store double %113, double* %115, align 8, !dbg !225
  %116 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %4, align 8, !dbg !226
  %117 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %116, i32 0, i32 0, !dbg !227
  %118 = load double, double* %117, align 8, !dbg !227
  %119 = call double @fabs(double %118) #1, !dbg !228
  %120 = fmul double 0x3CC0000000000000, %119, !dbg !229
  call void @fMulHandler(double 0x3CC0000000000000, double %119, double %120, i64 0, i64 93989995522192, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 93989995522736, i32 294, i32 42), !dbg !230
  %121 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %4, align 8, !dbg !230
  %122 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %121, i32 0, i32 1, !dbg !231
  %123 = load double, double* %122, align 8, !dbg !232
  %124 = fadd double %123, %120, !dbg !232
  call void @fAddHandler(double %123, double %120, double %124, i64 93989995523960, i64 93989995522736, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 93989995524368, i32 294, i32 17), !dbg !232
  store double %124, double* %122, align 8, !dbg !232
  br label %141, !dbg !233

; <label>:125:                                    ; preds = %104
  %126 = load double, double* %6, align 8, !dbg !234
  %127 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %4, align 8, !dbg !236
  %128 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %127, i32 0, i32 0, !dbg !237
  store double %126, double* %128, align 8, !dbg !238
  %129 = load double, double* %7, align 8, !dbg !239
  %130 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %4, align 8, !dbg !240
  %131 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %130, i32 0, i32 1, !dbg !241
  store double %129, double* %131, align 8, !dbg !242
  %132 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %4, align 8, !dbg !243
  %133 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %132, i32 0, i32 0, !dbg !244
  %134 = load double, double* %133, align 8, !dbg !244
  %135 = call double @fabs(double %134) #1, !dbg !245
  %136 = fmul double 0x3CC0000000000000, %135, !dbg !246
  call void @fMulHandler(double 0x3CC0000000000000, double %135, double %136, i64 0, i64 93989995534512, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 93989995534992, i32 299, i32 42), !dbg !247
  %137 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %4, align 8, !dbg !247
  %138 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %137, i32 0, i32 1, !dbg !248
  %139 = load double, double* %138, align 8, !dbg !249
  %140 = fadd double %139, %136, !dbg !249
  call void @fAddHandler(double %139, double %136, double %140, i64 93989995536216, i64 93989995534992, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 93989995536624, i32 299, i32 17), !dbg !249
  store double %140, double* %138, align 8, !dbg !249
  br label %141

; <label>:141:                                    ; preds = %125, %108
  ret i32 0, !dbg !250
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readnone
declare double @fabs(double) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @cheb_eval_e(%struct.cheb_series_struct*, double, %struct.gsl_sf_result_struct*) #3 !dbg !251 {
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
  call void @llvm.dbg.declare(metadata %struct.cheb_series_struct** %4, metadata !257, metadata !93), !dbg !258
  store double %1, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !259, metadata !93), !dbg !260
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %6, metadata !261, metadata !93), !dbg !262
  call void @llvm.dbg.declare(metadata i32* %7, metadata !263, metadata !93), !dbg !264
  call void @llvm.dbg.declare(metadata double* %8, metadata !265, metadata !93), !dbg !266
  store double 0.000000e+00, double* %8, align 8, !dbg !266
  call void @llvm.dbg.declare(metadata double* %9, metadata !267, metadata !93), !dbg !268
  store double 0.000000e+00, double* %9, align 8, !dbg !268
  call void @llvm.dbg.declare(metadata double* %10, metadata !269, metadata !93), !dbg !270
  %15 = load double, double* %5, align 8, !dbg !271
  %16 = fmul double 2.000000e+00, %15, !dbg !272
  call void @fMulHandler(double 2.000000e+00, double %15, double %16, i64 0, i64 93989995455464, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 93989995551024, i32 11, i32 19), !dbg !273
  %17 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !273
  %18 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %17, i32 0, i32 2, !dbg !274
  %19 = load double, double* %18, align 8, !dbg !274
  %20 = fsub double %16, %19, !dbg !275
  call void @fSubHandler(double %16, double %19, double %20, i64 93989995551024, i64 93989995416600, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 93989995553760, i32 11, i32 22), !dbg !276
  %21 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !276
  %22 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %21, i32 0, i32 3, !dbg !277
  %23 = load double, double* %22, align 8, !dbg !277
  %24 = fsub double %20, %23, !dbg !278
  call void @fSubHandler(double %20, double %23, double %24, i64 93989995553760, i64 93989995555048, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 93989995556720, i32 11, i32 30), !dbg !279
  %25 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !279
  %26 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %25, i32 0, i32 3, !dbg !280
  %27 = load double, double* %26, align 8, !dbg !280
  %28 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !281
  %29 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %28, i32 0, i32 2, !dbg !282
  %30 = load double, double* %29, align 8, !dbg !282
  %31 = fsub double %27, %30, !dbg !283
  call void @fSubHandler(double %27, double %30, double %31, i64 93989995557944, i64 93989995560424, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 93989995562096, i32 11, i32 48), !dbg !284
  %32 = fdiv double %24, %31, !dbg !284
  call void @fDivHandler(double %24, double %31, double %32, i64 93989995556720, i64 93989995562096, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 93989995562512, i32 11, i32 39), !dbg !270
  store double %32, double* %10, align 8, !dbg !270
  call void @llvm.dbg.declare(metadata double* %11, metadata !285, metadata !93), !dbg !286
  %33 = load double, double* %10, align 8, !dbg !287
  %34 = fmul double 2.000000e+00, %33, !dbg !288
  call void @fMulHandler(double 2.000000e+00, double %33, double %34, i64 0, i64 93989995565560, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 93989995565968, i32 12, i32 19), !dbg !286
  store double %34, double* %11, align 8, !dbg !286
  call void @llvm.dbg.declare(metadata double* %12, metadata !289, metadata !93), !dbg !290
  store double 0.000000e+00, double* %12, align 8, !dbg !290
  %35 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !291
  %36 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %35, i32 0, i32 1, !dbg !293
  %37 = load i32, i32* %36, align 8, !dbg !293
  store i32 %37, i32* %7, align 4, !dbg !294
  br label %38, !dbg !295

; <label>:38:                                     ; preds = %77, %3
  %39 = load i32, i32* %7, align 4, !dbg !296
  %40 = icmp sge i32 %39, 1, !dbg !299
  %41 = sext i32 %39 to i64, !dbg !300
  %42 = call i1 @iCmpInstHandler(i64 %41, i64 1, i1 %40, i32 39, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 93989995574544, i32 16, i32 23), !dbg !300
  br i1 %42, label %43, label %80, !dbg !300

; <label>:43:                                     ; preds = %38
  call void @llvm.dbg.declare(metadata double* %13, metadata !301, metadata !93), !dbg !303
  %44 = load double, double* %8, align 8, !dbg !304
  store double %44, double* %13, align 8, !dbg !303
  %45 = load double, double* %11, align 8, !dbg !305
  %46 = load double, double* %8, align 8, !dbg !306
  %47 = fmul double %45, %46, !dbg !307
  call void @fMulHandler(double %45, double %46, double %47, i64 93989995578744, i64 93989995579128, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 93989995579536, i32 18, i32 11), !dbg !308
  %48 = load double, double* %9, align 8, !dbg !308
  %49 = fsub double %47, %48, !dbg !309
  call void @fSubHandler(double %47, double %48, double %49, i64 93989995579536, i64 93989995579928, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 93989995580336, i32 18, i32 14), !dbg !310
  %50 = load i32, i32* %7, align 4, !dbg !310
  %51 = sext i32 %50 to i64, !dbg !311
  %52 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !311
  %53 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %52, i32 0, i32 0, !dbg !312
  %54 = load double*, double** %53, align 8, !dbg !312
  %55 = getelementptr inbounds double, double* %54, i64 %51, !dbg !311
  %56 = load double, double* %55, align 8, !dbg !311
  %57 = fadd double %49, %56, !dbg !313
  call void @fAddHandler(double %49, double %56, double %57, i64 93989995580336, i64 93989995585384, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 93989995585504, i32 18, i32 19), !dbg !314
  store double %57, double* %8, align 8, !dbg !314
  %58 = load double, double* %11, align 8, !dbg !315
  %59 = load double, double* %13, align 8, !dbg !316
  %60 = fmul double %58, %59, !dbg !317
  call void @fMulHandler(double %58, double %59, double %60, i64 93989995586312, i64 93989995586696, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 93989995587104, i32 19, i32 17), !dbg !318
  %61 = call double @fabs(double %60) #1, !dbg !318
  %62 = load double, double* %9, align 8, !dbg !319
  %63 = call double @fabs(double %62) #1, !dbg !320
  %64 = fadd double %61, %63, !dbg !322
  call void @fAddHandler(double %61, double %63, double %64, i64 93989995587584, i64 93989995588512, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 93989995588992, i32 19, i32 24), !dbg !323
  %65 = load i32, i32* %7, align 4, !dbg !323
  %66 = sext i32 %65 to i64, !dbg !324
  %67 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !324
  %68 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %67, i32 0, i32 0, !dbg !325
  %69 = load double*, double** %68, align 8, !dbg !325
  %70 = getelementptr inbounds double, double* %69, i64 %66, !dbg !324
  %71 = load double, double* %70, align 8, !dbg !324
  %72 = call double @fabs(double %71) #1, !dbg !326
  %73 = fadd double %64, %72, !dbg !328
  call void @fAddHandler(double %64, double %72, double %73, i64 93989995588992, i64 93989995594224, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 93989995594704, i32 19, i32 35), !dbg !329
  %74 = load double, double* %12, align 8, !dbg !329
  %75 = fadd double %74, %73, !dbg !329
  call void @fAddHandler(double %74, double %73, double %75, i64 93989995595096, i64 93989995594704, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 93989995595504, i32 19, i32 7), !dbg !329
  store double %75, double* %12, align 8, !dbg !329
  %76 = load double, double* %13, align 8, !dbg !330
  store double %76, double* %9, align 8, !dbg !331
  br label %77, !dbg !332

; <label>:77:                                     ; preds = %43
  %78 = load i32, i32* %7, align 4, !dbg !333
  %79 = add nsw i32 %78, -1, !dbg !333
  store i32 %79, i32* %7, align 4, !dbg !333
  br label %38, !dbg !335, !llvm.loop !336

; <label>:80:                                     ; preds = %38
  call void @llvm.dbg.declare(metadata double* %14, metadata !338, metadata !93), !dbg !340
  %81 = load double, double* %8, align 8, !dbg !341
  store double %81, double* %14, align 8, !dbg !340
  %82 = load double, double* %10, align 8, !dbg !342
  %83 = load double, double* %8, align 8, !dbg !343
  %84 = fmul double %82, %83, !dbg !344
  call void @fMulHandler(double %82, double %83, double %84, i64 93989995610744, i64 93989995611128, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 93989995611536, i32 25, i32 10), !dbg !345
  %85 = load double, double* %9, align 8, !dbg !345
  %86 = fsub double %84, %85, !dbg !346
  call void @fSubHandler(double %84, double %85, double %86, i64 93989995611536, i64 93989995611928, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 93989995612336, i32 25, i32 13), !dbg !347
  %87 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !347
  %88 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %87, i32 0, i32 0, !dbg !348
  %89 = load double*, double** %88, align 8, !dbg !348
  %90 = getelementptr inbounds double, double* %89, i64 0, !dbg !347
  %91 = load double, double* %90, align 8, !dbg !347
  %92 = fmul double 5.000000e-01, %91, !dbg !349
  call void @fMulHandler(double 5.000000e-01, double %91, double %92, i64 0, i64 93989995616968, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 93989995617120, i32 25, i32 24), !dbg !350
  %93 = fadd double %86, %92, !dbg !350
  call void @fAddHandler(double %86, double %92, double %93, i64 93989995612336, i64 93989995617120, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 93989995617504, i32 25, i32 18), !dbg !351
  store double %93, double* %8, align 8, !dbg !351
  %94 = load double, double* %10, align 8, !dbg !352
  %95 = load double, double* %14, align 8, !dbg !353
  %96 = fmul double %94, %95, !dbg !354
  call void @fMulHandler(double %94, double %95, double %96, i64 93989995618312, i64 93989995618696, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 93989995619104, i32 26, i32 16), !dbg !355
  %97 = call double @fabs(double %96) #1, !dbg !355
  %98 = load double, double* %9, align 8, !dbg !356
  %99 = call double @fabs(double %98) #1, !dbg !357
  %100 = fadd double %97, %99, !dbg !359
  call void @fAddHandler(double %97, double %99, double %100, i64 93989995619584, i64 93989995620512, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 93989995620992, i32 26, i32 23), !dbg !360
  %101 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !360
  %102 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %101, i32 0, i32 0, !dbg !361
  %103 = load double*, double** %102, align 8, !dbg !361
  %104 = getelementptr inbounds double, double* %103, i64 0, !dbg !360
  %105 = load double, double* %104, align 8, !dbg !360
  %106 = call double @fabs(double %105) #1, !dbg !362
  %107 = fmul double 5.000000e-01, %106, !dbg !364
  call void @fMulHandler(double 5.000000e-01, double %106, double %107, i64 0, i64 93989995625744, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 93989995626256, i32 26, i32 40), !dbg !365
  %108 = fadd double %100, %107, !dbg !365
  call void @fAddHandler(double %100, double %107, double %108, i64 93989995620992, i64 93989995626256, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 93989995626640, i32 26, i32 34), !dbg !366
  %109 = load double, double* %12, align 8, !dbg !366
  %110 = fadd double %109, %108, !dbg !366
  call void @fAddHandler(double %109, double %108, double %110, i64 93989995627032, i64 93989995626640, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 93989995627440, i32 26, i32 7), !dbg !366
  store double %110, double* %12, align 8, !dbg !366
  %111 = load double, double* %8, align 8, !dbg !367
  %112 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !368
  %113 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %112, i32 0, i32 0, !dbg !369
  store double %111, double* %113, align 8, !dbg !370
  %114 = load double, double* %12, align 8, !dbg !371
  %115 = fmul double 0x3CB0000000000000, %114, !dbg !372
  call void @fMulHandler(double 0x3CB0000000000000, double %114, double %115, i64 0, i64 93989995630856, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 93989995631264, i32 30, i32 33), !dbg !373
  %116 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !373
  %117 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %116, i32 0, i32 1, !dbg !374
  %118 = load i32, i32* %117, align 8, !dbg !374
  %119 = sext i32 %118 to i64, !dbg !375
  %120 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !375
  %121 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %120, i32 0, i32 0, !dbg !376
  %122 = load double*, double** %121, align 8, !dbg !376
  %123 = getelementptr inbounds double, double* %122, i64 %119, !dbg !375
  %124 = load double, double* %123, align 8, !dbg !375
  %125 = call double @fabs(double %124) #1, !dbg !377
  %126 = fadd double %115, %125, !dbg !378
  call void @fAddHandler(double %115, double %125, double %126, i64 93989995631264, i64 93989995638592, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 93989995639072, i32 30, i32 37), !dbg !379
  %127 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !379
  %128 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %127, i32 0, i32 1, !dbg !380
  store double %126, double* %128, align 8, !dbg !381
  ret i32 0, !dbg !382
}

; Function Attrs: nounwind
declare double @exp(double) #4

; Function Attrs: inlinehint nounwind uwtable
define internal double @erfc8(double) #3 !dbg !383 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  store double %0, double* %2, align 8
  call void @llvm.dbg.declare(metadata double* %2, metadata !384, metadata !93), !dbg !385
  call void @llvm.dbg.declare(metadata double* %3, metadata !386, metadata !93), !dbg !387
  %4 = load double, double* %2, align 8, !dbg !388
  %5 = call double @erfc8_sum(double %4), !dbg !389
  store double %5, double* %3, align 8, !dbg !390
  %6 = load double, double* %2, align 8, !dbg !391
  %7 = fsub double -0.000000e+00, %6, !dbg !392
  call void @fSubHandler(double -0.000000e+00, double %6, double %7, i64 0, i64 93989995645864, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 93989995646272, i32 85, i32 12), !dbg !393
  %8 = load double, double* %2, align 8, !dbg !393
  %9 = fmul double %7, %8, !dbg !394
  call void @fMulHandler(double %7, double %8, double %9, i64 93989995646272, i64 93989995646664, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 93989995647216, i32 85, i32 14), !dbg !395
  %10 = call double @exp(double %9) #6, !dbg !395
  call void @callOneArgHandler(i32 11, double %9, double %10, i64 93989995647216, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 93989995647696, i32 85, i32 8), !dbg !396
  %11 = load double, double* %3, align 8, !dbg !396
  %12 = fmul double %11, %10, !dbg !396
  call void @fMulHandler(double %11, double %10, double %12, i64 93989995648072, i64 93989995647696, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 93989995648480, i32 85, i32 5), !dbg !396
  store double %12, double* %3, align 8, !dbg !396
  %13 = load double, double* %3, align 8, !dbg !397
  ret double %13, !dbg !398
}

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_log_erfc_e(double, %struct.gsl_sf_result_struct*) #0 !dbg !399 {
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
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca %struct.gsl_sf_result_struct, align 8
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !400, metadata !93), !dbg !401
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %5, metadata !402, metadata !93), !dbg !403
  %21 = load double, double* %4, align 8, !dbg !404
  %22 = load double, double* %4, align 8, !dbg !406
  %23 = fmul double %21, %22, !dbg !407
  call void @fMulHandler(double %21, double %22, double %23, i64 93989995656296, i64 93989995656648, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @7, i32 0, i32 0), i64 93989995657056, i32 310, i32 7), !dbg !408
  %24 = fcmp olt double %23, 0x3F9932CBB7F0CF30, !dbg !408
  %25 = call i1 @fCmpInstHandler(double %23, double 0x3F9932CBB7F0CF30, i1 %24, i32 4, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @7, i32 0, i32 0), i64 93989995657536, i32 310, i32 10), !dbg !409
  br i1 %25, label %26, label %82, !dbg !409

; <label>:26:                                     ; preds = %2
  call void @llvm.dbg.declare(metadata double* %6, metadata !410, metadata !93), !dbg !412
  %27 = load double, double* %4, align 8, !dbg !413
  %28 = fdiv double %27, 0x3FFC5BF891B4EF6B, !dbg !414
  call void @fDivHandler(double %27, double 0x3FFC5BF891B4EF6B, double %28, i64 93989995659704, i64 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @7, i32 0, i32 0), i64 93989995660144, i32 311, i32 24), !dbg !412
  store double %28, double* %6, align 8, !dbg !412
  call void @llvm.dbg.declare(metadata double* %7, metadata !415, metadata !93), !dbg !416
  store double 0x3FD2500C749F87C0, double* %7, align 8, !dbg !416
  call void @llvm.dbg.declare(metadata double* %8, metadata !417, metadata !93), !dbg !418
  store double 0xBFB82A4705AE6CA0, double* %8, align 8, !dbg !418
  call void @llvm.dbg.declare(metadata double* %9, metadata !419, metadata !93), !dbg !420
  store double 0xBF5DFA96DCBD2883, double* %9, align 8, !dbg !420
  call void @llvm.dbg.declare(metadata double* %10, metadata !421, metadata !93), !dbg !422
  store double 0x3F9AED7943500FA5, double* %10, align 8, !dbg !422
  call void @llvm.dbg.declare(metadata double* %11, metadata !423, metadata !93), !dbg !424
  store double 0xBF909ADCD0CDCABE, double* %11, align 8, !dbg !424
  call void @llvm.dbg.declare(metadata double* %12, metadata !425, metadata !93), !dbg !426
  store double 0x3F54A491DCF7AFED, double* %12, align 8, !dbg !426
  call void @llvm.dbg.declare(metadata double* %13, metadata !427, metadata !93), !dbg !428
  store double 0x3F76D032987DFC5C, double* %13, align 8, !dbg !428
  call void @llvm.dbg.declare(metadata double* %14, metadata !429, metadata !93), !dbg !430
  store double 0xBF72A9A996F42C40, double* %14, align 8, !dbg !430
  call void @llvm.dbg.declare(metadata double* %15, metadata !431, metadata !93), !dbg !432
  store double 0x3F4F00F4C5E56661, double* %15, align 8, !dbg !432
  call void @llvm.dbg.declare(metadata double* %16, metadata !433, metadata !93), !dbg !434
  store double 0x3F55A095517B6A89, double* %16, align 8, !dbg !434
  call void @llvm.dbg.declare(metadata double* %17, metadata !435, metadata !93), !dbg !436
  store double -1.429060e-03, double* %17, align 8, !dbg !436
  call void @llvm.dbg.declare(metadata double* %18, metadata !437, metadata !93), !dbg !438
  store double 4.820400e-04, double* %18, align 8, !dbg !438
  call void @llvm.dbg.declare(metadata double* %19, metadata !439, metadata !93), !dbg !440
  %29 = load double, double* %6, align 8, !dbg !441
  %30 = load double, double* %6, align 8, !dbg !442
  %31 = load double, double* %6, align 8, !dbg !443
  %32 = load double, double* %6, align 8, !dbg !444
  %33 = load double, double* %6, align 8, !dbg !445
  %34 = load double, double* %6, align 8, !dbg !446
  %35 = fmul double 4.820400e-04, %34, !dbg !447
  call void @fMulHandler(double 4.820400e-04, double %34, double %35, i64 0, i64 93989995703304, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @7, i32 0, i32 0), i64 93989995703744, i32 325, i32 73), !dbg !448
  %36 = fadd double -1.429060e-03, %35, !dbg !448
  call void @fAddHandler(double -1.429060e-03, double %35, double %36, i64 0, i64 93989995703744, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @7, i32 0, i32 0), i64 93989995704160, i32 325, i32 68), !dbg !449
  %37 = fmul double %33, %36, !dbg !449
  call void @fMulHandler(double %33, double %36, double %37, i64 93989995702920, i64 93989995704160, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @7, i32 0, i32 0), i64 93989995704544, i32 325, i32 62), !dbg !450
  %38 = fadd double 0x3F55A095517B6A89, %37, !dbg !450
  call void @fAddHandler(double 0x3F55A095517B6A89, double %37, double %38, i64 0, i64 93989995704544, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @7, i32 0, i32 0), i64 93989995704960, i32 325, i32 59), !dbg !451
  %39 = fmul double %32, %38, !dbg !451
  call void @fMulHandler(double %32, double %38, double %39, i64 93989995702536, i64 93989995704960, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @7, i32 0, i32 0), i64 93989995705376, i32 325, i32 53), !dbg !452
  %40 = fadd double 0x3F4F00F4C5E56661, %39, !dbg !452
  call void @fAddHandler(double 0x3F4F00F4C5E56661, double %39, double %40, i64 0, i64 93989995705376, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @7, i32 0, i32 0), i64 93989995705792, i32 325, i32 50), !dbg !453
  %41 = fmul double %31, %40, !dbg !453
  call void @fMulHandler(double %31, double %40, double %41, i64 93989995702152, i64 93989995705792, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @7, i32 0, i32 0), i64 93989995706208, i32 325, i32 44), !dbg !454
  %42 = fadd double 0xBF72A9A996F42C40, %41, !dbg !454
  call void @fAddHandler(double 0xBF72A9A996F42C40, double %41, double %42, i64 0, i64 93989995706208, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @7, i32 0, i32 0), i64 93989995706624, i32 325, i32 41), !dbg !455
  %43 = fmul double %30, %42, !dbg !455
  call void @fMulHandler(double %30, double %42, double %43, i64 93989995701768, i64 93989995706624, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @7, i32 0, i32 0), i64 93989995707040, i32 325, i32 35), !dbg !456
  %44 = fadd double 0x3F76D032987DFC5C, %43, !dbg !456
  call void @fAddHandler(double 0x3F76D032987DFC5C, double %43, double %44, i64 0, i64 93989995707040, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @7, i32 0, i32 0), i64 93989995707456, i32 325, i32 32), !dbg !457
  %45 = fmul double %29, %44, !dbg !457
  call void @fMulHandler(double %29, double %44, double %45, i64 93989995701416, i64 93989995707456, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @7, i32 0, i32 0), i64 93989995707872, i32 325, i32 27), !dbg !458
  %46 = fadd double 0x3F54A491DCF7AFED, %45, !dbg !458
  call void @fAddHandler(double 0x3F54A491DCF7AFED, double %45, double %46, i64 0, i64 93989995707872, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @7, i32 0, i32 0), i64 93989995708288, i32 325, i32 24), !dbg !440
  store double %46, double* %19, align 8, !dbg !440
  %47 = load double, double* %6, align 8, !dbg !459
  %48 = load double, double* %6, align 8, !dbg !460
  %49 = load double, double* %6, align 8, !dbg !461
  %50 = load double, double* %6, align 8, !dbg !462
  %51 = load double, double* %6, align 8, !dbg !463
  %52 = load double, double* %6, align 8, !dbg !464
  %53 = load double, double* %6, align 8, !dbg !465
  %54 = load double, double* %6, align 8, !dbg !466
  %55 = load double, double* %19, align 8, !dbg !467
  %56 = fmul double %54, %55, !dbg !468
  call void @fMulHandler(double %54, double %55, double %56, i64 93989995713048, i64 93989995713432, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @7, i32 0, i32 0), i64 93989995713840, i32 326, i32 73), !dbg !469
  %57 = fadd double 0xBF909ADCD0CDCABE, %56, !dbg !469
  call void @fAddHandler(double 0xBF909ADCD0CDCABE, double %56, double %57, i64 0, i64 93989995713840, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @7, i32 0, i32 0), i64 93989995714256, i32 326, i32 70), !dbg !470
  %58 = fmul double %53, %57, !dbg !470
  call void @fMulHandler(double %53, double %57, double %58, i64 93989995712664, i64 93989995714256, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @7, i32 0, i32 0), i64 93989995714672, i32 326, i32 65), !dbg !471
  %59 = fadd double 0x3F9AED7943500FA5, %58, !dbg !471
  call void @fAddHandler(double 0x3F9AED7943500FA5, double %58, double %59, i64 0, i64 93989995714672, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @7, i32 0, i32 0), i64 93989995715088, i32 326, i32 62), !dbg !472
  %60 = fmul double %52, %59, !dbg !472
  call void @fMulHandler(double %52, double %59, double %60, i64 93989995712280, i64 93989995715088, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @7, i32 0, i32 0), i64 93989995715504, i32 326, i32 57), !dbg !473
  %61 = fadd double 0xBF5DFA96DCBD2883, %60, !dbg !473
  call void @fAddHandler(double 0xBF5DFA96DCBD2883, double %60, double %61, i64 0, i64 93989995715504, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @7, i32 0, i32 0), i64 93989995715920, i32 326, i32 54), !dbg !474
  %62 = fmul double %51, %61, !dbg !474
  call void @fMulHandler(double %51, double %61, double %62, i64 93989995711896, i64 93989995715920, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @7, i32 0, i32 0), i64 93989995716336, i32 326, i32 49), !dbg !475
  %63 = fadd double 0xBFB82A4705AE6CA0, %62, !dbg !475
  call void @fAddHandler(double 0xBFB82A4705AE6CA0, double %62, double %63, i64 0, i64 93989995716336, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @7, i32 0, i32 0), i64 93989995716752, i32 326, i32 46), !dbg !476
  %64 = fmul double %50, %63, !dbg !476
  call void @fMulHandler(double %50, double %63, double %64, i64 93989995711512, i64 93989995716752, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @7, i32 0, i32 0), i64 93989995717168, i32 326, i32 41), !dbg !477
  %65 = fadd double 0x3FD2500C749F87C0, %64, !dbg !477
  call void @fAddHandler(double 0x3FD2500C749F87C0, double %64, double %65, i64 0, i64 93989995717168, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @7, i32 0, i32 0), i64 93989995717584, i32 326, i32 38), !dbg !478
  %66 = fmul double %49, %65, !dbg !478
  call void @fMulHandler(double %49, double %65, double %66, i64 93989995711128, i64 93989995717584, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @7, i32 0, i32 0), i64 93989995718000, i32 326, i32 33), !dbg !479
  %67 = fadd double 1.000000e+00, %66, !dbg !479
  call void @fAddHandler(double 1.000000e+00, double %66, double %67, i64 0, i64 93989995718000, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @7, i32 0, i32 0), i64 93989995718448, i32 326, i32 30), !dbg !480
  %68 = fmul double %48, %67, !dbg !480
  call void @fMulHandler(double %48, double %67, double %68, i64 93989995710744, i64 93989995718448, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @7, i32 0, i32 0), i64 93989995718832, i32 326, i32 24), !dbg !481
  %69 = fadd double 1.000000e+00, %68, !dbg !481
  call void @fAddHandler(double 1.000000e+00, double %68, double %69, i64 0, i64 93989995718832, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @7, i32 0, i32 0), i64 93989995719280, i32 326, i32 21), !dbg !482
  %70 = fmul double %47, %69, !dbg !482
  call void @fMulHandler(double %47, double %69, double %70, i64 93989995710360, i64 93989995719280, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @7, i32 0, i32 0), i64 93989995719664, i32 326, i32 15), !dbg !483
  store double %70, double* %19, align 8, !dbg !483
  %71 = load double, double* %19, align 8, !dbg !484
  %72 = fmul double -2.000000e+00, %71, !dbg !485
  call void @fMulHandler(double -2.000000e+00, double %71, double %72, i64 0, i64 93989995720472, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @7, i32 0, i32 0), i64 93989995720976, i32 327, i32 24), !dbg !486
  %73 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !486
  %74 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %73, i32 0, i32 0, !dbg !487
  store double %72, double* %74, align 8, !dbg !488
  %75 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !489
  %76 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %75, i32 0, i32 0, !dbg !490
  %77 = load double, double* %76, align 8, !dbg !490
  %78 = call double @fabs(double %77) #1, !dbg !491
  %79 = fmul double 0x3CC0000000000000, %78, !dbg !492
  call void @fMulHandler(double 0x3CC0000000000000, double %78, double %79, i64 0, i64 93989995725152, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @7, i32 0, i32 0), i64 93989995725632, i32 328, i32 41), !dbg !493
  %80 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !493
  %81 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %80, i32 0, i32 1, !dbg !494
  store double %79, double* %81, align 8, !dbg !495
  store i32 0, i32* %3, align 4, !dbg !496
  br label %123, !dbg !496

; <label>:82:                                     ; preds = %2
  %83 = load double, double* %4, align 8, !dbg !497
  %84 = fcmp ogt double %83, 8.000000e+00, !dbg !499
  %85 = call i1 @fCmpInstHandler(double %83, double 8.000000e+00, i1 %84, i32 2, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @7, i32 0, i32 0), i64 93989995729920, i32 341, i32 13), !dbg !500
  br i1 %85, label %86, label %98, !dbg !500

; <label>:86:                                     ; preds = %82
  %87 = load double, double* %4, align 8, !dbg !501
  %88 = call double @log_erfc8(double %87), !dbg !503
  %89 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !504
  %90 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %89, i32 0, i32 0, !dbg !505
  store double %88, double* %90, align 8, !dbg !506
  %91 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !507
  %92 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %91, i32 0, i32 0, !dbg !508
  %93 = load double, double* %92, align 8, !dbg !508
  %94 = call double @fabs(double %93) #1, !dbg !509
  %95 = fmul double 0x3CC0000000000000, %94, !dbg !510
  call void @fMulHandler(double 0x3CC0000000000000, double %94, double %95, i64 0, i64 93989995736720, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @7, i32 0, i32 0), i64 93989995737200, i32 343, i32 41), !dbg !511
  %96 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !511
  %97 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %96, i32 0, i32 1, !dbg !512
  store double %95, double* %97, align 8, !dbg !513
  store i32 0, i32* %3, align 4, !dbg !514
  br label %123, !dbg !514

; <label>:98:                                     ; preds = %82
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %20, metadata !515, metadata !93), !dbg !517
  %99 = load double, double* %4, align 8, !dbg !518
  %100 = call i32 @gsl_sf_erfc_e(double %99, %struct.gsl_sf_result_struct* %20), !dbg !519
  %101 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %20, i32 0, i32 0, !dbg !520
  %102 = load double, double* %101, align 8, !dbg !520
  %103 = call double @log(double %102) #6, !dbg !521
  call void @callOneArgHandler(i32 12, double %102, double %103, i64 93989995743384, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @7, i32 0, i32 0), i64 93989995745392, i32 349, i32 20), !dbg !522
  %104 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !522
  %105 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %104, i32 0, i32 0, !dbg !523
  store double %103, double* %105, align 8, !dbg !524
  %106 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %20, i32 0, i32 1, !dbg !525
  %107 = load double, double* %106, align 8, !dbg !525
  %108 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %20, i32 0, i32 0, !dbg !526
  %109 = load double, double* %108, align 8, !dbg !526
  %110 = fdiv double %107, %109, !dbg !527
  call void @fDivHandler(double %107, double %109, double %110, i64 93989995747576, i64 93989995749672, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @7, i32 0, i32 0), i64 93989995751344, i32 350, i32 41), !dbg !528
  %111 = call double @fabs(double %110) #1, !dbg !528
  %112 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !529
  %113 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %112, i32 0, i32 1, !dbg !530
  store double %111, double* %113, align 8, !dbg !531
  %114 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !532
  %115 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %114, i32 0, i32 0, !dbg !533
  %116 = load double, double* %115, align 8, !dbg !533
  %117 = call double @fabs(double %116) #1, !dbg !534
  %118 = fmul double 0x3CC0000000000000, %117, !dbg !535
  call void @fMulHandler(double 0x3CC0000000000000, double %117, double %118, i64 0, i64 93989995756096, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @7, i32 0, i32 0), i64 93989995756576, i32 351, i32 42), !dbg !536
  %119 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !536
  %120 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %119, i32 0, i32 1, !dbg !537
  %121 = load double, double* %120, align 8, !dbg !538
  %122 = fadd double %121, %118, !dbg !538
  call void @fAddHandler(double %121, double %118, double %122, i64 93989995757800, i64 93989995756576, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @7, i32 0, i32 0), i64 93989995758208, i32 351, i32 17), !dbg !538
  store double %122, double* %120, align 8, !dbg !538
  store i32 0, i32* %3, align 4, !dbg !539
  br label %123, !dbg !539

; <label>:123:                                    ; preds = %98, %86, %26
  %124 = load i32, i32* %3, align 4, !dbg !540
  ret i32 %124, !dbg !540
}

; Function Attrs: inlinehint nounwind uwtable
define internal double @log_erfc8(double) #3 !dbg !541 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  store double %0, double* %2, align 8
  call void @llvm.dbg.declare(metadata double* %2, metadata !542, metadata !93), !dbg !543
  call void @llvm.dbg.declare(metadata double* %3, metadata !544, metadata !93), !dbg !545
  %4 = load double, double* %2, align 8, !dbg !546
  %5 = call double @erfc8_sum(double %4), !dbg !547
  store double %5, double* %3, align 8, !dbg !548
  %6 = load double, double* %3, align 8, !dbg !549
  %7 = call double @log(double %6) #6, !dbg !550
  call void @callOneArgHandler(i32 12, double %6, double %7, i64 93989995768488, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @9, i32 0, i32 0), i64 93989995768960, i32 94, i32 7), !dbg !551
  %8 = load double, double* %2, align 8, !dbg !551
  %9 = load double, double* %2, align 8, !dbg !552
  %10 = fmul double %8, %9, !dbg !553
  call void @fMulHandler(double %8, double %9, double %10, i64 93989995769416, i64 93989995769944, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @9, i32 0, i32 0), i64 93989995770352, i32 94, i32 17), !dbg !554
  %11 = fsub double %7, %10, !dbg !554
  call void @fSubHandler(double %7, double %10, double %11, i64 93989995768960, i64 93989995770352, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @9, i32 0, i32 0), i64 93989995770768, i32 94, i32 14), !dbg !555
  store double %11, double* %3, align 8, !dbg !555
  %12 = load double, double* %3, align 8, !dbg !556
  ret double %12, !dbg !557
}

; Function Attrs: nounwind
declare double @log(double) #4

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_erf_e(double, %struct.gsl_sf_result_struct*) #0 !dbg !558 {
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca %struct.gsl_sf_result_struct*, align 8
  %6 = alloca %struct.gsl_sf_result_struct, align 8
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !559, metadata !93), !dbg !560
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %5, metadata !561, metadata !93), !dbg !562
  %7 = load double, double* %4, align 8, !dbg !563
  %8 = call double @fabs(double %7) #1, !dbg !565
  %9 = fcmp olt double %8, 1.000000e+00, !dbg !566
  %10 = call i1 @fCmpInstHandler(double %8, double 1.000000e+00, i1 %9, i32 4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @11, i32 0, i32 0), i64 93989995777120, i32 361, i32 14), !dbg !567
  br i1 %10, label %11, label %15, !dbg !567

; <label>:11:                                     ; preds = %2
  %12 = load double, double* %4, align 8, !dbg !568
  %13 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !570
  %14 = call i32 @erfseries(double %12, %struct.gsl_sf_result_struct* %13), !dbg !571
  store i32 %14, i32* %3, align 4, !dbg !572
  br label %36, !dbg !572

; <label>:15:                                     ; preds = %2
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %6, metadata !573, metadata !93), !dbg !575
  %16 = load double, double* %4, align 8, !dbg !576
  %17 = call i32 @gsl_sf_erfc_e(double %16, %struct.gsl_sf_result_struct* %6), !dbg !577
  %18 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !578
  %19 = load double, double* %18, align 8, !dbg !578
  %20 = fsub double 1.000000e+00, %19, !dbg !579
  call void @fSubHandler(double 1.000000e+00, double %19, double %20, i64 0, i64 93989995788456, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @11, i32 0, i32 0), i64 93989995790128, i32 367, i32 24), !dbg !580
  %21 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !580
  %22 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %21, i32 0, i32 0, !dbg !581
  store double %20, double* %22, align 8, !dbg !582
  %23 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 1, !dbg !583
  %24 = load double, double* %23, align 8, !dbg !583
  %25 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !584
  %26 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %25, i32 0, i32 1, !dbg !585
  store double %24, double* %26, align 8, !dbg !586
  %27 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !587
  %28 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %27, i32 0, i32 0, !dbg !588
  %29 = load double, double* %28, align 8, !dbg !588
  %30 = call double @fabs(double %29) #1, !dbg !589
  %31 = fmul double 0x3CC0000000000000, %30, !dbg !590
  call void @fMulHandler(double 0x3CC0000000000000, double %30, double %31, i64 0, i64 93989995776944, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @11, i32 0, i32 0), i64 93989995797984, i32 369, i32 42), !dbg !591
  %32 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !591
  %33 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %32, i32 0, i32 1, !dbg !592
  %34 = load double, double* %33, align 8, !dbg !593
  %35 = fadd double %34, %31, !dbg !593
  call void @fAddHandler(double %34, double %31, double %35, i64 93989995799208, i64 93989995797984, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @11, i32 0, i32 0), i64 93989995799616, i32 369, i32 17), !dbg !593
  store double %35, double* %33, align 8, !dbg !593
  store i32 0, i32* %3, align 4, !dbg !594
  br label %36, !dbg !594

; <label>:36:                                     ; preds = %15, %11
  %37 = load i32, i32* %3, align 4, !dbg !595
  ret i32 %37, !dbg !595
}

; Function Attrs: nounwind uwtable
define internal i32 @erfseries(double, %struct.gsl_sf_result_struct*) #0 !dbg !596 {
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct*, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca i32, align 4
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !597, metadata !93), !dbg !598
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %4, metadata !599, metadata !93), !dbg !600
  call void @llvm.dbg.declare(metadata double* %5, metadata !601, metadata !93), !dbg !602
  %9 = load double, double* %3, align 8, !dbg !603
  store double %9, double* %5, align 8, !dbg !602
  call void @llvm.dbg.declare(metadata double* %6, metadata !604, metadata !93), !dbg !605
  %10 = load double, double* %5, align 8, !dbg !606
  store double %10, double* %6, align 8, !dbg !605
  call void @llvm.dbg.declare(metadata double* %7, metadata !607, metadata !93), !dbg !608
  call void @llvm.dbg.declare(metadata i32* %8, metadata !609, metadata !93), !dbg !610
  store i32 1, i32* %8, align 4, !dbg !611
  br label %11, !dbg !613

; <label>:11:                                     ; preds = %35, %2
  %12 = load i32, i32* %8, align 4, !dbg !614
  %13 = icmp slt i32 %12, 30, !dbg !617
  %14 = sext i32 %12 to i64, !dbg !618
  %15 = call i1 @iCmpInstHandler(i64 %14, i64 30, i1 %13, i32 40, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @13, i32 0, i32 0), i64 93989995819024, i32 129, i32 14), !dbg !618
  br i1 %15, label %16, label %38, !dbg !618

; <label>:16:                                     ; preds = %11
  %17 = load double, double* %3, align 8, !dbg !619
  %18 = fsub double -0.000000e+00, %17, !dbg !621
  call void @fSubHandler(double -0.000000e+00, double %17, double %18, i64 0, i64 93989995820136, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @13, i32 0, i32 0), i64 93989995820480, i32 130, i32 13), !dbg !622
  %19 = load double, double* %3, align 8, !dbg !622
  %20 = fmul double %18, %19, !dbg !623
  call void @fMulHandler(double %18, double %19, double %20, i64 93989995820480, i64 93989995820872, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @13, i32 0, i32 0), i64 93989995821280, i32 130, i32 15), !dbg !624
  %21 = load i32, i32* %8, align 4, !dbg !624
  %22 = sitofp i32 %21 to double, !dbg !624
  %23 = fdiv double %20, %22, !dbg !625
  call void @fDivHandler(double %20, double %22, double %23, i64 93989995821280, i64 93989995822056, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @13, i32 0, i32 0), i64 93989995823728, i32 130, i32 17), !dbg !626
  %24 = load double, double* %5, align 8, !dbg !626
  %25 = fmul double %24, %23, !dbg !626
  call void @fMulHandler(double %24, double %23, double %25, i64 93989995824120, i64 93989995823728, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @13, i32 0, i32 0), i64 93989995824528, i32 130, i32 10), !dbg !626
  store double %25, double* %5, align 8, !dbg !626
  %26 = load double, double* %5, align 8, !dbg !627
  %27 = load i32, i32* %8, align 4, !dbg !628
  %28 = sitofp i32 %27 to double, !dbg !628
  %29 = fmul double 2.000000e+00, %28, !dbg !629
  call void @fMulHandler(double 2.000000e+00, double %28, double %29, i64 0, i64 93989995827080, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @13, i32 0, i32 0), i64 93989995828784, i32 131, i32 22), !dbg !630
  %30 = fadd double %29, 1.000000e+00, !dbg !630
  call void @fAddHandler(double %29, double 1.000000e+00, double %30, i64 93989995828784, i64 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @13, i32 0, i32 0), i64 93989995829200, i32 131, i32 24), !dbg !631
  %31 = fdiv double %26, %30, !dbg !631
  call void @fDivHandler(double %26, double %30, double %31, i64 93989995826312, i64 93989995829200, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @13, i32 0, i32 0), i64 93989995829584, i32 131, i32 17), !dbg !632
  store double %31, double* %7, align 8, !dbg !632
  %32 = load double, double* %7, align 8, !dbg !633
  %33 = load double, double* %6, align 8, !dbg !634
  %34 = fadd double %33, %32, !dbg !634
  call void @fAddHandler(double %33, double %32, double %34, i64 93989995830776, i64 93989995830392, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @13, i32 0, i32 0), i64 93989995831184, i32 132, i32 7), !dbg !634
  store double %34, double* %6, align 8, !dbg !634
  br label %35, !dbg !635

; <label>:35:                                     ; preds = %16
  %36 = load i32, i32* %8, align 4, !dbg !636
  %37 = add nsw i32 %36, 1, !dbg !636
  store i32 %37, i32* %8, align 4, !dbg !636
  br label %11, !dbg !638, !llvm.loop !639

; <label>:38:                                     ; preds = %11
  %39 = load double, double* %6, align 8, !dbg !641
  %40 = fmul double 0x3FF20DD750429B6D, %39, !dbg !642
  call void @fMulHandler(double 0x3FF20DD750429B6D, double %39, double %40, i64 0, i64 93989995836296, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @13, i32 0, i32 0), i64 93989995836704, i32 134, i32 32), !dbg !643
  %41 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %4, align 8, !dbg !643
  %42 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %41, i32 0, i32 0, !dbg !644
  store double %40, double* %42, align 8, !dbg !645
  %43 = load double, double* %7, align 8, !dbg !646
  %44 = call double @fabs(double %43) #1, !dbg !647
  %45 = fadd double %44, 0x3CB0000000000000, !dbg !648
  call void @fAddHandler(double %44, double 0x3CB0000000000000, double %45, i64 93989995806944, i64 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @13, i32 0, i32 0), i64 93989995839152, i32 135, i32 45), !dbg !649
  %46 = fmul double 0x3FF20DD750429B6D, %45, !dbg !649
  call void @fMulHandler(double 0x3FF20DD750429B6D, double %45, double %46, i64 0, i64 93989995839152, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @13, i32 0, i32 0), i64 93989995839568, i32 135, i32 32), !dbg !650
  %47 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %4, align 8, !dbg !650
  %48 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %47, i32 0, i32 1, !dbg !651
  store double %46, double* %48, align 8, !dbg !652
  ret i32 0, !dbg !653
}

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_erf_Z_e(double, %struct.gsl_sf_result_struct*) #0 !dbg !654 {
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca %struct.gsl_sf_result_struct*, align 8
  %6 = alloca double, align 8
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !655, metadata !93), !dbg !656
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %5, metadata !657, metadata !93), !dbg !658
  call void @llvm.dbg.declare(metadata double* %6, metadata !659, metadata !93), !dbg !661
  %7 = load double, double* %4, align 8, !dbg !662
  %8 = fsub double -0.000000e+00, %7, !dbg !663
  call void @fSubHandler(double -0.000000e+00, double %7, double %8, i64 0, i64 93989995846552, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @15, i32 0, i32 0), i64 93989995846928, i32 380, i32 28), !dbg !664
  %9 = load double, double* %4, align 8, !dbg !664
  %10 = fmul double %8, %9, !dbg !665
  call void @fMulHandler(double %8, double %9, double %10, i64 93989995846928, i64 93989995847464, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @15, i32 0, i32 0), i64 93989995847872, i32 380, i32 30), !dbg !666
  %11 = fdiv double %10, 2.000000e+00, !dbg !666
  call void @fDivHandler(double %10, double 2.000000e+00, double %11, i64 93989995847872, i64 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @15, i32 0, i32 0), i64 93989995848320, i32 380, i32 32), !dbg !667
  %12 = call double @exp(double %11) #6, !dbg !667
  call void @callOneArgHandler(i32 11, double %11, double %12, i64 93989995848320, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @15, i32 0, i32 0), i64 93989995848768, i32 380, i32 24), !dbg !661
  store double %12, double* %6, align 8, !dbg !661
  %13 = load double, double* %6, align 8, !dbg !668
  %14 = fdiv double %13, 0x40040D931FF62706, !dbg !669
  call void @fDivHandler(double %13, double 0x40040D931FF62706, double %14, i64 93989995850824, i64 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @15, i32 0, i32 0), i64 93989995851296, i32 381, i32 24), !dbg !670
  %15 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !670
  %16 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %15, i32 0, i32 0, !dbg !671
  store double %14, double* %16, align 8, !dbg !672
  %17 = load double, double* %4, align 8, !dbg !673
  %18 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !674
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %18, i32 0, i32 0, !dbg !675
  %20 = load double, double* %19, align 8, !dbg !675
  %21 = fmul double %17, %20, !dbg !676
  call void @fMulHandler(double %17, double %20, double %21, i64 93989995852936, i64 93989995854152, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @15, i32 0, i32 0), i64 93989995855824, i32 382, i32 27), !dbg !677
  %22 = call double @fabs(double %21) #1, !dbg !677
  %23 = fmul double %22, 0x3CB0000000000000, !dbg !678
  call void @fMulHandler(double %22, double 0x3CB0000000000000, double %23, i64 93989995847344, i64 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @15, i32 0, i32 0), i64 93989995856640, i32 382, i32 42), !dbg !679
  %24 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !679
  %25 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %24, i32 0, i32 1, !dbg !680
  store double %23, double* %25, align 8, !dbg !681
  %26 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !682
  %27 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %26, i32 0, i32 0, !dbg !683
  %28 = load double, double* %27, align 8, !dbg !683
  %29 = call double @fabs(double %28) #1, !dbg !684
  %30 = fmul double 0x3CC0000000000000, %29, !dbg !685
  call void @fMulHandler(double 0x3CC0000000000000, double %29, double %30, i64 0, i64 93989995860848, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @15, i32 0, i32 0), i64 93989995861328, i32 383, i32 42), !dbg !686
  %31 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !686
  %32 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %31, i32 0, i32 1, !dbg !687
  %33 = load double, double* %32, align 8, !dbg !688
  %34 = fadd double %33, %30, !dbg !688
  call void @fAddHandler(double %33, double %30, double %34, i64 93989995862552, i64 93989995861328, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @15, i32 0, i32 0), i64 93989995862960, i32 383, i32 17), !dbg !688
  store double %34, double* %32, align 8, !dbg !688
  %35 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !689
  %36 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %35, i32 0, i32 0, !dbg !689
  %37 = load double, double* %36, align 8, !dbg !689
  %38 = call double @fabs(double %37) #1, !dbg !689
  %39 = fcmp olt double %38, 0x10000000000000, !dbg !689
  %40 = call i1 @fCmpInstHandler(double %38, double 0x10000000000000, i1 %39, i32 4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @15, i32 0, i32 0), i64 93989995867312, i32 384, i32 5), !dbg !691
  br i1 %40, label %41, label %44, !dbg !691

; <label>:41:                                     ; preds = %2
  br label %42, !dbg !692, !llvm.loop !694

; <label>:42:                                     ; preds = %41
  call void @gsl_error(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 384, i32 15), !dbg !695
  store i32 15, i32* %3, align 4, !dbg !695
  br label %45, !dbg !695
                                                  ; No predecessors!
  br label %44, !dbg !698

; <label>:44:                                     ; preds = %43, %2
  store i32 0, i32* %3, align 4, !dbg !700
  br label %45, !dbg !700

; <label>:45:                                     ; preds = %44, %42
  %46 = load i32, i32* %3, align 4, !dbg !701
  ret i32 %46, !dbg !701
}

declare void @gsl_error(i8*, i8*, i32, i32) #5

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_erf_Q_e(double, %struct.gsl_sf_result_struct*) #0 !dbg !702 {
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct*, align 8
  %5 = alloca %struct.gsl_sf_result_struct, align 8
  %6 = alloca i32, align 4
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !703, metadata !93), !dbg !704
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %4, metadata !705, metadata !93), !dbg !706
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %5, metadata !707, metadata !93), !dbg !709
  call void @llvm.dbg.declare(metadata i32* %6, metadata !710, metadata !93), !dbg !711
  %7 = load double, double* %3, align 8, !dbg !712
  %8 = fdiv double %7, 0x3FF6A09E667F3BCD, !dbg !713
  call void @fDivHandler(double %7, double 0x3FF6A09E667F3BCD, double %8, i64 93989995869416, i64 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @17, i32 0, i32 0), i64 93989995883232, i32 396, i32 31), !dbg !714
  %9 = call i32 @gsl_sf_erfc_e(double %8, %struct.gsl_sf_result_struct* %5), !dbg !714
  store i32 %9, i32* %6, align 4, !dbg !711
  %10 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %5, i32 0, i32 0, !dbg !715
  %11 = load double, double* %10, align 8, !dbg !715
  %12 = fmul double 5.000000e-01, %11, !dbg !716
  call void @fMulHandler(double 5.000000e-01, double %11, double %12, i64 0, i64 93989995886344, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @17, i32 0, i32 0), i64 93989995888048, i32 397, i32 24), !dbg !717
  %13 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %4, align 8, !dbg !717
  %14 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %13, i32 0, i32 0, !dbg !718
  store double %12, double* %14, align 8, !dbg !719
  %15 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %5, i32 0, i32 1, !dbg !720
  %16 = load double, double* %15, align 8, !dbg !720
  %17 = fmul double 5.000000e-01, %16, !dbg !721
  call void @fMulHandler(double 5.000000e-01, double %16, double %17, i64 0, i64 93989995890104, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @17, i32 0, i32 0), i64 93989995891808, i32 398, i32 24), !dbg !722
  %18 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %4, align 8, !dbg !722
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %18, i32 0, i32 1, !dbg !723
  store double %17, double* %19, align 8, !dbg !724
  %20 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %4, align 8, !dbg !725
  %21 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %20, i32 0, i32 0, !dbg !726
  %22 = load double, double* %21, align 8, !dbg !726
  %23 = call double @fabs(double %22) #1, !dbg !727
  %24 = fmul double 0x3CC0000000000000, %23, !dbg !728
  call void @fMulHandler(double 0x3CC0000000000000, double %23, double %24, i64 0, i64 93989995883648, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @17, i32 0, i32 0), i64 93989995896320, i32 399, i32 42), !dbg !729
  %25 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %4, align 8, !dbg !729
  %26 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %25, i32 0, i32 1, !dbg !730
  %27 = load double, double* %26, align 8, !dbg !731
  %28 = fadd double %27, %24, !dbg !731
  call void @fAddHandler(double %27, double %24, double %28, i64 93989995897544, i64 93989995896320, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @17, i32 0, i32 0), i64 93989995897952, i32 399, i32 17), !dbg !731
  store double %28, double* %26, align 8, !dbg !731
  %29 = load i32, i32* %6, align 4, !dbg !732
  ret i32 %29, !dbg !733
}

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_hazard_e(double, %struct.gsl_sf_result_struct*) #0 !dbg !734 {
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca %struct.gsl_sf_result_struct*, align 8
  %6 = alloca %struct.gsl_sf_result_struct, align 8
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca i32, align 4
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !735, metadata !93), !dbg !736
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %5, metadata !737, metadata !93), !dbg !738
  %15 = load double, double* %4, align 8, !dbg !739
  %16 = fcmp olt double %15, 2.500000e+01, !dbg !741
  %17 = call i1 @fCmpInstHandler(double %15, double 2.500000e+01, i1 %16, i32 4, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @19, i32 0, i32 0), i64 93989995905808, i32 407, i32 8), !dbg !742
  br i1 %17, label %18, label %76, !dbg !742

; <label>:18:                                     ; preds = %2
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %6, metadata !743, metadata !93), !dbg !745
  call void @llvm.dbg.declare(metadata i32* %7, metadata !746, metadata !93), !dbg !748
  %19 = load double, double* %4, align 8, !dbg !749
  %20 = fdiv double %19, 0x3FF6A09E667F3BCD, !dbg !750
  call void @fDivHandler(double %19, double 0x3FF6A09E667F3BCD, double %20, i64 93989995908888, i64 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @19, i32 0, i32 0), i64 93989995909264, i32 410, i32 43), !dbg !751
  %21 = call i32 @gsl_sf_log_erfc_e(double %20, %struct.gsl_sf_result_struct* %6), !dbg !751
  store i32 %21, i32* %7, align 4, !dbg !748
  call void @llvm.dbg.declare(metadata double* %8, metadata !752, metadata !93), !dbg !753
  store double 0xBFCCE6BB25AA1316, double* %8, align 8, !dbg !753
  call void @llvm.dbg.declare(metadata double* %9, metadata !754, metadata !93), !dbg !755
  %22 = load double, double* %4, align 8, !dbg !756
  %23 = fmul double 5.000000e-01, %22, !dbg !757
  call void @fMulHandler(double 5.000000e-01, double %22, double %23, i64 0, i64 93989995915816, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @19, i32 0, i32 0), i64 93989995916224, i32 412, i32 33), !dbg !758
  %24 = load double, double* %4, align 8, !dbg !758
  %25 = fmul double %23, %24, !dbg !759
  call void @fMulHandler(double %23, double %24, double %25, i64 93989995916224, i64 93989995916584, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @19, i32 0, i32 0), i64 93989995916992, i32 412, i32 35), !dbg !760
  %26 = fsub double 0xBFCCE6BB25AA1316, %25, !dbg !760
  call void @fSubHandler(double 0xBFCCE6BB25AA1316, double %25, double %26, i64 0, i64 93989995916992, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @19, i32 0, i32 0), i64 93989995917408, i32 412, i32 28), !dbg !761
  %27 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !761
  %28 = load double, double* %27, align 8, !dbg !761
  %29 = fsub double %26, %28, !dbg !762
  call void @fSubHandler(double %26, double %28, double %29, i64 93989995917408, i64 93989995918248, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @19, i32 0, i32 0), i64 93989995919920, i32 412, i32 38), !dbg !755
  store double %29, double* %9, align 8, !dbg !755
  call void @llvm.dbg.declare(metadata i32* %10, metadata !763, metadata !93), !dbg !764
  %30 = load double, double* %9, align 8, !dbg !765
  %31 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !766
  %32 = call i32 @gsl_sf_exp_e(double %30, %struct.gsl_sf_result_struct* %31), !dbg !767
  store i32 %32, i32* %10, align 4, !dbg !764
  %33 = load double, double* %4, align 8, !dbg !768
  %34 = call double @fabs(double %33) #1, !dbg !769
  %35 = fadd double 1.000000e+00, %34, !dbg !770
  call void @fAddHandler(double 1.000000e+00, double %34, double %35, i64 0, i64 93989995926800, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @19, i32 0, i32 0), i64 93989995927312, i32 414, i32 31), !dbg !771
  %36 = fmul double 3.000000e+00, %35, !dbg !771
  call void @fMulHandler(double 3.000000e+00, double %35, double %36, i64 0, i64 93989995927312, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @19, i32 0, i32 0), i64 93989995927728, i32 414, i32 24), !dbg !772
  %37 = fmul double %36, 0x3CB0000000000000, !dbg !772
  call void @fMulHandler(double %36, double 0x3CB0000000000000, double %37, i64 93989995927728, i64 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @19, i32 0, i32 0), i64 93989995928112, i32 414, i32 42), !dbg !773
  %38 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !773
  %39 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %38, i32 0, i32 0, !dbg !774
  %40 = load double, double* %39, align 8, !dbg !774
  %41 = call double @fabs(double %40) #1, !dbg !775
  %42 = fmul double %37, %41, !dbg !777
  call void @fMulHandler(double %37, double %41, double %42, i64 93989995928112, i64 93989995931072, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @19, i32 0, i32 0), i64 93989995931552, i32 414, i32 60), !dbg !778
  %43 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !778
  %44 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %43, i32 0, i32 1, !dbg !779
  %45 = load double, double* %44, align 8, !dbg !780
  %46 = fadd double %45, %42, !dbg !780
  call void @fAddHandler(double %45, double %42, double %46, i64 93989995932776, i64 93989995931552, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @19, i32 0, i32 0), i64 93989995933184, i32 414, i32 17), !dbg !780
  store double %46, double* %44, align 8, !dbg !780
  %47 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 1, !dbg !781
  %48 = load double, double* %47, align 8, !dbg !781
  %49 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !782
  %50 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %49, i32 0, i32 0, !dbg !783
  %51 = load double, double* %50, align 8, !dbg !783
  %52 = fmul double %48, %51, !dbg !784
  call void @fMulHandler(double %48, double %51, double %52, i64 93989995935416, i64 93989995937896, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @19, i32 0, i32 0), i64 93989995939568, i32 415, i32 44), !dbg !785
  %53 = call double @fabs(double %52) #1, !dbg !785
  %54 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !786
  %55 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %54, i32 0, i32 1, !dbg !787
  %56 = load double, double* %55, align 8, !dbg !788
  %57 = fadd double %56, %53, !dbg !788
  call void @fAddHandler(double %56, double %53, double %57, i64 93989995941336, i64 93989995940048, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @19, i32 0, i32 0), i64 93989995941744, i32 415, i32 17), !dbg !788
  store double %57, double* %55, align 8, !dbg !788
  %58 = load i32, i32* %7, align 4, !dbg !789
  %59 = icmp ne i32 %58, 0, !dbg !789
  %60 = sext i32 %58 to i64, !dbg !789
  %61 = call i1 @iCmpInstHandler(i64 %60, i64 0, i1 %59, i32 33, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @19, i32 0, i32 0), i64 93989995943936, i32 416, i32 12), !dbg !789
  br i1 %61, label %62, label %64, !dbg !789

; <label>:62:                                     ; preds = %18
  %63 = load i32, i32* %7, align 4, !dbg !790
  br label %74, !dbg !790

; <label>:64:                                     ; preds = %18
  %65 = load i32, i32* %10, align 4, !dbg !791
  %66 = icmp ne i32 %65, 0, !dbg !791
  %67 = sext i32 %65 to i64, !dbg !791
  %68 = call i1 @iCmpInstHandler(i64 %67, i64 0, i1 %66, i32 33, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @19, i32 0, i32 0), i64 93989995948480, i32 416, i32 12), !dbg !791
  br i1 %68, label %69, label %71, !dbg !791

; <label>:69:                                     ; preds = %64
  %70 = load i32, i32* %10, align 4, !dbg !793
  br label %72, !dbg !793

; <label>:71:                                     ; preds = %64
  br label %72, !dbg !795

; <label>:72:                                     ; preds = %71, %69
  %73 = phi i32 [ %70, %69 ], [ 0, %71 ], !dbg !797
  br label %74, !dbg !797

; <label>:74:                                     ; preds = %72, %62
  %75 = phi i32 [ %63, %62 ], [ %73, %72 ], !dbg !799
  store i32 %75, i32* %3, align 4, !dbg !801
  br label %117, !dbg !801

; <label>:76:                                     ; preds = %2
  call void @llvm.dbg.declare(metadata double* %11, metadata !802, metadata !93), !dbg !804
  %77 = load double, double* %4, align 8, !dbg !805
  %78 = load double, double* %4, align 8, !dbg !806
  %79 = fmul double %77, %78, !dbg !807
  call void @fMulHandler(double %77, double %78, double %79, i64 93989995958808, i64 93989995959160, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @19, i32 0, i32 0), i64 93989995959568, i32 420, i32 30), !dbg !808
  %80 = fdiv double 1.000000e+00, %79, !dbg !808
  call void @fDivHandler(double 1.000000e+00, double %79, double %80, i64 0, i64 93989995959568, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @19, i32 0, i32 0), i64 93989995960016, i32 420, i32 27), !dbg !804
  store double %80, double* %11, align 8, !dbg !804
  call void @llvm.dbg.declare(metadata double* %12, metadata !809, metadata !93), !dbg !810
  %81 = load double, double* %11, align 8, !dbg !811
  %82 = fmul double 9.000000e+00, %81, !dbg !812
  call void @fMulHandler(double 9.000000e+00, double %81, double %82, i64 0, i64 93989995963176, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @19, i32 0, i32 0), i64 93989995963648, i32 421, i32 35), !dbg !813
  %83 = load double, double* %11, align 8, !dbg !813
  %84 = fmul double 1.100000e+01, %83, !dbg !814
  call void @fMulHandler(double 1.100000e+01, double %83, double %84, i64 0, i64 93989995964008, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @19, i32 0, i32 0), i64 93989995964512, i32 421, i32 53), !dbg !815
  %85 = fsub double 1.000000e+00, %84, !dbg !815
  call void @fSubHandler(double 1.000000e+00, double %84, double %85, i64 0, i64 93989995964512, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @19, i32 0, i32 0), i64 93989995964928, i32 421, i32 47), !dbg !816
  %86 = fmul double %82, %85, !dbg !816
  call void @fMulHandler(double %82, double %85, double %86, i64 93989995963648, i64 93989995964928, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @19, i32 0, i32 0), i64 93989995965312, i32 421, i32 40), !dbg !817
  %87 = fsub double 1.000000e+00, %86, !dbg !817
  call void @fSubHandler(double 1.000000e+00, double %86, double %87, i64 0, i64 93989995965312, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @19, i32 0, i32 0), i64 93989995965760, i32 421, i32 30), !dbg !810
  store double %87, double* %12, align 8, !dbg !810
  call void @llvm.dbg.declare(metadata double* %13, metadata !818, metadata !93), !dbg !819
  %88 = load double, double* %11, align 8, !dbg !820
  %89 = fmul double 5.000000e+00, %88, !dbg !821
  call void @fMulHandler(double 5.000000e+00, double %88, double %89, i64 0, i64 93989995968920, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @19, i32 0, i32 0), i64 93989995969328, i32 422, i32 35), !dbg !822
  %90 = load double, double* %11, align 8, !dbg !822
  %91 = fmul double 7.000000e+00, %90, !dbg !823
  call void @fMulHandler(double 7.000000e+00, double %90, double %91, i64 0, i64 93989995969688, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @19, i32 0, i32 0), i64 93989995970192, i32 422, i32 52), !dbg !824
  %92 = load double, double* %12, align 8, !dbg !824
  %93 = fmul double %91, %92, !dbg !825
  call void @fMulHandler(double %91, double %92, double %93, i64 93989995970192, i64 93989995970552, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @19, i32 0, i32 0), i64 93989995970960, i32 422, i32 57), !dbg !826
  %94 = fsub double 1.000000e+00, %93, !dbg !826
  call void @fSubHandler(double 1.000000e+00, double %93, double %94, i64 0, i64 93989995970960, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @19, i32 0, i32 0), i64 93989995971408, i32 422, i32 47), !dbg !827
  %95 = fmul double %89, %94, !dbg !827
  call void @fMulHandler(double %89, double %94, double %95, i64 93989995969328, i64 93989995971408, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @19, i32 0, i32 0), i64 93989995971792, i32 422, i32 40), !dbg !828
  %96 = fsub double 1.000000e+00, %95, !dbg !828
  call void @fSubHandler(double 1.000000e+00, double %95, double %96, i64 0, i64 93989995971792, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @19, i32 0, i32 0), i64 93989995972240, i32 422, i32 30), !dbg !819
  store double %96, double* %13, align 8, !dbg !819
  call void @llvm.dbg.declare(metadata double* %14, metadata !829, metadata !93), !dbg !830
  %97 = load double, double* %11, align 8, !dbg !831
  %98 = load double, double* %11, align 8, !dbg !832
  %99 = fmul double 3.000000e+00, %98, !dbg !833
  call void @fMulHandler(double 3.000000e+00, double %98, double %99, i64 0, i64 93989995975752, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @19, i32 0, i32 0), i64 93989995976192, i32 423, i32 48), !dbg !834
  %100 = load double, double* %13, align 8, !dbg !834
  %101 = fmul double %99, %100, !dbg !835
  call void @fMulHandler(double %99, double %100, double %101, i64 93989995976192, i64 93989995976552, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @19, i32 0, i32 0), i64 93989995976960, i32 423, i32 52), !dbg !836
  %102 = fsub double 1.000000e+00, %101, !dbg !836
  call void @fSubHandler(double 1.000000e+00, double %101, double %102, i64 0, i64 93989995976960, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @19, i32 0, i32 0), i64 93989995977408, i32 423, i32 43), !dbg !837
  %103 = fmul double %97, %102, !dbg !837
  call void @fMulHandler(double %97, double %102, double %103, i64 93989995975400, i64 93989995977408, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @19, i32 0, i32 0), i64 93989995977792, i32 423, i32 36), !dbg !838
  %104 = fsub double 1.000000e+00, %103, !dbg !838
  call void @fSubHandler(double 1.000000e+00, double %103, double %104, i64 0, i64 93989995977792, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @19, i32 0, i32 0), i64 93989995978240, i32 423, i32 30), !dbg !830
  store double %104, double* %14, align 8, !dbg !830
  %105 = load double, double* %4, align 8, !dbg !839
  %106 = load double, double* %14, align 8, !dbg !840
  %107 = fdiv double %105, %106, !dbg !841
  call void @fDivHandler(double %105, double %106, double %107, i64 93989995980280, i64 93989995980664, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @19, i32 0, i32 0), i64 93989995981072, i32 424, i32 21), !dbg !842
  %108 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !842
  %109 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %108, i32 0, i32 0, !dbg !843
  store double %107, double* %109, align 8, !dbg !844
  %110 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !845
  %111 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %110, i32 0, i32 0, !dbg !846
  %112 = load double, double* %111, align 8, !dbg !846
  %113 = call double @fabs(double %112) #1, !dbg !847
  %114 = fmul double 0x3CC0000000000000, %113, !dbg !848
  call void @fMulHandler(double 0x3CC0000000000000, double %113, double %114, i64 0, i64 93989995985280, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @19, i32 0, i32 0), i64 93989995985760, i32 425, i32 41), !dbg !849
  %115 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !849
  %116 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %115, i32 0, i32 1, !dbg !850
  store double %114, double* %116, align 8, !dbg !851
  store i32 0, i32* %3, align 4, !dbg !852
  br label %117, !dbg !852

; <label>:117:                                    ; preds = %76, %74
  %118 = load i32, i32* %3, align 4, !dbg !853
  ret i32 %118, !dbg !853
}

declare i32 @gsl_sf_exp_e(double, %struct.gsl_sf_result_struct*) #5

; Function Attrs: nounwind uwtable
define double @gsl_sf_erfc(double) #0 !dbg !854 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct, align 8
  %5 = alloca i32, align 4
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !855, metadata !93), !dbg !856
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %4, metadata !857, metadata !93), !dbg !858
  call void @llvm.dbg.declare(metadata i32* %5, metadata !859, metadata !93), !dbg !858
  %6 = load double, double* %3, align 8, !dbg !858
  %7 = call i32 @gsl_sf_erfc_e(double %6, %struct.gsl_sf_result_struct* %4), !dbg !858
  store i32 %7, i32* %5, align 4, !dbg !858
  %8 = load i32, i32* %5, align 4, !dbg !860
  %9 = icmp ne i32 %8, 0, !dbg !860
  %10 = sext i32 %8 to i64, !dbg !858
  %11 = call i1 @iCmpInstHandler(i64 %10, i64 0, i1 %9, i32 33, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @21, i32 0, i32 0), i64 93989995998624, i32 438, i32 3), !dbg !858
  br i1 %11, label %12, label %18, !dbg !858

; <label>:12:                                     ; preds = %1
  br label %13, !dbg !862, !llvm.loop !865

; <label>:13:                                     ; preds = %12
  %14 = load i32, i32* %5, align 4, !dbg !867
  call void @gsl_error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 438, i32 %14), !dbg !867
  %15 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !867
  %16 = load double, double* %15, align 8, !dbg !867
  store double %16, double* %2, align 8, !dbg !867
  br label %21, !dbg !867
                                                  ; No predecessors!
  br label %18, !dbg !870

; <label>:18:                                     ; preds = %17, %1
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !872
  %20 = load double, double* %19, align 8, !dbg !872
  store double %20, double* %2, align 8, !dbg !872
  br label %21, !dbg !872

; <label>:21:                                     ; preds = %18, %13
  %22 = load double, double* %2, align 8, !dbg !874
  ret double %22, !dbg !874
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_log_erfc(double) #0 !dbg !875 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct, align 8
  %5 = alloca i32, align 4
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !876, metadata !93), !dbg !877
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %4, metadata !878, metadata !93), !dbg !879
  call void @llvm.dbg.declare(metadata i32* %5, metadata !880, metadata !93), !dbg !879
  %6 = load double, double* %3, align 8, !dbg !879
  %7 = call i32 @gsl_sf_log_erfc_e(double %6, %struct.gsl_sf_result_struct* %4), !dbg !879
  store i32 %7, i32* %5, align 4, !dbg !879
  %8 = load i32, i32* %5, align 4, !dbg !881
  %9 = icmp ne i32 %8, 0, !dbg !881
  %10 = sext i32 %8 to i64, !dbg !879
  %11 = call i1 @iCmpInstHandler(i64 %10, i64 0, i1 %9, i32 33, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @23, i32 0, i32 0), i64 93989996015920, i32 443, i32 3), !dbg !879
  br i1 %11, label %12, label %18, !dbg !879

; <label>:12:                                     ; preds = %1
  br label %13, !dbg !883, !llvm.loop !886

; <label>:13:                                     ; preds = %12
  %14 = load i32, i32* %5, align 4, !dbg !888
  call void @gsl_error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 443, i32 %14), !dbg !888
  %15 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !888
  %16 = load double, double* %15, align 8, !dbg !888
  store double %16, double* %2, align 8, !dbg !888
  br label %21, !dbg !888
                                                  ; No predecessors!
  br label %18, !dbg !891

; <label>:18:                                     ; preds = %17, %1
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !893
  %20 = load double, double* %19, align 8, !dbg !893
  store double %20, double* %2, align 8, !dbg !893
  br label %21, !dbg !893

; <label>:21:                                     ; preds = %18, %13
  %22 = load double, double* %2, align 8, !dbg !895
  ret double %22, !dbg !895
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_erf(double) #0 !dbg !896 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct, align 8
  %5 = alloca i32, align 4
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !897, metadata !93), !dbg !898
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %4, metadata !899, metadata !93), !dbg !900
  call void @llvm.dbg.declare(metadata i32* %5, metadata !901, metadata !93), !dbg !900
  %6 = load double, double* %3, align 8, !dbg !900
  %7 = call i32 @gsl_sf_erf_e(double %6, %struct.gsl_sf_result_struct* %4), !dbg !900
  store i32 %7, i32* %5, align 4, !dbg !900
  %8 = load i32, i32* %5, align 4, !dbg !902
  %9 = icmp ne i32 %8, 0, !dbg !902
  %10 = sext i32 %8 to i64, !dbg !900
  %11 = call i1 @iCmpInstHandler(i64 %10, i64 0, i1 %9, i32 33, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @25, i32 0, i32 0), i64 93989996033216, i32 448, i32 3), !dbg !900
  br i1 %11, label %12, label %18, !dbg !900

; <label>:12:                                     ; preds = %1
  br label %13, !dbg !904, !llvm.loop !907

; <label>:13:                                     ; preds = %12
  %14 = load i32, i32* %5, align 4, !dbg !909
  call void @gsl_error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 448, i32 %14), !dbg !909
  %15 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !909
  %16 = load double, double* %15, align 8, !dbg !909
  store double %16, double* %2, align 8, !dbg !909
  br label %21, !dbg !909
                                                  ; No predecessors!
  br label %18, !dbg !912

; <label>:18:                                     ; preds = %17, %1
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !914
  %20 = load double, double* %19, align 8, !dbg !914
  store double %20, double* %2, align 8, !dbg !914
  br label %21, !dbg !914

; <label>:21:                                     ; preds = %18, %13
  %22 = load double, double* %2, align 8, !dbg !916
  ret double %22, !dbg !916
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_erf_Z(double) #0 !dbg !917 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct, align 8
  %5 = alloca i32, align 4
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !918, metadata !93), !dbg !919
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %4, metadata !920, metadata !93), !dbg !921
  call void @llvm.dbg.declare(metadata i32* %5, metadata !922, metadata !93), !dbg !921
  %6 = load double, double* %3, align 8, !dbg !921
  %7 = call i32 @gsl_sf_erf_Z_e(double %6, %struct.gsl_sf_result_struct* %4), !dbg !921
  store i32 %7, i32* %5, align 4, !dbg !921
  %8 = load i32, i32* %5, align 4, !dbg !923
  %9 = icmp ne i32 %8, 0, !dbg !923
  %10 = sext i32 %8 to i64, !dbg !921
  %11 = call i1 @iCmpInstHandler(i64 %10, i64 0, i1 %9, i32 33, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @27, i32 0, i32 0), i64 93989996050512, i32 453, i32 3), !dbg !921
  br i1 %11, label %12, label %18, !dbg !921

; <label>:12:                                     ; preds = %1
  br label %13, !dbg !925, !llvm.loop !928

; <label>:13:                                     ; preds = %12
  %14 = load i32, i32* %5, align 4, !dbg !930
  call void @gsl_error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 453, i32 %14), !dbg !930
  %15 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !930
  %16 = load double, double* %15, align 8, !dbg !930
  store double %16, double* %2, align 8, !dbg !930
  br label %21, !dbg !930
                                                  ; No predecessors!
  br label %18, !dbg !933

; <label>:18:                                     ; preds = %17, %1
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !935
  %20 = load double, double* %19, align 8, !dbg !935
  store double %20, double* %2, align 8, !dbg !935
  br label %21, !dbg !935

; <label>:21:                                     ; preds = %18, %13
  %22 = load double, double* %2, align 8, !dbg !937
  ret double %22, !dbg !937
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_erf_Q(double) #0 !dbg !938 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct, align 8
  %5 = alloca i32, align 4
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !939, metadata !93), !dbg !940
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %4, metadata !941, metadata !93), !dbg !942
  call void @llvm.dbg.declare(metadata i32* %5, metadata !943, metadata !93), !dbg !942
  %6 = load double, double* %3, align 8, !dbg !942
  %7 = call i32 @gsl_sf_erf_Q_e(double %6, %struct.gsl_sf_result_struct* %4), !dbg !942
  store i32 %7, i32* %5, align 4, !dbg !942
  %8 = load i32, i32* %5, align 4, !dbg !944
  %9 = icmp ne i32 %8, 0, !dbg !944
  %10 = sext i32 %8 to i64, !dbg !942
  %11 = call i1 @iCmpInstHandler(i64 %10, i64 0, i1 %9, i32 33, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @29, i32 0, i32 0), i64 93989996067808, i32 458, i32 3), !dbg !942
  br i1 %11, label %12, label %18, !dbg !942

; <label>:12:                                     ; preds = %1
  br label %13, !dbg !946, !llvm.loop !949

; <label>:13:                                     ; preds = %12
  %14 = load i32, i32* %5, align 4, !dbg !951
  call void @gsl_error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 458, i32 %14), !dbg !951
  %15 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !951
  %16 = load double, double* %15, align 8, !dbg !951
  store double %16, double* %2, align 8, !dbg !951
  br label %21, !dbg !951
                                                  ; No predecessors!
  br label %18, !dbg !954

; <label>:18:                                     ; preds = %17, %1
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !956
  %20 = load double, double* %19, align 8, !dbg !956
  store double %20, double* %2, align 8, !dbg !956
  br label %21, !dbg !956

; <label>:21:                                     ; preds = %18, %13
  %22 = load double, double* %2, align 8, !dbg !958
  ret double %22, !dbg !958
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_hazard(double) #0 !dbg !959 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct, align 8
  %5 = alloca i32, align 4
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !960, metadata !93), !dbg !961
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %4, metadata !962, metadata !93), !dbg !963
  call void @llvm.dbg.declare(metadata i32* %5, metadata !964, metadata !93), !dbg !963
  %6 = load double, double* %3, align 8, !dbg !963
  %7 = call i32 @gsl_sf_hazard_e(double %6, %struct.gsl_sf_result_struct* %4), !dbg !963
  store i32 %7, i32* %5, align 4, !dbg !963
  %8 = load i32, i32* %5, align 4, !dbg !965
  %9 = icmp ne i32 %8, 0, !dbg !965
  %10 = sext i32 %8 to i64, !dbg !963
  %11 = call i1 @iCmpInstHandler(i64 %10, i64 0, i1 %9, i32 33, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @30, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @31, i32 0, i32 0), i64 93989996085104, i32 463, i32 3), !dbg !963
  br i1 %11, label %12, label %18, !dbg !963

; <label>:12:                                     ; preds = %1
  br label %13, !dbg !967, !llvm.loop !970

; <label>:13:                                     ; preds = %12
  %14 = load i32, i32* %5, align 4, !dbg !972
  call void @gsl_error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 463, i32 %14), !dbg !972
  %15 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !972
  %16 = load double, double* %15, align 8, !dbg !972
  store double %16, double* %2, align 8, !dbg !972
  br label %21, !dbg !972
                                                  ; No predecessors!
  br label %18, !dbg !975

; <label>:18:                                     ; preds = %17, %1
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !977
  %20 = load double, double* %19, align 8, !dbg !977
  store double %20, double* %2, align 8, !dbg !977
  br label %21, !dbg !977

; <label>:21:                                     ; preds = %18, %13
  %22 = load double, double* %2, align 8, !dbg !979
  ret double %22, !dbg !979
}

; Function Attrs: nounwind uwtable
define internal double @erfc8_sum(double) #0 !dbg !67 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  store double %0, double* %2, align 8
  call void @llvm.dbg.declare(metadata double* %2, metadata !980, metadata !93), !dbg !981
  call void @llvm.dbg.declare(metadata double* %3, metadata !982, metadata !93), !dbg !983
  store double 0.000000e+00, double* %3, align 8, !dbg !983
  call void @llvm.dbg.declare(metadata double* %4, metadata !984, metadata !93), !dbg !985
  store double 0.000000e+00, double* %4, align 8, !dbg !985
  call void @llvm.dbg.declare(metadata i32* %5, metadata !986, metadata !93), !dbg !987
  %6 = load double, double* getelementptr inbounds ([6 x double], [6 x double]* @erfc8_sum.P, i64 0, i64 5), align 8, !dbg !988
  store double %6, double* %3, align 8, !dbg !989
  store i32 4, i32* %5, align 4, !dbg !990
  br label %7, !dbg !992

; <label>:7:                                      ; preds = %21, %1
  %8 = load i32, i32* %5, align 4, !dbg !993
  %9 = icmp sge i32 %8, 0, !dbg !996
  %10 = sext i32 %8 to i64, !dbg !997
  %11 = call i1 @iCmpInstHandler(i64 %10, i64 0, i1 %9, i32 39, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @32, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @33, i32 0, i32 0), i64 93989996106656, i32 69, i32 14), !dbg !997
  br i1 %11, label %12, label %24, !dbg !997

; <label>:12:                                     ; preds = %7
  %13 = load double, double* %2, align 8, !dbg !998
  %14 = load double, double* %3, align 8, !dbg !1000
  %15 = fmul double %13, %14, !dbg !1001
  call void @fMulHandler(double %13, double %14, double %15, i64 93989996107688, i64 93989996108008, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @32, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @33, i32 0, i32 0), i64 93989996108416, i32 70, i32 14), !dbg !1002
  %16 = load i32, i32* %5, align 4, !dbg !1002
  %17 = sext i32 %16 to i64, !dbg !1003
  %18 = getelementptr inbounds [6 x double], [6 x double]* @erfc8_sum.P, i64 0, i64 %17, !dbg !1003
  %19 = load double, double* %18, align 8, !dbg !1003
  %20 = fadd double %15, %19, !dbg !1004
  call void @fAddHandler(double %15, double %19, double %20, i64 93989996108416, i64 93989996111288, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @32, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @33, i32 0, i32 0), i64 93989996111408, i32 70, i32 19), !dbg !1005
  store double %20, double* %3, align 8, !dbg !1005
  br label %21, !dbg !1006

; <label>:21:                                     ; preds = %12
  %22 = load i32, i32* %5, align 4, !dbg !1007
  %23 = add nsw i32 %22, -1, !dbg !1007
  store i32 %23, i32* %5, align 4, !dbg !1007
  br label %7, !dbg !1009, !llvm.loop !1010

; <label>:24:                                     ; preds = %7
  %25 = load double, double* getelementptr inbounds ([7 x double], [7 x double]* @erfc8_sum.Q, i64 0, i64 6), align 16, !dbg !1012
  store double %25, double* %4, align 8, !dbg !1013
  store i32 5, i32* %5, align 4, !dbg !1014
  br label %26, !dbg !1016

; <label>:26:                                     ; preds = %40, %24
  %27 = load i32, i32* %5, align 4, !dbg !1017
  %28 = icmp sge i32 %27, 0, !dbg !1020
  %29 = sext i32 %27 to i64, !dbg !1021
  %30 = call i1 @iCmpInstHandler(i64 %29, i64 0, i1 %28, i32 39, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @32, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @33, i32 0, i32 0), i64 93989996117824, i32 73, i32 14), !dbg !1021
  br i1 %30, label %31, label %43, !dbg !1021

; <label>:31:                                     ; preds = %26
  %32 = load double, double* %2, align 8, !dbg !1022
  %33 = load double, double* %4, align 8, !dbg !1024
  %34 = fmul double %32, %33, !dbg !1025
  call void @fMulHandler(double %32, double %33, double %34, i64 93989996118792, i64 93989996119112, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @32, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @33, i32 0, i32 0), i64 93989996119520, i32 74, i32 14), !dbg !1026
  %35 = load i32, i32* %5, align 4, !dbg !1026
  %36 = sext i32 %35 to i64, !dbg !1027
  %37 = getelementptr inbounds [7 x double], [7 x double]* @erfc8_sum.Q, i64 0, i64 %36, !dbg !1027
  %38 = load double, double* %37, align 8, !dbg !1027
  %39 = fadd double %34, %38, !dbg !1028
  call void @fAddHandler(double %34, double %38, double %39, i64 93989996119520, i64 93989996122392, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @32, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @33, i32 0, i32 0), i64 93989996122512, i32 74, i32 19), !dbg !1029
  store double %39, double* %4, align 8, !dbg !1029
  br label %40, !dbg !1030

; <label>:40:                                     ; preds = %31
  %41 = load i32, i32* %5, align 4, !dbg !1031
  %42 = add nsw i32 %41, -1, !dbg !1031
  store i32 %42, i32* %5, align 4, !dbg !1031
  br label %26, !dbg !1033, !llvm.loop !1034

; <label>:43:                                     ; preds = %26
  %44 = load double, double* %3, align 8, !dbg !1036
  %45 = load double, double* %4, align 8, !dbg !1037
  %46 = fdiv double %44, %45, !dbg !1038
  call void @fDivHandler(double %44, double %45, double %46, i64 93989996126648, i64 93989996126968, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @32, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @33, i32 0, i32 0), i64 93989996127376, i32 77, i32 13), !dbg !1039
  ret double %46, !dbg !1039
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
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!78, !79, !80}
!llvm.ident = !{!81}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, globals: !41)
!1 = !DIFile(filename: "erfc.c", directory: "/fpcc/gsl-2.5/specfunc")
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
!41 = !{!42, !55, !59, !60, !64, !65, !66, !74}
!42 = distinct !DIGlobalVariable(name: "erfc_xlt1_cs", scope: !0, file: !1, line: 164, type: !43, isLocal: true, isDefinition: true, variable: %struct.cheb_series_struct* @erfc_xlt1_cs)
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
!55 = distinct !DIGlobalVariable(name: "erfc_xlt1_data", scope: !0, file: !1, line: 142, type: !56, isLocal: true, isDefinition: true, variable: [20 x double]* @erfc_xlt1_data)
!56 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 1280, align: 64, elements: !57)
!57 = !{!58}
!58 = !DISubrange(count: 20)
!59 = distinct !DIGlobalVariable(name: "erfc_x15_cs", scope: !0, file: !1, line: 200, type: !43, isLocal: true, isDefinition: true, variable: %struct.cheb_series_struct* @erfc_x15_cs)
!60 = distinct !DIGlobalVariable(name: "erfc_x15_data", scope: !0, file: !1, line: 173, type: !61, isLocal: true, isDefinition: true, variable: [25 x double]* @erfc_x15_data)
!61 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 1600, align: 64, elements: !62)
!62 = !{!63}
!63 = !DISubrange(count: 25)
!64 = distinct !DIGlobalVariable(name: "erfc_x510_cs", scope: !0, file: !1, line: 231, type: !43, isLocal: true, isDefinition: true, variable: %struct.cheb_series_struct* @erfc_x510_cs)
!65 = distinct !DIGlobalVariable(name: "erfc_x510_data", scope: !0, file: !1, line: 209, type: !56, isLocal: true, isDefinition: true, variable: [20 x double]* @erfc_x510_data)
!66 = distinct !DIGlobalVariable(name: "P", scope: !67, file: !1, line: 48, type: !71, isLocal: true, isDefinition: true, variable: [6 x double]* @erfc8_sum.P)
!67 = distinct !DISubprogram(name: "erfc8_sum", scope: !1, file: !1, line: 43, type: !68, isLocal: true, isDefinition: true, scopeLine: 44, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !70)
!68 = !DISubroutineType(types: !69)
!69 = !{!49, !49}
!70 = !{}
!71 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 384, align: 64, elements: !72)
!72 = !{!73}
!73 = !DISubrange(count: 6)
!74 = distinct !DIGlobalVariable(name: "Q", scope: !67, file: !1, line: 56, type: !75, isLocal: true, isDefinition: true, variable: [7 x double]* @erfc8_sum.Q)
!75 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 448, align: 64, elements: !76)
!76 = !{!77}
!77 = !DISubrange(count: 7)
!78 = !{i32 2, !"Dwarf Version", i32 4}
!79 = !{i32 2, !"Debug Info Version", i32 3}
!80 = !{i32 1, !"PIC Level", i32 2}
!81 = !{!"clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)"}
!82 = distinct !DISubprogram(name: "gsl_sf_erfc_e", scope: !1, file: !1, line: 256, type: !83, isLocal: false, isDefinition: true, scopeLine: 257, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !70)
!83 = !DISubroutineType(types: !84)
!84 = !{!51, !49, !85}
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64, align: 64)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !87, line: 41, baseType: !88)
!87 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/fpcc/gsl-2.5/specfunc")
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !87, line: 37, size: 128, align: 64, elements: !89)
!89 = !{!90, !91}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !88, file: !87, line: 38, baseType: !49, size: 64, align: 64)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !88, file: !87, line: 39, baseType: !49, size: 64, align: 64, offset: 64)
!92 = !DILocalVariable(name: "x", arg: 1, scope: !82, file: !1, line: 256, type: !49)
!93 = !DIExpression()
!94 = !DILocation(line: 256, column: 26, scope: !82)
!95 = !DILocalVariable(name: "result", arg: 2, scope: !82, file: !1, line: 256, type: !85)
!96 = !DILocation(line: 256, column: 45, scope: !82)
!97 = !DILocalVariable(name: "ax", scope: !82, file: !1, line: 258, type: !98)
!98 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !49)
!99 = !DILocation(line: 258, column: 16, scope: !82)
!100 = !DILocation(line: 258, column: 26, scope: !82)
!101 = !DILocation(line: 258, column: 21, scope: !82)
!102 = !DILocalVariable(name: "e_val", scope: !82, file: !1, line: 259, type: !49)
!103 = !DILocation(line: 259, column: 10, scope: !82)
!104 = !DILocalVariable(name: "e_err", scope: !82, file: !1, line: 259, type: !49)
!105 = !DILocation(line: 259, column: 17, scope: !82)
!106 = !DILocation(line: 263, column: 6, scope: !107)
!107 = distinct !DILexicalBlock(scope: !82, file: !1, line: 263, column: 6)
!108 = !DILocation(line: 263, column: 9, scope: !107)
!109 = !DILocation(line: 263, column: 6, scope: !82)
!110 = !DILocalVariable(name: "t", scope: !111, file: !1, line: 264, type: !49)
!111 = distinct !DILexicalBlock(scope: !107, file: !1, line: 263, column: 17)
!112 = !DILocation(line: 264, column: 12, scope: !111)
!113 = !DILocation(line: 264, column: 20, scope: !111)
!114 = !DILocation(line: 264, column: 19, scope: !111)
!115 = !DILocation(line: 264, column: 23, scope: !111)
!116 = !DILocalVariable(name: "c", scope: !111, file: !1, line: 265, type: !86)
!117 = !DILocation(line: 265, column: 19, scope: !111)
!118 = !DILocation(line: 266, column: 32, scope: !111)
!119 = !DILocation(line: 266, column: 5, scope: !111)
!120 = !DILocation(line: 267, column: 15, scope: !111)
!121 = !DILocation(line: 267, column: 11, scope: !111)
!122 = !DILocation(line: 268, column: 15, scope: !111)
!123 = !DILocation(line: 268, column: 11, scope: !111)
!124 = !DILocation(line: 269, column: 3, scope: !111)
!125 = !DILocation(line: 270, column: 11, scope: !126)
!126 = distinct !DILexicalBlock(scope: !107, file: !1, line: 270, column: 11)
!127 = !DILocation(line: 270, column: 14, scope: !126)
!128 = !DILocation(line: 270, column: 11, scope: !107)
!129 = !DILocalVariable(name: "ex2", scope: !130, file: !1, line: 271, type: !49)
!130 = distinct !DILexicalBlock(scope: !126, file: !1, line: 270, column: 22)
!131 = !DILocation(line: 271, column: 12, scope: !130)
!132 = !DILocation(line: 271, column: 23, scope: !130)
!133 = !DILocation(line: 271, column: 22, scope: !130)
!134 = !DILocation(line: 271, column: 25, scope: !130)
!135 = !DILocation(line: 271, column: 24, scope: !130)
!136 = !DILocation(line: 271, column: 18, scope: !130)
!137 = !DILocalVariable(name: "t", scope: !130, file: !1, line: 272, type: !49)
!138 = !DILocation(line: 272, column: 12, scope: !130)
!139 = !DILocation(line: 272, column: 21, scope: !130)
!140 = !DILocation(line: 272, column: 23, scope: !130)
!141 = !DILocation(line: 272, column: 19, scope: !130)
!142 = !DILocalVariable(name: "c", scope: !130, file: !1, line: 273, type: !86)
!143 = !DILocation(line: 273, column: 19, scope: !130)
!144 = !DILocation(line: 274, column: 31, scope: !130)
!145 = !DILocation(line: 274, column: 5, scope: !130)
!146 = !DILocation(line: 275, column: 13, scope: !130)
!147 = !DILocation(line: 275, column: 21, scope: !130)
!148 = !DILocation(line: 275, column: 17, scope: !130)
!149 = !DILocation(line: 275, column: 11, scope: !130)
!150 = !DILocation(line: 276, column: 13, scope: !130)
!151 = !DILocation(line: 276, column: 22, scope: !130)
!152 = !DILocation(line: 276, column: 37, scope: !130)
!153 = !DILocation(line: 276, column: 32, scope: !130)
!154 = !DILocation(line: 276, column: 31, scope: !130)
!155 = !DILocation(line: 276, column: 39, scope: !130)
!156 = !DILocation(line: 276, column: 26, scope: !130)
!157 = !DILocation(line: 276, column: 17, scope: !130)
!158 = !DILocation(line: 276, column: 11, scope: !130)
!159 = !DILocation(line: 277, column: 3, scope: !130)
!160 = !DILocation(line: 278, column: 11, scope: !161)
!161 = distinct !DILexicalBlock(scope: !126, file: !1, line: 278, column: 11)
!162 = !DILocation(line: 278, column: 14, scope: !161)
!163 = !DILocation(line: 278, column: 11, scope: !126)
!164 = !DILocalVariable(name: "exterm", scope: !165, file: !1, line: 279, type: !49)
!165 = distinct !DILexicalBlock(scope: !161, file: !1, line: 278, column: 22)
!166 = !DILocation(line: 279, column: 12, scope: !165)
!167 = !DILocation(line: 279, column: 26, scope: !165)
!168 = !DILocation(line: 279, column: 25, scope: !165)
!169 = !DILocation(line: 279, column: 28, scope: !165)
!170 = !DILocation(line: 279, column: 27, scope: !165)
!171 = !DILocation(line: 279, column: 21, scope: !165)
!172 = !DILocation(line: 279, column: 33, scope: !165)
!173 = !DILocation(line: 279, column: 31, scope: !165)
!174 = !DILocalVariable(name: "t", scope: !165, file: !1, line: 280, type: !49)
!175 = !DILocation(line: 280, column: 12, scope: !165)
!176 = !DILocation(line: 280, column: 21, scope: !165)
!177 = !DILocation(line: 280, column: 20, scope: !165)
!178 = !DILocation(line: 280, column: 24, scope: !165)
!179 = !DILocation(line: 280, column: 31, scope: !165)
!180 = !DILocalVariable(name: "c", scope: !165, file: !1, line: 281, type: !86)
!181 = !DILocation(line: 281, column: 19, scope: !165)
!182 = !DILocation(line: 282, column: 32, scope: !165)
!183 = !DILocation(line: 282, column: 5, scope: !165)
!184 = !DILocation(line: 283, column: 13, scope: !165)
!185 = !DILocation(line: 283, column: 24, scope: !165)
!186 = !DILocation(line: 283, column: 20, scope: !165)
!187 = !DILocation(line: 283, column: 11, scope: !165)
!188 = !DILocation(line: 284, column: 13, scope: !165)
!189 = !DILocation(line: 284, column: 25, scope: !165)
!190 = !DILocation(line: 284, column: 40, scope: !165)
!191 = !DILocation(line: 284, column: 35, scope: !165)
!192 = !DILocation(line: 284, column: 34, scope: !165)
!193 = !DILocation(line: 284, column: 42, scope: !165)
!194 = !DILocation(line: 284, column: 29, scope: !165)
!195 = !DILocation(line: 284, column: 59, scope: !165)
!196 = !DILocation(line: 284, column: 20, scope: !165)
!197 = !DILocation(line: 284, column: 11, scope: !165)
!198 = !DILocation(line: 285, column: 3, scope: !165)
!199 = !DILocation(line: 287, column: 19, scope: !200)
!200 = distinct !DILexicalBlock(scope: !161, file: !1, line: 286, column: 8)
!201 = !DILocation(line: 287, column: 13, scope: !200)
!202 = !DILocation(line: 287, column: 11, scope: !200)
!203 = !DILocation(line: 288, column: 14, scope: !200)
!204 = !DILocation(line: 288, column: 16, scope: !200)
!205 = !DILocation(line: 288, column: 15, scope: !200)
!206 = !DILocation(line: 288, column: 18, scope: !200)
!207 = !DILocation(line: 288, column: 25, scope: !200)
!208 = !DILocation(line: 288, column: 50, scope: !200)
!209 = !DILocation(line: 288, column: 45, scope: !200)
!210 = !DILocation(line: 288, column: 43, scope: !200)
!211 = !DILocation(line: 288, column: 11, scope: !200)
!212 = !DILocation(line: 291, column: 6, scope: !213)
!213 = distinct !DILexicalBlock(scope: !82, file: !1, line: 291, column: 6)
!214 = !DILocation(line: 291, column: 8, scope: !213)
!215 = !DILocation(line: 291, column: 6, scope: !82)
!216 = !DILocation(line: 292, column: 26, scope: !217)
!217 = distinct !DILexicalBlock(scope: !213, file: !1, line: 291, column: 15)
!218 = !DILocation(line: 292, column: 24, scope: !217)
!219 = !DILocation(line: 292, column: 5, scope: !217)
!220 = !DILocation(line: 292, column: 13, scope: !217)
!221 = !DILocation(line: 292, column: 18, scope: !217)
!222 = !DILocation(line: 293, column: 20, scope: !217)
!223 = !DILocation(line: 293, column: 5, scope: !217)
!224 = !DILocation(line: 293, column: 13, scope: !217)
!225 = !DILocation(line: 293, column: 18, scope: !217)
!226 = !DILocation(line: 294, column: 49, scope: !217)
!227 = !DILocation(line: 294, column: 57, scope: !217)
!228 = !DILocation(line: 294, column: 44, scope: !217)
!229 = !DILocation(line: 294, column: 42, scope: !217)
!230 = !DILocation(line: 294, column: 5, scope: !217)
!231 = !DILocation(line: 294, column: 13, scope: !217)
!232 = !DILocation(line: 294, column: 17, scope: !217)
!233 = !DILocation(line: 295, column: 3, scope: !217)
!234 = !DILocation(line: 297, column: 20, scope: !235)
!235 = distinct !DILexicalBlock(scope: !213, file: !1, line: 296, column: 8)
!236 = !DILocation(line: 297, column: 5, scope: !235)
!237 = !DILocation(line: 297, column: 13, scope: !235)
!238 = !DILocation(line: 297, column: 18, scope: !235)
!239 = !DILocation(line: 298, column: 20, scope: !235)
!240 = !DILocation(line: 298, column: 5, scope: !235)
!241 = !DILocation(line: 298, column: 13, scope: !235)
!242 = !DILocation(line: 298, column: 18, scope: !235)
!243 = !DILocation(line: 299, column: 49, scope: !235)
!244 = !DILocation(line: 299, column: 57, scope: !235)
!245 = !DILocation(line: 299, column: 44, scope: !235)
!246 = !DILocation(line: 299, column: 42, scope: !235)
!247 = !DILocation(line: 299, column: 5, scope: !235)
!248 = !DILocation(line: 299, column: 13, scope: !235)
!249 = !DILocation(line: 299, column: 17, scope: !235)
!250 = !DILocation(line: 302, column: 3, scope: !82)
!251 = distinct !DISubprogram(name: "cheb_eval_e", scope: !252, file: !252, line: 3, type: !253, isLocal: true, isDefinition: true, scopeLine: 6, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !70)
!252 = !DIFile(filename: "./cheb_eval.c", directory: "/fpcc/gsl-2.5/specfunc")
!253 = !DISubroutineType(types: !254)
!254 = !{!51, !255, !98, !85}
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64, align: 64)
!256 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!257 = !DILocalVariable(name: "cs", arg: 1, scope: !251, file: !252, line: 3, type: !255)
!258 = !DILocation(line: 3, column: 33, scope: !251)
!259 = !DILocalVariable(name: "x", arg: 2, scope: !251, file: !252, line: 4, type: !98)
!260 = !DILocation(line: 4, column: 26, scope: !251)
!261 = !DILocalVariable(name: "result", arg: 3, scope: !251, file: !252, line: 5, type: !85)
!262 = !DILocation(line: 5, column: 29, scope: !251)
!263 = !DILocalVariable(name: "j", scope: !251, file: !252, line: 7, type: !51)
!264 = !DILocation(line: 7, column: 7, scope: !251)
!265 = !DILocalVariable(name: "d", scope: !251, file: !252, line: 8, type: !49)
!266 = !DILocation(line: 8, column: 10, scope: !251)
!267 = !DILocalVariable(name: "dd", scope: !251, file: !252, line: 9, type: !49)
!268 = !DILocation(line: 9, column: 10, scope: !251)
!269 = !DILocalVariable(name: "y", scope: !251, file: !252, line: 11, type: !49)
!270 = !DILocation(line: 11, column: 10, scope: !251)
!271 = !DILocation(line: 11, column: 20, scope: !251)
!272 = !DILocation(line: 11, column: 19, scope: !251)
!273 = !DILocation(line: 11, column: 24, scope: !251)
!274 = !DILocation(line: 11, column: 28, scope: !251)
!275 = !DILocation(line: 11, column: 22, scope: !251)
!276 = !DILocation(line: 11, column: 32, scope: !251)
!277 = !DILocation(line: 11, column: 36, scope: !251)
!278 = !DILocation(line: 11, column: 30, scope: !251)
!279 = !DILocation(line: 11, column: 42, scope: !251)
!280 = !DILocation(line: 11, column: 46, scope: !251)
!281 = !DILocation(line: 11, column: 50, scope: !251)
!282 = !DILocation(line: 11, column: 54, scope: !251)
!283 = !DILocation(line: 11, column: 48, scope: !251)
!284 = !DILocation(line: 11, column: 39, scope: !251)
!285 = !DILocalVariable(name: "y2", scope: !251, file: !252, line: 12, type: !49)
!286 = !DILocation(line: 12, column: 10, scope: !251)
!287 = !DILocation(line: 12, column: 21, scope: !251)
!288 = !DILocation(line: 12, column: 19, scope: !251)
!289 = !DILocalVariable(name: "e", scope: !251, file: !252, line: 14, type: !49)
!290 = !DILocation(line: 14, column: 10, scope: !251)
!291 = !DILocation(line: 16, column: 11, scope: !292)
!292 = distinct !DILexicalBlock(scope: !251, file: !252, line: 16, column: 3)
!293 = !DILocation(line: 16, column: 15, scope: !292)
!294 = !DILocation(line: 16, column: 9, scope: !292)
!295 = !DILocation(line: 16, column: 7, scope: !292)
!296 = !DILocation(line: 16, column: 22, scope: !297)
!297 = !DILexicalBlockFile(scope: !298, file: !252, discriminator: 1)
!298 = distinct !DILexicalBlock(scope: !292, file: !252, line: 16, column: 3)
!299 = !DILocation(line: 16, column: 23, scope: !297)
!300 = !DILocation(line: 16, column: 3, scope: !297)
!301 = !DILocalVariable(name: "temp", scope: !302, file: !252, line: 17, type: !49)
!302 = distinct !DILexicalBlock(scope: !298, file: !252, line: 16, column: 33)
!303 = !DILocation(line: 17, column: 12, scope: !302)
!304 = !DILocation(line: 17, column: 19, scope: !302)
!305 = !DILocation(line: 18, column: 9, scope: !302)
!306 = !DILocation(line: 18, column: 12, scope: !302)
!307 = !DILocation(line: 18, column: 11, scope: !302)
!308 = !DILocation(line: 18, column: 16, scope: !302)
!309 = !DILocation(line: 18, column: 14, scope: !302)
!310 = !DILocation(line: 18, column: 27, scope: !302)
!311 = !DILocation(line: 18, column: 21, scope: !302)
!312 = !DILocation(line: 18, column: 25, scope: !302)
!313 = !DILocation(line: 18, column: 19, scope: !302)
!314 = !DILocation(line: 18, column: 7, scope: !302)
!315 = !DILocation(line: 19, column: 15, scope: !302)
!316 = !DILocation(line: 19, column: 18, scope: !302)
!317 = !DILocation(line: 19, column: 17, scope: !302)
!318 = !DILocation(line: 19, column: 10, scope: !302)
!319 = !DILocation(line: 19, column: 31, scope: !302)
!320 = !DILocation(line: 19, column: 26, scope: !321)
!321 = !DILexicalBlockFile(scope: !302, file: !252, discriminator: 1)
!322 = !DILocation(line: 19, column: 24, scope: !302)
!323 = !DILocation(line: 19, column: 48, scope: !302)
!324 = !DILocation(line: 19, column: 42, scope: !302)
!325 = !DILocation(line: 19, column: 46, scope: !302)
!326 = !DILocation(line: 19, column: 37, scope: !327)
!327 = !DILexicalBlockFile(scope: !302, file: !252, discriminator: 2)
!328 = !DILocation(line: 19, column: 35, scope: !302)
!329 = !DILocation(line: 19, column: 7, scope: !302)
!330 = !DILocation(line: 20, column: 10, scope: !302)
!331 = !DILocation(line: 20, column: 8, scope: !302)
!332 = !DILocation(line: 21, column: 3, scope: !302)
!333 = !DILocation(line: 16, column: 29, scope: !334)
!334 = !DILexicalBlockFile(scope: !298, file: !252, discriminator: 2)
!335 = !DILocation(line: 16, column: 3, scope: !334)
!336 = distinct !{!336, !337}
!337 = !DILocation(line: 16, column: 3, scope: !251)
!338 = !DILocalVariable(name: "temp", scope: !339, file: !252, line: 24, type: !49)
!339 = distinct !DILexicalBlock(scope: !251, file: !252, line: 23, column: 3)
!340 = !DILocation(line: 24, column: 12, scope: !339)
!341 = !DILocation(line: 24, column: 19, scope: !339)
!342 = !DILocation(line: 25, column: 9, scope: !339)
!343 = !DILocation(line: 25, column: 11, scope: !339)
!344 = !DILocation(line: 25, column: 10, scope: !339)
!345 = !DILocation(line: 25, column: 15, scope: !339)
!346 = !DILocation(line: 25, column: 13, scope: !339)
!347 = !DILocation(line: 25, column: 26, scope: !339)
!348 = !DILocation(line: 25, column: 30, scope: !339)
!349 = !DILocation(line: 25, column: 24, scope: !339)
!350 = !DILocation(line: 25, column: 18, scope: !339)
!351 = !DILocation(line: 25, column: 7, scope: !339)
!352 = !DILocation(line: 26, column: 15, scope: !339)
!353 = !DILocation(line: 26, column: 17, scope: !339)
!354 = !DILocation(line: 26, column: 16, scope: !339)
!355 = !DILocation(line: 26, column: 10, scope: !339)
!356 = !DILocation(line: 26, column: 30, scope: !339)
!357 = !DILocation(line: 26, column: 25, scope: !358)
!358 = !DILexicalBlockFile(scope: !339, file: !252, discriminator: 1)
!359 = !DILocation(line: 26, column: 23, scope: !339)
!360 = !DILocation(line: 26, column: 47, scope: !339)
!361 = !DILocation(line: 26, column: 51, scope: !339)
!362 = !DILocation(line: 26, column: 42, scope: !363)
!363 = !DILexicalBlockFile(scope: !339, file: !252, discriminator: 2)
!364 = !DILocation(line: 26, column: 40, scope: !339)
!365 = !DILocation(line: 26, column: 34, scope: !339)
!366 = !DILocation(line: 26, column: 7, scope: !339)
!367 = !DILocation(line: 29, column: 17, scope: !251)
!368 = !DILocation(line: 29, column: 3, scope: !251)
!369 = !DILocation(line: 29, column: 11, scope: !251)
!370 = !DILocation(line: 29, column: 15, scope: !251)
!371 = !DILocation(line: 30, column: 35, scope: !251)
!372 = !DILocation(line: 30, column: 33, scope: !251)
!373 = !DILocation(line: 30, column: 50, scope: !251)
!374 = !DILocation(line: 30, column: 54, scope: !251)
!375 = !DILocation(line: 30, column: 44, scope: !251)
!376 = !DILocation(line: 30, column: 48, scope: !251)
!377 = !DILocation(line: 30, column: 39, scope: !251)
!378 = !DILocation(line: 30, column: 37, scope: !251)
!379 = !DILocation(line: 30, column: 3, scope: !251)
!380 = !DILocation(line: 30, column: 11, scope: !251)
!381 = !DILocation(line: 30, column: 15, scope: !251)
!382 = !DILocation(line: 32, column: 3, scope: !251)
!383 = distinct !DISubprogram(name: "erfc8", scope: !1, file: !1, line: 81, type: !68, isLocal: true, isDefinition: true, scopeLine: 82, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !70)
!384 = !DILocalVariable(name: "x", arg: 1, scope: !383, file: !1, line: 81, type: !49)
!385 = !DILocation(line: 81, column: 28, scope: !383)
!386 = !DILocalVariable(name: "e", scope: !383, file: !1, line: 83, type: !49)
!387 = !DILocation(line: 83, column: 10, scope: !383)
!388 = !DILocation(line: 84, column: 17, scope: !383)
!389 = !DILocation(line: 84, column: 7, scope: !383)
!390 = !DILocation(line: 84, column: 5, scope: !383)
!391 = !DILocation(line: 85, column: 13, scope: !383)
!392 = !DILocation(line: 85, column: 12, scope: !383)
!393 = !DILocation(line: 85, column: 15, scope: !383)
!394 = !DILocation(line: 85, column: 14, scope: !383)
!395 = !DILocation(line: 85, column: 8, scope: !383)
!396 = !DILocation(line: 85, column: 5, scope: !383)
!397 = !DILocation(line: 86, column: 10, scope: !383)
!398 = !DILocation(line: 86, column: 3, scope: !383)
!399 = distinct !DISubprogram(name: "gsl_sf_log_erfc_e", scope: !1, file: !1, line: 306, type: !83, isLocal: false, isDefinition: true, scopeLine: 307, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !70)
!400 = !DILocalVariable(name: "x", arg: 1, scope: !399, file: !1, line: 306, type: !49)
!401 = !DILocation(line: 306, column: 30, scope: !399)
!402 = !DILocalVariable(name: "result", arg: 2, scope: !399, file: !1, line: 306, type: !85)
!403 = !DILocation(line: 306, column: 49, scope: !399)
!404 = !DILocation(line: 310, column: 6, scope: !405)
!405 = distinct !DILexicalBlock(scope: !399, file: !1, line: 310, column: 6)
!406 = !DILocation(line: 310, column: 8, scope: !405)
!407 = !DILocation(line: 310, column: 7, scope: !405)
!408 = !DILocation(line: 310, column: 10, scope: !405)
!409 = !DILocation(line: 310, column: 6, scope: !399)
!410 = !DILocalVariable(name: "y", scope: !411, file: !1, line: 311, type: !98)
!411 = distinct !DILexicalBlock(scope: !405, file: !1, line: 310, column: 40)
!412 = !DILocation(line: 311, column: 18, scope: !411)
!413 = !DILocation(line: 311, column: 22, scope: !411)
!414 = !DILocation(line: 311, column: 24, scope: !411)
!415 = !DILocalVariable(name: "c3", scope: !411, file: !1, line: 313, type: !98)
!416 = !DILocation(line: 313, column: 18, scope: !411)
!417 = !DILocalVariable(name: "c4", scope: !411, file: !1, line: 314, type: !98)
!418 = !DILocation(line: 314, column: 18, scope: !411)
!419 = !DILocalVariable(name: "c5", scope: !411, file: !1, line: 315, type: !98)
!420 = !DILocation(line: 315, column: 18, scope: !411)
!421 = !DILocalVariable(name: "c6", scope: !411, file: !1, line: 316, type: !98)
!422 = !DILocation(line: 316, column: 18, scope: !411)
!423 = !DILocalVariable(name: "c7", scope: !411, file: !1, line: 317, type: !98)
!424 = !DILocation(line: 317, column: 18, scope: !411)
!425 = !DILocalVariable(name: "c8", scope: !411, file: !1, line: 318, type: !98)
!426 = !DILocation(line: 318, column: 18, scope: !411)
!427 = !DILocalVariable(name: "c9", scope: !411, file: !1, line: 319, type: !98)
!428 = !DILocation(line: 319, column: 18, scope: !411)
!429 = !DILocalVariable(name: "c10", scope: !411, file: !1, line: 320, type: !98)
!430 = !DILocation(line: 320, column: 18, scope: !411)
!431 = !DILocalVariable(name: "c11", scope: !411, file: !1, line: 321, type: !98)
!432 = !DILocation(line: 321, column: 18, scope: !411)
!433 = !DILocalVariable(name: "c12", scope: !411, file: !1, line: 322, type: !98)
!434 = !DILocation(line: 322, column: 18, scope: !411)
!435 = !DILocalVariable(name: "c13", scope: !411, file: !1, line: 323, type: !98)
!436 = !DILocation(line: 323, column: 18, scope: !411)
!437 = !DILocalVariable(name: "c14", scope: !411, file: !1, line: 324, type: !98)
!438 = !DILocation(line: 324, column: 18, scope: !411)
!439 = !DILocalVariable(name: "series", scope: !411, file: !1, line: 325, type: !49)
!440 = !DILocation(line: 325, column: 12, scope: !411)
!441 = !DILocation(line: 325, column: 26, scope: !411)
!442 = !DILocation(line: 325, column: 34, scope: !411)
!443 = !DILocation(line: 325, column: 43, scope: !411)
!444 = !DILocation(line: 325, column: 52, scope: !411)
!445 = !DILocation(line: 325, column: 61, scope: !411)
!446 = !DILocation(line: 325, column: 74, scope: !411)
!447 = !DILocation(line: 325, column: 73, scope: !411)
!448 = !DILocation(line: 325, column: 68, scope: !411)
!449 = !DILocation(line: 325, column: 62, scope: !411)
!450 = !DILocation(line: 325, column: 59, scope: !411)
!451 = !DILocation(line: 325, column: 53, scope: !411)
!452 = !DILocation(line: 325, column: 50, scope: !411)
!453 = !DILocation(line: 325, column: 44, scope: !411)
!454 = !DILocation(line: 325, column: 41, scope: !411)
!455 = !DILocation(line: 325, column: 35, scope: !411)
!456 = !DILocation(line: 325, column: 32, scope: !411)
!457 = !DILocation(line: 325, column: 27, scope: !411)
!458 = !DILocation(line: 325, column: 24, scope: !411)
!459 = !DILocation(line: 326, column: 14, scope: !411)
!460 = !DILocation(line: 326, column: 23, scope: !411)
!461 = !DILocation(line: 326, column: 32, scope: !411)
!462 = !DILocation(line: 326, column: 40, scope: !411)
!463 = !DILocation(line: 326, column: 48, scope: !411)
!464 = !DILocation(line: 326, column: 56, scope: !411)
!465 = !DILocation(line: 326, column: 64, scope: !411)
!466 = !DILocation(line: 326, column: 72, scope: !411)
!467 = !DILocation(line: 326, column: 74, scope: !411)
!468 = !DILocation(line: 326, column: 73, scope: !411)
!469 = !DILocation(line: 326, column: 70, scope: !411)
!470 = !DILocation(line: 326, column: 65, scope: !411)
!471 = !DILocation(line: 326, column: 62, scope: !411)
!472 = !DILocation(line: 326, column: 57, scope: !411)
!473 = !DILocation(line: 326, column: 54, scope: !411)
!474 = !DILocation(line: 326, column: 49, scope: !411)
!475 = !DILocation(line: 326, column: 46, scope: !411)
!476 = !DILocation(line: 326, column: 41, scope: !411)
!477 = !DILocation(line: 326, column: 38, scope: !411)
!478 = !DILocation(line: 326, column: 33, scope: !411)
!479 = !DILocation(line: 326, column: 30, scope: !411)
!480 = !DILocation(line: 326, column: 24, scope: !411)
!481 = !DILocation(line: 326, column: 21, scope: !411)
!482 = !DILocation(line: 326, column: 15, scope: !411)
!483 = !DILocation(line: 326, column: 12, scope: !411)
!484 = !DILocation(line: 327, column: 26, scope: !411)
!485 = !DILocation(line: 327, column: 24, scope: !411)
!486 = !DILocation(line: 327, column: 5, scope: !411)
!487 = !DILocation(line: 327, column: 13, scope: !411)
!488 = !DILocation(line: 327, column: 17, scope: !411)
!489 = !DILocation(line: 328, column: 48, scope: !411)
!490 = !DILocation(line: 328, column: 56, scope: !411)
!491 = !DILocation(line: 328, column: 43, scope: !411)
!492 = !DILocation(line: 328, column: 41, scope: !411)
!493 = !DILocation(line: 328, column: 5, scope: !411)
!494 = !DILocation(line: 328, column: 13, scope: !411)
!495 = !DILocation(line: 328, column: 17, scope: !411)
!496 = !DILocation(line: 329, column: 5, scope: !411)
!497 = !DILocation(line: 341, column: 11, scope: !498)
!498 = distinct !DILexicalBlock(scope: !405, file: !1, line: 341, column: 11)
!499 = !DILocation(line: 341, column: 13, scope: !498)
!500 = !DILocation(line: 341, column: 11, scope: !405)
!501 = !DILocation(line: 342, column: 29, scope: !502)
!502 = distinct !DILexicalBlock(scope: !498, file: !1, line: 341, column: 20)
!503 = !DILocation(line: 342, column: 19, scope: !502)
!504 = !DILocation(line: 342, column: 5, scope: !502)
!505 = !DILocation(line: 342, column: 13, scope: !502)
!506 = !DILocation(line: 342, column: 17, scope: !502)
!507 = !DILocation(line: 343, column: 48, scope: !502)
!508 = !DILocation(line: 343, column: 56, scope: !502)
!509 = !DILocation(line: 343, column: 43, scope: !502)
!510 = !DILocation(line: 343, column: 41, scope: !502)
!511 = !DILocation(line: 343, column: 5, scope: !502)
!512 = !DILocation(line: 343, column: 13, scope: !502)
!513 = !DILocation(line: 343, column: 17, scope: !502)
!514 = !DILocation(line: 344, column: 5, scope: !502)
!515 = !DILocalVariable(name: "result_erfc", scope: !516, file: !1, line: 347, type: !86)
!516 = distinct !DILexicalBlock(scope: !498, file: !1, line: 346, column: 8)
!517 = !DILocation(line: 347, column: 19, scope: !516)
!518 = !DILocation(line: 348, column: 19, scope: !516)
!519 = !DILocation(line: 348, column: 5, scope: !516)
!520 = !DILocation(line: 349, column: 36, scope: !516)
!521 = !DILocation(line: 349, column: 20, scope: !516)
!522 = !DILocation(line: 349, column: 5, scope: !516)
!523 = !DILocation(line: 349, column: 13, scope: !516)
!524 = !DILocation(line: 349, column: 18, scope: !516)
!525 = !DILocation(line: 350, column: 37, scope: !516)
!526 = !DILocation(line: 350, column: 55, scope: !516)
!527 = !DILocation(line: 350, column: 41, scope: !516)
!528 = !DILocation(line: 350, column: 20, scope: !516)
!529 = !DILocation(line: 350, column: 5, scope: !516)
!530 = !DILocation(line: 350, column: 13, scope: !516)
!531 = !DILocation(line: 350, column: 18, scope: !516)
!532 = !DILocation(line: 351, column: 49, scope: !516)
!533 = !DILocation(line: 351, column: 57, scope: !516)
!534 = !DILocation(line: 351, column: 44, scope: !516)
!535 = !DILocation(line: 351, column: 42, scope: !516)
!536 = !DILocation(line: 351, column: 5, scope: !516)
!537 = !DILocation(line: 351, column: 13, scope: !516)
!538 = !DILocation(line: 351, column: 17, scope: !516)
!539 = !DILocation(line: 352, column: 5, scope: !516)
!540 = !DILocation(line: 354, column: 1, scope: !399)
!541 = distinct !DISubprogram(name: "log_erfc8", scope: !1, file: !1, line: 90, type: !68, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !70)
!542 = !DILocalVariable(name: "x", arg: 1, scope: !541, file: !1, line: 90, type: !49)
!543 = !DILocation(line: 90, column: 32, scope: !541)
!544 = !DILocalVariable(name: "e", scope: !541, file: !1, line: 92, type: !49)
!545 = !DILocation(line: 92, column: 10, scope: !541)
!546 = !DILocation(line: 93, column: 17, scope: !541)
!547 = !DILocation(line: 93, column: 7, scope: !541)
!548 = !DILocation(line: 93, column: 5, scope: !541)
!549 = !DILocation(line: 94, column: 11, scope: !541)
!550 = !DILocation(line: 94, column: 7, scope: !541)
!551 = !DILocation(line: 94, column: 16, scope: !541)
!552 = !DILocation(line: 94, column: 18, scope: !541)
!553 = !DILocation(line: 94, column: 17, scope: !541)
!554 = !DILocation(line: 94, column: 14, scope: !541)
!555 = !DILocation(line: 94, column: 5, scope: !541)
!556 = !DILocation(line: 95, column: 10, scope: !541)
!557 = !DILocation(line: 95, column: 3, scope: !541)
!558 = distinct !DISubprogram(name: "gsl_sf_erf_e", scope: !1, file: !1, line: 357, type: !83, isLocal: false, isDefinition: true, scopeLine: 358, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !70)
!559 = !DILocalVariable(name: "x", arg: 1, scope: !558, file: !1, line: 357, type: !49)
!560 = !DILocation(line: 357, column: 25, scope: !558)
!561 = !DILocalVariable(name: "result", arg: 2, scope: !558, file: !1, line: 357, type: !85)
!562 = !DILocation(line: 357, column: 44, scope: !558)
!563 = !DILocation(line: 361, column: 11, scope: !564)
!564 = distinct !DILexicalBlock(scope: !558, file: !1, line: 361, column: 6)
!565 = !DILocation(line: 361, column: 6, scope: !564)
!566 = !DILocation(line: 361, column: 14, scope: !564)
!567 = !DILocation(line: 361, column: 6, scope: !558)
!568 = !DILocation(line: 362, column: 22, scope: !569)
!569 = distinct !DILexicalBlock(scope: !564, file: !1, line: 361, column: 21)
!570 = !DILocation(line: 362, column: 25, scope: !569)
!571 = !DILocation(line: 362, column: 12, scope: !569)
!572 = !DILocation(line: 362, column: 5, scope: !569)
!573 = !DILocalVariable(name: "result_erfc", scope: !574, file: !1, line: 365, type: !86)
!574 = distinct !DILexicalBlock(scope: !564, file: !1, line: 364, column: 8)
!575 = !DILocation(line: 365, column: 19, scope: !574)
!576 = !DILocation(line: 366, column: 19, scope: !574)
!577 = !DILocation(line: 366, column: 5, scope: !574)
!578 = !DILocation(line: 367, column: 38, scope: !574)
!579 = !DILocation(line: 367, column: 24, scope: !574)
!580 = !DILocation(line: 367, column: 5, scope: !574)
!581 = !DILocation(line: 367, column: 13, scope: !574)
!582 = !DILocation(line: 367, column: 18, scope: !574)
!583 = !DILocation(line: 368, column: 32, scope: !574)
!584 = !DILocation(line: 368, column: 5, scope: !574)
!585 = !DILocation(line: 368, column: 13, scope: !574)
!586 = !DILocation(line: 368, column: 18, scope: !574)
!587 = !DILocation(line: 369, column: 49, scope: !574)
!588 = !DILocation(line: 369, column: 57, scope: !574)
!589 = !DILocation(line: 369, column: 44, scope: !574)
!590 = !DILocation(line: 369, column: 42, scope: !574)
!591 = !DILocation(line: 369, column: 5, scope: !574)
!592 = !DILocation(line: 369, column: 13, scope: !574)
!593 = !DILocation(line: 369, column: 17, scope: !574)
!594 = !DILocation(line: 370, column: 5, scope: !574)
!595 = !DILocation(line: 372, column: 1, scope: !558)
!596 = distinct !DISubprogram(name: "erfseries", scope: !1, file: !1, line: 123, type: !83, isLocal: true, isDefinition: true, scopeLine: 124, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !70)
!597 = !DILocalVariable(name: "x", arg: 1, scope: !596, file: !1, line: 123, type: !49)
!598 = !DILocation(line: 123, column: 29, scope: !596)
!599 = !DILocalVariable(name: "result", arg: 2, scope: !596, file: !1, line: 123, type: !85)
!600 = !DILocation(line: 123, column: 48, scope: !596)
!601 = !DILocalVariable(name: "coef", scope: !596, file: !1, line: 125, type: !49)
!602 = !DILocation(line: 125, column: 10, scope: !596)
!603 = !DILocation(line: 125, column: 17, scope: !596)
!604 = !DILocalVariable(name: "e", scope: !596, file: !1, line: 126, type: !49)
!605 = !DILocation(line: 126, column: 10, scope: !596)
!606 = !DILocation(line: 126, column: 17, scope: !596)
!607 = !DILocalVariable(name: "del", scope: !596, file: !1, line: 127, type: !49)
!608 = !DILocation(line: 127, column: 10, scope: !596)
!609 = !DILocalVariable(name: "k", scope: !596, file: !1, line: 128, type: !51)
!610 = !DILocation(line: 128, column: 7, scope: !596)
!611 = !DILocation(line: 129, column: 9, scope: !612)
!612 = distinct !DILexicalBlock(scope: !596, file: !1, line: 129, column: 3)
!613 = !DILocation(line: 129, column: 8, scope: !612)
!614 = !DILocation(line: 129, column: 13, scope: !615)
!615 = !DILexicalBlockFile(scope: !616, file: !1, discriminator: 1)
!616 = distinct !DILexicalBlock(scope: !612, file: !1, line: 129, column: 3)
!617 = !DILocation(line: 129, column: 14, scope: !615)
!618 = !DILocation(line: 129, column: 3, scope: !615)
!619 = !DILocation(line: 130, column: 14, scope: !620)
!620 = distinct !DILexicalBlock(scope: !616, file: !1, line: 129, column: 24)
!621 = !DILocation(line: 130, column: 13, scope: !620)
!622 = !DILocation(line: 130, column: 16, scope: !620)
!623 = !DILocation(line: 130, column: 15, scope: !620)
!624 = !DILocation(line: 130, column: 18, scope: !620)
!625 = !DILocation(line: 130, column: 17, scope: !620)
!626 = !DILocation(line: 130, column: 10, scope: !620)
!627 = !DILocation(line: 131, column: 13, scope: !620)
!628 = !DILocation(line: 131, column: 23, scope: !620)
!629 = !DILocation(line: 131, column: 22, scope: !620)
!630 = !DILocation(line: 131, column: 24, scope: !620)
!631 = !DILocation(line: 131, column: 17, scope: !620)
!632 = !DILocation(line: 131, column: 11, scope: !620)
!633 = !DILocation(line: 132, column: 10, scope: !620)
!634 = !DILocation(line: 132, column: 7, scope: !620)
!635 = !DILocation(line: 133, column: 3, scope: !620)
!636 = !DILocation(line: 129, column: 19, scope: !637)
!637 = !DILexicalBlockFile(scope: !616, file: !1, discriminator: 2)
!638 = !DILocation(line: 129, column: 3, scope: !637)
!639 = distinct !{!639, !640}
!640 = !DILocation(line: 129, column: 3, scope: !596)
!641 = !DILocation(line: 134, column: 34, scope: !596)
!642 = !DILocation(line: 134, column: 32, scope: !596)
!643 = !DILocation(line: 134, column: 3, scope: !596)
!644 = !DILocation(line: 134, column: 11, scope: !596)
!645 = !DILocation(line: 134, column: 15, scope: !596)
!646 = !DILocation(line: 135, column: 40, scope: !596)
!647 = !DILocation(line: 135, column: 35, scope: !596)
!648 = !DILocation(line: 135, column: 45, scope: !596)
!649 = !DILocation(line: 135, column: 32, scope: !596)
!650 = !DILocation(line: 135, column: 3, scope: !596)
!651 = !DILocation(line: 135, column: 11, scope: !596)
!652 = !DILocation(line: 135, column: 15, scope: !596)
!653 = !DILocation(line: 136, column: 3, scope: !596)
!654 = distinct !DISubprogram(name: "gsl_sf_erf_Z_e", scope: !1, file: !1, line: 375, type: !83, isLocal: false, isDefinition: true, scopeLine: 376, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !70)
!655 = !DILocalVariable(name: "x", arg: 1, scope: !654, file: !1, line: 375, type: !49)
!656 = !DILocation(line: 375, column: 27, scope: !654)
!657 = !DILocalVariable(name: "result", arg: 2, scope: !654, file: !1, line: 375, type: !85)
!658 = !DILocation(line: 375, column: 46, scope: !654)
!659 = !DILocalVariable(name: "ex2", scope: !660, file: !1, line: 380, type: !98)
!660 = distinct !DILexicalBlock(scope: !654, file: !1, line: 379, column: 3)
!661 = !DILocation(line: 380, column: 18, scope: !660)
!662 = !DILocation(line: 380, column: 29, scope: !660)
!663 = !DILocation(line: 380, column: 28, scope: !660)
!664 = !DILocation(line: 380, column: 31, scope: !660)
!665 = !DILocation(line: 380, column: 30, scope: !660)
!666 = !DILocation(line: 380, column: 32, scope: !660)
!667 = !DILocation(line: 380, column: 24, scope: !660)
!668 = !DILocation(line: 381, column: 20, scope: !660)
!669 = !DILocation(line: 381, column: 24, scope: !660)
!670 = !DILocation(line: 381, column: 5, scope: !660)
!671 = !DILocation(line: 381, column: 13, scope: !660)
!672 = !DILocation(line: 381, column: 18, scope: !660)
!673 = !DILocation(line: 382, column: 25, scope: !660)
!674 = !DILocation(line: 382, column: 29, scope: !660)
!675 = !DILocation(line: 382, column: 37, scope: !660)
!676 = !DILocation(line: 382, column: 27, scope: !660)
!677 = !DILocation(line: 382, column: 20, scope: !660)
!678 = !DILocation(line: 382, column: 42, scope: !660)
!679 = !DILocation(line: 382, column: 5, scope: !660)
!680 = !DILocation(line: 382, column: 13, scope: !660)
!681 = !DILocation(line: 382, column: 18, scope: !660)
!682 = !DILocation(line: 383, column: 49, scope: !660)
!683 = !DILocation(line: 383, column: 57, scope: !660)
!684 = !DILocation(line: 383, column: 44, scope: !660)
!685 = !DILocation(line: 383, column: 42, scope: !660)
!686 = !DILocation(line: 383, column: 5, scope: !660)
!687 = !DILocation(line: 383, column: 13, scope: !660)
!688 = !DILocation(line: 383, column: 17, scope: !660)
!689 = !DILocation(line: 384, column: 5, scope: !690)
!690 = distinct !DILexicalBlock(scope: !660, file: !1, line: 384, column: 5)
!691 = !DILocation(line: 384, column: 5, scope: !660)
!692 = !DILocation(line: 384, column: 5, scope: !693)
!693 = !DILexicalBlockFile(scope: !690, file: !1, discriminator: 1)
!694 = distinct !{!694, !689}
!695 = !DILocation(line: 384, column: 5, scope: !696)
!696 = !DILexicalBlockFile(scope: !697, file: !1, discriminator: 2)
!697 = distinct !DILexicalBlock(scope: !690, file: !1, line: 384, column: 5)
!698 = !DILocation(line: 384, column: 5, scope: !699)
!699 = !DILexicalBlockFile(scope: !697, file: !1, discriminator: 3)
!700 = !DILocation(line: 385, column: 5, scope: !660)
!701 = !DILocation(line: 387, column: 1, scope: !654)
!702 = distinct !DISubprogram(name: "gsl_sf_erf_Q_e", scope: !1, file: !1, line: 390, type: !83, isLocal: false, isDefinition: true, scopeLine: 391, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !70)
!703 = !DILocalVariable(name: "x", arg: 1, scope: !702, file: !1, line: 390, type: !49)
!704 = !DILocation(line: 390, column: 27, scope: !702)
!705 = !DILocalVariable(name: "result", arg: 2, scope: !702, file: !1, line: 390, type: !85)
!706 = !DILocation(line: 390, column: 46, scope: !702)
!707 = !DILocalVariable(name: "result_erfc", scope: !708, file: !1, line: 395, type: !86)
!708 = distinct !DILexicalBlock(scope: !702, file: !1, line: 394, column: 3)
!709 = !DILocation(line: 395, column: 19, scope: !708)
!710 = !DILocalVariable(name: "stat", scope: !708, file: !1, line: 396, type: !51)
!711 = !DILocation(line: 396, column: 9, scope: !708)
!712 = !DILocation(line: 396, column: 30, scope: !708)
!713 = !DILocation(line: 396, column: 31, scope: !708)
!714 = !DILocation(line: 396, column: 16, scope: !708)
!715 = !DILocation(line: 397, column: 38, scope: !708)
!716 = !DILocation(line: 397, column: 24, scope: !708)
!717 = !DILocation(line: 397, column: 5, scope: !708)
!718 = !DILocation(line: 397, column: 13, scope: !708)
!719 = !DILocation(line: 397, column: 18, scope: !708)
!720 = !DILocation(line: 398, column: 38, scope: !708)
!721 = !DILocation(line: 398, column: 24, scope: !708)
!722 = !DILocation(line: 398, column: 5, scope: !708)
!723 = !DILocation(line: 398, column: 13, scope: !708)
!724 = !DILocation(line: 398, column: 18, scope: !708)
!725 = !DILocation(line: 399, column: 49, scope: !708)
!726 = !DILocation(line: 399, column: 57, scope: !708)
!727 = !DILocation(line: 399, column: 44, scope: !708)
!728 = !DILocation(line: 399, column: 42, scope: !708)
!729 = !DILocation(line: 399, column: 5, scope: !708)
!730 = !DILocation(line: 399, column: 13, scope: !708)
!731 = !DILocation(line: 399, column: 17, scope: !708)
!732 = !DILocation(line: 400, column: 12, scope: !708)
!733 = !DILocation(line: 400, column: 5, scope: !708)
!734 = distinct !DISubprogram(name: "gsl_sf_hazard_e", scope: !1, file: !1, line: 405, type: !83, isLocal: false, isDefinition: true, scopeLine: 406, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !70)
!735 = !DILocalVariable(name: "x", arg: 1, scope: !734, file: !1, line: 405, type: !49)
!736 = !DILocation(line: 405, column: 28, scope: !734)
!737 = !DILocalVariable(name: "result", arg: 2, scope: !734, file: !1, line: 405, type: !85)
!738 = !DILocation(line: 405, column: 47, scope: !734)
!739 = !DILocation(line: 407, column: 6, scope: !740)
!740 = distinct !DILexicalBlock(scope: !734, file: !1, line: 407, column: 6)
!741 = !DILocation(line: 407, column: 8, scope: !740)
!742 = !DILocation(line: 407, column: 6, scope: !734)
!743 = !DILocalVariable(name: "result_ln_erfc", scope: !744, file: !1, line: 409, type: !86)
!744 = distinct !DILexicalBlock(scope: !740, file: !1, line: 408, column: 3)
!745 = !DILocation(line: 409, column: 19, scope: !744)
!746 = !DILocalVariable(name: "stat_l", scope: !744, file: !1, line: 410, type: !747)
!747 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !51)
!748 = !DILocation(line: 410, column: 15, scope: !744)
!749 = !DILocation(line: 410, column: 42, scope: !744)
!750 = !DILocation(line: 410, column: 43, scope: !744)
!751 = !DILocation(line: 410, column: 24, scope: !744)
!752 = !DILocalVariable(name: "lnc", scope: !744, file: !1, line: 411, type: !98)
!753 = !DILocation(line: 411, column: 18, scope: !744)
!754 = !DILocalVariable(name: "arg", scope: !744, file: !1, line: 412, type: !98)
!755 = !DILocation(line: 412, column: 18, scope: !744)
!756 = !DILocation(line: 412, column: 34, scope: !744)
!757 = !DILocation(line: 412, column: 33, scope: !744)
!758 = !DILocation(line: 412, column: 36, scope: !744)
!759 = !DILocation(line: 412, column: 35, scope: !744)
!760 = !DILocation(line: 412, column: 28, scope: !744)
!761 = !DILocation(line: 412, column: 55, scope: !744)
!762 = !DILocation(line: 412, column: 38, scope: !744)
!763 = !DILocalVariable(name: "stat_e", scope: !744, file: !1, line: 413, type: !747)
!764 = !DILocation(line: 413, column: 15, scope: !744)
!765 = !DILocation(line: 413, column: 37, scope: !744)
!766 = !DILocation(line: 413, column: 42, scope: !744)
!767 = !DILocation(line: 413, column: 24, scope: !744)
!768 = !DILocation(line: 414, column: 38, scope: !744)
!769 = !DILocation(line: 414, column: 33, scope: !744)
!770 = !DILocation(line: 414, column: 31, scope: !744)
!771 = !DILocation(line: 414, column: 24, scope: !744)
!772 = !DILocation(line: 414, column: 42, scope: !744)
!773 = !DILocation(line: 414, column: 67, scope: !744)
!774 = !DILocation(line: 414, column: 75, scope: !744)
!775 = !DILocation(line: 414, column: 62, scope: !776)
!776 = !DILexicalBlockFile(scope: !744, file: !1, discriminator: 1)
!777 = !DILocation(line: 414, column: 60, scope: !744)
!778 = !DILocation(line: 414, column: 5, scope: !744)
!779 = !DILocation(line: 414, column: 13, scope: !744)
!780 = !DILocation(line: 414, column: 17, scope: !744)
!781 = !DILocation(line: 415, column: 40, scope: !744)
!782 = !DILocation(line: 415, column: 46, scope: !744)
!783 = !DILocation(line: 415, column: 54, scope: !744)
!784 = !DILocation(line: 415, column: 44, scope: !744)
!785 = !DILocation(line: 415, column: 20, scope: !744)
!786 = !DILocation(line: 415, column: 5, scope: !744)
!787 = !DILocation(line: 415, column: 13, scope: !744)
!788 = !DILocation(line: 415, column: 17, scope: !744)
!789 = !DILocation(line: 416, column: 12, scope: !744)
!790 = !DILocation(line: 416, column: 12, scope: !776)
!791 = !DILocation(line: 416, column: 12, scope: !792)
!792 = !DILexicalBlockFile(scope: !744, file: !1, discriminator: 2)
!793 = !DILocation(line: 416, column: 12, scope: !794)
!794 = !DILexicalBlockFile(scope: !744, file: !1, discriminator: 3)
!795 = !DILocation(line: 416, column: 12, scope: !796)
!796 = !DILexicalBlockFile(scope: !744, file: !1, discriminator: 4)
!797 = !DILocation(line: 416, column: 12, scope: !798)
!798 = !DILexicalBlockFile(scope: !744, file: !1, discriminator: 5)
!799 = !DILocation(line: 416, column: 12, scope: !800)
!800 = !DILexicalBlockFile(scope: !744, file: !1, discriminator: 6)
!801 = !DILocation(line: 416, column: 5, scope: !800)
!802 = !DILocalVariable(name: "ix2", scope: !803, file: !1, line: 420, type: !98)
!803 = distinct !DILexicalBlock(scope: !740, file: !1, line: 419, column: 3)
!804 = !DILocation(line: 420, column: 18, scope: !803)
!805 = !DILocation(line: 420, column: 29, scope: !803)
!806 = !DILocation(line: 420, column: 31, scope: !803)
!807 = !DILocation(line: 420, column: 30, scope: !803)
!808 = !DILocation(line: 420, column: 27, scope: !803)
!809 = !DILocalVariable(name: "corrB", scope: !803, file: !1, line: 421, type: !98)
!810 = !DILocation(line: 421, column: 18, scope: !803)
!811 = !DILocation(line: 421, column: 36, scope: !803)
!812 = !DILocation(line: 421, column: 35, scope: !803)
!813 = !DILocation(line: 421, column: 54, scope: !803)
!814 = !DILocation(line: 421, column: 53, scope: !803)
!815 = !DILocation(line: 421, column: 47, scope: !803)
!816 = !DILocation(line: 421, column: 40, scope: !803)
!817 = !DILocation(line: 421, column: 30, scope: !803)
!818 = !DILocalVariable(name: "corrM", scope: !803, file: !1, line: 422, type: !98)
!819 = !DILocation(line: 422, column: 18, scope: !803)
!820 = !DILocation(line: 422, column: 36, scope: !803)
!821 = !DILocation(line: 422, column: 35, scope: !803)
!822 = !DILocation(line: 422, column: 53, scope: !803)
!823 = !DILocation(line: 422, column: 52, scope: !803)
!824 = !DILocation(line: 422, column: 59, scope: !803)
!825 = !DILocation(line: 422, column: 57, scope: !803)
!826 = !DILocation(line: 422, column: 47, scope: !803)
!827 = !DILocation(line: 422, column: 40, scope: !803)
!828 = !DILocation(line: 422, column: 30, scope: !803)
!829 = !DILocalVariable(name: "corrT", scope: !803, file: !1, line: 423, type: !98)
!830 = !DILocation(line: 423, column: 18, scope: !803)
!831 = !DILocation(line: 423, column: 32, scope: !803)
!832 = !DILocation(line: 423, column: 49, scope: !803)
!833 = !DILocation(line: 423, column: 48, scope: !803)
!834 = !DILocation(line: 423, column: 53, scope: !803)
!835 = !DILocation(line: 423, column: 52, scope: !803)
!836 = !DILocation(line: 423, column: 43, scope: !803)
!837 = !DILocation(line: 423, column: 36, scope: !803)
!838 = !DILocation(line: 423, column: 30, scope: !803)
!839 = !DILocation(line: 424, column: 19, scope: !803)
!840 = !DILocation(line: 424, column: 23, scope: !803)
!841 = !DILocation(line: 424, column: 21, scope: !803)
!842 = !DILocation(line: 424, column: 5, scope: !803)
!843 = !DILocation(line: 424, column: 13, scope: !803)
!844 = !DILocation(line: 424, column: 17, scope: !803)
!845 = !DILocation(line: 425, column: 48, scope: !803)
!846 = !DILocation(line: 425, column: 56, scope: !803)
!847 = !DILocation(line: 425, column: 43, scope: !803)
!848 = !DILocation(line: 425, column: 41, scope: !803)
!849 = !DILocation(line: 425, column: 5, scope: !803)
!850 = !DILocation(line: 425, column: 13, scope: !803)
!851 = !DILocation(line: 425, column: 17, scope: !803)
!852 = !DILocation(line: 426, column: 5, scope: !803)
!853 = !DILocation(line: 428, column: 1, scope: !734)
!854 = distinct !DISubprogram(name: "gsl_sf_erfc", scope: !1, file: !1, line: 436, type: !68, isLocal: false, isDefinition: true, scopeLine: 437, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !70)
!855 = !DILocalVariable(name: "x", arg: 1, scope: !854, file: !1, line: 436, type: !49)
!856 = !DILocation(line: 436, column: 27, scope: !854)
!857 = !DILocalVariable(name: "result", scope: !854, file: !1, line: 438, type: !86)
!858 = !DILocation(line: 438, column: 3, scope: !854)
!859 = !DILocalVariable(name: "status", scope: !854, file: !1, line: 438, type: !51)
!860 = !DILocation(line: 438, column: 3, scope: !861)
!861 = distinct !DILexicalBlock(scope: !854, file: !1, line: 438, column: 3)
!862 = !DILocation(line: 438, column: 3, scope: !863)
!863 = !DILexicalBlockFile(scope: !864, file: !1, discriminator: 1)
!864 = distinct !DILexicalBlock(scope: !861, file: !1, line: 438, column: 3)
!865 = distinct !{!865, !866}
!866 = !DILocation(line: 438, column: 3, scope: !864)
!867 = !DILocation(line: 438, column: 3, scope: !868)
!868 = !DILexicalBlockFile(scope: !869, file: !1, discriminator: 2)
!869 = distinct !DILexicalBlock(scope: !864, file: !1, line: 438, column: 3)
!870 = !DILocation(line: 438, column: 3, scope: !871)
!871 = !DILexicalBlockFile(scope: !864, file: !1, discriminator: 3)
!872 = !DILocation(line: 438, column: 3, scope: !873)
!873 = !DILexicalBlockFile(scope: !854, file: !1, discriminator: 4)
!874 = !DILocation(line: 439, column: 1, scope: !854)
!875 = distinct !DISubprogram(name: "gsl_sf_log_erfc", scope: !1, file: !1, line: 441, type: !68, isLocal: false, isDefinition: true, scopeLine: 442, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !70)
!876 = !DILocalVariable(name: "x", arg: 1, scope: !875, file: !1, line: 441, type: !49)
!877 = !DILocation(line: 441, column: 31, scope: !875)
!878 = !DILocalVariable(name: "result", scope: !875, file: !1, line: 443, type: !86)
!879 = !DILocation(line: 443, column: 3, scope: !875)
!880 = !DILocalVariable(name: "status", scope: !875, file: !1, line: 443, type: !51)
!881 = !DILocation(line: 443, column: 3, scope: !882)
!882 = distinct !DILexicalBlock(scope: !875, file: !1, line: 443, column: 3)
!883 = !DILocation(line: 443, column: 3, scope: !884)
!884 = !DILexicalBlockFile(scope: !885, file: !1, discriminator: 1)
!885 = distinct !DILexicalBlock(scope: !882, file: !1, line: 443, column: 3)
!886 = distinct !{!886, !887}
!887 = !DILocation(line: 443, column: 3, scope: !885)
!888 = !DILocation(line: 443, column: 3, scope: !889)
!889 = !DILexicalBlockFile(scope: !890, file: !1, discriminator: 2)
!890 = distinct !DILexicalBlock(scope: !885, file: !1, line: 443, column: 3)
!891 = !DILocation(line: 443, column: 3, scope: !892)
!892 = !DILexicalBlockFile(scope: !885, file: !1, discriminator: 3)
!893 = !DILocation(line: 443, column: 3, scope: !894)
!894 = !DILexicalBlockFile(scope: !875, file: !1, discriminator: 4)
!895 = !DILocation(line: 444, column: 1, scope: !875)
!896 = distinct !DISubprogram(name: "gsl_sf_erf", scope: !1, file: !1, line: 446, type: !68, isLocal: false, isDefinition: true, scopeLine: 447, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !70)
!897 = !DILocalVariable(name: "x", arg: 1, scope: !896, file: !1, line: 446, type: !49)
!898 = !DILocation(line: 446, column: 26, scope: !896)
!899 = !DILocalVariable(name: "result", scope: !896, file: !1, line: 448, type: !86)
!900 = !DILocation(line: 448, column: 3, scope: !896)
!901 = !DILocalVariable(name: "status", scope: !896, file: !1, line: 448, type: !51)
!902 = !DILocation(line: 448, column: 3, scope: !903)
!903 = distinct !DILexicalBlock(scope: !896, file: !1, line: 448, column: 3)
!904 = !DILocation(line: 448, column: 3, scope: !905)
!905 = !DILexicalBlockFile(scope: !906, file: !1, discriminator: 1)
!906 = distinct !DILexicalBlock(scope: !903, file: !1, line: 448, column: 3)
!907 = distinct !{!907, !908}
!908 = !DILocation(line: 448, column: 3, scope: !906)
!909 = !DILocation(line: 448, column: 3, scope: !910)
!910 = !DILexicalBlockFile(scope: !911, file: !1, discriminator: 2)
!911 = distinct !DILexicalBlock(scope: !906, file: !1, line: 448, column: 3)
!912 = !DILocation(line: 448, column: 3, scope: !913)
!913 = !DILexicalBlockFile(scope: !906, file: !1, discriminator: 3)
!914 = !DILocation(line: 448, column: 3, scope: !915)
!915 = !DILexicalBlockFile(scope: !896, file: !1, discriminator: 4)
!916 = !DILocation(line: 449, column: 1, scope: !896)
!917 = distinct !DISubprogram(name: "gsl_sf_erf_Z", scope: !1, file: !1, line: 451, type: !68, isLocal: false, isDefinition: true, scopeLine: 452, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !70)
!918 = !DILocalVariable(name: "x", arg: 1, scope: !917, file: !1, line: 451, type: !49)
!919 = !DILocation(line: 451, column: 28, scope: !917)
!920 = !DILocalVariable(name: "result", scope: !917, file: !1, line: 453, type: !86)
!921 = !DILocation(line: 453, column: 3, scope: !917)
!922 = !DILocalVariable(name: "status", scope: !917, file: !1, line: 453, type: !51)
!923 = !DILocation(line: 453, column: 3, scope: !924)
!924 = distinct !DILexicalBlock(scope: !917, file: !1, line: 453, column: 3)
!925 = !DILocation(line: 453, column: 3, scope: !926)
!926 = !DILexicalBlockFile(scope: !927, file: !1, discriminator: 1)
!927 = distinct !DILexicalBlock(scope: !924, file: !1, line: 453, column: 3)
!928 = distinct !{!928, !929}
!929 = !DILocation(line: 453, column: 3, scope: !927)
!930 = !DILocation(line: 453, column: 3, scope: !931)
!931 = !DILexicalBlockFile(scope: !932, file: !1, discriminator: 2)
!932 = distinct !DILexicalBlock(scope: !927, file: !1, line: 453, column: 3)
!933 = !DILocation(line: 453, column: 3, scope: !934)
!934 = !DILexicalBlockFile(scope: !927, file: !1, discriminator: 3)
!935 = !DILocation(line: 453, column: 3, scope: !936)
!936 = !DILexicalBlockFile(scope: !917, file: !1, discriminator: 4)
!937 = !DILocation(line: 454, column: 1, scope: !917)
!938 = distinct !DISubprogram(name: "gsl_sf_erf_Q", scope: !1, file: !1, line: 456, type: !68, isLocal: false, isDefinition: true, scopeLine: 457, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !70)
!939 = !DILocalVariable(name: "x", arg: 1, scope: !938, file: !1, line: 456, type: !49)
!940 = !DILocation(line: 456, column: 28, scope: !938)
!941 = !DILocalVariable(name: "result", scope: !938, file: !1, line: 458, type: !86)
!942 = !DILocation(line: 458, column: 3, scope: !938)
!943 = !DILocalVariable(name: "status", scope: !938, file: !1, line: 458, type: !51)
!944 = !DILocation(line: 458, column: 3, scope: !945)
!945 = distinct !DILexicalBlock(scope: !938, file: !1, line: 458, column: 3)
!946 = !DILocation(line: 458, column: 3, scope: !947)
!947 = !DILexicalBlockFile(scope: !948, file: !1, discriminator: 1)
!948 = distinct !DILexicalBlock(scope: !945, file: !1, line: 458, column: 3)
!949 = distinct !{!949, !950}
!950 = !DILocation(line: 458, column: 3, scope: !948)
!951 = !DILocation(line: 458, column: 3, scope: !952)
!952 = !DILexicalBlockFile(scope: !953, file: !1, discriminator: 2)
!953 = distinct !DILexicalBlock(scope: !948, file: !1, line: 458, column: 3)
!954 = !DILocation(line: 458, column: 3, scope: !955)
!955 = !DILexicalBlockFile(scope: !948, file: !1, discriminator: 3)
!956 = !DILocation(line: 458, column: 3, scope: !957)
!957 = !DILexicalBlockFile(scope: !938, file: !1, discriminator: 4)
!958 = !DILocation(line: 459, column: 1, scope: !938)
!959 = distinct !DISubprogram(name: "gsl_sf_hazard", scope: !1, file: !1, line: 461, type: !68, isLocal: false, isDefinition: true, scopeLine: 462, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !70)
!960 = !DILocalVariable(name: "x", arg: 1, scope: !959, file: !1, line: 461, type: !49)
!961 = !DILocation(line: 461, column: 29, scope: !959)
!962 = !DILocalVariable(name: "result", scope: !959, file: !1, line: 463, type: !86)
!963 = !DILocation(line: 463, column: 3, scope: !959)
!964 = !DILocalVariable(name: "status", scope: !959, file: !1, line: 463, type: !51)
!965 = !DILocation(line: 463, column: 3, scope: !966)
!966 = distinct !DILexicalBlock(scope: !959, file: !1, line: 463, column: 3)
!967 = !DILocation(line: 463, column: 3, scope: !968)
!968 = !DILexicalBlockFile(scope: !969, file: !1, discriminator: 1)
!969 = distinct !DILexicalBlock(scope: !966, file: !1, line: 463, column: 3)
!970 = distinct !{!970, !971}
!971 = !DILocation(line: 463, column: 3, scope: !969)
!972 = !DILocation(line: 463, column: 3, scope: !973)
!973 = !DILexicalBlockFile(scope: !974, file: !1, discriminator: 2)
!974 = distinct !DILexicalBlock(scope: !969, file: !1, line: 463, column: 3)
!975 = !DILocation(line: 463, column: 3, scope: !976)
!976 = !DILexicalBlockFile(scope: !969, file: !1, discriminator: 3)
!977 = !DILocation(line: 463, column: 3, scope: !978)
!978 = !DILexicalBlockFile(scope: !959, file: !1, discriminator: 4)
!979 = !DILocation(line: 464, column: 1, scope: !959)
!980 = !DILocalVariable(name: "x", arg: 1, scope: !67, file: !1, line: 43, type: !49)
!981 = !DILocation(line: 43, column: 32, scope: !67)
!982 = !DILocalVariable(name: "num", scope: !67, file: !1, line: 65, type: !49)
!983 = !DILocation(line: 65, column: 10, scope: !67)
!984 = !DILocalVariable(name: "den", scope: !67, file: !1, line: 65, type: !49)
!985 = !DILocation(line: 65, column: 19, scope: !67)
!986 = !DILocalVariable(name: "i", scope: !67, file: !1, line: 66, type: !51)
!987 = !DILocation(line: 66, column: 7, scope: !67)
!988 = !DILocation(line: 68, column: 9, scope: !67)
!989 = !DILocation(line: 68, column: 7, scope: !67)
!990 = !DILocation(line: 69, column: 9, scope: !991)
!991 = distinct !DILexicalBlock(scope: !67, file: !1, line: 69, column: 3)
!992 = !DILocation(line: 69, column: 8, scope: !991)
!993 = !DILocation(line: 69, column: 13, scope: !994)
!994 = !DILexicalBlockFile(scope: !995, file: !1, discriminator: 1)
!995 = distinct !DILexicalBlock(scope: !991, file: !1, line: 69, column: 3)
!996 = !DILocation(line: 69, column: 14, scope: !994)
!997 = !DILocation(line: 69, column: 3, scope: !994)
!998 = !DILocation(line: 70, column: 13, scope: !999)
!999 = distinct !DILexicalBlock(scope: !995, file: !1, line: 69, column: 24)
!1000 = !DILocation(line: 70, column: 15, scope: !999)
!1001 = !DILocation(line: 70, column: 14, scope: !999)
!1002 = !DILocation(line: 70, column: 23, scope: !999)
!1003 = !DILocation(line: 70, column: 21, scope: !999)
!1004 = !DILocation(line: 70, column: 19, scope: !999)
!1005 = !DILocation(line: 70, column: 11, scope: !999)
!1006 = !DILocation(line: 71, column: 3, scope: !999)
!1007 = !DILocation(line: 69, column: 19, scope: !1008)
!1008 = !DILexicalBlockFile(scope: !995, file: !1, discriminator: 2)
!1009 = !DILocation(line: 69, column: 3, scope: !1008)
!1010 = distinct !{!1010, !1011}
!1011 = !DILocation(line: 69, column: 3, scope: !67)
!1012 = !DILocation(line: 72, column: 9, scope: !67)
!1013 = !DILocation(line: 72, column: 7, scope: !67)
!1014 = !DILocation(line: 73, column: 9, scope: !1015)
!1015 = distinct !DILexicalBlock(scope: !67, file: !1, line: 73, column: 3)
!1016 = !DILocation(line: 73, column: 8, scope: !1015)
!1017 = !DILocation(line: 73, column: 13, scope: !1018)
!1018 = !DILexicalBlockFile(scope: !1019, file: !1, discriminator: 1)
!1019 = distinct !DILexicalBlock(scope: !1015, file: !1, line: 73, column: 3)
!1020 = !DILocation(line: 73, column: 14, scope: !1018)
!1021 = !DILocation(line: 73, column: 3, scope: !1018)
!1022 = !DILocation(line: 74, column: 13, scope: !1023)
!1023 = distinct !DILexicalBlock(scope: !1019, file: !1, line: 73, column: 24)
!1024 = !DILocation(line: 74, column: 15, scope: !1023)
!1025 = !DILocation(line: 74, column: 14, scope: !1023)
!1026 = !DILocation(line: 74, column: 23, scope: !1023)
!1027 = !DILocation(line: 74, column: 21, scope: !1023)
!1028 = !DILocation(line: 74, column: 19, scope: !1023)
!1029 = !DILocation(line: 74, column: 11, scope: !1023)
!1030 = !DILocation(line: 75, column: 3, scope: !1023)
!1031 = !DILocation(line: 73, column: 19, scope: !1032)
!1032 = !DILexicalBlockFile(scope: !1019, file: !1, discriminator: 2)
!1033 = !DILocation(line: 73, column: 3, scope: !1032)
!1034 = distinct !{!1034, !1035}
!1035 = !DILocation(line: 73, column: 3, scope: !67)
!1036 = !DILocation(line: 77, column: 10, scope: !67)
!1037 = !DILocation(line: 77, column: 14, scope: !67)
!1038 = !DILocation(line: 77, column: 13, scope: !67)
!1039 = !DILocation(line: 77, column: 3, scope: !67)
