; ModuleID = 'transport.ll'
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
@0 = private unnamed_addr constant [21 x i8] c"gsl_sf_transport_2_e\00"
@1 = private unnamed_addr constant [13 x i8] c"transport.ll\00"
@2 = private unnamed_addr constant [12 x i8] c"cheb_eval_e\00"
@3 = private unnamed_addr constant [13 x i8] c"transport.ll\00"
@4 = private unnamed_addr constant [17 x i8] c"transport_sumexp\00"
@5 = private unnamed_addr constant [13 x i8] c"transport.ll\00"
@6 = private unnamed_addr constant [21 x i8] c"gsl_sf_transport_3_e\00"
@7 = private unnamed_addr constant [13 x i8] c"transport.ll\00"
@8 = private unnamed_addr constant [21 x i8] c"gsl_sf_transport_4_e\00"
@9 = private unnamed_addr constant [13 x i8] c"transport.ll\00"
@10 = private unnamed_addr constant [21 x i8] c"gsl_sf_transport_5_e\00"
@11 = private unnamed_addr constant [13 x i8] c"transport.ll\00"
@12 = private unnamed_addr constant [19 x i8] c"gsl_sf_transport_2\00"
@13 = private unnamed_addr constant [13 x i8] c"transport.ll\00"
@14 = private unnamed_addr constant [19 x i8] c"gsl_sf_transport_3\00"
@15 = private unnamed_addr constant [13 x i8] c"transport.ll\00"
@16 = private unnamed_addr constant [19 x i8] c"gsl_sf_transport_4\00"
@17 = private unnamed_addr constant [13 x i8] c"transport.ll\00"
@18 = private unnamed_addr constant [19 x i8] c"gsl_sf_transport_5\00"
@19 = private unnamed_addr constant [13 x i8] c"transport.ll\00"

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
  %21 = call i1 @fCmpInstHandler(double %19, double 0.000000e+00, i1 %20, i32 4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94710651496912, i32 177, i32 8), !dbg !92
  br i1 %21, label %22, label %31, !dbg !92

; <label>:22:                                     ; preds = %2
  br label %23, !dbg !93, !llvm.loop !95

; <label>:23:                                     ; preds = %22
  %24 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !96
  %25 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %24, i32 0, i32 0, !dbg !96
  store double 0x7FF8000000000000, double* %25, align 8, !dbg !96
  %26 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !96
  %27 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %26, i32 0, i32 1, !dbg !96
  store double 0x7FF8000000000000, double* %27, align 8, !dbg !96
  br label %28, !dbg !96, !llvm.loop !99

; <label>:28:                                     ; preds = %23
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 178, i32 1), !dbg !101
  store i32 1, i32* %3, align 4, !dbg !101
  br label %201, !dbg !101
                                                  ; No predecessors!
  br label %30, !dbg !104

; <label>:30:                                     ; preds = %29
  br label %201, !dbg !106

; <label>:31:                                     ; preds = %2
  %32 = load double, double* %4, align 8, !dbg !107
  %33 = fcmp olt double %32, 0x3E68000000000000, !dbg !109
  %34 = call i1 @fCmpInstHandler(double %32, double 0x3E68000000000000, i1 %33, i32 4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94710651510192, i32 180, i32 13), !dbg !110
  br i1 %34, label %35, label %49, !dbg !110

; <label>:35:                                     ; preds = %31
  %36 = load double, double* %4, align 8, !dbg !111
  %37 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !113
  %38 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %37, i32 0, i32 0, !dbg !114
  store double %36, double* %38, align 8, !dbg !115
  %39 = load double, double* %4, align 8, !dbg !116
  %40 = call double @fabs(double %39) #1, !dbg !117
  %41 = fmul double 0x3CB0000000000000, %40, !dbg !118
  call void @fMulHandler(double 0x3CB0000000000000, double %40, double %41, i64 0, i64 94710651514192, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94710651514768, i32 182, i32 34), !dbg !119
  %42 = load double, double* %4, align 8, !dbg !119
  %43 = load double, double* %4, align 8, !dbg !120
  %44 = fmul double %42, %43, !dbg !121
  call void @fMulHandler(double %42, double %43, double %44, i64 94710651515160, i64 94710651515544, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94710651515952, i32 182, i32 46), !dbg !122
  %45 = fdiv double %44, 2.000000e+00, !dbg !122
  call void @fDivHandler(double %44, double 2.000000e+00, double %45, i64 94710651515952, i64 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94710651516464, i32 182, i32 48), !dbg !123
  %46 = fadd double %41, %45, !dbg !123
  call void @fAddHandler(double %41, double %45, double %46, i64 94710651514768, i64 94710651516464, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94710651516848, i32 182, i32 43), !dbg !124
  %47 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !124
  %48 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %47, i32 0, i32 1, !dbg !125
  store double %46, double* %48, align 8, !dbg !126
  store i32 0, i32* %3, align 4, !dbg !127
  br label %201, !dbg !127

; <label>:49:                                     ; preds = %31
  %50 = load double, double* %4, align 8, !dbg !128
  %51 = fcmp ole double %50, 4.000000e+00, !dbg !130
  %52 = call i1 @fCmpInstHandler(double %50, double 4.000000e+00, i1 %51, i32 5, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94710651520992, i32 185, i32 13), !dbg !131
  br i1 %52, label %53, label %83, !dbg !131

; <label>:53:                                     ; preds = %49
  call void @llvm.dbg.declare(metadata double* %7, metadata !132, metadata !83), !dbg !134
  %54 = load double, double* %4, align 8, !dbg !135
  %55 = load double, double* %4, align 8, !dbg !136
  %56 = fmul double %54, %55, !dbg !137
  call void @fMulHandler(double %54, double %55, double %56, i64 94710651523224, i64 94710651523576, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94710651523984, i32 186, i32 18), !dbg !138
  %57 = fdiv double %56, 8.000000e+00, !dbg !138
  call void @fDivHandler(double %56, double 8.000000e+00, double %57, i64 94710651523984, i64 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94710651524496, i32 186, i32 20), !dbg !139
  %58 = fsub double %57, 5.000000e-01, !dbg !139
  call void @fSubHandler(double %57, double 5.000000e-01, double %58, i64 94710651524496, i64 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94710651524976, i32 186, i32 25), !dbg !140
  %59 = fsub double %58, 5.000000e-01, !dbg !140
  call void @fSubHandler(double %58, double 5.000000e-01, double %59, i64 94710651524976, i64 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94710651525392, i32 186, i32 32), !dbg !134
  store double %59, double* %7, align 8, !dbg !134
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %8, metadata !141, metadata !83), !dbg !142
  %60 = load double, double* %7, align 8, !dbg !143
  %61 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @transport2_cs, double %60, %struct.gsl_sf_result_struct* %8), !dbg !144
  %62 = load double, double* %4, align 8, !dbg !145
  %63 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 0, !dbg !146
  %64 = load double, double* %63, align 8, !dbg !146
  %65 = fmul double %62, %64, !dbg !147
  call void @fMulHandler(double %62, double %64, double %65, i64 94710651529768, i64 94710651530568, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94710651532240, i32 189, i32 22), !dbg !148
  %66 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !148
  %67 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %66, i32 0, i32 0, !dbg !149
  store double %65, double* %67, align 8, !dbg !150
  %68 = load double, double* %4, align 8, !dbg !151
  %69 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 1, !dbg !152
  %70 = load double, double* %69, align 8, !dbg !152
  %71 = fmul double %68, %70, !dbg !153
  call void @fMulHandler(double %68, double %70, double %71, i64 94710651534920, i64 94710651535752, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94710651537424, i32 190, i32 22), !dbg !154
  %72 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !154
  %73 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %72, i32 0, i32 1, !dbg !155
  store double %71, double* %73, align 8, !dbg !156
  %74 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !157
  %75 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %74, i32 0, i32 0, !dbg !158
  %76 = load double, double* %75, align 8, !dbg !158
  %77 = call double @fabs(double %76) #1, !dbg !159
  %78 = fmul double 0x3CC0000000000000, %77, !dbg !160
  call void @fMulHandler(double 0x3CC0000000000000, double %77, double %78, i64 0, i64 94710651541632, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94710651542176, i32 191, i32 42), !dbg !161
  %79 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !161
  %80 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %79, i32 0, i32 1, !dbg !162
  %81 = load double, double* %80, align 8, !dbg !163
  %82 = fadd double %81, %78, !dbg !163
  call void @fAddHandler(double %81, double %78, double %82, i64 94710651543400, i64 94710651542176, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94710651543808, i32 191, i32 17), !dbg !163
  store double %82, double* %80, align 8, !dbg !163
  store i32 0, i32* %3, align 4, !dbg !164
  br label %201, !dbg !164

; <label>:83:                                     ; preds = %49
  %84 = load double, double* %4, align 8, !dbg !165
  %85 = fcmp olt double %84, 0x404205966F2B4F12, !dbg !167
  %86 = call i1 @fCmpInstHandler(double %84, double 0x404205966F2B4F12, i1 %85, i32 4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94710651548064, i32 194, i32 13), !dbg !168
  br i1 %86, label %87, label %130, !dbg !168

; <label>:87:                                     ; preds = %83
  call void @llvm.dbg.declare(metadata i32* %9, metadata !169, metadata !83), !dbg !172
  %88 = load double, double* %4, align 8, !dbg !173
  %89 = fdiv double 0x404205966F2B4F12, %88, !dbg !174
  call void @fDivHandler(double 0x404205966F2B4F12, double %88, double %89, i64 0, i64 94710651550328, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94710651550704, i32 195, i32 55), !dbg !175
  %90 = fptosi double %89 to i32, !dbg !175
  %91 = add nsw i32 %90, 1, !dbg !176
  store i32 %91, i32* %9, align 4, !dbg !172
  call void @llvm.dbg.declare(metadata double* %10, metadata !177, metadata !83), !dbg !178
  %92 = load i32, i32* %9, align 4, !dbg !179
  %93 = load double, double* %4, align 8, !dbg !180
  %94 = fsub double -0.000000e+00, %93, !dbg !181
  call void @fSubHandler(double -0.000000e+00, double %93, double %94, i64 0, i64 94710651555048, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94710651555520, i32 196, i32 59), !dbg !182
  %95 = call double @exp(double %94) #6, !dbg !182
  call void @callOneArgHandler(i32 11, double %94, double %95, i64 94710651555520, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94710651556272, i32 196, i32 55), !dbg !183
  %96 = load double, double* %4, align 8, !dbg !183
  %97 = call double @transport_sumexp(i32 %92, i32 2, double %95, double %96), !dbg !184
  store double %97, double* %10, align 8, !dbg !178
  call void @llvm.dbg.declare(metadata double* %11, metadata !186, metadata !83), !dbg !187
  %98 = load double, double* %4, align 8, !dbg !188
  %99 = call double @log(double %98) #6, !dbg !189
  call void @callOneArgHandler(i32 12, double %98, double %99, i64 94710651561032, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94710651561744, i32 197, i32 28), !dbg !190
  %100 = fmul double 2.000000e+00, %99, !dbg !190
  call void @fMulHandler(double 2.000000e+00, double %99, double %100, i64 0, i64 94710651561744, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94710651562288, i32 197, i32 26), !dbg !191
  %101 = load double, double* %4, align 8, !dbg !191
  %102 = fsub double %100, %101, !dbg !192
  call void @fSubHandler(double %100, double %101, double %102, i64 94710651562288, i64 94710651562648, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94710651563056, i32 197, i32 35), !dbg !193
  %103 = load double, double* %10, align 8, !dbg !193
  %104 = call double @log(double %103) #6, !dbg !194
  call void @callOneArgHandler(i32 12, double %103, double %104, i64 94710651563448, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94710651563920, i32 197, i32 41), !dbg !195
  %105 = fadd double %102, %104, !dbg !195
  call void @fAddHandler(double %102, double %104, double %105, i64 94710651563056, i64 94710651563920, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94710651564400, i32 197, i32 39), !dbg !187
  store double %105, double* %11, align 8, !dbg !187
  %106 = load double, double* %11, align 8, !dbg !196
  %107 = fcmp olt double %106, 0xC04205966F2B4F12, !dbg !198
  %108 = call i1 @fCmpInstHandler(double %106, double 0xC04205966F2B4F12, i1 %107, i32 4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94710651566944, i32 198, i32 10), !dbg !199
  br i1 %108, label %109, label %114, !dbg !199

; <label>:109:                                    ; preds = %87
  %110 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !200
  %111 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %110, i32 0, i32 0, !dbg !202
  store double 0x400A51A6625307D3, double* %111, align 8, !dbg !203
  %112 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !204
  %113 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %112, i32 0, i32 1, !dbg !205
  store double 0x3CDA51A6625307D3, double* %113, align 8, !dbg !206
  br label %129, !dbg !207

; <label>:114:                                    ; preds = %87
  call void @llvm.dbg.declare(metadata double* %12, metadata !208, metadata !83), !dbg !210
  %115 = load double, double* %11, align 8, !dbg !211
  %116 = call double @exp(double %115) #6, !dbg !212
  call void @callOneArgHandler(i32 11, double %115, double %116, i64 94710651572184, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94710651572624, i32 203, i32 25), !dbg !210
  store double %116, double* %12, align 8, !dbg !210
  %117 = load double, double* %12, align 8, !dbg !213
  %118 = fsub double 0x400A51A6625307D3, %117, !dbg !214
  call void @fSubHandler(double 0x400A51A6625307D3, double %117, double %118, i64 0, i64 94710651574760, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94710651575168, i32 204, i32 34), !dbg !215
  %119 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !215
  %120 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %119, i32 0, i32 0, !dbg !216
  store double %118, double* %120, align 8, !dbg !217
  %121 = load double, double* %11, align 8, !dbg !218
  %122 = call double @fabs(double %121) #1, !dbg !219
  %123 = load double, double* %12, align 8, !dbg !220
  %124 = fmul double %122, %123, !dbg !221
  call void @fMulHandler(double %122, double %123, double %124, i64 94710651577280, i64 94710651577736, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94710651578144, i32 205, i32 69), !dbg !222
  %125 = fadd double 0x400A51A6625307D3, %124, !dbg !222
  call void @fAddHandler(double 0x400A51A6625307D3, double %124, double %125, i64 0, i64 94710651578144, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94710651578560, i32 205, i32 59), !dbg !223
  %126 = fmul double 0x3CC0000000000000, %125, !dbg !223
  call void @fMulHandler(double 0x3CC0000000000000, double %125, double %126, i64 0, i64 94710651578560, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94710651578976, i32 205, i32 43), !dbg !224
  %127 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !224
  %128 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %127, i32 0, i32 1, !dbg !225
  store double %126, double* %128, align 8, !dbg !226
  br label %129

; <label>:129:                                    ; preds = %114, %109
  store i32 0, i32* %3, align 4, !dbg !227
  br label %201, !dbg !227

; <label>:130:                                    ; preds = %83
  %131 = load double, double* %4, align 8, !dbg !228
  %132 = fcmp olt double %131, 0x4340000000000000, !dbg !230
  %133 = call i1 @fCmpInstHandler(double %131, double 0x4340000000000000, i1 %132, i32 4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94710651583120, i32 209, i32 13), !dbg !231
  br i1 %133, label %134, label %170, !dbg !231

