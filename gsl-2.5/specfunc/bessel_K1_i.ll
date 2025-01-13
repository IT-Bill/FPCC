; ModuleID = 'bessel_K1.ll'
source_filename = "bessel_K1.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.cheb_series_struct = type { double*, i32, double, double, i32 }
%struct.gsl_sf_result_struct = type { double, double }

@.str = private unnamed_addr constant [13 x i8] c"domain error\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"bessel_K1.c\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"overflow\00", align 1
@i1_poly = internal global [7 x double] [double 0x3FB5555555555555, double 0x3F7C71C71C71D1B3, double 0x3F36C16C16A27BAF, double 0x3EE845C8E2E1423A, double 0x3E927E0FFAAEE53D, double 0x3E355B410B3332C5, double 0.000000e+00], align 16
@k1_poly = internal global [9 x double] [double 0xBFD3B5B6028A83D6, double 0xBFB5DADB014541EB, double 0xBF7303AE729FF30F, double 0xBF1D802AF7A5DB61, double 0xBEBA29182247C54B, double 0xBE4E2129FF568BB1, double 0xBDD8630B65993898, double 0xBD5D4891F134D1BD, double 0xBCDB7E078296495F], align 16
@ak1_cs = internal global %struct.cheb_series_struct { double* getelementptr inbounds ([25 x double], [25 x double]* @ak1_data, i32 0, i32 0), i32 24, double -1.000000e+00, double 1.000000e+00, i32 9 }, align 8
@ak12_cs = internal global %struct.cheb_series_struct { double* getelementptr inbounds ([14 x double], [14 x double]* @ak12_data, i32 0, i32 0), i32 13, double -1.000000e+00, double 1.000000e+00, i32 7 }, align 8
@.str.3 = private unnamed_addr constant [38 x i8] c"gsl_sf_bessel_K1_scaled_e(x, &result)\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"gsl_sf_bessel_K1_e(x, &result)\00", align 1
@ak1_data = internal global [25 x double] [double 0x3FCA9FA430DE464C, double 0x3FC4CF7904579719, double 0xBF780BE12B1D2DF0, double 0x3F40388A9EAEEEC5, double 0xBF0E5AA5BC25651D, double 0x3EE12AE75A6DF9E0, double 0xBEB614626E3FB181, double 0x3E8F3638867340D0, double 0xBE67BDA3DE37BE4B, double 0x3E4328B932CAEF32, double 0xBE203D2BE45202AF, double 0x3DFCB1F2BA8576DE, double 0xBDDA46A29F5F1BDF, double 0x3DB8D2D7A3BB4C6D, double 0xBD981B5F6594C819, double 0x3D77FE48EFA6B2F8, double 0xBD5869DB15CD37D1, double 0x3D3957BD05C500C3, double 0xBD1ACA755D3A5F89, double 0x3CFCCC53E9A4D68E, double 0xBCDF6F510EC41328, double 0x3CC166D6A1E60F93, double 0xBCA385A04A588DBF, double 0x3C862BC1DE2B97FE, double 0xBC697838D1062EAD], align 16
@ak12_data = internal global [14 x double] [double 0x3FB054BE5713184A, double 0x3F9D023ED46952DB, double 0xBF3038FB9BE6C5AA, double 0x3ED8359BB4D90134, double 0xBE8BC4D22EE868DF, double 0x3E44EA9CCE60AB63, double 0xBE0330E9E355CB2D, double 0x3DC485B9C7AE6CAF, double 0xBD88D9739428CF59, double 0x3D50B10CAFD9FD90, double 0xBD1881D86DA4951C, double 0x3CE36FCFB04FAB70, double 0xBCB080AAEC279DA4, double 0x3C7DC75547A9E207], align 16
@0 = private unnamed_addr constant [26 x i8] c"gsl_sf_bessel_K1_scaled_e\00"
@1 = private unnamed_addr constant [13 x i8] c"bessel_K1.ll\00"
@2 = private unnamed_addr constant [12 x i8] c"cheb_eval_e\00"
@3 = private unnamed_addr constant [13 x i8] c"bessel_K1.ll\00"
@4 = private unnamed_addr constant [19 x i8] c"gsl_sf_bessel_K1_e\00"
@5 = private unnamed_addr constant [13 x i8] c"bessel_K1.ll\00"
@6 = private unnamed_addr constant [24 x i8] c"gsl_sf_bessel_K1_scaled\00"
@7 = private unnamed_addr constant [13 x i8] c"bessel_K1.ll\00"
@8 = private unnamed_addr constant [17 x i8] c"gsl_sf_bessel_K1\00"
@9 = private unnamed_addr constant [13 x i8] c"bessel_K1.ll\00"

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_bessel_K1_scaled_e(double, %struct.gsl_sf_result_struct*) #0 !dbg !76 {
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca %struct.gsl_sf_result_struct*, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca %struct.gsl_sf_result_struct, align 8
  %13 = alloca double, align 8
  %14 = alloca %struct.gsl_sf_result_struct, align 8
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !88, metadata !89), !dbg !90
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %5, metadata !91, metadata !89), !dbg !92
  %15 = load double, double* %4, align 8, !dbg !93
  %16 = fcmp ole double %15, 0.000000e+00, !dbg !95
  %17 = call i1 @fCmpInstHandler(double %15, double 0.000000e+00, i1 %16, i32 5, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94557512270464, i32 136, i32 8), !dbg !96
  br i1 %17, label %18, label %27, !dbg !96

; <label>:18:                                     ; preds = %2
  br label %19, !dbg !97, !llvm.loop !99

; <label>:19:                                     ; preds = %18
  %20 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !100
  %21 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %20, i32 0, i32 0, !dbg !100
  store double 0x7FF8000000000000, double* %21, align 8, !dbg !100
  %22 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !100
  %23 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %22, i32 0, i32 1, !dbg !100
  store double 0x7FF8000000000000, double* %23, align 8, !dbg !100
  br label %24, !dbg !100, !llvm.loop !103

; <label>:24:                                     ; preds = %19
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 137, i32 1), !dbg !105
  store i32 1, i32* %3, align 4, !dbg !105
  br label %164, !dbg !105
                                                  ; No predecessors!
  br label %26, !dbg !108

; <label>:26:                                     ; preds = %25
  br label %164, !dbg !110

; <label>:27:                                     ; preds = %2
  %28 = load double, double* %4, align 8, !dbg !111
  %29 = fcmp olt double %28, 0x20000000000000, !dbg !113
  %30 = call i1 @fCmpInstHandler(double %28, double 0x20000000000000, i1 %29, i32 4, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94557512283792, i32 139, i32 13), !dbg !114
  br i1 %30, label %31, label %40, !dbg !114

; <label>:31:                                     ; preds = %27
  br label %32, !dbg !115, !llvm.loop !117

; <label>:32:                                     ; preds = %31
  %33 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !118
  %34 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %33, i32 0, i32 0, !dbg !118
  store double 0x7FF0000000000000, double* %34, align 8, !dbg !118
  %35 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !118
  %36 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %35, i32 0, i32 1, !dbg !118
  store double 0x7FF0000000000000, double* %36, align 8, !dbg !118
  br label %37, !dbg !118, !llvm.loop !121

; <label>:37:                                     ; preds = %32
  call void @gsl_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 140, i32 16), !dbg !123
  store i32 16, i32* %3, align 4, !dbg !123
  br label %164, !dbg !123
                                                  ; No predecessors!
  br label %39, !dbg !126

; <label>:39:                                     ; preds = %38
  br label %163, !dbg !128

; <label>:40:                                     ; preds = %27
  %41 = load double, double* %4, align 8, !dbg !129
  %42 = fcmp olt double %41, 1.000000e+00, !dbg !131
  %43 = call i1 @fCmpInstHandler(double %41, double 1.000000e+00, i1 %42, i32 4, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94557512293360, i32 142, i32 13), !dbg !132
  br i1 %43, label %44, label %100, !dbg !132

; <label>:44:                                     ; preds = %40
  call void @llvm.dbg.declare(metadata double* %6, metadata !133, metadata !89), !dbg !135
  %45 = load double, double* %4, align 8, !dbg !136
  %46 = call double @log(double %45) #6, !dbg !137
  call void @callOneArgHandler(i32 12, double %45, double %46, i64 94557512295544, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94557512296256, i32 143, i32 23), !dbg !135
  store double %46, double* %6, align 8, !dbg !135
  call void @llvm.dbg.declare(metadata double* %7, metadata !138, metadata !89), !dbg !139
  %47 = load double, double* %4, align 8, !dbg !140
  %48 = call double @exp(double %47) #6, !dbg !141
  call void @callOneArgHandler(i32 11, double %47, double %48, i64 94557512299592, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94557512300304, i32 144, i32 23), !dbg !139
  store double %48, double* %7, align 8, !dbg !139
  call void @llvm.dbg.declare(metadata double* %8, metadata !142, metadata !89), !dbg !143
  %49 = load double, double* %4, align 8, !dbg !144
  %50 = load double, double* %4, align 8, !dbg !145
  %51 = fmul double %49, %50, !dbg !146
  call void @fMulHandler(double %49, double %50, double %51, i64 94557512303640, i64 94557512303992, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94557512304400, i32 145, i32 24), !dbg !143
  store double %51, double* %8, align 8, !dbg !143
  call void @llvm.dbg.declare(metadata double* %9, metadata !147, metadata !89), !dbg !148
  %52 = load double, double* %8, align 8, !dbg !149
  %53 = fmul double 2.500000e-01, %52, !dbg !150
  call void @fMulHandler(double 2.500000e-01, double %52, double %53, i64 0, i64 94557512307592, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94557512308064, i32 146, i32 27), !dbg !148
  store double %53, double* %9, align 8, !dbg !148
  call void @llvm.dbg.declare(metadata double* %10, metadata !151, metadata !89), !dbg !152
  %54 = load double, double* %4, align 8, !dbg !153
  %55 = fmul double 5.000000e-01, %54, !dbg !154
  call void @fMulHandler(double 5.000000e-01, double %54, double %55, i64 0, i64 94557512311224, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94557512311696, i32 147, i32 27), !dbg !155
  %56 = load double, double* %9, align 8, !dbg !155
  %57 = load double, double* %9, align 8, !dbg !156
  %58 = load double, double* %9, align 8, !dbg !157
  %59 = call double @gsl_poly_eval(double* getelementptr inbounds ([7 x double], [7 x double]* @i1_poly, i32 0, i32 0), i32 6, double %58), !dbg !158
  %60 = fmul double %57, %59, !dbg !159
  call void @fMulHandler(double %57, double %59, double %60, i64 94557512312440, i64 94557512313808, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94557512314288, i32 147, i32 53), !dbg !160
  %61 = fadd double 5.000000e-01, %60, !dbg !160
  call void @fAddHandler(double 5.000000e-01, double %60, double %61, i64 0, i64 94557512314288, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94557512314704, i32 147, i32 49), !dbg !161
  %62 = fmul double %56, %61, !dbg !161
  call void @fMulHandler(double %56, double %61, double %62, i64 94557512312056, i64 94557512314704, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94557512315088, i32 147, i32 42), !dbg !162
  %63 = fadd double 1.000000e+00, %62, !dbg !162
  call void @fAddHandler(double 1.000000e+00, double %62, double %63, i64 0, i64 94557512315088, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94557512315536, i32 147, i32 38), !dbg !163
  %64 = fmul double %55, %63, !dbg !163
  call void @fMulHandler(double %55, double %63, double %64, i64 94557512311696, i64 94557512315536, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94557512315920, i32 147, i32 31), !dbg !152
  store double %64, double* %10, align 8, !dbg !152
  %65 = load double, double* %7, align 8, !dbg !164
  %66 = load double, double* %8, align 8, !dbg !165
  %67 = load double, double* %8, align 8, !dbg !166
  %68 = call double @gsl_poly_eval(double* getelementptr inbounds ([9 x double], [9 x double]* @k1_poly, i32 0, i32 0), i32 9, double %67), !dbg !167
  %69 = fmul double %66, %68, !dbg !168
  call void @fMulHandler(double %66, double %68, double %69, i64 94557512318376, i64 94557512320496, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94557512320976, i32 148, i32 29), !dbg !169
  %70 = load double, double* %4, align 8, !dbg !169
  %71 = load double, double* %6, align 8, !dbg !170
  %72 = fmul double %70, %71, !dbg !171
  call void @fMulHandler(double %70, double %71, double %72, i64 94557512321336, i64 94557512321720, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94557512322128, i32 148, i32 63), !dbg !172
  %73 = load double, double* %10, align 8, !dbg !172
  %74 = fmul double %72, %73, !dbg !173
  call void @fMulHandler(double %72, double %73, double %74, i64 94557512322128, i64 94557512322520, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94557512322928, i32 148, i32 68), !dbg !174
  %75 = fadd double %69, %74, !dbg !174
  call void @fAddHandler(double %69, double %74, double %75, i64 94557512320976, i64 94557512322928, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94557512323344, i32 148, i32 59), !dbg !175
  %76 = fadd double %75, 1.000000e+00, !dbg !175
  call void @fAddHandler(double %75, double 1.000000e+00, double %76, i64 94557512323344, i64 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94557512323792, i32 148, i32 73), !dbg !176
  %77 = fmul double %65, %76, !dbg !176
  call void @fMulHandler(double %65, double %76, double %77, i64 94557512317992, i64 94557512323792, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94557512324176, i32 148, i32 23), !dbg !177
  %78 = load double, double* %4, align 8, !dbg !177
  %79 = fdiv double %77, %78, !dbg !178
  call void @fDivHandler(double %77, double %78, double %79, i64 94557512324176, i64 94557512324568, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94557512324976, i32 148, i32 78), !dbg !179
  %80 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !179
  %81 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %80, i32 0, i32 0, !dbg !180
  store double %79, double* %81, align 8, !dbg !181
  %82 = load double, double* %7, align 8, !dbg !182
  %83 = load double, double* %6, align 8, !dbg !183
  %84 = call double @fabs(double %83) #1, !dbg !184
  %85 = fmul double %84, 6.000000e-01, !dbg !185
  call void @fMulHandler(double %84, double 6.000000e-01, double %85, i64 94557512327744, i64 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94557512328352, i32 149, i32 38), !dbg !186
  %86 = fadd double 1.600000e+00, %85, !dbg !186
  call void @fAddHandler(double 1.600000e+00, double %85, double %86, i64 0, i64 94557512328352, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94557512328832, i32 149, i32 29), !dbg !187
  %87 = fmul double %82, %86, !dbg !187
  call void @fMulHandler(double %82, double %86, double %87, i64 94557512326616, i64 94557512328832, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94557512329216, i32 149, i32 23), !dbg !188
  %88 = fmul double %87, 0x3CB0000000000000, !dbg !188
  call void @fMulHandler(double %87, double 0x3CB0000000000000, double %88, i64 94557512329216, i64 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94557512329696, i32 149, i32 44), !dbg !189
  %89 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !189
  %90 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %89, i32 0, i32 1, !dbg !190
  store double %88, double* %90, align 8, !dbg !191
  %91 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !192
  %92 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %91, i32 0, i32 0, !dbg !193
  %93 = load double, double* %92, align 8, !dbg !193
  %94 = call double @fabs(double %93) #1, !dbg !194
  %95 = fmul double 0x3CC0000000000000, %94, !dbg !195
  call void @fMulHandler(double 0x3CC0000000000000, double %94, double %95, i64 0, i64 94557512333904, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94557512334448, i32 150, i32 42), !dbg !196
  %96 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !196
  %97 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %96, i32 0, i32 1, !dbg !197
  %98 = load double, double* %97, align 8, !dbg !198
  %99 = fadd double %98, %95, !dbg !198
  call void @fAddHandler(double %98, double %95, double %99, i64 94557512335672, i64 94557512334448, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94557512336080, i32 150, i32 17), !dbg !198
  store double %99, double* %97, align 8, !dbg !198
  store i32 0, i32* %3, align 4, !dbg !199
  br label %164, !dbg !199

