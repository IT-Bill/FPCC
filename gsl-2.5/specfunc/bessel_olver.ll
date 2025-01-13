; ModuleID = 'bessel_olver.c'
source_filename = "bessel_olver.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.cheb_series_struct = type { double*, i32, double, double, i32 }
%struct.gsl_sf_result_struct = type { double, double }

@zofmzeta_a_cs = internal global %struct.cheb_series_struct { double* getelementptr inbounds ([20 x double], [20 x double]* @zofmzeta_a_data, i32 0, i32 0), i32 19, double -1.000000e+00, double 1.000000e+00, i32 8 }, align 8
@zofmzeta_b_cs = internal global %struct.cheb_series_struct { double* getelementptr inbounds ([30 x double], [30 x double]* @zofmzeta_b_data, i32 0, i32 0), i32 29, double -1.000000e+00, double 1.000000e+00, i32 15 }, align 8
@zofmzeta_c_cs = internal global %struct.cheb_series_struct { double* getelementptr inbounds ([11 x double], [11 x double]* @zofmzeta_c_data, i32 0, i32 0), i32 10, double -1.000000e+00, double 1.000000e+00, i32 6 }, align 8
@.str = private unnamed_addr constant [13 x i8] c"domain error\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"bessel_olver.c\00", align 1
@zofmzeta_a_data = internal global [20 x double] [double 0x4007774F1E0965F3, double 0x3FDF567498FFE90F, double 0x3F97699913ABB248, double 0xBF267D0A07E49713, double 0xBEE636F0FFAAFF70, double 0x3EB1C6C6D18C6ADD, double 0xBE69205D17332612, double 5.831002e-12, double 0x3DE84773992A8CDE, double 0xBDAFE4B9712E3689, double 4.357772e-13, double 4.609710e-14, double -2.575710e-14, double 2.264680e-14, double -2.220530e-14, double 2.085930e-14, double -1.844540e-14, double 1.501500e-14, double -1.065060e-14, double 5.537500e-15], align 16
@zofmzeta_b_data = internal global [30 x double] [double 0x40366841B7996EEE, double 0x4024CBD17B234BB9, double 0x3FF1790992828D69, double 0xBFB23459378C4C8B, double 0x3F82696A32714A45, double 0xBF53B158592F3B99, double 0x3F1BF7A16790DCDF, double 0x3EF24084FE333D40, double 0xBEEF586EA2BAA418, double 0x3ED9F671FAE1E051, double 0xBEC131323DF64560, double 0x3EA3B3EB460AB651, double 0xBE839B2F67298EE7, double 0x3E600038C751060C, double 0xBE306598CC147F29, double 0xBE000B9A69EB1764, double 0x3E040FB09760B569, double 0xBDF32925833EDB51, double 0x3DDBF3487690D2A8, double 0xBDC12868292FFCC8, double 8.111122e-12, double -1.663986e-12, double 1.813640e-13, double 5.341400e-14, double -4.723400e-14, double 2.168900e-14, double -7.815000e-15, double 2.371000e-15, double -6.040000e-16, double 1.200000e-16], align 16
@zofmzeta_c_data = internal global [11 x double] [double 0x3FF61E9F4868CD83, double 0x3F9912C17B969AB8, double 0xBF1618619D54872F, double 0x3EB896BCA91D55A9, double 0xBE60E798BF69EB50, double 0x3E09FAD83368EDE6, double 0xBDB563943744138B, double 5.245878e-13, double -1.463800e-14, double 4.192000e-16, double -1.230000e-17], align 16
@A3_lt1_cs = internal global %struct.cheb_series_struct { double* getelementptr inbounds ([40 x double], [40 x double]* @A3_lt1_data, i32 0, i32 0), i32 39, double -1.000000e+00, double 1.000000e+00, i32 39 }, align 8
@A3_gt1_cs = internal global %struct.cheb_series_struct { double* getelementptr inbounds ([31 x double], [31 x double]* @A3_gt1_data, i32 0, i32 0), i32 30, double -1.000000e+00, double 1.000000e+00, i32 17 }, align 8
@A3_lt1_data = internal global [40 x double] [double 0xBF2791F244B756EA, double 0xBF37F58414256A4F, double 0xBEFD90439754F012, double 0x3F25E51D0C56EED6, double 0xBF129C09C11AEE29, double 0xBEE1B6FE70647B89, double 0x3EFCAB60733AC2F8, double 0xBEF4DFD900543291, double 0x3EE4F8EEEEDC6E3B, double 0xBED0AB08BBFF42D1, double 0x3EB493EE592A7A1C, double 0xBE895597AD92C0E4, double 0xBE8273DA45FDC65A, double 0x3E8C3AC265B99A01, double 0xBE8B97CE098CBB13, double 0x3E887A7071243BE6, double 0xBE8539505EA3739E, double 0x3E826226522EB919, double 0xBE8001689069BAFC, double 0x3E7C0B9DCB8261E3, double 0xBE78B6A5A94B1983, double 0x3E75E245D39A4D04, double 0xBE7374394CDDF58D, double 0x3E715845202EEA9E, double 0xBE6EFD8A0A987603, double 0x3E6BB706A00242C2, double 0xBE68C9BA7751287A, double 0x3E66264456EB5C00, double 0xBE63C03B3EBC2D9C, double 0x3E618D7F6F26DBF2, double 0xBE5F0B6EA5A83BFC, double 0x3E5B43D85E45FE98, double 0xBE57B87C17F8E53E, double 0x3E545F516D797A60, double 0xBE512FAAED476999, double 0x3E4C43D8E4AF1D08, double 0xBE465E9F4B489BB5, double 0x3E40A36622ADB5FB, double 0xBE360DC4181B48FD, double 0x3E25F9E15ADAE38E], align 16
@A3_gt1_data = internal global [31 x double] [double 0xBFBFB0417B0FDF4C, double 0x3FBAC974888E404F, double 0xBFB147BBC7A58628, double 0x3FA2355C6D0CC282, double 0xBF9075A9F993A502, double 0x3F7A6B17BC696CC8, double 0xBF6348DE7A7D0ACE, double 0x3F4A10C6F61F83E3, double 0xBF30865C99890186, double 0x3F13DAD414E366BF, double 0xBEF6C8E1DB3B234A, double 0x3ED9214DC6DB33A2, double 0xBEBAC63E97202346, double 0x3E9BABC5ECBCBA1A, double 0xBE7BD6057D32EB0E, double 0x3E5B55D63E79F537, double 0xBE3A44CD3B66A4FF, double 0x3E18C14C2781FF02, double 0xBDF6EB128F4FDC48, double 0x3DD4E08DEF5BB8FA, double 0xBDB2BCFADEE8BF50, double 0x3D90974A94A53D6A, double 0xBD6D035B9FF9BEF9, double 0x3D49133CA5BB62A1, double 0xBD25707F58F82A61, double 0x3D0225E8A47D9640, double 0xBCDE702A6B58A478, double 0x3CB94DB1C568487F, double 0xBC94DD0DAEF94BB4, double 0x3C711222FCE06F29, double 0xBC4BBBE8CBCB8FBD], align 16
@A4_lt1_cs = internal global %struct.cheb_series_struct { double* getelementptr inbounds ([30 x double], [30 x double]* @A4_lt1_data, i32 0, i32 0), i32 29, double -1.000000e+00, double 1.000000e+00, i32 29 }, align 8
@A4_gt1_cs = internal global %struct.cheb_series_struct { double* getelementptr inbounds ([30 x double], [30 x double]* @A4_gt1_data, i32 0, i32 0), i32 17, double -1.000000e+00, double 1.000000e+00, i32 17 }, align 8
@A4_lt1_data = internal global [30 x double] [double 0x3F17BC82433FE2FC, double 0x3F35AB8DE8512AB3, double 0x3F29DECA5DAC27B4, double 0xBF244DDA6C58B7EE, double 0xBF07ABDCA44671F9, double 0x3F14E931DAEF48B5, double 0xBF0160BC423C8345, double 0xBEBF93A675F941C1, double 0x3EE812ACA80CEA9F, double 0xBEE3595590A0D395, double 0x3ED58F27746DEE06, double 0xBEC3FFFE05225852, double 0x3EB0E37F9911108A, double 0xBE9C66F1D1A4703E, double 0x3E8ADC7BF75322D0, double 0xBE7FDC47C94832C0, double 0x3E7792E968FFD9CB, double 0xBE73DAC717D6C057, double 0x3E71A86596D37902, double 0xBE7003306CEEAEC8, double 0x3E6D3B3E574744B0, double 0xBE6ABCBE1E21BFF3, double 0x3E687747F9A40A0A, double 0xBE6660BF1EBDD9D4, double 0x3E6472524DA44454, double 0xBE62A6ABBE41C54D, double 0x3E60F958B53B0C3D, double 0xBE5ECD1376ABA0DB, double 0x3E5BD5DDE17FC197, double 0xBE59073F36F7AB63], align 16
@A4_gt1_data = internal global [30 x double] [double 0x3FF27311F4296C19, double 0xBFF04A3F8E26B9DB, double 0x3FE7074AEEAD023D, double 0xBFDB1C41A9DAAF46, double 0x3FCB85EC2587BDE8, double 0xBFB8C4BBC83EE2BE, double 0x3FA42E11C7E54392, double 0xBF8E4279391FE3EC, double 0x3F7524DE9043ABF8, double 0xBF5BD13BDFED45AD, double 0x3F415D994D3D99F0, double 0xBF24B647D53910C8, double 0x3F07B9F032FCB24C, double 0xBEEA38E299501C6A, double 0x3ECC10FA25378911, double 0xBEAD2FA9114E2062, double 0x3E8D91C20F781FE4, double 0xBE6D4182FD150316, double 0x3E4C5387D3FD9697, double 0xBE2AE3492F4A1DAC, double 0x3E090FAD4D29542D, double 0xBDE6F80A5B8E145E, double 0x3DC4B9CF90EAE1E5, double 0xBDA26EE6EB0C54F0, double 0x3D802CC6CCAE8709, double 0xBD5C08338D5416C0, double 0x3D3801B52AA20522, double 0xBD1455819B0C626C, double 0x3CF10BBB68010460, double 0xBCCC4D39246F5546], align 16
@B2_lt1_cs = internal global %struct.cheb_series_struct { double* getelementptr inbounds ([40 x double], [40 x double]* @B2_lt1_data, i32 0, i32 0), i32 39, double -1.000000e+00, double 1.000000e+00, i32 39 }, align 8
@B2_gt1_cs = internal global %struct.cheb_series_struct { double* getelementptr inbounds ([40 x double], [40 x double]* @B2_gt1_data, i32 0, i32 0), i32 39, double -1.000000e+00, double 1.000000e+00, i32 30 }, align 8
@B2_lt1_data = internal global [40 x double] [double 0x3F4824DB93F9F9A5, double 0x3F36274D8CBB5D50, double 0xBF15A1A3412654E1, double 0xBF01C7297A8E22D0, double 0x3EF491167B3B7F97, double 0xBEC3C35650B52E32, double 0xBEBE0A5ABBA0576F, double 0x3EB655DF1D7D5C94, double 0xBEA214F06E4D60BF, double 0x3E84145265B88186, double 0xBE53B0A286C1D0CF, double 0xBE4C9A46BE5CC311, double 0x3E513FB2424F4048, double 0xBE4BB024B22C90CE, double 0x3E44A6F63927722A, double 0xBE3ED887202CED27, double 0x3E37832ADF37E05F, double 0xBE3254C3C619242E, double 0x3E2D27D9DFA44D9A, double 0xBE279246DEF205CF, double 0x3E23513E350713E2, double 0xBE200297ACA0B1E5, double 0x3E1AC996A5AD001C, double 0xBE16958F2FFF2598, double 0x3E132974DE37F879, double 0xBE105750B56986D0, double 0x3E0BFA8D8E7F0892, double 0xBE0803EBCD0B8608, double 0x3E04A41642CC764E, double 0xBE01BD3277EBECCD, double 0x3DFE6FC1012664AF, double 0xBDFA032A9A69CA7A, double 0x3DF616D33BA65B8D, double 0xBDF29273888528F8, double 0x3DEEC3F8BE1192FD, double 0xBDE8E93151E2BCF8, double 0x3DE377D210DC3190, double 0xBDDCADA48BA238E6, double 0x3DD2DFCB0A7E7F4A, double 0xBDC2BAB0571BBBE5], align 16
@B2_gt1_data = internal global [40 x double] [double 0x3F536DE7CC53E791, double 0x3F36D1E75E713874, double 0xBF33EE2B945179EB, double 0x3EFD7C953C6030F6, double 0x3F078F1B89010313, double 0xBEFFDA13706DFA5F, double 0x3EE79D0EA4B046E9, double 0xBEC4D4BEFE096DA8, double 0xBE7A937D823843C5, double 0x3EA08763C4FD6933, double 0xBE994335F2DEC5C1, double 0x3E8EB832B00000CC, double 0xBE81B868A99E1C5B, double 0x3E74ACC059067D5C, double 0xBE69033D95ED07E1, double 0x3E5F90711DA2D2C5, double 0xBE54B74868C79A05, double 0x3E4C214F6BBA3198, double 0xBE43A6C441F34C51, double 0x3E3C1FFBE729142F, double 0xBE348B1A194B71A5, double 0x3E2E8C4DD5A0773C, double 0xBE27111F6F050E2D, double 0x3E21A808EAE2EBD9, double 0xBE1B5B15CA1246BE, double 0x3E156A922DB08458, double 0xBE10EBD963A7DA9A, double 0x3E0AF389ED1DAC8D, double 0xBE059AC4F50D5B65, double 0x3E01684E007C3523, double 0xBDFC2628ADC3E1D0, double 0x3DF6CB18C270D129, double 0xBDF26FE10E7A87C6, double 0x3DEDB13A41D3A5DE, double 0xBDE7AF1A3347B4C6, double 0x3DE2925CA1E5EFBF, double 0xBDDC45ACCA2569C5, double 0x3DD46628C0313C50, double 0xBDCA74FD25448067, double 0x3DBA05898C9EDDD3], align 16
@B3_lt1_cs = internal global %struct.cheb_series_struct { double* getelementptr inbounds ([40 x double], [40 x double]* @B3_lt1_data, i32 0, i32 0), i32 39, double -1.000000e+00, double 1.000000e+00, i32 39 }, align 8
@B3_gt1_cs = internal global %struct.cheb_series_struct { double* getelementptr inbounds ([30 x double], [30 x double]* @B3_gt1_data, i32 0, i32 0), i32 29, double -1.000000e+00, double 1.000000e+00, i32 29 }, align 8
@B3_lt1_data = internal global [40 x double] [double 0xBF5678F1189C9FB7, double 0xBF30B1FC40F0EA6E, double 0x3F303A89B3884E2D, double 0x3F0B6B208F38BF82, double 0xBF13A15977D37DC3, double 0x3EEDB6D10FC9B248, double 0x3EF00857384C7617, double 0xBEF17F4EDEF9441F, double 0x3EE6444EF6FF06F8, double 0xBED86B630BFDF75E, double 0x3ECBF3EF9E5CBA9D, double 0xBEC2BB2AFB9D868C, double 0x3EBD545167CAB5F6, double 0xBEB91877DA57F064, double 0x3EB645F63F96A52E, double 0xBEB40729DA09EFD0, double 0x3EB219567EACC160, double 0xBEB0660B5575F2D2, double 0x3EADC5CA5B707BCB, double 0xBEAB11994479D882, double 0x3EA8A3D5AD4C3276, double 0xBEA6727CF3AA83CC, double 0x3EA474FE253987C7, double 0xBEA2A40F79871BDC, double 0x3EA0F981441BDF9D, double 0xBE9EE023AC4E7C43, double 0x3E9C068B8808CB94, double 0xBE995E8BA36EA478, double 0x3E96E184E31D57DB, double 0xBE9489B86254A5F4, double 0x3E925220994B1B96, double 0xBE9036515192024D, double 0x3E8C64BA380184DB, double 0xBE88857E6542EB70, double 0x3E84C891C6B10C30, double 0xBE81282394DDF8E1, double 0x3E7B3DA91A401A20, double 0xBE744F3EAC11E463, double 0x3E6AF70E50CFAE19, double 0xBE5AE5981B71FB15], align 16
@B3_gt1_data = internal global [30 x double] [double 0xBF84FB169B30F748, double 0x3F6DFF73E865195F, double 0x3F656CF1BD399923, double 0xBF6DA50BACF1BB80, double 0x3F61EC4478215CE2, double 0xBF4AEF6550E0CBD6, double 0x3F20CCEB630FAE82, double 0x3F1A3D39D20E2B4A, double 0xBF20E2CB8E7D2553, double 0x3F1A9254EE1F7B78, double 0xBF1259CE3BC60B2D, double 0x3F089D5EAEBEEAFA, double 0xBF00B98CFBCADBC5, double 0x3EF7660348D928C6, double 0xBEF0E4C4FFFCBC3D, double 0x3EE91861D4A1BD5A, double 0xBEE314D2B640D7D7, double 0x3EDD911635F24ADA, double 0xBED73F3CC0F71129, double 0x3ED27C2EBE169BF5, double 0xBECDA2C213DFED8D, double 0x3EC7DFA16C9B08A3, double 0xBEC34277345F1C45, double 0x3EBEFD700C73D6C9, double 0xBEB8BA10DD4E57A4, double 0x3EB368C09AE782D3, double 0xBEAD9625E7FA9100, double 0x3EA5604A9C1B9E95, double 0xBE9BC162E2F82478, double 0x3E8B51A211DEA44C], align 16

; Function Attrs: nounwind uwtable
define double @gsl_sf_bessel_Olver_zofmzeta(double) #0 !dbg !95 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca %struct.gsl_sf_result_struct, align 8
  %6 = alloca double, align 8
  %7 = alloca %struct.gsl_sf_result_struct, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca %struct.gsl_sf_result_struct, align 8
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !99, metadata !100), !dbg !101
  %12 = load double, double* %3, align 8, !dbg !102
  %13 = fcmp olt double %12, 1.000000e+00, !dbg !104
  br i1 %13, label %14, label %22, !dbg !105

; <label>:14:                                     ; preds = %1
  call void @llvm.dbg.declare(metadata double* %4, metadata !106, metadata !100), !dbg !109
  %15 = load double, double* %3, align 8, !dbg !110
  %16 = fmul double 2.000000e+00, %15, !dbg !111
  %17 = fsub double %16, 1.000000e+00, !dbg !112
  store double %17, double* %4, align 8, !dbg !109
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %5, metadata !113, metadata !100), !dbg !120
  %18 = load double, double* %4, align 8, !dbg !121
  %19 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @zofmzeta_a_cs, double %18, %struct.gsl_sf_result_struct* %5), !dbg !122
  %20 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %5, i32 0, i32 0, !dbg !123
  %21 = load double, double* %20, align 8, !dbg !123
  store double %21, double* %2, align 8, !dbg !124
  br label %46, !dbg !124

; <label>:22:                                     ; preds = %1
  %23 = load double, double* %3, align 8, !dbg !125
  %24 = fcmp olt double %23, 1.000000e+01, !dbg !127
  br i1 %24, label %25, label %34, !dbg !128

; <label>:25:                                     ; preds = %22
  call void @llvm.dbg.declare(metadata double* %6, metadata !129, metadata !100), !dbg !131
  %26 = load double, double* %3, align 8, !dbg !132
  %27 = fmul double 2.000000e+00, %26, !dbg !133
  %28 = fsub double %27, 1.100000e+01, !dbg !134
  %29 = fdiv double %28, 9.000000e+00, !dbg !135
  store double %29, double* %6, align 8, !dbg !131
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %7, metadata !136, metadata !100), !dbg !137
  %30 = load double, double* %6, align 8, !dbg !138
  %31 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @zofmzeta_b_cs, double %30, %struct.gsl_sf_result_struct* %7), !dbg !139
  %32 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %7, i32 0, i32 0, !dbg !140
  %33 = load double, double* %32, align 8, !dbg !140
  store double %33, double* %2, align 8, !dbg !141
  br label %46, !dbg !141

; <label>:34:                                     ; preds = %22
  call void @llvm.dbg.declare(metadata double* %8, metadata !142, metadata !100), !dbg !144
  store double 0x403F9F6E4990F227, double* %8, align 8, !dbg !144
  call void @llvm.dbg.declare(metadata double* %9, metadata !145, metadata !100), !dbg !146
  %35 = load double, double* %3, align 8, !dbg !147
  %36 = call double @pow(double %35, double 1.500000e+00) #6, !dbg !148
  store double %36, double* %9, align 8, !dbg !146
  call void @llvm.dbg.declare(metadata double* %10, metadata !149, metadata !100), !dbg !150
  %37 = load double, double* %9, align 8, !dbg !151
  %38 = fdiv double 0x404F9F6E4990F227, %37, !dbg !152
  %39 = fsub double %38, 1.000000e+00, !dbg !153
  store double %39, double* %10, align 8, !dbg !150
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %11, metadata !154, metadata !100), !dbg !155
  %40 = load double, double* %10, align 8, !dbg !156
  %41 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @zofmzeta_c_cs, double %40, %struct.gsl_sf_result_struct* %11), !dbg !157
  %42 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 0, !dbg !158
  %43 = load double, double* %42, align 8, !dbg !158
  %44 = load double, double* %9, align 8, !dbg !159
  %45 = fmul double %43, %44, !dbg !160
  store double %45, double* %2, align 8, !dbg !161
  br label %46, !dbg !161

; <label>:46:                                     ; preds = %34, %25, %14
  %47 = load double, double* %2, align 8, !dbg !162
  ret double %47, !dbg !162
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @cheb_eval_e(%struct.cheb_series_struct*, double, %struct.gsl_sf_result_struct*) #2 !dbg !163 {
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
  call void @llvm.dbg.declare(metadata %struct.cheb_series_struct** %4, metadata !170, metadata !100), !dbg !171
  store double %1, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !172, metadata !100), !dbg !173
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %6, metadata !174, metadata !100), !dbg !175
  call void @llvm.dbg.declare(metadata i32* %7, metadata !176, metadata !100), !dbg !177
  call void @llvm.dbg.declare(metadata double* %8, metadata !178, metadata !100), !dbg !179
  store double 0.000000e+00, double* %8, align 8, !dbg !179
  call void @llvm.dbg.declare(metadata double* %9, metadata !180, metadata !100), !dbg !181
  store double 0.000000e+00, double* %9, align 8, !dbg !181
  call void @llvm.dbg.declare(metadata double* %10, metadata !182, metadata !100), !dbg !183
  %15 = load double, double* %5, align 8, !dbg !184
  %16 = fmul double 2.000000e+00, %15, !dbg !185
  %17 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !186
  %18 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %17, i32 0, i32 2, !dbg !187
  %19 = load double, double* %18, align 8, !dbg !187
  %20 = fsub double %16, %19, !dbg !188
  %21 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !189
  %22 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %21, i32 0, i32 3, !dbg !190
  %23 = load double, double* %22, align 8, !dbg !190
  %24 = fsub double %20, %23, !dbg !191
  %25 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !192
  %26 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %25, i32 0, i32 3, !dbg !193
  %27 = load double, double* %26, align 8, !dbg !193
  %28 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !194
  %29 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %28, i32 0, i32 2, !dbg !195
  %30 = load double, double* %29, align 8, !dbg !195
  %31 = fsub double %27, %30, !dbg !196
  %32 = fdiv double %24, %31, !dbg !197
  store double %32, double* %10, align 8, !dbg !183
  call void @llvm.dbg.declare(metadata double* %11, metadata !198, metadata !100), !dbg !199
  %33 = load double, double* %10, align 8, !dbg !200
  %34 = fmul double 2.000000e+00, %33, !dbg !201
  store double %34, double* %11, align 8, !dbg !199
  call void @llvm.dbg.declare(metadata double* %12, metadata !202, metadata !100), !dbg !203
  store double 0.000000e+00, double* %12, align 8, !dbg !203
  %35 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !204
  %36 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %35, i32 0, i32 1, !dbg !206
  %37 = load i32, i32* %36, align 8, !dbg !206
  store i32 %37, i32* %7, align 4, !dbg !207
  br label %38, !dbg !208

; <label>:38:                                     ; preds = %75, %3
  %39 = load i32, i32* %7, align 4, !dbg !209
  %40 = icmp sge i32 %39, 1, !dbg !212
  br i1 %40, label %41, label %78, !dbg !213

; <label>:41:                                     ; preds = %38
  call void @llvm.dbg.declare(metadata double* %13, metadata !214, metadata !100), !dbg !216
  %42 = load double, double* %8, align 8, !dbg !217
  store double %42, double* %13, align 8, !dbg !216
  %43 = load double, double* %11, align 8, !dbg !218
  %44 = load double, double* %8, align 8, !dbg !219
  %45 = fmul double %43, %44, !dbg !220
  %46 = load double, double* %9, align 8, !dbg !221
  %47 = fsub double %45, %46, !dbg !222
  %48 = load i32, i32* %7, align 4, !dbg !223
  %49 = sext i32 %48 to i64, !dbg !224
  %50 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !224
  %51 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %50, i32 0, i32 0, !dbg !225
  %52 = load double*, double** %51, align 8, !dbg !225
  %53 = getelementptr inbounds double, double* %52, i64 %49, !dbg !224
  %54 = load double, double* %53, align 8, !dbg !224
  %55 = fadd double %47, %54, !dbg !226
  store double %55, double* %8, align 8, !dbg !227
  %56 = load double, double* %11, align 8, !dbg !228
  %57 = load double, double* %13, align 8, !dbg !229
  %58 = fmul double %56, %57, !dbg !230
  %59 = call double @fabs(double %58) #1, !dbg !231
  %60 = load double, double* %9, align 8, !dbg !232
  %61 = call double @fabs(double %60) #1, !dbg !233
  %62 = fadd double %59, %61, !dbg !235
  %63 = load i32, i32* %7, align 4, !dbg !236
  %64 = sext i32 %63 to i64, !dbg !237
  %65 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !237
  %66 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %65, i32 0, i32 0, !dbg !238
  %67 = load double*, double** %66, align 8, !dbg !238
  %68 = getelementptr inbounds double, double* %67, i64 %64, !dbg !237
  %69 = load double, double* %68, align 8, !dbg !237
  %70 = call double @fabs(double %69) #1, !dbg !239
  %71 = fadd double %62, %70, !dbg !241
  %72 = load double, double* %12, align 8, !dbg !242
  %73 = fadd double %72, %71, !dbg !242
  store double %73, double* %12, align 8, !dbg !242
  %74 = load double, double* %13, align 8, !dbg !243
  store double %74, double* %9, align 8, !dbg !244
  br label %75, !dbg !245

; <label>:75:                                     ; preds = %41
  %76 = load i32, i32* %7, align 4, !dbg !246
  %77 = add nsw i32 %76, -1, !dbg !246
  store i32 %77, i32* %7, align 4, !dbg !246
  br label %38, !dbg !248, !llvm.loop !249

; <label>:78:                                     ; preds = %38
  call void @llvm.dbg.declare(metadata double* %14, metadata !251, metadata !100), !dbg !253
  %79 = load double, double* %8, align 8, !dbg !254
  store double %79, double* %14, align 8, !dbg !253
  %80 = load double, double* %10, align 8, !dbg !255
  %81 = load double, double* %8, align 8, !dbg !256
  %82 = fmul double %80, %81, !dbg !257
  %83 = load double, double* %9, align 8, !dbg !258
  %84 = fsub double %82, %83, !dbg !259
  %85 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !260
  %86 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %85, i32 0, i32 0, !dbg !261
  %87 = load double*, double** %86, align 8, !dbg !261
  %88 = getelementptr inbounds double, double* %87, i64 0, !dbg !260
  %89 = load double, double* %88, align 8, !dbg !260
  %90 = fmul double 5.000000e-01, %89, !dbg !262
  %91 = fadd double %84, %90, !dbg !263
  store double %91, double* %8, align 8, !dbg !264
  %92 = load double, double* %10, align 8, !dbg !265
  %93 = load double, double* %14, align 8, !dbg !266
  %94 = fmul double %92, %93, !dbg !267
  %95 = call double @fabs(double %94) #1, !dbg !268
  %96 = load double, double* %9, align 8, !dbg !269
  %97 = call double @fabs(double %96) #1, !dbg !270
  %98 = fadd double %95, %97, !dbg !272
  %99 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !273
  %100 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %99, i32 0, i32 0, !dbg !274
  %101 = load double*, double** %100, align 8, !dbg !274
  %102 = getelementptr inbounds double, double* %101, i64 0, !dbg !273
  %103 = load double, double* %102, align 8, !dbg !273
  %104 = call double @fabs(double %103) #1, !dbg !275
  %105 = fmul double 5.000000e-01, %104, !dbg !277
  %106 = fadd double %98, %105, !dbg !278
  %107 = load double, double* %12, align 8, !dbg !279
  %108 = fadd double %107, %106, !dbg !279
  store double %108, double* %12, align 8, !dbg !279
  %109 = load double, double* %8, align 8, !dbg !280
  %110 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !281
  %111 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %110, i32 0, i32 0, !dbg !282
  store double %109, double* %111, align 8, !dbg !283
  %112 = load double, double* %12, align 8, !dbg !284
  %113 = fmul double 0x3CB0000000000000, %112, !dbg !285
  %114 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !286
  %115 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %114, i32 0, i32 1, !dbg !287
  %116 = load i32, i32* %115, align 8, !dbg !287
  %117 = sext i32 %116 to i64, !dbg !288
  %118 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !288
  %119 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %118, i32 0, i32 0, !dbg !289
  %120 = load double*, double** %119, align 8, !dbg !289
  %121 = getelementptr inbounds double, double* %120, i64 %117, !dbg !288
  %122 = load double, double* %121, align 8, !dbg !288
  %123 = call double @fabs(double %122) #1, !dbg !290
  %124 = fadd double %113, %123, !dbg !291
  %125 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !292
  %126 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %125, i32 0, i32 1, !dbg !293
  store double %124, double* %126, align 8, !dbg !294
  ret i32 0, !dbg !295
}

; Function Attrs: nounwind
declare double @pow(double, double) #3

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_bessel_Jnu_asymp_Olver_e(double, double, %struct.gsl_sf_result_struct*) #0 !dbg !296 {
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
  %14 = alloca double, align 8
  %15 = alloca %struct.gsl_sf_result_struct, align 8
  %16 = alloca %struct.gsl_sf_result_struct, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca double, align 8
  %24 = alloca double, align 8
  %25 = alloca double, align 8
  %26 = alloca double, align 8
  %27 = alloca double, align 8
  %28 = alloca double, align 8
  %29 = alloca double, align 8
  %30 = alloca double, align 8
  %31 = alloca double, align 8
  %32 = alloca double, align 8
  %33 = alloca double, align 8
  store double %0, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !299, metadata !100), !dbg !300
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !301, metadata !100), !dbg !302
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %7, metadata !303, metadata !100), !dbg !304
  %34 = load double, double* %6, align 8, !dbg !305
  %35 = fcmp ole double %34, 0.000000e+00, !dbg !307
  br i1 %35, label %39, label %36, !dbg !308

; <label>:36:                                     ; preds = %3
  %37 = load double, double* %5, align 8, !dbg !309
  %38 = fcmp ole double %37, 0.000000e+00, !dbg !311
  br i1 %38, label %39, label %48, !dbg !312

; <label>:39:                                     ; preds = %36, %3
  br label %40, !dbg !313, !llvm.loop !315

; <label>:40:                                     ; preds = %39
  %41 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !316
  %42 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %41, i32 0, i32 0, !dbg !316
  store double 0x7FF8000000000000, double* %42, align 8, !dbg !316
  %43 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !316
  %44 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %43, i32 0, i32 1, !dbg !316
  store double 0x7FF8000000000000, double* %44, align 8, !dbg !316
  br label %45, !dbg !316, !llvm.loop !319

; <label>:45:                                     ; preds = %40
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 847, i32 1), !dbg !321
  store i32 1, i32* %4, align 4, !dbg !321
  br label %263, !dbg !321
                                                  ; No predecessors!
  br label %47, !dbg !324

; <label>:47:                                     ; preds = %46
  br label %263, !dbg !326

; <label>:48:                                     ; preds = %36
  call void @llvm.dbg.declare(metadata double* %8, metadata !327, metadata !100), !dbg !329
  call void @llvm.dbg.declare(metadata double* %9, metadata !330, metadata !100), !dbg !331
  call void @llvm.dbg.declare(metadata double* %10, metadata !332, metadata !100), !dbg !333
  call void @llvm.dbg.declare(metadata double* %11, metadata !334, metadata !100), !dbg !335
  call void @llvm.dbg.declare(metadata double* %12, metadata !336, metadata !100), !dbg !337
  call void @llvm.dbg.declare(metadata double* %13, metadata !338, metadata !100), !dbg !339
  call void @llvm.dbg.declare(metadata double* %14, metadata !340, metadata !100), !dbg !341
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %15, metadata !342, metadata !100), !dbg !343
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %16, metadata !344, metadata !100), !dbg !345
  call void @llvm.dbg.declare(metadata double* %17, metadata !346, metadata !100), !dbg !347
  %49 = load double, double* %6, align 8, !dbg !348
  %50 = load double, double* %5, align 8, !dbg !349
  %51 = fdiv double %49, %50, !dbg !350
  store double %51, double* %17, align 8, !dbg !347
  call void @llvm.dbg.declare(metadata double* %18, metadata !351, metadata !100), !dbg !352
  %52 = load double, double* %5, align 8, !dbg !353
  %53 = call double @pow(double %52, double 0x3FD5555555555555) #6, !dbg !354
  store double %53, double* %18, align 8, !dbg !352
  call void @llvm.dbg.declare(metadata double* %19, metadata !355, metadata !100), !dbg !356
  %54 = load double, double* %5, align 8, !dbg !357
  %55 = load double, double* %5, align 8, !dbg !358
  %56 = fmul double %54, %55, !dbg !359
  %57 = load double, double* %5, align 8, !dbg !360
  %58 = fmul double %56, %57, !dbg !361
  store double %58, double* %19, align 8, !dbg !356
  call void @llvm.dbg.declare(metadata double* %20, metadata !362, metadata !100), !dbg !363
  %59 = load double, double* %19, align 8, !dbg !364
  %60 = load double, double* %19, align 8, !dbg !365
  %61 = fmul double %59, %60, !dbg !366
  %62 = load double, double* %19, align 8, !dbg !367
  %63 = fmul double %61, %62, !dbg !368
  %64 = load double, double* %5, align 8, !dbg !369
  %65 = fmul double %63, %64, !dbg !370
  %66 = load double, double* %5, align 8, !dbg !371
  %67 = fmul double %65, %66, !dbg !372
  store double %67, double* %20, align 8, !dbg !363
  call void @llvm.dbg.declare(metadata i32* %21, metadata !373, metadata !100), !dbg !374
  call void @llvm.dbg.declare(metadata i32* %22, metadata !375, metadata !100), !dbg !376
  %68 = load double, double* %17, align 8, !dbg !377
  %69 = fsub double 1.000000e+00, %68, !dbg !379
  %70 = call double @fabs(double %69) #1, !dbg !380
  %71 = fcmp olt double %70, 2.000000e-02, !dbg !381
  br i1 %71, label %72, label %108, !dbg !382

; <label>:72:                                     ; preds = %48
  call void @llvm.dbg.declare(metadata double* %23, metadata !383, metadata !100), !dbg !385
  %73 = load double, double* %17, align 8, !dbg !386
  %74 = fsub double 1.000000e+00, %73, !dbg !387
  store double %74, double* %23, align 8, !dbg !385
  call void @llvm.dbg.declare(metadata double* %24, metadata !388, metadata !100), !dbg !389
  store double 0x3FF428A2F98D728B, double* %24, align 8, !dbg !389
  call void @llvm.dbg.declare(metadata double* %25, metadata !390, metadata !100), !dbg !391
  store double 0x3FD830C391DCEFDA, double* %25, align 8, !dbg !391
  call void @llvm.dbg.declare(metadata double* %26, metadata !392, metadata !100), !dbg !393
  store double 0x3FCD7D462E2826D4, double* %26, align 8, !dbg !393
  call void @llvm.dbg.declare(metadata double* %27, metadata !394, metadata !100), !dbg !395
  store double 0x3FC53C86A0E23F84, double* %27, align 8, !dbg !395
  call void @llvm.dbg.declare(metadata double* %28, metadata !396, metadata !100), !dbg !397
  store double 0x3FC08D5B5F242061, double* %28, align 8, !dbg !397
  call void @llvm.dbg.declare(metadata double* %29, metadata !398, metadata !100), !dbg !399
  store double 0x3FBB0DDFEFA33BCD, double* %29, align 8, !dbg !399
  call void @llvm.dbg.declare(metadata double* %30, metadata !400, metadata !100), !dbg !401
  store double 0x3FB6D3D801D5BC8D, double* %30, align 8, !dbg !401
  call void @llvm.dbg.declare(metadata double* %31, metadata !402, metadata !100), !dbg !403
  store double 0x3FB3B64821C4C9D1, double* %31, align 8, !dbg !403
  %75 = load double, double* %23, align 8, !dbg !404
  %76 = load double, double* %23, align 8, !dbg !405
  %77 = load double, double* %23, align 8, !dbg !406
  %78 = load double, double* %23, align 8, !dbg !407
  %79 = load double, double* %23, align 8, !dbg !408
  %80 = load double, double* %23, align 8, !dbg !409
  %81 = load double, double* %23, align 8, !dbg !410
  %82 = fmul double %81, 0x3FB3B64821C4C9D1, !dbg !411
  %83 = fadd double 0x3FB6D3D801D5BC8D, %82, !dbg !412
  %84 = fmul double %80, %83, !dbg !413
  %85 = fadd double 0x3FBB0DDFEFA33BCD, %84, !dbg !414
  %86 = fmul double %79, %85, !dbg !415
  %87 = fadd double 0x3FC08D5B5F242061, %86, !dbg !416
  %88 = fmul double %78, %87, !dbg !417
  %89 = fadd double 0x3FC53C86A0E23F84, %88, !dbg !418
  %90 = fmul double %77, %89, !dbg !419
  %91 = fadd double 0x3FCD7D462E2826D4, %90, !dbg !420
  %92 = fmul double %76, %91, !dbg !421
  %93 = fadd double 0x3FD830C391DCEFDA, %92, !dbg !422
  %94 = fmul double %75, %93, !dbg !423
  %95 = fadd double 0x3FF428A2F98D728B, %94, !dbg !424
  store double %95, double* %11, align 8, !dbg !425
  %96 = load double, double* %23, align 8, !dbg !426
  %97 = load double, double* %11, align 8, !dbg !427
  %98 = fmul double %96, %97, !dbg !428
  store double %98, double* %8, align 8, !dbg !429
  %99 = load double, double* %11, align 8, !dbg !430
  %100 = load double, double* %17, align 8, !dbg !431
  %101 = fadd double 1.000000e+00, %100, !dbg !432
  %102 = fdiv double %99, %101, !dbg !433
  %103 = call double @sqrt(double %102) #6, !dbg !434
  %104 = fmul double 2.000000e+00, %103, !dbg !435
  %105 = call double @sqrt(double %104) #6, !dbg !436
  store double %105, double* %11, align 8, !dbg !438
  %106 = load double, double* %8, align 8, !dbg !439
  %107 = call double @fabs(double %106) #1, !dbg !440
  store double %107, double* %9, align 8, !dbg !441
  br label %162, !dbg !442

; <label>:108:                                    ; preds = %48
  %109 = load double, double* %17, align 8, !dbg !443
  %110 = fcmp olt double %109, 1.000000e+00, !dbg !445
  br i1 %110, label %111, label %135, !dbg !446

; <label>:111:                                    ; preds = %108
  call void @llvm.dbg.declare(metadata double* %32, metadata !447, metadata !100), !dbg !449
  %112 = load double, double* %17, align 8, !dbg !450
  %113 = load double, double* %17, align 8, !dbg !451
  %114 = fmul double %112, %113, !dbg !452
  %115 = fsub double 1.000000e+00, %114, !dbg !453
  %116 = call double @sqrt(double %115) #6, !dbg !454
  store double %116, double* %32, align 8, !dbg !449
  %117 = load double, double* %32, align 8, !dbg !455
  %118 = fadd double 1.000000e+00, %117, !dbg !456
  %119 = load double, double* %17, align 8, !dbg !457
  %120 = fdiv double %118, %119, !dbg !458
  %121 = call double @log(double %120) #6, !dbg !459
  %122 = load double, double* %32, align 8, !dbg !460
  %123 = fsub double %121, %122, !dbg !461
  %124 = fmul double 1.500000e+00, %123, !dbg !462
  %125 = call double @pow(double %124, double 0x3FE5555555555555) #6, !dbg !463
  store double %125, double* %9, align 8, !dbg !465
  %126 = load double, double* %9, align 8, !dbg !466
  store double %126, double* %8, align 8, !dbg !467
  %127 = load double, double* %9, align 8, !dbg !468
  %128 = load double, double* %32, align 8, !dbg !469
  %129 = load double, double* %32, align 8, !dbg !470
  %130 = fmul double %128, %129, !dbg !471
  %131 = fdiv double %127, %130, !dbg !472
  %132 = call double @sqrt(double %131) #6, !dbg !473
  %133 = fmul double 2.000000e+00, %132, !dbg !474
  %134 = call double @sqrt(double %133) #6, !dbg !475
  store double %134, double* %11, align 8, !dbg !476
  br label %161, !dbg !477

; <label>:135:                                    ; preds = %108
  call void @llvm.dbg.declare(metadata double* %33, metadata !478, metadata !100), !dbg !480
  %136 = load double, double* %17, align 8, !dbg !481
  %137 = load double, double* %17, align 8, !dbg !482
  %138 = load double, double* %17, align 8, !dbg !483
  %139 = fmul double %137, %138, !dbg !484
  %140 = fdiv double 1.000000e+00, %139, !dbg !485
  %141 = fsub double 1.000000e+00, %140, !dbg !486
  %142 = call double @sqrt(double %141) #6, !dbg !487
  %143 = fmul double %136, %142, !dbg !488
  store double %143, double* %33, align 8, !dbg !480
  %144 = load double, double* %33, align 8, !dbg !489
  %145 = load double, double* %17, align 8, !dbg !490
  %146 = fdiv double 1.000000e+00, %145, !dbg !491
  %147 = call double @acos(double %146) #6, !dbg !492
  %148 = fsub double %144, %147, !dbg !493
  %149 = fmul double 1.500000e+00, %148, !dbg !494
  %150 = call double @pow(double %149, double 0x3FE5555555555555) #6, !dbg !495
  store double %150, double* %9, align 8, !dbg !497
  %151 = load double, double* %9, align 8, !dbg !498
  %152 = fsub double -0.000000e+00, %151, !dbg !499
  store double %152, double* %8, align 8, !dbg !500
  %153 = load double, double* %9, align 8, !dbg !501
  %154 = load double, double* %33, align 8, !dbg !502
  %155 = load double, double* %33, align 8, !dbg !503
  %156 = fmul double %154, %155, !dbg !504
  %157 = fdiv double %153, %156, !dbg !505
  %158 = call double @sqrt(double %157) #6, !dbg !506
  %159 = fmul double 2.000000e+00, %158, !dbg !507
  %160 = call double @sqrt(double %159) #6, !dbg !508
  store double %160, double* %11, align 8, !dbg !509
  br label %161

; <label>:161:                                    ; preds = %135, %111
  br label %162

; <label>:162:                                    ; preds = %161, %72
  %163 = load double, double* %5, align 8, !dbg !510
  %164 = load double, double* %17, align 8, !dbg !511
  %165 = load double, double* %9, align 8, !dbg !512
  %166 = call double @olver_Asum(double %163, double %164, double %165, double* %14), !dbg !513
  store double %166, double* %12, align 8, !dbg !514
  %167 = load double, double* %5, align 8, !dbg !515
  %168 = load double, double* %17, align 8, !dbg !516
  %169 = load double, double* %9, align 8, !dbg !517
  %170 = call double @olver_Bsum(double %167, double %168, double %169), !dbg !518
  store double %170, double* %13, align 8, !dbg !519
  %171 = load double, double* %18, align 8, !dbg !520
  %172 = load double, double* %18, align 8, !dbg !521
  %173 = fmul double %171, %172, !dbg !522
  %174 = load double, double* %8, align 8, !dbg !523
  %175 = fmul double %173, %174, !dbg !524
  store double %175, double* %10, align 8, !dbg !525
  %176 = load double, double* %10, align 8, !dbg !526
  %177 = call i32 @gsl_sf_airy_Ai_e(double %176, i32 0, %struct.gsl_sf_result_struct* %15), !dbg !527
  store i32 %177, i32* %21, align 4, !dbg !528
  %178 = load double, double* %10, align 8, !dbg !529
  %179 = call i32 @gsl_sf_airy_Ai_deriv_e(double %178, i32 0, %struct.gsl_sf_result_struct* %16), !dbg !530
  store i32 %179, i32* %22, align 4, !dbg !531
  %180 = load double, double* %11, align 8, !dbg !532
  %181 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %15, i32 0, i32 0, !dbg !533
  %182 = load double, double* %181, align 8, !dbg !533
  %183 = load double, double* %12, align 8, !dbg !534
  %184 = fmul double %182, %183, !dbg !535
  %185 = load double, double* %18, align 8, !dbg !536
  %186 = fdiv double %184, %185, !dbg !537
  %187 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %16, i32 0, i32 0, !dbg !538
  %188 = load double, double* %187, align 8, !dbg !538
  %189 = load double, double* %13, align 8, !dbg !539
  %190 = fmul double %188, %189, !dbg !540
  %191 = load double, double* %5, align 8, !dbg !541
  %192 = load double, double* %18, align 8, !dbg !542
  %193 = fmul double %191, %192, !dbg !543
  %194 = load double, double* %18, align 8, !dbg !544
  %195 = fmul double %193, %194, !dbg !545
  %196 = fdiv double %190, %195, !dbg !546
  %197 = fadd double %186, %196, !dbg !547
  %198 = fmul double %180, %197, !dbg !548
  %199 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !549
  %200 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %199, i32 0, i32 0, !dbg !550
  store double %198, double* %200, align 8, !dbg !551
  %201 = load double, double* %11, align 8, !dbg !552
  %202 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %15, i32 0, i32 1, !dbg !553
  %203 = load double, double* %202, align 8, !dbg !553
  %204 = load double, double* %12, align 8, !dbg !554
  %205 = load double, double* %18, align 8, !dbg !555
  %206 = fdiv double %204, %205, !dbg !556
  %207 = call double @fabs(double %206) #1, !dbg !557
  %208 = fmul double %203, %207, !dbg !558
  %209 = fmul double %201, %208, !dbg !559
  %210 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !560
  %211 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %210, i32 0, i32 1, !dbg !561
  store double %209, double* %211, align 8, !dbg !562
  %212 = load double, double* %11, align 8, !dbg !563
  %213 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %15, i32 0, i32 0, !dbg !564
  %214 = load double, double* %213, align 8, !dbg !564
  %215 = call double @fabs(double %214) #1, !dbg !565
  %216 = fmul double %212, %215, !dbg !566
  %217 = load double, double* %14, align 8, !dbg !567
  %218 = fmul double %216, %217, !dbg !568
  %219 = load double, double* %18, align 8, !dbg !569
  %220 = fdiv double %218, %219, !dbg !570
  %221 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !571
  %222 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %221, i32 0, i32 1, !dbg !572
  %223 = load double, double* %222, align 8, !dbg !573
  %224 = fadd double %223, %220, !dbg !573
  store double %224, double* %222, align 8, !dbg !573
  %225 = load double, double* %11, align 8, !dbg !574
  %226 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %15, i32 0, i32 0, !dbg !575
  %227 = load double, double* %226, align 8, !dbg !575
  %228 = load double, double* %12, align 8, !dbg !576
  %229 = fmul double %227, %228, !dbg !577
  %230 = call double @fabs(double %229) #1, !dbg !578
  %231 = fmul double %225, %230, !dbg !579
  %232 = load double, double* %18, align 8, !dbg !580
  %233 = load double, double* %20, align 8, !dbg !581
  %234 = fmul double %232, %233, !dbg !582
  %235 = fdiv double %231, %234, !dbg !583
  %236 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !584
  %237 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %236, i32 0, i32 1, !dbg !585
  %238 = load double, double* %237, align 8, !dbg !586
  %239 = fadd double %238, %235, !dbg !586
  store double %239, double* %237, align 8, !dbg !586
  %240 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !587
  %241 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %240, i32 0, i32 0, !dbg !588
  %242 = load double, double* %241, align 8, !dbg !588
  %243 = call double @fabs(double %242) #1, !dbg !589
  %244 = fmul double 0x3CE0000000000000, %243, !dbg !590
  %245 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !591
  %246 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %245, i32 0, i32 1, !dbg !592
  %247 = load double, double* %246, align 8, !dbg !593
  %248 = fadd double %247, %244, !dbg !593
  store double %248, double* %246, align 8, !dbg !593
  %249 = load i32, i32* %21, align 4, !dbg !594
  %250 = icmp ne i32 %249, 0, !dbg !594
  br i1 %250, label %251, label %253, !dbg !594

; <label>:251:                                    ; preds = %162
  %252 = load i32, i32* %21, align 4, !dbg !595
  br label %261, !dbg !595

; <label>:253:                                    ; preds = %162
  %254 = load i32, i32* %22, align 4, !dbg !597
  %255 = icmp ne i32 %254, 0, !dbg !597
  br i1 %255, label %256, label %258, !dbg !597

; <label>:256:                                    ; preds = %253
  %257 = load i32, i32* %22, align 4, !dbg !599
  br label %259, !dbg !599

; <label>:258:                                    ; preds = %253
  br label %259, !dbg !601

; <label>:259:                                    ; preds = %258, %256
  %260 = phi i32 [ %257, %256 ], [ 0, %258 ], !dbg !603
  br label %261, !dbg !603

; <label>:261:                                    ; preds = %259, %251
  %262 = phi i32 [ %252, %251 ], [ %260, %259 ], !dbg !605
  store i32 %262, i32* %4, align 4, !dbg !607
  br label %263, !dbg !607

; <label>:263:                                    ; preds = %45, %261, %47
  %264 = load i32, i32* %4, align 4, !dbg !608
  ret i32 %264, !dbg !608
}

declare void @gsl_error(i8*, i8*, i32, i32) #4

; Function Attrs: nounwind readnone
declare double @fabs(double) #5

; Function Attrs: nounwind
declare double @sqrt(double) #3

; Function Attrs: nounwind
declare double @log(double) #3

; Function Attrs: nounwind
declare double @acos(double) #3

; Function Attrs: inlinehint nounwind uwtable
define internal double @olver_Asum(double, double, double, double*) #2 !dbg !609 {
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double*, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  store double %0, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !612, metadata !100), !dbg !613
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !614, metadata !100), !dbg !615
  store double %2, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !616, metadata !100), !dbg !617
  store double* %3, double** %8, align 8
  call void @llvm.dbg.declare(metadata double** %8, metadata !618, metadata !100), !dbg !619
  call void @llvm.dbg.declare(metadata double* %9, metadata !620, metadata !100), !dbg !621
  %15 = load double, double* %5, align 8, !dbg !622
  %16 = load double, double* %5, align 8, !dbg !623
  %17 = fmul double %15, %16, !dbg !624
  store double %17, double* %9, align 8, !dbg !621
  call void @llvm.dbg.declare(metadata double* %10, metadata !625, metadata !100), !dbg !626
  call void @llvm.dbg.declare(metadata double* %11, metadata !627, metadata !100), !dbg !628
  %18 = load double, double* %6, align 8, !dbg !629
  %19 = load double, double* %7, align 8, !dbg !630
  %20 = call double @olver_A1(double %18, double %19, double* %10), !dbg !631
  store double %20, double* %11, align 8, !dbg !628
  call void @llvm.dbg.declare(metadata double* %12, metadata !632, metadata !100), !dbg !633
  %21 = load double, double* %6, align 8, !dbg !634
  %22 = load double, double* %7, align 8, !dbg !635
  %23 = call double @olver_A2(double %21, double %22), !dbg !636
  store double %23, double* %12, align 8, !dbg !633
  call void @llvm.dbg.declare(metadata double* %13, metadata !637, metadata !100), !dbg !638
  %24 = load double, double* %6, align 8, !dbg !639
  %25 = load double, double* %7, align 8, !dbg !640
  %26 = call double @olver_A3(double %24, double %25), !dbg !641
  store double %26, double* %13, align 8, !dbg !638
  call void @llvm.dbg.declare(metadata double* %14, metadata !642, metadata !100), !dbg !643
  %27 = load double, double* %6, align 8, !dbg !644
  %28 = load double, double* %7, align 8, !dbg !645
  %29 = call double @olver_A4(double %27, double %28), !dbg !646
  store double %29, double* %14, align 8, !dbg !643
  %30 = load double, double* %10, align 8, !dbg !647
  %31 = load double, double* %9, align 8, !dbg !648
  %32 = fdiv double %30, %31, !dbg !649
  %33 = fadd double %32, 0x3CB0000000000000, !dbg !650
  %34 = load double*, double** %8, align 8, !dbg !651
  store double %33, double* %34, align 8, !dbg !652
  %35 = load double, double* %11, align 8, !dbg !653
  %36 = load double, double* %9, align 8, !dbg !654
  %37 = fdiv double %35, %36, !dbg !655
  %38 = fadd double 1.000000e+00, %37, !dbg !656
  %39 = load double, double* %12, align 8, !dbg !657
  %40 = load double, double* %9, align 8, !dbg !658
  %41 = load double, double* %9, align 8, !dbg !659
  %42 = fmul double %40, %41, !dbg !660
  %43 = fdiv double %39, %42, !dbg !661
  %44 = fadd double %38, %43, !dbg !662
  %45 = load double, double* %13, align 8, !dbg !663
  %46 = load double, double* %9, align 8, !dbg !664
  %47 = load double, double* %9, align 8, !dbg !665
  %48 = fmul double %46, %47, !dbg !666
  %49 = load double, double* %9, align 8, !dbg !667
  %50 = fmul double %48, %49, !dbg !668
  %51 = fdiv double %45, %50, !dbg !669
  %52 = fadd double %44, %51, !dbg !670
  %53 = load double, double* %14, align 8, !dbg !671
  %54 = load double, double* %9, align 8, !dbg !672
  %55 = load double, double* %9, align 8, !dbg !673
  %56 = fmul double %54, %55, !dbg !674
  %57 = load double, double* %9, align 8, !dbg !675
  %58 = fmul double %56, %57, !dbg !676
  %59 = load double, double* %9, align 8, !dbg !677
  %60 = fmul double %58, %59, !dbg !678
  %61 = fdiv double %53, %60, !dbg !679
  %62 = fadd double %52, %61, !dbg !680
  ret double %62, !dbg !681
}

; Function Attrs: inlinehint nounwind uwtable
define internal double @olver_Bsum(double, double, double) #2 !dbg !682 {
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !685, metadata !100), !dbg !686
  store double %1, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !687, metadata !100), !dbg !688
  store double %2, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !689, metadata !100), !dbg !690
  call void @llvm.dbg.declare(metadata double* %7, metadata !691, metadata !100), !dbg !692
  %12 = load double, double* %4, align 8, !dbg !693
  %13 = load double, double* %4, align 8, !dbg !694
  %14 = fmul double %12, %13, !dbg !695
  store double %14, double* %7, align 8, !dbg !692
  call void @llvm.dbg.declare(metadata double* %8, metadata !696, metadata !100), !dbg !697
  %15 = load double, double* %5, align 8, !dbg !698
  %16 = load double, double* %6, align 8, !dbg !699
  %17 = call double @olver_B0(double %15, double %16), !dbg !700
  store double %17, double* %8, align 8, !dbg !697
  call void @llvm.dbg.declare(metadata double* %9, metadata !701, metadata !100), !dbg !702
  %18 = load double, double* %5, align 8, !dbg !703
  %19 = load double, double* %6, align 8, !dbg !704
  %20 = call double @olver_B1(double %18, double %19), !dbg !705
  store double %20, double* %9, align 8, !dbg !702
  call void @llvm.dbg.declare(metadata double* %10, metadata !706, metadata !100), !dbg !707
  %21 = load double, double* %5, align 8, !dbg !708
  %22 = load double, double* %6, align 8, !dbg !709
  %23 = call double @olver_B2(double %21, double %22), !dbg !710
  store double %23, double* %10, align 8, !dbg !707
  call void @llvm.dbg.declare(metadata double* %11, metadata !711, metadata !100), !dbg !712
  %24 = load double, double* %5, align 8, !dbg !713
  %25 = load double, double* %6, align 8, !dbg !714
  %26 = call double @olver_B3(double %24, double %25), !dbg !715
  store double %26, double* %11, align 8, !dbg !712
  %27 = load double, double* %8, align 8, !dbg !716
  %28 = load double, double* %9, align 8, !dbg !717
  %29 = load double, double* %7, align 8, !dbg !718
  %30 = fdiv double %28, %29, !dbg !719
  %31 = fadd double %27, %30, !dbg !720
  %32 = load double, double* %10, align 8, !dbg !721
  %33 = load double, double* %7, align 8, !dbg !722
  %34 = load double, double* %7, align 8, !dbg !723
  %35 = fmul double %33, %34, !dbg !724
  %36 = fdiv double %32, %35, !dbg !725
  %37 = fadd double %31, %36, !dbg !726
  %38 = load double, double* %11, align 8, !dbg !727
  %39 = load double, double* %7, align 8, !dbg !728
  %40 = load double, double* %7, align 8, !dbg !729
  %41 = fmul double %39, %40, !dbg !730
  %42 = load double, double* %7, align 8, !dbg !731
  %43 = fmul double %41, %42, !dbg !732
  %44 = load double, double* %7, align 8, !dbg !733
  %45 = fmul double %43, %44, !dbg !734
  %46 = fdiv double %38, %45, !dbg !735
  %47 = fadd double %37, %46, !dbg !736
  ret double %47, !dbg !737
}

declare i32 @gsl_sf_airy_Ai_e(double, i32, %struct.gsl_sf_result_struct*) #4

declare i32 @gsl_sf_airy_Ai_deriv_e(double, i32, %struct.gsl_sf_result_struct*) #4

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_bessel_Ynu_asymp_Olver_e(double, double, %struct.gsl_sf_result_struct*) #0 !dbg !738 {
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
  %14 = alloca double, align 8
  %15 = alloca %struct.gsl_sf_result_struct, align 8
  %16 = alloca %struct.gsl_sf_result_struct, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca double, align 8
  %24 = alloca double, align 8
  %25 = alloca double, align 8
  %26 = alloca double, align 8
  %27 = alloca double, align 8
  %28 = alloca double, align 8
  %29 = alloca double, align 8
  %30 = alloca double, align 8
  %31 = alloca double, align 8
  %32 = alloca double, align 8
  %33 = alloca double, align 8
  %34 = alloca double, align 8
  store double %0, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !739, metadata !100), !dbg !740
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !741, metadata !100), !dbg !742
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %7, metadata !743, metadata !100), !dbg !744
  %35 = load double, double* %6, align 8, !dbg !745
  %36 = fcmp ole double %35, 0.000000e+00, !dbg !747
  br i1 %36, label %40, label %37, !dbg !748

; <label>:37:                                     ; preds = %3
  %38 = load double, double* %5, align 8, !dbg !749
  %39 = fcmp ole double %38, 0.000000e+00, !dbg !751
  br i1 %39, label %40, label %49, !dbg !752

; <label>:40:                                     ; preds = %37, %3
  br label %41, !dbg !753, !llvm.loop !755

; <label>:41:                                     ; preds = %40
  %42 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !756
  %43 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %42, i32 0, i32 0, !dbg !756
  store double 0x7FF8000000000000, double* %43, align 8, !dbg !756
  %44 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !756
  %45 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %44, i32 0, i32 1, !dbg !756
  store double 0x7FF8000000000000, double* %45, align 8, !dbg !756
  br label %46, !dbg !756, !llvm.loop !759

; <label>:46:                                     ; preds = %41
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 922, i32 1), !dbg !761
  store i32 1, i32* %4, align 4, !dbg !761
  br label %264, !dbg !761
                                                  ; No predecessors!
  br label %48, !dbg !764

; <label>:48:                                     ; preds = %47
  br label %264, !dbg !766

; <label>:49:                                     ; preds = %37
  call void @llvm.dbg.declare(metadata double* %8, metadata !767, metadata !100), !dbg !769
  call void @llvm.dbg.declare(metadata double* %9, metadata !770, metadata !100), !dbg !771
  call void @llvm.dbg.declare(metadata double* %10, metadata !772, metadata !100), !dbg !773
  call void @llvm.dbg.declare(metadata double* %11, metadata !774, metadata !100), !dbg !775
  call void @llvm.dbg.declare(metadata double* %12, metadata !776, metadata !100), !dbg !777
  call void @llvm.dbg.declare(metadata double* %13, metadata !778, metadata !100), !dbg !779
  call void @llvm.dbg.declare(metadata double* %14, metadata !780, metadata !100), !dbg !781
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %15, metadata !782, metadata !100), !dbg !783
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %16, metadata !784, metadata !100), !dbg !785
  call void @llvm.dbg.declare(metadata double* %17, metadata !786, metadata !100), !dbg !787
  %50 = load double, double* %6, align 8, !dbg !788
  %51 = load double, double* %5, align 8, !dbg !789
  %52 = fdiv double %50, %51, !dbg !790
  store double %52, double* %17, align 8, !dbg !787
  call void @llvm.dbg.declare(metadata double* %18, metadata !791, metadata !100), !dbg !792
  %53 = load double, double* %5, align 8, !dbg !793
  %54 = call double @pow(double %53, double 0x3FD5555555555555) #6, !dbg !794
  store double %54, double* %18, align 8, !dbg !792
  call void @llvm.dbg.declare(metadata double* %19, metadata !795, metadata !100), !dbg !796
  %55 = load double, double* %5, align 8, !dbg !797
  %56 = load double, double* %5, align 8, !dbg !798
  %57 = fmul double %55, %56, !dbg !799
  %58 = load double, double* %5, align 8, !dbg !800
  %59 = fmul double %57, %58, !dbg !801
  store double %59, double* %19, align 8, !dbg !796
  call void @llvm.dbg.declare(metadata double* %20, metadata !802, metadata !100), !dbg !803
  %60 = load double, double* %19, align 8, !dbg !804
  %61 = load double, double* %19, align 8, !dbg !805
  %62 = fmul double %60, %61, !dbg !806
  %63 = load double, double* %19, align 8, !dbg !807
  %64 = fmul double %62, %63, !dbg !808
  %65 = load double, double* %5, align 8, !dbg !809
  %66 = fmul double %64, %65, !dbg !810
  %67 = load double, double* %5, align 8, !dbg !811
  %68 = fmul double %66, %67, !dbg !812
  store double %68, double* %20, align 8, !dbg !803
  call void @llvm.dbg.declare(metadata i32* %21, metadata !813, metadata !100), !dbg !814
  call void @llvm.dbg.declare(metadata i32* %22, metadata !815, metadata !100), !dbg !816
  %69 = load double, double* %17, align 8, !dbg !817
  %70 = fsub double 1.000000e+00, %69, !dbg !819
  %71 = call double @fabs(double %70) #1, !dbg !820
  %72 = fcmp olt double %71, 2.000000e-02, !dbg !821
  br i1 %72, label %73, label %109, !dbg !822

; <label>:73:                                     ; preds = %49
  call void @llvm.dbg.declare(metadata double* %23, metadata !823, metadata !100), !dbg !825
  %74 = load double, double* %17, align 8, !dbg !826
  %75 = fsub double 1.000000e+00, %74, !dbg !827
  store double %75, double* %23, align 8, !dbg !825
  call void @llvm.dbg.declare(metadata double* %24, metadata !828, metadata !100), !dbg !829
  store double 0x3FF428A2F98D728B, double* %24, align 8, !dbg !829
  call void @llvm.dbg.declare(metadata double* %25, metadata !830, metadata !100), !dbg !831
  store double 0x3FD830C391DCEFDA, double* %25, align 8, !dbg !831
  call void @llvm.dbg.declare(metadata double* %26, metadata !832, metadata !100), !dbg !833
  store double 0x3FCD7D462E2826D4, double* %26, align 8, !dbg !833
  call void @llvm.dbg.declare(metadata double* %27, metadata !834, metadata !100), !dbg !835
  store double 0x3FC53C86A0E23F84, double* %27, align 8, !dbg !835
  call void @llvm.dbg.declare(metadata double* %28, metadata !836, metadata !100), !dbg !837
  store double 0x3FC08D5B5F242061, double* %28, align 8, !dbg !837
  call void @llvm.dbg.declare(metadata double* %29, metadata !838, metadata !100), !dbg !839
  store double 0x3FBB0DDFEFA33BCD, double* %29, align 8, !dbg !839
  call void @llvm.dbg.declare(metadata double* %30, metadata !840, metadata !100), !dbg !841
  store double 0x3FB6D3D801D5BC8D, double* %30, align 8, !dbg !841
  call void @llvm.dbg.declare(metadata double* %31, metadata !842, metadata !100), !dbg !843
  store double 0x3FB3B64821C4C9D1, double* %31, align 8, !dbg !843
  %76 = load double, double* %23, align 8, !dbg !844
  %77 = load double, double* %23, align 8, !dbg !845
  %78 = load double, double* %23, align 8, !dbg !846
  %79 = load double, double* %23, align 8, !dbg !847
  %80 = load double, double* %23, align 8, !dbg !848
  %81 = load double, double* %23, align 8, !dbg !849
  %82 = load double, double* %23, align 8, !dbg !850
  %83 = fmul double %82, 0x3FB3B64821C4C9D1, !dbg !851
  %84 = fadd double 0x3FB6D3D801D5BC8D, %83, !dbg !852
  %85 = fmul double %81, %84, !dbg !853
  %86 = fadd double 0x3FBB0DDFEFA33BCD, %85, !dbg !854
  %87 = fmul double %80, %86, !dbg !855
  %88 = fadd double 0x3FC08D5B5F242061, %87, !dbg !856
  %89 = fmul double %79, %88, !dbg !857
  %90 = fadd double 0x3FC53C86A0E23F84, %89, !dbg !858
  %91 = fmul double %78, %90, !dbg !859
  %92 = fadd double 0x3FCD7D462E2826D4, %91, !dbg !860
  %93 = fmul double %77, %92, !dbg !861
  %94 = fadd double 0x3FD830C391DCEFDA, %93, !dbg !862
  %95 = fmul double %76, %94, !dbg !863
  %96 = fadd double 0x3FF428A2F98D728B, %95, !dbg !864
  store double %96, double* %11, align 8, !dbg !865
  %97 = load double, double* %23, align 8, !dbg !866
  %98 = load double, double* %11, align 8, !dbg !867
  %99 = fmul double %97, %98, !dbg !868
  store double %99, double* %8, align 8, !dbg !869
  %100 = load double, double* %11, align 8, !dbg !870
  %101 = load double, double* %17, align 8, !dbg !871
  %102 = fadd double 1.000000e+00, %101, !dbg !872
  %103 = fdiv double %100, %102, !dbg !873
  %104 = call double @sqrt(double %103) #6, !dbg !874
  %105 = fmul double 2.000000e+00, %104, !dbg !875
  %106 = call double @sqrt(double %105) #6, !dbg !876
  store double %106, double* %11, align 8, !dbg !878
  %107 = load double, double* %8, align 8, !dbg !879
  %108 = call double @fabs(double %107) #1, !dbg !880
  store double %108, double* %9, align 8, !dbg !881
  br label %162, !dbg !882

; <label>:109:                                    ; preds = %49
  %110 = load double, double* %17, align 8, !dbg !883
  %111 = fcmp olt double %110, 1.000000e+00, !dbg !885
  br i1 %111, label %112, label %136, !dbg !886

; <label>:112:                                    ; preds = %109
  call void @llvm.dbg.declare(metadata double* %32, metadata !887, metadata !100), !dbg !889
  %113 = load double, double* %17, align 8, !dbg !890
  %114 = load double, double* %17, align 8, !dbg !891
  %115 = fmul double %113, %114, !dbg !892
  %116 = fsub double 1.000000e+00, %115, !dbg !893
  %117 = call double @sqrt(double %116) #6, !dbg !894
  store double %117, double* %32, align 8, !dbg !889
  %118 = load double, double* %32, align 8, !dbg !895
  %119 = fadd double 1.000000e+00, %118, !dbg !896
  %120 = load double, double* %17, align 8, !dbg !897
  %121 = fdiv double %119, %120, !dbg !898
  %122 = call double @log(double %121) #6, !dbg !899
  %123 = load double, double* %32, align 8, !dbg !900
  %124 = fsub double %122, %123, !dbg !901
  %125 = fmul double 1.500000e+00, %124, !dbg !902
  %126 = call double @pow(double %125, double 0x3FE5555555555555) #6, !dbg !903
  store double %126, double* %9, align 8, !dbg !905
  %127 = load double, double* %9, align 8, !dbg !906
  store double %127, double* %8, align 8, !dbg !907
  %128 = load double, double* %9, align 8, !dbg !908
  %129 = load double, double* %32, align 8, !dbg !909
  %130 = load double, double* %32, align 8, !dbg !910
  %131 = fmul double %129, %130, !dbg !911
  %132 = fdiv double %128, %131, !dbg !912
  %133 = call double @sqrt(double %132) #6, !dbg !913
  %134 = fmul double 2.000000e+00, %133, !dbg !914
  %135 = call double @sqrt(double %134) #6, !dbg !915
  store double %135, double* %11, align 8, !dbg !916
  br label %161, !dbg !917

; <label>:136:                                    ; preds = %109
  call void @llvm.dbg.declare(metadata double* %33, metadata !918, metadata !100), !dbg !920
  %137 = load double, double* %17, align 8, !dbg !921
  %138 = load double, double* %17, align 8, !dbg !922
  %139 = load double, double* %17, align 8, !dbg !923
  %140 = fmul double %138, %139, !dbg !924
  %141 = fdiv double 1.000000e+00, %140, !dbg !925
  %142 = fsub double 1.000000e+00, %141, !dbg !926
  %143 = call double @sqrt(double %142) #6, !dbg !927
  %144 = fmul double %137, %143, !dbg !928
  store double %144, double* %33, align 8, !dbg !920
  call void @llvm.dbg.declare(metadata double* %34, metadata !929, metadata !100), !dbg !930
  %145 = load double, double* %17, align 8, !dbg !931
  %146 = fdiv double 1.000000e+00, %145, !dbg !932
  %147 = call double @acos(double %146) #6, !dbg !933
  store double %147, double* %34, align 8, !dbg !930
  %148 = load double, double* %33, align 8, !dbg !934
  %149 = load double, double* %34, align 8, !dbg !935
  %150 = fsub double %148, %149, !dbg !936
  %151 = fmul double 1.500000e+00, %150, !dbg !937
  %152 = call double @pow(double %151, double 0x3FE5555555555555) #6, !dbg !938
  store double %152, double* %9, align 8, !dbg !939
  %153 = load double, double* %9, align 8, !dbg !940
  %154 = fsub double -0.000000e+00, %153, !dbg !941
  store double %154, double* %8, align 8, !dbg !942
  %155 = load double, double* %9, align 8, !dbg !943
  %156 = call double @sqrt(double %155) #6, !dbg !944
  %157 = fmul double 2.000000e+00, %156, !dbg !945
  %158 = load double, double* %33, align 8, !dbg !946
  %159 = fdiv double %157, %158, !dbg !947
  %160 = call double @sqrt(double %159) #6, !dbg !948
  store double %160, double* %11, align 8, !dbg !950
  br label %161

; <label>:161:                                    ; preds = %136, %112
  br label %162

; <label>:162:                                    ; preds = %161, %73
  %163 = load double, double* %5, align 8, !dbg !951
  %164 = load double, double* %17, align 8, !dbg !952
  %165 = load double, double* %9, align 8, !dbg !953
  %166 = call double @olver_Asum(double %163, double %164, double %165, double* %14), !dbg !954
  store double %166, double* %12, align 8, !dbg !955
  %167 = load double, double* %5, align 8, !dbg !956
  %168 = load double, double* %17, align 8, !dbg !957
  %169 = load double, double* %9, align 8, !dbg !958
  %170 = call double @olver_Bsum(double %167, double %168, double %169), !dbg !959
  store double %170, double* %13, align 8, !dbg !960
  %171 = load double, double* %18, align 8, !dbg !961
  %172 = load double, double* %18, align 8, !dbg !962
  %173 = fmul double %171, %172, !dbg !963
  %174 = load double, double* %8, align 8, !dbg !964
  %175 = fmul double %173, %174, !dbg !965
  store double %175, double* %10, align 8, !dbg !966
  %176 = load double, double* %10, align 8, !dbg !967
  %177 = call i32 @gsl_sf_airy_Bi_e(double %176, i32 0, %struct.gsl_sf_result_struct* %15), !dbg !968
  store i32 %177, i32* %21, align 4, !dbg !969
  %178 = load double, double* %10, align 8, !dbg !970
  %179 = call i32 @gsl_sf_airy_Bi_deriv_e(double %178, i32 0, %struct.gsl_sf_result_struct* %16), !dbg !971
  store i32 %179, i32* %22, align 4, !dbg !972
  %180 = load double, double* %11, align 8, !dbg !973
  %181 = fsub double -0.000000e+00, %180, !dbg !974
  %182 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %15, i32 0, i32 0, !dbg !975
  %183 = load double, double* %182, align 8, !dbg !975
  %184 = load double, double* %12, align 8, !dbg !976
  %185 = fmul double %183, %184, !dbg !977
  %186 = load double, double* %18, align 8, !dbg !978
  %187 = fdiv double %185, %186, !dbg !979
  %188 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %16, i32 0, i32 0, !dbg !980
  %189 = load double, double* %188, align 8, !dbg !980
  %190 = load double, double* %13, align 8, !dbg !981
  %191 = fmul double %189, %190, !dbg !982
  %192 = load double, double* %5, align 8, !dbg !983
  %193 = load double, double* %18, align 8, !dbg !984
  %194 = fmul double %192, %193, !dbg !985
  %195 = load double, double* %18, align 8, !dbg !986
  %196 = fmul double %194, %195, !dbg !987
  %197 = fdiv double %191, %196, !dbg !988
  %198 = fadd double %187, %197, !dbg !989
  %199 = fmul double %181, %198, !dbg !990
  %200 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !991
  %201 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %200, i32 0, i32 0, !dbg !992
  store double %199, double* %201, align 8, !dbg !993
  %202 = load double, double* %11, align 8, !dbg !994
  %203 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %15, i32 0, i32 1, !dbg !995
  %204 = load double, double* %203, align 8, !dbg !995
  %205 = load double, double* %12, align 8, !dbg !996
  %206 = load double, double* %18, align 8, !dbg !997
  %207 = fdiv double %205, %206, !dbg !998
  %208 = call double @fabs(double %207) #1, !dbg !999
  %209 = fmul double %204, %208, !dbg !1000
  %210 = fmul double %202, %209, !dbg !1001
  %211 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1002
  %212 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %211, i32 0, i32 1, !dbg !1003
  store double %210, double* %212, align 8, !dbg !1004
  %213 = load double, double* %11, align 8, !dbg !1005
  %214 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %15, i32 0, i32 0, !dbg !1006
  %215 = load double, double* %214, align 8, !dbg !1006
  %216 = call double @fabs(double %215) #1, !dbg !1007
  %217 = fmul double %213, %216, !dbg !1008
  %218 = load double, double* %14, align 8, !dbg !1009
  %219 = fmul double %217, %218, !dbg !1010
  %220 = load double, double* %18, align 8, !dbg !1011
  %221 = fdiv double %219, %220, !dbg !1012
  %222 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1013
  %223 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %222, i32 0, i32 1, !dbg !1014
  %224 = load double, double* %223, align 8, !dbg !1015
  %225 = fadd double %224, %221, !dbg !1015
  store double %225, double* %223, align 8, !dbg !1015
  %226 = load double, double* %11, align 8, !dbg !1016
  %227 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %15, i32 0, i32 0, !dbg !1017
  %228 = load double, double* %227, align 8, !dbg !1017
  %229 = load double, double* %12, align 8, !dbg !1018
  %230 = fmul double %228, %229, !dbg !1019
  %231 = call double @fabs(double %230) #1, !dbg !1020
  %232 = fmul double %226, %231, !dbg !1021
  %233 = load double, double* %18, align 8, !dbg !1022
  %234 = load double, double* %20, align 8, !dbg !1023
  %235 = fmul double %233, %234, !dbg !1024
  %236 = fdiv double %232, %235, !dbg !1025
  %237 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1026
  %238 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %237, i32 0, i32 1, !dbg !1027
  %239 = load double, double* %238, align 8, !dbg !1028
  %240 = fadd double %239, %236, !dbg !1028
  store double %240, double* %238, align 8, !dbg !1028
  %241 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1029
  %242 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %241, i32 0, i32 0, !dbg !1030
  %243 = load double, double* %242, align 8, !dbg !1030
  %244 = call double @fabs(double %243) #1, !dbg !1031
  %245 = fmul double 0x3CE0000000000000, %244, !dbg !1032
  %246 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1033
  %247 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %246, i32 0, i32 1, !dbg !1034
  %248 = load double, double* %247, align 8, !dbg !1035
  %249 = fadd double %248, %245, !dbg !1035
  store double %249, double* %247, align 8, !dbg !1035
  %250 = load i32, i32* %21, align 4, !dbg !1036
  %251 = icmp ne i32 %250, 0, !dbg !1036
  br i1 %251, label %252, label %254, !dbg !1036

; <label>:252:                                    ; preds = %162
  %253 = load i32, i32* %21, align 4, !dbg !1037
  br label %262, !dbg !1037

; <label>:254:                                    ; preds = %162
  %255 = load i32, i32* %22, align 4, !dbg !1039
  %256 = icmp ne i32 %255, 0, !dbg !1039
  br i1 %256, label %257, label %259, !dbg !1039

; <label>:257:                                    ; preds = %254
  %258 = load i32, i32* %22, align 4, !dbg !1041
  br label %260, !dbg !1041

; <label>:259:                                    ; preds = %254
  br label %260, !dbg !1043

; <label>:260:                                    ; preds = %259, %257
  %261 = phi i32 [ %258, %257 ], [ 0, %259 ], !dbg !1045
  br label %262, !dbg !1045

; <label>:262:                                    ; preds = %260, %252
  %263 = phi i32 [ %253, %252 ], [ %261, %260 ], !dbg !1047
  store i32 %263, i32* %4, align 4, !dbg !1049
  br label %264, !dbg !1049

; <label>:264:                                    ; preds = %46, %262, %48
  %265 = load i32, i32* %4, align 4, !dbg !1050
  ret i32 %265, !dbg !1050
}

declare i32 @gsl_sf_airy_Bi_e(double, i32, %struct.gsl_sf_result_struct*) #4

declare i32 @gsl_sf_airy_Bi_deriv_e(double, i32, %struct.gsl_sf_result_struct*) #4

; Function Attrs: nounwind uwtable
define internal double @olver_A1(double, double, double*) #0 !dbg !1051 {
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double*, align 8
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
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  %22 = alloca double, align 8
  %23 = alloca double, align 8
  %24 = alloca double, align 8
  %25 = alloca double, align 8
  %26 = alloca double, align 8
  %27 = alloca double, align 8
  %28 = alloca double, align 8
  %29 = alloca double, align 8
  %30 = alloca double, align 8
  store double %0, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !1054, metadata !100), !dbg !1055
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !1056, metadata !100), !dbg !1057
  store double* %2, double** %7, align 8
  call void @llvm.dbg.declare(metadata double** %7, metadata !1058, metadata !100), !dbg !1059
  %31 = load double, double* %5, align 8, !dbg !1060
  %32 = fcmp olt double %31, 9.800000e-01, !dbg !1062
  br i1 %32, label %33, label %91, !dbg !1063

; <label>:33:                                     ; preds = %3
  call void @llvm.dbg.declare(metadata double* %8, metadata !1064, metadata !100), !dbg !1066
  %34 = load double, double* %5, align 8, !dbg !1067
  %35 = load double, double* %5, align 8, !dbg !1068
  %36 = fmul double %34, %35, !dbg !1069
  %37 = fsub double 1.000000e+00, %36, !dbg !1070
  %38 = call double @sqrt(double %37) #6, !dbg !1071
  %39 = fdiv double 1.000000e+00, %38, !dbg !1072
  store double %39, double* %8, align 8, !dbg !1066
  call void @llvm.dbg.declare(metadata double* %9, metadata !1073, metadata !100), !dbg !1074
  %40 = load double, double* %6, align 8, !dbg !1075
  %41 = call double @sqrt(double %40) #6, !dbg !1076
  store double %41, double* %9, align 8, !dbg !1074
  call void @llvm.dbg.declare(metadata double* %10, metadata !1077, metadata !100), !dbg !1078
  %42 = load double, double* %8, align 8, !dbg !1079
  %43 = load double, double* %8, align 8, !dbg !1080
  %44 = fmul double %42, %43, !dbg !1081
  store double %44, double* %10, align 8, !dbg !1078
  call void @llvm.dbg.declare(metadata double* %11, metadata !1082, metadata !100), !dbg !1083
  %45 = load double, double* %10, align 8, !dbg !1084
  %46 = load double, double* %10, align 8, !dbg !1085
  %47 = fmul double 4.620000e+02, %46, !dbg !1086
  %48 = fsub double 8.100000e+01, %47, !dbg !1087
  %49 = load double, double* %10, align 8, !dbg !1088
  %50 = fmul double 3.850000e+02, %49, !dbg !1089
  %51 = load double, double* %10, align 8, !dbg !1090
  %52 = fmul double %50, %51, !dbg !1091
  %53 = fadd double %48, %52, !dbg !1092
  %54 = fmul double %45, %53, !dbg !1093
  %55 = fdiv double %54, 1.152000e+03, !dbg !1094
  store double %55, double* %11, align 8, !dbg !1083
  call void @llvm.dbg.declare(metadata double* %12, metadata !1095, metadata !100), !dbg !1096
  %56 = load double, double* %6, align 8, !dbg !1097
  %57 = fmul double 4.608000e+03, %56, !dbg !1098
  %58 = load double, double* %6, align 8, !dbg !1099
  %59 = fmul double %57, %58, !dbg !1100
  %60 = load double, double* %6, align 8, !dbg !1101
  %61 = fmul double %59, %60, !dbg !1102
  %62 = fdiv double -4.550000e+02, %61, !dbg !1103
  store double %62, double* %12, align 8, !dbg !1096
  call void @llvm.dbg.declare(metadata double* %13, metadata !1104, metadata !100), !dbg !1105
  %63 = load double, double* %8, align 8, !dbg !1106
  %64 = fmul double 7.000000e+00, %63, !dbg !1107
  %65 = load double, double* %10, align 8, !dbg !1108
  %66 = fmul double 5.000000e+00, %65, !dbg !1109
  %67 = fadd double -3.000000e+00, %66, !dbg !1110
  %68 = fmul double %64, %67, !dbg !1111
  %69 = load double, double* %9, align 8, !dbg !1112
  %70 = fmul double 1.152000e+03, %69, !dbg !1113
  %71 = load double, double* %9, align 8, !dbg !1114
  %72 = fmul double %70, %71, !dbg !1115
  %73 = load double, double* %9, align 8, !dbg !1116
  %74 = fmul double %72, %73, !dbg !1117
  %75 = fdiv double %68, %74, !dbg !1118
  store double %75, double* %13, align 8, !dbg !1105
  %76 = load double, double* %11, align 8, !dbg !1119
  %77 = call double @fabs(double %76) #1, !dbg !1120
  %78 = load double, double* %12, align 8, !dbg !1121
  %79 = call double @fabs(double %78) #1, !dbg !1122
  %80 = fadd double %77, %79, !dbg !1124
  %81 = load double, double* %13, align 8, !dbg !1125
  %82 = call double @fabs(double %81) #1, !dbg !1126
  %83 = fadd double %80, %82, !dbg !1128
  %84 = fmul double 0x3CC0000000000000, %83, !dbg !1129
  %85 = load double*, double** %7, align 8, !dbg !1130
  store double %84, double* %85, align 8, !dbg !1131
  %86 = load double, double* %11, align 8, !dbg !1132
  %87 = load double, double* %12, align 8, !dbg !1133
  %88 = fadd double %86, %87, !dbg !1134
  %89 = load double, double* %13, align 8, !dbg !1135
  %90 = fadd double %88, %89, !dbg !1136
  store double %90, double* %4, align 8, !dbg !1137
  br label %188, !dbg !1137

; <label>:91:                                     ; preds = %3
  %92 = load double, double* %5, align 8, !dbg !1138
  %93 = fcmp olt double %92, 1.020000e+00, !dbg !1140
  br i1 %93, label %94, label %126, !dbg !1141

; <label>:94:                                     ; preds = %91
  call void @llvm.dbg.declare(metadata double* %14, metadata !1142, metadata !100), !dbg !1144
  %95 = load double, double* %5, align 8, !dbg !1145
  %96 = fsub double 1.000000e+00, %95, !dbg !1146
  store double %96, double* %14, align 8, !dbg !1144
  call void @llvm.dbg.declare(metadata double* %15, metadata !1147, metadata !100), !dbg !1148
  store double 0xBF723456789ABCDF, double* %15, align 8, !dbg !1148
  call void @llvm.dbg.declare(metadata double* %16, metadata !1149, metadata !100), !dbg !1150
  store double 0xBF5E36F342852587, double* %16, align 8, !dbg !1150
  call void @llvm.dbg.declare(metadata double* %17, metadata !1151, metadata !100), !dbg !1152
  store double 0x3F429DBE0F43D10D, double* %17, align 8, !dbg !1152
  call void @llvm.dbg.declare(metadata double* %18, metadata !1153, metadata !100), !dbg !1154
  store double 0x3F5B8C3695E93FA3, double* %18, align 8, !dbg !1154
  call void @llvm.dbg.declare(metadata double* %19, metadata !1155, metadata !100), !dbg !1156
  store double 0x3F5E989CE25FD272, double* %19, align 8, !dbg !1156
  call void @llvm.dbg.declare(metadata double* %20, metadata !1157, metadata !100), !dbg !1158
  store double 0x3F5A6EACD22FB460, double* %20, align 8, !dbg !1158
  call void @llvm.dbg.declare(metadata double* %21, metadata !1159, metadata !100), !dbg !1160
  store double 0x3F542E6E51A97463, double* %21, align 8, !dbg !1160
  call void @llvm.dbg.declare(metadata double* %22, metadata !1161, metadata !100), !dbg !1162
  store double 0x3F4C9E2AA34E2AD9, double* %22, align 8, !dbg !1162
  call void @llvm.dbg.declare(metadata double* %23, metadata !1163, metadata !100), !dbg !1164
  store double 0x3F4355B17DA12BB7, double* %23, align 8, !dbg !1164
  call void @llvm.dbg.declare(metadata double* %24, metadata !1165, metadata !100), !dbg !1166
  %97 = load double, double* %14, align 8, !dbg !1167
  %98 = load double, double* %14, align 8, !dbg !1168
  %99 = load double, double* %14, align 8, !dbg !1169
  %100 = load double, double* %14, align 8, !dbg !1170
  %101 = load double, double* %14, align 8, !dbg !1171
  %102 = load double, double* %14, align 8, !dbg !1172
  %103 = load double, double* %14, align 8, !dbg !1173
  %104 = load double, double* %14, align 8, !dbg !1174
  %105 = fmul double %104, 0x3F4355B17DA12BB7, !dbg !1175
  %106 = fadd double 0x3F4C9E2AA34E2AD9, %105, !dbg !1176
  %107 = fmul double %103, %106, !dbg !1177
  %108 = fadd double 0x3F542E6E51A97463, %107, !dbg !1178
  %109 = fmul double %102, %108, !dbg !1179
  %110 = fadd double 0x3F5A6EACD22FB460, %109, !dbg !1180
  %111 = fmul double %101, %110, !dbg !1181
  %112 = fadd double 0x3F5E989CE25FD272, %111, !dbg !1182
  %113 = fmul double %100, %112, !dbg !1183
  %114 = fadd double 0x3F5B8C3695E93FA3, %113, !dbg !1184
  %115 = fmul double %99, %114, !dbg !1185
  %116 = fadd double 0x3F429DBE0F43D10D, %115, !dbg !1186
  %117 = fmul double %98, %116, !dbg !1187
  %118 = fadd double 0xBF5E36F342852587, %117, !dbg !1188
  %119 = fmul double %97, %118, !dbg !1189
  %120 = fadd double 0xBF723456789ABCDF, %119, !dbg !1190
  store double %120, double* %24, align 8, !dbg !1166
  %121 = load double, double* %24, align 8, !dbg !1191
  %122 = call double @fabs(double %121) #1, !dbg !1192
  %123 = fmul double 0x3CC0000000000000, %122, !dbg !1193
  %124 = load double*, double** %7, align 8, !dbg !1194
  store double %123, double* %124, align 8, !dbg !1195
  %125 = load double, double* %24, align 8, !dbg !1196
  store double %125, double* %4, align 8, !dbg !1197
  br label %188, !dbg !1197

; <label>:126:                                    ; preds = %91
  call void @llvm.dbg.declare(metadata double* %25, metadata !1198, metadata !100), !dbg !1200
  %127 = load double, double* %5, align 8, !dbg !1201
  %128 = load double, double* %5, align 8, !dbg !1202
  %129 = load double, double* %5, align 8, !dbg !1203
  %130 = fmul double %128, %129, !dbg !1204
  %131 = fdiv double 1.000000e+00, %130, !dbg !1205
  %132 = fsub double 1.000000e+00, %131, !dbg !1206
  %133 = call double @sqrt(double %132) #6, !dbg !1207
  %134 = fmul double %127, %133, !dbg !1208
  %135 = fdiv double 1.000000e+00, %134, !dbg !1209
  store double %135, double* %25, align 8, !dbg !1200
  call void @llvm.dbg.declare(metadata double* %26, metadata !1210, metadata !100), !dbg !1211
  %136 = load double, double* %6, align 8, !dbg !1212
  %137 = call double @sqrt(double %136) #6, !dbg !1213
  store double %137, double* %26, align 8, !dbg !1211
  call void @llvm.dbg.declare(metadata double* %27, metadata !1214, metadata !100), !dbg !1215
  %138 = load double, double* %25, align 8, !dbg !1216
  %139 = load double, double* %25, align 8, !dbg !1217
  %140 = fmul double %138, %139, !dbg !1218
  store double %140, double* %27, align 8, !dbg !1215
  call void @llvm.dbg.declare(metadata double* %28, metadata !1219, metadata !100), !dbg !1220
  %141 = load double, double* %27, align 8, !dbg !1221
  %142 = fsub double -0.000000e+00, %141, !dbg !1222
  %143 = load double, double* %27, align 8, !dbg !1223
  %144 = fmul double 4.620000e+02, %143, !dbg !1224
  %145 = fadd double 8.100000e+01, %144, !dbg !1225
  %146 = load double, double* %27, align 8, !dbg !1226
  %147 = fmul double 3.850000e+02, %146, !dbg !1227
  %148 = load double, double* %27, align 8, !dbg !1228
  %149 = fmul double %147, %148, !dbg !1229
  %150 = fadd double %145, %149, !dbg !1230
  %151 = fmul double %142, %150, !dbg !1231
  %152 = fdiv double %151, 1.152000e+03, !dbg !1232
  store double %152, double* %28, align 8, !dbg !1220
  call void @llvm.dbg.declare(metadata double* %29, metadata !1233, metadata !100), !dbg !1234
  %153 = load double, double* %6, align 8, !dbg !1235
  %154 = fmul double 4.608000e+03, %153, !dbg !1236
  %155 = load double, double* %6, align 8, !dbg !1237
  %156 = fmul double %154, %155, !dbg !1238
  %157 = load double, double* %6, align 8, !dbg !1239
  %158 = fmul double %156, %157, !dbg !1240
  %159 = fdiv double 4.550000e+02, %158, !dbg !1241
  store double %159, double* %29, align 8, !dbg !1234
  call void @llvm.dbg.declare(metadata double* %30, metadata !1242, metadata !100), !dbg !1243
  %160 = load double, double* %25, align 8, !dbg !1244
  %161 = fmul double -7.000000e+00, %160, !dbg !1245
  %162 = load double, double* %27, align 8, !dbg !1246
  %163 = fmul double 5.000000e+00, %162, !dbg !1247
  %164 = fadd double 3.000000e+00, %163, !dbg !1248
  %165 = fmul double %161, %164, !dbg !1249
  %166 = load double, double* %26, align 8, !dbg !1250
  %167 = fmul double 1.152000e+03, %166, !dbg !1251
  %168 = load double, double* %26, align 8, !dbg !1252
  %169 = fmul double %167, %168, !dbg !1253
  %170 = load double, double* %26, align 8, !dbg !1254
  %171 = fmul double %169, %170, !dbg !1255
  %172 = fdiv double %165, %171, !dbg !1256
  store double %172, double* %30, align 8, !dbg !1243
  %173 = load double, double* %28, align 8, !dbg !1257
  %174 = call double @fabs(double %173) #1, !dbg !1258
  %175 = load double, double* %29, align 8, !dbg !1259
  %176 = call double @fabs(double %175) #1, !dbg !1260
  %177 = fadd double %174, %176, !dbg !1262
  %178 = load double, double* %30, align 8, !dbg !1263
  %179 = call double @fabs(double %178) #1, !dbg !1264
  %180 = fadd double %177, %179, !dbg !1266
  %181 = fmul double 0x3CC0000000000000, %180, !dbg !1267
  %182 = load double*, double** %7, align 8, !dbg !1268
  store double %181, double* %182, align 8, !dbg !1269
  %183 = load double, double* %28, align 8, !dbg !1270
  %184 = load double, double* %29, align 8, !dbg !1271
  %185 = fadd double %183, %184, !dbg !1272
  %186 = load double, double* %30, align 8, !dbg !1273
  %187 = fadd double %185, %186, !dbg !1274
  store double %187, double* %4, align 8, !dbg !1275
  br label %188, !dbg !1275

; <label>:188:                                    ; preds = %126, %94, %33
  %189 = load double, double* %4, align 8, !dbg !1276
  ret double %189, !dbg !1276
}

; Function Attrs: nounwind uwtable
define internal double @olver_A2(double, double) #0 !dbg !1277 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
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
  %27 = alloca double, align 8
  %28 = alloca double, align 8
  %29 = alloca double, align 8
  %30 = alloca double, align 8
  %31 = alloca double, align 8
  %32 = alloca double, align 8
  %33 = alloca double, align 8
  %34 = alloca double, align 8
  %35 = alloca double, align 8
  %36 = alloca double, align 8
  %37 = alloca double, align 8
  %38 = alloca double, align 8
  %39 = alloca double, align 8
  %40 = alloca double, align 8
  %41 = alloca double, align 8
  %42 = alloca double, align 8
  %43 = alloca double, align 8
  %44 = alloca double, align 8
  %45 = alloca double, align 8
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !1280, metadata !100), !dbg !1281
  store double %1, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !1282, metadata !100), !dbg !1283
  %46 = load double, double* %4, align 8, !dbg !1284
  %47 = fcmp olt double %46, 8.800000e-01, !dbg !1286
  br i1 %47, label %48, label %146, !dbg !1287

; <label>:48:                                     ; preds = %2
  call void @llvm.dbg.declare(metadata double* %6, metadata !1288, metadata !100), !dbg !1290
  %49 = load double, double* %4, align 8, !dbg !1291
  %50 = load double, double* %4, align 8, !dbg !1292
  %51 = fmul double %49, %50, !dbg !1293
  %52 = fsub double 1.000000e+00, %51, !dbg !1294
  %53 = call double @sqrt(double %52) #6, !dbg !1295
  %54 = fdiv double 1.000000e+00, %53, !dbg !1296
  store double %54, double* %6, align 8, !dbg !1290
  call void @llvm.dbg.declare(metadata double* %7, metadata !1297, metadata !100), !dbg !1298
  %55 = load double, double* %6, align 8, !dbg !1299
  %56 = load double, double* %6, align 8, !dbg !1300
  %57 = fmul double %55, %56, !dbg !1301
  store double %57, double* %7, align 8, !dbg !1298
  call void @llvm.dbg.declare(metadata double* %8, metadata !1302, metadata !100), !dbg !1303
  %58 = load double, double* %7, align 8, !dbg !1304
  %59 = load double, double* %7, align 8, !dbg !1305
  %60 = fmul double %58, %59, !dbg !1306
  store double %60, double* %8, align 8, !dbg !1303
  call void @llvm.dbg.declare(metadata double* %9, metadata !1307, metadata !100), !dbg !1308
  %61 = load double, double* %8, align 8, !dbg !1309
  %62 = load double, double* %7, align 8, !dbg !1310
  %63 = fmul double %61, %62, !dbg !1311
  store double %63, double* %9, align 8, !dbg !1308
  call void @llvm.dbg.declare(metadata double* %10, metadata !1312, metadata !100), !dbg !1313
  %64 = load double, double* %8, align 8, !dbg !1314
  %65 = load double, double* %8, align 8, !dbg !1315
  %66 = fmul double %64, %65, !dbg !1316
  store double %66, double* %10, align 8, !dbg !1313
  call void @llvm.dbg.declare(metadata double* %11, metadata !1317, metadata !100), !dbg !1318
  %67 = load double, double* %5, align 8, !dbg !1319
  %68 = call double @sqrt(double %67) #6, !dbg !1320
  store double %68, double* %11, align 8, !dbg !1318
  call void @llvm.dbg.declare(metadata double* %12, metadata !1321, metadata !100), !dbg !1322
  %69 = load double, double* %5, align 8, !dbg !1323
  %70 = load double, double* %5, align 8, !dbg !1324
  %71 = fmul double %69, %70, !dbg !1325
  %72 = load double, double* %5, align 8, !dbg !1326
  %73 = fmul double %71, %72, !dbg !1327
  store double %73, double* %12, align 8, !dbg !1322
  call void @llvm.dbg.declare(metadata double* %13, metadata !1328, metadata !100), !dbg !1329
  %74 = load double, double* %11, align 8, !dbg !1330
  %75 = load double, double* %11, align 8, !dbg !1331
  %76 = fmul double %74, %75, !dbg !1332
  %77 = load double, double* %11, align 8, !dbg !1333
  %78 = fmul double %76, %77, !dbg !1334
  store double %78, double* %13, align 8, !dbg !1329
  call void @llvm.dbg.declare(metadata double* %14, metadata !1335, metadata !100), !dbg !1336
  %79 = load double, double* %12, align 8, !dbg !1337
  %80 = load double, double* %13, align 8, !dbg !1338
  %81 = fmul double %79, %80, !dbg !1339
  store double %81, double* %14, align 8, !dbg !1336
  call void @llvm.dbg.declare(metadata double* %15, metadata !1340, metadata !100), !dbg !1341
  %82 = load double, double* %8, align 8, !dbg !1342
  %83 = load double, double* %7, align 8, !dbg !1343
  %84 = fmul double 0x419670BB30000000, %83, !dbg !1344
  %85 = fsub double 4.465125e+06, %84, !dbg !1345
  %86 = load double, double* %8, align 8, !dbg !1346
  %87 = fmul double 0x41B4DB647E000000, %86, !dbg !1347
  %88 = fadd double %85, %87, !dbg !1348
  %89 = load double, double* %9, align 8, !dbg !1349
  %90 = fmul double 0x41BA98410C000000, %89, !dbg !1350
  %91 = fsub double %88, %90, !dbg !1351
  %92 = load double, double* %10, align 8, !dbg !1352
  %93 = fmul double 0x41A6298B8A000000, %92, !dbg !1353
  %94 = fadd double %91, %93, !dbg !1354
  %95 = fmul double %82, %94, !dbg !1355
  %96 = fdiv double %95, 3.981312e+07, !dbg !1356
  store double %96, double* %15, align 8, !dbg !1341
  call void @llvm.dbg.declare(metadata double* %16, metadata !1357, metadata !100), !dbg !1358
  %97 = load double, double* %12, align 8, !dbg !1359
  %98 = fmul double 0x419E600000000000, %97, !dbg !1360
  %99 = load double, double* %12, align 8, !dbg !1361
  %100 = fmul double %98, %99, !dbg !1362
  %101 = fdiv double 0xC183458478000000, %100, !dbg !1363
  store double %101, double* %16, align 8, !dbg !1358
  call void @llvm.dbg.declare(metadata double* %17, metadata !1364, metadata !100), !dbg !1365
  %102 = load double, double* %6, align 8, !dbg !1366
  %103 = fmul double 0xBF7875663075FDE5, %102, !dbg !1367
  %104 = load double, double* %7, align 8, !dbg !1368
  %105 = fmul double 5.000000e+00, %104, !dbg !1369
  %106 = fsub double 3.000000e+00, %105, !dbg !1370
  %107 = fmul double %103, %106, !dbg !1371
  %108 = load double, double* %14, align 8, !dbg !1372
  %109 = fdiv double %107, %108, !dbg !1373
  store double %109, double* %17, align 8, !dbg !1365
  call void @llvm.dbg.declare(metadata double* %18, metadata !1374, metadata !100), !dbg !1375
  %110 = load double, double* %7, align 8, !dbg !1376
  %111 = fmul double 0xBF16781948B0FCD7, %110, !dbg !1377
  %112 = load double, double* %7, align 8, !dbg !1378
  %113 = fmul double 4.620000e+02, %112, !dbg !1379
  %114 = fsub double 8.100000e+01, %113, !dbg !1380
  %115 = load double, double* %8, align 8, !dbg !1381
  %116 = fmul double 3.850000e+02, %115, !dbg !1382
  %117 = fadd double %114, %116, !dbg !1383
  %118 = fmul double %111, %117, !dbg !1384
  %119 = load double, double* %12, align 8, !dbg !1385
  %120 = fdiv double %118, %119, !dbg !1386
  store double %120, double* %18, align 8, !dbg !1375
  call void @llvm.dbg.declare(metadata double* %19, metadata !1387, metadata !100), !dbg !1388
  %121 = load double, double* %6, align 8, !dbg !1389
  %122 = fmul double 0xBE97992DB8C89605, %121, !dbg !1390
  %123 = load double, double* %7, align 8, !dbg !1391
  %124 = fmul double %122, %123, !dbg !1392
  %125 = load double, double* %7, align 8, !dbg !1393
  %126 = fmul double 3.696030e+05, %125, !dbg !1394
  %127 = fsub double 3.037500e+04, %126, !dbg !1395
  %128 = load double, double* %8, align 8, !dbg !1396
  %129 = fmul double 7.657650e+05, %128, !dbg !1397
  %130 = fadd double %127, %129, !dbg !1398
  %131 = load double, double* %9, align 8, !dbg !1399
  %132 = fmul double 4.254250e+05, %131, !dbg !1400
  %133 = fsub double %130, %132, !dbg !1401
  %134 = fmul double %124, %133, !dbg !1402
  %135 = load double, double* %13, align 8, !dbg !1403
  %136 = fdiv double %134, %135, !dbg !1404
  store double %136, double* %19, align 8, !dbg !1388
  %137 = load double, double* %15, align 8, !dbg !1405
  %138 = load double, double* %16, align 8, !dbg !1406
  %139 = fadd double %137, %138, !dbg !1407
  %140 = load double, double* %17, align 8, !dbg !1408
  %141 = fadd double %139, %140, !dbg !1409
  %142 = load double, double* %18, align 8, !dbg !1410
  %143 = fadd double %141, %142, !dbg !1411
  %144 = load double, double* %19, align 8, !dbg !1412
  %145 = fadd double %143, %144, !dbg !1413
  store double %145, double* %3, align 8, !dbg !1414
  br label %283, !dbg !1414

; <label>:146:                                    ; preds = %2
  %147 = load double, double* %4, align 8, !dbg !1415
  %148 = fcmp olt double %147, 1.120000e+00, !dbg !1417
  br i1 %148, label %149, label %182, !dbg !1418

; <label>:149:                                    ; preds = %146
  call void @llvm.dbg.declare(metadata double* %20, metadata !1419, metadata !100), !dbg !1421
  %150 = load double, double* %4, align 8, !dbg !1422
  %151 = fsub double 1.000000e+00, %150, !dbg !1423
  store double %151, double* %20, align 8, !dbg !1421
  call void @llvm.dbg.declare(metadata double* %21, metadata !1424, metadata !100), !dbg !1425
  store double 0x3F46BB79BB291192, double* %21, align 8, !dbg !1425
  call void @llvm.dbg.declare(metadata double* %22, metadata !1426, metadata !100), !dbg !1427
  store double 0x3F3E70BD669135C0, double* %22, align 8, !dbg !1427
  call void @llvm.dbg.declare(metadata double* %23, metadata !1428, metadata !100), !dbg !1429
  store double 0xBF32F13942C9A55E, double* %23, align 8, !dbg !1429
  call void @llvm.dbg.declare(metadata double* %24, metadata !1430, metadata !100), !dbg !1431
  store double 0xBF4CAA0F69B955B4, double* %24, align 8, !dbg !1431
  call void @llvm.dbg.declare(metadata double* %25, metadata !1432, metadata !100), !dbg !1433
  store double 0xBF50DEF18A38232F, double* %25, align 8, !dbg !1433
  call void @llvm.dbg.declare(metadata double* %26, metadata !1434, metadata !100), !dbg !1435
  store double 0xBF4B6C116E67AB16, double* %26, align 8, !dbg !1435
  call void @llvm.dbg.declare(metadata double* %27, metadata !1436, metadata !100), !dbg !1437
  store double 0xBF4005482630947A, double* %27, align 8, !dbg !1437
  call void @llvm.dbg.declare(metadata double* %28, metadata !1438, metadata !100), !dbg !1439
  store double 0xBF22E7C83B06ECB1, double* %28, align 8, !dbg !1439
  call void @llvm.dbg.declare(metadata double* %29, metadata !1440, metadata !100), !dbg !1441
  store double 0x3F1DFAD323EC7D67, double* %29, align 8, !dbg !1441
  call void @llvm.dbg.declare(metadata double* %30, metadata !1442, metadata !100), !dbg !1443
  store double 0x3F317C46D4926C1D, double* %30, align 8, !dbg !1443
  call void @llvm.dbg.declare(metadata double* %31, metadata !1444, metadata !100), !dbg !1445
  store double 0xBF88869EC2BCE964, double* %31, align 8, !dbg !1445
  %152 = load double, double* %20, align 8, !dbg !1446
  %153 = load double, double* %20, align 8, !dbg !1447
  %154 = load double, double* %20, align 8, !dbg !1448
  %155 = load double, double* %20, align 8, !dbg !1449
  %156 = load double, double* %20, align 8, !dbg !1450
  %157 = load double, double* %20, align 8, !dbg !1451
  %158 = load double, double* %20, align 8, !dbg !1452
  %159 = load double, double* %20, align 8, !dbg !1453
  %160 = load double, double* %20, align 8, !dbg !1454
  %161 = load double, double* %20, align 8, !dbg !1455
  %162 = fmul double %161, 0xBF88869EC2BCE964, !dbg !1456
  %163 = fadd double 0x3F317C46D4926C1D, %162, !dbg !1457
  %164 = fmul double %160, %163, !dbg !1458
  %165 = fadd double 0x3F1DFAD323EC7D67, %164, !dbg !1459
  %166 = fmul double %159, %165, !dbg !1460
  %167 = fadd double 0xBF22E7C83B06ECB1, %166, !dbg !1461
  %168 = fmul double %158, %167, !dbg !1462
  %169 = fadd double 0xBF4005482630947A, %168, !dbg !1463
  %170 = fmul double %157, %169, !dbg !1464
  %171 = fadd double 0xBF4B6C116E67AB16, %170, !dbg !1465
  %172 = fmul double %156, %171, !dbg !1466
  %173 = fadd double 0xBF50DEF18A38232F, %172, !dbg !1467
  %174 = fmul double %155, %173, !dbg !1468
  %175 = fadd double 0xBF4CAA0F69B955B4, %174, !dbg !1469
  %176 = fmul double %154, %175, !dbg !1470
  %177 = fadd double 0xBF32F13942C9A55E, %176, !dbg !1471
  %178 = fmul double %153, %177, !dbg !1472
  %179 = fadd double 0x3F3E70BD669135C0, %178, !dbg !1473
  %180 = fmul double %152, %179, !dbg !1474
  %181 = fadd double 0x3F46BB79BB291192, %180, !dbg !1475
  store double %181, double* %3, align 8, !dbg !1476
  br label %283, !dbg !1476

; <label>:182:                                    ; preds = %146
  call void @llvm.dbg.declare(metadata double* %32, metadata !1477, metadata !100), !dbg !1479
  %183 = load double, double* %4, align 8, !dbg !1480
  %184 = load double, double* %4, align 8, !dbg !1481
  %185 = load double, double* %4, align 8, !dbg !1482
  %186 = fmul double %184, %185, !dbg !1483
  %187 = fdiv double 1.000000e+00, %186, !dbg !1484
  %188 = fsub double 1.000000e+00, %187, !dbg !1485
  %189 = call double @sqrt(double %188) #6, !dbg !1486
  %190 = fmul double %183, %189, !dbg !1487
  %191 = fdiv double 1.000000e+00, %190, !dbg !1488
  store double %191, double* %32, align 8, !dbg !1479
  call void @llvm.dbg.declare(metadata double* %33, metadata !1489, metadata !100), !dbg !1490
  %192 = load double, double* %32, align 8, !dbg !1491
  %193 = load double, double* %32, align 8, !dbg !1492
  %194 = fmul double %192, %193, !dbg !1493
  store double %194, double* %33, align 8, !dbg !1490
  call void @llvm.dbg.declare(metadata double* %34, metadata !1494, metadata !100), !dbg !1495
  %195 = load double, double* %33, align 8, !dbg !1496
  %196 = load double, double* %33, align 8, !dbg !1497
  %197 = fmul double %195, %196, !dbg !1498
  store double %197, double* %34, align 8, !dbg !1495
  call void @llvm.dbg.declare(metadata double* %35, metadata !1499, metadata !100), !dbg !1500
  %198 = load double, double* %34, align 8, !dbg !1501
  %199 = load double, double* %33, align 8, !dbg !1502
  %200 = fmul double %198, %199, !dbg !1503
  store double %200, double* %35, align 8, !dbg !1500
  call void @llvm.dbg.declare(metadata double* %36, metadata !1504, metadata !100), !dbg !1505
  %201 = load double, double* %34, align 8, !dbg !1506
  %202 = load double, double* %34, align 8, !dbg !1507
  %203 = fmul double %201, %202, !dbg !1508
  store double %203, double* %36, align 8, !dbg !1505
  call void @llvm.dbg.declare(metadata double* %37, metadata !1509, metadata !100), !dbg !1510
  %204 = load double, double* %5, align 8, !dbg !1511
  %205 = call double @sqrt(double %204) #6, !dbg !1512
  store double %205, double* %37, align 8, !dbg !1510
  call void @llvm.dbg.declare(metadata double* %38, metadata !1513, metadata !100), !dbg !1514
  %206 = load double, double* %5, align 8, !dbg !1515
  %207 = load double, double* %5, align 8, !dbg !1516
  %208 = fmul double %206, %207, !dbg !1517
  %209 = load double, double* %5, align 8, !dbg !1518
  %210 = fmul double %208, %209, !dbg !1519
  store double %210, double* %38, align 8, !dbg !1514
  call void @llvm.dbg.declare(metadata double* %39, metadata !1520, metadata !100), !dbg !1521
  %211 = load double, double* %37, align 8, !dbg !1522
  %212 = load double, double* %37, align 8, !dbg !1523
  %213 = fmul double %211, %212, !dbg !1524
  %214 = load double, double* %37, align 8, !dbg !1525
  %215 = fmul double %213, %214, !dbg !1526
  store double %215, double* %39, align 8, !dbg !1521
  call void @llvm.dbg.declare(metadata double* %40, metadata !1527, metadata !100), !dbg !1528
  %216 = load double, double* %38, align 8, !dbg !1529
  %217 = load double, double* %39, align 8, !dbg !1530
  %218 = fmul double %216, %217, !dbg !1531
  store double %218, double* %40, align 8, !dbg !1528
  call void @llvm.dbg.declare(metadata double* %41, metadata !1532, metadata !100), !dbg !1533
  %219 = load double, double* %34, align 8, !dbg !1534
  %220 = load double, double* %33, align 8, !dbg !1535
  %221 = fmul double 0x419670BB30000000, %220, !dbg !1536
  %222 = fadd double 4.465125e+06, %221, !dbg !1537
  %223 = load double, double* %34, align 8, !dbg !1538
  %224 = fmul double 0x41B4DB647E000000, %223, !dbg !1539
  %225 = fadd double %222, %224, !dbg !1540
  %226 = load double, double* %35, align 8, !dbg !1541
  %227 = fmul double 0x41BA98410C000000, %226, !dbg !1542
  %228 = fadd double %225, %227, !dbg !1543
  %229 = load double, double* %36, align 8, !dbg !1544
  %230 = fmul double 0x41A6298B8A000000, %229, !dbg !1545
  %231 = fadd double %228, %230, !dbg !1546
  %232 = fmul double %219, %231, !dbg !1547
  %233 = fdiv double %232, 3.981312e+07, !dbg !1548
  store double %233, double* %41, align 8, !dbg !1533
  call void @llvm.dbg.declare(metadata double* %42, metadata !1549, metadata !100), !dbg !1550
  %234 = load double, double* %38, align 8, !dbg !1551
  %235 = fmul double 0x419E600000000000, %234, !dbg !1552
  %236 = load double, double* %38, align 8, !dbg !1553
  %237 = fmul double %235, %236, !dbg !1554
  %238 = fdiv double 0xC183458478000000, %237, !dbg !1555
  store double %238, double* %42, align 8, !dbg !1550
  call void @llvm.dbg.declare(metadata double* %43, metadata !1556, metadata !100), !dbg !1557
  %239 = load double, double* %32, align 8, !dbg !1558
  %240 = fmul double 0x3F7875663075FDE5, %239, !dbg !1559
  %241 = load double, double* %33, align 8, !dbg !1560
  %242 = fmul double 5.000000e+00, %241, !dbg !1561
  %243 = fadd double 3.000000e+00, %242, !dbg !1562
  %244 = fmul double %240, %243, !dbg !1563
  %245 = load double, double* %40, align 8, !dbg !1564
  %246 = fdiv double %244, %245, !dbg !1565
  store double %246, double* %43, align 8, !dbg !1557
  call void @llvm.dbg.declare(metadata double* %44, metadata !1566, metadata !100), !dbg !1567
  %247 = load double, double* %33, align 8, !dbg !1568
  %248 = fmul double 0xBF16781948B0FCD7, %247, !dbg !1569
  %249 = load double, double* %33, align 8, !dbg !1570
  %250 = fmul double 4.620000e+02, %249, !dbg !1571
  %251 = fadd double 8.100000e+01, %250, !dbg !1572
  %252 = load double, double* %34, align 8, !dbg !1573
  %253 = fmul double 3.850000e+02, %252, !dbg !1574
  %254 = fadd double %251, %253, !dbg !1575
  %255 = fmul double %248, %254, !dbg !1576
  %256 = load double, double* %38, align 8, !dbg !1577
  %257 = fdiv double %255, %256, !dbg !1578
  store double %257, double* %44, align 8, !dbg !1567
  call void @llvm.dbg.declare(metadata double* %45, metadata !1579, metadata !100), !dbg !1580
  %258 = load double, double* %32, align 8, !dbg !1581
  %259 = fmul double 0x3E97992DB8C89605, %258, !dbg !1582
  %260 = load double, double* %33, align 8, !dbg !1583
  %261 = fmul double %259, %260, !dbg !1584
  %262 = load double, double* %33, align 8, !dbg !1585
  %263 = fmul double 3.696030e+05, %262, !dbg !1586
  %264 = fadd double 3.037500e+04, %263, !dbg !1587
  %265 = load double, double* %34, align 8, !dbg !1588
  %266 = fmul double 7.657650e+05, %265, !dbg !1589
  %267 = fadd double %264, %266, !dbg !1590
  %268 = load double, double* %35, align 8, !dbg !1591
  %269 = fmul double 4.254250e+05, %268, !dbg !1592
  %270 = fadd double %267, %269, !dbg !1593
  %271 = fmul double %261, %270, !dbg !1594
  %272 = load double, double* %39, align 8, !dbg !1595
  %273 = fdiv double %271, %272, !dbg !1596
  store double %273, double* %45, align 8, !dbg !1580
  %274 = load double, double* %41, align 8, !dbg !1597
  %275 = load double, double* %42, align 8, !dbg !1598
  %276 = fadd double %274, %275, !dbg !1599
  %277 = load double, double* %43, align 8, !dbg !1600
  %278 = fadd double %276, %277, !dbg !1601
  %279 = load double, double* %44, align 8, !dbg !1602
  %280 = fadd double %278, %279, !dbg !1603
  %281 = load double, double* %45, align 8, !dbg !1604
  %282 = fadd double %280, %281, !dbg !1605
  store double %282, double* %3, align 8, !dbg !1606
  br label %283, !dbg !1606

; <label>:283:                                    ; preds = %182, %149, %48
  %284 = load double, double* %3, align 8, !dbg !1607
  ret double %284, !dbg !1607
}

; Function Attrs: nounwind uwtable
define internal double @olver_A3(double, double) #0 !dbg !1608 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca %struct.gsl_sf_result_struct, align 8
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
  %18 = alloca %struct.gsl_sf_result_struct, align 8
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !1609, metadata !100), !dbg !1610
  store double %1, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !1611, metadata !100), !dbg !1612
  %19 = load double, double* %4, align 8, !dbg !1613
  %20 = fcmp olt double %19, 9.000000e-01, !dbg !1615
  br i1 %20, label %21, label %30, !dbg !1616

; <label>:21:                                     ; preds = %2
  call void @llvm.dbg.declare(metadata double* %6, metadata !1617, metadata !100), !dbg !1619
  %22 = load double, double* %4, align 8, !dbg !1620
  %23 = fmul double 2.000000e+01, %22, !dbg !1621
  %24 = fdiv double %23, 9.000000e+00, !dbg !1622
  %25 = fsub double %24, 1.000000e+00, !dbg !1623
  store double %25, double* %6, align 8, !dbg !1619
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %7, metadata !1624, metadata !100), !dbg !1625
  %26 = load double, double* %6, align 8, !dbg !1626
  %27 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @A3_lt1_cs, double %26, %struct.gsl_sf_result_struct* %7), !dbg !1627
  %28 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %7, i32 0, i32 0, !dbg !1628
  %29 = load double, double* %28, align 8, !dbg !1628
  store double %29, double* %3, align 8, !dbg !1629
  br label %73, !dbg !1629

; <label>:30:                                     ; preds = %2
  %31 = load double, double* %4, align 8, !dbg !1630
  %32 = fcmp olt double %31, 1.100000e+00, !dbg !1632
  br i1 %32, label %33, label %54, !dbg !1633

; <label>:33:                                     ; preds = %30
  call void @llvm.dbg.declare(metadata double* %8, metadata !1634, metadata !100), !dbg !1636
  %34 = load double, double* %4, align 8, !dbg !1637
  %35 = fsub double 1.000000e+00, %34, !dbg !1638
  store double %35, double* %8, align 8, !dbg !1636
  call void @llvm.dbg.declare(metadata double* %9, metadata !1639, metadata !100), !dbg !1640
  store double 0xBF3736B0D550B439, double* %9, align 8, !dbg !1640
  call void @llvm.dbg.declare(metadata double* %10, metadata !1641, metadata !100), !dbg !1642
  store double 0xBF3477E70B082405, double* %10, align 8, !dbg !1642
  call void @llvm.dbg.declare(metadata double* %11, metadata !1643, metadata !100), !dbg !1644
  store double 0x3F32372F461980E5, double* %11, align 8, !dbg !1644
  call void @llvm.dbg.declare(metadata double* %12, metadata !1645, metadata !100), !dbg !1646
  store double 0x3F4E23DDFF7B6989, double* %12, align 8, !dbg !1646
  call void @llvm.dbg.declare(metadata double* %13, metadata !1647, metadata !100), !dbg !1648
  store double 0x3F52CD6288BCC7B8, double* %13, align 8, !dbg !1648
  call void @llvm.dbg.declare(metadata double* %14, metadata !1649, metadata !100), !dbg !1650
  store double 0x3F4C7BB53D325123, double* %14, align 8, !dbg !1650
  call void @llvm.dbg.declare(metadata double* %15, metadata !1651, metadata !100), !dbg !1652
  store double 0x3F32D5A4589D6AA7, double* %15, align 8, !dbg !1652
  %36 = load double, double* %8, align 8, !dbg !1653
  %37 = load double, double* %8, align 8, !dbg !1654
  %38 = load double, double* %8, align 8, !dbg !1655
  %39 = load double, double* %8, align 8, !dbg !1656
  %40 = load double, double* %8, align 8, !dbg !1657
  %41 = load double, double* %8, align 8, !dbg !1658
  %42 = fmul double %41, 0x3F32D5A4589D6AA7, !dbg !1659
  %43 = fadd double 0x3F4C7BB53D325123, %42, !dbg !1660
  %44 = fmul double %40, %43, !dbg !1661
  %45 = fadd double 0x3F52CD6288BCC7B8, %44, !dbg !1662
  %46 = fmul double %39, %45, !dbg !1663
  %47 = fadd double 0x3F4E23DDFF7B6989, %46, !dbg !1664
  %48 = fmul double %38, %47, !dbg !1665
  %49 = fadd double 0x3F32372F461980E5, %48, !dbg !1666
  %50 = fmul double %37, %49, !dbg !1667
  %51 = fadd double 0xBF3477E70B082405, %50, !dbg !1668
  %52 = fmul double %36, %51, !dbg !1669
  %53 = fadd double 0xBF3736B0D550B439, %52, !dbg !1670
  store double %53, double* %3, align 8, !dbg !1671
  br label %73, !dbg !1671

; <label>:54:                                     ; preds = %30
  call void @llvm.dbg.declare(metadata double* %16, metadata !1672, metadata !100), !dbg !1674
  %55 = load double, double* %4, align 8, !dbg !1675
  %56 = fmul double 5.000000e+00, %55, !dbg !1676
  %57 = fdiv double 1.100000e+01, %56, !dbg !1677
  %58 = fsub double %57, 1.000000e+00, !dbg !1678
  store double %58, double* %16, align 8, !dbg !1674
  call void @llvm.dbg.declare(metadata double* %17, metadata !1679, metadata !100), !dbg !1680
  %59 = load double, double* %4, align 8, !dbg !1681
  %60 = load double, double* %4, align 8, !dbg !1682
  %61 = fmul double %59, %60, !dbg !1683
  %62 = fdiv double 1.000000e+00, %61, !dbg !1684
  store double %62, double* %17, align 8, !dbg !1680
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %18, metadata !1685, metadata !100), !dbg !1686
  %63 = load double, double* %16, align 8, !dbg !1687
  %64 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @A3_gt1_cs, double %63, %struct.gsl_sf_result_struct* %18), !dbg !1688
  %65 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %18, i32 0, i32 0, !dbg !1689
  %66 = load double, double* %65, align 8, !dbg !1689
  %67 = load double, double* %17, align 8, !dbg !1690
  %68 = fmul double %66, %67, !dbg !1691
  %69 = load double, double* %17, align 8, !dbg !1692
  %70 = fmul double %68, %69, !dbg !1693
  %71 = load double, double* %17, align 8, !dbg !1694
  %72 = fmul double %70, %71, !dbg !1695
  store double %72, double* %3, align 8, !dbg !1696
  br label %73, !dbg !1696

; <label>:73:                                     ; preds = %54, %33, %21
  %74 = load double, double* %3, align 8, !dbg !1697
  ret double %74, !dbg !1697
}

; Function Attrs: nounwind uwtable
define internal double @olver_A4(double, double) #0 !dbg !1698 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca %struct.gsl_sf_result_struct, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca %struct.gsl_sf_result_struct, align 8
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !1699, metadata !100), !dbg !1700
  store double %1, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !1701, metadata !100), !dbg !1702
  %18 = load double, double* %4, align 8, !dbg !1703
  %19 = fcmp olt double %18, 8.000000e-01, !dbg !1705
  br i1 %19, label %20, label %29, !dbg !1706

; <label>:20:                                     ; preds = %2
  call void @llvm.dbg.declare(metadata double* %6, metadata !1707, metadata !100), !dbg !1709
  %21 = load double, double* %4, align 8, !dbg !1710
  %22 = fmul double 5.000000e+00, %21, !dbg !1711
  %23 = fdiv double %22, 2.000000e+00, !dbg !1712
  %24 = fsub double %23, 1.000000e+00, !dbg !1713
  store double %24, double* %6, align 8, !dbg !1709
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %7, metadata !1714, metadata !100), !dbg !1715
  %25 = load double, double* %6, align 8, !dbg !1716
  %26 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @A4_lt1_cs, double %25, %struct.gsl_sf_result_struct* %7), !dbg !1717
  %27 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %7, i32 0, i32 0, !dbg !1718
  %28 = load double, double* %27, align 8, !dbg !1718
  store double %28, double* %3, align 8, !dbg !1719
  br label %71, !dbg !1719

; <label>:29:                                     ; preds = %2
  %30 = load double, double* %4, align 8, !dbg !1720
  %31 = fcmp olt double %30, 1.200000e+00, !dbg !1722
  br i1 %31, label %32, label %50, !dbg !1723

; <label>:32:                                     ; preds = %29
  call void @llvm.dbg.declare(metadata double* %8, metadata !1724, metadata !100), !dbg !1726
  %33 = load double, double* %4, align 8, !dbg !1727
  %34 = fsub double 1.000000e+00, %33, !dbg !1728
  store double %34, double* %8, align 8, !dbg !1726
  call void @llvm.dbg.declare(metadata double* %9, metadata !1729, metadata !100), !dbg !1730
  store double 0x3F38C90BB7946C9A, double* %9, align 8, !dbg !1730
  call void @llvm.dbg.declare(metadata double* %10, metadata !1731, metadata !100), !dbg !1732
  store double 0x3F3A89D4D4B862F1, double* %10, align 8, !dbg !1732
  call void @llvm.dbg.declare(metadata double* %11, metadata !1733, metadata !100), !dbg !1734
  store double 0xBF3DFE0C6C8FC428, double* %11, align 8, !dbg !1734
  call void @llvm.dbg.declare(metadata double* %12, metadata !1735, metadata !100), !dbg !1736
  store double 0xBF5B17BEB14779F4, double* %12, align 8, !dbg !1736
  call void @llvm.dbg.declare(metadata double* %13, metadata !1737, metadata !100), !dbg !1738
  store double 0xBF61D1E1F83ADDC9, double* %13, align 8, !dbg !1738
  call void @llvm.dbg.declare(metadata double* %14, metadata !1739, metadata !100), !dbg !1740
  store double 0xBF58E77AE02C68B7, double* %14, align 8, !dbg !1740
  %35 = load double, double* %8, align 8, !dbg !1741
  %36 = load double, double* %8, align 8, !dbg !1742
  %37 = load double, double* %8, align 8, !dbg !1743
  %38 = load double, double* %8, align 8, !dbg !1744
  %39 = load double, double* %8, align 8, !dbg !1745
  %40 = fmul double %39, 0xBF58E77AE02C68B7, !dbg !1746
  %41 = fadd double 0xBF61D1E1F83ADDC9, %40, !dbg !1747
  %42 = fmul double %38, %41, !dbg !1748
  %43 = fadd double 0xBF5B17BEB14779F4, %42, !dbg !1749
  %44 = fmul double %37, %43, !dbg !1750
  %45 = fadd double 0xBF3DFE0C6C8FC428, %44, !dbg !1751
  %46 = fmul double %36, %45, !dbg !1752
  %47 = fadd double 0x3F3A89D4D4B862F1, %46, !dbg !1753
  %48 = fmul double %35, %47, !dbg !1754
  %49 = fadd double 0x3F38C90BB7946C9A, %48, !dbg !1755
  store double %49, double* %3, align 8, !dbg !1756
  br label %71, !dbg !1756

; <label>:50:                                     ; preds = %29
  call void @llvm.dbg.declare(metadata double* %15, metadata !1757, metadata !100), !dbg !1759
  %51 = load double, double* %4, align 8, !dbg !1760
  %52 = fmul double 5.000000e+00, %51, !dbg !1761
  %53 = fdiv double 1.200000e+01, %52, !dbg !1762
  %54 = fsub double %53, 1.000000e+00, !dbg !1763
  store double %54, double* %15, align 8, !dbg !1759
  call void @llvm.dbg.declare(metadata double* %16, metadata !1764, metadata !100), !dbg !1765
  %55 = load double, double* %4, align 8, !dbg !1766
  %56 = load double, double* %4, align 8, !dbg !1767
  %57 = fmul double %55, %56, !dbg !1768
  %58 = fdiv double 1.000000e+00, %57, !dbg !1769
  store double %58, double* %16, align 8, !dbg !1765
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %17, metadata !1770, metadata !100), !dbg !1771
  %59 = load double, double* %15, align 8, !dbg !1772
  %60 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @A4_gt1_cs, double %59, %struct.gsl_sf_result_struct* %17), !dbg !1773
  %61 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %17, i32 0, i32 0, !dbg !1774
  %62 = load double, double* %61, align 8, !dbg !1774
  %63 = load double, double* %16, align 8, !dbg !1775
  %64 = fmul double %62, %63, !dbg !1776
  %65 = load double, double* %16, align 8, !dbg !1777
  %66 = fmul double %64, %65, !dbg !1778
  %67 = load double, double* %16, align 8, !dbg !1779
  %68 = fmul double %66, %67, !dbg !1780
  %69 = load double, double* %16, align 8, !dbg !1781
  %70 = fmul double %68, %69, !dbg !1782
  store double %70, double* %3, align 8, !dbg !1783
  br label %71, !dbg !1783

; <label>:71:                                     ; preds = %50, %32, %20
  %72 = load double, double* %3, align 8, !dbg !1784
  ret double %72, !dbg !1784
}

; Function Attrs: nounwind uwtable
define internal double @olver_B0(double, double) #0 !dbg !1785 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
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
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !1786, metadata !100), !dbg !1787
  store double %1, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !1788, metadata !100), !dbg !1789
  %18 = load double, double* %4, align 8, !dbg !1790
  %19 = fcmp olt double %18, 9.800000e-01, !dbg !1792
  br i1 %19, label %20, label %44, !dbg !1793

; <label>:20:                                     ; preds = %2
  call void @llvm.dbg.declare(metadata double* %6, metadata !1794, metadata !100), !dbg !1796
  %21 = load double, double* %4, align 8, !dbg !1797
  %22 = load double, double* %4, align 8, !dbg !1798
  %23 = fmul double %21, %22, !dbg !1799
  %24 = fsub double 1.000000e+00, %23, !dbg !1800
  %25 = call double @sqrt(double %24) #6, !dbg !1801
  %26 = fdiv double 1.000000e+00, %25, !dbg !1802
  store double %26, double* %6, align 8, !dbg !1796
  %27 = load double, double* %5, align 8, !dbg !1803
  %28 = fmul double 4.800000e+01, %27, !dbg !1804
  %29 = load double, double* %5, align 8, !dbg !1805
  %30 = fmul double %28, %29, !dbg !1806
  %31 = fdiv double -5.000000e+00, %30, !dbg !1807
  %32 = load double, double* %6, align 8, !dbg !1808
  %33 = load double, double* %6, align 8, !dbg !1809
  %34 = fmul double 5.000000e+00, %33, !dbg !1810
  %35 = load double, double* %6, align 8, !dbg !1811
  %36 = fmul double %34, %35, !dbg !1812
  %37 = fadd double -3.000000e+00, %36, !dbg !1813
  %38 = fmul double %32, %37, !dbg !1814
  %39 = load double, double* %5, align 8, !dbg !1815
  %40 = call double @sqrt(double %39) #6, !dbg !1816
  %41 = fmul double 2.400000e+01, %40, !dbg !1817
  %42 = fdiv double %38, %41, !dbg !1818
  %43 = fadd double %31, %42, !dbg !1819
  store double %43, double* %3, align 8, !dbg !1820
  br label %101, !dbg !1820

; <label>:44:                                     ; preds = %2
  %45 = load double, double* %4, align 8, !dbg !1821
  %46 = fcmp olt double %45, 1.020000e+00, !dbg !1823
  br i1 %46, label %47, label %74, !dbg !1824

; <label>:47:                                     ; preds = %44
  call void @llvm.dbg.declare(metadata double* %7, metadata !1825, metadata !100), !dbg !1827
  %48 = load double, double* %4, align 8, !dbg !1828
  %49 = fsub double 1.000000e+00, %48, !dbg !1829
  store double %49, double* %7, align 8, !dbg !1827
  call void @llvm.dbg.declare(metadata double* %8, metadata !1830, metadata !100), !dbg !1831
  store double 0x3F926E4BDCD91844, double* %8, align 8, !dbg !1831
  call void @llvm.dbg.declare(metadata double* %9, metadata !1832, metadata !100), !dbg !1833
  store double 0x3F86EFA85CC9E550, double* %9, align 8, !dbg !1833
  call void @llvm.dbg.declare(metadata double* %10, metadata !1834, metadata !100), !dbg !1835
  store double 0x3F7854F7DB2B1A7F, double* %10, align 8, !dbg !1835
  call void @llvm.dbg.declare(metadata double* %11, metadata !1836, metadata !100), !dbg !1837
  store double 0x3F677DF1ECA75C1C, double* %11, align 8, !dbg !1837
  call void @llvm.dbg.declare(metadata double* %12, metadata !1838, metadata !100), !dbg !1839
  store double 0x3F54376E5603FE6D, double* %12, align 8, !dbg !1839
  call void @llvm.dbg.declare(metadata double* %13, metadata !1840, metadata !100), !dbg !1841
  store double 0x3F3B52D787939150, double* %13, align 8, !dbg !1841
  call void @llvm.dbg.declare(metadata double* %14, metadata !1842, metadata !100), !dbg !1843
  store double 0x3F014F831CDE0975, double* %14, align 8, !dbg !1843
  call void @llvm.dbg.declare(metadata double* %15, metadata !1844, metadata !100), !dbg !1845
  store double 0xBF2146BADE1F5571, double* %15, align 8, !dbg !1845
  call void @llvm.dbg.declare(metadata double* %16, metadata !1846, metadata !100), !dbg !1847
  store double 0xBF28FE652CE80F79, double* %16, align 8, !dbg !1847
  %50 = load double, double* %7, align 8, !dbg !1848
  %51 = load double, double* %7, align 8, !dbg !1849
  %52 = load double, double* %7, align 8, !dbg !1850
  %53 = load double, double* %7, align 8, !dbg !1851
  %54 = load double, double* %7, align 8, !dbg !1852
  %55 = load double, double* %7, align 8, !dbg !1853
  %56 = load double, double* %7, align 8, !dbg !1854
  %57 = load double, double* %7, align 8, !dbg !1855
  %58 = fmul double %57, 0xBF28FE652CE80F79, !dbg !1856
  %59 = fadd double 0xBF2146BADE1F5571, %58, !dbg !1857
  %60 = fmul double %56, %59, !dbg !1858
  %61 = fadd double 0x3F014F831CDE0975, %60, !dbg !1859
  %62 = fmul double %55, %61, !dbg !1860
  %63 = fadd double 0x3F3B52D787939150, %62, !dbg !1861
  %64 = fmul double %54, %63, !dbg !1862
  %65 = fadd double 0x3F54376E5603FE6D, %64, !dbg !1863
  %66 = fmul double %53, %65, !dbg !1864
  %67 = fadd double 0x3F677DF1ECA75C1C, %66, !dbg !1865
  %68 = fmul double %52, %67, !dbg !1866
  %69 = fadd double 0x3F7854F7DB2B1A7F, %68, !dbg !1867
  %70 = fmul double %51, %69, !dbg !1868
  %71 = fadd double 0x3F86EFA85CC9E550, %70, !dbg !1869
  %72 = fmul double %50, %71, !dbg !1870
  %73 = fadd double 0x3F926E4BDCD91844, %72, !dbg !1871
  store double %73, double* %3, align 8, !dbg !1872
  br label %101, !dbg !1872

; <label>:74:                                     ; preds = %44
  call void @llvm.dbg.declare(metadata double* %17, metadata !1873, metadata !100), !dbg !1875
  %75 = load double, double* %4, align 8, !dbg !1876
  %76 = load double, double* %4, align 8, !dbg !1877
  %77 = load double, double* %4, align 8, !dbg !1878
  %78 = fmul double %76, %77, !dbg !1879
  %79 = fdiv double 1.000000e+00, %78, !dbg !1880
  %80 = fsub double 1.000000e+00, %79, !dbg !1881
  %81 = call double @sqrt(double %80) #6, !dbg !1882
  %82 = fmul double %75, %81, !dbg !1883
  %83 = fdiv double 1.000000e+00, %82, !dbg !1884
  store double %83, double* %17, align 8, !dbg !1875
  %84 = load double, double* %5, align 8, !dbg !1885
  %85 = fmul double 4.800000e+01, %84, !dbg !1886
  %86 = load double, double* %5, align 8, !dbg !1887
  %87 = fmul double %85, %86, !dbg !1888
  %88 = fdiv double -5.000000e+00, %87, !dbg !1889
  %89 = load double, double* %17, align 8, !dbg !1890
  %90 = load double, double* %17, align 8, !dbg !1891
  %91 = fmul double 5.000000e+00, %90, !dbg !1892
  %92 = load double, double* %17, align 8, !dbg !1893
  %93 = fmul double %91, %92, !dbg !1894
  %94 = fadd double 3.000000e+00, %93, !dbg !1895
  %95 = fmul double %89, %94, !dbg !1896
  %96 = load double, double* %5, align 8, !dbg !1897
  %97 = call double @sqrt(double %96) #6, !dbg !1898
  %98 = fmul double 2.400000e+01, %97, !dbg !1899
  %99 = fdiv double %95, %98, !dbg !1900
  %100 = fadd double %88, %99, !dbg !1901
  store double %100, double* %3, align 8, !dbg !1902
  br label %101, !dbg !1902

; <label>:101:                                    ; preds = %74, %47, %20
  %102 = load double, double* %3, align 8, !dbg !1903
  ret double %102, !dbg !1903
}

; Function Attrs: nounwind uwtable
define internal double @olver_B1(double, double) #0 !dbg !1904 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
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
  %27 = alloca double, align 8
  %28 = alloca double, align 8
  %29 = alloca double, align 8
  %30 = alloca double, align 8
  %31 = alloca double, align 8
  %32 = alloca double, align 8
  %33 = alloca double, align 8
  %34 = alloca double, align 8
  %35 = alloca double, align 8
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !1905, metadata !100), !dbg !1906
  store double %1, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !1907, metadata !100), !dbg !1908
  %36 = load double, double* %4, align 8, !dbg !1909
  %37 = fcmp olt double %36, 8.800000e-01, !dbg !1911
  br i1 %37, label %38, label %120, !dbg !1912

; <label>:38:                                     ; preds = %2
  call void @llvm.dbg.declare(metadata double* %6, metadata !1913, metadata !100), !dbg !1915
  %39 = load double, double* %4, align 8, !dbg !1916
  %40 = load double, double* %4, align 8, !dbg !1917
  %41 = fmul double %39, %40, !dbg !1918
  %42 = fsub double 1.000000e+00, %41, !dbg !1919
  %43 = call double @sqrt(double %42) #6, !dbg !1920
  %44 = fdiv double 1.000000e+00, %43, !dbg !1921
  store double %44, double* %6, align 8, !dbg !1915
  call void @llvm.dbg.declare(metadata double* %7, metadata !1922, metadata !100), !dbg !1923
  %45 = load double, double* %6, align 8, !dbg !1924
  %46 = load double, double* %6, align 8, !dbg !1925
  %47 = fmul double %45, %46, !dbg !1926
  store double %47, double* %7, align 8, !dbg !1923
  call void @llvm.dbg.declare(metadata double* %8, metadata !1927, metadata !100), !dbg !1928
  %48 = load double, double* %5, align 8, !dbg !1929
  %49 = call double @sqrt(double %48) #6, !dbg !1930
  store double %49, double* %8, align 8, !dbg !1928
  call void @llvm.dbg.declare(metadata double* %9, metadata !1931, metadata !100), !dbg !1932
  %50 = load double, double* %8, align 8, !dbg !1933
  %51 = load double, double* %8, align 8, !dbg !1934
  %52 = fmul double %50, %51, !dbg !1935
  %53 = load double, double* %8, align 8, !dbg !1936
  %54 = fmul double %52, %53, !dbg !1937
  store double %54, double* %9, align 8, !dbg !1932
  call void @llvm.dbg.declare(metadata double* %10, metadata !1938, metadata !100), !dbg !1939
  %55 = load double, double* %9, align 8, !dbg !1940
  %56 = load double, double* %9, align 8, !dbg !1941
  %57 = fmul double %55, %56, !dbg !1942
  %58 = load double, double* %9, align 8, !dbg !1943
  %59 = fmul double %57, %58, !dbg !1944
  store double %59, double* %10, align 8, !dbg !1939
  call void @llvm.dbg.declare(metadata double* %11, metadata !1945, metadata !100), !dbg !1946
  %60 = load double, double* %6, align 8, !dbg !1947
  %61 = load double, double* %6, align 8, !dbg !1948
  %62 = fmul double %60, %61, !dbg !1949
  %63 = load double, double* %6, align 8, !dbg !1950
  %64 = fmul double %62, %63, !dbg !1951
  %65 = load double, double* %7, align 8, !dbg !1952
  %66 = fmul double 3.696030e+05, %65, !dbg !1953
  %67 = fsub double 3.037500e+04, %66, !dbg !1954
  %68 = load double, double* %7, align 8, !dbg !1955
  %69 = fmul double 7.657650e+05, %68, !dbg !1956
  %70 = load double, double* %7, align 8, !dbg !1957
  %71 = fmul double %69, %70, !dbg !1958
  %72 = fadd double %67, %71, !dbg !1959
  %73 = load double, double* %7, align 8, !dbg !1960
  %74 = fmul double 4.254250e+05, %73, !dbg !1961
  %75 = load double, double* %7, align 8, !dbg !1962
  %76 = fmul double %74, %75, !dbg !1963
  %77 = load double, double* %7, align 8, !dbg !1964
  %78 = fmul double %76, %77, !dbg !1965
  %79 = fsub double %72, %78, !dbg !1966
  %80 = fmul double %64, %79, !dbg !1967
  %81 = fdiv double %80, 4.147200e+05, !dbg !1968
  store double %81, double* %11, align 8, !dbg !1946
  call void @llvm.dbg.declare(metadata double* %12, metadata !1969, metadata !100), !dbg !1970
  %82 = load double, double* %10, align 8, !dbg !1971
  %83 = fmul double 6.635520e+05, %82, !dbg !1972
  %84 = fdiv double 8.508500e+04, %83, !dbg !1973
  store double %84, double* %12, align 8, !dbg !1970
  call void @llvm.dbg.declare(metadata double* %13, metadata !1974, metadata !100), !dbg !1975
  %85 = load double, double* %6, align 8, !dbg !1976
  %86 = fmul double 0x3F6C84BDA12F684C, %85, !dbg !1977
  %87 = load double, double* %7, align 8, !dbg !1978
  %88 = fmul double 5.000000e+00, %87, !dbg !1979
  %89 = fsub double 3.000000e+00, %88, !dbg !1980
  %90 = fmul double %86, %89, !dbg !1981
  %91 = load double, double* %5, align 8, !dbg !1982
  %92 = load double, double* %5, align 8, !dbg !1983
  %93 = fmul double %91, %92, !dbg !1984
  %94 = load double, double* %5, align 8, !dbg !1985
  %95 = fmul double %93, %94, !dbg !1986
  %96 = fdiv double %90, %95, !dbg !1987
  store double %96, double* %13, align 8, !dbg !1975
  call void @llvm.dbg.declare(metadata double* %14, metadata !1988, metadata !100), !dbg !1989
  %97 = load double, double* %7, align 8, !dbg !1990
  %98 = fmul double 0x3F17B425ED097B42, %97, !dbg !1991
  %99 = load double, double* %7, align 8, !dbg !1992
  %100 = fmul double 4.620000e+02, %99, !dbg !1993
  %101 = fsub double 8.100000e+01, %100, !dbg !1994
  %102 = load double, double* %7, align 8, !dbg !1995
  %103 = fmul double 3.850000e+02, %102, !dbg !1996
  %104 = load double, double* %7, align 8, !dbg !1997
  %105 = fmul double %103, %104, !dbg !1998
  %106 = fadd double %101, %105, !dbg !1999
  %107 = fmul double %98, %106, !dbg !2000
  %108 = load double, double* %9, align 8, !dbg !2001
  %109 = fdiv double %107, %108, !dbg !2002
  store double %109, double* %14, align 8, !dbg !1989
  %110 = load double, double* %11, align 8, !dbg !2003
  %111 = load double, double* %12, align 8, !dbg !2004
  %112 = fadd double %110, %111, !dbg !2005
  %113 = load double, double* %13, align 8, !dbg !2006
  %114 = fadd double %112, %113, !dbg !2007
  %115 = load double, double* %14, align 8, !dbg !2008
  %116 = fadd double %114, %115, !dbg !2009
  %117 = fsub double -0.000000e+00, %116, !dbg !2010
  %118 = load double, double* %8, align 8, !dbg !2011
  %119 = fdiv double %117, %118, !dbg !2012
  store double %119, double* %3, align 8, !dbg !2013
  br label %239, !dbg !2013

; <label>:120:                                    ; preds = %2
  %121 = load double, double* %4, align 8, !dbg !2014
  %122 = fcmp olt double %121, 1.120000e+00, !dbg !2016
  br i1 %122, label %123, label %156, !dbg !2017

; <label>:123:                                    ; preds = %120
  call void @llvm.dbg.declare(metadata double* %15, metadata !2018, metadata !100), !dbg !2020
  %124 = load double, double* %4, align 8, !dbg !2021
  %125 = fsub double 1.000000e+00, %124, !dbg !2022
  store double %125, double* %15, align 8, !dbg !2020
  call void @llvm.dbg.declare(metadata double* %16, metadata !2023, metadata !100), !dbg !2024
  store double 0xBF58756181379EAC, double* %16, align 8, !dbg !2024
  call void @llvm.dbg.declare(metadata double* %17, metadata !2025, metadata !100), !dbg !2026
  store double 0xBF5CC6EA40DB6112, double* %17, align 8, !dbg !2026
  call void @llvm.dbg.declare(metadata double* %18, metadata !2027, metadata !100), !dbg !2028
  store double 0xBF52921501A08099, double* %18, align 8, !dbg !2028
  call void @llvm.dbg.declare(metadata double* %19, metadata !2029, metadata !100), !dbg !2030
  store double 0xBF36BC330324852D, double* %19, align 8, !dbg !2030
  call void @llvm.dbg.declare(metadata double* %20, metadata !2031, metadata !100), !dbg !2032
  store double 0x3F2DD27A405E5E79, double* %20, align 8, !dbg !2032
  call void @llvm.dbg.declare(metadata double* %21, metadata !2033, metadata !100), !dbg !2034
  store double 0x3F40F64A90A0E4E4, double* %21, align 8, !dbg !2034
  call void @llvm.dbg.declare(metadata double* %22, metadata !2035, metadata !100), !dbg !2036
  store double 0x3F434D6879059EC9, double* %22, align 8, !dbg !2036
  call void @llvm.dbg.declare(metadata double* %23, metadata !2037, metadata !100), !dbg !2038
  store double 0x3F4186B0ADAC078D, double* %23, align 8, !dbg !2038
  call void @llvm.dbg.declare(metadata double* %24, metadata !2039, metadata !100), !dbg !2040
  store double 0x3F3C1C0C7B3EBEF7, double* %24, align 8, !dbg !2040
  call void @llvm.dbg.declare(metadata double* %25, metadata !2041, metadata !100), !dbg !2042
  store double 0x3F34BC4599140EED, double* %25, align 8, !dbg !2042
  call void @llvm.dbg.declare(metadata double* %26, metadata !2043, metadata !100), !dbg !2044
  store double 0x3F2CB7278E50B62C, double* %26, align 8, !dbg !2044
  %126 = load double, double* %15, align 8, !dbg !2045
  %127 = load double, double* %15, align 8, !dbg !2046
  %128 = load double, double* %15, align 8, !dbg !2047
  %129 = load double, double* %15, align 8, !dbg !2048
  %130 = load double, double* %15, align 8, !dbg !2049
  %131 = load double, double* %15, align 8, !dbg !2050
  %132 = load double, double* %15, align 8, !dbg !2051
  %133 = load double, double* %15, align 8, !dbg !2052
  %134 = load double, double* %15, align 8, !dbg !2053
  %135 = load double, double* %15, align 8, !dbg !2054
  %136 = fmul double %135, 0x3F2CB7278E50B62C, !dbg !2055
  %137 = fadd double 0x3F34BC4599140EED, %136, !dbg !2056
  %138 = fmul double %134, %137, !dbg !2057
  %139 = fadd double 0x3F3C1C0C7B3EBEF7, %138, !dbg !2058
  %140 = fmul double %133, %139, !dbg !2059
  %141 = fadd double 0x3F4186B0ADAC078D, %140, !dbg !2060
  %142 = fmul double %132, %141, !dbg !2061
  %143 = fadd double 0x3F434D6879059EC9, %142, !dbg !2062
  %144 = fmul double %131, %143, !dbg !2063
  %145 = fadd double 0x3F40F64A90A0E4E4, %144, !dbg !2064
  %146 = fmul double %130, %145, !dbg !2065
  %147 = fadd double 0x3F2DD27A405E5E79, %146, !dbg !2066
  %148 = fmul double %129, %147, !dbg !2067
  %149 = fadd double 0xBF36BC330324852D, %148, !dbg !2068
  %150 = fmul double %128, %149, !dbg !2069
  %151 = fadd double 0xBF52921501A08099, %150, !dbg !2070
  %152 = fmul double %127, %151, !dbg !2071
  %153 = fadd double 0xBF5CC6EA40DB6112, %152, !dbg !2072
  %154 = fmul double %126, %153, !dbg !2073
  %155 = fadd double 0xBF58756181379EAC, %154, !dbg !2074
  store double %155, double* %3, align 8, !dbg !2075
  br label %239, !dbg !2075

; <label>:156:                                    ; preds = %120
  call void @llvm.dbg.declare(metadata double* %27, metadata !2076, metadata !100), !dbg !2078
  %157 = load double, double* %4, align 8, !dbg !2079
  %158 = load double, double* %4, align 8, !dbg !2080
  %159 = load double, double* %4, align 8, !dbg !2081
  %160 = fmul double %158, %159, !dbg !2082
  %161 = fdiv double 1.000000e+00, %160, !dbg !2083
  %162 = fsub double 1.000000e+00, %161, !dbg !2084
  %163 = call double @sqrt(double %162) #6, !dbg !2085
  %164 = fmul double %157, %163, !dbg !2086
  %165 = fdiv double 1.000000e+00, %164, !dbg !2087
  store double %165, double* %27, align 8, !dbg !2078
  call void @llvm.dbg.declare(metadata double* %28, metadata !2088, metadata !100), !dbg !2089
  %166 = load double, double* %27, align 8, !dbg !2090
  %167 = load double, double* %27, align 8, !dbg !2091
  %168 = fmul double %166, %167, !dbg !2092
  store double %168, double* %28, align 8, !dbg !2089
  call void @llvm.dbg.declare(metadata double* %29, metadata !2093, metadata !100), !dbg !2094
  %169 = load double, double* %5, align 8, !dbg !2095
  %170 = call double @sqrt(double %169) #6, !dbg !2096
  store double %170, double* %29, align 8, !dbg !2094
  call void @llvm.dbg.declare(metadata double* %30, metadata !2097, metadata !100), !dbg !2098
  %171 = load double, double* %29, align 8, !dbg !2099
  %172 = load double, double* %29, align 8, !dbg !2100
  %173 = fmul double %171, %172, !dbg !2101
  %174 = load double, double* %29, align 8, !dbg !2102
  %175 = fmul double %173, %174, !dbg !2103
  store double %175, double* %30, align 8, !dbg !2098
  call void @llvm.dbg.declare(metadata double* %31, metadata !2104, metadata !100), !dbg !2105
  %176 = load double, double* %30, align 8, !dbg !2106
  %177 = load double, double* %30, align 8, !dbg !2107
  %178 = fmul double %176, %177, !dbg !2108
  %179 = load double, double* %30, align 8, !dbg !2109
  %180 = fmul double %178, %179, !dbg !2110
  store double %180, double* %31, align 8, !dbg !2105
  call void @llvm.dbg.declare(metadata double* %32, metadata !2111, metadata !100), !dbg !2112
  %181 = load double, double* %28, align 8, !dbg !2113
  %182 = fsub double -0.000000e+00, %181, !dbg !2114
  %183 = load double, double* %27, align 8, !dbg !2115
  %184 = fmul double %182, %183, !dbg !2116
  %185 = load double, double* %28, align 8, !dbg !2117
  %186 = fmul double 3.696030e+05, %185, !dbg !2118
  %187 = fadd double 3.037500e+04, %186, !dbg !2119
  %188 = load double, double* %28, align 8, !dbg !2120
  %189 = fmul double 7.657650e+05, %188, !dbg !2121
  %190 = load double, double* %28, align 8, !dbg !2122
  %191 = fmul double %189, %190, !dbg !2123
  %192 = fadd double %187, %191, !dbg !2124
  %193 = load double, double* %28, align 8, !dbg !2125
  %194 = fmul double 4.254250e+05, %193, !dbg !2126
  %195 = load double, double* %28, align 8, !dbg !2127
  %196 = fmul double %194, %195, !dbg !2128
  %197 = load double, double* %28, align 8, !dbg !2129
  %198 = fmul double %196, %197, !dbg !2130
  %199 = fadd double %192, %198, !dbg !2131
  %200 = fmul double %184, %199, !dbg !2132
  %201 = fdiv double %200, 4.147200e+05, !dbg !2133
  store double %201, double* %32, align 8, !dbg !2112
  call void @llvm.dbg.declare(metadata double* %33, metadata !2134, metadata !100), !dbg !2135
  %202 = load double, double* %31, align 8, !dbg !2136
  %203 = fmul double 6.635520e+05, %202, !dbg !2137
  %204 = fdiv double 8.508500e+04, %203, !dbg !2138
  store double %204, double* %33, align 8, !dbg !2135
  call void @llvm.dbg.declare(metadata double* %34, metadata !2139, metadata !100), !dbg !2140
  %205 = load double, double* %27, align 8, !dbg !2141
  %206 = fmul double 0xBF6C84BDA12F684C, %205, !dbg !2142
  %207 = load double, double* %28, align 8, !dbg !2143
  %208 = fmul double 5.000000e+00, %207, !dbg !2144
  %209 = fadd double 3.000000e+00, %208, !dbg !2145
  %210 = fmul double %206, %209, !dbg !2146
  %211 = load double, double* %5, align 8, !dbg !2147
  %212 = load double, double* %5, align 8, !dbg !2148
  %213 = fmul double %211, %212, !dbg !2149
  %214 = load double, double* %5, align 8, !dbg !2150
  %215 = fmul double %213, %214, !dbg !2151
  %216 = fdiv double %210, %215, !dbg !2152
  store double %216, double* %34, align 8, !dbg !2140
  call void @llvm.dbg.declare(metadata double* %35, metadata !2153, metadata !100), !dbg !2154
  %217 = load double, double* %28, align 8, !dbg !2155
  %218 = fmul double 0x3F17B425ED097B42, %217, !dbg !2156
  %219 = load double, double* %28, align 8, !dbg !2157
  %220 = fmul double 4.620000e+02, %219, !dbg !2158
  %221 = fadd double 8.100000e+01, %220, !dbg !2159
  %222 = load double, double* %28, align 8, !dbg !2160
  %223 = fmul double 3.850000e+02, %222, !dbg !2161
  %224 = load double, double* %28, align 8, !dbg !2162
  %225 = fmul double %223, %224, !dbg !2163
  %226 = fadd double %221, %225, !dbg !2164
  %227 = fmul double %218, %226, !dbg !2165
  %228 = load double, double* %30, align 8, !dbg !2166
  %229 = fdiv double %227, %228, !dbg !2167
  store double %229, double* %35, align 8, !dbg !2154
  %230 = load double, double* %32, align 8, !dbg !2168
  %231 = load double, double* %33, align 8, !dbg !2169
  %232 = fadd double %230, %231, !dbg !2170
  %233 = load double, double* %34, align 8, !dbg !2171
  %234 = fadd double %232, %233, !dbg !2172
  %235 = load double, double* %35, align 8, !dbg !2173
  %236 = fadd double %234, %235, !dbg !2174
  %237 = load double, double* %29, align 8, !dbg !2175
  %238 = fdiv double %236, %237, !dbg !2176
  store double %238, double* %3, align 8, !dbg !2177
  br label %239, !dbg !2177

; <label>:239:                                    ; preds = %156, %123, %38
  %240 = load double, double* %3, align 8, !dbg !2178
  ret double %240, !dbg !2178
}

; Function Attrs: nounwind uwtable
define internal double @olver_B2(double, double) #0 !dbg !2179 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca %struct.gsl_sf_result_struct, align 8
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
  %20 = alloca double, align 8
  %21 = alloca %struct.gsl_sf_result_struct, align 8
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !2180, metadata !100), !dbg !2181
  store double %1, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !2182, metadata !100), !dbg !2183
  %22 = load double, double* %4, align 8, !dbg !2184
  %23 = fcmp olt double %22, 8.000000e-01, !dbg !2186
  br i1 %23, label %24, label %35, !dbg !2187

; <label>:24:                                     ; preds = %2
  call void @llvm.dbg.declare(metadata double* %6, metadata !2188, metadata !100), !dbg !2190
  %25 = load double, double* %4, align 8, !dbg !2191
  %26 = fmul double 5.000000e+00, %25, !dbg !2192
  %27 = fdiv double %26, 2.000000e+00, !dbg !2193
  %28 = fsub double %27, 1.000000e+00, !dbg !2194
  store double %28, double* %6, align 8, !dbg !2190
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %7, metadata !2195, metadata !100), !dbg !2196
  %29 = load double, double* %6, align 8, !dbg !2197
  %30 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @B2_lt1_cs, double %29, %struct.gsl_sf_result_struct* %7), !dbg !2198
  %31 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %7, i32 0, i32 0, !dbg !2199
  %32 = load double, double* %31, align 8, !dbg !2199
  %33 = load double, double* %4, align 8, !dbg !2200
  %34 = fdiv double %32, %33, !dbg !2201
  store double %34, double* %3, align 8, !dbg !2202
  br label %84, !dbg !2202

; <label>:35:                                     ; preds = %2
  %36 = load double, double* %4, align 8, !dbg !2203
  %37 = fcmp ole double %36, 1.200000e+00, !dbg !2205
  br i1 %37, label %38, label %68, !dbg !2206

; <label>:38:                                     ; preds = %35
  call void @llvm.dbg.declare(metadata double* %8, metadata !2207, metadata !100), !dbg !2209
  %39 = load double, double* %4, align 8, !dbg !2210
  %40 = fsub double 1.000000e+00, %39, !dbg !2211
  store double %40, double* %8, align 8, !dbg !2209
  call void @llvm.dbg.declare(metadata double* %9, metadata !2212, metadata !100), !dbg !2213
  store double 0x3F42184C8D6EB909, double* %9, align 8, !dbg !2213
  call void @llvm.dbg.declare(metadata double* %10, metadata !2214, metadata !100), !dbg !2215
  store double 0x3F4D5B0FC9E066C8, double* %10, align 8, !dbg !2215
  call void @llvm.dbg.declare(metadata double* %11, metadata !2216, metadata !100), !dbg !2217
  store double 0x3F45F5A03D98E6E4, double* %11, align 8, !dbg !2217
  call void @llvm.dbg.declare(metadata double* %12, metadata !2218, metadata !100), !dbg !2219
  store double 0x3F1AA676BF198F64, double* %12, align 8, !dbg !2219
  call void @llvm.dbg.declare(metadata double* %13, metadata !2220, metadata !100), !dbg !2221
  store double 0xBF3CE4761B01F65D, double* %13, align 8, !dbg !2221
  call void @llvm.dbg.declare(metadata double* %14, metadata !2222, metadata !100), !dbg !2223
  store double 0xBF483C7914B9AC5E, double* %14, align 8, !dbg !2223
  call void @llvm.dbg.declare(metadata double* %15, metadata !2224, metadata !100), !dbg !2225
  store double 0xBF4925E0F13D4038, double* %15, align 8, !dbg !2225
  call void @llvm.dbg.declare(metadata double* %16, metadata !2226, metadata !100), !dbg !2227
  store double 0xBF43EEB5A5852587, double* %16, align 8, !dbg !2227
  call void @llvm.dbg.declare(metadata double* %17, metadata !2228, metadata !100), !dbg !2229
  store double 0xBF385529D885EBA9, double* %17, align 8, !dbg !2229
  call void @llvm.dbg.declare(metadata double* %18, metadata !2230, metadata !100), !dbg !2231
  store double 0xBF2280A717E75A94, double* %18, align 8, !dbg !2231
  %41 = load double, double* %8, align 8, !dbg !2232
  %42 = load double, double* %8, align 8, !dbg !2233
  %43 = load double, double* %8, align 8, !dbg !2234
  %44 = load double, double* %8, align 8, !dbg !2235
  %45 = load double, double* %8, align 8, !dbg !2236
  %46 = load double, double* %8, align 8, !dbg !2237
  %47 = load double, double* %8, align 8, !dbg !2238
  %48 = load double, double* %8, align 8, !dbg !2239
  %49 = load double, double* %8, align 8, !dbg !2240
  %50 = fmul double %49, 0xBF2280A717E75A94, !dbg !2241
  %51 = fadd double 0xBF385529D885EBA9, %50, !dbg !2242
  %52 = fmul double %48, %51, !dbg !2243
  %53 = fadd double 0xBF43EEB5A5852587, %52, !dbg !2244
  %54 = fmul double %47, %53, !dbg !2245
  %55 = fadd double 0xBF4925E0F13D4038, %54, !dbg !2246
  %56 = fmul double %46, %55, !dbg !2247
  %57 = fadd double 0xBF483C7914B9AC5E, %56, !dbg !2248
  %58 = fmul double %45, %57, !dbg !2249
  %59 = fadd double 0xBF3CE4761B01F65D, %58, !dbg !2250
  %60 = fmul double %44, %59, !dbg !2251
  %61 = fadd double 0x3F1AA676BF198F64, %60, !dbg !2252
  %62 = fmul double %43, %61, !dbg !2253
  %63 = fadd double 0x3F45F5A03D98E6E4, %62, !dbg !2254
  %64 = fmul double %42, %63, !dbg !2255
  %65 = fadd double 0x3F4D5B0FC9E066C8, %64, !dbg !2256
  %66 = fmul double %41, %65, !dbg !2257
  %67 = fadd double 0x3F42184C8D6EB909, %66, !dbg !2258
  store double %67, double* %3, align 8, !dbg !2259
  br label %84, !dbg !2259

; <label>:68:                                     ; preds = %35
  call void @llvm.dbg.declare(metadata double* %19, metadata !2260, metadata !100), !dbg !2262
  %69 = load double, double* %4, align 8, !dbg !2263
  %70 = fdiv double 1.000000e+00, %69, !dbg !2264
  store double %70, double* %19, align 8, !dbg !2262
  call void @llvm.dbg.declare(metadata double* %20, metadata !2265, metadata !100), !dbg !2266
  %71 = load double, double* %19, align 8, !dbg !2267
  %72 = fmul double 2.400000e+00, %71, !dbg !2268
  %73 = fsub double %72, 1.000000e+00, !dbg !2269
  store double %73, double* %20, align 8, !dbg !2266
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %21, metadata !2270, metadata !100), !dbg !2271
  %74 = load double, double* %20, align 8, !dbg !2272
  %75 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @B2_gt1_cs, double %74, %struct.gsl_sf_result_struct* %21), !dbg !2273
  %76 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %21, i32 0, i32 0, !dbg !2274
  %77 = load double, double* %76, align 8, !dbg !2274
  %78 = load double, double* %19, align 8, !dbg !2275
  %79 = fmul double %77, %78, !dbg !2276
  %80 = load double, double* %19, align 8, !dbg !2277
  %81 = fmul double %79, %80, !dbg !2278
  %82 = load double, double* %19, align 8, !dbg !2279
  %83 = fmul double %81, %82, !dbg !2280
  store double %83, double* %3, align 8, !dbg !2281
  br label %84, !dbg !2281

; <label>:84:                                     ; preds = %68, %38, %24
  %85 = load double, double* %3, align 8, !dbg !2282
  ret double %85, !dbg !2282
}

; Function Attrs: nounwind uwtable
define internal double @olver_B3(double, double) #0 !dbg !2283 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca %struct.gsl_sf_result_struct, align 8
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
  %18 = alloca %struct.gsl_sf_result_struct, align 8
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !2284, metadata !100), !dbg !2285
  store double %1, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !2286, metadata !100), !dbg !2287
  %19 = load double, double* %4, align 8, !dbg !2288
  %20 = fcmp olt double %19, 8.000000e-01, !dbg !2290
  br i1 %20, label %21, label %30, !dbg !2291

; <label>:21:                                     ; preds = %2
  call void @llvm.dbg.declare(metadata double* %6, metadata !2292, metadata !100), !dbg !2294
  %22 = load double, double* %4, align 8, !dbg !2295
  %23 = fmul double 5.000000e+00, %22, !dbg !2296
  %24 = fdiv double %23, 2.000000e+00, !dbg !2297
  %25 = fsub double %24, 1.000000e+00, !dbg !2298
  store double %25, double* %6, align 8, !dbg !2294
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %7, metadata !2299, metadata !100), !dbg !2300
  %26 = load double, double* %6, align 8, !dbg !2301
  %27 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @B3_lt1_cs, double %26, %struct.gsl_sf_result_struct* %7), !dbg !2302
  %28 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %7, i32 0, i32 0, !dbg !2303
  %29 = load double, double* %28, align 8, !dbg !2303
  store double %29, double* %3, align 8, !dbg !2304
  br label %73, !dbg !2304

; <label>:30:                                     ; preds = %2
  %31 = load double, double* %4, align 8, !dbg !2305
  %32 = fcmp olt double %31, 1.200000e+00, !dbg !2307
  br i1 %32, label %33, label %54, !dbg !2308

; <label>:33:                                     ; preds = %30
  call void @llvm.dbg.declare(metadata double* %8, metadata !2309, metadata !100), !dbg !2311
  %34 = load double, double* %4, align 8, !dbg !2312
  %35 = fsub double 1.000000e+00, %34, !dbg !2313
  store double %35, double* %8, align 8, !dbg !2311
  call void @llvm.dbg.declare(metadata double* %9, metadata !2314, metadata !100), !dbg !2315
  store double 0xBF3F1AC3EA112D74, double* %9, align 8, !dbg !2315
  call void @llvm.dbg.declare(metadata double* %10, metadata !2316, metadata !100), !dbg !2317
  store double 0xBF4F513CB014A3D9, double* %10, align 8, !dbg !2317
  call void @llvm.dbg.declare(metadata double* %11, metadata !2318, metadata !100), !dbg !2319
  store double 0xBF4A55E4C254A98F, double* %11, align 8, !dbg !2319
  call void @llvm.dbg.declare(metadata double* %12, metadata !2320, metadata !100), !dbg !2321
  store double 0xBEDE87FFD92E6A73, double* %12, align 8, !dbg !2321
  call void @llvm.dbg.declare(metadata double* %13, metadata !2322, metadata !100), !dbg !2323
  store double 0x3F4E870975EFB114, double* %13, align 8, !dbg !2323
  call void @llvm.dbg.declare(metadata double* %14, metadata !2324, metadata !100), !dbg !2325
  store double 0x3F588D1D34898B89, double* %14, align 8, !dbg !2325
  call void @llvm.dbg.declare(metadata double* %15, metadata !2326, metadata !100), !dbg !2327
  store double 0x3F585099B7A3C588, double* %15, align 8, !dbg !2327
  %36 = load double, double* %8, align 8, !dbg !2328
  %37 = load double, double* %8, align 8, !dbg !2329
  %38 = load double, double* %8, align 8, !dbg !2330
  %39 = load double, double* %8, align 8, !dbg !2331
  %40 = load double, double* %8, align 8, !dbg !2332
  %41 = load double, double* %8, align 8, !dbg !2333
  %42 = fmul double %41, 0x3F585099B7A3C588, !dbg !2334
  %43 = fadd double 0x3F588D1D34898B89, %42, !dbg !2335
  %44 = fmul double %40, %43, !dbg !2336
  %45 = fadd double 0x3F4E870975EFB114, %44, !dbg !2337
  %46 = fmul double %39, %45, !dbg !2338
  %47 = fadd double 0xBEDE87FFD92E6A73, %46, !dbg !2339
  %48 = fmul double %38, %47, !dbg !2340
  %49 = fadd double 0xBF4A55E4C254A98F, %48, !dbg !2341
  %50 = fmul double %37, %49, !dbg !2342
  %51 = fadd double 0xBF4F513CB014A3D9, %50, !dbg !2343
  %52 = fmul double %36, %51, !dbg !2344
  %53 = fadd double 0xBF3F1AC3EA112D74, %52, !dbg !2345
  store double %53, double* %3, align 8, !dbg !2346
  br label %73, !dbg !2346

; <label>:54:                                     ; preds = %30
  call void @llvm.dbg.declare(metadata double* %16, metadata !2347, metadata !100), !dbg !2349
  %55 = load double, double* %4, align 8, !dbg !2350
  %56 = fmul double 5.000000e+00, %55, !dbg !2351
  %57 = fdiv double 1.200000e+01, %56, !dbg !2352
  %58 = fsub double %57, 1.000000e+00, !dbg !2353
  store double %58, double* %16, align 8, !dbg !2349
  call void @llvm.dbg.declare(metadata double* %17, metadata !2354, metadata !100), !dbg !2355
  %59 = load double, double* %4, align 8, !dbg !2356
  %60 = load double, double* %4, align 8, !dbg !2357
  %61 = fmul double %59, %60, !dbg !2358
  %62 = fdiv double 1.000000e+00, %61, !dbg !2359
  store double %62, double* %17, align 8, !dbg !2355
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %18, metadata !2360, metadata !100), !dbg !2361
  %63 = load double, double* %16, align 8, !dbg !2362
  %64 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @B3_gt1_cs, double %63, %struct.gsl_sf_result_struct* %18), !dbg !2363
  %65 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %18, i32 0, i32 0, !dbg !2364
  %66 = load double, double* %65, align 8, !dbg !2364
  %67 = load double, double* %17, align 8, !dbg !2365
  %68 = fmul double %66, %67, !dbg !2366
  %69 = load double, double* %17, align 8, !dbg !2367
  %70 = fmul double %68, %69, !dbg !2368
  %71 = load double, double* %17, align 8, !dbg !2369
  %72 = fmul double %70, %71, !dbg !2370
  store double %72, double* %3, align 8, !dbg !2371
  br label %73, !dbg !2371

; <label>:73:                                     ; preds = %54, %33, %21
  %74 = load double, double* %3, align 8, !dbg !2372
  ret double %74, !dbg !2372
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!91, !92, !93}
!llvm.ident = !{!94}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, globals: !41)
!1 = !DIFile(filename: "bessel_olver.c", directory: "/fpcc/gsl-2.5/specfunc")
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
!41 = !{!42, !55, !59, !60, !64, !65, !69, !70, !74, !75, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90}
!42 = distinct !DIGlobalVariable(name: "zofmzeta_a_cs", scope: !0, file: !1, line: 58, type: !43, isLocal: true, isDefinition: true, variable: %struct.cheb_series_struct* @zofmzeta_a_cs)
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
!55 = distinct !DIGlobalVariable(name: "zofmzeta_a_data", scope: !0, file: !1, line: 36, type: !56, isLocal: true, isDefinition: true, variable: [20 x double]* @zofmzeta_a_data)
!56 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 1280, align: 64, elements: !57)
!57 = !{!58}
!58 = !DISubrange(count: 20)
!59 = distinct !DIGlobalVariable(name: "zofmzeta_b_cs", scope: !0, file: !1, line: 99, type: !43, isLocal: true, isDefinition: true, variable: %struct.cheb_series_struct* @zofmzeta_b_cs)
!60 = distinct !DIGlobalVariable(name: "zofmzeta_b_data", scope: !0, file: !1, line: 67, type: !61, isLocal: true, isDefinition: true, variable: [30 x double]* @zofmzeta_b_data)
!61 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 1920, align: 64, elements: !62)
!62 = !{!63}
!63 = !DISubrange(count: 30)
!64 = distinct !DIGlobalVariable(name: "zofmzeta_c_cs", scope: !0, file: !1, line: 124, type: !43, isLocal: true, isDefinition: true, variable: %struct.cheb_series_struct* @zofmzeta_c_cs)
!65 = distinct !DIGlobalVariable(name: "zofmzeta_c_data", scope: !0, file: !1, line: 111, type: !66, isLocal: true, isDefinition: true, variable: [11 x double]* @zofmzeta_c_data)
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 704, align: 64, elements: !67)
!67 = !{!68}
!68 = !DISubrange(count: 11)
!69 = distinct !DIGlobalVariable(name: "A3_lt1_cs", scope: !0, file: !1, line: 479, type: !43, isLocal: true, isDefinition: true, variable: %struct.cheb_series_struct* @A3_lt1_cs)
!70 = distinct !DIGlobalVariable(name: "A3_lt1_data", scope: !0, file: !1, line: 437, type: !71, isLocal: true, isDefinition: true, variable: [40 x double]* @A3_lt1_data)
!71 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 2560, align: 64, elements: !72)
!72 = !{!73}
!73 = !DISubrange(count: 40)
!74 = distinct !DIGlobalVariable(name: "A3_gt1_cs", scope: !0, file: !1, line: 195, type: !43, isLocal: true, isDefinition: true, variable: %struct.cheb_series_struct* @A3_gt1_cs)
!75 = distinct !DIGlobalVariable(name: "A3_gt1_data", scope: !0, file: !1, line: 162, type: !76, isLocal: true, isDefinition: true, variable: [31 x double]* @A3_gt1_data)
!76 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 1984, align: 64, elements: !77)
!77 = !{!78}
!78 = !DISubrange(count: 31)
!79 = distinct !DIGlobalVariable(name: "A4_lt1_cs", scope: !0, file: !1, line: 519, type: !43, isLocal: true, isDefinition: true, variable: %struct.cheb_series_struct* @A4_lt1_cs)
!80 = distinct !DIGlobalVariable(name: "A4_lt1_data", scope: !0, file: !1, line: 487, type: !61, isLocal: true, isDefinition: true, variable: [30 x double]* @A4_lt1_data)
!81 = distinct !DIGlobalVariable(name: "A4_gt1_cs", scope: !0, file: !1, line: 235, type: !43, isLocal: true, isDefinition: true, variable: %struct.cheb_series_struct* @A4_gt1_cs)
!82 = distinct !DIGlobalVariable(name: "A4_gt1_data", scope: !0, file: !1, line: 203, type: !61, isLocal: true, isDefinition: true, variable: [30 x double]* @A4_gt1_data)
!83 = distinct !DIGlobalVariable(name: "B2_lt1_cs", scope: !0, file: !1, line: 377, type: !43, isLocal: true, isDefinition: true, variable: %struct.cheb_series_struct* @B2_lt1_cs)
!84 = distinct !DIGlobalVariable(name: "B2_lt1_data", scope: !0, file: !1, line: 335, type: !71, isLocal: true, isDefinition: true, variable: [40 x double]* @B2_lt1_data)
!85 = distinct !DIGlobalVariable(name: "B2_gt1_cs", scope: !0, file: !1, line: 285, type: !43, isLocal: true, isDefinition: true, variable: %struct.cheb_series_struct* @B2_gt1_cs)
!86 = distinct !DIGlobalVariable(name: "B2_gt1_data", scope: !0, file: !1, line: 243, type: !71, isLocal: true, isDefinition: true, variable: [40 x double]* @B2_gt1_data)
!87 = distinct !DIGlobalVariable(name: "B3_lt1_cs", scope: !0, file: !1, line: 428, type: !43, isLocal: true, isDefinition: true, variable: %struct.cheb_series_struct* @B3_lt1_cs)
!88 = distinct !DIGlobalVariable(name: "B3_lt1_data", scope: !0, file: !1, line: 386, type: !71, isLocal: true, isDefinition: true, variable: [40 x double]* @B3_lt1_data)
!89 = distinct !DIGlobalVariable(name: "B3_gt1_cs", scope: !0, file: !1, line: 326, type: !43, isLocal: true, isDefinition: true, variable: %struct.cheb_series_struct* @B3_gt1_cs)
!90 = distinct !DIGlobalVariable(name: "B3_gt1_data", scope: !0, file: !1, line: 294, type: !61, isLocal: true, isDefinition: true, variable: [30 x double]* @B3_gt1_data)
!91 = !{i32 2, !"Dwarf Version", i32 4}
!92 = !{i32 2, !"Debug Info Version", i32 3}
!93 = !{i32 1, !"PIC Level", i32 2}
!94 = !{!"clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)"}
!95 = distinct !DISubprogram(name: "gsl_sf_bessel_Olver_zofmzeta", scope: !1, file: !1, line: 136, type: !96, isLocal: false, isDefinition: true, scopeLine: 137, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !98)
!96 = !DISubroutineType(types: !97)
!97 = !{!49, !49}
!98 = !{}
!99 = !DILocalVariable(name: "minus_zeta", arg: 1, scope: !95, file: !1, line: 136, type: !49)
!100 = !DIExpression()
!101 = !DILocation(line: 136, column: 37, scope: !95)
!102 = !DILocation(line: 138, column: 6, scope: !103)
!103 = distinct !DILexicalBlock(scope: !95, file: !1, line: 138, column: 6)
!104 = !DILocation(line: 138, column: 17, scope: !103)
!105 = !DILocation(line: 138, column: 6, scope: !95)
!106 = !DILocalVariable(name: "x", scope: !107, file: !1, line: 139, type: !108)
!107 = distinct !DILexicalBlock(scope: !103, file: !1, line: 138, column: 24)
!108 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !49)
!109 = !DILocation(line: 139, column: 18, scope: !107)
!110 = !DILocation(line: 139, column: 26, scope: !107)
!111 = !DILocation(line: 139, column: 25, scope: !107)
!112 = !DILocation(line: 139, column: 37, scope: !107)
!113 = !DILocalVariable(name: "c", scope: !107, file: !1, line: 140, type: !114)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !115, line: 41, baseType: !116)
!115 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/fpcc/gsl-2.5/specfunc")
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !115, line: 37, size: 128, align: 64, elements: !117)
!117 = !{!118, !119}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !116, file: !115, line: 38, baseType: !49, size: 64, align: 64)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !116, file: !115, line: 39, baseType: !49, size: 64, align: 64, offset: 64)
!120 = !DILocation(line: 140, column: 19, scope: !107)
!121 = !DILocation(line: 141, column: 33, scope: !107)
!122 = !DILocation(line: 141, column: 5, scope: !107)
!123 = !DILocation(line: 142, column: 14, scope: !107)
!124 = !DILocation(line: 142, column: 5, scope: !107)
!125 = !DILocation(line: 144, column: 11, scope: !126)
!126 = distinct !DILexicalBlock(scope: !103, file: !1, line: 144, column: 11)
!127 = !DILocation(line: 144, column: 22, scope: !126)
!128 = !DILocation(line: 144, column: 11, scope: !103)
!129 = !DILocalVariable(name: "x", scope: !130, file: !1, line: 145, type: !108)
!130 = distinct !DILexicalBlock(scope: !126, file: !1, line: 144, column: 30)
!131 = !DILocation(line: 145, column: 18, scope: !130)
!132 = !DILocation(line: 145, column: 27, scope: !130)
!133 = !DILocation(line: 145, column: 26, scope: !130)
!134 = !DILocation(line: 145, column: 38, scope: !130)
!135 = !DILocation(line: 145, column: 45, scope: !130)
!136 = !DILocalVariable(name: "c", scope: !130, file: !1, line: 146, type: !114)
!137 = !DILocation(line: 146, column: 19, scope: !130)
!138 = !DILocation(line: 147, column: 33, scope: !130)
!139 = !DILocation(line: 147, column: 5, scope: !130)
!140 = !DILocation(line: 148, column: 14, scope: !130)
!141 = !DILocation(line: 148, column: 5, scope: !130)
!142 = !DILocalVariable(name: "TEN_32", scope: !143, file: !1, line: 151, type: !108)
!143 = distinct !DILexicalBlock(scope: !126, file: !1, line: 150, column: 8)
!144 = !DILocation(line: 151, column: 18, scope: !143)
!145 = !DILocalVariable(name: "p", scope: !143, file: !1, line: 152, type: !108)
!146 = !DILocation(line: 152, column: 18, scope: !143)
!147 = !DILocation(line: 152, column: 26, scope: !143)
!148 = !DILocation(line: 152, column: 22, scope: !143)
!149 = !DILocalVariable(name: "x", scope: !143, file: !1, line: 153, type: !108)
!150 = !DILocation(line: 153, column: 18, scope: !143)
!151 = !DILocation(line: 153, column: 33, scope: !143)
!152 = !DILocation(line: 153, column: 32, scope: !143)
!153 = !DILocation(line: 153, column: 35, scope: !143)
!154 = !DILocalVariable(name: "c", scope: !143, file: !1, line: 154, type: !114)
!155 = !DILocation(line: 154, column: 19, scope: !143)
!156 = !DILocation(line: 155, column: 33, scope: !143)
!157 = !DILocation(line: 155, column: 5, scope: !143)
!158 = !DILocation(line: 156, column: 14, scope: !143)
!159 = !DILocation(line: 156, column: 20, scope: !143)
!160 = !DILocation(line: 156, column: 18, scope: !143)
!161 = !DILocation(line: 156, column: 5, scope: !143)
!162 = !DILocation(line: 158, column: 1, scope: !95)
!163 = distinct !DISubprogram(name: "cheb_eval_e", scope: !164, file: !164, line: 3, type: !165, isLocal: true, isDefinition: true, scopeLine: 6, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !98)
!164 = !DIFile(filename: "./cheb_eval.c", directory: "/fpcc/gsl-2.5/specfunc")
!165 = !DISubroutineType(types: !166)
!166 = !{!51, !167, !108, !169}
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64, align: 64)
!168 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64, align: 64)
!170 = !DILocalVariable(name: "cs", arg: 1, scope: !163, file: !164, line: 3, type: !167)
!171 = !DILocation(line: 3, column: 33, scope: !163)
!172 = !DILocalVariable(name: "x", arg: 2, scope: !163, file: !164, line: 4, type: !108)
!173 = !DILocation(line: 4, column: 26, scope: !163)
!174 = !DILocalVariable(name: "result", arg: 3, scope: !163, file: !164, line: 5, type: !169)
!175 = !DILocation(line: 5, column: 29, scope: !163)
!176 = !DILocalVariable(name: "j", scope: !163, file: !164, line: 7, type: !51)
!177 = !DILocation(line: 7, column: 7, scope: !163)
!178 = !DILocalVariable(name: "d", scope: !163, file: !164, line: 8, type: !49)
!179 = !DILocation(line: 8, column: 10, scope: !163)
!180 = !DILocalVariable(name: "dd", scope: !163, file: !164, line: 9, type: !49)
!181 = !DILocation(line: 9, column: 10, scope: !163)
!182 = !DILocalVariable(name: "y", scope: !163, file: !164, line: 11, type: !49)
!183 = !DILocation(line: 11, column: 10, scope: !163)
!184 = !DILocation(line: 11, column: 20, scope: !163)
!185 = !DILocation(line: 11, column: 19, scope: !163)
!186 = !DILocation(line: 11, column: 24, scope: !163)
!187 = !DILocation(line: 11, column: 28, scope: !163)
!188 = !DILocation(line: 11, column: 22, scope: !163)
!189 = !DILocation(line: 11, column: 32, scope: !163)
!190 = !DILocation(line: 11, column: 36, scope: !163)
!191 = !DILocation(line: 11, column: 30, scope: !163)
!192 = !DILocation(line: 11, column: 42, scope: !163)
!193 = !DILocation(line: 11, column: 46, scope: !163)
!194 = !DILocation(line: 11, column: 50, scope: !163)
!195 = !DILocation(line: 11, column: 54, scope: !163)
!196 = !DILocation(line: 11, column: 48, scope: !163)
!197 = !DILocation(line: 11, column: 39, scope: !163)
!198 = !DILocalVariable(name: "y2", scope: !163, file: !164, line: 12, type: !49)
!199 = !DILocation(line: 12, column: 10, scope: !163)
!200 = !DILocation(line: 12, column: 21, scope: !163)
!201 = !DILocation(line: 12, column: 19, scope: !163)
!202 = !DILocalVariable(name: "e", scope: !163, file: !164, line: 14, type: !49)
!203 = !DILocation(line: 14, column: 10, scope: !163)
!204 = !DILocation(line: 16, column: 11, scope: !205)
!205 = distinct !DILexicalBlock(scope: !163, file: !164, line: 16, column: 3)
!206 = !DILocation(line: 16, column: 15, scope: !205)
!207 = !DILocation(line: 16, column: 9, scope: !205)
!208 = !DILocation(line: 16, column: 7, scope: !205)
!209 = !DILocation(line: 16, column: 22, scope: !210)
!210 = !DILexicalBlockFile(scope: !211, file: !164, discriminator: 1)
!211 = distinct !DILexicalBlock(scope: !205, file: !164, line: 16, column: 3)
!212 = !DILocation(line: 16, column: 23, scope: !210)
!213 = !DILocation(line: 16, column: 3, scope: !210)
!214 = !DILocalVariable(name: "temp", scope: !215, file: !164, line: 17, type: !49)
!215 = distinct !DILexicalBlock(scope: !211, file: !164, line: 16, column: 33)
!216 = !DILocation(line: 17, column: 12, scope: !215)
!217 = !DILocation(line: 17, column: 19, scope: !215)
!218 = !DILocation(line: 18, column: 9, scope: !215)
!219 = !DILocation(line: 18, column: 12, scope: !215)
!220 = !DILocation(line: 18, column: 11, scope: !215)
!221 = !DILocation(line: 18, column: 16, scope: !215)
!222 = !DILocation(line: 18, column: 14, scope: !215)
!223 = !DILocation(line: 18, column: 27, scope: !215)
!224 = !DILocation(line: 18, column: 21, scope: !215)
!225 = !DILocation(line: 18, column: 25, scope: !215)
!226 = !DILocation(line: 18, column: 19, scope: !215)
!227 = !DILocation(line: 18, column: 7, scope: !215)
!228 = !DILocation(line: 19, column: 15, scope: !215)
!229 = !DILocation(line: 19, column: 18, scope: !215)
!230 = !DILocation(line: 19, column: 17, scope: !215)
!231 = !DILocation(line: 19, column: 10, scope: !215)
!232 = !DILocation(line: 19, column: 31, scope: !215)
!233 = !DILocation(line: 19, column: 26, scope: !234)
!234 = !DILexicalBlockFile(scope: !215, file: !164, discriminator: 1)
!235 = !DILocation(line: 19, column: 24, scope: !215)
!236 = !DILocation(line: 19, column: 48, scope: !215)
!237 = !DILocation(line: 19, column: 42, scope: !215)
!238 = !DILocation(line: 19, column: 46, scope: !215)
!239 = !DILocation(line: 19, column: 37, scope: !240)
!240 = !DILexicalBlockFile(scope: !215, file: !164, discriminator: 2)
!241 = !DILocation(line: 19, column: 35, scope: !215)
!242 = !DILocation(line: 19, column: 7, scope: !215)
!243 = !DILocation(line: 20, column: 10, scope: !215)
!244 = !DILocation(line: 20, column: 8, scope: !215)
!245 = !DILocation(line: 21, column: 3, scope: !215)
!246 = !DILocation(line: 16, column: 29, scope: !247)
!247 = !DILexicalBlockFile(scope: !211, file: !164, discriminator: 2)
!248 = !DILocation(line: 16, column: 3, scope: !247)
!249 = distinct !{!249, !250}
!250 = !DILocation(line: 16, column: 3, scope: !163)
!251 = !DILocalVariable(name: "temp", scope: !252, file: !164, line: 24, type: !49)
!252 = distinct !DILexicalBlock(scope: !163, file: !164, line: 23, column: 3)
!253 = !DILocation(line: 24, column: 12, scope: !252)
!254 = !DILocation(line: 24, column: 19, scope: !252)
!255 = !DILocation(line: 25, column: 9, scope: !252)
!256 = !DILocation(line: 25, column: 11, scope: !252)
!257 = !DILocation(line: 25, column: 10, scope: !252)
!258 = !DILocation(line: 25, column: 15, scope: !252)
!259 = !DILocation(line: 25, column: 13, scope: !252)
!260 = !DILocation(line: 25, column: 26, scope: !252)
!261 = !DILocation(line: 25, column: 30, scope: !252)
!262 = !DILocation(line: 25, column: 24, scope: !252)
!263 = !DILocation(line: 25, column: 18, scope: !252)
!264 = !DILocation(line: 25, column: 7, scope: !252)
!265 = !DILocation(line: 26, column: 15, scope: !252)
!266 = !DILocation(line: 26, column: 17, scope: !252)
!267 = !DILocation(line: 26, column: 16, scope: !252)
!268 = !DILocation(line: 26, column: 10, scope: !252)
!269 = !DILocation(line: 26, column: 30, scope: !252)
!270 = !DILocation(line: 26, column: 25, scope: !271)
!271 = !DILexicalBlockFile(scope: !252, file: !164, discriminator: 1)
!272 = !DILocation(line: 26, column: 23, scope: !252)
!273 = !DILocation(line: 26, column: 47, scope: !252)
!274 = !DILocation(line: 26, column: 51, scope: !252)
!275 = !DILocation(line: 26, column: 42, scope: !276)
!276 = !DILexicalBlockFile(scope: !252, file: !164, discriminator: 2)
!277 = !DILocation(line: 26, column: 40, scope: !252)
!278 = !DILocation(line: 26, column: 34, scope: !252)
!279 = !DILocation(line: 26, column: 7, scope: !252)
!280 = !DILocation(line: 29, column: 17, scope: !163)
!281 = !DILocation(line: 29, column: 3, scope: !163)
!282 = !DILocation(line: 29, column: 11, scope: !163)
!283 = !DILocation(line: 29, column: 15, scope: !163)
!284 = !DILocation(line: 30, column: 35, scope: !163)
!285 = !DILocation(line: 30, column: 33, scope: !163)
!286 = !DILocation(line: 30, column: 50, scope: !163)
!287 = !DILocation(line: 30, column: 54, scope: !163)
!288 = !DILocation(line: 30, column: 44, scope: !163)
!289 = !DILocation(line: 30, column: 48, scope: !163)
!290 = !DILocation(line: 30, column: 39, scope: !163)
!291 = !DILocation(line: 30, column: 37, scope: !163)
!292 = !DILocation(line: 30, column: 3, scope: !163)
!293 = !DILocation(line: 30, column: 11, scope: !163)
!294 = !DILocation(line: 30, column: 15, scope: !163)
!295 = !DILocation(line: 32, column: 3, scope: !163)
!296 = distinct !DISubprogram(name: "gsl_sf_bessel_Jnu_asymp_Olver_e", scope: !1, file: !1, line: 842, type: !297, isLocal: false, isDefinition: true, scopeLine: 843, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !98)
!297 = !DISubroutineType(types: !298)
!298 = !{!51, !49, !49, !169}
!299 = !DILocalVariable(name: "nu", arg: 1, scope: !296, file: !1, line: 842, type: !49)
!300 = !DILocation(line: 842, column: 44, scope: !296)
!301 = !DILocalVariable(name: "x", arg: 2, scope: !296, file: !1, line: 842, type: !49)
!302 = !DILocation(line: 842, column: 55, scope: !296)
!303 = !DILocalVariable(name: "result", arg: 3, scope: !296, file: !1, line: 842, type: !169)
!304 = !DILocation(line: 842, column: 74, scope: !296)
!305 = !DILocation(line: 846, column: 6, scope: !306)
!306 = distinct !DILexicalBlock(scope: !296, file: !1, line: 846, column: 6)
!307 = !DILocation(line: 846, column: 8, scope: !306)
!308 = !DILocation(line: 846, column: 15, scope: !306)
!309 = !DILocation(line: 846, column: 18, scope: !310)
!310 = !DILexicalBlockFile(scope: !306, file: !1, discriminator: 1)
!311 = !DILocation(line: 846, column: 21, scope: !310)
!312 = !DILocation(line: 846, column: 6, scope: !310)
!313 = !DILocation(line: 847, column: 5, scope: !314)
!314 = distinct !DILexicalBlock(scope: !306, file: !1, line: 846, column: 29)
!315 = distinct !{!315, !313}
!316 = !DILocation(line: 847, column: 5, scope: !317)
!317 = !DILexicalBlockFile(scope: !318, file: !1, discriminator: 1)
!318 = distinct !DILexicalBlock(scope: !314, file: !1, line: 847, column: 5)
!319 = distinct !{!319, !320}
!320 = !DILocation(line: 847, column: 5, scope: !318)
!321 = !DILocation(line: 847, column: 5, scope: !322)
!322 = !DILexicalBlockFile(scope: !323, file: !1, discriminator: 2)
!323 = distinct !DILexicalBlock(scope: !318, file: !1, line: 847, column: 5)
!324 = !DILocation(line: 847, column: 5, scope: !325)
!325 = !DILexicalBlockFile(scope: !318, file: !1, discriminator: 3)
!326 = !DILocation(line: 848, column: 3, scope: !314)
!327 = !DILocalVariable(name: "zeta", scope: !328, file: !1, line: 850, type: !49)
!328 = distinct !DILexicalBlock(scope: !306, file: !1, line: 849, column: 8)
!329 = !DILocation(line: 850, column: 12, scope: !328)
!330 = !DILocalVariable(name: "abs_zeta", scope: !328, file: !1, line: 850, type: !49)
!331 = !DILocation(line: 850, column: 18, scope: !328)
!332 = !DILocalVariable(name: "arg", scope: !328, file: !1, line: 851, type: !49)
!333 = !DILocation(line: 851, column: 12, scope: !328)
!334 = !DILocalVariable(name: "pre", scope: !328, file: !1, line: 852, type: !49)
!335 = !DILocation(line: 852, column: 12, scope: !328)
!336 = !DILocalVariable(name: "asum", scope: !328, file: !1, line: 853, type: !49)
!337 = !DILocation(line: 853, column: 12, scope: !328)
!338 = !DILocalVariable(name: "bsum", scope: !328, file: !1, line: 853, type: !49)
!339 = !DILocation(line: 853, column: 18, scope: !328)
!340 = !DILocalVariable(name: "asum_err", scope: !328, file: !1, line: 853, type: !49)
!341 = !DILocation(line: 853, column: 24, scope: !328)
!342 = !DILocalVariable(name: "ai", scope: !328, file: !1, line: 854, type: !114)
!343 = !DILocation(line: 854, column: 19, scope: !328)
!344 = !DILocalVariable(name: "aip", scope: !328, file: !1, line: 855, type: !114)
!345 = !DILocation(line: 855, column: 19, scope: !328)
!346 = !DILocalVariable(name: "z", scope: !328, file: !1, line: 856, type: !49)
!347 = !DILocation(line: 856, column: 12, scope: !328)
!348 = !DILocation(line: 856, column: 16, scope: !328)
!349 = !DILocation(line: 856, column: 18, scope: !328)
!350 = !DILocation(line: 856, column: 17, scope: !328)
!351 = !DILocalVariable(name: "crnu", scope: !328, file: !1, line: 857, type: !49)
!352 = !DILocation(line: 857, column: 12, scope: !328)
!353 = !DILocation(line: 857, column: 23, scope: !328)
!354 = !DILocation(line: 857, column: 19, scope: !328)
!355 = !DILocalVariable(name: "nu3", scope: !328, file: !1, line: 858, type: !49)
!356 = !DILocation(line: 858, column: 12, scope: !328)
!357 = !DILocation(line: 858, column: 19, scope: !328)
!358 = !DILocation(line: 858, column: 22, scope: !328)
!359 = !DILocation(line: 858, column: 21, scope: !328)
!360 = !DILocation(line: 858, column: 25, scope: !328)
!361 = !DILocation(line: 858, column: 24, scope: !328)
!362 = !DILocalVariable(name: "nu11", scope: !328, file: !1, line: 859, type: !49)
!363 = !DILocation(line: 859, column: 12, scope: !328)
!364 = !DILocation(line: 859, column: 19, scope: !328)
!365 = !DILocation(line: 859, column: 23, scope: !328)
!366 = !DILocation(line: 859, column: 22, scope: !328)
!367 = !DILocation(line: 859, column: 27, scope: !328)
!368 = !DILocation(line: 859, column: 26, scope: !328)
!369 = !DILocation(line: 859, column: 31, scope: !328)
!370 = !DILocation(line: 859, column: 30, scope: !328)
!371 = !DILocation(line: 859, column: 34, scope: !328)
!372 = !DILocation(line: 859, column: 33, scope: !328)
!373 = !DILocalVariable(name: "stat_a", scope: !328, file: !1, line: 860, type: !51)
!374 = !DILocation(line: 860, column: 9, scope: !328)
!375 = !DILocalVariable(name: "stat_ap", scope: !328, file: !1, line: 860, type: !51)
!376 = !DILocation(line: 860, column: 17, scope: !328)
!377 = !DILocation(line: 862, column: 17, scope: !378)
!378 = distinct !DILexicalBlock(scope: !328, file: !1, line: 862, column: 8)
!379 = !DILocation(line: 862, column: 16, scope: !378)
!380 = !DILocation(line: 862, column: 8, scope: !378)
!381 = !DILocation(line: 862, column: 20, scope: !378)
!382 = !DILocation(line: 862, column: 8, scope: !328)
!383 = !DILocalVariable(name: "a", scope: !384, file: !1, line: 863, type: !108)
!384 = distinct !DILexicalBlock(scope: !378, file: !1, line: 862, column: 28)
!385 = !DILocation(line: 863, column: 20, scope: !384)
!386 = !DILocation(line: 863, column: 28, scope: !384)
!387 = !DILocation(line: 863, column: 27, scope: !384)
!388 = !DILocalVariable(name: "c0", scope: !384, file: !1, line: 864, type: !108)
!389 = !DILocation(line: 864, column: 20, scope: !384)
!390 = !DILocalVariable(name: "c1", scope: !384, file: !1, line: 865, type: !108)
!391 = !DILocation(line: 865, column: 20, scope: !384)
!392 = !DILocalVariable(name: "c2", scope: !384, file: !1, line: 866, type: !108)
!393 = !DILocation(line: 866, column: 20, scope: !384)
!394 = !DILocalVariable(name: "c3", scope: !384, file: !1, line: 867, type: !108)
!395 = !DILocation(line: 867, column: 20, scope: !384)
!396 = !DILocalVariable(name: "c4", scope: !384, file: !1, line: 868, type: !108)
!397 = !DILocation(line: 868, column: 20, scope: !384)
!398 = !DILocalVariable(name: "c5", scope: !384, file: !1, line: 869, type: !108)
!399 = !DILocation(line: 869, column: 20, scope: !384)
!400 = !DILocalVariable(name: "c6", scope: !384, file: !1, line: 870, type: !108)
!401 = !DILocation(line: 870, column: 20, scope: !384)
!402 = !DILocalVariable(name: "c7", scope: !384, file: !1, line: 871, type: !108)
!403 = !DILocation(line: 871, column: 20, scope: !384)
!404 = !DILocation(line: 872, column: 18, scope: !384)
!405 = !DILocation(line: 872, column: 26, scope: !384)
!406 = !DILocation(line: 872, column: 34, scope: !384)
!407 = !DILocation(line: 872, column: 42, scope: !384)
!408 = !DILocation(line: 872, column: 50, scope: !384)
!409 = !DILocation(line: 872, column: 58, scope: !384)
!410 = !DILocation(line: 872, column: 66, scope: !384)
!411 = !DILocation(line: 872, column: 67, scope: !384)
!412 = !DILocation(line: 872, column: 64, scope: !384)
!413 = !DILocation(line: 872, column: 59, scope: !384)
!414 = !DILocation(line: 872, column: 56, scope: !384)
!415 = !DILocation(line: 872, column: 51, scope: !384)
!416 = !DILocation(line: 872, column: 48, scope: !384)
!417 = !DILocation(line: 872, column: 43, scope: !384)
!418 = !DILocation(line: 872, column: 40, scope: !384)
!419 = !DILocation(line: 872, column: 35, scope: !384)
!420 = !DILocation(line: 872, column: 32, scope: !384)
!421 = !DILocation(line: 872, column: 27, scope: !384)
!422 = !DILocation(line: 872, column: 24, scope: !384)
!423 = !DILocation(line: 872, column: 19, scope: !384)
!424 = !DILocation(line: 872, column: 16, scope: !384)
!425 = !DILocation(line: 872, column: 11, scope: !384)
!426 = !DILocation(line: 873, column: 14, scope: !384)
!427 = !DILocation(line: 873, column: 18, scope: !384)
!428 = !DILocation(line: 873, column: 16, scope: !384)
!429 = !DILocation(line: 873, column: 12, scope: !384)
!430 = !DILocation(line: 874, column: 28, scope: !384)
!431 = !DILocation(line: 874, column: 37, scope: !384)
!432 = !DILocation(line: 874, column: 36, scope: !384)
!433 = !DILocation(line: 874, column: 31, scope: !384)
!434 = !DILocation(line: 874, column: 23, scope: !384)
!435 = !DILocation(line: 874, column: 22, scope: !384)
!436 = !DILocation(line: 874, column: 14, scope: !437)
!437 = !DILexicalBlockFile(scope: !384, file: !1, discriminator: 1)
!438 = !DILocation(line: 874, column: 12, scope: !384)
!439 = !DILocation(line: 875, column: 23, scope: !384)
!440 = !DILocation(line: 875, column: 18, scope: !384)
!441 = !DILocation(line: 875, column: 16, scope: !384)
!442 = !DILocation(line: 876, column: 5, scope: !384)
!443 = !DILocation(line: 877, column: 13, scope: !444)
!444 = distinct !DILexicalBlock(scope: !378, file: !1, line: 877, column: 13)
!445 = !DILocation(line: 877, column: 15, scope: !444)
!446 = !DILocation(line: 877, column: 13, scope: !378)
!447 = !DILocalVariable(name: "rt", scope: !448, file: !1, line: 878, type: !49)
!448 = distinct !DILexicalBlock(scope: !444, file: !1, line: 877, column: 22)
!449 = !DILocation(line: 878, column: 14, scope: !448)
!450 = !DILocation(line: 878, column: 32, scope: !448)
!451 = !DILocation(line: 878, column: 34, scope: !448)
!452 = !DILocation(line: 878, column: 33, scope: !448)
!453 = !DILocation(line: 878, column: 30, scope: !448)
!454 = !DILocation(line: 878, column: 21, scope: !448)
!455 = !DILocation(line: 879, column: 36, scope: !448)
!456 = !DILocation(line: 879, column: 35, scope: !448)
!457 = !DILocation(line: 879, column: 40, scope: !448)
!458 = !DILocation(line: 879, column: 39, scope: !448)
!459 = !DILocation(line: 879, column: 27, scope: !448)
!460 = !DILocation(line: 879, column: 45, scope: !448)
!461 = !DILocation(line: 879, column: 43, scope: !448)
!462 = !DILocation(line: 879, column: 25, scope: !448)
!463 = !DILocation(line: 879, column: 18, scope: !464)
!464 = !DILexicalBlockFile(scope: !448, file: !1, discriminator: 1)
!465 = !DILocation(line: 879, column: 16, scope: !448)
!466 = !DILocation(line: 880, column: 14, scope: !448)
!467 = !DILocation(line: 880, column: 12, scope: !448)
!468 = !DILocation(line: 881, column: 28, scope: !448)
!469 = !DILocation(line: 881, column: 38, scope: !448)
!470 = !DILocation(line: 881, column: 41, scope: !448)
!471 = !DILocation(line: 881, column: 40, scope: !448)
!472 = !DILocation(line: 881, column: 36, scope: !448)
!473 = !DILocation(line: 881, column: 23, scope: !448)
!474 = !DILocation(line: 881, column: 22, scope: !448)
!475 = !DILocation(line: 881, column: 14, scope: !464)
!476 = !DILocation(line: 881, column: 12, scope: !448)
!477 = !DILocation(line: 882, column: 5, scope: !448)
!478 = !DILocalVariable(name: "rt", scope: !479, file: !1, line: 885, type: !49)
!479 = distinct !DILexicalBlock(scope: !444, file: !1, line: 883, column: 10)
!480 = !DILocation(line: 885, column: 14, scope: !479)
!481 = !DILocation(line: 885, column: 19, scope: !479)
!482 = !DILocation(line: 885, column: 39, scope: !479)
!483 = !DILocation(line: 885, column: 41, scope: !479)
!484 = !DILocation(line: 885, column: 40, scope: !479)
!485 = !DILocation(line: 885, column: 37, scope: !479)
!486 = !DILocation(line: 885, column: 32, scope: !479)
!487 = !DILocation(line: 885, column: 23, scope: !479)
!488 = !DILocation(line: 885, column: 21, scope: !479)
!489 = !DILocation(line: 886, column: 27, scope: !479)
!490 = !DILocation(line: 886, column: 41, scope: !479)
!491 = !DILocation(line: 886, column: 40, scope: !479)
!492 = !DILocation(line: 886, column: 32, scope: !479)
!493 = !DILocation(line: 886, column: 30, scope: !479)
!494 = !DILocation(line: 886, column: 25, scope: !479)
!495 = !DILocation(line: 886, column: 18, scope: !496)
!496 = !DILexicalBlockFile(scope: !479, file: !1, discriminator: 1)
!497 = !DILocation(line: 886, column: 16, scope: !479)
!498 = !DILocation(line: 887, column: 15, scope: !479)
!499 = !DILocation(line: 887, column: 14, scope: !479)
!500 = !DILocation(line: 887, column: 12, scope: !479)
!501 = !DILocation(line: 888, column: 28, scope: !479)
!502 = !DILocation(line: 888, column: 38, scope: !479)
!503 = !DILocation(line: 888, column: 41, scope: !479)
!504 = !DILocation(line: 888, column: 40, scope: !479)
!505 = !DILocation(line: 888, column: 36, scope: !479)
!506 = !DILocation(line: 888, column: 23, scope: !479)
!507 = !DILocation(line: 888, column: 22, scope: !479)
!508 = !DILocation(line: 888, column: 14, scope: !496)
!509 = !DILocation(line: 888, column: 12, scope: !479)
!510 = !DILocation(line: 891, column: 23, scope: !328)
!511 = !DILocation(line: 891, column: 27, scope: !328)
!512 = !DILocation(line: 891, column: 30, scope: !328)
!513 = !DILocation(line: 891, column: 12, scope: !328)
!514 = !DILocation(line: 891, column: 10, scope: !328)
!515 = !DILocation(line: 892, column: 23, scope: !328)
!516 = !DILocation(line: 892, column: 27, scope: !328)
!517 = !DILocation(line: 892, column: 30, scope: !328)
!518 = !DILocation(line: 892, column: 12, scope: !328)
!519 = !DILocation(line: 892, column: 10, scope: !328)
!520 = !DILocation(line: 894, column: 12, scope: !328)
!521 = !DILocation(line: 894, column: 17, scope: !328)
!522 = !DILocation(line: 894, column: 16, scope: !328)
!523 = !DILocation(line: 894, column: 24, scope: !328)
!524 = !DILocation(line: 894, column: 22, scope: !328)
!525 = !DILocation(line: 894, column: 10, scope: !328)
!526 = !DILocation(line: 895, column: 32, scope: !328)
!527 = !DILocation(line: 895, column: 15, scope: !328)
!528 = !DILocation(line: 895, column: 13, scope: !328)
!529 = !DILocation(line: 896, column: 38, scope: !328)
!530 = !DILocation(line: 896, column: 15, scope: !328)
!531 = !DILocation(line: 896, column: 13, scope: !328)
!532 = !DILocation(line: 898, column: 20, scope: !328)
!533 = !DILocation(line: 898, column: 30, scope: !328)
!534 = !DILocation(line: 898, column: 34, scope: !328)
!535 = !DILocation(line: 898, column: 33, scope: !328)
!536 = !DILocation(line: 898, column: 39, scope: !328)
!537 = !DILocation(line: 898, column: 38, scope: !328)
!538 = !DILocation(line: 898, column: 50, scope: !328)
!539 = !DILocation(line: 898, column: 54, scope: !328)
!540 = !DILocation(line: 898, column: 53, scope: !328)
!541 = !DILocation(line: 898, column: 60, scope: !328)
!542 = !DILocation(line: 898, column: 63, scope: !328)
!543 = !DILocation(line: 898, column: 62, scope: !328)
!544 = !DILocation(line: 898, column: 68, scope: !328)
!545 = !DILocation(line: 898, column: 67, scope: !328)
!546 = !DILocation(line: 898, column: 58, scope: !328)
!547 = !DILocation(line: 898, column: 44, scope: !328)
!548 = !DILocation(line: 898, column: 24, scope: !328)
!549 = !DILocation(line: 898, column: 5, scope: !328)
!550 = !DILocation(line: 898, column: 13, scope: !328)
!551 = !DILocation(line: 898, column: 18, scope: !328)
!552 = !DILocation(line: 899, column: 20, scope: !328)
!553 = !DILocation(line: 899, column: 30, scope: !328)
!554 = !DILocation(line: 899, column: 41, scope: !328)
!555 = !DILocation(line: 899, column: 46, scope: !328)
!556 = !DILocation(line: 899, column: 45, scope: !328)
!557 = !DILocation(line: 899, column: 36, scope: !328)
!558 = !DILocation(line: 899, column: 34, scope: !328)
!559 = !DILocation(line: 899, column: 24, scope: !328)
!560 = !DILocation(line: 899, column: 5, scope: !328)
!561 = !DILocation(line: 899, column: 13, scope: !328)
!562 = !DILocation(line: 899, column: 18, scope: !328)
!563 = !DILocation(line: 900, column: 20, scope: !328)
!564 = !DILocation(line: 900, column: 34, scope: !328)
!565 = !DILocation(line: 900, column: 26, scope: !328)
!566 = !DILocation(line: 900, column: 24, scope: !328)
!567 = !DILocation(line: 900, column: 41, scope: !328)
!568 = !DILocation(line: 900, column: 39, scope: !328)
!569 = !DILocation(line: 900, column: 52, scope: !328)
!570 = !DILocation(line: 900, column: 50, scope: !328)
!571 = !DILocation(line: 900, column: 5, scope: !328)
!572 = !DILocation(line: 900, column: 13, scope: !328)
!573 = !DILocation(line: 900, column: 17, scope: !328)
!574 = !DILocation(line: 901, column: 20, scope: !328)
!575 = !DILocation(line: 901, column: 34, scope: !328)
!576 = !DILocation(line: 901, column: 40, scope: !328)
!577 = !DILocation(line: 901, column: 38, scope: !328)
!578 = !DILocation(line: 901, column: 26, scope: !328)
!579 = !DILocation(line: 901, column: 24, scope: !328)
!580 = !DILocation(line: 901, column: 49, scope: !328)
!581 = !DILocation(line: 901, column: 54, scope: !328)
!582 = !DILocation(line: 901, column: 53, scope: !328)
!583 = !DILocation(line: 901, column: 46, scope: !328)
!584 = !DILocation(line: 901, column: 5, scope: !328)
!585 = !DILocation(line: 901, column: 13, scope: !328)
!586 = !DILocation(line: 901, column: 17, scope: !328)
!587 = !DILocation(line: 902, column: 49, scope: !328)
!588 = !DILocation(line: 902, column: 57, scope: !328)
!589 = !DILocation(line: 902, column: 44, scope: !328)
!590 = !DILocation(line: 902, column: 42, scope: !328)
!591 = !DILocation(line: 902, column: 5, scope: !328)
!592 = !DILocation(line: 902, column: 13, scope: !328)
!593 = !DILocation(line: 902, column: 17, scope: !328)
!594 = !DILocation(line: 904, column: 12, scope: !328)
!595 = !DILocation(line: 904, column: 12, scope: !596)
!596 = !DILexicalBlockFile(scope: !328, file: !1, discriminator: 1)
!597 = !DILocation(line: 904, column: 12, scope: !598)
!598 = !DILexicalBlockFile(scope: !328, file: !1, discriminator: 2)
!599 = !DILocation(line: 904, column: 12, scope: !600)
!600 = !DILexicalBlockFile(scope: !328, file: !1, discriminator: 3)
!601 = !DILocation(line: 904, column: 12, scope: !602)
!602 = !DILexicalBlockFile(scope: !328, file: !1, discriminator: 4)
!603 = !DILocation(line: 904, column: 12, scope: !604)
!604 = !DILexicalBlockFile(scope: !328, file: !1, discriminator: 5)
!605 = !DILocation(line: 904, column: 12, scope: !606)
!606 = !DILexicalBlockFile(scope: !328, file: !1, discriminator: 6)
!607 = !DILocation(line: 904, column: 5, scope: !606)
!608 = !DILocation(line: 906, column: 1, scope: !296)
!609 = distinct !DISubprogram(name: "olver_Asum", scope: !1, file: !1, line: 809, type: !610, isLocal: true, isDefinition: true, scopeLine: 810, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !98)
!610 = !DISubroutineType(types: !611)
!611 = !{!49, !49, !49, !49, !48}
!612 = !DILocalVariable(name: "nu", arg: 1, scope: !609, file: !1, line: 809, type: !49)
!613 = !DILocation(line: 809, column: 33, scope: !609)
!614 = !DILocalVariable(name: "z", arg: 2, scope: !609, file: !1, line: 809, type: !49)
!615 = !DILocation(line: 809, column: 44, scope: !609)
!616 = !DILocalVariable(name: "abs_zeta", arg: 3, scope: !609, file: !1, line: 809, type: !49)
!617 = !DILocation(line: 809, column: 54, scope: !609)
!618 = !DILocalVariable(name: "err", arg: 4, scope: !609, file: !1, line: 809, type: !48)
!619 = !DILocation(line: 809, column: 73, scope: !609)
!620 = !DILocalVariable(name: "nu2", scope: !609, file: !1, line: 811, type: !49)
!621 = !DILocation(line: 811, column: 10, scope: !609)
!622 = !DILocation(line: 811, column: 16, scope: !609)
!623 = !DILocation(line: 811, column: 19, scope: !609)
!624 = !DILocation(line: 811, column: 18, scope: !609)
!625 = !DILocalVariable(name: "A1_err", scope: !609, file: !1, line: 812, type: !49)
!626 = !DILocation(line: 812, column: 10, scope: !609)
!627 = !DILocalVariable(name: "A1", scope: !609, file: !1, line: 813, type: !49)
!628 = !DILocation(line: 813, column: 10, scope: !609)
!629 = !DILocation(line: 813, column: 24, scope: !609)
!630 = !DILocation(line: 813, column: 27, scope: !609)
!631 = !DILocation(line: 813, column: 15, scope: !609)
!632 = !DILocalVariable(name: "A2", scope: !609, file: !1, line: 814, type: !49)
!633 = !DILocation(line: 814, column: 10, scope: !609)
!634 = !DILocation(line: 814, column: 24, scope: !609)
!635 = !DILocation(line: 814, column: 27, scope: !609)
!636 = !DILocation(line: 814, column: 15, scope: !609)
!637 = !DILocalVariable(name: "A3", scope: !609, file: !1, line: 815, type: !49)
!638 = !DILocation(line: 815, column: 10, scope: !609)
!639 = !DILocation(line: 815, column: 24, scope: !609)
!640 = !DILocation(line: 815, column: 27, scope: !609)
!641 = !DILocation(line: 815, column: 15, scope: !609)
!642 = !DILocalVariable(name: "A4", scope: !609, file: !1, line: 816, type: !49)
!643 = !DILocation(line: 816, column: 10, scope: !609)
!644 = !DILocation(line: 816, column: 24, scope: !609)
!645 = !DILocation(line: 816, column: 27, scope: !609)
!646 = !DILocation(line: 816, column: 15, scope: !609)
!647 = !DILocation(line: 817, column: 10, scope: !609)
!648 = !DILocation(line: 817, column: 17, scope: !609)
!649 = !DILocation(line: 817, column: 16, scope: !609)
!650 = !DILocation(line: 817, column: 21, scope: !609)
!651 = !DILocation(line: 817, column: 4, scope: !609)
!652 = !DILocation(line: 817, column: 8, scope: !609)
!653 = !DILocation(line: 818, column: 16, scope: !609)
!654 = !DILocation(line: 818, column: 19, scope: !609)
!655 = !DILocation(line: 818, column: 18, scope: !609)
!656 = !DILocation(line: 818, column: 14, scope: !609)
!657 = !DILocation(line: 818, column: 25, scope: !609)
!658 = !DILocation(line: 818, column: 29, scope: !609)
!659 = !DILocation(line: 818, column: 33, scope: !609)
!660 = !DILocation(line: 818, column: 32, scope: !609)
!661 = !DILocation(line: 818, column: 27, scope: !609)
!662 = !DILocation(line: 818, column: 23, scope: !609)
!663 = !DILocation(line: 818, column: 40, scope: !609)
!664 = !DILocation(line: 818, column: 44, scope: !609)
!665 = !DILocation(line: 818, column: 48, scope: !609)
!666 = !DILocation(line: 818, column: 47, scope: !609)
!667 = !DILocation(line: 818, column: 52, scope: !609)
!668 = !DILocation(line: 818, column: 51, scope: !609)
!669 = !DILocation(line: 818, column: 42, scope: !609)
!670 = !DILocation(line: 818, column: 38, scope: !609)
!671 = !DILocation(line: 818, column: 59, scope: !609)
!672 = !DILocation(line: 818, column: 63, scope: !609)
!673 = !DILocation(line: 818, column: 67, scope: !609)
!674 = !DILocation(line: 818, column: 66, scope: !609)
!675 = !DILocation(line: 818, column: 71, scope: !609)
!676 = !DILocation(line: 818, column: 70, scope: !609)
!677 = !DILocation(line: 818, column: 75, scope: !609)
!678 = !DILocation(line: 818, column: 74, scope: !609)
!679 = !DILocation(line: 818, column: 61, scope: !609)
!680 = !DILocation(line: 818, column: 57, scope: !609)
!681 = !DILocation(line: 818, column: 3, scope: !609)
!682 = distinct !DISubprogram(name: "olver_Bsum", scope: !1, file: !1, line: 822, type: !683, isLocal: true, isDefinition: true, scopeLine: 823, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !98)
!683 = !DISubroutineType(types: !684)
!684 = !{!49, !49, !49, !49}
!685 = !DILocalVariable(name: "nu", arg: 1, scope: !682, file: !1, line: 822, type: !49)
!686 = !DILocation(line: 822, column: 33, scope: !682)
!687 = !DILocalVariable(name: "z", arg: 2, scope: !682, file: !1, line: 822, type: !49)
!688 = !DILocation(line: 822, column: 44, scope: !682)
!689 = !DILocalVariable(name: "abs_zeta", arg: 3, scope: !682, file: !1, line: 822, type: !49)
!690 = !DILocation(line: 822, column: 54, scope: !682)
!691 = !DILocalVariable(name: "nu2", scope: !682, file: !1, line: 824, type: !49)
!692 = !DILocation(line: 824, column: 10, scope: !682)
!693 = !DILocation(line: 824, column: 16, scope: !682)
!694 = !DILocation(line: 824, column: 19, scope: !682)
!695 = !DILocation(line: 824, column: 18, scope: !682)
!696 = !DILocalVariable(name: "B0", scope: !682, file: !1, line: 825, type: !49)
!697 = !DILocation(line: 825, column: 10, scope: !682)
!698 = !DILocation(line: 825, column: 24, scope: !682)
!699 = !DILocation(line: 825, column: 27, scope: !682)
!700 = !DILocation(line: 825, column: 15, scope: !682)
!701 = !DILocalVariable(name: "B1", scope: !682, file: !1, line: 826, type: !49)
!702 = !DILocation(line: 826, column: 10, scope: !682)
!703 = !DILocation(line: 826, column: 24, scope: !682)
!704 = !DILocation(line: 826, column: 27, scope: !682)
!705 = !DILocation(line: 826, column: 15, scope: !682)
!706 = !DILocalVariable(name: "B2", scope: !682, file: !1, line: 827, type: !49)
!707 = !DILocation(line: 827, column: 10, scope: !682)
!708 = !DILocation(line: 827, column: 24, scope: !682)
!709 = !DILocation(line: 827, column: 27, scope: !682)
!710 = !DILocation(line: 827, column: 15, scope: !682)
!711 = !DILocalVariable(name: "B3", scope: !682, file: !1, line: 828, type: !49)
!712 = !DILocation(line: 828, column: 10, scope: !682)
!713 = !DILocation(line: 828, column: 24, scope: !682)
!714 = !DILocation(line: 828, column: 27, scope: !682)
!715 = !DILocation(line: 828, column: 15, scope: !682)
!716 = !DILocation(line: 829, column: 10, scope: !682)
!717 = !DILocation(line: 829, column: 15, scope: !682)
!718 = !DILocation(line: 829, column: 18, scope: !682)
!719 = !DILocation(line: 829, column: 17, scope: !682)
!720 = !DILocation(line: 829, column: 13, scope: !682)
!721 = !DILocation(line: 829, column: 24, scope: !682)
!722 = !DILocation(line: 829, column: 28, scope: !682)
!723 = !DILocation(line: 829, column: 32, scope: !682)
!724 = !DILocation(line: 829, column: 31, scope: !682)
!725 = !DILocation(line: 829, column: 26, scope: !682)
!726 = !DILocation(line: 829, column: 22, scope: !682)
!727 = !DILocation(line: 829, column: 39, scope: !682)
!728 = !DILocation(line: 829, column: 43, scope: !682)
!729 = !DILocation(line: 829, column: 47, scope: !682)
!730 = !DILocation(line: 829, column: 46, scope: !682)
!731 = !DILocation(line: 829, column: 51, scope: !682)
!732 = !DILocation(line: 829, column: 50, scope: !682)
!733 = !DILocation(line: 829, column: 55, scope: !682)
!734 = !DILocation(line: 829, column: 54, scope: !682)
!735 = !DILocation(line: 829, column: 41, scope: !682)
!736 = !DILocation(line: 829, column: 37, scope: !682)
!737 = !DILocation(line: 829, column: 3, scope: !682)
!738 = distinct !DISubprogram(name: "gsl_sf_bessel_Ynu_asymp_Olver_e", scope: !1, file: !1, line: 917, type: !297, isLocal: false, isDefinition: true, scopeLine: 918, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !98)
!739 = !DILocalVariable(name: "nu", arg: 1, scope: !738, file: !1, line: 917, type: !49)
!740 = !DILocation(line: 917, column: 44, scope: !738)
!741 = !DILocalVariable(name: "x", arg: 2, scope: !738, file: !1, line: 917, type: !49)
!742 = !DILocation(line: 917, column: 55, scope: !738)
!743 = !DILocalVariable(name: "result", arg: 3, scope: !738, file: !1, line: 917, type: !169)
!744 = !DILocation(line: 917, column: 74, scope: !738)
!745 = !DILocation(line: 921, column: 6, scope: !746)
!746 = distinct !DILexicalBlock(scope: !738, file: !1, line: 921, column: 6)
!747 = !DILocation(line: 921, column: 8, scope: !746)
!748 = !DILocation(line: 921, column: 15, scope: !746)
!749 = !DILocation(line: 921, column: 18, scope: !750)
!750 = !DILexicalBlockFile(scope: !746, file: !1, discriminator: 1)
!751 = !DILocation(line: 921, column: 21, scope: !750)
!752 = !DILocation(line: 921, column: 6, scope: !750)
!753 = !DILocation(line: 922, column: 5, scope: !754)
!754 = distinct !DILexicalBlock(scope: !746, file: !1, line: 921, column: 29)
!755 = distinct !{!755, !753}
!756 = !DILocation(line: 922, column: 5, scope: !757)
!757 = !DILexicalBlockFile(scope: !758, file: !1, discriminator: 1)
!758 = distinct !DILexicalBlock(scope: !754, file: !1, line: 922, column: 5)
!759 = distinct !{!759, !760}
!760 = !DILocation(line: 922, column: 5, scope: !758)
!761 = !DILocation(line: 922, column: 5, scope: !762)
!762 = !DILexicalBlockFile(scope: !763, file: !1, discriminator: 2)
!763 = distinct !DILexicalBlock(scope: !758, file: !1, line: 922, column: 5)
!764 = !DILocation(line: 922, column: 5, scope: !765)
!765 = !DILexicalBlockFile(scope: !758, file: !1, discriminator: 3)
!766 = !DILocation(line: 923, column: 3, scope: !754)
!767 = !DILocalVariable(name: "zeta", scope: !768, file: !1, line: 925, type: !49)
!768 = distinct !DILexicalBlock(scope: !746, file: !1, line: 924, column: 8)
!769 = !DILocation(line: 925, column: 12, scope: !768)
!770 = !DILocalVariable(name: "abs_zeta", scope: !768, file: !1, line: 925, type: !49)
!771 = !DILocation(line: 925, column: 18, scope: !768)
!772 = !DILocalVariable(name: "arg", scope: !768, file: !1, line: 926, type: !49)
!773 = !DILocation(line: 926, column: 12, scope: !768)
!774 = !DILocalVariable(name: "pre", scope: !768, file: !1, line: 927, type: !49)
!775 = !DILocation(line: 927, column: 12, scope: !768)
!776 = !DILocalVariable(name: "asum", scope: !768, file: !1, line: 928, type: !49)
!777 = !DILocation(line: 928, column: 12, scope: !768)
!778 = !DILocalVariable(name: "bsum", scope: !768, file: !1, line: 928, type: !49)
!779 = !DILocation(line: 928, column: 18, scope: !768)
!780 = !DILocalVariable(name: "asum_err", scope: !768, file: !1, line: 928, type: !49)
!781 = !DILocation(line: 928, column: 24, scope: !768)
!782 = !DILocalVariable(name: "bi", scope: !768, file: !1, line: 929, type: !114)
!783 = !DILocation(line: 929, column: 19, scope: !768)
!784 = !DILocalVariable(name: "bip", scope: !768, file: !1, line: 930, type: !114)
!785 = !DILocation(line: 930, column: 19, scope: !768)
!786 = !DILocalVariable(name: "z", scope: !768, file: !1, line: 931, type: !49)
!787 = !DILocation(line: 931, column: 12, scope: !768)
!788 = !DILocation(line: 931, column: 16, scope: !768)
!789 = !DILocation(line: 931, column: 18, scope: !768)
!790 = !DILocation(line: 931, column: 17, scope: !768)
!791 = !DILocalVariable(name: "crnu", scope: !768, file: !1, line: 932, type: !49)
!792 = !DILocation(line: 932, column: 12, scope: !768)
!793 = !DILocation(line: 932, column: 23, scope: !768)
!794 = !DILocation(line: 932, column: 19, scope: !768)
!795 = !DILocalVariable(name: "nu3", scope: !768, file: !1, line: 933, type: !49)
!796 = !DILocation(line: 933, column: 12, scope: !768)
!797 = !DILocation(line: 933, column: 19, scope: !768)
!798 = !DILocation(line: 933, column: 22, scope: !768)
!799 = !DILocation(line: 933, column: 21, scope: !768)
!800 = !DILocation(line: 933, column: 25, scope: !768)
!801 = !DILocation(line: 933, column: 24, scope: !768)
!802 = !DILocalVariable(name: "nu11", scope: !768, file: !1, line: 934, type: !49)
!803 = !DILocation(line: 934, column: 12, scope: !768)
!804 = !DILocation(line: 934, column: 19, scope: !768)
!805 = !DILocation(line: 934, column: 23, scope: !768)
!806 = !DILocation(line: 934, column: 22, scope: !768)
!807 = !DILocation(line: 934, column: 27, scope: !768)
!808 = !DILocation(line: 934, column: 26, scope: !768)
!809 = !DILocation(line: 934, column: 31, scope: !768)
!810 = !DILocation(line: 934, column: 30, scope: !768)
!811 = !DILocation(line: 934, column: 34, scope: !768)
!812 = !DILocation(line: 934, column: 33, scope: !768)
!813 = !DILocalVariable(name: "stat_b", scope: !768, file: !1, line: 935, type: !51)
!814 = !DILocation(line: 935, column: 9, scope: !768)
!815 = !DILocalVariable(name: "stat_d", scope: !768, file: !1, line: 935, type: !51)
!816 = !DILocation(line: 935, column: 17, scope: !768)
!817 = !DILocation(line: 937, column: 17, scope: !818)
!818 = distinct !DILexicalBlock(scope: !768, file: !1, line: 937, column: 8)
!819 = !DILocation(line: 937, column: 16, scope: !818)
!820 = !DILocation(line: 937, column: 8, scope: !818)
!821 = !DILocation(line: 937, column: 20, scope: !818)
!822 = !DILocation(line: 937, column: 8, scope: !768)
!823 = !DILocalVariable(name: "a", scope: !824, file: !1, line: 938, type: !108)
!824 = distinct !DILexicalBlock(scope: !818, file: !1, line: 937, column: 28)
!825 = !DILocation(line: 938, column: 20, scope: !824)
!826 = !DILocation(line: 938, column: 28, scope: !824)
!827 = !DILocation(line: 938, column: 27, scope: !824)
!828 = !DILocalVariable(name: "c0", scope: !824, file: !1, line: 939, type: !108)
!829 = !DILocation(line: 939, column: 20, scope: !824)
!830 = !DILocalVariable(name: "c1", scope: !824, file: !1, line: 940, type: !108)
!831 = !DILocation(line: 940, column: 20, scope: !824)
!832 = !DILocalVariable(name: "c2", scope: !824, file: !1, line: 941, type: !108)
!833 = !DILocation(line: 941, column: 20, scope: !824)
!834 = !DILocalVariable(name: "c3", scope: !824, file: !1, line: 942, type: !108)
!835 = !DILocation(line: 942, column: 20, scope: !824)
!836 = !DILocalVariable(name: "c4", scope: !824, file: !1, line: 943, type: !108)
!837 = !DILocation(line: 943, column: 20, scope: !824)
!838 = !DILocalVariable(name: "c5", scope: !824, file: !1, line: 944, type: !108)
!839 = !DILocation(line: 944, column: 20, scope: !824)
!840 = !DILocalVariable(name: "c6", scope: !824, file: !1, line: 945, type: !108)
!841 = !DILocation(line: 945, column: 20, scope: !824)
!842 = !DILocalVariable(name: "c7", scope: !824, file: !1, line: 946, type: !108)
!843 = !DILocation(line: 946, column: 20, scope: !824)
!844 = !DILocation(line: 947, column: 18, scope: !824)
!845 = !DILocation(line: 947, column: 26, scope: !824)
!846 = !DILocation(line: 947, column: 34, scope: !824)
!847 = !DILocation(line: 947, column: 42, scope: !824)
!848 = !DILocation(line: 947, column: 50, scope: !824)
!849 = !DILocation(line: 947, column: 58, scope: !824)
!850 = !DILocation(line: 947, column: 66, scope: !824)
!851 = !DILocation(line: 947, column: 67, scope: !824)
!852 = !DILocation(line: 947, column: 64, scope: !824)
!853 = !DILocation(line: 947, column: 59, scope: !824)
!854 = !DILocation(line: 947, column: 56, scope: !824)
!855 = !DILocation(line: 947, column: 51, scope: !824)
!856 = !DILocation(line: 947, column: 48, scope: !824)
!857 = !DILocation(line: 947, column: 43, scope: !824)
!858 = !DILocation(line: 947, column: 40, scope: !824)
!859 = !DILocation(line: 947, column: 35, scope: !824)
!860 = !DILocation(line: 947, column: 32, scope: !824)
!861 = !DILocation(line: 947, column: 27, scope: !824)
!862 = !DILocation(line: 947, column: 24, scope: !824)
!863 = !DILocation(line: 947, column: 19, scope: !824)
!864 = !DILocation(line: 947, column: 16, scope: !824)
!865 = !DILocation(line: 947, column: 11, scope: !824)
!866 = !DILocation(line: 948, column: 14, scope: !824)
!867 = !DILocation(line: 948, column: 18, scope: !824)
!868 = !DILocation(line: 948, column: 16, scope: !824)
!869 = !DILocation(line: 948, column: 12, scope: !824)
!870 = !DILocation(line: 949, column: 28, scope: !824)
!871 = !DILocation(line: 949, column: 37, scope: !824)
!872 = !DILocation(line: 949, column: 36, scope: !824)
!873 = !DILocation(line: 949, column: 31, scope: !824)
!874 = !DILocation(line: 949, column: 23, scope: !824)
!875 = !DILocation(line: 949, column: 22, scope: !824)
!876 = !DILocation(line: 949, column: 14, scope: !877)
!877 = !DILexicalBlockFile(scope: !824, file: !1, discriminator: 1)
!878 = !DILocation(line: 949, column: 12, scope: !824)
!879 = !DILocation(line: 950, column: 23, scope: !824)
!880 = !DILocation(line: 950, column: 18, scope: !824)
!881 = !DILocation(line: 950, column: 16, scope: !824)
!882 = !DILocation(line: 951, column: 5, scope: !824)
!883 = !DILocation(line: 952, column: 13, scope: !884)
!884 = distinct !DILexicalBlock(scope: !818, file: !1, line: 952, column: 13)
!885 = !DILocation(line: 952, column: 15, scope: !884)
!886 = !DILocation(line: 952, column: 13, scope: !818)
!887 = !DILocalVariable(name: "rt", scope: !888, file: !1, line: 953, type: !49)
!888 = distinct !DILexicalBlock(scope: !884, file: !1, line: 952, column: 22)
!889 = !DILocation(line: 953, column: 14, scope: !888)
!890 = !DILocation(line: 953, column: 32, scope: !888)
!891 = !DILocation(line: 953, column: 34, scope: !888)
!892 = !DILocation(line: 953, column: 33, scope: !888)
!893 = !DILocation(line: 953, column: 30, scope: !888)
!894 = !DILocation(line: 953, column: 21, scope: !888)
!895 = !DILocation(line: 954, column: 36, scope: !888)
!896 = !DILocation(line: 954, column: 35, scope: !888)
!897 = !DILocation(line: 954, column: 40, scope: !888)
!898 = !DILocation(line: 954, column: 39, scope: !888)
!899 = !DILocation(line: 954, column: 27, scope: !888)
!900 = !DILocation(line: 954, column: 45, scope: !888)
!901 = !DILocation(line: 954, column: 43, scope: !888)
!902 = !DILocation(line: 954, column: 25, scope: !888)
!903 = !DILocation(line: 954, column: 18, scope: !904)
!904 = !DILexicalBlockFile(scope: !888, file: !1, discriminator: 1)
!905 = !DILocation(line: 954, column: 16, scope: !888)
!906 = !DILocation(line: 955, column: 14, scope: !888)
!907 = !DILocation(line: 955, column: 12, scope: !888)
!908 = !DILocation(line: 956, column: 28, scope: !888)
!909 = !DILocation(line: 956, column: 38, scope: !888)
!910 = !DILocation(line: 956, column: 41, scope: !888)
!911 = !DILocation(line: 956, column: 40, scope: !888)
!912 = !DILocation(line: 956, column: 36, scope: !888)
!913 = !DILocation(line: 956, column: 23, scope: !888)
!914 = !DILocation(line: 956, column: 22, scope: !888)
!915 = !DILocation(line: 956, column: 14, scope: !904)
!916 = !DILocation(line: 956, column: 12, scope: !888)
!917 = !DILocation(line: 957, column: 5, scope: !888)
!918 = !DILocalVariable(name: "rt", scope: !919, file: !1, line: 960, type: !49)
!919 = distinct !DILexicalBlock(scope: !884, file: !1, line: 958, column: 10)
!920 = !DILocation(line: 960, column: 14, scope: !919)
!921 = !DILocation(line: 960, column: 19, scope: !919)
!922 = !DILocation(line: 960, column: 39, scope: !919)
!923 = !DILocation(line: 960, column: 41, scope: !919)
!924 = !DILocation(line: 960, column: 40, scope: !919)
!925 = !DILocation(line: 960, column: 37, scope: !919)
!926 = !DILocation(line: 960, column: 32, scope: !919)
!927 = !DILocation(line: 960, column: 23, scope: !919)
!928 = !DILocation(line: 960, column: 21, scope: !919)
!929 = !DILocalVariable(name: "ac", scope: !919, file: !1, line: 961, type: !49)
!930 = !DILocation(line: 961, column: 14, scope: !919)
!931 = !DILocation(line: 961, column: 28, scope: !919)
!932 = !DILocation(line: 961, column: 27, scope: !919)
!933 = !DILocation(line: 961, column: 19, scope: !919)
!934 = !DILocation(line: 962, column: 27, scope: !919)
!935 = !DILocation(line: 962, column: 32, scope: !919)
!936 = !DILocation(line: 962, column: 30, scope: !919)
!937 = !DILocation(line: 962, column: 25, scope: !919)
!938 = !DILocation(line: 962, column: 18, scope: !919)
!939 = !DILocation(line: 962, column: 16, scope: !919)
!940 = !DILocation(line: 963, column: 15, scope: !919)
!941 = !DILocation(line: 963, column: 14, scope: !919)
!942 = !DILocation(line: 963, column: 12, scope: !919)
!943 = !DILocation(line: 964, column: 28, scope: !919)
!944 = !DILocation(line: 964, column: 23, scope: !919)
!945 = !DILocation(line: 964, column: 22, scope: !919)
!946 = !DILocation(line: 964, column: 38, scope: !919)
!947 = !DILocation(line: 964, column: 37, scope: !919)
!948 = !DILocation(line: 964, column: 14, scope: !949)
!949 = !DILexicalBlockFile(scope: !919, file: !1, discriminator: 1)
!950 = !DILocation(line: 964, column: 12, scope: !919)
!951 = !DILocation(line: 967, column: 23, scope: !768)
!952 = !DILocation(line: 967, column: 27, scope: !768)
!953 = !DILocation(line: 967, column: 30, scope: !768)
!954 = !DILocation(line: 967, column: 12, scope: !768)
!955 = !DILocation(line: 967, column: 10, scope: !768)
!956 = !DILocation(line: 968, column: 23, scope: !768)
!957 = !DILocation(line: 968, column: 27, scope: !768)
!958 = !DILocation(line: 968, column: 30, scope: !768)
!959 = !DILocation(line: 968, column: 12, scope: !768)
!960 = !DILocation(line: 968, column: 10, scope: !768)
!961 = !DILocation(line: 970, column: 12, scope: !768)
!962 = !DILocation(line: 970, column: 17, scope: !768)
!963 = !DILocation(line: 970, column: 16, scope: !768)
!964 = !DILocation(line: 970, column: 24, scope: !768)
!965 = !DILocation(line: 970, column: 22, scope: !768)
!966 = !DILocation(line: 970, column: 10, scope: !768)
!967 = !DILocation(line: 971, column: 31, scope: !768)
!968 = !DILocation(line: 971, column: 14, scope: !768)
!969 = !DILocation(line: 971, column: 12, scope: !768)
!970 = !DILocation(line: 972, column: 37, scope: !768)
!971 = !DILocation(line: 972, column: 14, scope: !768)
!972 = !DILocation(line: 972, column: 12, scope: !768)
!973 = !DILocation(line: 974, column: 21, scope: !768)
!974 = !DILocation(line: 974, column: 20, scope: !768)
!975 = !DILocation(line: 974, column: 31, scope: !768)
!976 = !DILocation(line: 974, column: 35, scope: !768)
!977 = !DILocation(line: 974, column: 34, scope: !768)
!978 = !DILocation(line: 974, column: 40, scope: !768)
!979 = !DILocation(line: 974, column: 39, scope: !768)
!980 = !DILocation(line: 974, column: 51, scope: !768)
!981 = !DILocation(line: 974, column: 55, scope: !768)
!982 = !DILocation(line: 974, column: 54, scope: !768)
!983 = !DILocation(line: 974, column: 61, scope: !768)
!984 = !DILocation(line: 974, column: 64, scope: !768)
!985 = !DILocation(line: 974, column: 63, scope: !768)
!986 = !DILocation(line: 974, column: 69, scope: !768)
!987 = !DILocation(line: 974, column: 68, scope: !768)
!988 = !DILocation(line: 974, column: 59, scope: !768)
!989 = !DILocation(line: 974, column: 45, scope: !768)
!990 = !DILocation(line: 974, column: 25, scope: !768)
!991 = !DILocation(line: 974, column: 5, scope: !768)
!992 = !DILocation(line: 974, column: 13, scope: !768)
!993 = !DILocation(line: 974, column: 18, scope: !768)
!994 = !DILocation(line: 975, column: 21, scope: !768)
!995 = !DILocation(line: 975, column: 31, scope: !768)
!996 = !DILocation(line: 975, column: 42, scope: !768)
!997 = !DILocation(line: 975, column: 47, scope: !768)
!998 = !DILocation(line: 975, column: 46, scope: !768)
!999 = !DILocation(line: 975, column: 37, scope: !768)
!1000 = !DILocation(line: 975, column: 35, scope: !768)
!1001 = !DILocation(line: 975, column: 25, scope: !768)
!1002 = !DILocation(line: 975, column: 5, scope: !768)
!1003 = !DILocation(line: 975, column: 13, scope: !768)
!1004 = !DILocation(line: 975, column: 18, scope: !768)
!1005 = !DILocation(line: 976, column: 21, scope: !768)
!1006 = !DILocation(line: 976, column: 35, scope: !768)
!1007 = !DILocation(line: 976, column: 27, scope: !768)
!1008 = !DILocation(line: 976, column: 25, scope: !768)
!1009 = !DILocation(line: 976, column: 42, scope: !768)
!1010 = !DILocation(line: 976, column: 40, scope: !768)
!1011 = !DILocation(line: 976, column: 53, scope: !768)
!1012 = !DILocation(line: 976, column: 51, scope: !768)
!1013 = !DILocation(line: 976, column: 5, scope: !768)
!1014 = !DILocation(line: 976, column: 13, scope: !768)
!1015 = !DILocation(line: 976, column: 17, scope: !768)
!1016 = !DILocation(line: 977, column: 21, scope: !768)
!1017 = !DILocation(line: 977, column: 35, scope: !768)
!1018 = !DILocation(line: 977, column: 39, scope: !768)
!1019 = !DILocation(line: 977, column: 38, scope: !768)
!1020 = !DILocation(line: 977, column: 27, scope: !768)
!1021 = !DILocation(line: 977, column: 25, scope: !768)
!1022 = !DILocation(line: 977, column: 48, scope: !768)
!1023 = !DILocation(line: 977, column: 53, scope: !768)
!1024 = !DILocation(line: 977, column: 52, scope: !768)
!1025 = !DILocation(line: 977, column: 45, scope: !768)
!1026 = !DILocation(line: 977, column: 5, scope: !768)
!1027 = !DILocation(line: 977, column: 13, scope: !768)
!1028 = !DILocation(line: 977, column: 17, scope: !768)
!1029 = !DILocation(line: 978, column: 50, scope: !768)
!1030 = !DILocation(line: 978, column: 58, scope: !768)
!1031 = !DILocation(line: 978, column: 45, scope: !768)
!1032 = !DILocation(line: 978, column: 43, scope: !768)
!1033 = !DILocation(line: 978, column: 5, scope: !768)
!1034 = !DILocation(line: 978, column: 13, scope: !768)
!1035 = !DILocation(line: 978, column: 17, scope: !768)
!1036 = !DILocation(line: 980, column: 12, scope: !768)
!1037 = !DILocation(line: 980, column: 12, scope: !1038)
!1038 = !DILexicalBlockFile(scope: !768, file: !1, discriminator: 1)
!1039 = !DILocation(line: 980, column: 12, scope: !1040)
!1040 = !DILexicalBlockFile(scope: !768, file: !1, discriminator: 2)
!1041 = !DILocation(line: 980, column: 12, scope: !1042)
!1042 = !DILexicalBlockFile(scope: !768, file: !1, discriminator: 3)
!1043 = !DILocation(line: 980, column: 12, scope: !1044)
!1044 = !DILexicalBlockFile(scope: !768, file: !1, discriminator: 4)
!1045 = !DILocation(line: 980, column: 12, scope: !1046)
!1046 = !DILexicalBlockFile(scope: !768, file: !1, discriminator: 5)
!1047 = !DILocation(line: 980, column: 12, scope: !1048)
!1048 = !DILexicalBlockFile(scope: !768, file: !1, discriminator: 6)
!1049 = !DILocation(line: 980, column: 5, scope: !1048)
!1050 = !DILocation(line: 982, column: 1, scope: !738)
!1051 = distinct !DISubprogram(name: "olver_A1", scope: !1, file: !1, line: 658, type: !1052, isLocal: true, isDefinition: true, scopeLine: 659, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !98)
!1052 = !DISubroutineType(types: !1053)
!1053 = !{!49, !49, !49, !48}
!1054 = !DILocalVariable(name: "z", arg: 1, scope: !1051, file: !1, line: 658, type: !49)
!1055 = !DILocation(line: 658, column: 31, scope: !1051)
!1056 = !DILocalVariable(name: "abs_zeta", arg: 2, scope: !1051, file: !1, line: 658, type: !49)
!1057 = !DILocation(line: 658, column: 41, scope: !1051)
!1058 = !DILocalVariable(name: "err", arg: 3, scope: !1051, file: !1, line: 658, type: !48)
!1059 = !DILocation(line: 658, column: 60, scope: !1051)
!1060 = !DILocation(line: 660, column: 6, scope: !1061)
!1061 = distinct !DILexicalBlock(scope: !1051, file: !1, line: 660, column: 6)
!1062 = !DILocation(line: 660, column: 8, scope: !1061)
!1063 = !DILocation(line: 660, column: 6, scope: !1051)
!1064 = !DILocalVariable(name: "t", scope: !1065, file: !1, line: 661, type: !49)
!1065 = distinct !DILexicalBlock(scope: !1061, file: !1, line: 660, column: 16)
!1066 = !DILocation(line: 661, column: 12, scope: !1065)
!1067 = !DILocation(line: 661, column: 29, scope: !1065)
!1068 = !DILocation(line: 661, column: 31, scope: !1065)
!1069 = !DILocation(line: 661, column: 30, scope: !1065)
!1070 = !DILocation(line: 661, column: 28, scope: !1065)
!1071 = !DILocation(line: 661, column: 20, scope: !1065)
!1072 = !DILocation(line: 661, column: 19, scope: !1065)
!1073 = !DILocalVariable(name: "rz", scope: !1065, file: !1, line: 662, type: !49)
!1074 = !DILocation(line: 662, column: 12, scope: !1065)
!1075 = !DILocation(line: 662, column: 22, scope: !1065)
!1076 = !DILocation(line: 662, column: 17, scope: !1065)
!1077 = !DILocalVariable(name: "t2", scope: !1065, file: !1, line: 663, type: !49)
!1078 = !DILocation(line: 663, column: 12, scope: !1065)
!1079 = !DILocation(line: 663, column: 17, scope: !1065)
!1080 = !DILocation(line: 663, column: 19, scope: !1065)
!1081 = !DILocation(line: 663, column: 18, scope: !1065)
!1082 = !DILocalVariable(name: "term1", scope: !1065, file: !1, line: 664, type: !49)
!1083 = !DILocation(line: 664, column: 12, scope: !1065)
!1084 = !DILocation(line: 664, column: 21, scope: !1065)
!1085 = !DILocation(line: 664, column: 38, scope: !1065)
!1086 = !DILocation(line: 664, column: 37, scope: !1065)
!1087 = !DILocation(line: 664, column: 30, scope: !1065)
!1088 = !DILocation(line: 664, column: 49, scope: !1065)
!1089 = !DILocation(line: 664, column: 48, scope: !1065)
!1090 = !DILocation(line: 664, column: 52, scope: !1065)
!1091 = !DILocation(line: 664, column: 51, scope: !1065)
!1092 = !DILocation(line: 664, column: 41, scope: !1065)
!1093 = !DILocation(line: 664, column: 23, scope: !1065)
!1094 = !DILocation(line: 664, column: 55, scope: !1065)
!1095 = !DILocalVariable(name: "term2", scope: !1065, file: !1, line: 665, type: !49)
!1096 = !DILocation(line: 665, column: 12, scope: !1065)
!1097 = !DILocation(line: 665, column: 35, scope: !1065)
!1098 = !DILocation(line: 665, column: 34, scope: !1065)
!1099 = !DILocation(line: 665, column: 44, scope: !1065)
!1100 = !DILocation(line: 665, column: 43, scope: !1065)
!1101 = !DILocation(line: 665, column: 53, scope: !1065)
!1102 = !DILocation(line: 665, column: 52, scope: !1065)
!1103 = !DILocation(line: 665, column: 26, scope: !1065)
!1104 = !DILocalVariable(name: "term3", scope: !1065, file: !1, line: 666, type: !49)
!1105 = !DILocation(line: 666, column: 12, scope: !1065)
!1106 = !DILocation(line: 666, column: 25, scope: !1065)
!1107 = !DILocation(line: 666, column: 24, scope: !1065)
!1108 = !DILocation(line: 666, column: 39, scope: !1065)
!1109 = !DILocation(line: 666, column: 38, scope: !1065)
!1110 = !DILocation(line: 666, column: 33, scope: !1065)
!1111 = !DILocation(line: 666, column: 26, scope: !1065)
!1112 = !DILocation(line: 666, column: 51, scope: !1065)
!1113 = !DILocation(line: 666, column: 50, scope: !1065)
!1114 = !DILocation(line: 666, column: 54, scope: !1065)
!1115 = !DILocation(line: 666, column: 53, scope: !1065)
!1116 = !DILocation(line: 666, column: 57, scope: !1065)
!1117 = !DILocation(line: 666, column: 56, scope: !1065)
!1118 = !DILocation(line: 666, column: 42, scope: !1065)
!1119 = !DILocation(line: 667, column: 42, scope: !1065)
!1120 = !DILocation(line: 667, column: 37, scope: !1065)
!1121 = !DILocation(line: 667, column: 56, scope: !1065)
!1122 = !DILocation(line: 667, column: 51, scope: !1123)
!1123 = !DILexicalBlockFile(scope: !1065, file: !1, discriminator: 1)
!1124 = !DILocation(line: 667, column: 49, scope: !1065)
!1125 = !DILocation(line: 667, column: 70, scope: !1065)
!1126 = !DILocation(line: 667, column: 65, scope: !1127)
!1127 = !DILexicalBlockFile(scope: !1065, file: !1, discriminator: 2)
!1128 = !DILocation(line: 667, column: 63, scope: !1065)
!1129 = !DILocation(line: 667, column: 34, scope: !1065)
!1130 = !DILocation(line: 667, column: 6, scope: !1065)
!1131 = !DILocation(line: 667, column: 10, scope: !1065)
!1132 = !DILocation(line: 668, column: 12, scope: !1065)
!1133 = !DILocation(line: 668, column: 20, scope: !1065)
!1134 = !DILocation(line: 668, column: 18, scope: !1065)
!1135 = !DILocation(line: 668, column: 28, scope: !1065)
!1136 = !DILocation(line: 668, column: 26, scope: !1065)
!1137 = !DILocation(line: 668, column: 5, scope: !1065)
!1138 = !DILocation(line: 670, column: 11, scope: !1139)
!1139 = distinct !DILexicalBlock(scope: !1061, file: !1, line: 670, column: 11)
!1140 = !DILocation(line: 670, column: 13, scope: !1139)
!1141 = !DILocation(line: 670, column: 11, scope: !1061)
!1142 = !DILocalVariable(name: "a", scope: !1143, file: !1, line: 671, type: !108)
!1143 = distinct !DILexicalBlock(scope: !1139, file: !1, line: 670, column: 21)
!1144 = !DILocation(line: 671, column: 18, scope: !1143)
!1145 = !DILocation(line: 671, column: 26, scope: !1143)
!1146 = !DILocation(line: 671, column: 25, scope: !1143)
!1147 = !DILocalVariable(name: "c0", scope: !1143, file: !1, line: 672, type: !108)
!1148 = !DILocation(line: 672, column: 18, scope: !1143)
!1149 = !DILocalVariable(name: "c1", scope: !1143, file: !1, line: 673, type: !108)
!1150 = !DILocation(line: 673, column: 18, scope: !1143)
!1151 = !DILocalVariable(name: "c2", scope: !1143, file: !1, line: 674, type: !108)
!1152 = !DILocation(line: 674, column: 18, scope: !1143)
!1153 = !DILocalVariable(name: "c3", scope: !1143, file: !1, line: 675, type: !108)
!1154 = !DILocation(line: 675, column: 18, scope: !1143)
!1155 = !DILocalVariable(name: "c4", scope: !1143, file: !1, line: 676, type: !108)
!1156 = !DILocation(line: 676, column: 18, scope: !1143)
!1157 = !DILocalVariable(name: "c5", scope: !1143, file: !1, line: 677, type: !108)
!1158 = !DILocation(line: 677, column: 18, scope: !1143)
!1159 = !DILocalVariable(name: "c6", scope: !1143, file: !1, line: 678, type: !108)
!1160 = !DILocation(line: 678, column: 18, scope: !1143)
!1161 = !DILocalVariable(name: "c7", scope: !1143, file: !1, line: 679, type: !108)
!1162 = !DILocation(line: 679, column: 18, scope: !1143)
!1163 = !DILocalVariable(name: "c8", scope: !1143, file: !1, line: 680, type: !108)
!1164 = !DILocation(line: 680, column: 18, scope: !1143)
!1165 = !DILocalVariable(name: "sum", scope: !1143, file: !1, line: 681, type: !108)
!1166 = !DILocation(line: 681, column: 18, scope: !1143)
!1167 = !DILocation(line: 681, column: 27, scope: !1143)
!1168 = !DILocation(line: 681, column: 33, scope: !1143)
!1169 = !DILocation(line: 681, column: 39, scope: !1143)
!1170 = !DILocation(line: 681, column: 45, scope: !1143)
!1171 = !DILocation(line: 681, column: 51, scope: !1143)
!1172 = !DILocation(line: 681, column: 57, scope: !1143)
!1173 = !DILocation(line: 681, column: 63, scope: !1143)
!1174 = !DILocation(line: 681, column: 69, scope: !1143)
!1175 = !DILocation(line: 681, column: 70, scope: !1143)
!1176 = !DILocation(line: 681, column: 68, scope: !1143)
!1177 = !DILocation(line: 681, column: 64, scope: !1143)
!1178 = !DILocation(line: 681, column: 62, scope: !1143)
!1179 = !DILocation(line: 681, column: 58, scope: !1143)
!1180 = !DILocation(line: 681, column: 56, scope: !1143)
!1181 = !DILocation(line: 681, column: 52, scope: !1143)
!1182 = !DILocation(line: 681, column: 50, scope: !1143)
!1183 = !DILocation(line: 681, column: 46, scope: !1143)
!1184 = !DILocation(line: 681, column: 44, scope: !1143)
!1185 = !DILocation(line: 681, column: 40, scope: !1143)
!1186 = !DILocation(line: 681, column: 38, scope: !1143)
!1187 = !DILocation(line: 681, column: 34, scope: !1143)
!1188 = !DILocation(line: 681, column: 32, scope: !1143)
!1189 = !DILocation(line: 681, column: 28, scope: !1143)
!1190 = !DILocation(line: 681, column: 26, scope: !1143)
!1191 = !DILocation(line: 682, column: 41, scope: !1143)
!1192 = !DILocation(line: 682, column: 36, scope: !1143)
!1193 = !DILocation(line: 682, column: 34, scope: !1143)
!1194 = !DILocation(line: 682, column: 6, scope: !1143)
!1195 = !DILocation(line: 682, column: 10, scope: !1143)
!1196 = !DILocation(line: 683, column: 12, scope: !1143)
!1197 = !DILocation(line: 683, column: 5, scope: !1143)
!1198 = !DILocalVariable(name: "t", scope: !1199, file: !1, line: 686, type: !108)
!1199 = distinct !DILexicalBlock(scope: !1139, file: !1, line: 685, column: 8)
!1200 = !DILocation(line: 686, column: 18, scope: !1199)
!1201 = !DILocation(line: 686, column: 27, scope: !1199)
!1202 = !DILocation(line: 686, column: 45, scope: !1199)
!1203 = !DILocation(line: 686, column: 47, scope: !1199)
!1204 = !DILocation(line: 686, column: 46, scope: !1199)
!1205 = !DILocation(line: 686, column: 43, scope: !1199)
!1206 = !DILocation(line: 686, column: 38, scope: !1199)
!1207 = !DILocation(line: 686, column: 29, scope: !1199)
!1208 = !DILocation(line: 686, column: 28, scope: !1199)
!1209 = !DILocation(line: 686, column: 25, scope: !1199)
!1210 = !DILocalVariable(name: "rz", scope: !1199, file: !1, line: 687, type: !108)
!1211 = !DILocation(line: 687, column: 18, scope: !1199)
!1212 = !DILocation(line: 687, column: 28, scope: !1199)
!1213 = !DILocation(line: 687, column: 23, scope: !1199)
!1214 = !DILocalVariable(name: "t2", scope: !1199, file: !1, line: 688, type: !108)
!1215 = !DILocation(line: 688, column: 18, scope: !1199)
!1216 = !DILocation(line: 688, column: 23, scope: !1199)
!1217 = !DILocation(line: 688, column: 25, scope: !1199)
!1218 = !DILocation(line: 688, column: 24, scope: !1199)
!1219 = !DILocalVariable(name: "term1", scope: !1199, file: !1, line: 689, type: !108)
!1220 = !DILocation(line: 689, column: 18, scope: !1199)
!1221 = !DILocation(line: 689, column: 27, scope: !1199)
!1222 = !DILocation(line: 689, column: 26, scope: !1199)
!1223 = !DILocation(line: 689, column: 44, scope: !1199)
!1224 = !DILocation(line: 689, column: 43, scope: !1199)
!1225 = !DILocation(line: 689, column: 36, scope: !1199)
!1226 = !DILocation(line: 689, column: 55, scope: !1199)
!1227 = !DILocation(line: 689, column: 54, scope: !1199)
!1228 = !DILocation(line: 689, column: 58, scope: !1199)
!1229 = !DILocation(line: 689, column: 57, scope: !1199)
!1230 = !DILocation(line: 689, column: 47, scope: !1199)
!1231 = !DILocation(line: 689, column: 29, scope: !1199)
!1232 = !DILocation(line: 689, column: 61, scope: !1199)
!1233 = !DILocalVariable(name: "term2", scope: !1199, file: !1, line: 690, type: !108)
!1234 = !DILocation(line: 690, column: 18, scope: !1199)
!1235 = !DILocation(line: 690, column: 41, scope: !1199)
!1236 = !DILocation(line: 690, column: 40, scope: !1199)
!1237 = !DILocation(line: 690, column: 50, scope: !1199)
!1238 = !DILocation(line: 690, column: 49, scope: !1199)
!1239 = !DILocation(line: 690, column: 59, scope: !1199)
!1240 = !DILocation(line: 690, column: 58, scope: !1199)
!1241 = !DILocation(line: 690, column: 32, scope: !1199)
!1242 = !DILocalVariable(name: "term3", scope: !1199, file: !1, line: 691, type: !108)
!1243 = !DILocation(line: 691, column: 18, scope: !1199)
!1244 = !DILocation(line: 691, column: 31, scope: !1199)
!1245 = !DILocation(line: 691, column: 30, scope: !1199)
!1246 = !DILocation(line: 691, column: 44, scope: !1199)
!1247 = !DILocation(line: 691, column: 43, scope: !1199)
!1248 = !DILocation(line: 691, column: 38, scope: !1199)
!1249 = !DILocation(line: 691, column: 32, scope: !1199)
!1250 = !DILocation(line: 691, column: 56, scope: !1199)
!1251 = !DILocation(line: 691, column: 55, scope: !1199)
!1252 = !DILocation(line: 691, column: 59, scope: !1199)
!1253 = !DILocation(line: 691, column: 58, scope: !1199)
!1254 = !DILocation(line: 691, column: 62, scope: !1199)
!1255 = !DILocation(line: 691, column: 61, scope: !1199)
!1256 = !DILocation(line: 691, column: 47, scope: !1199)
!1257 = !DILocation(line: 692, column: 42, scope: !1199)
!1258 = !DILocation(line: 692, column: 37, scope: !1199)
!1259 = !DILocation(line: 692, column: 56, scope: !1199)
!1260 = !DILocation(line: 692, column: 51, scope: !1261)
!1261 = !DILexicalBlockFile(scope: !1199, file: !1, discriminator: 1)
!1262 = !DILocation(line: 692, column: 49, scope: !1199)
!1263 = !DILocation(line: 692, column: 70, scope: !1199)
!1264 = !DILocation(line: 692, column: 65, scope: !1265)
!1265 = !DILexicalBlockFile(scope: !1199, file: !1, discriminator: 2)
!1266 = !DILocation(line: 692, column: 63, scope: !1199)
!1267 = !DILocation(line: 692, column: 34, scope: !1199)
!1268 = !DILocation(line: 692, column: 6, scope: !1199)
!1269 = !DILocation(line: 692, column: 10, scope: !1199)
!1270 = !DILocation(line: 693, column: 12, scope: !1199)
!1271 = !DILocation(line: 693, column: 20, scope: !1199)
!1272 = !DILocation(line: 693, column: 18, scope: !1199)
!1273 = !DILocation(line: 693, column: 28, scope: !1199)
!1274 = !DILocation(line: 693, column: 26, scope: !1199)
!1275 = !DILocation(line: 693, column: 5, scope: !1199)
!1276 = !DILocation(line: 695, column: 1, scope: !1051)
!1277 = distinct !DISubprogram(name: "olver_A2", scope: !1, file: !1, line: 698, type: !1278, isLocal: true, isDefinition: true, scopeLine: 699, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !98)
!1278 = !DISubroutineType(types: !1279)
!1279 = !{!49, !49, !49}
!1280 = !DILocalVariable(name: "z", arg: 1, scope: !1277, file: !1, line: 698, type: !49)
!1281 = !DILocation(line: 698, column: 31, scope: !1277)
!1282 = !DILocalVariable(name: "abs_zeta", arg: 2, scope: !1277, file: !1, line: 698, type: !49)
!1283 = !DILocation(line: 698, column: 41, scope: !1277)
!1284 = !DILocation(line: 700, column: 6, scope: !1285)
!1285 = distinct !DILexicalBlock(scope: !1277, file: !1, line: 700, column: 6)
!1286 = !DILocation(line: 700, column: 8, scope: !1285)
!1287 = !DILocation(line: 700, column: 6, scope: !1277)
!1288 = !DILocalVariable(name: "t", scope: !1289, file: !1, line: 701, type: !49)
!1289 = distinct !DILexicalBlock(scope: !1285, file: !1, line: 700, column: 16)
!1290 = !DILocation(line: 701, column: 12, scope: !1289)
!1291 = !DILocation(line: 701, column: 30, scope: !1289)
!1292 = !DILocation(line: 701, column: 32, scope: !1289)
!1293 = !DILocation(line: 701, column: 31, scope: !1289)
!1294 = !DILocation(line: 701, column: 29, scope: !1289)
!1295 = !DILocation(line: 701, column: 21, scope: !1289)
!1296 = !DILocation(line: 701, column: 20, scope: !1289)
!1297 = !DILocalVariable(name: "t2", scope: !1289, file: !1, line: 702, type: !49)
!1298 = !DILocation(line: 702, column: 12, scope: !1289)
!1299 = !DILocation(line: 702, column: 17, scope: !1289)
!1300 = !DILocation(line: 702, column: 19, scope: !1289)
!1301 = !DILocation(line: 702, column: 18, scope: !1289)
!1302 = !DILocalVariable(name: "t4", scope: !1289, file: !1, line: 703, type: !49)
!1303 = !DILocation(line: 703, column: 12, scope: !1289)
!1304 = !DILocation(line: 703, column: 17, scope: !1289)
!1305 = !DILocation(line: 703, column: 20, scope: !1289)
!1306 = !DILocation(line: 703, column: 19, scope: !1289)
!1307 = !DILocalVariable(name: "t6", scope: !1289, file: !1, line: 704, type: !49)
!1308 = !DILocation(line: 704, column: 12, scope: !1289)
!1309 = !DILocation(line: 704, column: 17, scope: !1289)
!1310 = !DILocation(line: 704, column: 20, scope: !1289)
!1311 = !DILocation(line: 704, column: 19, scope: !1289)
!1312 = !DILocalVariable(name: "t8", scope: !1289, file: !1, line: 705, type: !49)
!1313 = !DILocation(line: 705, column: 12, scope: !1289)
!1314 = !DILocation(line: 705, column: 17, scope: !1289)
!1315 = !DILocation(line: 705, column: 20, scope: !1289)
!1316 = !DILocation(line: 705, column: 19, scope: !1289)
!1317 = !DILocalVariable(name: "rz", scope: !1289, file: !1, line: 706, type: !49)
!1318 = !DILocation(line: 706, column: 12, scope: !1289)
!1319 = !DILocation(line: 706, column: 22, scope: !1289)
!1320 = !DILocation(line: 706, column: 17, scope: !1289)
!1321 = !DILocalVariable(name: "z3", scope: !1289, file: !1, line: 707, type: !49)
!1322 = !DILocation(line: 707, column: 12, scope: !1289)
!1323 = !DILocation(line: 707, column: 17, scope: !1289)
!1324 = !DILocation(line: 707, column: 26, scope: !1289)
!1325 = !DILocation(line: 707, column: 25, scope: !1289)
!1326 = !DILocation(line: 707, column: 35, scope: !1289)
!1327 = !DILocation(line: 707, column: 34, scope: !1289)
!1328 = !DILocalVariable(name: "z32", scope: !1289, file: !1, line: 708, type: !49)
!1329 = !DILocation(line: 708, column: 12, scope: !1289)
!1330 = !DILocation(line: 708, column: 18, scope: !1289)
!1331 = !DILocation(line: 708, column: 21, scope: !1289)
!1332 = !DILocation(line: 708, column: 20, scope: !1289)
!1333 = !DILocation(line: 708, column: 24, scope: !1289)
!1334 = !DILocation(line: 708, column: 23, scope: !1289)
!1335 = !DILocalVariable(name: "z92", scope: !1289, file: !1, line: 709, type: !49)
!1336 = !DILocation(line: 709, column: 12, scope: !1289)
!1337 = !DILocation(line: 709, column: 18, scope: !1289)
!1338 = !DILocation(line: 709, column: 21, scope: !1289)
!1339 = !DILocation(line: 709, column: 20, scope: !1289)
!1340 = !DILocalVariable(name: "term1", scope: !1289, file: !1, line: 710, type: !49)
!1341 = !DILocation(line: 710, column: 12, scope: !1289)
!1342 = !DILocation(line: 710, column: 20, scope: !1289)
!1343 = !DILocation(line: 710, column: 47, scope: !1289)
!1344 = !DILocation(line: 710, column: 46, scope: !1289)
!1345 = !DILocation(line: 710, column: 34, scope: !1289)
!1346 = !DILocation(line: 710, column: 64, scope: !1289)
!1347 = !DILocation(line: 710, column: 63, scope: !1289)
!1348 = !DILocation(line: 710, column: 50, scope: !1289)
!1349 = !DILocation(line: 710, column: 81, scope: !1289)
!1350 = !DILocation(line: 710, column: 80, scope: !1289)
!1351 = !DILocation(line: 710, column: 67, scope: !1289)
!1352 = !DILocation(line: 710, column: 99, scope: !1289)
!1353 = !DILocation(line: 710, column: 98, scope: !1289)
!1354 = !DILocation(line: 710, column: 85, scope: !1289)
!1355 = !DILocation(line: 710, column: 22, scope: !1289)
!1356 = !DILocation(line: 710, column: 102, scope: !1289)
!1357 = !DILocalVariable(name: "term2", scope: !1289, file: !1, line: 711, type: !49)
!1358 = !DILocation(line: 711, column: 12, scope: !1289)
!1359 = !DILocation(line: 711, column: 45, scope: !1289)
!1360 = !DILocation(line: 711, column: 44, scope: !1289)
!1361 = !DILocation(line: 711, column: 48, scope: !1289)
!1362 = !DILocation(line: 711, column: 47, scope: !1289)
!1363 = !DILocation(line: 711, column: 31, scope: !1289)
!1364 = !DILocalVariable(name: "term3", scope: !1289, file: !1, line: 712, type: !49)
!1365 = !DILocation(line: 712, column: 12, scope: !1289)
!1366 = !DILocation(line: 712, column: 40, scope: !1289)
!1367 = !DILocation(line: 712, column: 39, scope: !1289)
!1368 = !DILocation(line: 712, column: 51, scope: !1289)
!1369 = !DILocation(line: 712, column: 50, scope: !1289)
!1370 = !DILocation(line: 712, column: 46, scope: !1289)
!1371 = !DILocation(line: 712, column: 41, scope: !1289)
!1372 = !DILocation(line: 712, column: 55, scope: !1289)
!1373 = !DILocation(line: 712, column: 54, scope: !1289)
!1374 = !DILocalVariable(name: "term4", scope: !1289, file: !1, line: 713, type: !49)
!1375 = !DILocation(line: 713, column: 12, scope: !1289)
!1376 = !DILocation(line: 713, column: 38, scope: !1289)
!1377 = !DILocation(line: 713, column: 37, scope: !1289)
!1378 = !DILocation(line: 713, column: 55, scope: !1289)
!1379 = !DILocation(line: 713, column: 54, scope: !1289)
!1380 = !DILocation(line: 713, column: 47, scope: !1289)
!1381 = !DILocation(line: 713, column: 66, scope: !1289)
!1382 = !DILocation(line: 713, column: 65, scope: !1289)
!1383 = !DILocation(line: 713, column: 58, scope: !1289)
!1384 = !DILocation(line: 713, column: 40, scope: !1289)
!1385 = !DILocation(line: 713, column: 70, scope: !1289)
!1386 = !DILocation(line: 713, column: 69, scope: !1289)
!1387 = !DILocalVariable(name: "term5", scope: !1289, file: !1, line: 714, type: !49)
!1388 = !DILocation(line: 714, column: 12, scope: !1289)
!1389 = !DILocation(line: 714, column: 36, scope: !1289)
!1390 = !DILocation(line: 714, column: 35, scope: !1289)
!1391 = !DILocation(line: 714, column: 38, scope: !1289)
!1392 = !DILocation(line: 714, column: 37, scope: !1289)
!1393 = !DILocation(line: 714, column: 61, scope: !1289)
!1394 = !DILocation(line: 714, column: 60, scope: !1289)
!1395 = !DILocation(line: 714, column: 50, scope: !1289)
!1396 = !DILocation(line: 714, column: 76, scope: !1289)
!1397 = !DILocation(line: 714, column: 75, scope: !1289)
!1398 = !DILocation(line: 714, column: 65, scope: !1289)
!1399 = !DILocation(line: 714, column: 91, scope: !1289)
!1400 = !DILocation(line: 714, column: 90, scope: !1289)
!1401 = !DILocation(line: 714, column: 80, scope: !1289)
!1402 = !DILocation(line: 714, column: 40, scope: !1289)
!1403 = !DILocation(line: 714, column: 95, scope: !1289)
!1404 = !DILocation(line: 714, column: 94, scope: !1289)
!1405 = !DILocation(line: 715, column: 12, scope: !1289)
!1406 = !DILocation(line: 715, column: 20, scope: !1289)
!1407 = !DILocation(line: 715, column: 18, scope: !1289)
!1408 = !DILocation(line: 715, column: 28, scope: !1289)
!1409 = !DILocation(line: 715, column: 26, scope: !1289)
!1410 = !DILocation(line: 715, column: 36, scope: !1289)
!1411 = !DILocation(line: 715, column: 34, scope: !1289)
!1412 = !DILocation(line: 715, column: 44, scope: !1289)
!1413 = !DILocation(line: 715, column: 42, scope: !1289)
!1414 = !DILocation(line: 715, column: 5, scope: !1289)
!1415 = !DILocation(line: 717, column: 11, scope: !1416)
!1416 = distinct !DILexicalBlock(scope: !1285, file: !1, line: 717, column: 11)
!1417 = !DILocation(line: 717, column: 13, scope: !1416)
!1418 = !DILocation(line: 717, column: 11, scope: !1285)
!1419 = !DILocalVariable(name: "a", scope: !1420, file: !1, line: 718, type: !49)
!1420 = distinct !DILexicalBlock(scope: !1416, file: !1, line: 717, column: 21)
!1421 = !DILocation(line: 718, column: 12, scope: !1420)
!1422 = !DILocation(line: 718, column: 20, scope: !1420)
!1423 = !DILocation(line: 718, column: 19, scope: !1420)
!1424 = !DILocalVariable(name: "c0", scope: !1420, file: !1, line: 719, type: !108)
!1425 = !DILocation(line: 719, column: 18, scope: !1420)
!1426 = !DILocalVariable(name: "c1", scope: !1420, file: !1, line: 720, type: !108)
!1427 = !DILocation(line: 720, column: 18, scope: !1420)
!1428 = !DILocalVariable(name: "c2", scope: !1420, file: !1, line: 721, type: !108)
!1429 = !DILocation(line: 721, column: 18, scope: !1420)
!1430 = !DILocalVariable(name: "c3", scope: !1420, file: !1, line: 722, type: !108)
!1431 = !DILocation(line: 722, column: 18, scope: !1420)
!1432 = !DILocalVariable(name: "c4", scope: !1420, file: !1, line: 723, type: !108)
!1433 = !DILocation(line: 723, column: 18, scope: !1420)
!1434 = !DILocalVariable(name: "c5", scope: !1420, file: !1, line: 724, type: !108)
!1435 = !DILocation(line: 724, column: 18, scope: !1420)
!1436 = !DILocalVariable(name: "c6", scope: !1420, file: !1, line: 725, type: !108)
!1437 = !DILocation(line: 725, column: 18, scope: !1420)
!1438 = !DILocalVariable(name: "c7", scope: !1420, file: !1, line: 726, type: !108)
!1439 = !DILocation(line: 726, column: 18, scope: !1420)
!1440 = !DILocalVariable(name: "c8", scope: !1420, file: !1, line: 727, type: !108)
!1441 = !DILocation(line: 727, column: 18, scope: !1420)
!1442 = !DILocalVariable(name: "c9", scope: !1420, file: !1, line: 728, type: !108)
!1443 = !DILocation(line: 728, column: 18, scope: !1420)
!1444 = !DILocalVariable(name: "c10", scope: !1420, file: !1, line: 729, type: !108)
!1445 = !DILocation(line: 729, column: 18, scope: !1420)
!1446 = !DILocation(line: 730, column: 15, scope: !1420)
!1447 = !DILocation(line: 730, column: 21, scope: !1420)
!1448 = !DILocation(line: 730, column: 27, scope: !1420)
!1449 = !DILocation(line: 730, column: 33, scope: !1420)
!1450 = !DILocation(line: 730, column: 39, scope: !1420)
!1451 = !DILocation(line: 730, column: 45, scope: !1420)
!1452 = !DILocation(line: 730, column: 51, scope: !1420)
!1453 = !DILocation(line: 730, column: 57, scope: !1420)
!1454 = !DILocation(line: 730, column: 63, scope: !1420)
!1455 = !DILocation(line: 730, column: 69, scope: !1420)
!1456 = !DILocation(line: 730, column: 70, scope: !1420)
!1457 = !DILocation(line: 730, column: 68, scope: !1420)
!1458 = !DILocation(line: 730, column: 64, scope: !1420)
!1459 = !DILocation(line: 730, column: 62, scope: !1420)
!1460 = !DILocation(line: 730, column: 58, scope: !1420)
!1461 = !DILocation(line: 730, column: 56, scope: !1420)
!1462 = !DILocation(line: 730, column: 52, scope: !1420)
!1463 = !DILocation(line: 730, column: 50, scope: !1420)
!1464 = !DILocation(line: 730, column: 46, scope: !1420)
!1465 = !DILocation(line: 730, column: 44, scope: !1420)
!1466 = !DILocation(line: 730, column: 40, scope: !1420)
!1467 = !DILocation(line: 730, column: 38, scope: !1420)
!1468 = !DILocation(line: 730, column: 34, scope: !1420)
!1469 = !DILocation(line: 730, column: 32, scope: !1420)
!1470 = !DILocation(line: 730, column: 28, scope: !1420)
!1471 = !DILocation(line: 730, column: 26, scope: !1420)
!1472 = !DILocation(line: 730, column: 22, scope: !1420)
!1473 = !DILocation(line: 730, column: 20, scope: !1420)
!1474 = !DILocation(line: 730, column: 16, scope: !1420)
!1475 = !DILocation(line: 730, column: 14, scope: !1420)
!1476 = !DILocation(line: 730, column: 5, scope: !1420)
!1477 = !DILocalVariable(name: "t", scope: !1478, file: !1, line: 733, type: !108)
!1478 = distinct !DILexicalBlock(scope: !1416, file: !1, line: 732, column: 8)
!1479 = !DILocation(line: 733, column: 18, scope: !1478)
!1480 = !DILocation(line: 733, column: 28, scope: !1478)
!1481 = !DILocation(line: 733, column: 46, scope: !1478)
!1482 = !DILocation(line: 733, column: 48, scope: !1478)
!1483 = !DILocation(line: 733, column: 47, scope: !1478)
!1484 = !DILocation(line: 733, column: 44, scope: !1478)
!1485 = !DILocation(line: 733, column: 39, scope: !1478)
!1486 = !DILocation(line: 733, column: 30, scope: !1478)
!1487 = !DILocation(line: 733, column: 29, scope: !1478)
!1488 = !DILocation(line: 733, column: 26, scope: !1478)
!1489 = !DILocalVariable(name: "t2", scope: !1478, file: !1, line: 734, type: !108)
!1490 = !DILocation(line: 734, column: 18, scope: !1478)
!1491 = !DILocation(line: 734, column: 23, scope: !1478)
!1492 = !DILocation(line: 734, column: 25, scope: !1478)
!1493 = !DILocation(line: 734, column: 24, scope: !1478)
!1494 = !DILocalVariable(name: "t4", scope: !1478, file: !1, line: 735, type: !108)
!1495 = !DILocation(line: 735, column: 18, scope: !1478)
!1496 = !DILocation(line: 735, column: 23, scope: !1478)
!1497 = !DILocation(line: 735, column: 26, scope: !1478)
!1498 = !DILocation(line: 735, column: 25, scope: !1478)
!1499 = !DILocalVariable(name: "t6", scope: !1478, file: !1, line: 736, type: !108)
!1500 = !DILocation(line: 736, column: 18, scope: !1478)
!1501 = !DILocation(line: 736, column: 23, scope: !1478)
!1502 = !DILocation(line: 736, column: 26, scope: !1478)
!1503 = !DILocation(line: 736, column: 25, scope: !1478)
!1504 = !DILocalVariable(name: "t8", scope: !1478, file: !1, line: 737, type: !108)
!1505 = !DILocation(line: 737, column: 18, scope: !1478)
!1506 = !DILocation(line: 737, column: 23, scope: !1478)
!1507 = !DILocation(line: 737, column: 26, scope: !1478)
!1508 = !DILocation(line: 737, column: 25, scope: !1478)
!1509 = !DILocalVariable(name: "rz", scope: !1478, file: !1, line: 738, type: !108)
!1510 = !DILocation(line: 738, column: 18, scope: !1478)
!1511 = !DILocation(line: 738, column: 28, scope: !1478)
!1512 = !DILocation(line: 738, column: 23, scope: !1478)
!1513 = !DILocalVariable(name: "z3", scope: !1478, file: !1, line: 739, type: !108)
!1514 = !DILocation(line: 739, column: 18, scope: !1478)
!1515 = !DILocation(line: 739, column: 23, scope: !1478)
!1516 = !DILocation(line: 739, column: 32, scope: !1478)
!1517 = !DILocation(line: 739, column: 31, scope: !1478)
!1518 = !DILocation(line: 739, column: 41, scope: !1478)
!1519 = !DILocation(line: 739, column: 40, scope: !1478)
!1520 = !DILocalVariable(name: "z32", scope: !1478, file: !1, line: 740, type: !108)
!1521 = !DILocation(line: 740, column: 18, scope: !1478)
!1522 = !DILocation(line: 740, column: 24, scope: !1478)
!1523 = !DILocation(line: 740, column: 27, scope: !1478)
!1524 = !DILocation(line: 740, column: 26, scope: !1478)
!1525 = !DILocation(line: 740, column: 30, scope: !1478)
!1526 = !DILocation(line: 740, column: 29, scope: !1478)
!1527 = !DILocalVariable(name: "z92", scope: !1478, file: !1, line: 741, type: !108)
!1528 = !DILocation(line: 741, column: 18, scope: !1478)
!1529 = !DILocation(line: 741, column: 24, scope: !1478)
!1530 = !DILocation(line: 741, column: 27, scope: !1478)
!1531 = !DILocation(line: 741, column: 26, scope: !1478)
!1532 = !DILocalVariable(name: "term1", scope: !1478, file: !1, line: 742, type: !108)
!1533 = !DILocation(line: 742, column: 18, scope: !1478)
!1534 = !DILocation(line: 742, column: 26, scope: !1478)
!1535 = !DILocation(line: 742, column: 53, scope: !1478)
!1536 = !DILocation(line: 742, column: 52, scope: !1478)
!1537 = !DILocation(line: 742, column: 40, scope: !1478)
!1538 = !DILocation(line: 742, column: 70, scope: !1478)
!1539 = !DILocation(line: 742, column: 69, scope: !1478)
!1540 = !DILocation(line: 742, column: 56, scope: !1478)
!1541 = !DILocation(line: 742, column: 87, scope: !1478)
!1542 = !DILocation(line: 742, column: 86, scope: !1478)
!1543 = !DILocation(line: 742, column: 73, scope: !1478)
!1544 = !DILocation(line: 742, column: 105, scope: !1478)
!1545 = !DILocation(line: 742, column: 104, scope: !1478)
!1546 = !DILocation(line: 742, column: 91, scope: !1478)
!1547 = !DILocation(line: 742, column: 28, scope: !1478)
!1548 = !DILocation(line: 742, column: 108, scope: !1478)
!1549 = !DILocalVariable(name: "term2", scope: !1478, file: !1, line: 743, type: !108)
!1550 = !DILocation(line: 743, column: 18, scope: !1478)
!1551 = !DILocation(line: 743, column: 51, scope: !1478)
!1552 = !DILocation(line: 743, column: 50, scope: !1478)
!1553 = !DILocation(line: 743, column: 54, scope: !1478)
!1554 = !DILocation(line: 743, column: 53, scope: !1478)
!1555 = !DILocation(line: 743, column: 37, scope: !1478)
!1556 = !DILocalVariable(name: "term3", scope: !1478, file: !1, line: 744, type: !108)
!1557 = !DILocation(line: 744, column: 18, scope: !1478)
!1558 = !DILocation(line: 744, column: 46, scope: !1478)
!1559 = !DILocation(line: 744, column: 45, scope: !1478)
!1560 = !DILocation(line: 744, column: 57, scope: !1478)
!1561 = !DILocation(line: 744, column: 56, scope: !1478)
!1562 = !DILocation(line: 744, column: 52, scope: !1478)
!1563 = !DILocation(line: 744, column: 47, scope: !1478)
!1564 = !DILocation(line: 744, column: 61, scope: !1478)
!1565 = !DILocation(line: 744, column: 60, scope: !1478)
!1566 = !DILocalVariable(name: "term4", scope: !1478, file: !1, line: 745, type: !108)
!1567 = !DILocation(line: 745, column: 18, scope: !1478)
!1568 = !DILocation(line: 745, column: 44, scope: !1478)
!1569 = !DILocation(line: 745, column: 43, scope: !1478)
!1570 = !DILocation(line: 745, column: 61, scope: !1478)
!1571 = !DILocation(line: 745, column: 60, scope: !1478)
!1572 = !DILocation(line: 745, column: 53, scope: !1478)
!1573 = !DILocation(line: 745, column: 72, scope: !1478)
!1574 = !DILocation(line: 745, column: 71, scope: !1478)
!1575 = !DILocation(line: 745, column: 64, scope: !1478)
!1576 = !DILocation(line: 745, column: 46, scope: !1478)
!1577 = !DILocation(line: 745, column: 76, scope: !1478)
!1578 = !DILocation(line: 745, column: 75, scope: !1478)
!1579 = !DILocalVariable(name: "term5", scope: !1478, file: !1, line: 746, type: !108)
!1580 = !DILocation(line: 746, column: 18, scope: !1478)
!1581 = !DILocation(line: 746, column: 42, scope: !1478)
!1582 = !DILocation(line: 746, column: 41, scope: !1478)
!1583 = !DILocation(line: 746, column: 44, scope: !1478)
!1584 = !DILocation(line: 746, column: 43, scope: !1478)
!1585 = !DILocation(line: 746, column: 67, scope: !1478)
!1586 = !DILocation(line: 746, column: 66, scope: !1478)
!1587 = !DILocation(line: 746, column: 56, scope: !1478)
!1588 = !DILocation(line: 746, column: 82, scope: !1478)
!1589 = !DILocation(line: 746, column: 81, scope: !1478)
!1590 = !DILocation(line: 746, column: 71, scope: !1478)
!1591 = !DILocation(line: 746, column: 97, scope: !1478)
!1592 = !DILocation(line: 746, column: 96, scope: !1478)
!1593 = !DILocation(line: 746, column: 86, scope: !1478)
!1594 = !DILocation(line: 746, column: 46, scope: !1478)
!1595 = !DILocation(line: 746, column: 101, scope: !1478)
!1596 = !DILocation(line: 746, column: 100, scope: !1478)
!1597 = !DILocation(line: 747, column: 12, scope: !1478)
!1598 = !DILocation(line: 747, column: 20, scope: !1478)
!1599 = !DILocation(line: 747, column: 18, scope: !1478)
!1600 = !DILocation(line: 747, column: 28, scope: !1478)
!1601 = !DILocation(line: 747, column: 26, scope: !1478)
!1602 = !DILocation(line: 747, column: 36, scope: !1478)
!1603 = !DILocation(line: 747, column: 34, scope: !1478)
!1604 = !DILocation(line: 747, column: 44, scope: !1478)
!1605 = !DILocation(line: 747, column: 42, scope: !1478)
!1606 = !DILocation(line: 747, column: 5, scope: !1478)
!1607 = !DILocation(line: 749, column: 1, scope: !1277)
!1608 = distinct !DISubprogram(name: "olver_A3", scope: !1, file: !1, line: 752, type: !1278, isLocal: true, isDefinition: true, scopeLine: 753, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !98)
!1609 = !DILocalVariable(name: "z", arg: 1, scope: !1608, file: !1, line: 752, type: !49)
!1610 = !DILocation(line: 752, column: 31, scope: !1608)
!1611 = !DILocalVariable(name: "abs_zeta", arg: 2, scope: !1608, file: !1, line: 752, type: !49)
!1612 = !DILocation(line: 752, column: 41, scope: !1608)
!1613 = !DILocation(line: 754, column: 6, scope: !1614)
!1614 = distinct !DILexicalBlock(scope: !1608, file: !1, line: 754, column: 6)
!1615 = !DILocation(line: 754, column: 8, scope: !1614)
!1616 = !DILocation(line: 754, column: 6, scope: !1608)
!1617 = !DILocalVariable(name: "x", scope: !1618, file: !1, line: 755, type: !108)
!1618 = distinct !DILexicalBlock(scope: !1614, file: !1, line: 754, column: 15)
!1619 = !DILocation(line: 755, column: 18, scope: !1618)
!1620 = !DILocation(line: 755, column: 27, scope: !1618)
!1621 = !DILocation(line: 755, column: 26, scope: !1618)
!1622 = !DILocation(line: 755, column: 28, scope: !1618)
!1623 = !DILocation(line: 755, column: 33, scope: !1618)
!1624 = !DILocalVariable(name: "c", scope: !1618, file: !1, line: 756, type: !114)
!1625 = !DILocation(line: 756, column: 19, scope: !1618)
!1626 = !DILocation(line: 757, column: 29, scope: !1618)
!1627 = !DILocation(line: 757, column: 5, scope: !1618)
!1628 = !DILocation(line: 758, column: 14, scope: !1618)
!1629 = !DILocation(line: 758, column: 5, scope: !1618)
!1630 = !DILocation(line: 760, column: 11, scope: !1631)
!1631 = distinct !DILexicalBlock(scope: !1614, file: !1, line: 760, column: 11)
!1632 = !DILocation(line: 760, column: 13, scope: !1631)
!1633 = !DILocation(line: 760, column: 11, scope: !1614)
!1634 = !DILocalVariable(name: "a", scope: !1635, file: !1, line: 761, type: !49)
!1635 = distinct !DILexicalBlock(scope: !1631, file: !1, line: 760, column: 20)
!1636 = !DILocation(line: 761, column: 12, scope: !1635)
!1637 = !DILocation(line: 761, column: 20, scope: !1635)
!1638 = !DILocation(line: 761, column: 19, scope: !1635)
!1639 = !DILocalVariable(name: "c0", scope: !1635, file: !1, line: 762, type: !108)
!1640 = !DILocation(line: 762, column: 18, scope: !1635)
!1641 = !DILocalVariable(name: "c1", scope: !1635, file: !1, line: 763, type: !108)
!1642 = !DILocation(line: 763, column: 18, scope: !1635)
!1643 = !DILocalVariable(name: "c2", scope: !1635, file: !1, line: 764, type: !108)
!1644 = !DILocation(line: 764, column: 18, scope: !1635)
!1645 = !DILocalVariable(name: "c3", scope: !1635, file: !1, line: 765, type: !108)
!1646 = !DILocation(line: 765, column: 18, scope: !1635)
!1647 = !DILocalVariable(name: "c4", scope: !1635, file: !1, line: 766, type: !108)
!1648 = !DILocation(line: 766, column: 18, scope: !1635)
!1649 = !DILocalVariable(name: "c5", scope: !1635, file: !1, line: 767, type: !108)
!1650 = !DILocation(line: 767, column: 18, scope: !1635)
!1651 = !DILocalVariable(name: "c6", scope: !1635, file: !1, line: 768, type: !108)
!1652 = !DILocation(line: 768, column: 18, scope: !1635)
!1653 = !DILocation(line: 769, column: 17, scope: !1635)
!1654 = !DILocation(line: 769, column: 25, scope: !1635)
!1655 = !DILocation(line: 769, column: 33, scope: !1635)
!1656 = !DILocation(line: 769, column: 41, scope: !1635)
!1657 = !DILocation(line: 769, column: 49, scope: !1635)
!1658 = !DILocation(line: 769, column: 57, scope: !1635)
!1659 = !DILocation(line: 769, column: 58, scope: !1635)
!1660 = !DILocation(line: 769, column: 55, scope: !1635)
!1661 = !DILocation(line: 769, column: 50, scope: !1635)
!1662 = !DILocation(line: 769, column: 47, scope: !1635)
!1663 = !DILocation(line: 769, column: 42, scope: !1635)
!1664 = !DILocation(line: 769, column: 39, scope: !1635)
!1665 = !DILocation(line: 769, column: 34, scope: !1635)
!1666 = !DILocation(line: 769, column: 31, scope: !1635)
!1667 = !DILocation(line: 769, column: 26, scope: !1635)
!1668 = !DILocation(line: 769, column: 23, scope: !1635)
!1669 = !DILocation(line: 769, column: 18, scope: !1635)
!1670 = !DILocation(line: 769, column: 15, scope: !1635)
!1671 = !DILocation(line: 769, column: 5, scope: !1635)
!1672 = !DILocalVariable(name: "x", scope: !1673, file: !1, line: 772, type: !108)
!1673 = distinct !DILexicalBlock(scope: !1631, file: !1, line: 771, column: 8)
!1674 = !DILocation(line: 772, column: 18, scope: !1673)
!1675 = !DILocation(line: 772, column: 34, scope: !1673)
!1676 = !DILocation(line: 772, column: 33, scope: !1673)
!1677 = !DILocation(line: 772, column: 28, scope: !1673)
!1678 = !DILocation(line: 772, column: 37, scope: !1673)
!1679 = !DILocalVariable(name: "zi2", scope: !1673, file: !1, line: 773, type: !108)
!1680 = !DILocation(line: 773, column: 18, scope: !1673)
!1681 = !DILocation(line: 773, column: 29, scope: !1673)
!1682 = !DILocation(line: 773, column: 31, scope: !1673)
!1683 = !DILocation(line: 773, column: 30, scope: !1673)
!1684 = !DILocation(line: 773, column: 27, scope: !1673)
!1685 = !DILocalVariable(name: "c", scope: !1673, file: !1, line: 774, type: !114)
!1686 = !DILocation(line: 774, column: 19, scope: !1673)
!1687 = !DILocation(line: 775, column: 29, scope: !1673)
!1688 = !DILocation(line: 775, column: 5, scope: !1673)
!1689 = !DILocation(line: 776, column: 15, scope: !1673)
!1690 = !DILocation(line: 776, column: 21, scope: !1673)
!1691 = !DILocation(line: 776, column: 19, scope: !1673)
!1692 = !DILocation(line: 776, column: 25, scope: !1673)
!1693 = !DILocation(line: 776, column: 24, scope: !1673)
!1694 = !DILocation(line: 776, column: 29, scope: !1673)
!1695 = !DILocation(line: 776, column: 28, scope: !1673)
!1696 = !DILocation(line: 776, column: 5, scope: !1673)
!1697 = !DILocation(line: 778, column: 1, scope: !1608)
!1698 = distinct !DISubprogram(name: "olver_A4", scope: !1, file: !1, line: 781, type: !1278, isLocal: true, isDefinition: true, scopeLine: 782, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !98)
!1699 = !DILocalVariable(name: "z", arg: 1, scope: !1698, file: !1, line: 781, type: !49)
!1700 = !DILocation(line: 781, column: 31, scope: !1698)
!1701 = !DILocalVariable(name: "abs_zeta", arg: 2, scope: !1698, file: !1, line: 781, type: !49)
!1702 = !DILocation(line: 781, column: 41, scope: !1698)
!1703 = !DILocation(line: 783, column: 6, scope: !1704)
!1704 = distinct !DILexicalBlock(scope: !1698, file: !1, line: 783, column: 6)
!1705 = !DILocation(line: 783, column: 8, scope: !1704)
!1706 = !DILocation(line: 783, column: 6, scope: !1698)
!1707 = !DILocalVariable(name: "x", scope: !1708, file: !1, line: 784, type: !108)
!1708 = distinct !DILexicalBlock(scope: !1704, file: !1, line: 783, column: 15)
!1709 = !DILocation(line: 784, column: 18, scope: !1708)
!1710 = !DILocation(line: 784, column: 26, scope: !1708)
!1711 = !DILocation(line: 784, column: 25, scope: !1708)
!1712 = !DILocation(line: 784, column: 27, scope: !1708)
!1713 = !DILocation(line: 784, column: 32, scope: !1708)
!1714 = !DILocalVariable(name: "c", scope: !1708, file: !1, line: 785, type: !114)
!1715 = !DILocation(line: 785, column: 19, scope: !1708)
!1716 = !DILocation(line: 786, column: 29, scope: !1708)
!1717 = !DILocation(line: 786, column: 5, scope: !1708)
!1718 = !DILocation(line: 787, column: 14, scope: !1708)
!1719 = !DILocation(line: 787, column: 5, scope: !1708)
!1720 = !DILocation(line: 789, column: 11, scope: !1721)
!1721 = distinct !DILexicalBlock(scope: !1704, file: !1, line: 789, column: 11)
!1722 = !DILocation(line: 789, column: 13, scope: !1721)
!1723 = !DILocation(line: 789, column: 11, scope: !1704)
!1724 = !DILocalVariable(name: "a", scope: !1725, file: !1, line: 790, type: !49)
!1725 = distinct !DILexicalBlock(scope: !1721, file: !1, line: 789, column: 20)
!1726 = !DILocation(line: 790, column: 12, scope: !1725)
!1727 = !DILocation(line: 790, column: 20, scope: !1725)
!1728 = !DILocation(line: 790, column: 19, scope: !1725)
!1729 = !DILocalVariable(name: "c0", scope: !1725, file: !1, line: 791, type: !108)
!1730 = !DILocation(line: 791, column: 18, scope: !1725)
!1731 = !DILocalVariable(name: "c1", scope: !1725, file: !1, line: 792, type: !108)
!1732 = !DILocation(line: 792, column: 18, scope: !1725)
!1733 = !DILocalVariable(name: "c2", scope: !1725, file: !1, line: 793, type: !108)
!1734 = !DILocation(line: 793, column: 18, scope: !1725)
!1735 = !DILocalVariable(name: "c3", scope: !1725, file: !1, line: 794, type: !108)
!1736 = !DILocation(line: 794, column: 18, scope: !1725)
!1737 = !DILocalVariable(name: "c4", scope: !1725, file: !1, line: 795, type: !108)
!1738 = !DILocation(line: 795, column: 18, scope: !1725)
!1739 = !DILocalVariable(name: "c5", scope: !1725, file: !1, line: 796, type: !108)
!1740 = !DILocation(line: 796, column: 18, scope: !1725)
!1741 = !DILocation(line: 797, column: 17, scope: !1725)
!1742 = !DILocation(line: 797, column: 25, scope: !1725)
!1743 = !DILocation(line: 797, column: 33, scope: !1725)
!1744 = !DILocation(line: 797, column: 41, scope: !1725)
!1745 = !DILocation(line: 797, column: 49, scope: !1725)
!1746 = !DILocation(line: 797, column: 50, scope: !1725)
!1747 = !DILocation(line: 797, column: 47, scope: !1725)
!1748 = !DILocation(line: 797, column: 42, scope: !1725)
!1749 = !DILocation(line: 797, column: 39, scope: !1725)
!1750 = !DILocation(line: 797, column: 34, scope: !1725)
!1751 = !DILocation(line: 797, column: 31, scope: !1725)
!1752 = !DILocation(line: 797, column: 26, scope: !1725)
!1753 = !DILocation(line: 797, column: 23, scope: !1725)
!1754 = !DILocation(line: 797, column: 18, scope: !1725)
!1755 = !DILocation(line: 797, column: 15, scope: !1725)
!1756 = !DILocation(line: 797, column: 5, scope: !1725)
!1757 = !DILocalVariable(name: "x", scope: !1758, file: !1, line: 800, type: !108)
!1758 = distinct !DILexicalBlock(scope: !1721, file: !1, line: 799, column: 8)
!1759 = !DILocation(line: 800, column: 18, scope: !1758)
!1760 = !DILocation(line: 800, column: 34, scope: !1758)
!1761 = !DILocation(line: 800, column: 33, scope: !1758)
!1762 = !DILocation(line: 800, column: 28, scope: !1758)
!1763 = !DILocation(line: 800, column: 37, scope: !1758)
!1764 = !DILocalVariable(name: "zi2", scope: !1758, file: !1, line: 801, type: !108)
!1765 = !DILocation(line: 801, column: 18, scope: !1758)
!1766 = !DILocation(line: 801, column: 29, scope: !1758)
!1767 = !DILocation(line: 801, column: 31, scope: !1758)
!1768 = !DILocation(line: 801, column: 30, scope: !1758)
!1769 = !DILocation(line: 801, column: 27, scope: !1758)
!1770 = !DILocalVariable(name: "c", scope: !1758, file: !1, line: 802, type: !114)
!1771 = !DILocation(line: 802, column: 19, scope: !1758)
!1772 = !DILocation(line: 803, column: 29, scope: !1758)
!1773 = !DILocation(line: 803, column: 5, scope: !1758)
!1774 = !DILocation(line: 804, column: 14, scope: !1758)
!1775 = !DILocation(line: 804, column: 20, scope: !1758)
!1776 = !DILocation(line: 804, column: 18, scope: !1758)
!1777 = !DILocation(line: 804, column: 24, scope: !1758)
!1778 = !DILocation(line: 804, column: 23, scope: !1758)
!1779 = !DILocation(line: 804, column: 28, scope: !1758)
!1780 = !DILocation(line: 804, column: 27, scope: !1758)
!1781 = !DILocation(line: 804, column: 32, scope: !1758)
!1782 = !DILocation(line: 804, column: 31, scope: !1758)
!1783 = !DILocation(line: 804, column: 5, scope: !1758)
!1784 = !DILocation(line: 806, column: 1, scope: !1698)
!1785 = distinct !DISubprogram(name: "olver_B0", scope: !1, file: !1, line: 527, type: !1278, isLocal: true, isDefinition: true, scopeLine: 528, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !98)
!1786 = !DILocalVariable(name: "z", arg: 1, scope: !1785, file: !1, line: 527, type: !49)
!1787 = !DILocation(line: 527, column: 31, scope: !1785)
!1788 = !DILocalVariable(name: "abs_zeta", arg: 2, scope: !1785, file: !1, line: 527, type: !49)
!1789 = !DILocation(line: 527, column: 41, scope: !1785)
!1790 = !DILocation(line: 529, column: 6, scope: !1791)
!1791 = distinct !DILexicalBlock(scope: !1785, file: !1, line: 529, column: 6)
!1792 = !DILocation(line: 529, column: 8, scope: !1791)
!1793 = !DILocation(line: 529, column: 6, scope: !1785)
!1794 = !DILocalVariable(name: "t", scope: !1795, file: !1, line: 530, type: !108)
!1795 = distinct !DILexicalBlock(scope: !1791, file: !1, line: 529, column: 16)
!1796 = !DILocation(line: 530, column: 18, scope: !1795)
!1797 = !DILocation(line: 530, column: 35, scope: !1795)
!1798 = !DILocation(line: 530, column: 37, scope: !1795)
!1799 = !DILocation(line: 530, column: 36, scope: !1795)
!1800 = !DILocation(line: 530, column: 34, scope: !1795)
!1801 = !DILocation(line: 530, column: 26, scope: !1795)
!1802 = !DILocation(line: 530, column: 25, scope: !1795)
!1803 = !DILocation(line: 531, column: 23, scope: !1795)
!1804 = !DILocation(line: 531, column: 22, scope: !1795)
!1805 = !DILocation(line: 531, column: 32, scope: !1795)
!1806 = !DILocation(line: 531, column: 31, scope: !1795)
!1807 = !DILocation(line: 531, column: 16, scope: !1795)
!1808 = !DILocation(line: 531, column: 44, scope: !1795)
!1809 = !DILocation(line: 531, column: 58, scope: !1795)
!1810 = !DILocation(line: 531, column: 57, scope: !1795)
!1811 = !DILocation(line: 531, column: 60, scope: !1795)
!1812 = !DILocation(line: 531, column: 59, scope: !1795)
!1813 = !DILocation(line: 531, column: 52, scope: !1795)
!1814 = !DILocation(line: 531, column: 45, scope: !1795)
!1815 = !DILocation(line: 531, column: 74, scope: !1795)
!1816 = !DILocation(line: 531, column: 69, scope: !1795)
!1817 = !DILocation(line: 531, column: 68, scope: !1795)
!1818 = !DILocation(line: 531, column: 62, scope: !1795)
!1819 = !DILocation(line: 531, column: 42, scope: !1795)
!1820 = !DILocation(line: 531, column: 5, scope: !1795)
!1821 = !DILocation(line: 533, column: 11, scope: !1822)
!1822 = distinct !DILexicalBlock(scope: !1791, file: !1, line: 533, column: 11)
!1823 = !DILocation(line: 533, column: 13, scope: !1822)
!1824 = !DILocation(line: 533, column: 11, scope: !1791)
!1825 = !DILocalVariable(name: "a", scope: !1826, file: !1, line: 534, type: !108)
!1826 = distinct !DILexicalBlock(scope: !1822, file: !1, line: 533, column: 21)
!1827 = !DILocation(line: 534, column: 18, scope: !1826)
!1828 = !DILocation(line: 534, column: 26, scope: !1826)
!1829 = !DILocation(line: 534, column: 25, scope: !1826)
!1830 = !DILocalVariable(name: "c0", scope: !1826, file: !1, line: 535, type: !108)
!1831 = !DILocation(line: 535, column: 18, scope: !1826)
!1832 = !DILocalVariable(name: "c1", scope: !1826, file: !1, line: 536, type: !108)
!1833 = !DILocation(line: 536, column: 18, scope: !1826)
!1834 = !DILocalVariable(name: "c2", scope: !1826, file: !1, line: 537, type: !108)
!1835 = !DILocation(line: 537, column: 18, scope: !1826)
!1836 = !DILocalVariable(name: "c3", scope: !1826, file: !1, line: 538, type: !108)
!1837 = !DILocation(line: 538, column: 18, scope: !1826)
!1838 = !DILocalVariable(name: "c4", scope: !1826, file: !1, line: 539, type: !108)
!1839 = !DILocation(line: 539, column: 18, scope: !1826)
!1840 = !DILocalVariable(name: "c5", scope: !1826, file: !1, line: 540, type: !108)
!1841 = !DILocation(line: 540, column: 18, scope: !1826)
!1842 = !DILocalVariable(name: "c6", scope: !1826, file: !1, line: 541, type: !108)
!1843 = !DILocation(line: 541, column: 18, scope: !1826)
!1844 = !DILocalVariable(name: "c7", scope: !1826, file: !1, line: 542, type: !108)
!1845 = !DILocation(line: 542, column: 18, scope: !1826)
!1846 = !DILocalVariable(name: "c8", scope: !1826, file: !1, line: 543, type: !108)
!1847 = !DILocation(line: 543, column: 18, scope: !1826)
!1848 = !DILocation(line: 544, column: 17, scope: !1826)
!1849 = !DILocation(line: 544, column: 25, scope: !1826)
!1850 = !DILocation(line: 544, column: 33, scope: !1826)
!1851 = !DILocation(line: 544, column: 41, scope: !1826)
!1852 = !DILocation(line: 544, column: 49, scope: !1826)
!1853 = !DILocation(line: 544, column: 57, scope: !1826)
!1854 = !DILocation(line: 544, column: 65, scope: !1826)
!1855 = !DILocation(line: 544, column: 73, scope: !1826)
!1856 = !DILocation(line: 544, column: 74, scope: !1826)
!1857 = !DILocation(line: 544, column: 71, scope: !1826)
!1858 = !DILocation(line: 544, column: 66, scope: !1826)
!1859 = !DILocation(line: 544, column: 63, scope: !1826)
!1860 = !DILocation(line: 544, column: 58, scope: !1826)
!1861 = !DILocation(line: 544, column: 55, scope: !1826)
!1862 = !DILocation(line: 544, column: 50, scope: !1826)
!1863 = !DILocation(line: 544, column: 47, scope: !1826)
!1864 = !DILocation(line: 544, column: 42, scope: !1826)
!1865 = !DILocation(line: 544, column: 39, scope: !1826)
!1866 = !DILocation(line: 544, column: 34, scope: !1826)
!1867 = !DILocation(line: 544, column: 31, scope: !1826)
!1868 = !DILocation(line: 544, column: 26, scope: !1826)
!1869 = !DILocation(line: 544, column: 23, scope: !1826)
!1870 = !DILocation(line: 544, column: 18, scope: !1826)
!1871 = !DILocation(line: 544, column: 15, scope: !1826)
!1872 = !DILocation(line: 544, column: 5, scope: !1826)
!1873 = !DILocalVariable(name: "t", scope: !1874, file: !1, line: 547, type: !108)
!1874 = distinct !DILexicalBlock(scope: !1822, file: !1, line: 546, column: 8)
!1875 = !DILocation(line: 547, column: 18, scope: !1874)
!1876 = !DILocation(line: 547, column: 27, scope: !1874)
!1877 = !DILocation(line: 547, column: 45, scope: !1874)
!1878 = !DILocation(line: 547, column: 47, scope: !1874)
!1879 = !DILocation(line: 547, column: 46, scope: !1874)
!1880 = !DILocation(line: 547, column: 43, scope: !1874)
!1881 = !DILocation(line: 547, column: 38, scope: !1874)
!1882 = !DILocation(line: 547, column: 29, scope: !1874)
!1883 = !DILocation(line: 547, column: 28, scope: !1874)
!1884 = !DILocation(line: 547, column: 25, scope: !1874)
!1885 = !DILocation(line: 548, column: 23, scope: !1874)
!1886 = !DILocation(line: 548, column: 22, scope: !1874)
!1887 = !DILocation(line: 548, column: 32, scope: !1874)
!1888 = !DILocation(line: 548, column: 31, scope: !1874)
!1889 = !DILocation(line: 548, column: 16, scope: !1874)
!1890 = !DILocation(line: 548, column: 44, scope: !1874)
!1891 = !DILocation(line: 548, column: 57, scope: !1874)
!1892 = !DILocation(line: 548, column: 56, scope: !1874)
!1893 = !DILocation(line: 548, column: 59, scope: !1874)
!1894 = !DILocation(line: 548, column: 58, scope: !1874)
!1895 = !DILocation(line: 548, column: 51, scope: !1874)
!1896 = !DILocation(line: 548, column: 45, scope: !1874)
!1897 = !DILocation(line: 548, column: 73, scope: !1874)
!1898 = !DILocation(line: 548, column: 68, scope: !1874)
!1899 = !DILocation(line: 548, column: 67, scope: !1874)
!1900 = !DILocation(line: 548, column: 61, scope: !1874)
!1901 = !DILocation(line: 548, column: 42, scope: !1874)
!1902 = !DILocation(line: 548, column: 5, scope: !1874)
!1903 = !DILocation(line: 550, column: 1, scope: !1785)
!1904 = distinct !DISubprogram(name: "olver_B1", scope: !1, file: !1, line: 553, type: !1278, isLocal: true, isDefinition: true, scopeLine: 554, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !98)
!1905 = !DILocalVariable(name: "z", arg: 1, scope: !1904, file: !1, line: 553, type: !49)
!1906 = !DILocation(line: 553, column: 31, scope: !1904)
!1907 = !DILocalVariable(name: "abs_zeta", arg: 2, scope: !1904, file: !1, line: 553, type: !49)
!1908 = !DILocation(line: 553, column: 41, scope: !1904)
!1909 = !DILocation(line: 555, column: 6, scope: !1910)
!1910 = distinct !DILexicalBlock(scope: !1904, file: !1, line: 555, column: 6)
!1911 = !DILocation(line: 555, column: 8, scope: !1910)
!1912 = !DILocation(line: 555, column: 6, scope: !1904)
!1913 = !DILocalVariable(name: "t", scope: !1914, file: !1, line: 556, type: !108)
!1914 = distinct !DILexicalBlock(scope: !1910, file: !1, line: 555, column: 16)
!1915 = !DILocation(line: 556, column: 18, scope: !1914)
!1916 = !DILocation(line: 556, column: 37, scope: !1914)
!1917 = !DILocation(line: 556, column: 39, scope: !1914)
!1918 = !DILocation(line: 556, column: 38, scope: !1914)
!1919 = !DILocation(line: 556, column: 36, scope: !1914)
!1920 = !DILocation(line: 556, column: 28, scope: !1914)
!1921 = !DILocation(line: 556, column: 27, scope: !1914)
!1922 = !DILocalVariable(name: "t2", scope: !1914, file: !1, line: 557, type: !108)
!1923 = !DILocation(line: 557, column: 18, scope: !1914)
!1924 = !DILocation(line: 557, column: 24, scope: !1914)
!1925 = !DILocation(line: 557, column: 26, scope: !1914)
!1926 = !DILocation(line: 557, column: 25, scope: !1914)
!1927 = !DILocalVariable(name: "rz", scope: !1914, file: !1, line: 558, type: !108)
!1928 = !DILocation(line: 558, column: 18, scope: !1914)
!1929 = !DILocation(line: 558, column: 29, scope: !1914)
!1930 = !DILocation(line: 558, column: 24, scope: !1914)
!1931 = !DILocalVariable(name: "z32", scope: !1914, file: !1, line: 559, type: !108)
!1932 = !DILocation(line: 559, column: 18, scope: !1914)
!1933 = !DILocation(line: 559, column: 24, scope: !1914)
!1934 = !DILocation(line: 559, column: 27, scope: !1914)
!1935 = !DILocation(line: 559, column: 26, scope: !1914)
!1936 = !DILocation(line: 559, column: 30, scope: !1914)
!1937 = !DILocation(line: 559, column: 29, scope: !1914)
!1938 = !DILocalVariable(name: "z92", scope: !1914, file: !1, line: 560, type: !108)
!1939 = !DILocation(line: 560, column: 18, scope: !1914)
!1940 = !DILocation(line: 560, column: 24, scope: !1914)
!1941 = !DILocation(line: 560, column: 28, scope: !1914)
!1942 = !DILocation(line: 560, column: 27, scope: !1914)
!1943 = !DILocation(line: 560, column: 32, scope: !1914)
!1944 = !DILocation(line: 560, column: 31, scope: !1914)
!1945 = !DILocalVariable(name: "term1", scope: !1914, file: !1, line: 561, type: !108)
!1946 = !DILocation(line: 561, column: 18, scope: !1914)
!1947 = !DILocation(line: 561, column: 26, scope: !1914)
!1948 = !DILocation(line: 561, column: 28, scope: !1914)
!1949 = !DILocation(line: 561, column: 27, scope: !1914)
!1950 = !DILocation(line: 561, column: 30, scope: !1914)
!1951 = !DILocation(line: 561, column: 29, scope: !1914)
!1952 = !DILocation(line: 561, column: 54, scope: !1914)
!1953 = !DILocation(line: 561, column: 53, scope: !1914)
!1954 = !DILocation(line: 561, column: 43, scope: !1914)
!1955 = !DILocation(line: 561, column: 68, scope: !1914)
!1956 = !DILocation(line: 561, column: 67, scope: !1914)
!1957 = !DILocation(line: 561, column: 71, scope: !1914)
!1958 = !DILocation(line: 561, column: 70, scope: !1914)
!1959 = !DILocation(line: 561, column: 57, scope: !1914)
!1960 = !DILocation(line: 561, column: 85, scope: !1914)
!1961 = !DILocation(line: 561, column: 84, scope: !1914)
!1962 = !DILocation(line: 561, column: 88, scope: !1914)
!1963 = !DILocation(line: 561, column: 87, scope: !1914)
!1964 = !DILocation(line: 561, column: 91, scope: !1914)
!1965 = !DILocation(line: 561, column: 90, scope: !1914)
!1966 = !DILocation(line: 561, column: 74, scope: !1914)
!1967 = !DILocation(line: 561, column: 32, scope: !1914)
!1968 = !DILocation(line: 561, column: 94, scope: !1914)
!1969 = !DILocalVariable(name: "term2", scope: !1914, file: !1, line: 562, type: !108)
!1970 = !DILocation(line: 562, column: 18, scope: !1914)
!1971 = !DILocation(line: 562, column: 44, scope: !1914)
!1972 = !DILocation(line: 562, column: 43, scope: !1914)
!1973 = !DILocation(line: 562, column: 33, scope: !1914)
!1974 = !DILocalVariable(name: "term3", scope: !1914, file: !1, line: 563, type: !108)
!1975 = !DILocation(line: 563, column: 18, scope: !1914)
!1976 = !DILocation(line: 563, column: 40, scope: !1914)
!1977 = !DILocation(line: 563, column: 39, scope: !1914)
!1978 = !DILocation(line: 563, column: 51, scope: !1914)
!1979 = !DILocation(line: 563, column: 50, scope: !1914)
!1980 = !DILocation(line: 563, column: 46, scope: !1914)
!1981 = !DILocation(line: 563, column: 41, scope: !1914)
!1982 = !DILocation(line: 563, column: 56, scope: !1914)
!1983 = !DILocation(line: 563, column: 65, scope: !1914)
!1984 = !DILocation(line: 563, column: 64, scope: !1914)
!1985 = !DILocation(line: 563, column: 74, scope: !1914)
!1986 = !DILocation(line: 563, column: 73, scope: !1914)
!1987 = !DILocation(line: 563, column: 54, scope: !1914)
!1988 = !DILocalVariable(name: "term4", scope: !1914, file: !1, line: 564, type: !108)
!1989 = !DILocation(line: 564, column: 18, scope: !1914)
!1990 = !DILocation(line: 564, column: 38, scope: !1914)
!1991 = !DILocation(line: 564, column: 37, scope: !1914)
!1992 = !DILocation(line: 564, column: 55, scope: !1914)
!1993 = !DILocation(line: 564, column: 54, scope: !1914)
!1994 = !DILocation(line: 564, column: 47, scope: !1914)
!1995 = !DILocation(line: 564, column: 66, scope: !1914)
!1996 = !DILocation(line: 564, column: 65, scope: !1914)
!1997 = !DILocation(line: 564, column: 69, scope: !1914)
!1998 = !DILocation(line: 564, column: 68, scope: !1914)
!1999 = !DILocation(line: 564, column: 58, scope: !1914)
!2000 = !DILocation(line: 564, column: 40, scope: !1914)
!2001 = !DILocation(line: 564, column: 73, scope: !1914)
!2002 = !DILocation(line: 564, column: 72, scope: !1914)
!2003 = !DILocation(line: 565, column: 14, scope: !1914)
!2004 = !DILocation(line: 565, column: 22, scope: !1914)
!2005 = !DILocation(line: 565, column: 20, scope: !1914)
!2006 = !DILocation(line: 565, column: 30, scope: !1914)
!2007 = !DILocation(line: 565, column: 28, scope: !1914)
!2008 = !DILocation(line: 565, column: 38, scope: !1914)
!2009 = !DILocation(line: 565, column: 36, scope: !1914)
!2010 = !DILocation(line: 565, column: 12, scope: !1914)
!2011 = !DILocation(line: 565, column: 45, scope: !1914)
!2012 = !DILocation(line: 565, column: 44, scope: !1914)
!2013 = !DILocation(line: 565, column: 5, scope: !1914)
!2014 = !DILocation(line: 567, column: 11, scope: !2015)
!2015 = distinct !DILexicalBlock(scope: !1910, file: !1, line: 567, column: 11)
!2016 = !DILocation(line: 567, column: 13, scope: !2015)
!2017 = !DILocation(line: 567, column: 11, scope: !1910)
!2018 = !DILocalVariable(name: "a", scope: !2019, file: !1, line: 568, type: !108)
!2019 = distinct !DILexicalBlock(scope: !2015, file: !1, line: 567, column: 21)
!2020 = !DILocation(line: 568, column: 18, scope: !2019)
!2021 = !DILocation(line: 568, column: 26, scope: !2019)
!2022 = !DILocation(line: 568, column: 25, scope: !2019)
!2023 = !DILocalVariable(name: "c0", scope: !2019, file: !1, line: 569, type: !108)
!2024 = !DILocation(line: 569, column: 18, scope: !2019)
!2025 = !DILocalVariable(name: "c1", scope: !2019, file: !1, line: 570, type: !108)
!2026 = !DILocation(line: 570, column: 18, scope: !2019)
!2027 = !DILocalVariable(name: "c2", scope: !2019, file: !1, line: 571, type: !108)
!2028 = !DILocation(line: 571, column: 18, scope: !2019)
!2029 = !DILocalVariable(name: "c3", scope: !2019, file: !1, line: 572, type: !108)
!2030 = !DILocation(line: 572, column: 18, scope: !2019)
!2031 = !DILocalVariable(name: "c4", scope: !2019, file: !1, line: 573, type: !108)
!2032 = !DILocation(line: 573, column: 18, scope: !2019)
!2033 = !DILocalVariable(name: "c5", scope: !2019, file: !1, line: 574, type: !108)
!2034 = !DILocation(line: 574, column: 18, scope: !2019)
!2035 = !DILocalVariable(name: "c6", scope: !2019, file: !1, line: 575, type: !108)
!2036 = !DILocation(line: 575, column: 18, scope: !2019)
!2037 = !DILocalVariable(name: "c7", scope: !2019, file: !1, line: 576, type: !108)
!2038 = !DILocation(line: 576, column: 18, scope: !2019)
!2039 = !DILocalVariable(name: "c8", scope: !2019, file: !1, line: 577, type: !108)
!2040 = !DILocation(line: 577, column: 18, scope: !2019)
!2041 = !DILocalVariable(name: "c9", scope: !2019, file: !1, line: 578, type: !108)
!2042 = !DILocation(line: 578, column: 18, scope: !2019)
!2043 = !DILocalVariable(name: "c10", scope: !2019, file: !1, line: 579, type: !108)
!2044 = !DILocation(line: 579, column: 18, scope: !2019)
!2045 = !DILocation(line: 580, column: 15, scope: !2019)
!2046 = !DILocation(line: 580, column: 21, scope: !2019)
!2047 = !DILocation(line: 580, column: 27, scope: !2019)
!2048 = !DILocation(line: 580, column: 33, scope: !2019)
!2049 = !DILocation(line: 580, column: 39, scope: !2019)
!2050 = !DILocation(line: 580, column: 45, scope: !2019)
!2051 = !DILocation(line: 580, column: 51, scope: !2019)
!2052 = !DILocation(line: 580, column: 57, scope: !2019)
!2053 = !DILocation(line: 580, column: 63, scope: !2019)
!2054 = !DILocation(line: 580, column: 69, scope: !2019)
!2055 = !DILocation(line: 580, column: 70, scope: !2019)
!2056 = !DILocation(line: 580, column: 68, scope: !2019)
!2057 = !DILocation(line: 580, column: 64, scope: !2019)
!2058 = !DILocation(line: 580, column: 62, scope: !2019)
!2059 = !DILocation(line: 580, column: 58, scope: !2019)
!2060 = !DILocation(line: 580, column: 56, scope: !2019)
!2061 = !DILocation(line: 580, column: 52, scope: !2019)
!2062 = !DILocation(line: 580, column: 50, scope: !2019)
!2063 = !DILocation(line: 580, column: 46, scope: !2019)
!2064 = !DILocation(line: 580, column: 44, scope: !2019)
!2065 = !DILocation(line: 580, column: 40, scope: !2019)
!2066 = !DILocation(line: 580, column: 38, scope: !2019)
!2067 = !DILocation(line: 580, column: 34, scope: !2019)
!2068 = !DILocation(line: 580, column: 32, scope: !2019)
!2069 = !DILocation(line: 580, column: 28, scope: !2019)
!2070 = !DILocation(line: 580, column: 26, scope: !2019)
!2071 = !DILocation(line: 580, column: 22, scope: !2019)
!2072 = !DILocation(line: 580, column: 20, scope: !2019)
!2073 = !DILocation(line: 580, column: 16, scope: !2019)
!2074 = !DILocation(line: 580, column: 14, scope: !2019)
!2075 = !DILocation(line: 580, column: 5, scope: !2019)
!2076 = !DILocalVariable(name: "t", scope: !2077, file: !1, line: 583, type: !108)
!2077 = distinct !DILexicalBlock(scope: !2015, file: !1, line: 582, column: 8)
!2078 = !DILocation(line: 583, column: 18, scope: !2077)
!2079 = !DILocation(line: 583, column: 29, scope: !2077)
!2080 = !DILocation(line: 583, column: 47, scope: !2077)
!2081 = !DILocation(line: 583, column: 49, scope: !2077)
!2082 = !DILocation(line: 583, column: 48, scope: !2077)
!2083 = !DILocation(line: 583, column: 45, scope: !2077)
!2084 = !DILocation(line: 583, column: 40, scope: !2077)
!2085 = !DILocation(line: 583, column: 31, scope: !2077)
!2086 = !DILocation(line: 583, column: 30, scope: !2077)
!2087 = !DILocation(line: 583, column: 27, scope: !2077)
!2088 = !DILocalVariable(name: "t2", scope: !2077, file: !1, line: 584, type: !108)
!2089 = !DILocation(line: 584, column: 18, scope: !2077)
!2090 = !DILocation(line: 584, column: 24, scope: !2077)
!2091 = !DILocation(line: 584, column: 26, scope: !2077)
!2092 = !DILocation(line: 584, column: 25, scope: !2077)
!2093 = !DILocalVariable(name: "rz", scope: !2077, file: !1, line: 585, type: !108)
!2094 = !DILocation(line: 585, column: 18, scope: !2077)
!2095 = !DILocation(line: 585, column: 29, scope: !2077)
!2096 = !DILocation(line: 585, column: 24, scope: !2077)
!2097 = !DILocalVariable(name: "z32", scope: !2077, file: !1, line: 586, type: !108)
!2098 = !DILocation(line: 586, column: 18, scope: !2077)
!2099 = !DILocation(line: 586, column: 24, scope: !2077)
!2100 = !DILocation(line: 586, column: 27, scope: !2077)
!2101 = !DILocation(line: 586, column: 26, scope: !2077)
!2102 = !DILocation(line: 586, column: 30, scope: !2077)
!2103 = !DILocation(line: 586, column: 29, scope: !2077)
!2104 = !DILocalVariable(name: "z92", scope: !2077, file: !1, line: 587, type: !108)
!2105 = !DILocation(line: 587, column: 18, scope: !2077)
!2106 = !DILocation(line: 587, column: 24, scope: !2077)
!2107 = !DILocation(line: 587, column: 28, scope: !2077)
!2108 = !DILocation(line: 587, column: 27, scope: !2077)
!2109 = !DILocation(line: 587, column: 32, scope: !2077)
!2110 = !DILocation(line: 587, column: 31, scope: !2077)
!2111 = !DILocalVariable(name: "term1", scope: !2077, file: !1, line: 588, type: !108)
!2112 = !DILocation(line: 588, column: 18, scope: !2077)
!2113 = !DILocation(line: 588, column: 27, scope: !2077)
!2114 = !DILocation(line: 588, column: 26, scope: !2077)
!2115 = !DILocation(line: 588, column: 30, scope: !2077)
!2116 = !DILocation(line: 588, column: 29, scope: !2077)
!2117 = !DILocation(line: 588, column: 54, scope: !2077)
!2118 = !DILocation(line: 588, column: 53, scope: !2077)
!2119 = !DILocation(line: 588, column: 43, scope: !2077)
!2120 = !DILocation(line: 588, column: 68, scope: !2077)
!2121 = !DILocation(line: 588, column: 67, scope: !2077)
!2122 = !DILocation(line: 588, column: 71, scope: !2077)
!2123 = !DILocation(line: 588, column: 70, scope: !2077)
!2124 = !DILocation(line: 588, column: 57, scope: !2077)
!2125 = !DILocation(line: 588, column: 85, scope: !2077)
!2126 = !DILocation(line: 588, column: 84, scope: !2077)
!2127 = !DILocation(line: 588, column: 88, scope: !2077)
!2128 = !DILocation(line: 588, column: 87, scope: !2077)
!2129 = !DILocation(line: 588, column: 91, scope: !2077)
!2130 = !DILocation(line: 588, column: 90, scope: !2077)
!2131 = !DILocation(line: 588, column: 74, scope: !2077)
!2132 = !DILocation(line: 588, column: 32, scope: !2077)
!2133 = !DILocation(line: 588, column: 94, scope: !2077)
!2134 = !DILocalVariable(name: "term2", scope: !2077, file: !1, line: 589, type: !108)
!2135 = !DILocation(line: 589, column: 18, scope: !2077)
!2136 = !DILocation(line: 589, column: 44, scope: !2077)
!2137 = !DILocation(line: 589, column: 43, scope: !2077)
!2138 = !DILocation(line: 589, column: 33, scope: !2077)
!2139 = !DILocalVariable(name: "term3", scope: !2077, file: !1, line: 590, type: !108)
!2140 = !DILocation(line: 590, column: 18, scope: !2077)
!2141 = !DILocation(line: 590, column: 42, scope: !2077)
!2142 = !DILocation(line: 590, column: 41, scope: !2077)
!2143 = !DILocation(line: 590, column: 53, scope: !2077)
!2144 = !DILocation(line: 590, column: 52, scope: !2077)
!2145 = !DILocation(line: 590, column: 48, scope: !2077)
!2146 = !DILocation(line: 590, column: 43, scope: !2077)
!2147 = !DILocation(line: 590, column: 58, scope: !2077)
!2148 = !DILocation(line: 590, column: 67, scope: !2077)
!2149 = !DILocation(line: 590, column: 66, scope: !2077)
!2150 = !DILocation(line: 590, column: 76, scope: !2077)
!2151 = !DILocation(line: 590, column: 75, scope: !2077)
!2152 = !DILocation(line: 590, column: 56, scope: !2077)
!2153 = !DILocalVariable(name: "term4", scope: !2077, file: !1, line: 591, type: !108)
!2154 = !DILocation(line: 591, column: 18, scope: !2077)
!2155 = !DILocation(line: 591, column: 38, scope: !2077)
!2156 = !DILocation(line: 591, column: 37, scope: !2077)
!2157 = !DILocation(line: 591, column: 55, scope: !2077)
!2158 = !DILocation(line: 591, column: 54, scope: !2077)
!2159 = !DILocation(line: 591, column: 47, scope: !2077)
!2160 = !DILocation(line: 591, column: 66, scope: !2077)
!2161 = !DILocation(line: 591, column: 65, scope: !2077)
!2162 = !DILocation(line: 591, column: 69, scope: !2077)
!2163 = !DILocation(line: 591, column: 68, scope: !2077)
!2164 = !DILocation(line: 591, column: 58, scope: !2077)
!2165 = !DILocation(line: 591, column: 40, scope: !2077)
!2166 = !DILocation(line: 591, column: 73, scope: !2077)
!2167 = !DILocation(line: 591, column: 72, scope: !2077)
!2168 = !DILocation(line: 592, column: 13, scope: !2077)
!2169 = !DILocation(line: 592, column: 21, scope: !2077)
!2170 = !DILocation(line: 592, column: 19, scope: !2077)
!2171 = !DILocation(line: 592, column: 29, scope: !2077)
!2172 = !DILocation(line: 592, column: 27, scope: !2077)
!2173 = !DILocation(line: 592, column: 37, scope: !2077)
!2174 = !DILocation(line: 592, column: 35, scope: !2077)
!2175 = !DILocation(line: 592, column: 44, scope: !2077)
!2176 = !DILocation(line: 592, column: 43, scope: !2077)
!2177 = !DILocation(line: 592, column: 5, scope: !2077)
!2178 = !DILocation(line: 594, column: 1, scope: !1904)
!2179 = distinct !DISubprogram(name: "olver_B2", scope: !1, file: !1, line: 597, type: !1278, isLocal: true, isDefinition: true, scopeLine: 598, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !98)
!2180 = !DILocalVariable(name: "z", arg: 1, scope: !2179, file: !1, line: 597, type: !49)
!2181 = !DILocation(line: 597, column: 31, scope: !2179)
!2182 = !DILocalVariable(name: "abs_zeta", arg: 2, scope: !2179, file: !1, line: 597, type: !49)
!2183 = !DILocation(line: 597, column: 41, scope: !2179)
!2184 = !DILocation(line: 599, column: 6, scope: !2185)
!2185 = distinct !DILexicalBlock(scope: !2179, file: !1, line: 599, column: 6)
!2186 = !DILocation(line: 599, column: 8, scope: !2185)
!2187 = !DILocation(line: 599, column: 6, scope: !2179)
!2188 = !DILocalVariable(name: "x", scope: !2189, file: !1, line: 600, type: !108)
!2189 = distinct !DILexicalBlock(scope: !2185, file: !1, line: 599, column: 15)
!2190 = !DILocation(line: 600, column: 18, scope: !2189)
!2191 = !DILocation(line: 600, column: 26, scope: !2189)
!2192 = !DILocation(line: 600, column: 25, scope: !2189)
!2193 = !DILocation(line: 600, column: 27, scope: !2189)
!2194 = !DILocation(line: 600, column: 32, scope: !2189)
!2195 = !DILocalVariable(name: "c", scope: !2189, file: !1, line: 601, type: !114)
!2196 = !DILocation(line: 601, column: 19, scope: !2189)
!2197 = !DILocation(line: 602, column: 29, scope: !2189)
!2198 = !DILocation(line: 602, column: 5, scope: !2189)
!2199 = !DILocation(line: 603, column: 15, scope: !2189)
!2200 = !DILocation(line: 603, column: 21, scope: !2189)
!2201 = !DILocation(line: 603, column: 19, scope: !2189)
!2202 = !DILocation(line: 603, column: 5, scope: !2189)
!2203 = !DILocation(line: 605, column: 11, scope: !2204)
!2204 = distinct !DILexicalBlock(scope: !2185, file: !1, line: 605, column: 11)
!2205 = !DILocation(line: 605, column: 13, scope: !2204)
!2206 = !DILocation(line: 605, column: 11, scope: !2185)
!2207 = !DILocalVariable(name: "a", scope: !2208, file: !1, line: 606, type: !108)
!2208 = distinct !DILexicalBlock(scope: !2204, file: !1, line: 605, column: 21)
!2209 = !DILocation(line: 606, column: 18, scope: !2208)
!2210 = !DILocation(line: 606, column: 26, scope: !2208)
!2211 = !DILocation(line: 606, column: 25, scope: !2208)
!2212 = !DILocalVariable(name: "c0", scope: !2208, file: !1, line: 607, type: !108)
!2213 = !DILocation(line: 607, column: 18, scope: !2208)
!2214 = !DILocalVariable(name: "c1", scope: !2208, file: !1, line: 608, type: !108)
!2215 = !DILocation(line: 608, column: 18, scope: !2208)
!2216 = !DILocalVariable(name: "c2", scope: !2208, file: !1, line: 609, type: !108)
!2217 = !DILocation(line: 609, column: 18, scope: !2208)
!2218 = !DILocalVariable(name: "c3", scope: !2208, file: !1, line: 610, type: !108)
!2219 = !DILocation(line: 610, column: 18, scope: !2208)
!2220 = !DILocalVariable(name: "c4", scope: !2208, file: !1, line: 611, type: !108)
!2221 = !DILocation(line: 611, column: 18, scope: !2208)
!2222 = !DILocalVariable(name: "c5", scope: !2208, file: !1, line: 612, type: !108)
!2223 = !DILocation(line: 612, column: 18, scope: !2208)
!2224 = !DILocalVariable(name: "c6", scope: !2208, file: !1, line: 613, type: !108)
!2225 = !DILocation(line: 613, column: 18, scope: !2208)
!2226 = !DILocalVariable(name: "c7", scope: !2208, file: !1, line: 614, type: !108)
!2227 = !DILocation(line: 614, column: 18, scope: !2208)
!2228 = !DILocalVariable(name: "c8", scope: !2208, file: !1, line: 615, type: !108)
!2229 = !DILocation(line: 615, column: 18, scope: !2208)
!2230 = !DILocalVariable(name: "c9", scope: !2208, file: !1, line: 616, type: !108)
!2231 = !DILocation(line: 616, column: 18, scope: !2208)
!2232 = !DILocation(line: 617, column: 15, scope: !2208)
!2233 = !DILocation(line: 617, column: 21, scope: !2208)
!2234 = !DILocation(line: 617, column: 27, scope: !2208)
!2235 = !DILocation(line: 617, column: 33, scope: !2208)
!2236 = !DILocation(line: 617, column: 39, scope: !2208)
!2237 = !DILocation(line: 617, column: 45, scope: !2208)
!2238 = !DILocation(line: 617, column: 51, scope: !2208)
!2239 = !DILocation(line: 617, column: 57, scope: !2208)
!2240 = !DILocation(line: 617, column: 63, scope: !2208)
!2241 = !DILocation(line: 617, column: 64, scope: !2208)
!2242 = !DILocation(line: 617, column: 62, scope: !2208)
!2243 = !DILocation(line: 617, column: 58, scope: !2208)
!2244 = !DILocation(line: 617, column: 56, scope: !2208)
!2245 = !DILocation(line: 617, column: 52, scope: !2208)
!2246 = !DILocation(line: 617, column: 50, scope: !2208)
!2247 = !DILocation(line: 617, column: 46, scope: !2208)
!2248 = !DILocation(line: 617, column: 44, scope: !2208)
!2249 = !DILocation(line: 617, column: 40, scope: !2208)
!2250 = !DILocation(line: 617, column: 38, scope: !2208)
!2251 = !DILocation(line: 617, column: 34, scope: !2208)
!2252 = !DILocation(line: 617, column: 32, scope: !2208)
!2253 = !DILocation(line: 617, column: 28, scope: !2208)
!2254 = !DILocation(line: 617, column: 26, scope: !2208)
!2255 = !DILocation(line: 617, column: 22, scope: !2208)
!2256 = !DILocation(line: 617, column: 20, scope: !2208)
!2257 = !DILocation(line: 617, column: 16, scope: !2208)
!2258 = !DILocation(line: 617, column: 14, scope: !2208)
!2259 = !DILocation(line: 617, column: 5, scope: !2208)
!2260 = !DILocalVariable(name: "zi", scope: !2261, file: !1, line: 620, type: !108)
!2261 = distinct !DILexicalBlock(scope: !2204, file: !1, line: 619, column: 8)
!2262 = !DILocation(line: 620, column: 18, scope: !2261)
!2263 = !DILocation(line: 620, column: 27, scope: !2261)
!2264 = !DILocation(line: 620, column: 26, scope: !2261)
!2265 = !DILocalVariable(name: "x", scope: !2261, file: !1, line: 621, type: !108)
!2266 = !DILocation(line: 621, column: 18, scope: !2261)
!2267 = !DILocation(line: 621, column: 34, scope: !2261)
!2268 = !DILocation(line: 621, column: 32, scope: !2261)
!2269 = !DILocation(line: 621, column: 37, scope: !2261)
!2270 = !DILocalVariable(name: "c", scope: !2261, file: !1, line: 622, type: !114)
!2271 = !DILocation(line: 622, column: 19, scope: !2261)
!2272 = !DILocation(line: 623, column: 29, scope: !2261)
!2273 = !DILocation(line: 623, column: 5, scope: !2261)
!2274 = !DILocation(line: 624, column: 14, scope: !2261)
!2275 = !DILocation(line: 624, column: 20, scope: !2261)
!2276 = !DILocation(line: 624, column: 18, scope: !2261)
!2277 = !DILocation(line: 624, column: 23, scope: !2261)
!2278 = !DILocation(line: 624, column: 22, scope: !2261)
!2279 = !DILocation(line: 624, column: 26, scope: !2261)
!2280 = !DILocation(line: 624, column: 25, scope: !2261)
!2281 = !DILocation(line: 624, column: 5, scope: !2261)
!2282 = !DILocation(line: 626, column: 1, scope: !2179)
!2283 = distinct !DISubprogram(name: "olver_B3", scope: !1, file: !1, line: 629, type: !1278, isLocal: true, isDefinition: true, scopeLine: 630, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !98)
!2284 = !DILocalVariable(name: "z", arg: 1, scope: !2283, file: !1, line: 629, type: !49)
!2285 = !DILocation(line: 629, column: 31, scope: !2283)
!2286 = !DILocalVariable(name: "abs_zeta", arg: 2, scope: !2283, file: !1, line: 629, type: !49)
!2287 = !DILocation(line: 629, column: 41, scope: !2283)
!2288 = !DILocation(line: 631, column: 6, scope: !2289)
!2289 = distinct !DILexicalBlock(scope: !2283, file: !1, line: 631, column: 6)
!2290 = !DILocation(line: 631, column: 8, scope: !2289)
!2291 = !DILocation(line: 631, column: 6, scope: !2283)
!2292 = !DILocalVariable(name: "x", scope: !2293, file: !1, line: 632, type: !108)
!2293 = distinct !DILexicalBlock(scope: !2289, file: !1, line: 631, column: 15)
!2294 = !DILocation(line: 632, column: 18, scope: !2293)
!2295 = !DILocation(line: 632, column: 26, scope: !2293)
!2296 = !DILocation(line: 632, column: 25, scope: !2293)
!2297 = !DILocation(line: 632, column: 27, scope: !2293)
!2298 = !DILocation(line: 632, column: 32, scope: !2293)
!2299 = !DILocalVariable(name: "c", scope: !2293, file: !1, line: 633, type: !114)
!2300 = !DILocation(line: 633, column: 19, scope: !2293)
!2301 = !DILocation(line: 634, column: 29, scope: !2293)
!2302 = !DILocation(line: 634, column: 5, scope: !2293)
!2303 = !DILocation(line: 635, column: 14, scope: !2293)
!2304 = !DILocation(line: 635, column: 5, scope: !2293)
!2305 = !DILocation(line: 637, column: 11, scope: !2306)
!2306 = distinct !DILexicalBlock(scope: !2289, file: !1, line: 637, column: 11)
!2307 = !DILocation(line: 637, column: 13, scope: !2306)
!2308 = !DILocation(line: 637, column: 11, scope: !2289)
!2309 = !DILocalVariable(name: "a", scope: !2310, file: !1, line: 638, type: !108)
!2310 = distinct !DILexicalBlock(scope: !2306, file: !1, line: 637, column: 20)
!2311 = !DILocation(line: 638, column: 18, scope: !2310)
!2312 = !DILocation(line: 638, column: 26, scope: !2310)
!2313 = !DILocation(line: 638, column: 25, scope: !2310)
!2314 = !DILocalVariable(name: "c0", scope: !2310, file: !1, line: 639, type: !108)
!2315 = !DILocation(line: 639, column: 18, scope: !2310)
!2316 = !DILocalVariable(name: "c1", scope: !2310, file: !1, line: 640, type: !108)
!2317 = !DILocation(line: 640, column: 18, scope: !2310)
!2318 = !DILocalVariable(name: "c2", scope: !2310, file: !1, line: 641, type: !108)
!2319 = !DILocation(line: 641, column: 18, scope: !2310)
!2320 = !DILocalVariable(name: "c3", scope: !2310, file: !1, line: 642, type: !108)
!2321 = !DILocation(line: 642, column: 18, scope: !2310)
!2322 = !DILocalVariable(name: "c4", scope: !2310, file: !1, line: 643, type: !108)
!2323 = !DILocation(line: 643, column: 18, scope: !2310)
!2324 = !DILocalVariable(name: "c5", scope: !2310, file: !1, line: 644, type: !108)
!2325 = !DILocation(line: 644, column: 18, scope: !2310)
!2326 = !DILocalVariable(name: "c6", scope: !2310, file: !1, line: 645, type: !108)
!2327 = !DILocation(line: 645, column: 18, scope: !2310)
!2328 = !DILocation(line: 646, column: 17, scope: !2310)
!2329 = !DILocation(line: 646, column: 25, scope: !2310)
!2330 = !DILocation(line: 646, column: 33, scope: !2310)
!2331 = !DILocation(line: 646, column: 41, scope: !2310)
!2332 = !DILocation(line: 646, column: 49, scope: !2310)
!2333 = !DILocation(line: 646, column: 57, scope: !2310)
!2334 = !DILocation(line: 646, column: 58, scope: !2310)
!2335 = !DILocation(line: 646, column: 55, scope: !2310)
!2336 = !DILocation(line: 646, column: 50, scope: !2310)
!2337 = !DILocation(line: 646, column: 47, scope: !2310)
!2338 = !DILocation(line: 646, column: 42, scope: !2310)
!2339 = !DILocation(line: 646, column: 39, scope: !2310)
!2340 = !DILocation(line: 646, column: 34, scope: !2310)
!2341 = !DILocation(line: 646, column: 31, scope: !2310)
!2342 = !DILocation(line: 646, column: 26, scope: !2310)
!2343 = !DILocation(line: 646, column: 23, scope: !2310)
!2344 = !DILocation(line: 646, column: 18, scope: !2310)
!2345 = !DILocation(line: 646, column: 15, scope: !2310)
!2346 = !DILocation(line: 646, column: 5, scope: !2310)
!2347 = !DILocalVariable(name: "x", scope: !2348, file: !1, line: 649, type: !108)
!2348 = distinct !DILexicalBlock(scope: !2306, file: !1, line: 648, column: 8)
!2349 = !DILocation(line: 649, column: 18, scope: !2348)
!2350 = !DILocation(line: 649, column: 34, scope: !2348)
!2351 = !DILocation(line: 649, column: 33, scope: !2348)
!2352 = !DILocation(line: 649, column: 28, scope: !2348)
!2353 = !DILocation(line: 649, column: 37, scope: !2348)
!2354 = !DILocalVariable(name: "zi2", scope: !2348, file: !1, line: 650, type: !108)
!2355 = !DILocation(line: 650, column: 18, scope: !2348)
!2356 = !DILocation(line: 650, column: 29, scope: !2348)
!2357 = !DILocation(line: 650, column: 31, scope: !2348)
!2358 = !DILocation(line: 650, column: 30, scope: !2348)
!2359 = !DILocation(line: 650, column: 27, scope: !2348)
!2360 = !DILocalVariable(name: "c", scope: !2348, file: !1, line: 651, type: !114)
!2361 = !DILocation(line: 651, column: 19, scope: !2348)
!2362 = !DILocation(line: 652, column: 29, scope: !2348)
!2363 = !DILocation(line: 652, column: 5, scope: !2348)
!2364 = !DILocation(line: 653, column: 15, scope: !2348)
!2365 = !DILocation(line: 653, column: 21, scope: !2348)
!2366 = !DILocation(line: 653, column: 19, scope: !2348)
!2367 = !DILocation(line: 653, column: 25, scope: !2348)
!2368 = !DILocation(line: 653, column: 24, scope: !2348)
!2369 = !DILocation(line: 653, column: 29, scope: !2348)
!2370 = !DILocation(line: 653, column: 28, scope: !2348)
!2371 = !DILocation(line: 653, column: 5, scope: !2348)
!2372 = !DILocation(line: 655, column: 1, scope: !2283)