; <label>:134:                                    ; preds = %130
  call void @llvm.dbg.declare(metadata i32* %13, metadata !232, metadata !83), !dbg !234
  store i32 1, i32* %13, align 4, !dbg !234
  call void @llvm.dbg.declare(metadata double* %14, metadata !235, metadata !83), !dbg !236
  %135 = load double, double* %4, align 8, !dbg !237
  %136 = call double @transport_sumexp(i32 1, i32 2, double 1.000000e+00, double %135), !dbg !238
  store double %136, double* %14, align 8, !dbg !236
  call void @llvm.dbg.declare(metadata double* %15, metadata !239, metadata !83), !dbg !240
  %137 = load double, double* %4, align 8, !dbg !241
  %138 = call double @log(double %137) #6, !dbg !242
  call void @callOneArgHandler(i32 12, double %137, double %138, i64 94710651593848, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94710651594288, i32 212, i32 28), !dbg !243
  %139 = fmul double 2.000000e+00, %138, !dbg !243
  call void @fMulHandler(double 2.000000e+00, double %138, double %139, i64 0, i64 94710651594288, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94710651594800, i32 212, i32 26), !dbg !244
  %140 = load double, double* %4, align 8, !dbg !244
  %141 = fsub double %139, %140, !dbg !245
  call void @fSubHandler(double %139, double %140, double %141, i64 94710651594800, i64 94710651595160, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94710651595568, i32 212, i32 35), !dbg !246
  %142 = load double, double* %14, align 8, !dbg !246
  %143 = call double @log(double %142) #6, !dbg !247
  call void @callOneArgHandler(i32 12, double %142, double %143, i64 94710651595960, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94710651596432, i32 212, i32 41), !dbg !249
  %144 = fadd double %141, %143, !dbg !249
  call void @fAddHandler(double %141, double %143, double %144, i64 94710651595568, i64 94710651596432, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94710651596912, i32 212, i32 39), !dbg !240
  store double %144, double* %15, align 8, !dbg !240
  %145 = load double, double* %15, align 8, !dbg !250
  %146 = fcmp olt double %145, 0xC04205966F2B4F12, !dbg !252
  %147 = call i1 @fCmpInstHandler(double %145, double 0xC04205966F2B4F12, i1 %146, i32 4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94710651599392, i32 213, i32 10), !dbg !253
  br i1 %147, label %148, label %153, !dbg !253

; <label>:148:                                    ; preds = %134
  %149 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !254
  %150 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %149, i32 0, i32 0, !dbg !256
  store double 0x400A51A6625307D3, double* %150, align 8, !dbg !257
  %151 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !258
  %152 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %151, i32 0, i32 1, !dbg !259
  store double 0x3CDA51A6625307D3, double* %152, align 8, !dbg !260
  br label %169, !dbg !261

; <label>:153:                                    ; preds = %134
  call void @llvm.dbg.declare(metadata double* %16, metadata !262, metadata !83), !dbg !264
  %154 = load double, double* %15, align 8, !dbg !265
  %155 = call double @exp(double %154) #6, !dbg !266
  call void @callOneArgHandler(i32 11, double %154, double %155, i64 94710651604520, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94710651604960, i32 218, i32 25), !dbg !264
  store double %155, double* %16, align 8, !dbg !264
  %156 = load double, double* %16, align 8, !dbg !267
  %157 = fsub double 0x400A51A6625307D3, %156, !dbg !268
  call void @fSubHandler(double 0x400A51A6625307D3, double %156, double %157, i64 0, i64 94710651607096, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94710651607504, i32 219, i32 34), !dbg !269
  %158 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !269
  %159 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %158, i32 0, i32 0, !dbg !270
  store double %157, double* %159, align 8, !dbg !271
  %160 = load double, double* %15, align 8, !dbg !272
  %161 = call double @fabs(double %160) #1, !dbg !273
  %162 = fadd double %161, 1.000000e+00, !dbg !274
  call void @fAddHandler(double %161, double 1.000000e+00, double %162, i64 94710651609616, i64 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94710651610128, i32 220, i32 69), !dbg !275
  %163 = load double, double* %16, align 8, !dbg !275
  %164 = fmul double %162, %163, !dbg !276
  call void @fMulHandler(double %162, double %163, double %164, i64 94710651610128, i64 94710651610488, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94710651610896, i32 220, i32 75), !dbg !277
  %165 = fadd double 0x400A51A6625307D3, %164, !dbg !277
  call void @fAddHandler(double 0x400A51A6625307D3, double %164, double %165, i64 0, i64 94710651610896, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94710651611312, i32 220, i32 59), !dbg !278
  %166 = fmul double 0x3CC0000000000000, %165, !dbg !278
  call void @fMulHandler(double 0x3CC0000000000000, double %165, double %166, i64 0, i64 94710651611312, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94710651611728, i32 220, i32 43), !dbg !279
  %167 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !279
  %168 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %167, i32 0, i32 1, !dbg !280
  store double %166, double* %168, align 8, !dbg !281
  br label %169

; <label>:169:                                    ; preds = %153, %148
  store i32 0, i32* %3, align 4, !dbg !282
  br label %201, !dbg !282

; <label>:170:                                    ; preds = %130
  call void @llvm.dbg.declare(metadata double* %17, metadata !283, metadata !83), !dbg !285
  %171 = load double, double* %4, align 8, !dbg !286
  %172 = call double @log(double %171) #6, !dbg !287
  call void @callOneArgHandler(i32 12, double %171, double %172, i64 94710651616520, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94710651616960, i32 225, i32 28), !dbg !288
  %173 = fmul double 2.000000e+00, %172, !dbg !288
  call void @fMulHandler(double 2.000000e+00, double %172, double %173, i64 0, i64 94710651616960, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94710651617472, i32 225, i32 26), !dbg !289
  %174 = load double, double* %4, align 8, !dbg !289
  %175 = fsub double %173, %174, !dbg !290
  call void @fSubHandler(double %173, double %174, double %175, i64 94710651617472, i64 94710651617832, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94710651618240, i32 225, i32 35), !dbg !285
  store double %175, double* %17, align 8, !dbg !285
  %176 = load double, double* %17, align 8, !dbg !291
  %177 = fcmp olt double %176, 0xC04205966F2B4F12, !dbg !293
  %178 = call i1 @fCmpInstHandler(double %176, double 0xC04205966F2B4F12, i1 %177, i32 4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94710651620720, i32 226, i32 10), !dbg !294
  br i1 %178, label %179, label %184, !dbg !294

; <label>:179:                                    ; preds = %170
  %180 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !295
  %181 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %180, i32 0, i32 0, !dbg !297
  store double 0x400A51A6625307D3, double* %181, align 8, !dbg !298
  %182 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !299
  %183 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %182, i32 0, i32 1, !dbg !300
  store double 0x3CDA51A6625307D3, double* %183, align 8, !dbg !301
  br label %200, !dbg !302

; <label>:184:                                    ; preds = %170
  call void @llvm.dbg.declare(metadata double* %18, metadata !303, metadata !83), !dbg !305
  %185 = load double, double* %17, align 8, !dbg !306
  %186 = call double @exp(double %185) #6, !dbg !307
  call void @callOneArgHandler(i32 11, double %185, double %186, i64 94710651625848, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94710651626288, i32 231, i32 25), !dbg !305
  store double %186, double* %18, align 8, !dbg !305
  %187 = load double, double* %18, align 8, !dbg !308
  %188 = fsub double 0x400A51A6625307D3, %187, !dbg !309
  call void @fSubHandler(double 0x400A51A6625307D3, double %187, double %188, i64 0, i64 94710651628424, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94710651628832, i32 232, i32 34), !dbg !310
  %189 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !310
  %190 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %189, i32 0, i32 0, !dbg !311
  store double %188, double* %190, align 8, !dbg !312
  %191 = load double, double* %17, align 8, !dbg !313
  %192 = call double @fabs(double %191) #1, !dbg !314
  %193 = fadd double %192, 1.000000e+00, !dbg !315
  call void @fAddHandler(double %192, double 1.000000e+00, double %193, i64 94710651630944, i64 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94710651631456, i32 233, i32 69), !dbg !316
  %194 = load double, double* %18, align 8, !dbg !316
  %195 = fmul double %193, %194, !dbg !317
  call void @fMulHandler(double %193, double %194, double %195, i64 94710651631456, i64 94710651631816, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94710651632224, i32 233, i32 75), !dbg !318
  %196 = fadd double 0x400A51A6625307D3, %195, !dbg !318
  call void @fAddHandler(double 0x400A51A6625307D3, double %195, double %196, i64 0, i64 94710651632224, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94710651632640, i32 233, i32 59), !dbg !319
  %197 = fmul double 0x3CC0000000000000, %196, !dbg !319
  call void @fMulHandler(double 0x3CC0000000000000, double %196, double %197, i64 0, i64 94710651632640, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94710651633056, i32 233, i32 43), !dbg !320
  %198 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !320
  %199 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %198, i32 0, i32 1, !dbg !321
  store double %197, double* %199, align 8, !dbg !322
  br label %200

; <label>:200:                                    ; preds = %184, %179
  store i32 0, i32* %3, align 4, !dbg !323
  br label %201, !dbg !323

; <label>:201:                                    ; preds = %200, %169, %129, %53, %35, %30, %28
  %202 = load i32, i32* %3, align 4, !dbg !324
  ret i32 %202, !dbg !324
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
  call void @fMulHandler(double 2.000000e+00, double %15, double %16, i64 0, i64 94710651529144, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94710651651264, i32 11, i32 19), !dbg !347
  %17 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !347
  %18 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %17, i32 0, i32 2, !dbg !348
  %19 = load double, double* %18, align 8, !dbg !348
  %20 = fsub double %16, %19, !dbg !349
  call void @fSubHandler(double %16, double %19, double %20, i64 94710651651264, i64 94710651506328, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94710651653936, i32 11, i32 22), !dbg !350
  %21 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !350
  %22 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %21, i32 0, i32 3, !dbg !351
  %23 = load double, double* %22, align 8, !dbg !351
  %24 = fsub double %20, %23, !dbg !352
  call void @fSubHandler(double %20, double %23, double %24, i64 94710651653936, i64 94710651655128, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94710651656800, i32 11, i32 30), !dbg !353
  %25 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !353
  %26 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %25, i32 0, i32 3, !dbg !354
  %27 = load double, double* %26, align 8, !dbg !354
  %28 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !355
  %29 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %28, i32 0, i32 2, !dbg !356
  %30 = load double, double* %29, align 8, !dbg !356
  %31 = fsub double %27, %30, !dbg !357
  call void @fSubHandler(double %27, double %30, double %31, i64 94710651658024, i64 94710651660504, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94710651662176, i32 11, i32 48), !dbg !358
  %32 = fdiv double %24, %31, !dbg !358
  call void @fDivHandler(double %24, double %31, double %32, i64 94710651656800, i64 94710651662176, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94710651662592, i32 11, i32 39), !dbg !344
  store double %32, double* %10, align 8, !dbg !344
  call void @llvm.dbg.declare(metadata double* %11, metadata !359, metadata !83), !dbg !360
  %33 = load double, double* %10, align 8, !dbg !361
  %34 = fmul double 2.000000e+00, %33, !dbg !362
  call void @fMulHandler(double 2.000000e+00, double %33, double %34, i64 0, i64 94710651665640, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94710651666048, i32 12, i32 19), !dbg !360
  store double %34, double* %11, align 8, !dbg !360
  call void @llvm.dbg.declare(metadata double* %12, metadata !363, metadata !83), !dbg !364
  store double 0.000000e+00, double* %12, align 8, !dbg !364
  %35 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !365
  %36 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %35, i32 0, i32 1, !dbg !367
  %37 = load i32, i32* %36, align 8, !dbg !367
  store i32 %37, i32* %7, align 4, !dbg !368
  br label %38, !dbg !369

; <label>:38:                                     ; preds = %77, %3
  %39 = load i32, i32* %7, align 4, !dbg !370
  %40 = icmp sge i32 %39, 1, !dbg !373
  %41 = sext i32 %39 to i64, !dbg !374
  %42 = call i1 @iCmpInstHandler(i64 %41, i64 1, i1 %40, i32 39, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94710651676688, i32 16, i32 23), !dbg !374
  br i1 %42, label %43, label %80, !dbg !374

; <label>:43:                                     ; preds = %38
  call void @llvm.dbg.declare(metadata double* %13, metadata !375, metadata !83), !dbg !377
  %44 = load double, double* %8, align 8, !dbg !378
  store double %44, double* %13, align 8, !dbg !377
  %45 = load double, double* %11, align 8, !dbg !379
  %46 = load double, double* %8, align 8, !dbg !380
  %47 = fmul double %45, %46, !dbg !381
  call void @fMulHandler(double %45, double %46, double %47, i64 94710651680888, i64 94710651681272, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94710651681680, i32 18, i32 11), !dbg !382
  %48 = load double, double* %9, align 8, !dbg !382
  %49 = fsub double %47, %48, !dbg !383
  call void @fSubHandler(double %47, double %48, double %49, i64 94710651681680, i64 94710651682072, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94710651682480, i32 18, i32 14), !dbg !384
  %50 = load i32, i32* %7, align 4, !dbg !384
  %51 = sext i32 %50 to i64, !dbg !385
  %52 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !385
  %53 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %52, i32 0, i32 0, !dbg !386
  %54 = load double*, double** %53, align 8, !dbg !386
  %55 = getelementptr inbounds double, double* %54, i64 %51, !dbg !385
  %56 = load double, double* %55, align 8, !dbg !385
  %57 = fadd double %49, %56, !dbg !387
  call void @fAddHandler(double %49, double %56, double %57, i64 94710651682480, i64 94710651687528, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94710651687648, i32 18, i32 19), !dbg !388
  store double %57, double* %8, align 8, !dbg !388
  %58 = load double, double* %11, align 8, !dbg !389
  %59 = load double, double* %13, align 8, !dbg !390
  %60 = fmul double %58, %59, !dbg !391
  call void @fMulHandler(double %58, double %59, double %60, i64 94710651688456, i64 94710651688840, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94710651689248, i32 19, i32 17), !dbg !392
  %61 = call double @fabs(double %60) #1, !dbg !392
  %62 = load double, double* %9, align 8, !dbg !393
  %63 = call double @fabs(double %62) #1, !dbg !394
  %64 = fadd double %61, %63, !dbg !396
  call void @fAddHandler(double %61, double %63, double %64, i64 94710651689728, i64 94710651690656, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94710651691136, i32 19, i32 24), !dbg !397
  %65 = load i32, i32* %7, align 4, !dbg !397
  %66 = sext i32 %65 to i64, !dbg !398
  %67 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !398
  %68 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %67, i32 0, i32 0, !dbg !399
  %69 = load double*, double** %68, align 8, !dbg !399
  %70 = getelementptr inbounds double, double* %69, i64 %66, !dbg !398
  %71 = load double, double* %70, align 8, !dbg !398
  %72 = call double @fabs(double %71) #1, !dbg !400
  %73 = fadd double %64, %72, !dbg !402
  call void @fAddHandler(double %64, double %72, double %73, i64 94710651691136, i64 94710651696368, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94710651696848, i32 19, i32 35), !dbg !403
  %74 = load double, double* %12, align 8, !dbg !403
  %75 = fadd double %74, %73, !dbg !403
  call void @fAddHandler(double %74, double %73, double %75, i64 94710651697240, i64 94710651696848, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94710651697648, i32 19, i32 7), !dbg !403
  store double %75, double* %12, align 8, !dbg !403
  %76 = load double, double* %13, align 8, !dbg !404
  store double %76, double* %9, align 8, !dbg !405
  br label %77, !dbg !406

; <label>:77:                                     ; preds = %43
  %78 = load i32, i32* %7, align 4, !dbg !407
  %79 = add nsw i32 %78, -1, !dbg !407
  store i32 %79, i32* %7, align 4, !dbg !407
  br label %38, !dbg !409, !llvm.loop !410

