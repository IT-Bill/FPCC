; ModuleID = 'debye.ll'
source_filename = "debye.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.cheb_series_struct = type { double*, i32, double, double, i32 }
%struct.gsl_sf_result_struct = type { double, double }

@.str = private unnamed_addr constant [13 x i8] c"domain error\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"debye.c\00", align 1
@adeb1_cs = internal global %struct.cheb_series_struct { double* getelementptr inbounds ([17 x double], [17 x double]* @adeb1_data, i32 0, i32 0), i32 16, double -1.000000e+00, double 1.000000e+00, i32 9 }, align 8
@adeb2_cs = internal global %struct.cheb_series_struct { double* getelementptr inbounds ([18 x double], [18 x double]* @adeb2_data, i32 0, i32 0), i32 17, double -1.000000e+00, double 1.000000e+00, i32 10 }, align 8
@.str.2 = private unnamed_addr constant [10 x i8] c"underflow\00", align 1
@adeb3_cs = internal global %struct.cheb_series_struct { double* getelementptr inbounds ([17 x double], [17 x double]* @adeb3_data, i32 0, i32 0), i32 16, double -1.000000e+00, double 1.000000e+00, i32 10 }, align 8
@adeb4_cs = internal global %struct.cheb_series_struct { double* getelementptr inbounds ([17 x double], [17 x double]* @adeb4_data, i32 0, i32 0), i32 16, double -1.000000e+00, double 1.000000e+00, i32 10 }, align 8
@adeb5_cs = internal global %struct.cheb_series_struct { double* getelementptr inbounds ([17 x double], [17 x double]* @adeb5_data, i32 0, i32 0), i32 16, double -1.000000e+00, double 1.000000e+00, i32 10 }, align 8
@adeb6_cs = internal global %struct.cheb_series_struct { double* getelementptr inbounds ([17 x double], [17 x double]* @adeb6_data, i32 0, i32 0), i32 16, double -1.000000e+00, double 1.000000e+00, i32 10 }, align 8
@.str.3 = private unnamed_addr constant [29 x i8] c"gsl_sf_debye_1_e(x, &result)\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"gsl_sf_debye_2_e(x, &result)\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"gsl_sf_debye_3_e(x, &result)\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"gsl_sf_debye_4_e(x, &result)\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"gsl_sf_debye_5_e(x, &result)\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"gsl_sf_debye_6_e(x, &result)\00", align 1
@adeb1_data = internal global [17 x double] [double 0x4003348D1530BF36, double 0x3FC8CBDC15145376, double 0xBF7987AEB27B87C8, double 0x3F3702C614B31758, double 0xBEF7EE4CD95F52ED, double 0x3EBA84659233D7A3, double 0xBE7E7A4272869B1F, double 0x3E41F30B3B70C5F0, double 0xBE05863F0E8BD54B, double 0x3DCA2B93651ADAD4, double 0xBD9015E2376B90AB, double 2.835431e-13, double -2.214730e-14, double 1.740900e-15, double -1.376000e-16, double 1.090000e-17, double -9.000000e-19], align 16
@adeb2_data = internal global [18 x double] [double 0x4004C14AD682046D, double 0x3FD253530EC17156, double 0xBF84E705C845FB1D, double 0x3F43D25C6EC8CC38, double 0xBF053F46B69BDC3A, double 0x3EC805113FF3B324, double 0xBE8C00CBD64AA487, double 0x3E50AB256FE3B68F, double 0xBE142778B738C1F5, double 0x3DD8AA9985D7384E, double 0xBD9E7C78321A7033, double 5.398057e-13, double -4.232410e-14, double 3.337800e-15, double -2.645000e-16, double 2.110000e-17, double -1.700000e-18, double 1.000000e-19], align 16
@adeb3_data = internal global [17 x double] [double 0x4005A9720D5510F3, double 0x3FD5C3AD23C92C91, double 0xBF8A82FCA578CB81, double 0x3F4A187B72103077, double 0xBF0CA51EB2CC2B35, double 0x3ED075AFE8B0D419, double 0xBE936BE918A46796, double 0x3E575594C21AA7D5, double 0xBE1C6B4AE117BFDB, double 0x3DE17E40E374B905, double 0xBDA5B9BD66041419, double 7.725074e-13, double -6.077970e-14, double 4.807600e-15, double -3.820000e-16, double 3.050000e-17, double -2.400000e-18], align 16
@adeb4_data = internal global [17 x double] [double 0x40064144C07A0BE1, double 0x3FD7FF9E9F807737, double 0xBF8E9956A53613DD, double 0x3F4EFCEFEE69FD4E, double 0xBF11561AD9180E44, double 0x3ED432BF1D5FBF46, double 0xBE981448037DB3F5, double 0x3E5D29B7729376E2, double 0xBE21DF878C53F7D8, double 0x3DE61E841E58F55A, double 0xBDAB97635FA87CFC, double 9.847265e-13, double -7.772370e-14, double 6.164800e-15, double -4.911000e-16, double 3.930000e-17, double -3.200000e-18], align 16
@adeb5_data = internal global [17 x double] [double 0x4006AC1652F2C882, double 0x3FD98FEE7B34E11A, double 0xBF90DA04DD15667E, double 0x3F5173D4A527EE52, double 0xBF13D654E281B8C2, double 0x3ED761ADF96E32A7, double 0xBE9C1F8DFA7FA8AC, double 0x3E61269261ED0736, double 0xBE252486A1BD0B5C, double 0x3DEA4A128B58B814, double 0xBDB0763EA6A91EBE, double 0x3D74BDE26CD23384, double -9.333290e-14, double 7.421800e-15, double -5.925000e-16, double 4.750000e-17, double -3.900000e-18], align 16
@adeb6_data = internal global [17 x double] [double 0x4006FB3BD4E1C385, double 0x3FDAB74BEC7CF51B, double 0xBF9211A1BCE440BE, double 0x3F530DE9EDBEB7EE, double 0xBF15F1CDD1F5C413, double 0x3EDA1FA6E1165AAC, double 0xBE9FAA91C86DA54E, double 0x3E636E9BBF564EDD, double 0xBE2813F16FC2791A, double 0x3DEE1138C0B03667, double 0xBDB2E55AFB843C5A, double 0x3D77E20036BF1AA8, double -1.077580e-13, double 8.589300e-15, double -6.872000e-16, double 5.520000e-17, double -4.400000e-18], align 16
@0 = private unnamed_addr constant [17 x i8] c"gsl_sf_debye_1_e\00"
@1 = private unnamed_addr constant [9 x i8] c"debye.ll\00"
@2 = private unnamed_addr constant [12 x i8] c"cheb_eval_e\00"
@3 = private unnamed_addr constant [9 x i8] c"debye.ll\00"
@4 = private unnamed_addr constant [17 x i8] c"gsl_sf_debye_2_e\00"
@5 = private unnamed_addr constant [9 x i8] c"debye.ll\00"
@6 = private unnamed_addr constant [17 x i8] c"gsl_sf_debye_3_e\00"
@7 = private unnamed_addr constant [9 x i8] c"debye.ll\00"
@8 = private unnamed_addr constant [17 x i8] c"gsl_sf_debye_4_e\00"
@9 = private unnamed_addr constant [9 x i8] c"debye.ll\00"
@10 = private unnamed_addr constant [17 x i8] c"gsl_sf_debye_5_e\00"
@11 = private unnamed_addr constant [9 x i8] c"debye.ll\00"
@12 = private unnamed_addr constant [17 x i8] c"gsl_sf_debye_6_e\00"
@13 = private unnamed_addr constant [9 x i8] c"debye.ll\00"
@14 = private unnamed_addr constant [15 x i8] c"gsl_sf_debye_1\00"
@15 = private unnamed_addr constant [9 x i8] c"debye.ll\00"
@16 = private unnamed_addr constant [15 x i8] c"gsl_sf_debye_2\00"
@17 = private unnamed_addr constant [9 x i8] c"debye.ll\00"
@18 = private unnamed_addr constant [15 x i8] c"gsl_sf_debye_3\00"
@19 = private unnamed_addr constant [9 x i8] c"debye.ll\00"
@20 = private unnamed_addr constant [15 x i8] c"gsl_sf_debye_4\00"
@21 = private unnamed_addr constant [9 x i8] c"debye.ll\00"
@22 = private unnamed_addr constant [15 x i8] c"gsl_sf_debye_5\00"
@23 = private unnamed_addr constant [9 x i8] c"debye.ll\00"
@24 = private unnamed_addr constant [15 x i8] c"gsl_sf_debye_6\00"
@25 = private unnamed_addr constant [9 x i8] c"debye.ll\00"

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_debye_1_e(double, %struct.gsl_sf_result_struct*) #0 !dbg !76 {
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
  %14 = alloca double, align 8
  %15 = alloca i32, align 4
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !88, metadata !89), !dbg !90
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %5, metadata !91, metadata !89), !dbg !92
  call void @llvm.dbg.declare(metadata double* %6, metadata !93, metadata !89), !dbg !94
  store double 0x3FFA51A6625307D3, double* %6, align 8, !dbg !94
  call void @llvm.dbg.declare(metadata double* %7, metadata !95, metadata !89), !dbg !96
  store double 0x4086232BDD7ABCD2, double* %7, align 8, !dbg !96
  %16 = load double, double* %4, align 8, !dbg !97
  %17 = fcmp olt double %16, 0.000000e+00, !dbg !99
  %18 = call i1 @fCmpInstHandler(double %16, double 0.000000e+00, i1 %17, i32 4, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @1, i32 0, i32 0), i64 93964096993584, i32 201, i32 8), !dbg !100
  br i1 %18, label %19, label %28, !dbg !100

; <label>:19:                                     ; preds = %2
  br label %20, !dbg !101, !llvm.loop !103

; <label>:20:                                     ; preds = %19
  %21 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !104
  %22 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %21, i32 0, i32 0, !dbg !104
  store double 0x7FF8000000000000, double* %22, align 8, !dbg !104
  %23 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !104
  %24 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %23, i32 0, i32 1, !dbg !104
  store double 0x7FF8000000000000, double* %24, align 8, !dbg !104
  br label %25, !dbg !104, !llvm.loop !107

; <label>:25:                                     ; preds = %20
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i32 202, i32 1), !dbg !109
  store i32 1, i32* %3, align 4, !dbg !109
  br label %171, !dbg !109
                                                  ; No predecessors!
  br label %27, !dbg !112

; <label>:27:                                     ; preds = %26
  br label %171, !dbg !114

; <label>:28:                                     ; preds = %2
  %29 = load double, double* %4, align 8, !dbg !115
  %30 = fcmp olt double %29, 0x3E60000000000000, !dbg !117
  %31 = call i1 @fCmpInstHandler(double %29, double 0x3E60000000000000, i1 %30, i32 4, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @1, i32 0, i32 0), i64 93964097006528, i32 204, i32 13), !dbg !118
  br i1 %31, label %32, label %50, !dbg !118

; <label>:32:                                     ; preds = %28
  %33 = load double, double* %4, align 8, !dbg !119
  %34 = fmul double 2.500000e-01, %33, !dbg !121
  call void @fMulHandler(double 2.500000e-01, double %33, double %34, i64 0, i64 93964097007640, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @1, i32 0, i32 0), i64 93964097008080, i32 205, i32 29), !dbg !122
  %35 = fsub double 1.000000e+00, %34, !dbg !122
  call void @fSubHandler(double 1.000000e+00, double %34, double %35, i64 0, i64 93964097008080, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @1, i32 0, i32 0), i64 93964097009024, i32 205, i32 23), !dbg !123
  %36 = load double, double* %4, align 8, !dbg !123
  %37 = load double, double* %4, align 8, !dbg !124
  %38 = fmul double %36, %37, !dbg !125
  call void @fMulHandler(double %36, double %37, double %38, i64 93964097009384, i64 93964097009768, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @1, i32 0, i32 0), i64 93964097010176, i32 205, i32 35), !dbg !126
  %39 = fdiv double %38, 3.600000e+01, !dbg !126
  call void @fDivHandler(double %38, double 3.600000e+01, double %39, i64 93964097010176, i64 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @1, i32 0, i32 0), i64 93964097010688, i32 205, i32 37), !dbg !127
  %40 = fadd double %35, %39, !dbg !127
  call void @fAddHandler(double %35, double %39, double %40, i64 93964097009024, i64 93964097010688, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @1, i32 0, i32 0), i64 93964097011072, i32 205, i32 32), !dbg !128
  %41 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !128
  %42 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %41, i32 0, i32 0, !dbg !129
  store double %40, double* %42, align 8, !dbg !130
  %43 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !131
  %44 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %43, i32 0, i32 0, !dbg !132
  %45 = load double, double* %44, align 8, !dbg !132
  %46 = call double @fabs(double %45) #1, !dbg !133
  %47 = fmul double 0x3CB0000000000000, %46, !dbg !134
  call void @fMulHandler(double 0x3CB0000000000000, double %46, double %47, i64 0, i64 93964097016400, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @1, i32 0, i32 0), i64 93964097016976, i32 206, i32 35), !dbg !135
  %48 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !135
  %49 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %48, i32 0, i32 1, !dbg !136
  store double %47, double* %49, align 8, !dbg !137
  store i32 0, i32* %3, align 4, !dbg !138
  br label %171, !dbg !138

; <label>:50:                                     ; preds = %28
  %51 = load double, double* %4, align 8, !dbg !139
  %52 = fcmp ole double %51, 4.000000e+00, !dbg !141
  %53 = call i1 @fCmpInstHandler(double %51, double 4.000000e+00, i1 %52, i32 5, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @1, i32 0, i32 0), i64 93964097021120, i32 209, i32 13), !dbg !142
  br i1 %53, label %54, label %77, !dbg !142

; <label>:54:                                     ; preds = %50
  call void @llvm.dbg.declare(metadata double* %8, metadata !143, metadata !89), !dbg !145
  %55 = load double, double* %4, align 8, !dbg !146
  %56 = load double, double* %4, align 8, !dbg !147
  %57 = fmul double %55, %56, !dbg !148
  call void @fMulHandler(double %55, double %56, double %57, i64 93964097023352, i64 93964097023704, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @1, i32 0, i32 0), i64 93964097024112, i32 210, i32 23), !dbg !149
  %58 = fdiv double %57, 8.000000e+00, !dbg !149
  call void @fDivHandler(double %57, double 8.000000e+00, double %58, i64 93964097024112, i64 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @1, i32 0, i32 0), i64 93964097024624, i32 210, i32 25), !dbg !150
  %59 = fsub double %58, 1.000000e+00, !dbg !150
  call void @fSubHandler(double %58, double 1.000000e+00, double %59, i64 93964097024624, i64 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @1, i32 0, i32 0), i64 93964097025040, i32 210, i32 30), !dbg !145
  store double %59, double* %8, align 8, !dbg !145
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %9, metadata !151, metadata !89), !dbg !152
  %60 = load double, double* %8, align 8, !dbg !153
  %61 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @adeb1_cs, double %60, %struct.gsl_sf_result_struct* %9), !dbg !154
  %62 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %9, i32 0, i32 0, !dbg !155
  %63 = load double, double* %62, align 8, !dbg !155
  %64 = load double, double* %4, align 8, !dbg !156
  %65 = fmul double 2.500000e-01, %64, !dbg !157
  call void @fMulHandler(double 2.500000e-01, double %64, double %65, i64 0, i64 93964097031480, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @1, i32 0, i32 0), i64 93964097031920, i32 213, i32 32), !dbg !158
  %66 = fsub double %63, %65, !dbg !158
  call void @fSubHandler(double %63, double %65, double %66, i64 93964097029832, i64 93964097031920, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @1, i32 0, i32 0), i64 93964097032304, i32 213, i32 25), !dbg !159
  %67 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !159
  %68 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %67, i32 0, i32 0, !dbg !160
  store double %66, double* %68, align 8, !dbg !161
  %69 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %9, i32 0, i32 1, !dbg !162
  %70 = load double, double* %69, align 8, !dbg !162
  %71 = load double, double* %4, align 8, !dbg !163
  %72 = fmul double 2.500000e-01, %71, !dbg !164
  call void @fMulHandler(double 2.500000e-01, double %71, double %72, i64 0, i64 93964097037080, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @1, i32 0, i32 0), i64 93964097037520, i32 214, i32 32), !dbg !165
  %73 = fmul double %72, 0x3CB0000000000000, !dbg !165
  call void @fMulHandler(double %72, double 0x3CB0000000000000, double %73, i64 93964097037520, i64 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @1, i32 0, i32 0), i64 93964097037904, i32 214, i32 36), !dbg !166
  %74 = fadd double %70, %73, !dbg !166
  call void @fAddHandler(double %70, double %73, double %74, i64 93964097035432, i64 93964097037904, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @1, i32 0, i32 0), i64 93964097038320, i32 214, i32 25), !dbg !167
  %75 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !167
  %76 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %75, i32 0, i32 1, !dbg !168
  store double %74, double* %76, align 8, !dbg !169
  store i32 0, i32* %3, align 4, !dbg !170
  br label %171, !dbg !170

; <label>:77:                                     ; preds = %50
  %78 = load double, double* %4, align 8, !dbg !171
  %79 = fcmp olt double %78, 0x4041ACDD632F662A, !dbg !173
  %80 = call i1 @fCmpInstHandler(double %78, double 0x4041ACDD632F662A, i1 %79, i32 4, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @1, i32 0, i32 0), i64 93964097042432, i32 217, i32 13), !dbg !174
  br i1 %80, label %81, label %136, !dbg !174

; <label>:81:                                     ; preds = %77
  call void @llvm.dbg.declare(metadata i32* %10, metadata !175, metadata !89), !dbg !178
  %82 = load double, double* %4, align 8, !dbg !179
  %83 = fdiv double 0x4086232BDD7ABCD2, %82, !dbg !180
  call void @fDivHandler(double 0x4086232BDD7ABCD2, double %82, double %83, i64 0, i64 93964097044696, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @1, i32 0, i32 0), i64 93964097045072, i32 218, i32 32), !dbg !181
  %84 = call double @floor(double %83) #1, !dbg !181
  %85 = fptosi double %84 to i32, !dbg !181
  store i32 %85, i32* %10, align 4, !dbg !178
  call void @llvm.dbg.declare(metadata double* %11, metadata !182, metadata !89), !dbg !183
  %86 = load double, double* %4, align 8, !dbg !184
  %87 = fsub double -0.000000e+00, %86, !dbg !185
  call void @fSubHandler(double -0.000000e+00, double %86, double %87, i64 0, i64 93964097050808, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @1, i32 0, i32 0), i64 93964097051248, i32 219, i32 28), !dbg !186
  %88 = call double @exp(double %87) #6, !dbg !186
  call void @callOneArgHandler(i32 11, double %87, double %88, i64 93964097051248, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @1, i32 0, i32 0), i64 93964097052000, i32 219, i32 24), !dbg !183
  store double %88, double* %11, align 8, !dbg !183
  call void @llvm.dbg.declare(metadata double* %12, metadata !187, metadata !89), !dbg !188
  store double 0.000000e+00, double* %12, align 8, !dbg !188
  call void @llvm.dbg.declare(metadata double* %13, metadata !189, metadata !89), !dbg !190
  %89 = load i32, i32* %10, align 4, !dbg !191
  %90 = sitofp i32 %89 to double, !dbg !191
  %91 = load double, double* %4, align 8, !dbg !192
  %92 = fmul double %90, %91, !dbg !193
  call void @fMulHandler(double %90, double %91, double %92, i64 93964097058456, i64 93964097060104, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @1, i32 0, i32 0), i64 93964097060512, i32 221, i32 23), !dbg !190
  store double %92, double* %13, align 8, !dbg !190
  call void @llvm.dbg.declare(metadata double* %14, metadata !194, metadata !89), !dbg !195
  %93 = load i32, i32* %10, align 4, !dbg !196
  %94 = sitofp i32 %93 to double, !dbg !196
  store double %94, double* %14, align 8, !dbg !195
  call void @llvm.dbg.declare(metadata i32* %15, metadata !197, metadata !89), !dbg !198
  %95 = load i32, i32* %10, align 4, !dbg !199
  store i32 %95, i32* %15, align 4, !dbg !201
  br label %96, !dbg !202

; <label>:96:                                     ; preds = %117, %81
  %97 = load i32, i32* %15, align 4, !dbg !203
  %98 = icmp sge i32 %97, 1, !dbg !206
  %99 = sext i32 %97 to i64, !dbg !207
  %100 = call i1 @iCmpInstHandler(i64 %99, i64 1, i1 %98, i32 39, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @1, i32 0, i32 0), i64 93964097070144, i32 224, i32 18), !dbg !207
  br i1 %100, label %101, label %120, !dbg !207

; <label>:101:                                    ; preds = %96
  %102 = load double, double* %11, align 8, !dbg !208
  %103 = load double, double* %12, align 8, !dbg !210
  %104 = fmul double %103, %102, !dbg !210
  call void @fMulHandler(double %103, double %102, double %104, i64 93964097071576, i64 93964097071256, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @1, i32 0, i32 0), i64 93964097071984, i32 225, i32 11), !dbg !210
  store double %104, double* %12, align 8, !dbg !210
  %105 = load double, double* %13, align 8, !dbg !211
  %106 = fdiv double 1.000000e+00, %105, !dbg !212
  call void @fDivHandler(double 1.000000e+00, double %105, double %106, i64 0, i64 93964097073768, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @1, i32 0, i32 0), i64 93964097074208, i32 226, i32 24), !dbg !213
  %107 = fadd double 1.000000e+00, %106, !dbg !213
  call void @fAddHandler(double 1.000000e+00, double %106, double %107, i64 0, i64 93964097074208, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @1, i32 0, i32 0), i64 93964097074624, i32 226, i32 19), !dbg !214
  %108 = load double, double* %14, align 8, !dbg !214
  %109 = fdiv double %107, %108, !dbg !215
  call void @fDivHandler(double %107, double %108, double %109, i64 93964097074624, i64 93964097074984, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @1, i32 0, i32 0), i64 93964097075392, i32 226, i32 28), !dbg !216
  %110 = load double, double* %12, align 8, !dbg !216
  %111 = fadd double %110, %109, !dbg !216
  call void @fAddHandler(double %110, double %109, double %111, i64 93964097075784, i64 93964097075392, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @1, i32 0, i32 0), i64 93964097076192, i32 226, i32 11), !dbg !216
  store double %111, double* %12, align 8, !dbg !216
  %112 = load double, double* %14, align 8, !dbg !217
  %113 = fsub double %112, 1.000000e+00, !dbg !217
  call void @fSubHandler(double %112, double 1.000000e+00, double %113, i64 93964097077976, i64 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @1, i32 0, i32 0), i64 93964097078416, i32 227, i32 10), !dbg !217
  store double %113, double* %14, align 8, !dbg !217
  %114 = load double, double* %4, align 8, !dbg !218
  %115 = load double, double* %13, align 8, !dbg !219
  %116 = fsub double %115, %114, !dbg !219
  call void @fSubHandler(double %115, double %114, double %116, i64 93964097080552, i64 93964097080200, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @1, i32 0, i32 0), i64 93964097080960, i32 228, i32 10), !dbg !219
  store double %116, double* %13, align 8, !dbg !219
  br label %117, !dbg !220

; <label>:117:                                    ; preds = %101
  %118 = load i32, i32* %15, align 4, !dbg !221
  %119 = add nsw i32 %118, -1, !dbg !221
  store i32 %119, i32* %15, align 4, !dbg !221
  br label %96, !dbg !223, !llvm.loop !224

; <label>:120:                                    ; preds = %96
  %121 = load double, double* %4, align 8, !dbg !226
  %122 = fdiv double 0x3FFA51A6625307D3, %121, !dbg !227
  call void @fDivHandler(double 0x3FFA51A6625307D3, double %121, double %122, i64 0, i64 93964097086136, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @1, i32 0, i32 0), i64 93964097086480, i32 230, i32 31), !dbg !228
  %123 = load double, double* %12, align 8, !dbg !228
  %124 = load double, double* %11, align 8, !dbg !229
  %125 = fmul double %123, %124, !dbg !230
  call void @fMulHandler(double %123, double %124, double %125, i64 93964097086872, i64 93964097087256, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @1, i32 0, i32 0), i64 93964097087664, i32 230, i32 39), !dbg !231
  %126 = fsub double %122, %125, !dbg !231
  call void @fSubHandler(double %122, double %125, double %126, i64 93964097086480, i64 93964097087664, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @1, i32 0, i32 0), i64 93964097088080, i32 230, i32 34), !dbg !232
  %127 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !232
  %128 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %127, i32 0, i32 0, !dbg !233
  store double %126, double* %128, align 8, !dbg !234
  %129 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !235
  %130 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %129, i32 0, i32 0, !dbg !236
  %131 = load double, double* %130, align 8, !dbg !236
  %132 = call double @fabs(double %131) #1, !dbg !237
  %133 = fmul double 0x3CB0000000000000, %132, !dbg !238
  call void @fMulHandler(double 0x3CB0000000000000, double %132, double %133, i64 0, i64 93964097092288, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @1, i32 0, i32 0), i64 93964097092768, i32 231, i32 35), !dbg !239
  %134 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !239
  %135 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %134, i32 0, i32 1, !dbg !240
  store double %133, double* %135, align 8, !dbg !241
  store i32 0, i32* %3, align 4, !dbg !242
  br label %171, !dbg !242

; <label>:136:                                    ; preds = %77
  %137 = load double, double* %4, align 8, !dbg !243
  %138 = fcmp olt double %137, 0x4086232BDD7ABCD2, !dbg !245
  %139 = call i1 @fCmpInstHandler(double %137, double 0x4086232BDD7ABCD2, i1 %138, i32 4, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @1, i32 0, i32 0), i64 93964097098880, i32 234, i32 13), !dbg !246
  br i1 %139, label %140, label %159, !dbg !246

; <label>:140:                                    ; preds = %136
  %141 = load double, double* %4, align 8, !dbg !247
  %142 = fsub double -0.000000e+00, %141, !dbg !249
  call void @fSubHandler(double -0.000000e+00, double %141, double %142, i64 0, i64 93964097099992, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @1, i32 0, i32 0), i64 93964097100336, i32 235, i32 39), !dbg !250
  %143 = call double @exp(double %142) #6, !dbg !250
  call void @callOneArgHandler(i32 11, double %142, double %143, i64 93964097100336, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @1, i32 0, i32 0), i64 93964097100816, i32 235, i32 35), !dbg !251
  %144 = load double, double* %4, align 8, !dbg !251
  %145 = fadd double %144, 1.000000e+00, !dbg !252
  call void @fAddHandler(double %144, double 1.000000e+00, double %145, i64 93964097101272, i64 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @1, i32 0, i32 0), i64 93964097101712, i32 235, i32 45), !dbg !253
  %146 = fmul double %143, %145, !dbg !253
  call void @fMulHandler(double %143, double %145, double %146, i64 93964097100816, i64 93964097101712, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @1, i32 0, i32 0), i64 93964097102096, i32 235, i32 42), !dbg !254
  %147 = fsub double 0x3FFA51A6625307D3, %146, !dbg !254
  call void @fSubHandler(double 0x3FFA51A6625307D3, double %146, double %147, i64 0, i64 93964097102096, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @1, i32 0, i32 0), i64 93964097102512, i32 235, i32 33), !dbg !255
  %148 = load double, double* %4, align 8, !dbg !255
  %149 = fdiv double %147, %148, !dbg !256
  call void @fDivHandler(double %147, double %148, double %149, i64 93964097102512, i64 93964097102904, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @1, i32 0, i32 0), i64 93964097103312, i32 235, i32 52), !dbg !257
  %150 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !257
  %151 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %150, i32 0, i32 0, !dbg !258
  store double %149, double* %151, align 8, !dbg !259
  %152 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !260
  %153 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %152, i32 0, i32 0, !dbg !261
  %154 = load double, double* %153, align 8, !dbg !261
  %155 = call double @fabs(double %154) #1, !dbg !262
  %156 = fmul double 0x3CB0000000000000, %155, !dbg !263
  call void @fMulHandler(double 0x3CB0000000000000, double %155, double %156, i64 0, i64 93964097107520, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @1, i32 0, i32 0), i64 93964097108000, i32 236, i32 35), !dbg !264
  %157 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !264
  %158 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %157, i32 0, i32 1, !dbg !265
  store double %156, double* %158, align 8, !dbg !266
  store i32 0, i32* %3, align 4, !dbg !267
  br label %171, !dbg !267

; <label>:159:                                    ; preds = %136
  %160 = load double, double* %4, align 8, !dbg !268
  %161 = fdiv double 0x3FFA51A6625307D3, %160, !dbg !270
  call void @fDivHandler(double 0x3FFA51A6625307D3, double %160, double %161, i64 0, i64 93964097111704, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @1, i32 0, i32 0), i64 93964097112048, i32 240, i32 31), !dbg !271
  %162 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !271
  %163 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %162, i32 0, i32 0, !dbg !272
  store double %161, double* %163, align 8, !dbg !273
  %164 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !274
  %165 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %164, i32 0, i32 0, !dbg !275
  %166 = load double, double* %165, align 8, !dbg !275
  %167 = call double @fabs(double %166) #1, !dbg !276
  %168 = fmul double 0x3CB0000000000000, %167, !dbg !277
  call void @fMulHandler(double 0x3CB0000000000000, double %167, double %168, i64 0, i64 93964097116256, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @1, i32 0, i32 0), i64 93964097116736, i32 241, i32 35), !dbg !278
  %169 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !278
  %170 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %169, i32 0, i32 1, !dbg !279
  store double %168, double* %170, align 8, !dbg !280
  store i32 0, i32* %3, align 4, !dbg !281
  br label %171, !dbg !281

; <label>:171:                                    ; preds = %159, %140, %120, %54, %32, %27, %25
  %172 = load i32, i32* %3, align 4, !dbg !282
  ret i32 %172, !dbg !282
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @gsl_error(i8*, i8*, i32, i32) #2

; Function Attrs: nounwind readnone
declare double @fabs(double) #3

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @cheb_eval_e(%struct.cheb_series_struct*, double, %struct.gsl_sf_result_struct*) #4 !dbg !283 {
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
  call void @llvm.dbg.declare(metadata %struct.cheb_series_struct** %4, metadata !289, metadata !89), !dbg !290
  store double %1, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !291, metadata !89), !dbg !292
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %6, metadata !293, metadata !89), !dbg !294
  call void @llvm.dbg.declare(metadata i32* %7, metadata !295, metadata !89), !dbg !296
  call void @llvm.dbg.declare(metadata double* %8, metadata !297, metadata !89), !dbg !298
  store double 0.000000e+00, double* %8, align 8, !dbg !298
  call void @llvm.dbg.declare(metadata double* %9, metadata !299, metadata !89), !dbg !300
  store double 0.000000e+00, double* %9, align 8, !dbg !300
  call void @llvm.dbg.declare(metadata double* %10, metadata !301, metadata !89), !dbg !302
  %15 = load double, double* %5, align 8, !dbg !303
  %16 = fmul double 2.000000e+00, %15, !dbg !304
  call void @fMulHandler(double 2.000000e+00, double %15, double %16, i64 0, i64 93964097028792, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 93964097134976, i32 11, i32 19), !dbg !305
  %17 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !305
  %18 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %17, i32 0, i32 2, !dbg !306
  %19 = load double, double* %18, align 8, !dbg !306
  %20 = fsub double %16, %19, !dbg !307
  call void @fSubHandler(double %16, double %19, double %20, i64 93964097134976, i64 93964097002664, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 93964097137712, i32 11, i32 22), !dbg !308
  %21 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !308
  %22 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %21, i32 0, i32 3, !dbg !309
  %23 = load double, double* %22, align 8, !dbg !309
  %24 = fsub double %20, %23, !dbg !310
  call void @fSubHandler(double %20, double %23, double %24, i64 93964097137712, i64 93964097138904, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 93964097140576, i32 11, i32 30), !dbg !311
  %25 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !311
  %26 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %25, i32 0, i32 3, !dbg !312
  %27 = load double, double* %26, align 8, !dbg !312
  %28 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !313
  %29 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %28, i32 0, i32 2, !dbg !314
  %30 = load double, double* %29, align 8, !dbg !314
  %31 = fsub double %27, %30, !dbg !315
  call void @fSubHandler(double %27, double %30, double %31, i64 93964097141800, i64 93964097144280, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 93964097145952, i32 11, i32 48), !dbg !316
  %32 = fdiv double %24, %31, !dbg !316
  call void @fDivHandler(double %24, double %31, double %32, i64 93964097140576, i64 93964097145952, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 93964097146368, i32 11, i32 39), !dbg !302
  store double %32, double* %10, align 8, !dbg !302
  call void @llvm.dbg.declare(metadata double* %11, metadata !317, metadata !89), !dbg !318
  %33 = load double, double* %10, align 8, !dbg !319
  %34 = fmul double 2.000000e+00, %33, !dbg !320
  call void @fMulHandler(double 2.000000e+00, double %33, double %34, i64 0, i64 93964097149416, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 93964097149824, i32 12, i32 19), !dbg !318
  store double %34, double* %11, align 8, !dbg !318
  call void @llvm.dbg.declare(metadata double* %12, metadata !321, metadata !89), !dbg !322
  store double 0.000000e+00, double* %12, align 8, !dbg !322
  %35 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !323
  %36 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %35, i32 0, i32 1, !dbg !325
  %37 = load i32, i32* %36, align 8, !dbg !325
  store i32 %37, i32* %7, align 4, !dbg !326
  br label %38, !dbg !327

; <label>:38:                                     ; preds = %77, %3
  %39 = load i32, i32* %7, align 4, !dbg !328
  %40 = icmp sge i32 %39, 1, !dbg !331
  %41 = sext i32 %39 to i64, !dbg !332
  %42 = call i1 @iCmpInstHandler(i64 %41, i64 1, i1 %40, i32 39, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 93964097158400, i32 16, i32 23), !dbg !332
  br i1 %42, label %43, label %80, !dbg !332

; <label>:43:                                     ; preds = %38
  call void @llvm.dbg.declare(metadata double* %13, metadata !333, metadata !89), !dbg !335
  %44 = load double, double* %8, align 8, !dbg !336
  store double %44, double* %13, align 8, !dbg !335
  %45 = load double, double* %11, align 8, !dbg !337
  %46 = load double, double* %8, align 8, !dbg !338
  %47 = fmul double %45, %46, !dbg !339
  call void @fMulHandler(double %45, double %46, double %47, i64 93964097162600, i64 93964097162984, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 93964097163392, i32 18, i32 11), !dbg !340
  %48 = load double, double* %9, align 8, !dbg !340
  %49 = fsub double %47, %48, !dbg !341
  call void @fSubHandler(double %47, double %48, double %49, i64 93964097163392, i64 93964097163784, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 93964097164192, i32 18, i32 14), !dbg !342
  %50 = load i32, i32* %7, align 4, !dbg !342
  %51 = sext i32 %50 to i64, !dbg !343
  %52 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !343
  %53 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %52, i32 0, i32 0, !dbg !344
  %54 = load double*, double** %53, align 8, !dbg !344
  %55 = getelementptr inbounds double, double* %54, i64 %51, !dbg !343
  %56 = load double, double* %55, align 8, !dbg !343
  %57 = fadd double %49, %56, !dbg !345
  call void @fAddHandler(double %49, double %56, double %57, i64 93964097164192, i64 93964097169240, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 93964097169360, i32 18, i32 19), !dbg !346
  store double %57, double* %8, align 8, !dbg !346
  %58 = load double, double* %11, align 8, !dbg !347
  %59 = load double, double* %13, align 8, !dbg !348
  %60 = fmul double %58, %59, !dbg !349
  call void @fMulHandler(double %58, double %59, double %60, i64 93964097170168, i64 93964097170552, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 93964097170960, i32 19, i32 17), !dbg !350
  %61 = call double @fabs(double %60) #1, !dbg !350
  %62 = load double, double* %9, align 8, !dbg !351
  %63 = call double @fabs(double %62) #1, !dbg !352
  %64 = fadd double %61, %63, !dbg !354
  call void @fAddHandler(double %61, double %63, double %64, i64 93964097171440, i64 93964097172368, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 93964097172848, i32 19, i32 24), !dbg !355
  %65 = load i32, i32* %7, align 4, !dbg !355
  %66 = sext i32 %65 to i64, !dbg !356
  %67 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !356
  %68 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %67, i32 0, i32 0, !dbg !357
  %69 = load double*, double** %68, align 8, !dbg !357
  %70 = getelementptr inbounds double, double* %69, i64 %66, !dbg !356
  %71 = load double, double* %70, align 8, !dbg !356
  %72 = call double @fabs(double %71) #1, !dbg !358
  %73 = fadd double %64, %72, !dbg !360
  call void @fAddHandler(double %64, double %72, double %73, i64 93964097172848, i64 93964097178080, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 93964097178560, i32 19, i32 35), !dbg !361
  %74 = load double, double* %12, align 8, !dbg !361
  %75 = fadd double %74, %73, !dbg !361
  call void @fAddHandler(double %74, double %73, double %75, i64 93964097178952, i64 93964097178560, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 93964097179360, i32 19, i32 7), !dbg !361
  store double %75, double* %12, align 8, !dbg !361
  %76 = load double, double* %13, align 8, !dbg !362
  store double %76, double* %9, align 8, !dbg !363
  br label %77, !dbg !364

; <label>:77:                                     ; preds = %43
  %78 = load i32, i32* %7, align 4, !dbg !365
  %79 = add nsw i32 %78, -1, !dbg !365
  store i32 %79, i32* %7, align 4, !dbg !365
  br label %38, !dbg !367, !llvm.loop !368

; <label>:80:                                     ; preds = %38
  call void @llvm.dbg.declare(metadata double* %14, metadata !370, metadata !89), !dbg !372
  %81 = load double, double* %8, align 8, !dbg !373
  store double %81, double* %14, align 8, !dbg !372
  %82 = load double, double* %10, align 8, !dbg !374
  %83 = load double, double* %8, align 8, !dbg !375
  %84 = fmul double %82, %83, !dbg !376
  call void @fMulHandler(double %82, double %83, double %84, i64 93964097188360, i64 93964097188744, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 93964097189152, i32 25, i32 10), !dbg !377
  %85 = load double, double* %9, align 8, !dbg !377
  %86 = fsub double %84, %85, !dbg !378
  call void @fSubHandler(double %84, double %85, double %86, i64 93964097189152, i64 93964097189544, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 93964097189952, i32 25, i32 13), !dbg !379
  %87 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !379
  %88 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %87, i32 0, i32 0, !dbg !380
  %89 = load double*, double** %88, align 8, !dbg !380
  %90 = getelementptr inbounds double, double* %89, i64 0, !dbg !379
  %91 = load double, double* %90, align 8, !dbg !379
  %92 = fmul double 5.000000e-01, %91, !dbg !381
  call void @fMulHandler(double 5.000000e-01, double %91, double %92, i64 0, i64 93964097194584, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 93964097194800, i32 25, i32 24), !dbg !382
  %93 = fadd double %86, %92, !dbg !382
  call void @fAddHandler(double %86, double %92, double %93, i64 93964097189952, i64 93964097194800, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 93964097195184, i32 25, i32 18), !dbg !383
  store double %93, double* %8, align 8, !dbg !383
  %94 = load double, double* %10, align 8, !dbg !384
  %95 = load double, double* %14, align 8, !dbg !385
  %96 = fmul double %94, %95, !dbg !386
  call void @fMulHandler(double %94, double %95, double %96, i64 93964097195992, i64 93964097196376, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 93964097196784, i32 26, i32 16), !dbg !387
  %97 = call double @fabs(double %96) #1, !dbg !387
  %98 = load double, double* %9, align 8, !dbg !388
  %99 = call double @fabs(double %98) #1, !dbg !389
  %100 = fadd double %97, %99, !dbg !391
  call void @fAddHandler(double %97, double %99, double %100, i64 93964097197264, i64 93964097198192, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 93964097198672, i32 26, i32 23), !dbg !392
  %101 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !392
  %102 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %101, i32 0, i32 0, !dbg !393
  %103 = load double*, double** %102, align 8, !dbg !393
  %104 = getelementptr inbounds double, double* %103, i64 0, !dbg !392
  %105 = load double, double* %104, align 8, !dbg !392
  %106 = call double @fabs(double %105) #1, !dbg !394
  %107 = fmul double 5.000000e-01, %106, !dbg !396
  call void @fMulHandler(double 5.000000e-01, double %106, double %107, i64 0, i64 93964097203424, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 93964097203936, i32 26, i32 40), !dbg !397
  %108 = fadd double %100, %107, !dbg !397
  call void @fAddHandler(double %100, double %107, double %108, i64 93964097198672, i64 93964097203936, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 93964097204320, i32 26, i32 34), !dbg !398
  %109 = load double, double* %12, align 8, !dbg !398
  %110 = fadd double %109, %108, !dbg !398
  call void @fAddHandler(double %109, double %108, double %110, i64 93964097204712, i64 93964097204320, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 93964097205120, i32 26, i32 7), !dbg !398
  store double %110, double* %12, align 8, !dbg !398
  %111 = load double, double* %8, align 8, !dbg !399
  %112 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !400
  %113 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %112, i32 0, i32 0, !dbg !401
  store double %111, double* %113, align 8, !dbg !402
  %114 = load double, double* %12, align 8, !dbg !403
  %115 = fmul double 0x3CB0000000000000, %114, !dbg !404
  call void @fMulHandler(double 0x3CB0000000000000, double %114, double %115, i64 0, i64 93964097208536, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 93964097208944, i32 30, i32 33), !dbg !405
  %116 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !405
  %117 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %116, i32 0, i32 1, !dbg !406
  %118 = load i32, i32* %117, align 8, !dbg !406
  %119 = sext i32 %118 to i64, !dbg !407
  %120 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !407
  %121 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %120, i32 0, i32 0, !dbg !408
  %122 = load double*, double** %121, align 8, !dbg !408
  %123 = getelementptr inbounds double, double* %122, i64 %119, !dbg !407
  %124 = load double, double* %123, align 8, !dbg !407
  %125 = call double @fabs(double %124) #1, !dbg !409
  %126 = fadd double %115, %125, !dbg !410
  call void @fAddHandler(double %115, double %125, double %126, i64 93964097208944, i64 93964097216272, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0), i64 93964097216752, i32 30, i32 37), !dbg !411
  %127 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !411
  %128 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %127, i32 0, i32 1, !dbg !412
  store double %126, double* %128, align 8, !dbg !413
  ret i32 0, !dbg !414
}

; Function Attrs: nounwind readnone
declare double @floor(double) #3

; Function Attrs: nounwind
declare double @exp(double) #5

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_debye_2_e(double, %struct.gsl_sf_result_struct*) #0 !dbg !415 {
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
  %14 = alloca double, align 8
  %15 = alloca i32, align 4
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !416, metadata !89), !dbg !417
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %5, metadata !418, metadata !89), !dbg !419
  call void @llvm.dbg.declare(metadata double* %6, metadata !420, metadata !89), !dbg !421
  store double 0x40133BA004F00621, double* %6, align 8, !dbg !421
  call void @llvm.dbg.declare(metadata double* %7, metadata !422, metadata !89), !dbg !423
  store double 0x4086232BDD7ABCD2, double* %7, align 8, !dbg !423
  %18 = load double, double* %4, align 8, !dbg !424
  %19 = fcmp olt double %18, 0.000000e+00, !dbg !426
  %20 = call i1 @fCmpInstHandler(double %18, double 0.000000e+00, i1 %19, i32 4, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @5, i32 0, i32 0), i64 93964097232096, i32 254, i32 8), !dbg !427
  br i1 %20, label %21, label %30, !dbg !427

; <label>:21:                                     ; preds = %2
  br label %22, !dbg !428, !llvm.loop !430

; <label>:22:                                     ; preds = %21
  %23 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !431
  %24 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %23, i32 0, i32 0, !dbg !431
  store double 0x7FF8000000000000, double* %24, align 8, !dbg !431
  %25 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !431
  %26 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %25, i32 0, i32 1, !dbg !431
  store double 0x7FF8000000000000, double* %26, align 8, !dbg !431
  br label %27, !dbg !431, !llvm.loop !434

; <label>:27:                                     ; preds = %22
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i32 255, i32 1), !dbg !436
  store i32 1, i32* %3, align 4, !dbg !436
  br label %199, !dbg !436
                                                  ; No predecessors!
  br label %29, !dbg !439

; <label>:29:                                     ; preds = %28
  br label %199, !dbg !441

; <label>:30:                                     ; preds = %2
  %31 = load double, double* %4, align 8, !dbg !442
  %32 = fcmp olt double %31, 0x3E66A09E667F3BCD, !dbg !444
  %33 = call i1 @fCmpInstHandler(double %31, double 0x3E66A09E667F3BCD, i1 %32, i32 4, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @5, i32 0, i32 0), i64 93964097240768, i32 257, i32 13), !dbg !445
  br i1 %33, label %34, label %51, !dbg !445

; <label>:34:                                     ; preds = %30
  %35 = load double, double* %4, align 8, !dbg !446
  %36 = fdiv double %35, 3.000000e+00, !dbg !448
  call void @fDivHandler(double %35, double 3.000000e+00, double %36, i64 93964097241880, i64 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @5, i32 0, i32 0), i64 93964097242320, i32 258, i32 26), !dbg !449
  %37 = fsub double 1.000000e+00, %36, !dbg !449
  call void @fSubHandler(double 1.000000e+00, double %36, double %37, i64 0, i64 93964097242320, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @5, i32 0, i32 0), i64 93964097242736, i32 258, i32 23), !dbg !450
  %38 = load double, double* %4, align 8, !dbg !450
  %39 = load double, double* %4, align 8, !dbg !451
  %40 = fmul double %38, %39, !dbg !452
  call void @fMulHandler(double %38, double %39, double %40, i64 93964097243096, i64 93964097243480, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @5, i32 0, i32 0), i64 93964097243888, i32 258, i32 34), !dbg !453
  %41 = fdiv double %40, 2.400000e+01, !dbg !453
  call void @fDivHandler(double %40, double 2.400000e+01, double %41, i64 93964097243888, i64 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @5, i32 0, i32 0), i64 93964097244400, i32 258, i32 36), !dbg !454
  %42 = fadd double %37, %41, !dbg !454
  call void @fAddHandler(double %37, double %41, double %42, i64 93964097242736, i64 93964097244400, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @5, i32 0, i32 0), i64 93964097244784, i32 258, i32 31), !dbg !455
  %43 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !455
  %44 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %43, i32 0, i32 0, !dbg !456
  store double %42, double* %44, align 8, !dbg !457
  %45 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !458
  %46 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %45, i32 0, i32 0, !dbg !459
  %47 = load double, double* %46, align 8, !dbg !459
  %48 = fmul double 0x3CB0000000000000, %47, !dbg !460
  call void @fMulHandler(double 0x3CB0000000000000, double %47, double %48, i64 0, i64 93964097247256, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @5, i32 0, i32 0), i64 93964097248928, i32 259, i32 35), !dbg !461
  %49 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !461
  %50 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %49, i32 0, i32 1, !dbg !462
  store double %48, double* %50, align 8, !dbg !463
  store i32 0, i32* %3, align 4, !dbg !464
  br label %199, !dbg !464

; <label>:51:                                     ; preds = %30
  %52 = load double, double* %4, align 8, !dbg !465
  %53 = fcmp ole double %52, 4.000000e+00, !dbg !467
  %54 = call i1 @fCmpInstHandler(double %52, double 4.000000e+00, i1 %53, i32 5, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @5, i32 0, i32 0), i64 93964097253008, i32 262, i32 13), !dbg !468
  br i1 %54, label %55, label %78, !dbg !468

; <label>:55:                                     ; preds = %51
  call void @llvm.dbg.declare(metadata double* %8, metadata !469, metadata !89), !dbg !471
  %56 = load double, double* %4, align 8, !dbg !472
  %57 = load double, double* %4, align 8, !dbg !473
  %58 = fmul double %56, %57, !dbg !474
  call void @fMulHandler(double %56, double %57, double %58, i64 93964097255144, i64 93964097255496, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @5, i32 0, i32 0), i64 93964097255904, i32 263, i32 23), !dbg !475
  %59 = fdiv double %58, 8.000000e+00, !dbg !475
  call void @fDivHandler(double %58, double 8.000000e+00, double %59, i64 93964097255904, i64 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @5, i32 0, i32 0), i64 93964097256352, i32 263, i32 25), !dbg !476
  %60 = fsub double %59, 1.000000e+00, !dbg !476
  call void @fSubHandler(double %59, double 1.000000e+00, double %60, i64 93964097256352, i64 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @5, i32 0, i32 0), i64 93964097256768, i32 263, i32 30), !dbg !471
  store double %60, double* %8, align 8, !dbg !471
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %9, metadata !477, metadata !89), !dbg !478
  %61 = load double, double* %8, align 8, !dbg !479
  %62 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @adeb2_cs, double %61, %struct.gsl_sf_result_struct* %9), !dbg !480
  %63 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %9, i32 0, i32 0, !dbg !481
  %64 = load double, double* %63, align 8, !dbg !481
  %65 = load double, double* %4, align 8, !dbg !482
  %66 = fdiv double %65, 3.000000e+00, !dbg !483
  call void @fDivHandler(double %65, double 3.000000e+00, double %66, i64 93964097262936, i64 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @5, i32 0, i32 0), i64 93964097263376, i32 266, i32 28), !dbg !484
  %67 = fsub double %64, %66, !dbg !484
  call void @fSubHandler(double %64, double %66, double %67, i64 93964097261288, i64 93964097263376, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @5, i32 0, i32 0), i64 93964097263760, i32 266, i32 25), !dbg !485
  %68 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !485
  %69 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %68, i32 0, i32 0, !dbg !486
  store double %67, double* %69, align 8, !dbg !487
  %70 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %9, i32 0, i32 1, !dbg !488
  %71 = load double, double* %70, align 8, !dbg !488
  %72 = load double, double* %4, align 8, !dbg !489
  %73 = fmul double 0x3CB0000000000000, %72, !dbg !490
  call void @fMulHandler(double 0x3CB0000000000000, double %72, double %73, i64 0, i64 93964097267496, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @5, i32 0, i32 0), i64 93964097267904, i32 267, i32 43), !dbg !491
  %74 = fdiv double %73, 3.000000e+00, !dbg !491
  call void @fDivHandler(double %73, double 3.000000e+00, double %74, i64 93964097267904, i64 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @5, i32 0, i32 0), i64 93964097268352, i32 267, i32 46), !dbg !492
  %75 = fadd double %71, %74, !dbg !492
  call void @fAddHandler(double %71, double %74, double %75, i64 93964097265848, i64 93964097268352, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @5, i32 0, i32 0), i64 93964097268736, i32 267, i32 25), !dbg !493
  %76 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !493
  %77 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %76, i32 0, i32 1, !dbg !494
  store double %75, double* %77, align 8, !dbg !495
  store i32 0, i32* %3, align 4, !dbg !496
  br label %199, !dbg !496

; <label>:78:                                     ; preds = %51
  %79 = load double, double* %4, align 8, !dbg !497
  %80 = fcmp olt double %79, 0x4041ACDD632F662A, !dbg !499
  %81 = call i1 @fCmpInstHandler(double %79, double 0x4041ACDD632F662A, i1 %80, i32 4, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @5, i32 0, i32 0), i64 93964097272784, i32 270, i32 13), !dbg !500
  br i1 %81, label %82, label %145, !dbg !500

; <label>:82:                                     ; preds = %78
  call void @llvm.dbg.declare(metadata i32* %10, metadata !501, metadata !89), !dbg !503
  %83 = load double, double* %4, align 8, !dbg !504
  %84 = fdiv double 0x4086232BDD7ABCD2, %83, !dbg !505
  call void @fDivHandler(double 0x4086232BDD7ABCD2, double %83, double %84, i64 0, i64 93964097274952, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @5, i32 0, i32 0), i64 93964097275328, i32 271, i32 32), !dbg !506
  %85 = call double @floor(double %84) #1, !dbg !506
  %86 = fptosi double %85 to i32, !dbg !506
  store i32 %86, i32* %10, align 4, !dbg !503
  call void @llvm.dbg.declare(metadata double* %11, metadata !507, metadata !89), !dbg !508
  %87 = load double, double* %4, align 8, !dbg !509
  %88 = fsub double -0.000000e+00, %87, !dbg !510
  call void @fSubHandler(double -0.000000e+00, double %87, double %88, i64 0, i64 93964097280712, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @5, i32 0, i32 0), i64 93964097281088, i32 272, i32 28), !dbg !511
  %89 = call double @exp(double %88) #6, !dbg !511
  call void @callOneArgHandler(i32 11, double %88, double %89, i64 93964097281088, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @5, i32 0, i32 0), i64 93964097281568, i32 272, i32 24), !dbg !508
  store double %89, double* %11, align 8, !dbg !508
  call void @llvm.dbg.declare(metadata double* %12, metadata !512, metadata !89), !dbg !513
  %90 = load i32, i32* %10, align 4, !dbg !514
  %91 = sitofp i32 %90 to double, !dbg !514
  %92 = load double, double* %4, align 8, !dbg !515
  %93 = fmul double %91, %92, !dbg !516
  call void @fMulHandler(double %91, double %92, double %93, i64 93964097285176, i64 93964097286824, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @5, i32 0, i32 0), i64 93964097287232, i32 273, i32 23), !dbg !513
  store double %93, double* %12, align 8, !dbg !513
  call void @llvm.dbg.declare(metadata double* %13, metadata !517, metadata !89), !dbg !518
  %94 = load i32, i32* %10, align 4, !dbg !519
  %95 = sitofp i32 %94 to double, !dbg !519
  store double %95, double* %13, align 8, !dbg !518
  call void @llvm.dbg.declare(metadata double* %14, metadata !520, metadata !89), !dbg !521
  store double 0.000000e+00, double* %14, align 8, !dbg !521
  call void @llvm.dbg.declare(metadata i32* %15, metadata !522, metadata !89), !dbg !523
  %96 = load i32, i32* %10, align 4, !dbg !524
  store i32 %96, i32* %15, align 4, !dbg !526
  br label %97, !dbg !527

; <label>:97:                                     ; preds = %123, %82
  %98 = load i32, i32* %15, align 4, !dbg !528
  %99 = icmp sge i32 %98, 1, !dbg !531
  %100 = sext i32 %98 to i64, !dbg !532
  %101 = call i1 @iCmpInstHandler(i64 %100, i64 1, i1 %99, i32 39, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @5, i32 0, i32 0), i64 93964097299632, i32 277, i32 18), !dbg !532
  br i1 %101, label %102, label %126, !dbg !532

; <label>:102:                                    ; preds = %97
  %103 = load double, double* %11, align 8, !dbg !533
  %104 = load double, double* %14, align 8, !dbg !535
  %105 = fmul double %104, %103, !dbg !535
  call void @fMulHandler(double %104, double %103, double %105, i64 93964097301064, i64 93964097300744, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @5, i32 0, i32 0), i64 93964097301472, i32 278, i32 11), !dbg !535
  store double %105, double* %14, align 8, !dbg !535
  %106 = load double, double* %12, align 8, !dbg !536
  %107 = fdiv double 2.000000e+00, %106, !dbg !537
  call void @fDivHandler(double 2.000000e+00, double %106, double %107, i64 0, i64 93964097303256, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @5, i32 0, i32 0), i64 93964097303696, i32 279, i32 24), !dbg !538
  %108 = fadd double 1.000000e+00, %107, !dbg !538
  call void @fAddHandler(double 1.000000e+00, double %107, double %108, i64 0, i64 93964097303696, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @5, i32 0, i32 0), i64 93964097304112, i32 279, i32 19), !dbg !539
  %109 = load double, double* %12, align 8, !dbg !539
  %110 = load double, double* %12, align 8, !dbg !540
  %111 = fmul double %109, %110, !dbg !541
  call void @fMulHandler(double %109, double %110, double %111, i64 93964097304472, i64 93964097304856, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @5, i32 0, i32 0), i64 93964097305264, i32 279, i32 37), !dbg !542
  %112 = fdiv double 2.000000e+00, %111, !dbg !542
  call void @fDivHandler(double 2.000000e+00, double %111, double %112, i64 0, i64 93964097305264, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @5, i32 0, i32 0), i64 93964097305712, i32 279, i32 33), !dbg !543
  %113 = fadd double %108, %112, !dbg !543
  call void @fAddHandler(double %108, double %112, double %113, i64 93964097304112, i64 93964097305712, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @5, i32 0, i32 0), i64 93964097306096, i32 279, i32 28), !dbg !544
  %114 = load double, double* %13, align 8, !dbg !544
  %115 = fdiv double %113, %114, !dbg !545
  call void @fDivHandler(double %113, double %114, double %115, i64 93964097306096, i64 93964097306488, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @5, i32 0, i32 0), i64 93964097306896, i32 279, i32 43), !dbg !546
  %116 = load double, double* %14, align 8, !dbg !546
  %117 = fadd double %116, %115, !dbg !546
  call void @fAddHandler(double %116, double %115, double %117, i64 93964097307288, i64 93964097306896, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @5, i32 0, i32 0), i64 93964097307696, i32 279, i32 11), !dbg !546
  store double %117, double* %14, align 8, !dbg !546
  %118 = load double, double* %13, align 8, !dbg !547
  %119 = fsub double %118, 1.000000e+00, !dbg !547
  call void @fSubHandler(double %118, double 1.000000e+00, double %119, i64 93964097309480, i64 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @5, i32 0, i32 0), i64 93964097309920, i32 280, i32 10), !dbg !547
  store double %119, double* %13, align 8, !dbg !547
  %120 = load double, double* %4, align 8, !dbg !548
  %121 = load double, double* %12, align 8, !dbg !549
  %122 = fsub double %121, %120, !dbg !549
  call void @fSubHandler(double %121, double %120, double %122, i64 93964097312056, i64 93964097311704, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @5, i32 0, i32 0), i64 93964097312464, i32 281, i32 10), !dbg !549
  store double %122, double* %12, align 8, !dbg !549
  br label %123, !dbg !550

; <label>:123:                                    ; preds = %102
  %124 = load i32, i32* %15, align 4, !dbg !551
  %125 = add nsw i32 %124, -1, !dbg !551
  store i32 %125, i32* %15, align 4, !dbg !551
  br label %97, !dbg !553, !llvm.loop !554

; <label>:126:                                    ; preds = %97
  %127 = load double, double* %4, align 8, !dbg !556
  %128 = load double, double* %4, align 8, !dbg !557
  %129 = fmul double %127, %128, !dbg !558
  call void @fMulHandler(double %127, double %128, double %129, i64 93964097317576, i64 93964097317896, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @5, i32 0, i32 0), i64 93964097318304, i32 283, i32 34), !dbg !559
  %130 = fdiv double 0x40133BA004F00621, %129, !dbg !559
  call void @fDivHandler(double 0x40133BA004F00621, double %129, double %130, i64 0, i64 93964097318304, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @5, i32 0, i32 0), i64 93964097318720, i32 283, i32 31), !dbg !560
  %131 = load double, double* %14, align 8, !dbg !560
  %132 = fmul double 2.000000e+00, %131, !dbg !561
  call void @fMulHandler(double 2.000000e+00, double %131, double %132, i64 0, i64 93964097319112, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @5, i32 0, i32 0), i64 93964097319552, i32 283, i32 44), !dbg !562
  %133 = load double, double* %11, align 8, !dbg !562
  %134 = fmul double %132, %133, !dbg !563
  call void @fMulHandler(double %132, double %133, double %134, i64 93964097319552, i64 93964097319912, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @5, i32 0, i32 0), i64 93964097320320, i32 283, i32 50), !dbg !564
  %135 = fsub double %130, %134, !dbg !564
  call void @fSubHandler(double %130, double %134, double %135, i64 93964097318720, i64 93964097320320, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @5, i32 0, i32 0), i64 93964097322800, i32 283, i32 38), !dbg !565
  %136 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !565
  %137 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %136, i32 0, i32 0, !dbg !566
  store double %135, double* %137, align 8, !dbg !567
  %138 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !568
  %139 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %138, i32 0, i32 0, !dbg !569
  %140 = load double, double* %139, align 8, !dbg !569
  %141 = call double @fabs(double %140) #1, !dbg !570
  %142 = fmul double 0x3CB0000000000000, %141, !dbg !571
  call void @fMulHandler(double 0x3CB0000000000000, double %141, double %142, i64 0, i64 93964097327008, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @5, i32 0, i32 0), i64 93964097327488, i32 284, i32 35), !dbg !572
  %143 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !572
  %144 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %143, i32 0, i32 1, !dbg !573
  store double %142, double* %144, align 8, !dbg !574
  store i32 0, i32* %3, align 4, !dbg !575
  br label %199, !dbg !575

; <label>:145:                                    ; preds = %78
  %146 = load double, double* %4, align 8, !dbg !576
  %147 = fcmp olt double %146, 0x4086232BDD7ABCD2, !dbg !578
  %148 = call i1 @fCmpInstHandler(double %146, double 0x4086232BDD7ABCD2, i1 %147, i32 4, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @5, i32 0, i32 0), i64 93964097331536, i32 287, i32 13), !dbg !579
  br i1 %148, label %149, label %176, !dbg !579

; <label>:149:                                    ; preds = %145
  call void @llvm.dbg.declare(metadata double* %16, metadata !580, metadata !89), !dbg !582
  %150 = load double, double* %4, align 8, !dbg !583
  %151 = load double, double* %4, align 8, !dbg !584
  %152 = fmul double %150, %151, !dbg !585
  call void @fMulHandler(double %150, double %151, double %152, i64 93964097333704, i64 93964097334056, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @5, i32 0, i32 0), i64 93964097334464, i32 288, i32 25), !dbg !582
  store double %152, double* %16, align 8, !dbg !582
  call void @llvm.dbg.declare(metadata double* %17, metadata !586, metadata !89), !dbg !587
  %153 = load double, double* %4, align 8, !dbg !588
  %154 = fmul double 2.000000e+00, %153, !dbg !589
  call void @fMulHandler(double 2.000000e+00, double %153, double %154, i64 0, i64 93964097337656, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @5, i32 0, i32 0), i64 93964097338064, i32 289, i32 33), !dbg !590
  %155 = fadd double 2.000000e+00, %154, !dbg !590
  call void @fAddHandler(double 2.000000e+00, double %154, double %155, i64 0, i64 93964097338064, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @5, i32 0, i32 0), i64 93964097338480, i32 289, i32 28), !dbg !591
  %156 = load double, double* %16, align 8, !dbg !591
  %157 = fadd double %155, %156, !dbg !592
  call void @fAddHandler(double %155, double %156, double %157, i64 93964097338480, i64 93964097338840, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @5, i32 0, i32 0), i64 93964097339248, i32 289, i32 36), !dbg !587
  store double %157, double* %17, align 8, !dbg !587
  %158 = load double, double* %17, align 8, !dbg !593
  %159 = fmul double 2.000000e+00, %158, !dbg !594
  call void @fMulHandler(double 2.000000e+00, double %158, double %159, i64 0, i64 93964097341320, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @5, i32 0, i32 0), i64 93964097341760, i32 290, i32 39), !dbg !595
  %160 = load double, double* %4, align 8, !dbg !595
  %161 = fsub double -0.000000e+00, %160, !dbg !596
  call void @fSubHandler(double -0.000000e+00, double %160, double %161, i64 0, i64 93964097342120, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @5, i32 0, i32 0), i64 93964097342528, i32 290, i32 51), !dbg !597
  %162 = call double @exp(double %161) #6, !dbg !597
  call void @callOneArgHandler(i32 11, double %161, double %162, i64 93964097342528, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @5, i32 0, i32 0), i64 93964097343008, i32 290, i32 47), !dbg !598
  %163 = fmul double %159, %162, !dbg !598
  call void @fMulHandler(double %159, double %162, double %163, i64 93964097341760, i64 93964097343008, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @5, i32 0, i32 0), i64 93964097343488, i32 290, i32 45), !dbg !599
  %164 = fsub double 0x40133BA004F00621, %163, !dbg !599
  call void @fSubHandler(double 0x40133BA004F00621, double %163, double %164, i64 0, i64 93964097343488, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @5, i32 0, i32 0), i64 93964097343904, i32 290, i32 33), !dbg !600
  %165 = load double, double* %16, align 8, !dbg !600
  %166 = fdiv double %164, %165, !dbg !601
  call void @fDivHandler(double %164, double %165, double %166, i64 93964097343904, i64 93964097344296, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @5, i32 0, i32 0), i64 93964097344704, i32 290, i32 56), !dbg !602
  %167 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !602
  %168 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %167, i32 0, i32 0, !dbg !603
  store double %166, double* %168, align 8, !dbg !604
  %169 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !605
  %170 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %169, i32 0, i32 0, !dbg !606
  %171 = load double, double* %170, align 8, !dbg !606
  %172 = call double @fabs(double %171) #1, !dbg !607
  %173 = fmul double 0x3CB0000000000000, %172, !dbg !608
  call void @fMulHandler(double 0x3CB0000000000000, double %172, double %173, i64 0, i64 93964097348912, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @5, i32 0, i32 0), i64 93964097349392, i32 291, i32 35), !dbg !609
  %174 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !609
  %175 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %174, i32 0, i32 1, !dbg !610
  store double %173, double* %175, align 8, !dbg !611
  store i32 0, i32* %3, align 4, !dbg !612
  br label %199, !dbg !612

; <label>:176:                                    ; preds = %145
  %177 = load double, double* %4, align 8, !dbg !613
  %178 = fdiv double 0x40133BA004F00621, %177, !dbg !615
  call void @fDivHandler(double 0x40133BA004F00621, double %177, double %178, i64 0, i64 93964097353096, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @5, i32 0, i32 0), i64 93964097353440, i32 295, i32 32), !dbg !616
  %179 = load double, double* %4, align 8, !dbg !616
  %180 = fdiv double %178, %179, !dbg !617
  call void @fDivHandler(double %178, double %179, double %180, i64 93964097353440, i64 93964097353832, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @5, i32 0, i32 0), i64 93964097354240, i32 295, i32 35), !dbg !618
  %181 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !618
  %182 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %181, i32 0, i32 0, !dbg !619
  store double %180, double* %182, align 8, !dbg !620
  %183 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !621
  %184 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %183, i32 0, i32 0, !dbg !622
  %185 = load double, double* %184, align 8, !dbg !622
  %186 = fmul double 0x3CB0000000000000, %185, !dbg !623
  call void @fMulHandler(double 0x3CB0000000000000, double %185, double %186, i64 0, i64 93964097356712, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @5, i32 0, i32 0), i64 93964097358384, i32 296, i32 35), !dbg !624
  %187 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !624
  %188 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %187, i32 0, i32 1, !dbg !625
  store double %186, double* %188, align 8, !dbg !626
  %189 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !627
  %190 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %189, i32 0, i32 0, !dbg !627
  %191 = load double, double* %190, align 8, !dbg !627
  %192 = call double @fabs(double %191) #1, !dbg !627
  %193 = fcmp olt double %192, 0x10000000000000, !dbg !627
  %194 = call i1 @fCmpInstHandler(double %192, double 0x10000000000000, i1 %193, i32 4, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @5, i32 0, i32 0), i64 93964097362592, i32 297, i32 5), !dbg !629
  br i1 %194, label %195, label %198, !dbg !629

; <label>:195:                                    ; preds = %176
  br label %196, !dbg !630, !llvm.loop !632

; <label>:196:                                    ; preds = %195
  call void @gsl_error(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i32 297, i32 15), !dbg !633
  store i32 15, i32* %3, align 4, !dbg !633
  br label %199, !dbg !633
                                                  ; No predecessors!
  br label %198, !dbg !636

; <label>:198:                                    ; preds = %197, %176
  store i32 0, i32* %3, align 4, !dbg !638
  br label %199, !dbg !638

; <label>:199:                                    ; preds = %198, %196, %149, %126, %55, %34, %29, %27
  %200 = load i32, i32* %3, align 4, !dbg !639
  ret i32 %200, !dbg !639
}

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_debye_3_e(double, %struct.gsl_sf_result_struct*) #0 !dbg !640 {
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
  %14 = alloca double, align 8
  %15 = alloca i32, align 4
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !641, metadata !89), !dbg !642
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %5, metadata !643, metadata !89), !dbg !644
  call void @llvm.dbg.declare(metadata double* %6, metadata !645, metadata !89), !dbg !646
  store double 0x40337B587020D351, double* %6, align 8, !dbg !646
  call void @llvm.dbg.declare(metadata double* %7, metadata !647, metadata !89), !dbg !648
  store double 0x4086232BDD7ABCD2, double* %7, align 8, !dbg !648
  %19 = load double, double* %4, align 8, !dbg !649
  %20 = fcmp olt double %19, 0.000000e+00, !dbg !651
  %21 = call i1 @fCmpInstHandler(double %19, double 0.000000e+00, i1 %20, i32 4, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @7, i32 0, i32 0), i64 93964097380160, i32 310, i32 8), !dbg !652
  br i1 %21, label %22, label %31, !dbg !652

; <label>:22:                                     ; preds = %2
  br label %23, !dbg !653, !llvm.loop !655

; <label>:23:                                     ; preds = %22
  %24 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !656
  %25 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %24, i32 0, i32 0, !dbg !656
  store double 0x7FF8000000000000, double* %25, align 8, !dbg !656
  %26 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !656
  %27 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %26, i32 0, i32 1, !dbg !656
  store double 0x7FF8000000000000, double* %27, align 8, !dbg !656
  br label %28, !dbg !656, !llvm.loop !659

; <label>:28:                                     ; preds = %23
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i32 311, i32 1), !dbg !661
  store i32 1, i32* %3, align 4, !dbg !661
  br label %212, !dbg !661
                                                  ; No predecessors!
  br label %30, !dbg !664

; <label>:30:                                     ; preds = %29
  br label %212, !dbg !666

; <label>:31:                                     ; preds = %2
  %32 = load double, double* %4, align 8, !dbg !667
  %33 = fcmp olt double %32, 0x3E66A09E667F3BCD, !dbg !669
  %34 = call i1 @fCmpInstHandler(double %32, double 0x3E66A09E667F3BCD, i1 %33, i32 4, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @7, i32 0, i32 0), i64 93964097388864, i32 313, i32 13), !dbg !670
  br i1 %34, label %35, label %53, !dbg !670

; <label>:35:                                     ; preds = %31
  %36 = load double, double* %4, align 8, !dbg !671
  %37 = fmul double 3.000000e+00, %36, !dbg !673
  call void @fMulHandler(double 3.000000e+00, double %36, double %37, i64 0, i64 93964097389976, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @7, i32 0, i32 0), i64 93964097390352, i32 314, i32 28), !dbg !674
  %38 = fdiv double %37, 8.000000e+00, !dbg !674
  call void @fDivHandler(double %37, double 8.000000e+00, double %38, i64 93964097390352, i64 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @7, i32 0, i32 0), i64 93964097390768, i32 314, i32 30), !dbg !675
  %39 = fsub double 1.000000e+00, %38, !dbg !675
  call void @fSubHandler(double 1.000000e+00, double %38, double %39, i64 0, i64 93964097390768, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @7, i32 0, i32 0), i64 93964097391184, i32 314, i32 23), !dbg !676
  %40 = load double, double* %4, align 8, !dbg !676
  %41 = load double, double* %4, align 8, !dbg !677
  %42 = fmul double %40, %41, !dbg !678
  call void @fMulHandler(double %40, double %41, double %42, i64 93964097391544, i64 93964097391928, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @7, i32 0, i32 0), i64 93964097392336, i32 314, i32 38), !dbg !679
  %43 = fdiv double %42, 2.000000e+01, !dbg !679
  call void @fDivHandler(double %42, double 2.000000e+01, double %43, i64 93964097392336, i64 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @7, i32 0, i32 0), i64 93964097392848, i32 314, i32 40), !dbg !680
  %44 = fadd double %39, %43, !dbg !680
  call void @fAddHandler(double %39, double %43, double %44, i64 93964097391184, i64 93964097392848, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @7, i32 0, i32 0), i64 93964097393232, i32 314, i32 35), !dbg !681
  %45 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !681
  %46 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %45, i32 0, i32 0, !dbg !682
  store double %44, double* %46, align 8, !dbg !683
  %47 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !684
  %48 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %47, i32 0, i32 0, !dbg !685
  %49 = load double, double* %48, align 8, !dbg !685
  %50 = fmul double 0x3CB0000000000000, %49, !dbg !686
  call void @fMulHandler(double 0x3CB0000000000000, double %49, double %50, i64 0, i64 93964097395704, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @7, i32 0, i32 0), i64 93964097397376, i32 315, i32 35), !dbg !687
  %51 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !687
  %52 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %51, i32 0, i32 1, !dbg !688
  store double %50, double* %52, align 8, !dbg !689
  store i32 0, i32* %3, align 4, !dbg !690
  br label %212, !dbg !690

; <label>:53:                                     ; preds = %31
  %54 = load double, double* %4, align 8, !dbg !691
  %55 = fcmp ole double %54, 4.000000e+00, !dbg !693
  %56 = call i1 @fCmpInstHandler(double %54, double 4.000000e+00, i1 %55, i32 5, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @7, i32 0, i32 0), i64 93964097401456, i32 318, i32 13), !dbg !694
  br i1 %56, label %57, label %79, !dbg !694

; <label>:57:                                     ; preds = %53
  call void @llvm.dbg.declare(metadata double* %8, metadata !695, metadata !89), !dbg !697
  %58 = load double, double* %4, align 8, !dbg !698
  %59 = load double, double* %4, align 8, !dbg !699
  %60 = fmul double %58, %59, !dbg !700
  call void @fMulHandler(double %58, double %59, double %60, i64 93964097403592, i64 93964097403944, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @7, i32 0, i32 0), i64 93964097404352, i32 319, i32 23), !dbg !701
  %61 = fdiv double %60, 8.000000e+00, !dbg !701
  call void @fDivHandler(double %60, double 8.000000e+00, double %61, i64 93964097404352, i64 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @7, i32 0, i32 0), i64 93964097404800, i32 319, i32 25), !dbg !702
  %62 = fsub double %61, 1.000000e+00, !dbg !702
  call void @fSubHandler(double %61, double 1.000000e+00, double %62, i64 93964097404800, i64 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @7, i32 0, i32 0), i64 93964097405216, i32 319, i32 30), !dbg !697
  store double %62, double* %8, align 8, !dbg !697
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %9, metadata !703, metadata !89), !dbg !704
  %63 = load double, double* %8, align 8, !dbg !705
  %64 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @adeb3_cs, double %63, %struct.gsl_sf_result_struct* %9), !dbg !706
  %65 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %9, i32 0, i32 0, !dbg !707
  %66 = load double, double* %65, align 8, !dbg !707
  %67 = load double, double* %4, align 8, !dbg !708
  %68 = fmul double 3.750000e-01, %67, !dbg !709
  call void @fMulHandler(double 3.750000e-01, double %67, double %68, i64 0, i64 93964097411384, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @7, i32 0, i32 0), i64 93964097411888, i32 322, i32 32), !dbg !710
  %69 = fsub double %66, %68, !dbg !710
  call void @fSubHandler(double %66, double %68, double %69, i64 93964097409736, i64 93964097411888, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @7, i32 0, i32 0), i64 93964097412272, i32 322, i32 25), !dbg !711
  %70 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !711
  %71 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %70, i32 0, i32 0, !dbg !712
  store double %69, double* %71, align 8, !dbg !713
  %72 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %9, i32 0, i32 1, !dbg !714
  %73 = load double, double* %72, align 8, !dbg !714
  %74 = load double, double* %4, align 8, !dbg !715
  %75 = fmul double 0x3C98000000000000, %74, !dbg !716
  call void @fMulHandler(double 0x3C98000000000000, double %74, double %75, i64 0, i64 93964097416008, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @7, i32 0, i32 0), i64 93964097416480, i32 323, i32 50), !dbg !717
  %76 = fadd double %73, %75, !dbg !717
  call void @fAddHandler(double %73, double %75, double %76, i64 93964097414360, i64 93964097416480, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @7, i32 0, i32 0), i64 93964097416896, i32 323, i32 25), !dbg !718
  %77 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !718
  %78 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %77, i32 0, i32 1, !dbg !719
  store double %76, double* %78, align 8, !dbg !720
  store i32 0, i32* %3, align 4, !dbg !721
  br label %212, !dbg !721

; <label>:79:                                     ; preds = %53
  %80 = load double, double* %4, align 8, !dbg !722
  %81 = fcmp olt double %80, 0x4041ACDD632F662A, !dbg !724
  %82 = call i1 @fCmpInstHandler(double %80, double 0x4041ACDD632F662A, i1 %81, i32 4, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @7, i32 0, i32 0), i64 93964097420944, i32 326, i32 13), !dbg !725
  br i1 %82, label %83, label %150, !dbg !725

; <label>:83:                                     ; preds = %79
  call void @llvm.dbg.declare(metadata i32* %10, metadata !726, metadata !89), !dbg !728
  %84 = load double, double* %4, align 8, !dbg !729
  %85 = fdiv double 0x4086232BDD7ABCD2, %84, !dbg !730
  call void @fDivHandler(double 0x4086232BDD7ABCD2, double %84, double %85, i64 0, i64 93964097423112, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @7, i32 0, i32 0), i64 93964097423488, i32 327, i32 32), !dbg !731
  %86 = call double @floor(double %85) #1, !dbg !731
  %87 = fptosi double %86 to i32, !dbg !731
  store i32 %87, i32* %10, align 4, !dbg !728
  call void @llvm.dbg.declare(metadata double* %11, metadata !732, metadata !89), !dbg !733
  %88 = load double, double* %4, align 8, !dbg !734
  %89 = fsub double -0.000000e+00, %88, !dbg !735
  call void @fSubHandler(double -0.000000e+00, double %88, double %89, i64 0, i64 93964097428872, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @7, i32 0, i32 0), i64 93964097429248, i32 328, i32 28), !dbg !736
  %90 = call double @exp(double %89) #6, !dbg !736
  call void @callOneArgHandler(i32 11, double %89, double %90, i64 93964097429248, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @7, i32 0, i32 0), i64 93964097429728, i32 328, i32 24), !dbg !733
  store double %90, double* %11, align 8, !dbg !733
  call void @llvm.dbg.declare(metadata double* %12, metadata !737, metadata !89), !dbg !738
  %91 = load i32, i32* %10, align 4, !dbg !739
  %92 = sitofp i32 %91 to double, !dbg !739
  %93 = load double, double* %4, align 8, !dbg !740
  %94 = fmul double %92, %93, !dbg !741
  call void @fMulHandler(double %92, double %93, double %94, i64 93964097433336, i64 93964097434984, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @7, i32 0, i32 0), i64 93964097435392, i32 329, i32 23), !dbg !738
  store double %94, double* %12, align 8, !dbg !738
  call void @llvm.dbg.declare(metadata double* %13, metadata !742, metadata !89), !dbg !743
  %95 = load i32, i32* %10, align 4, !dbg !744
  %96 = sitofp i32 %95 to double, !dbg !744
  store double %96, double* %13, align 8, !dbg !743
  call void @llvm.dbg.declare(metadata double* %14, metadata !745, metadata !89), !dbg !746
  store double 0.000000e+00, double* %14, align 8, !dbg !746
  call void @llvm.dbg.declare(metadata i32* %15, metadata !747, metadata !89), !dbg !748
  %97 = load i32, i32* %10, align 4, !dbg !749
  store i32 %97, i32* %15, align 4, !dbg !751
  br label %98, !dbg !752

; <label>:98:                                     ; preds = %127, %83
  %99 = load i32, i32* %15, align 4, !dbg !753
  %100 = icmp sge i32 %99, 1, !dbg !756
  %101 = sext i32 %99 to i64, !dbg !757
  %102 = call i1 @iCmpInstHandler(i64 %101, i64 1, i1 %100, i32 39, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @7, i32 0, i32 0), i64 93964097451904, i32 333, i32 18), !dbg !757
  br i1 %102, label %103, label %130, !dbg !757

; <label>:103:                                    ; preds = %98
  call void @llvm.dbg.declare(metadata double* %16, metadata !758, metadata !89), !dbg !760
  %104 = load double, double* %12, align 8, !dbg !761
  %105 = fdiv double 1.000000e+00, %104, !dbg !762
  call void @fDivHandler(double 1.000000e+00, double %104, double %105, i64 0, i64 93964097454072, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @7, i32 0, i32 0), i64 93964097454480, i32 334, i32 26), !dbg !760
  store double %105, double* %16, align 8, !dbg !760
  %106 = load double, double* %11, align 8, !dbg !763
  %107 = load double, double* %14, align 8, !dbg !764
  %108 = fmul double %107, %106, !dbg !764
  call void @fMulHandler(double %107, double %106, double %108, i64 93964097456904, i64 93964097456520, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @7, i32 0, i32 0), i64 93964097457312, i32 335, i32 11), !dbg !764
  store double %108, double* %14, align 8, !dbg !764
  %109 = load double, double* %16, align 8, !dbg !765
  %110 = fmul double 6.000000e+00, %109, !dbg !766
  call void @fMulHandler(double 6.000000e+00, double %109, double %110, i64 0, i64 93964097459096, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @7, i32 0, i32 0), i64 93964097459600, i32 336, i32 20), !dbg !767
  %111 = fadd double %110, 6.000000e+00, !dbg !767
  call void @fAddHandler(double %110, double 6.000000e+00, double %111, i64 93964097459600, i64 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @7, i32 0, i32 0), i64 93964097460016, i32 336, i32 28), !dbg !768
  %112 = load double, double* %16, align 8, !dbg !768
  %113 = fmul double %111, %112, !dbg !769
  call void @fMulHandler(double %111, double %112, double %113, i64 93964097460016, i64 93964097460376, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @7, i32 0, i32 0), i64 93964097460784, i32 336, i32 34), !dbg !770
  %114 = fadd double %113, 3.000000e+00, !dbg !770
  call void @fAddHandler(double %113, double 3.000000e+00, double %114, i64 93964097460784, i64 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @7, i32 0, i32 0), i64 93964097461232, i32 336, i32 42), !dbg !771
  %115 = load double, double* %16, align 8, !dbg !771
  %116 = fmul double %114, %115, !dbg !772
  call void @fMulHandler(double %114, double %115, double %116, i64 93964097461232, i64 93964097461592, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @7, i32 0, i32 0), i64 93964097462000, i32 336, i32 48), !dbg !773
  %117 = fadd double %116, 1.000000e+00, !dbg !773
  call void @fAddHandler(double %116, double 1.000000e+00, double %117, i64 93964097462000, i64 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @7, i32 0, i32 0), i64 93964097462448, i32 336, i32 56), !dbg !774
  %118 = load double, double* %13, align 8, !dbg !774
  %119 = fdiv double %117, %118, !dbg !775
  call void @fDivHandler(double %117, double %118, double %119, i64 93964097462448, i64 93964097462808, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @7, i32 0, i32 0), i64 93964097463216, i32 336, i32 63), !dbg !776
  %120 = load double, double* %14, align 8, !dbg !776
  %121 = fadd double %120, %119, !dbg !776
  call void @fAddHandler(double %120, double %119, double %121, i64 93964097463608, i64 93964097463216, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @7, i32 0, i32 0), i64 93964097464016, i32 336, i32 11), !dbg !776
  store double %121, double* %14, align 8, !dbg !776
  %122 = load double, double* %13, align 8, !dbg !777
  %123 = fsub double %122, 1.000000e+00, !dbg !777
  call void @fSubHandler(double %122, double 1.000000e+00, double %123, i64 93964097465800, i64 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @7, i32 0, i32 0), i64 93964097466240, i32 337, i32 10), !dbg !777
  store double %123, double* %13, align 8, !dbg !777
  %124 = load double, double* %4, align 8, !dbg !778
  %125 = load double, double* %12, align 8, !dbg !779
  %126 = fsub double %125, %124, !dbg !779
  call void @fSubHandler(double %125, double %124, double %126, i64 93964097468376, i64 93964097468024, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @7, i32 0, i32 0), i64 93964097468784, i32 338, i32 10), !dbg !779
  store double %126, double* %12, align 8, !dbg !779
  br label %127, !dbg !780

; <label>:127:                                    ; preds = %103
  %128 = load i32, i32* %15, align 4, !dbg !781
  %129 = add nsw i32 %128, -1, !dbg !781
  store i32 %129, i32* %15, align 4, !dbg !781
  br label %98, !dbg !783, !llvm.loop !784

; <label>:130:                                    ; preds = %98
  %131 = load double, double* %4, align 8, !dbg !786
  %132 = load double, double* %4, align 8, !dbg !787
  %133 = fmul double %131, %132, !dbg !788
  call void @fMulHandler(double %131, double %132, double %133, i64 93964097473896, i64 93964097474216, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @7, i32 0, i32 0), i64 93964097474624, i32 340, i32 34), !dbg !789
  %134 = load double, double* %4, align 8, !dbg !789
  %135 = fmul double %133, %134, !dbg !790
  call void @fMulHandler(double %133, double %134, double %135, i64 93964097474624, i64 93964097475016, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @7, i32 0, i32 0), i64 93964097477488, i32 340, i32 36), !dbg !791
  %136 = fdiv double 0x40337B587020D351, %135, !dbg !791
  call void @fDivHandler(double 0x40337B587020D351, double %135, double %136, i64 0, i64 93964097477488, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @7, i32 0, i32 0), i64 93964097477904, i32 340, i32 31), !dbg !792
  %137 = load double, double* %14, align 8, !dbg !792
  %138 = fmul double 3.000000e+00, %137, !dbg !793
  call void @fMulHandler(double 3.000000e+00, double %137, double %138, i64 0, i64 93964097478296, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @7, i32 0, i32 0), i64 93964097478736, i32 340, i32 46), !dbg !794
  %139 = load double, double* %11, align 8, !dbg !794
  %140 = fmul double %138, %139, !dbg !795
  call void @fMulHandler(double %138, double %139, double %140, i64 93964097478736, i64 93964097479096, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @7, i32 0, i32 0), i64 93964097479504, i32 340, i32 52), !dbg !796
  %141 = fsub double %136, %140, !dbg !796
  call void @fSubHandler(double %136, double %140, double %141, i64 93964097477904, i64 93964097479504, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @7, i32 0, i32 0), i64 93964097479920, i32 340, i32 40), !dbg !797
  %142 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !797
  %143 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %142, i32 0, i32 0, !dbg !798
  store double %141, double* %143, align 8, !dbg !799
  %144 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !800
  %145 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %144, i32 0, i32 0, !dbg !801
  %146 = load double, double* %145, align 8, !dbg !801
  %147 = fmul double 0x3CB0000000000000, %146, !dbg !802
  call void @fMulHandler(double 0x3CB0000000000000, double %146, double %147, i64 0, i64 93964097482392, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @7, i32 0, i32 0), i64 93964097484064, i32 341, i32 35), !dbg !803
  %148 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !803
  %149 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %148, i32 0, i32 1, !dbg !804
  store double %147, double* %149, align 8, !dbg !805
  store i32 0, i32* %3, align 4, !dbg !806
  br label %212, !dbg !806

; <label>:150:                                    ; preds = %79
  %151 = load double, double* %4, align 8, !dbg !807
  %152 = fcmp olt double %151, 0x4086232BDD7ABCD2, !dbg !809
  %153 = call i1 @fCmpInstHandler(double %151, double 0x4086232BDD7ABCD2, i1 %152, i32 4, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @7, i32 0, i32 0), i64 93964097488112, i32 344, i32 13), !dbg !810
  br i1 %153, label %154, label %187, !dbg !810

; <label>:154:                                    ; preds = %150
  call void @llvm.dbg.declare(metadata double* %17, metadata !811, metadata !89), !dbg !813
  %155 = load double, double* %4, align 8, !dbg !814
  %156 = load double, double* %4, align 8, !dbg !815
  %157 = fmul double %155, %156, !dbg !816
  call void @fMulHandler(double %155, double %156, double %157, i64 93964097490280, i64 93964097490632, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @7, i32 0, i32 0), i64 93964097491040, i32 345, i32 24), !dbg !817
  %158 = load double, double* %4, align 8, !dbg !817
  %159 = fmul double %157, %158, !dbg !818
  call void @fMulHandler(double %157, double %158, double %159, i64 93964097491040, i64 93964097491432, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @7, i32 0, i32 0), i64 93964097491840, i32 345, i32 26), !dbg !813
  store double %159, double* %17, align 8, !dbg !813
  call void @llvm.dbg.declare(metadata double* %18, metadata !819, metadata !89), !dbg !820
  %160 = load double, double* %4, align 8, !dbg !821
  %161 = fmul double 6.000000e+00, %160, !dbg !822
  call void @fMulHandler(double 6.000000e+00, double %160, double %161, i64 0, i64 93964097495032, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @7, i32 0, i32 0), i64 93964097495440, i32 346, i32 33), !dbg !823
  %162 = fadd double 6.000000e+00, %161, !dbg !823
  call void @fAddHandler(double 6.000000e+00, double %161, double %162, i64 0, i64 93964097495440, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @7, i32 0, i32 0), i64 93964097495856, i32 346, i32 28), !dbg !824
  %163 = load double, double* %4, align 8, !dbg !824
  %164 = fmul double 3.000000e+00, %163, !dbg !825
  call void @fMulHandler(double 3.000000e+00, double %163, double %164, i64 0, i64 93964097496216, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @7, i32 0, i32 0), i64 93964097496656, i32 346, i32 41), !dbg !826
  %165 = load double, double* %4, align 8, !dbg !826
  %166 = fmul double %164, %165, !dbg !827
  call void @fMulHandler(double %164, double %165, double %166, i64 93964097496656, i64 93964097497016, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @7, i32 0, i32 0), i64 93964097497424, i32 346, i32 43), !dbg !828
  %167 = fadd double %162, %166, !dbg !828
  call void @fAddHandler(double %162, double %166, double %167, i64 93964097495856, i64 93964097497424, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @7, i32 0, i32 0), i64 93964097497840, i32 346, i32 36), !dbg !829
  %168 = load double, double* %17, align 8, !dbg !829
  %169 = fadd double %167, %168, !dbg !830
  call void @fAddHandler(double %167, double %168, double %169, i64 93964097497840, i64 93964097498232, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @7, i32 0, i32 0), i64 93964097498640, i32 346, i32 46), !dbg !820
  store double %169, double* %18, align 8, !dbg !820
  %170 = load double, double* %18, align 8, !dbg !831
  %171 = fmul double 3.000000e+00, %170, !dbg !832
  call void @fMulHandler(double 3.000000e+00, double %170, double %171, i64 0, i64 93964097500712, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @7, i32 0, i32 0), i64 93964097501152, i32 347, i32 39), !dbg !833
  %172 = load double, double* %4, align 8, !dbg !833
  %173 = fsub double -0.000000e+00, %172, !dbg !834
  call void @fSubHandler(double -0.000000e+00, double %172, double %173, i64 0, i64 93964097501512, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @7, i32 0, i32 0), i64 93964097501920, i32 347, i32 51), !dbg !835
  %174 = call double @exp(double %173) #6, !dbg !835
  call void @callOneArgHandler(i32 11, double %173, double %174, i64 93964097501920, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @7, i32 0, i32 0), i64 93964097502400, i32 347, i32 47), !dbg !836
  %175 = fmul double %171, %174, !dbg !836
  call void @fMulHandler(double %171, double %174, double %175, i64 93964097501152, i64 93964097502400, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @7, i32 0, i32 0), i64 93964097502880, i32 347, i32 45), !dbg !837
  %176 = fsub double 0x40337B587020D351, %175, !dbg !837
  call void @fSubHandler(double 0x40337B587020D351, double %175, double %176, i64 0, i64 93964097502880, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @7, i32 0, i32 0), i64 93964097503296, i32 347, i32 33), !dbg !838
  %177 = load double, double* %17, align 8, !dbg !838
  %178 = fdiv double %176, %177, !dbg !839
  call void @fDivHandler(double %176, double %177, double %178, i64 93964097503296, i64 93964097503688, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @7, i32 0, i32 0), i64 93964097504096, i32 347, i32 56), !dbg !840
  %179 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !840
  %180 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %179, i32 0, i32 0, !dbg !841
  store double %178, double* %180, align 8, !dbg !842
  %181 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !843
  %182 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %181, i32 0, i32 0, !dbg !844
  %183 = load double, double* %182, align 8, !dbg !844
  %184 = fmul double 0x3CB0000000000000, %183, !dbg !845
  call void @fMulHandler(double 0x3CB0000000000000, double %183, double %184, i64 0, i64 93964097506568, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @7, i32 0, i32 0), i64 93964097508240, i32 348, i32 35), !dbg !846
  %185 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !846
  %186 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %185, i32 0, i32 1, !dbg !847
  store double %184, double* %186, align 8, !dbg !848
  store i32 0, i32* %3, align 4, !dbg !849
  br label %212, !dbg !849

; <label>:187:                                    ; preds = %150
  %188 = load double, double* %4, align 8, !dbg !850
  %189 = fdiv double 0x40337B587020D351, %188, !dbg !852
  call void @fDivHandler(double 0x40337B587020D351, double %188, double %189, i64 0, i64 93964097511944, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @7, i32 0, i32 0), i64 93964097512288, i32 352, i32 33), !dbg !853
  %190 = load double, double* %4, align 8, !dbg !853
  %191 = fdiv double %189, %190, !dbg !854
  call void @fDivHandler(double %189, double %190, double %191, i64 93964097512288, i64 93964097512680, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @7, i32 0, i32 0), i64 93964097513088, i32 352, i32 36), !dbg !855
  %192 = load double, double* %4, align 8, !dbg !855
  %193 = fdiv double %191, %192, !dbg !856
  call void @fDivHandler(double %191, double %192, double %193, i64 93964097513088, i64 93964097513480, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @7, i32 0, i32 0), i64 93964097513888, i32 352, i32 39), !dbg !857
  %194 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !857
  %195 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %194, i32 0, i32 0, !dbg !858
  store double %193, double* %195, align 8, !dbg !859
  %196 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !860
  %197 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %196, i32 0, i32 0, !dbg !861
  %198 = load double, double* %197, align 8, !dbg !861
  %199 = fmul double 0x3CB0000000000000, %198, !dbg !862
  call void @fMulHandler(double 0x3CB0000000000000, double %198, double %199, i64 0, i64 93964097516360, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @7, i32 0, i32 0), i64 93964097518032, i32 353, i32 35), !dbg !863
  %200 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !863
  %201 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %200, i32 0, i32 1, !dbg !864
  store double %199, double* %201, align 8, !dbg !865
  %202 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !866
  %203 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %202, i32 0, i32 0, !dbg !866
  %204 = load double, double* %203, align 8, !dbg !866
  %205 = call double @fabs(double %204) #1, !dbg !866
  %206 = fcmp olt double %205, 0x10000000000000, !dbg !866
  %207 = call i1 @fCmpInstHandler(double %205, double 0x10000000000000, i1 %206, i32 4, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @7, i32 0, i32 0), i64 93964097522176, i32 354, i32 5), !dbg !868
  br i1 %207, label %208, label %211, !dbg !868

; <label>:208:                                    ; preds = %187
  br label %209, !dbg !869, !llvm.loop !871

; <label>:209:                                    ; preds = %208
  call void @gsl_error(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i32 354, i32 15), !dbg !872
  store i32 15, i32* %3, align 4, !dbg !872
  br label %212, !dbg !872
                                                  ; No predecessors!
  br label %211, !dbg !875

; <label>:211:                                    ; preds = %210, %187
  store i32 0, i32* %3, align 4, !dbg !877
  br label %212, !dbg !877

; <label>:212:                                    ; preds = %211, %209, %154, %130, %57, %35, %30, %28
  %213 = load i32, i32* %3, align 4, !dbg !878
  ret i32 %213, !dbg !878
}

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_debye_4_e(double, %struct.gsl_sf_result_struct*) #0 !dbg !879 {
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
  %14 = alloca double, align 8
  %15 = alloca i32, align 4
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !880, metadata !89), !dbg !881
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %5, metadata !882, metadata !89), !dbg !883
  call void @llvm.dbg.declare(metadata double* %6, metadata !884, metadata !89), !dbg !885
  store double 0x4058E2E2562FBB35, double* %6, align 8, !dbg !885
  call void @llvm.dbg.declare(metadata double* %7, metadata !886, metadata !89), !dbg !887
  store double 0x4086232BDD7ABCD2, double* %7, align 8, !dbg !887
  %20 = load double, double* %4, align 8, !dbg !888
  %21 = fcmp olt double %20, 0.000000e+00, !dbg !890
  %22 = call i1 @fCmpInstHandler(double %20, double 0.000000e+00, i1 %21, i32 4, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @9, i32 0, i32 0), i64 93964097539664, i32 367, i32 8), !dbg !891
  br i1 %22, label %23, label %32, !dbg !891

; <label>:23:                                     ; preds = %2
  br label %24, !dbg !892, !llvm.loop !894

; <label>:24:                                     ; preds = %23
  %25 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !895
  %26 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %25, i32 0, i32 0, !dbg !895
  store double 0x7FF8000000000000, double* %26, align 8, !dbg !895
  %27 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !895
  %28 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %27, i32 0, i32 1, !dbg !895
  store double 0x7FF8000000000000, double* %28, align 8, !dbg !895
  br label %29, !dbg !895, !llvm.loop !898

; <label>:29:                                     ; preds = %24
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i32 368, i32 1), !dbg !900
  store i32 1, i32* %3, align 4, !dbg !900
  br label %226, !dbg !900
                                                  ; No predecessors!
  br label %31, !dbg !903

; <label>:31:                                     ; preds = %30
  br label %226, !dbg !905

; <label>:32:                                     ; preds = %2
  %33 = load double, double* %4, align 8, !dbg !906
  %34 = fcmp olt double %33, 0x3E66A09E667F3BCD, !dbg !908
  %35 = call i1 @fCmpInstHandler(double %33, double 0x3E66A09E667F3BCD, i1 %34, i32 4, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @9, i32 0, i32 0), i64 93964097548368, i32 370, i32 13), !dbg !909
  br i1 %35, label %36, label %54, !dbg !909

; <label>:36:                                     ; preds = %32
  %37 = load double, double* %4, align 8, !dbg !910
  %38 = fmul double 2.000000e+00, %37, !dbg !912
  call void @fMulHandler(double 2.000000e+00, double %37, double %38, i64 0, i64 93964097549480, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @9, i32 0, i32 0), i64 93964097549856, i32 371, i32 28), !dbg !913
  %39 = fdiv double %38, 5.000000e+00, !dbg !913
  call void @fDivHandler(double %38, double 5.000000e+00, double %39, i64 93964097549856, i64 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @9, i32 0, i32 0), i64 93964097550336, i32 371, i32 30), !dbg !914
  %40 = fsub double 1.000000e+00, %39, !dbg !914
  call void @fSubHandler(double 1.000000e+00, double %39, double %40, i64 0, i64 93964097550336, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @9, i32 0, i32 0), i64 93964097550752, i32 371, i32 23), !dbg !915
  %41 = load double, double* %4, align 8, !dbg !915
  %42 = load double, double* %4, align 8, !dbg !916
  %43 = fmul double %41, %42, !dbg !917
  call void @fMulHandler(double %41, double %42, double %43, i64 93964097551112, i64 93964097551496, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @9, i32 0, i32 0), i64 93964097551904, i32 371, i32 38), !dbg !918
  %44 = fdiv double %43, 1.800000e+01, !dbg !918
  call void @fDivHandler(double %43, double 1.800000e+01, double %44, i64 93964097551904, i64 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @9, i32 0, i32 0), i64 93964097552416, i32 371, i32 40), !dbg !919
  %45 = fadd double %40, %44, !dbg !919
  call void @fAddHandler(double %40, double %44, double %45, i64 93964097550752, i64 93964097552416, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @9, i32 0, i32 0), i64 93964097552800, i32 371, i32 35), !dbg !920
  %46 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !920
  %47 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %46, i32 0, i32 0, !dbg !921
  store double %45, double* %47, align 8, !dbg !922
  %48 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !923
  %49 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %48, i32 0, i32 0, !dbg !924
  %50 = load double, double* %49, align 8, !dbg !924
  %51 = fmul double 0x3CB0000000000000, %50, !dbg !925
  call void @fMulHandler(double 0x3CB0000000000000, double %50, double %51, i64 0, i64 93964097555272, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @9, i32 0, i32 0), i64 93964097556944, i32 372, i32 35), !dbg !926
  %52 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !926
  %53 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %52, i32 0, i32 1, !dbg !927
  store double %51, double* %53, align 8, !dbg !928
  store i32 0, i32* %3, align 4, !dbg !929
  br label %226, !dbg !929

; <label>:54:                                     ; preds = %32
  %55 = load double, double* %4, align 8, !dbg !930
  %56 = fcmp ole double %55, 4.000000e+00, !dbg !932
  %57 = call i1 @fCmpInstHandler(double %55, double 4.000000e+00, i1 %56, i32 5, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @9, i32 0, i32 0), i64 93964097561024, i32 375, i32 13), !dbg !933
  br i1 %57, label %58, label %82, !dbg !933

; <label>:58:                                     ; preds = %54
  call void @llvm.dbg.declare(metadata double* %8, metadata !934, metadata !89), !dbg !936
  %59 = load double, double* %4, align 8, !dbg !937
  %60 = load double, double* %4, align 8, !dbg !938
  %61 = fmul double %59, %60, !dbg !939
  call void @fMulHandler(double %59, double %60, double %61, i64 93964097563160, i64 93964097563512, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @9, i32 0, i32 0), i64 93964097563920, i32 376, i32 23), !dbg !940
  %62 = fdiv double %61, 8.000000e+00, !dbg !940
  call void @fDivHandler(double %61, double 8.000000e+00, double %62, i64 93964097563920, i64 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @9, i32 0, i32 0), i64 93964097564368, i32 376, i32 25), !dbg !941
  %63 = fsub double %62, 1.000000e+00, !dbg !941
  call void @fSubHandler(double %62, double 1.000000e+00, double %63, i64 93964097564368, i64 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @9, i32 0, i32 0), i64 93964097564784, i32 376, i32 30), !dbg !936
  store double %63, double* %8, align 8, !dbg !936
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %9, metadata !942, metadata !89), !dbg !943
  %64 = load double, double* %8, align 8, !dbg !944
  %65 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @adeb4_cs, double %64, %struct.gsl_sf_result_struct* %9), !dbg !945
  %66 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %9, i32 0, i32 0, !dbg !946
  %67 = load double, double* %66, align 8, !dbg !946
  %68 = load double, double* %4, align 8, !dbg !947
  %69 = fmul double 2.000000e+00, %68, !dbg !948
  call void @fMulHandler(double 2.000000e+00, double %68, double %69, i64 0, i64 93964097570952, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @9, i32 0, i32 0), i64 93964097571392, i32 379, i32 30), !dbg !949
  %70 = fdiv double %69, 5.000000e+00, !dbg !949
  call void @fDivHandler(double %69, double 5.000000e+00, double %70, i64 93964097571392, i64 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @9, i32 0, i32 0), i64 93964097571808, i32 379, i32 32), !dbg !950
  %71 = fsub double %67, %70, !dbg !950
  call void @fSubHandler(double %67, double %70, double %71, i64 93964097569304, i64 93964097571808, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @9, i32 0, i32 0), i64 93964097572192, i32 379, i32 25), !dbg !951
  %72 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !951
  %73 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %72, i32 0, i32 0, !dbg !952
  store double %71, double* %73, align 8, !dbg !953
  %74 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %9, i32 0, i32 1, !dbg !954
  %75 = load double, double* %74, align 8, !dbg !954
  %76 = load double, double* %4, align 8, !dbg !955
  %77 = fmul double 0x3CC0000000000000, %76, !dbg !956
  call void @fMulHandler(double 0x3CC0000000000000, double %76, double %77, i64 0, i64 93964097575928, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @9, i32 0, i32 0), i64 93964097576400, i32 380, i32 48), !dbg !957
  %78 = fdiv double %77, 5.000000e+00, !dbg !957
  call void @fDivHandler(double %77, double 5.000000e+00, double %78, i64 93964097576400, i64 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @9, i32 0, i32 0), i64 93964097576848, i32 380, i32 50), !dbg !958
  %79 = fadd double %75, %78, !dbg !958
  call void @fAddHandler(double %75, double %78, double %79, i64 93964097574280, i64 93964097576848, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @9, i32 0, i32 0), i64 93964097577232, i32 380, i32 25), !dbg !959
  %80 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !959
  %81 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %80, i32 0, i32 1, !dbg !960
  store double %79, double* %81, align 8, !dbg !961
  store i32 0, i32* %3, align 4, !dbg !962
  br label %226, !dbg !962

; <label>:82:                                     ; preds = %54
  %83 = load double, double* %4, align 8, !dbg !963
  %84 = fcmp olt double %83, 0x4041ACDD632F662A, !dbg !965
  %85 = call i1 @fCmpInstHandler(double %83, double 0x4041ACDD632F662A, i1 %84, i32 4, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @9, i32 0, i32 0), i64 93964097581280, i32 383, i32 13), !dbg !966
  br i1 %85, label %86, label %158, !dbg !966

; <label>:86:                                     ; preds = %82
  call void @llvm.dbg.declare(metadata i32* %10, metadata !967, metadata !89), !dbg !969
  %87 = load double, double* %4, align 8, !dbg !970
  %88 = fdiv double 0x4086232BDD7ABCD2, %87, !dbg !971
  call void @fDivHandler(double 0x4086232BDD7ABCD2, double %87, double %88, i64 0, i64 93964097583448, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @9, i32 0, i32 0), i64 93964097583824, i32 384, i32 32), !dbg !972
  %89 = call double @floor(double %88) #1, !dbg !972
  %90 = fptosi double %89 to i32, !dbg !972
  store i32 %90, i32* %10, align 4, !dbg !969
  call void @llvm.dbg.declare(metadata double* %11, metadata !973, metadata !89), !dbg !974
  %91 = load double, double* %4, align 8, !dbg !975
  %92 = fsub double -0.000000e+00, %91, !dbg !976
  call void @fSubHandler(double -0.000000e+00, double %91, double %92, i64 0, i64 93964097589208, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @9, i32 0, i32 0), i64 93964097589584, i32 385, i32 28), !dbg !977
  %93 = call double @exp(double %92) #6, !dbg !977
  call void @callOneArgHandler(i32 11, double %92, double %93, i64 93964097589584, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @9, i32 0, i32 0), i64 93964097590064, i32 385, i32 24), !dbg !974
  store double %93, double* %11, align 8, !dbg !974
  call void @llvm.dbg.declare(metadata double* %12, metadata !978, metadata !89), !dbg !979
  %94 = load i32, i32* %10, align 4, !dbg !980
  %95 = sitofp i32 %94 to double, !dbg !980
  %96 = load double, double* %4, align 8, !dbg !981
  %97 = fmul double %95, %96, !dbg !982
  call void @fMulHandler(double %95, double %96, double %97, i64 93964097593672, i64 93964097595320, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @9, i32 0, i32 0), i64 93964097595728, i32 386, i32 23), !dbg !979
  store double %97, double* %12, align 8, !dbg !979
  call void @llvm.dbg.declare(metadata double* %13, metadata !983, metadata !89), !dbg !984
  %98 = load i32, i32* %10, align 4, !dbg !985
  %99 = sitofp i32 %98 to double, !dbg !985
  store double %99, double* %13, align 8, !dbg !984
  call void @llvm.dbg.declare(metadata double* %14, metadata !986, metadata !89), !dbg !987
  store double 0.000000e+00, double* %14, align 8, !dbg !987
  call void @llvm.dbg.declare(metadata i32* %15, metadata !988, metadata !89), !dbg !989
  %100 = load i32, i32* %10, align 4, !dbg !990
  store i32 %100, i32* %15, align 4, !dbg !992
  br label %101, !dbg !993

; <label>:101:                                    ; preds = %133, %86
  %102 = load i32, i32* %15, align 4, !dbg !994
  %103 = icmp sge i32 %102, 1, !dbg !997
  %104 = sext i32 %102 to i64, !dbg !998
  %105 = call i1 @iCmpInstHandler(i64 %104, i64 1, i1 %103, i32 39, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @9, i32 0, i32 0), i64 93964097608128, i32 390, i32 18), !dbg !998
  br i1 %105, label %106, label %136, !dbg !998

; <label>:106:                                    ; preds = %101
  call void @llvm.dbg.declare(metadata double* %16, metadata !999, metadata !89), !dbg !1001
  %107 = load double, double* %12, align 8, !dbg !1002
  %108 = fdiv double 1.000000e+00, %107, !dbg !1003
  call void @fDivHandler(double 1.000000e+00, double %107, double %108, i64 0, i64 93964097610296, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @9, i32 0, i32 0), i64 93964097610704, i32 391, i32 26), !dbg !1001
  store double %108, double* %16, align 8, !dbg !1001
  %109 = load double, double* %11, align 8, !dbg !1004
  %110 = load double, double* %14, align 8, !dbg !1005
  %111 = fmul double %110, %109, !dbg !1005
  call void @fMulHandler(double %110, double %109, double %111, i64 93964097613128, i64 93964097612744, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @9, i32 0, i32 0), i64 93964097613536, i32 392, i32 11), !dbg !1005
  store double %111, double* %14, align 8, !dbg !1005
  %112 = load double, double* %16, align 8, !dbg !1006
  %113 = fmul double 2.400000e+01, %112, !dbg !1007
  call void @fMulHandler(double 2.400000e+01, double %112, double %113, i64 0, i64 93964097615320, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @9, i32 0, i32 0), i64 93964097615760, i32 393, i32 22), !dbg !1008
  %114 = fadd double %113, 2.400000e+01, !dbg !1008
  call void @fAddHandler(double %113, double 2.400000e+01, double %114, i64 93964097615760, i64 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @9, i32 0, i32 0), i64 93964097616176, i32 393, i32 30), !dbg !1009
  %115 = load double, double* %16, align 8, !dbg !1009
  %116 = fmul double %114, %115, !dbg !1010
  call void @fMulHandler(double %114, double %115, double %116, i64 93964097616176, i64 93964097616536, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @9, i32 0, i32 0), i64 93964097616944, i32 393, i32 37), !dbg !1011
  %117 = fadd double %116, 1.200000e+01, !dbg !1011
  call void @fAddHandler(double %116, double 1.200000e+01, double %117, i64 93964097616944, i64 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @9, i32 0, i32 0), i64 93964097617456, i32 393, i32 45), !dbg !1012
  %118 = load double, double* %16, align 8, !dbg !1012
  %119 = fmul double %117, %118, !dbg !1013
  call void @fMulHandler(double %117, double %118, double %119, i64 93964097617456, i64 93964097617816, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @9, i32 0, i32 0), i64 93964097618224, i32 393, i32 52), !dbg !1014
  %120 = fadd double %119, 4.000000e+00, !dbg !1014
  call void @fAddHandler(double %119, double 4.000000e+00, double %120, i64 93964097618224, i64 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @9, i32 0, i32 0), i64 93964097618672, i32 393, i32 60), !dbg !1015
  %121 = load double, double* %16, align 8, !dbg !1015
  %122 = fmul double %120, %121, !dbg !1016
  call void @fMulHandler(double %120, double %121, double %122, i64 93964097618672, i64 93964097619032, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @9, i32 0, i32 0), i64 93964097619440, i32 393, i32 66), !dbg !1017
  %123 = fadd double %122, 1.000000e+00, !dbg !1017
  call void @fAddHandler(double %122, double 1.000000e+00, double %123, i64 93964097619440, i64 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @9, i32 0, i32 0), i64 93964097619888, i32 393, i32 74), !dbg !1018
  %124 = load double, double* %13, align 8, !dbg !1018
  %125 = fdiv double %123, %124, !dbg !1019
  call void @fDivHandler(double %123, double %124, double %125, i64 93964097619888, i64 93964097620248, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @9, i32 0, i32 0), i64 93964097620656, i32 393, i32 81), !dbg !1020
  %126 = load double, double* %14, align 8, !dbg !1020
  %127 = fadd double %126, %125, !dbg !1020
  call void @fAddHandler(double %126, double %125, double %127, i64 93964097621048, i64 93964097620656, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @9, i32 0, i32 0), i64 93964097621456, i32 393, i32 11), !dbg !1020
  store double %127, double* %14, align 8, !dbg !1020
  %128 = load double, double* %13, align 8, !dbg !1021
  %129 = fsub double %128, 1.000000e+00, !dbg !1021
  call void @fSubHandler(double %128, double 1.000000e+00, double %129, i64 93964097623240, i64 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @9, i32 0, i32 0), i64 93964097623680, i32 394, i32 10), !dbg !1021
  store double %129, double* %13, align 8, !dbg !1021
  %130 = load double, double* %4, align 8, !dbg !1022
  %131 = load double, double* %12, align 8, !dbg !1023
  %132 = fsub double %131, %130, !dbg !1023
  call void @fSubHandler(double %131, double %130, double %132, i64 93964097625816, i64 93964097625464, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @9, i32 0, i32 0), i64 93964097626224, i32 395, i32 10), !dbg !1023
  store double %132, double* %12, align 8, !dbg !1023
  br label %133, !dbg !1024

; <label>:133:                                    ; preds = %106
  %134 = load i32, i32* %15, align 4, !dbg !1025
  %135 = add nsw i32 %134, -1, !dbg !1025
  store i32 %135, i32* %15, align 4, !dbg !1025
  br label %101, !dbg !1027, !llvm.loop !1028

; <label>:136:                                    ; preds = %101
  %137 = load double, double* %4, align 8, !dbg !1030
  %138 = load double, double* %4, align 8, !dbg !1031
  %139 = fmul double %137, %138, !dbg !1032
  call void @fMulHandler(double %137, double %138, double %139, i64 93964097633400, i64 93964097633720, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @9, i32 0, i32 0), i64 93964097634128, i32 397, i32 34), !dbg !1033
  %140 = load double, double* %4, align 8, !dbg !1033
  %141 = fmul double %139, %140, !dbg !1034
  call void @fMulHandler(double %139, double %140, double %141, i64 93964097634128, i64 93964097634520, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @9, i32 0, i32 0), i64 93964097634928, i32 397, i32 36), !dbg !1035
  %142 = load double, double* %4, align 8, !dbg !1035
  %143 = fmul double %141, %142, !dbg !1036
  call void @fMulHandler(double %141, double %142, double %143, i64 93964097634928, i64 93964097635320, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @9, i32 0, i32 0), i64 93964097635728, i32 397, i32 38), !dbg !1037
  %144 = fdiv double 0x4058E2E2562FBB35, %143, !dbg !1037
  call void @fDivHandler(double 0x4058E2E2562FBB35, double %143, double %144, i64 0, i64 93964097635728, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @9, i32 0, i32 0), i64 93964097636144, i32 397, i32 31), !dbg !1038
  %145 = load double, double* %14, align 8, !dbg !1038
  %146 = fmul double 4.000000e+00, %145, !dbg !1039
  call void @fMulHandler(double 4.000000e+00, double %145, double %146, i64 0, i64 93964097636536, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @9, i32 0, i32 0), i64 93964097636976, i32 397, i32 48), !dbg !1040
  %147 = load double, double* %11, align 8, !dbg !1040
  %148 = fmul double %146, %147, !dbg !1041
  call void @fMulHandler(double %146, double %147, double %148, i64 93964097636976, i64 93964097637336, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @9, i32 0, i32 0), i64 93964097637744, i32 397, i32 54), !dbg !1042
  %149 = fsub double %144, %148, !dbg !1042
  call void @fSubHandler(double %144, double %148, double %149, i64 93964097636144, i64 93964097637744, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @9, i32 0, i32 0), i64 93964097638160, i32 397, i32 42), !dbg !1043
  %150 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1043
  %151 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %150, i32 0, i32 0, !dbg !1044
  store double %149, double* %151, align 8, !dbg !1045
  %152 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1046
  %153 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %152, i32 0, i32 0, !dbg !1047
  %154 = load double, double* %153, align 8, !dbg !1047
  %155 = fmul double 0x3CB0000000000000, %154, !dbg !1048
  call void @fMulHandler(double 0x3CB0000000000000, double %154, double %155, i64 0, i64 93964097640632, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @9, i32 0, i32 0), i64 93964097642304, i32 398, i32 35), !dbg !1049
  %156 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1049
  %157 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %156, i32 0, i32 1, !dbg !1050
  store double %155, double* %157, align 8, !dbg !1051
  store i32 0, i32* %3, align 4, !dbg !1052
  br label %226, !dbg !1052

; <label>:158:                                    ; preds = %82
  %159 = load double, double* %4, align 8, !dbg !1053
  %160 = fcmp olt double %159, 0x4086232BDD7ABCD2, !dbg !1055
  %161 = call i1 @fCmpInstHandler(double %159, double 0x4086232BDD7ABCD2, i1 %160, i32 4, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @9, i32 0, i32 0), i64 93964097646352, i32 401, i32 13), !dbg !1056
  br i1 %161, label %162, label %199, !dbg !1056

; <label>:162:                                    ; preds = %158
  call void @llvm.dbg.declare(metadata double* %17, metadata !1057, metadata !89), !dbg !1059
  %163 = load double, double* %4, align 8, !dbg !1060
  %164 = load double, double* %4, align 8, !dbg !1061
  %165 = fmul double %163, %164, !dbg !1062
  call void @fMulHandler(double %163, double %164, double %165, i64 93964097648520, i64 93964097648872, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @9, i32 0, i32 0), i64 93964097649280, i32 402, i32 24), !dbg !1059
  store double %165, double* %17, align 8, !dbg !1059
  call void @llvm.dbg.declare(metadata double* %18, metadata !1063, metadata !89), !dbg !1064
  %166 = load double, double* %17, align 8, !dbg !1065
  %167 = load double, double* %17, align 8, !dbg !1066
  %168 = fmul double %166, %167, !dbg !1067
  call void @fMulHandler(double %166, double %167, double %168, i64 93964097652472, i64 93964097652824, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @9, i32 0, i32 0), i64 93964097653232, i32 403, i32 25), !dbg !1064
  store double %168, double* %18, align 8, !dbg !1064
  call void @llvm.dbg.declare(metadata double* %19, metadata !1068, metadata !89), !dbg !1069
  %169 = load double, double* %4, align 8, !dbg !1070
  %170 = fmul double 2.400000e+01, %169, !dbg !1071
  call void @fMulHandler(double 2.400000e+01, double %169, double %170, i64 0, i64 93964097656424, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @9, i32 0, i32 0), i64 93964097656832, i32 404, i32 35), !dbg !1072
  %171 = fadd double 2.400000e+01, %170, !dbg !1072
  call void @fAddHandler(double 2.400000e+01, double %170, double %171, i64 0, i64 93964097656832, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @9, i32 0, i32 0), i64 93964097657248, i32 404, i32 29), !dbg !1073
  %172 = load double, double* %17, align 8, !dbg !1073
  %173 = fmul double 1.200000e+01, %172, !dbg !1074
  call void @fMulHandler(double 1.200000e+01, double %172, double %173, i64 0, i64 93964097657608, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @9, i32 0, i32 0), i64 93964097658048, i32 404, i32 44), !dbg !1075
  %174 = fadd double %171, %173, !dbg !1075
  call void @fAddHandler(double %171, double %173, double %174, i64 93964097657248, i64 93964097658048, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @9, i32 0, i32 0), i64 93964097658432, i32 404, i32 38), !dbg !1076
  %175 = load double, double* %17, align 8, !dbg !1076
  %176 = fmul double 4.000000e+00, %175, !dbg !1077
  call void @fMulHandler(double 4.000000e+00, double %175, double %176, i64 0, i64 93964097658824, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @9, i32 0, i32 0), i64 93964097659264, i32 404, i32 53), !dbg !1078
  %177 = load double, double* %4, align 8, !dbg !1078
  %178 = fmul double %176, %177, !dbg !1079
  call void @fMulHandler(double %176, double %177, double %178, i64 93964097659264, i64 93964097659624, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @9, i32 0, i32 0), i64 93964097660032, i32 404, i32 56), !dbg !1080
  %179 = fadd double %174, %178, !dbg !1080
  call void @fAddHandler(double %174, double %178, double %179, i64 93964097658432, i64 93964097660032, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @9, i32 0, i32 0), i64 93964097660448, i32 404, i32 48), !dbg !1081
  %180 = load double, double* %18, align 8, !dbg !1081
  %181 = fadd double %179, %180, !dbg !1082
  call void @fAddHandler(double %179, double %180, double %181, i64 93964097660448, i64 93964097660840, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @9, i32 0, i32 0), i64 93964097661248, i32 404, i32 59), !dbg !1069
  store double %181, double* %19, align 8, !dbg !1069
  %182 = load double, double* %19, align 8, !dbg !1083
  %183 = fmul double 4.000000e+00, %182, !dbg !1084
  call void @fMulHandler(double 4.000000e+00, double %182, double %183, i64 0, i64 93964097663320, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @9, i32 0, i32 0), i64 93964097663760, i32 405, i32 39), !dbg !1085
  %184 = load double, double* %4, align 8, !dbg !1085
  %185 = fsub double -0.000000e+00, %184, !dbg !1086
  call void @fSubHandler(double -0.000000e+00, double %184, double %185, i64 0, i64 93964097664120, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @9, i32 0, i32 0), i64 93964097664528, i32 405, i32 51), !dbg !1087
  %186 = call double @exp(double %185) #6, !dbg !1087
  call void @callOneArgHandler(i32 11, double %185, double %186, i64 93964097664528, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @9, i32 0, i32 0), i64 93964097665008, i32 405, i32 47), !dbg !1088
  %187 = fmul double %183, %186, !dbg !1088
  call void @fMulHandler(double %183, double %186, double %187, i64 93964097663760, i64 93964097665008, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @9, i32 0, i32 0), i64 93964097665488, i32 405, i32 45), !dbg !1089
  %188 = fsub double 0x4058E2E2562FBB35, %187, !dbg !1089
  call void @fSubHandler(double 0x4058E2E2562FBB35, double %187, double %188, i64 0, i64 93964097665488, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @9, i32 0, i32 0), i64 93964097665904, i32 405, i32 33), !dbg !1090
  %189 = load double, double* %18, align 8, !dbg !1090
  %190 = fdiv double %188, %189, !dbg !1091
  call void @fDivHandler(double %188, double %189, double %190, i64 93964097665904, i64 93964097666296, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @9, i32 0, i32 0), i64 93964097666704, i32 405, i32 56), !dbg !1092
  %191 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1092
  %192 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %191, i32 0, i32 0, !dbg !1093
  store double %190, double* %192, align 8, !dbg !1094
  %193 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1095
  %194 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %193, i32 0, i32 0, !dbg !1096
  %195 = load double, double* %194, align 8, !dbg !1096
  %196 = fmul double 0x3CB0000000000000, %195, !dbg !1097
  call void @fMulHandler(double 0x3CB0000000000000, double %195, double %196, i64 0, i64 93964097669176, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @9, i32 0, i32 0), i64 93964097670848, i32 406, i32 35), !dbg !1098
  %197 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1098
  %198 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %197, i32 0, i32 1, !dbg !1099
  store double %196, double* %198, align 8, !dbg !1100
  store i32 0, i32* %3, align 4, !dbg !1101
  br label %226, !dbg !1101

; <label>:199:                                    ; preds = %158
  %200 = load double, double* %4, align 8, !dbg !1102
  %201 = fdiv double 0x4058E2E2562FBB35, %200, !dbg !1104
  call void @fDivHandler(double 0x4058E2E2562FBB35, double %200, double %201, i64 0, i64 93964097674552, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @9, i32 0, i32 0), i64 93964097674896, i32 410, i32 34), !dbg !1105
  %202 = load double, double* %4, align 8, !dbg !1105
  %203 = fdiv double %201, %202, !dbg !1106
  call void @fDivHandler(double %201, double %202, double %203, i64 93964097674896, i64 93964097675288, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @9, i32 0, i32 0), i64 93964097675696, i32 410, i32 37), !dbg !1107
  %204 = load double, double* %4, align 8, !dbg !1107
  %205 = fdiv double %203, %204, !dbg !1108
  call void @fDivHandler(double %203, double %204, double %205, i64 93964097675696, i64 93964097676088, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @9, i32 0, i32 0), i64 93964097676496, i32 410, i32 40), !dbg !1109
  %206 = load double, double* %4, align 8, !dbg !1109
  %207 = fdiv double %205, %206, !dbg !1110
  call void @fDivHandler(double %205, double %206, double %207, i64 93964097676496, i64 93964097676888, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @9, i32 0, i32 0), i64 93964097677296, i32 410, i32 43), !dbg !1111
  %208 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1111
  %209 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %208, i32 0, i32 0, !dbg !1112
  store double %207, double* %209, align 8, !dbg !1113
  %210 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1114
  %211 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %210, i32 0, i32 0, !dbg !1115
  %212 = load double, double* %211, align 8, !dbg !1115
  %213 = fmul double 0x3CB0000000000000, %212, !dbg !1116
  call void @fMulHandler(double 0x3CB0000000000000, double %212, double %213, i64 0, i64 93964097679768, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @9, i32 0, i32 0), i64 93964097681440, i32 411, i32 35), !dbg !1117
  %214 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1117
  %215 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %214, i32 0, i32 1, !dbg !1118
  store double %213, double* %215, align 8, !dbg !1119
  %216 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1120
  %217 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %216, i32 0, i32 0, !dbg !1120
  %218 = load double, double* %217, align 8, !dbg !1120
  %219 = call double @fabs(double %218) #1, !dbg !1120
  %220 = fcmp olt double %219, 0x10000000000000, !dbg !1120
  %221 = call i1 @fCmpInstHandler(double %219, double 0x10000000000000, i1 %220, i32 4, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @9, i32 0, i32 0), i64 93964097685584, i32 412, i32 5), !dbg !1122
  br i1 %221, label %222, label %225, !dbg !1122

; <label>:222:                                    ; preds = %199
  br label %223, !dbg !1123, !llvm.loop !1125

; <label>:223:                                    ; preds = %222
  call void @gsl_error(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i32 412, i32 15), !dbg !1126
  store i32 15, i32* %3, align 4, !dbg !1126
  br label %226, !dbg !1126
                                                  ; No predecessors!
  br label %225, !dbg !1129

; <label>:225:                                    ; preds = %224, %199
  store i32 0, i32* %3, align 4, !dbg !1131
  br label %226, !dbg !1131

; <label>:226:                                    ; preds = %225, %223, %162, %136, %58, %36, %31, %29
  %227 = load i32, i32* %3, align 4, !dbg !1132
  ret i32 %227, !dbg !1132
}

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_debye_5_e(double, %struct.gsl_sf_result_struct*) #0 !dbg !1133 {
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
  %14 = alloca double, align 8
  %15 = alloca i32, align 4
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !1134, metadata !89), !dbg !1135
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %5, metadata !1136, metadata !89), !dbg !1137
  call void @llvm.dbg.declare(metadata double* %6, metadata !1138, metadata !89), !dbg !1139
  store double 0x4083133F2791AB68, double* %6, align 8, !dbg !1139
  call void @llvm.dbg.declare(metadata double* %7, metadata !1140, metadata !89), !dbg !1141
  store double 0x4086232BDD7ABCD2, double* %7, align 8, !dbg !1141
  %21 = load double, double* %4, align 8, !dbg !1142
  %22 = fcmp olt double %21, 0.000000e+00, !dbg !1144
  %23 = call i1 @fCmpInstHandler(double %21, double 0.000000e+00, i1 %22, i32 4, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 93964097703184, i32 424, i32 8), !dbg !1145
  br i1 %23, label %24, label %33, !dbg !1145

; <label>:24:                                     ; preds = %2
  br label %25, !dbg !1146, !llvm.loop !1148

; <label>:25:                                     ; preds = %24
  %26 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1149
  %27 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %26, i32 0, i32 0, !dbg !1149
  store double 0x7FF8000000000000, double* %27, align 8, !dbg !1149
  %28 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1149
  %29 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %28, i32 0, i32 1, !dbg !1149
  store double 0x7FF8000000000000, double* %29, align 8, !dbg !1149
  br label %30, !dbg !1149, !llvm.loop !1152

; <label>:30:                                     ; preds = %25
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i32 425, i32 1), !dbg !1154
  store i32 1, i32* %3, align 4, !dbg !1154
  br label %241, !dbg !1154
                                                  ; No predecessors!
  br label %32, !dbg !1157

; <label>:32:                                     ; preds = %31
  br label %241, !dbg !1159

; <label>:33:                                     ; preds = %2
  %34 = load double, double* %4, align 8, !dbg !1160
  %35 = fcmp olt double %34, 0x3E66A09E667F3BCD, !dbg !1162
  %36 = call i1 @fCmpInstHandler(double %34, double 0x3E66A09E667F3BCD, i1 %35, i32 4, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 93964097711888, i32 427, i32 13), !dbg !1163
  br i1 %36, label %37, label %56, !dbg !1163

; <label>:37:                                     ; preds = %33
  %38 = load double, double* %4, align 8, !dbg !1164
  %39 = fmul double 5.000000e+00, %38, !dbg !1166
  call void @fMulHandler(double 5.000000e+00, double %38, double %39, i64 0, i64 93964097713000, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 93964097713376, i32 428, i32 28), !dbg !1167
  %40 = fdiv double %39, 1.200000e+01, !dbg !1167
  call void @fDivHandler(double %39, double 1.200000e+01, double %40, i64 93964097713376, i64 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 93964097713792, i32 428, i32 30), !dbg !1168
  %41 = fsub double 1.000000e+00, %40, !dbg !1168
  call void @fSubHandler(double 1.000000e+00, double %40, double %41, i64 0, i64 93964097713792, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 93964097714208, i32 428, i32 23), !dbg !1169
  %42 = load double, double* %4, align 8, !dbg !1169
  %43 = fmul double 5.000000e+00, %42, !dbg !1170
  call void @fMulHandler(double 5.000000e+00, double %42, double %43, i64 0, i64 93964097714568, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 93964097715008, i32 428, i32 41), !dbg !1171
  %44 = load double, double* %4, align 8, !dbg !1171
  %45 = fmul double %43, %44, !dbg !1172
  call void @fMulHandler(double %43, double %44, double %45, i64 93964097715008, i64 93964097715368, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 93964097715776, i32 428, i32 43), !dbg !1173
  %46 = fdiv double %45, 8.400000e+01, !dbg !1173
  call void @fDivHandler(double %45, double 8.400000e+01, double %46, i64 93964097715776, i64 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 93964097716288, i32 428, i32 45), !dbg !1174
  %47 = fadd double %41, %46, !dbg !1174
  call void @fAddHandler(double %41, double %46, double %47, i64 93964097714208, i64 93964097716288, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 93964097716672, i32 428, i32 36), !dbg !1175
  %48 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1175
  %49 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %48, i32 0, i32 0, !dbg !1176
  store double %47, double* %49, align 8, !dbg !1177
  %50 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1178
  %51 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %50, i32 0, i32 0, !dbg !1179
  %52 = load double, double* %51, align 8, !dbg !1179
  %53 = fmul double 0x3CB0000000000000, %52, !dbg !1180
  call void @fMulHandler(double 0x3CB0000000000000, double %52, double %53, i64 0, i64 93964097719144, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 93964097720816, i32 429, i32 35), !dbg !1181
  %54 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1181
  %55 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %54, i32 0, i32 1, !dbg !1182
  store double %53, double* %55, align 8, !dbg !1183
  store i32 0, i32* %3, align 4, !dbg !1184
  br label %241, !dbg !1184

; <label>:56:                                     ; preds = %33
  %57 = load double, double* %4, align 8, !dbg !1185
  %58 = fcmp ole double %57, 4.000000e+00, !dbg !1187
  %59 = call i1 @fCmpInstHandler(double %57, double 4.000000e+00, i1 %58, i32 5, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 93964097724896, i32 432, i32 13), !dbg !1188
  br i1 %59, label %60, label %84, !dbg !1188

; <label>:60:                                     ; preds = %56
  call void @llvm.dbg.declare(metadata double* %8, metadata !1189, metadata !89), !dbg !1191
  %61 = load double, double* %4, align 8, !dbg !1192
  %62 = load double, double* %4, align 8, !dbg !1193
  %63 = fmul double %61, %62, !dbg !1194
  call void @fMulHandler(double %61, double %62, double %63, i64 93964097727032, i64 93964097727384, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 93964097727792, i32 433, i32 23), !dbg !1195
  %64 = fdiv double %63, 8.000000e+00, !dbg !1195
  call void @fDivHandler(double %63, double 8.000000e+00, double %64, i64 93964097727792, i64 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 93964097728240, i32 433, i32 25), !dbg !1196
  %65 = fsub double %64, 1.000000e+00, !dbg !1196
  call void @fSubHandler(double %64, double 1.000000e+00, double %65, i64 93964097728240, i64 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 93964097728656, i32 433, i32 30), !dbg !1191
  store double %65, double* %8, align 8, !dbg !1191
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %9, metadata !1197, metadata !89), !dbg !1198
  %66 = load double, double* %8, align 8, !dbg !1199
  %67 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @adeb5_cs, double %66, %struct.gsl_sf_result_struct* %9), !dbg !1200
  %68 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %9, i32 0, i32 0, !dbg !1201
  %69 = load double, double* %68, align 8, !dbg !1201
  %70 = load double, double* %4, align 8, !dbg !1202
  %71 = fmul double 5.000000e+00, %70, !dbg !1203
  call void @fMulHandler(double 5.000000e+00, double %70, double %71, i64 0, i64 93964097734824, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 93964097735264, i32 436, i32 30), !dbg !1204
  %72 = fdiv double %71, 1.200000e+01, !dbg !1204
  call void @fDivHandler(double %71, double 1.200000e+01, double %72, i64 93964097735264, i64 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 93964097735680, i32 436, i32 32), !dbg !1205
  %73 = fsub double %69, %72, !dbg !1205
  call void @fSubHandler(double %69, double %72, double %73, i64 93964097733176, i64 93964097735680, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 93964097736064, i32 436, i32 25), !dbg !1206
  %74 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1206
  %75 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %74, i32 0, i32 0, !dbg !1207
  store double %73, double* %75, align 8, !dbg !1208
  %76 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %9, i32 0, i32 1, !dbg !1209
  %77 = load double, double* %76, align 8, !dbg !1209
  %78 = load double, double* %4, align 8, !dbg !1210
  %79 = fmul double 0x3CD4000000000000, %78, !dbg !1211
  call void @fMulHandler(double 0x3CD4000000000000, double %78, double %79, i64 0, i64 93964097739800, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 93964097740272, i32 437, i32 48), !dbg !1212
  %80 = fdiv double %79, 1.200000e+01, !dbg !1212
  call void @fDivHandler(double %79, double 1.200000e+01, double %80, i64 93964097740272, i64 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 93964097740720, i32 437, i32 50), !dbg !1213
  %81 = fadd double %77, %80, !dbg !1213
  call void @fAddHandler(double %77, double %80, double %81, i64 93964097738152, i64 93964097740720, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 93964097741104, i32 437, i32 25), !dbg !1214
  %82 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1214
  %83 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %82, i32 0, i32 1, !dbg !1215
  store double %81, double* %83, align 8, !dbg !1216
  store i32 0, i32* %3, align 4, !dbg !1217
  br label %241, !dbg !1217

; <label>:84:                                     ; preds = %56
  %85 = load double, double* %4, align 8, !dbg !1218
  %86 = fcmp olt double %85, 0x4041ACDD632F662A, !dbg !1220
  %87 = call i1 @fCmpInstHandler(double %85, double 0x4041ACDD632F662A, i1 %86, i32 4, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 93964097745152, i32 440, i32 13), !dbg !1221
  br i1 %87, label %88, label %165, !dbg !1221

; <label>:88:                                     ; preds = %84
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1222, metadata !89), !dbg !1224
  %89 = load double, double* %4, align 8, !dbg !1225
  %90 = fdiv double 0x4086232BDD7ABCD2, %89, !dbg !1226
  call void @fDivHandler(double 0x4086232BDD7ABCD2, double %89, double %90, i64 0, i64 93964097747320, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 93964097747696, i32 441, i32 32), !dbg !1227
  %91 = call double @floor(double %90) #1, !dbg !1227
  %92 = fptosi double %91 to i32, !dbg !1227
  store i32 %92, i32* %10, align 4, !dbg !1224
  call void @llvm.dbg.declare(metadata double* %11, metadata !1228, metadata !89), !dbg !1229
  %93 = load double, double* %4, align 8, !dbg !1230
  %94 = fsub double -0.000000e+00, %93, !dbg !1231
  call void @fSubHandler(double -0.000000e+00, double %93, double %94, i64 0, i64 93964097753080, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 93964097753456, i32 442, i32 28), !dbg !1232
  %95 = call double @exp(double %94) #6, !dbg !1232
  call void @callOneArgHandler(i32 11, double %94, double %95, i64 93964097753456, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 93964097753936, i32 442, i32 24), !dbg !1229
  store double %95, double* %11, align 8, !dbg !1229
  call void @llvm.dbg.declare(metadata double* %12, metadata !1233, metadata !89), !dbg !1234
  %96 = load i32, i32* %10, align 4, !dbg !1235
  %97 = sitofp i32 %96 to double, !dbg !1235
  %98 = load double, double* %4, align 8, !dbg !1236
  %99 = fmul double %97, %98, !dbg !1237
  call void @fMulHandler(double %97, double %98, double %99, i64 93964097757544, i64 93964097759192, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 93964097759600, i32 443, i32 23), !dbg !1234
  store double %99, double* %12, align 8, !dbg !1234
  call void @llvm.dbg.declare(metadata double* %13, metadata !1238, metadata !89), !dbg !1239
  %100 = load i32, i32* %10, align 4, !dbg !1240
  %101 = sitofp i32 %100 to double, !dbg !1240
  store double %101, double* %13, align 8, !dbg !1239
  call void @llvm.dbg.declare(metadata double* %14, metadata !1241, metadata !89), !dbg !1242
  store double 0.000000e+00, double* %14, align 8, !dbg !1242
  call void @llvm.dbg.declare(metadata i32* %15, metadata !1243, metadata !89), !dbg !1244
  %102 = load i32, i32* %10, align 4, !dbg !1245
  store i32 %102, i32* %15, align 4, !dbg !1247
  br label %103, !dbg !1248

; <label>:103:                                    ; preds = %138, %88
  %104 = load i32, i32* %15, align 4, !dbg !1249
  %105 = icmp sge i32 %104, 1, !dbg !1252
  %106 = sext i32 %104 to i64, !dbg !1253
  %107 = call i1 @iCmpInstHandler(i64 %106, i64 1, i1 %105, i32 39, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 93964097772000, i32 447, i32 18), !dbg !1253
  br i1 %107, label %108, label %141, !dbg !1253

; <label>:108:                                    ; preds = %103
  call void @llvm.dbg.declare(metadata double* %16, metadata !1254, metadata !89), !dbg !1256
  %109 = load double, double* %12, align 8, !dbg !1257
  %110 = fdiv double 1.000000e+00, %109, !dbg !1258
  call void @fDivHandler(double 1.000000e+00, double %109, double %110, i64 0, i64 93964097774168, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 93964097774576, i32 448, i32 26), !dbg !1256
  store double %110, double* %16, align 8, !dbg !1256
  %111 = load double, double* %11, align 8, !dbg !1259
  %112 = load double, double* %14, align 8, !dbg !1260
  %113 = fmul double %112, %111, !dbg !1260
  call void @fMulHandler(double %112, double %111, double %113, i64 93964097777000, i64 93964097776616, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 93964097777408, i32 449, i32 11), !dbg !1260
  store double %113, double* %14, align 8, !dbg !1260
  %114 = load double, double* %16, align 8, !dbg !1261
  %115 = fmul double 1.200000e+02, %114, !dbg !1262
  call void @fMulHandler(double 1.200000e+02, double %114, double %115, i64 0, i64 93964097779192, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 93964097779696, i32 450, i32 24), !dbg !1263
  %116 = fadd double %115, 1.200000e+02, !dbg !1263
  call void @fAddHandler(double %115, double 1.200000e+02, double %116, i64 93964097779696, i64 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 93964097780112, i32 450, i32 32), !dbg !1264
  %117 = load double, double* %16, align 8, !dbg !1264
  %118 = fmul double %116, %117, !dbg !1265
  call void @fMulHandler(double %116, double %117, double %118, i64 93964097780112, i64 93964097780472, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 93964097780880, i32 450, i32 40), !dbg !1266
  %119 = fadd double %118, 6.000000e+01, !dbg !1266
  call void @fAddHandler(double %118, double 6.000000e+01, double %119, i64 93964097780880, i64 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 93964097781392, i32 450, i32 48), !dbg !1267
  %120 = load double, double* %16, align 8, !dbg !1267
  %121 = fmul double %119, %120, !dbg !1268
  call void @fMulHandler(double %119, double %120, double %121, i64 93964097781392, i64 93964097781752, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 93964097782160, i32 450, i32 55), !dbg !1269
  %122 = fadd double %121, 2.000000e+01, !dbg !1269
  call void @fAddHandler(double %121, double 2.000000e+01, double %122, i64 93964097782160, i64 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 93964097782608, i32 450, i32 63), !dbg !1270
  %123 = load double, double* %16, align 8, !dbg !1270
  %124 = fmul double %122, %123, !dbg !1271
  call void @fMulHandler(double %122, double %123, double %124, i64 93964097782608, i64 93964097782968, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 93964097783376, i32 450, i32 70), !dbg !1272
  %125 = fadd double %124, 5.000000e+00, !dbg !1272
  call void @fAddHandler(double %124, double 5.000000e+00, double %125, i64 93964097783376, i64 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 93964097783824, i32 450, i32 78), !dbg !1273
  %126 = load double, double* %16, align 8, !dbg !1273
  %127 = fmul double %125, %126, !dbg !1274
  call void @fMulHandler(double %125, double %126, double %127, i64 93964097783824, i64 93964097784184, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 93964097784592, i32 450, i32 84), !dbg !1275
  %128 = fadd double %127, 1.000000e+00, !dbg !1275
  call void @fAddHandler(double %127, double 1.000000e+00, double %128, i64 93964097784592, i64 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 93964097785040, i32 450, i32 91), !dbg !1276
  %129 = load double, double* %13, align 8, !dbg !1276
  %130 = fdiv double %128, %129, !dbg !1277
  call void @fDivHandler(double %128, double %129, double %130, i64 93964097785040, i64 93964097785400, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 93964097785808, i32 450, i32 98), !dbg !1278
  %131 = load double, double* %14, align 8, !dbg !1278
  %132 = fadd double %131, %130, !dbg !1278
  call void @fAddHandler(double %131, double %130, double %132, i64 93964097786200, i64 93964097785808, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 93964097786608, i32 450, i32 11), !dbg !1278
  store double %132, double* %14, align 8, !dbg !1278
  %133 = load double, double* %13, align 8, !dbg !1279
  %134 = fsub double %133, 1.000000e+00, !dbg !1279
  call void @fSubHandler(double %133, double 1.000000e+00, double %134, i64 93964097788392, i64 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 93964097788832, i32 451, i32 10), !dbg !1279
  store double %134, double* %13, align 8, !dbg !1279
  %135 = load double, double* %4, align 8, !dbg !1280
  %136 = load double, double* %12, align 8, !dbg !1281
  %137 = fsub double %136, %135, !dbg !1281
  call void @fSubHandler(double %136, double %135, double %137, i64 93964097793032, i64 93964097792680, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 93964097793440, i32 452, i32 10), !dbg !1281
  store double %137, double* %12, align 8, !dbg !1281
  br label %138, !dbg !1282

; <label>:138:                                    ; preds = %108
  %139 = load i32, i32* %15, align 4, !dbg !1283
  %140 = add nsw i32 %139, -1, !dbg !1283
  store i32 %140, i32* %15, align 4, !dbg !1283
  br label %103, !dbg !1285, !llvm.loop !1286

; <label>:141:                                    ; preds = %103
  %142 = load double, double* %4, align 8, !dbg !1288
  %143 = load double, double* %4, align 8, !dbg !1289
  %144 = fmul double %142, %143, !dbg !1290
  call void @fMulHandler(double %142, double %143, double %144, i64 93964097798552, i64 93964097798872, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 93964097799280, i32 454, i32 34), !dbg !1291
  %145 = load double, double* %4, align 8, !dbg !1291
  %146 = fmul double %144, %145, !dbg !1292
  call void @fMulHandler(double %144, double %145, double %146, i64 93964097799280, i64 93964097799672, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 93964097800080, i32 454, i32 36), !dbg !1293
  %147 = load double, double* %4, align 8, !dbg !1293
  %148 = fmul double %146, %147, !dbg !1294
  call void @fMulHandler(double %146, double %147, double %148, i64 93964097800080, i64 93964097800472, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 93964097800880, i32 454, i32 38), !dbg !1295
  %149 = load double, double* %4, align 8, !dbg !1295
  %150 = fmul double %148, %149, !dbg !1296
  call void @fMulHandler(double %148, double %149, double %150, i64 93964097800880, i64 93964097801272, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 93964097801680, i32 454, i32 40), !dbg !1297
  %151 = fdiv double 0x4083133F2791AB68, %150, !dbg !1297
  call void @fDivHandler(double 0x4083133F2791AB68, double %150, double %151, i64 0, i64 93964097801680, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 93964097802096, i32 454, i32 31), !dbg !1298
  %152 = load double, double* %14, align 8, !dbg !1298
  %153 = fmul double 5.000000e+00, %152, !dbg !1299
  call void @fMulHandler(double 5.000000e+00, double %152, double %153, i64 0, i64 93964097802488, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 93964097802928, i32 454, i32 50), !dbg !1300
  %154 = load double, double* %11, align 8, !dbg !1300
  %155 = fmul double %153, %154, !dbg !1301
  call void @fMulHandler(double %153, double %154, double %155, i64 93964097802928, i64 93964097803288, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 93964097803696, i32 454, i32 56), !dbg !1302
  %156 = fsub double %151, %155, !dbg !1302
  call void @fSubHandler(double %151, double %155, double %156, i64 93964097802096, i64 93964097803696, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 93964097804112, i32 454, i32 44), !dbg !1303
  %157 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1303
  %158 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %157, i32 0, i32 0, !dbg !1304
  store double %156, double* %158, align 8, !dbg !1305
  %159 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1306
  %160 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %159, i32 0, i32 0, !dbg !1307
  %161 = load double, double* %160, align 8, !dbg !1307
  %162 = fmul double 0x3CB0000000000000, %161, !dbg !1308
  call void @fMulHandler(double 0x3CB0000000000000, double %161, double %162, i64 0, i64 93964097806584, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 93964097808256, i32 455, i32 35), !dbg !1309
  %163 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1309
  %164 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %163, i32 0, i32 1, !dbg !1310
  store double %162, double* %164, align 8, !dbg !1311
  store i32 0, i32* %3, align 4, !dbg !1312
  br label %241, !dbg !1312

; <label>:165:                                    ; preds = %84
  %166 = load double, double* %4, align 8, !dbg !1313
  %167 = fcmp olt double %166, 0x4086232BDD7ABCD2, !dbg !1315
  %168 = call i1 @fCmpInstHandler(double %166, double 0x4086232BDD7ABCD2, i1 %167, i32 4, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 93964097812304, i32 458, i32 13), !dbg !1316
  br i1 %168, label %169, label %212, !dbg !1316

; <label>:169:                                    ; preds = %165
  call void @llvm.dbg.declare(metadata double* %17, metadata !1317, metadata !89), !dbg !1319
  %170 = load double, double* %4, align 8, !dbg !1320
  %171 = load double, double* %4, align 8, !dbg !1321
  %172 = fmul double %170, %171, !dbg !1322
  call void @fMulHandler(double %170, double %171, double %172, i64 93964097814472, i64 93964097814824, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 93964097815232, i32 459, i32 24), !dbg !1319
  store double %172, double* %17, align 8, !dbg !1319
  call void @llvm.dbg.declare(metadata double* %18, metadata !1323, metadata !89), !dbg !1324
  %173 = load double, double* %17, align 8, !dbg !1325
  %174 = load double, double* %17, align 8, !dbg !1326
  %175 = fmul double %173, %174, !dbg !1327
  call void @fMulHandler(double %173, double %174, double %175, i64 93964097818424, i64 93964097818776, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 93964097819184, i32 460, i32 25), !dbg !1324
  store double %175, double* %18, align 8, !dbg !1324
  call void @llvm.dbg.declare(metadata double* %19, metadata !1328, metadata !89), !dbg !1329
  %176 = load double, double* %18, align 8, !dbg !1330
  %177 = load double, double* %4, align 8, !dbg !1331
  %178 = fmul double %176, %177, !dbg !1332
  call void @fMulHandler(double %176, double %177, double %178, i64 93964097822376, i64 93964097822728, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 93964097823136, i32 461, i32 25), !dbg !1329
  store double %178, double* %19, align 8, !dbg !1329
  call void @llvm.dbg.declare(metadata double* %20, metadata !1333, metadata !89), !dbg !1334
  %179 = load double, double* %4, align 8, !dbg !1335
  %180 = fmul double 1.200000e+02, %179, !dbg !1336
  call void @fMulHandler(double 1.200000e+02, double %179, double %180, i64 0, i64 93964097826328, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 93964097826736, i32 462, i32 37), !dbg !1337
  %181 = fadd double 1.200000e+02, %180, !dbg !1337
  call void @fAddHandler(double 1.200000e+02, double %180, double %181, i64 0, i64 93964097826736, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 93964097827152, i32 462, i32 30), !dbg !1338
  %182 = load double, double* %17, align 8, !dbg !1338
  %183 = fmul double 6.000000e+01, %182, !dbg !1339
  call void @fMulHandler(double 6.000000e+01, double %182, double %183, i64 0, i64 93964097827512, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 93964097827952, i32 462, i32 46), !dbg !1340
  %184 = fadd double %181, %183, !dbg !1340
  call void @fAddHandler(double %181, double %183, double %184, i64 93964097827152, i64 93964097827952, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 93964097828336, i32 462, i32 40), !dbg !1341
  %185 = load double, double* %17, align 8, !dbg !1341
  %186 = fmul double 2.000000e+01, %185, !dbg !1342
  call void @fMulHandler(double 2.000000e+01, double %185, double %186, i64 0, i64 93964097828728, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 93964097829168, i32 462, i32 56), !dbg !1343
  %187 = load double, double* %4, align 8, !dbg !1343
  %188 = fmul double %186, %187, !dbg !1344
  call void @fMulHandler(double %186, double %187, double %188, i64 93964097829168, i64 93964097829528, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 93964097829936, i32 462, i32 59), !dbg !1345
  %189 = fadd double %184, %188, !dbg !1345
  call void @fAddHandler(double %184, double %188, double %189, i64 93964097828336, i64 93964097829936, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 93964097830352, i32 462, i32 50), !dbg !1346
  %190 = load double, double* %18, align 8, !dbg !1346
  %191 = fmul double 5.000000e+00, %190, !dbg !1347
  call void @fMulHandler(double 5.000000e+00, double %190, double %191, i64 0, i64 93964097830744, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 93964097831184, i32 462, i32 67), !dbg !1348
  %192 = fadd double %189, %191, !dbg !1348
  call void @fAddHandler(double %189, double %191, double %192, i64 93964097830352, i64 93964097831184, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 93964097831568, i32 462, i32 62), !dbg !1349
  %193 = load double, double* %19, align 8, !dbg !1349
  %194 = fadd double %192, %193, !dbg !1350
  call void @fAddHandler(double %192, double %193, double %194, i64 93964097831568, i64 93964097831960, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 93964097832368, i32 462, i32 71), !dbg !1334
  store double %194, double* %20, align 8, !dbg !1334
  %195 = load double, double* %20, align 8, !dbg !1351
  %196 = fmul double 5.000000e+00, %195, !dbg !1352
  call void @fMulHandler(double 5.000000e+00, double %195, double %196, i64 0, i64 93964097834440, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 93964097834880, i32 463, i32 39), !dbg !1353
  %197 = load double, double* %4, align 8, !dbg !1353
  %198 = fsub double -0.000000e+00, %197, !dbg !1354
  call void @fSubHandler(double -0.000000e+00, double %197, double %198, i64 0, i64 93964097835240, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 93964097835648, i32 463, i32 51), !dbg !1355
  %199 = call double @exp(double %198) #6, !dbg !1355
  call void @callOneArgHandler(i32 11, double %198, double %199, i64 93964097835648, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 93964097836128, i32 463, i32 47), !dbg !1356
  %200 = fmul double %196, %199, !dbg !1356
  call void @fMulHandler(double %196, double %199, double %200, i64 93964097834880, i64 93964097836128, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 93964097836608, i32 463, i32 45), !dbg !1357
  %201 = fsub double 0x4083133F2791AB68, %200, !dbg !1357
  call void @fSubHandler(double 0x4083133F2791AB68, double %200, double %201, i64 0, i64 93964097836608, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 93964097837024, i32 463, i32 33), !dbg !1358
  %202 = load double, double* %19, align 8, !dbg !1358
  %203 = fdiv double %201, %202, !dbg !1359
  call void @fDivHandler(double %201, double %202, double %203, i64 93964097837024, i64 93964097837416, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 93964097837824, i32 463, i32 56), !dbg !1360
  %204 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1360
  %205 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %204, i32 0, i32 0, !dbg !1361
  store double %203, double* %205, align 8, !dbg !1362
  %206 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1363
  %207 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %206, i32 0, i32 0, !dbg !1364
  %208 = load double, double* %207, align 8, !dbg !1364
  %209 = fmul double 0x3CB0000000000000, %208, !dbg !1365
  call void @fMulHandler(double 0x3CB0000000000000, double %208, double %209, i64 0, i64 93964097840296, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 93964097841968, i32 464, i32 35), !dbg !1366
  %210 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1366
  %211 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %210, i32 0, i32 1, !dbg !1367
  store double %209, double* %211, align 8, !dbg !1368
  store i32 0, i32* %3, align 4, !dbg !1369
  br label %241, !dbg !1369

; <label>:212:                                    ; preds = %165
  %213 = load double, double* %4, align 8, !dbg !1370
  %214 = fdiv double 0x4083133F2791AB68, %213, !dbg !1372
  call void @fDivHandler(double 0x4083133F2791AB68, double %213, double %214, i64 0, i64 93964097845672, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 93964097846016, i32 468, i32 35), !dbg !1373
  %215 = load double, double* %4, align 8, !dbg !1373
  %216 = fdiv double %214, %215, !dbg !1374
  call void @fDivHandler(double %214, double %215, double %216, i64 93964097846016, i64 93964097846408, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 93964097846816, i32 468, i32 38), !dbg !1375
  %217 = load double, double* %4, align 8, !dbg !1375
  %218 = fdiv double %216, %217, !dbg !1376
  call void @fDivHandler(double %216, double %217, double %218, i64 93964097846816, i64 93964097847208, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 93964097847616, i32 468, i32 41), !dbg !1377
  %219 = load double, double* %4, align 8, !dbg !1377
  %220 = fdiv double %218, %219, !dbg !1378
  call void @fDivHandler(double %218, double %219, double %220, i64 93964097847616, i64 93964097848008, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 93964097848416, i32 468, i32 44), !dbg !1379
  %221 = load double, double* %4, align 8, !dbg !1379
  %222 = fdiv double %220, %221, !dbg !1380
  call void @fDivHandler(double %220, double %221, double %222, i64 93964097848416, i64 93964097848808, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 93964097849216, i32 468, i32 47), !dbg !1381
  %223 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1381
  %224 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %223, i32 0, i32 0, !dbg !1382
  store double %222, double* %224, align 8, !dbg !1383
  %225 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1384
  %226 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %225, i32 0, i32 0, !dbg !1385
  %227 = load double, double* %226, align 8, !dbg !1385
  %228 = fmul double 0x3CB0000000000000, %227, !dbg !1386
  call void @fMulHandler(double 0x3CB0000000000000, double %227, double %228, i64 0, i64 93964097851688, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 93964097853360, i32 469, i32 35), !dbg !1387
  %229 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1387
  %230 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %229, i32 0, i32 1, !dbg !1388
  store double %228, double* %230, align 8, !dbg !1389
  %231 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1390
  %232 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %231, i32 0, i32 0, !dbg !1390
  %233 = load double, double* %232, align 8, !dbg !1390
  %234 = call double @fabs(double %233) #1, !dbg !1390
  %235 = fcmp olt double %234, 0x10000000000000, !dbg !1390
  %236 = call i1 @fCmpInstHandler(double %234, double 0x10000000000000, i1 %235, i32 4, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @11, i32 0, i32 0), i64 93964097857504, i32 470, i32 5), !dbg !1392
  br i1 %236, label %237, label %240, !dbg !1392

; <label>:237:                                    ; preds = %212
  br label %238, !dbg !1393, !llvm.loop !1395

; <label>:238:                                    ; preds = %237
  call void @gsl_error(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i32 470, i32 15), !dbg !1396
  store i32 15, i32* %3, align 4, !dbg !1396
  br label %241, !dbg !1396
                                                  ; No predecessors!
  br label %240, !dbg !1399

; <label>:240:                                    ; preds = %239, %212
  store i32 0, i32* %3, align 4, !dbg !1401
  br label %241, !dbg !1401

; <label>:241:                                    ; preds = %240, %238, %169, %141, %60, %37, %32, %30
  %242 = load i32, i32* %3, align 4, !dbg !1402
  ret i32 %242, !dbg !1402
}

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_debye_6_e(double, %struct.gsl_sf_result_struct*) #0 !dbg !1403 {
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
  %14 = alloca double, align 8
  %15 = alloca i32, align 4
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !1404, metadata !89), !dbg !1405
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %5, metadata !1406, metadata !89), !dbg !1407
  call void @llvm.dbg.declare(metadata double* %6, metadata !1408, metadata !89), !dbg !1409
  store double 0x40B10411A201F28E, double* %6, align 8, !dbg !1409
  call void @llvm.dbg.declare(metadata double* %7, metadata !1410, metadata !89), !dbg !1411
  store double 0x4086232BDD7ABCD2, double* %7, align 8, !dbg !1411
  %21 = load double, double* %4, align 8, !dbg !1412
  %22 = fcmp olt double %21, 0.000000e+00, !dbg !1414
  %23 = call i1 @fCmpInstHandler(double %21, double 0.000000e+00, i1 %22, i32 4, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @13, i32 0, i32 0), i64 93964097875104, i32 482, i32 8), !dbg !1415
  br i1 %23, label %24, label %33, !dbg !1415

; <label>:24:                                     ; preds = %2
  br label %25, !dbg !1416, !llvm.loop !1418

; <label>:25:                                     ; preds = %24
  %26 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1419
  %27 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %26, i32 0, i32 0, !dbg !1419
  store double 0x7FF8000000000000, double* %27, align 8, !dbg !1419
  %28 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1419
  %29 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %28, i32 0, i32 1, !dbg !1419
  store double 0x7FF8000000000000, double* %29, align 8, !dbg !1419
  br label %30, !dbg !1419, !llvm.loop !1422

; <label>:30:                                     ; preds = %25
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i32 483, i32 1), !dbg !1424
  store i32 1, i32* %3, align 4, !dbg !1424
  br label %252, !dbg !1424
                                                  ; No predecessors!
  br label %32, !dbg !1427

; <label>:32:                                     ; preds = %31
  br label %252, !dbg !1429

; <label>:33:                                     ; preds = %2
  %34 = load double, double* %4, align 8, !dbg !1430
  %35 = fcmp olt double %34, 0x3E66A09E667F3BCD, !dbg !1432
  %36 = call i1 @fCmpInstHandler(double %34, double 0x3E66A09E667F3BCD, i1 %35, i32 4, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @13, i32 0, i32 0), i64 93964097883808, i32 485, i32 13), !dbg !1433
  br i1 %36, label %37, label %55, !dbg !1433

; <label>:37:                                     ; preds = %33
  %38 = load double, double* %4, align 8, !dbg !1434
  %39 = fmul double 3.000000e+00, %38, !dbg !1436
  call void @fMulHandler(double 3.000000e+00, double %38, double %39, i64 0, i64 93964097884920, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @13, i32 0, i32 0), i64 93964097885296, i32 486, i32 28), !dbg !1437
  %40 = fdiv double %39, 7.000000e+00, !dbg !1437
  call void @fDivHandler(double %39, double 7.000000e+00, double %40, i64 93964097885296, i64 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @13, i32 0, i32 0), i64 93964097885776, i32 486, i32 30), !dbg !1438
  %41 = fsub double 1.000000e+00, %40, !dbg !1438
  call void @fSubHandler(double 1.000000e+00, double %40, double %41, i64 0, i64 93964097885776, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @13, i32 0, i32 0), i64 93964097886192, i32 486, i32 23), !dbg !1439
  %42 = load double, double* %4, align 8, !dbg !1439
  %43 = load double, double* %4, align 8, !dbg !1440
  %44 = fmul double %42, %43, !dbg !1441
  call void @fMulHandler(double %42, double %43, double %44, i64 93964097886552, i64 93964097886936, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @13, i32 0, i32 0), i64 93964097887344, i32 486, i32 38), !dbg !1442
  %45 = fdiv double %44, 1.600000e+01, !dbg !1442
  call void @fDivHandler(double %44, double 1.600000e+01, double %45, i64 93964097887344, i64 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @13, i32 0, i32 0), i64 93964097887856, i32 486, i32 40), !dbg !1443
  %46 = fadd double %41, %45, !dbg !1443
  call void @fAddHandler(double %41, double %45, double %46, i64 93964097886192, i64 93964097887856, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @13, i32 0, i32 0), i64 93964097888240, i32 486, i32 35), !dbg !1444
  %47 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1444
  %48 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %47, i32 0, i32 0, !dbg !1445
  store double %46, double* %48, align 8, !dbg !1446
  %49 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1447
  %50 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %49, i32 0, i32 0, !dbg !1448
  %51 = load double, double* %50, align 8, !dbg !1448
  %52 = fmul double 0x3CB0000000000000, %51, !dbg !1449
  call void @fMulHandler(double 0x3CB0000000000000, double %51, double %52, i64 0, i64 93964097890712, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @13, i32 0, i32 0), i64 93964097892384, i32 487, i32 35), !dbg !1450
  %53 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1450
  %54 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %53, i32 0, i32 1, !dbg !1451
  store double %52, double* %54, align 8, !dbg !1452
  store i32 0, i32* %3, align 4, !dbg !1453
  br label %252, !dbg !1453

; <label>:55:                                     ; preds = %33
  %56 = load double, double* %4, align 8, !dbg !1454
  %57 = fcmp ole double %56, 4.000000e+00, !dbg !1456
  %58 = call i1 @fCmpInstHandler(double %56, double 4.000000e+00, i1 %57, i32 5, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @13, i32 0, i32 0), i64 93964097896464, i32 490, i32 13), !dbg !1457
  br i1 %58, label %59, label %83, !dbg !1457

; <label>:59:                                     ; preds = %55
  call void @llvm.dbg.declare(metadata double* %8, metadata !1458, metadata !89), !dbg !1460
  %60 = load double, double* %4, align 8, !dbg !1461
  %61 = load double, double* %4, align 8, !dbg !1462
  %62 = fmul double %60, %61, !dbg !1463
  call void @fMulHandler(double %60, double %61, double %62, i64 93964097898600, i64 93964097898952, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @13, i32 0, i32 0), i64 93964097899360, i32 491, i32 23), !dbg !1464
  %63 = fdiv double %62, 8.000000e+00, !dbg !1464
  call void @fDivHandler(double %62, double 8.000000e+00, double %63, i64 93964097899360, i64 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @13, i32 0, i32 0), i64 93964097899808, i32 491, i32 25), !dbg !1465
  %64 = fsub double %63, 1.000000e+00, !dbg !1465
  call void @fSubHandler(double %63, double 1.000000e+00, double %64, i64 93964097899808, i64 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @13, i32 0, i32 0), i64 93964097900224, i32 491, i32 30), !dbg !1460
  store double %64, double* %8, align 8, !dbg !1460
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %9, metadata !1466, metadata !89), !dbg !1467
  %65 = load double, double* %8, align 8, !dbg !1468
  %66 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @adeb6_cs, double %65, %struct.gsl_sf_result_struct* %9), !dbg !1469
  %67 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %9, i32 0, i32 0, !dbg !1470
  %68 = load double, double* %67, align 8, !dbg !1470
  %69 = load double, double* %4, align 8, !dbg !1471
  %70 = fmul double 3.000000e+00, %69, !dbg !1472
  call void @fMulHandler(double 3.000000e+00, double %69, double %70, i64 0, i64 93964097906392, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @13, i32 0, i32 0), i64 93964097906832, i32 494, i32 30), !dbg !1473
  %71 = fdiv double %70, 7.000000e+00, !dbg !1473
  call void @fDivHandler(double %70, double 7.000000e+00, double %71, i64 93964097906832, i64 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @13, i32 0, i32 0), i64 93964097907248, i32 494, i32 32), !dbg !1474
  %72 = fsub double %68, %71, !dbg !1474
  call void @fSubHandler(double %68, double %71, double %72, i64 93964097904744, i64 93964097907248, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @13, i32 0, i32 0), i64 93964097907632, i32 494, i32 25), !dbg !1475
  %73 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1475
  %74 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %73, i32 0, i32 0, !dbg !1476
  store double %72, double* %74, align 8, !dbg !1477
  %75 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %9, i32 0, i32 1, !dbg !1478
  %76 = load double, double* %75, align 8, !dbg !1478
  %77 = load double, double* %4, align 8, !dbg !1479
  %78 = fmul double 0x3CC8000000000000, %77, !dbg !1480
  call void @fMulHandler(double 0x3CC8000000000000, double %77, double %78, i64 0, i64 93964097911368, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @13, i32 0, i32 0), i64 93964097911840, i32 495, i32 48), !dbg !1481
  %79 = fdiv double %78, 7.000000e+00, !dbg !1481
  call void @fDivHandler(double %78, double 7.000000e+00, double %79, i64 93964097911840, i64 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @13, i32 0, i32 0), i64 93964097912288, i32 495, i32 50), !dbg !1482
  %80 = fadd double %76, %79, !dbg !1482
  call void @fAddHandler(double %76, double %79, double %80, i64 93964097909720, i64 93964097912288, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @13, i32 0, i32 0), i64 93964097912672, i32 495, i32 25), !dbg !1483
  %81 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1483
  %82 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %81, i32 0, i32 1, !dbg !1484
  store double %80, double* %82, align 8, !dbg !1485
  store i32 0, i32* %3, align 4, !dbg !1486
  br label %252, !dbg !1486

; <label>:83:                                     ; preds = %55
  %84 = load double, double* %4, align 8, !dbg !1487
  %85 = fcmp olt double %84, 0x4041ACDD632F662A, !dbg !1489
  %86 = call i1 @fCmpInstHandler(double %84, double 0x4041ACDD632F662A, i1 %85, i32 4, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @13, i32 0, i32 0), i64 93964097916720, i32 498, i32 13), !dbg !1490
  br i1 %86, label %87, label %169, !dbg !1490

; <label>:87:                                     ; preds = %83
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1491, metadata !89), !dbg !1493
  %88 = load double, double* %4, align 8, !dbg !1494
  %89 = fdiv double 0x4086232BDD7ABCD2, %88, !dbg !1495
  call void @fDivHandler(double 0x4086232BDD7ABCD2, double %88, double %89, i64 0, i64 93964097918888, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @13, i32 0, i32 0), i64 93964097919264, i32 499, i32 32), !dbg !1496
  %90 = call double @floor(double %89) #1, !dbg !1496
  %91 = fptosi double %90 to i32, !dbg !1496
  store i32 %91, i32* %10, align 4, !dbg !1493
  call void @llvm.dbg.declare(metadata double* %11, metadata !1497, metadata !89), !dbg !1498
  %92 = load double, double* %4, align 8, !dbg !1499
  %93 = fsub double -0.000000e+00, %92, !dbg !1500
  call void @fSubHandler(double -0.000000e+00, double %92, double %93, i64 0, i64 93964097924648, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @13, i32 0, i32 0), i64 93964097925024, i32 500, i32 28), !dbg !1501
  %94 = call double @exp(double %93) #6, !dbg !1501
  call void @callOneArgHandler(i32 11, double %93, double %94, i64 93964097925024, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @13, i32 0, i32 0), i64 93964097925504, i32 500, i32 24), !dbg !1498
  store double %94, double* %11, align 8, !dbg !1498
  call void @llvm.dbg.declare(metadata double* %12, metadata !1502, metadata !89), !dbg !1503
  %95 = load i32, i32* %10, align 4, !dbg !1504
  %96 = sitofp i32 %95 to double, !dbg !1504
  %97 = load double, double* %4, align 8, !dbg !1505
  %98 = fmul double %96, %97, !dbg !1506
  call void @fMulHandler(double %96, double %97, double %98, i64 93964097929112, i64 93964097930760, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @13, i32 0, i32 0), i64 93964097931168, i32 501, i32 23), !dbg !1503
  store double %98, double* %12, align 8, !dbg !1503
  call void @llvm.dbg.declare(metadata double* %13, metadata !1507, metadata !89), !dbg !1508
  %99 = load i32, i32* %10, align 4, !dbg !1509
  %100 = sitofp i32 %99 to double, !dbg !1509
  store double %100, double* %13, align 8, !dbg !1508
  call void @llvm.dbg.declare(metadata double* %14, metadata !1510, metadata !89), !dbg !1511
  store double 0.000000e+00, double* %14, align 8, !dbg !1511
  call void @llvm.dbg.declare(metadata i32* %15, metadata !1512, metadata !89), !dbg !1513
  %101 = load i32, i32* %10, align 4, !dbg !1514
  store i32 %101, i32* %15, align 4, !dbg !1516
  br label %102, !dbg !1517

; <label>:102:                                    ; preds = %140, %87
  %103 = load i32, i32* %15, align 4, !dbg !1518
  %104 = icmp sge i32 %103, 1, !dbg !1521
  %105 = sext i32 %103 to i64, !dbg !1522
  %106 = call i1 @iCmpInstHandler(i64 %105, i64 1, i1 %104, i32 39, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @13, i32 0, i32 0), i64 93964097447936, i32 505, i32 18), !dbg !1522
  br i1 %106, label %107, label %143, !dbg !1522

; <label>:107:                                    ; preds = %102
  call void @llvm.dbg.declare(metadata double* %16, metadata !1523, metadata !89), !dbg !1525
  %108 = load double, double* %12, align 8, !dbg !1526
  %109 = fdiv double 1.000000e+00, %108, !dbg !1527
  call void @fDivHandler(double 1.000000e+00, double %108, double %109, i64 0, i64 93964097951880, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @13, i32 0, i32 0), i64 93964097952288, i32 506, i32 26), !dbg !1525
  store double %109, double* %16, align 8, !dbg !1525
  %110 = load double, double* %11, align 8, !dbg !1528
  %111 = load double, double* %14, align 8, !dbg !1529
  %112 = fmul double %111, %110, !dbg !1529
  call void @fMulHandler(double %111, double %110, double %112, i64 93964097954712, i64 93964097954328, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @13, i32 0, i32 0), i64 93964097955120, i32 507, i32 11), !dbg !1529
  store double %112, double* %14, align 8, !dbg !1529
  %113 = load double, double* %16, align 8, !dbg !1530
  %114 = fmul double 7.200000e+02, %113, !dbg !1531
  call void @fMulHandler(double 7.200000e+02, double %113, double %114, i64 0, i64 93964097956904, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @13, i32 0, i32 0), i64 93964097957408, i32 508, i32 25), !dbg !1532
  %115 = fadd double %114, 7.200000e+02, !dbg !1532
  call void @fAddHandler(double %114, double 7.200000e+02, double %115, i64 93964097957408, i64 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @13, i32 0, i32 0), i64 93964097957824, i32 508, i32 33), !dbg !1533
  %116 = load double, double* %16, align 8, !dbg !1533
  %117 = fmul double %115, %116, !dbg !1534
  call void @fMulHandler(double %115, double %116, double %117, i64 93964097957824, i64 93964097958184, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @13, i32 0, i32 0), i64 93964097958592, i32 508, i32 41), !dbg !1535
  %118 = fadd double %117, 3.600000e+02, !dbg !1535
  call void @fAddHandler(double %117, double 3.600000e+02, double %118, i64 93964097958592, i64 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @13, i32 0, i32 0), i64 93964097959104, i32 508, i32 49), !dbg !1536
  %119 = load double, double* %16, align 8, !dbg !1536
  %120 = fmul double %118, %119, !dbg !1537
  call void @fMulHandler(double %118, double %119, double %120, i64 93964097959104, i64 93964097959464, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @13, i32 0, i32 0), i64 93964097959872, i32 508, i32 57), !dbg !1538
  %121 = fadd double %120, 1.200000e+02, !dbg !1538
  call void @fAddHandler(double %120, double 1.200000e+02, double %121, i64 93964097959872, i64 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @13, i32 0, i32 0), i64 93964097960320, i32 508, i32 65), !dbg !1539
  %122 = load double, double* %16, align 8, !dbg !1539
  %123 = fmul double %121, %122, !dbg !1540
  call void @fMulHandler(double %121, double %122, double %123, i64 93964097960320, i64 93964097960680, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @13, i32 0, i32 0), i64 93964097961088, i32 508, i32 73), !dbg !1541
  %124 = fadd double %123, 3.000000e+01, !dbg !1541
  call void @fAddHandler(double %123, double 3.000000e+01, double %124, i64 93964097961088, i64 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @13, i32 0, i32 0), i64 93964097961600, i32 508, i32 81), !dbg !1542
  %125 = load double, double* %16, align 8, !dbg !1542
  %126 = fmul double %124, %125, !dbg !1543
  call void @fMulHandler(double %124, double %125, double %126, i64 93964097961600, i64 93964097961960, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @13, i32 0, i32 0), i64 93964097962368, i32 508, i32 88), !dbg !1544
  %127 = fadd double %126, 6.000000e+00, !dbg !1544
  call void @fAddHandler(double %126, double 6.000000e+00, double %127, i64 93964097962368, i64 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @13, i32 0, i32 0), i64 93964097962816, i32 508, i32 95), !dbg !1545
  %128 = load double, double* %16, align 8, !dbg !1545
  %129 = fmul double %127, %128, !dbg !1546
  call void @fMulHandler(double %127, double %128, double %129, i64 93964097962816, i64 93964097963176, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @13, i32 0, i32 0), i64 93964097963584, i32 508, i32 101), !dbg !1547
  %130 = fadd double %129, 1.000000e+00, !dbg !1547
  call void @fAddHandler(double %129, double 1.000000e+00, double %130, i64 93964097963584, i64 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @13, i32 0, i32 0), i64 93964097964032, i32 508, i32 108), !dbg !1548
  %131 = load double, double* %13, align 8, !dbg !1548
  %132 = fdiv double %130, %131, !dbg !1549
  call void @fDivHandler(double %130, double %131, double %132, i64 93964097964032, i64 93964097964392, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @13, i32 0, i32 0), i64 93964097964800, i32 508, i32 115), !dbg !1550
  %133 = load double, double* %14, align 8, !dbg !1550
  %134 = fadd double %133, %132, !dbg !1550
  call void @fAddHandler(double %133, double %132, double %134, i64 93964097965192, i64 93964097964800, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @13, i32 0, i32 0), i64 93964097965600, i32 508, i32 11), !dbg !1550
  store double %134, double* %14, align 8, !dbg !1550
  %135 = load double, double* %13, align 8, !dbg !1551
  %136 = fsub double %135, 1.000000e+00, !dbg !1551
  call void @fSubHandler(double %135, double 1.000000e+00, double %136, i64 93964097969448, i64 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @13, i32 0, i32 0), i64 93964097969888, i32 509, i32 10), !dbg !1551
  store double %136, double* %13, align 8, !dbg !1551
  %137 = load double, double* %4, align 8, !dbg !1552
  %138 = load double, double* %12, align 8, !dbg !1553
  %139 = fsub double %138, %137, !dbg !1553
  call void @fSubHandler(double %138, double %137, double %139, i64 93964097972024, i64 93964097971672, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @13, i32 0, i32 0), i64 93964097972432, i32 510, i32 10), !dbg !1553
  store double %139, double* %12, align 8, !dbg !1553
  br label %140, !dbg !1554

; <label>:140:                                    ; preds = %107
  %141 = load i32, i32* %15, align 4, !dbg !1555
  %142 = add nsw i32 %141, -1, !dbg !1555
  store i32 %142, i32* %15, align 4, !dbg !1555
  br label %102, !dbg !1557, !llvm.loop !1558

; <label>:143:                                    ; preds = %102
  %144 = load double, double* %4, align 8, !dbg !1560
  %145 = load double, double* %4, align 8, !dbg !1561
  %146 = fmul double %144, %145, !dbg !1562
  call void @fMulHandler(double %144, double %145, double %146, i64 93964097977544, i64 93964097977864, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @13, i32 0, i32 0), i64 93964097978272, i32 512, i32 34), !dbg !1563
  %147 = load double, double* %4, align 8, !dbg !1563
  %148 = fmul double %146, %147, !dbg !1564
  call void @fMulHandler(double %146, double %147, double %148, i64 93964097978272, i64 93964097978664, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @13, i32 0, i32 0), i64 93964097979072, i32 512, i32 36), !dbg !1565
  %149 = load double, double* %4, align 8, !dbg !1565
  %150 = fmul double %148, %149, !dbg !1566
  call void @fMulHandler(double %148, double %149, double %150, i64 93964097979072, i64 93964097979464, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @13, i32 0, i32 0), i64 93964097979872, i32 512, i32 38), !dbg !1567
  %151 = load double, double* %4, align 8, !dbg !1567
  %152 = fmul double %150, %151, !dbg !1568
  call void @fMulHandler(double %150, double %151, double %152, i64 93964097979872, i64 93964097980264, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @13, i32 0, i32 0), i64 93964097980672, i32 512, i32 40), !dbg !1569
  %153 = load double, double* %4, align 8, !dbg !1569
  %154 = fmul double %152, %153, !dbg !1570
  call void @fMulHandler(double %152, double %153, double %154, i64 93964097980672, i64 93964097981064, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @13, i32 0, i32 0), i64 93964097981472, i32 512, i32 42), !dbg !1571
  %155 = fdiv double 0x40B10411A201F28E, %154, !dbg !1571
  call void @fDivHandler(double 0x40B10411A201F28E, double %154, double %155, i64 0, i64 93964097981472, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @13, i32 0, i32 0), i64 93964097981888, i32 512, i32 31), !dbg !1572
  %156 = load double, double* %14, align 8, !dbg !1572
  %157 = fmul double 6.000000e+00, %156, !dbg !1573
  call void @fMulHandler(double 6.000000e+00, double %156, double %157, i64 0, i64 93964097982280, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @13, i32 0, i32 0), i64 93964097982720, i32 512, i32 52), !dbg !1574
  %158 = load double, double* %11, align 8, !dbg !1574
  %159 = fmul double %157, %158, !dbg !1575
  call void @fMulHandler(double %157, double %158, double %159, i64 93964097982720, i64 93964097983080, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @13, i32 0, i32 0), i64 93964097983488, i32 512, i32 58), !dbg !1576
  %160 = fsub double %155, %159, !dbg !1576
  call void @fSubHandler(double %155, double %159, double %160, i64 93964097981888, i64 93964097983488, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @13, i32 0, i32 0), i64 93964097983904, i32 512, i32 46), !dbg !1577
  %161 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1577
  %162 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %161, i32 0, i32 0, !dbg !1578
  store double %160, double* %162, align 8, !dbg !1579
  %163 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1580
  %164 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %163, i32 0, i32 0, !dbg !1581
  %165 = load double, double* %164, align 8, !dbg !1581
  %166 = fmul double 0x3CB0000000000000, %165, !dbg !1582
  call void @fMulHandler(double 0x3CB0000000000000, double %165, double %166, i64 0, i64 93964097986376, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @13, i32 0, i32 0), i64 93964097988048, i32 513, i32 35), !dbg !1583
  %167 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1583
  %168 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %167, i32 0, i32 1, !dbg !1584
  store double %166, double* %168, align 8, !dbg !1585
  store i32 0, i32* %3, align 4, !dbg !1586
  br label %252, !dbg !1586

; <label>:169:                                    ; preds = %83
  %170 = load double, double* %4, align 8, !dbg !1587
  %171 = fcmp olt double %170, 0x4086232BDD7ABCD2, !dbg !1589
  %172 = call i1 @fCmpInstHandler(double %170, double 0x4086232BDD7ABCD2, i1 %171, i32 4, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @13, i32 0, i32 0), i64 93964097992096, i32 516, i32 13), !dbg !1590
  br i1 %172, label %173, label %221, !dbg !1590

; <label>:173:                                    ; preds = %169
  call void @llvm.dbg.declare(metadata double* %17, metadata !1591, metadata !89), !dbg !1593
  %174 = load double, double* %4, align 8, !dbg !1594
  %175 = load double, double* %4, align 8, !dbg !1595
  %176 = fmul double %174, %175, !dbg !1596
  call void @fMulHandler(double %174, double %175, double %176, i64 93964097994264, i64 93964097994616, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @13, i32 0, i32 0), i64 93964097995024, i32 517, i32 24), !dbg !1593
  store double %176, double* %17, align 8, !dbg !1593
  call void @llvm.dbg.declare(metadata double* %18, metadata !1597, metadata !89), !dbg !1598
  %177 = load double, double* %17, align 8, !dbg !1599
  %178 = load double, double* %17, align 8, !dbg !1600
  %179 = fmul double %177, %178, !dbg !1601
  call void @fMulHandler(double %177, double %178, double %179, i64 93964097998216, i64 93964097998568, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @13, i32 0, i32 0), i64 93964097998976, i32 518, i32 25), !dbg !1598
  store double %179, double* %18, align 8, !dbg !1598
  call void @llvm.dbg.declare(metadata double* %19, metadata !1602, metadata !89), !dbg !1603
  %180 = load double, double* %18, align 8, !dbg !1604
  %181 = load double, double* %17, align 8, !dbg !1605
  %182 = fmul double %180, %181, !dbg !1606
  call void @fMulHandler(double %180, double %181, double %182, i64 93964098002168, i64 93964098002520, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @13, i32 0, i32 0), i64 93964098002928, i32 519, i32 25), !dbg !1603
  store double %182, double* %19, align 8, !dbg !1603
  call void @llvm.dbg.declare(metadata double* %20, metadata !1607, metadata !89), !dbg !1608
  %183 = load double, double* %4, align 8, !dbg !1609
  %184 = fmul double 7.200000e+02, %183, !dbg !1610
  call void @fMulHandler(double 7.200000e+02, double %183, double %184, i64 0, i64 93964098006120, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @13, i32 0, i32 0), i64 93964098006528, i32 520, i32 37), !dbg !1611
  %185 = fadd double 7.200000e+02, %184, !dbg !1611
  call void @fAddHandler(double 7.200000e+02, double %184, double %185, i64 0, i64 93964098006528, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @13, i32 0, i32 0), i64 93964098006944, i32 520, i32 30), !dbg !1612
  %186 = load double, double* %17, align 8, !dbg !1612
  %187 = fmul double 3.600000e+02, %186, !dbg !1613
  call void @fMulHandler(double 3.600000e+02, double %186, double %187, i64 0, i64 93964098007304, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @13, i32 0, i32 0), i64 93964098007744, i32 520, i32 47), !dbg !1614
  %188 = fadd double %185, %187, !dbg !1614
  call void @fAddHandler(double %185, double %187, double %188, i64 93964098006944, i64 93964098007744, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @13, i32 0, i32 0), i64 93964098008128, i32 520, i32 40), !dbg !1615
  %189 = load double, double* %17, align 8, !dbg !1615
  %190 = fmul double 1.200000e+02, %189, !dbg !1616
  call void @fMulHandler(double 1.200000e+02, double %189, double %190, i64 0, i64 93964098008520, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @13, i32 0, i32 0), i64 93964098008960, i32 520, i32 58), !dbg !1617
  %191 = load double, double* %4, align 8, !dbg !1617
  %192 = fmul double %190, %191, !dbg !1618
  call void @fMulHandler(double %190, double %191, double %192, i64 93964098008960, i64 93964098009320, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @13, i32 0, i32 0), i64 93964098009728, i32 520, i32 61), !dbg !1619
  %193 = fadd double %188, %192, !dbg !1619
  call void @fAddHandler(double %188, double %192, double %193, i64 93964098008128, i64 93964098009728, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @13, i32 0, i32 0), i64 93964098010144, i32 520, i32 51), !dbg !1620
  %194 = load double, double* %18, align 8, !dbg !1620
  %195 = fmul double 3.000000e+01, %194, !dbg !1621
  call void @fMulHandler(double 3.000000e+01, double %194, double %195, i64 0, i64 93964098010536, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @13, i32 0, i32 0), i64 93964098010976, i32 520, i32 70), !dbg !1622
  %196 = fadd double %193, %195, !dbg !1622
  call void @fAddHandler(double %193, double %195, double %196, i64 93964098010144, i64 93964098010976, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @13, i32 0, i32 0), i64 93964098011360, i32 520, i32 64), !dbg !1623
  %197 = load double, double* %18, align 8, !dbg !1623
  %198 = fmul double 6.000000e+00, %197, !dbg !1624
  call void @fMulHandler(double 6.000000e+00, double %197, double %198, i64 0, i64 93964098011752, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @13, i32 0, i32 0), i64 93964098012192, i32 520, i32 79), !dbg !1625
  %199 = load double, double* %4, align 8, !dbg !1625
  %200 = fmul double %198, %199, !dbg !1626
  call void @fMulHandler(double %198, double %199, double %200, i64 93964098012192, i64 93964098012552, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @13, i32 0, i32 0), i64 93964098012960, i32 520, i32 82), !dbg !1627
  %201 = fadd double %196, %200, !dbg !1627
  call void @fAddHandler(double %196, double %200, double %201, i64 93964098011360, i64 93964098012960, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @13, i32 0, i32 0), i64 93964098013376, i32 520, i32 74), !dbg !1628
  %202 = load double, double* %19, align 8, !dbg !1628
  %203 = fadd double %201, %202, !dbg !1629
  call void @fAddHandler(double %201, double %202, double %203, i64 93964098013376, i64 93964098013768, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @13, i32 0, i32 0), i64 93964098014176, i32 520, i32 85), !dbg !1608
  store double %203, double* %20, align 8, !dbg !1608
  %204 = load double, double* %20, align 8, !dbg !1630
  %205 = fmul double 6.000000e+00, %204, !dbg !1631
  call void @fMulHandler(double 6.000000e+00, double %204, double %205, i64 0, i64 93964098016248, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @13, i32 0, i32 0), i64 93964098016688, i32 521, i32 39), !dbg !1632
  %206 = load double, double* %4, align 8, !dbg !1632
  %207 = fsub double -0.000000e+00, %206, !dbg !1633
  call void @fSubHandler(double -0.000000e+00, double %206, double %207, i64 0, i64 93964098017048, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @13, i32 0, i32 0), i64 93964098017456, i32 521, i32 51), !dbg !1634
  %208 = call double @exp(double %207) #6, !dbg !1634
  call void @callOneArgHandler(i32 11, double %207, double %208, i64 93964098017456, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @13, i32 0, i32 0), i64 93964098017936, i32 521, i32 47), !dbg !1635
  %209 = fmul double %205, %208, !dbg !1635
  call void @fMulHandler(double %205, double %208, double %209, i64 93964098016688, i64 93964098017936, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @13, i32 0, i32 0), i64 93964098018416, i32 521, i32 45), !dbg !1636
  %210 = fsub double 0x40B10411A201F28E, %209, !dbg !1636
  call void @fSubHandler(double 0x40B10411A201F28E, double %209, double %210, i64 0, i64 93964098018416, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @13, i32 0, i32 0), i64 93964098018832, i32 521, i32 33), !dbg !1637
  %211 = load double, double* %19, align 8, !dbg !1637
  %212 = fdiv double %210, %211, !dbg !1638
  call void @fDivHandler(double %210, double %211, double %212, i64 93964098018832, i64 93964098019224, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @13, i32 0, i32 0), i64 93964098019632, i32 521, i32 56), !dbg !1639
  %213 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1639
  %214 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %213, i32 0, i32 0, !dbg !1640
  store double %212, double* %214, align 8, !dbg !1641
  %215 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1642
  %216 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %215, i32 0, i32 0, !dbg !1643
  %217 = load double, double* %216, align 8, !dbg !1643
  %218 = fmul double 0x3CB0000000000000, %217, !dbg !1644
  call void @fMulHandler(double 0x3CB0000000000000, double %217, double %218, i64 0, i64 93964098022104, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @13, i32 0, i32 0), i64 93964098023776, i32 522, i32 35), !dbg !1645
  %219 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1645
  %220 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %219, i32 0, i32 1, !dbg !1646
  store double %218, double* %220, align 8, !dbg !1647
  store i32 0, i32* %3, align 4, !dbg !1648
  br label %252, !dbg !1648

; <label>:221:                                    ; preds = %169
  %222 = load double, double* %4, align 8, !dbg !1649
  %223 = fdiv double 0x40B10411A201F28E, %222, !dbg !1651
  call void @fDivHandler(double 0x40B10411A201F28E, double %222, double %223, i64 0, i64 93964098027480, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @13, i32 0, i32 0), i64 93964098027824, i32 526, i32 36), !dbg !1652
  %224 = load double, double* %4, align 8, !dbg !1652
  %225 = fdiv double %223, %224, !dbg !1653
  call void @fDivHandler(double %223, double %224, double %225, i64 93964098027824, i64 93964098028216, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @13, i32 0, i32 0), i64 93964098028624, i32 526, i32 39), !dbg !1654
  %226 = load double, double* %4, align 8, !dbg !1654
  %227 = fdiv double %225, %226, !dbg !1655
  call void @fDivHandler(double %225, double %226, double %227, i64 93964098028624, i64 93964098029016, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @13, i32 0, i32 0), i64 93964098029424, i32 526, i32 42), !dbg !1656
  %228 = load double, double* %4, align 8, !dbg !1656
  %229 = fdiv double %227, %228, !dbg !1657
  call void @fDivHandler(double %227, double %228, double %229, i64 93964098029424, i64 93964098029816, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @13, i32 0, i32 0), i64 93964098030224, i32 526, i32 45), !dbg !1658
  %230 = load double, double* %4, align 8, !dbg !1658
  %231 = fdiv double %229, %230, !dbg !1659
  call void @fDivHandler(double %229, double %230, double %231, i64 93964098030224, i64 93964098030616, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @13, i32 0, i32 0), i64 93964098031024, i32 526, i32 48), !dbg !1660
  %232 = load double, double* %4, align 8, !dbg !1660
  %233 = fdiv double %231, %232, !dbg !1661
  call void @fDivHandler(double %231, double %232, double %233, i64 93964098031024, i64 93964098031416, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @13, i32 0, i32 0), i64 93964098031824, i32 526, i32 51), !dbg !1662
  %234 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1662
  %235 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %234, i32 0, i32 0, !dbg !1663
  store double %233, double* %235, align 8, !dbg !1664
  %236 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1665
  %237 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %236, i32 0, i32 0, !dbg !1666
  %238 = load double, double* %237, align 8, !dbg !1666
  %239 = fmul double 0x3CB0000000000000, %238, !dbg !1667
  call void @fMulHandler(double 0x3CB0000000000000, double %238, double %239, i64 0, i64 93964098034296, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @13, i32 0, i32 0), i64 93964098035968, i32 527, i32 35), !dbg !1668
  %240 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1668
  %241 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %240, i32 0, i32 1, !dbg !1669
  store double %239, double* %241, align 8, !dbg !1670
  %242 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1671
  %243 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %242, i32 0, i32 0, !dbg !1671
  %244 = load double, double* %243, align 8, !dbg !1671
  %245 = call double @fabs(double %244) #1, !dbg !1671
  %246 = fcmp olt double %245, 0x10000000000000, !dbg !1671
  %247 = call i1 @fCmpInstHandler(double %245, double 0x10000000000000, i1 %246, i32 4, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @13, i32 0, i32 0), i64 93964098040112, i32 528, i32 5), !dbg !1673
  br i1 %247, label %248, label %251, !dbg !1673

; <label>:248:                                    ; preds = %221
  br label %249, !dbg !1674, !llvm.loop !1676

; <label>:249:                                    ; preds = %248
  call void @gsl_error(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i32 528, i32 15), !dbg !1677
  store i32 15, i32* %3, align 4, !dbg !1677
  br label %252, !dbg !1677
                                                  ; No predecessors!
  br label %251, !dbg !1680

; <label>:251:                                    ; preds = %250, %221
  store i32 0, i32* %3, align 4, !dbg !1682
  br label %252, !dbg !1682

; <label>:252:                                    ; preds = %251, %249, %173, %143, %59, %37, %32, %30
  %253 = load i32, i32* %3, align 4, !dbg !1683
  ret i32 %253, !dbg !1683
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_debye_1(double) #0 !dbg !1684 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct, align 8
  %5 = alloca i32, align 4
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !1687, metadata !89), !dbg !1688
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %4, metadata !1689, metadata !89), !dbg !1690
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1691, metadata !89), !dbg !1690
  %6 = load double, double* %3, align 8, !dbg !1690
  %7 = call i32 @gsl_sf_debye_1_e(double %6, %struct.gsl_sf_result_struct* %4), !dbg !1690
  store i32 %7, i32* %5, align 4, !dbg !1690
  %8 = load i32, i32* %5, align 4, !dbg !1692
  %9 = icmp ne i32 %8, 0, !dbg !1692
  %10 = sext i32 %8 to i64, !dbg !1690
  %11 = call i1 @iCmpInstHandler(i64 %10, i64 0, i1 %9, i32 33, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @15, i32 0, i32 0), i64 93964098053424, i32 540, i32 3), !dbg !1690
  br i1 %11, label %12, label %18, !dbg !1690

; <label>:12:                                     ; preds = %1
  br label %13, !dbg !1694, !llvm.loop !1697

; <label>:13:                                     ; preds = %12
  %14 = load i32, i32* %5, align 4, !dbg !1699
  call void @gsl_error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i32 540, i32 %14), !dbg !1699
  %15 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !1699
  %16 = load double, double* %15, align 8, !dbg !1699
  store double %16, double* %2, align 8, !dbg !1699
  br label %21, !dbg !1699
                                                  ; No predecessors!
  br label %18, !dbg !1702

; <label>:18:                                     ; preds = %17, %1
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !1704
  %20 = load double, double* %19, align 8, !dbg !1704
  store double %20, double* %2, align 8, !dbg !1704
  br label %21, !dbg !1704

; <label>:21:                                     ; preds = %18, %13
  %22 = load double, double* %2, align 8, !dbg !1706
  ret double %22, !dbg !1706
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_debye_2(double) #0 !dbg !1707 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct, align 8
  %5 = alloca i32, align 4
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !1708, metadata !89), !dbg !1709
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %4, metadata !1710, metadata !89), !dbg !1711
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1712, metadata !89), !dbg !1711
  %6 = load double, double* %3, align 8, !dbg !1711
  %7 = call i32 @gsl_sf_debye_2_e(double %6, %struct.gsl_sf_result_struct* %4), !dbg !1711
  store i32 %7, i32* %5, align 4, !dbg !1711
  %8 = load i32, i32* %5, align 4, !dbg !1713
  %9 = icmp ne i32 %8, 0, !dbg !1713
  %10 = sext i32 %8 to i64, !dbg !1711
  %11 = call i1 @iCmpInstHandler(i64 %10, i64 0, i1 %9, i32 33, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @17, i32 0, i32 0), i64 93964098070720, i32 545, i32 3), !dbg !1711
  br i1 %11, label %12, label %18, !dbg !1711

; <label>:12:                                     ; preds = %1
  br label %13, !dbg !1715, !llvm.loop !1718

; <label>:13:                                     ; preds = %12
  %14 = load i32, i32* %5, align 4, !dbg !1720
  call void @gsl_error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i32 545, i32 %14), !dbg !1720
  %15 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !1720
  %16 = load double, double* %15, align 8, !dbg !1720
  store double %16, double* %2, align 8, !dbg !1720
  br label %21, !dbg !1720
                                                  ; No predecessors!
  br label %18, !dbg !1723

; <label>:18:                                     ; preds = %17, %1
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !1725
  %20 = load double, double* %19, align 8, !dbg !1725
  store double %20, double* %2, align 8, !dbg !1725
  br label %21, !dbg !1725

; <label>:21:                                     ; preds = %18, %13
  %22 = load double, double* %2, align 8, !dbg !1727
  ret double %22, !dbg !1727
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_debye_3(double) #0 !dbg !1728 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct, align 8
  %5 = alloca i32, align 4
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !1729, metadata !89), !dbg !1730
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %4, metadata !1731, metadata !89), !dbg !1732
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1733, metadata !89), !dbg !1732
  %6 = load double, double* %3, align 8, !dbg !1732
  %7 = call i32 @gsl_sf_debye_3_e(double %6, %struct.gsl_sf_result_struct* %4), !dbg !1732
  store i32 %7, i32* %5, align 4, !dbg !1732
  %8 = load i32, i32* %5, align 4, !dbg !1734
  %9 = icmp ne i32 %8, 0, !dbg !1734
  %10 = sext i32 %8 to i64, !dbg !1732
  %11 = call i1 @iCmpInstHandler(i64 %10, i64 0, i1 %9, i32 33, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @19, i32 0, i32 0), i64 93964098088016, i32 550, i32 3), !dbg !1732
  br i1 %11, label %12, label %18, !dbg !1732

; <label>:12:                                     ; preds = %1
  br label %13, !dbg !1736, !llvm.loop !1739

; <label>:13:                                     ; preds = %12
  %14 = load i32, i32* %5, align 4, !dbg !1741
  call void @gsl_error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i32 550, i32 %14), !dbg !1741
  %15 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !1741
  %16 = load double, double* %15, align 8, !dbg !1741
  store double %16, double* %2, align 8, !dbg !1741
  br label %21, !dbg !1741
                                                  ; No predecessors!
  br label %18, !dbg !1744

; <label>:18:                                     ; preds = %17, %1
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !1746
  %20 = load double, double* %19, align 8, !dbg !1746
  store double %20, double* %2, align 8, !dbg !1746
  br label %21, !dbg !1746

; <label>:21:                                     ; preds = %18, %13
  %22 = load double, double* %2, align 8, !dbg !1748
  ret double %22, !dbg !1748
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_debye_4(double) #0 !dbg !1749 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct, align 8
  %5 = alloca i32, align 4
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !1750, metadata !89), !dbg !1751
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %4, metadata !1752, metadata !89), !dbg !1753
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1754, metadata !89), !dbg !1753
  %6 = load double, double* %3, align 8, !dbg !1753
  %7 = call i32 @gsl_sf_debye_4_e(double %6, %struct.gsl_sf_result_struct* %4), !dbg !1753
  store i32 %7, i32* %5, align 4, !dbg !1753
  %8 = load i32, i32* %5, align 4, !dbg !1755
  %9 = icmp ne i32 %8, 0, !dbg !1755
  %10 = sext i32 %8 to i64, !dbg !1753
  %11 = call i1 @iCmpInstHandler(i64 %10, i64 0, i1 %9, i32 33, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @21, i32 0, i32 0), i64 93964098105312, i32 555, i32 3), !dbg !1753
  br i1 %11, label %12, label %18, !dbg !1753

; <label>:12:                                     ; preds = %1
  br label %13, !dbg !1757, !llvm.loop !1760

; <label>:13:                                     ; preds = %12
  %14 = load i32, i32* %5, align 4, !dbg !1762
  call void @gsl_error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i32 555, i32 %14), !dbg !1762
  %15 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !1762
  %16 = load double, double* %15, align 8, !dbg !1762
  store double %16, double* %2, align 8, !dbg !1762
  br label %21, !dbg !1762
                                                  ; No predecessors!
  br label %18, !dbg !1765

; <label>:18:                                     ; preds = %17, %1
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !1767
  %20 = load double, double* %19, align 8, !dbg !1767
  store double %20, double* %2, align 8, !dbg !1767
  br label %21, !dbg !1767

; <label>:21:                                     ; preds = %18, %13
  %22 = load double, double* %2, align 8, !dbg !1769
  ret double %22, !dbg !1769
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_debye_5(double) #0 !dbg !1770 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct, align 8
  %5 = alloca i32, align 4
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !1771, metadata !89), !dbg !1772
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %4, metadata !1773, metadata !89), !dbg !1774
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1775, metadata !89), !dbg !1774
  %6 = load double, double* %3, align 8, !dbg !1774
  %7 = call i32 @gsl_sf_debye_5_e(double %6, %struct.gsl_sf_result_struct* %4), !dbg !1774
  store i32 %7, i32* %5, align 4, !dbg !1774
  %8 = load i32, i32* %5, align 4, !dbg !1776
  %9 = icmp ne i32 %8, 0, !dbg !1776
  %10 = sext i32 %8 to i64, !dbg !1774
  %11 = call i1 @iCmpInstHandler(i64 %10, i64 0, i1 %9, i32 33, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @23, i32 0, i32 0), i64 93964098122608, i32 560, i32 3), !dbg !1774
  br i1 %11, label %12, label %18, !dbg !1774

; <label>:12:                                     ; preds = %1
  br label %13, !dbg !1778, !llvm.loop !1781

; <label>:13:                                     ; preds = %12
  %14 = load i32, i32* %5, align 4, !dbg !1783
  call void @gsl_error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i32 560, i32 %14), !dbg !1783
  %15 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !1783
  %16 = load double, double* %15, align 8, !dbg !1783
  store double %16, double* %2, align 8, !dbg !1783
  br label %21, !dbg !1783
                                                  ; No predecessors!
  br label %18, !dbg !1786

; <label>:18:                                     ; preds = %17, %1
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !1788
  %20 = load double, double* %19, align 8, !dbg !1788
  store double %20, double* %2, align 8, !dbg !1788
  br label %21, !dbg !1788

; <label>:21:                                     ; preds = %18, %13
  %22 = load double, double* %2, align 8, !dbg !1790
  ret double %22, !dbg !1790
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_debye_6(double) #0 !dbg !1791 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct, align 8
  %5 = alloca i32, align 4
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !1792, metadata !89), !dbg !1793
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %4, metadata !1794, metadata !89), !dbg !1795
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1796, metadata !89), !dbg !1795
  %6 = load double, double* %3, align 8, !dbg !1795
  %7 = call i32 @gsl_sf_debye_6_e(double %6, %struct.gsl_sf_result_struct* %4), !dbg !1795
  store i32 %7, i32* %5, align 4, !dbg !1795
  %8 = load i32, i32* %5, align 4, !dbg !1797
  %9 = icmp ne i32 %8, 0, !dbg !1797
  %10 = sext i32 %8 to i64, !dbg !1795
  %11 = call i1 @iCmpInstHandler(i64 %10, i64 0, i1 %9, i32 33, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @25, i32 0, i32 0), i64 93964098139904, i32 565, i32 3), !dbg !1795
  br i1 %11, label %12, label %18, !dbg !1795

; <label>:12:                                     ; preds = %1
  br label %13, !dbg !1799, !llvm.loop !1802

; <label>:13:                                     ; preds = %12
  %14 = load i32, i32* %5, align 4, !dbg !1804
  call void @gsl_error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i32 565, i32 %14), !dbg !1804
  %15 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !1804
  %16 = load double, double* %15, align 8, !dbg !1804
  store double %16, double* %2, align 8, !dbg !1804
  br label %21, !dbg !1804
                                                  ; No predecessors!
  br label %18, !dbg !1807

; <label>:18:                                     ; preds = %17, %1
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !1809
  %20 = load double, double* %19, align 8, !dbg !1809
  store double %20, double* %2, align 8, !dbg !1809
  br label %21, !dbg !1809

; <label>:21:                                     ; preds = %18, %13
  %22 = load double, double* %2, align 8, !dbg !1811
  ret double %22, !dbg !1811
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
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!72, !73, !74}
!llvm.ident = !{!75}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, globals: !41)
!1 = !DIFile(filename: "debye.c", directory: "/fpcc/gsl-2.5/specfunc")
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
!41 = !{!42, !55, !59, !60, !64, !65, !66, !67, !68, !69, !70, !71}
!42 = distinct !DIGlobalVariable(name: "adeb1_cs", scope: !0, file: !1, line: 53, type: !43, isLocal: true, isDefinition: true, variable: %struct.cheb_series_struct* @adeb1_cs)
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
!55 = distinct !DIGlobalVariable(name: "adeb1_data", scope: !0, file: !1, line: 34, type: !56, isLocal: true, isDefinition: true, variable: [17 x double]* @adeb1_data)
!56 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 1088, align: 64, elements: !57)
!57 = !{!58}
!58 = !DISubrange(count: 17)
!59 = distinct !DIGlobalVariable(name: "adeb2_cs", scope: !0, file: !1, line: 80, type: !43, isLocal: true, isDefinition: true, variable: %struct.cheb_series_struct* @adeb2_cs)
!60 = distinct !DIGlobalVariable(name: "adeb2_data", scope: !0, file: !1, line: 60, type: !61, isLocal: true, isDefinition: true, variable: [18 x double]* @adeb2_data)
!61 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 1152, align: 64, elements: !62)
!62 = !{!63}
!63 = !DISubrange(count: 18)
!64 = distinct !DIGlobalVariable(name: "adeb3_cs", scope: !0, file: !1, line: 106, type: !43, isLocal: true, isDefinition: true, variable: %struct.cheb_series_struct* @adeb3_cs)
!65 = distinct !DIGlobalVariable(name: "adeb3_data", scope: !0, file: !1, line: 87, type: !56, isLocal: true, isDefinition: true, variable: [17 x double]* @adeb3_data)
!66 = distinct !DIGlobalVariable(name: "adeb4_cs", scope: !0, file: !1, line: 132, type: !43, isLocal: true, isDefinition: true, variable: %struct.cheb_series_struct* @adeb4_cs)
!67 = distinct !DIGlobalVariable(name: "adeb4_data", scope: !0, file: !1, line: 113, type: !56, isLocal: true, isDefinition: true, variable: [17 x double]* @adeb4_data)
!68 = distinct !DIGlobalVariable(name: "adeb5_cs", scope: !0, file: !1, line: 158, type: !43, isLocal: true, isDefinition: true, variable: %struct.cheb_series_struct* @adeb5_cs)
!69 = distinct !DIGlobalVariable(name: "adeb5_data", scope: !0, file: !1, line: 139, type: !56, isLocal: true, isDefinition: true, variable: [17 x double]* @adeb5_data)
!70 = distinct !DIGlobalVariable(name: "adeb6_cs", scope: !0, file: !1, line: 184, type: !43, isLocal: true, isDefinition: true, variable: %struct.cheb_series_struct* @adeb6_cs)
!71 = distinct !DIGlobalVariable(name: "adeb6_data", scope: !0, file: !1, line: 165, type: !56, isLocal: true, isDefinition: true, variable: [17 x double]* @adeb6_data)
!72 = !{i32 2, !"Dwarf Version", i32 4}
!73 = !{i32 2, !"Debug Info Version", i32 3}
!74 = !{i32 1, !"PIC Level", i32 2}
!75 = !{!"clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)"}
!76 = distinct !DISubprogram(name: "gsl_sf_debye_1_e", scope: !1, file: !1, line: 194, type: !77, isLocal: false, isDefinition: true, scopeLine: 195, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !87)
!77 = !DISubroutineType(types: !78)
!78 = !{!51, !79, !80}
!79 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !49)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64, align: 64)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !82, line: 41, baseType: !83)
!82 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/fpcc/gsl-2.5/specfunc")
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !82, line: 37, size: 128, align: 64, elements: !84)
!84 = !{!85, !86}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !83, file: !82, line: 38, baseType: !49, size: 64, align: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !83, file: !82, line: 39, baseType: !49, size: 64, align: 64, offset: 64)
!87 = !{}
!88 = !DILocalVariable(name: "x", arg: 1, scope: !76, file: !1, line: 194, type: !79)
!89 = !DIExpression()
!90 = !DILocation(line: 194, column: 35, scope: !76)
!91 = !DILocalVariable(name: "result", arg: 2, scope: !76, file: !1, line: 194, type: !80)
!92 = !DILocation(line: 194, column: 54, scope: !76)
!93 = !DILocalVariable(name: "val_infinity", scope: !76, file: !1, line: 196, type: !79)
!94 = !DILocation(line: 196, column: 16, scope: !76)
!95 = !DILocalVariable(name: "xcut", scope: !76, file: !1, line: 197, type: !79)
!96 = !DILocation(line: 197, column: 16, scope: !76)
!97 = !DILocation(line: 201, column: 6, scope: !98)
!98 = distinct !DILexicalBlock(scope: !76, file: !1, line: 201, column: 6)
!99 = !DILocation(line: 201, column: 8, scope: !98)
!100 = !DILocation(line: 201, column: 6, scope: !76)
!101 = !DILocation(line: 202, column: 5, scope: !102)
!102 = distinct !DILexicalBlock(scope: !98, file: !1, line: 201, column: 15)
!103 = distinct !{!103, !101}
!104 = !DILocation(line: 202, column: 5, scope: !105)
!105 = !DILexicalBlockFile(scope: !106, file: !1, discriminator: 1)
!106 = distinct !DILexicalBlock(scope: !102, file: !1, line: 202, column: 5)
!107 = distinct !{!107, !108}
!108 = !DILocation(line: 202, column: 5, scope: !106)
!109 = !DILocation(line: 202, column: 5, scope: !110)
!110 = !DILexicalBlockFile(scope: !111, file: !1, discriminator: 2)
!111 = distinct !DILexicalBlock(scope: !106, file: !1, line: 202, column: 5)
!112 = !DILocation(line: 202, column: 5, scope: !113)
!113 = !DILexicalBlockFile(scope: !106, file: !1, discriminator: 3)
!114 = !DILocation(line: 203, column: 3, scope: !102)
!115 = !DILocation(line: 204, column: 11, scope: !116)
!116 = distinct !DILexicalBlock(scope: !98, file: !1, line: 204, column: 11)
!117 = !DILocation(line: 204, column: 13, scope: !116)
!118 = !DILocation(line: 204, column: 11, scope: !98)
!119 = !DILocation(line: 205, column: 30, scope: !120)
!120 = distinct !DILexicalBlock(scope: !116, file: !1, line: 204, column: 41)
!121 = !DILocation(line: 205, column: 29, scope: !120)
!122 = !DILocation(line: 205, column: 23, scope: !120)
!123 = !DILocation(line: 205, column: 34, scope: !120)
!124 = !DILocation(line: 205, column: 36, scope: !120)
!125 = !DILocation(line: 205, column: 35, scope: !120)
!126 = !DILocation(line: 205, column: 37, scope: !120)
!127 = !DILocation(line: 205, column: 32, scope: !120)
!128 = !DILocation(line: 205, column: 5, scope: !120)
!129 = !DILocation(line: 205, column: 13, scope: !120)
!130 = !DILocation(line: 205, column: 17, scope: !120)
!131 = !DILocation(line: 206, column: 42, scope: !120)
!132 = !DILocation(line: 206, column: 50, scope: !120)
!133 = !DILocation(line: 206, column: 37, scope: !120)
!134 = !DILocation(line: 206, column: 35, scope: !120)
!135 = !DILocation(line: 206, column: 5, scope: !120)
!136 = !DILocation(line: 206, column: 13, scope: !120)
!137 = !DILocation(line: 206, column: 17, scope: !120)
!138 = !DILocation(line: 207, column: 5, scope: !120)
!139 = !DILocation(line: 209, column: 11, scope: !140)
!140 = distinct !DILexicalBlock(scope: !116, file: !1, line: 209, column: 11)
!141 = !DILocation(line: 209, column: 13, scope: !140)
!142 = !DILocation(line: 209, column: 11, scope: !116)
!143 = !DILocalVariable(name: "t", scope: !144, file: !1, line: 210, type: !79)
!144 = distinct !DILexicalBlock(scope: !140, file: !1, line: 209, column: 21)
!145 = !DILocation(line: 210, column: 18, scope: !144)
!146 = !DILocation(line: 210, column: 22, scope: !144)
!147 = !DILocation(line: 210, column: 24, scope: !144)
!148 = !DILocation(line: 210, column: 23, scope: !144)
!149 = !DILocation(line: 210, column: 25, scope: !144)
!150 = !DILocation(line: 210, column: 30, scope: !144)
!151 = !DILocalVariable(name: "c", scope: !144, file: !1, line: 211, type: !81)
!152 = !DILocation(line: 211, column: 19, scope: !144)
!153 = !DILocation(line: 212, column: 28, scope: !144)
!154 = !DILocation(line: 212, column: 5, scope: !144)
!155 = !DILocation(line: 213, column: 21, scope: !144)
!156 = !DILocation(line: 213, column: 34, scope: !144)
!157 = !DILocation(line: 213, column: 32, scope: !144)
!158 = !DILocation(line: 213, column: 25, scope: !144)
!159 = !DILocation(line: 213, column: 5, scope: !144)
!160 = !DILocation(line: 213, column: 13, scope: !144)
!161 = !DILocation(line: 213, column: 17, scope: !144)
!162 = !DILocation(line: 214, column: 21, scope: !144)
!163 = !DILocation(line: 214, column: 34, scope: !144)
!164 = !DILocation(line: 214, column: 32, scope: !144)
!165 = !DILocation(line: 214, column: 36, scope: !144)
!166 = !DILocation(line: 214, column: 25, scope: !144)
!167 = !DILocation(line: 214, column: 5, scope: !144)
!168 = !DILocation(line: 214, column: 13, scope: !144)
!169 = !DILocation(line: 214, column: 17, scope: !144)
!170 = !DILocation(line: 215, column: 5, scope: !144)
!171 = !DILocation(line: 217, column: 11, scope: !172)
!172 = distinct !DILexicalBlock(scope: !140, file: !1, line: 217, column: 11)
!173 = !DILocation(line: 217, column: 13, scope: !172)
!174 = !DILocation(line: 217, column: 11, scope: !140)
!175 = !DILocalVariable(name: "nexp", scope: !176, file: !1, line: 218, type: !177)
!176 = distinct !DILexicalBlock(scope: !172, file: !1, line: 217, column: 47)
!177 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !51)
!178 = !DILocation(line: 218, column: 15, scope: !176)
!179 = !DILocation(line: 218, column: 33, scope: !176)
!180 = !DILocation(line: 218, column: 32, scope: !176)
!181 = !DILocation(line: 218, column: 22, scope: !176)
!182 = !DILocalVariable(name: "ex", scope: !176, file: !1, line: 219, type: !79)
!183 = !DILocation(line: 219, column: 18, scope: !176)
!184 = !DILocation(line: 219, column: 29, scope: !176)
!185 = !DILocation(line: 219, column: 28, scope: !176)
!186 = !DILocation(line: 219, column: 24, scope: !176)
!187 = !DILocalVariable(name: "sum", scope: !176, file: !1, line: 220, type: !49)
!188 = !DILocation(line: 220, column: 12, scope: !176)
!189 = !DILocalVariable(name: "xk", scope: !176, file: !1, line: 221, type: !49)
!190 = !DILocation(line: 221, column: 12, scope: !176)
!191 = !DILocation(line: 221, column: 18, scope: !176)
!192 = !DILocation(line: 221, column: 25, scope: !176)
!193 = !DILocation(line: 221, column: 23, scope: !176)
!194 = !DILocalVariable(name: "rk", scope: !176, file: !1, line: 222, type: !49)
!195 = !DILocation(line: 222, column: 12, scope: !176)
!196 = !DILocation(line: 222, column: 18, scope: !176)
!197 = !DILocalVariable(name: "i", scope: !176, file: !1, line: 223, type: !51)
!198 = !DILocation(line: 223, column: 9, scope: !176)
!199 = !DILocation(line: 224, column: 11, scope: !200)
!200 = distinct !DILexicalBlock(scope: !176, file: !1, line: 224, column: 5)
!201 = !DILocation(line: 224, column: 10, scope: !200)
!202 = !DILocation(line: 224, column: 9, scope: !200)
!203 = !DILocation(line: 224, column: 17, scope: !204)
!204 = !DILexicalBlockFile(scope: !205, file: !1, discriminator: 1)
!205 = distinct !DILexicalBlock(scope: !200, file: !1, line: 224, column: 5)
!206 = !DILocation(line: 224, column: 18, scope: !204)
!207 = !DILocation(line: 224, column: 5, scope: !204)
!208 = !DILocation(line: 225, column: 14, scope: !209)
!209 = distinct !DILexicalBlock(scope: !205, file: !1, line: 224, column: 28)
!210 = !DILocation(line: 225, column: 11, scope: !209)
!211 = !DILocation(line: 226, column: 25, scope: !209)
!212 = !DILocation(line: 226, column: 24, scope: !209)
!213 = !DILocation(line: 226, column: 19, scope: !209)
!214 = !DILocation(line: 226, column: 29, scope: !209)
!215 = !DILocation(line: 226, column: 28, scope: !209)
!216 = !DILocation(line: 226, column: 11, scope: !209)
!217 = !DILocation(line: 227, column: 10, scope: !209)
!218 = !DILocation(line: 228, column: 13, scope: !209)
!219 = !DILocation(line: 228, column: 10, scope: !209)
!220 = !DILocation(line: 229, column: 5, scope: !209)
!221 = !DILocation(line: 224, column: 24, scope: !222)
!222 = !DILexicalBlockFile(scope: !205, file: !1, discriminator: 2)
!223 = !DILocation(line: 224, column: 5, scope: !222)
!224 = distinct !{!224, !225}
!225 = !DILocation(line: 224, column: 5, scope: !176)
!226 = !DILocation(line: 230, column: 32, scope: !176)
!227 = !DILocation(line: 230, column: 31, scope: !176)
!228 = !DILocation(line: 230, column: 36, scope: !176)
!229 = !DILocation(line: 230, column: 40, scope: !176)
!230 = !DILocation(line: 230, column: 39, scope: !176)
!231 = !DILocation(line: 230, column: 34, scope: !176)
!232 = !DILocation(line: 230, column: 5, scope: !176)
!233 = !DILocation(line: 230, column: 13, scope: !176)
!234 = !DILocation(line: 230, column: 17, scope: !176)
!235 = !DILocation(line: 231, column: 42, scope: !176)
!236 = !DILocation(line: 231, column: 50, scope: !176)
!237 = !DILocation(line: 231, column: 37, scope: !176)
!238 = !DILocation(line: 231, column: 35, scope: !176)
!239 = !DILocation(line: 231, column: 5, scope: !176)
!240 = !DILocation(line: 231, column: 13, scope: !176)
!241 = !DILocation(line: 231, column: 17, scope: !176)
!242 = !DILocation(line: 232, column: 5, scope: !176)
!243 = !DILocation(line: 234, column: 11, scope: !244)
!244 = distinct !DILexicalBlock(scope: !172, file: !1, line: 234, column: 11)
!245 = !DILocation(line: 234, column: 13, scope: !244)
!246 = !DILocation(line: 234, column: 11, scope: !172)
!247 = !DILocation(line: 235, column: 40, scope: !248)
!248 = distinct !DILexicalBlock(scope: !244, file: !1, line: 234, column: 21)
!249 = !DILocation(line: 235, column: 39, scope: !248)
!250 = !DILocation(line: 235, column: 35, scope: !248)
!251 = !DILocation(line: 235, column: 44, scope: !248)
!252 = !DILocation(line: 235, column: 45, scope: !248)
!253 = !DILocation(line: 235, column: 42, scope: !248)
!254 = !DILocation(line: 235, column: 33, scope: !248)
!255 = !DILocation(line: 235, column: 54, scope: !248)
!256 = !DILocation(line: 235, column: 52, scope: !248)
!257 = !DILocation(line: 235, column: 5, scope: !248)
!258 = !DILocation(line: 235, column: 13, scope: !248)
!259 = !DILocation(line: 235, column: 17, scope: !248)
!260 = !DILocation(line: 236, column: 42, scope: !248)
!261 = !DILocation(line: 236, column: 50, scope: !248)
!262 = !DILocation(line: 236, column: 37, scope: !248)
!263 = !DILocation(line: 236, column: 35, scope: !248)
!264 = !DILocation(line: 236, column: 5, scope: !248)
!265 = !DILocation(line: 236, column: 13, scope: !248)
!266 = !DILocation(line: 236, column: 17, scope: !248)
!267 = !DILocation(line: 237, column: 5, scope: !248)
!268 = !DILocation(line: 240, column: 32, scope: !269)
!269 = distinct !DILexicalBlock(scope: !244, file: !1, line: 239, column: 8)
!270 = !DILocation(line: 240, column: 31, scope: !269)
!271 = !DILocation(line: 240, column: 5, scope: !269)
!272 = !DILocation(line: 240, column: 13, scope: !269)
!273 = !DILocation(line: 240, column: 17, scope: !269)
!274 = !DILocation(line: 241, column: 42, scope: !269)
!275 = !DILocation(line: 241, column: 50, scope: !269)
!276 = !DILocation(line: 241, column: 37, scope: !269)
!277 = !DILocation(line: 241, column: 35, scope: !269)
!278 = !DILocation(line: 241, column: 5, scope: !269)
!279 = !DILocation(line: 241, column: 13, scope: !269)
!280 = !DILocation(line: 241, column: 17, scope: !269)
!281 = !DILocation(line: 242, column: 5, scope: !269)
!282 = !DILocation(line: 244, column: 1, scope: !76)
!283 = distinct !DISubprogram(name: "cheb_eval_e", scope: !284, file: !284, line: 3, type: !285, isLocal: true, isDefinition: true, scopeLine: 6, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !87)
!284 = !DIFile(filename: "./cheb_eval.c", directory: "/fpcc/gsl-2.5/specfunc")
!285 = !DISubroutineType(types: !286)
!286 = !{!51, !287, !79, !80}
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64, align: 64)
!288 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!289 = !DILocalVariable(name: "cs", arg: 1, scope: !283, file: !284, line: 3, type: !287)
!290 = !DILocation(line: 3, column: 33, scope: !283)
!291 = !DILocalVariable(name: "x", arg: 2, scope: !283, file: !284, line: 4, type: !79)
!292 = !DILocation(line: 4, column: 26, scope: !283)
!293 = !DILocalVariable(name: "result", arg: 3, scope: !283, file: !284, line: 5, type: !80)
!294 = !DILocation(line: 5, column: 29, scope: !283)
!295 = !DILocalVariable(name: "j", scope: !283, file: !284, line: 7, type: !51)
!296 = !DILocation(line: 7, column: 7, scope: !283)
!297 = !DILocalVariable(name: "d", scope: !283, file: !284, line: 8, type: !49)
!298 = !DILocation(line: 8, column: 10, scope: !283)
!299 = !DILocalVariable(name: "dd", scope: !283, file: !284, line: 9, type: !49)
!300 = !DILocation(line: 9, column: 10, scope: !283)
!301 = !DILocalVariable(name: "y", scope: !283, file: !284, line: 11, type: !49)
!302 = !DILocation(line: 11, column: 10, scope: !283)
!303 = !DILocation(line: 11, column: 20, scope: !283)
!304 = !DILocation(line: 11, column: 19, scope: !283)
!305 = !DILocation(line: 11, column: 24, scope: !283)
!306 = !DILocation(line: 11, column: 28, scope: !283)
!307 = !DILocation(line: 11, column: 22, scope: !283)
!308 = !DILocation(line: 11, column: 32, scope: !283)
!309 = !DILocation(line: 11, column: 36, scope: !283)
!310 = !DILocation(line: 11, column: 30, scope: !283)
!311 = !DILocation(line: 11, column: 42, scope: !283)
!312 = !DILocation(line: 11, column: 46, scope: !283)
!313 = !DILocation(line: 11, column: 50, scope: !283)
!314 = !DILocation(line: 11, column: 54, scope: !283)
!315 = !DILocation(line: 11, column: 48, scope: !283)
!316 = !DILocation(line: 11, column: 39, scope: !283)
!317 = !DILocalVariable(name: "y2", scope: !283, file: !284, line: 12, type: !49)
!318 = !DILocation(line: 12, column: 10, scope: !283)
!319 = !DILocation(line: 12, column: 21, scope: !283)
!320 = !DILocation(line: 12, column: 19, scope: !283)
!321 = !DILocalVariable(name: "e", scope: !283, file: !284, line: 14, type: !49)
!322 = !DILocation(line: 14, column: 10, scope: !283)
!323 = !DILocation(line: 16, column: 11, scope: !324)
!324 = distinct !DILexicalBlock(scope: !283, file: !284, line: 16, column: 3)
!325 = !DILocation(line: 16, column: 15, scope: !324)
!326 = !DILocation(line: 16, column: 9, scope: !324)
!327 = !DILocation(line: 16, column: 7, scope: !324)
!328 = !DILocation(line: 16, column: 22, scope: !329)
!329 = !DILexicalBlockFile(scope: !330, file: !284, discriminator: 1)
!330 = distinct !DILexicalBlock(scope: !324, file: !284, line: 16, column: 3)
!331 = !DILocation(line: 16, column: 23, scope: !329)
!332 = !DILocation(line: 16, column: 3, scope: !329)
!333 = !DILocalVariable(name: "temp", scope: !334, file: !284, line: 17, type: !49)
!334 = distinct !DILexicalBlock(scope: !330, file: !284, line: 16, column: 33)
!335 = !DILocation(line: 17, column: 12, scope: !334)
!336 = !DILocation(line: 17, column: 19, scope: !334)
!337 = !DILocation(line: 18, column: 9, scope: !334)
!338 = !DILocation(line: 18, column: 12, scope: !334)
!339 = !DILocation(line: 18, column: 11, scope: !334)
!340 = !DILocation(line: 18, column: 16, scope: !334)
!341 = !DILocation(line: 18, column: 14, scope: !334)
!342 = !DILocation(line: 18, column: 27, scope: !334)
!343 = !DILocation(line: 18, column: 21, scope: !334)
!344 = !DILocation(line: 18, column: 25, scope: !334)
!345 = !DILocation(line: 18, column: 19, scope: !334)
!346 = !DILocation(line: 18, column: 7, scope: !334)
!347 = !DILocation(line: 19, column: 15, scope: !334)
!348 = !DILocation(line: 19, column: 18, scope: !334)
!349 = !DILocation(line: 19, column: 17, scope: !334)
!350 = !DILocation(line: 19, column: 10, scope: !334)
!351 = !DILocation(line: 19, column: 31, scope: !334)
!352 = !DILocation(line: 19, column: 26, scope: !353)
!353 = !DILexicalBlockFile(scope: !334, file: !284, discriminator: 1)
!354 = !DILocation(line: 19, column: 24, scope: !334)
!355 = !DILocation(line: 19, column: 48, scope: !334)
!356 = !DILocation(line: 19, column: 42, scope: !334)
!357 = !DILocation(line: 19, column: 46, scope: !334)
!358 = !DILocation(line: 19, column: 37, scope: !359)
!359 = !DILexicalBlockFile(scope: !334, file: !284, discriminator: 2)
!360 = !DILocation(line: 19, column: 35, scope: !334)
!361 = !DILocation(line: 19, column: 7, scope: !334)
!362 = !DILocation(line: 20, column: 10, scope: !334)
!363 = !DILocation(line: 20, column: 8, scope: !334)
!364 = !DILocation(line: 21, column: 3, scope: !334)
!365 = !DILocation(line: 16, column: 29, scope: !366)
!366 = !DILexicalBlockFile(scope: !330, file: !284, discriminator: 2)
!367 = !DILocation(line: 16, column: 3, scope: !366)
!368 = distinct !{!368, !369}
!369 = !DILocation(line: 16, column: 3, scope: !283)
!370 = !DILocalVariable(name: "temp", scope: !371, file: !284, line: 24, type: !49)
!371 = distinct !DILexicalBlock(scope: !283, file: !284, line: 23, column: 3)
!372 = !DILocation(line: 24, column: 12, scope: !371)
!373 = !DILocation(line: 24, column: 19, scope: !371)
!374 = !DILocation(line: 25, column: 9, scope: !371)
!375 = !DILocation(line: 25, column: 11, scope: !371)
!376 = !DILocation(line: 25, column: 10, scope: !371)
!377 = !DILocation(line: 25, column: 15, scope: !371)
!378 = !DILocation(line: 25, column: 13, scope: !371)
!379 = !DILocation(line: 25, column: 26, scope: !371)
!380 = !DILocation(line: 25, column: 30, scope: !371)
!381 = !DILocation(line: 25, column: 24, scope: !371)
!382 = !DILocation(line: 25, column: 18, scope: !371)
!383 = !DILocation(line: 25, column: 7, scope: !371)
!384 = !DILocation(line: 26, column: 15, scope: !371)
!385 = !DILocation(line: 26, column: 17, scope: !371)
!386 = !DILocation(line: 26, column: 16, scope: !371)
!387 = !DILocation(line: 26, column: 10, scope: !371)
!388 = !DILocation(line: 26, column: 30, scope: !371)
!389 = !DILocation(line: 26, column: 25, scope: !390)
!390 = !DILexicalBlockFile(scope: !371, file: !284, discriminator: 1)
!391 = !DILocation(line: 26, column: 23, scope: !371)
!392 = !DILocation(line: 26, column: 47, scope: !371)
!393 = !DILocation(line: 26, column: 51, scope: !371)
!394 = !DILocation(line: 26, column: 42, scope: !395)
!395 = !DILexicalBlockFile(scope: !371, file: !284, discriminator: 2)
!396 = !DILocation(line: 26, column: 40, scope: !371)
!397 = !DILocation(line: 26, column: 34, scope: !371)
!398 = !DILocation(line: 26, column: 7, scope: !371)
!399 = !DILocation(line: 29, column: 17, scope: !283)
!400 = !DILocation(line: 29, column: 3, scope: !283)
!401 = !DILocation(line: 29, column: 11, scope: !283)
!402 = !DILocation(line: 29, column: 15, scope: !283)
!403 = !DILocation(line: 30, column: 35, scope: !283)
!404 = !DILocation(line: 30, column: 33, scope: !283)
!405 = !DILocation(line: 30, column: 50, scope: !283)
!406 = !DILocation(line: 30, column: 54, scope: !283)
!407 = !DILocation(line: 30, column: 44, scope: !283)
!408 = !DILocation(line: 30, column: 48, scope: !283)
!409 = !DILocation(line: 30, column: 39, scope: !283)
!410 = !DILocation(line: 30, column: 37, scope: !283)
!411 = !DILocation(line: 30, column: 3, scope: !283)
!412 = !DILocation(line: 30, column: 11, scope: !283)
!413 = !DILocation(line: 30, column: 15, scope: !283)
!414 = !DILocation(line: 32, column: 3, scope: !283)
!415 = distinct !DISubprogram(name: "gsl_sf_debye_2_e", scope: !1, file: !1, line: 247, type: !77, isLocal: false, isDefinition: true, scopeLine: 248, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !87)
!416 = !DILocalVariable(name: "x", arg: 1, scope: !415, file: !1, line: 247, type: !79)
!417 = !DILocation(line: 247, column: 35, scope: !415)
!418 = !DILocalVariable(name: "result", arg: 2, scope: !415, file: !1, line: 247, type: !80)
!419 = !DILocation(line: 247, column: 54, scope: !415)
!420 = !DILocalVariable(name: "val_infinity", scope: !415, file: !1, line: 249, type: !79)
!421 = !DILocation(line: 249, column: 16, scope: !415)
!422 = !DILocalVariable(name: "xcut", scope: !415, file: !1, line: 250, type: !79)
!423 = !DILocation(line: 250, column: 16, scope: !415)
!424 = !DILocation(line: 254, column: 6, scope: !425)
!425 = distinct !DILexicalBlock(scope: !415, file: !1, line: 254, column: 6)
!426 = !DILocation(line: 254, column: 8, scope: !425)
!427 = !DILocation(line: 254, column: 6, scope: !415)
!428 = !DILocation(line: 255, column: 5, scope: !429)
!429 = distinct !DILexicalBlock(scope: !425, file: !1, line: 254, column: 15)
!430 = distinct !{!430, !428}
!431 = !DILocation(line: 255, column: 5, scope: !432)
!432 = !DILexicalBlockFile(scope: !433, file: !1, discriminator: 1)
!433 = distinct !DILexicalBlock(scope: !429, file: !1, line: 255, column: 5)
!434 = distinct !{!434, !435}
!435 = !DILocation(line: 255, column: 5, scope: !433)
!436 = !DILocation(line: 255, column: 5, scope: !437)
!437 = !DILexicalBlockFile(scope: !438, file: !1, discriminator: 2)
!438 = distinct !DILexicalBlock(scope: !433, file: !1, line: 255, column: 5)
!439 = !DILocation(line: 255, column: 5, scope: !440)
!440 = !DILexicalBlockFile(scope: !433, file: !1, discriminator: 3)
!441 = !DILocation(line: 256, column: 3, scope: !429)
!442 = !DILocation(line: 257, column: 11, scope: !443)
!443 = distinct !DILexicalBlock(scope: !425, file: !1, line: 257, column: 11)
!444 = !DILocation(line: 257, column: 13, scope: !443)
!445 = !DILocation(line: 257, column: 11, scope: !425)
!446 = !DILocation(line: 258, column: 25, scope: !447)
!447 = distinct !DILexicalBlock(scope: !443, file: !1, line: 257, column: 49)
!448 = !DILocation(line: 258, column: 26, scope: !447)
!449 = !DILocation(line: 258, column: 23, scope: !447)
!450 = !DILocation(line: 258, column: 33, scope: !447)
!451 = !DILocation(line: 258, column: 35, scope: !447)
!452 = !DILocation(line: 258, column: 34, scope: !447)
!453 = !DILocation(line: 258, column: 36, scope: !447)
!454 = !DILocation(line: 258, column: 31, scope: !447)
!455 = !DILocation(line: 258, column: 5, scope: !447)
!456 = !DILocation(line: 258, column: 13, scope: !447)
!457 = !DILocation(line: 258, column: 17, scope: !447)
!458 = !DILocation(line: 259, column: 37, scope: !447)
!459 = !DILocation(line: 259, column: 45, scope: !447)
!460 = !DILocation(line: 259, column: 35, scope: !447)
!461 = !DILocation(line: 259, column: 5, scope: !447)
!462 = !DILocation(line: 259, column: 13, scope: !447)
!463 = !DILocation(line: 259, column: 17, scope: !447)
!464 = !DILocation(line: 260, column: 5, scope: !447)
!465 = !DILocation(line: 262, column: 11, scope: !466)
!466 = distinct !DILexicalBlock(scope: !443, file: !1, line: 262, column: 11)
!467 = !DILocation(line: 262, column: 13, scope: !466)
!468 = !DILocation(line: 262, column: 11, scope: !443)
!469 = !DILocalVariable(name: "t", scope: !470, file: !1, line: 263, type: !79)
!470 = distinct !DILexicalBlock(scope: !466, file: !1, line: 262, column: 21)
!471 = !DILocation(line: 263, column: 18, scope: !470)
!472 = !DILocation(line: 263, column: 22, scope: !470)
!473 = !DILocation(line: 263, column: 24, scope: !470)
!474 = !DILocation(line: 263, column: 23, scope: !470)
!475 = !DILocation(line: 263, column: 25, scope: !470)
!476 = !DILocation(line: 263, column: 30, scope: !470)
!477 = !DILocalVariable(name: "c", scope: !470, file: !1, line: 264, type: !81)
!478 = !DILocation(line: 264, column: 19, scope: !470)
!479 = !DILocation(line: 265, column: 28, scope: !470)
!480 = !DILocation(line: 265, column: 5, scope: !470)
!481 = !DILocation(line: 266, column: 21, scope: !470)
!482 = !DILocation(line: 266, column: 27, scope: !470)
!483 = !DILocation(line: 266, column: 28, scope: !470)
!484 = !DILocation(line: 266, column: 25, scope: !470)
!485 = !DILocation(line: 266, column: 5, scope: !470)
!486 = !DILocation(line: 266, column: 13, scope: !470)
!487 = !DILocation(line: 266, column: 17, scope: !470)
!488 = !DILocation(line: 267, column: 21, scope: !470)
!489 = !DILocation(line: 267, column: 45, scope: !470)
!490 = !DILocation(line: 267, column: 43, scope: !470)
!491 = !DILocation(line: 267, column: 46, scope: !470)
!492 = !DILocation(line: 267, column: 25, scope: !470)
!493 = !DILocation(line: 267, column: 5, scope: !470)
!494 = !DILocation(line: 267, column: 13, scope: !470)
!495 = !DILocation(line: 267, column: 17, scope: !470)
!496 = !DILocation(line: 268, column: 5, scope: !470)
!497 = !DILocation(line: 270, column: 11, scope: !498)
!498 = distinct !DILexicalBlock(scope: !466, file: !1, line: 270, column: 11)
!499 = !DILocation(line: 270, column: 13, scope: !498)
!500 = !DILocation(line: 270, column: 11, scope: !466)
!501 = !DILocalVariable(name: "nexp", scope: !502, file: !1, line: 271, type: !177)
!502 = distinct !DILexicalBlock(scope: !498, file: !1, line: 270, column: 47)
!503 = !DILocation(line: 271, column: 15, scope: !502)
!504 = !DILocation(line: 271, column: 33, scope: !502)
!505 = !DILocation(line: 271, column: 32, scope: !502)
!506 = !DILocation(line: 271, column: 22, scope: !502)
!507 = !DILocalVariable(name: "ex", scope: !502, file: !1, line: 272, type: !79)
!508 = !DILocation(line: 272, column: 18, scope: !502)
!509 = !DILocation(line: 272, column: 29, scope: !502)
!510 = !DILocation(line: 272, column: 28, scope: !502)
!511 = !DILocation(line: 272, column: 24, scope: !502)
!512 = !DILocalVariable(name: "xk", scope: !502, file: !1, line: 273, type: !49)
!513 = !DILocation(line: 273, column: 12, scope: !502)
!514 = !DILocation(line: 273, column: 18, scope: !502)
!515 = !DILocation(line: 273, column: 25, scope: !502)
!516 = !DILocation(line: 273, column: 23, scope: !502)
!517 = !DILocalVariable(name: "rk", scope: !502, file: !1, line: 274, type: !49)
!518 = !DILocation(line: 274, column: 12, scope: !502)
!519 = !DILocation(line: 274, column: 18, scope: !502)
!520 = !DILocalVariable(name: "sum", scope: !502, file: !1, line: 275, type: !49)
!521 = !DILocation(line: 275, column: 12, scope: !502)
!522 = !DILocalVariable(name: "i", scope: !502, file: !1, line: 276, type: !51)
!523 = !DILocation(line: 276, column: 9, scope: !502)
!524 = !DILocation(line: 277, column: 11, scope: !525)
!525 = distinct !DILexicalBlock(scope: !502, file: !1, line: 277, column: 5)
!526 = !DILocation(line: 277, column: 10, scope: !525)
!527 = !DILocation(line: 277, column: 9, scope: !525)
!528 = !DILocation(line: 277, column: 17, scope: !529)
!529 = !DILexicalBlockFile(scope: !530, file: !1, discriminator: 1)
!530 = distinct !DILexicalBlock(scope: !525, file: !1, line: 277, column: 5)
!531 = !DILocation(line: 277, column: 18, scope: !529)
!532 = !DILocation(line: 277, column: 5, scope: !529)
!533 = !DILocation(line: 278, column: 14, scope: !534)
!534 = distinct !DILexicalBlock(scope: !530, file: !1, line: 277, column: 28)
!535 = !DILocation(line: 278, column: 11, scope: !534)
!536 = !DILocation(line: 279, column: 25, scope: !534)
!537 = !DILocation(line: 279, column: 24, scope: !534)
!538 = !DILocation(line: 279, column: 19, scope: !534)
!539 = !DILocation(line: 279, column: 35, scope: !534)
!540 = !DILocation(line: 279, column: 38, scope: !534)
!541 = !DILocation(line: 279, column: 37, scope: !534)
!542 = !DILocation(line: 279, column: 33, scope: !534)
!543 = !DILocation(line: 279, column: 28, scope: !534)
!544 = !DILocation(line: 279, column: 45, scope: !534)
!545 = !DILocation(line: 279, column: 43, scope: !534)
!546 = !DILocation(line: 279, column: 11, scope: !534)
!547 = !DILocation(line: 280, column: 10, scope: !534)
!548 = !DILocation(line: 281, column: 13, scope: !534)
!549 = !DILocation(line: 281, column: 10, scope: !534)
!550 = !DILocation(line: 282, column: 5, scope: !534)
!551 = !DILocation(line: 277, column: 24, scope: !552)
!552 = !DILexicalBlockFile(scope: !530, file: !1, discriminator: 2)
!553 = !DILocation(line: 277, column: 5, scope: !552)
!554 = distinct !{!554, !555}
!555 = !DILocation(line: 277, column: 5, scope: !502)
!556 = !DILocation(line: 283, column: 33, scope: !502)
!557 = !DILocation(line: 283, column: 35, scope: !502)
!558 = !DILocation(line: 283, column: 34, scope: !502)
!559 = !DILocation(line: 283, column: 31, scope: !502)
!560 = !DILocation(line: 283, column: 46, scope: !502)
!561 = !DILocation(line: 283, column: 44, scope: !502)
!562 = !DILocation(line: 283, column: 52, scope: !502)
!563 = !DILocation(line: 283, column: 50, scope: !502)
!564 = !DILocation(line: 283, column: 38, scope: !502)
!565 = !DILocation(line: 283, column: 5, scope: !502)
!566 = !DILocation(line: 283, column: 13, scope: !502)
!567 = !DILocation(line: 283, column: 17, scope: !502)
!568 = !DILocation(line: 284, column: 42, scope: !502)
!569 = !DILocation(line: 284, column: 50, scope: !502)
!570 = !DILocation(line: 284, column: 37, scope: !502)
!571 = !DILocation(line: 284, column: 35, scope: !502)
!572 = !DILocation(line: 284, column: 5, scope: !502)
!573 = !DILocation(line: 284, column: 13, scope: !502)
!574 = !DILocation(line: 284, column: 17, scope: !502)
!575 = !DILocation(line: 285, column: 5, scope: !502)
!576 = !DILocation(line: 287, column: 11, scope: !577)
!577 = distinct !DILexicalBlock(scope: !498, file: !1, line: 287, column: 11)
!578 = !DILocation(line: 287, column: 13, scope: !577)
!579 = !DILocation(line: 287, column: 11, scope: !498)
!580 = !DILocalVariable(name: "x2", scope: !581, file: !1, line: 288, type: !79)
!581 = distinct !DILexicalBlock(scope: !577, file: !1, line: 287, column: 21)
!582 = !DILocation(line: 288, column: 18, scope: !581)
!583 = !DILocation(line: 288, column: 24, scope: !581)
!584 = !DILocation(line: 288, column: 26, scope: !581)
!585 = !DILocation(line: 288, column: 25, scope: !581)
!586 = !DILocalVariable(name: "sum", scope: !581, file: !1, line: 289, type: !79)
!587 = !DILocation(line: 289, column: 18, scope: !581)
!588 = !DILocation(line: 289, column: 34, scope: !581)
!589 = !DILocation(line: 289, column: 33, scope: !581)
!590 = !DILocation(line: 289, column: 28, scope: !581)
!591 = !DILocation(line: 289, column: 38, scope: !581)
!592 = !DILocation(line: 289, column: 36, scope: !581)
!593 = !DILocation(line: 290, column: 41, scope: !581)
!594 = !DILocation(line: 290, column: 39, scope: !581)
!595 = !DILocation(line: 290, column: 52, scope: !581)
!596 = !DILocation(line: 290, column: 51, scope: !581)
!597 = !DILocation(line: 290, column: 47, scope: !581)
!598 = !DILocation(line: 290, column: 45, scope: !581)
!599 = !DILocation(line: 290, column: 33, scope: !581)
!600 = !DILocation(line: 290, column: 58, scope: !581)
!601 = !DILocation(line: 290, column: 56, scope: !581)
!602 = !DILocation(line: 290, column: 5, scope: !581)
!603 = !DILocation(line: 290, column: 13, scope: !581)
!604 = !DILocation(line: 290, column: 17, scope: !581)
!605 = !DILocation(line: 291, column: 42, scope: !581)
!606 = !DILocation(line: 291, column: 50, scope: !581)
!607 = !DILocation(line: 291, column: 37, scope: !581)
!608 = !DILocation(line: 291, column: 35, scope: !581)
!609 = !DILocation(line: 291, column: 5, scope: !581)
!610 = !DILocation(line: 291, column: 13, scope: !581)
!611 = !DILocation(line: 291, column: 17, scope: !581)
!612 = !DILocation(line: 292, column: 5, scope: !581)
!613 = !DILocation(line: 295, column: 33, scope: !614)
!614 = distinct !DILexicalBlock(scope: !577, file: !1, line: 294, column: 8)
!615 = !DILocation(line: 295, column: 32, scope: !614)
!616 = !DILocation(line: 295, column: 36, scope: !614)
!617 = !DILocation(line: 295, column: 35, scope: !614)
!618 = !DILocation(line: 295, column: 5, scope: !614)
!619 = !DILocation(line: 295, column: 13, scope: !614)
!620 = !DILocation(line: 295, column: 17, scope: !614)
!621 = !DILocation(line: 296, column: 37, scope: !614)
!622 = !DILocation(line: 296, column: 45, scope: !614)
!623 = !DILocation(line: 296, column: 35, scope: !614)
!624 = !DILocation(line: 296, column: 5, scope: !614)
!625 = !DILocation(line: 296, column: 13, scope: !614)
!626 = !DILocation(line: 296, column: 17, scope: !614)
!627 = !DILocation(line: 297, column: 5, scope: !628)
!628 = distinct !DILexicalBlock(scope: !614, file: !1, line: 297, column: 5)
!629 = !DILocation(line: 297, column: 5, scope: !614)
!630 = !DILocation(line: 297, column: 5, scope: !631)
!631 = !DILexicalBlockFile(scope: !628, file: !1, discriminator: 1)
!632 = distinct !{!632, !627}
!633 = !DILocation(line: 297, column: 5, scope: !634)
!634 = !DILexicalBlockFile(scope: !635, file: !1, discriminator: 2)
!635 = distinct !DILexicalBlock(scope: !628, file: !1, line: 297, column: 5)
!636 = !DILocation(line: 297, column: 5, scope: !637)
!637 = !DILexicalBlockFile(scope: !635, file: !1, discriminator: 3)
!638 = !DILocation(line: 298, column: 5, scope: !614)
!639 = !DILocation(line: 300, column: 1, scope: !415)
!640 = distinct !DISubprogram(name: "gsl_sf_debye_3_e", scope: !1, file: !1, line: 303, type: !77, isLocal: false, isDefinition: true, scopeLine: 304, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !87)
!641 = !DILocalVariable(name: "x", arg: 1, scope: !640, file: !1, line: 303, type: !79)
!642 = !DILocation(line: 303, column: 35, scope: !640)
!643 = !DILocalVariable(name: "result", arg: 2, scope: !640, file: !1, line: 303, type: !80)
!644 = !DILocation(line: 303, column: 54, scope: !640)
!645 = !DILocalVariable(name: "val_infinity", scope: !640, file: !1, line: 305, type: !79)
!646 = !DILocation(line: 305, column: 16, scope: !640)
!647 = !DILocalVariable(name: "xcut", scope: !640, file: !1, line: 306, type: !79)
!648 = !DILocation(line: 306, column: 16, scope: !640)
!649 = !DILocation(line: 310, column: 6, scope: !650)
!650 = distinct !DILexicalBlock(scope: !640, file: !1, line: 310, column: 6)
!651 = !DILocation(line: 310, column: 8, scope: !650)
!652 = !DILocation(line: 310, column: 6, scope: !640)
!653 = !DILocation(line: 311, column: 5, scope: !654)
!654 = distinct !DILexicalBlock(scope: !650, file: !1, line: 310, column: 15)
!655 = distinct !{!655, !653}
!656 = !DILocation(line: 311, column: 5, scope: !657)
!657 = !DILexicalBlockFile(scope: !658, file: !1, discriminator: 1)
!658 = distinct !DILexicalBlock(scope: !654, file: !1, line: 311, column: 5)
!659 = distinct !{!659, !660}
!660 = !DILocation(line: 311, column: 5, scope: !658)
!661 = !DILocation(line: 311, column: 5, scope: !662)
!662 = !DILexicalBlockFile(scope: !663, file: !1, discriminator: 2)
!663 = distinct !DILexicalBlock(scope: !658, file: !1, line: 311, column: 5)
!664 = !DILocation(line: 311, column: 5, scope: !665)
!665 = !DILexicalBlockFile(scope: !658, file: !1, discriminator: 3)
!666 = !DILocation(line: 312, column: 3, scope: !654)
!667 = !DILocation(line: 313, column: 11, scope: !668)
!668 = distinct !DILexicalBlock(scope: !650, file: !1, line: 313, column: 11)
!669 = !DILocation(line: 313, column: 13, scope: !668)
!670 = !DILocation(line: 313, column: 11, scope: !650)
!671 = !DILocation(line: 314, column: 29, scope: !672)
!672 = distinct !DILexicalBlock(scope: !668, file: !1, line: 313, column: 49)
!673 = !DILocation(line: 314, column: 28, scope: !672)
!674 = !DILocation(line: 314, column: 30, scope: !672)
!675 = !DILocation(line: 314, column: 23, scope: !672)
!676 = !DILocation(line: 314, column: 37, scope: !672)
!677 = !DILocation(line: 314, column: 39, scope: !672)
!678 = !DILocation(line: 314, column: 38, scope: !672)
!679 = !DILocation(line: 314, column: 40, scope: !672)
!680 = !DILocation(line: 314, column: 35, scope: !672)
!681 = !DILocation(line: 314, column: 5, scope: !672)
!682 = !DILocation(line: 314, column: 13, scope: !672)
!683 = !DILocation(line: 314, column: 17, scope: !672)
!684 = !DILocation(line: 315, column: 37, scope: !672)
!685 = !DILocation(line: 315, column: 45, scope: !672)
!686 = !DILocation(line: 315, column: 35, scope: !672)
!687 = !DILocation(line: 315, column: 5, scope: !672)
!688 = !DILocation(line: 315, column: 13, scope: !672)
!689 = !DILocation(line: 315, column: 17, scope: !672)
!690 = !DILocation(line: 316, column: 5, scope: !672)
!691 = !DILocation(line: 318, column: 11, scope: !692)
!692 = distinct !DILexicalBlock(scope: !668, file: !1, line: 318, column: 11)
!693 = !DILocation(line: 318, column: 13, scope: !692)
!694 = !DILocation(line: 318, column: 11, scope: !668)
!695 = !DILocalVariable(name: "t", scope: !696, file: !1, line: 319, type: !79)
!696 = distinct !DILexicalBlock(scope: !692, file: !1, line: 318, column: 21)
!697 = !DILocation(line: 319, column: 18, scope: !696)
!698 = !DILocation(line: 319, column: 22, scope: !696)
!699 = !DILocation(line: 319, column: 24, scope: !696)
!700 = !DILocation(line: 319, column: 23, scope: !696)
!701 = !DILocation(line: 319, column: 25, scope: !696)
!702 = !DILocation(line: 319, column: 30, scope: !696)
!703 = !DILocalVariable(name: "c", scope: !696, file: !1, line: 320, type: !81)
!704 = !DILocation(line: 320, column: 19, scope: !696)
!705 = !DILocation(line: 321, column: 28, scope: !696)
!706 = !DILocation(line: 321, column: 5, scope: !696)
!707 = !DILocation(line: 322, column: 21, scope: !696)
!708 = !DILocation(line: 322, column: 33, scope: !696)
!709 = !DILocation(line: 322, column: 32, scope: !696)
!710 = !DILocation(line: 322, column: 25, scope: !696)
!711 = !DILocation(line: 322, column: 5, scope: !696)
!712 = !DILocation(line: 322, column: 13, scope: !696)
!713 = !DILocation(line: 322, column: 17, scope: !696)
!714 = !DILocation(line: 323, column: 21, scope: !696)
!715 = !DILocation(line: 323, column: 51, scope: !696)
!716 = !DILocation(line: 323, column: 50, scope: !696)
!717 = !DILocation(line: 323, column: 25, scope: !696)
!718 = !DILocation(line: 323, column: 5, scope: !696)
!719 = !DILocation(line: 323, column: 13, scope: !696)
!720 = !DILocation(line: 323, column: 17, scope: !696)
!721 = !DILocation(line: 324, column: 5, scope: !696)
!722 = !DILocation(line: 326, column: 11, scope: !723)
!723 = distinct !DILexicalBlock(scope: !692, file: !1, line: 326, column: 11)
!724 = !DILocation(line: 326, column: 13, scope: !723)
!725 = !DILocation(line: 326, column: 11, scope: !692)
!726 = !DILocalVariable(name: "nexp", scope: !727, file: !1, line: 327, type: !177)
!727 = distinct !DILexicalBlock(scope: !723, file: !1, line: 326, column: 47)
!728 = !DILocation(line: 327, column: 15, scope: !727)
!729 = !DILocation(line: 327, column: 33, scope: !727)
!730 = !DILocation(line: 327, column: 32, scope: !727)
!731 = !DILocation(line: 327, column: 22, scope: !727)
!732 = !DILocalVariable(name: "ex", scope: !727, file: !1, line: 328, type: !79)
!733 = !DILocation(line: 328, column: 18, scope: !727)
!734 = !DILocation(line: 328, column: 29, scope: !727)
!735 = !DILocation(line: 328, column: 28, scope: !727)
!736 = !DILocation(line: 328, column: 24, scope: !727)
!737 = !DILocalVariable(name: "xk", scope: !727, file: !1, line: 329, type: !49)
!738 = !DILocation(line: 329, column: 12, scope: !727)
!739 = !DILocation(line: 329, column: 18, scope: !727)
!740 = !DILocation(line: 329, column: 25, scope: !727)
!741 = !DILocation(line: 329, column: 23, scope: !727)
!742 = !DILocalVariable(name: "rk", scope: !727, file: !1, line: 330, type: !49)
!743 = !DILocation(line: 330, column: 12, scope: !727)
!744 = !DILocation(line: 330, column: 18, scope: !727)
!745 = !DILocalVariable(name: "sum", scope: !727, file: !1, line: 331, type: !49)
!746 = !DILocation(line: 331, column: 12, scope: !727)
!747 = !DILocalVariable(name: "i", scope: !727, file: !1, line: 332, type: !51)
!748 = !DILocation(line: 332, column: 9, scope: !727)
!749 = !DILocation(line: 333, column: 11, scope: !750)
!750 = distinct !DILexicalBlock(scope: !727, file: !1, line: 333, column: 5)
!751 = !DILocation(line: 333, column: 10, scope: !750)
!752 = !DILocation(line: 333, column: 9, scope: !750)
!753 = !DILocation(line: 333, column: 17, scope: !754)
!754 = !DILexicalBlockFile(scope: !755, file: !1, discriminator: 1)
!755 = distinct !DILexicalBlock(scope: !750, file: !1, line: 333, column: 5)
!756 = !DILocation(line: 333, column: 18, scope: !754)
!757 = !DILocation(line: 333, column: 5, scope: !754)
!758 = !DILocalVariable(name: "xk_inv", scope: !759, file: !1, line: 334, type: !49)
!759 = distinct !DILexicalBlock(scope: !755, file: !1, line: 333, column: 28)
!760 = !DILocation(line: 334, column: 14, scope: !759)
!761 = !DILocation(line: 334, column: 27, scope: !759)
!762 = !DILocation(line: 334, column: 26, scope: !759)
!763 = !DILocation(line: 335, column: 14, scope: !759)
!764 = !DILocation(line: 335, column: 11, scope: !759)
!765 = !DILocation(line: 336, column: 21, scope: !759)
!766 = !DILocation(line: 336, column: 20, scope: !759)
!767 = !DILocation(line: 336, column: 28, scope: !759)
!768 = !DILocation(line: 336, column: 35, scope: !759)
!769 = !DILocation(line: 336, column: 34, scope: !759)
!770 = !DILocation(line: 336, column: 42, scope: !759)
!771 = !DILocation(line: 336, column: 49, scope: !759)
!772 = !DILocation(line: 336, column: 48, scope: !759)
!773 = !DILocation(line: 336, column: 56, scope: !759)
!774 = !DILocation(line: 336, column: 65, scope: !759)
!775 = !DILocation(line: 336, column: 63, scope: !759)
!776 = !DILocation(line: 336, column: 11, scope: !759)
!777 = !DILocation(line: 337, column: 10, scope: !759)
!778 = !DILocation(line: 338, column: 13, scope: !759)
!779 = !DILocation(line: 338, column: 10, scope: !759)
!780 = !DILocation(line: 339, column: 5, scope: !759)
!781 = !DILocation(line: 333, column: 24, scope: !782)
!782 = !DILexicalBlockFile(scope: !755, file: !1, discriminator: 2)
!783 = !DILocation(line: 333, column: 5, scope: !782)
!784 = distinct !{!784, !785}
!785 = !DILocation(line: 333, column: 5, scope: !727)
!786 = !DILocation(line: 340, column: 33, scope: !727)
!787 = !DILocation(line: 340, column: 35, scope: !727)
!788 = !DILocation(line: 340, column: 34, scope: !727)
!789 = !DILocation(line: 340, column: 37, scope: !727)
!790 = !DILocation(line: 340, column: 36, scope: !727)
!791 = !DILocation(line: 340, column: 31, scope: !727)
!792 = !DILocation(line: 340, column: 48, scope: !727)
!793 = !DILocation(line: 340, column: 46, scope: !727)
!794 = !DILocation(line: 340, column: 54, scope: !727)
!795 = !DILocation(line: 340, column: 52, scope: !727)
!796 = !DILocation(line: 340, column: 40, scope: !727)
!797 = !DILocation(line: 340, column: 5, scope: !727)
!798 = !DILocation(line: 340, column: 13, scope: !727)
!799 = !DILocation(line: 340, column: 17, scope: !727)
!800 = !DILocation(line: 341, column: 37, scope: !727)
!801 = !DILocation(line: 341, column: 45, scope: !727)
!802 = !DILocation(line: 341, column: 35, scope: !727)
!803 = !DILocation(line: 341, column: 5, scope: !727)
!804 = !DILocation(line: 341, column: 13, scope: !727)
!805 = !DILocation(line: 341, column: 17, scope: !727)
!806 = !DILocation(line: 342, column: 5, scope: !727)
!807 = !DILocation(line: 344, column: 11, scope: !808)
!808 = distinct !DILexicalBlock(scope: !723, file: !1, line: 344, column: 11)
!809 = !DILocation(line: 344, column: 13, scope: !808)
!810 = !DILocation(line: 344, column: 11, scope: !723)
!811 = !DILocalVariable(name: "x3", scope: !812, file: !1, line: 345, type: !79)
!812 = distinct !DILexicalBlock(scope: !808, file: !1, line: 344, column: 21)
!813 = !DILocation(line: 345, column: 18, scope: !812)
!814 = !DILocation(line: 345, column: 23, scope: !812)
!815 = !DILocation(line: 345, column: 25, scope: !812)
!816 = !DILocation(line: 345, column: 24, scope: !812)
!817 = !DILocation(line: 345, column: 27, scope: !812)
!818 = !DILocation(line: 345, column: 26, scope: !812)
!819 = !DILocalVariable(name: "sum", scope: !812, file: !1, line: 346, type: !79)
!820 = !DILocation(line: 346, column: 18, scope: !812)
!821 = !DILocation(line: 346, column: 34, scope: !812)
!822 = !DILocation(line: 346, column: 33, scope: !812)
!823 = !DILocation(line: 346, column: 28, scope: !812)
!824 = !DILocation(line: 346, column: 42, scope: !812)
!825 = !DILocation(line: 346, column: 41, scope: !812)
!826 = !DILocation(line: 346, column: 44, scope: !812)
!827 = !DILocation(line: 346, column: 43, scope: !812)
!828 = !DILocation(line: 346, column: 36, scope: !812)
!829 = !DILocation(line: 346, column: 48, scope: !812)
!830 = !DILocation(line: 346, column: 46, scope: !812)
!831 = !DILocation(line: 347, column: 41, scope: !812)
!832 = !DILocation(line: 347, column: 39, scope: !812)
!833 = !DILocation(line: 347, column: 52, scope: !812)
!834 = !DILocation(line: 347, column: 51, scope: !812)
!835 = !DILocation(line: 347, column: 47, scope: !812)
!836 = !DILocation(line: 347, column: 45, scope: !812)
!837 = !DILocation(line: 347, column: 33, scope: !812)
!838 = !DILocation(line: 347, column: 58, scope: !812)
!839 = !DILocation(line: 347, column: 56, scope: !812)
!840 = !DILocation(line: 347, column: 5, scope: !812)
!841 = !DILocation(line: 347, column: 13, scope: !812)
!842 = !DILocation(line: 347, column: 17, scope: !812)
!843 = !DILocation(line: 348, column: 37, scope: !812)
!844 = !DILocation(line: 348, column: 45, scope: !812)
!845 = !DILocation(line: 348, column: 35, scope: !812)
!846 = !DILocation(line: 348, column: 5, scope: !812)
!847 = !DILocation(line: 348, column: 13, scope: !812)
!848 = !DILocation(line: 348, column: 17, scope: !812)
!849 = !DILocation(line: 349, column: 5, scope: !812)
!850 = !DILocation(line: 352, column: 34, scope: !851)
!851 = distinct !DILexicalBlock(scope: !808, file: !1, line: 351, column: 8)
!852 = !DILocation(line: 352, column: 33, scope: !851)
!853 = !DILocation(line: 352, column: 37, scope: !851)
!854 = !DILocation(line: 352, column: 36, scope: !851)
!855 = !DILocation(line: 352, column: 40, scope: !851)
!856 = !DILocation(line: 352, column: 39, scope: !851)
!857 = !DILocation(line: 352, column: 5, scope: !851)
!858 = !DILocation(line: 352, column: 13, scope: !851)
!859 = !DILocation(line: 352, column: 17, scope: !851)
!860 = !DILocation(line: 353, column: 37, scope: !851)
!861 = !DILocation(line: 353, column: 45, scope: !851)
!862 = !DILocation(line: 353, column: 35, scope: !851)
!863 = !DILocation(line: 353, column: 5, scope: !851)
!864 = !DILocation(line: 353, column: 13, scope: !851)
!865 = !DILocation(line: 353, column: 17, scope: !851)
!866 = !DILocation(line: 354, column: 5, scope: !867)
!867 = distinct !DILexicalBlock(scope: !851, file: !1, line: 354, column: 5)
!868 = !DILocation(line: 354, column: 5, scope: !851)
!869 = !DILocation(line: 354, column: 5, scope: !870)
!870 = !DILexicalBlockFile(scope: !867, file: !1, discriminator: 1)
!871 = distinct !{!871, !866}
!872 = !DILocation(line: 354, column: 5, scope: !873)
!873 = !DILexicalBlockFile(scope: !874, file: !1, discriminator: 2)
!874 = distinct !DILexicalBlock(scope: !867, file: !1, line: 354, column: 5)
!875 = !DILocation(line: 354, column: 5, scope: !876)
!876 = !DILexicalBlockFile(scope: !874, file: !1, discriminator: 3)
!877 = !DILocation(line: 355, column: 5, scope: !851)
!878 = !DILocation(line: 357, column: 1, scope: !640)
!879 = distinct !DISubprogram(name: "gsl_sf_debye_4_e", scope: !1, file: !1, line: 360, type: !77, isLocal: false, isDefinition: true, scopeLine: 361, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !87)
!880 = !DILocalVariable(name: "x", arg: 1, scope: !879, file: !1, line: 360, type: !79)
!881 = !DILocation(line: 360, column: 35, scope: !879)
!882 = !DILocalVariable(name: "result", arg: 2, scope: !879, file: !1, line: 360, type: !80)
!883 = !DILocation(line: 360, column: 54, scope: !879)
!884 = !DILocalVariable(name: "val_infinity", scope: !879, file: !1, line: 362, type: !79)
!885 = !DILocation(line: 362, column: 16, scope: !879)
!886 = !DILocalVariable(name: "xcut", scope: !879, file: !1, line: 363, type: !79)
!887 = !DILocation(line: 363, column: 16, scope: !879)
!888 = !DILocation(line: 367, column: 6, scope: !889)
!889 = distinct !DILexicalBlock(scope: !879, file: !1, line: 367, column: 6)
!890 = !DILocation(line: 367, column: 8, scope: !889)
!891 = !DILocation(line: 367, column: 6, scope: !879)
!892 = !DILocation(line: 368, column: 5, scope: !893)
!893 = distinct !DILexicalBlock(scope: !889, file: !1, line: 367, column: 15)
!894 = distinct !{!894, !892}
!895 = !DILocation(line: 368, column: 5, scope: !896)
!896 = !DILexicalBlockFile(scope: !897, file: !1, discriminator: 1)
!897 = distinct !DILexicalBlock(scope: !893, file: !1, line: 368, column: 5)
!898 = distinct !{!898, !899}
!899 = !DILocation(line: 368, column: 5, scope: !897)
!900 = !DILocation(line: 368, column: 5, scope: !901)
!901 = !DILexicalBlockFile(scope: !902, file: !1, discriminator: 2)
!902 = distinct !DILexicalBlock(scope: !897, file: !1, line: 368, column: 5)
!903 = !DILocation(line: 368, column: 5, scope: !904)
!904 = !DILexicalBlockFile(scope: !897, file: !1, discriminator: 3)
!905 = !DILocation(line: 369, column: 3, scope: !893)
!906 = !DILocation(line: 370, column: 11, scope: !907)
!907 = distinct !DILexicalBlock(scope: !889, file: !1, line: 370, column: 11)
!908 = !DILocation(line: 370, column: 13, scope: !907)
!909 = !DILocation(line: 370, column: 11, scope: !889)
!910 = !DILocation(line: 371, column: 29, scope: !911)
!911 = distinct !DILexicalBlock(scope: !907, file: !1, line: 370, column: 49)
!912 = !DILocation(line: 371, column: 28, scope: !911)
!913 = !DILocation(line: 371, column: 30, scope: !911)
!914 = !DILocation(line: 371, column: 23, scope: !911)
!915 = !DILocation(line: 371, column: 37, scope: !911)
!916 = !DILocation(line: 371, column: 39, scope: !911)
!917 = !DILocation(line: 371, column: 38, scope: !911)
!918 = !DILocation(line: 371, column: 40, scope: !911)
!919 = !DILocation(line: 371, column: 35, scope: !911)
!920 = !DILocation(line: 371, column: 5, scope: !911)
!921 = !DILocation(line: 371, column: 13, scope: !911)
!922 = !DILocation(line: 371, column: 17, scope: !911)
!923 = !DILocation(line: 372, column: 37, scope: !911)
!924 = !DILocation(line: 372, column: 45, scope: !911)
!925 = !DILocation(line: 372, column: 35, scope: !911)
!926 = !DILocation(line: 372, column: 5, scope: !911)
!927 = !DILocation(line: 372, column: 13, scope: !911)
!928 = !DILocation(line: 372, column: 17, scope: !911)
!929 = !DILocation(line: 373, column: 5, scope: !911)
!930 = !DILocation(line: 375, column: 11, scope: !931)
!931 = distinct !DILexicalBlock(scope: !907, file: !1, line: 375, column: 11)
!932 = !DILocation(line: 375, column: 13, scope: !931)
!933 = !DILocation(line: 375, column: 11, scope: !907)
!934 = !DILocalVariable(name: "t", scope: !935, file: !1, line: 376, type: !79)
!935 = distinct !DILexicalBlock(scope: !931, file: !1, line: 375, column: 21)
!936 = !DILocation(line: 376, column: 18, scope: !935)
!937 = !DILocation(line: 376, column: 22, scope: !935)
!938 = !DILocation(line: 376, column: 24, scope: !935)
!939 = !DILocation(line: 376, column: 23, scope: !935)
!940 = !DILocation(line: 376, column: 25, scope: !935)
!941 = !DILocation(line: 376, column: 30, scope: !935)
!942 = !DILocalVariable(name: "c", scope: !935, file: !1, line: 377, type: !81)
!943 = !DILocation(line: 377, column: 19, scope: !935)
!944 = !DILocation(line: 378, column: 28, scope: !935)
!945 = !DILocation(line: 378, column: 5, scope: !935)
!946 = !DILocation(line: 379, column: 21, scope: !935)
!947 = !DILocation(line: 379, column: 31, scope: !935)
!948 = !DILocation(line: 379, column: 30, scope: !935)
!949 = !DILocation(line: 379, column: 32, scope: !935)
!950 = !DILocation(line: 379, column: 25, scope: !935)
!951 = !DILocation(line: 379, column: 5, scope: !935)
!952 = !DILocation(line: 379, column: 13, scope: !935)
!953 = !DILocation(line: 379, column: 17, scope: !935)
!954 = !DILocation(line: 380, column: 21, scope: !935)
!955 = !DILocation(line: 380, column: 49, scope: !935)
!956 = !DILocation(line: 380, column: 48, scope: !935)
!957 = !DILocation(line: 380, column: 50, scope: !935)
!958 = !DILocation(line: 380, column: 25, scope: !935)
!959 = !DILocation(line: 380, column: 5, scope: !935)
!960 = !DILocation(line: 380, column: 13, scope: !935)
!961 = !DILocation(line: 380, column: 17, scope: !935)
!962 = !DILocation(line: 381, column: 5, scope: !935)
!963 = !DILocation(line: 383, column: 11, scope: !964)
!964 = distinct !DILexicalBlock(scope: !931, file: !1, line: 383, column: 11)
!965 = !DILocation(line: 383, column: 13, scope: !964)
!966 = !DILocation(line: 383, column: 11, scope: !931)
!967 = !DILocalVariable(name: "nexp", scope: !968, file: !1, line: 384, type: !177)
!968 = distinct !DILexicalBlock(scope: !964, file: !1, line: 383, column: 47)
!969 = !DILocation(line: 384, column: 15, scope: !968)
!970 = !DILocation(line: 384, column: 33, scope: !968)
!971 = !DILocation(line: 384, column: 32, scope: !968)
!972 = !DILocation(line: 384, column: 22, scope: !968)
!973 = !DILocalVariable(name: "ex", scope: !968, file: !1, line: 385, type: !79)
!974 = !DILocation(line: 385, column: 18, scope: !968)
!975 = !DILocation(line: 385, column: 29, scope: !968)
!976 = !DILocation(line: 385, column: 28, scope: !968)
!977 = !DILocation(line: 385, column: 24, scope: !968)
!978 = !DILocalVariable(name: "xk", scope: !968, file: !1, line: 386, type: !49)
!979 = !DILocation(line: 386, column: 12, scope: !968)
!980 = !DILocation(line: 386, column: 18, scope: !968)
!981 = !DILocation(line: 386, column: 25, scope: !968)
!982 = !DILocation(line: 386, column: 23, scope: !968)
!983 = !DILocalVariable(name: "rk", scope: !968, file: !1, line: 387, type: !49)
!984 = !DILocation(line: 387, column: 12, scope: !968)
!985 = !DILocation(line: 387, column: 18, scope: !968)
!986 = !DILocalVariable(name: "sum", scope: !968, file: !1, line: 388, type: !49)
!987 = !DILocation(line: 388, column: 12, scope: !968)
!988 = !DILocalVariable(name: "i", scope: !968, file: !1, line: 389, type: !51)
!989 = !DILocation(line: 389, column: 9, scope: !968)
!990 = !DILocation(line: 390, column: 11, scope: !991)
!991 = distinct !DILexicalBlock(scope: !968, file: !1, line: 390, column: 5)
!992 = !DILocation(line: 390, column: 10, scope: !991)
!993 = !DILocation(line: 390, column: 9, scope: !991)
!994 = !DILocation(line: 390, column: 17, scope: !995)
!995 = !DILexicalBlockFile(scope: !996, file: !1, discriminator: 1)
!996 = distinct !DILexicalBlock(scope: !991, file: !1, line: 390, column: 5)
!997 = !DILocation(line: 390, column: 18, scope: !995)
!998 = !DILocation(line: 390, column: 5, scope: !995)
!999 = !DILocalVariable(name: "xk_inv", scope: !1000, file: !1, line: 391, type: !49)
!1000 = distinct !DILexicalBlock(scope: !996, file: !1, line: 390, column: 28)
!1001 = !DILocation(line: 391, column: 14, scope: !1000)
!1002 = !DILocation(line: 391, column: 27, scope: !1000)
!1003 = !DILocation(line: 391, column: 26, scope: !1000)
!1004 = !DILocation(line: 392, column: 14, scope: !1000)
!1005 = !DILocation(line: 392, column: 11, scope: !1000)
!1006 = !DILocation(line: 393, column: 23, scope: !1000)
!1007 = !DILocation(line: 393, column: 22, scope: !1000)
!1008 = !DILocation(line: 393, column: 30, scope: !1000)
!1009 = !DILocation(line: 393, column: 38, scope: !1000)
!1010 = !DILocation(line: 393, column: 37, scope: !1000)
!1011 = !DILocation(line: 393, column: 45, scope: !1000)
!1012 = !DILocation(line: 393, column: 53, scope: !1000)
!1013 = !DILocation(line: 393, column: 52, scope: !1000)
!1014 = !DILocation(line: 393, column: 60, scope: !1000)
!1015 = !DILocation(line: 393, column: 67, scope: !1000)
!1016 = !DILocation(line: 393, column: 66, scope: !1000)
!1017 = !DILocation(line: 393, column: 74, scope: !1000)
!1018 = !DILocation(line: 393, column: 83, scope: !1000)
!1019 = !DILocation(line: 393, column: 81, scope: !1000)
!1020 = !DILocation(line: 393, column: 11, scope: !1000)
!1021 = !DILocation(line: 394, column: 10, scope: !1000)
!1022 = !DILocation(line: 395, column: 13, scope: !1000)
!1023 = !DILocation(line: 395, column: 10, scope: !1000)
!1024 = !DILocation(line: 396, column: 5, scope: !1000)
!1025 = !DILocation(line: 390, column: 24, scope: !1026)
!1026 = !DILexicalBlockFile(scope: !996, file: !1, discriminator: 2)
!1027 = !DILocation(line: 390, column: 5, scope: !1026)
!1028 = distinct !{!1028, !1029}
!1029 = !DILocation(line: 390, column: 5, scope: !968)
!1030 = !DILocation(line: 397, column: 33, scope: !968)
!1031 = !DILocation(line: 397, column: 35, scope: !968)
!1032 = !DILocation(line: 397, column: 34, scope: !968)
!1033 = !DILocation(line: 397, column: 37, scope: !968)
!1034 = !DILocation(line: 397, column: 36, scope: !968)
!1035 = !DILocation(line: 397, column: 39, scope: !968)
!1036 = !DILocation(line: 397, column: 38, scope: !968)
!1037 = !DILocation(line: 397, column: 31, scope: !968)
!1038 = !DILocation(line: 397, column: 50, scope: !968)
!1039 = !DILocation(line: 397, column: 48, scope: !968)
!1040 = !DILocation(line: 397, column: 56, scope: !968)
!1041 = !DILocation(line: 397, column: 54, scope: !968)
!1042 = !DILocation(line: 397, column: 42, scope: !968)
!1043 = !DILocation(line: 397, column: 5, scope: !968)
!1044 = !DILocation(line: 397, column: 13, scope: !968)
!1045 = !DILocation(line: 397, column: 17, scope: !968)
!1046 = !DILocation(line: 398, column: 37, scope: !968)
!1047 = !DILocation(line: 398, column: 45, scope: !968)
!1048 = !DILocation(line: 398, column: 35, scope: !968)
!1049 = !DILocation(line: 398, column: 5, scope: !968)
!1050 = !DILocation(line: 398, column: 13, scope: !968)
!1051 = !DILocation(line: 398, column: 17, scope: !968)
!1052 = !DILocation(line: 399, column: 5, scope: !968)
!1053 = !DILocation(line: 401, column: 11, scope: !1054)
!1054 = distinct !DILexicalBlock(scope: !964, file: !1, line: 401, column: 11)
!1055 = !DILocation(line: 401, column: 13, scope: !1054)
!1056 = !DILocation(line: 401, column: 11, scope: !964)
!1057 = !DILocalVariable(name: "x2", scope: !1058, file: !1, line: 402, type: !79)
!1058 = distinct !DILexicalBlock(scope: !1054, file: !1, line: 401, column: 21)
!1059 = !DILocation(line: 402, column: 18, scope: !1058)
!1060 = !DILocation(line: 402, column: 23, scope: !1058)
!1061 = !DILocation(line: 402, column: 25, scope: !1058)
!1062 = !DILocation(line: 402, column: 24, scope: !1058)
!1063 = !DILocalVariable(name: "x4", scope: !1058, file: !1, line: 403, type: !79)
!1064 = !DILocation(line: 403, column: 18, scope: !1058)
!1065 = !DILocation(line: 403, column: 23, scope: !1058)
!1066 = !DILocation(line: 403, column: 26, scope: !1058)
!1067 = !DILocation(line: 403, column: 25, scope: !1058)
!1068 = !DILocalVariable(name: "sum", scope: !1058, file: !1, line: 404, type: !79)
!1069 = !DILocation(line: 404, column: 18, scope: !1058)
!1070 = !DILocation(line: 404, column: 36, scope: !1058)
!1071 = !DILocation(line: 404, column: 35, scope: !1058)
!1072 = !DILocation(line: 404, column: 29, scope: !1058)
!1073 = !DILocation(line: 404, column: 45, scope: !1058)
!1074 = !DILocation(line: 404, column: 44, scope: !1058)
!1075 = !DILocation(line: 404, column: 38, scope: !1058)
!1076 = !DILocation(line: 404, column: 54, scope: !1058)
!1077 = !DILocation(line: 404, column: 53, scope: !1058)
!1078 = !DILocation(line: 404, column: 57, scope: !1058)
!1079 = !DILocation(line: 404, column: 56, scope: !1058)
!1080 = !DILocation(line: 404, column: 48, scope: !1058)
!1081 = !DILocation(line: 404, column: 61, scope: !1058)
!1082 = !DILocation(line: 404, column: 59, scope: !1058)
!1083 = !DILocation(line: 405, column: 41, scope: !1058)
!1084 = !DILocation(line: 405, column: 39, scope: !1058)
!1085 = !DILocation(line: 405, column: 52, scope: !1058)
!1086 = !DILocation(line: 405, column: 51, scope: !1058)
!1087 = !DILocation(line: 405, column: 47, scope: !1058)
!1088 = !DILocation(line: 405, column: 45, scope: !1058)
!1089 = !DILocation(line: 405, column: 33, scope: !1058)
!1090 = !DILocation(line: 405, column: 58, scope: !1058)
!1091 = !DILocation(line: 405, column: 56, scope: !1058)
!1092 = !DILocation(line: 405, column: 5, scope: !1058)
!1093 = !DILocation(line: 405, column: 13, scope: !1058)
!1094 = !DILocation(line: 405, column: 17, scope: !1058)
!1095 = !DILocation(line: 406, column: 37, scope: !1058)
!1096 = !DILocation(line: 406, column: 45, scope: !1058)
!1097 = !DILocation(line: 406, column: 35, scope: !1058)
!1098 = !DILocation(line: 406, column: 5, scope: !1058)
!1099 = !DILocation(line: 406, column: 13, scope: !1058)
!1100 = !DILocation(line: 406, column: 17, scope: !1058)
!1101 = !DILocation(line: 407, column: 5, scope: !1058)
!1102 = !DILocation(line: 410, column: 35, scope: !1103)
!1103 = distinct !DILexicalBlock(scope: !1054, file: !1, line: 409, column: 8)
!1104 = !DILocation(line: 410, column: 34, scope: !1103)
!1105 = !DILocation(line: 410, column: 38, scope: !1103)
!1106 = !DILocation(line: 410, column: 37, scope: !1103)
!1107 = !DILocation(line: 410, column: 41, scope: !1103)
!1108 = !DILocation(line: 410, column: 40, scope: !1103)
!1109 = !DILocation(line: 410, column: 44, scope: !1103)
!1110 = !DILocation(line: 410, column: 43, scope: !1103)
!1111 = !DILocation(line: 410, column: 5, scope: !1103)
!1112 = !DILocation(line: 410, column: 13, scope: !1103)
!1113 = !DILocation(line: 410, column: 17, scope: !1103)
!1114 = !DILocation(line: 411, column: 37, scope: !1103)
!1115 = !DILocation(line: 411, column: 45, scope: !1103)
!1116 = !DILocation(line: 411, column: 35, scope: !1103)
!1117 = !DILocation(line: 411, column: 5, scope: !1103)
!1118 = !DILocation(line: 411, column: 13, scope: !1103)
!1119 = !DILocation(line: 411, column: 17, scope: !1103)
!1120 = !DILocation(line: 412, column: 5, scope: !1121)
!1121 = distinct !DILexicalBlock(scope: !1103, file: !1, line: 412, column: 5)
!1122 = !DILocation(line: 412, column: 5, scope: !1103)
!1123 = !DILocation(line: 412, column: 5, scope: !1124)
!1124 = !DILexicalBlockFile(scope: !1121, file: !1, discriminator: 1)
!1125 = distinct !{!1125, !1120}
!1126 = !DILocation(line: 412, column: 5, scope: !1127)
!1127 = !DILexicalBlockFile(scope: !1128, file: !1, discriminator: 2)
!1128 = distinct !DILexicalBlock(scope: !1121, file: !1, line: 412, column: 5)
!1129 = !DILocation(line: 412, column: 5, scope: !1130)
!1130 = !DILexicalBlockFile(scope: !1128, file: !1, discriminator: 3)
!1131 = !DILocation(line: 413, column: 5, scope: !1103)
!1132 = !DILocation(line: 415, column: 1, scope: !879)
!1133 = distinct !DISubprogram(name: "gsl_sf_debye_5_e", scope: !1, file: !1, line: 417, type: !77, isLocal: false, isDefinition: true, scopeLine: 418, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !87)
!1134 = !DILocalVariable(name: "x", arg: 1, scope: !1133, file: !1, line: 417, type: !79)
!1135 = !DILocation(line: 417, column: 35, scope: !1133)
!1136 = !DILocalVariable(name: "result", arg: 2, scope: !1133, file: !1, line: 417, type: !80)
!1137 = !DILocation(line: 417, column: 54, scope: !1133)
!1138 = !DILocalVariable(name: "val_infinity", scope: !1133, file: !1, line: 419, type: !79)
!1139 = !DILocation(line: 419, column: 16, scope: !1133)
!1140 = !DILocalVariable(name: "xcut", scope: !1133, file: !1, line: 420, type: !79)
!1141 = !DILocation(line: 420, column: 16, scope: !1133)
!1142 = !DILocation(line: 424, column: 6, scope: !1143)
!1143 = distinct !DILexicalBlock(scope: !1133, file: !1, line: 424, column: 6)
!1144 = !DILocation(line: 424, column: 8, scope: !1143)
!1145 = !DILocation(line: 424, column: 6, scope: !1133)
!1146 = !DILocation(line: 425, column: 5, scope: !1147)
!1147 = distinct !DILexicalBlock(scope: !1143, file: !1, line: 424, column: 15)
!1148 = distinct !{!1148, !1146}
!1149 = !DILocation(line: 425, column: 5, scope: !1150)
!1150 = !DILexicalBlockFile(scope: !1151, file: !1, discriminator: 1)
!1151 = distinct !DILexicalBlock(scope: !1147, file: !1, line: 425, column: 5)
!1152 = distinct !{!1152, !1153}
!1153 = !DILocation(line: 425, column: 5, scope: !1151)
!1154 = !DILocation(line: 425, column: 5, scope: !1155)
!1155 = !DILexicalBlockFile(scope: !1156, file: !1, discriminator: 2)
!1156 = distinct !DILexicalBlock(scope: !1151, file: !1, line: 425, column: 5)
!1157 = !DILocation(line: 425, column: 5, scope: !1158)
!1158 = !DILexicalBlockFile(scope: !1151, file: !1, discriminator: 3)
!1159 = !DILocation(line: 426, column: 3, scope: !1147)
!1160 = !DILocation(line: 427, column: 11, scope: !1161)
!1161 = distinct !DILexicalBlock(scope: !1143, file: !1, line: 427, column: 11)
!1162 = !DILocation(line: 427, column: 13, scope: !1161)
!1163 = !DILocation(line: 427, column: 11, scope: !1143)
!1164 = !DILocation(line: 428, column: 29, scope: !1165)
!1165 = distinct !DILexicalBlock(scope: !1161, file: !1, line: 427, column: 49)
!1166 = !DILocation(line: 428, column: 28, scope: !1165)
!1167 = !DILocation(line: 428, column: 30, scope: !1165)
!1168 = !DILocation(line: 428, column: 23, scope: !1165)
!1169 = !DILocation(line: 428, column: 42, scope: !1165)
!1170 = !DILocation(line: 428, column: 41, scope: !1165)
!1171 = !DILocation(line: 428, column: 44, scope: !1165)
!1172 = !DILocation(line: 428, column: 43, scope: !1165)
!1173 = !DILocation(line: 428, column: 45, scope: !1165)
!1174 = !DILocation(line: 428, column: 36, scope: !1165)
!1175 = !DILocation(line: 428, column: 5, scope: !1165)
!1176 = !DILocation(line: 428, column: 13, scope: !1165)
!1177 = !DILocation(line: 428, column: 17, scope: !1165)
!1178 = !DILocation(line: 429, column: 37, scope: !1165)
!1179 = !DILocation(line: 429, column: 45, scope: !1165)
!1180 = !DILocation(line: 429, column: 35, scope: !1165)
!1181 = !DILocation(line: 429, column: 5, scope: !1165)
!1182 = !DILocation(line: 429, column: 13, scope: !1165)
!1183 = !DILocation(line: 429, column: 17, scope: !1165)
!1184 = !DILocation(line: 430, column: 5, scope: !1165)
!1185 = !DILocation(line: 432, column: 11, scope: !1186)
!1186 = distinct !DILexicalBlock(scope: !1161, file: !1, line: 432, column: 11)
!1187 = !DILocation(line: 432, column: 13, scope: !1186)
!1188 = !DILocation(line: 432, column: 11, scope: !1161)
!1189 = !DILocalVariable(name: "t", scope: !1190, file: !1, line: 433, type: !79)
!1190 = distinct !DILexicalBlock(scope: !1186, file: !1, line: 432, column: 21)
!1191 = !DILocation(line: 433, column: 18, scope: !1190)
!1192 = !DILocation(line: 433, column: 22, scope: !1190)
!1193 = !DILocation(line: 433, column: 24, scope: !1190)
!1194 = !DILocation(line: 433, column: 23, scope: !1190)
!1195 = !DILocation(line: 433, column: 25, scope: !1190)
!1196 = !DILocation(line: 433, column: 30, scope: !1190)
!1197 = !DILocalVariable(name: "c", scope: !1190, file: !1, line: 434, type: !81)
!1198 = !DILocation(line: 434, column: 19, scope: !1190)
!1199 = !DILocation(line: 435, column: 28, scope: !1190)
!1200 = !DILocation(line: 435, column: 5, scope: !1190)
!1201 = !DILocation(line: 436, column: 21, scope: !1190)
!1202 = !DILocation(line: 436, column: 31, scope: !1190)
!1203 = !DILocation(line: 436, column: 30, scope: !1190)
!1204 = !DILocation(line: 436, column: 32, scope: !1190)
!1205 = !DILocation(line: 436, column: 25, scope: !1190)
!1206 = !DILocation(line: 436, column: 5, scope: !1190)
!1207 = !DILocation(line: 436, column: 13, scope: !1190)
!1208 = !DILocation(line: 436, column: 17, scope: !1190)
!1209 = !DILocation(line: 437, column: 21, scope: !1190)
!1210 = !DILocation(line: 437, column: 49, scope: !1190)
!1211 = !DILocation(line: 437, column: 48, scope: !1190)
!1212 = !DILocation(line: 437, column: 50, scope: !1190)
!1213 = !DILocation(line: 437, column: 25, scope: !1190)
!1214 = !DILocation(line: 437, column: 5, scope: !1190)
!1215 = !DILocation(line: 437, column: 13, scope: !1190)
!1216 = !DILocation(line: 437, column: 17, scope: !1190)
!1217 = !DILocation(line: 438, column: 5, scope: !1190)
!1218 = !DILocation(line: 440, column: 11, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !1186, file: !1, line: 440, column: 11)
!1220 = !DILocation(line: 440, column: 13, scope: !1219)
!1221 = !DILocation(line: 440, column: 11, scope: !1186)
!1222 = !DILocalVariable(name: "nexp", scope: !1223, file: !1, line: 441, type: !177)
!1223 = distinct !DILexicalBlock(scope: !1219, file: !1, line: 440, column: 47)
!1224 = !DILocation(line: 441, column: 15, scope: !1223)
!1225 = !DILocation(line: 441, column: 33, scope: !1223)
!1226 = !DILocation(line: 441, column: 32, scope: !1223)
!1227 = !DILocation(line: 441, column: 22, scope: !1223)
!1228 = !DILocalVariable(name: "ex", scope: !1223, file: !1, line: 442, type: !79)
!1229 = !DILocation(line: 442, column: 18, scope: !1223)
!1230 = !DILocation(line: 442, column: 29, scope: !1223)
!1231 = !DILocation(line: 442, column: 28, scope: !1223)
!1232 = !DILocation(line: 442, column: 24, scope: !1223)
!1233 = !DILocalVariable(name: "xk", scope: !1223, file: !1, line: 443, type: !49)
!1234 = !DILocation(line: 443, column: 12, scope: !1223)
!1235 = !DILocation(line: 443, column: 18, scope: !1223)
!1236 = !DILocation(line: 443, column: 25, scope: !1223)
!1237 = !DILocation(line: 443, column: 23, scope: !1223)
!1238 = !DILocalVariable(name: "rk", scope: !1223, file: !1, line: 444, type: !49)
!1239 = !DILocation(line: 444, column: 12, scope: !1223)
!1240 = !DILocation(line: 444, column: 18, scope: !1223)
!1241 = !DILocalVariable(name: "sum", scope: !1223, file: !1, line: 445, type: !49)
!1242 = !DILocation(line: 445, column: 12, scope: !1223)
!1243 = !DILocalVariable(name: "i", scope: !1223, file: !1, line: 446, type: !51)
!1244 = !DILocation(line: 446, column: 9, scope: !1223)
!1245 = !DILocation(line: 447, column: 11, scope: !1246)
!1246 = distinct !DILexicalBlock(scope: !1223, file: !1, line: 447, column: 5)
!1247 = !DILocation(line: 447, column: 10, scope: !1246)
!1248 = !DILocation(line: 447, column: 9, scope: !1246)
!1249 = !DILocation(line: 447, column: 17, scope: !1250)
!1250 = !DILexicalBlockFile(scope: !1251, file: !1, discriminator: 1)
!1251 = distinct !DILexicalBlock(scope: !1246, file: !1, line: 447, column: 5)
!1252 = !DILocation(line: 447, column: 18, scope: !1250)
!1253 = !DILocation(line: 447, column: 5, scope: !1250)
!1254 = !DILocalVariable(name: "xk_inv", scope: !1255, file: !1, line: 448, type: !49)
!1255 = distinct !DILexicalBlock(scope: !1251, file: !1, line: 447, column: 28)
!1256 = !DILocation(line: 448, column: 14, scope: !1255)
!1257 = !DILocation(line: 448, column: 27, scope: !1255)
!1258 = !DILocation(line: 448, column: 26, scope: !1255)
!1259 = !DILocation(line: 449, column: 14, scope: !1255)
!1260 = !DILocation(line: 449, column: 11, scope: !1255)
!1261 = !DILocation(line: 450, column: 25, scope: !1255)
!1262 = !DILocation(line: 450, column: 24, scope: !1255)
!1263 = !DILocation(line: 450, column: 32, scope: !1255)
!1264 = !DILocation(line: 450, column: 41, scope: !1255)
!1265 = !DILocation(line: 450, column: 40, scope: !1255)
!1266 = !DILocation(line: 450, column: 48, scope: !1255)
!1267 = !DILocation(line: 450, column: 56, scope: !1255)
!1268 = !DILocation(line: 450, column: 55, scope: !1255)
!1269 = !DILocation(line: 450, column: 63, scope: !1255)
!1270 = !DILocation(line: 450, column: 71, scope: !1255)
!1271 = !DILocation(line: 450, column: 70, scope: !1255)
!1272 = !DILocation(line: 450, column: 78, scope: !1255)
!1273 = !DILocation(line: 450, column: 85, scope: !1255)
!1274 = !DILocation(line: 450, column: 84, scope: !1255)
!1275 = !DILocation(line: 450, column: 91, scope: !1255)
!1276 = !DILocation(line: 450, column: 100, scope: !1255)
!1277 = !DILocation(line: 450, column: 98, scope: !1255)
!1278 = !DILocation(line: 450, column: 11, scope: !1255)
!1279 = !DILocation(line: 451, column: 10, scope: !1255)
!1280 = !DILocation(line: 452, column: 13, scope: !1255)
!1281 = !DILocation(line: 452, column: 10, scope: !1255)
!1282 = !DILocation(line: 453, column: 5, scope: !1255)
!1283 = !DILocation(line: 447, column: 24, scope: !1284)
!1284 = !DILexicalBlockFile(scope: !1251, file: !1, discriminator: 2)
!1285 = !DILocation(line: 447, column: 5, scope: !1284)
!1286 = distinct !{!1286, !1287}
!1287 = !DILocation(line: 447, column: 5, scope: !1223)
!1288 = !DILocation(line: 454, column: 33, scope: !1223)
!1289 = !DILocation(line: 454, column: 35, scope: !1223)
!1290 = !DILocation(line: 454, column: 34, scope: !1223)
!1291 = !DILocation(line: 454, column: 37, scope: !1223)
!1292 = !DILocation(line: 454, column: 36, scope: !1223)
!1293 = !DILocation(line: 454, column: 39, scope: !1223)
!1294 = !DILocation(line: 454, column: 38, scope: !1223)
!1295 = !DILocation(line: 454, column: 41, scope: !1223)
!1296 = !DILocation(line: 454, column: 40, scope: !1223)
!1297 = !DILocation(line: 454, column: 31, scope: !1223)
!1298 = !DILocation(line: 454, column: 52, scope: !1223)
!1299 = !DILocation(line: 454, column: 50, scope: !1223)
!1300 = !DILocation(line: 454, column: 58, scope: !1223)
!1301 = !DILocation(line: 454, column: 56, scope: !1223)
!1302 = !DILocation(line: 454, column: 44, scope: !1223)
!1303 = !DILocation(line: 454, column: 5, scope: !1223)
!1304 = !DILocation(line: 454, column: 13, scope: !1223)
!1305 = !DILocation(line: 454, column: 17, scope: !1223)
!1306 = !DILocation(line: 455, column: 37, scope: !1223)
!1307 = !DILocation(line: 455, column: 45, scope: !1223)
!1308 = !DILocation(line: 455, column: 35, scope: !1223)
!1309 = !DILocation(line: 455, column: 5, scope: !1223)
!1310 = !DILocation(line: 455, column: 13, scope: !1223)
!1311 = !DILocation(line: 455, column: 17, scope: !1223)
!1312 = !DILocation(line: 456, column: 5, scope: !1223)
!1313 = !DILocation(line: 458, column: 11, scope: !1314)
!1314 = distinct !DILexicalBlock(scope: !1219, file: !1, line: 458, column: 11)
!1315 = !DILocation(line: 458, column: 13, scope: !1314)
!1316 = !DILocation(line: 458, column: 11, scope: !1219)
!1317 = !DILocalVariable(name: "x2", scope: !1318, file: !1, line: 459, type: !79)
!1318 = distinct !DILexicalBlock(scope: !1314, file: !1, line: 458, column: 21)
!1319 = !DILocation(line: 459, column: 18, scope: !1318)
!1320 = !DILocation(line: 459, column: 23, scope: !1318)
!1321 = !DILocation(line: 459, column: 25, scope: !1318)
!1322 = !DILocation(line: 459, column: 24, scope: !1318)
!1323 = !DILocalVariable(name: "x4", scope: !1318, file: !1, line: 460, type: !79)
!1324 = !DILocation(line: 460, column: 18, scope: !1318)
!1325 = !DILocation(line: 460, column: 23, scope: !1318)
!1326 = !DILocation(line: 460, column: 26, scope: !1318)
!1327 = !DILocation(line: 460, column: 25, scope: !1318)
!1328 = !DILocalVariable(name: "x5", scope: !1318, file: !1, line: 461, type: !79)
!1329 = !DILocation(line: 461, column: 18, scope: !1318)
!1330 = !DILocation(line: 461, column: 23, scope: !1318)
!1331 = !DILocation(line: 461, column: 26, scope: !1318)
!1332 = !DILocation(line: 461, column: 25, scope: !1318)
!1333 = !DILocalVariable(name: "sum", scope: !1318, file: !1, line: 462, type: !79)
!1334 = !DILocation(line: 462, column: 18, scope: !1318)
!1335 = !DILocation(line: 462, column: 38, scope: !1318)
!1336 = !DILocation(line: 462, column: 37, scope: !1318)
!1337 = !DILocation(line: 462, column: 30, scope: !1318)
!1338 = !DILocation(line: 462, column: 47, scope: !1318)
!1339 = !DILocation(line: 462, column: 46, scope: !1318)
!1340 = !DILocation(line: 462, column: 40, scope: !1318)
!1341 = !DILocation(line: 462, column: 57, scope: !1318)
!1342 = !DILocation(line: 462, column: 56, scope: !1318)
!1343 = !DILocation(line: 462, column: 60, scope: !1318)
!1344 = !DILocation(line: 462, column: 59, scope: !1318)
!1345 = !DILocation(line: 462, column: 50, scope: !1318)
!1346 = !DILocation(line: 462, column: 68, scope: !1318)
!1347 = !DILocation(line: 462, column: 67, scope: !1318)
!1348 = !DILocation(line: 462, column: 62, scope: !1318)
!1349 = !DILocation(line: 462, column: 73, scope: !1318)
!1350 = !DILocation(line: 462, column: 71, scope: !1318)
!1351 = !DILocation(line: 463, column: 41, scope: !1318)
!1352 = !DILocation(line: 463, column: 39, scope: !1318)
!1353 = !DILocation(line: 463, column: 52, scope: !1318)
!1354 = !DILocation(line: 463, column: 51, scope: !1318)
!1355 = !DILocation(line: 463, column: 47, scope: !1318)
!1356 = !DILocation(line: 463, column: 45, scope: !1318)
!1357 = !DILocation(line: 463, column: 33, scope: !1318)
!1358 = !DILocation(line: 463, column: 58, scope: !1318)
!1359 = !DILocation(line: 463, column: 56, scope: !1318)
!1360 = !DILocation(line: 463, column: 5, scope: !1318)
!1361 = !DILocation(line: 463, column: 13, scope: !1318)
!1362 = !DILocation(line: 463, column: 17, scope: !1318)
!1363 = !DILocation(line: 464, column: 37, scope: !1318)
!1364 = !DILocation(line: 464, column: 45, scope: !1318)
!1365 = !DILocation(line: 464, column: 35, scope: !1318)
!1366 = !DILocation(line: 464, column: 5, scope: !1318)
!1367 = !DILocation(line: 464, column: 13, scope: !1318)
!1368 = !DILocation(line: 464, column: 17, scope: !1318)
!1369 = !DILocation(line: 465, column: 5, scope: !1318)
!1370 = !DILocation(line: 468, column: 36, scope: !1371)
!1371 = distinct !DILexicalBlock(scope: !1314, file: !1, line: 467, column: 8)
!1372 = !DILocation(line: 468, column: 35, scope: !1371)
!1373 = !DILocation(line: 468, column: 39, scope: !1371)
!1374 = !DILocation(line: 468, column: 38, scope: !1371)
!1375 = !DILocation(line: 468, column: 42, scope: !1371)
!1376 = !DILocation(line: 468, column: 41, scope: !1371)
!1377 = !DILocation(line: 468, column: 45, scope: !1371)
!1378 = !DILocation(line: 468, column: 44, scope: !1371)
!1379 = !DILocation(line: 468, column: 48, scope: !1371)
!1380 = !DILocation(line: 468, column: 47, scope: !1371)
!1381 = !DILocation(line: 468, column: 5, scope: !1371)
!1382 = !DILocation(line: 468, column: 13, scope: !1371)
!1383 = !DILocation(line: 468, column: 17, scope: !1371)
!1384 = !DILocation(line: 469, column: 37, scope: !1371)
!1385 = !DILocation(line: 469, column: 45, scope: !1371)
!1386 = !DILocation(line: 469, column: 35, scope: !1371)
!1387 = !DILocation(line: 469, column: 5, scope: !1371)
!1388 = !DILocation(line: 469, column: 13, scope: !1371)
!1389 = !DILocation(line: 469, column: 17, scope: !1371)
!1390 = !DILocation(line: 470, column: 5, scope: !1391)
!1391 = distinct !DILexicalBlock(scope: !1371, file: !1, line: 470, column: 5)
!1392 = !DILocation(line: 470, column: 5, scope: !1371)
!1393 = !DILocation(line: 470, column: 5, scope: !1394)
!1394 = !DILexicalBlockFile(scope: !1391, file: !1, discriminator: 1)
!1395 = distinct !{!1395, !1390}
!1396 = !DILocation(line: 470, column: 5, scope: !1397)
!1397 = !DILexicalBlockFile(scope: !1398, file: !1, discriminator: 2)
!1398 = distinct !DILexicalBlock(scope: !1391, file: !1, line: 470, column: 5)
!1399 = !DILocation(line: 470, column: 5, scope: !1400)
!1400 = !DILexicalBlockFile(scope: !1398, file: !1, discriminator: 3)
!1401 = !DILocation(line: 471, column: 5, scope: !1371)
!1402 = !DILocation(line: 473, column: 1, scope: !1133)
!1403 = distinct !DISubprogram(name: "gsl_sf_debye_6_e", scope: !1, file: !1, line: 475, type: !77, isLocal: false, isDefinition: true, scopeLine: 476, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !87)
!1404 = !DILocalVariable(name: "x", arg: 1, scope: !1403, file: !1, line: 475, type: !79)
!1405 = !DILocation(line: 475, column: 35, scope: !1403)
!1406 = !DILocalVariable(name: "result", arg: 2, scope: !1403, file: !1, line: 475, type: !80)
!1407 = !DILocation(line: 475, column: 54, scope: !1403)
!1408 = !DILocalVariable(name: "val_infinity", scope: !1403, file: !1, line: 477, type: !79)
!1409 = !DILocation(line: 477, column: 16, scope: !1403)
!1410 = !DILocalVariable(name: "xcut", scope: !1403, file: !1, line: 478, type: !79)
!1411 = !DILocation(line: 478, column: 16, scope: !1403)
!1412 = !DILocation(line: 482, column: 6, scope: !1413)
!1413 = distinct !DILexicalBlock(scope: !1403, file: !1, line: 482, column: 6)
!1414 = !DILocation(line: 482, column: 8, scope: !1413)
!1415 = !DILocation(line: 482, column: 6, scope: !1403)
!1416 = !DILocation(line: 483, column: 5, scope: !1417)
!1417 = distinct !DILexicalBlock(scope: !1413, file: !1, line: 482, column: 15)
!1418 = distinct !{!1418, !1416}
!1419 = !DILocation(line: 483, column: 5, scope: !1420)
!1420 = !DILexicalBlockFile(scope: !1421, file: !1, discriminator: 1)
!1421 = distinct !DILexicalBlock(scope: !1417, file: !1, line: 483, column: 5)
!1422 = distinct !{!1422, !1423}
!1423 = !DILocation(line: 483, column: 5, scope: !1421)
!1424 = !DILocation(line: 483, column: 5, scope: !1425)
!1425 = !DILexicalBlockFile(scope: !1426, file: !1, discriminator: 2)
!1426 = distinct !DILexicalBlock(scope: !1421, file: !1, line: 483, column: 5)
!1427 = !DILocation(line: 483, column: 5, scope: !1428)
!1428 = !DILexicalBlockFile(scope: !1421, file: !1, discriminator: 3)
!1429 = !DILocation(line: 484, column: 3, scope: !1417)
!1430 = !DILocation(line: 485, column: 11, scope: !1431)
!1431 = distinct !DILexicalBlock(scope: !1413, file: !1, line: 485, column: 11)
!1432 = !DILocation(line: 485, column: 13, scope: !1431)
!1433 = !DILocation(line: 485, column: 11, scope: !1413)
!1434 = !DILocation(line: 486, column: 29, scope: !1435)
!1435 = distinct !DILexicalBlock(scope: !1431, file: !1, line: 485, column: 49)
!1436 = !DILocation(line: 486, column: 28, scope: !1435)
!1437 = !DILocation(line: 486, column: 30, scope: !1435)
!1438 = !DILocation(line: 486, column: 23, scope: !1435)
!1439 = !DILocation(line: 486, column: 37, scope: !1435)
!1440 = !DILocation(line: 486, column: 39, scope: !1435)
!1441 = !DILocation(line: 486, column: 38, scope: !1435)
!1442 = !DILocation(line: 486, column: 40, scope: !1435)
!1443 = !DILocation(line: 486, column: 35, scope: !1435)
!1444 = !DILocation(line: 486, column: 5, scope: !1435)
!1445 = !DILocation(line: 486, column: 13, scope: !1435)
!1446 = !DILocation(line: 486, column: 17, scope: !1435)
!1447 = !DILocation(line: 487, column: 37, scope: !1435)
!1448 = !DILocation(line: 487, column: 45, scope: !1435)
!1449 = !DILocation(line: 487, column: 35, scope: !1435)
!1450 = !DILocation(line: 487, column: 5, scope: !1435)
!1451 = !DILocation(line: 487, column: 13, scope: !1435)
!1452 = !DILocation(line: 487, column: 17, scope: !1435)
!1453 = !DILocation(line: 488, column: 5, scope: !1435)
!1454 = !DILocation(line: 490, column: 11, scope: !1455)
!1455 = distinct !DILexicalBlock(scope: !1431, file: !1, line: 490, column: 11)
!1456 = !DILocation(line: 490, column: 13, scope: !1455)
!1457 = !DILocation(line: 490, column: 11, scope: !1431)
!1458 = !DILocalVariable(name: "t", scope: !1459, file: !1, line: 491, type: !79)
!1459 = distinct !DILexicalBlock(scope: !1455, file: !1, line: 490, column: 21)
!1460 = !DILocation(line: 491, column: 18, scope: !1459)
!1461 = !DILocation(line: 491, column: 22, scope: !1459)
!1462 = !DILocation(line: 491, column: 24, scope: !1459)
!1463 = !DILocation(line: 491, column: 23, scope: !1459)
!1464 = !DILocation(line: 491, column: 25, scope: !1459)
!1465 = !DILocation(line: 491, column: 30, scope: !1459)
!1466 = !DILocalVariable(name: "c", scope: !1459, file: !1, line: 492, type: !81)
!1467 = !DILocation(line: 492, column: 19, scope: !1459)
!1468 = !DILocation(line: 493, column: 28, scope: !1459)
!1469 = !DILocation(line: 493, column: 5, scope: !1459)
!1470 = !DILocation(line: 494, column: 21, scope: !1459)
!1471 = !DILocation(line: 494, column: 31, scope: !1459)
!1472 = !DILocation(line: 494, column: 30, scope: !1459)
!1473 = !DILocation(line: 494, column: 32, scope: !1459)
!1474 = !DILocation(line: 494, column: 25, scope: !1459)
!1475 = !DILocation(line: 494, column: 5, scope: !1459)
!1476 = !DILocation(line: 494, column: 13, scope: !1459)
!1477 = !DILocation(line: 494, column: 17, scope: !1459)
!1478 = !DILocation(line: 495, column: 21, scope: !1459)
!1479 = !DILocation(line: 495, column: 49, scope: !1459)
!1480 = !DILocation(line: 495, column: 48, scope: !1459)
!1481 = !DILocation(line: 495, column: 50, scope: !1459)
!1482 = !DILocation(line: 495, column: 25, scope: !1459)
!1483 = !DILocation(line: 495, column: 5, scope: !1459)
!1484 = !DILocation(line: 495, column: 13, scope: !1459)
!1485 = !DILocation(line: 495, column: 17, scope: !1459)
!1486 = !DILocation(line: 496, column: 5, scope: !1459)
!1487 = !DILocation(line: 498, column: 11, scope: !1488)
!1488 = distinct !DILexicalBlock(scope: !1455, file: !1, line: 498, column: 11)
!1489 = !DILocation(line: 498, column: 13, scope: !1488)
!1490 = !DILocation(line: 498, column: 11, scope: !1455)
!1491 = !DILocalVariable(name: "nexp", scope: !1492, file: !1, line: 499, type: !177)
!1492 = distinct !DILexicalBlock(scope: !1488, file: !1, line: 498, column: 47)
!1493 = !DILocation(line: 499, column: 15, scope: !1492)
!1494 = !DILocation(line: 499, column: 33, scope: !1492)
!1495 = !DILocation(line: 499, column: 32, scope: !1492)
!1496 = !DILocation(line: 499, column: 22, scope: !1492)
!1497 = !DILocalVariable(name: "ex", scope: !1492, file: !1, line: 500, type: !79)
!1498 = !DILocation(line: 500, column: 18, scope: !1492)
!1499 = !DILocation(line: 500, column: 29, scope: !1492)
!1500 = !DILocation(line: 500, column: 28, scope: !1492)
!1501 = !DILocation(line: 500, column: 24, scope: !1492)
!1502 = !DILocalVariable(name: "xk", scope: !1492, file: !1, line: 501, type: !49)
!1503 = !DILocation(line: 501, column: 12, scope: !1492)
!1504 = !DILocation(line: 501, column: 18, scope: !1492)
!1505 = !DILocation(line: 501, column: 25, scope: !1492)
!1506 = !DILocation(line: 501, column: 23, scope: !1492)
!1507 = !DILocalVariable(name: "rk", scope: !1492, file: !1, line: 502, type: !49)
!1508 = !DILocation(line: 502, column: 12, scope: !1492)
!1509 = !DILocation(line: 502, column: 18, scope: !1492)
!1510 = !DILocalVariable(name: "sum", scope: !1492, file: !1, line: 503, type: !49)
!1511 = !DILocation(line: 503, column: 12, scope: !1492)
!1512 = !DILocalVariable(name: "i", scope: !1492, file: !1, line: 504, type: !51)
!1513 = !DILocation(line: 504, column: 9, scope: !1492)
!1514 = !DILocation(line: 505, column: 11, scope: !1515)
!1515 = distinct !DILexicalBlock(scope: !1492, file: !1, line: 505, column: 5)
!1516 = !DILocation(line: 505, column: 10, scope: !1515)
!1517 = !DILocation(line: 505, column: 9, scope: !1515)
!1518 = !DILocation(line: 505, column: 17, scope: !1519)
!1519 = !DILexicalBlockFile(scope: !1520, file: !1, discriminator: 1)
!1520 = distinct !DILexicalBlock(scope: !1515, file: !1, line: 505, column: 5)
!1521 = !DILocation(line: 505, column: 18, scope: !1519)
!1522 = !DILocation(line: 505, column: 5, scope: !1519)
!1523 = !DILocalVariable(name: "xk_inv", scope: !1524, file: !1, line: 506, type: !49)
!1524 = distinct !DILexicalBlock(scope: !1520, file: !1, line: 505, column: 28)
!1525 = !DILocation(line: 506, column: 14, scope: !1524)
!1526 = !DILocation(line: 506, column: 27, scope: !1524)
!1527 = !DILocation(line: 506, column: 26, scope: !1524)
!1528 = !DILocation(line: 507, column: 14, scope: !1524)
!1529 = !DILocation(line: 507, column: 11, scope: !1524)
!1530 = !DILocation(line: 508, column: 26, scope: !1524)
!1531 = !DILocation(line: 508, column: 25, scope: !1524)
!1532 = !DILocation(line: 508, column: 33, scope: !1524)
!1533 = !DILocation(line: 508, column: 42, scope: !1524)
!1534 = !DILocation(line: 508, column: 41, scope: !1524)
!1535 = !DILocation(line: 508, column: 49, scope: !1524)
!1536 = !DILocation(line: 508, column: 58, scope: !1524)
!1537 = !DILocation(line: 508, column: 57, scope: !1524)
!1538 = !DILocation(line: 508, column: 65, scope: !1524)
!1539 = !DILocation(line: 508, column: 74, scope: !1524)
!1540 = !DILocation(line: 508, column: 73, scope: !1524)
!1541 = !DILocation(line: 508, column: 81, scope: !1524)
!1542 = !DILocation(line: 508, column: 89, scope: !1524)
!1543 = !DILocation(line: 508, column: 88, scope: !1524)
!1544 = !DILocation(line: 508, column: 95, scope: !1524)
!1545 = !DILocation(line: 508, column: 102, scope: !1524)
!1546 = !DILocation(line: 508, column: 101, scope: !1524)
!1547 = !DILocation(line: 508, column: 108, scope: !1524)
!1548 = !DILocation(line: 508, column: 117, scope: !1524)
!1549 = !DILocation(line: 508, column: 115, scope: !1524)
!1550 = !DILocation(line: 508, column: 11, scope: !1524)
!1551 = !DILocation(line: 509, column: 10, scope: !1524)
!1552 = !DILocation(line: 510, column: 13, scope: !1524)
!1553 = !DILocation(line: 510, column: 10, scope: !1524)
!1554 = !DILocation(line: 511, column: 5, scope: !1524)
!1555 = !DILocation(line: 505, column: 24, scope: !1556)
!1556 = !DILexicalBlockFile(scope: !1520, file: !1, discriminator: 2)
!1557 = !DILocation(line: 505, column: 5, scope: !1556)
!1558 = distinct !{!1558, !1559}
!1559 = !DILocation(line: 505, column: 5, scope: !1492)
!1560 = !DILocation(line: 512, column: 33, scope: !1492)
!1561 = !DILocation(line: 512, column: 35, scope: !1492)
!1562 = !DILocation(line: 512, column: 34, scope: !1492)
!1563 = !DILocation(line: 512, column: 37, scope: !1492)
!1564 = !DILocation(line: 512, column: 36, scope: !1492)
!1565 = !DILocation(line: 512, column: 39, scope: !1492)
!1566 = !DILocation(line: 512, column: 38, scope: !1492)
!1567 = !DILocation(line: 512, column: 41, scope: !1492)
!1568 = !DILocation(line: 512, column: 40, scope: !1492)
!1569 = !DILocation(line: 512, column: 43, scope: !1492)
!1570 = !DILocation(line: 512, column: 42, scope: !1492)
!1571 = !DILocation(line: 512, column: 31, scope: !1492)
!1572 = !DILocation(line: 512, column: 54, scope: !1492)
!1573 = !DILocation(line: 512, column: 52, scope: !1492)
!1574 = !DILocation(line: 512, column: 60, scope: !1492)
!1575 = !DILocation(line: 512, column: 58, scope: !1492)
!1576 = !DILocation(line: 512, column: 46, scope: !1492)
!1577 = !DILocation(line: 512, column: 5, scope: !1492)
!1578 = !DILocation(line: 512, column: 13, scope: !1492)
!1579 = !DILocation(line: 512, column: 17, scope: !1492)
!1580 = !DILocation(line: 513, column: 37, scope: !1492)
!1581 = !DILocation(line: 513, column: 45, scope: !1492)
!1582 = !DILocation(line: 513, column: 35, scope: !1492)
!1583 = !DILocation(line: 513, column: 5, scope: !1492)
!1584 = !DILocation(line: 513, column: 13, scope: !1492)
!1585 = !DILocation(line: 513, column: 17, scope: !1492)
!1586 = !DILocation(line: 514, column: 5, scope: !1492)
!1587 = !DILocation(line: 516, column: 11, scope: !1588)
!1588 = distinct !DILexicalBlock(scope: !1488, file: !1, line: 516, column: 11)
!1589 = !DILocation(line: 516, column: 13, scope: !1588)
!1590 = !DILocation(line: 516, column: 11, scope: !1488)
!1591 = !DILocalVariable(name: "x2", scope: !1592, file: !1, line: 517, type: !79)
!1592 = distinct !DILexicalBlock(scope: !1588, file: !1, line: 516, column: 21)
!1593 = !DILocation(line: 517, column: 18, scope: !1592)
!1594 = !DILocation(line: 517, column: 23, scope: !1592)
!1595 = !DILocation(line: 517, column: 25, scope: !1592)
!1596 = !DILocation(line: 517, column: 24, scope: !1592)
!1597 = !DILocalVariable(name: "x4", scope: !1592, file: !1, line: 518, type: !79)
!1598 = !DILocation(line: 518, column: 18, scope: !1592)
!1599 = !DILocation(line: 518, column: 23, scope: !1592)
!1600 = !DILocation(line: 518, column: 26, scope: !1592)
!1601 = !DILocation(line: 518, column: 25, scope: !1592)
!1602 = !DILocalVariable(name: "x6", scope: !1592, file: !1, line: 519, type: !79)
!1603 = !DILocation(line: 519, column: 18, scope: !1592)
!1604 = !DILocation(line: 519, column: 23, scope: !1592)
!1605 = !DILocation(line: 519, column: 26, scope: !1592)
!1606 = !DILocation(line: 519, column: 25, scope: !1592)
!1607 = !DILocalVariable(name: "sum", scope: !1592, file: !1, line: 520, type: !79)
!1608 = !DILocation(line: 520, column: 18, scope: !1592)
!1609 = !DILocation(line: 520, column: 38, scope: !1592)
!1610 = !DILocation(line: 520, column: 37, scope: !1592)
!1611 = !DILocation(line: 520, column: 30, scope: !1592)
!1612 = !DILocation(line: 520, column: 48, scope: !1592)
!1613 = !DILocation(line: 520, column: 47, scope: !1592)
!1614 = !DILocation(line: 520, column: 40, scope: !1592)
!1615 = !DILocation(line: 520, column: 59, scope: !1592)
!1616 = !DILocation(line: 520, column: 58, scope: !1592)
!1617 = !DILocation(line: 520, column: 62, scope: !1592)
!1618 = !DILocation(line: 520, column: 61, scope: !1592)
!1619 = !DILocation(line: 520, column: 51, scope: !1592)
!1620 = !DILocation(line: 520, column: 71, scope: !1592)
!1621 = !DILocation(line: 520, column: 70, scope: !1592)
!1622 = !DILocation(line: 520, column: 64, scope: !1592)
!1623 = !DILocation(line: 520, column: 80, scope: !1592)
!1624 = !DILocation(line: 520, column: 79, scope: !1592)
!1625 = !DILocation(line: 520, column: 83, scope: !1592)
!1626 = !DILocation(line: 520, column: 82, scope: !1592)
!1627 = !DILocation(line: 520, column: 74, scope: !1592)
!1628 = !DILocation(line: 520, column: 86, scope: !1592)
!1629 = !DILocation(line: 520, column: 85, scope: !1592)
!1630 = !DILocation(line: 521, column: 41, scope: !1592)
!1631 = !DILocation(line: 521, column: 39, scope: !1592)
!1632 = !DILocation(line: 521, column: 52, scope: !1592)
!1633 = !DILocation(line: 521, column: 51, scope: !1592)
!1634 = !DILocation(line: 521, column: 47, scope: !1592)
!1635 = !DILocation(line: 521, column: 45, scope: !1592)
!1636 = !DILocation(line: 521, column: 33, scope: !1592)
!1637 = !DILocation(line: 521, column: 58, scope: !1592)
!1638 = !DILocation(line: 521, column: 56, scope: !1592)
!1639 = !DILocation(line: 521, column: 5, scope: !1592)
!1640 = !DILocation(line: 521, column: 13, scope: !1592)
!1641 = !DILocation(line: 521, column: 17, scope: !1592)
!1642 = !DILocation(line: 522, column: 37, scope: !1592)
!1643 = !DILocation(line: 522, column: 45, scope: !1592)
!1644 = !DILocation(line: 522, column: 35, scope: !1592)
!1645 = !DILocation(line: 522, column: 5, scope: !1592)
!1646 = !DILocation(line: 522, column: 13, scope: !1592)
!1647 = !DILocation(line: 522, column: 17, scope: !1592)
!1648 = !DILocation(line: 523, column: 5, scope: !1592)
!1649 = !DILocation(line: 526, column: 37, scope: !1650)
!1650 = distinct !DILexicalBlock(scope: !1588, file: !1, line: 525, column: 8)
!1651 = !DILocation(line: 526, column: 36, scope: !1650)
!1652 = !DILocation(line: 526, column: 40, scope: !1650)
!1653 = !DILocation(line: 526, column: 39, scope: !1650)
!1654 = !DILocation(line: 526, column: 43, scope: !1650)
!1655 = !DILocation(line: 526, column: 42, scope: !1650)
!1656 = !DILocation(line: 526, column: 46, scope: !1650)
!1657 = !DILocation(line: 526, column: 45, scope: !1650)
!1658 = !DILocation(line: 526, column: 49, scope: !1650)
!1659 = !DILocation(line: 526, column: 48, scope: !1650)
!1660 = !DILocation(line: 526, column: 52, scope: !1650)
!1661 = !DILocation(line: 526, column: 51, scope: !1650)
!1662 = !DILocation(line: 526, column: 5, scope: !1650)
!1663 = !DILocation(line: 526, column: 13, scope: !1650)
!1664 = !DILocation(line: 526, column: 17, scope: !1650)
!1665 = !DILocation(line: 527, column: 37, scope: !1650)
!1666 = !DILocation(line: 527, column: 45, scope: !1650)
!1667 = !DILocation(line: 527, column: 35, scope: !1650)
!1668 = !DILocation(line: 527, column: 5, scope: !1650)
!1669 = !DILocation(line: 527, column: 13, scope: !1650)
!1670 = !DILocation(line: 527, column: 17, scope: !1650)
!1671 = !DILocation(line: 528, column: 5, scope: !1672)
!1672 = distinct !DILexicalBlock(scope: !1650, file: !1, line: 528, column: 5)
!1673 = !DILocation(line: 528, column: 5, scope: !1650)
!1674 = !DILocation(line: 528, column: 5, scope: !1675)
!1675 = !DILexicalBlockFile(scope: !1672, file: !1, discriminator: 1)
!1676 = distinct !{!1676, !1671}
!1677 = !DILocation(line: 528, column: 5, scope: !1678)
!1678 = !DILexicalBlockFile(scope: !1679, file: !1, discriminator: 2)
!1679 = distinct !DILexicalBlock(scope: !1672, file: !1, line: 528, column: 5)
!1680 = !DILocation(line: 528, column: 5, scope: !1681)
!1681 = !DILexicalBlockFile(scope: !1679, file: !1, discriminator: 3)
!1682 = !DILocation(line: 529, column: 5, scope: !1650)
!1683 = !DILocation(line: 531, column: 1, scope: !1403)
!1684 = distinct !DISubprogram(name: "gsl_sf_debye_1", scope: !1, file: !1, line: 538, type: !1685, isLocal: false, isDefinition: true, scopeLine: 539, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !87)
!1685 = !DISubroutineType(types: !1686)
!1686 = !{!49, !79}
!1687 = !DILocalVariable(name: "x", arg: 1, scope: !1684, file: !1, line: 538, type: !79)
!1688 = !DILocation(line: 538, column: 36, scope: !1684)
!1689 = !DILocalVariable(name: "result", scope: !1684, file: !1, line: 540, type: !81)
!1690 = !DILocation(line: 540, column: 3, scope: !1684)
!1691 = !DILocalVariable(name: "status", scope: !1684, file: !1, line: 540, type: !51)
!1692 = !DILocation(line: 540, column: 3, scope: !1693)
!1693 = distinct !DILexicalBlock(scope: !1684, file: !1, line: 540, column: 3)
!1694 = !DILocation(line: 540, column: 3, scope: !1695)
!1695 = !DILexicalBlockFile(scope: !1696, file: !1, discriminator: 1)
!1696 = distinct !DILexicalBlock(scope: !1693, file: !1, line: 540, column: 3)
!1697 = distinct !{!1697, !1698}
!1698 = !DILocation(line: 540, column: 3, scope: !1696)
!1699 = !DILocation(line: 540, column: 3, scope: !1700)
!1700 = !DILexicalBlockFile(scope: !1701, file: !1, discriminator: 2)
!1701 = distinct !DILexicalBlock(scope: !1696, file: !1, line: 540, column: 3)
!1702 = !DILocation(line: 540, column: 3, scope: !1703)
!1703 = !DILexicalBlockFile(scope: !1696, file: !1, discriminator: 3)
!1704 = !DILocation(line: 540, column: 3, scope: !1705)
!1705 = !DILexicalBlockFile(scope: !1684, file: !1, discriminator: 4)
!1706 = !DILocation(line: 541, column: 1, scope: !1684)
!1707 = distinct !DISubprogram(name: "gsl_sf_debye_2", scope: !1, file: !1, line: 543, type: !1685, isLocal: false, isDefinition: true, scopeLine: 544, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !87)
!1708 = !DILocalVariable(name: "x", arg: 1, scope: !1707, file: !1, line: 543, type: !79)
!1709 = !DILocation(line: 543, column: 36, scope: !1707)
!1710 = !DILocalVariable(name: "result", scope: !1707, file: !1, line: 545, type: !81)
!1711 = !DILocation(line: 545, column: 3, scope: !1707)
!1712 = !DILocalVariable(name: "status", scope: !1707, file: !1, line: 545, type: !51)
!1713 = !DILocation(line: 545, column: 3, scope: !1714)
!1714 = distinct !DILexicalBlock(scope: !1707, file: !1, line: 545, column: 3)
!1715 = !DILocation(line: 545, column: 3, scope: !1716)
!1716 = !DILexicalBlockFile(scope: !1717, file: !1, discriminator: 1)
!1717 = distinct !DILexicalBlock(scope: !1714, file: !1, line: 545, column: 3)
!1718 = distinct !{!1718, !1719}
!1719 = !DILocation(line: 545, column: 3, scope: !1717)
!1720 = !DILocation(line: 545, column: 3, scope: !1721)
!1721 = !DILexicalBlockFile(scope: !1722, file: !1, discriminator: 2)
!1722 = distinct !DILexicalBlock(scope: !1717, file: !1, line: 545, column: 3)
!1723 = !DILocation(line: 545, column: 3, scope: !1724)
!1724 = !DILexicalBlockFile(scope: !1717, file: !1, discriminator: 3)
!1725 = !DILocation(line: 545, column: 3, scope: !1726)
!1726 = !DILexicalBlockFile(scope: !1707, file: !1, discriminator: 4)
!1727 = !DILocation(line: 546, column: 1, scope: !1707)
!1728 = distinct !DISubprogram(name: "gsl_sf_debye_3", scope: !1, file: !1, line: 548, type: !1685, isLocal: false, isDefinition: true, scopeLine: 549, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !87)
!1729 = !DILocalVariable(name: "x", arg: 1, scope: !1728, file: !1, line: 548, type: !79)
!1730 = !DILocation(line: 548, column: 36, scope: !1728)
!1731 = !DILocalVariable(name: "result", scope: !1728, file: !1, line: 550, type: !81)
!1732 = !DILocation(line: 550, column: 3, scope: !1728)
!1733 = !DILocalVariable(name: "status", scope: !1728, file: !1, line: 550, type: !51)
!1734 = !DILocation(line: 550, column: 3, scope: !1735)
!1735 = distinct !DILexicalBlock(scope: !1728, file: !1, line: 550, column: 3)
!1736 = !DILocation(line: 550, column: 3, scope: !1737)
!1737 = !DILexicalBlockFile(scope: !1738, file: !1, discriminator: 1)
!1738 = distinct !DILexicalBlock(scope: !1735, file: !1, line: 550, column: 3)
!1739 = distinct !{!1739, !1740}
!1740 = !DILocation(line: 550, column: 3, scope: !1738)
!1741 = !DILocation(line: 550, column: 3, scope: !1742)
!1742 = !DILexicalBlockFile(scope: !1743, file: !1, discriminator: 2)
!1743 = distinct !DILexicalBlock(scope: !1738, file: !1, line: 550, column: 3)
!1744 = !DILocation(line: 550, column: 3, scope: !1745)
!1745 = !DILexicalBlockFile(scope: !1738, file: !1, discriminator: 3)
!1746 = !DILocation(line: 550, column: 3, scope: !1747)
!1747 = !DILexicalBlockFile(scope: !1728, file: !1, discriminator: 4)
!1748 = !DILocation(line: 551, column: 1, scope: !1728)
!1749 = distinct !DISubprogram(name: "gsl_sf_debye_4", scope: !1, file: !1, line: 553, type: !1685, isLocal: false, isDefinition: true, scopeLine: 554, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !87)
!1750 = !DILocalVariable(name: "x", arg: 1, scope: !1749, file: !1, line: 553, type: !79)
!1751 = !DILocation(line: 553, column: 36, scope: !1749)
!1752 = !DILocalVariable(name: "result", scope: !1749, file: !1, line: 555, type: !81)
!1753 = !DILocation(line: 555, column: 3, scope: !1749)
!1754 = !DILocalVariable(name: "status", scope: !1749, file: !1, line: 555, type: !51)
!1755 = !DILocation(line: 555, column: 3, scope: !1756)
!1756 = distinct !DILexicalBlock(scope: !1749, file: !1, line: 555, column: 3)
!1757 = !DILocation(line: 555, column: 3, scope: !1758)
!1758 = !DILexicalBlockFile(scope: !1759, file: !1, discriminator: 1)
!1759 = distinct !DILexicalBlock(scope: !1756, file: !1, line: 555, column: 3)
!1760 = distinct !{!1760, !1761}
!1761 = !DILocation(line: 555, column: 3, scope: !1759)
!1762 = !DILocation(line: 555, column: 3, scope: !1763)
!1763 = !DILexicalBlockFile(scope: !1764, file: !1, discriminator: 2)
!1764 = distinct !DILexicalBlock(scope: !1759, file: !1, line: 555, column: 3)
!1765 = !DILocation(line: 555, column: 3, scope: !1766)
!1766 = !DILexicalBlockFile(scope: !1759, file: !1, discriminator: 3)
!1767 = !DILocation(line: 555, column: 3, scope: !1768)
!1768 = !DILexicalBlockFile(scope: !1749, file: !1, discriminator: 4)
!1769 = !DILocation(line: 556, column: 1, scope: !1749)
!1770 = distinct !DISubprogram(name: "gsl_sf_debye_5", scope: !1, file: !1, line: 558, type: !1685, isLocal: false, isDefinition: true, scopeLine: 559, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !87)
!1771 = !DILocalVariable(name: "x", arg: 1, scope: !1770, file: !1, line: 558, type: !79)
!1772 = !DILocation(line: 558, column: 36, scope: !1770)
!1773 = !DILocalVariable(name: "result", scope: !1770, file: !1, line: 560, type: !81)
!1774 = !DILocation(line: 560, column: 3, scope: !1770)
!1775 = !DILocalVariable(name: "status", scope: !1770, file: !1, line: 560, type: !51)
!1776 = !DILocation(line: 560, column: 3, scope: !1777)
!1777 = distinct !DILexicalBlock(scope: !1770, file: !1, line: 560, column: 3)
!1778 = !DILocation(line: 560, column: 3, scope: !1779)
!1779 = !DILexicalBlockFile(scope: !1780, file: !1, discriminator: 1)
!1780 = distinct !DILexicalBlock(scope: !1777, file: !1, line: 560, column: 3)
!1781 = distinct !{!1781, !1782}
!1782 = !DILocation(line: 560, column: 3, scope: !1780)
!1783 = !DILocation(line: 560, column: 3, scope: !1784)
!1784 = !DILexicalBlockFile(scope: !1785, file: !1, discriminator: 2)
!1785 = distinct !DILexicalBlock(scope: !1780, file: !1, line: 560, column: 3)
!1786 = !DILocation(line: 560, column: 3, scope: !1787)
!1787 = !DILexicalBlockFile(scope: !1780, file: !1, discriminator: 3)
!1788 = !DILocation(line: 560, column: 3, scope: !1789)
!1789 = !DILexicalBlockFile(scope: !1770, file: !1, discriminator: 4)
!1790 = !DILocation(line: 561, column: 1, scope: !1770)
!1791 = distinct !DISubprogram(name: "gsl_sf_debye_6", scope: !1, file: !1, line: 563, type: !1685, isLocal: false, isDefinition: true, scopeLine: 564, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !87)
!1792 = !DILocalVariable(name: "x", arg: 1, scope: !1791, file: !1, line: 563, type: !79)
!1793 = !DILocation(line: 563, column: 36, scope: !1791)
!1794 = !DILocalVariable(name: "result", scope: !1791, file: !1, line: 565, type: !81)
!1795 = !DILocation(line: 565, column: 3, scope: !1791)
!1796 = !DILocalVariable(name: "status", scope: !1791, file: !1, line: 565, type: !51)
!1797 = !DILocation(line: 565, column: 3, scope: !1798)
!1798 = distinct !DILexicalBlock(scope: !1791, file: !1, line: 565, column: 3)
!1799 = !DILocation(line: 565, column: 3, scope: !1800)
!1800 = !DILexicalBlockFile(scope: !1801, file: !1, discriminator: 1)
!1801 = distinct !DILexicalBlock(scope: !1798, file: !1, line: 565, column: 3)
!1802 = distinct !{!1802, !1803}
!1803 = !DILocation(line: 565, column: 3, scope: !1801)
!1804 = !DILocation(line: 565, column: 3, scope: !1805)
!1805 = !DILexicalBlockFile(scope: !1806, file: !1, discriminator: 2)
!1806 = distinct !DILexicalBlock(scope: !1801, file: !1, line: 565, column: 3)
!1807 = !DILocation(line: 565, column: 3, scope: !1808)
!1808 = !DILexicalBlockFile(scope: !1801, file: !1, discriminator: 3)
!1809 = !DILocation(line: 565, column: 3, scope: !1810)
!1810 = !DILexicalBlockFile(scope: !1791, file: !1, discriminator: 4)
!1811 = !DILocation(line: 566, column: 1, scope: !1791)