; <label>:100:                                    ; preds = %40
  %101 = load double, double* %4, align 8, !dbg !200
  %102 = fcmp ole double %101, 8.000000e+00, !dbg !202
  %103 = call i1 @fCmpInstHandler(double %101, double 8.000000e+00, i1 %102, i32 5, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94557512340368, i32 153, i32 13), !dbg !203
  br i1 %103, label %104, label %134, !dbg !203

; <label>:104:                                    ; preds = %100
  call void @llvm.dbg.declare(metadata double* %11, metadata !204, metadata !89), !dbg !206
  %105 = load double, double* %4, align 8, !dbg !207
  %106 = call double @sqrt(double %105) #6, !dbg !208
  call void @callOneArgHandler(i32 14, double %105, double %106, i64 94557512342600, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94557512343312, i32 154, i32 23), !dbg !206
  store double %106, double* %11, align 8, !dbg !206
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %12, metadata !209, metadata !89), !dbg !210
  %107 = load double, double* %4, align 8, !dbg !211
  %108 = fdiv double 1.600000e+01, %107, !dbg !212
  call void @fDivHandler(double 1.600000e+01, double %107, double %108, i64 0, i64 94557512346648, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94557512347120, i32 156, i32 31), !dbg !213
  %109 = fsub double %108, 9.000000e+00, !dbg !213
  call void @fSubHandler(double %108, double 9.000000e+00, double %109, i64 94557512347120, i64 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94557512347600, i32 156, i32 33), !dbg !214
  %110 = fdiv double %109, 7.000000e+00, !dbg !214
  call void @fDivHandler(double %109, double 7.000000e+00, double %110, i64 94557512347600, i64 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94557512348080, i32 156, i32 38), !dbg !215
  %111 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @ak1_cs, double %110, %struct.gsl_sf_result_struct* %12), !dbg !215
  %112 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %12, i32 0, i32 0, !dbg !216
  %113 = load double, double* %112, align 8, !dbg !216
  %114 = fadd double 1.375000e+00, %113, !dbg !217
  call void @fAddHandler(double 1.375000e+00, double %113, double %114, i64 0, i64 94557512349720, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94557512351488, i32 157, i32 27), !dbg !218
  %115 = load double, double* %11, align 8, !dbg !218
  %116 = fdiv double %114, %115, !dbg !219
  call void @fDivHandler(double %114, double %115, double %116, i64 94557512351488, i64 94557512351848, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94557512352256, i32 157, i32 36), !dbg !220
  %117 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !220
  %118 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %117, i32 0, i32 0, !dbg !221
  store double %116, double* %118, align 8, !dbg !222
  %119 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %12, i32 0, i32 1, !dbg !223
  %120 = load double, double* %119, align 8, !dbg !223
  %121 = load double, double* %11, align 8, !dbg !224
  %122 = fdiv double %120, %121, !dbg !225
  call void @fDivHandler(double %120, double %121, double %122, i64 94557512354344, i64 94557512355992, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94557512356400, i32 158, i32 26), !dbg !226
  %123 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !226
  %124 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %123, i32 0, i32 1, !dbg !227
  store double %122, double* %124, align 8, !dbg !228
  %125 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !229
  %126 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %125, i32 0, i32 0, !dbg !230
  %127 = load double, double* %126, align 8, !dbg !230
  %128 = call double @fabs(double %127) #1, !dbg !231
  %129 = fmul double 0x3CC0000000000000, %128, !dbg !232
  call void @fMulHandler(double 0x3CC0000000000000, double %128, double %129, i64 0, i64 94557512360608, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94557512361088, i32 159, i32 42), !dbg !233
  %130 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !233
  %131 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %130, i32 0, i32 1, !dbg !234
  %132 = load double, double* %131, align 8, !dbg !235
  %133 = fadd double %132, %129, !dbg !235
  call void @fAddHandler(double %132, double %129, double %133, i64 94557512362312, i64 94557512361088, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94557512364784, i32 159, i32 17), !dbg !235
  store double %133, double* %131, align 8, !dbg !235
  store i32 0, i32* %3, align 4, !dbg !236
  br label %164, !dbg !236

; <label>:134:                                    ; preds = %100
  call void @llvm.dbg.declare(metadata double* %13, metadata !237, metadata !89), !dbg !239
  %135 = load double, double* %4, align 8, !dbg !240
  %136 = call double @sqrt(double %135) #6, !dbg !241
  call void @callOneArgHandler(i32 14, double %135, double %136, i64 94557512369784, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94557512370224, i32 163, i32 23), !dbg !239
  store double %136, double* %13, align 8, !dbg !239
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %14, metadata !242, metadata !89), !dbg !243
  %137 = load double, double* %4, align 8, !dbg !244
  %138 = fdiv double 1.600000e+01, %137, !dbg !245
  call void @fDivHandler(double 1.600000e+01, double %137, double %138, i64 0, i64 94557512373480, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94557512373888, i32 165, i32 31), !dbg !246
  %139 = fsub double %138, 1.000000e+00, !dbg !246
  call void @fSubHandler(double %138, double 1.000000e+00, double %139, i64 94557512373888, i64 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94557512374304, i32 165, i32 33), !dbg !247
  %140 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @ak12_cs, double %139, %struct.gsl_sf_result_struct* %14), !dbg !247
  %141 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 0, !dbg !248
  %142 = load double, double* %141, align 8, !dbg !248
  %143 = fadd double 1.250000e+00, %142, !dbg !249
  call void @fAddHandler(double 1.250000e+00, double %142, double %143, i64 0, i64 94557512375672, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94557512377440, i32 166, i32 26), !dbg !250
  %144 = load double, double* %13, align 8, !dbg !250
  %145 = fdiv double %143, %144, !dbg !251
  call void @fDivHandler(double %143, double %144, double %145, i64 94557512377440, i64 94557512377800, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94557512378208, i32 166, i32 35), !dbg !252
  %146 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !252
  %147 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %146, i32 0, i32 0, !dbg !253
  store double %145, double* %147, align 8, !dbg !254
  %148 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 1, !dbg !255
  %149 = load double, double* %148, align 8, !dbg !255
  %150 = load double, double* %13, align 8, !dbg !256
  %151 = fdiv double %149, %150, !dbg !257
  call void @fDivHandler(double %149, double %150, double %151, i64 94557512380296, i64 94557512381944, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94557512382352, i32 167, i32 26), !dbg !258
  %152 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !258
  %153 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %152, i32 0, i32 1, !dbg !259
  store double %151, double* %153, align 8, !dbg !260
  %154 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !261
  %155 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %154, i32 0, i32 0, !dbg !262
  %156 = load double, double* %155, align 8, !dbg !262
  %157 = call double @fabs(double %156) #1, !dbg !263
  %158 = fmul double 0x3CC0000000000000, %157, !dbg !264
  call void @fMulHandler(double 0x3CC0000000000000, double %157, double %158, i64 0, i64 94557512386560, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94557512387040, i32 168, i32 42), !dbg !265
  %159 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !265
  %160 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %159, i32 0, i32 1, !dbg !266
  %161 = load double, double* %160, align 8, !dbg !267
  %162 = fadd double %161, %158, !dbg !267
  call void @fAddHandler(double %161, double %158, double %162, i64 94557512388264, i64 94557512387040, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94557512388672, i32 168, i32 17), !dbg !267
  store double %162, double* %160, align 8, !dbg !267
  store i32 0, i32* %3, align 4, !dbg !268
  br label %164, !dbg !268

; <label>:163:                                    ; preds = %39
  br label %164

; <label>:164:                                    ; preds = %163, %134, %104, %44, %37, %26, %24
  %165 = load i32, i32* %3, align 4, !dbg !269
  ret i32 %165, !dbg !269
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @gsl_error(i8*, i8*, i32, i32) #2

; Function Attrs: nounwind
declare double @log(double) #3

; Function Attrs: nounwind
declare double @exp(double) #3

declare double @gsl_poly_eval(double*, i32, double) #2

; Function Attrs: nounwind readnone
declare double @fabs(double) #4