; <label>:80:                                     ; preds = %38
  call void @llvm.dbg.declare(metadata double* %14, metadata !412, metadata !83), !dbg !414
  %81 = load double, double* %8, align 8, !dbg !415
  store double %81, double* %14, align 8, !dbg !414
  %82 = load double, double* %10, align 8, !dbg !416
  %83 = load double, double* %8, align 8, !dbg !417
  %84 = fmul double %82, %83, !dbg !418
  call void @fMulHandler(double %82, double %83, double %84, i64 94710651706712, i64 94710651707096, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94710651707504, i32 25, i32 10), !dbg !419
  %85 = load double, double* %9, align 8, !dbg !419
  %86 = fsub double %84, %85, !dbg !420
  call void @fSubHandler(double %84, double %85, double %86, i64 94710651707504, i64 94710651707896, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94710651708304, i32 25, i32 13), !dbg !421
  %87 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !421
  %88 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %87, i32 0, i32 0, !dbg !422
  %89 = load double*, double** %88, align 8, !dbg !422
  %90 = getelementptr inbounds double, double* %89, i64 0, !dbg !421
  %91 = load double, double* %90, align 8, !dbg !421
  %92 = fmul double 5.000000e-01, %91, !dbg !423
  call void @fMulHandler(double 5.000000e-01, double %91, double %92, i64 0, i64 94710651712936, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94710651713088, i32 25, i32 24), !dbg !424
  %93 = fadd double %86, %92, !dbg !424
  call void @fAddHandler(double %86, double %92, double %93, i64 94710651708304, i64 94710651713088, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94710651713472, i32 25, i32 18), !dbg !425
  store double %93, double* %8, align 8, !dbg !425
  %94 = load double, double* %10, align 8, !dbg !426
  %95 = load double, double* %14, align 8, !dbg !427
  %96 = fmul double %94, %95, !dbg !428
  call void @fMulHandler(double %94, double %95, double %96, i64 94710651714280, i64 94710651714664, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94710651715072, i32 26, i32 16), !dbg !429
  %97 = call double @fabs(double %96) #1, !dbg !429
  %98 = load double, double* %9, align 8, !dbg !430
  %99 = call double @fabs(double %98) #1, !dbg !431
  %100 = fadd double %97, %99, !dbg !433
  call void @fAddHandler(double %97, double %99, double %100, i64 94710651715552, i64 94710651716480, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94710651716960, i32 26, i32 23), !dbg !434
  %101 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !434
  %102 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %101, i32 0, i32 0, !dbg !435
  %103 = load double*, double** %102, align 8, !dbg !435
  %104 = getelementptr inbounds double, double* %103, i64 0, !dbg !434
  %105 = load double, double* %104, align 8, !dbg !434
  %106 = call double @fabs(double %105) #1, !dbg !436
  %107 = fmul double 5.000000e-01, %106, !dbg !438
  call void @fMulHandler(double 5.000000e-01, double %106, double %107, i64 0, i64 94710651721712, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94710651722224, i32 26, i32 40), !dbg !439
  %108 = fadd double %100, %107, !dbg !439
  call void @fAddHandler(double %100, double %107, double %108, i64 94710651716960, i64 94710651722224, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94710651722608, i32 26, i32 34), !dbg !440
  %109 = load double, double* %12, align 8, !dbg !440
  %110 = fadd double %109, %108, !dbg !440
  call void @fAddHandler(double %109, double %108, double %110, i64 94710651723000, i64 94710651722608, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94710651723408, i32 26, i32 7), !dbg !440
  store double %110, double* %12, align 8, !dbg !440
  %111 = load double, double* %8, align 8, !dbg !441
  %112 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !442
  %113 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %112, i32 0, i32 0, !dbg !443
  store double %111, double* %113, align 8, !dbg !444
  %114 = load double, double* %12, align 8, !dbg !445
  %115 = fmul double 0x3CB0000000000000, %114, !dbg !446
  call void @fMulHandler(double 0x3CB0000000000000, double %114, double %115, i64 0, i64 94710651726824, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94710651727232, i32 30, i32 33), !dbg !447
  %116 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !447
  %117 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %116, i32 0, i32 1, !dbg !448
  %118 = load i32, i32* %117, align 8, !dbg !448
  %119 = sext i32 %118 to i64, !dbg !449
  %120 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !449
  %121 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %120, i32 0, i32 0, !dbg !450
  %122 = load double*, double** %121, align 8, !dbg !450
  %123 = getelementptr inbounds double, double* %122, i64 %119, !dbg !449
  %124 = load double, double* %123, align 8, !dbg !449
  %125 = call double @fabs(double %124) #1, !dbg !451
  %126 = fadd double %115, %125, !dbg !452
  call void @fAddHandler(double %115, double %125, double %126, i64 94710651727232, i64 94710651734560, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94710651735040, i32 30, i32 37), !dbg !453
  %127 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !453
  %128 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %127, i32 0, i32 1, !dbg !454
  store double %126, double* %128, align 8, !dbg !455
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

; <label>:18:                                     ; preds = %58, %4
  %19 = load i32, i32* %11, align 4, !dbg !479
  %20 = load i32, i32* %5, align 4, !dbg !482
  %21 = icmp sle i32 %19, %20, !dbg !483
  %22 = sext i32 %19 to i64, !dbg !484
  %23 = sext i32 %20 to i64, !dbg !484
  %24 = call i1 @iCmpInstHandler(i64 %22, i64 %23, i1 %21, i32 41, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @5, i32 0, i32 0), i64 94710651752832, i32 151, i32 13), !dbg !484
  br i1 %24, label %25, label %61, !dbg !484

; <label>:25:                                     ; preds = %18
  call void @llvm.dbg.declare(metadata double* %12, metadata !485, metadata !83), !dbg !487
  store double 1.000000e+00, double* %12, align 8, !dbg !487
  call void @llvm.dbg.declare(metadata double* %13, metadata !488, metadata !83), !dbg !489
  %26 = load double, double* %9, align 8, !dbg !490
  %27 = load double, double* %8, align 8, !dbg !491
  %28 = fmul double %26, %27, !dbg !492
  call void @fMulHandler(double %26, double %27, double %28, i64 94710651757768, i64 94710651758120, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @5, i32 0, i32 0), i64 94710651758528, i32 153, i32 25), !dbg !493
  %29 = fdiv double 1.000000e+00, %28, !dbg !493
  call void @fDivHandler(double 1.000000e+00, double %28, double %29, i64 0, i64 94710651758528, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @5, i32 0, i32 0), i64 94710651758976, i32 153, i32 21), !dbg !489
  store double %29, double* %13, align 8, !dbg !489
  call void @llvm.dbg.declare(metadata double* %14, metadata !494, metadata !83), !dbg !495
  store double 1.000000e+00, double* %14, align 8, !dbg !495
  call void @llvm.dbg.declare(metadata i32* %15, metadata !496, metadata !83), !dbg !497
  store i32 1, i32* %15, align 4, !dbg !498
  br label %30, !dbg !500

; <label>:30:                                     ; preds = %46, %25
  %31 = load i32, i32* %15, align 4, !dbg !501
  %32 = load i32, i32* %6, align 4, !dbg !504
  %33 = icmp sle i32 %31, %32, !dbg !505
  %34 = sext i32 %31 to i64, !dbg !506
  %35 = sext i32 %32 to i64, !dbg !506
  %36 = call i1 @iCmpInstHandler(i64 %34, i64 %35, i1 %33, i32 41, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @5, i32 0, i32 0), i64 94710651766544, i32 156, i32 15), !dbg !506
  br i1 %36, label %37, label %49, !dbg !506

; <label>:37:                                     ; preds = %30
  %38 = load double, double* %12, align 8, !dbg !507
  %39 = load double, double* %14, align 8, !dbg !509
  %40 = fmul double %38, %39, !dbg !510
  call void @fMulHandler(double %38, double %39, double %40, i64 94710651767656, i64 94710651767976, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @5, i32 0, i32 0), i64 94710651768384, i32 157, i32 18), !dbg !511
  %41 = load double, double* %13, align 8, !dbg !511
  %42 = fmul double %40, %41, !dbg !512
  call void @fMulHandler(double %40, double %41, double %42, i64 94710651768384, i64 94710651768776, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @5, i32 0, i32 0), i64 94710651769184, i32 157, i32 22), !dbg !513
  %43 = fadd double %42, 1.000000e+00, !dbg !513
  call void @fAddHandler(double %42, double 1.000000e+00, double %43, i64 94710651769184, i64 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @5, i32 0, i32 0), i64 94710651769632, i32 157, i32 26), !dbg !514
  store double %43, double* %12, align 8, !dbg !514
  %44 = load double, double* %14, align 8, !dbg !515
  %45 = fadd double %44, 1.000000e+00, !dbg !515
  call void @fAddHandler(double %44, double 1.000000e+00, double %45, i64 94710651770408, i64 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @5, i32 0, i32 0), i64 94710651770848, i32 158, i32 11), !dbg !515
  store double %45, double* %14, align 8, !dbg !515
  br label %46, !dbg !516

; <label>:46:                                     ; preds = %37
  %47 = load i32, i32* %15, align 4, !dbg !517
  %48 = add nsw i32 %47, 1, !dbg !517
  store i32 %48, i32* %15, align 4, !dbg !517
  br label %30, !dbg !519, !llvm.loop !520

; <label>:49:                                     ; preds = %30
  %50 = load double, double* %7, align 8, !dbg !522
  %51 = load double, double* %10, align 8, !dbg !523
  %52 = fmul double %51, %50, !dbg !523
  call void @fMulHandler(double %51, double %50, double %52, i64 94710651776248, i64 94710651775928, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @5, i32 0, i32 0), i64 94710651776656, i32 160, i32 12), !dbg !523
  store double %52, double* %10, align 8, !dbg !523
  %53 = load double, double* %12, align 8, !dbg !524
  %54 = load double, double* %10, align 8, !dbg !525
  %55 = fadd double %54, %53, !dbg !525
  call void @fAddHandler(double %54, double %53, double %55, i64 94710651778824, i64 94710651778440, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @5, i32 0, i32 0), i64 94710651779232, i32 161, i32 12), !dbg !525
  store double %55, double* %10, align 8, !dbg !525
  %56 = load double, double* %9, align 8, !dbg !526
  %57 = fsub double %56, 1.000000e+00, !dbg !526
  call void @fSubHandler(double %56, double 1.000000e+00, double %57, i64 94710651781016, i64 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @5, i32 0, i32 0), i64 94710651781456, i32 162, i32 8), !dbg !526
  store double %57, double* %9, align 8, !dbg !526
  br label %58, !dbg !527

; <label>:58:                                     ; preds = %49
  %59 = load i32, i32* %11, align 4, !dbg !528
  %60 = add nsw i32 %59, 1, !dbg !528
  store i32 %60, i32* %11, align 4, !dbg !528
  br label %18, !dbg !530, !llvm.loop !531

; <label>:61:                                     ; preds = %18
  %62 = load double, double* %10, align 8, !dbg !533
  ret double %62, !dbg !534
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
  %22 = call i1 @fCmpInstHandler(double %20, double 0.000000e+00, i1 %21, i32 4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @7, i32 0, i32 0), i64 94710651795952, i32 247, i32 8), !dbg !545
  br i1 %22, label %23, label %32, !dbg !545

; <label>:23:                                     ; preds = %2
  br label %24, !dbg !546, !llvm.loop !548

; <label>:24:                                     ; preds = %23
  %25 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !549
  %26 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %25, i32 0, i32 0, !dbg !549
  store double 0x7FF8000000000000, double* %26, align 8, !dbg !549
  %27 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !549
  %28 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %27, i32 0, i32 1, !dbg !549
  store double 0x7FF8000000000000, double* %28, align 8, !dbg !549
  br label %29, !dbg !549, !llvm.loop !552

; <label>:29:                                     ; preds = %24
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 248, i32 1), !dbg !554
  store i32 1, i32* %3, align 4, !dbg !554
  br label %221, !dbg !554
                                                  ; No predecessors!
  br label %31, !dbg !557

; <label>:31:                                     ; preds = %30
  br label %221, !dbg !559

; <label>:32:                                     ; preds = %2
  %33 = load double, double* %4, align 8, !dbg !560
  %34 = fcmp oeq double %33, 0.000000e+00, !dbg !562
  %35 = call i1 @fCmpInstHandler(double %33, double 0.000000e+00, i1 %34, i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @7, i32 0, i32 0), i64 94710651804560, i32 250, i32 13), !dbg !563
  br i1 %35, label %36, label %41, !dbg !563

; <label>:36:                                     ; preds = %32
  %37 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !564
  %38 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %37, i32 0, i32 0, !dbg !566
  store double 0.000000e+00, double* %38, align 8, !dbg !567
  %39 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !568
  %40 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %39, i32 0, i32 1, !dbg !569
  store double 0.000000e+00, double* %40, align 8, !dbg !570
  store i32 0, i32* %3, align 4, !dbg !571
  br label %221, !dbg !571

; <label>:41:                                     ; preds = %32
  %42 = load double, double* %4, align 8, !dbg !572
  %43 = fcmp olt double %42, 0x3E68000000000000, !dbg !574
  %44 = call i1 @fCmpInstHandler(double %42, double 0x3E68000000000000, i1 %43, i32 4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @7, i32 0, i32 0), i64 94710651810512, i32 255, i32 13), !dbg !575
  br i1 %44, label %45, label %68, !dbg !575

; <label>:45:                                     ; preds = %41
  %46 = load double, double* %4, align 8, !dbg !576
  %47 = fmul double 5.000000e-01, %46, !dbg !578
  call void @fMulHandler(double 5.000000e-01, double %46, double %47, i64 0, i64 94710651811624, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @7, i32 0, i32 0), i64 94710651812000, i32 256, i32 22), !dbg !579
  %48 = load double, double* %4, align 8, !dbg !579
  %49 = fmul double %47, %48, !dbg !580
  call void @fMulHandler(double %47, double %48, double %49, i64 94710651812000, i64 94710651812360, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @7, i32 0, i32 0), i64 94710651812768, i32 256, i32 24), !dbg !581
  %50 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !581
  %51 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %50, i32 0, i32 0, !dbg !582
  store double %49, double* %51, align 8, !dbg !583
  %52 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !584
  %53 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %52, i32 0, i32 0, !dbg !585
  %54 = load double, double* %53, align 8, !dbg !585
  %55 = fmul double 0x3CC0000000000000, %54, !dbg !586
  call void @fMulHandler(double 0x3CC0000000000000, double %54, double %55, i64 0, i64 94710651815240, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @7, i32 0, i32 0), i64 94710651816912, i32 257, i32 41), !dbg !587
  %56 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !587
  %57 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %56, i32 0, i32 1, !dbg !588
  store double %55, double* %57, align 8, !dbg !589
  %58 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !590
  %59 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %58, i32 0, i32 0, !dbg !590
  %60 = load double, double* %59, align 8, !dbg !590
  %61 = call double @fabs(double %60) #1, !dbg !590
  %62 = fcmp olt double %61, 0x10000000000000, !dbg !590
  %63 = call i1 @fCmpInstHandler(double %61, double 0x10000000000000, i1 %62, i32 4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @7, i32 0, i32 0), i64 94710651821120, i32 258, i32 5), !dbg !592
  br i1 %63, label %64, label %67, !dbg !592

; <label>:64:                                     ; preds = %45
  br label %65, !dbg !593, !llvm.loop !595

; <label>:65:                                     ; preds = %64
  call void @gsl_error(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 258, i32 15), !dbg !596
  store i32 15, i32* %3, align 4, !dbg !596
  br label %221, !dbg !596
                                                  ; No predecessors!
  br label %67, !dbg !599

; <label>:67:                                     ; preds = %66, %45
  store i32 0, i32* %3, align 4, !dbg !601
  br label %221, !dbg !601

; <label>:68:                                     ; preds = %41
  %69 = load double, double* %4, align 8, !dbg !602
  %70 = fcmp ole double %69, 4.000000e+00, !dbg !604
  %71 = call i1 @fCmpInstHandler(double %69, double 4.000000e+00, i1 %70, i32 5, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @7, i32 0, i32 0), i64 94710651828048, i32 261, i32 13), !dbg !605
  br i1 %71, label %72, label %103, !dbg !605

; <label>:72:                                     ; preds = %68
  call void @llvm.dbg.declare(metadata double* %7, metadata !606, metadata !83), !dbg !608
  %73 = load double, double* %4, align 8, !dbg !609
  %74 = load double, double* %4, align 8, !dbg !610
  %75 = fmul double %73, %74, !dbg !611
  call void @fMulHandler(double %73, double %74, double %75, i64 94710651830184, i64 94710651830536, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @7, i32 0, i32 0), i64 94710651830944, i32 262, i32 24), !dbg !608
  store double %75, double* %7, align 8, !dbg !608
  call void @llvm.dbg.declare(metadata double* %8, metadata !612, metadata !83), !dbg !613
  %76 = load double, double* %7, align 8, !dbg !614
  %77 = fdiv double %76, 8.000000e+00, !dbg !615
  call void @fDivHandler(double %76, double 8.000000e+00, double %77, i64 94710651834136, i64 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @7, i32 0, i32 0), i64 94710651834544, i32 263, i32 25), !dbg !616
  %78 = fsub double %77, 5.000000e-01, !dbg !616
  call void @fSubHandler(double %77, double 5.000000e-01, double %78, i64 94710651834544, i64 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @7, i32 0, i32 0), i64 94710651834960, i32 263, i32 30), !dbg !617
  %79 = fsub double %78, 5.000000e-01, !dbg !617
  call void @fSubHandler(double %78, double 5.000000e-01, double %79, i64 94710651834960, i64 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @7, i32 0, i32 0), i64 94710651835376, i32 263, i32 37), !dbg !613
  store double %79, double* %8, align 8, !dbg !613
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %9, metadata !618, metadata !83), !dbg !619
  %80 = load double, double* %8, align 8, !dbg !620
  %81 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @transport3_cs, double %80, %struct.gsl_sf_result_struct* %9), !dbg !621
  %82 = load double, double* %7, align 8, !dbg !622
  %83 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %9, i32 0, i32 0, !dbg !623
  %84 = load double, double* %83, align 8, !dbg !623
  %85 = fmul double %82, %84, !dbg !624
  call void @fMulHandler(double %82, double %84, double %85, i64 94710651839480, i64 94710651840280, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @7, i32 0, i32 0), i64 94710651841952, i32 266, i32 23), !dbg !625
  %86 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !625
  %87 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %86, i32 0, i32 0, !dbg !626
  store double %85, double* %87, align 8, !dbg !627
  %88 = load double, double* %7, align 8, !dbg !628
  %89 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %9, i32 0, i32 1, !dbg !629
  %90 = load double, double* %89, align 8, !dbg !629
  %91 = fmul double %88, %90, !dbg !630
  call void @fMulHandler(double %88, double %90, double %91, i64 94710651843592, i64 94710651844424, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @7, i32 0, i32 0), i64 94710651846096, i32 267, i32 23), !dbg !631
  %92 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !631
  %93 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %92, i32 0, i32 1, !dbg !632
  store double %91, double* %93, align 8, !dbg !633
  %94 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !634
  %95 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %94, i32 0, i32 0, !dbg !635
  %96 = load double, double* %95, align 8, !dbg !635
  %97 = call double @fabs(double %96) #1, !dbg !636
  %98 = fmul double 0x3CB0000000000000, %97, !dbg !637
  call void @fMulHandler(double 0x3CB0000000000000, double %97, double %98, i64 0, i64 94710651850304, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @7, i32 0, i32 0), i64 94710651850784, i32 268, i32 36), !dbg !638
  %99 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !638
  %100 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %99, i32 0, i32 1, !dbg !639
  %101 = load double, double* %100, align 8, !dbg !640
  %102 = fadd double %101, %98, !dbg !640
  call void @fAddHandler(double %101, double %98, double %102, i64 94710651852008, i64 94710651850784, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @7, i32 0, i32 0), i64 94710651852416, i32 268, i32 17), !dbg !640
  store double %102, double* %100, align 8, !dbg !640
  store i32 0, i32* %3, align 4, !dbg !641
  br label %221, !dbg !641

; <label>:103:                                    ; preds = %68
  %104 = load double, double* %4, align 8, !dbg !642
  %105 = fcmp olt double %104, 0x404205966F2B4F12, !dbg !644
  %106 = call i1 @fCmpInstHandler(double %104, double 0x404205966F2B4F12, i1 %105, i32 4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @7, i32 0, i32 0), i64 94710651856608, i32 271, i32 13), !dbg !645
  br i1 %106, label %107, label %150, !dbg !645

; <label>:107:                                    ; preds = %103
  call void @llvm.dbg.declare(metadata i32* %10, metadata !646, metadata !83), !dbg !648
  %108 = load double, double* %4, align 8, !dbg !649
  %109 = fdiv double 0x404205966F2B4F12, %108, !dbg !650
  call void @fDivHandler(double 0x404205966F2B4F12, double %108, double %109, i64 0, i64 94710651858776, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @7, i32 0, i32 0), i64 94710651859152, i32 272, i32 55), !dbg !651
  %110 = fptosi double %109 to i32, !dbg !651
  %111 = add nsw i32 %110, 1, !dbg !652
  store i32 %111, i32* %10, align 4, !dbg !648
  call void @llvm.dbg.declare(metadata double* %11, metadata !653, metadata !83), !dbg !654
  %112 = load i32, i32* %10, align 4, !dbg !655
  %113 = load double, double* %4, align 8, !dbg !656
  %114 = fsub double -0.000000e+00, %113, !dbg !657
  call void @fSubHandler(double -0.000000e+00, double %113, double %114, i64 0, i64 94710651863496, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @7, i32 0, i32 0), i64 94710651863904, i32 273, i32 59), !dbg !658
  %115 = call double @exp(double %114) #6, !dbg !658
  call void @callOneArgHandler(i32 11, double %114, double %115, i64 94710651863904, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @7, i32 0, i32 0), i64 94710651864384, i32 273, i32 55), !dbg !659
  %116 = load double, double* %4, align 8, !dbg !659
  %117 = call double @transport_sumexp(i32 %112, i32 3, double %115, double %116), !dbg !660
  store double %117, double* %11, align 8, !dbg !654
  call void @llvm.dbg.declare(metadata double* %12, metadata !662, metadata !83), !dbg !663
  %118 = load double, double* %4, align 8, !dbg !664
  %119 = call double @log(double %118) #6, !dbg !665
  call void @callOneArgHandler(i32 12, double %118, double %119, i64 94710651868600, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @7, i32 0, i32 0), i64 94710651869040, i32 274, i32 28), !dbg !666
  %120 = fmul double 3.000000e+00, %119, !dbg !666
  call void @fMulHandler(double 3.000000e+00, double %119, double %120, i64 0, i64 94710651869040, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @7, i32 0, i32 0), i64 94710651869616, i32 274, i32 26), !dbg !667
  %121 = load double, double* %4, align 8, !dbg !667
  %122 = fsub double %120, %121, !dbg !668
  call void @fSubHandler(double %120, double %121, double %122, i64 94710651869616, i64 94710651869976, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @7, i32 0, i32 0), i64 94710651870384, i32 274, i32 35), !dbg !669
  %123 = load double, double* %11, align 8, !dbg !669
  %124 = call double @log(double %123) #6, !dbg !670
  call void @callOneArgHandler(i32 12, double %123, double %124, i64 94710651870776, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @7, i32 0, i32 0), i64 94710651871248, i32 274, i32 41), !dbg !671
  %125 = fadd double %122, %124, !dbg !671
  call void @fAddHandler(double %122, double %124, double %125, i64 94710651870384, i64 94710651871248, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @7, i32 0, i32 0), i64 94710651871728, i32 274, i32 39), !dbg !663
  store double %125, double* %12, align 8, !dbg !663
  %126 = load double, double* %12, align 8, !dbg !672
  %127 = fcmp olt double %126, 0xC04205966F2B4F12, !dbg !674
  %128 = call i1 @fCmpInstHandler(double %126, double 0xC04205966F2B4F12, i1 %127, i32 4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @7, i32 0, i32 0), i64 94710651874208, i32 275, i32 10), !dbg !675
  br i1 %128, label %129, label %134, !dbg !675

; <label>:129:                                    ; preds = %107
  %130 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !676
  %131 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %130, i32 0, i32 0, !dbg !678
  store double 0x401CD97007680932, double* %131, align 8, !dbg !679
  %132 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !680
  %133 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %132, i32 0, i32 1, !dbg !681
  store double 0x3CECD97007680932, double* %133, align 8, !dbg !682
  br label %149, !dbg !683

; <label>:134:                                    ; preds = %107
  call void @llvm.dbg.declare(metadata double* %13, metadata !684, metadata !83), !dbg !686
  %135 = load double, double* %12, align 8, !dbg !687
  %136 = call double @exp(double %135) #6, !dbg !688
  call void @callOneArgHandler(i32 11, double %135, double %136, i64 94710651879400, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @7, i32 0, i32 0), i64 94710651881904, i32 280, i32 25), !dbg !686
  store double %136, double* %13, align 8, !dbg !686
  %137 = load double, double* %13, align 8, !dbg !689
  %138 = fsub double 0x401CD97007680932, %137, !dbg !690
  call void @fSubHandler(double 0x401CD97007680932, double %137, double %138, i64 0, i64 94710651884040, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @7, i32 0, i32 0), i64 94710651884448, i32 281, i32 34), !dbg !691
  %139 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !691
  %140 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %139, i32 0, i32 0, !dbg !692
  store double %138, double* %140, align 8, !dbg !693
  %141 = load double, double* %12, align 8, !dbg !694
  %142 = call double @fabs(double %141) #1, !dbg !695
  %143 = load double, double* %13, align 8, !dbg !696
  %144 = fmul double %142, %143, !dbg !697
  call void @fMulHandler(double %142, double %143, double %144, i64 94710651886560, i64 94710651887016, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @7, i32 0, i32 0), i64 94710651887424, i32 282, i32 69), !dbg !698
  %145 = fadd double 0x401CD97007680932, %144, !dbg !698
  call void @fAddHandler(double 0x401CD97007680932, double %144, double %145, i64 0, i64 94710651887424, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @7, i32 0, i32 0), i64 94710651887840, i32 282, i32 59), !dbg !699
  %146 = fmul double 0x3CC0000000000000, %145, !dbg !699
  call void @fMulHandler(double 0x3CC0000000000000, double %145, double %146, i64 0, i64 94710651887840, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @7, i32 0, i32 0), i64 94710651888256, i32 282, i32 43), !dbg !700
  %147 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !700
  %148 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %147, i32 0, i32 1, !dbg !701
  store double %146, double* %148, align 8, !dbg !702
  br label %149

; <label>:149:                                    ; preds = %134, %129
  store i32 0, i32* %3, align 4, !dbg !703
  br label %221, !dbg !703

; <label>:150:                                    ; preds = %103
  %151 = load double, double* %4, align 8, !dbg !704
  %152 = fcmp olt double %151, 0x4348000000000000, !dbg !706
  %153 = call i1 @fCmpInstHandler(double %151, double 0x4348000000000000, i1 %152, i32 4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @7, i32 0, i32 0), i64 94710651892400, i32 286, i32 13), !dbg !707
  br i1 %153, label %154, label %190, !dbg !707

; <label>:154:                                    ; preds = %150
  call void @llvm.dbg.declare(metadata i32* %14, metadata !708, metadata !83), !dbg !710
  store i32 1, i32* %14, align 4, !dbg !710
  call void @llvm.dbg.declare(metadata double* %15, metadata !711, metadata !83), !dbg !712
  %155 = load double, double* %4, align 8, !dbg !713
  %156 = call double @transport_sumexp(i32 1, i32 3, double 1.000000e+00, double %155), !dbg !714
  store double %156, double* %15, align 8, !dbg !712
  call void @llvm.dbg.declare(metadata double* %16, metadata !715, metadata !83), !dbg !716
  %157 = load double, double* %4, align 8, !dbg !717
  %158 = call double @log(double %157) #6, !dbg !718
  call void @callOneArgHandler(i32 12, double %157, double %158, i64 94710651905176, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @7, i32 0, i32 0), i64 94710651905616, i32 289, i32 28), !dbg !719
  %159 = fmul double 3.000000e+00, %158, !dbg !719
  call void @fMulHandler(double 3.000000e+00, double %158, double %159, i64 0, i64 94710651905616, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @7, i32 0, i32 0), i64 94710651906128, i32 289, i32 26), !dbg !720
  %160 = load double, double* %4, align 8, !dbg !720
  %161 = fsub double %159, %160, !dbg !721
  call void @fSubHandler(double %159, double %160, double %161, i64 94710651906128, i64 94710651906488, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @7, i32 0, i32 0), i64 94710651906896, i32 289, i32 35), !dbg !722
  %162 = load double, double* %15, align 8, !dbg !722
  %163 = call double @log(double %162) #6, !dbg !723
  call void @callOneArgHandler(i32 12, double %162, double %163, i64 94710651907288, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @7, i32 0, i32 0), i64 94710651907760, i32 289, i32 41), !dbg !725
  %164 = fadd double %161, %163, !dbg !725
  call void @fAddHandler(double %161, double %163, double %164, i64 94710651906896, i64 94710651907760, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @7, i32 0, i32 0), i64 94710651908240, i32 289, i32 39), !dbg !716
  store double %164, double* %16, align 8, !dbg !716
  %165 = load double, double* %16, align 8, !dbg !726
  %166 = fcmp olt double %165, 0xC04205966F2B4F12, !dbg !728
  %167 = call i1 @fCmpInstHandler(double %165, double 0xC04205966F2B4F12, i1 %166, i32 4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @7, i32 0, i32 0), i64 94710651910720, i32 290, i32 10), !dbg !729
  br i1 %167, label %168, label %173, !dbg !729

; <label>:168:                                    ; preds = %154
  %169 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !730
  %170 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %169, i32 0, i32 0, !dbg !732
  store double 0x401CD97007680932, double* %170, align 8, !dbg !733
  %171 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !734
  %172 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %171, i32 0, i32 1, !dbg !735
  store double 0x3CECD97007680932, double* %172, align 8, !dbg !736
  br label %189, !dbg !737

; <label>:173:                                    ; preds = %154
  call void @llvm.dbg.declare(metadata double* %17, metadata !738, metadata !83), !dbg !740
  %174 = load double, double* %16, align 8, !dbg !741
  %175 = call double @exp(double %174) #6, !dbg !742
  call void @callOneArgHandler(i32 11, double %174, double %175, i64 94710651915848, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @7, i32 0, i32 0), i64 94710651916288, i32 295, i32 25), !dbg !740
  store double %175, double* %17, align 8, !dbg !740
  %176 = load double, double* %17, align 8, !dbg !743
  %177 = fsub double 0x401CD97007680932, %176, !dbg !744
  call void @fSubHandler(double 0x401CD97007680932, double %176, double %177, i64 0, i64 94710651918424, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @7, i32 0, i32 0), i64 94710651918832, i32 296, i32 34), !dbg !745
  %178 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !745
  %179 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %178, i32 0, i32 0, !dbg !746
  store double %177, double* %179, align 8, !dbg !747
  %180 = load double, double* %16, align 8, !dbg !748
  %181 = call double @fabs(double %180) #1, !dbg !749
  %182 = fadd double %181, 1.000000e+00, !dbg !750
  call void @fAddHandler(double %181, double 1.000000e+00, double %182, i64 94710651920944, i64 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @7, i32 0, i32 0), i64 94710651921456, i32 297, i32 69), !dbg !751
  %183 = load double, double* %17, align 8, !dbg !751
  %184 = fmul double %182, %183, !dbg !752
  call void @fMulHandler(double %182, double %183, double %184, i64 94710651921456, i64 94710651921816, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @7, i32 0, i32 0), i64 94710651922224, i32 297, i32 75), !dbg !753
  %185 = fadd double 0x401CD97007680932, %184, !dbg !753
  call void @fAddHandler(double 0x401CD97007680932, double %184, double %185, i64 0, i64 94710651922224, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @7, i32 0, i32 0), i64 94710651922640, i32 297, i32 59), !dbg !754
  %186 = fmul double 0x3CC0000000000000, %185, !dbg !754
  call void @fMulHandler(double 0x3CC0000000000000, double %185, double %186, i64 0, i64 94710651922640, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @7, i32 0, i32 0), i64 94710651923056, i32 297, i32 43), !dbg !755
  %187 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !755
  %188 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %187, i32 0, i32 1, !dbg !756
  store double %186, double* %188, align 8, !dbg !757
  br label %189

; <label>:189:                                    ; preds = %173, %168
  store i32 0, i32* %3, align 4, !dbg !758
  br label %221, !dbg !758

; <label>:190:                                    ; preds = %150
  call void @llvm.dbg.declare(metadata double* %18, metadata !759, metadata !83), !dbg !761
  %191 = load double, double* %4, align 8, !dbg !762
  %192 = call double @log(double %191) #6, !dbg !763
  call void @callOneArgHandler(i32 12, double %191, double %192, i64 94710651927848, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @7, i32 0, i32 0), i64 94710651928288, i32 302, i32 28), !dbg !764
  %193 = fmul double 3.000000e+00, %192, !dbg !764
  call void @fMulHandler(double 3.000000e+00, double %192, double %193, i64 0, i64 94710651928288, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @7, i32 0, i32 0), i64 94710651928800, i32 302, i32 26), !dbg !765
  %194 = load double, double* %4, align 8, !dbg !765
  %195 = fsub double %193, %194, !dbg !766
  call void @fSubHandler(double %193, double %194, double %195, i64 94710651928800, i64 94710651929160, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @7, i32 0, i32 0), i64 94710651929568, i32 302, i32 35), !dbg !761
  store double %195, double* %18, align 8, !dbg !761
  %196 = load double, double* %18, align 8, !dbg !767
  %197 = fcmp olt double %196, 0xC04205966F2B4F12, !dbg !769
  %198 = call i1 @fCmpInstHandler(double %196, double 0xC04205966F2B4F12, i1 %197, i32 4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @7, i32 0, i32 0), i64 94710651932048, i32 303, i32 10), !dbg !770
  br i1 %198, label %199, label %204, !dbg !770