; Function Attrs: nounwind
declare double @sqrt(double) #3

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @cheb_eval_e(%struct.cheb_series_struct*, double, %struct.gsl_sf_result_struct*) #5 !dbg !270 {
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
  call void @llvm.dbg.declare(metadata %struct.cheb_series_struct** %4, metadata !276, metadata !89), !dbg !277
  store double %1, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !278, metadata !89), !dbg !279
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %6, metadata !280, metadata !89), !dbg !281
  call void @llvm.dbg.declare(metadata i32* %7, metadata !282, metadata !89), !dbg !283
  call void @llvm.dbg.declare(metadata double* %8, metadata !284, metadata !89), !dbg !285
  store double 0.000000e+00, double* %8, align 8, !dbg !285
  call void @llvm.dbg.declare(metadata double* %9, metadata !286, metadata !89), !dbg !287
  store double 0.000000e+00, double* %9, align 8, !dbg !287
  call void @llvm.dbg.declare(metadata double* %10, metadata !288, metadata !89), !dbg !289
  %15 = load double, double* %5, align 8, !dbg !290
  %16 = fmul double 2.000000e+00, %15, !dbg !291
  call void @fMulHandler(double 2.000000e+00, double %15, double %16, i64 0, i64 94557512343192, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94557512407824, i32 11, i32 19), !dbg !292
  %17 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !292
  %18 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %17, i32 0, i32 2, !dbg !293
  %19 = load double, double* %18, align 8, !dbg !293
  %20 = fsub double %16, %19, !dbg !294
  call void @fSubHandler(double %16, double %19, double %20, i64 94557512407824, i64 94557512313640, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94557512410560, i32 11, i32 22), !dbg !295
  %21 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !295
  %22 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %21, i32 0, i32 3, !dbg !296
  %23 = load double, double* %22, align 8, !dbg !296
  %24 = fsub double %20, %23, !dbg !297
  call void @fSubHandler(double %20, double %23, double %24, i64 94557512410560, i64 94557512296136, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94557512413328, i32 11, i32 30), !dbg !298
  %25 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !298
  %26 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %25, i32 0, i32 3, !dbg !299
  %27 = load double, double* %26, align 8, !dbg !299
  %28 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !300
  %29 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %28, i32 0, i32 2, !dbg !301
  %30 = load double, double* %29, align 8, !dbg !301
  %31 = fsub double %27, %30, !dbg !302
  call void @fSubHandler(double %27, double %30, double %31, i64 94557512251160, i64 94557512416840, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94557512418512, i32 11, i32 48), !dbg !303
  %32 = fdiv double %24, %31, !dbg !303
  call void @fDivHandler(double %24, double %31, double %32, i64 94557512413328, i64 94557512418512, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94557512418928, i32 11, i32 39), !dbg !289
  store double %32, double* %10, align 8, !dbg !289
  call void @llvm.dbg.declare(metadata double* %11, metadata !304, metadata !89), !dbg !305
  %33 = load double, double* %10, align 8, !dbg !306
  %34 = fmul double 2.000000e+00, %33, !dbg !307
  call void @fMulHandler(double 2.000000e+00, double %33, double %34, i64 0, i64 94557512421976, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94557512422384, i32 12, i32 19), !dbg !305
  store double %34, double* %11, align 8, !dbg !305
  call void @llvm.dbg.declare(metadata double* %12, metadata !308, metadata !89), !dbg !309
  store double 0.000000e+00, double* %12, align 8, !dbg !309
  %35 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !310
  %36 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %35, i32 0, i32 1, !dbg !312
  %37 = load i32, i32* %36, align 8, !dbg !312
  store i32 %37, i32* %7, align 4, !dbg !313
  br label %38, !dbg !314

; <label>:38:                                     ; preds = %77, %3
  %39 = load i32, i32* %7, align 4, !dbg !315
  %40 = icmp sge i32 %39, 1, !dbg !318
  %41 = sext i32 %39 to i64, !dbg !319
  %42 = call i1 @iCmpInstHandler(i64 %41, i64 1, i1 %40, i32 39, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94557512430960, i32 16, i32 23), !dbg !319
  br i1 %42, label %43, label %80, !dbg !319

; <label>:43:                                     ; preds = %38
  call void @llvm.dbg.declare(metadata double* %13, metadata !320, metadata !89), !dbg !322
  %44 = load double, double* %8, align 8, !dbg !323
  store double %44, double* %13, align 8, !dbg !322
  %45 = load double, double* %11, align 8, !dbg !324
  %46 = load double, double* %8, align 8, !dbg !325
  %47 = fmul double %45, %46, !dbg !326
  call void @fMulHandler(double %45, double %46, double %47, i64 94557512435160, i64 94557512435544, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94557512435952, i32 18, i32 11), !dbg !327
  %48 = load double, double* %9, align 8, !dbg !327
  %49 = fsub double %47, %48, !dbg !328
  call void @fSubHandler(double %47, double %48, double %49, i64 94557512435952, i64 94557512436344, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94557512436752, i32 18, i32 14), !dbg !329
  %50 = load i32, i32* %7, align 4, !dbg !329
  %51 = sext i32 %50 to i64, !dbg !330
  %52 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !330
  %53 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %52, i32 0, i32 0, !dbg !331
  %54 = load double*, double** %53, align 8, !dbg !331
  %55 = getelementptr inbounds double, double* %54, i64 %51, !dbg !330
  %56 = load double, double* %55, align 8, !dbg !330
  %57 = fadd double %49, %56, !dbg !332
  call void @fAddHandler(double %49, double %56, double %57, i64 94557512436752, i64 94557512441800, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94557512441920, i32 18, i32 19), !dbg !333
  store double %57, double* %8, align 8, !dbg !333
  %58 = load double, double* %11, align 8, !dbg !334
  %59 = load double, double* %13, align 8, !dbg !335
  %60 = fmul double %58, %59, !dbg !336
  call void @fMulHandler(double %58, double %59, double %60, i64 94557512442728, i64 94557512443112, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94557512443520, i32 19, i32 17), !dbg !337
  %61 = call double @fabs(double %60) #1, !dbg !337
  %62 = load double, double* %9, align 8, !dbg !338
  %63 = call double @fabs(double %62) #1, !dbg !339
  %64 = fadd double %61, %63, !dbg !341
  call void @fAddHandler(double %61, double %63, double %64, i64 94557512444000, i64 94557512444928, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94557512445408, i32 19, i32 24), !dbg !342
  %65 = load i32, i32* %7, align 4, !dbg !342
  %66 = sext i32 %65 to i64, !dbg !343
  %67 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !343
  %68 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %67, i32 0, i32 0, !dbg !344
  %69 = load double*, double** %68, align 8, !dbg !344
  %70 = getelementptr inbounds double, double* %69, i64 %66, !dbg !343
  %71 = load double, double* %70, align 8, !dbg !343
  %72 = call double @fabs(double %71) #1, !dbg !345
  %73 = fadd double %64, %72, !dbg !347
  call void @fAddHandler(double %64, double %72, double %73, i64 94557512445408, i64 94557512450640, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94557512451120, i32 19, i32 35), !dbg !348
  %74 = load double, double* %12, align 8, !dbg !348
  %75 = fadd double %74, %73, !dbg !348
  call void @fAddHandler(double %74, double %73, double %75, i64 94557512451512, i64 94557512451120, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94557512451920, i32 19, i32 7), !dbg !348
  store double %75, double* %12, align 8, !dbg !348
  %76 = load double, double* %13, align 8, !dbg !349
  store double %76, double* %9, align 8, !dbg !350
  br label %77, !dbg !351

; <label>:77:                                     ; preds = %43
  %78 = load i32, i32* %7, align 4, !dbg !352
  %79 = add nsw i32 %78, -1, !dbg !352
  store i32 %79, i32* %7, align 4, !dbg !352
  br label %38, !dbg !354, !llvm.loop !355

; <label>:80:                                     ; preds = %38
  call void @llvm.dbg.declare(metadata double* %14, metadata !357, metadata !89), !dbg !359
  %81 = load double, double* %8, align 8, !dbg !360
  store double %81, double* %14, align 8, !dbg !359
  %82 = load double, double* %10, align 8, !dbg !361
  %83 = load double, double* %8, align 8, !dbg !362
  %84 = fmul double %82, %83, !dbg !363
  call void @fMulHandler(double %82, double %83, double %84, i64 94557512460984, i64 94557512461368, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94557512461776, i32 25, i32 10), !dbg !364
  %85 = load double, double* %9, align 8, !dbg !364
  %86 = fsub double %84, %85, !dbg !365
  call void @fSubHandler(double %84, double %85, double %86, i64 94557512461776, i64 94557512462168, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94557512462576, i32 25, i32 13), !dbg !366
  %87 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !366
  %88 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %87, i32 0, i32 0, !dbg !367
  %89 = load double*, double** %88, align 8, !dbg !367
  %90 = getelementptr inbounds double, double* %89, i64 0, !dbg !366
  %91 = load double, double* %90, align 8, !dbg !366
  %92 = fmul double 5.000000e-01, %91, !dbg !368
  call void @fMulHandler(double 5.000000e-01, double %91, double %92, i64 0, i64 94557512467208, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94557512467360, i32 25, i32 24), !dbg !369
  %93 = fadd double %86, %92, !dbg !369
  call void @fAddHandler(double %86, double %92, double %93, i64 94557512462576, i64 94557512467360, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94557512467744, i32 25, i32 18), !dbg !370
  store double %93, double* %8, align 8, !dbg !370
  %94 = load double, double* %10, align 8, !dbg !371
  %95 = load double, double* %14, align 8, !dbg !372
  %96 = fmul double %94, %95, !dbg !373
  call void @fMulHandler(double %94, double %95, double %96, i64 94557512468552, i64 94557512468936, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94557512469344, i32 26, i32 16), !dbg !374
  %97 = call double @fabs(double %96) #1, !dbg !374
  %98 = load double, double* %9, align 8, !dbg !375
  %99 = call double @fabs(double %98) #1, !dbg !376
  %100 = fadd double %97, %99, !dbg !378
  call void @fAddHandler(double %97, double %99, double %100, i64 94557512469824, i64 94557512470752, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94557512471232, i32 26, i32 23), !dbg !379
  %101 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !379
  %102 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %101, i32 0, i32 0, !dbg !380
  %103 = load double*, double** %102, align 8, !dbg !380
  %104 = getelementptr inbounds double, double* %103, i64 0, !dbg !379
  %105 = load double, double* %104, align 8, !dbg !379
  %106 = call double @fabs(double %105) #1, !dbg !381
  %107 = fmul double 5.000000e-01, %106, !dbg !383
  call void @fMulHandler(double 5.000000e-01, double %106, double %107, i64 0, i64 94557512475984, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94557512476496, i32 26, i32 40), !dbg !384
  %108 = fadd double %100, %107, !dbg !384
  call void @fAddHandler(double %100, double %107, double %108, i64 94557512471232, i64 94557512476496, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94557512476880, i32 26, i32 34), !dbg !385
  %109 = load double, double* %12, align 8, !dbg !385
  %110 = fadd double %109, %108, !dbg !385
  call void @fAddHandler(double %109, double %108, double %110, i64 94557512477272, i64 94557512476880, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94557512477680, i32 26, i32 7), !dbg !385
  store double %110, double* %12, align 8, !dbg !385
  %111 = load double, double* %8, align 8, !dbg !386
  %112 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !387
  %113 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %112, i32 0, i32 0, !dbg !388
  store double %111, double* %113, align 8, !dbg !389
  %114 = load double, double* %12, align 8, !dbg !390
  %115 = fmul double 0x3CB0000000000000, %114, !dbg !391
  call void @fMulHandler(double 0x3CB0000000000000, double %114, double %115, i64 0, i64 94557512481096, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94557512481504, i32 30, i32 33), !dbg !392
  %116 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !392
  %117 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %116, i32 0, i32 1, !dbg !393
  %118 = load i32, i32* %117, align 8, !dbg !393
  %119 = sext i32 %118 to i64, !dbg !394
  %120 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !394
  %121 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %120, i32 0, i32 0, !dbg !395
  %122 = load double*, double** %121, align 8, !dbg !395
  %123 = getelementptr inbounds double, double* %122, i64 %119, !dbg !394
  %124 = load double, double* %123, align 8, !dbg !394
  %125 = call double @fabs(double %124) #1, !dbg !396
  %126 = fadd double %115, %125, !dbg !397
  call void @fAddHandler(double %115, double %125, double %126, i64 94557512481504, i64 94557512488832, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94557512489312, i32 30, i32 37), !dbg !398
  %127 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !398
  %128 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %127, i32 0, i32 1, !dbg !399
  store double %126, double* %128, align 8, !dbg !400
  ret i32 0, !dbg !401
}

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_bessel_K1_e(double, %struct.gsl_sf_result_struct*) #0 !dbg !402 {
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca %struct.gsl_sf_result_struct*, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca %struct.gsl_sf_result_struct, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !403, metadata !89), !dbg !404
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %5, metadata !405, metadata !89), !dbg !406
  %13 = load double, double* %4, align 8, !dbg !407
  %14 = fcmp ole double %13, 0.000000e+00, !dbg !409
  %15 = call i1 @fCmpInstHandler(double %13, double 0.000000e+00, i1 %14, i32 5, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @5, i32 0, i32 0), i64 94557512498384, i32 178, i32 8), !dbg !410
  br i1 %15, label %16, label %25, !dbg !410