; <label>:199:                                    ; preds = %190
  %200 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !771
  %201 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %200, i32 0, i32 0, !dbg !773
  store double 0x401CD97007680932, double* %201, align 8, !dbg !774
  %202 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !775
  %203 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %202, i32 0, i32 1, !dbg !776
  store double 0x3CECD97007680932, double* %203, align 8, !dbg !777
  br label %220, !dbg !778

; <label>:204:                                    ; preds = %190
  call void @llvm.dbg.declare(metadata double* %19, metadata !779, metadata !83), !dbg !781
  %205 = load double, double* %18, align 8, !dbg !782
  %206 = call double @exp(double %205) #6, !dbg !783
  call void @callOneArgHandler(i32 11, double %205, double %206, i64 94710651937176, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @7, i32 0, i32 0), i64 94710651937616, i32 308, i32 25), !dbg !781
  store double %206, double* %19, align 8, !dbg !781
  %207 = load double, double* %19, align 8, !dbg !784
  %208 = fsub double 0x401CD97007680932, %207, !dbg !785
  call void @fSubHandler(double 0x401CD97007680932, double %207, double %208, i64 0, i64 94710651939752, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @7, i32 0, i32 0), i64 94710651940160, i32 309, i32 34), !dbg !786
  %209 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !786
  %210 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %209, i32 0, i32 0, !dbg !787
  store double %208, double* %210, align 8, !dbg !788
  %211 = load double, double* %18, align 8, !dbg !789
  %212 = call double @fabs(double %211) #1, !dbg !790
  %213 = fadd double %212, 1.000000e+00, !dbg !791
  call void @fAddHandler(double %212, double 1.000000e+00, double %213, i64 94710651942272, i64 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @7, i32 0, i32 0), i64 94710651942784, i32 310, i32 69), !dbg !792
  %214 = load double, double* %19, align 8, !dbg !792
  %215 = fmul double %213, %214, !dbg !793
  call void @fMulHandler(double %213, double %214, double %215, i64 94710651942784, i64 94710651943144, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @7, i32 0, i32 0), i64 94710651943552, i32 310, i32 75), !dbg !794
  %216 = fadd double 0x401CD97007680932, %215, !dbg !794
  call void @fAddHandler(double 0x401CD97007680932, double %215, double %216, i64 0, i64 94710651943552, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @7, i32 0, i32 0), i64 94710651943968, i32 310, i32 59), !dbg !795
  %217 = fmul double 0x3CC0000000000000, %216, !dbg !795
  call void @fMulHandler(double 0x3CC0000000000000, double %216, double %217, i64 0, i64 94710651943968, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @7, i32 0, i32 0), i64 94710651944384, i32 310, i32 43), !dbg !796
  %218 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !796
  %219 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %218, i32 0, i32 1, !dbg !797
  store double %217, double* %219, align 8, !dbg !798
  br label %220

; <label>:220:                                    ; preds = %204, %199
  store i32 0, i32* %3, align 4, !dbg !799
  br label %221, !dbg !799

; <label>:221:                                    ; preds = %220, %189, %149, %72, %67, %65, %36, %31, %29
  %222 = load i32, i32* %3, align 4, !dbg !800
  ret i32 %222, !dbg !800
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
  %22 = call i1 @fCmpInstHandler(double %20, double 0.000000e+00, i1 %21, i32 4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @9, i32 0, i32 0), i64 94710651957280, i32 324, i32 8), !dbg !811
  br i1 %22, label %23, label %32, !dbg !811

; <label>:23:                                     ; preds = %2
  br label %24, !dbg !812, !llvm.loop !814

; <label>:24:                                     ; preds = %23
  %25 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !815
  %26 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %25, i32 0, i32 0, !dbg !815
  store double 0x7FF8000000000000, double* %26, align 8, !dbg !815
  %27 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !815
  %28 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %27, i32 0, i32 1, !dbg !815
  store double 0x7FF8000000000000, double* %28, align 8, !dbg !815
  br label %29, !dbg !815, !llvm.loop !818

; <label>:29:                                     ; preds = %24
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 325, i32 1), !dbg !820
  store i32 1, i32* %3, align 4, !dbg !820
  br label %228, !dbg !820
                                                  ; No predecessors!
  br label %31, !dbg !823

; <label>:31:                                     ; preds = %30
  br label %228, !dbg !825

; <label>:32:                                     ; preds = %2
  %33 = load double, double* %4, align 8, !dbg !826
  %34 = fcmp oeq double %33, 0.000000e+00, !dbg !828
  %35 = call i1 @fCmpInstHandler(double %33, double 0.000000e+00, i1 %34, i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @9, i32 0, i32 0), i64 94710651965984, i32 327, i32 13), !dbg !829
  br i1 %35, label %36, label %41, !dbg !829

; <label>:36:                                     ; preds = %32
  %37 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !830
  %38 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %37, i32 0, i32 0, !dbg !832
  store double 0.000000e+00, double* %38, align 8, !dbg !833
  %39 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !834
  %40 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %39, i32 0, i32 1, !dbg !835
  store double 0.000000e+00, double* %40, align 8, !dbg !836
  store i32 0, i32* %3, align 4, !dbg !837
  br label %228, !dbg !837

; <label>:41:                                     ; preds = %32
  %42 = load double, double* %4, align 8, !dbg !838
  %43 = fcmp olt double %42, 0x3E68000000000000, !dbg !840
  %44 = call i1 @fCmpInstHandler(double %42, double 0x3E68000000000000, i1 %43, i32 4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @9, i32 0, i32 0), i64 94710651971936, i32 332, i32 13), !dbg !841
  br i1 %44, label %45, label %70, !dbg !841

; <label>:45:                                     ; preds = %41
  %46 = load double, double* %4, align 8, !dbg !842
  %47 = load double, double* %4, align 8, !dbg !844
  %48 = fmul double %46, %47, !dbg !845
  call void @fMulHandler(double %46, double %47, double %48, i64 94710651973048, i64 94710651973368, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @9, i32 0, i32 0), i64 94710651973776, i32 333, i32 20), !dbg !846
  %49 = load double, double* %4, align 8, !dbg !846
  %50 = fmul double %48, %49, !dbg !847
  call void @fMulHandler(double %48, double %49, double %50, i64 94710651973776, i64 94710651974168, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @9, i32 0, i32 0), i64 94710651974576, i32 333, i32 22), !dbg !848
  %51 = fdiv double %50, 3.000000e+00, !dbg !848
  call void @fDivHandler(double %50, double 3.000000e+00, double %51, i64 94710651974576, i64 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @9, i32 0, i32 0), i64 94710651975024, i32 333, i32 24), !dbg !849
  %52 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !849
  %53 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %52, i32 0, i32 0, !dbg !850
  store double %51, double* %53, align 8, !dbg !851
  %54 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !852
  %55 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %54, i32 0, i32 0, !dbg !853
  %56 = load double, double* %55, align 8, !dbg !853
  %57 = fmul double 0x3CC8000000000000, %56, !dbg !854
  call void @fMulHandler(double 0x3CC8000000000000, double %56, double %57, i64 0, i64 94710651977464, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @9, i32 0, i32 0), i64 94710651979200, i32 334, i32 41), !dbg !855
  %58 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !855
  %59 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %58, i32 0, i32 1, !dbg !856
  store double %57, double* %59, align 8, !dbg !857
  %60 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !858
  %61 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %60, i32 0, i32 0, !dbg !858
  %62 = load double, double* %61, align 8, !dbg !858
  %63 = call double @fabs(double %62) #1, !dbg !858
  %64 = fcmp olt double %63, 0x10000000000000, !dbg !858
  %65 = call i1 @fCmpInstHandler(double %63, double 0x10000000000000, i1 %64, i32 4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @9, i32 0, i32 0), i64 94710651983344, i32 335, i32 5), !dbg !860
  br i1 %65, label %66, label %69, !dbg !860

; <label>:66:                                     ; preds = %45
  br label %67, !dbg !861, !llvm.loop !863

; <label>:67:                                     ; preds = %66
  call void @gsl_error(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 335, i32 15), !dbg !864
  store i32 15, i32* %3, align 4, !dbg !864
  br label %228, !dbg !864
                                                  ; No predecessors!
  br label %69, !dbg !867

; <label>:69:                                     ; preds = %68, %45
  store i32 0, i32* %3, align 4, !dbg !869
  br label %228, !dbg !869

; <label>:70:                                     ; preds = %41
  %71 = load double, double* %4, align 8, !dbg !870
  %72 = fcmp ole double %71, 4.000000e+00, !dbg !872
  %73 = call i1 @fCmpInstHandler(double %71, double 4.000000e+00, i1 %72, i32 5, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @9, i32 0, i32 0), i64 94710651990080, i32 338, i32 13), !dbg !873
  br i1 %73, label %74, label %109, !dbg !873

; <label>:74:                                     ; preds = %70
  call void @llvm.dbg.declare(metadata double* %7, metadata !874, metadata !83), !dbg !876
  %75 = load double, double* %4, align 8, !dbg !877
  %76 = load double, double* %4, align 8, !dbg !878
  %77 = fmul double %75, %76, !dbg !879
  call void @fMulHandler(double %75, double %76, double %77, i64 94710651992216, i64 94710651992568, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @9, i32 0, i32 0), i64 94710651992976, i32 339, i32 24), !dbg !876
  store double %77, double* %7, align 8, !dbg !876
  call void @llvm.dbg.declare(metadata double* %8, metadata !880, metadata !83), !dbg !881
  %78 = load double, double* %7, align 8, !dbg !882
  %79 = fdiv double %78, 8.000000e+00, !dbg !883
  call void @fDivHandler(double %78, double 8.000000e+00, double %79, i64 94710651996168, i64 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @9, i32 0, i32 0), i64 94710651996576, i32 340, i32 25), !dbg !884
  %80 = fsub double %79, 5.000000e-01, !dbg !884
  call void @fSubHandler(double %79, double 5.000000e-01, double %80, i64 94710651996576, i64 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @9, i32 0, i32 0), i64 94710651996992, i32 340, i32 30), !dbg !885
  %81 = fsub double %80, 5.000000e-01, !dbg !885
  call void @fSubHandler(double %80, double 5.000000e-01, double %81, i64 94710651996992, i64 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @9, i32 0, i32 0), i64 94710651997408, i32 340, i32 37), !dbg !881
  store double %81, double* %8, align 8, !dbg !881
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %9, metadata !886, metadata !83), !dbg !887
  %82 = load double, double* %8, align 8, !dbg !888
  %83 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @transport4_cs, double %82, %struct.gsl_sf_result_struct* %9), !dbg !889
  %84 = load double, double* %7, align 8, !dbg !890
  %85 = load double, double* %4, align 8, !dbg !891
  %86 = fmul double %84, %85, !dbg !892
  call void @fMulHandler(double %84, double %85, double %86, i64 94710652001512, i64 94710652001864, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @9, i32 0, i32 0), i64 94710652002272, i32 343, i32 22), !dbg !893
  %87 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %9, i32 0, i32 0, !dbg !893
  %88 = load double, double* %87, align 8, !dbg !893
  %89 = fmul double %86, %88, !dbg !894
  call void @fMulHandler(double %86, double %88, double %89, i64 94710652002272, i64 94710652003112, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @9, i32 0, i32 0), i64 94710652004784, i32 343, i32 25), !dbg !895
  %90 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !895
  %91 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %90, i32 0, i32 0, !dbg !896
  store double %89, double* %91, align 8, !dbg !897
  %92 = load double, double* %7, align 8, !dbg !898
  %93 = load double, double* %4, align 8, !dbg !899
  %94 = fmul double %92, %93, !dbg !900
  call void @fMulHandler(double %92, double %93, double %94, i64 94710652006424, i64 94710652006808, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @9, i32 0, i32 0), i64 94710652007216, i32 344, i32 22), !dbg !901
  %95 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %9, i32 0, i32 1, !dbg !901
  %96 = load double, double* %95, align 8, !dbg !901
  %97 = fmul double %94, %96, !dbg !902
  call void @fMulHandler(double %94, double %96, double %97, i64 94710652007216, i64 94710652008056, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @9, i32 0, i32 0), i64 94710652009728, i32 344, i32 25), !dbg !903
  %98 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !903
  %99 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %98, i32 0, i32 1, !dbg !904
  store double %97, double* %99, align 8, !dbg !905
  %100 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !906
  %101 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %100, i32 0, i32 0, !dbg !907
  %102 = load double, double* %101, align 8, !dbg !907
  %103 = call double @fabs(double %102) #1, !dbg !908
  %104 = fmul double 0x3CC0000000000000, %103, !dbg !909
  call void @fMulHandler(double 0x3CC0000000000000, double %103, double %104, i64 0, i64 94710652013936, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @9, i32 0, i32 0), i64 94710652014416, i32 345, i32 42), !dbg !910
  %105 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !910
  %106 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %105, i32 0, i32 1, !dbg !911
  %107 = load double, double* %106, align 8, !dbg !912
  %108 = fadd double %107, %104, !dbg !912
  call void @fAddHandler(double %107, double %104, double %108, i64 94710652015640, i64 94710652014416, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @9, i32 0, i32 0), i64 94710652016048, i32 345, i32 17), !dbg !912
  store double %108, double* %106, align 8, !dbg !912
  store i32 0, i32* %3, align 4, !dbg !913
  br label %228, !dbg !913

; <label>:109:                                    ; preds = %70
  %110 = load double, double* %4, align 8, !dbg !914
  %111 = fcmp olt double %110, 0x404205966F2B4F12, !dbg !916
  %112 = call i1 @fCmpInstHandler(double %110, double 0x404205966F2B4F12, i1 %111, i32 4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @9, i32 0, i32 0), i64 94710652020240, i32 348, i32 13), !dbg !917
  br i1 %112, label %113, label %157, !dbg !917

; <label>:113:                                    ; preds = %109
  call void @llvm.dbg.declare(metadata i32* %10, metadata !918, metadata !83), !dbg !920
  %114 = load double, double* %4, align 8, !dbg !921
  %115 = fdiv double 0x404205966F2B4F12, %114, !dbg !922
  call void @fDivHandler(double 0x404205966F2B4F12, double %114, double %115, i64 0, i64 94710652022408, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @9, i32 0, i32 0), i64 94710652022784, i32 349, i32 55), !dbg !923
  %116 = fptosi double %115 to i32, !dbg !923
  %117 = add nsw i32 %116, 1, !dbg !924
  store i32 %117, i32* %10, align 4, !dbg !920
  call void @llvm.dbg.declare(metadata double* %11, metadata !925, metadata !83), !dbg !926
  %118 = load i32, i32* %10, align 4, !dbg !927
  %119 = load double, double* %4, align 8, !dbg !928
  %120 = fsub double -0.000000e+00, %119, !dbg !929
  call void @fSubHandler(double -0.000000e+00, double %119, double %120, i64 0, i64 94710652027128, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @9, i32 0, i32 0), i64 94710652027536, i32 350, i32 59), !dbg !930
  %121 = call double @exp(double %120) #6, !dbg !930
  call void @callOneArgHandler(i32 11, double %120, double %121, i64 94710652027536, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @9, i32 0, i32 0), i64 94710652028016, i32 350, i32 55), !dbg !931
  %122 = load double, double* %4, align 8, !dbg !931
  %123 = call double @transport_sumexp(i32 %118, i32 4, double %121, double %122), !dbg !932
  store double %123, double* %11, align 8, !dbg !926
  call void @llvm.dbg.declare(metadata double* %12, metadata !934, metadata !83), !dbg !935
  %124 = load double, double* %4, align 8, !dbg !936
  %125 = call double @log(double %124) #6, !dbg !937
  call void @callOneArgHandler(i32 12, double %124, double %125, i64 94710652032296, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @9, i32 0, i32 0), i64 94710652032736, i32 351, i32 28), !dbg !938
  %126 = fmul double 4.000000e+00, %125, !dbg !938
  call void @fMulHandler(double 4.000000e+00, double %125, double %126, i64 0, i64 94710652032736, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @9, i32 0, i32 0), i64 94710652033248, i32 351, i32 26), !dbg !939
  %127 = load double, double* %4, align 8, !dbg !939
  %128 = fsub double %126, %127, !dbg !940
  call void @fSubHandler(double %126, double %127, double %128, i64 94710652033248, i64 94710652033608, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @9, i32 0, i32 0), i64 94710652034016, i32 351, i32 35), !dbg !941
  %129 = load double, double* %11, align 8, !dbg !941
  %130 = call double @log(double %129) #6, !dbg !942
  call void @callOneArgHandler(i32 12, double %129, double %130, i64 94710652034408, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @9, i32 0, i32 0), i64 94710652034880, i32 351, i32 41), !dbg !943
  %131 = fadd double %128, %130, !dbg !943
  call void @fAddHandler(double %128, double %130, double %131, i64 94710652034016, i64 94710652034880, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @9, i32 0, i32 0), i64 94710652035360, i32 351, i32 39), !dbg !935
  store double %131, double* %12, align 8, !dbg !935
  %132 = load double, double* %12, align 8, !dbg !944
  %133 = fcmp olt double %132, 0xC04205966F2B4F12, !dbg !946
  %134 = call i1 @fCmpInstHandler(double %132, double 0xC04205966F2B4F12, i1 %133, i32 4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @9, i32 0, i32 0), i64 94710652037840, i32 352, i32 10), !dbg !947
  br i1 %134, label %135, label %140, !dbg !947