; <label>:16:                                     ; preds = %2
  br label %17, !dbg !411, !llvm.loop !413

; <label>:17:                                     ; preds = %16
  %18 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !414
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %18, i32 0, i32 0, !dbg !414
  store double 0x7FF8000000000000, double* %19, align 8, !dbg !414
  %20 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !414
  %21 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %20, i32 0, i32 1, !dbg !414
  store double 0x7FF8000000000000, double* %21, align 8, !dbg !414
  br label %22, !dbg !414, !llvm.loop !417

; <label>:22:                                     ; preds = %17
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 179, i32 1), !dbg !419
  store i32 1, i32* %3, align 4, !dbg !419
  br label %138, !dbg !419
                                                  ; No predecessors!
  br label %24, !dbg !422

; <label>:24:                                     ; preds = %23
  br label %138, !dbg !424

; <label>:25:                                     ; preds = %2
  %26 = load double, double* %4, align 8, !dbg !425
  %27 = fcmp olt double %26, 0x20000000000000, !dbg !427
  %28 = call i1 @fCmpInstHandler(double %26, double 0x20000000000000, i1 %27, i32 4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @5, i32 0, i32 0), i64 94557512507088, i32 181, i32 13), !dbg !428
  br i1 %28, label %29, label %38, !dbg !428

; <label>:29:                                     ; preds = %25
  br label %30, !dbg !429, !llvm.loop !431

; <label>:30:                                     ; preds = %29
  %31 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !432
  %32 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %31, i32 0, i32 0, !dbg !432
  store double 0x7FF0000000000000, double* %32, align 8, !dbg !432
  %33 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !432
  %34 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %33, i32 0, i32 1, !dbg !432
  store double 0x7FF0000000000000, double* %34, align 8, !dbg !432
  br label %35, !dbg !432, !llvm.loop !435

; <label>:35:                                     ; preds = %30
  call void @gsl_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 182, i32 16), !dbg !437
  store i32 16, i32* %3, align 4, !dbg !437
  br label %138, !dbg !437
                                                  ; No predecessors!
  br label %37, !dbg !440

; <label>:37:                                     ; preds = %36
  br label %137, !dbg !442

; <label>:38:                                     ; preds = %25
  %39 = load double, double* %4, align 8, !dbg !443
  %40 = fcmp olt double %39, 1.000000e+00, !dbg !445
  %41 = call i1 @fCmpInstHandler(double %39, double 1.000000e+00, i1 %40, i32 4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @5, i32 0, i32 0), i64 94557512515680, i32 184, i32 13), !dbg !446
  br i1 %41, label %42, label %92, !dbg !446

; <label>:42:                                     ; preds = %38
  call void @llvm.dbg.declare(metadata double* %6, metadata !447, metadata !89), !dbg !449
  %43 = load double, double* %4, align 8, !dbg !450
  %44 = call double @log(double %43) #6, !dbg !451
  call void @callOneArgHandler(i32 12, double %43, double %44, i64 94557512517816, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @5, i32 0, i32 0), i64 94557512518256, i32 185, i32 23), !dbg !449
  store double %44, double* %6, align 8, !dbg !449
  call void @llvm.dbg.declare(metadata double* %7, metadata !452, metadata !89), !dbg !453
  %45 = load double, double* %4, align 8, !dbg !454
  %46 = load double, double* %4, align 8, !dbg !455
  %47 = fmul double %45, %46, !dbg !456
  call void @fMulHandler(double %45, double %46, double %47, i64 94557512521512, i64 94557512521864, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @5, i32 0, i32 0), i64 94557512522272, i32 186, i32 24), !dbg !453
  store double %47, double* %7, align 8, !dbg !453
  call void @llvm.dbg.declare(metadata double* %8, metadata !457, metadata !89), !dbg !458
  %48 = load double, double* %7, align 8, !dbg !459
  %49 = fmul double 2.500000e-01, %48, !dbg !460
  call void @fMulHandler(double 2.500000e-01, double %48, double %49, i64 0, i64 94557512525464, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @5, i32 0, i32 0), i64 94557512525872, i32 187, i32 27), !dbg !458
  store double %49, double* %8, align 8, !dbg !458
  call void @llvm.dbg.declare(metadata double* %9, metadata !461, metadata !89), !dbg !462
  %50 = load double, double* %4, align 8, !dbg !463
  %51 = fmul double 5.000000e-01, %50, !dbg !464
  call void @fMulHandler(double 5.000000e-01, double %50, double %51, i64 0, i64 94557512529032, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @5, i32 0, i32 0), i64 94557512529440, i32 188, i32 27), !dbg !465
  %52 = load double, double* %8, align 8, !dbg !465
  %53 = load double, double* %8, align 8, !dbg !466
  %54 = load double, double* %8, align 8, !dbg !467
  %55 = call double @gsl_poly_eval(double* getelementptr inbounds ([7 x double], [7 x double]* @i1_poly, i32 0, i32 0), i32 6, double %54), !dbg !468
  %56 = fmul double %53, %55, !dbg !469
  call void @fMulHandler(double %53, double %55, double %56, i64 94557512530184, i64 94557512531088, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @5, i32 0, i32 0), i64 94557512531568, i32 188, i32 53), !dbg !470
  %57 = fadd double 5.000000e-01, %56, !dbg !470
  call void @fAddHandler(double 5.000000e-01, double %56, double %57, i64 0, i64 94557512531568, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @5, i32 0, i32 0), i64 94557512531984, i32 188, i32 49), !dbg !471
  %58 = fmul double %52, %57, !dbg !471
  call void @fMulHandler(double %52, double %57, double %58, i64 94557512529800, i64 94557512531984, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @5, i32 0, i32 0), i64 94557512532368, i32 188, i32 42), !dbg !472
  %59 = fadd double 1.000000e+00, %58, !dbg !472
  call void @fAddHandler(double 1.000000e+00, double %58, double %59, i64 0, i64 94557512532368, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @5, i32 0, i32 0), i64 94557512532816, i32 188, i32 38), !dbg !473
  %60 = fmul double %51, %59, !dbg !473
  call void @fMulHandler(double %51, double %59, double %60, i64 94557512529440, i64 94557512532816, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @5, i32 0, i32 0), i64 94557512533200, i32 188, i32 31), !dbg !462
  store double %60, double* %9, align 8, !dbg !462
  %61 = load double, double* %7, align 8, !dbg !474
  %62 = load double, double* %7, align 8, !dbg !475
  %63 = call double @gsl_poly_eval(double* getelementptr inbounds ([9 x double], [9 x double]* @k1_poly, i32 0, i32 0), i32 9, double %62), !dbg !476
  %64 = fmul double %61, %63, !dbg !477
  call void @fMulHandler(double %61, double %63, double %64, i64 94557512535272, i64 94557512536176, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @5, i32 0, i32 0), i64 94557512536656, i32 189, i32 24), !dbg !478
  %65 = load double, double* %4, align 8, !dbg !478
  %66 = load double, double* %6, align 8, !dbg !479
  %67 = fmul double %65, %66, !dbg !480
  call void @fMulHandler(double %65, double %66, double %67, i64 94557512537016, i64 94557512537400, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @5, i32 0, i32 0), i64 94557512537808, i32 189, i32 58), !dbg !481
  %68 = load double, double* %9, align 8, !dbg !481
  %69 = fmul double %67, %68, !dbg !482
  call void @fMulHandler(double %67, double %68, double %69, i64 94557512537808, i64 94557512538200, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @5, i32 0, i32 0), i64 94557512538608, i32 189, i32 63), !dbg !483
  %70 = fadd double %64, %69, !dbg !483
  call void @fAddHandler(double %64, double %69, double %70, i64 94557512536656, i64 94557512538608, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @5, i32 0, i32 0), i64 94557512539024, i32 189, i32 54), !dbg !484
  %71 = fadd double %70, 1.000000e+00, !dbg !484
  call void @fAddHandler(double %70, double 1.000000e+00, double %71, i64 94557512539024, i64 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @5, i32 0, i32 0), i64 94557512539472, i32 189, i32 68), !dbg !485
  %72 = load double, double* %4, align 8, !dbg !485
  %73 = fdiv double %71, %72, !dbg !486
  call void @fDivHandler(double %71, double %72, double %73, i64 94557512539472, i64 94557512539832, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @5, i32 0, i32 0), i64 94557512540240, i32 189, i32 73), !dbg !487
  %74 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !487
  %75 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %74, i32 0, i32 0, !dbg !488
  store double %73, double* %75, align 8, !dbg !489
  %76 = load double, double* %6, align 8, !dbg !490
  %77 = call double @fabs(double %76) #1, !dbg !491
  %78 = fmul double %77, 6.000000e-01, !dbg !492
  call void @fMulHandler(double %77, double 6.000000e-01, double %78, i64 94557512542352, i64 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @5, i32 0, i32 0), i64 94557512542864, i32 190, i32 33), !dbg !493
  %79 = fadd double 1.600000e+00, %78, !dbg !493
  call void @fAddHandler(double 1.600000e+00, double %78, double %79, i64 0, i64 94557512542864, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @5, i32 0, i32 0), i64 94557512543280, i32 190, i32 24), !dbg !494
  %80 = fmul double %79, 0x3CB0000000000000, !dbg !494
  call void @fMulHandler(double %79, double 0x3CB0000000000000, double %80, i64 94557512543280, i64 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @5, i32 0, i32 0), i64 94557512543664, i32 190, i32 39), !dbg !495
  %81 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !495
  %82 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %81, i32 0, i32 1, !dbg !496
  store double %80, double* %82, align 8, !dbg !497
  %83 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !498
  %84 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %83, i32 0, i32 0, !dbg !499
  %85 = load double, double* %84, align 8, !dbg !499
  %86 = call double @fabs(double %85) #1, !dbg !500
  %87 = fmul double 0x3CC0000000000000, %86, !dbg !501
  call void @fMulHandler(double 0x3CC0000000000000, double %86, double %87, i64 0, i64 94557512547872, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @5, i32 0, i32 0), i64 94557512548352, i32 191, i32 42), !dbg !502
  %88 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !502
  %89 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %88, i32 0, i32 1, !dbg !503
  %90 = load double, double* %89, align 8, !dbg !504
  %91 = fadd double %90, %87, !dbg !504
  call void @fAddHandler(double %90, double %87, double %91, i64 94557512549576, i64 94557512548352, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @5, i32 0, i32 0), i64 94557512549984, i32 191, i32 17), !dbg !504
  store double %91, double* %89, align 8, !dbg !504
  store i32 0, i32* %3, align 4, !dbg !505
  br label %138, !dbg !505