; <label>:135:                                    ; preds = %113
  %136 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !948
  %137 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %136, i32 0, i32 0, !dbg !950
  store double 0x4039F9CB402BC46C, double* %137, align 8, !dbg !951
  %138 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !952
  %139 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %138, i32 0, i32 1, !dbg !953
  store double 0x3D09F9CB402BC46C, double* %139, align 8, !dbg !954
  br label %156, !dbg !955

; <label>:140:                                    ; preds = %113
  call void @llvm.dbg.declare(metadata double* %13, metadata !956, metadata !83), !dbg !958
  %141 = load double, double* %12, align 8, !dbg !959
  %142 = call double @exp(double %141) #6, !dbg !960
  call void @callOneArgHandler(i32 11, double %141, double %142, i64 94710652045096, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @9, i32 0, i32 0), i64 94710652045536, i32 357, i32 25), !dbg !958
  store double %142, double* %13, align 8, !dbg !958
  %143 = load double, double* %13, align 8, !dbg !961
  %144 = fsub double 0x4039F9CB402BC46C, %143, !dbg !962
  call void @fSubHandler(double 0x4039F9CB402BC46C, double %143, double %144, i64 0, i64 94710652047672, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @9, i32 0, i32 0), i64 94710652048080, i32 358, i32 34), !dbg !963
  %145 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !963
  %146 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %145, i32 0, i32 0, !dbg !964
  store double %144, double* %146, align 8, !dbg !965
  %147 = load double, double* %12, align 8, !dbg !966
  %148 = call double @fabs(double %147) #1, !dbg !967
  %149 = fadd double %148, 1.000000e+00, !dbg !968
  call void @fAddHandler(double %148, double 1.000000e+00, double %149, i64 94710652050192, i64 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @9, i32 0, i32 0), i64 94710652050704, i32 359, i32 69), !dbg !969
  %150 = load double, double* %13, align 8, !dbg !969
  %151 = fmul double %149, %150, !dbg !970
  call void @fMulHandler(double %149, double %150, double %151, i64 94710652050704, i64 94710652051064, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @9, i32 0, i32 0), i64 94710652051472, i32 359, i32 75), !dbg !971
  %152 = fadd double 0x4039F9CB402BC46C, %151, !dbg !971
  call void @fAddHandler(double 0x4039F9CB402BC46C, double %151, double %152, i64 0, i64 94710652051472, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @9, i32 0, i32 0), i64 94710652051888, i32 359, i32 59), !dbg !972
  %153 = fmul double 0x3CC0000000000000, %152, !dbg !972
  call void @fMulHandler(double 0x3CC0000000000000, double %152, double %153, i64 0, i64 94710652051888, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @9, i32 0, i32 0), i64 94710652052304, i32 359, i32 43), !dbg !973
  %154 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !973
  %155 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %154, i32 0, i32 1, !dbg !974
  store double %153, double* %155, align 8, !dbg !975
  br label %156

; <label>:156:                                    ; preds = %140, %135
  store i32 0, i32* %3, align 4, !dbg !976
  br label %228, !dbg !976

; <label>:157:                                    ; preds = %109
  %158 = load double, double* %4, align 8, !dbg !977
  %159 = fcmp olt double %158, 0x4348000000000000, !dbg !979
  %160 = call i1 @fCmpInstHandler(double %158, double 0x4348000000000000, i1 %159, i32 4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @9, i32 0, i32 0), i64 94710652056384, i32 363, i32 13), !dbg !980
  br i1 %160, label %161, label %197, !dbg !980

; <label>:161:                                    ; preds = %157
  call void @llvm.dbg.declare(metadata i32* %14, metadata !981, metadata !83), !dbg !983
  store i32 1, i32* %14, align 4, !dbg !983
  call void @llvm.dbg.declare(metadata double* %15, metadata !984, metadata !83), !dbg !985
  %162 = load double, double* %4, align 8, !dbg !986
  %163 = call double @transport_sumexp(i32 1, i32 4, double 1.000000e+00, double %162), !dbg !987
  store double %163, double* %15, align 8, !dbg !985
  call void @llvm.dbg.declare(metadata double* %16, metadata !988, metadata !83), !dbg !989
  %164 = load double, double* %4, align 8, !dbg !990
  %165 = call double @log(double %164) #6, !dbg !991
  call void @callOneArgHandler(i32 12, double %164, double %165, i64 94710652065048, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @9, i32 0, i32 0), i64 94710652065488, i32 366, i32 28), !dbg !992
  %166 = fmul double 4.000000e+00, %165, !dbg !992
  call void @fMulHandler(double 4.000000e+00, double %165, double %166, i64 0, i64 94710652065488, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @9, i32 0, i32 0), i64 94710652066000, i32 366, i32 26), !dbg !993
  %167 = load double, double* %4, align 8, !dbg !993
  %168 = fsub double %166, %167, !dbg !994
  call void @fSubHandler(double %166, double %167, double %168, i64 94710652066000, i64 94710652066360, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @9, i32 0, i32 0), i64 94710652066768, i32 366, i32 35), !dbg !995
  %169 = load double, double* %15, align 8, !dbg !995
  %170 = call double @log(double %169) #6, !dbg !996
  call void @callOneArgHandler(i32 12, double %169, double %170, i64 94710652067160, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @9, i32 0, i32 0), i64 94710652067632, i32 366, i32 41), !dbg !998
  %171 = fadd double %168, %170, !dbg !998
  call void @fAddHandler(double %168, double %170, double %171, i64 94710652066768, i64 94710652067632, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @9, i32 0, i32 0), i64 94710652068112, i32 366, i32 39), !dbg !989
  store double %171, double* %16, align 8, !dbg !989
  %172 = load double, double* %16, align 8, !dbg !999
  %173 = fcmp olt double %172, 0xC04205966F2B4F12, !dbg !1001
  %174 = call i1 @fCmpInstHandler(double %172, double 0xC04205966F2B4F12, i1 %173, i32 4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @9, i32 0, i32 0), i64 94710652070592, i32 367, i32 10), !dbg !1002
  br i1 %174, label %175, label %180, !dbg !1002

; <label>:175:                                    ; preds = %161
  %176 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1003
  %177 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %176, i32 0, i32 0, !dbg !1005
  store double 0x4039F9CB402BC46C, double* %177, align 8, !dbg !1006
  %178 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1007
  %179 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %178, i32 0, i32 1, !dbg !1008
  store double 0x3D09F9CB402BC46C, double* %179, align 8, !dbg !1009
  br label %196, !dbg !1010

; <label>:180:                                    ; preds = %161
  call void @llvm.dbg.declare(metadata double* %17, metadata !1011, metadata !83), !dbg !1013
  %181 = load double, double* %16, align 8, !dbg !1014
  %182 = call double @exp(double %181) #6, !dbg !1015
  call void @callOneArgHandler(i32 11, double %181, double %182, i64 94710652075720, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @9, i32 0, i32 0), i64 94710652076160, i32 372, i32 25), !dbg !1013
  store double %182, double* %17, align 8, !dbg !1013
  %183 = load double, double* %17, align 8, !dbg !1016
  %184 = fsub double 0x4039F9CB402BC46C, %183, !dbg !1017
  call void @fSubHandler(double 0x4039F9CB402BC46C, double %183, double %184, i64 0, i64 94710652078296, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @9, i32 0, i32 0), i64 94710652078704, i32 373, i32 34), !dbg !1018
  %185 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1018
  %186 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %185, i32 0, i32 0, !dbg !1019
  store double %184, double* %186, align 8, !dbg !1020
  %187 = load double, double* %16, align 8, !dbg !1021
  %188 = call double @fabs(double %187) #1, !dbg !1022
  %189 = fadd double %188, 1.000000e+00, !dbg !1023
  call void @fAddHandler(double %188, double 1.000000e+00, double %189, i64 94710652080816, i64 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @9, i32 0, i32 0), i64 94710652081328, i32 374, i32 69), !dbg !1024
  %190 = load double, double* %17, align 8, !dbg !1024
  %191 = fmul double %189, %190, !dbg !1025
  call void @fMulHandler(double %189, double %190, double %191, i64 94710652081328, i64 94710652081688, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @9, i32 0, i32 0), i64 94710652082096, i32 374, i32 75), !dbg !1026
  %192 = fadd double 0x4039F9CB402BC46C, %191, !dbg !1026
  call void @fAddHandler(double 0x4039F9CB402BC46C, double %191, double %192, i64 0, i64 94710652082096, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @9, i32 0, i32 0), i64 94710652082512, i32 374, i32 59), !dbg !1027
  %193 = fmul double 0x3CC0000000000000, %192, !dbg !1027
  call void @fMulHandler(double 0x3CC0000000000000, double %192, double %193, i64 0, i64 94710652082512, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @9, i32 0, i32 0), i64 94710652082928, i32 374, i32 43), !dbg !1028
  %194 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1028
  %195 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %194, i32 0, i32 1, !dbg !1029
  store double %193, double* %195, align 8, !dbg !1030
  br label %196

; <label>:196:                                    ; preds = %180, %175
  store i32 0, i32* %3, align 4, !dbg !1031
  br label %228, !dbg !1031

; <label>:197:                                    ; preds = %157
  call void @llvm.dbg.declare(metadata double* %18, metadata !1032, metadata !83), !dbg !1034
  %198 = load double, double* %4, align 8, !dbg !1035
  %199 = call double @log(double %198) #6, !dbg !1036
  call void @callOneArgHandler(i32 12, double %198, double %199, i64 94710652087720, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @9, i32 0, i32 0), i64 94710652088160, i32 379, i32 28), !dbg !1037
  %200 = fmul double 4.000000e+00, %199, !dbg !1037
  call void @fMulHandler(double 4.000000e+00, double %199, double %200, i64 0, i64 94710652088160, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @9, i32 0, i32 0), i64 94710652088672, i32 379, i32 26), !dbg !1038
  %201 = load double, double* %4, align 8, !dbg !1038
  %202 = fsub double %200, %201, !dbg !1039
  call void @fSubHandler(double %200, double %201, double %202, i64 94710652088672, i64 94710652089032, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @9, i32 0, i32 0), i64 94710652089440, i32 379, i32 35), !dbg !1034
  store double %202, double* %18, align 8, !dbg !1034
  %203 = load double, double* %18, align 8, !dbg !1040
  %204 = fcmp olt double %203, 0xC04205966F2B4F12, !dbg !1042
  %205 = call i1 @fCmpInstHandler(double %203, double 0xC04205966F2B4F12, i1 %204, i32 4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @9, i32 0, i32 0), i64 94710652091920, i32 380, i32 10), !dbg !1043
  br i1 %205, label %206, label %211, !dbg !1043

; <label>:206:                                    ; preds = %197
  %207 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1044
  %208 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %207, i32 0, i32 0, !dbg !1046
  store double 0x4039F9CB402BC46C, double* %208, align 8, !dbg !1047
  %209 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1048
  %210 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %209, i32 0, i32 1, !dbg !1049
  store double 0x3D09F9CB402BC46C, double* %210, align 8, !dbg !1050
  br label %227, !dbg !1051

; <label>:211:                                    ; preds = %197
  call void @llvm.dbg.declare(metadata double* %19, metadata !1052, metadata !83), !dbg !1054
  %212 = load double, double* %18, align 8, !dbg !1055
  %213 = call double @exp(double %212) #6, !dbg !1056
  call void @callOneArgHandler(i32 11, double %212, double %213, i64 94710652097048, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @9, i32 0, i32 0), i64 94710652097488, i32 385, i32 25), !dbg !1054
  store double %213, double* %19, align 8, !dbg !1054
  %214 = load double, double* %19, align 8, !dbg !1057
  %215 = fsub double 0x4039F9CB402BC46C, %214, !dbg !1058
  call void @fSubHandler(double 0x4039F9CB402BC46C, double %214, double %215, i64 0, i64 94710652099624, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @9, i32 0, i32 0), i64 94710652100032, i32 386, i32 34), !dbg !1059
  %216 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1059
  %217 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %216, i32 0, i32 0, !dbg !1060
  store double %215, double* %217, align 8, !dbg !1061
  %218 = load double, double* %18, align 8, !dbg !1062
  %219 = call double @fabs(double %218) #1, !dbg !1063
  %220 = fadd double %219, 1.000000e+00, !dbg !1064
  call void @fAddHandler(double %219, double 1.000000e+00, double %220, i64 94710652102144, i64 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @9, i32 0, i32 0), i64 94710652102656, i32 387, i32 69), !dbg !1065
  %221 = load double, double* %19, align 8, !dbg !1065
  %222 = fmul double %220, %221, !dbg !1066
  call void @fMulHandler(double %220, double %221, double %222, i64 94710652102656, i64 94710652103016, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @9, i32 0, i32 0), i64 94710652103424, i32 387, i32 75), !dbg !1067
  %223 = fadd double 0x4039F9CB402BC46C, %222, !dbg !1067
  call void @fAddHandler(double 0x4039F9CB402BC46C, double %222, double %223, i64 0, i64 94710652103424, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @9, i32 0, i32 0), i64 94710652103840, i32 387, i32 59), !dbg !1068
  %224 = fmul double 0x3CC0000000000000, %223, !dbg !1068
  call void @fMulHandler(double 0x3CC0000000000000, double %223, double %224, i64 0, i64 94710652103840, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @9, i32 0, i32 0), i64 94710652104256, i32 387, i32 43), !dbg !1069
  %225 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1069
  %226 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %225, i32 0, i32 1, !dbg !1070
  store double %224, double* %226, align 8, !dbg !1071
  br label %227

; <label>:227:                                    ; preds = %211, %206
  store i32 0, i32* %3, align 4, !dbg !1072
  br label %228, !dbg !1072

; <label>:228:                                    ; preds = %227, %196, %156, %74, %69, %67, %36, %31, %29
  %229 = load i32, i32* %3, align 4, !dbg !1073
  ret i32 %229, !dbg !1073
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
  %22 = call i1 @fCmpInstHandler(double %20, double 0.000000e+00, i1 %21, i32 4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @11, i32 0, i32 0), i64 94710651479584, i32 401, i32 8), !dbg !1084
  br i1 %22, label %23, label %32, !dbg !1084

; <label>:23:                                     ; preds = %2
  br label %24, !dbg !1085, !llvm.loop !1087

; <label>:24:                                     ; preds = %23
  %25 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1088
  %26 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %25, i32 0, i32 0, !dbg !1088
  store double 0x7FF8000000000000, double* %26, align 8, !dbg !1088
  %27 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1088
  %28 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %27, i32 0, i32 1, !dbg !1088
  store double 0x7FF8000000000000, double* %28, align 8, !dbg !1088
  br label %29, !dbg !1088, !llvm.loop !1091

; <label>:29:                                     ; preds = %24
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 402, i32 1), !dbg !1093
  store i32 1, i32* %3, align 4, !dbg !1093
  br label %230, !dbg !1093
                                                  ; No predecessors!
  br label %31, !dbg !1096

; <label>:31:                                     ; preds = %30
  br label %230, !dbg !1098