; <label>:92:                                     ; preds = %38
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %10, metadata !506, metadata !89), !dbg !508
  call void @llvm.dbg.declare(metadata i32* %11, metadata !509, metadata !89), !dbg !510
  %93 = load double, double* %4, align 8, !dbg !511
  %94 = call i32 @gsl_sf_bessel_K1_scaled_e(double %93, %struct.gsl_sf_result_struct* %10), !dbg !512
  store i32 %94, i32* %11, align 4, !dbg !510
  call void @llvm.dbg.declare(metadata i32* %12, metadata !513, metadata !89), !dbg !514
  %95 = load double, double* %4, align 8, !dbg !515
  %96 = fsub double -0.000000e+00, %95, !dbg !516
  call void @fSubHandler(double -0.000000e+00, double %95, double %96, i64 0, i64 94557512559656, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @5, i32 0, i32 0), i64 94557512560096, i32 197, i32 41), !dbg !517
  %97 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !517
  %98 = load double, double* %97, align 8, !dbg !517
  %99 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 1, !dbg !518
  %100 = load double, double* %99, align 8, !dbg !518
  %101 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !519
  %102 = call i32 @gsl_sf_exp_mult_err_e(double %96, double 0.000000e+00, double %98, double %100, %struct.gsl_sf_result_struct* %101), !dbg !520
  store i32 %102, i32* %12, align 4, !dbg !514
  %103 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !521
  %104 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %103, i32 0, i32 0, !dbg !522
  %105 = load double, double* %104, align 8, !dbg !522
  %106 = call double @fabs(double %105) #1, !dbg !523
  %107 = load double, double* %4, align 8, !dbg !524
  %108 = call double @fabs(double %107) #1, !dbg !525
  %109 = fmul double 0x3CB0000000000000, %108, !dbg !527
  call void @fMulHandler(double 0x3CB0000000000000, double %108, double %109, i64 0, i64 94557512571200, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @5, i32 0, i32 0), i64 94557512571680, i32 200, i32 55), !dbg !528
  %110 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 1, !dbg !528
  %111 = load double, double* %110, align 8, !dbg !528
  %112 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !529
  %113 = load double, double* %112, align 8, !dbg !529
  %114 = fdiv double %111, %113, !dbg !530
  call void @fDivHandler(double %111, double %113, double %114, i64 94557512572520, i64 94557512574616, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @5, i32 0, i32 0), i64 94557512576288, i32 200, i32 79), !dbg !531
  %115 = fadd double %109, %114, !dbg !531
  call void @fAddHandler(double %109, double %114, double %115, i64 94557512571680, i64 94557512576288, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @5, i32 0, i32 0), i64 94557512576704, i32 200, i32 64), !dbg !532
  %116 = fmul double %106, %115, !dbg !532
  call void @fMulHandler(double %106, double %115, double %116, i64 94557512570272, i64 94557512576704, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @5, i32 0, i32 0), i64 94557512577120, i32 200, i32 37), !dbg !533
  %117 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !533
  %118 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %117, i32 0, i32 1, !dbg !534
  store double %116, double* %118, align 8, !dbg !535
  %119 = load i32, i32* %12, align 4, !dbg !536
  %120 = icmp ne i32 %119, 0, !dbg !536
  %121 = sext i32 %119 to i64, !dbg !536
  %122 = call i1 @iCmpInstHandler(i64 %121, i64 0, i1 %120, i32 33, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @5, i32 0, i32 0), i64 94557512579168, i32 201, i32 12), !dbg !536
  br i1 %122, label %123, label %125, !dbg !536

; <label>:123:                                    ; preds = %92
  %124 = load i32, i32* %12, align 4, !dbg !537
  br label %135, !dbg !537

; <label>:125:                                    ; preds = %92
  %126 = load i32, i32* %11, align 4, !dbg !538
  %127 = icmp ne i32 %126, 0, !dbg !538
  %128 = sext i32 %126 to i64, !dbg !538
  %129 = call i1 @iCmpInstHandler(i64 %128, i64 0, i1 %127, i32 33, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @5, i32 0, i32 0), i64 94557512583712, i32 201, i32 12), !dbg !538
  br i1 %129, label %130, label %132, !dbg !538

; <label>:130:                                    ; preds = %125
  %131 = load i32, i32* %11, align 4, !dbg !540
  br label %133, !dbg !540

; <label>:132:                                    ; preds = %125
  br label %133, !dbg !542

; <label>:133:                                    ; preds = %132, %130
  %134 = phi i32 [ %131, %130 ], [ 0, %132 ], !dbg !544
  br label %135, !dbg !544

; <label>:135:                                    ; preds = %133, %123
  %136 = phi i32 [ %124, %123 ], [ %134, %133 ], !dbg !546
  store i32 %136, i32* %3, align 4, !dbg !548
  br label %138, !dbg !548

; <label>:137:                                    ; preds = %37
  br label %138

; <label>:138:                                    ; preds = %137, %135, %42, %35, %24, %22
  %139 = load i32, i32* %3, align 4, !dbg !549
  ret i32 %139, !dbg !549
}

declare i32 @gsl_sf_exp_mult_err_e(double, double, double, double, %struct.gsl_sf_result_struct*) #2

; Function Attrs: nounwind uwtable
define double @gsl_sf_bessel_K1_scaled(double) #0 !dbg !550 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct, align 8
  %5 = alloca i32, align 4
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !553, metadata !89), !dbg !554
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %4, metadata !555, metadata !89), !dbg !556
  call void @llvm.dbg.declare(metadata i32* %5, metadata !557, metadata !89), !dbg !556
  %6 = load double, double* %3, align 8, !dbg !556
  %7 = call i32 @gsl_sf_bessel_K1_scaled_e(double %6, %struct.gsl_sf_result_struct* %4), !dbg !556
  store i32 %7, i32* %5, align 4, !dbg !556
  %8 = load i32, i32* %5, align 4, !dbg !558
  %9 = icmp ne i32 %8, 0, !dbg !558
  %10 = sext i32 %8 to i64, !dbg !556
  %11 = call i1 @iCmpInstHandler(i64 %10, i64 0, i1 %9, i32 33, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @7, i32 0, i32 0), i64 94557512602160, i32 211, i32 3), !dbg !556
  br i1 %11, label %12, label %18, !dbg !556

; <label>:12:                                     ; preds = %1
  br label %13, !dbg !560, !llvm.loop !563

; <label>:13:                                     ; preds = %12
  %14 = load i32, i32* %5, align 4, !dbg !565
  call void @gsl_error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 211, i32 %14), !dbg !565
  %15 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !565
  %16 = load double, double* %15, align 8, !dbg !565
  store double %16, double* %2, align 8, !dbg !565
  br label %21, !dbg !565
                                                  ; No predecessors!
  br label %18, !dbg !568

; <label>:18:                                     ; preds = %17, %1
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !570
  %20 = load double, double* %19, align 8, !dbg !570
  store double %20, double* %2, align 8, !dbg !570
  br label %21, !dbg !570

; <label>:21:                                     ; preds = %18, %13
  %22 = load double, double* %2, align 8, !dbg !572
  ret double %22, !dbg !572
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_bessel_K1(double) #0 !dbg !573 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct, align 8
  %5 = alloca i32, align 4
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !574, metadata !89), !dbg !575
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %4, metadata !576, metadata !89), !dbg !577
  call void @llvm.dbg.declare(metadata i32* %5, metadata !578, metadata !89), !dbg !577
  %6 = load double, double* %3, align 8, !dbg !577
  %7 = call i32 @gsl_sf_bessel_K1_e(double %6, %struct.gsl_sf_result_struct* %4), !dbg !577
  store i32 %7, i32* %5, align 4, !dbg !577
  %8 = load i32, i32* %5, align 4, !dbg !579
  %9 = icmp ne i32 %8, 0, !dbg !579
  %10 = sext i32 %8 to i64, !dbg !577
  %11 = call i1 @iCmpInstHandler(i64 %10, i64 0, i1 %9, i32 33, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @9, i32 0, i32 0), i64 94557512619456, i32 216, i32 3), !dbg !577
  br i1 %11, label %12, label %18, !dbg !577

; <label>:12:                                     ; preds = %1
  br label %13, !dbg !581, !llvm.loop !584

; <label>:13:                                     ; preds = %12
  %14 = load i32, i32* %5, align 4, !dbg !586
  call void @gsl_error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 216, i32 %14), !dbg !586
  %15 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !586
  %16 = load double, double* %15, align 8, !dbg !586
  store double %16, double* %2, align 8, !dbg !586
  br label %21, !dbg !586
                                                  ; No predecessors!
  br label %18, !dbg !589

; <label>:18:                                     ; preds = %17, %1
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !591
  %20 = load double, double* %19, align 8, !dbg !591
  store double %20, double* %2, align 8, !dbg !591
  br label %21, !dbg !591