; <label>:32:                                     ; preds = %2
  %33 = load double, double* %4, align 8, !dbg !1099
  %34 = fcmp oeq double %33, 0.000000e+00, !dbg !1101
  %35 = call i1 @fCmpInstHandler(double %33, double 0.000000e+00, i1 %34, i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @11, i32 0, i32 0), i64 94710652129152, i32 404, i32 13), !dbg !1102
  br i1 %35, label %36, label %41, !dbg !1102

; <label>:36:                                     ; preds = %32
  %37 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1103
  %38 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %37, i32 0, i32 0, !dbg !1105
  store double 0.000000e+00, double* %38, align 8, !dbg !1106
  %39 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1107
  %40 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %39, i32 0, i32 1, !dbg !1108
  store double 0.000000e+00, double* %40, align 8, !dbg !1109
  store i32 0, i32* %3, align 4, !dbg !1110
  br label %230, !dbg !1110

; <label>:41:                                     ; preds = %32
  %42 = load double, double* %4, align 8, !dbg !1111
  %43 = fcmp olt double %42, 0x3E68000000000000, !dbg !1113
  %44 = call i1 @fCmpInstHandler(double %42, double 0x3E68000000000000, i1 %43, i32 4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @11, i32 0, i32 0), i64 94710652135104, i32 409, i32 13), !dbg !1114
  br i1 %44, label %45, label %72, !dbg !1114

; <label>:45:                                     ; preds = %41
  %46 = load double, double* %4, align 8, !dbg !1115
  %47 = load double, double* %4, align 8, !dbg !1117
  %48 = fmul double %46, %47, !dbg !1118
  call void @fMulHandler(double %46, double %47, double %48, i64 94710652136216, i64 94710652136536, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @11, i32 0, i32 0), i64 94710652136944, i32 410, i32 20), !dbg !1119
  %49 = load double, double* %4, align 8, !dbg !1119
  %50 = fmul double %48, %49, !dbg !1120
  call void @fMulHandler(double %48, double %49, double %50, i64 94710652136944, i64 94710652137336, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @11, i32 0, i32 0), i64 94710652137744, i32 410, i32 22), !dbg !1121
  %51 = load double, double* %4, align 8, !dbg !1121
  %52 = fmul double %50, %51, !dbg !1122
  call void @fMulHandler(double %50, double %51, double %52, i64 94710652137744, i64 94710652138136, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @11, i32 0, i32 0), i64 94710652138544, i32 410, i32 24), !dbg !1123
  %53 = fdiv double %52, 4.000000e+00, !dbg !1123
  call void @fDivHandler(double %52, double 4.000000e+00, double %53, i64 94710652138544, i64 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @11, i32 0, i32 0), i64 94710652138992, i32 410, i32 26), !dbg !1124
  %54 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1124
  %55 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %54, i32 0, i32 0, !dbg !1125
  store double %53, double* %55, align 8, !dbg !1126
  %56 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1127
  %57 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %56, i32 0, i32 0, !dbg !1128
  %58 = load double, double* %57, align 8, !dbg !1128
  %59 = fmul double 0x3CD0000000000000, %58, !dbg !1129
  call void @fMulHandler(double 0x3CD0000000000000, double %58, double %59, i64 0, i64 94710652141432, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @11, i32 0, i32 0), i64 94710652143168, i32 411, i32 41), !dbg !1130
  %60 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1130
  %61 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %60, i32 0, i32 1, !dbg !1131
  store double %59, double* %61, align 8, !dbg !1132
  %62 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1133
  %63 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %62, i32 0, i32 0, !dbg !1133
  %64 = load double, double* %63, align 8, !dbg !1133
  %65 = call double @fabs(double %64) #1, !dbg !1133
  %66 = fcmp olt double %65, 0x10000000000000, !dbg !1133
  %67 = call i1 @fCmpInstHandler(double %65, double 0x10000000000000, i1 %66, i32 4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @11, i32 0, i32 0), i64 94710652147312, i32 412, i32 5), !dbg !1135
  br i1 %67, label %68, label %71, !dbg !1135

; <label>:68:                                     ; preds = %45
  br label %69, !dbg !1136, !llvm.loop !1138

; <label>:69:                                     ; preds = %68
  call void @gsl_error(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 412, i32 15), !dbg !1139
  store i32 15, i32* %3, align 4, !dbg !1139
  br label %230, !dbg !1139
                                                  ; No predecessors!
  br label %71, !dbg !1142

; <label>:71:                                     ; preds = %70, %45
  store i32 0, i32* %3, align 4, !dbg !1144
  br label %230, !dbg !1144

; <label>:72:                                     ; preds = %41
  %73 = load double, double* %4, align 8, !dbg !1145
  %74 = fcmp ole double %73, 4.000000e+00, !dbg !1147
  %75 = call i1 @fCmpInstHandler(double %73, double 4.000000e+00, i1 %74, i32 5, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @11, i32 0, i32 0), i64 94710652154048, i32 415, i32 13), !dbg !1148
  br i1 %75, label %76, label %111, !dbg !1148

; <label>:76:                                     ; preds = %72
  call void @llvm.dbg.declare(metadata double* %7, metadata !1149, metadata !83), !dbg !1151
  %77 = load double, double* %4, align 8, !dbg !1152
  %78 = load double, double* %4, align 8, !dbg !1153
  %79 = fmul double %77, %78, !dbg !1154
  call void @fMulHandler(double %77, double %78, double %79, i64 94710652156184, i64 94710652156536, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @11, i32 0, i32 0), i64 94710652156944, i32 416, i32 24), !dbg !1151
  store double %79, double* %7, align 8, !dbg !1151
  call void @llvm.dbg.declare(metadata double* %8, metadata !1155, metadata !83), !dbg !1156
  %80 = load double, double* %7, align 8, !dbg !1157
  %81 = fdiv double %80, 8.000000e+00, !dbg !1158
  call void @fDivHandler(double %80, double 8.000000e+00, double %81, i64 94710652160136, i64 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @11, i32 0, i32 0), i64 94710652160544, i32 417, i32 25), !dbg !1159
  %82 = fsub double %81, 5.000000e-01, !dbg !1159
  call void @fSubHandler(double %81, double 5.000000e-01, double %82, i64 94710652160544, i64 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @11, i32 0, i32 0), i64 94710652160960, i32 417, i32 30), !dbg !1160
  %83 = fsub double %82, 5.000000e-01, !dbg !1160
  call void @fSubHandler(double %82, double 5.000000e-01, double %83, i64 94710652160960, i64 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @11, i32 0, i32 0), i64 94710652161376, i32 417, i32 37), !dbg !1156
  store double %83, double* %8, align 8, !dbg !1156
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %9, metadata !1161, metadata !83), !dbg !1162
  %84 = load double, double* %8, align 8, !dbg !1163
  %85 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @transport5_cs, double %84, %struct.gsl_sf_result_struct* %9), !dbg !1164
  %86 = load double, double* %7, align 8, !dbg !1165
  %87 = load double, double* %7, align 8, !dbg !1166
  %88 = fmul double %86, %87, !dbg !1167
  call void @fMulHandler(double %86, double %87, double %88, i64 94710652165480, i64 94710652165832, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @11, i32 0, i32 0), i64 94710652166240, i32 420, i32 22), !dbg !1168
  %89 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %9, i32 0, i32 0, !dbg !1168
  %90 = load double, double* %89, align 8, !dbg !1168
  %91 = fmul double %88, %90, !dbg !1169
  call void @fMulHandler(double %88, double %90, double %91, i64 94710652166240, i64 94710652167080, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @11, i32 0, i32 0), i64 94710652168752, i32 420, i32 26), !dbg !1170
  %92 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1170
  %93 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %92, i32 0, i32 0, !dbg !1171
  store double %91, double* %93, align 8, !dbg !1172
  %94 = load double, double* %7, align 8, !dbg !1173
  %95 = load double, double* %7, align 8, !dbg !1174
  %96 = fmul double %94, %95, !dbg !1175
  call void @fMulHandler(double %94, double %95, double %96, i64 94710652170392, i64 94710652170776, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @11, i32 0, i32 0), i64 94710652171184, i32 421, i32 22), !dbg !1176
  %97 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %9, i32 0, i32 1, !dbg !1176
  %98 = load double, double* %97, align 8, !dbg !1176
  %99 = fmul double %96, %98, !dbg !1177
  call void @fMulHandler(double %96, double %98, double %99, i64 94710652171184, i64 94710652172024, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @11, i32 0, i32 0), i64 94710652173696, i32 421, i32 26), !dbg !1178
  %100 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1178
  %101 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %100, i32 0, i32 1, !dbg !1179
  store double %99, double* %101, align 8, !dbg !1180
  %102 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1181
  %103 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %102, i32 0, i32 0, !dbg !1182
  %104 = load double, double* %103, align 8, !dbg !1182
  %105 = call double @fabs(double %104) #1, !dbg !1183
  %106 = fmul double 0x3CC0000000000000, %105, !dbg !1184
  call void @fMulHandler(double 0x3CC0000000000000, double %105, double %106, i64 0, i64 94710652177904, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @11, i32 0, i32 0), i64 94710652178384, i32 422, i32 42), !dbg !1185
  %107 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1185
  %108 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %107, i32 0, i32 1, !dbg !1186
  %109 = load double, double* %108, align 8, !dbg !1187
  %110 = fadd double %109, %106, !dbg !1187
  call void @fAddHandler(double %109, double %106, double %110, i64 94710652179608, i64 94710652178384, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @11, i32 0, i32 0), i64 94710652180016, i32 422, i32 17), !dbg !1187
  store double %110, double* %108, align 8, !dbg !1187
  store i32 0, i32* %3, align 4, !dbg !1188
  br label %230, !dbg !1188

; <label>:111:                                    ; preds = %72
  %112 = load double, double* %4, align 8, !dbg !1189
  %113 = fcmp olt double %112, 0x404205966F2B4F12, !dbg !1191
  %114 = call i1 @fCmpInstHandler(double %112, double 0x404205966F2B4F12, i1 %113, i32 4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @11, i32 0, i32 0), i64 94710652184208, i32 425, i32 13), !dbg !1192
  br i1 %114, label %115, label %159, !dbg !1192

; <label>:115:                                    ; preds = %111
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1193, metadata !83), !dbg !1195
  %116 = load double, double* %4, align 8, !dbg !1196
  %117 = fdiv double 0x404205966F2B4F12, %116, !dbg !1197
  call void @fDivHandler(double 0x404205966F2B4F12, double %116, double %117, i64 0, i64 94710652186376, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @11, i32 0, i32 0), i64 94710652186752, i32 426, i32 55), !dbg !1198
  %118 = fptosi double %117 to i32, !dbg !1198
  %119 = add nsw i32 %118, 1, !dbg !1199
  store i32 %119, i32* %10, align 4, !dbg !1195
  call void @llvm.dbg.declare(metadata double* %11, metadata !1200, metadata !83), !dbg !1201
  %120 = load i32, i32* %10, align 4, !dbg !1202
  %121 = load double, double* %4, align 8, !dbg !1203
  %122 = fsub double -0.000000e+00, %121, !dbg !1204
  call void @fSubHandler(double -0.000000e+00, double %121, double %122, i64 0, i64 94710652191096, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @11, i32 0, i32 0), i64 94710652191504, i32 427, i32 59), !dbg !1205
  %123 = call double @exp(double %122) #6, !dbg !1205
  call void @callOneArgHandler(i32 11, double %122, double %123, i64 94710652191504, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @11, i32 0, i32 0), i64 94710652191984, i32 427, i32 55), !dbg !1206
  %124 = load double, double* %4, align 8, !dbg !1206
  %125 = call double @transport_sumexp(i32 %120, i32 5, double %123, double %124), !dbg !1207
  store double %125, double* %11, align 8, !dbg !1201
  call void @llvm.dbg.declare(metadata double* %12, metadata !1209, metadata !83), !dbg !1210
  %126 = load double, double* %4, align 8, !dbg !1211
  %127 = call double @log(double %126) #6, !dbg !1212
  call void @callOneArgHandler(i32 12, double %126, double %127, i64 94710652196264, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @11, i32 0, i32 0), i64 94710652196704, i32 428, i32 28), !dbg !1213
  %128 = fmul double 5.000000e+00, %127, !dbg !1213
  call void @fMulHandler(double 5.000000e+00, double %127, double %128, i64 0, i64 94710652196704, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @11, i32 0, i32 0), i64 94710652197280, i32 428, i32 26), !dbg !1214
  %129 = load double, double* %4, align 8, !dbg !1214
  %130 = fsub double %128, %129, !dbg !1215
  call void @fSubHandler(double %128, double %129, double %130, i64 94710652197280, i64 94710652197640, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @11, i32 0, i32 0), i64 94710652198048, i32 428, i32 35), !dbg !1216
  %131 = load double, double* %11, align 8, !dbg !1216
  %132 = call double @log(double %131) #6, !dbg !1217
  call void @callOneArgHandler(i32 12, double %131, double %132, i64 94710652198440, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @11, i32 0, i32 0), i64 94710652198912, i32 428, i32 41), !dbg !1218
  %133 = fadd double %130, %132, !dbg !1218
  call void @fAddHandler(double %130, double %132, double %133, i64 94710652198048, i64 94710652198912, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @11, i32 0, i32 0), i64 94710652199392, i32 428, i32 39), !dbg !1210
  store double %133, double* %12, align 8, !dbg !1210
  %134 = load double, double* %12, align 8, !dbg !1219
  %135 = fcmp olt double %134, 0xC04205966F2B4F12, !dbg !1221
  %136 = call i1 @fCmpInstHandler(double %134, double 0xC04205966F2B4F12, i1 %135, i32 4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @11, i32 0, i32 0), i64 94710652203936, i32 429, i32 10), !dbg !1222
  br i1 %136, label %137, label %142, !dbg !1222

; <label>:137:                                    ; preds = %115
  %138 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1223
  %139 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %138, i32 0, i32 0, !dbg !1225
  store double 0x405F1B9AEBBBAA02, double* %139, align 8, !dbg !1226
  %140 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1227
  %141 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %140, i32 0, i32 1, !dbg !1228
  store double 0x3D2F1B9AEBBBAA02, double* %141, align 8, !dbg !1229
  br label %158, !dbg !1230

; <label>:142:                                    ; preds = %115
  call void @llvm.dbg.declare(metadata double* %13, metadata !1231, metadata !83), !dbg !1233
  %143 = load double, double* %12, align 8, !dbg !1234
  %144 = call double @exp(double %143) #6, !dbg !1235
  call void @callOneArgHandler(i32 11, double %143, double %144, i64 94710652209128, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @11, i32 0, i32 0), i64 94710652209568, i32 434, i32 25), !dbg !1233
  store double %144, double* %13, align 8, !dbg !1233
  %145 = load double, double* %13, align 8, !dbg !1236
  %146 = fsub double 0x405F1B9AEBBBAA02, %145, !dbg !1237
  call void @fSubHandler(double 0x405F1B9AEBBBAA02, double %145, double %146, i64 0, i64 94710652211704, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @11, i32 0, i32 0), i64 94710652212112, i32 435, i32 34), !dbg !1238
  %147 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1238
  %148 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %147, i32 0, i32 0, !dbg !1239
  store double %146, double* %148, align 8, !dbg !1240
  %149 = load double, double* %12, align 8, !dbg !1241
  %150 = call double @fabs(double %149) #1, !dbg !1242
  %151 = fadd double %150, 1.000000e+00, !dbg !1243
  call void @fAddHandler(double %150, double 1.000000e+00, double %151, i64 94710652214224, i64 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @11, i32 0, i32 0), i64 94710652214736, i32 436, i32 69), !dbg !1244
  %152 = load double, double* %13, align 8, !dbg !1244
  %153 = fmul double %151, %152, !dbg !1245
  call void @fMulHandler(double %151, double %152, double %153, i64 94710652214736, i64 94710652215096, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @11, i32 0, i32 0), i64 94710652215504, i32 436, i32 75), !dbg !1246
  %154 = fadd double 0x405F1B9AEBBBAA02, %153, !dbg !1246
  call void @fAddHandler(double 0x405F1B9AEBBBAA02, double %153, double %154, i64 0, i64 94710652215504, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @11, i32 0, i32 0), i64 94710652215920, i32 436, i32 59), !dbg !1247
  %155 = fmul double 0x3CC0000000000000, %154, !dbg !1247
  call void @fMulHandler(double 0x3CC0000000000000, double %154, double %155, i64 0, i64 94710652215920, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @11, i32 0, i32 0), i64 94710652216336, i32 436, i32 43), !dbg !1248
  %156 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1248
  %157 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %156, i32 0, i32 1, !dbg !1249
  store double %155, double* %157, align 8, !dbg !1250
  br label %158