; <label>:21:                                     ; preds = %18, %13
  %22 = load double, double* %2, align 8, !dbg !593
  ret double %22, !dbg !593
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
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!72, !73, !74}
!llvm.ident = !{!75}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, globals: !41)
!1 = !DIFile(filename: "bessel_K1.c", directory: "/fpcc/gsl-2.5/specfunc")
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
!41 = !{!42, !47, !51, !63, !67, !68}
!42 = distinct !DIGlobalVariable(name: "i1_poly", scope: !0, file: !1, line: 53, type: !43, isLocal: true, isDefinition: true, variable: [7 x double]* @i1_poly)
!43 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 448, align: 64, elements: !45)
!44 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!45 = !{!46}
!46 = !DISubrange(count: 7)
!47 = distinct !DIGlobalVariable(name: "k1_poly", scope: !0, file: !1, line: 41, type: !48, isLocal: true, isDefinition: true, variable: [9 x double]* @k1_poly)
!48 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 576, align: 64, elements: !49)
!49 = !{!50}
!50 = !DISubrange(count: 9)
!51 = distinct !DIGlobalVariable(name: "ak1_cs", scope: !0, file: !1, line: 94, type: !52, isLocal: true, isDefinition: true, variable: %struct.cheb_series_struct* @ak1_cs)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "cheb_series", file: !53, line: 29, baseType: !54)
!53 = !DIFile(filename: "./chebyshev.h", directory: "/fpcc/gsl-2.5/specfunc")
!54 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cheb_series_struct", file: !53, line: 22, size: 320, align: 64, elements: !55)
!55 = !{!56, !58, !60, !61, !62}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !54, file: !53, line: 23, baseType: !57, size: 64, align: 64)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64, align: 64)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "order", scope: !54, file: !53, line: 24, baseType: !59, size: 32, align: 32, offset: 64)
!59 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !54, file: !53, line: 25, baseType: !44, size: 64, align: 64, offset: 128)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !54, file: !53, line: 26, baseType: !44, size: 64, align: 64, offset: 192)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "order_sp", scope: !54, file: !53, line: 27, baseType: !59, size: 32, align: 32, offset: 256)
!63 = distinct !DIGlobalVariable(name: "ak1_data", scope: !0, file: !1, line: 66, type: !64, isLocal: true, isDefinition: true, variable: [25 x double]* @ak1_data)
!64 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 1600, align: 64, elements: !65)
!65 = !{!66}
!66 = !DISubrange(count: 25)
!67 = distinct !DIGlobalVariable(name: "ak12_cs", scope: !0, file: !1, line: 122, type: !52, isLocal: true, isDefinition: true, variable: %struct.cheb_series_struct* @ak12_cs)
!68 = distinct !DIGlobalVariable(name: "ak12_data", scope: !0, file: !1, line: 105, type: !69, isLocal: true, isDefinition: true, variable: [14 x double]* @ak12_data)
!69 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 896, align: 64, elements: !70)
!70 = !{!71}
!71 = !DISubrange(count: 14)
!72 = !{i32 2, !"Dwarf Version", i32 4}
!73 = !{i32 2, !"Debug Info Version", i32 3}
!74 = !{i32 1, !"PIC Level", i32 2}
!75 = !{!"clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)"}
!76 = distinct !DISubprogram(name: "gsl_sf_bessel_K1_scaled_e", scope: !1, file: !1, line: 132, type: !77, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !87)
!77 = !DISubroutineType(types: !78)
!78 = !{!59, !79, !80}
!79 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !44)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64, align: 64)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !82, line: 41, baseType: !83)
!82 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/fpcc/gsl-2.5/specfunc")
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !82, line: 37, size: 128, align: 64, elements: !84)
!84 = !{!85, !86}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !83, file: !82, line: 38, baseType: !44, size: 64, align: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !83, file: !82, line: 39, baseType: !44, size: 64, align: 64, offset: 64)
!87 = !{}
!88 = !DILocalVariable(name: "x", arg: 1, scope: !76, file: !1, line: 132, type: !79)
!89 = !DIExpression()
!90 = !DILocation(line: 132, column: 44, scope: !76)
!91 = !DILocalVariable(name: "result", arg: 2, scope: !76, file: !1, line: 132, type: !80)
!92 = !DILocation(line: 132, column: 63, scope: !76)
!93 = !DILocation(line: 136, column: 6, scope: !94)
!94 = distinct !DILexicalBlock(scope: !76, file: !1, line: 136, column: 6)
!95 = !DILocation(line: 136, column: 8, scope: !94)
!96 = !DILocation(line: 136, column: 6, scope: !76)
!97 = !DILocation(line: 137, column: 5, scope: !98)
!98 = distinct !DILexicalBlock(scope: !94, file: !1, line: 136, column: 16)
!99 = distinct !{!99, !97}
!100 = !DILocation(line: 137, column: 5, scope: !101)
!101 = !DILexicalBlockFile(scope: !102, file: !1, discriminator: 1)
!102 = distinct !DILexicalBlock(scope: !98, file: !1, line: 137, column: 5)
!103 = distinct !{!103, !104}
!104 = !DILocation(line: 137, column: 5, scope: !102)
!105 = !DILocation(line: 137, column: 5, scope: !106)
!106 = !DILexicalBlockFile(scope: !107, file: !1, discriminator: 2)
!107 = distinct !DILexicalBlock(scope: !102, file: !1, line: 137, column: 5)
!108 = !DILocation(line: 137, column: 5, scope: !109)
!109 = !DILexicalBlockFile(scope: !102, file: !1, discriminator: 3)
!110 = !DILocation(line: 138, column: 3, scope: !98)
!111 = !DILocation(line: 139, column: 11, scope: !112)
!112 = distinct !DILexicalBlock(scope: !94, file: !1, line: 139, column: 11)
!113 = !DILocation(line: 139, column: 13, scope: !112)
!114 = !DILocation(line: 139, column: 11, scope: !94)
!115 = !DILocation(line: 140, column: 5, scope: !116)
!116 = distinct !DILexicalBlock(scope: !112, file: !1, line: 139, column: 32)
!117 = distinct !{!117, !115}
!118 = !DILocation(line: 140, column: 5, scope: !119)
!119 = !DILexicalBlockFile(scope: !120, file: !1, discriminator: 1)
!120 = distinct !DILexicalBlock(scope: !116, file: !1, line: 140, column: 5)
!121 = distinct !{!121, !122}
!122 = !DILocation(line: 140, column: 5, scope: !120)
!123 = !DILocation(line: 140, column: 5, scope: !124)
!124 = !DILexicalBlockFile(scope: !125, file: !1, discriminator: 2)
!125 = distinct !DILexicalBlock(scope: !120, file: !1, line: 140, column: 5)
!126 = !DILocation(line: 140, column: 5, scope: !127)
!127 = !DILexicalBlockFile(scope: !120, file: !1, discriminator: 3)
!128 = !DILocation(line: 141, column: 3, scope: !116)
!129 = !DILocation(line: 142, column: 11, scope: !130)
!130 = distinct !DILexicalBlock(scope: !112, file: !1, line: 142, column: 11)
!131 = !DILocation(line: 142, column: 13, scope: !130)
!132 = !DILocation(line: 142, column: 11, scope: !112)
!133 = !DILocalVariable(name: "lx", scope: !134, file: !1, line: 143, type: !79)
!134 = distinct !DILexicalBlock(scope: !130, file: !1, line: 142, column: 20)
!135 = !DILocation(line: 143, column: 18, scope: !134)
!136 = !DILocation(line: 143, column: 27, scope: !134)
!137 = !DILocation(line: 143, column: 23, scope: !134)
!138 = !DILocalVariable(name: "ex", scope: !134, file: !1, line: 144, type: !79)
!139 = !DILocation(line: 144, column: 18, scope: !134)
!140 = !DILocation(line: 144, column: 27, scope: !134)
!141 = !DILocation(line: 144, column: 23, scope: !134)
!142 = !DILocalVariable(name: "x2", scope: !134, file: !1, line: 145, type: !79)
!143 = !DILocation(line: 145, column: 18, scope: !134)
!144 = !DILocation(line: 145, column: 23, scope: !134)
!145 = !DILocation(line: 145, column: 25, scope: !134)
!146 = !DILocation(line: 145, column: 24, scope: !134)
!147 = !DILocalVariable(name: "t", scope: !134, file: !1, line: 146, type: !79)
!148 = !DILocation(line: 146, column: 18, scope: !134)
!149 = !DILocation(line: 146, column: 28, scope: !134)
!150 = !DILocation(line: 146, column: 27, scope: !134)
!151 = !DILocalVariable(name: "i1", scope: !134, file: !1, line: 147, type: !79)
!152 = !DILocation(line: 147, column: 18, scope: !134)
!153 = !DILocation(line: 147, column: 29, scope: !134)
!154 = !DILocation(line: 147, column: 27, scope: !134)
!155 = !DILocation(line: 147, column: 40, scope: !134)
!156 = !DILocation(line: 147, column: 51, scope: !134)
!157 = !DILocation(line: 147, column: 79, scope: !134)
!158 = !DILocation(line: 147, column: 55, scope: !134)
!159 = !DILocation(line: 147, column: 53, scope: !134)
!160 = !DILocation(line: 147, column: 49, scope: !134)
!161 = !DILocation(line: 147, column: 42, scope: !134)
!162 = !DILocation(line: 147, column: 38, scope: !134)
!163 = !DILocation(line: 147, column: 31, scope: !134)
!164 = !DILocation(line: 148, column: 20, scope: !134)
!165 = !DILocation(line: 148, column: 26, scope: !134)
!166 = !DILocation(line: 148, column: 55, scope: !134)
!167 = !DILocation(line: 148, column: 31, scope: !134)
!168 = !DILocation(line: 148, column: 29, scope: !134)
!169 = !DILocation(line: 148, column: 61, scope: !134)
!170 = !DILocation(line: 148, column: 65, scope: !134)
!171 = !DILocation(line: 148, column: 63, scope: !134)
!172 = !DILocation(line: 148, column: 70, scope: !134)
!173 = !DILocation(line: 148, column: 68, scope: !134)
!174 = !DILocation(line: 148, column: 59, scope: !134)
!175 = !DILocation(line: 148, column: 73, scope: !134)
!176 = !DILocation(line: 148, column: 23, scope: !134)
!177 = !DILocation(line: 148, column: 80, scope: !134)
!178 = !DILocation(line: 148, column: 78, scope: !134)
!179 = !DILocation(line: 148, column: 5, scope: !134)
!180 = !DILocation(line: 148, column: 13, scope: !134)
!181 = !DILocation(line: 148, column: 18, scope: !134)
!182 = !DILocation(line: 149, column: 20, scope: !134)
!183 = !DILocation(line: 149, column: 35, scope: !134)
!184 = !DILocation(line: 149, column: 30, scope: !134)
!185 = !DILocation(line: 149, column: 38, scope: !134)
!186 = !DILocation(line: 149, column: 29, scope: !134)
!187 = !DILocation(line: 149, column: 23, scope: !134)
!188 = !DILocation(line: 149, column: 44, scope: !134)
!189 = !DILocation(line: 149, column: 5, scope: !134)
!190 = !DILocation(line: 149, column: 13, scope: !134)
!191 = !DILocation(line: 149, column: 18, scope: !134)
!192 = !DILocation(line: 150, column: 49, scope: !134)
!193 = !DILocation(line: 150, column: 57, scope: !134)
!194 = !DILocation(line: 150, column: 44, scope: !134)
!195 = !DILocation(line: 150, column: 42, scope: !134)
!196 = !DILocation(line: 150, column: 5, scope: !134)
!197 = !DILocation(line: 150, column: 13, scope: !134)
!198 = !DILocation(line: 150, column: 17, scope: !134)
!199 = !DILocation(line: 151, column: 5, scope: !134)
!200 = !DILocation(line: 153, column: 11, scope: !201)
!201 = distinct !DILexicalBlock(scope: !130, file: !1, line: 153, column: 11)
!202 = !DILocation(line: 153, column: 13, scope: !201)
!203 = !DILocation(line: 153, column: 11, scope: !130)
!204 = !DILocalVariable(name: "sx", scope: !205, file: !1, line: 154, type: !79)
!205 = distinct !DILexicalBlock(scope: !201, file: !1, line: 153, column: 21)
!206 = !DILocation(line: 154, column: 18, scope: !205)
!207 = !DILocation(line: 154, column: 28, scope: !205)
!208 = !DILocation(line: 154, column: 23, scope: !205)
!209 = !DILocalVariable(name: "c", scope: !205, file: !1, line: 155, type: !81)
!210 = !DILocation(line: 155, column: 19, scope: !205)
!211 = !DILocation(line: 156, column: 32, scope: !205)
!212 = !DILocation(line: 156, column: 31, scope: !205)
!213 = !DILocation(line: 156, column: 33, scope: !205)
!214 = !DILocation(line: 156, column: 38, scope: !205)
!215 = !DILocation(line: 156, column: 5, scope: !205)
!216 = !DILocation(line: 157, column: 31, scope: !205)
!217 = !DILocation(line: 157, column: 27, scope: !205)
!218 = !DILocation(line: 157, column: 38, scope: !205)
!219 = !DILocation(line: 157, column: 36, scope: !205)
!220 = !DILocation(line: 157, column: 5, scope: !205)
!221 = !DILocation(line: 157, column: 13, scope: !205)
!222 = !DILocation(line: 157, column: 18, scope: !205)
!223 = !DILocation(line: 158, column: 22, scope: !205)
!224 = !DILocation(line: 158, column: 28, scope: !205)
!225 = !DILocation(line: 158, column: 26, scope: !205)
!226 = !DILocation(line: 158, column: 5, scope: !205)
!227 = !DILocation(line: 158, column: 13, scope: !205)
!228 = !DILocation(line: 158, column: 18, scope: !205)
!229 = !DILocation(line: 159, column: 49, scope: !205)
!230 = !DILocation(line: 159, column: 57, scope: !205)
!231 = !DILocation(line: 159, column: 44, scope: !205)
!232 = !DILocation(line: 159, column: 42, scope: !205)
!233 = !DILocation(line: 159, column: 5, scope: !205)
!234 = !DILocation(line: 159, column: 13, scope: !205)
!235 = !DILocation(line: 159, column: 17, scope: !205)
!236 = !DILocation(line: 160, column: 5, scope: !205)
!237 = !DILocalVariable(name: "sx", scope: !238, file: !1, line: 163, type: !79)
!238 = distinct !DILexicalBlock(scope: !201, file: !1, line: 162, column: 8)
!239 = !DILocation(line: 163, column: 18, scope: !238)
!240 = !DILocation(line: 163, column: 28, scope: !238)
!241 = !DILocation(line: 163, column: 23, scope: !238)
!242 = !DILocalVariable(name: "c", scope: !238, file: !1, line: 164, type: !81)
!243 = !DILocation(line: 164, column: 19, scope: !238)
!244 = !DILocation(line: 165, column: 32, scope: !238)
!245 = !DILocation(line: 165, column: 31, scope: !238)
!246 = !DILocation(line: 165, column: 33, scope: !238)
!247 = !DILocation(line: 165, column: 5, scope: !238)
!248 = !DILocation(line: 166, column: 30, scope: !238)
!249 = !DILocation(line: 166, column: 26, scope: !238)
!250 = !DILocation(line: 166, column: 37, scope: !238)
!251 = !DILocation(line: 166, column: 35, scope: !238)
!252 = !DILocation(line: 166, column: 5, scope: !238)
!253 = !DILocation(line: 166, column: 13, scope: !238)
!254 = !DILocation(line: 166, column: 18, scope: !238)
!255 = !DILocation(line: 167, column: 22, scope: !238)
!256 = !DILocation(line: 167, column: 28, scope: !238)
!257 = !DILocation(line: 167, column: 26, scope: !238)
!258 = !DILocation(line: 167, column: 5, scope: !238)
!259 = !DILocation(line: 167, column: 13, scope: !238)
!260 = !DILocation(line: 167, column: 18, scope: !238)
!261 = !DILocation(line: 168, column: 49, scope: !238)
!262 = !DILocation(line: 168, column: 57, scope: !238)
!263 = !DILocation(line: 168, column: 44, scope: !238)
!264 = !DILocation(line: 168, column: 42, scope: !238)
!265 = !DILocation(line: 168, column: 5, scope: !238)
!266 = !DILocation(line: 168, column: 13, scope: !238)
!267 = !DILocation(line: 168, column: 17, scope: !238)
!268 = !DILocation(line: 169, column: 5, scope: !238)
!269 = !DILocation(line: 171, column: 1, scope: !76)
!270 = distinct !DISubprogram(name: "cheb_eval_e", scope: !271, file: !271, line: 3, type: !272, isLocal: true, isDefinition: true, scopeLine: 6, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !87)
!271 = !DIFile(filename: "./cheb_eval.c", directory: "/fpcc/gsl-2.5/specfunc")
!272 = !DISubroutineType(types: !273)
!273 = !{!59, !274, !79, !80}
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64, align: 64)
!275 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !52)
!276 = !DILocalVariable(name: "cs", arg: 1, scope: !270, file: !271, line: 3, type: !274)
!277 = !DILocation(line: 3, column: 33, scope: !270)
!278 = !DILocalVariable(name: "x", arg: 2, scope: !270, file: !271, line: 4, type: !79)
!279 = !DILocation(line: 4, column: 26, scope: !270)
!280 = !DILocalVariable(name: "result", arg: 3, scope: !270, file: !271, line: 5, type: !80)
!281 = !DILocation(line: 5, column: 29, scope: !270)
!282 = !DILocalVariable(name: "j", scope: !270, file: !271, line: 7, type: !59)
!283 = !DILocation(line: 7, column: 7, scope: !270)
!284 = !DILocalVariable(name: "d", scope: !270, file: !271, line: 8, type: !44)
!285 = !DILocation(line: 8, column: 10, scope: !270)
!286 = !DILocalVariable(name: "dd", scope: !270, file: !271, line: 9, type: !44)
!287 = !DILocation(line: 9, column: 10, scope: !270)
!288 = !DILocalVariable(name: "y", scope: !270, file: !271, line: 11, type: !44)
!289 = !DILocation(line: 11, column: 10, scope: !270)
!290 = !DILocation(line: 11, column: 20, scope: !270)
!291 = !DILocation(line: 11, column: 19, scope: !270)
!292 = !DILocation(line: 11, column: 24, scope: !270)
!293 = !DILocation(line: 11, column: 28, scope: !270)
!294 = !DILocation(line: 11, column: 22, scope: !270)
!295 = !DILocation(line: 11, column: 32, scope: !270)
!296 = !DILocation(line: 11, column: 36, scope: !270)
!297 = !DILocation(line: 11, column: 30, scope: !270)
!298 = !DILocation(line: 11, column: 42, scope: !270)
!299 = !DILocation(line: 11, column: 46, scope: !270)
!300 = !DILocation(line: 11, column: 50, scope: !270)
!301 = !DILocation(line: 11, column: 54, scope: !270)
!302 = !DILocation(line: 11, column: 48, scope: !270)
!303 = !DILocation(line: 11, column: 39, scope: !270)
!304 = !DILocalVariable(name: "y2", scope: !270, file: !271, line: 12, type: !44)
!305 = !DILocation(line: 12, column: 10, scope: !270)
!306 = !DILocation(line: 12, column: 21, scope: !270)
!307 = !DILocation(line: 12, column: 19, scope: !270)
!308 = !DILocalVariable(name: "e", scope: !270, file: !271, line: 14, type: !44)
!309 = !DILocation(line: 14, column: 10, scope: !270)
!310 = !DILocation(line: 16, column: 11, scope: !311)
!311 = distinct !DILexicalBlock(scope: !270, file: !271, line: 16, column: 3)
!312 = !DILocation(line: 16, column: 15, scope: !311)
!313 = !DILocation(line: 16, column: 9, scope: !311)
!314 = !DILocation(line: 16, column: 7, scope: !311)
!315 = !DILocation(line: 16, column: 22, scope: !316)
!316 = !DILexicalBlockFile(scope: !317, file: !271, discriminator: 1)
!317 = distinct !DILexicalBlock(scope: !311, file: !271, line: 16, column: 3)
!318 = !DILocation(line: 16, column: 23, scope: !316)
!319 = !DILocation(line: 16, column: 3, scope: !316)
!320 = !DILocalVariable(name: "temp", scope: !321, file: !271, line: 17, type: !44)
!321 = distinct !DILexicalBlock(scope: !317, file: !271, line: 16, column: 33)
!322 = !DILocation(line: 17, column: 12, scope: !321)
!323 = !DILocation(line: 17, column: 19, scope: !321)
!324 = !DILocation(line: 18, column: 9, scope: !321)
!325 = !DILocation(line: 18, column: 12, scope: !321)
!326 = !DILocation(line: 18, column: 11, scope: !321)
!327 = !DILocation(line: 18, column: 16, scope: !321)
!328 = !DILocation(line: 18, column: 14, scope: !321)
!329 = !DILocation(line: 18, column: 27, scope: !321)
!330 = !DILocation(line: 18, column: 21, scope: !321)
!331 = !DILocation(line: 18, column: 25, scope: !321)
!332 = !DILocation(line: 18, column: 19, scope: !321)
!333 = !DILocation(line: 18, column: 7, scope: !321)
!334 = !DILocation(line: 19, column: 15, scope: !321)
!335 = !DILocation(line: 19, column: 18, scope: !321)
!336 = !DILocation(line: 19, column: 17, scope: !321)
!337 = !DILocation(line: 19, column: 10, scope: !321)
!338 = !DILocation(line: 19, column: 31, scope: !321)
!339 = !DILocation(line: 19, column: 26, scope: !340)
!340 = !DILexicalBlockFile(scope: !321, file: !271, discriminator: 1)
!341 = !DILocation(line: 19, column: 24, scope: !321)
!342 = !DILocation(line: 19, column: 48, scope: !321)
!343 = !DILocation(line: 19, column: 42, scope: !321)
!344 = !DILocation(line: 19, column: 46, scope: !321)
!345 = !DILocation(line: 19, column: 37, scope: !346)
!346 = !DILexicalBlockFile(scope: !321, file: !271, discriminator: 2)
!347 = !DILocation(line: 19, column: 35, scope: !321)
!348 = !DILocation(line: 19, column: 7, scope: !321)
!349 = !DILocation(line: 20, column: 10, scope: !321)
!350 = !DILocation(line: 20, column: 8, scope: !321)
!351 = !DILocation(line: 21, column: 3, scope: !321)
!352 = !DILocation(line: 16, column: 29, scope: !353)
!353 = !DILexicalBlockFile(scope: !317, file: !271, discriminator: 2)
!354 = !DILocation(line: 16, column: 3, scope: !353)
!355 = distinct !{!355, !356}
!356 = !DILocation(line: 16, column: 3, scope: !270)
!357 = !DILocalVariable(name: "temp", scope: !358, file: !271, line: 24, type: !44)
!358 = distinct !DILexicalBlock(scope: !270, file: !271, line: 23, column: 3)
!359 = !DILocation(line: 24, column: 12, scope: !358)
!360 = !DILocation(line: 24, column: 19, scope: !358)
!361 = !DILocation(line: 25, column: 9, scope: !358)
!362 = !DILocation(line: 25, column: 11, scope: !358)
!363 = !DILocation(line: 25, column: 10, scope: !358)
!364 = !DILocation(line: 25, column: 15, scope: !358)
!365 = !DILocation(line: 25, column: 13, scope: !358)
!366 = !DILocation(line: 25, column: 26, scope: !358)
!367 = !DILocation(line: 25, column: 30, scope: !358)
!368 = !DILocation(line: 25, column: 24, scope: !358)
!369 = !DILocation(line: 25, column: 18, scope: !358)
!370 = !DILocation(line: 25, column: 7, scope: !358)
!371 = !DILocation(line: 26, column: 15, scope: !358)
!372 = !DILocation(line: 26, column: 17, scope: !358)
!373 = !DILocation(line: 26, column: 16, scope: !358)
!374 = !DILocation(line: 26, column: 10, scope: !358)
!375 = !DILocation(line: 26, column: 30, scope: !358)
!376 = !DILocation(line: 26, column: 25, scope: !377)
!377 = !DILexicalBlockFile(scope: !358, file: !271, discriminator: 1)
!378 = !DILocation(line: 26, column: 23, scope: !358)
!379 = !DILocation(line: 26, column: 47, scope: !358)
!380 = !DILocation(line: 26, column: 51, scope: !358)
!381 = !DILocation(line: 26, column: 42, scope: !382)
!382 = !DILexicalBlockFile(scope: !358, file: !271, discriminator: 2)
!383 = !DILocation(line: 26, column: 40, scope: !358)
!384 = !DILocation(line: 26, column: 34, scope: !358)
!385 = !DILocation(line: 26, column: 7, scope: !358)
!386 = !DILocation(line: 29, column: 17, scope: !270)
!387 = !DILocation(line: 29, column: 3, scope: !270)
!388 = !DILocation(line: 29, column: 11, scope: !270)
!389 = !DILocation(line: 29, column: 15, scope: !270)
!390 = !DILocation(line: 30, column: 35, scope: !270)
!391 = !DILocation(line: 30, column: 33, scope: !270)
!392 = !DILocation(line: 30, column: 50, scope: !270)
!393 = !DILocation(line: 30, column: 54, scope: !270)
!394 = !DILocation(line: 30, column: 44, scope: !270)
!395 = !DILocation(line: 30, column: 48, scope: !270)
!396 = !DILocation(line: 30, column: 39, scope: !270)
!397 = !DILocation(line: 30, column: 37, scope: !270)
!398 = !DILocation(line: 30, column: 3, scope: !270)
!399 = !DILocation(line: 30, column: 11, scope: !270)
!400 = !DILocation(line: 30, column: 15, scope: !270)
!401 = !DILocation(line: 32, column: 3, scope: !270)
!402 = distinct !DISubprogram(name: "gsl_sf_bessel_K1_e", scope: !1, file: !1, line: 174, type: !77, isLocal: false, isDefinition: true, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !87)
!403 = !DILocalVariable(name: "x", arg: 1, scope: !402, file: !1, line: 174, type: !79)
!404 = !DILocation(line: 174, column: 37, scope: !402)
!405 = !DILocalVariable(name: "result", arg: 2, scope: !402, file: !1, line: 174, type: !80)
!406 = !DILocation(line: 174, column: 56, scope: !402)
!407 = !DILocation(line: 178, column: 6, scope: !408)
!408 = distinct !DILexicalBlock(scope: !402, file: !1, line: 178, column: 6)
!409 = !DILocation(line: 178, column: 8, scope: !408)
!410 = !DILocation(line: 178, column: 6, scope: !402)
!411 = !DILocation(line: 179, column: 5, scope: !412)
!412 = distinct !DILexicalBlock(scope: !408, file: !1, line: 178, column: 16)
!413 = distinct !{!413, !411}
!414 = !DILocation(line: 179, column: 5, scope: !415)
!415 = !DILexicalBlockFile(scope: !416, file: !1, discriminator: 1)
!416 = distinct !DILexicalBlock(scope: !412, file: !1, line: 179, column: 5)
!417 = distinct !{!417, !418}
!418 = !DILocation(line: 179, column: 5, scope: !416)
!419 = !DILocation(line: 179, column: 5, scope: !420)
!420 = !DILexicalBlockFile(scope: !421, file: !1, discriminator: 2)
!421 = distinct !DILexicalBlock(scope: !416, file: !1, line: 179, column: 5)
!422 = !DILocation(line: 179, column: 5, scope: !423)
!423 = !DILexicalBlockFile(scope: !416, file: !1, discriminator: 3)
!424 = !DILocation(line: 180, column: 3, scope: !412)
!425 = !DILocation(line: 181, column: 11, scope: !426)
!426 = distinct !DILexicalBlock(scope: !408, file: !1, line: 181, column: 11)
!427 = !DILocation(line: 181, column: 13, scope: !426)
!428 = !DILocation(line: 181, column: 11, scope: !408)
!429 = !DILocation(line: 182, column: 5, scope: !430)
!430 = distinct !DILexicalBlock(scope: !426, file: !1, line: 181, column: 32)
!431 = distinct !{!431, !429}
!432 = !DILocation(line: 182, column: 5, scope: !433)
!433 = !DILexicalBlockFile(scope: !434, file: !1, discriminator: 1)
!434 = distinct !DILexicalBlock(scope: !430, file: !1, line: 182, column: 5)
!435 = distinct !{!435, !436}
!436 = !DILocation(line: 182, column: 5, scope: !434)
!437 = !DILocation(line: 182, column: 5, scope: !438)
!438 = !DILexicalBlockFile(scope: !439, file: !1, discriminator: 2)
!439 = distinct !DILexicalBlock(scope: !434, file: !1, line: 182, column: 5)
!440 = !DILocation(line: 182, column: 5, scope: !441)
!441 = !DILexicalBlockFile(scope: !434, file: !1, discriminator: 3)
!442 = !DILocation(line: 183, column: 3, scope: !430)
!443 = !DILocation(line: 184, column: 11, scope: !444)
!444 = distinct !DILexicalBlock(scope: !426, file: !1, line: 184, column: 11)
!445 = !DILocation(line: 184, column: 13, scope: !444)
!446 = !DILocation(line: 184, column: 11, scope: !426)
!447 = !DILocalVariable(name: "lx", scope: !448, file: !1, line: 185, type: !79)
!448 = distinct !DILexicalBlock(scope: !444, file: !1, line: 184, column: 20)
!449 = !DILocation(line: 185, column: 18, scope: !448)
!450 = !DILocation(line: 185, column: 27, scope: !448)
!451 = !DILocation(line: 185, column: 23, scope: !448)
!452 = !DILocalVariable(name: "x2", scope: !448, file: !1, line: 186, type: !79)
!453 = !DILocation(line: 186, column: 18, scope: !448)
!454 = !DILocation(line: 186, column: 23, scope: !448)
!455 = !DILocation(line: 186, column: 25, scope: !448)
!456 = !DILocation(line: 186, column: 24, scope: !448)
!457 = !DILocalVariable(name: "t", scope: !448, file: !1, line: 187, type: !79)
!458 = !DILocation(line: 187, column: 18, scope: !448)
!459 = !DILocation(line: 187, column: 28, scope: !448)
!460 = !DILocation(line: 187, column: 27, scope: !448)
!461 = !DILocalVariable(name: "i1", scope: !448, file: !1, line: 188, type: !79)
!462 = !DILocation(line: 188, column: 18, scope: !448)
!463 = !DILocation(line: 188, column: 29, scope: !448)
!464 = !DILocation(line: 188, column: 27, scope: !448)
!465 = !DILocation(line: 188, column: 40, scope: !448)
!466 = !DILocation(line: 188, column: 51, scope: !448)
!467 = !DILocation(line: 188, column: 79, scope: !448)
!468 = !DILocation(line: 188, column: 55, scope: !448)
!469 = !DILocation(line: 188, column: 53, scope: !448)
!470 = !DILocation(line: 188, column: 49, scope: !448)
!471 = !DILocation(line: 188, column: 42, scope: !448)
!472 = !DILocation(line: 188, column: 38, scope: !448)
!473 = !DILocation(line: 188, column: 31, scope: !448)
!474 = !DILocation(line: 189, column: 21, scope: !448)
!475 = !DILocation(line: 189, column: 50, scope: !448)
!476 = !DILocation(line: 189, column: 26, scope: !448)
!477 = !DILocation(line: 189, column: 24, scope: !448)
!478 = !DILocation(line: 189, column: 56, scope: !448)
!479 = !DILocation(line: 189, column: 60, scope: !448)
!480 = !DILocation(line: 189, column: 58, scope: !448)
!481 = !DILocation(line: 189, column: 65, scope: !448)
!482 = !DILocation(line: 189, column: 63, scope: !448)
!483 = !DILocation(line: 189, column: 54, scope: !448)
!484 = !DILocation(line: 189, column: 68, scope: !448)
!485 = !DILocation(line: 189, column: 75, scope: !448)
!486 = !DILocation(line: 189, column: 73, scope: !448)
!487 = !DILocation(line: 189, column: 5, scope: !448)
!488 = !DILocation(line: 189, column: 13, scope: !448)
!489 = !DILocation(line: 189, column: 18, scope: !448)
!490 = !DILocation(line: 190, column: 30, scope: !448)
!491 = !DILocation(line: 190, column: 25, scope: !448)
!492 = !DILocation(line: 190, column: 33, scope: !448)
!493 = !DILocation(line: 190, column: 24, scope: !448)
!494 = !DILocation(line: 190, column: 39, scope: !448)
!495 = !DILocation(line: 190, column: 5, scope: !448)
!496 = !DILocation(line: 190, column: 13, scope: !448)
!497 = !DILocation(line: 190, column: 18, scope: !448)
!498 = !DILocation(line: 191, column: 49, scope: !448)
!499 = !DILocation(line: 191, column: 57, scope: !448)
!500 = !DILocation(line: 191, column: 44, scope: !448)
!501 = !DILocation(line: 191, column: 42, scope: !448)
!502 = !DILocation(line: 191, column: 5, scope: !448)
!503 = !DILocation(line: 191, column: 13, scope: !448)
!504 = !DILocation(line: 191, column: 17, scope: !448)
!505 = !DILocation(line: 192, column: 5, scope: !448)
!506 = !DILocalVariable(name: "K1_scaled", scope: !507, file: !1, line: 195, type: !81)
!507 = distinct !DILexicalBlock(scope: !444, file: !1, line: 194, column: 8)
!508 = !DILocation(line: 195, column: 19, scope: !507)
!509 = !DILocalVariable(name: "stat_K1", scope: !507, file: !1, line: 196, type: !59)
!510 = !DILocation(line: 196, column: 9, scope: !507)
!511 = !DILocation(line: 196, column: 45, scope: !507)
!512 = !DILocation(line: 196, column: 19, scope: !507)
!513 = !DILocalVariable(name: "stat_e", scope: !507, file: !1, line: 197, type: !59)
!514 = !DILocation(line: 197, column: 9, scope: !507)
!515 = !DILocation(line: 197, column: 42, scope: !507)
!516 = !DILocation(line: 197, column: 41, scope: !507)
!517 = !DILocation(line: 198, column: 54, scope: !507)
!518 = !DILocation(line: 198, column: 69, scope: !507)
!519 = !DILocation(line: 199, column: 44, scope: !507)
!520 = !DILocation(line: 197, column: 19, scope: !507)
!521 = !DILocation(line: 200, column: 24, scope: !507)
!522 = !DILocation(line: 200, column: 32, scope: !507)
!523 = !DILocation(line: 200, column: 19, scope: !507)
!524 = !DILocation(line: 200, column: 61, scope: !507)
!525 = !DILocation(line: 200, column: 56, scope: !526)
!526 = !DILexicalBlockFile(scope: !507, file: !1, discriminator: 1)
!527 = !DILocation(line: 200, column: 55, scope: !507)
!528 = !DILocation(line: 200, column: 76, scope: !507)
!529 = !DILocation(line: 200, column: 90, scope: !507)
!530 = !DILocation(line: 200, column: 79, scope: !507)
!531 = !DILocation(line: 200, column: 64, scope: !507)
!532 = !DILocation(line: 200, column: 37, scope: !507)
!533 = !DILocation(line: 200, column: 5, scope: !507)
!534 = !DILocation(line: 200, column: 13, scope: !507)
!535 = !DILocation(line: 200, column: 17, scope: !507)
!536 = !DILocation(line: 201, column: 12, scope: !507)
!537 = !DILocation(line: 201, column: 12, scope: !526)
!538 = !DILocation(line: 201, column: 12, scope: !539)
!539 = !DILexicalBlockFile(scope: !507, file: !1, discriminator: 2)
!540 = !DILocation(line: 201, column: 12, scope: !541)
!541 = !DILexicalBlockFile(scope: !507, file: !1, discriminator: 3)
!542 = !DILocation(line: 201, column: 12, scope: !543)
!543 = !DILexicalBlockFile(scope: !507, file: !1, discriminator: 4)
!544 = !DILocation(line: 201, column: 12, scope: !545)
!545 = !DILexicalBlockFile(scope: !507, file: !1, discriminator: 5)
!546 = !DILocation(line: 201, column: 12, scope: !547)
!547 = !DILexicalBlockFile(scope: !507, file: !1, discriminator: 6)
!548 = !DILocation(line: 201, column: 5, scope: !547)
!549 = !DILocation(line: 203, column: 1, scope: !402)
!550 = distinct !DISubprogram(name: "gsl_sf_bessel_K1_scaled", scope: !1, file: !1, line: 209, type: !551, isLocal: false, isDefinition: true, scopeLine: 210, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !87)
!551 = !DISubroutineType(types: !552)
!552 = !{!44, !79}
!553 = !DILocalVariable(name: "x", arg: 1, scope: !550, file: !1, line: 209, type: !79)
!554 = !DILocation(line: 209, column: 45, scope: !550)
!555 = !DILocalVariable(name: "result", scope: !550, file: !1, line: 211, type: !81)
!556 = !DILocation(line: 211, column: 3, scope: !550)
!557 = !DILocalVariable(name: "status", scope: !550, file: !1, line: 211, type: !59)
!558 = !DILocation(line: 211, column: 3, scope: !559)
!559 = distinct !DILexicalBlock(scope: !550, file: !1, line: 211, column: 3)
!560 = !DILocation(line: 211, column: 3, scope: !561)
!561 = !DILexicalBlockFile(scope: !562, file: !1, discriminator: 1)
!562 = distinct !DILexicalBlock(scope: !559, file: !1, line: 211, column: 3)
!563 = distinct !{!563, !564}
!564 = !DILocation(line: 211, column: 3, scope: !562)
!565 = !DILocation(line: 211, column: 3, scope: !566)
!566 = !DILexicalBlockFile(scope: !567, file: !1, discriminator: 2)
!567 = distinct !DILexicalBlock(scope: !562, file: !1, line: 211, column: 3)
!568 = !DILocation(line: 211, column: 3, scope: !569)
!569 = !DILexicalBlockFile(scope: !562, file: !1, discriminator: 3)
!570 = !DILocation(line: 211, column: 3, scope: !571)
!571 = !DILexicalBlockFile(scope: !550, file: !1, discriminator: 4)
!572 = !DILocation(line: 212, column: 1, scope: !550)
!573 = distinct !DISubprogram(name: "gsl_sf_bessel_K1", scope: !1, file: !1, line: 214, type: !551, isLocal: false, isDefinition: true, scopeLine: 215, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !87)
!574 = !DILocalVariable(name: "x", arg: 1, scope: !573, file: !1, line: 214, type: !79)
!575 = !DILocation(line: 214, column: 38, scope: !573)
!576 = !DILocalVariable(name: "result", scope: !573, file: !1, line: 216, type: !81)
!577 = !DILocation(line: 216, column: 3, scope: !573)
!578 = !DILocalVariable(name: "status", scope: !573, file: !1, line: 216, type: !59)
!579 = !DILocation(line: 216, column: 3, scope: !580)
!580 = distinct !DILexicalBlock(scope: !573, file: !1, line: 216, column: 3)
!581 = !DILocation(line: 216, column: 3, scope: !582)
!582 = !DILexicalBlockFile(scope: !583, file: !1, discriminator: 1)
!583 = distinct !DILexicalBlock(scope: !580, file: !1, line: 216, column: 3)
!584 = distinct !{!584, !585}
!585 = !DILocation(line: 216, column: 3, scope: !583)
!586 = !DILocation(line: 216, column: 3, scope: !587)
!587 = !DILexicalBlockFile(scope: !588, file: !1, discriminator: 2)
!588 = distinct !DILexicalBlock(scope: !583, file: !1, line: 216, column: 3)
!589 = !DILocation(line: 216, column: 3, scope: !590)
!590 = !DILexicalBlockFile(scope: !583, file: !1, discriminator: 3)
!591 = !DILocation(line: 216, column: 3, scope: !592)
!592 = !DILexicalBlockFile(scope: !573, file: !1, discriminator: 4)
!593 = !DILocation(line: 217, column: 1, scope: !573)