; <label>:158:                                    ; preds = %142, %137
  store i32 0, i32* %3, align 4, !dbg !1251
  br label %230, !dbg !1251

; <label>:159:                                    ; preds = %111
  %160 = load double, double* %4, align 8, !dbg !1252
  %161 = fcmp olt double %160, 0x4348000000000000, !dbg !1254
  %162 = call i1 @fCmpInstHandler(double %160, double 0x4348000000000000, i1 %161, i32 4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @11, i32 0, i32 0), i64 94710652220416, i32 440, i32 13), !dbg !1255
  br i1 %162, label %163, label %199, !dbg !1255

; <label>:163:                                    ; preds = %159
  call void @llvm.dbg.declare(metadata i32* %14, metadata !1256, metadata !83), !dbg !1258
  store i32 1, i32* %14, align 4, !dbg !1258
  call void @llvm.dbg.declare(metadata double* %15, metadata !1259, metadata !83), !dbg !1260
  %164 = load double, double* %4, align 8, !dbg !1261
  %165 = call double @transport_sumexp(i32 1, i32 5, double 1.000000e+00, double %164), !dbg !1262
  store double %165, double* %15, align 8, !dbg !1260
  call void @llvm.dbg.declare(metadata double* %16, metadata !1263, metadata !83), !dbg !1264
  %166 = load double, double* %4, align 8, !dbg !1265
  %167 = call double @log(double %166) #6, !dbg !1266
  call void @callOneArgHandler(i32 12, double %166, double %167, i64 94710652229080, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @11, i32 0, i32 0), i64 94710652229520, i32 443, i32 28), !dbg !1267
  %168 = fmul double 5.000000e+00, %167, !dbg !1267
  call void @fMulHandler(double 5.000000e+00, double %167, double %168, i64 0, i64 94710652229520, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @11, i32 0, i32 0), i64 94710652230032, i32 443, i32 26), !dbg !1268
  %169 = load double, double* %4, align 8, !dbg !1268
  %170 = fsub double %168, %169, !dbg !1269
  call void @fSubHandler(double %168, double %169, double %170, i64 94710652230032, i64 94710652230392, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @11, i32 0, i32 0), i64 94710652230800, i32 443, i32 35), !dbg !1270
  %171 = load double, double* %15, align 8, !dbg !1270
  %172 = call double @log(double %171) #6, !dbg !1271
  call void @callOneArgHandler(i32 12, double %171, double %172, i64 94710652231192, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @11, i32 0, i32 0), i64 94710652231664, i32 443, i32 41), !dbg !1273
  %173 = fadd double %170, %172, !dbg !1273
  call void @fAddHandler(double %170, double %172, double %173, i64 94710652230800, i64 94710652231664, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @11, i32 0, i32 0), i64 94710652232144, i32 443, i32 39), !dbg !1264
  store double %173, double* %16, align 8, !dbg !1264
  %174 = load double, double* %16, align 8, !dbg !1274
  %175 = fcmp olt double %174, 0xC04205966F2B4F12, !dbg !1276
  %176 = call i1 @fCmpInstHandler(double %174, double 0xC04205966F2B4F12, i1 %175, i32 4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @11, i32 0, i32 0), i64 94710652234624, i32 444, i32 10), !dbg !1277
  br i1 %176, label %177, label %182, !dbg !1277

; <label>:177:                                    ; preds = %163
  %178 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1278
  %179 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %178, i32 0, i32 0, !dbg !1280
  store double 0x405F1B9AEBBBAA02, double* %179, align 8, !dbg !1281
  %180 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1282
  %181 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %180, i32 0, i32 1, !dbg !1283
  store double 0x3D2F1B9AEBBBAA02, double* %181, align 8, !dbg !1284
  br label %198, !dbg !1285

; <label>:182:                                    ; preds = %163
  call void @llvm.dbg.declare(metadata double* %17, metadata !1286, metadata !83), !dbg !1288
  %183 = load double, double* %16, align 8, !dbg !1289
  %184 = call double @exp(double %183) #6, !dbg !1290
  call void @callOneArgHandler(i32 11, double %183, double %184, i64 94710652239752, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @11, i32 0, i32 0), i64 94710652240192, i32 449, i32 25), !dbg !1288
  store double %184, double* %17, align 8, !dbg !1288
  %185 = load double, double* %17, align 8, !dbg !1291
  %186 = fsub double 0x405F1B9AEBBBAA02, %185, !dbg !1292
  call void @fSubHandler(double 0x405F1B9AEBBBAA02, double %185, double %186, i64 0, i64 94710652242328, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @11, i32 0, i32 0), i64 94710652242736, i32 450, i32 34), !dbg !1293
  %187 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1293
  %188 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %187, i32 0, i32 0, !dbg !1294
  store double %186, double* %188, align 8, !dbg !1295
  %189 = load double, double* %16, align 8, !dbg !1296
  %190 = call double @fabs(double %189) #1, !dbg !1297
  %191 = fadd double %190, 1.000000e+00, !dbg !1298
  call void @fAddHandler(double %190, double 1.000000e+00, double %191, i64 94710652244848, i64 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @11, i32 0, i32 0), i64 94710652245360, i32 451, i32 69), !dbg !1299
  %192 = load double, double* %17, align 8, !dbg !1299
  %193 = fmul double %191, %192, !dbg !1300
  call void @fMulHandler(double %191, double %192, double %193, i64 94710652245360, i64 94710652245720, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @11, i32 0, i32 0), i64 94710652246128, i32 451, i32 75), !dbg !1301
  %194 = fadd double 0x405F1B9AEBBBAA02, %193, !dbg !1301
  call void @fAddHandler(double 0x405F1B9AEBBBAA02, double %193, double %194, i64 0, i64 94710652246128, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @11, i32 0, i32 0), i64 94710652246544, i32 451, i32 59), !dbg !1302
  %195 = fmul double 0x3CC0000000000000, %194, !dbg !1302
  call void @fMulHandler(double 0x3CC0000000000000, double %194, double %195, i64 0, i64 94710652246544, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @11, i32 0, i32 0), i64 94710652246960, i32 451, i32 43), !dbg !1303
  %196 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1303
  %197 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %196, i32 0, i32 1, !dbg !1304
  store double %195, double* %197, align 8, !dbg !1305
  br label %198

; <label>:198:                                    ; preds = %182, %177
  store i32 0, i32* %3, align 4, !dbg !1306
  br label %230, !dbg !1306

; <label>:199:                                    ; preds = %159
  call void @llvm.dbg.declare(metadata double* %18, metadata !1307, metadata !83), !dbg !1309
  %200 = load double, double* %4, align 8, !dbg !1310
  %201 = call double @log(double %200) #6, !dbg !1311
  call void @callOneArgHandler(i32 12, double %200, double %201, i64 94710652251752, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @11, i32 0, i32 0), i64 94710652252192, i32 456, i32 28), !dbg !1312
  %202 = fmul double 5.000000e+00, %201, !dbg !1312
  call void @fMulHandler(double 5.000000e+00, double %201, double %202, i64 0, i64 94710652252192, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @11, i32 0, i32 0), i64 94710652252704, i32 456, i32 26), !dbg !1313
  %203 = load double, double* %4, align 8, !dbg !1313
  %204 = fsub double %202, %203, !dbg !1314
  call void @fSubHandler(double %202, double %203, double %204, i64 94710652252704, i64 94710652253064, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @11, i32 0, i32 0), i64 94710652253472, i32 456, i32 35), !dbg !1309
  store double %204, double* %18, align 8, !dbg !1309
  %205 = load double, double* %18, align 8, !dbg !1315
  %206 = fcmp olt double %205, 0xC04205966F2B4F12, !dbg !1317
  %207 = call i1 @fCmpInstHandler(double %205, double 0xC04205966F2B4F12, i1 %206, i32 4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @11, i32 0, i32 0), i64 94710652255952, i32 457, i32 10), !dbg !1318
  br i1 %207, label %208, label %213, !dbg !1318

; <label>:208:                                    ; preds = %199
  %209 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1319
  %210 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %209, i32 0, i32 0, !dbg !1321
  store double 0x405F1B9AEBBBAA02, double* %210, align 8, !dbg !1322
  %211 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1323
  %212 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %211, i32 0, i32 1, !dbg !1324
  store double 0x3D2F1B9AEBBBAA02, double* %212, align 8, !dbg !1325
  br label %229, !dbg !1326

; <label>:213:                                    ; preds = %199
  call void @llvm.dbg.declare(metadata double* %19, metadata !1327, metadata !83), !dbg !1329
  %214 = load double, double* %18, align 8, !dbg !1330
  %215 = call double @exp(double %214) #6, !dbg !1331
  call void @callOneArgHandler(i32 11, double %214, double %215, i64 94710652261080, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @11, i32 0, i32 0), i64 94710652261520, i32 462, i32 25), !dbg !1329
  store double %215, double* %19, align 8, !dbg !1329
  %216 = load double, double* %19, align 8, !dbg !1332
  %217 = fsub double 0x405F1B9AEBBBAA02, %216, !dbg !1333
  call void @fSubHandler(double 0x405F1B9AEBBBAA02, double %216, double %217, i64 0, i64 94710652263656, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @11, i32 0, i32 0), i64 94710652264064, i32 463, i32 34), !dbg !1334
  %218 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1334
  %219 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %218, i32 0, i32 0, !dbg !1335
  store double %217, double* %219, align 8, !dbg !1336
  %220 = load double, double* %18, align 8, !dbg !1337
  %221 = call double @fabs(double %220) #1, !dbg !1338
  %222 = fadd double %221, 1.000000e+00, !dbg !1339
  call void @fAddHandler(double %221, double 1.000000e+00, double %222, i64 94710652266176, i64 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @11, i32 0, i32 0), i64 94710652266688, i32 464, i32 69), !dbg !1340
  %223 = load double, double* %19, align 8, !dbg !1340
  %224 = fmul double %222, %223, !dbg !1341
  call void @fMulHandler(double %222, double %223, double %224, i64 94710652266688, i64 94710652267048, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @11, i32 0, i32 0), i64 94710652267456, i32 464, i32 75), !dbg !1342
  %225 = fadd double 0x405F1B9AEBBBAA02, %224, !dbg !1342
  call void @fAddHandler(double 0x405F1B9AEBBBAA02, double %224, double %225, i64 0, i64 94710652267456, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @11, i32 0, i32 0), i64 94710652267872, i32 464, i32 59), !dbg !1343
  %226 = fmul double 0x3CC0000000000000, %225, !dbg !1343
  call void @fMulHandler(double 0x3CC0000000000000, double %225, double %226, i64 0, i64 94710652267872, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @11, i32 0, i32 0), i64 94710652268288, i32 464, i32 43), !dbg !1344
  %227 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1344
  %228 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %227, i32 0, i32 1, !dbg !1345
  store double %226, double* %228, align 8, !dbg !1346
  br label %229

; <label>:229:                                    ; preds = %213, %208
  store i32 0, i32* %3, align 4, !dbg !1347
  br label %230, !dbg !1347

; <label>:230:                                    ; preds = %229, %198, %158, %76, %71, %69, %36, %31, %29
  %231 = load i32, i32* %3, align 4, !dbg !1348
  ret i32 %231, !dbg !1348
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
  %10 = sext i32 %8 to i64, !dbg !1355
  %11 = call i1 @iCmpInstHandler(i64 %10, i64 0, i1 %9, i32 33, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @13, i32 0, i32 0), i64 94710652278976, i32 476, i32 3), !dbg !1355
  br i1 %11, label %12, label %18, !dbg !1355

; <label>:12:                                     ; preds = %1
  br label %13, !dbg !1359, !llvm.loop !1362

; <label>:13:                                     ; preds = %12
  %14 = load i32, i32* %5, align 4, !dbg !1364
  call void @gsl_error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 476, i32 %14), !dbg !1364
  %15 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !1364
  %16 = load double, double* %15, align 8, !dbg !1364
  store double %16, double* %2, align 8, !dbg !1364
  br label %21, !dbg !1364
                                                  ; No predecessors!
  br label %18, !dbg !1367

; <label>:18:                                     ; preds = %17, %1
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !1369
  %20 = load double, double* %19, align 8, !dbg !1369
  store double %20, double* %2, align 8, !dbg !1369
  br label %21, !dbg !1369

; <label>:21:                                     ; preds = %18, %13
  %22 = load double, double* %2, align 8, !dbg !1371
  ret double %22, !dbg !1371
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
  %10 = sext i32 %8 to i64, !dbg !1376
  %11 = call i1 @iCmpInstHandler(i64 %10, i64 0, i1 %9, i32 33, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @15, i32 0, i32 0), i64 94710652296272, i32 481, i32 3), !dbg !1376
  br i1 %11, label %12, label %18, !dbg !1376

; <label>:12:                                     ; preds = %1
  br label %13, !dbg !1380, !llvm.loop !1383

; <label>:13:                                     ; preds = %12
  %14 = load i32, i32* %5, align 4, !dbg !1385
  call void @gsl_error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 481, i32 %14), !dbg !1385
  %15 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !1385
  %16 = load double, double* %15, align 8, !dbg !1385
  store double %16, double* %2, align 8, !dbg !1385
  br label %21, !dbg !1385
                                                  ; No predecessors!
  br label %18, !dbg !1388

; <label>:18:                                     ; preds = %17, %1
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !1390
  %20 = load double, double* %19, align 8, !dbg !1390
  store double %20, double* %2, align 8, !dbg !1390
  br label %21, !dbg !1390

; <label>:21:                                     ; preds = %18, %13
  %22 = load double, double* %2, align 8, !dbg !1392
  ret double %22, !dbg !1392
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
  %10 = sext i32 %8 to i64, !dbg !1397
  %11 = call i1 @iCmpInstHandler(i64 %10, i64 0, i1 %9, i32 33, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @17, i32 0, i32 0), i64 94710652313568, i32 486, i32 3), !dbg !1397
  br i1 %11, label %12, label %18, !dbg !1397

; <label>:12:                                     ; preds = %1
  br label %13, !dbg !1401, !llvm.loop !1404

; <label>:13:                                     ; preds = %12
  %14 = load i32, i32* %5, align 4, !dbg !1406
  call void @gsl_error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 486, i32 %14), !dbg !1406
  %15 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !1406
  %16 = load double, double* %15, align 8, !dbg !1406
  store double %16, double* %2, align 8, !dbg !1406
  br label %21, !dbg !1406
                                                  ; No predecessors!
  br label %18, !dbg !1409

; <label>:18:                                     ; preds = %17, %1
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !1411
  %20 = load double, double* %19, align 8, !dbg !1411
  store double %20, double* %2, align 8, !dbg !1411
  br label %21, !dbg !1411

; <label>:21:                                     ; preds = %18, %13
  %22 = load double, double* %2, align 8, !dbg !1413
  ret double %22, !dbg !1413
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
  %10 = sext i32 %8 to i64, !dbg !1418
  %11 = call i1 @iCmpInstHandler(i64 %10, i64 0, i1 %9, i32 33, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @19, i32 0, i32 0), i64 94710651898160, i32 491, i32 3), !dbg !1418
  br i1 %11, label %12, label %18, !dbg !1418

; <label>:12:                                     ; preds = %1
  br label %13, !dbg !1422, !llvm.loop !1425

; <label>:13:                                     ; preds = %12
  %14 = load i32, i32* %5, align 4, !dbg !1427
  call void @gsl_error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 491, i32 %14), !dbg !1427
  %15 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !1427
  %16 = load double, double* %15, align 8, !dbg !1427
  store double %16, double* %2, align 8, !dbg !1427
  br label %21, !dbg !1427
                                                  ; No predecessors!
  br label %18, !dbg !1430

; <label>:18:                                     ; preds = %17, %1
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !1432
  %20 = load double, double* %19, align 8, !dbg !1432
  store double %20, double* %2, align 8, !dbg !1432
  br label %21, !dbg !1432

; <label>:21:                                     ; preds = %18, %13
  %22 = load double, double* %2, align 8, !dbg !1434
  ret double %22, !dbg !1434
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
